@interface HDCodableSharingAuthorization
- (BOOL)isEqual:(id)a3;
- (HDCodableSharingAuthorization)initWithSharingAuthorization:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sharingAuthorization;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSharingAuthorization

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSharingAuthorization;
  v4 = [(HDCodableSharingAuthorization *)&v8 description];
  v5 = [(HDCodableSharingAuthorization *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  authorizationIdentifier = self->_authorizationIdentifier;
  if (authorizationIdentifier)
  {
    [v3 setObject:authorizationIdentifier forKey:@"authorizationIdentifier"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  displaySubtitle = self->_displaySubtitle;
  if (displaySubtitle)
  {
    [v4 setObject:displaySubtitle forKey:@"displaySubtitle"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_authorizationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_displaySubtitle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_authorizationIdentifier)
  {
    [v4 setAuthorizationIdentifier:?];
    v4 = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }

  if (self->_displaySubtitle)
  {
    [v5 setDisplaySubtitle:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_authorizationIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_displaySubtitle copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((authorizationIdentifier = self->_authorizationIdentifier, !(authorizationIdentifier | v4[1])) || -[NSString isEqual:](authorizationIdentifier, "isEqual:")) && ((displayName = self->_displayName, !(displayName | v4[2])) || -[NSString isEqual:](displayName, "isEqual:")))
  {
    displaySubtitle = self->_displaySubtitle;
    if (displaySubtitle | v4[3])
    {
      v8 = [(NSString *)displaySubtitle isEqual:?];
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
  v3 = [(NSString *)self->_authorizationIdentifier hash];
  v4 = [(NSString *)self->_displayName hash]^ v3;
  return v4 ^ [(NSString *)self->_displaySubtitle hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(HDCodableSharingAuthorization *)self setAuthorizationIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HDCodableSharingAuthorization *)self setDisplayName:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(HDCodableSharingAuthorization *)self setDisplaySubtitle:?];
    v4 = v5;
  }
}

- (HDCodableSharingAuthorization)initWithSharingAuthorization:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDCodableSharingAuthorization;
  v5 = [(HDCodableSharingAuthorization *)&v12 init];
  if (v5)
  {
    v6 = [v4 authorizationIdentifier];
    [(HDCodableSharingAuthorization *)v5 setAuthorizationIdentifier:v6];

    v7 = [v4 displayName];

    if (v7)
    {
      v8 = [v4 displayName];
      [(HDCodableSharingAuthorization *)v5 setDisplayName:v8];
    }

    v9 = [v4 displaySubtitle];

    if (v9)
    {
      v10 = [v4 displaySubtitle];
      [(HDCodableSharingAuthorization *)v5 setDisplaySubtitle:v10];
    }
  }

  return v5;
}

- (id)sharingAuthorization
{
  v3 = objc_alloc(MEMORY[0x277CCD960]);
  v4 = [(HDCodableSharingAuthorization *)self authorizationIdentifier];
  v5 = [(HDCodableSharingAuthorization *)self displayName];
  v6 = [(HDCodableSharingAuthorization *)self displaySubtitle];
  v7 = [v3 initWithAuthorizationIdentifier:v4 displayName:v5 displaySubtitle:v6];

  return v7;
}

@end