@interface DYCAMetalLayerInfo
- (BOOL)isEqual:(id)equal;
- (CGRect)frame;
- (DYCAMetalLayerInfo)initWithCoder:(id)coder;
@end

@implementation DYCAMetalLayerInfo

- (DYCAMetalLayerInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DYCAMetalLayerInfo;
  v5 = [(DYCAMetalLayerInfo *)&v15 init];
  if (v5)
  {
    v5->_deviceAddress = [coderCopy decodeInt64ForKey:@"deviceAddress"];
    v5->_layerAddress = [coderCopy decodeInt64ForKey:@"layerAddress"];
    v5->_layerStreamRef = [coderCopy decodeInt64ForKey:@"layerStreamRef"];
    [coderCopy decodeCGRectForKey:@"frame"];
    v5->_frame.origin.x = v6;
    v5->_frame.origin.y = v7;
    v5->_frame.size.width = v8;
    v5->_frame.size.height = v9;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_layerAddress == equalCopy[3];

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