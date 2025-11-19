@interface DMTFetchAutomatedDeviceEnrollmentStateOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
- (DMTFetchAutomatedDeviceEnrollmentStateOperation)initWithRequest:(id)a3 enrollmentStateProvider:(id)a4;
- (void)runWithRequest:(id)a3;
@end

@implementation DMTFetchAutomatedDeviceEnrollmentStateOperation

- (DMTFetchAutomatedDeviceEnrollmentStateOperation)initWithRequest:(id)a3 enrollmentStateProvider:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DMTFetchAutomatedDeviceEnrollmentStateOperation;
  v8 = [(CATTaskOperation *)&v11 initWithRequest:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_enrollmentStateProvider, a4);
  }

  return v9;
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___DMTFetchAutomatedDeviceEnrollmentStateOperation;
  if (!objc_msgSendSuper2(&v9, sel_validateRequest_error_, v6, a4))
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      DMTErrorWithCodeAndUserInfo(2, &unk_285B5BD48);
      *a4 = v7 = 0;
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

- (void)runWithRequest:(id)a3
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
      v4 = [(DMTFetchAutomatedDeviceEnrollmentStateOperation *)self enrollmentStateProvider];
      [v5 setEnrollmentState:{objc_msgSend(v4, "enrollmentState")}];

      [(DMTFetchAutomatedDeviceEnrollmentStateOperation *)self endOperationWithResultObject:v5];
    }
  }
}

@end