@interface IMMessageSyndicationAction
- (BOOL)isEqual:(id)equal;
- (IMMessageSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date syndicationActionType:(unsigned __int8)type encodedMessagePartGUID:(id)iD messagePartRange:(_NSRange)range version:(unsigned __int8)version;
- (IMMessageSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date syndicationActionType:(unsigned __int8)type messagePartGUID:(id)iD messagePartRange:(_NSRange)range version:(unsigned __int8)version;
- (IMMessageSyndicationAction)initWithCoder:(id)coder;
- (IMMessageSyndicationAction)initWithDictionary:(id)dictionary;
- (_NSRange)messagePartRange;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)messagePartSyndicationType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMMessageSyndicationAction

- (IMMessageSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date syndicationActionType:(unsigned __int8)type messagePartGUID:(id)iD messagePartRange:(_NSRange)range version:(unsigned __int8)version
{
  length = range.length;
  location = range.location;
  typeCopy = type;
  dCopy = d;
  dateCopy = date;
  iDCopy = iD;
  v17 = iDCopy;
  if (IMSyndicationActionCurrentVersion != version)
  {
    v19 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3C30(IMSyndicationActionCurrentVersion, version, v19);
    }

    goto LABEL_21;
  }

  if (!iDCopy)
  {
    v19 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3DD0(v19);
    }

    goto LABEL_21;
  }

  if (!length)
  {
    v22 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26.location = location;
      v26.length = 0;
      sub_1A88C3D38(v26, v22);
    }

    goto LABEL_22;
  }

  v18 = typeCopy & 0xFFFFFFFB;
  if ((typeCopy & 4) == 0)
  {
    v18 = typeCopy;
  }

  if ((typeCopy & 8) != 0)
  {
    v18 &= ~8u;
  }

  if ((typeCopy & 0x10) != 0)
  {
    v18 &= ~0x10u;
  }

  if ((typeCopy & 0x20) != 0)
  {
    v18 &= ~0x20u;
  }

  if ((typeCopy & 0x40) != 0)
  {
    v18 &= ~0x40u;
  }

  if (v18)
  {
    v19 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3CBC(typeCopy, v19);
    }

LABEL_21:

LABEL_22:
    selfCopy = 0;
    goto LABEL_23;
  }

  v25.receiver = self;
  v25.super_class = IMMessageSyndicationAction;
  v23 = [(IMSyndicationAction *)&v25 initWithChatGUID:dCopy syndicationStartDate:dateCopy syndicationActionType:typeCopy];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_messagePartGUID, iD);
    v24->_messagePartRange.location = location;
    v24->_messagePartRange.length = length;
  }

  self = v24;
  selfCopy = self;
LABEL_23:

  return selfCopy;
}

- (IMMessageSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date syndicationActionType:(unsigned __int8)type encodedMessagePartGUID:(id)iD messagePartRange:(_NSRange)range version:(unsigned __int8)version
{
  length = range.length;
  location = range.location;
  typeCopy = type;
  dCopy = d;
  dateCopy = date;
  iDCopy = iD;
  v17 = iDCopy;
  if (iDCopy && [iDCopy length])
  {
    v18 = [[IMMessagePartGUID alloc] initWithEncodedMessagePartGUID:v17];
    LOBYTE(v22) = version;
    self = [(IMMessageSyndicationAction *)self initWithChatGUID:dCopy syndicationStartDate:dateCopy syndicationActionType:typeCopy messagePartGUID:v18 messagePartRange:location version:length, v22];

    selfCopy = self;
  }

  else
  {
    v20 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3DD0(v20);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (IMMessageSyndicationAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"salc"];
  integerValue = [v5 integerValue];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"saln"];
  integerValue2 = [v6 integerValue];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"sacg"];
  v9 = objc_opt_class();
  v10 = [dictionaryCopy objectForKeyedSubscript:@"sasd"];
  v11 = [v9 dateFromNanoSeconds:v10];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"sat2"];
  unsignedCharValue = [v12 unsignedCharValue];
  v14 = [dictionaryCopy objectForKeyedSubscript:@"samp"];
  v15 = [dictionaryCopy objectForKeyedSubscript:@"savs"];

  LOBYTE(v18) = [v15 unsignedCharValue];
  v16 = [(IMMessageSyndicationAction *)self initWithChatGUID:v8 syndicationStartDate:v11 syndicationActionType:unsignedCharValue encodedMessagePartGUID:v14 messagePartRange:integerValue version:integerValue2, v18];

  return v16;
}

- (id)copyDictionaryRepresentation
{
  v15.receiver = self;
  v15.super_class = IMMessageSyndicationAction;
  copyDictionaryRepresentation = [(IMSyndicationAction *)&v15 copyDictionaryRepresentation];
  messagePartRange = [(IMMessageSyndicationAction *)self messagePartRange];
  v6 = v5;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:messagePartRange];
  [copyDictionaryRepresentation setObject:v7 forKeyedSubscript:@"salc"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [copyDictionaryRepresentation setObject:v8 forKeyedSubscript:@"saln"];

  messagePartGUID = [(IMMessageSyndicationAction *)self messagePartGUID];
  encodedMessagePartGUID = [messagePartGUID encodedMessagePartGUID];
  v11 = [encodedMessagePartGUID copy];
  [copyDictionaryRepresentation setObject:v11 forKeyedSubscript:@"samp"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMSyndicationAction syndicationActionType](self, "syndicationActionType")}];
  [copyDictionaryRepresentation setObject:v12 forKeyedSubscript:@"sat2"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMSyndicationAction version](self, "version")}];
  [copyDictionaryRepresentation setObject:v13 forKeyedSubscript:@"savs"];

  return copyDictionaryRepresentation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = IMMessageSyndicationAction;
  if (-[IMSyndicationAction isEqual:](&v17, sel_isEqual_, equalCopy) && (v5 = -[IMSyndicationAction syndicationActionType](self, "syndicationActionType"), v5 == [equalCopy syndicationActionType]))
  {
    messagePartRange = [(IMMessageSyndicationAction *)self messagePartRange];
    v8 = v7;
    v10 = 0;
    if (messagePartRange == [equalCopy messagePartRange] && v8 == v9)
    {
      messagePartGUID = [(IMMessageSyndicationAction *)self messagePartGUID];
      messagePartGUID2 = [equalCopy messagePartGUID];
      v13 = messagePartGUID;
      v14 = messagePartGUID2;
      v15 = v14;
      if (v13 == v14)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v13 && v14)
        {
          v10 = [v13 isEqual:v14];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (IMMessageSyndicationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sacg"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sasd"];
  v7 = [coderCopy decodeInt64ForKey:@"sat2"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"samp"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMSyndicatedMessagePartRangeKey"];
  rangeValue = [v9 rangeValue];
  v12 = v11;
  v13 = [coderCopy decodeInt64ForKey:@"savs"];

  LOBYTE(v16) = v13;
  v14 = [(IMMessageSyndicationAction *)self initWithChatGUID:v5 syndicationStartDate:v6 syndicationActionType:v7 messagePartGUID:v8 messagePartRange:rangeValue version:v12, v16];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = IMMessageSyndicationAction;
  coderCopy = coder;
  [(IMSyndicationAction *)&v10 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x1E696B098];
  v6 = [(IMMessageSyndicationAction *)self messagePartRange:v10.receiver];
  v8 = [v5 valueWithRange:{v6, v7}];
  [coderCopy encodeObject:v8 forKey:@"IMSyndicatedMessagePartRangeKey"];

  messagePartGUID = [(IMMessageSyndicationAction *)self messagePartGUID];
  [coderCopy encodeObject:messagePartGUID forKey:@"samp"];

  [coderCopy encodeInt64:-[IMSyndicationAction syndicationActionType](self forKey:{"syndicationActionType"), @"sat2"}];
  [coderCopy encodeInt64:-[IMSyndicationAction version](self forKey:{"version"), @"savs"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  chatGUID = [(IMSyndicationAction *)self chatGUID];
  syndicationStartDate = [(IMSyndicationAction *)self syndicationStartDate];
  syndicationActionType = [(IMSyndicationAction *)self syndicationActionType];
  messagePartGUID = [(IMMessageSyndicationAction *)self messagePartGUID];
  messagePartRange = [(IMMessageSyndicationAction *)self messagePartRange];
  v11 = v10;
  LOBYTE(v14) = [(IMSyndicationAction *)self version];
  v12 = [v4 initWithChatGUID:chatGUID syndicationStartDate:syndicationStartDate syndicationActionType:syndicationActionType messagePartGUID:messagePartGUID messagePartRange:messagePartRange version:{v11, v14}];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = IMMessageSyndicationAction;
  v4 = [(IMSyndicationAction *)&v9 description];
  v11.location = [(IMMessageSyndicationAction *)self messagePartRange];
  v5 = NSStringFromRange(v11);
  messagePartGUID = [(IMMessageSyndicationAction *)self messagePartGUID];
  v7 = [v3 stringWithFormat:@"%@ range: %@, messagePartGUID: %@", v4, v5, messagePartGUID];

  return v7;
}

- (_NSRange)messagePartRange
{
  p_messagePartRange = &self->_messagePartRange;
  location = self->_messagePartRange.location;
  length = p_messagePartRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (int64_t)messagePartSyndicationType
{
  if (![(IMSyndicationAction *)self syndicationActionType]|| ([(IMSyndicationAction *)self syndicationActionType]& 8) != 0)
  {
    return 0;
  }

  if (([(IMSyndicationAction *)self syndicationActionType]& 0x10) != 0)
  {
    return 4;
  }

  if (([(IMSyndicationAction *)self syndicationActionType]& 4) == 0)
  {
    if (([(IMSyndicationAction *)self syndicationActionType]& 0x20) == 0)
    {
      return ([(IMSyndicationAction *)self syndicationActionType]>> 3) & 8;
    }

    return 0;
  }

  return 1;
}

@end