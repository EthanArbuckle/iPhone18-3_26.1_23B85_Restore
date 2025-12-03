@interface BMPBSiriIntentEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBSiriIntentEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSiriIntentEvent;
  v4 = [(BMPBSiriIntentEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBSiriIntentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  intentId = self->_intentId;
  if (intentId)
  {
    [dictionary setObject:intentId forKey:@"intentId"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_intentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_eventData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_intentId)
  {
    [toCopy setIntentId:?];
    toCopy = v5;
  }

  if (self->_eventType)
  {
    [v5 setEventType:?];
    toCopy = v5;
  }

  if (self->_eventData)
  {
    [v5 setEventData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_intentId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_eventType copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_eventData copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((intentId = self->_intentId, !(intentId | equalCopy[3])) || -[NSString isEqual:](intentId, "isEqual:")) && ((eventType = self->_eventType, !(eventType | equalCopy[2])) || -[NSString isEqual:](eventType, "isEqual:")))
  {
    eventData = self->_eventData;
    if (eventData | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(BMPBSiriIntentEvent *)self setIntentId:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BMPBSiriIntentEvent *)self setEventType:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(BMPBSiriIntentEvent *)self setEventData:?];
    fromCopy = v5;
  }
}

@end