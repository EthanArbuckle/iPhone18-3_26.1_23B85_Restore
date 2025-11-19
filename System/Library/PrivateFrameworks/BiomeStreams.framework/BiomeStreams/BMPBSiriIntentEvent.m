@interface BMPBSiriIntentEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSiriIntentEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSiriIntentEvent;
  v4 = [(BMPBSiriIntentEvent *)&v8 description];
  v5 = [(BMPBSiriIntentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  intentId = self->_intentId;
  if (intentId)
  {
    [v3 setObject:intentId forKey:@"intentId"];
  }

  eventType = self->_eventType;
  if (eventType)
  {
    [v4 setObject:eventType forKey:@"eventType"];
  }

  eventData = self->_eventData;
  if (eventData)
  {
    [v4 setObject:eventData forKey:@"eventData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_intentId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_eventData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_intentId)
  {
    [v4 setIntentId:?];
    v4 = v5;
  }

  if (self->_eventType)
  {
    [v5 setEventType:?];
    v4 = v5;
  }

  if (self->_eventData)
  {
    [v5 setEventData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_intentId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_eventType copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_eventData copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((intentId = self->_intentId, !(intentId | v4[3])) || -[NSString isEqual:](intentId, "isEqual:")) && ((eventType = self->_eventType, !(eventType | v4[2])) || -[NSString isEqual:](eventType, "isEqual:")))
  {
    eventData = self->_eventData;
    if (eventData | v4[1])
    {
      v8 = [(NSData *)eventData isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_intentId hash];
  v4 = [(NSString *)self->_eventType hash]^ v3;
  return v4 ^ [(NSData *)self->_eventData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(BMPBSiriIntentEvent *)self setIntentId:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BMPBSiriIntentEvent *)self setEventType:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(BMPBSiriIntentEvent *)self setEventData:?];
    v4 = v5;
  }
}

@end