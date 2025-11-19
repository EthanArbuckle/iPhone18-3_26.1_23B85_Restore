@interface SGM2BundleIdsMissingEntitlement
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2BundleIdsMissingEntitlement

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(SGM2BundleIdsMissingEntitlement *)self setKey:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SGM2BundleIdsMissingEntitlement *)self setBundleId:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(SGM2BundleIdsMissingEntitlement *)self setEntitlement:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_bundleId hash]^ v3;
  return v4 ^ [(NSString *)self->_entitlement hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[3])) || -[NSString isEqual:](key, "isEqual:")) && ((bundleId = self->_bundleId, !(bundleId | v4[1])) || -[NSString isEqual:](bundleId, "isEqual:")))
  {
    entitlement = self->_entitlement;
    if (entitlement | v4[2])
    {
      v8 = [(NSString *)entitlement isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_entitlement copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (self->_bundleId)
  {
    [v5 setBundleId:?];
    v4 = v5;
  }

  if (self->_entitlement)
  {
    [v5 setEntitlement:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_entitlement)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v4 setObject:bundleId forKey:@"bundleId"];
  }

  entitlement = self->_entitlement;
  if (entitlement)
  {
    [v4 setObject:entitlement forKey:@"entitlement"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2BundleIdsMissingEntitlement;
  v4 = [(SGM2BundleIdsMissingEntitlement *)&v8 description];
  v5 = [(SGM2BundleIdsMissingEntitlement *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"BundleIdsMissingEntitlement";
  }
}

@end