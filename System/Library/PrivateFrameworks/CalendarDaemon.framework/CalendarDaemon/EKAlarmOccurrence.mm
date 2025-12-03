@interface EKAlarmOccurrence
+ (id)alarmOccurrenceWithAlarmID:(id)d ownerID:(id)iD ownerDate:(id)date ownerTimeZone:(id)zone ownerURI:(id)i fireDate:(id)fireDate externalID:(id)externalID acknowledgedDate:(id)self0;
- (EKAlarmOccurrence)initWithAlarmID:(id)d ownerID:(id)iD ownerDate:(id)date ownerTimeZone:(id)zone ownerURI:(id)i fireDate:(id)fireDate externalID:(id)externalID acknowledgedDate:(id)self0;
- (EKAlarmOccurrence)initWithCoder:(id)coder;
- (EKAlarmOccurrence)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKAlarmOccurrence

+ (id)alarmOccurrenceWithAlarmID:(id)d ownerID:(id)iD ownerDate:(id)date ownerTimeZone:(id)zone ownerURI:(id)i fireDate:(id)fireDate externalID:(id)externalID acknowledgedDate:(id)self0
{
  acknowledgedDateCopy = acknowledgedDate;
  externalIDCopy = externalID;
  fireDateCopy = fireDate;
  iCopy = i;
  zoneCopy = zone;
  dateCopy = date;
  iDCopy = iD;
  dCopy = d;
  v25 = [[self alloc] initWithAlarmID:dCopy ownerID:iDCopy ownerDate:dateCopy ownerTimeZone:zoneCopy ownerURI:iCopy fireDate:fireDateCopy externalID:externalIDCopy acknowledgedDate:acknowledgedDateCopy];

  return v25;
}

- (EKAlarmOccurrence)initWithAlarmID:(id)d ownerID:(id)iD ownerDate:(id)date ownerTimeZone:(id)zone ownerURI:(id)i fireDate:(id)fireDate externalID:(id)externalID acknowledgedDate:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  zoneCopy = zone;
  iCopy = i;
  fireDateCopy = fireDate;
  externalIDCopy = externalID;
  acknowledgedDateCopy = acknowledgedDate;
  v40.receiver = self;
  v40.super_class = EKAlarmOccurrence;
  v24 = [(EKAlarmOccurrence *)&v40 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_alarmID, d);
    objc_storeStrong(&v25->_ownerID, iD);
    v26 = [dateCopy copy];
    ownerDate = v25->_ownerDate;
    v25->_ownerDate = v26;

    v28 = [zoneCopy copy];
    ownerTimeZone = v25->_ownerTimeZone;
    v25->_ownerTimeZone = v28;

    v30 = [iCopy copy];
    ownerURI = v25->_ownerURI;
    v25->_ownerURI = v30;

    v32 = [fireDateCopy copy];
    fireDate = v25->_fireDate;
    v25->_fireDate = v32;

    v34 = [externalIDCopy copy];
    externalID = v25->_externalID;
    v25->_externalID = v34;

    v36 = [acknowledgedDateCopy copy];
    acknowledgedDate = v25->_acknowledgedDate;
    v25->_acknowledgedDate = v36;
  }

  return v25;
}

- (EKAlarmOccurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = EKAlarmOccurrence;
  v5 = [(EKAlarmOccurrence *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"alarmID"];
    alarmID = v5->_alarmID;
    v5->_alarmID = v6;

    v8 = [coderCopy decodeObjectForKey:@"ownerID"];
    ownerID = v5->_ownerID;
    v5->_ownerID = v8;

    v10 = [coderCopy decodeObjectForKey:@"ownerDate"];
    ownerDate = v5->_ownerDate;
    v5->_ownerDate = v10;

    v12 = [coderCopy decodeObjectForKey:@"ownerTimeZone"];
    ownerTimeZone = v5->_ownerTimeZone;
    v5->_ownerTimeZone = v12;

    v14 = [coderCopy decodeObjectForKey:@"ownerURI"];
    ownerURI = v5->_ownerURI;
    v5->_ownerURI = v14;

    v16 = [coderCopy decodeObjectForKey:@"fireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v16;

    v18 = [coderCopy decodeObjectForKey:@"externalID"];
    externalID = v5->_externalID;
    v5->_externalID = v18;

    v20 = [coderCopy decodeObjectForKey:@"acknowledgedDate"];
    acknowledgedDate = v5->_acknowledgedDate;
    v5->_acknowledgedDate = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  alarmID = self->_alarmID;
  coderCopy = coder;
  [coderCopy encodeObject:alarmID forKey:@"alarmID"];
  [coderCopy encodeObject:self->_ownerID forKey:@"ownerID"];
  [coderCopy encodeObject:self->_ownerDate forKey:@"ownerDate"];
  [coderCopy encodeObject:self->_ownerTimeZone forKey:@"ownerTimeZone"];
  [coderCopy encodeObject:self->_ownerURI forKey:@"ownerURI"];
  [coderCopy encodeObject:self->_fireDate forKey:@"fireDate"];
  [coderCopy encodeObject:self->_externalID forKey:@"externalID"];
  [coderCopy encodeObject:self->_acknowledgedDate forKey:@"acknowledgedDate"];
}

- (EKAlarmOccurrence)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v34.receiver = self;
  v34.super_class = EKAlarmOccurrence;
  v5 = [(EKAlarmOccurrence *)&v34 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"ownerTimeZone"];
    v7 = objc_alloc(MEMORY[0x277CF74C8]);
    v8 = [representationCopy objectForKeyedSubscript:@"alarmID"];
    v9 = [v7 initWithDictionaryRepresentation:v8];
    alarmID = v5->_alarmID;
    v5->_alarmID = v9;

    v11 = objc_alloc(MEMORY[0x277CF74C8]);
    v12 = [representationCopy objectForKeyedSubscript:@"ownerID"];
    v13 = [v11 initWithDictionaryRepresentation:v12];
    ownerID = v5->_ownerID;
    v5->_ownerID = v13;

    v15 = [representationCopy objectForKeyedSubscript:@"ownerDate"];
    v16 = [v15 copy];
    ownerDate = v5->_ownerDate;
    v5->_ownerDate = v16;

    v18 = [representationCopy objectForKeyedSubscript:@"ownerTimeZone"];
    v19 = v18;
    if (v18)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v6];
    }

    ownerTimeZone = v5->_ownerTimeZone;
    v5->_ownerTimeZone = v18;

    v21 = [representationCopy objectForKeyedSubscript:@"ownerURI"];
    v22 = [v21 copy];
    ownerURI = v5->_ownerURI;
    v5->_ownerURI = v22;

    v24 = [representationCopy objectForKeyedSubscript:@"fireDate"];
    v25 = [v24 copy];
    fireDate = v5->_fireDate;
    v5->_fireDate = v25;

    v27 = [representationCopy objectForKeyedSubscript:@"externalID"];
    v28 = [v27 copy];
    externalID = v5->_externalID;
    v5->_externalID = v28;

    v30 = [representationCopy objectForKeyedSubscript:@"acknowledgedDate"];
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
    dictionaryRepresentation = [(CADObjectID *)alarmID dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"alarmID"];
  }

  ownerID = self->_ownerID;
  if (ownerID)
  {
    dictionaryRepresentation2 = [(CADObjectID *)ownerID dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"ownerID"];
  }

  ownerDate = self->_ownerDate;
  if (ownerDate)
  {
    [v3 setObject:ownerDate forKey:@"ownerDate"];
  }

  ownerTimeZone = self->_ownerTimeZone;
  if (ownerTimeZone)
  {
    name = [(NSTimeZone *)ownerTimeZone name];
    [v3 setObject:name forKey:@"ownerTimeZone"];
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