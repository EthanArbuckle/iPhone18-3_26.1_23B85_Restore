@interface CRKShareTargetBrowserTransportFactory
- (id)makeInstructordTransportProvider;
- (id)makeStudentdTransportProvider;
- (void)makeInstructordTransportWithCompletion:(id)a3;
- (void)makeStudentdTransportWithCompletion:(id)a3;
@end

@implementation CRKShareTargetBrowserTransportFactory

- (void)makeStudentdTransportWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKShareTargetBrowserTransportFactory *)self makeStudentdTransportProvider];
  [v5 fetchTransportWithCompletion:v4];
}

- (id)makeStudentdTransportProvider
{
  v2 = objc_opt_new();
  v3 = [[CRKFailIfMacAndUnenrolledStudentdTransportProvider alloc] initWithTransportProvider:v2];

  return v3;
}

- (void)makeInstructordTransportWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKShareTargetBrowserTransportFactory *)self makeInstructordTransportProvider];
  [v5 fetchTransportWithCompletion:v4];
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