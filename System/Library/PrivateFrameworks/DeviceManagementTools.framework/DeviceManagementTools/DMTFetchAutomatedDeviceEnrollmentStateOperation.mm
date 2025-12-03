@interface DMTFetchAutomatedDeviceEnrollmentStateOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
- (DMTFetchAutomatedDeviceEnrollmentStateOperation)initWithRequest:(id)request enrollmentStateProvider:(id)provider;
- (void)runWithRequest:(id)request;
@end

@implementation DMTFetchAutomatedDeviceEnrollmentStateOperation

- (DMTFetchAutomatedDeviceEnrollmentStateOperation)initWithRequest:(id)request enrollmentStateProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = DMTFetchAutomatedDeviceEnrollmentStateOperation;
  v8 = [(CATTaskOperation *)&v11 initWithRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_enrollmentStateProvider, provider);
  }

  return v9;
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___DMTFetchAutomatedDeviceEnrollmentStateOperation;
  if (!objc_msgSendSuper2(&v9, sel_validateRequest_error_, requestCopy, error))
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      DMTErrorWithCodeAndUserInfo(2, &unk_285B5BD48);
      *error = v7 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (void)runWithRequest:(id)request
{
  if ([(DMTFetchAutomatedDeviceEnrollmentStateOperation *)self isExecuting])
  {
    if ([(DMTFetchAutomatedDeviceEnrollmentStateOperation *)self isCancelled])
    {
      v5 = CATErrorWithCodeAndUserInfo();
      [(DMTFetchAutomatedDeviceEnrollmentStateOperation *)self endOperationWithError:?];
    }

    else
    {
      v5 = objc_opt_new();
      enrollmentStateProvider = [(DMTFetchAutomatedDeviceEnrollmentStateOperation *)self enrollmentStateProvider];
      [v5 setEnrollmentState:{objc_msgSend(enrollmentStateProvider, "enrollmentState")}];

      [(DMTFetchAutomatedDeviceEnrollmentStateOperation *)self endOperationWithResultObject:v5];
    }
  }
}

@end