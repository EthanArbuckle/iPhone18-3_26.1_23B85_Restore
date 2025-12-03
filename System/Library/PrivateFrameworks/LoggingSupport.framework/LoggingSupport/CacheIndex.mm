@interface CacheIndex
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheIndex:(id)index;
- (CacheIndex)initWithCDHash:(unsigned __int16)hash identifier:(int64_t)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CacheIndex

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CacheIndex allocWithZone:zone];
  fileIndex = self->_fileIndex;
  chunk_offset = self->_chunk_offset;

  return [(CacheIndex *)v4 initWithCDHash:fileIndex identifier:chunk_offset];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CacheIndex *)self isEqualToCacheIndex:equalCopy];

  return v5;
}

- (BOOL)isEqualToCacheIndex:(id)index
{
  indexCopy = index;
  v5 = self == indexCopy || self->_fileIndex == indexCopy->_fileIndex && self->_chunk_offset == indexCopy->_chunk_offset;

  return v5;
}

- (CacheIndex)initWithCDHash:(unsigned __int16)hash identifier:(int64_t)identifier
{
  v7.receiver = self;
  v7.super_class = CacheIndex;
  result = [(CacheIndex *)&v7 init];
  if (result)
  {
    result->_chunk_offset = identifier;
    result->_fileIndex = hash;
  }

  return result;
}

@end