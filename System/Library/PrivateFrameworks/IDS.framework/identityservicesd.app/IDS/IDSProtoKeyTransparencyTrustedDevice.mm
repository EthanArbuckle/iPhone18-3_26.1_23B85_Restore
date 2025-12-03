@interface IDSProtoKeyTransparencyTrustedDevice
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTrustedServices:(id)services;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSProtoKeyTransparencyTrustedDevice

- (void)addTrustedServices:(id)services
{
  servicesCopy = services;
  trustedServices = self->_trustedServices;
  v8 = servicesCopy;
  if (!trustedServices)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_trustedServices;
    self->_trustedServices = v6;

    servicesCopy = v8;
    trustedServices = self->_trustedServices;
  }

  [(NSMutableArray *)trustedServices addObject:servicesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IDSProtoKeyTransparencyTrustedDevice;
  v3 = [(IDSProtoKeyTransparencyTrustedDevice *)&v7 description];
  dictionaryRepresentation = [(IDSProtoKeyTransparencyTrustedDevice *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  pushToken = self->_pushToken;
  if (pushToken)
  {
    [v3 setObject:pushToken forKey:@"push_token"];
  }

  if ([(NSMutableArray *)self->_trustedServices count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_trustedServices, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_trustedServices;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"trusted_services"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  productName = self->_productName;
  if (productName)
  {
    [v4 setObject:productName forKey:@"productName"];
  }

  if (*&self->_has)
  {
    v15 = [NSNumber numberWithLongLong:self->_transparencyVersion];
    [v4 setObject:v15 forKey:@"transparencyVersion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_pushToken)
  {
    PBDataWriterWriteDataField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_trustedServices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_pushToken)
  {
    [toCopy setPushToken:?];
  }

  if ([(IDSProtoKeyTransparencyTrustedDevice *)self trustedServicesCount])
  {
    [toCopy clearTrustedServices];
    trustedServicesCount = [(IDSProtoKeyTransparencyTrustedDevice *)self trustedServicesCount];
    if (trustedServicesCount)
    {
      v5 = trustedServicesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(IDSProtoKeyTransparencyTrustedDevice *)self trustedServicesAtIndex:i];
        [toCopy addTrustedServices:v7];
      }
    }
  }

  if (self->_buildVersion)
  {
    [toCopy setBuildVersion:?];
  }

  v8 = toCopy;
  if (self->_productName)
  {
    [toCopy setProductName:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[1] = self->_transparencyVersion;
    *(v8 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_pushToken copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_trustedServices;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * v12) copyWithZone:{zone, v19}];
        [v5 addTrustedServices:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_buildVersion copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(NSString *)self->_productName copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  if (*&self->_has)
  {
    v5[1] = self->_transparencyVersion;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  pushToken = self->_pushToken;
  if (pushToken | *(equalCopy + 4))
  {
    if (![(NSData *)pushToken isEqual:?])
    {
      goto LABEL_14;
    }
  }

  trustedServices = self->_trustedServices;
  if (trustedServices | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)trustedServices isEqual:?])
    {
      goto LABEL_14;
    }
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(equalCopy + 2))
  {
    if (![(NSString *)buildVersion isEqual:?])
    {
      goto LABEL_14;
    }
  }

  productName = self->_productName;
  if (productName | *(equalCopy + 3))
  {
    if (![(NSString *)productName isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) != 0 && self->_transparencyVersion == *(equalCopy + 1))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_pushToken hash];
  v4 = [(NSMutableArray *)self->_trustedServices hash];
  v5 = [(NSString *)self->_buildVersion hash];
  v6 = [(NSString *)self->_productName hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_transparencyVersion;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(IDSProtoKeyTransparencyTrustedDevice *)self setPushToken:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(IDSProtoKeyTransparencyTrustedDevice *)self addTrustedServices:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 2))
  {
    [(IDSProtoKeyTransparencyTrustedDevice *)self setBuildVersion:?];
  }

  if (*(fromCopy + 3))
  {
    [(IDSProtoKeyTransparencyTrustedDevice *)self setProductName:?];
  }

  if (*(fromCopy + 48))
  {
    self->_transparencyVersion = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end