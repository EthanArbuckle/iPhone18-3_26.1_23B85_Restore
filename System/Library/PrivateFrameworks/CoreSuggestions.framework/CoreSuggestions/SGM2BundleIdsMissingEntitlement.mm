@interface SGM2BundleIdsMissingEntitlement
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SGM2BundleIdsMissingEntitlement

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(SGM2BundleIdsMissingEntitlement *)self setKey:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SGM2BundleIdsMissingEntitlement *)self setBundleId:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(SGM2BundleIdsMissingEntitlement *)self setEntitlement:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_bundleId hash]^ v3;
  return v4 ^ [(NSString *)self->_entitlement hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[3])) || -[NSString isEqual:](key, "isEqual:")) && ((bundleId = self->_bundleId, !(bundleId | equalCopy[1])) || -[NSString isEqual:](bundleId, "isEqual:")))
  {
    entitlement = self->_entitlement;
    if (entitlement | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_entitlement copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_bundleId)
  {
    [v5 setBundleId:?];
    toCopy = v5;
  }

  if (self->_entitlement)
  {
    [v5 setEntitlement:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_entitlement)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
  dictionaryRepresentation = [(SGM2BundleIdsMissingEntitlement *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

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