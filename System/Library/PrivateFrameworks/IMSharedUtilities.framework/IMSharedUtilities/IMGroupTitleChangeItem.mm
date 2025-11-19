@interface IMGroupTitleChangeItem
- (BOOL)isEqual:(id)a3;
- (BOOL)unattributed;
- (IMGroupTitleChangeItem)initWithCoder:(id)a3;
- (IMGroupTitleChangeItem)initWithDictionary:(id)a3;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setUnattributed:(BOOL)a3;
@end

@implementation IMGroupTitleChangeItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMGroupTitleChangeItem;
  [(IMGroupTitleChangeItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IMGroupTitleChangeItem;
  v5 = [(IMItem *)&v8 copyWithZone:?];
  [v5 setOtherUnformattedID:{-[IMGroupTitleChangeItem otherUnformattedID](self, "otherUnformattedID")}];
  [v5 setOtherHandle:{-[IMGroupTitleChangeItem otherHandle](self, "otherHandle")}];
  [v5 setOtherCountryCode:{-[IMGroupTitleChangeItem otherCountryCode](self, "otherCountryCode")}];
  [v5 setTitle:{-[IMGroupTitleChangeItem title](self, "title")}];
  [v5 setErrorCode:{-[IMGroupTitleChangeItem errorCode](self, "errorCode")}];
  v6 = [(NSDictionary *)[(IMGroupTitleChangeItem *)self messageSummaryInfo] copyWithZone:a3];
  [v5 setMessageSummaryInfo:v6];

  return v5;
}

- (IMGroupTitleChangeItem)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = IMGroupTitleChangeItem;
  v4 = [(IMItem *)&v12 initWithCoder:?];
  if (v4)
  {
    -[IMGroupTitleChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"]);
    -[IMGroupTitleChangeItem setOtherHandle:](v4, "setOtherHandle:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"]);
    -[IMGroupTitleChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"]);
    -[IMGroupTitleChangeItem setTitle:](v4, "setTitle:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"title"]);
    -[IMGroupTitleChangeItem setErrorCode:](v4, "setErrorCode:", [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"errorCode", "intValue"}]);
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    -[IMGroupTitleChangeItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"messageSummaryInfo"}]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMGroupTitleChangeItem;
  [(IMItem *)&v5 encodeWithCoder:?];
  [a3 encodeObject:-[IMGroupTitleChangeItem otherCountryCode](self forKey:{"otherCountryCode"), @"otherCountryCode"}];
  [a3 encodeObject:-[IMGroupTitleChangeItem otherHandle](self forKey:{"otherHandle"), @"otherHandle"}];
  [a3 encodeObject:-[IMGroupTitleChangeItem otherUnformattedID](self forKey:{"otherUnformattedID"), @"otherUnformattedID"}];
  [a3 encodeObject:-[IMGroupTitleChangeItem title](self forKey:{"title"), @"title"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", -[IMGroupTitleChangeItem errorCode](self, "errorCode")), @"errorCode"}];
  [a3 encodeObject:self->_messageSummaryInfo forKey:@"messageSummaryInfo"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
      v7 = [(IMItem *)&v16 isEqual:a3];
      if (v7)
      {
        title = self->_title;
        if (title == [a3 title] || (v7 = -[NSString isEqualToString:](self->_title, "isEqualToString:", objc_msgSend(a3, "title"))))
        {
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
      LOBYTE(v7) = [(IMItem *)&v15 isEqual:a3];
    }
  }

  return v7;
}

- (IMGroupTitleChangeItem)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMGroupTitleChangeItem;
  v4 = [(IMItem *)&v6 initWithDictionary:?];
  if (v4)
  {
    -[IMGroupTitleChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [a3 objectForKey:@"otherCountryCode"]);
    -[IMGroupTitleChangeItem setOtherHandle:](v4, "setOtherHandle:", [a3 objectForKey:@"otherHandle"]);
    -[IMGroupTitleChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [a3 objectForKey:@"otherUnformattedID"]);
    -[IMGroupTitleChangeItem setTitle:](v4, "setTitle:", [a3 objectForKey:@"title"]);
    -[IMGroupTitleChangeItem setErrorCode:](v4, "setErrorCode:", [objc_msgSend(a3 _numberForKey:{@"errorCode", "intValue"}]);
    -[IMGroupTitleChangeItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [a3 objectForKeyedSubscript:@"messageSummaryInfo"]);
  }

  return v4;
}

- (id)copyDictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = IMGroupTitleChangeItem;
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

  title = self->_title;
  if (title)
  {
    CFDictionarySetValue(v3, @"title", title);
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

  -[IMGroupTitleChangeItem setMessageSummaryInfo:](self, "setMessageSummaryInfo:", [v6 copy]);
LABEL_8:
}

@end