@interface MatchingFilter
- (MatchingFilter)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MatchingFilter

- (MatchingFilter)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MatchingFilter;
  v4 = [(MatchingFilter *)&v6 init];
  if (v4)
  {
    v4->filterName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"filterName"];
    v4->filterReadableName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"filterCommonName"];
    v4->needsBootstrapping = [coder decodeBoolForKey:@"needsBootstrapping"];
    v4->needsQueryDevices = [coder decodeBoolForKey:@"needsQueryDevices"];
    v4->needsPeriodicFirmwareCheck = [coder decodeBoolForKey:@"needsPeriodicFirmwareCheck"];
    v4->needsDeviceIdleCheck = [coder decodeBoolForKey:@"needsDeviceIdleCheck"];
    v4->noPowerAssertion = [coder decodeBoolForKey:@"noPowerAssertion"];
    v4->needsMayRebootCheck = [coder decodeBoolForKey:@"needsMayRebootCheck"];
    v4->needsInstallerCheck = [coder decodeBoolForKey:@"needsInstallerCheck"];
    v4->needsMultiUpdateCheck = [coder decodeBoolForKey:@"needsMultiUpdateCheck"];
    v4->eaOverHIDAccessory = [coder decodeBoolForKey:@"eaOverHIDAccessory"];
    v4->filterType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"filterType"];
    v7[0] = objc_opt_class();
    v7[1] = objc_opt_class();
    v7[2] = objc_opt_class();
    v7[3] = objc_opt_class();
    v4->filter = [coder decodeObjectOfClasses:+[NSSet setWithArray:](NSSet forKey:{"setWithArray:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v7, 4)), @"filter"}];
    v4->exclusionGroup = [coder decodeObjectOfClass:objc_opt_class() forKey:@"exclusionGroup"];
    v4->silentUpdateNoUI = [coder decodeBoolForKey:@"silentUpdateNoUI"];
    v4->stopOnBootstrapFailure = [coder decodeBoolForKey:@"stopOnBootstrapFailure"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->filterName forKey:@"filterName"];
  [coder encodeObject:self->filterReadableName forKey:@"filterCommonName"];
  [coder encodeBool:self->needsBootstrapping forKey:@"needsBootstrapping"];
  [coder encodeBool:self->needsQueryDevices forKey:@"needsQueryDevices"];
  [coder encodeBool:self->needsPeriodicFirmwareCheck forKey:@"needsPeriodicFirmwareCheck"];
  [coder encodeBool:self->needsDeviceIdleCheck forKey:@"needsDeviceIdleCheck"];
  [coder encodeBool:self->noPowerAssertion forKey:@"noPowerAssertion"];
  [coder encodeBool:self->needsMayRebootCheck forKey:@"needsMayRebootCheck"];
  [coder encodeBool:self->needsInstallerCheck forKey:@"needsInstallerCheck"];
  [coder encodeBool:self->needsMultiUpdateCheck forKey:@"needsMultiUpdateCheck"];
  [coder encodeBool:self->eaOverHIDAccessory forKey:@"eaOverHIDAccessory"];
  [coder encodeObject:self->filterType forKey:@"filterType"];
  [coder encodeObject:self->filter forKey:@"filter"];
  [coder encodeObject:self->exclusionGroup forKey:@"exclusionGroup"];
  [coder encodeBool:self->silentUpdateNoUI forKey:@"silentUpdateNoUI"];
  stopOnBootstrapFailure = self->stopOnBootstrapFailure;

  [coder encodeBool:stopOnBootstrapFailure forKey:@"stopOnBootstrapFailure"];
}

@end