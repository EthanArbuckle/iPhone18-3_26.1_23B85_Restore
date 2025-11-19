@interface NSPPrivacyProxyPolicyTierMap
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTier:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyPolicyTierMap

- (int)StringAsTier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FREE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SUBSCRIBER"])
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
  v5 = [(NSPPrivacyProxyPolicyTierMap *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  tier = self->_tier;
  if (tier >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_tier];
  }

  else
  {
    v5 = off_1E7A31088[tier];
  }

  [v3 setObject:v5 forKey:@"tier"];

  policy = self->_policy;
  if (policy)
  {
    v7 = [(NSPPrivacyProxyPolicy *)policy dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"policy"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  tier = self->_tier;
  v6 = v4;
  PBDataWriterWriteInt32Field();
  if (!self->_policy)
  {
    __assert_rtn("[NSPPrivacyProxyPolicyTierMap writeTo:]", "NSPPrivacyProxyPolicyTierMap.m", 118, "self->_policy != nil");
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_tier;
  v6 = [(NSPPrivacyProxyPolicy *)self->_policy copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_tier == *(v4 + 4))
  {
    policy = self->_policy;
    if (policy | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_tier = v4[4];
  policy = self->_policy;
  v6 = *(v4 + 1);
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