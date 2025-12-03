@interface HMDRemoteEventRouterProtoTopic
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMDRemoteEventRouterProtoTopic

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(HMDRemoteEventRouterProtoTopic *)self setTopic:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(HMDRemoteEventRouterProtoTopic *)self setEventUUID:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((topic = self->_topic, !(topic | equalCopy[2])) || -[NSString isEqual:](topic, "isEqual:")))
  {
    eventUUID = self->_eventUUID;
    if (eventUUID | equalCopy[1])
    {
      v7 = [(NSString *)eventUUID isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_topic copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_eventUUID copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_topic)
  {
    [toCopy setTopic:?];
    toCopy = v5;
  }

  if (self->_eventUUID)
  {
    [v5 setEventUUID:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_topic)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_eventUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  topic = self->_topic;
  if (topic)
  {
    [dictionary setObject:topic forKey:@"topic"];
  }

  eventUUID = self->_eventUUID;
  if (eventUUID)
  {
    [v4 setObject:eventUUID forKey:@"eventUUID"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDRemoteEventRouterProtoTopic;
  v4 = [(HMDRemoteEventRouterProtoTopic *)&v8 description];
  dictionaryRepresentation = [(HMDRemoteEventRouterProtoTopic *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end