@interface MFIMAPOfflineCopyOnStupidServerOperation
- (BOOL)getMessageId:(id *)id andInternalDate:(id *)date forDestinationUid:(unsigned int)uid;
- (id)_deserializeOpSpecificValuesFromData:(id)data cursor:(unint64_t *)cursor;
- (unsigned)approximateSize;
- (void)dealloc;
- (void)expungeTemporaryUid:(unsigned int)uid;
- (void)serializeIntoData:(id)data;
- (void)setMessageId:(id)id andInternalDate:(id)date forMessageWithSourceUid:(unsigned int)uid;
@end

@implementation MFIMAPOfflineCopyOnStupidServerOperation

- (void)serializeIntoData:(id)data
{
  v5.receiver = self;
  v5.super_class = MFIMAPOfflineCopyOnStupidServerOperation;
  [(MFIMAPOperation *)&v5 serializeIntoData:?];
  _serializeStringArrayToData(self->messageIds, data);
  _serializeUidArrayToData(self->internalDates, data);
}

- (id)_deserializeOpSpecificValuesFromData:(id)data cursor:(unint64_t *)cursor
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = MFIMAPOfflineCopyOnStupidServerOperation;
  v6 = [MFIMAPOperation _deserializeOpSpecificValuesFromData:sel__deserializeOpSpecificValuesFromData_cursor_ cursor:?];
  if (v6)
  {
    StringArrayFromData = _createStringArrayFromData(data, cursor);
    v8 = [(__CFArray *)StringArrayFromData count];
    if (v8)
    {
      *(v6 + 6) = CFArrayCreateMutable(0, v8, MEMORY[0x277CBF128]);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [(__CFArray *)StringArrayFromData countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(StringArrayFromData);
            }

            CFArrayAppendValue(*(v6 + 6), *(*(&v15 + 1) + 8 * v12++));
          }

          while (v10 != v12);
          v10 = [(__CFArray *)StringArrayFromData countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v10);
      }
    }

    *(v6 + 7) = _createUidArrayFromData(data, cursor);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  messageIds = self->messageIds;
  if (messageIds)
  {
    CFRelease(messageIds);
  }

  internalDates = self->internalDates;
  if (internalDates)
  {
    CFRelease(internalDates);
  }

  v5.receiver = self;
  v5.super_class = MFIMAPOfflineCopyOnStupidServerOperation;
  [(MFIMAPOperation *)&v5 dealloc];
}

- (BOOL)getMessageId:(id *)id andInternalDate:(id *)date forDestinationUid:(unsigned int)uid
{
  falseFlags = self->super._opSpecific.store.falseFlags;
  if (falseFlags)
  {
    Count = CFArrayGetCount(falseFlags);
    if (Count < 1 || (v18.length = Count, v18.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->super._opSpecific.copy.dstUids, v18, uid), FirstIndexOfValue == -1))
    {
      LOBYTE(falseFlags) = 0;
    }

    else
    {
      v12 = FirstIndexOfValue;
      if (id)
      {
        messageIds = self->messageIds;
        if (messageIds)
        {
          if (v12 < CFArrayGetCount(messageIds))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(self->messageIds, v12);
            *id = ValueAtIndex;
            if (![ValueAtIndex length])
            {
              *id = &stru_2869E1DA0;
            }
          }
        }
      }

      if (date)
      {
        internalDates = self->internalDates;
        if (internalDates)
        {
          if (v12 < CFArrayGetCount(internalDates))
          {
            v16 = CFArrayGetValueAtIndex(self->internalDates, v12);
            if (v16)
            {
              *date = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v16];
            }
          }
        }
      }

      LOBYTE(falseFlags) = 1;
    }
  }

  return falseFlags;
}

- (void)setMessageId:(id)id andInternalDate:(id)date forMessageWithSourceUid:(unsigned int)uid
{
  newValues = id;
  trueFlags = self->super._opSpecific.store.trueFlags;
  if (!trueFlags)
  {
    return;
  }

  Count = CFArrayGetCount(trueFlags);
  if (Count < 1)
  {
    return;
  }

  v11 = Count;
  v28.location = 0;
  v28.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->super._opSpecific.copy.srcUids, v28, uid);
  if (FirstIndexOfValue == -1)
  {
    return;
  }

  v13 = FirstIndexOfValue;
  if (!date)
  {
    internalDates = self->internalDates;
    if (!internalDates || v13 >= CFArrayGetCount(internalDates))
    {
LABEL_13:
      if (!id)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v26 = 0;
    v18 = self->internalDates;
LABEL_12:
    v29.location = v13;
    v29.length = 1;
    CFArrayReplaceValues(v18, v29, &v26, 1);
    goto LABEL_13;
  }

  [date timeIntervalSinceReferenceDate];
  v15 = v14;
  v26 = v14;
  Mutable = self->internalDates;
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, v11, 0);
    self->internalDates = Mutable;
  }

  v17 = CFArrayGetCount(Mutable);
  if (v13 < v17)
  {
    v18 = self->internalDates;
    goto LABEL_12;
  }

  if (v17 + 1 < v13)
  {
    v20 = ~v17 + v13;
    do
    {
      CFArrayAppendValue(self->internalDates, 0);
      --v20;
    }

    while (v20);
  }

  CFArrayAppendValue(self->internalDates, v15);
  if (!id)
  {
LABEL_24:
    newValues = &stru_2869E1DA0;
    messageIds = self->messageIds;
    if (messageIds && v13 < CFArrayGetCount(messageIds))
    {
      v23 = self->messageIds;
      goto LABEL_27;
    }

    return;
  }

LABEL_19:
  if (![id length])
  {
    goto LABEL_24;
  }

  v21 = self->messageIds;
  if (!v21)
  {
    v21 = CFArrayCreateMutable(0, v11, MEMORY[0x277CBF128]);
    self->messageIds = v21;
  }

  v22 = CFArrayGetCount(v21);
  if (v13 < v22)
  {
    v23 = self->messageIds;
LABEL_27:
    v30.location = v13;
    v30.length = 1;
    CFArrayReplaceValues(v23, v30, &newValues, 1);
    return;
  }

  if (v22 + 1 < v13)
  {
    v25 = ~v22 + v13;
    do
    {
      CFArrayAppendValue(self->messageIds, &stru_2869E1DA0);
      --v25;
    }

    while (v25);
  }

  CFArrayAppendValue(self->messageIds, newValues);
}

- (void)expungeTemporaryUid:(unsigned int)uid
{
  falseFlags = self->super._opSpecific.store.falseFlags;
  if (falseFlags)
  {
    Count = CFArrayGetCount(falseFlags);
    v13.location = 0;
    v13.length = Count;
    LastIndexOfValue = CFArrayGetLastIndexOfValue(self->super._opSpecific.copy.dstUids, v13, uid);
    if (LastIndexOfValue != -1)
    {
      v8 = LastIndexOfValue;
      CFArrayRemoveValueAtIndex(self->super._opSpecific.copy.dstUids, LastIndexOfValue);
      CFArrayRemoveValueAtIndex(self->super._opSpecific.copy.srcUids, v8);
      messageIds = self->messageIds;
      if (messageIds && v8 < CFArrayGetCount(messageIds))
      {
        CFArrayRemoveValueAtIndex(self->messageIds, v8);
      }

      internalDates = self->internalDates;
      if (internalDates && v8 < CFArrayGetCount(internalDates))
      {
        CFArrayRemoveValueAtIndex(self->internalDates, v8);
      }

      if (Count == 1)
      {

        self->super._opSpecific.store.falseFlags = 0;
        self->super._opSpecific.store.trueFlags = 0;
        v11 = self->messageIds;
        if (v11)
        {

          self->messageIds = 0;
        }

        v12 = self->internalDates;
        if (v12)
        {

          self->internalDates = 0;
        }
      }
    }
  }
}

- (unsigned)approximateSize
{
  v6.receiver = self;
  v6.super_class = MFIMAPOfflineCopyOnStupidServerOperation;
  approximateSize = [(MFIMAPOperation *)&v6 approximateSize];
  if (approximateSize)
  {
    messageIds = self->messageIds;
    if (messageIds)
    {
      approximateSize += CFArrayGetCount(messageIds);
    }
  }

  return approximateSize;
}

@end