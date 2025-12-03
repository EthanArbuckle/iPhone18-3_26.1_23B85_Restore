@interface DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
- (DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation)initWithRequest:(id)request deviceInformationPrimitives:(id)primitives;
- (void)runWithRequest:(id)request;
@end

@implementation DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation

- (DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation)initWithRequest:(id)request deviceInformationPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v11.receiver = self;
  v11.super_class = DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation;
  v8 = [(CATTaskOperation *)&v11 initWithRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_deviceInformationPrimitives, primitives);
  }

  return v9;
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation;
  if (!objc_msgSendSuper2(&v9, sel_validateRequest_error_, requestCopy, error))
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      DMTErrorWithCodeAndUserInfo(2, &unk_285B5BD70);
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
      deviceInformationPrimitives = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self deviceInformationPrimitives];
      serialNumber = [deviceInformationPrimitives serialNumber];
      [v12 setSerialNumber:serialNumber];

      deviceInformationPrimitives2 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self deviceInformationPrimitives];
      deviceUDID = [deviceInformationPrimitives2 deviceUDID];
      [v12 setDeviceUDID:deviceUDID];

      deviceInformationPrimitives3 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self deviceInformationPrimitives];
      modelIdentifier = [deviceInformationPrimitives3 modelIdentifier];
      [v12 setModelIdentifier:modelIdentifier];

      deviceInformationPrimitives4 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self deviceInformationPrimitives];
      marketingModelName = [deviceInformationPrimitives4 marketingModelName];
      [v12 setModelName:marketingModelName];

      [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)self endOperationWithResultObject:v12];
    }
  }
}

@end