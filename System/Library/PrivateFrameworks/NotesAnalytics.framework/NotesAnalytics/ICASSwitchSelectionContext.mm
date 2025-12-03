@interface ICASSwitchSelectionContext
- (ICASSwitchSelectionContext)initWithSwitchSelectionContext:(int64_t)context;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASSwitchSelectionContext

- (ICASSwitchSelectionContext)initWithSwitchSelectionContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = ICASSwitchSelectionContext;
  result = [(ICASSwitchSelectionContext *)&v5 init];
  if (result)
  {
    result->_switchSelectionContext = context;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  switchSelectionContext = [(ICASSwitchSelectionContext *)self switchSelectionContext];
  v4 = @"unknown";
  if (switchSelectionContext == 1)
  {
    v4 = @"inAppAlert";
  }

  if (switchSelectionContext == 2)
  {
    return @"fromDeviceSettings";
  }

  else
  {
    return v4;
  }
}

@end