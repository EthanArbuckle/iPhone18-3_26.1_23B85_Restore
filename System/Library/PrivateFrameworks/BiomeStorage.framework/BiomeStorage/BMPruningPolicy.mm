@interface BMPruningPolicy
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPruneOnAccess:(BOOL)access filterByAgeOnRead:(BOOL)read maxAge:(double)age maxStreamSize:(unint64_t)size maxEventCount:(unint64_t)count;
- (unint64_t)hash;
@end

@implementation BMPruningPolicy

- (id)initPruneOnAccess:(BOOL)access filterByAgeOnRead:(BOOL)read maxAge:(double)age maxStreamSize:(unint64_t)size maxEventCount:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = BMPruningPolicy;
  result = [(BMPruningPolicy *)&v13 init];
  if (result)
  {
    *(result + 8) = access;
    *(result + 9) = read;
    *(result + 2) = age;
    *(result + 3) = size;
    *(result + 4) = count;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_pruneOnAccess == v5->_pruneOnAccess && self->_maxAge == v5->_maxAge && self->_maxStreamSize == v5->_maxStreamSize && self->_filterByAgeOnRead == v5->_filterByAgeOnRead && self->_maxEventCount == v5->_maxEventCount;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
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