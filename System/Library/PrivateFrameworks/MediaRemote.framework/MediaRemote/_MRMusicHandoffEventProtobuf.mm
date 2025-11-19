@interface _MRMusicHandoffEventProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRMusicHandoffEventProtobuf

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"MRMusicHandoffEventTypeSucceeded"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"MRMusicHandoffEventTypeFailed"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRMusicHandoffEventProtobuf;
  v4 = [(_MRMusicHandoffEventProtobuf *)&v8 description];
  v5 = [(_MRMusicHandoffEventProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v3 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type == 1)
    {
      v7 = @"MRMusicHandoffEventTypeSucceeded";
    }

    else if (type == 2)
    {
      v7 = @"MRMusicHandoffEventTypeFailed";
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    [v4 setObject:v7 forKey:@"type"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_sessionIdentifier)
  {
    v5 = v4;
    [v4 setSessionIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_type;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(v4 + 1))
  {
    if (![(NSString *)sessionIdentifier isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_type == *(v4 + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(_MRMusicHandoffEventProtobuf *)self setSessionIdentifier:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_type = v4[4];
    *&self->_has |= 1u;
  }
}

@end