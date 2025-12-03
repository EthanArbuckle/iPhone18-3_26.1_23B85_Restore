@interface CRKShareTargetBrowserTransportFactory
- (id)makeInstructordTransportProvider;
- (id)makeStudentdTransportProvider;
- (void)makeInstructordTransportWithCompletion:(id)completion;
- (void)makeStudentdTransportWithCompletion:(id)completion;
@end

@implementation CRKShareTargetBrowserTransportFactory

- (void)makeStudentdTransportWithCompletion:(id)completion
{
  completionCopy = completion;
  makeStudentdTransportProvider = [(CRKShareTargetBrowserTransportFactory *)self makeStudentdTransportProvider];
  [makeStudentdTransportProvider fetchTransportWithCompletion:completionCopy];
}

- (id)makeStudentdTransportProvider
{
  v2 = objc_opt_new();
  v3 = [[CRKFailIfMacAndUnenrolledStudentdTransportProvider alloc] initWithTransportProvider:v2];

  return v3;
}

- (void)makeInstructordTransportWithCompletion:(id)completion
{
  completionCopy = completion;
  makeInstructordTransportProvider = [(CRKShareTargetBrowserTransportFactory *)self makeInstructordTransportProvider];
  [makeInstructordTransportProvider fetchTransportWithCompletion:completionCopy];
}

- (id)makeInstructordTransportProvider
{
  v2 = objc_opt_new();
  v3 = [[CRKFailIfMacWithoutClassroomTransportProvider alloc] initWithTransportProvider:v2];

  v4 = [CRKFailIfSimulatorTransportProvider alloc];
  v5 = CRKErrorWithCodeAndUserInfo(101, 0);
  v6 = [(CRKFailIfSimulatorTransportProvider *)v4 initWithTransportProvider:v3 failureError:v5];

  return v6;
}

@end