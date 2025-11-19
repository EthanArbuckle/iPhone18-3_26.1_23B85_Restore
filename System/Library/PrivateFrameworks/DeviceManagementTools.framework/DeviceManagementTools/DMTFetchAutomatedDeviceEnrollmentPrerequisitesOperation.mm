@interface DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
- (DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation)initWithRequest:(id)a3 deviceInformationPrimitives:(id)a4;
- (void)runWithRequest:(id)a3;
@end

@implementation DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation

- (DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation)initWithRequest:(id)a3 deviceInformationPrimitives:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation;
  v8 = [(CATTaskOperation *)&v11 initWithRequest:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_deviceInformationPrimitives, a4);
  }

  return v9;
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation;
  if (!objc_msgSendSuper2(&v9, sel_validateRequest_error_, v6, a4))
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      DMTErrorWithCodeAndUserInfo(2, &unk_285B5BD70);
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
  if ([(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self isExecuting])
  {
    if ([(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self isCancelled])
    {
      v12 = CATErrorWithCodeAndUserInfo();
      [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self endOperationWithError:?];
    }

    else
    {
      v12 = objc_opt_new();
      v4 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self deviceInformationPrimitives];
      v5 = [v4 serialNumber];
      [v12 setSerialNumber:v5];

      v6 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self deviceInformationPrimitives];
      v7 = [v6 deviceUDID];
      [v12 setDeviceUDID:v7];

      v8 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self deviceInformationPrimitives];
      v9 = [v8 modelIdentifier];
      [v12 setModelIdentifier:v9];

      v10 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self deviceInformationPrimitives];
      v11 = [v10 marketingModelName];
      [v12 setModelName:v11];

      [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self endOperationWithResultObject:v12];
    }
  }
}

@end