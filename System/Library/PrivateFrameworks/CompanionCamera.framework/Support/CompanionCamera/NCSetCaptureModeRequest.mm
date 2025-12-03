@interface NCSetCaptureModeRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureMode:(id)mode;
- (int)captureMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NCSetCaptureModeRequest

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

- (int)StringAsCaptureMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Photo"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Video"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Square"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"Timelapse"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"Portrait"])
  {
    v4 = 7;
  }

  else if ([modeCopy isEqualToString:@"Slomo"])
  {
    v4 = 8;
  }

  else if ([modeCopy isEqualToString:@"Panorama"])
  {
    v4 = 9;
  }

  else if ([modeCopy isEqualToString:@"Cinematic"])
  {
    v4 = 10;
  }

  else if ([modeCopy isEqualToString:@"SpatialVideo"])
  {
    v4 = 11;
  }

  else if ([modeCopy isEqualToString:@"SpatialPhoto"])
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
  v7.super_class = NCSetCaptureModeRequest;
  v3 = [(NCSetCaptureModeRequest *)&v7 description];
  dictionaryRepresentation = [(NCSetCaptureModeRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
      v5 = *(&off_100034FF0 + captureMode);
    }

    else
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_captureMode];
    }

    [v3 setObject:v5 forKey:@"captureMode"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    captureMode = self->_captureMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_captureMode;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_captureMode;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_captureMode == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_captureMode = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end