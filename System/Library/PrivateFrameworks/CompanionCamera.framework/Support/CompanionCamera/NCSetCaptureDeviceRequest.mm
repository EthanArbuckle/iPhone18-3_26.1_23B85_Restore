@interface NCSetCaptureDeviceRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureDevice:(id)device;
- (int)captureDevice;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NCSetCaptureDeviceRequest

- (int)captureDevice
{
  if (*&self->_has)
  {
    return self->_captureDevice;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCaptureDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isEqualToString:@"Back"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [deviceCopy isEqualToString:@"Front"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetCaptureDeviceRequest;
  v3 = [(NCSetCaptureDeviceRequest *)&v7 description];
  dictionaryRepresentation = [(NCSetCaptureDeviceRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    captureDevice = self->_captureDevice;
    if (captureDevice)
    {
      if (captureDevice == 1)
      {
        v5 = @"Front";
      }

      else
      {
        v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_captureDevice];
      }
    }

    else
    {
      v5 = @"Back";
    }

    [v3 setObject:v5 forKey:@"captureDevice"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    captureDevice = self->_captureDevice;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_captureDevice;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_captureDevice;
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
    if ((*(equalCopy + 12) & 1) != 0 && self->_captureDevice == *(equalCopy + 2))
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
    return 2654435761 * self->_captureDevice;
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
    self->_captureDevice = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end