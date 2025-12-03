@interface HDCodableSharingAuthorization
- (BOOL)isEqual:(id)equal;
- (HDCodableSharingAuthorization)initWithSharingAuthorization:(id)authorization;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sharingAuthorization;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSharingAuthorization

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSharingAuthorization;
  v4 = [(HDCodableSharingAuthorization *)&v8 description];
  dictionaryRepresentation = [(HDCodableSharingAuthorization *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  authorizationIdentifier = self->_authorizationIdentifier;
  if (authorizationIdentifier)
  {
    [dictionary setObject:authorizationIdentifier forKey:@"authorizationIdentifier"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_authorizationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_displaySubtitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_authorizationIdentifier)
  {
    [toCopy setAuthorizationIdentifier:?];
    toCopy = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    toCopy = v5;
  }

  if (self->_displaySubtitle)
  {
    [v5 setDisplaySubtitle:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_authorizationIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_displaySubtitle copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((authorizationIdentifier = self->_authorizationIdentifier, !(authorizationIdentifier | equalCopy[1])) || -[NSString isEqual:](authorizationIdentifier, "isEqual:")) && ((displayName = self->_displayName, !(displayName | equalCopy[2])) || -[NSString isEqual:](displayName, "isEqual:")))
  {
    displaySubtitle = self->_displaySubtitle;
    if (displaySubtitle | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(HDCodableSharingAuthorization *)self setAuthorizationIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(HDCodableSharingAuthorization *)self setDisplayName:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(HDCodableSharingAuthorization *)self setDisplaySubtitle:?];
    fromCopy = v5;
  }
}

- (HDCodableSharingAuthorization)initWithSharingAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v12.receiver = self;
  v12.super_class = HDCodableSharingAuthorization;
  v5 = [(HDCodableSharingAuthorization *)&v12 init];
  if (v5)
  {
    authorizationIdentifier = [authorizationCopy authorizationIdentifier];
    [(HDCodableSharingAuthorization *)v5 setAuthorizationIdentifier:authorizationIdentifier];

    displayName = [authorizationCopy displayName];

    if (displayName)
    {
      displayName2 = [authorizationCopy displayName];
      [(HDCodableSharingAuthorization *)v5 setDisplayName:displayName2];
    }

    displaySubtitle = [authorizationCopy displaySubtitle];

    if (displaySubtitle)
    {
      displaySubtitle2 = [authorizationCopy displaySubtitle];
      [(HDCodableSharingAuthorization *)v5 setDisplaySubtitle:displaySubtitle2];
    }
  }

  return v5;
}

- (id)sharingAuthorization
{
  v3 = objc_alloc(MEMORY[0x277CCD960]);
  authorizationIdentifier = [(HDCodableSharingAuthorization *)self authorizationIdentifier];
  displayName = [(HDCodableSharingAuthorization *)self displayName];
  displaySubtitle = [(HDCodableSharingAuthorization *)self displaySubtitle];
  v7 = [v3 initWithAuthorizationIdentifier:authorizationIdentifier displayName:displayName displaySubtitle:displaySubtitle];

  return v7;
}

@end