@interface CRKInstructorExtensionOptimizerShim
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)didAcceptAdminTransport:(id)a3;
@end

@implementation CRKInstructorExtensionOptimizerShim

- (void)didAcceptAdminTransport:(id)a3
{
  v3 = a3;
  v4 = _CRKLogGeneral_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CRKInstructorExtensionOptimizerShim *)v3 didAcceptAdminTransport:v4];
  }
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v3 = a3;
  v4 = _CRKLogGeneral_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CRKInstructorExtensionOptimizerShim *)v3 beginRequestWithExtensionContext:v4];
  }
}

- (void)didAcceptAdminTransport:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "(SHOULD NOT BE CALLED) CRKInstructorExtensionOptimizerShim didAcceptAdminTransport: %{public}@", &v2, 0xCu);
}

- (void)beginRequestWithExtensionContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "(SHOULD NOT BE CALLED) CRKInstructorExtensionOptimizerShim beginRequestWithExtensionContext: %{public}@", &v2, 0xCu);
}

@end