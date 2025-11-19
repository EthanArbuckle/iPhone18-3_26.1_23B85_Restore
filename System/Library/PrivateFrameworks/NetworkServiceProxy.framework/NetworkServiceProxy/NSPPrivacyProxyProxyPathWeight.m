@interface NSPPrivacyProxyProxyPathWeight
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unsigned)proxiesAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyProxyPathWeight

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = NSPPrivacyProxyProxyPathWeight;
  [(NSPPrivacyProxyProxyPathWeight *)&v3 dealloc];
}

- (unsigned)proxiesAtIndex:(unint64_t)a3
{
  p_proxies = &self->_proxies;
  count = self->_proxies.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_proxies->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyProxyPathWeight;
  v4 = [(NSPPrivacyProxyProxyPathWeight *)&v8 description];
  v5 = [(NSPPrivacyProxyProxyPathWeight *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_weight];
  [v3 setObject:v4 forKey:@"weight"];

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"proxies"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  weight = self->_weight;
  v9 = v4;
  PBDataWriterWriteUint32Field();
  p_proxies = &self->_proxies;
  if (p_proxies->count)
  {
    v7 = 0;
    do
    {
      v8 = p_proxies->list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < p_proxies->count);
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  v7[8] = self->_weight;
  if ([(NSPPrivacyProxyProxyPathWeight *)self proxiesCount])
  {
    [v7 clearProxies];
    v4 = [(NSPPrivacyProxyProxyPathWeight *)self proxiesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addProxies:{-[NSPPrivacyProxyProxyPathWeight proxiesAtIndex:](self, "proxiesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[8] = self->_weight;
  PBRepeatedUInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_weight == v4[8])
  {
    IsEqual = PBRepeatedUInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_weight = v4[8];
  v8 = v4;
  v5 = [v4 proxiesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[NSPPrivacyProxyProxyPathWeight addProxies:](self, "addProxies:", [v8 proxiesAtIndex:i]);
    }
  }
}

@end