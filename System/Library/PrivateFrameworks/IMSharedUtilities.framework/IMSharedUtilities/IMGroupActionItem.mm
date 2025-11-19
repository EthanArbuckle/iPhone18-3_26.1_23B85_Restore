@interface IMGroupActionItem
- (BOOL)actionIsGroupPhoto;
- (BOOL)isEqual:(id)a3;
- (BOOL)unattributed;
- (IMGroupActionItem)initWithCoder:(id)a3;
- (IMGroupActionItem)initWithDictionary:(id)a3;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fileTransferGUIDs;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setUnattributed:(BOOL)a3;
@end

@implementation IMGroupActionItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMGroupActionItem;
  [(IMGroupActionItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IMGroupActionItem;
  v5 = [(IMItem *)&v8 copyWithZone:?];
  [v5 setOtherUnformattedID:{-[IMGroupActionItem otherUnformattedID](self, "otherUnformattedID")}];
  [v5 setOtherHandle:{-[IMGroupActionItem otherHandle](self, "otherHandle")}];
  [v5 setOtherCountryCode:{-[IMGroupActionItem otherCountryCode](self, "otherCountryCode")}];
  [v5 setActionType:{-[IMGroupActionItem actionType](self, "actionType")}];
  [v5 setErrorCode:{-[IMGroupActionItem errorCode](self, "errorCode")}];
  v6 = [(NSDictionary *)[(IMGroupActionItem *)self messageSummaryInfo] copyWithZone:a3];
  [v5 setMessageSummaryInfo:v6];

  return v5;
}

- (IMGroupActionItem)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = IMGroupActionItem;
  v4 = [(IMItem *)&v12 initWithCoder:?];
  if (v4)
  {
    -[IMGroupActionItem setOtherCountryCode:](v4, "setOtherCountryCode:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"]);
    -[IMGroupActionItem setOtherHandle:](v4, "setOtherHandle:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"]);
    -[IMGroupActionItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"]);
    [a3 decodeValueOfObjCType:"q" at:&v4->_actionType size:8];
    -[IMGroupActionItem setErrorCode:](v4, "setErrorCode:", [a3 decodeIntForKey:@"errorCode"]);
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    -[IMGroupActionItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"messageSummaryInfo"}]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMGroupActionItem;
  [(IMItem *)&v5 encodeWithCoder:?];
  [a3 encodeObject:-[IMGroupActionItem otherCountryCode](self forKey:{"otherCountryCode"), @"otherCountryCode"}];
  [a3 encodeObject:-[IMGroupActionItem otherHandle](self forKey:{"otherHandle"), @"otherHandle"}];
  [a3 encodeObject:-[IMGroupActionItem otherUnformattedID](self forKey:{"otherUnformattedID"), @"otherUnformattedID"}];
  [a3 encodeValueOfObjCType:"q" at:&self->_actionType];
  [a3 encodeInt:self->_errorCode forKey:@"errorCode"];
  [a3 encodeObject:self->_messageSummaryInfo forKey:@"messageSummaryInfo"];
}

- (IMGroupActionItem)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMGroupActionItem;
  v4 = [(IMItem *)&v6 initWithDictionary:?];
  if (v4)
  {
    -[IMGroupActionItem setActionType:](v4, "setActionType:", [objc_msgSend(a3 objectForKey:{@"actionType", "longLongValue"}]);
    -[IMGroupActionItem setOtherCountryCode:](v4, "setOtherCountryCode:", [a3 objectForKey:@"otherCountryCode"]);
    -[IMGroupActionItem setOtherHandle:](v4, "setOtherHandle:", [a3 objectForKey:@"otherHandle"]);
    -[IMGroupActionItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [a3 objectForKey:@"otherUnformattedID"]);
    -[IMGroupActionItem setErrorCode:](v4, "setErrorCode:", [objc_msgSend(a3 _numberForKey:{@"errorCode", "intValue"}]);
    -[IMGroupActionItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [a3 objectForKeyedSubscript:@"messageSummaryInfo"]);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v17 = v3;
  v18 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = IMGroupActionItem;
    LOBYTE(v7) = [(IMItem *)&v15 isEqual:a3];
    return v7;
  }

  v16.receiver = self;
  v16.super_class = IMGroupActionItem;
  v7 = [(IMItem *)&v16 isEqual:a3];
  if (!v7)
  {
    return v7;
  }

  actionType = self->_actionType;
  if (actionType != [a3 actionType])
  {
    goto LABEL_16;
  }

  otherCountryCode = self->_otherCountryCode;
  if (otherCountryCode == [a3 otherCountryCode] || (v7 = -[NSString isEqualToString:](self->_otherCountryCode, "isEqualToString:", objc_msgSend(a3, "otherCountryCode"))))
  {
    otherHandle = self->_otherHandle;
    if (otherHandle == [a3 otherHandle] || (v7 = -[NSString isEqualToString:](self->_otherHandle, "isEqualToString:", objc_msgSend(a3, "otherHandle"))))
    {
      otherUnformattedID = self->_otherUnformattedID;
      if (otherUnformattedID == [a3 otherUnformattedID] || (v7 = -[NSString isEqualToString:](self->_otherUnformattedID, "isEqualToString:", objc_msgSend(a3, "otherUnformattedID"))))
      {
        errorCode = self->_errorCode;
        if (errorCode == [a3 errorCode])
        {
          messageSummaryInfo = self->_messageSummaryInfo;
          LOBYTE(v7) = messageSummaryInfo == [a3 messageSummaryInfo] || -[NSDictionary isEqualToDictionary:](self->_messageSummaryInfo, "isEqualToDictionary:", objc_msgSend(a3, "messageSummaryInfo"));
          return v7;
        }

LABEL_16:
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7;
}

- (id)copyDictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = IMGroupActionItem;
  v3 = [(IMItem *)&v12 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  otherCountryCode = self->_otherCountryCode;
  if (otherCountryCode)
  {
    CFDictionarySetValue(v3, @"otherCountryCode", otherCountryCode);
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    CFDictionarySetValue(v3, @"otherHandle", otherHandle);
  }

  otherUnformattedID = self->_otherUnformattedID;
  if (otherUnformattedID)
  {
    CFDictionarySetValue(v3, @"otherUnformattedID", otherUnformattedID);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_actionType];
  if (v8)
  {
    CFDictionarySetValue(v3, @"actionType", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
  if (v9)
  {
    CFDictionarySetValue(v3, @"errorCode", v9);
  }

  messageSummaryInfo = self->_messageSummaryInfo;
  if (messageSummaryInfo)
  {
    CFDictionarySetValue(v3, @"messageSummaryInfo", messageSummaryInfo);
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

- (BOOL)actionIsGroupPhoto
{
  v3 = [(IMGroupActionItem *)self actionType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(IMGroupActionItem *)self actionType]== 3;
  }

  return v3;
}

- (id)fileTransferGUIDs
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (![(IMGroupActionItem *)self actionIsGroupPhoto])
  {
    return 0;
  }

  v4[0] = IMFileTransferGUIDForPluginPayloadOrGroupPhotoInMessageGUID([(IMItem *)self guid]);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
}

- (BOOL)unattributed
{
  v2 = [(NSDictionary *)self->_messageSummaryInfo objectForKeyedSubscript:@"uat"];

  return [v2 BOOLValue];
}

- (void)setUnattributed:(BOOL)a3
{
  v5 = [(NSDictionary *)self->_messageSummaryInfo mutableCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  if (a3)
  {
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", 1), @"uat"}];
  }

  else
  {
    if (![v5 count])
    {
      goto LABEL_8;
    }

    [v6 removeObjectForKey:@"uat"];
  }

  -[IMGroupActionItem setMessageSummaryInfo:](self, "setMessageSummaryInfo:", [v6 copy]);
LABEL_8:
}

@end