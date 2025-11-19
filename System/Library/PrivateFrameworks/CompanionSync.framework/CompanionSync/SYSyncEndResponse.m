@interface SYSyncEndResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorResolution:(id)a3;
- (int)errorResolution;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsErrorResolution:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Ignore"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Retry"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncEndResponse;
  v4 = [(SYSyncEndResponse *)&v8 description];
  v5 = [(SYSyncEndResponse *)self dictionaryRepresentation];
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

  error = self->_error;
  if (error)
  {
    v8 = [(SYErrorInfo *)error dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"error"];
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

    [v3 setObject:v10 forKey:@"errorResolution"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_header)
  {
    [SYSyncEndResponse writeTo:];
  }

  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setHeader:self->_header];
  [v4 setSyncID:self->_syncID];
  if (self->_error)
  {
    [v4 setError:?];
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_errorResolution;
    *(v4 + 40) |= 1u;
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

  v10 = [(SYErrorInfo *)self->_error copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_errorResolution;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  header = self->_header;
  if (header | *(v4 + 3))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_12;
    }
  }

  syncID = self->_syncID;
  if (syncID | *(v4 + 4))
  {
    if (![(NSString *)syncID isEqual:?])
    {
      goto LABEL_12;
    }
  }

  error = self->_error;
  if (error | *(v4 + 1))
  {
    if (![(SYErrorInfo *)error isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_errorResolution == *(v4 + 4))
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

    [(SYSyncEndResponse *)self setHeader:?];
  }

  v4 = v9;
LABEL_7:
  if (*(v4 + 4))
  {
    [(SYSyncEndResponse *)self setSyncID:?];
    v4 = v9;
  }

  error = self->_error;
  v8 = *(v4 + 1);
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

  v4 = v9;
LABEL_15:
  if (*(v4 + 40))
  {
    self->_errorResolution = *(v4 + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](error, v4);
}

@end