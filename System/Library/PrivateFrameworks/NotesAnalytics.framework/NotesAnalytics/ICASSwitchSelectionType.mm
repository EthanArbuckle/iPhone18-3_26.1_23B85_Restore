@interface ICASSwitchSelectionType
- (ICASSwitchSelectionType)initWithSwitchSelectionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASSwitchSelectionType

- (ICASSwitchSelectionType)initWithSwitchSelectionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASSwitchSelectionType;
  result = [(ICASSwitchSelectionType *)&v5 init];
  if (result)
  {
    result->_switchSelectionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  switchSelectionType = [(ICASSwitchSelectionType *)self switchSelectionType];
  v4 = @"unknown";
  if (switchSelectionType == 1)
  {
    v4 = @"on";
  }

  if (switchSelectionType == 2)
  {
    return @"off";
  }

  else
  {
    return v4;
  }
}

@end