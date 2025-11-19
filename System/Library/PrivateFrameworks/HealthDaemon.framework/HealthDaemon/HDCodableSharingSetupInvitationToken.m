@interface HDCodableSharingSetupInvitationToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSharingSetupInvitationToken

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSharingSetupInvitationToken;
  v4 = [(HDCodableSharingSetupInvitationToken *)&v8 description];
  v5 = [(HDCodableSharingSetupInvitationToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  shareURL = self->_shareURL;
  if (shareURL)
  {
    [v3 setObject:shareURL forKey:@"shareURL"];
  }

  token = self->_token;
  if (token)
  {
    [v4 setObject:token forKey:@"token"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shareURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_token)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shareURL)
  {
    [v4 setShareURL:?];
    v4 = v5;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_shareURL copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_token copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((shareURL = self->_shareURL, !(shareURL | v4[1])) || -[NSString isEqual:](shareURL, "isEqual:")))
  {
    token = self->_token;
    if (token | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(HDCodableSharingSetupInvitationToken *)self setShareURL:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HDCodableSharingSetupInvitationToken *)self setToken:?];
    v4 = v5;
  }
}

@end