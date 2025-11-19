@interface EKAlarmOccurrence
+ (id)alarmOccurrenceWithAlarmID:(id)a3 ownerID:(id)a4 ownerDate:(id)a5 ownerTimeZone:(id)a6 ownerURI:(id)a7 fireDate:(id)a8 externalID:(id)a9 acknowledgedDate:(id)a10;
- (EKAlarmOccurrence)initWithAlarmID:(id)a3 ownerID:(id)a4 ownerDate:(id)a5 ownerTimeZone:(id)a6 ownerURI:(id)a7 fireDate:(id)a8 externalID:(id)a9 acknowledgedDate:(id)a10;
- (EKAlarmOccurrence)initWithCoder:(id)a3;
- (EKAlarmOccurrence)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKAlarmOccurrence

+ (id)alarmOccurrenceWithAlarmID:(id)a3 ownerID:(id)a4 ownerDate:(id)a5 ownerTimeZone:(id)a6 ownerURI:(id)a7 fireDate:(id)a8 externalID:(id)a9 acknowledgedDate:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[a1 alloc] initWithAlarmID:v24 ownerID:v23 ownerDate:v22 ownerTimeZone:v21 ownerURI:v20 fireDate:v19 externalID:v18 acknowledgedDate:v17];

  return v25;
}

- (EKAlarmOccurrence)initWithAlarmID:(id)a3 ownerID:(id)a4 ownerDate:(id)a5 ownerTimeZone:(id)a6 ownerURI:(id)a7 fireDate:(id)a8 externalID:(id)a9 acknowledgedDate:(id)a10
{
  v39 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v40.receiver = self;
  v40.super_class = EKAlarmOccurrence;
  v24 = [(EKAlarmOccurrence *)&v40 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_alarmID, a3);
    objc_storeStrong(&v25->_ownerID, a4);
    v26 = [v18 copy];
    ownerDate = v25->_ownerDate;
    v25->_ownerDate = v26;

    v28 = [v19 copy];
    ownerTimeZone = v25->_ownerTimeZone;
    v25->_ownerTimeZone = v28;

    v30 = [v20 copy];
    ownerURI = v25->_ownerURI;
    v25->_ownerURI = v30;

    v32 = [v21 copy];
    fireDate = v25->_fireDate;
    v25->_fireDate = v32;

    v34 = [v22 copy];
    externalID = v25->_externalID;
    v25->_externalID = v34;

    v36 = [v23 copy];
    acknowledgedDate = v25->_acknowledgedDate;
    v25->_acknowledgedDate = v36;
  }

  return v25;
}

- (EKAlarmOccurrence)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = EKAlarmOccurrence;
  v5 = [(EKAlarmOccurrence *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"alarmID"];
    alarmID = v5->_alarmID;
    v5->_alarmID = v6;

    v8 = [v4 decodeObjectForKey:@"ownerID"];
    ownerID = v5->_ownerID;
    v5->_ownerID = v8;

    v10 = [v4 decodeObjectForKey:@"ownerDate"];
    ownerDate = v5->_ownerDate;
    v5->_ownerDate = v10;

    v12 = [v4 decodeObjectForKey:@"ownerTimeZone"];
    ownerTimeZone = v5->_ownerTimeZone;
    v5->_ownerTimeZone = v12;

    v14 = [v4 decodeObjectForKey:@"ownerURI"];
    ownerURI = v5->_ownerURI;
    v5->_ownerURI = v14;

    v16 = [v4 decodeObjectForKey:@"fireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v16;

    v18 = [v4 decodeObjectForKey:@"externalID"];
    externalID = v5->_externalID;
    v5->_externalID = v18;

    v20 = [v4 decodeObjectForKey:@"acknowledgedDate"];
    acknowledgedDate = v5->_acknowledgedDate;
    v5->_acknowledgedDate = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  alarmID = self->_alarmID;
  v5 = a3;
  [v5 encodeObject:alarmID forKey:@"alarmID"];
  [v5 encodeObject:self->_ownerID forKey:@"ownerID"];
  [v5 encodeObject:self->_ownerDate forKey:@"ownerDate"];
  [v5 encodeObject:self->_ownerTimeZone forKey:@"ownerTimeZone"];
  [v5 encodeObject:self->_ownerURI forKey:@"ownerURI"];
  [v5 encodeObject:self->_fireDate forKey:@"fireDate"];
  [v5 encodeObject:self->_externalID forKey:@"externalID"];
  [v5 encodeObject:self->_acknowledgedDate forKey:@"acknowledgedDate"];
}

- (EKAlarmOccurrence)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = EKAlarmOccurrence;
  v5 = [(EKAlarmOccurrence *)&v34 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ownerTimeZone"];
    v7 = objc_alloc(MEMORY[0x277CF74C8]);
    v8 = [v4 objectForKeyedSubscript:@"alarmID"];
    v9 = [v7 initWithDictionaryRepresentation:v8];
    alarmID = v5->_alarmID;
    v5->_alarmID = v9;

    v11 = objc_alloc(MEMORY[0x277CF74C8]);
    v12 = [v4 objectForKeyedSubscript:@"ownerID"];
    v13 = [v11 initWithDictionaryRepresentation:v12];
    ownerID = v5->_ownerID;
    v5->_ownerID = v13;

    v15 = [v4 objectForKeyedSubscript:@"ownerDate"];
    v16 = [v15 copy];
    ownerDate = v5->_ownerDate;
    v5->_ownerDate = v16;

    v18 = [v4 objectForKeyedSubscript:@"ownerTimeZone"];
    v19 = v18;
    if (v18)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v6];
    }

    ownerTimeZone = v5->_ownerTimeZone;
    v5->_ownerTimeZone = v18;

    v21 = [v4 objectForKeyedSubscript:@"ownerURI"];
    v22 = [v21 copy];
    ownerURI = v5->_ownerURI;
    v5->_ownerURI = v22;

    v24 = [v4 objectForKeyedSubscript:@"fireDate"];
    v25 = [v24 copy];
    fireDate = v5->_fireDate;
    v5->_fireDate = v25;

    v27 = [v4 objectForKeyedSubscript:@"externalID"];
    v28 = [v27 copy];
    externalID = v5->_externalID;
    v5->_externalID = v28;

    v30 = [v4 objectForKeyedSubscript:@"acknowledgedDate"];
    v31 = [v30 copy];
    acknowledgedDate = v5->_acknowledgedDate;
    v5->_acknowledgedDate = v31;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  alarmID = self->_alarmID;
  if (alarmID)
  {
    v5 = [(CADObjectID *)alarmID dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"alarmID"];
  }

  ownerID = self->_ownerID;
  if (ownerID)
  {
    v7 = [(CADObjectID *)ownerID dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"ownerID"];
  }

  ownerDate = self->_ownerDate;
  if (ownerDate)
  {
    [v3 setObject:ownerDate forKey:@"ownerDate"];
  }

  ownerTimeZone = self->_ownerTimeZone;
  if (ownerTimeZone)
  {
    v10 = [(NSTimeZone *)ownerTimeZone name];
    [v3 setObject:v10 forKey:@"ownerTimeZone"];
  }

  ownerURI = self->_ownerURI;
  if (ownerURI)
  {
    [v3 setObject:ownerURI forKey:@"ownerURI"];
  }

  fireDate = self->_fireDate;
  if (fireDate)
  {
    [v3 setObject:fireDate forKey:@"fireDate"];
  }

  externalID = self->_externalID;
  if (externalID)
  {
    [v3 setObject:externalID forKey:@"externalID"];
  }

  acknowledgedDate = self->_acknowledgedDate;
  if (acknowledgedDate)
  {
    [v3 setObject:acknowledgedDate forKey:@"acknowledgedDate"];
  }

  return v3;
}

@end