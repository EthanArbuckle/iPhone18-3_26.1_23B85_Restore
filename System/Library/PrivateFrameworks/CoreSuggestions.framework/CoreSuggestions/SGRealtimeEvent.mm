@interface SGRealtimeEvent
+ (id)realtimeEventForExtractionExceptionWithSourceMessageId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRealtimeEvent:(id)event;
- (NSString)description;
- (SGRealtimeEvent)initWithCoder:(id)coder;
- (SGRealtimeEvent)initWithState:(int)state event:(id)event eventIdentifier:(id)identifier harvested:(BOOL)harvested sourceMessageId:(id)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGRealtimeEvent

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGRealtimeEvent state=%i eventId='%@'\nevent = %@\n>", self->_state, self->_eventIdentifier, self->_event];

  return v2;
}

- (BOOL)isEqualToRealtimeEvent:(id)event
{
  eventCopy = event;
  state = self->_state;
  if (state != [eventCopy state])
  {
    goto LABEL_13;
  }

  v6 = self->_eventIdentifier;
  v7 = v6;
  if (v6 == eventCopy[4])
  {
  }

  else
  {
    v8 = [(NSString *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v9 = self->_event;
  v10 = v9;
  if (v9 == eventCopy[3])
  {
  }

  else
  {
    v11 = [(SGEvent *)v9 isEqual:?];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  isHarvested = self->_isHarvested;
  if (isHarvested != [eventCopy isHarvested])
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v13 = self->_sourceMessageId;
  v14 = v13;
  if (v13 == eventCopy[5])
  {
    v15 = 1;
  }

  else
  {
    v15 = [(NSString *)v13 isEqual:?];
  }

LABEL_14:
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRealtimeEvent *)self isEqualToRealtimeEvent:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInt32:state forKey:@"state"];
  [coderCopy encodeObject:self->_event forKey:@"event"];
  [coderCopy encodeObject:self->_eventIdentifier forKey:@"eventIdentifier"];
  [coderCopy encodeBool:self->_isHarvested forKey:@"isHarvested"];
  [coderCopy encodeObject:self->_sourceMessageId forKey:@"sourceMessageId"];
}

- (SGRealtimeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SGRealtimeEvent;
  v5 = [(SGRealtimeEvent *)&v16 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeInt32ForKey:@"state"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"event"];
    event = v5->_event;
    v5->_event = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"eventIdentifier"];
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = v10;

    v5->_isHarvested = [coderCopy decodeBoolForKey:@"isHarvested"];
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"sourceMessageId"];
    sourceMessageId = v5->_sourceMessageId;
    v5->_sourceMessageId = v13;
  }

  return v5;
}

- (SGRealtimeEvent)initWithState:(int)state event:(id)event eventIdentifier:(id)identifier harvested:(BOOL)harvested sourceMessageId:(id)id
{
  eventCopy = event;
  identifierCopy = identifier;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = SGRealtimeEvent;
  v16 = [(SGRealtimeEvent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_state = state;
    objc_storeStrong(&v16->_event, event);
    objc_storeStrong(&v17->_eventIdentifier, identifier);
    v17->_isHarvested = harvested;
    objc_storeStrong(&v17->_sourceMessageId, id);
    v17->_extractionSource = 0;
  }

  return v17;
}

+ (id)realtimeEventForExtractionExceptionWithSourceMessageId:(id)id
{
  idCopy = id;
  v4 = [[SGRealtimeEvent alloc] initWithState:6 event:0 eventIdentifier:0 harvested:0 sourceMessageId:idCopy];

  return v4;
}

@end