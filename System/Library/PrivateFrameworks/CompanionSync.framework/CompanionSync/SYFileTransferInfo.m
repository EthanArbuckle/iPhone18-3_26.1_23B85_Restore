@interface SYFileTransferInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYFileTransferInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYFileTransferInfo;
  v4 = [(SYFileTransferInfo *)&v8 description];
  v5 = [(SYFileTransferInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(SYMessageHeader *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  startAnchor = self->_startAnchor;
  if (startAnchor)
  {
    [v3 setObject:startAnchor forKey:@"startAnchor"];
  }

  endAnchor = self->_endAnchor;
  if (endAnchor)
  {
    [v3 setObject:endAnchor forKey:@"endAnchor"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_decompressedFileSize];
  [v3 setObject:v8 forKey:@"decompressedFileSize"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_header)
  {
    [SYFileTransferInfo writeTo:];
  }

  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setHeader:self->_header];
  if (self->_startAnchor)
  {
    [v4 setStartAnchor:?];
  }

  if (self->_endAnchor)
  {
    [v4 setEndAnchor:?];
  }

  v4[1] = self->_decompressedFileSize;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_startAnchor copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_endAnchor copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v5[1] = self->_decompressedFileSize;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = [v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[3])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((startAnchor = self->_startAnchor, !(startAnchor | v4[4])) || -[NSString isEqual:](startAnchor, "isEqual:")) && ((endAnchor = self->_endAnchor, !(endAnchor | v4[2])) || -[NSString isEqual:](endAnchor, "isEqual:")) && self->_decompressedFileSize == v4[1];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_startAnchor hash]^ v3;
  return v4 ^ [(NSString *)self->_endAnchor hash]^ (2654435761u * self->_decompressedFileSize);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[3];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[4])
  {
    [(SYFileTransferInfo *)self setStartAnchor:?];
    v4 = v7;
  }

  if (v4[2])
  {
    [(SYFileTransferInfo *)self setEndAnchor:?];
    v4 = v7;
  }

  self->_decompressedFileSize = v4[1];

  MEMORY[0x1EEE66BB8]();
}

@end