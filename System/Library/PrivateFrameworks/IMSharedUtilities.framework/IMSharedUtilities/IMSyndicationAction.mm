@interface IMSyndicationAction
+ (id)dateFromNanoSeconds:(id)seconds;
+ (id)nanoSecondsFromDate:(id)date;
+ (id)unarchiveClasses;
- (BOOL)isEqual:(id)equal;
- (IMSyndicationAction)init;
- (IMSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date syndicationActionType:(unsigned __int8)type;
- (IMSyndicationAction)initWithCoder:(id)coder;
- (IMSyndicationAction)initWithDictionary:(id)dictionary;
- (id)_stringFromActionType:(unsigned __int8)type;
- (id)_stringFromItemType:(unsigned __int8)type;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary;
@end

@implementation IMSyndicationAction

- (id)_stringFromActionType:(unsigned __int8)type
{
  if ((type & 4) != 0)
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:@"IMSyndicationActionTypeAddItem"];
  }

  else
  {
    array = 0;
  }

  v5 = @"IMSyndicationActionTypeRemoveItem";
  if ((type & 8) == 0)
  {
    v5 = 0;
  }

  v6 = v5;
  if ((type & 8) != 0)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:@"IMSyndicationActionTypeRemoveItem"];
  }

  v7 = @"IMSyndicationActionTypeUndonateItem";
  if ((type & 0x10) == 0)
  {
    v7 = 0;
  }

  v8 = v7;
  if ((type & 0x10) != 0)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:@"IMSyndicationActionTypeUndonateItem"];
  }

  v9 = @"IMSyndicationActionTypeDonateItem";
  if ((type & 0x20) == 0)
  {
    v9 = 0;
  }

  v10 = v9;
  if ((type & 0x20) != 0)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:@"IMSyndicationActionTypeDonateItem"];
  }

  v11 = @"IMSyndicationActionTypeInteractedWithItem";
  if ((type & 0x40) == 0)
  {
    v11 = 0;
  }

  v12 = v11;
  if ((type & 0x40) != 0)
  {
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:@"IMSyndicationActionTypeInteractedWithItem"];
  }

  if (array)
  {
    v13 = [array componentsJoinedByString:@" | "];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_stringFromItemType:(unsigned __int8)type
{
  if (type > 2u)
  {
    return 0;
  }

  else
  {
    return off_1E7827FE0[type];
  }
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  copyDictionaryRepresentation = [(IMSyndicationAction *)self copyDictionaryRepresentation];
  if (copyDictionaryRepresentation)
  {
    [dictionaryCopy addEntriesFromDictionary:copyDictionaryRepresentation];
  }

  else
  {
    v6 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C17E0();
    }
  }
}

- (IMSyndicationAction)init
{
  v3 = IMLogHandleForCategory("IMSyndicationAction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C1814();
  }

  return 0;
}

+ (id)dateFromNanoSeconds:(id)seconds
{
  secondsCopy = seconds;
  v4 = secondsCopy;
  if (secondsCopy && [secondsCopy longLongValue])
  {
    v5 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)nanoSecondsFromDate:(id)date
{
  if (date)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(date, "__im_nanosecondTimeInterval")}];
  }

  else
  {
    v4 = &unk_1F1BFA5F8;
  }

  return v4;
}

- (id)copyDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMSyndicationAction syndicationActionType](self, "syndicationActionType")}];
  [dictionary setObject:v4 forKeyedSubscript:@"sat2"];

  chatGUID = [(IMSyndicationAction *)self chatGUID];
  [dictionary setObject:chatGUID forKeyedSubscript:@"sacg"];

  v6 = objc_opt_class();
  syndicationStartDate = [(IMSyndicationAction *)self syndicationStartDate];
  v8 = [v6 nanoSecondsFromDate:syndicationStartDate];
  [dictionary setObject:v8 forKeyedSubscript:@"sasd"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMSyndicationAction syndicatedItemType](self, "syndicatedItemType")}];
  [dictionary setObject:v9 forKeyedSubscript:@"sait"];

  v10 = [MEMORY[0x1E696AD98] numberWithShort:{-[IMSyndicationAction version](self, "version")}];
  [dictionary setObject:v10 forKeyedSubscript:@"savs"];

  return dictionary;
}

- (IMSyndicationAction)initWithDictionary:(id)dictionary
{
  v4 = IMLogHandleForCategory("IMSyndicationAction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C1848();
  }

  return 0;
}

- (IMSyndicationAction)initWithChatGUID:(id)d syndicationStartDate:(id)date syndicationActionType:(unsigned __int8)type
{
  typeCopy = type;
  dCopy = d;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = IMSyndicationAction;
  v10 = [(IMSyndicationAction *)&v18 init];
  if (!v10)
  {
    goto LABEL_24;
  }

  if (dCopy && [dCopy length])
  {
    v11 = typeCopy & 0xFFFFFFFB;
    if ((typeCopy & 4) == 0)
    {
      v11 = typeCopy;
    }

    if ((typeCopy & 8) != 0)
    {
      v11 &= ~8u;
    }

    if ((typeCopy & 0x10) != 0)
    {
      v11 &= ~0x10u;
    }

    if ((typeCopy & 0x20) != 0)
    {
      v11 &= ~0x20u;
    }

    if ((typeCopy & 0x40) != 0)
    {
      v11 &= ~0x40u;
    }

    if (v11)
    {
      v12 = IMLogHandleForCategory("IMSyndicationAction");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C187C(typeCopy, v12);
      }

      goto LABEL_21;
    }

    if (dateCopy)
    {
      v15 = [dCopy copy];
      chatGUID = v10->_chatGUID;
      v10->_chatGUID = v15;

      v10->_syndicationActionType = typeCopy;
      objc_storeStrong(&v10->_syndicationStartDate, date);
      v10->_version = 2;
LABEL_24:
      v14 = v10;
      goto LABEL_25;
    }

    v13 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C18F8();
    }
  }

  else
  {
    v13 = IMLogHandleForCategory("IMSyndicationAction");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C192C();
    }
  }

LABEL_21:
  v14 = 0;
LABEL_25:

  return v14;
}

- (IMSyndicationAction)initWithCoder:(id)coder
{
  v4 = IMLogHandleForCategory("IMSyndicationAction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C1960();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  chatGUID = [(IMSyndicationAction *)self chatGUID];
  [coderCopy encodeObject:chatGUID forKey:@"sacg"];

  syndicationStartDate = [(IMSyndicationAction *)self syndicationStartDate];
  [coderCopy encodeObject:syndicationStartDate forKey:@"sasd"];

  [coderCopy encodeInt64:-[IMSyndicationAction syndicationActionType](self forKey:{"syndicationActionType"), @"sat2"}];
  [coderCopy encodeInt64:-[IMSyndicationAction version](self forKey:{"version"), @"savs"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = IMLogHandleForCategory("IMSyndicationAction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C1994();
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = IMSyndicationAction;
  v4 = [(IMSyndicationAction *)&v11 description];
  chatGUID = [(IMSyndicationAction *)self chatGUID];
  v6 = [(IMSyndicationAction *)self _stringFromItemType:[(IMSyndicationAction *)self syndicatedItemType]];
  v7 = [(IMSyndicationAction *)self _stringFromActionType:[(IMSyndicationAction *)self syndicationActionType]];
  syndicationStartDate = [(IMSyndicationAction *)self syndicationStartDate];
  v9 = [v3 stringWithFormat:@"%@ chatGUID: %@, syndicatedItemType: %@, syndicationActionType: %@, syndicationStartDate: %@, version: %d", v4, chatGUID, v6, v7, syndicationStartDate, -[IMSyndicationAction version](self, "version")];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      syndicationActionType = [(IMSyndicationAction *)self syndicationActionType];
      if (syndicationActionType == [(IMSyndicationAction *)equalCopy syndicationActionType])
      {
        syndicationStartDate = [(IMSyndicationAction *)self syndicationStartDate];
        syndicationStartDate2 = [(IMSyndicationAction *)equalCopy syndicationStartDate];
        v8 = syndicationStartDate;
        v9 = syndicationStartDate2;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          v12 = v9;
          v13 = v8;
          if (!v8 || !v9)
          {
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v11 = [v8 __im_isEqualToSeconds:v9];

          if (!v11)
          {
            goto LABEL_19;
          }
        }

        chatGUID = [(IMSyndicationAction *)self chatGUID];
        chatGUID2 = [(IMSyndicationAction *)equalCopy chatGUID];
        v13 = chatGUID;
        v16 = chatGUID2;
        v12 = v16;
        if (v13 == v16)
        {
          LOBYTE(v11) = 1;
        }

        else
        {
          LOBYTE(v11) = 0;
          if (v13 && v16)
          {
            LOBYTE(v11) = [v13 isEqualToString:v16];
          }
        }

        goto LABEL_18;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_20:

  return v11;
}

+ (id)unarchiveClasses
{
  if (qword_1EB30AE88 != -1)
  {
    sub_1A88C19C8();
  }

  v3 = qword_1EB30AE80;

  return v3;
}

@end