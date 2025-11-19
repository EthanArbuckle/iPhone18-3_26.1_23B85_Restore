@interface SGRealtimeEvent
+ (id)realtimeEventForExtractionExceptionWithSourceMessageId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRealtimeEvent:(id)a3;
- (NSString)description;
- (SGRealtimeEvent)initWithCoder:(id)a3;
- (SGRealtimeEvent)initWithState:(int)a3 event:(id)a4 eventIdentifier:(id)a5 harvested:(BOOL)a6 sourceMessageId:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGRealtimeEvent

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGRealtimeEvent state=%i eventId='%@'\nevent = %@\n>", self->_state, self->_eventIdentifier, self->_event];

  return v2;
}

- (BOOL)isEqualToRealtimeEvent:(id)a3
{
  v4 = a3;
  state = self->_state;
  if (state != [v4 state])
  {
    goto LABEL_13;
  }

  v6 = self->_eventIdentifier;
  v7 = v6;
  if (v6 == v4[4])
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
  if (v9 == v4[3])
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
  if (isHarvested != [v4 isHarvested])
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v13 = self->_sourceMessageId;
  v14 = v13;
  if (v13 == v4[5])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRealtimeEvent *)self isEqualToRealtimeEvent:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInt32:state forKey:@"state"];
  [v5 encodeObject:self->_event forKey:@"event"];
  [v5 encodeObject:self->_eventIdentifier forKey:@"eventIdentifier"];
  [v5 encodeBool:self->_isHarvested forKey:@"isHarvested"];
  [v5 encodeObject:self->_sourceMessageId forKey:@"sourceMessageId"];
}

- (SGRealtimeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SGRealtimeEvent;
  v5 = [(SGRealtimeEvent *)&v16 init];
  if (v5)
  {
    v5->_state = [v4 decodeInt32ForKey:@"state"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"event"];
    event = v5->_event;
    v5->_event = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"eventIdentifier"];
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = v10;

    v5->_isHarvested = [v4 decodeBoolForKey:@"isHarvested"];
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"sourceMessageId"];
    sourceMessageId = v5->_sourceMessageId;
    v5->_sourceMessageId = v13;
  }

  return v5;
}

- (SGRealtimeEvent)initWithState:(int)a3 event:(id)a4 eventIdentifier:(id)a5 harvested:(BOOL)a6 sourceMessageId:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = SGRealtimeEvent;
  v16 = [(SGRealtimeEvent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_state = a3;
    objc_storeStrong(&v16->_event, a4);
    objc_storeStrong(&v17->_eventIdentifier, a5);
    v17->_isHarvested = a6;
    objc_storeStrong(&v17->_sourceMessageId, a7);
    v17->_extractionSource = 0;
  }

  return v17;
}

+ (id)realtimeEventForExtractionExceptionWithSourceMessageId:(id)a3
{
  v3 = a3;
  v4 = [[SGRealtimeEvent alloc] initWithState:6 event:0 eventIdentifier:0 harvested:0 sourceMessageId:v3];

  return v4;
}

@end