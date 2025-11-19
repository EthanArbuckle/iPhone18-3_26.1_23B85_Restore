@interface BMPBUserFocusActivityEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBUserFocusActivityEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBUserFocusActivityEvent;
  v4 = [(BMPBUserFocusActivityEvent *)&v8 description];
  v5 = [(BMPBUserFocusActivityEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
    [v3 setObject:v4 forKey:@"isStart"];
  }

  mode = self->_mode;
  if (mode)
  {
    [v3 setObject:mode forKey:@"mode"];
  }

  clientID = self->_clientID;
  if (clientID)
  {
    [v3 setObject:clientID forKey:@"clientID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_mode)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[24] = self->_isStart;
    v4[28] |= 1u;
  }

  v5 = v4;
  if (self->_mode)
  {
    [v4 setMode:?];
    v4 = v5;
  }

  if (self->_clientID)
  {
    [v5 setClientID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_isStart;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_mode copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_clientID copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
    if (self->_isStart)
    {
      if (*(v4 + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  mode = self->_mode;
  if (mode | *(v4 + 2) && ![(NSString *)mode isEqual:?])
  {
    goto LABEL_9;
  }

  clientID = self->_clientID;
  if (clientID | *(v4 + 1))
  {
    v8 = [(NSString *)clientID isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isStart;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_mode hash]^ v3;
  return v4 ^ [(NSString *)self->_clientID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[28])
  {
    self->_isStart = v4[24];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(BMPBUserFocusActivityEvent *)self setMode:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(BMPBUserFocusActivityEvent *)self setClientID:?];
    v4 = v5;
  }
}

@end