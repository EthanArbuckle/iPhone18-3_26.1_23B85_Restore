@interface SYBatchChunkAck
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYBatchChunkAck

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYBatchChunkAck;
  v4 = [(SYBatchChunkAck *)&v8 description];
  v5 = [(SYBatchChunkAck *)self dictionaryRepresentation];
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

  syncID = self->_syncID;
  if (syncID)
  {
    [v3 setObject:syncID forKey:@"syncID"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_chunkIndex];
  [v3 setObject:v7 forKey:@"chunkIndex"];

  error = self->_error;
  if (error)
  {
    v9 = [(SYErrorInfo *)error dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (!self->_header)
  {
    [SYBatchChunkAck writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_syncID)
  {
    [SYBatchChunkAck writeTo:];
  }

  PBDataWriterWriteStringField();
  chunkIndex = self->_chunkIndex;
  PBDataWriterWriteUint32Field();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setHeader:self->_header];
  [v5 setSyncID:self->_syncID];
  v4 = v5;
  v5[2] = self->_chunkIndex;
  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_syncID copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 8) = self->_chunkIndex;
  v10 = [(SYErrorInfo *)self->_error copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[3])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((syncID = self->_syncID, !(syncID | v4[4])) || -[NSString isEqual:](syncID, "isEqual:")) && self->_chunkIndex == *(v4 + 2))
  {
    error = self->_error;
    if (error | v4[2])
    {
      v8 = [(SYErrorInfo *)error isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_syncID hash]^ v3;
  v5 = 2654435761 * self->_chunkIndex;
  return v4 ^ [(SYErrorInfo *)self->_error hash]^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = *(v4 + 3);
  v9 = v4;
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

    [(SYBatchChunkAck *)self setHeader:?];
  }

  v4 = v9;
LABEL_7:
  if (*(v4 + 4))
  {
    [(SYBatchChunkAck *)self setSyncID:?];
    v4 = v9;
  }

  self->_chunkIndex = *(v4 + 2);
  error = self->_error;
  v8 = *(v4 + 2);
  if (error)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    error = [(SYErrorInfo *)error mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    error = [(SYBatchChunkAck *)self setError:?];
  }

  v4 = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](error, v4);
}

@end