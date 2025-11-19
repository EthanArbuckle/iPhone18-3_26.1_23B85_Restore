@interface CWFEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEvent:(id)a3;
- (CWFEvent)init;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)type;
- (unint64_t)hash;
- (void)setType:(int64_t)a3;
@end

@implementation CWFEvent

- (CWFEvent)init
{
  v6.receiver = self;
  v6.super_class = CWFEvent;
  v2 = [(CWFEvent *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;
  }

  return v2;
}

- (int64_t)type
{
  v2 = [(CWFEvent *)self eventID];
  v3 = [v2 type];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  eventID = self->_eventID;
  v5 = [(NSUUID *)self->_UUID UUIDString];
  v6 = [v5 substringToIndex:5];
  v7 = sub_1E0BCC248(self->_timestamp);
  acknowledgementTimeout = self->_acknowledgementTimeout;
  v9 = [v3 stringWithFormat:@"%@, uuid=%@, timestamp=%@, ackTimeout=%lluns, info=%@", eventID, v6, v7, acknowledgementTimeout, self->_info];

  return v9;
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFEvent *)self eventID];
  v5 = sub_1E0BC9038([v4 type]);
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [(CWFEvent *)self eventID];
  v7 = [v6 interfaceName];
  [v3 setObject:v7 forKeyedSubscript:@"interface_name"];

  v8 = [(CWFEvent *)self timestamp];
  [v3 setObject:v8 forKeyedSubscript:@"timestamp"];

  v9 = [(CWFEvent *)self UUID];
  v10 = [v9 UUIDString];
  [v3 setObject:v10 forKeyedSubscript:@"uuid"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CWFEvent acknowledgementTimeout](self, "acknowledgementTimeout")}];
  [v3 setObject:v11 forKeyedSubscript:@"acknowledgement_timeout"];

  v12 = [(CWFEvent *)self info];
  [v3 setObject:v12 forKeyedSubscript:@"info"];

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

- (void)setType:(int64_t)a3
{
  v4 = [(CWFEvent *)self eventID];
  [v4 setType:a3];
}

- (BOOL)isEqualToEvent:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self->_UUID)
  {
    v8 = [v6 UUID];
    if (!v8)
    {
      v17 = 0;
LABEL_22:

      goto LABEL_23;
    }

    UUID = self->_UUID;
    v10 = [v7 UUID];
    if (![(NSUUID *)UUID isEqual:v10])
    {
      v17 = 0;
LABEL_21:

      goto LABEL_22;
    }

    eventID = self->_eventID;
    v12 = [v7 eventID];
    if (eventID == v12)
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
      v13 = [v7 eventID];
      if (v13)
      {
        v3 = v13;
        v14 = self->_eventID;
        v4 = [v7 eventID];
        if (![(CWFEventID *)v14 isEqual:v4]|| (v16 = self->_timestamp, p_timestamp = &self->_timestamp, !v16))
        {
          v17 = 0;
LABEL_19:

          goto LABEL_20;
        }

LABEL_14:
        v19 = [v7 timestamp];
        if (v19)
        {
          v20 = v19;
          v21 = *p_timestamp;
          v22 = [v7 timestamp];
          v17 = [(NSDate *)v21 isEqual:v22];
        }

        else
        {
          v17 = 0;
        }

        if (eventID == v12)
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFEvent *)self isEqualToEvent:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(CWFEventID *)self->_eventID hash]^ v3;
  return v4 ^ [(NSDate *)self->_timestamp hash];
}

- (id)copyWithZone:(_NSZone *)a3
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