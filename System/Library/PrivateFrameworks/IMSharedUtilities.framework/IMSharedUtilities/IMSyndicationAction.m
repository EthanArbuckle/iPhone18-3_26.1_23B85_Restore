@interface IMSyndicationAction
+ (id)dateFromNanoSeconds:(id)a3;
+ (id)nanoSecondsFromDate:(id)a3;
+ (id)unarchiveClasses;
- (BOOL)isEqual:(id)a3;
- (IMSyndicationAction)init;
- (IMSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 syndicationActionType:(unsigned __int8)a5;
- (IMSyndicationAction)initWithCoder:(id)a3;
- (IMSyndicationAction)initWithDictionary:(id)a3;
- (id)_stringFromActionType:(unsigned __int8)a3;
- (id)_stringFromItemType:(unsigned __int8)a3;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)a3;
@end

@implementation IMSyndicationAction

- (id)_stringFromActionType:(unsigned __int8)a3
{
  if ((a3 & 4) != 0)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [v4 addObject:@"IMSyndicationActionTypeAddItem"];
  }

  else
  {
    v4 = 0;
  }

  v5 = @"IMSyndicationActionTypeRemoveItem";
  if ((a3 & 8) == 0)
  {
    v5 = 0;
  }

  v6 = v5;
  if ((a3 & 8) != 0)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:@"IMSyndicationActionTypeRemoveItem"];
  }

  v7 = @"IMSyndicationActionTypeUndonateItem";
  if ((a3 & 0x10) == 0)
  {
    v7 = 0;
  }

  v8 = v7;
  if ((a3 & 0x10) != 0)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:@"IMSyndicationActionTypeUndonateItem"];
  }

  v9 = @"IMSyndicationActionTypeDonateItem";
  if ((a3 & 0x20) == 0)
  {
    v9 = 0;
  }

  v10 = v9;
  if ((a3 & 0x20) != 0)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:@"IMSyndicationActionTypeDonateItem"];
  }

  v11 = @"IMSyndicationActionTypeInteractedWithItem";
  if ((a3 & 0x40) == 0)
  {
    v11 = 0;
  }

  v12 = v11;
  if ((a3 & 0x40) != 0)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
    }

    [v4 addObject:@"IMSyndicationActionTypeInteractedWithItem"];
  }

  if (v4)
  {
    v13 = [v4 componentsJoinedByString:@" | "];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_stringFromItemType:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return 0;
  }

  else
  {
    return off_1E7827FE0[a3];
  }
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)a3
{
  v4 = a3;
  v5 = [(IMSyndicationAction *)self copyDictionaryRepresentation];
  if (v5)
  {
    [v4 addEntriesFromDictionary:v5];
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

+ (id)dateFromNanoSeconds:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 longLongValue])
  {
    v5 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)nanoSecondsFromDate:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a3, "__im_nanosecondTimeInterval")}];
  }

  else
  {
    v4 = &unk_1F1BFA5F8;
  }

  return v4;
}

- (id)copyDictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMSyndicationAction syndicationActionType](self, "syndicationActionType")}];
  [v3 setObject:v4 forKeyedSubscript:@"sat2"];

  v5 = [(IMSyndicationAction *)self chatGUID];
  [v3 setObject:v5 forKeyedSubscript:@"sacg"];

  v6 = objc_opt_class();
  v7 = [(IMSyndicationAction *)self syndicationStartDate];
  v8 = [v6 nanoSecondsFromDate:v7];
  [v3 setObject:v8 forKeyedSubscript:@"sasd"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMSyndicationAction syndicatedItemType](self, "syndicatedItemType")}];
  [v3 setObject:v9 forKeyedSubscript:@"sait"];

  v10 = [MEMORY[0x1E696AD98] numberWithShort:{-[IMSyndicationAction version](self, "version")}];
  [v3 setObject:v10 forKeyedSubscript:@"savs"];

  return v3;
}

- (IMSyndicationAction)initWithDictionary:(id)a3
{
  v4 = IMLogHandleForCategory("IMSyndicationAction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C1848();
  }

  return 0;
}

- (IMSyndicationAction)initWithChatGUID:(id)a3 syndicationStartDate:(id)a4 syndicationActionType:(unsigned __int8)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = IMSyndicationAction;
  v10 = [(IMSyndicationAction *)&v18 init];
  if (!v10)
  {
    goto LABEL_24;
  }

  if (v8 && [v8 length])
  {
    v11 = v5 & 0xFFFFFFFB;
    if ((v5 & 4) == 0)
    {
      v11 = v5;
    }

    if ((v5 & 8) != 0)
    {
      v11 &= ~8u;
    }

    if ((v5 & 0x10) != 0)
    {
      v11 &= ~0x10u;
    }

    if ((v5 & 0x20) != 0)
    {
      v11 &= ~0x20u;
    }

    if ((v5 & 0x40) != 0)
    {
      v11 &= ~0x40u;
    }

    if (v11)
    {
      v12 = IMLogHandleForCategory("IMSyndicationAction");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C187C(v5, v12);
      }

      goto LABEL_21;
    }

    if (v9)
    {
      v15 = [v8 copy];
      chatGUID = v10->_chatGUID;
      v10->_chatGUID = v15;

      v10->_syndicationActionType = v5;
      objc_storeStrong(&v10->_syndicationStartDate, a4);
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

- (IMSyndicationAction)initWithCoder:(id)a3
{
  v4 = IMLogHandleForCategory("IMSyndicationAction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C1960();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(IMSyndicationAction *)self chatGUID];
  [v6 encodeObject:v4 forKey:@"sacg"];

  v5 = [(IMSyndicationAction *)self syndicationStartDate];
  [v6 encodeObject:v5 forKey:@"sasd"];

  [v6 encodeInt64:-[IMSyndicationAction syndicationActionType](self forKey:{"syndicationActionType"), @"sat2"}];
  [v6 encodeInt64:-[IMSyndicationAction version](self forKey:{"version"), @"savs"}];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v5 = [(IMSyndicationAction *)self chatGUID];
  v6 = [(IMSyndicationAction *)self _stringFromItemType:[(IMSyndicationAction *)self syndicatedItemType]];
  v7 = [(IMSyndicationAction *)self _stringFromActionType:[(IMSyndicationAction *)self syndicationActionType]];
  v8 = [(IMSyndicationAction *)self syndicationStartDate];
  v9 = [v3 stringWithFormat:@"%@ chatGUID: %@, syndicatedItemType: %@, syndicationActionType: %@, syndicationStartDate: %@, version: %d", v4, v5, v6, v7, v8, -[IMSyndicationAction version](self, "version")];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(IMSyndicationAction *)self syndicationActionType];
      if (v5 == [(IMSyndicationAction *)v4 syndicationActionType])
      {
        v6 = [(IMSyndicationAction *)self syndicationStartDate];
        v7 = [(IMSyndicationAction *)v4 syndicationStartDate];
        v8 = v6;
        v9 = v7;
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

        v14 = [(IMSyndicationAction *)self chatGUID];
        v15 = [(IMSyndicationAction *)v4 chatGUID];
        v13 = v14;
        v16 = v15;
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