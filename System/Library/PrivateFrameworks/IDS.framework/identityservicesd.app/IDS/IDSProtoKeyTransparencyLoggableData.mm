@interface IDSProtoKeyTransparencyLoggableData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addApplicationPublicIdentity:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNgmVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSProtoKeyTransparencyLoggableData

- (void)setHasNgmVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addApplicationPublicIdentity:(id)a3
{
  v4 = a3;
  applicationPublicIdentitys = self->_applicationPublicIdentitys;
  v8 = v4;
  if (!applicationPublicIdentitys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_applicationPublicIdentitys;
    self->_applicationPublicIdentitys = v6;

    v4 = v8;
    applicationPublicIdentitys = self->_applicationPublicIdentitys;
  }

  [(NSMutableArray *)applicationPublicIdentitys addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IDSProtoKeyTransparencyLoggableData;
  v3 = [(IDSProtoKeyTransparencyLoggableData *)&v7 description];
  v4 = [(IDSProtoKeyTransparencyLoggableData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  ngmPublicIdentity = self->_ngmPublicIdentity;
  if (ngmPublicIdentity)
  {
    [v3 setObject:ngmPublicIdentity forKey:@"ngm_public_identity"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_ngmVersion];
    [v4 setObject:v7 forKey:@"ngm_version"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_ktVersion];
    [v4 setObject:v8 forKey:@"kt_version"];
  }

  if ([(NSMutableArray *)self->_applicationPublicIdentitys count])
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_applicationPublicIdentitys, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_applicationPublicIdentitys;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"application_public_identity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_ngmPublicIdentity)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_applicationPublicIdentitys;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_ngmPublicIdentity)
  {
    [v4 setNgmPublicIdentity:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 8) = self->_ngmVersion;
    *(v4 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_ktVersion;
    *(v4 + 36) |= 1u;
  }

  if ([(IDSProtoKeyTransparencyLoggableData *)self applicationPublicIdentitysCount])
  {
    [v10 clearApplicationPublicIdentitys];
    v6 = [(IDSProtoKeyTransparencyLoggableData *)self applicationPublicIdentitysCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(IDSProtoKeyTransparencyLoggableData *)self applicationPublicIdentityAtIndex:i];
        [v10 addApplicationPublicIdentity:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_ngmPublicIdentity copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 8) = self->_ngmVersion;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 4) = self->_ktVersion;
    *(v5 + 36) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_applicationPublicIdentitys;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{a3, v16}];
        [v5 addApplicationPublicIdentity:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  ngmPublicIdentity = self->_ngmPublicIdentity;
  if (ngmPublicIdentity | *(v4 + 3))
  {
    if (![(NSData *)ngmPublicIdentity isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_ngmVersion != *(v4 + 8))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_ktVersion != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_16;
  }

  applicationPublicIdentitys = self->_applicationPublicIdentitys;
  if (applicationPublicIdentitys | *(v4 + 1))
  {
    v7 = [(NSMutableArray *)applicationPublicIdentitys isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_17:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_ngmPublicIdentity hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_ngmVersion;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_applicationPublicIdentitys hash];
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_ktVersion;
  return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_applicationPublicIdentitys hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    [(IDSProtoKeyTransparencyLoggableData *)self setNgmPublicIdentity:?];
  }

  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_ngmVersion = *(v4 + 8);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
  }

  if (v5)
  {
    self->_ktVersion = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v4 + 1);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(IDSProtoKeyTransparencyLoggableData *)self addApplicationPublicIdentity:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end