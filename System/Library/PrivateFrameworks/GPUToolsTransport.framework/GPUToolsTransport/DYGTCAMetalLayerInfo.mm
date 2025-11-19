@interface DYGTCAMetalLayerInfo
- (CGRect)frame;
- (DYGTCAMetalLayerInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYGTCAMetalLayerInfo

- (DYGTCAMetalLayerInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DYGTCAMetalLayerInfo;
  v5 = [(DYGTCAMetalLayerInfo *)&v13 init];
  if (v5)
  {
    v5->_deviceAddress = [v4 decodeInt64ForKey:@"deviceAddress"];
    v5->_deviceStreamRef = [v4 decodeInt64ForKey:@"deviceStreamRef"];
    v5->_layerAddress = [v4 decodeInt64ForKey:@"layerAddress"];
    v5->_layerStreamRef = [v4 decodeInt64ForKey:@"layerStreamRef"];
    [v4 decodeRectForKey:@"frame"];
    v5->_frame.origin.x = v6;
    v5->_frame.origin.y = v7;
    v5->_frame.size.width = v8;
    v5->_frame.size.height = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceAddress = self->_deviceAddress;
  v5 = a3;
  [v5 encodeInt64:deviceAddress forKey:@"deviceAddress"];
  [v5 encodeInt64:self->_deviceStreamRef forKey:@"deviceStreamRef"];
  [v5 encodeInt64:self->_layerAddress forKey:@"layerAddress"];
  [v5 encodeInt64:self->_layerStreamRef forKey:@"layerStreamRef"];
  [v5 encodeRect:@"frame" forKey:{self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height}];
  [v5 encodeObject:self->_name forKey:@"name"];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end