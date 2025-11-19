@interface NCOpenCameraResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOpenState:(id)a3;
- (int)openState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCOpenCameraResponse

- (int)openState
{
  if (*&self->_has)
  {
    return self->_openState;
  }

  else
  {
    return 2;
  }
}

- (int)StringAsOpenState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Open"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Opening"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Closed"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCOpenCameraResponse;
  v3 = [(NCOpenCameraResponse *)&v7 description];
  v4 = [(NCOpenCameraResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    openState = self->_openState;
    if (openState >= 3)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_openState];
    }

    else
    {
      v5 = *(&off_100034DD0 + openState);
    }

    [v3 setObject:v5 forKey:@"openState"];
  }

  internalState = self->_internalState;
  if (internalState)
  {
    v7 = [(NCCameraStateChangedRequest *)internalState dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"internalState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    openState = self->_openState;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_internalState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_openState;
    *(v4 + 20) |= 1u;
  }

  if (self->_internalState)
  {
    v5 = v4;
    [v4 setInternalState:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_openState;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NCCameraStateChangedRequest *)self->_internalState copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_openState != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  internalState = self->_internalState;
  if (internalState | *(v4 + 1))
  {
    v7 = [(NCCameraStateChangedRequest *)internalState isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_openState;
  }

  else
  {
    v2 = 0;
  }

  return [(NCCameraStateChangedRequest *)self->_internalState hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_openState = v4[4];
    *&self->_has |= 1u;
  }

  internalState = self->_internalState;
  v7 = *(v5 + 1);
  if (internalState)
  {
    if (v7)
    {
      [(NCCameraStateChangedRequest *)internalState mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(NCOpenCameraResponse *)self setInternalState:?];
  }

  _objc_release_x1();
}

@end