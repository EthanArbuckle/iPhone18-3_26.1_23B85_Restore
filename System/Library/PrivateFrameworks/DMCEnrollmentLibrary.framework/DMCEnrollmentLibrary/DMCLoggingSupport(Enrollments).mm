@interface DMCLoggingSupport(Enrollments)
- (void)enableDebugLoggingForAppPreservation;
- (void)enableDebugLoggingForEnrollment;
@end

@implementation DMCLoggingSupport(Enrollments)

- (void)enableDebugLoggingForEnrollment
{
  _bundleIDsForDeviceManagementProcesses = [self _bundleIDsForDeviceManagementProcesses];
  v5 = [_bundleIDsForDeviceManagementProcesses mutableCopy];

  _bundleIDsForEnrollmentHostingApps = [self _bundleIDsForEnrollmentHostingApps];
  [v5 addObjectsFromArray:_bundleIDsForEnrollmentHostingApps];

  [self enableDebugLoggingForProcesses:v5];
  _deviceManagementSubsystems = [self _deviceManagementSubsystems];
  [self enableDebugLoggingForSubsystems:_deviceManagementSubsystems];
}

- (void)enableDebugLoggingForAppPreservation
{
  _bundleIDsForAppRelatedProcesses = [self _bundleIDsForAppRelatedProcesses];
  [self enableDebugLoggingForProcesses:_bundleIDsForAppRelatedProcesses];

  _appRelatedSubsystems = [self _appRelatedSubsystems];
  [self enableDebugLoggingForSubsystems:_appRelatedSubsystems];
}

@end