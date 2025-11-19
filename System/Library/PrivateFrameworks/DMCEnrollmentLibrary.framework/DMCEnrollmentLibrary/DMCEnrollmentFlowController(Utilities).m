@interface DMCEnrollmentFlowController(Utilities)
@end

@implementation DMCEnrollmentFlowController(Utilities)

- (uint64_t)_fetchAppAttributesWithITunesItemID:()Utilities completionHandler:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [(DMCEnrollmentFlowController(Utilities) *)v0 _trustedErrors];
}

@end