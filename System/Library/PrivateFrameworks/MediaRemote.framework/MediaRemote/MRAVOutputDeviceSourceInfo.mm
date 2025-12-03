@interface MRAVOutputDeviceSourceInfo
- (BOOL)isEqual:(id)equal;
- (MRAVOutputDeviceSourceInfo)initWithMultipleBuiltInDevices:(BOOL)devices sourceType:(int64_t)type;
- (id)description;
@end

@implementation MRAVOutputDeviceSourceInfo

- (MRAVOutputDeviceSourceInfo)initWithMultipleBuiltInDevices:(BOOL)devices sourceType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = MRAVOutputDeviceSourceInfo;
  result = [(MRAVOutputDeviceSourceInfo *)&v7 init];
  if (result)
  {
    result->_multipleBuiltInDevices = devices;
    result->_sourceType = type;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_multipleBuiltInDevices)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  return [v3 stringWithFormat:@"<%@:%p multipleBuiltIn = %s>", v4, self, v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->_multipleBuiltInDevices == [v5 multipleBuiltInDevices] && objc_msgSend(v5, "sourceType") == self->_sourceType;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end