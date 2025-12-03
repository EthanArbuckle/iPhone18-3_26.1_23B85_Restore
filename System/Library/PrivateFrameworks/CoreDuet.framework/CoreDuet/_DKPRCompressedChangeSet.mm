@interface _DKPRCompressedChangeSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)compressedData;
- (uint64_t)setUncompressedLength:(uint64_t)result;
- (uint64_t)uncompressedLength;
- (void)setCompressedData:(uint64_t)data;
- (void)writeTo:(id)to;
@end

@implementation _DKPRCompressedChangeSet

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRCompressedChangeSet;
  v4 = [(_DKPRCompressedChangeSet *)&v8 description];
  dictionaryRepresentation = [(_DKPRCompressedChangeSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_uncompressedLength];
  [dictionary setObject:v4 forKey:@"uncompressedLength"];

  compressedData = self->_compressedData;
  if (compressedData)
  {
    [dictionary setObject:compressedData forKey:@"compressedData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  uncompressedLength = self->_uncompressedLength;
  v6 = toCopy;
  PBDataWriterWriteUint64Field();
  if (!self->_compressedData)
  {
    [_DKPRCompressedChangeSet writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_uncompressedLength;
  v6 = [(NSData *)self->_compressedData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_uncompressedLength == equalCopy[1])
  {
    compressedData = self->_compressedData;
    if (compressedData | equalCopy[2])
    {
      v6 = [(NSData *)compressedData isEqual:?];
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

- (void)setCompressedData:(uint64_t)data
{
  if (data)
  {
    objc_storeStrong((data + 16), a2);
  }
}

- (uint64_t)uncompressedLength
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)setUncompressedLength:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)compressedData
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end