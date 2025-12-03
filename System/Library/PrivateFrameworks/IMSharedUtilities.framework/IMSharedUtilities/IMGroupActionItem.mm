@interface IMGroupActionItem
- (BOOL)actionIsGroupPhoto;
- (BOOL)isEqual:(id)equal;
- (BOOL)unattributed;
- (IMGroupActionItem)initWithCoder:(id)coder;
- (IMGroupActionItem)initWithDictionary:(id)dictionary;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fileTransferGUIDs;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setUnattributed:(BOOL)unattributed;
@end

@implementation IMGroupActionItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMGroupActionItem;
  [(IMGroupActionItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IMGroupActionItem;
  v5 = [(IMItem *)&v8 copyWithZone:?];
  [v5 setOtherUnformattedID:{-[IMGroupActionItem otherUnformattedID](self, "otherUnformattedID")}];
  [v5 setOtherHandle:{-[IMGroupActionItem otherHandle](self, "otherHandle")}];
  [v5 setOtherCountryCode:{-[IMGroupActionItem otherCountryCode](self, "otherCountryCode")}];
  [v5 setActionType:{-[IMGroupActionItem actionType](self, "actionType")}];
  [v5 setErrorCode:{-[IMGroupActionItem errorCode](self, "errorCode")}];
  v6 = [(NSDictionary *)[(IMGroupActionItem *)self messageSummaryInfo] copyWithZone:zone];
  [v5 setMessageSummaryInfo:v6];

  return v5;
}

- (IMGroupActionItem)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = IMGroupActionItem;
  v4 = [(IMItem *)&v12 initWithCoder:?];
  if (v4)
  {
    -[IMGroupActionItem setOtherCountryCode:](v4, "setOtherCountryCode:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"]);
    -[IMGroupActionItem setOtherHandle:](v4, "setOtherHandle:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"]);
    -[IMGroupActionItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"]);
    [coder decodeValueOfObjCType:"q" at:&v4->_actionType size:8];
    -[IMGroupActionItem setErrorCode:](v4, "setErrorCode:", [coder decodeIntForKey:@"errorCode"]);
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    -[IMGroupActionItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"messageSummaryInfo"}]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IMGroupActionItem;
  [(IMItem *)&v5 encodeWithCoder:?];
  [coder encodeObject:-[IMGroupActionItem otherCountryCode](self forKey:{"otherCountryCode"), @"otherCountryCode"}];
  [coder encodeObject:-[IMGroupActionItem otherHandle](self forKey:{"otherHandle"), @"otherHandle"}];
  [coder encodeObject:-[IMGroupActionItem otherUnformattedID](self forKey:{"otherUnformattedID"), @"otherUnformattedID"}];
  [coder encodeValueOfObjCType:"q" at:&self->_actionType];
  [coder encodeInt:self->_errorCode forKey:@"errorCode"];
  [coder encodeObject:self->_messageSummaryInfo forKey:@"messageSummaryInfo"];
}

- (IMGroupActionItem)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = IMGroupActionItem;
  v4 = [(IMItem *)&v6 initWithDictionary:?];
  if (v4)
  {
    -[IMGroupActionItem setActionType:](v4, "setActionType:", [objc_msgSend(dictionary objectForKey:{@"actionType", "longLongValue"}]);
    -[IMGroupActionItem setOtherCountryCode:](v4, "setOtherCountryCode:", [dictionary objectForKey:@"otherCountryCode"]);
    -[IMGroupActionItem setOtherHandle:](v4, "setOtherHandle:", [dictionary objectForKey:@"otherHandle"]);
    -[IMGroupActionItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [dictionary objectForKey:@"otherUnformattedID"]);
    -[IMGroupActionItem setErrorCode:](v4, "setErrorCode:", [objc_msgSend(dictionary _numberForKey:{@"errorCode", "intValue"}]);
    -[IMGroupActionItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [dictionary objectForKeyedSubscript:@"messageSummaryInfo"]);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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
    LOBYTE(v7) = [(IMItem *)&v15 isEqual:equal];
    return v7;
  }

  v16.receiver = self;
  v16.super_class = IMGroupActionItem;
  v7 = [(IMItem *)&v16 isEqual:equal];
  if (!v7)
  {
    return v7;
  }

  actionType = self->_actionType;
  if (actionType != [equal actionType])
  {
    goto LABEL_16;
  }

  otherCountryCode = self->_otherCountryCode;
  if (otherCountryCode == [equal otherCountryCode] || (v7 = -[NSString isEqualToString:](self->_otherCountryCode, "isEqualToString:", objc_msgSend(equal, "otherCountryCode"))))
  {
    otherHandle = self->_otherHandle;
    if (otherHandle == [equal otherHandle] || (v7 = -[NSString isEqualToString:](self->_otherHandle, "isEqualToString:", objc_msgSend(equal, "otherHandle"))))
    {
      otherUnformattedID = self->_otherUnformattedID;
      if (otherUnformattedID == [equal otherUnformattedID] || (v7 = -[NSString isEqualToString:](self->_otherUnformattedID, "isEqualToString:", objc_msgSend(equal, "otherUnformattedID"))))
      {
        errorCode = self->_errorCode;
        if (errorCode == [equal errorCode])
        {
          messageSummaryInfo = self->_messageSummaryInfo;
          LOBYTE(v7) = messageSummaryInfo == [equal messageSummaryInfo] || -[NSDictionary isEqualToDictionary:](self->_messageSummaryInfo, "isEqualToDictionary:", objc_msgSend(equal, "messageSummaryInfo"));
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
  copyDictionaryRepresentation = [(IMItem *)&v12 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  otherCountryCode = self->_otherCountryCode;
  if (otherCountryCode)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherCountryCode", otherCountryCode);
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherHandle", otherHandle);
  }

  otherUnformattedID = self->_otherUnformattedID;
  if (otherUnformattedID)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherUnformattedID", otherUnformattedID);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_actionType];
  if (v8)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"actionType", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
  if (v9)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"errorCode", v9);
  }

  messageSummaryInfo = self->_messageSummaryInfo;
  if (messageSummaryInfo)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"messageSummaryInfo", messageSummaryInfo);
  }

  objc_autoreleasePoolPop(v4);
  return copyDictionaryRepresentation;
}

- (BOOL)actionIsGroupPhoto
{
  actionType = [(IMGroupActionItem *)self actionType];
  if (actionType != 1)
  {
    LOBYTE(actionType) = [(IMGroupActionItem *)self actionType]== 3;
  }

  return actionType;
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

- (void)setUnattributed:(BOOL)unattributed
{
  v5 = [(NSDictionary *)self->_messageSummaryInfo mutableCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  if (unattributed)
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