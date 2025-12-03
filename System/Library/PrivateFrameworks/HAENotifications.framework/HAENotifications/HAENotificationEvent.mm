@interface HAENotificationEvent
- (HAENotificationEvent)initWithCoder:(id)coder;
- (HAENotificationEvent)initWithEventType:(unsigned int)type exposureLevel:(double)level dateInterval:(id)interval metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getEventTypeString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAENotificationEvent

- (HAENotificationEvent)initWithEventType:(unsigned int)type exposureLevel:(double)level dateInterval:(id)interval metadata:(id)metadata
{
  intervalCopy = interval;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = HAENotificationEvent;
  v13 = [(HAENotificationEvent *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->level = level;
    objc_storeStrong(&v13->dateInterval, interval);
    v14->eventType = type;
    v15 = [metadataCopy copy];
    metadata = v14->metadata;
    v14->metadata = v15;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v14->uuid;
    v14->uuid = uUID;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(HAENotificationEvent *)self level];
  [coderCopy encodeDouble:@"AudioExposureLevel" forKey:?];
  dateInterval = [(HAENotificationEvent *)self dateInterval];
  [coderCopy encodeObject:dateInterval forKey:@"DateInterval"];

  [coderCopy encodeInt32:-[HAENotificationEvent eventType](self forKey:{"eventType"), @"EventType"}];
  metadata = [(HAENotificationEvent *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"Metadata"];

  [coderCopy encodeObject:self->uuid forKey:@"UUID"];
}

- (HAENotificationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = HAENotificationEvent;
  v5 = [(HAENotificationEvent *)&v19 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"AudioExposureLevel"];
    v5->level = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
    dateInterval = v5->dateInterval;
    v5->dateInterval = v7;

    v5->eventType = [coderCopy decodeInt32ForKey:@"EventType"];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Metadata"];
    v14 = [v13 copy];
    metadata = v5->metadata;
    v5->metadata = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->uuid;
    v5->uuid = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  eventType = [(HAENotificationEvent *)self eventType];
  [(HAENotificationEvent *)self level];
  v8 = v7;
  dateInterval = [(HAENotificationEvent *)self dateInterval];
  v10 = [dateInterval copyWithZone:zone];
  metadata = [(HAENotificationEvent *)self metadata];
  v12 = [metadata copyWithZone:zone];
  v13 = [v5 initWithEventType:eventType exposureLevel:v10 dateInterval:v12 metadata:v8];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(HAENotificationEvent *)self uuid];
  getEventTypeString = [(HAENotificationEvent *)self getEventTypeString];
  [(HAENotificationEvent *)self level];
  v7 = v6;
  dateInterval = [(HAENotificationEvent *)self dateInterval];
  metadata = [(HAENotificationEvent *)self metadata];
  v10 = [v3 stringWithFormat:@"HAENotificationEvent: uuid= %@, type= %@, exposure level= %.2f, date= %@, metadata= %@", uuid, getEventTypeString, v7, dateInterval, metadata];

  return v10;
}

- (id)getEventTypeString
{
  eventType = [(HAENotificationEvent *)self eventType];
  v3 = @"UnknownType";
  if (eventType == 2003133803)
  {
    v3 = @"HAENotificationEventTypeWeeklyLimit";
  }

  if (eventType == 1818850917)
  {
    return @"HAENotificationEventTypeLoudLimt";
  }

  else
  {
    return v3;
  }
}

@end