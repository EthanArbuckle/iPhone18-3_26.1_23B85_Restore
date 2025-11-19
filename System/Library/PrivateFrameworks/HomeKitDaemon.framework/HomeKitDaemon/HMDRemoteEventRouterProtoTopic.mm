@interface HMDRemoteEventRouterProtoTopic
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMDRemoteEventRouterProtoTopic

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(HMDRemoteEventRouterProtoTopic *)self setTopic:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(HMDRemoteEventRouterProtoTopic *)self setEventUUID:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((topic = self->_topic, !(topic | v4[2])) || -[NSString isEqual:](topic, "isEqual:")))
  {
    eventUUID = self->_eventUUID;
    if (eventUUID | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_topic copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_eventUUID copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_topic)
  {
    [v4 setTopic:?];
    v4 = v5;
  }

  if (self->_eventUUID)
  {
    [v5 setEventUUID:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_topic)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_eventUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  topic = self->_topic;
  if (topic)
  {
    [v3 setObject:topic forKey:@"topic"];
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
  v5 = [(HMDRemoteEventRouterProtoTopic *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end