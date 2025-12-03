@interface NSPPrivacyProxyProxyPathWeight
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unsigned)proxiesAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyProxyPathWeight

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = NSPPrivacyProxyProxyPathWeight;
  [(NSPPrivacyProxyProxyPathWeight *)&v3 dealloc];
}

- (unsigned)proxiesAtIndex:(unint64_t)index
{
  p_proxies = &self->_proxies;
  count = self->_proxies.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_proxies->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyProxyPathWeight;
  v4 = [(NSPPrivacyProxyProxyPathWeight *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyProxyPathWeight *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_weight];
  [dictionary setObject:v4 forKey:@"weight"];

  v5 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v5 forKey:@"proxies"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  weight = self->_weight;
  v9 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[8] = self->_weight;
  if ([(NSPPrivacyProxyProxyPathWeight *)self proxiesCount])
  {
    [toCopy clearProxies];
    proxiesCount = [(NSPPrivacyProxyProxyPathWeight *)self proxiesCount];
    if (proxiesCount)
    {
      v5 = proxiesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addProxies:{-[NSPPrivacyProxyProxyPathWeight proxiesAtIndex:](self, "proxiesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[8] = self->_weight;
  PBRepeatedUInt32Copy();
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_weight == equalCopy[8])
  {
    IsEqual = PBRepeatedUInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_weight = fromCopy[8];
  v8 = fromCopy;
  proxiesCount = [fromCopy proxiesCount];
  if (proxiesCount)
  {
    v6 = proxiesCount;
    for (i = 0; i != v6; ++i)
    {
      -[NSPPrivacyProxyProxyPathWeight addProxies:](self, "addProxies:", [v8 proxiesAtIndex:i]);
    }
  }
}

@end