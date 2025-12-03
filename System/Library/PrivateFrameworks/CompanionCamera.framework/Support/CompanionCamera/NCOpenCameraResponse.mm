@interface NCOpenCameraResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOpenState:(id)state;
- (int)openState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsOpenState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Open"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"Opening"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"Closed"])
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
  dictionaryRepresentation = [(NCOpenCameraResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(NCCameraStateChangedRequest *)internalState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"internalState"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    openState = self->_openState;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_internalState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_openState;
    *(toCopy + 20) |= 1u;
  }

  if (self->_internalState)
  {
    v5 = toCopy;
    [toCopy setInternalState:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_openState;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NCCameraStateChangedRequest *)self->_internalState copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_openState != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  internalState = self->_internalState;
  if (internalState | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_openState = fromCopy[4];
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