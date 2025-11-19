@interface SYResetResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYResetResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYResetResponse;
  v4 = [(SYResetResponse *)&v8 description];
  v5 = [(SYResetResponse *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_accepted];
  [v3 setObject:v6 forKey:@"accepted"];

  error = self->_error;
  if (error)
  {
    v8 = [(SYErrorInfo *)error dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (!self->_header)
  {
    [SYResetResponse writeTo:];
  }

  PBDataWriterWriteSubmessage();
  accepted = self->_accepted;
  PBDataWriterWriteBOOLField();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setHeader:self->_header];
  v4 = v5;
  v5[24] = self->_accepted;
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
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_accepted;
  v8 = [(SYErrorInfo *)self->_error copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  header = self->_header;
  if (header | *(v4 + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = *(v4 + 24);
  if (self->_accepted)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_7;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_6;
  }

  error = self->_error;
  if (error | *(v4 + 1))
  {
    v7 = [(SYErrorInfo *)error isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_7:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = 2654435761 * self->_accepted;
  return v4 ^ v3 ^ [(SYErrorInfo *)self->_error hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = *(v4 + 2);
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

    [(SYResetResponse *)self setHeader:?];
  }

  v4 = v9;
LABEL_7:
  self->_accepted = *(v4 + 24);
  error = self->_error;
  v8 = *(v4 + 1);
  if (error)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    error = [(SYErrorInfo *)error mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    error = [(SYResetResponse *)self setError:?];
  }

  v4 = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](error, v4);
}

@end