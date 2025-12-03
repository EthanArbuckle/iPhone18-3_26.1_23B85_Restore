@interface HDCodableCompanionUserNotificationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableCompanionUserNotificationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableCompanionUserNotificationRequest;
  v4 = [(HDCodableCompanionUserNotificationRequest *)&v8 description];
  dictionaryRepresentation = [(HDCodableCompanionUserNotificationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  notificationConfiguration = self->_notificationConfiguration;
  if (notificationConfiguration)
  {
    dictionaryRepresentation = [(HDCodableCompanionUserNotificationConfiguration *)notificationConfiguration dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"notificationConfiguration"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_notificationConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_notificationConfiguration)
  {
    [v5 setNotificationConfiguration:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableCompanionUserNotificationConfiguration *)self->_notificationConfiguration copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | equalCopy[2])) || -[NSString isEqual:](requestIdentifier, "isEqual:")))
  {
    notificationConfiguration = self->_notificationConfiguration;
    if (notificationConfiguration | equalCopy[1])
    {
      v7 = [(HDCodableCompanionUserNotificationConfiguration *)notificationConfiguration isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableCompanionUserNotificationRequest *)self setRequestIdentifier:?];
    fromCopy = v7;
  }

  notificationConfiguration = self->_notificationConfiguration;
  v6 = fromCopy[1];
  if (notificationConfiguration)
  {
    if (v6)
    {
      [(HDCodableCompanionUserNotificationConfiguration *)notificationConfiguration mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableCompanionUserNotificationRequest *)self setNotificationConfiguration:?];
  }

  MEMORY[0x2821F96F8]();
}

@end