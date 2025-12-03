@interface SYSyncEndResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorResolution:(id)resolution;
- (int)errorResolution;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYSyncEndResponse

- (int)errorResolution
{
  if (*&self->_has)
  {
    return self->_errorResolution;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsErrorResolution:(id)resolution
{
  resolutionCopy = resolution;
  if ([resolutionCopy isEqualToString:@"Ignore"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [resolutionCopy isEqualToString:@"Retry"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncEndResponse;
  v4 = [(SYSyncEndResponse *)&v8 description];
  dictionaryRepresentation = [(SYSyncEndResponse *)self dictionaryRepresentation];
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

  syncID = self->_syncID;
  if (syncID)
  {
    [dictionary setObject:syncID forKey:@"syncID"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(SYErrorInfo *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  if (*&self->_has)
  {
    errorResolution = self->_errorResolution;
    if (errorResolution)
    {
      if (errorResolution == 1)
      {
        v10 = @"Retry";
      }

      else
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_errorResolution];
      }
    }

    else
    {
      v10 = @"Ignore";
    }

    [dictionary setObject:v10 forKey:@"errorResolution"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_header)
  {
    [SYSyncEndResponse writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteSubmessage();
  if (!self->_syncID)
  {
    [SYSyncEndResponse writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    errorResolution = self->_errorResolution;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setSyncID:self->_syncID];
  if (self->_error)
  {
    [toCopy setError:?];
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_errorResolution;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_syncID copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_errorResolution;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  header = self->_header;
  if (header | *(equalCopy + 3))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_12;
    }
  }

  syncID = self->_syncID;
  if (syncID | *(equalCopy + 4))
  {
    if (![(NSString *)syncID isEqual:?])
    {
      goto LABEL_12;
    }
  }

  error = self->_error;
  if (error | *(equalCopy + 1))
  {
    if (![(SYErrorInfo *)error isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_errorResolution == *(equalCopy + 4))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_syncID hash];
  v5 = [(SYErrorInfo *)self->_error hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorResolution;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = *(fromCopy + 3);
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

    [(SYSyncEndResponse *)self setHeader:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 4))
  {
    [(SYSyncEndResponse *)self setSyncID:?];
    fromCopy = v9;
  }

  error = self->_error;
  v8 = *(fromCopy + 1);
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

    error = [(SYSyncEndResponse *)self setError:?];
  }

  fromCopy = v9;
LABEL_15:
  if (*(fromCopy + 40))
  {
    self->_errorResolution = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](error, fromCopy);
}

@end