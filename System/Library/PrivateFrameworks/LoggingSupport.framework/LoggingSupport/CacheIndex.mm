@interface CacheIndex
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheIndex:(id)a3;
- (CacheIndex)initWithCDHash:(unsigned __int16)a3 identifier:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CacheIndex

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CacheIndex allocWithZone:a3];
  fileIndex = self->_fileIndex;
  chunk_offset = self->_chunk_offset;

  return [(CacheIndex *)v4 initWithCDHash:fileIndex identifier:chunk_offset];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CacheIndex *)self isEqualToCacheIndex:v4];

  return v5;
}

- (BOOL)isEqualToCacheIndex:(id)a3
{
  v4 = a3;
  v5 = self == v4 || self->_fileIndex == v4->_fileIndex && self->_chunk_offset == v4->_chunk_offset;

  return v5;
}

- (CacheIndex)initWithCDHash:(unsigned __int16)a3 identifier:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = CacheIndex;
  result = [(CacheIndex *)&v7 init];
  if (result)
  {
    result->_chunk_offset = a4;
    result->_fileIndex = a3;
  }

  return result;
}

@end