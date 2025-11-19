@interface NPKProtoMatchingInvitationOnDeviceRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoMatchingInvitationOnDeviceRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoMatchingInvitationOnDeviceRequest;
  v4 = [(NPKProtoMatchingInvitationOnDeviceRequest *)&v8 description];
  v5 = [(NPKProtoMatchingInvitationOnDeviceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  invitationData = self->_invitationData;
  if (invitationData)
  {
    [v3 setObject:invitationData forKey:@"invitationData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timeoutInSeconds];
    [v4 setObject:v6 forKey:@"timeoutInSeconds"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_invitationData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    timeoutInSeconds = self->_timeoutInSeconds;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_invitationData)
  {
    v5 = v4;
    [v4 setInvitationData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_timeoutInSeconds;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_invitationData copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timeoutInSeconds;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  invitationData = self->_invitationData;
  if (invitationData | *(v4 + 2))
  {
    if (![(NSData *)invitationData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_timeoutInSeconds == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(NPKProtoMatchingInvitationOnDeviceRequest *)self setInvitationData:?];
    v4 = v5;
  }

  if (v4[3])
  {
    self->_timeoutInSeconds = v4[1];
    *&self->_has |= 1u;
  }
}

@end