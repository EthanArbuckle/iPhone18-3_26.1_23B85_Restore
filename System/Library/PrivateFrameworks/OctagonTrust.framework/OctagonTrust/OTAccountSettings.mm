@interface OTAccountSettings
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTAccountSettings

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  walrus = self->_walrus;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (walrus)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTWalrus *)walrus mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTAccountSettings *)self setWalrus:?];
  }

  fromCopy = v9;
LABEL_7:
  webAccess = self->_webAccess;
  v8 = fromCopy[2];
  if (webAccess)
  {
    if (v8)
    {
      [(OTWebAccess *)webAccess mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(OTAccountSettings *)self setWebAccess:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((walrus = self->_walrus, !(walrus | equalCopy[1])) || -[OTWalrus isEqual:](walrus, "isEqual:")))
  {
    webAccess = self->_webAccess;
    if (webAccess | equalCopy[2])
    {
      v7 = [(OTWebAccess *)webAccess isEqual:?];
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
  v6 = [(OTWalrus *)self->_walrus copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(OTWebAccess *)self->_webAccess copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_walrus)
  {
    [toCopy setWalrus:?];
    toCopy = v5;
  }

  if (self->_webAccess)
  {
    [v5 setWebAccess:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_walrus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_webAccess)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  walrus = self->_walrus;
  if (walrus)
  {
    dictionaryRepresentation = [(OTWalrus *)walrus dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"walrus"];
  }

  webAccess = self->_webAccess;
  if (webAccess)
  {
    dictionaryRepresentation2 = [(OTWebAccess *)webAccess dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"webAccess"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTAccountSettings;
  v4 = [(OTAccountSettings *)&v8 description];
  dictionaryRepresentation = [(OTAccountSettings *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end