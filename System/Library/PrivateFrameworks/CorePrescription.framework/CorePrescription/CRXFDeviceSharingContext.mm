@interface CRXFDeviceSharingContext
- (CRXFDeviceSharingContext)init;
- (void)validateAndApplyLensEnrollmentAssetsWithCompletion:(id)completion;
@end

@implementation CRXFDeviceSharingContext

- (CRXFDeviceSharingContext)init
{
  v13.receiver = self;
  v13.super_class = CRXFDeviceSharingContext;
  v2 = [(CRXFDeviceSharingContext *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = CRXFLoggingSubsystem;
    ClassName = object_getClassName(v2);
    v6 = os_log_create(v4, ClassName);
    log = v3->_log;
    v3->_log = v6;

    v8 = [CRXUDispatchQueue serialQueueWithName:@"com.apple.CorePrescription.DeviceSharingContextQueue"];
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v8;

    v10 = [[CRXFCorePrescriptionServiceClient alloc] initWithServer:0 serverVersion:0 timeout:5.0];
    serviceClient = v3->_serviceClient;
    v3->_serviceClient = v10;
  }

  return v3;
}

- (void)validateAndApplyLensEnrollmentAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  p_serialQueue = &self->_serialQueue;
  serialQueue = self->_serialQueue;
  v6 = p_serialQueue[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__CRXFDeviceSharingContext_validateAndApplyLensEnrollmentAssetsWithCompletion___block_invoke;
  v9[3] = &unk_278E9FF60;
  v10 = completionCopy;
  v8 = completionCopy;
  [(CRXUDispatchQueue *)v6 validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue:serialQueue completion:v9];
}

@end