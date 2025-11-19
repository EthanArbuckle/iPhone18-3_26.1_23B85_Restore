@interface HAENotificationEvent
- (HAENotificationEvent)initWithCoder:(id)a3;
- (HAENotificationEvent)initWithEventType:(unsigned int)a3 exposureLevel:(double)a4 dateInterval:(id)a5 metadata:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getEventTypeString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAENotificationEvent

- (HAENotificationEvent)initWithEventType:(unsigned int)a3 exposureLevel:(double)a4 dateInterval:(id)a5 metadata:(id)a6
{
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = HAENotificationEvent;
  v13 = [(HAENotificationEvent *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->level = a4;
    objc_storeStrong(&v13->dateInterval, a5);
    v14->eventType = a3;
    v15 = [v12 copy];
    metadata = v14->metadata;
    v14->metadata = v15;

    v17 = [MEMORY[0x277CCAD78] UUID];
    uuid = v14->uuid;
    v14->uuid = v17;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [(HAENotificationEvent *)self level];
  [v6 encodeDouble:@"AudioExposureLevel" forKey:?];
  v4 = [(HAENotificationEvent *)self dateInterval];
  [v6 encodeObject:v4 forKey:@"DateInterval"];

  [v6 encodeInt32:-[HAENotificationEvent eventType](self forKey:{"eventType"), @"EventType"}];
  v5 = [(HAENotificationEvent *)self metadata];
  [v6 encodeObject:v5 forKey:@"Metadata"];

  [v6 encodeObject:self->uuid forKey:@"UUID"];
}

- (HAENotificationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HAENotificationEvent;
  v5 = [(HAENotificationEvent *)&v19 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"AudioExposureLevel"];
    v5->level = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
    dateInterval = v5->dateInterval;
    v5->dateInterval = v7;

    v5->eventType = [v4 decodeInt32ForKey:@"EventType"];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"Metadata"];
    v14 = [v13 copy];
    metadata = v5->metadata;
    v5->metadata = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->uuid;
    v5->uuid = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(HAENotificationEvent *)self eventType];
  [(HAENotificationEvent *)self level];
  v8 = v7;
  v9 = [(HAENotificationEvent *)self dateInterval];
  v10 = [v9 copyWithZone:a3];
  v11 = [(HAENotificationEvent *)self metadata];
  v12 = [v11 copyWithZone:a3];
  v13 = [v5 initWithEventType:v6 exposureLevel:v10 dateInterval:v12 metadata:v8];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAENotificationEvent *)self uuid];
  v5 = [(HAENotificationEvent *)self getEventTypeString];
  [(HAENotificationEvent *)self level];
  v7 = v6;
  v8 = [(HAENotificationEvent *)self dateInterval];
  v9 = [(HAENotificationEvent *)self metadata];
  v10 = [v3 stringWithFormat:@"HAENotificationEvent: uuid= %@, type= %@, exposure level= %.2f, date= %@, metadata= %@", v4, v5, v7, v8, v9];

  return v10;
}

- (id)getEventTypeString
{
  v2 = [(HAENotificationEvent *)self eventType];
  v3 = @"UnknownType";
  if (v2 == 2003133803)
  {
    v3 = @"HAENotificationEventTypeWeeklyLimit";
  }

  if (v2 == 1818850917)
  {
    return @"HAENotificationEventTypeLoudLimt";
  }

  else
  {
    return v3;
  }
}

@end