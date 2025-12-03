@interface SYFileTransferInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYFileTransferInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYFileTransferInfo;
  v4 = [(SYFileTransferInfo *)&v8 description];
  dictionaryRepresentation = [(SYFileTransferInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(SYMessageHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  startAnchor = self->_startAnchor;
  if (startAnchor)
  {
    [dictionary setObject:startAnchor forKey:@"startAnchor"];
  }

  endAnchor = self->_endAnchor;
  if (endAnchor)
  {
    [dictionary setObject:endAnchor forKey:@"endAnchor"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_decompressedFileSize];
  [dictionary setObject:v8 forKey:@"decompressedFileSize"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_header)
  {
    [SYFileTransferInfo writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_startAnchor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_endAnchor)
  {
    PBDataWriterWriteStringField();
  }

  decompressedFileSize = self->_decompressedFileSize;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  if (self->_startAnchor)
  {
    [toCopy setStartAnchor:?];
  }

  if (self->_endAnchor)
  {
    [toCopy setEndAnchor:?];
  }

  toCopy[1] = self->_decompressedFileSize;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_startAnchor copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_endAnchor copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v5[1] = self->_decompressedFileSize;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = [equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[3])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((startAnchor = self->_startAnchor, !(startAnchor | equalCopy[4])) || -[NSString isEqual:](startAnchor, "isEqual:")) && ((endAnchor = self->_endAnchor, !(endAnchor | equalCopy[2])) || -[NSString isEqual:](endAnchor, "isEqual:")) && self->_decompressedFileSize == equalCopy[1];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_startAnchor hash]^ v3;
  return v4 ^ [(NSString *)self->_endAnchor hash]^ (2654435761u * self->_decompressedFileSize);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[3];
  v7 = fromCopy;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SYMessageHeader *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SYFileTransferInfo *)self setHeader:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[4])
  {
    [(SYFileTransferInfo *)self setStartAnchor:?];
    fromCopy = v7;
  }

  if (fromCopy[2])
  {
    [(SYFileTransferInfo *)self setEndAnchor:?];
    fromCopy = v7;
  }

  self->_decompressedFileSize = fromCopy[1];

  MEMORY[0x1EEE66BB8]();
}

@end