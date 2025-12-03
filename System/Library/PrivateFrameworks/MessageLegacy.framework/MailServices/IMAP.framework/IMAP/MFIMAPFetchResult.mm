@interface MFIMAPFetchResult
- (MFIMAPFetchResult)initWithType:(int)type;
- (id)bodyStructure;
- (id)customFlagsArray;
- (id)description;
- (id)envelope;
- (id)fetchData;
- (id)flagsArray;
- (id)internalDate;
- (id)section;
- (uint64_t)bodyStructure;
- (uint64_t)customFlagsArray;
- (uint64_t)envelope;
- (uint64_t)flagsArray;
- (uint64_t)internalDate;
- (uint64_t)messageSize;
- (uint64_t)uid;
- (uint64_t)uniqueRemoteId;
- (unint64_t)messageSize;
- (unint64_t)startOffset;
- (unint64_t)uniqueRemoteId;
- (unsigned)encoding;
- (unsigned)uid;
- (void)dealloc;
- (void)setBodyStructure:(id)structure;
- (void)setCustomFlagsArray:(id)array;
- (void)setEnvelope:(id)envelope;
- (void)setFetchData:(id)data;
- (void)setFlagsArray:(id)array;
- (void)setInternalDate:(id)date;
- (void)setMessageFlags:(unint64_t)flags;
- (void)setMessageSize:(unint64_t)size;
- (void)setSection:(id)section;
- (void)setStartOffset:(unint64_t)offset;
- (void)setUid:(unsigned int)uid;
- (void)setUniqueRemoteId:(unint64_t)id;
@end

@implementation MFIMAPFetchResult

- (MFIMAPFetchResult)initWithType:(int)type
{
  v5.receiver = self;
  v5.super_class = MFIMAPFetchResult;
  result = [(MFIMAPFetchResult *)&v5 init];
  if (result)
  {
    result->_itemType = type;
  }

  return result;
}

- (void)dealloc
{
  itemType = self->_itemType;
  if (itemType <= 0xA)
  {
    if (((1 << itemType) & 0x46) != 0)
    {
      v4 = 24;
      goto LABEL_8;
    }

    if (((1 << itemType) & 0xB0) != 0)
    {

      v4 = 40;
      goto LABEL_8;
    }

    if (((1 << itemType) & 0x700) != 0)
    {
      v4 = 32;
LABEL_8:
    }
  }

  v5.receiver = self;
  v5.super_class = MFIMAPFetchResult;
  [(MFIMAPFetchResult *)&v5 dealloc];
}

- (id)envelope
{
  if (self->_itemType != 1)
  {
    [MFIMAPFetchResult envelope];
  }

  return self->_typeSpecific.envelope;
}

- (void)setEnvelope:(id)envelope
{
  if (self->_itemType != 1)
  {
    [MFIMAPFetchResult setEnvelope:];
  }

  envelope = self->_typeSpecific.envelope;
  if (envelope != envelope)
  {

    self->_typeSpecific.messageSize = envelope;
  }
}

- (id)internalDate
{
  if (self->_itemType != 2)
  {
    [MFIMAPFetchResult internalDate];
  }

  return self->_typeSpecific.envelope;
}

- (void)setInternalDate:(id)date
{
  if (self->_itemType != 2)
  {
    [MFIMAPFetchResult setInternalDate:];
  }

  envelope = self->_typeSpecific.envelope;
  if (envelope != date)
  {

    self->_typeSpecific.messageSize = date;
  }
}

- (id)fetchData
{
  itemType = self->_itemType;
  v4 = itemType > 7;
  v5 = (1 << itemType) & 0xB0;
  if (!v4 && v5 != 0)
  {
    return self->_typeSpecific.bodySectionInfo.sectionData;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"-[MFIMAPFetchResult fetchData]") description:{@"IMAPFetchResult.m", 101, @"Invalid item type %d", self->_itemType}];
  return 0;
}

- (void)setFetchData:(id)data
{
  itemType = self->_itemType;
  v5 = itemType > 7;
  v6 = (1 << itemType) & 0xB0;
  if (v5 || v6 == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"-[MFIMAPFetchResult setFetchData:]") description:{@"IMAPFetchResult.m", 117, @"Invalid item type %d", self->_itemType}];
  }

  else
  {
    sectionData = self->_typeSpecific.bodySectionInfo.sectionData;
    if (sectionData != data)
    {

      self->_typeSpecific.bodySectionInfo.sectionData = data;
    }
  }
}

- (unint64_t)messageSize
{
  if (self->_itemType != 3)
  {
    [MFIMAPFetchResult messageSize];
  }

  return self->_typeSpecific.messageSize;
}

- (void)setMessageSize:(unint64_t)size
{
  if (self->_itemType != 3)
  {
    [MFIMAPFetchResult setMessageSize:];
  }

  self->_typeSpecific.messageSize = size;
}

- (id)bodyStructure
{
  if (self->_itemType != 6)
  {
    [MFIMAPFetchResult bodyStructure];
  }

  return self->_typeSpecific.envelope;
}

- (void)setBodyStructure:(id)structure
{
  if (self->_itemType != 6)
  {
    [MFIMAPFetchResult setBodyStructure:];
  }

  envelope = self->_typeSpecific.envelope;
  if (envelope != structure)
  {

    self->_typeSpecific.messageSize = structure;
  }
}

- (unint64_t)startOffset
{
  itemType = self->_itemType;
  v4 = itemType > 7;
  v5 = (1 << itemType) & 0xB0;
  if (!v4 && v5 != 0)
  {
    return self->_typeSpecific.bodySectionInfo.startOffset;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"-[MFIMAPFetchResult startOffset]") description:{@"IMAPFetchResult.m", 155, @"Invalid item type %d", self->_itemType}];
  return 0;
}

- (void)setStartOffset:(unint64_t)offset
{
  if (self->_itemType != 7)
  {
    [MFIMAPFetchResult setStartOffset:];
  }

  self->_typeSpecific.bodySectionInfo.startOffset = offset;
}

- (id)section
{
  itemType = self->_itemType;
  switch(itemType)
  {
    case 4:
      return @"HEADER";
    case 7:
      return self->_typeSpecific.envelope;
    case 5:
      return @"TEXT";
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"-[MFIMAPFetchResult section]") description:{@"IMAPFetchResult.m", 180, @"Invalid item type %d", self->_itemType}];
  return 0;
}

- (void)setSection:(id)section
{
  if (self->_itemType != 7)
  {
    [MFIMAPFetchResult setSection:];
  }

  envelope = self->_typeSpecific.envelope;
  if (envelope != section)
  {

    self->_typeSpecific.messageSize = section;
  }
}

- (unsigned)uid
{
  if (self->_itemType != 8)
  {
    [MFIMAPFetchResult uid];
  }

  return self->_typeSpecific.uid;
}

- (void)setUid:(unsigned int)uid
{
  if (self->_itemType != 8)
  {
    [MFIMAPFetchResult setUid:];
  }

  self->_typeSpecific.uid = uid;
}

- (unint64_t)uniqueRemoteId
{
  if (self->_itemType != 9)
  {
    [MFIMAPFetchResult uniqueRemoteId];
  }

  return self->_typeSpecific.messageSize;
}

- (void)setUniqueRemoteId:(unint64_t)id
{
  if (self->_itemType != 9)
  {
    [MFIMAPFetchResult setUniqueRemoteId:];
  }

  self->_typeSpecific.messageSize = id;
}

- (id)flagsArray
{
  if (self->_itemType != 10)
  {
    [MFIMAPFetchResult flagsArray];
  }

  v3 = MFCreateArrayForMessageFlags(self->_typeSpecific.envelope, 1);

  return v3;
}

- (void)setFlagsArray:(id)array
{
  if (self->_itemType != 10)
  {
    [MFIMAPFetchResult setFlagsArray:];
  }

  self->_typeSpecific.messageSize = MFMessageFlagsFromArray(array);
}

- (void)setMessageFlags:(unint64_t)flags
{
  if (self->_itemType != 10)
  {
    [MFIMAPFetchResult setMessageFlags:];
  }

  self->_typeSpecific.messageSize = flags;
}

- (void)setCustomFlagsArray:(id)array
{
  if (self->_itemType != 10)
  {
    [MFIMAPFetchResult setCustomFlagsArray:];
  }

  arrayCopy = array;

  self->_typeSpecific.bodySectionInfo.startOffset = array;
}

- (id)customFlagsArray
{
  if (self->_itemType != 10)
  {
    [MFIMAPFetchResult customFlagsArray];
  }

  return self->_typeSpecific.flags.customFlags;
}

- (unsigned)encoding
{
  v18 = *MEMORY[0x277D85DE8];
  flagsArray = [(MFIMAPFetchResult *)self flagsArray];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [flagsArray countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(flagsArray);
      }

      v7 = *(*(&v13 + 1) + 8 * v6);
      if (v7)
      {
        v8 = [*(*(&v13 + 1) + 8 * v6) rangeOfString:0x2869E4EA0 options:9];
        if (v9)
        {
          v10 = v8 + v9;
          if (v8 + v9 < [v7 length])
          {
            [v7 substringFromIndex:v10];
            result = MFEncodingForCharset();
            if (result != -1)
            {
              break;
            }
          }
        }
      }

      if (v4 == ++v6)
      {
        v4 = [flagsArray countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    result = -1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  itemType = self->_itemType;
  if (itemType > 5)
  {
    if (itemType > 8)
    {
      switch(itemType)
      {
        case 9:
          v6 = MEMORY[0x277CCACA8];
          uniqueRemoteId = [(MFIMAPFetchResult *)self uniqueRemoteId];
          v5 = @"X-GM-MSGID %llu";
          break;
        case 10:
          v6 = MEMORY[0x277CCACA8];
          uniqueRemoteId = [-[MFIMAPFetchResult flagsArray](self "flagsArray")];
          v5 = @"FLAGS (%@)";
          break;
        case 11:
          result = [MEMORY[0x277CCACA8] stringWithFormat:@"MODSEQ %d", 0, v13, v14];
          goto LABEL_30;
        default:
          goto LABEL_31;
      }
    }

    else if (itemType == 6)
    {
      v6 = MEMORY[0x277CCACA8];
      uniqueRemoteId = CFCopyDescription([(MFIMAPFetchResult *)self bodyStructure]);
      v5 = @"BODYSTRUCTURE %@";
    }

    else
    {
      if (itemType == 7)
      {
LABEL_12:
        section = [(MFIMAPFetchResult *)self section];
        startOffset = [(MFIMAPFetchResult *)self startOffset];
        v9 = [-[MFIMAPFetchResult fetchData](self "fetchData")];
        v10 = &stru_2869E1DA0;
        if (section)
        {
          v10 = section;
        }

        if (startOffset)
        {
          result = [MEMORY[0x277CCACA8] stringWithFormat:@"BODY[%@]<%lu> {%lu}...", v10, startOffset, v9];
        }

        else
        {
          result = [MEMORY[0x277CCACA8] stringWithFormat:@"BODY[%@] {%lu}...", v10, v9, v14];
        }

LABEL_30:
        if (result)
        {
          return result;
        }

        goto LABEL_31;
      }

      v6 = MEMORY[0x277CCACA8];
      uniqueRemoteId = [(MFIMAPFetchResult *)self uid];
      v5 = @"UID %u";
    }

LABEL_28:
    v4 = v6;
    goto LABEL_29;
  }

  if (itemType > 2)
  {
    if ((itemType - 4) < 2)
    {
      goto LABEL_12;
    }

    if (itemType != 3)
    {
      goto LABEL_31;
    }

    v6 = MEMORY[0x277CCACA8];
    uniqueRemoteId = [(MFIMAPFetchResult *)self messageSize];
    v5 = @"RFC822.SIZE %u";
    goto LABEL_28;
  }

  switch(itemType)
  {
    case 0:
      return @"* INVALID *";
    case 1:
      v6 = MEMORY[0x277CCACA8];
      uniqueRemoteId = [(MFIMAPFetchResult *)self envelope];
      v5 = @"ENVELOPE %@";
      goto LABEL_28;
    case 2:
      v4 = MEMORY[0x277CCACA8];
      v5 = @"INTERNALDATE";
LABEL_29:
      result = [v4 stringWithFormat:v5, uniqueRemoteId, v13, v14];
      goto LABEL_30;
  }

LABEL_31:
  v15.receiver = self;
  v15.super_class = MFIMAPFetchResult;
  return [(MFIMAPFetchResult *)&v15 description];
}

- (uint64_t)envelope
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult envelope]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setEnvelope:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setEnvelope:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)internalDate
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult internalDate]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setInternalDate:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setInternalDate:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)messageSize
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult messageSize]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setMessageSize:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setMessageSize:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)bodyStructure
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult bodyStructure]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setBodyStructure:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setBodyStructure:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setStartOffset:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setStartOffset:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setSection:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setSection:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)uid
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult uid]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setUid:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setUid:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)uniqueRemoteId
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult uniqueRemoteId]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setUniqueRemoteId:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setUniqueRemoteId:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)flagsArray
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult flagsArray]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setFlagsArray:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setFlagsArray:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setMessageFlags:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setMessageFlags:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setCustomFlagsArray:.cold.1()
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult setCustomFlagsArray:]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)customFlagsArray
{
  [MEMORY[0x277CCA890] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MFIMAPFetchResult customFlagsArray]"];
  OUTLINED_FUNCTION_0_1();
  return [OUTLINED_FUNCTION_1_0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

@end