@interface ICASSwitchSelectionContext
- (ICASSwitchSelectionContext)initWithSwitchSelectionContext:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASSwitchSelectionContext

- (ICASSwitchSelectionContext)initWithSwitchSelectionContext:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASSwitchSelectionContext;
  result = [(ICASSwitchSelectionContext *)&v5 init];
  if (result)
  {
    result->_switchSelectionContext = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASSwitchSelectionContext *)self switchSelectionContext];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"inAppAlert";
  }

  if (v3 == 2)
  {
    return @"fromDeviceSettings";
  }

  else
  {
    return v4;
  }
}

@end