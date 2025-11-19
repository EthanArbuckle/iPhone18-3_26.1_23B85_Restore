@interface NCSetCaptureDeviceResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCSetCaptureDeviceResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetCaptureDeviceResponse;
  v3 = [(NCSetCaptureDeviceResponse *)&v7 description];
  v4 = [(NCSetCaptureDeviceResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithBool:self->_success];
    [v3 setObject:v4 forKey:@"success"];
  }

  internalState = self->_internalState;
  if (internalState)
  {
    v6 = [(NCCameraStateChangedRequest *)internalState dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"internalState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
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
    v4[16] = self->_success;
    v4[20] |= 1u;
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
    *(v5 + 16) = self->_success;
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
    goto LABEL_7;
  }

  v5 = *(v4 + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 16);
  if (!self->_success)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(v4 + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  internalState = self->_internalState;
  if (internalState | *(v4 + 1))
  {
    v7 = [(NCCameraStateChangedRequest *)internalState isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_success;
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
  if (v4[20])
  {
    self->_success = v4[16];
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
    [(NCSetCaptureDeviceResponse *)self setInternalState:?];
  }

  _objc_release_x1();
}

@end