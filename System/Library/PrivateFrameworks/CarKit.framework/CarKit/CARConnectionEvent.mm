@interface CARConnectionEvent
+ (id)eventWithName:(id)name type:(int64_t)type date:(id)date payload:(id)payload;
- (CARConnectionEvent)initWithCoder:(id)coder;
- (CARConnectionEvent)initWithDictionary:(id)dictionary;
- (CARConnectionEvent)initWithEventName:(id)name type:(int64_t)type date:(id)date payload:(id)payload;
- (NSDictionary)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CARConnectionEvent

- (CARConnectionEvent)initWithEventName:(id)name type:(int64_t)type date:(id)date payload:(id)payload
{
  nameCopy = name;
  dateCopy = date;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = CARConnectionEvent;
  v14 = [(CARConnectionEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_eventName, name);
    objc_storeStrong(&v15->_eventDate, date);
    objc_storeStrong(&v15->_payload, payload);
    v15->_eventType = type;
  }

  return v15;
}

+ (id)eventWithName:(id)name type:(int64_t)type date:(id)date payload:(id)payload
{
  payloadCopy = payload;
  dateCopy = date;
  nameCopy = name;
  v13 = [[self alloc] initWithEventName:nameCopy type:type date:dateCopy payload:payloadCopy];

  return v13;
}

- (CARConnectionEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = CARConnectionEvent;
  v5 = [(CARConnectionEvent *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"event"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [dictionaryCopy objectForKey:@"timestamp"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v8;

    v10 = [dictionaryCopy objectForKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v10;

    v12 = [dictionaryCopy valueForKey:@"eventType"];
    v5->_eventType = [v12 intValue];

    v13 = [dictionaryCopy objectForKey:@"identifier"];
    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v13];
    identifier = v5->_identifier;
    v5->_identifier = v14;
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  eventName = [(CARConnectionEvent *)self eventName];
  [dictionary setObject:eventName forKeyedSubscript:@"event"];

  eventDate = [(CARConnectionEvent *)self eventDate];
  [dictionary setObject:eventDate forKeyedSubscript:@"timestamp"];

  identifier = [(CARConnectionEvent *)self identifier];
  uUIDString = [identifier UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"identifier"];

  payload = [(CARConnectionEvent *)self payload];
  [dictionary setObject:payload forKeyedSubscript:@"payload"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CARConnectionEvent eventType](self, "eventType")}];
  [dictionary setObject:v9 forKeyedSubscript:@"eventType"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventName = [(CARConnectionEvent *)self eventName];
  [coderCopy encodeObject:eventName forKey:@"kCPEventNameKey"];

  eventDate = [(CARConnectionEvent *)self eventDate];
  [coderCopy encodeObject:eventDate forKey:@"kCPEventDateKey"];

  payload = [(CARConnectionEvent *)self payload];
  [coderCopy encodeObject:payload forKey:@"kCPEventDictionaryKey"];

  identifier = [(CARConnectionEvent *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPEventIdentifierKey"];

  [coderCopy encodeInteger:-[CARConnectionEvent eventType](self forKey:{"eventType"), @"kCPEventTypeKey"}];
}

- (CARConnectionEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CARConnectionEvent;
  v5 = [(CARConnectionEvent *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPEventNameKey"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPEventDateKey"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"kCPEventDictionaryKey"];
    payload = v5->_payload;
    v5->_payload = v15;

    v5->_eventType = [coderCopy decodeIntegerForKey:@"kCPEventTypeKey"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPEventIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v17;
  }

  return v5;
}

@end