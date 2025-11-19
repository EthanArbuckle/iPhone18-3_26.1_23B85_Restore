@interface NCSetCaptureDeviceRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureDevice:(id)a3;
- (int)captureDevice;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsCaptureDevice:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Back"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Front"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetCaptureDeviceRequest;
  v3 = [(NCSetCaptureDeviceRequest *)&v7 description];
  v4 = [(NCSetCaptureDeviceRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    captureDevice = self->_captureDevice;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_captureDevice;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_captureDevice;
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
    if ((*(v4 + 12) & 1) != 0 && self->_captureDevice == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_captureDevice = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end