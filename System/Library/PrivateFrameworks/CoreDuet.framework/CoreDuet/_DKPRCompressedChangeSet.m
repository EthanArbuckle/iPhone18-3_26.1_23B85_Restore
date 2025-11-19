@interface _DKPRCompressedChangeSet
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)compressedData;
- (uint64_t)setUncompressedLength:(uint64_t)result;
- (uint64_t)uncompressedLength;
- (void)setCompressedData:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _DKPRCompressedChangeSet

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRCompressedChangeSet;
  v4 = [(_DKPRCompressedChangeSet *)&v8 description];
  v5 = [(_DKPRCompressedChangeSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_uncompressedLength];
  [v3 setObject:v4 forKey:@"uncompressedLength"];

  compressedData = self->_compressedData;
  if (compressedData)
  {
    [v3 setObject:compressedData forKey:@"compressedData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  uncompressedLength = self->_uncompressedLength;
  v6 = v4;
  PBDataWriterWriteUint64Field();
  if (!self->_compressedData)
  {
    [_DKPRCompressedChangeSet writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_uncompressedLength;
  v6 = [(NSData *)self->_compressedData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_uncompressedLength == v4[1])
  {
    compressedData = self->_compressedData;
    if (compressedData | v4[2])
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

- (void)setCompressedData:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
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