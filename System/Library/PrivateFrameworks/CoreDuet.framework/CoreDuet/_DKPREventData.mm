@interface _DKPREventData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)event;
- (uint64_t)setHasUncompressedLength:(uint64_t)result;
- (uint64_t)setUncompressedLength:(uint64_t)result;
- (uint64_t)setVersion:(uint64_t)result;
- (uint64_t)uncompressedLength;
- (uint64_t)version;
- (unint64_t)hash;
- (void)setEvent:(uint64_t)event;
- (void)writeTo:(id)to;
@end

@implementation _DKPREventData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPREventData;
  v4 = [(_DKPREventData *)&v8 description];
  dictionaryRepresentation = [(_DKPREventData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  event = self->_event;
  if (event)
  {
    [dictionary setObject:event forKey:@"event"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_uncompressedLength];
    [dictionary setObject:v6 forKey:@"uncompressedLength"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  version = self->_version;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (!self->_event)
  {
    [_DKPREventData writeTo:];
  }

  PBDataWriterWriteDataField();
  if (*&self->_has)
  {
    uncompressedLength = self->_uncompressedLength;
    PBDataWriterWriteUint64Field();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_version;
  v6 = [(NSData *)self->_event copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_uncompressedLength;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (self->_version != *(equalCopy + 6))
  {
    goto LABEL_9;
  }

  event = self->_event;
  if (event | *(equalCopy + 2))
  {
    if (![(NSData *)event isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_uncompressedLength == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(NSData *)self->_event hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_uncompressedLength;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v5 ^ (2654435761 * version);
}

- (uint64_t)setUncompressedLength:(uint64_t)result
{
  if (result)
  {
    *(result + 28) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasUncompressedLength:(uint64_t)result
{
  if (result)
  {
    *(result + 28) = *(result + 28) & 0xFE | a2;
  }

  return result;
}

- (void)setEvent:(uint64_t)event
{
  if (event)
  {
    objc_storeStrong((event + 16), a2);
  }
}

- (uint64_t)version
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)setVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)event
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)uncompressedLength
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end