@interface GTTelemetryLayerObject
- (GTTelemetryLayerObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTTelemetryLayerObject

- (GTTelemetryLayerObject)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GTTelemetryLayerObject;
  v5 = [(GTTelemetryLayerObject *)&v9 init];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_frames = [v4 decodeInt64ForKey:@"frames"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fps"];
    fps = v5->_fps;
    v5->_fps = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  streamRef = self->_streamRef;
  v5 = a3;
  [v5 encodeInt64:streamRef forKey:@"streamRef"];
  [v5 encodeInt64:self->_frames forKey:@"frames"];
  [v5 encodeObject:self->_fps forKey:@"fps"];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = GTTelemetryLayerObject;
  v2 = [(GTTelemetryLayerObject *)&v4 description];

  return v2;
}

@end