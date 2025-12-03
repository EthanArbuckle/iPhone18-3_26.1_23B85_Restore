@interface NSPPrivacyProxyPolicyTierMap
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTier:(id)tier;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyPolicyTierMap

- (int)StringAsTier:(id)tier
{
  tierCopy = tier;
  if ([tierCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([tierCopy isEqualToString:@"FREE"])
  {
    v4 = 1;
  }

  else if ([tierCopy isEqualToString:@"SUBSCRIBER"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyPolicyTierMap;
  v4 = [(NSPPrivacyProxyPolicyTierMap *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyPolicyTierMap *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tier = self->_tier;
  if (tier >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_tier];
  }

  else
  {
    v5 = off_1E7A31088[tier];
  }

  [dictionary setObject:v5 forKey:@"tier"];

  policy = self->_policy;
  if (policy)
  {
    dictionaryRepresentation = [(NSPPrivacyProxyPolicy *)policy dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"policy"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  tier = self->_tier;
  v6 = toCopy;
  PBDataWriterWriteInt32Field();
  if (!self->_policy)
  {
    __assert_rtn("[NSPPrivacyProxyPolicyTierMap writeTo:]", "NSPPrivacyProxyPolicyTierMap.m", 118, "self->_policy != nil");
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_tier;
  v6 = [(NSPPrivacyProxyPolicy *)self->_policy copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_tier == *(equalCopy + 4))
  {
    policy = self->_policy;
    if (policy | equalCopy[1])
    {
      v6 = [(NSPPrivacyProxyPolicy *)policy isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_tier = fromCopy[4];
  policy = self->_policy;
  v6 = *(fromCopy + 1);
  if (policy)
  {
    if (v6)
    {
      [(NSPPrivacyProxyPolicy *)policy mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NSPPrivacyProxyPolicyTierMap *)self setPolicy:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end