@interface DMTPerformAutomatedDeviceEnrollmentOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
- (DMTPerformAutomatedDeviceEnrollmentOperation)initWithRequest:(id)a3 prerequisiteReceiver:(id)a4 enrollmentInitiator:(id)a5;
- (void)runWithRequest:(id)a3;
@end

@implementation DMTPerformAutomatedDeviceEnrollmentOperation

- (DMTPerformAutomatedDeviceEnrollmentOperation)initWithRequest:(id)a3 prerequisiteReceiver:(id)a4 enrollmentInitiator:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DMTPerformAutomatedDeviceEnrollmentOperation;
  v11 = [(CATTaskOperation *)&v14 initWithRequest:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_prerequisiteReceiver, a4);
    objc_storeStrong(&v12->_enrollmentInitiator, a5);
  }

  return v12;
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___DMTPerformAutomatedDeviceEnrollmentOperation;
  if (!objc_msgSendSuper2(&v16, sel_validateRequest_error_, v6, a4))
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 nonce];
    if (v8 && (v9 = v8, [v7 nonce], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
    {
      if ([v7 effectiveNetworkConfiguration])
      {
        v12 = 1;
LABEL_20:

        goto LABEL_21;
      }

      if (_DMTLogGeneral_onceToken_3 != -1)
      {
        +[DMTPerformAutomatedDeviceEnrollmentOperation validateRequest:error:];
      }

      v14 = _DMTLogGeneral_logObj_3;
      if (os_log_type_enabled(_DMTLogGeneral_logObj_3, OS_LOG_TYPE_ERROR))
      {
        [DMTPerformAutomatedDeviceEnrollmentOperation validateRequest:v14 error:a1];
        if (a4)
        {
          goto LABEL_17;
        }
      }

      else if (a4)
      {
LABEL_17:
        v13 = &unk_285B5BDE8;
        goto LABEL_12;
      }
    }

    else if (a4)
    {
      v13 = &unk_285B5BDC0;
LABEL_12:
      DMTErrorWithCodeAndUserInfo(2, v13);
      *a4 = v12 = 0;
      goto LABEL_20;
    }

    v12 = 0;
    goto LABEL_20;
  }

  if (a4)
  {
    DMTErrorWithCodeAndUserInfo(2, &unk_285B5BD98);
    *a4 = v12 = 0;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (void)runWithRequest:(id)a3
{
  v14 = a3;
  if ([(DMTPerformAutomatedDeviceEnrollmentOperation *)self isExecuting])
  {
    if ([(DMTPerformAutomatedDeviceEnrollmentOperation *)self isCancelled])
    {
      v4 = CATErrorWithCodeAndUserInfo();
      [(DMTPerformAutomatedDeviceEnrollmentOperation *)self endOperationWithError:v4];
    }

    else
    {
      v5 = [(DMTPerformAutomatedDeviceEnrollmentOperation *)self prerequisiteReceiver];
      v6 = [v14 networkCredential];
      v7 = [v14 networkPayload];
      v8 = [v14 nonce];
      v9 = [v14 automationBehavior];
      v10 = [v14 organizationName];
      v11 = [v14 organizationType];
      v12 = [v14 mdmServerName];
      [v5 setNetworkCredential:v6 networkPayload:v7 enrollmentNonce:v8 postEnrollmentBehavior:v9 organizationName:v10 organizationType:v11 mdmServerName:v12 networkConfiguration:{objc_msgSend(v14, "effectiveNetworkConfiguration")}];

      v13 = [(DMTPerformAutomatedDeviceEnrollmentOperation *)self enrollmentInitiator];
      [v13 beginAutomatedDeviceEnrollment];

      [(DMTPerformAutomatedDeviceEnrollmentOperation *)self endOperationWithResultObject:0];
    }
  }
}

+ (void)validateRequest:(void *)a1 error:(objc_class *)a2 .cold.2(void *a1, objc_class *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = NSStringFromClass(a2);
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_24891B000, v3, OS_LOG_TYPE_ERROR, "Both network payloads are missing, failing validation for %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end