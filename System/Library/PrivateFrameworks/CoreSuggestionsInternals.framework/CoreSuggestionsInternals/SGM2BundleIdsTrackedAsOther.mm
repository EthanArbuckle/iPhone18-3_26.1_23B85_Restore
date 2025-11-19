@interface SGM2BundleIdsTrackedAsOther
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2BundleIdsTrackedAsOther

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(SGM2BundleIdsTrackedAsOther *)self setKey:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SGM2BundleIdsTrackedAsOther *)self setBundleId:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[2])) || -[NSString isEqual:](key, "isEqual:")))
  {
    bundleId = self->_bundleId;
    if (bundleId | v4[1])
    {
      v7 = [(NSString *)bundleId isEqual:?];
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
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

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
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2BundleIdsTrackedAsOther;
  v4 = [(SGM2BundleIdsTrackedAsOther *)&v8 description];
  v5 = [(SGM2BundleIdsTrackedAsOther *)self dictionaryRepresentation];
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
    return @"BundleIdsTrackedAsOther";
  }
}

@end