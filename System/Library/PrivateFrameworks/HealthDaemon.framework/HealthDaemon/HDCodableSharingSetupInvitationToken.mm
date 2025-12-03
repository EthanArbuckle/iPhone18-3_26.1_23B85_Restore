@interface HDCodableSharingSetupInvitationToken
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSharingSetupInvitationToken

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSharingSetupInvitationToken;
  v4 = [(HDCodableSharingSetupInvitationToken *)&v8 description];
  dictionaryRepresentation = [(HDCodableSharingSetupInvitationToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  shareURL = self->_shareURL;
  if (shareURL)
  {
    [dictionary setObject:shareURL forKey:@"shareURL"];
  }

  token = self->_token;
  if (token)
  {
    [v4 setObject:token forKey:@"token"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_shareURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_token)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_shareURL)
  {
    [toCopy setShareURL:?];
    toCopy = v5;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_shareURL copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_token copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((shareURL = self->_shareURL, !(shareURL | equalCopy[1])) || -[NSString isEqual:](shareURL, "isEqual:")))
  {
    token = self->_token;
    if (token | equalCopy[2])
    {
      v7 = [(NSData *)token isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(HDCodableSharingSetupInvitationToken *)self setShareURL:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(HDCodableSharingSetupInvitationToken *)self setToken:?];
    fromCopy = v5;
  }
}

@end