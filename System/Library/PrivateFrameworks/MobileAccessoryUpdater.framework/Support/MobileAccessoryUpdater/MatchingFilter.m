@interface MatchingFilter
- (MatchingFilter)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MatchingFilter

- (MatchingFilter)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MatchingFilter;
  v4 = [(MatchingFilter *)&v6 init];
  if (v4)
  {
    v4->filterName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"filterName"];
    v4->filterReadableName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"filterCommonName"];
    v4->needsBootstrapping = [a3 decodeBoolForKey:@"needsBootstrapping"];
    v4->needsQueryDevices = [a3 decodeBoolForKey:@"needsQueryDevices"];
    v4->needsPeriodicFirmwareCheck = [a3 decodeBoolForKey:@"needsPeriodicFirmwareCheck"];
    v4->needsDeviceIdleCheck = [a3 decodeBoolForKey:@"needsDeviceIdleCheck"];
    v4->noPowerAssertion = [a3 decodeBoolForKey:@"noPowerAssertion"];
    v4->needsMayRebootCheck = [a3 decodeBoolForKey:@"needsMayRebootCheck"];
    v4->needsInstallerCheck = [a3 decodeBoolForKey:@"needsInstallerCheck"];
    v4->needsMultiUpdateCheck = [a3 decodeBoolForKey:@"needsMultiUpdateCheck"];
    v4->eaOverHIDAccessory = [a3 decodeBoolForKey:@"eaOverHIDAccessory"];
    v4->filterType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"filterType"];
    v7[0] = objc_opt_class();
    v7[1] = objc_opt_class();
    v7[2] = objc_opt_class();
    v7[3] = objc_opt_class();
    v4->filter = [a3 decodeObjectOfClasses:+[NSSet setWithArray:](NSSet forKey:{"setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v7, 4)), @"filter"}];
    v4->exclusionGroup = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"exclusionGroup"];
    v4->silentUpdateNoUI = [a3 decodeBoolForKey:@"silentUpdateNoUI"];
    v4->stopOnBootstrapFailure = [a3 decodeBoolForKey:@"stopOnBootstrapFailure"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->filterName forKey:@"filterName"];
  [a3 encodeObject:self->filterReadableName forKey:@"filterCommonName"];
  [a3 encodeBool:self->needsBootstrapping forKey:@"needsBootstrapping"];
  [a3 encodeBool:self->needsQueryDevices forKey:@"needsQueryDevices"];
  [a3 encodeBool:self->needsPeriodicFirmwareCheck forKey:@"needsPeriodicFirmwareCheck"];
  [a3 encodeBool:self->needsDeviceIdleCheck forKey:@"needsDeviceIdleCheck"];
  [a3 encodeBool:self->noPowerAssertion forKey:@"noPowerAssertion"];
  [a3 encodeBool:self->needsMayRebootCheck forKey:@"needsMayRebootCheck"];
  [a3 encodeBool:self->needsInstallerCheck forKey:@"needsInstallerCheck"];
  [a3 encodeBool:self->needsMultiUpdateCheck forKey:@"needsMultiUpdateCheck"];
  [a3 encodeBool:self->eaOverHIDAccessory forKey:@"eaOverHIDAccessory"];
  [a3 encodeObject:self->filterType forKey:@"filterType"];
  [a3 encodeObject:self->filter forKey:@"filter"];
  [a3 encodeObject:self->exclusionGroup forKey:@"exclusionGroup"];
  [a3 encodeBool:self->silentUpdateNoUI forKey:@"silentUpdateNoUI"];
  stopOnBootstrapFailure = self->stopOnBootstrapFailure;

  [a3 encodeBool:stopOnBootstrapFailure forKey:@"stopOnBootstrapFailure"];
}

@end