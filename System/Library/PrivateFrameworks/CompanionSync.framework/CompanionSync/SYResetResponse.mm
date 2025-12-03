@interface SYResetResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYResetResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYResetResponse;
  v4 = [(SYResetResponse *)&v8 description];
  dictionaryRepresentation = [(SYResetResponse *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_accepted];
  [dictionary setObject:v6 forKey:@"accepted"];

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(SYErrorInfo *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  v4 = toCopy;
  toCopy[24] = self->_accepted;
  if (self->_error)
  {
    [toCopy setError:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_accepted;
  v8 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  header = self->_header;
  if (header | *(equalCopy + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = *(equalCopy + 24);
  if (self->_accepted)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_7;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_6;
  }

  error = self->_error;
  if (error | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = *(fromCopy + 2);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  self->_accepted = *(fromCopy + 24);
  error = self->_error;
  v8 = *(fromCopy + 1);
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

  fromCopy = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](error, fromCopy);
}

@end