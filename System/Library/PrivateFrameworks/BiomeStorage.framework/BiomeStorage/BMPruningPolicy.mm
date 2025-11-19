@interface BMPruningPolicy
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initPruneOnAccess:(BOOL)a3 filterByAgeOnRead:(BOOL)a4 maxAge:(double)a5 maxStreamSize:(unint64_t)a6 maxEventCount:(unint64_t)a7;
- (unint64_t)hash;
@end

@implementation BMPruningPolicy

- (id)initPruneOnAccess:(BOOL)a3 filterByAgeOnRead:(BOOL)a4 maxAge:(double)a5 maxStreamSize:(unint64_t)a6 maxEventCount:(unint64_t)a7
{
  v13.receiver = self;
  v13.super_class = BMPruningPolicy;
  result = [(BMPruningPolicy *)&v13 init];
  if (result)
  {
    *(result + 8) = a3;
    *(result + 9) = a4;
    *(result + 2) = a5;
    *(result + 3) = a6;
    *(result + 4) = a7;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = 3;
  if (self->_filterByAgeOnRead)
  {
    v2 = 1;
  }

  return self->_maxStreamSize ^ (v2 << !self->_pruneOnAccess) ^ self->_maxEventCount ^ (self->_maxAge * 1000.0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_pruneOnAccess == v5->_pruneOnAccess && self->_maxAge == v5->_maxAge && self->_maxStreamSize == v5->_maxStreamSize && self->_filterByAgeOnRead == v5->_filterByAgeOnRead && self->_maxEventCount == v5->_maxEventCount;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BMPruningPolicy alloc];
  pruneOnAccess = self->_pruneOnAccess;
  filterByAgeOnRead = self->_filterByAgeOnRead;
  maxAge = self->_maxAge;
  maxStreamSize = self->_maxStreamSize;
  maxEventCount = self->_maxEventCount;

  return [(BMPruningPolicy *)v4 initPruneOnAccess:pruneOnAccess filterByAgeOnRead:filterByAgeOnRead maxAge:maxStreamSize maxStreamSize:maxEventCount maxEventCount:maxAge];
}

@end