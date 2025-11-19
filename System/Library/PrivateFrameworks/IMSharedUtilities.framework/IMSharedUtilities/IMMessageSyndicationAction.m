@interface IMMessageSyndicationAction
- (BOOL)isEqual:(id)a3;
- (IMMessageSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 syndicationActionType:(unsigned __int8)a5 encodedMessagePartGUID:(id)a6 messagePartRange:(_NSRange)a7 version:(unsigned __int8)a8;
- (IMMessageSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 syndicationActionType:(unsigned __int8)a5 messagePartGUID:(id)a6 messagePartRange:(_NSRange)a7 version:(unsigned __int8)a8;
- (IMMessageSyndicationAction)initWithCoder:(id)a3;
- (IMMessageSyndicationAction)initWithDictionary:(id)a3;
- (_NSRange)messagePartRange;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)messagePartSyndicationType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMMessageSyndicationAction

- (IMMessageSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 syndicationActionType:(unsigned __int8)a5 messagePartGUID:(id)a6 messagePartRange:(_NSRange)a7 version:(unsigned __int8)a8
{
  length = a7.length;
  location = a7.location;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = v16;
  if (IMSyndicationActionCurrentVersion != a8)
  {
    v19 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3C30(IMSyndicationActionCurrentVersion, a8, v19);
    }

    goto LABEL_21;
  }

  if (!v16)
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

  v18 = v11 & 0xFFFFFFFB;
  if ((v11 & 4) == 0)
  {
    v18 = v11;
  }

  if ((v11 & 8) != 0)
  {
    v18 &= ~8u;
  }

  if ((v11 & 0x10) != 0)
  {
    v18 &= ~0x10u;
  }

  if ((v11 & 0x20) != 0)
  {
    v18 &= ~0x20u;
  }

  if ((v11 & 0x40) != 0)
  {
    v18 &= ~0x40u;
  }

  if (v18)
  {
    v19 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3CBC(v11, v19);
    }

LABEL_21:

LABEL_22:
    v20 = 0;
    goto LABEL_23;
  }

  v25.receiver = self;
  v25.super_class = IMMessageSyndicationAction;
  v23 = [(IMSyndicationAction *)&v25 initWithChatGUID:v14 syndicationStartDate:v15 syndicationActionType:v11];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_messagePartGUID, a6);
    v24->_messagePartRange.location = location;
    v24->_messagePartRange.length = length;
  }

  self = v24;
  v20 = self;
LABEL_23:

  return v20;
}

- (IMMessageSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 syndicationActionType:(unsigned __int8)a5 encodedMessagePartGUID:(id)a6 messagePartRange:(_NSRange)a7 version:(unsigned __int8)a8
{
  length = a7.length;
  location = a7.location;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = v16;
  if (v16 && [v16 length])
  {
    v18 = [[IMMessagePartGUID alloc] initWithEncodedMessagePartGUID:v17];
    LOBYTE(v22) = a8;
    self = [(IMMessageSyndicationAction *)self initWithChatGUID:v14 syndicationStartDate:v15 syndicationActionType:v11 messagePartGUID:v18 messagePartRange:location version:length, v22];

    v19 = self;
  }

  else
  {
    v20 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3DD0(v20);
    }

    v19 = 0;
  }

  return v19;
}

- (IMMessageSyndicationAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"salc"];
  v19 = [v5 integerValue];

  v6 = [v4 objectForKeyedSubscript:@"saln"];
  v7 = [v6 integerValue];

  v8 = [v4 objectForKeyedSubscript:@"sacg"];
  v9 = objc_opt_class();
  v10 = [v4 objectForKeyedSubscript:@"sasd"];
  v11 = [v9 dateFromNanoSeconds:v10];
  v12 = [v4 objectForKeyedSubscript:@"sat2"];
  v13 = [v12 unsignedCharValue];
  v14 = [v4 objectForKeyedSubscript:@"samp"];
  v15 = [v4 objectForKeyedSubscript:@"savs"];

  LOBYTE(v18) = [v15 unsignedCharValue];
  v16 = [(IMMessageSyndicationAction *)self initWithChatGUID:v8 syndicationStartDate:v11 syndicationActionType:v13 encodedMessagePartGUID:v14 messagePartRange:v19 version:v7, v18];

  return v16;
}

- (id)copyDictionaryRepresentation
{
  v15.receiver = self;
  v15.super_class = IMMessageSyndicationAction;
  v3 = [(IMSyndicationAction *)&v15 copyDictionaryRepresentation];
  v4 = [(IMMessageSyndicationAction *)self messagePartRange];
  v6 = v5;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  [v3 setObject:v7 forKeyedSubscript:@"salc"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [v3 setObject:v8 forKeyedSubscript:@"saln"];

  v9 = [(IMMessageSyndicationAction *)self messagePartGUID];
  v10 = [v9 encodedMessagePartGUID];
  v11 = [v10 copy];
  [v3 setObject:v11 forKeyedSubscript:@"samp"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMSyndicationAction syndicationActionType](self, "syndicationActionType")}];
  [v3 setObject:v12 forKeyedSubscript:@"sat2"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMSyndicationAction version](self, "version")}];
  [v3 setObject:v13 forKeyedSubscript:@"savs"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IMMessageSyndicationAction;
  if (-[IMSyndicationAction isEqual:](&v17, sel_isEqual_, v4) && (v5 = -[IMSyndicationAction syndicationActionType](self, "syndicationActionType"), v5 == [v4 syndicationActionType]))
  {
    v6 = [(IMMessageSyndicationAction *)self messagePartRange];
    v8 = v7;
    v10 = 0;
    if (v6 == [v4 messagePartRange] && v8 == v9)
    {
      v11 = [(IMMessageSyndicationAction *)self messagePartGUID];
      v12 = [v4 messagePartGUID];
      v13 = v11;
      v14 = v12;
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

- (IMMessageSyndicationAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sacg"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sasd"];
  v7 = [v4 decodeInt64ForKey:@"sat2"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"samp"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IMSyndicatedMessagePartRangeKey"];
  v10 = [v9 rangeValue];
  v12 = v11;
  v13 = [v4 decodeInt64ForKey:@"savs"];

  LOBYTE(v16) = v13;
  v14 = [(IMMessageSyndicationAction *)self initWithChatGUID:v5 syndicationStartDate:v6 syndicationActionType:v7 messagePartGUID:v8 messagePartRange:v10 version:v12, v16];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = IMMessageSyndicationAction;
  v4 = a3;
  [(IMSyndicationAction *)&v10 encodeWithCoder:v4];
  v5 = MEMORY[0x1E696B098];
  v6 = [(IMMessageSyndicationAction *)self messagePartRange:v10.receiver];
  v8 = [v5 valueWithRange:{v6, v7}];
  [v4 encodeObject:v8 forKey:@"IMSyndicatedMessagePartRangeKey"];

  v9 = [(IMMessageSyndicationAction *)self messagePartGUID];
  [v4 encodeObject:v9 forKey:@"samp"];

  [v4 encodeInt64:-[IMSyndicationAction syndicationActionType](self forKey:{"syndicationActionType"), @"sat2"}];
  [v4 encodeInt64:-[IMSyndicationAction version](self forKey:{"version"), @"savs"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IMSyndicationAction *)self chatGUID];
  v6 = [(IMSyndicationAction *)self syndicationStartDate];
  v7 = [(IMSyndicationAction *)self syndicationActionType];
  v8 = [(IMMessageSyndicationAction *)self messagePartGUID];
  v9 = [(IMMessageSyndicationAction *)self messagePartRange];
  v11 = v10;
  LOBYTE(v14) = [(IMSyndicationAction *)self version];
  v12 = [v4 initWithChatGUID:v5 syndicationStartDate:v6 syndicationActionType:v7 messagePartGUID:v8 messagePartRange:v9 version:{v11, v14}];

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
  v6 = [(IMMessageSyndicationAction *)self messagePartGUID];
  v7 = [v3 stringWithFormat:@"%@ range: %@, messagePartGUID: %@", v4, v5, v6];

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