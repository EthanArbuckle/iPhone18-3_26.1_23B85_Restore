@interface ICASOsInstallVariant
- (ICASOsInstallVariant)initWithOsInstallVariant:(int64_t)variant;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASOsInstallVariant

- (ICASOsInstallVariant)initWithOsInstallVariant:(int64_t)variant
{
  v5.receiver = self;
  v5.super_class = ICASOsInstallVariant;
  result = [(ICASOsInstallVariant *)&v5 init];
  if (result)
  {
    result->_osInstallVariant = variant;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  osInstallVariant = [(ICASOsInstallVariant *)self osInstallVariant];
  v4 = @"unknown";
  if (osInstallVariant == 1)
  {
    v4 = @"internal";
  }

  if (osInstallVariant == 2)
  {
    return @"external";
  }

  else
  {
    return v4;
  }
}

@end