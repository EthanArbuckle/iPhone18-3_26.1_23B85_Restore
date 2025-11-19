@interface IMParticipantChangeItem
- (BOOL)isEqual:(id)a3;
- (BOOL)unattributed;
- (IMParticipantChangeItem)initWithCoder:(id)a3;
- (IMParticipantChangeItem)initWithDictionary:(id)a3;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setUnattributed:(BOOL)a3;
@end

@implementation IMParticipantChangeItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMParticipantChangeItem;
  [(IMParticipantChangeItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IMParticipantChangeItem;
  v5 = [(IMItem *)&v8 copyWithZone:?];
  [v5 setOtherUnformattedID:{-[IMParticipantChangeItem otherUnformattedID](self, "otherUnformattedID")}];
  [v5 setOtherHandle:{-[IMParticipantChangeItem otherHandle](self, "otherHandle")}];
  [v5 setOtherCountryCode:{-[IMParticipantChangeItem otherCountryCode](self, "otherCountryCode")}];
  [v5 setChangeType:{-[IMParticipantChangeItem changeType](self, "changeType")}];
  [v5 setActiveTelephonyConversationUUID:{-[IMParticipantChangeItem activeTelephonyConversationUUID](self, "activeTelephonyConversationUUID")}];
  [v5 setErrorCode:{-[IMParticipantChangeItem errorCode](self, "errorCode")}];
  [v5 setTimeRead:{-[IMParticipantChangeItem timeRead](self, "timeRead")}];
  v6 = [(NSDictionary *)[(IMParticipantChangeItem *)self messageSummaryInfo] copyWithZone:a3];
  [v5 setMessageSummaryInfo:v6];

  return v5;
}

- (IMParticipantChangeItem)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = IMParticipantChangeItem;
  v4 = [(IMItem *)&v13 initWithCoder:?];
  if (v4)
  {
    -[IMParticipantChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"]);
    -[IMParticipantChangeItem setOtherHandle:](v4, "setOtherHandle:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"]);
    -[IMParticipantChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"]);
    v4->_changeType = [a3 decodeInt64ForKey:@"changeType"];
    v4->_errorCode = [a3 decodeIntForKey:@"errorCode"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    -[IMParticipantChangeItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"messageSummaryInfo"}]);
    [a3 decodeDoubleForKey:@"timeRead"];
    if (v11 > 10.0)
    {
      -[IMParticipantChangeItem setTimeRead:](v4, "setTimeRead:", [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?]);
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IMParticipantChangeItem;
  [(IMItem *)&v5 encodeWithCoder:?];
  [a3 encodeObject:-[IMParticipantChangeItem otherCountryCode](self forKey:{"otherCountryCode"), @"otherCountryCode"}];
  [a3 encodeObject:-[IMParticipantChangeItem otherHandle](self forKey:{"otherHandle"), @"otherHandle"}];
  [a3 encodeObject:-[IMParticipantChangeItem otherUnformattedID](self forKey:{"otherUnformattedID"), @"otherUnformattedID"}];
  [a3 encodeInt64:self->_changeType forKey:@"changeType"];
  [a3 encodeInt:self->_errorCode forKey:@"errorCode"];
  [a3 encodeObject:self->_messageSummaryInfo forKey:@"messageSummaryInfo"];
  [(NSDate *)self->_timeRead timeIntervalSinceReferenceDate];
  [a3 encodeDouble:@"timeRead" forKey:?];
}

- (IMParticipantChangeItem)initWithDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = IMParticipantChangeItem;
  v4 = [(IMItem *)&v7 initWithDictionary:?];
  if (v4)
  {
    -[IMParticipantChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [a3 objectForKey:@"otherCountryCode"]);
    -[IMParticipantChangeItem setOtherHandle:](v4, "setOtherHandle:", [a3 objectForKey:@"otherHandle"]);
    -[IMParticipantChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [a3 objectForKey:@"otherUnformattedID"]);
    -[IMParticipantChangeItem setChangeType:](v4, "setChangeType:", [objc_msgSend(a3 objectForKey:{@"changeType", "longLongValue"}]);
    -[IMParticipantChangeItem setErrorCode:](v4, "setErrorCode:", [objc_msgSend(a3 objectForKey:{@"errorCode", "intValue"}]);
    -[IMParticipantChangeItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [a3 objectForKeyedSubscript:@"messageSummaryInfo"]);
    [objc_msgSend(a3 objectForKey:{@"timeRead", "doubleValue"}];
    if (v5 > 10.0)
    {
      -[IMParticipantChangeItem setTimeRead:](v4, "setTimeRead:", [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?]);
    }
  }

  return v4;
}

- (id)copyDictionaryRepresentation
{
  v15.receiver = self;
  v15.super_class = IMParticipantChangeItem;
  v3 = [(IMItem *)&v15 copyDictionaryRepresentation];
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

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_changeType];
  if (v8)
  {
    CFDictionarySetValue(v3, @"changeType", v8);
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

  timeRead = self->_timeRead;
  if (timeRead)
  {
    v12 = MEMORY[0x1E696AD98];
    [(NSDate *)timeRead timeIntervalSinceReferenceDate];
    v13 = [v12 numberWithDouble:?];
    if (v13)
    {
      CFDictionarySetValue(v3, @"timeRead", v13);
    }
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v19 = v3;
    v20 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18.receiver = self;
      v18.super_class = IMParticipantChangeItem;
      v7 = [(IMItem *)&v18 isEqual:a3];
      if (v7)
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
              changeType = self->_changeType;
              if (changeType == [a3 changeType] && (activeTelephonyConversationUUID = self->_activeTelephonyConversationUUID, activeTelephonyConversationUUID == objc_msgSend(a3, "activeTelephonyConversationUUID")) && (errorCode = self->_errorCode, errorCode == objc_msgSend(a3, "errorCode")))
              {
                messageSummaryInfo = self->_messageSummaryInfo;
                if (messageSummaryInfo == [a3 messageSummaryInfo] || (v7 = -[NSDictionary isEqualToDictionary:](self->_messageSummaryInfo, "isEqualToDictionary:", objc_msgSend(a3, "messageSummaryInfo"))))
                {
                  timeRead = self->_timeRead;
                  LOBYTE(v7) = timeRead == [a3 timeRead] || -[NSDate isEqualToDate:](self->_timeRead, "isEqualToDate:", objc_msgSend(a3, "timeRead"));
                }
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

    else
    {
      v17.receiver = self;
      v17.super_class = IMParticipantChangeItem;
      LOBYTE(v7) = [(IMItem *)&v17 isEqual:a3];
    }
  }

  return v7;
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

  -[IMParticipantChangeItem setMessageSummaryInfo:](self, "setMessageSummaryInfo:", [v6 copy]);
LABEL_8:
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMParticipantChangeItem;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ timeRead: %@]", -[IMItem description](&v3, sel_description), -[IMParticipantChangeItem timeRead](self, "timeRead")];
}

@end