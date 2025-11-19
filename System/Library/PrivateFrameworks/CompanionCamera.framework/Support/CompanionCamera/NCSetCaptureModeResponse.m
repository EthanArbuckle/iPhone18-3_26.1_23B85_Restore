@interface NCSetCaptureModeResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureMode:(id)a3;
- (int)captureMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCSetCaptureModeResponse

- (int)captureMode
{
  if (*&self->_has)
  {
    return self->_captureMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCaptureMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Photo"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Video"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Square"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Timelapse"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Portrait"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Slomo"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Panorama"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Cinematic"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SpatialVideo"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SpatialPhoto"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetCaptureModeResponse;
  v3 = [(NCSetCaptureModeResponse *)&v7 description];
  v4 = [(NCSetCaptureModeResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    captureMode = self->_captureMode;
    if (captureMode < 0xD && ((0x1FABu >> captureMode) & 1) != 0)
    {
      v6 = *(&off_100035058 + captureMode);
    }

    else
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_captureMode];
    }

    [v3 setObject:v6 forKey:@"captureMode"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_success];
    [v3 setObject:v7 forKey:@"success"];
  }

  internalState = self->_internalState;
  if (internalState)
  {
    v9 = [(NCCameraStateChangedRequest *)internalState dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"internalState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    captureMode = self->_captureMode;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_internalState)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_captureMode;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 24) = self->_success;
    *(v4 + 28) |= 2u;
  }

  if (self->_internalState)
  {
    v6 = v4;
    [v4 setInternalState:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 2) = self->_captureMode;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 2u;
  }

  v8 = [(NCCameraStateChangedRequest *)self->_internalState copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_captureMode != *(v4 + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_12;
  }

  v9 = *(v4 + 24);
  if (self->_success)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_12;
  }

LABEL_9:
  internalState = self->_internalState;
  if (internalState | *(v4 + 2))
  {
    v7 = [(NCCameraStateChangedRequest *)internalState isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_13:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_captureMode;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NCCameraStateChangedRequest *)self->_internalState hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_success;
  return v7 ^ v6 ^ [(NCCameraStateChangedRequest *)self->_internalState hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if (v6)
  {
    self->_captureMode = *(v4 + 2);
    *&self->_has |= 1u;
    v6 = *(v4 + 28);
  }

  if ((v6 & 2) != 0)
  {
    self->_success = *(v4 + 24);
    *&self->_has |= 2u;
  }

  internalState = self->_internalState;
  v8 = v5[2];
  if (internalState)
  {
    if (v8)
    {
      [(NCCameraStateChangedRequest *)internalState mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(NCSetCaptureModeResponse *)self setInternalState:?];
  }

  _objc_release_x1();
}

@end