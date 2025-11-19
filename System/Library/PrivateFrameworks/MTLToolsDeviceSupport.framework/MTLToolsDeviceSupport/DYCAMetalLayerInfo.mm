@interface DYCAMetalLayerInfo
- (BOOL)isEqual:(id)a3;
- (CGRect)frame;
- (DYCAMetalLayerInfo)initWithCoder:(id)a3;
@end

@implementation DYCAMetalLayerInfo

- (DYCAMetalLayerInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DYCAMetalLayerInfo;
  v5 = [(DYCAMetalLayerInfo *)&v15 init];
  if (v5)
  {
    v5->_deviceAddress = [v4 decodeInt64ForKey:@"deviceAddress"];
    v5->_layerAddress = [v4 decodeInt64ForKey:@"layerAddress"];
    v5->_layerStreamRef = [v4 decodeInt64ForKey:@"layerStreamRef"];
    [v4 decodeCGRectForKey:@"frame"];
    v5->_frame.origin.x = v6;
    v5->_frame.origin.y = v7;
    v5->_frame.size.width = v8;
    v5->_frame.size.height = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    if ([(NSString *)v5->_name length])
    {
      v12 = v5->_name;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%08llx [%.0f, %.0f %.0f×%.0f]", v5->_layerAddress, *&v5->_frame.origin.x, *&v5->_frame.origin.y, *&v5->_frame.size.width, *&v5->_frame.size.height];
    }

    displayName = v5->_displayName;
    v5->_displayName = v12;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_layerAddress == v4[3];

  return v6;
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