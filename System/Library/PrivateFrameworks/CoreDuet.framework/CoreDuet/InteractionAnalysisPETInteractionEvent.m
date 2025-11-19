@interface InteractionAnalysisPETInteractionEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)setTimestamp:(uint64_t)result;
- (unint64_t)hash;
- (void)setAssociatedMemberIDs:(uint64_t)a1;
- (void)setBundleID:(uint64_t)a1;
- (void)setDirection:(uint64_t)a1;
- (void)setEventMechanism:(uint64_t)a1;
- (void)setInteractionID:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation InteractionAnalysisPETInteractionEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = InteractionAnalysisPETInteractionEvent;
  v4 = [(InteractionAnalysisPETInteractionEvent *)&v8 description];
  v5 = [(InteractionAnalysisPETInteractionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [v3 setObject:v4 forKey:@"timestamp"];

  eventMechanism = self->_eventMechanism;
  if (eventMechanism)
  {
    [v3 setObject:eventMechanism forKey:@"eventMechanism"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  direction = self->_direction;
  if (direction)
  {
    [v3 setObject:direction forKey:@"direction"];
  }

  interactionID = self->_interactionID;
  if (interactionID)
  {
    [v3 setObject:interactionID forKey:@"interactionID"];
  }

  associatedMemberIDs = self->_associatedMemberIDs;
  if (associatedMemberIDs)
  {
    [v3 setObject:associatedMemberIDs forKey:@"associatedMemberIDs"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  timestamp = self->_timestamp;
  v6 = v4;
  PBDataWriterWriteDoubleField();
  if (!self->_eventMechanism)
  {
    [InteractionAnalysisPETInteractionEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_bundleID)
  {
    [InteractionAnalysisPETInteractionEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_direction)
  {
    [InteractionAnalysisPETInteractionEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_interactionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_associatedMemberIDs)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_timestamp;
  v6 = [(NSString *)self->_eventMechanism copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_direction copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_interactionID copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_associatedMemberIDs copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_timestamp == *(v4 + 1) && ((eventMechanism = self->_eventMechanism, !(eventMechanism | v4[5])) || -[NSString isEqual:](eventMechanism, "isEqual:")) && ((bundleID = self->_bundleID, !(bundleID | v4[3])) || -[NSString isEqual:](bundleID, "isEqual:")) && ((direction = self->_direction, !(direction | v4[4])) || -[NSString isEqual:](direction, "isEqual:")) && ((interactionID = self->_interactionID, !(interactionID | v4[6])) || -[NSString isEqual:](interactionID, "isEqual:")))
  {
    associatedMemberIDs = self->_associatedMemberIDs;
    if (associatedMemberIDs | v4[2])
    {
      v10 = [(NSString *)associatedMemberIDs isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v6), v3, v2).i64[0];
  v7 = (timestamp - *v2.i64) * 1.84467441e19;
  v8 = 2654435761u * *v3.i64;
  v9 = v8 + v7;
  if (v7 <= 0.0)
  {
    v9 = 2654435761u * *v3.i64;
  }

  v10 = v8 - fabs(v7);
  if (v7 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [(NSString *)self->_eventMechanism hash];
  v13 = v12 ^ [(NSString *)self->_bundleID hash];
  v14 = v13 ^ [(NSString *)self->_direction hash];
  v15 = v14 ^ [(NSString *)self->_interactionID hash];
  return v15 ^ [(NSString *)self->_associatedMemberIDs hash]^ v11;
}

- (void)setEventMechanism:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 40);
  }
}

- (void)setBundleID:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 24);
  }
}

- (void)setDirection:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 32);
  }
}

- (void)setInteractionID:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 48);
  }
}

- (void)setAssociatedMemberIDs:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 16);
  }
}

- (uint64_t)setTimestamp:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end