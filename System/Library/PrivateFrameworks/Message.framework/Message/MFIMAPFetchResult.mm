@interface MFIMAPFetchResult
- (MFIMAPFetchResult)initWithType:(int64_t)type;
- (id)appleRemoteLinks;
- (id)bodyStructure;
- (id)customFlagsArray;
- (id)description;
- (id)envelope;
- (id)fetchData;
- (id)flagsArray;
- (id)internalDate;
- (id)section;
- (uint64_t)appleRemoteLinks;
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
- (void)setAppleRemoteLinks:(id)links;
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

- (MFIMAPFetchResult)initWithType:(int64_t)type
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
  if (itemType <= 0xC)
  {
    if (((1 << itemType) & 0x1046) != 0)
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
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 1)
  {
    [(MFIMAPFetchResult *)p_itemType envelope];
  }

  return self->_typeSpecific.envelope;
}

- (void)setEnvelope:(id)envelope
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 1)
  {
    [MFIMAPFetchResult setEnvelope:?];
  }

  envelope = self->_typeSpecific.envelope;
  if (envelope != envelope)
  {

    self->_typeSpecific.messageSize = envelope;
  }
}

- (id)internalDate
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 2)
  {
    [(MFIMAPFetchResult *)p_itemType internalDate];
  }

  return self->_typeSpecific.envelope;
}

- (void)setInternalDate:(id)date
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 2)
  {
    [MFIMAPFetchResult setInternalDate:?];
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

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult fetchData]"];
  [currentHandler handleFailureInFunction:v9 file:@"MFIMAPFetchResult.m" lineNumber:135 description:{@"Invalid item type %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->_itemType)}];
  return 0;
}

- (void)setFetchData:(id)data
{
  itemType = self->_itemType;
  v5 = itemType > 7;
  v6 = (1 << itemType) & 0xB0;
  if (v5 || v6 == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setFetchData:]"];
    [currentHandler handleFailureInFunction:v11 file:@"MFIMAPFetchResult.m" lineNumber:151 description:{@"Invalid item type %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->_itemType)}];
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
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 3)
  {
    [(MFIMAPFetchResult *)p_itemType messageSize];
  }

  return self->_typeSpecific.messageSize;
}

- (void)setMessageSize:(unint64_t)size
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 3)
  {
    [MFIMAPFetchResult setMessageSize:?];
  }

  self->_typeSpecific.messageSize = size;
}

- (id)bodyStructure
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 6)
  {
    [(MFIMAPFetchResult *)p_itemType bodyStructure];
  }

  return self->_typeSpecific.envelope;
}

- (void)setBodyStructure:(id)structure
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 6)
  {
    [MFIMAPFetchResult setBodyStructure:?];
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

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult startOffset]"];
  [currentHandler handleFailureInFunction:v9 file:@"MFIMAPFetchResult.m" lineNumber:189 description:{@"Invalid item type %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->_itemType)}];
  return 0;
}

- (void)setStartOffset:(unint64_t)offset
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 7)
  {
    [MFIMAPFetchResult setStartOffset:?];
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

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult section]"];
  [currentHandler handleFailureInFunction:v6 file:@"MFIMAPFetchResult.m" lineNumber:214 description:{@"Invalid item type %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->_itemType)}];
  return 0;
}

- (void)setSection:(id)section
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 7)
  {
    [MFIMAPFetchResult setSection:?];
  }

  envelope = self->_typeSpecific.envelope;
  if (envelope != section)
  {

    self->_typeSpecific.messageSize = section;
  }
}

- (unsigned)uid
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 8)
  {
    [(MFIMAPFetchResult *)p_itemType uid];
  }

  return self->_typeSpecific.uid;
}

- (void)setUid:(unsigned int)uid
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 8)
  {
    [MFIMAPFetchResult setUid:?];
  }

  self->_typeSpecific.uid = uid;
}

- (unint64_t)uniqueRemoteId
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 9)
  {
    [(MFIMAPFetchResult *)p_itemType uniqueRemoteId];
  }

  return self->_typeSpecific.messageSize;
}

- (void)setUniqueRemoteId:(unint64_t)id
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 9)
  {
    [MFIMAPFetchResult setUniqueRemoteId:?];
  }

  self->_typeSpecific.messageSize = id;
}

- (id)flagsArray
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 10)
  {
    [(MFIMAPFetchResult *)p_itemType flagsArray];
  }

  v5 = MFCreateArrayForMessageFlags(self->_typeSpecific.envelope, 1);

  return v5;
}

- (void)setFlagsArray:(id)array
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 10)
  {
    [MFIMAPFetchResult setFlagsArray:?];
  }

  self->_typeSpecific.messageSize = MFMessageFlagsFromArray(array);
}

- (void)setMessageFlags:(unint64_t)flags
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 10)
  {
    [MFIMAPFetchResult setMessageFlags:?];
  }

  self->_typeSpecific.messageSize = flags;
}

- (void)setCustomFlagsArray:(id)array
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 10)
  {
    [MFIMAPFetchResult setCustomFlagsArray:?];
  }

  arrayCopy = array;

  self->_typeSpecific.bodySectionInfo.startOffset = array;
}

- (id)customFlagsArray
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 10)
  {
    [(MFIMAPFetchResult *)p_itemType customFlagsArray];
  }

  return self->_typeSpecific.flags.customFlags;
}

- (id)appleRemoteLinks
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 12)
  {
    [(MFIMAPFetchResult *)p_itemType appleRemoteLinks];
  }

  return self->_typeSpecific.envelope;
}

- (void)setAppleRemoteLinks:(id)links
{
  itemType = self->_itemType;
  p_itemType = &self->_itemType;
  if (itemType != 12)
  {
    [MFIMAPFetchResult setAppleRemoteLinks:?];
  }

  envelope = self->_typeSpecific.envelope;
  if (envelope != links)
  {

    self->_typeSpecific.messageSize = links;
  }
}

- (unsigned)encoding
{
  v18 = *MEMORY[0x1E69E9840];
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
        v8 = [*(*(&v13 + 1) + 8 * v6) rangeOfString:0x1F2748240 options:9];
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

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  itemType = self->_itemType;
  if (itemType > 6)
  {
    if (itemType > 9)
    {
      switch(itemType)
      {
        case 10:
          customFlagsArray = [(MFIMAPFetchResult *)self customFlagsArray];
          v6 = MEMORY[0x1E696AEC0];
          v14 = @" ";
          v15 = [-[MFIMAPFetchResult flagsArray](self "flagsArray")];
          v16 = &stru_1F273A5E0;
          if (![customFlagsArray count])
          {
            v14 = &stru_1F273A5E0;
          }

          if ([customFlagsArray count])
          {
            v16 = [customFlagsArray componentsJoinedByString:@" "];
          }

          v18 = v14;
          v19 = v16;
          uniqueRemoteId = v15;
          v5 = @"FLAGS (%@%@%@)";
          break;
        case 11:
          result = [MEMORY[0x1E696AEC0] stringWithFormat:@"MODSEQ %d", 0, v18, v19];
          goto LABEL_36;
        case 12:
          v7 = [-[MFIMAPFetchResult appleRemoteLinks](self "appleRemoteLinks")];
          v6 = MEMORY[0x1E696AEC0];
          uniqueRemoteId = [v7 componentsJoinedByString:{@", "}];
          v5 = @"X-APPLE-REMOTE-LINKS (%@)";
          break;
        default:
          goto LABEL_37;
      }

LABEL_34:
      v4 = v6;
      goto LABEL_35;
    }

    if (itemType != 7)
    {
      v6 = MEMORY[0x1E696AEC0];
      if (itemType == 8)
      {
        uniqueRemoteId = [(MFIMAPFetchResult *)self uid];
        v5 = @"UID %u";
      }

      else
      {
        uniqueRemoteId = [(MFIMAPFetchResult *)self uniqueRemoteId];
        v5 = @"X-GM-MSGID %llu";
      }

      goto LABEL_34;
    }

LABEL_19:
    section = [(MFIMAPFetchResult *)self section];
    startOffset = [(MFIMAPFetchResult *)self startOffset];
    v10 = [-[MFIMAPFetchResult fetchData](self "fetchData")];
    v11 = &stru_1F273A5E0;
    if (section)
    {
      v11 = section;
    }

    if (startOffset)
    {
      result = [MEMORY[0x1E696AEC0] stringWithFormat:@"BODY[%@]<%lu> {%lu}...", v11, startOffset, v10];
    }

    else
    {
      result = [MEMORY[0x1E696AEC0] stringWithFormat:@"BODY[%@] {%lu}...", v11, v10, v19];
    }

LABEL_36:
    if (result)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (itemType > 2)
  {
    if ((itemType - 4) >= 2)
    {
      if (itemType == 3)
      {
        v6 = MEMORY[0x1E696AEC0];
        uniqueRemoteId = [(MFIMAPFetchResult *)self messageSize];
        v5 = @"RFC822.SIZE %u";
      }

      else
      {
        if (itemType != 6)
        {
          goto LABEL_37;
        }

        v6 = MEMORY[0x1E696AEC0];
        uniqueRemoteId = CFCopyDescription([(MFIMAPFetchResult *)self bodyStructure]);
        v5 = @"BODYSTRUCTURE %@";
      }

      goto LABEL_34;
    }

    goto LABEL_19;
  }

  switch(itemType)
  {
    case 0:
      return @"* INVALID *";
    case 1:
      v6 = MEMORY[0x1E696AEC0];
      uniqueRemoteId = [(MFIMAPFetchResult *)self envelope];
      v5 = @"ENVELOPE %@";
      goto LABEL_34;
    case 2:
      v4 = MEMORY[0x1E696AEC0];
      v5 = @"INTERNALDATE";
LABEL_35:
      result = [v4 stringWithFormat:v5, uniqueRemoteId, v18, v19];
      goto LABEL_36;
  }

LABEL_37:
  v20.receiver = self;
  v20.super_class = MFIMAPFetchResult;
  return [(MFIMAPFetchResult *)&v20 description];
}

uint64_t __32__MFIMAPFetchResult_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E699B858];
  v3 = [a2 absoluteString];

  return [v2 fullyRedactedStringForString:v3];
}

- (uint64_t)envelope
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult envelope]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setEnvelope:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setEnvelope:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)internalDate
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult internalDate]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setInternalDate:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setInternalDate:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)messageSize
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult messageSize]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setMessageSize:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setMessageSize:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)bodyStructure
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult bodyStructure]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setBodyStructure:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setBodyStructure:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setStartOffset:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setStartOffset:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setSection:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setSection:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)uid
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult uid]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setUid:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setUid:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)uniqueRemoteId
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult uniqueRemoteId]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setUniqueRemoteId:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setUniqueRemoteId:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)flagsArray
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult flagsArray]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setFlagsArray:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setFlagsArray:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setMessageFlags:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setMessageFlags:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setCustomFlagsArray:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setCustomFlagsArray:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)customFlagsArray
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult customFlagsArray]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)appleRemoteLinks
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult appleRemoteLinks]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*self];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)setAppleRemoteLinks:(void *)a1 .cold.1(void *a1)
{
  [MEMORY[0x1E696AAA8] currentHandler];
  [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFIMAPFetchResult setAppleRemoteLinks:]"];
  [MEMORY[0x1E696AD98] numberWithInteger:*a1];
  return [OUTLINED_FUNCTION_0_5() handleFailureInFunction:? file:? lineNumber:? description:?];
}

@end