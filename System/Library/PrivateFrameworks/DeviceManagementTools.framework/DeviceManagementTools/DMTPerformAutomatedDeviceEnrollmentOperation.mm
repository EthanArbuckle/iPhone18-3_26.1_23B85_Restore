@interface DMTPerformAutomatedDeviceEnrollmentOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
- (DMTPerformAutomatedDeviceEnrollmentOperation)initWithRequest:(id)request prerequisiteReceiver:(id)receiver enrollmentInitiator:(id)initiator;
- (void)runWithRequest:(id)request;
@end

@implementation DMTPerformAutomatedDeviceEnrollmentOperation

- (DMTPerformAutomatedDeviceEnrollmentOperation)initWithRequest:(id)request prerequisiteReceiver:(id)receiver enrollmentInitiator:(id)initiator
{
  receiverCopy = receiver;
  initiatorCopy = initiator;
  v14.receiver = self;
  v14.super_class = DMTPerformAutomatedDeviceEnrollmentOperation;
  v11 = [(CATTaskOperation *)&v14 initWithRequest:request];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_prerequisiteReceiver, receiver);
    objc_storeStrong(&v12->_enrollmentInitiator, initiator);
  }

  return v12;
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___DMTPerformAutomatedDeviceEnrollmentOperation;
  if (!objc_msgSendSuper2(&v16, sel_validateRequest_error_, requestCopy, error))
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = requestCopy;
    nonce = [v7 nonce];
    if (nonce && (v9 = nonce, [v7 nonce], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
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
        [DMTPerformAutomatedDeviceEnrollmentOperation validateRequest:v14 error:self];
        if (error)
        {
          goto LABEL_17;
        }
      }

      else if (error)
      {
LABEL_17:
        v13 = &unk_285B5BDE8;
        goto LABEL_12;
      }
    }

    else if (error)
    {
      v13 = &unk_285B5BDC0;
LABEL_12:
      DMTErrorWithCodeAndUserInfo(2, v13);
      *error = v12 = 0;
      goto LABEL_20;
    }

    v12 = 0;
    goto LABEL_20;
  }

  if (error)
  {
    DMTErrorWithCodeAndUserInfo(2, &unk_285B5BD98);
    *error = v12 = 0;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  if ([(DMTPerformAutomatedDeviceEnrollmentOperation *)self isExecuting])
  {
    if ([(DMTPerformAutomatedDeviceEnrollmentOperation *)self isCancelled])
    {
      v4 = CATErrorWithCodeAndUserInfo();
      [(DMTPerformAutomatedDeviceEnrollmentOperation *)self endOperationWithError:v4];
    }

    else
    {
      prerequisiteReceiver = [(DMTPerformAutomatedDeviceEnrollmentOperation *)self prerequisiteReceiver];
      networkCredential = [requestCopy networkCredential];
      networkPayload = [requestCopy networkPayload];
      nonce = [requestCopy nonce];
      automationBehavior = [requestCopy automationBehavior];
      organizationName = [requestCopy organizationName];
      organizationType = [requestCopy organizationType];
      mdmServerName = [requestCopy mdmServerName];
      [prerequisiteReceiver setNetworkCredential:networkCredential networkPayload:networkPayload enrollmentNonce:nonce postEnrollmentBehavior:automationBehavior organizationName:organizationName organizationType:organizationType mdmServerName:mdmServerName networkConfiguration:{objc_msgSend(requestCopy, "effectiveNetworkConfiguration")}];

      enrollmentInitiator = [(DMTPerformAutomatedDeviceEnrollmentOperation *)self enrollmentInitiator];
      [enrollmentInitiator beginAutomatedDeviceEnrollment];

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