@interface IMParticipantChangeItem
- (BOOL)isEqual:(id)equal;
- (BOOL)unattributed;
- (IMParticipantChangeItem)initWithCoder:(id)coder;
- (IMParticipantChangeItem)initWithDictionary:(id)dictionary;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setUnattributed:(BOOL)unattributed;
@end

@implementation IMParticipantChangeItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMParticipantChangeItem;
  [(IMParticipantChangeItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
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
  v6 = [(NSDictionary *)[(IMParticipantChangeItem *)self messageSummaryInfo] copyWithZone:zone];
  [v5 setMessageSummaryInfo:v6];

  return v5;
}

- (IMParticipantChangeItem)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = IMParticipantChangeItem;
  v4 = [(IMItem *)&v13 initWithCoder:?];
  if (v4)
  {
    -[IMParticipantChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"]);
    -[IMParticipantChangeItem setOtherHandle:](v4, "setOtherHandle:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"]);
    -[IMParticipantChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"]);
    v4->_changeType = [coder decodeInt64ForKey:@"changeType"];
    v4->_errorCode = [coder decodeIntForKey:@"errorCode"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    -[IMParticipantChangeItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"messageSummaryInfo"}]);
    [coder decodeDoubleForKey:@"timeRead"];
    if (v11 > 10.0)
    {
      -[IMParticipantChangeItem setTimeRead:](v4, "setTimeRead:", [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?]);
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IMParticipantChangeItem;
  [(IMItem *)&v5 encodeWithCoder:?];
  [coder encodeObject:-[IMParticipantChangeItem otherCountryCode](self forKey:{"otherCountryCode"), @"otherCountryCode"}];
  [coder encodeObject:-[IMParticipantChangeItem otherHandle](self forKey:{"otherHandle"), @"otherHandle"}];
  [coder encodeObject:-[IMParticipantChangeItem otherUnformattedID](self forKey:{"otherUnformattedID"), @"otherUnformattedID"}];
  [coder encodeInt64:self->_changeType forKey:@"changeType"];
  [coder encodeInt:self->_errorCode forKey:@"errorCode"];
  [coder encodeObject:self->_messageSummaryInfo forKey:@"messageSummaryInfo"];
  [(NSDate *)self->_timeRead timeIntervalSinceReferenceDate];
  [coder encodeDouble:@"timeRead" forKey:?];
}

- (IMParticipantChangeItem)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = IMParticipantChangeItem;
  v4 = [(IMItem *)&v7 initWithDictionary:?];
  if (v4)
  {
    -[IMParticipantChangeItem setOtherCountryCode:](v4, "setOtherCountryCode:", [dictionary objectForKey:@"otherCountryCode"]);
    -[IMParticipantChangeItem setOtherHandle:](v4, "setOtherHandle:", [dictionary objectForKey:@"otherHandle"]);
    -[IMParticipantChangeItem setOtherUnformattedID:](v4, "setOtherUnformattedID:", [dictionary objectForKey:@"otherUnformattedID"]);
    -[IMParticipantChangeItem setChangeType:](v4, "setChangeType:", [objc_msgSend(dictionary objectForKey:{@"changeType", "longLongValue"}]);
    -[IMParticipantChangeItem setErrorCode:](v4, "setErrorCode:", [objc_msgSend(dictionary objectForKey:{@"errorCode", "intValue"}]);
    -[IMParticipantChangeItem setMessageSummaryInfo:](v4, "setMessageSummaryInfo:", [dictionary objectForKeyedSubscript:@"messageSummaryInfo"]);
    [objc_msgSend(dictionary objectForKey:{@"timeRead", "doubleValue"}];
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
  copyDictionaryRepresentation = [(IMItem *)&v15 copyDictionaryRepresentation];
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

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_changeType];
  if (v8)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"changeType", v8);
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

  timeRead = self->_timeRead;
  if (timeRead)
  {
    v12 = MEMORY[0x1E696AD98];
    [(NSDate *)timeRead timeIntervalSinceReferenceDate];
    v13 = [v12 numberWithDouble:?];
    if (v13)
    {
      CFDictionarySetValue(copyDictionaryRepresentation, @"timeRead", v13);
    }
  }

  objc_autoreleasePoolPop(v4);
  return copyDictionaryRepresentation;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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
      v7 = [(IMItem *)&v18 isEqual:equal];
      if (v7)
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
              changeType = self->_changeType;
              if (changeType == [equal changeType] && (activeTelephonyConversationUUID = self->_activeTelephonyConversationUUID, activeTelephonyConversationUUID == objc_msgSend(equal, "activeTelephonyConversationUUID")) && (errorCode = self->_errorCode, errorCode == objc_msgSend(equal, "errorCode")))
              {
                messageSummaryInfo = self->_messageSummaryInfo;
                if (messageSummaryInfo == [equal messageSummaryInfo] || (v7 = -[NSDictionary isEqualToDictionary:](self->_messageSummaryInfo, "isEqualToDictionary:", objc_msgSend(equal, "messageSummaryInfo"))))
                {
                  timeRead = self->_timeRead;
                  LOBYTE(v7) = timeRead == [equal timeRead] || -[NSDate isEqualToDate:](self->_timeRead, "isEqualToDate:", objc_msgSend(equal, "timeRead"));
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
      LOBYTE(v7) = [(IMItem *)&v17 isEqual:equal];
    }
  }

  return v7;
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