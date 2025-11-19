@interface DMCLoggingSupport(Enrollments)
- (void)enableDebugLoggingForAppPreservation;
- (void)enableDebugLoggingForEnrollment;
@end

@implementation DMCLoggingSupport(Enrollments)

- (void)enableDebugLoggingForEnrollment
{
  v2 = [a1 _bundleIDsForDeviceManagementProcesses];
  v5 = [v2 mutableCopy];

  v3 = [a1 _bundleIDsForEnrollmentHostingApps];
  [v5 addObjectsFromArray:v3];

  [a1 enableDebugLoggingForProcesses:v5];
  v4 = [a1 _deviceManagementSubsystems];
  [a1 enableDebugLoggingForSubsystems:v4];
}

- (void)enableDebugLoggingForAppPreservation
{
  v2 = [a1 _bundleIDsForAppRelatedProcesses];
  [a1 enableDebugLoggingForProcesses:v2];

  v3 = [a1 _appRelatedSubsystems];
  [a1 enableDebugLoggingForSubsystems:v3];
}

@end