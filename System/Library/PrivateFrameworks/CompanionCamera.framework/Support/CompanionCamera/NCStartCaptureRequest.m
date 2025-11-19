@interface NCStartCaptureRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureMode:(id)a3;
- (int)captureMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCStartCaptureRequest

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCStartCaptureRequest;
  v3 = [(NCStartCaptureRequest *)&v7 description];
  v4 = [(NCStartCaptureRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    captureMode = self->_captureMode;
    if (captureMode < 0xD && ((0x1FABu >> captureMode) & 1) != 0)
    {
      v5 = *(&off_100035150 + captureMode);
    }

    else
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_captureMode];
    }

    [v3 setObject:v5 forKey:@"captureMode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    captureMode = self->_captureMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_captureMode;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_captureMode;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_captureMode == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_captureMode;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_captureMode = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end