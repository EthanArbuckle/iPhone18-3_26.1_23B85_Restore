@interface NCOpenCameraRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSupportedCaptureModes:(id)modes;
- (int)supportedCaptureModeAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NCOpenCameraRequest

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NCOpenCameraRequest;
  [(NCOpenCameraRequest *)&v3 dealloc];
}

- (int)supportedCaptureModeAtIndex:(unint64_t)index
{
  p_supportedCaptureModes = &self->_supportedCaptureModes;
  count = self->_supportedCaptureModes.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_supportedCaptureModes->list[index];
}

- (int)StringAsSupportedCaptureModes:(id)modes
{
  modesCopy = modes;
  if ([modesCopy isEqualToString:@"Photo"])
  {
    v4 = 0;
  }

  else if ([modesCopy isEqualToString:@"Video"])
  {
    v4 = 1;
  }

  else if ([modesCopy isEqualToString:@"Square"])
  {
    v4 = 3;
  }

  else if ([modesCopy isEqualToString:@"Timelapse"])
  {
    v4 = 5;
  }

  else if ([modesCopy isEqualToString:@"Portrait"])
  {
    v4 = 7;
  }

  else if ([modesCopy isEqualToString:@"Slomo"])
  {
    v4 = 8;
  }

  else if ([modesCopy isEqualToString:@"Panorama"])
  {
    v4 = 9;
  }

  else if ([modesCopy isEqualToString:@"Cinematic"])
  {
    v4 = 10;
  }

  else if ([modesCopy isEqualToString:@"SpatialVideo"])
  {
    v4 = 11;
  }

  else if ([modesCopy isEqualToString:@"SpatialPhoto"])
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
  dictionaryRepresentation = [(NCOpenCameraRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NCOpenCameraRequest *)self supportedCaptureModesCount])
  {
    [toCopy clearSupportedCaptureModes];
    supportedCaptureModesCount = [(NCOpenCameraRequest *)self supportedCaptureModesCount];
    if (supportedCaptureModesCount)
    {
      v5 = supportedCaptureModesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addSupportedCaptureMode:{-[NCOpenCameraRequest supportedCaptureModeAtIndex:](self, "supportedCaptureModeAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  supportedCaptureModesCount = [fromCopy supportedCaptureModesCount];
  if (supportedCaptureModesCount)
  {
    v5 = supportedCaptureModesCount;
    for (i = 0; i != v5; ++i)
    {
      -[NCOpenCameraRequest addSupportedCaptureMode:](self, "addSupportedCaptureMode:", [fromCopy supportedCaptureModeAtIndex:i]);
    }
  }
}

@end