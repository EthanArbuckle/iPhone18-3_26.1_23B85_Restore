@interface NCOpenCameraRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSupportedCaptureModes:(id)a3;
- (int)supportedCaptureModeAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCOpenCameraRequest

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NCOpenCameraRequest;
  [(NCOpenCameraRequest *)&v3 dealloc];
}

- (int)supportedCaptureModeAtIndex:(unint64_t)a3
{
  p_supportedCaptureModes = &self->_supportedCaptureModes;
  count = self->_supportedCaptureModes.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_supportedCaptureModes->list[a3];
}

- (int)StringAsSupportedCaptureModes:(id)a3
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
  v7.super_class = NCOpenCameraRequest;
  v3 = [(NCOpenCameraRequest *)&v7 description];
  v4 = [(NCOpenCameraRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  p_supportedCaptureModes = &self->_supportedCaptureModes;
  if (self->_supportedCaptureModes.count)
  {
    v5 = [NSMutableArray arrayWithCapacity:?];
    if (p_supportedCaptureModes->count)
    {
      v6 = 0;
      do
      {
        v7 = p_supportedCaptureModes->list[v6];
        if (v7 < 0xD && ((0x1FABu >> v7) & 1) != 0)
        {
          v8 = *(&off_100034D68 + v7);
        }

        else
        {
          v8 = [NSString stringWithFormat:@"(unknown: %i)", p_supportedCaptureModes->list[v6]];
        }

        [v5 addObject:v8];

        ++v6;
      }

      while (v6 < p_supportedCaptureModes->count);
    }

    [v3 setObject:v5 forKey:@"supportedCaptureMode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  p_supportedCaptureModes = &self->_supportedCaptureModes;
  if (self->_supportedCaptureModes.count)
  {
    v4 = 0;
    do
    {
      v5 = p_supportedCaptureModes->list[v4];
      PBDataWriterWriteInt32Field();
      ++v4;
    }

    while (v4 < p_supportedCaptureModes->count);
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(NCOpenCameraRequest *)self supportedCaptureModesCount])
  {
    [v7 clearSupportedCaptureModes];
    v4 = [(NCOpenCameraRequest *)self supportedCaptureModesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addSupportedCaptureMode:{-[NCOpenCameraRequest supportedCaptureModeAtIndex:](self, "supportedCaptureModeAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 supportedCaptureModesCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[NCOpenCameraRequest addSupportedCaptureMode:](self, "addSupportedCaptureMode:", [v7 supportedCaptureModeAtIndex:i]);
    }
  }
}

@end