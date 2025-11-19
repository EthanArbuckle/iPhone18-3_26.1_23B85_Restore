@interface RTPHashedAccessPointMapping
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)muidAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RTPHashedAccessPointMapping

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = RTPHashedAccessPointMapping;
  [(RTPHashedAccessPointMapping *)&v3 dealloc];
}

- (unint64_t)muidAtIndex:(unint64_t)a3
{
  p_muids = &self->_muids;
  count = self->_muids.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_muids->list[a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RTPHashedAccessPointMapping;
  v3 = [(RTPHashedAccessPointMapping *)&v7 description];
  v4 = [(RTPHashedAccessPointMapping *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  hashedAccessPoint = self->_hashedAccessPoint;
  if (hashedAccessPoint)
  {
    [v3 setObject:hashedAccessPoint forKey:@"hashed_access_point"];
  }

  v6 = PBRepeatedUInt64NSArray();
  [v4 setObject:v6 forKey:@"muid"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hashedAccessPoint)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  p_muids = &self->_muids;
  if (p_muids->count)
  {
    v6 = 0;
    do
    {
      v7 = p_muids->list[v6];
      PBDataWriterWriteUint64Field();
      v4 = v8;
      ++v6;
    }

    while (v6 < p_muids->count);
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if (self->_hashedAccessPoint)
  {
    [v7 setHashedAccessPoint:?];
  }

  if ([(RTPHashedAccessPointMapping *)self muidsCount])
  {
    [v7 clearMuids];
    v4 = [(RTPHashedAccessPointMapping *)self muidsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addMuid:{-[RTPHashedAccessPointMapping muidAtIndex:](self, "muidAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_hashedAccessPoint copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((hashedAccessPoint = self->_hashedAccessPoint, !(hashedAccessPoint | v4[4])) || -[NSData isEqual:](hashedAccessPoint, "isEqual:")))
  {
    IsEqual = PBRepeatedUInt64IsEqual();
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
  v8 = v4;
  if (v4[4])
  {
    [(RTPHashedAccessPointMapping *)self setHashedAccessPoint:?];
    v4 = v8;
  }

  v5 = [v4 muidsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[RTPHashedAccessPointMapping addMuid:](self, "addMuid:", [v8 muidAtIndex:i]);
    }
  }
}

@end