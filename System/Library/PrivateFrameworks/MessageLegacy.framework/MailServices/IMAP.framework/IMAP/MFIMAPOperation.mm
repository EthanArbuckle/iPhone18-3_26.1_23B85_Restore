@interface MFIMAPOperation
+ (id)deserializedCopyFromData:(id)data cursor:(unint64_t *)cursor;
- (BOOL)actsOnTemporaryUid:(unsigned int)uid;
- (BOOL)getMessageId:(id *)id andInternalDate:(id *)date forDestinationUid:(unsigned int)uid;
- (BOOL)isSourceOfTemporaryUid:(unsigned int)uid;
- (BOOL)isValid;
- (MFIMAPOperation)initWithAppendedUid:(unsigned int)uid approximateSize:(unsigned int)size flags:(id)flags internalDate:(id)date mailbox:(id)mailbox;
- (MFIMAPOperation)initWithFlagsToSet:(id)set flagsToClear:(id)clear forUids:(id)uids inMailbox:(id)mailbox;
- (MFIMAPOperation)initWithType:(int)type mailbox:(id)mailbox;
- (MFIMAPOperation)initWithUidsToCopy:(id)copy fromMailbox:(id)mailbox toMailbox:(id)toMailbox firstNewUid:(unsigned int)uid;
- (id)_deserializeOpSpecificValuesFromData:(id)data cursor:(unint64_t *)cursor;
- (id)description;
- (id)destinationMailbox;
- (id)destinationUids;
- (id)flags;
- (id)flagsToClear;
- (id)flagsToSet;
- (id)internalDate;
- (id)sourceUids;
- (id)uids;
- (uint64_t)destinationMailbox;
- (uint64_t)destinationUids;
- (uint64_t)flags;
- (uint64_t)flagsToClear;
- (uint64_t)flagsToSet;
- (uint64_t)internalDate;
- (uint64_t)sourceUids;
- (uint64_t)uid;
- (uint64_t)uids;
- (unsigned)approximateSize;
- (unsigned)firstTemporaryUid;
- (unsigned)lastTemporaryUid;
- (unsigned)sourceUidForTemporaryUid:(unsigned int)uid;
- (unsigned)uid;
- (void)dealloc;
- (void)expungeTemporaryUid:(unsigned int)uid;
- (void)serializeIntoData:(id)data;
- (void)setMessageId:(id)id andInternalDate:(id)date forMessageWithSourceUid:(unsigned int)uid;
- (void)setUsesRealUids:(BOOL)uids;
@end

@implementation MFIMAPOperation

+ (id)deserializedCopyFromData:(id)data cursor:(unint64_t *)cursor
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  [data getBytes:&v17 + 1 range:{(*cursor)++, 1}];
  [data getBytes:&v17 range:?];
  v7 = (*cursor)++;
  v8 = v17;
  if (!HIBYTE(v17))
  {
    v9 = off_2798B0B40;
    goto LABEL_5;
  }

  if (HIBYTE(v17) == 1)
  {
    v9 = off_2798B0B38;
LABEL_5:
    v10 = *v9;
    v11 = objc_opt_class();
    goto LABEL_7;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"%@: Unexpected byte %x at position %lu", self, HIBYTE(v17), v7}];
  v11 = 0;
LABEL_7:
  if ((v8 & 7u) - 1 > 4)
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *cursor;
      *buf = 67109376;
      v19 = v17;
      v20 = 2048;
      v21 = v15;
      _os_log_impl(&dword_258B7A000, v14, OS_LOG_TYPE_INFO, "Unexpected byte %u at position %lu", buf, 0x12u);
    }

    result = 0;
  }

  else
  {
    v12 = objc_alloc_init(v11);
    v12[8] = v17 & 0x80 | v8 & 0x7F;
    result = [v12 _deserializeOpSpecificValuesFromData:data cursor:cursor];
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_deserializeOpSpecificValuesFromData:(id)data cursor:(unint64_t *)cursor
{
  selfCopy = self;
  self->_mailboxName = _createStringFromData(data, cursor);
  v7 = *(selfCopy + 8) & 7;
  switch(v7)
  {
    case 5:
      selfCopy->_opSpecific.store.trueFlags = _createUidArrayFromData(data, cursor);
      selfCopy->_opSpecific.store.falseFlags = _createUidArrayFromData(data, cursor);
      StringFromData = _createStringFromData(data, cursor);
      break;
    case 4:
      selfCopy->_opSpecific.store.falseFlags = _createStringArrayFromData(data, cursor);
      [data getBytes:&v11 range:{*cursor, 4}];
      *cursor += 4;
      selfCopy->_opSpecific.append.internalDate = v11;
      [data getBytes:&v12 range:{*cursor, 4}];
      *cursor += 4;
      selfCopy->_opSpecific.append.uid = v12;
      [data getBytes:&v13 range:{*cursor, 4}];
      *cursor += 4;
      selfCopy->_opSpecific.append.size = v13;
      goto LABEL_8;
    case 3:
      selfCopy->_opSpecific.store.trueFlags = _createStringArrayFromData(data, cursor);
      selfCopy->_opSpecific.store.falseFlags = _createStringArrayFromData(data, cursor);
      StringFromData = _createUidArrayFromData(data, cursor);
      break;
    default:
      goto LABEL_8;
  }

  selfCopy->_opSpecific.store.uids = StringFromData;
LABEL_8:
  if (![(MFIMAPOperation *)selfCopy isValid])
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [MFIMAPOperation _deserializeOpSpecificValuesFromData:v9 cursor:?];
    }

    return 0;
  }

  return selfCopy;
}

- (void)serializeIntoData:(id)data
{
  _magic = [(MFIMAPOperation *)self _magic];
  v6 = *(self + 8);
  [data appendBytes:&_magic length:1];
  [data appendBytes:&v6 length:1];
  _serializeStringToData(self->_mailboxName, data);
  v5 = *(self + 8) & 7;
  switch(v5)
  {
    case 5:
      _serializeUidArrayToData(self->_opSpecific.copy.srcUids, data);
      _serializeUidArrayToData(self->_opSpecific.copy.dstUids, data);
      _serializeStringToData(self->_opSpecific.store.uids, data);
      break;
    case 4:
      _serializeStringArrayToData(self->_opSpecific.store.falseFlags, data);
      internalDate = self->_opSpecific.append.internalDate;
      [data appendBytes:&internalDate length:4];
      uid = self->_opSpecific.append.uid;
      [data appendBytes:&uid length:4];
      size = self->_opSpecific.append.size;
      [data appendBytes:&size length:4];
      break;
    case 3:
      _serializeStringArrayToData(self->_opSpecific.store.trueFlags, data);
      _serializeStringArrayToData(self->_opSpecific.store.falseFlags, data);
      _serializeUidArrayToData(self->_opSpecific.store.uids, data);
      break;
  }
}

- (MFIMAPOperation)initWithType:(int)type mailbox:(id)mailbox
{
  if ([mailbox length])
  {
    v11.receiver = self;
    v11.super_class = MFIMAPOperation;
    v7 = [(MFIMAPOperation *)&v11 init];
    v8 = v7;
    if (v7)
    {
      *(v7 + 8) = *(v7 + 8) & 0xF8 | type & 7;
      v7->_mailboxName = [mailbox copy];
    }
  }

  else
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MFIMAPOperation *)mailbox initWithType:type mailbox:v9];
    }

    return 0;
  }

  return v8;
}

- (MFIMAPOperation)initWithFlagsToSet:(id)set flagsToClear:(id)clear forUids:(id)uids inMailbox:(id)mailbox
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = [(MFIMAPOperation *)self initWithType:3 mailbox:mailbox];
  if (v9)
  {
    v9->_opSpecific.store.trueFlags = [set copy];
    v9->_opSpecific.store.falseFlags = [clear copy];
    v9->_opSpecific.store.uids = _createUidArrayFromStringArray(uids);
    if (![(MFIMAPOperation *)v9 isValid])
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [(NSArray *)v9->_opSpecific.store.trueFlags count];
        v14 = [(NSArray *)v9->_opSpecific.store.falseFlags count];
        v15 = [(__CFArray *)v9->_opSpecific.store.uids count];
        v16 = 134218496;
        v17 = v13;
        v18 = 2048;
        v19 = v14;
        v20 = 2048;
        v21 = v15;
        _os_log_error_impl(&dword_258B7A000, v10, OS_LOG_TYPE_ERROR, "attempt to create an invalid store-flags offline operation: %lu true flags, %lu false flags, %lu uids", &v16, 0x20u);
      }

      v9 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (MFIMAPOperation)initWithUidsToCopy:(id)copy fromMailbox:(id)mailbox toMailbox:(id)toMailbox firstNewUid:(unsigned int)uid
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = [(MFIMAPOperation *)self initWithType:5 mailbox:mailbox];
  if (v9)
  {
    UidArrayFromStringArray = _createUidArrayFromStringArray(copy);
    v9->_opSpecific.store.trueFlags = UidArrayFromStringArray;
    if (UidArrayFromStringArray)
    {
      Count = CFArrayGetCount(UidArrayFromStringArray);
      v9->_opSpecific.store.falseFlags = CFArrayCreateMutable(0, Count, 0);
      if (Count >= 1)
      {
        do
        {
          CFArrayAppendValue(v9->_opSpecific.copy.dstUids, uid++);
          --Count;
        }

        while (Count);
      }
    }

    else
    {
      v9->_opSpecific.store.falseFlags = 0;
    }

    v9->_opSpecific.store.uids = [toMailbox copy];
    if (![(MFIMAPOperation *)v9 isValid])
    {
      v12 = MFLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = [copy count];
        v16 = [(NSArray *)v9->_opSpecific.store.falseFlags count];
        uids = v9->_opSpecific.store.uids;
        v18 = 134218752;
        v19 = v15;
        v20 = 2048;
        v21 = v16;
        v22 = 2048;
        v23 = uids;
        v24 = 2048;
        v25 = [(__CFArray *)uids length];
        _os_log_error_impl(&dword_258B7A000, v12, OS_LOG_TYPE_ERROR, "attempt to create an invalid copy-message offline operation: %lu srcUids, %lu dstUids, dstMailbox=%p (%lu)", &v18, 0x2Au);
      }

      v9 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (MFIMAPOperation)initWithAppendedUid:(unsigned int)uid approximateSize:(unsigned int)size flags:(id)flags internalDate:(id)date mailbox:(id)mailbox
{
  v11 = [(MFIMAPOperation *)self initWithType:4 mailbox:mailbox];
  v12 = v11;
  if (v11)
  {
    v11->_opSpecific.append.uid = uid;
    v11->_opSpecific.store.falseFlags = [flags copy];
    [date timeIntervalSinceReferenceDate];
    v12->_opSpecific.append.internalDate = v13;
    v12->_opSpecific.append.size = size;
  }

  return v12;
}

- (void)dealloc
{
  v3 = *(self + 8) & 7;
  switch(v3)
  {
    case 5:
      trueFlags = self->_opSpecific.store.trueFlags;
      if (trueFlags)
      {
        CFRelease(trueFlags);
      }

      falseFlags = self->_opSpecific.store.falseFlags;
      if (falseFlags)
      {
        CFRelease(falseFlags);
      }

      uids = self->_opSpecific.store.uids;
      goto LABEL_12;
    case 4:
      uids = self->_opSpecific.store.falseFlags;
LABEL_12:

      break;
    case 3:

      v4 = self->_opSpecific.store.uids;
      if (v4)
      {
        CFRelease(v4);
      }

      break;
  }

  v8.receiver = self;
  v8.super_class = MFIMAPOperation;
  [(MFIMAPOperation *)&v8 dealloc];
}

- (BOOL)isValid
{
  uids = [(NSString *)self->_mailboxName length];
  if (uids)
  {
    v4 = *(self + 8) & 7;
    if (v4 == 5)
    {
      trueFlags = self->_opSpecific.store.trueFlags;
      if (trueFlags)
      {
        Count = CFArrayGetCount(trueFlags);
      }

      else
      {
        Count = 0;
      }

      falseFlags = self->_opSpecific.store.falseFlags;
      if (falseFlags)
      {
        v8 = CFArrayGetCount(falseFlags);
      }

      else
      {
        v8 = 0;
      }

      LOBYTE(uids) = 0;
      if (Count && Count == v8)
      {
        uids = [(__CFArray *)self->_opSpecific.store.uids length];
        goto LABEL_18;
      }
    }

    else
    {
      if (v4 != 3)
      {
LABEL_7:
        LOBYTE(uids) = 1;
        return uids;
      }

      uids = self->_opSpecific.store.uids;
      if (uids)
      {
        uids = CFArrayGetCount(uids);
        if (uids)
        {
          if ([(NSArray *)self->_opSpecific.store.trueFlags count])
          {
            goto LABEL_7;
          }

          uids = [(NSArray *)self->_opSpecific.store.falseFlags count];
LABEL_18:
          LOBYTE(uids) = uids != 0;
        }
      }
    }
  }

  return uids;
}

- (BOOL)isSourceOfTemporaryUid:(unsigned int)uid
{
  v4 = *(self + 8) & 7;
  if (v4 == 5)
  {
    falseFlags = self->_opSpecific.store.falseFlags;
    if (falseFlags)
    {
      v7.length = CFArrayGetCount(self->_opSpecific.copy.dstUids);
      v7.location = 0;
      return CFArrayGetLastIndexOfValue(falseFlags, v7, uid) != -1;
    }
  }

  else if (v4 == 4)
  {
    return self->_opSpecific.append.uid == uid;
  }

  return 0;
}

- (BOOL)actsOnTemporaryUid:(unsigned int)uid
{
  v3 = *(self + 8);
  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = v3 & 7;
  if (v6 == 5)
  {
    v7 = 24;
  }

  else
  {
    if (v6 != 3)
    {
      return 0;
    }

    v7 = 40;
  }

  v8 = *(&self->super.isa + v7);
  if (v8)
  {
    v9.length = CFArrayGetCount(*(&self->super.isa + v7));
    v9.location = 0;
    return CFArrayGetFirstIndexOfValue(v8, v9, uid) != -1;
  }

  return 0;
}

- (void)expungeTemporaryUid:(unsigned int)uid
{
  v5 = *(self + 8);
  v6 = v5 & 7;
  if (v6 == 3)
  {
    if (v5 < 0)
    {
      uids = self->_opSpecific.store.uids;
      if (uids)
      {
        Count = CFArrayGetCount(uids);
        v15.location = 0;
        v15.length = Count;
        LastIndexOfValue = CFArrayGetLastIndexOfValue(self->_opSpecific.store.uids, v15, uid);
        if (LastIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(self->_opSpecific.store.uids, LastIndexOfValue);
          if (Count == 1)
          {

            self->_opSpecific.store.uids = 0;
          }
        }
      }
    }
  }

  else if (v6 == 5)
  {
    falseFlags = self->_opSpecific.store.falseFlags;
    if (falseFlags)
    {
      v8 = CFArrayGetCount(falseFlags);
      v14.location = 0;
      v14.length = v8;
      v9 = CFArrayGetLastIndexOfValue(self->_opSpecific.copy.dstUids, v14, uid);
      if (v9 != -1)
      {
        v10 = v9;
        CFArrayRemoveValueAtIndex(self->_opSpecific.copy.dstUids, v9);
        CFArrayRemoveValueAtIndex(self->_opSpecific.copy.srcUids, v10);
        if (v8 == 1)
        {

          self->_opSpecific.store.falseFlags = 0;
          self->_opSpecific.store.trueFlags = 0;
        }
      }
    }
  }

  else if (v6 == 4 && self->_opSpecific.append.uid == uid)
  {
    self->_opSpecific.append.uid = 0;
  }
}

- (unsigned)firstTemporaryUid
{
  selfCopy = self;
  v3 = *(self + 8) & 7;
  if (v3 == 5)
  {
    self = self->_opSpecific.store.falseFlags;
    if (self)
    {
      self = CFArrayGetCount(self);
      if (self)
      {
        LODWORD(self) = CFArrayGetValueAtIndex(selfCopy->_opSpecific.copy.dstUids, 0);
      }
    }
  }

  else if (v3 == 4)
  {
    LODWORD(self) = self->_opSpecific.append.uid;
  }

  else
  {
    LODWORD(self) = 0;
  }

  return self;
}

- (unsigned)lastTemporaryUid
{
  selfCopy = self;
  v3 = *(self + 8) & 7;
  if (v3 == 5)
  {
    self = self->_opSpecific.store.falseFlags;
    if (self)
    {
      self = CFArrayGetCount(self);
      if (self)
      {
        LODWORD(self) = CFArrayGetValueAtIndex(selfCopy->_opSpecific.copy.dstUids, &self[-1]._opSpecific.copy.destinationMailbox + 7);
      }
    }
  }

  else if (v3 == 4)
  {
    LODWORD(self) = self->_opSpecific.append.uid;
  }

  else
  {
    LODWORD(self) = 0;
  }

  return self;
}

- (unsigned)approximateSize
{
  v2 = *(self + 8) & 7;
  switch(v2)
  {
    case 5:
      return self->_opSpecific.store.trueFlags != 0;
    case 4:
      if (self->_opSpecific.append.uid)
      {
        return self->_opSpecific.append.size;
      }

      else
      {
        return 0;
      }

    case 3:
      v3 = vmovn_s64(vtstq_s64(*&self->_opSpecific.store.trueFlags, *&self->_opSpecific.store.trueFlags));
      return (v3.i8[4] & 1) - v3.i32[0];
    default:
      return 1;
  }
}

- (void)setUsesRealUids:(BOOL)uids
{
  if (uids)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x80;
  }

  *(self + 8) = v3 & 0x80 | *(self + 8) & 0x7F;
}

- (id)flagsToSet
{
  if ((*(self + 8) & 7) != 3)
  {
    [MFIMAPOperation flagsToSet];
  }

  return self->_opSpecific.store.trueFlags;
}

- (id)flagsToClear
{
  if ((*(self + 8) & 7) != 3)
  {
    [MFIMAPOperation flagsToClear];
  }

  return self->_opSpecific.store.falseFlags;
}

- (id)uids
{
  if ((*(self + 8) & 7) != 3)
  {
    [MFIMAPOperation uids];
  }

  uids = self->_opSpecific.store.uids;

  return _stringArrayFromUidArray(uids);
}

- (id)flags
{
  if ((*(self + 8) & 7) != 4)
  {
    [MFIMAPOperation flags];
  }

  return self->_opSpecific.store.falseFlags;
}

- (id)internalDate
{
  if ((*(self + 8) & 7) != 4)
  {
    [MFIMAPOperation internalDate];
  }

  v3 = MEMORY[0x277CBEAA8];
  internalDate = self->_opSpecific.append.internalDate;

  return [v3 dateWithTimeIntervalSinceReferenceDate:internalDate];
}

- (unsigned)uid
{
  if ((*(self + 8) & 7) != 4)
  {
    [MFIMAPOperation uid];
  }

  return self->_opSpecific.append.uid;
}

- (id)sourceUids
{
  if ((*(self + 8) & 7) != 5)
  {
    [MFIMAPOperation sourceUids];
  }

  trueFlags = self->_opSpecific.store.trueFlags;

  return _stringArrayFromUidArray(trueFlags);
}

- (id)destinationUids
{
  if ((*(self + 8) & 7) != 5)
  {
    [MFIMAPOperation destinationUids];
  }

  falseFlags = self->_opSpecific.store.falseFlags;

  return _stringArrayFromUidArray(falseFlags);
}

- (id)destinationMailbox
{
  if ((*(self + 8) & 7) != 5)
  {
    [MFIMAPOperation destinationMailbox];
  }

  return self->_opSpecific.store.uids;
}

- (unsigned)sourceUidForTemporaryUid:(unsigned int)uid
{
  falseFlags = self->_opSpecific.store.falseFlags;
  if (falseFlags)
  {
    Count = CFArrayGetCount(falseFlags);
    if (Count < 1 || (v9.length = Count, v9.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_opSpecific.copy.dstUids, v9, uid), FirstIndexOfValue == -1))
    {
      LODWORD(falseFlags) = 0;
    }

    else
    {
      LODWORD(falseFlags) = CFArrayGetValueAtIndex(self->_opSpecific.copy.srcUids, FirstIndexOfValue);
    }
  }

  return falseFlags;
}

- (BOOL)getMessageId:(id *)id andInternalDate:(id *)date forDestinationUid:(unsigned int)uid
{
  if ((*(self + 8) & 7) != 5)
  {
    [MFIMAPOperation getMessageId:andInternalDate:forDestinationUid:];
  }

  return 0;
}

- (void)setMessageId:(id)id andInternalDate:(id)date forMessageWithSourceUid:(unsigned int)uid
{
  if ((*(self + 8) & 7) != 5)
  {
    [MFIMAPOperation setMessageId:andInternalDate:forMessageWithSourceUid:];
  }
}

- (id)description
{
  v22.receiver = self;
  v22.super_class = MFIMAPOperation;
  v3 = [-[MFIMAPOperation description](&v22 description)];
  v4 = v3;
  v5 = *(self + 8) & 7;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      [v3 appendFormat:@"CREATE [%@]", self->_mailboxName, v20, v21];
    }

    else if (v5 == 2)
    {
      [v3 appendFormat:@"DELETE [%@]", self->_mailboxName, v20, v21];
    }
  }

  else
  {
    switch(v5)
    {
      case 3u:
        [v3 appendFormat:@"[%@] STORE ", self->_mailboxName];
        uids = self->_opSpecific.store.uids;
        if (!uids)
        {
          goto LABEL_45;
        }

        Count = CFArrayGetCount(uids);
        if (*(self + 8) < 0)
        {
          v16 = @"{";
        }

        else
        {
          v16 = CFSTR("(");
        }

        [v4 appendString:v16];
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            if (i)
            {
              [v4 appendString:{@", "}];
            }

            [v4 appendFormat:@"%u", CFArrayGetValueAtIndex(self->_opSpecific.store.uids, i)];
          }
        }

        if (*(self + 8) < 0)
        {
          v18 = @"}";
        }

        else
        {
          v18 = @"");
        }

        [v4 appendString:v18];
        if (self->_opSpecific.store.trueFlags)
        {
          [v4 appendFormat:@" <+FLAGS.SILENT%@>", self->_opSpecific.store.trueFlags];
        }

        if (self->_opSpecific.store.falseFlags)
        {
          [v4 appendFormat:@" <-FLAGS.SILENT%@> ", self->_opSpecific.store.falseFlags, v20, v21];
        }

        break;
      case 4u:
        [v3 appendFormat:@"APPEND [%@] %@ {%u}", self->_mailboxName, -[MFIMAPOperation internalDate](self, "internalDate"), self->_opSpecific.append.uid];
        break;
      case 5u:
        mailboxName = self->_mailboxName;
        [v3 appendFormat:@"COPY [%@] [%@]", mailboxName, self->_opSpecific.store.uids];
        if (self->_opSpecific.store.uids)
        {
          v7 = CFArrayGetCount(self->_opSpecific.copy.srcUids);
          if (*(self + 8) < 0)
          {
            v8 = @"{";
          }

          else
          {
            v8 = CFSTR("(");
          }

          [v4 appendString:v8];
          if (v7 >= 1)
          {
            for (j = 0; j != v7; ++j)
            {
              if (j)
              {
                [v4 appendString:{@", "}];
              }

              [v4 appendFormat:@"%u", CFArrayGetValueAtIndex(self->_opSpecific.copy.srcUids, j)];
            }
          }

          if (*(self + 8) < 0)
          {
            v10 = @"} ";
          }

          else
          {
            v10 = @" ");
          }

          [v4 appendString:v10];
          v11 = CFArrayGetCount(self->_opSpecific.copy.dstUids);
          [v4 appendString:@"{"];
          if (v11 >= 1)
          {
            for (k = 0; k != v11; ++k)
            {
              if (k)
              {
                [v4 appendString:{@", "}];
              }

              [v4 appendFormat:@"%u", CFArrayGetValueAtIndex(self->_opSpecific.copy.dstUids, k)];
            }
          }

          v13 = @"}";
          goto LABEL_46;
        }

LABEL_45:
        v13 = @" ** expunged **";
LABEL_46:
        [v4 appendString:v13];
        break;
    }
  }

  return v4;
}

- (void)initWithType:(os_log_t)log mailbox:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_258B7A000, log, OS_LOG_TYPE_ERROR, "attempt to create an invalid offline operation of type %d with no mailbox name %p", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (uint64_t)flagsToSet
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)flagsToClear
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)uids
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)flags
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)internalDate
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)uid
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)sourceUids
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)destinationUids
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)destinationMailbox
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)getMessageId:andInternalDate:forDestinationUid:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMessageId:andInternalDate:forMessageWithSourceUid:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end