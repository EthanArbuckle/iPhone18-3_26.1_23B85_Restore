@interface IMGroupTitleChangeItem
- (BOOL)isEqual:(id)equal;
- (BOOL)unattributed;
- (IMGroupTitleChangeItem)initWithCoder:(id)coder;
- (IMGroupTitleChangeItem)initWithDictionary:(id)dictionary;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setUnattributed:(BOOL)unattributed;
@end

@implementation IMGroupTitleChangeItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMGroupTitleChangeItem;
  [(IMGroupTitleChangeItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IMGroupTitleChangeItem;
  v5 = [(IMItem *)&v8 copyWithZone:?];
  [v5 setOtherUnformattedID:{-[IMGroupTitleChangeItem otherUnformattedID](self, "otherUnformattedID")}];
  [v5 setOtherHandle:{-[IMGroupTitleChangeItem otherHandle](self, "otherHandle")}];
  [v5 setOtherCountryCode:{-[IMGroupTitleChangeItem otherCountryCode](self, "otherCountryCode")}];
  [v5 setTitle:{-[IMGroupTitleChangeItem title](self, "title")}];
  [v5 setErrorCode:{-[IMGroupTitleChangeItem errorCode](self, "errorCode")}];
  v6 = [(NSDictionary *)[(IMGroupTitleChangeItem *)self messageSummaryInfo] copyWithZone:zone];
  [v5 setMessageSummaryInfo:v6];

  return v5;
}

- (IMGroupTitleChangeItem)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = IMGroupTitleChangeItem;
  v4 = [(IMItem *)&v12 initWithCoder:?];
  if (v4)
  {
    -[IMGroupTitleChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"]);
    -[IMGroupTitleChangeItem setOtherHandle:](v4, "setOtherHandle:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"]);
    -[IMGroupTitleChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"]);
    -[IMGroupTitleChangeItem setTitle:](v4, "setTitle:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"title"]);
    -[IMGroupTitleChangeItem setErrorCode:](v4, "setErrorCode:", [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"errorCode", "intValue"}]);
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    -[IMGroupTitleChangeItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"messageSummaryInfo"}]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IMGroupTitleChangeItem;
  [(IMItem *)&v5 encodeWithCoder:?];
  [coder encodeObject:-[IMGroupTitleChangeItem otherCountryCode](self forKey:{"otherCountryCode"), @"otherCountryCode"}];
  [coder encodeObject:-[IMGroupTitleChangeItem otherHandle](self forKey:{"otherHandle"), @"otherHandle"}];
  [coder encodeObject:-[IMGroupTitleChangeItem otherUnformattedID](self forKey:{"otherUnformattedID"), @"otherUnformattedID"}];
  [coder encodeObject:-[IMGroupTitleChangeItem title](self forKey:{"title"), @"title"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", -[IMGroupTitleChangeItem errorCode](self, "errorCode")), @"errorCode"}];
  [coder encodeObject:self->_messageSummaryInfo forKey:@"messageSummaryInfo"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v17 = v3;
    v18 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16.receiver = self;
      v16.super_class = IMGroupTitleChangeItem;
      v7 = [(IMItem *)&v16 isEqual:equal];
      if (v7)
      {
        title = self->_title;
        if (title == [equal title] || (v7 = -[NSString isEqualToString:](self->_title, "isEqualToString:", objc_msgSend(equal, "title"))))
        {
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
                }

                else
                {
                  LOBYTE(v7) = 0;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v15.receiver = self;
      v15.super_class = IMGroupTitleChangeItem;
      LOBYTE(v7) = [(IMItem *)&v15 isEqual:equal];
    }
  }

  return v7;
}

- (IMGroupTitleChangeItem)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = IMGroupTitleChangeItem;
  v4 = [(IMItem *)&v6 initWithDictionary:?];
  if (v4)
  {
    -[IMGroupTitleChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [dictionary objectForKey:@"otherCountryCode"]);
    -[IMGroupTitleChangeItem setOtherHandle:](v4, "setOtherHandle:", [dictionary objectForKey:@"otherHandle"]);
    -[IMGroupTitleChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [dictionary objectForKey:@"otherUnformattedID"]);
    -[IMGroupTitleChangeItem setTitle:](v4, "setTitle:", [dictionary objectForKey:@"title"]);
    -[IMGroupTitleChangeItem setErrorCode:](v4, "setErrorCode:", [objc_msgSend(dictionary _numberForKey:{@"errorCode", "intValue"}]);
    -[IMGroupTitleChangeItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [dictionary objectForKeyedSubscript:@"messageSummaryInfo"]);
  }

  return v4;
}

- (id)copyDictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = IMGroupTitleChangeItem;
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

  title = self->_title;
  if (title)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"title", title);
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

  -[IMGroupTitleChangeItem setMessageSummaryInfo:](self, "setMessageSummaryInfo:", [v6 copy]);
LABEL_8:
}

@end