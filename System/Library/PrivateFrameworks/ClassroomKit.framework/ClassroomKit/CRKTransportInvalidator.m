@interface CRKTransportInvalidator
+ (void)invalidateTransport:(id)a3;
+ (void)invalidateTransportOperationDidFinish:(id)a3;
@end

@implementation CRKTransportInvalidator

+ (void)invalidateTransport:(id)a3
{
  v4 = a3;
  v6 = [[CRKInvalidateTransportOperation alloc] initWithTransport:v4];

  [(CRKInvalidateTransportOperation *)v6 addTarget:a1 selector:sel_invalidateTransportOperationDidFinish_ forOperationEvents:6];
  v5 = [MEMORY[0x277CF9540] crk_backgroundQueue];
  [v5 addOperation:v6];
}

+ (void)invalidateTransportOperationDidFinish:(id)a3
{
  v3 = [a3 error];
  if (v3)
  {
    if (_CRKLogGeneral_onceToken_4 != -1)
    {
      +[CRKTransportInvalidator invalidateTransportOperationDidFinish:];
    }

    v4 = _CRKLogGeneral_logObj_4;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_4, OS_LOG_TYPE_ERROR))
    {
      [(CRKTransportInvalidator *)v4 invalidateTransportOperationDidFinish:v3];
    }
  }
}

+ (void)invalidateTransportOperationDidFinish:(void *)a1 .cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 verboseDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "Transport invalidator failed to invalidate transport: %{public}@", &v5, 0xCu);
}

@end