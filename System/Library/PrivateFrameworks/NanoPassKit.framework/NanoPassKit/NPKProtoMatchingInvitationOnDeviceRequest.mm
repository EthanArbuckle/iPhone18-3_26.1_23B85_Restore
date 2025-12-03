@interface NPKProtoMatchingInvitationOnDeviceRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoMatchingInvitationOnDeviceRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoMatchingInvitationOnDeviceRequest;
  v4 = [(NPKProtoMatchingInvitationOnDeviceRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoMatchingInvitationOnDeviceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  invitationData = self->_invitationData;
  if (invitationData)
  {
    [dictionary setObject:invitationData forKey:@"invitationData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timeoutInSeconds];
    [v4 setObject:v6 forKey:@"timeoutInSeconds"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_invitationData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    timeoutInSeconds = self->_timeoutInSeconds;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_invitationData)
  {
    v5 = toCopy;
    [toCopy setInvitationData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_timeoutInSeconds;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_invitationData copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timeoutInSeconds;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  invitationData = self->_invitationData;
  if (invitationData | *(equalCopy + 2))
  {
    if (![(NSData *)invitationData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_timeoutInSeconds == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_invitationData hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_timeoutInSeconds;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(NPKProtoMatchingInvitationOnDeviceRequest *)self setInvitationData:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    self->_timeoutInSeconds = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end