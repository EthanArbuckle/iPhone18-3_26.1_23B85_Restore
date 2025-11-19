@interface ICASOsInstallVariant
- (ICASOsInstallVariant)initWithOsInstallVariant:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASOsInstallVariant

- (ICASOsInstallVariant)initWithOsInstallVariant:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASOsInstallVariant;
  result = [(ICASOsInstallVariant *)&v5 init];
  if (result)
  {
    result->_osInstallVariant = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASOsInstallVariant *)self osInstallVariant];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"internal";
  }

  if (v3 == 2)
  {
    return @"external";
  }

  else
  {
    return v4;
  }
}

@end