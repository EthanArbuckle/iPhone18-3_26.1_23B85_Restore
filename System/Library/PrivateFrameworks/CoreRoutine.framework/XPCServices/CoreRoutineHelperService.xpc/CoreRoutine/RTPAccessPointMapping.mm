@interface RTPAccessPointMapping
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)muidAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RTPAccessPointMapping

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = RTPAccessPointMapping;
  [(RTPAccessPointMapping *)&v3 dealloc];
}

- (unint64_t)muidAtIndex:(unint64_t)index
{
  p_muids = &self->_muids;
  count = self->_muids.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_muids->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RTPAccessPointMapping;
  v3 = [(RTPAccessPointMapping *)&v7 description];
  dictionaryRepresentation = [(RTPAccessPointMapping *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  accessPoint = self->_accessPoint;
  if (accessPoint)
  {
    [v3 setObject:accessPoint forKey:@"access_point"];
  }

  v6 = PBRepeatedUInt64NSArray();
  [v4 setObject:v6 forKey:@"muid"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_accessPoint)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  p_muids = &self->_muids;
  if (p_muids->count)
  {
    v6 = 0;
    do
    {
      v7 = p_muids->list[v6];
      PBDataWriterWriteUint64Field();
      toCopy = v8;
      ++v6;
    }

    while (v6 < p_muids->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_accessPoint)
  {
    [toCopy setAccessPoint:?];
  }

  if ([(RTPAccessPointMapping *)self muidsCount])
  {
    [toCopy clearMuids];
    muidsCount = [(RTPAccessPointMapping *)self muidsCount];
    if (muidsCount)
    {
      v5 = muidsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addMuid:{-[RTPAccessPointMapping muidAtIndex:](self, "muidAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accessPoint copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((accessPoint = self->_accessPoint, !(accessPoint | equalCopy[4])) || -[NSString isEqual:](accessPoint, "isEqual:")))
  {
    IsEqual = PBRepeatedUInt64IsEqual();
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
  v8 = fromCopy;
  if (fromCopy[4])
  {
    [(RTPAccessPointMapping *)self setAccessPoint:?];
    fromCopy = v8;
  }

  muidsCount = [fromCopy muidsCount];
  if (muidsCount)
  {
    v6 = muidsCount;
    for (i = 0; i != v6; ++i)
    {
      -[RTPAccessPointMapping addMuid:](self, "addMuid:", [v8 muidAtIndex:i]);
    }
  }
}

@end