@interface CWFEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEvent:(id)event;
- (CWFEvent)init;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)type;
- (unint64_t)hash;
- (void)setType:(int64_t)type;
@end

@implementation CWFEvent

- (CWFEvent)init
{
  v6.receiver = self;
  v6.super_class = CWFEvent;
  v2 = [(CWFEvent *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;
  }

  return v2;
}

- (int64_t)type
{
  eventID = [(CWFEvent *)self eventID];
  type = [eventID type];

  return type;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  eventID = self->_eventID;
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v6 = [uUIDString substringToIndex:5];
  v7 = sub_1E0BCC248(self->_timestamp);
  acknowledgementTimeout = self->_acknowledgementTimeout;
  v9 = [v3 stringWithFormat:@"%@, uuid=%@, timestamp=%@, ackTimeout=%lluns, info=%@", eventID, v6, v7, acknowledgementTimeout, self->_info];

  return v9;
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  eventID = [(CWFEvent *)self eventID];
  v5 = sub_1E0BC9038([eventID type]);
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  eventID2 = [(CWFEvent *)self eventID];
  interfaceName = [eventID2 interfaceName];
  [v3 setObject:interfaceName forKeyedSubscript:@"interface_name"];

  timestamp = [(CWFEvent *)self timestamp];
  [v3 setObject:timestamp forKeyedSubscript:@"timestamp"];

  uUID = [(CWFEvent *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"uuid"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CWFEvent acknowledgementTimeout](self, "acknowledgementTimeout")}];
  [v3 setObject:v11 forKeyedSubscript:@"acknowledgement_timeout"];

  info = [(CWFEvent *)self info];
  [v3 setObject:info forKeyedSubscript:@"info"];

  v13 = sub_1E0BCEC64(v3, 0, 1u);
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setType:(int64_t)type
{
  eventID = [(CWFEvent *)self eventID];
  [eventID setType:type];
}

- (BOOL)isEqualToEvent:(id)event
{
  eventCopy = event;
  v7 = eventCopy;
  if (self->_UUID)
  {
    uUID = [eventCopy UUID];
    if (!uUID)
    {
      v17 = 0;
LABEL_22:

      goto LABEL_23;
    }

    UUID = self->_UUID;
    uUID2 = [v7 UUID];
    if (![(NSUUID *)UUID isEqual:uUID2])
    {
      v17 = 0;
LABEL_21:

      goto LABEL_22;
    }

    eventID = self->_eventID;
    eventID = [v7 eventID];
    if (eventID == eventID)
    {
      timestamp = self->_timestamp;
      p_timestamp = &self->_timestamp;
      if (timestamp)
      {
        goto LABEL_14;
      }
    }

    else if (self->_eventID)
    {
      eventID2 = [v7 eventID];
      if (eventID2)
      {
        v3 = eventID2;
        v14 = self->_eventID;
        eventID3 = [v7 eventID];
        if (![(CWFEventID *)v14 isEqual:eventID3]|| (v16 = self->_timestamp, p_timestamp = &self->_timestamp, !v16))
        {
          v17 = 0;
LABEL_19:

          goto LABEL_20;
        }

LABEL_14:
        timestamp = [v7 timestamp];
        if (timestamp)
        {
          v20 = timestamp;
          v21 = *p_timestamp;
          timestamp2 = [v7 timestamp];
          v17 = [(NSDate *)v21 isEqual:timestamp2];
        }

        else
        {
          v17 = 0;
        }

        if (eventID == eventID)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    v17 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v17 = 0;
LABEL_23:

  return v17;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFEvent *)self isEqualToEvent:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(CWFEventID *)self->_eventID hash]^ v3;
  return v4 ^ [(NSDate *)self->_timestamp hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFEvent allocWithZone:?]];
  [(CWFEvent *)v4 setUUID:self->_UUID];
  [(CWFEvent *)v4 setEventID:self->_eventID];
  [(CWFEvent *)v4 setTimestamp:self->_timestamp];
  [(CWFEvent *)v4 setInfo:self->_info];
  [(CWFEvent *)v4 setAcknowledgementTimeout:self->_acknowledgementTimeout];
  [(CWFEvent *)v4 setAcknowledge:self->_acknowledge];
  return v4;
}

@end