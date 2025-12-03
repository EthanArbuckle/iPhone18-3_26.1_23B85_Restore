@interface ICASPrivateEventData
- (ICASPrivateEventData)initWithPrivateSessionID:(id)d sessionDetailType:(id)type;
- (id)toDict;
@end

@implementation ICASPrivateEventData

- (ICASPrivateEventData)initWithPrivateSessionID:(id)d sessionDetailType:(id)type
{
  dCopy = d;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = ICASPrivateEventData;
  v9 = [(ICASPrivateEventData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_privateSessionID, d);
    objc_storeStrong(&v10->_sessionDetailType, type);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"privateSessionID";
  privateSessionID = [(ICASPrivateEventData *)self privateSessionID];
  if (privateSessionID)
  {
    privateSessionID2 = [(ICASPrivateEventData *)self privateSessionID];
  }

  else
  {
    privateSessionID2 = objc_opt_new();
  }

  v5 = privateSessionID2;
  v12[1] = @"sessionDetailType";
  v13[0] = privateSessionID2;
  sessionDetailType = [(ICASPrivateEventData *)self sessionDetailType];
  if (sessionDetailType)
  {
    sessionDetailType2 = [(ICASPrivateEventData *)self sessionDetailType];
  }

  else
  {
    sessionDetailType2 = objc_opt_new();
  }

  v8 = sessionDetailType2;
  v13[1] = sessionDetailType2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end