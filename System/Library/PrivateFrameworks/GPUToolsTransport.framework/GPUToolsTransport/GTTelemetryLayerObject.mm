@interface GTTelemetryLayerObject
- (GTTelemetryLayerObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTTelemetryLayerObject

- (GTTelemetryLayerObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GTTelemetryLayerObject;
  v5 = [(GTTelemetryLayerObject *)&v9 init];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_frames = [coderCopy decodeInt64ForKey:@"frames"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fps"];
    fps = v5->_fps;
    v5->_fps = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  streamRef = self->_streamRef;
  coderCopy = coder;
  [coderCopy encodeInt64:streamRef forKey:@"streamRef"];
  [coderCopy encodeInt64:self->_frames forKey:@"frames"];
  [coderCopy encodeObject:self->_fps forKey:@"fps"];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = GTTelemetryLayerObject;
  v2 = [(GTTelemetryLayerObject *)&v4 description];

  return v2;
}

@end