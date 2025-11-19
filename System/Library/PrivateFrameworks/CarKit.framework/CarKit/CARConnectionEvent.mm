@interface CARConnectionEvent
+ (id)eventWithName:(id)a3 type:(int64_t)a4 date:(id)a5 payload:(id)a6;
- (CARConnectionEvent)initWithCoder:(id)a3;
- (CARConnectionEvent)initWithDictionary:(id)a3;
- (CARConnectionEvent)initWithEventName:(id)a3 type:(int64_t)a4 date:(id)a5 payload:(id)a6;
- (NSDictionary)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CARConnectionEvent

- (CARConnectionEvent)initWithEventName:(id)a3 type:(int64_t)a4 date:(id)a5 payload:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CARConnectionEvent;
  v14 = [(CARConnectionEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_eventName, a3);
    objc_storeStrong(&v15->_eventDate, a5);
    objc_storeStrong(&v15->_payload, a6);
    v15->_eventType = a4;
  }

  return v15;
}

+ (id)eventWithName:(id)a3 type:(int64_t)a4 date:(id)a5 payload:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] initWithEventName:v12 type:a4 date:v11 payload:v10];

  return v13;
}

- (CARConnectionEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CARConnectionEvent;
  v5 = [(CARConnectionEvent *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"event"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [v4 objectForKey:@"timestamp"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v8;

    v10 = [v4 objectForKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v10;

    v12 = [v4 valueForKey:@"eventType"];
    v5->_eventType = [v12 intValue];

    v13 = [v4 objectForKey:@"identifier"];
    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v13];
    identifier = v5->_identifier;
    v5->_identifier = v14;
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CARConnectionEvent *)self eventName];
  [v3 setObject:v4 forKeyedSubscript:@"event"];

  v5 = [(CARConnectionEvent *)self eventDate];
  [v3 setObject:v5 forKeyedSubscript:@"timestamp"];

  v6 = [(CARConnectionEvent *)self identifier];
  v7 = [v6 UUIDString];
  [v3 setObject:v7 forKeyedSubscript:@"identifier"];

  v8 = [(CARConnectionEvent *)self payload];
  [v3 setObject:v8 forKeyedSubscript:@"payload"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CARConnectionEvent eventType](self, "eventType")}];
  [v3 setObject:v9 forKeyedSubscript:@"eventType"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(CARConnectionEvent *)self eventName];
  [v8 encodeObject:v4 forKey:@"kCPEventNameKey"];

  v5 = [(CARConnectionEvent *)self eventDate];
  [v8 encodeObject:v5 forKey:@"kCPEventDateKey"];

  v6 = [(CARConnectionEvent *)self payload];
  [v8 encodeObject:v6 forKey:@"kCPEventDictionaryKey"];

  v7 = [(CARConnectionEvent *)self identifier];
  [v8 encodeObject:v7 forKey:@"kCPEventIdentifierKey"];

  [v8 encodeInteger:-[CARConnectionEvent eventType](self forKey:{"eventType"), @"kCPEventTypeKey"}];
}

- (CARConnectionEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CARConnectionEvent;
  v5 = [(CARConnectionEvent *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPEventNameKey"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPEventDateKey"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"kCPEventDictionaryKey"];
    payload = v5->_payload;
    v5->_payload = v15;

    v5->_eventType = [v4 decodeIntegerForKey:@"kCPEventTypeKey"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPEventIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v17;
  }

  return v5;
}

@end