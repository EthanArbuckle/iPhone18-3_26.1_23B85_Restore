@interface OTAccountSettings
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTAccountSettings

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  walrus = self->_walrus;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  webAccess = self->_webAccess;
  v8 = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((walrus = self->_walrus, !(walrus | v4[1])) || -[OTWalrus isEqual:](walrus, "isEqual:")))
  {
    webAccess = self->_webAccess;
    if (webAccess | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OTWalrus *)self->_walrus copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(OTWebAccess *)self->_webAccess copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_walrus)
  {
    [v4 setWalrus:?];
    v4 = v5;
  }

  if (self->_webAccess)
  {
    [v5 setWebAccess:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_walrus)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_webAccess)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  walrus = self->_walrus;
  if (walrus)
  {
    v5 = [(OTWalrus *)walrus dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"walrus"];
  }

  webAccess = self->_webAccess;
  if (webAccess)
  {
    v7 = [(OTWebAccess *)webAccess dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"webAccess"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTAccountSettings;
  v4 = [(OTAccountSettings *)&v8 description];
  v5 = [(OTAccountSettings *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end