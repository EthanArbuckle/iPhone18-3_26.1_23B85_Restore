@interface DMTTaskOperationBuilder
+ (Class)validationClassForRequest:(id)request;
- (BOOL)validateRequest:(id)request error:(id *)error;
- (DMTTaskOperationBuilder)initWithDeviceInfoPrimitives:(id)primitives enrollmentPrerequisiteReceiver:(id)receiver enrollmentInitiator:(id)initiator enrollmentStateProvider:(id)provider;
- (id)taskOperationForRequest:(id)request;
@end

@implementation DMTTaskOperationBuilder

- (DMTTaskOperationBuilder)initWithDeviceInfoPrimitives:(id)primitives enrollmentPrerequisiteReceiver:(id)receiver enrollmentInitiator:(id)initiator enrollmentStateProvider:(id)provider
{
  primitivesCopy = primitives;
  receiverCopy = receiver;
  initiatorCopy = initiator;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = DMTTaskOperationBuilder;
  v15 = [(DMTTaskOperationBuilder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceInfoPrimitives, primitives);
    objc_storeStrong(&v16->_enrollmentPrerequisiteReceiver, receiver);
    objc_storeStrong(&v16->_enrollmentInitiator, initiator);
    objc_storeStrong(&v16->_enrollmentStateProvider, provider);
  }

  return v16;
}

- (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v6 = [DMTTaskOperationBuilder validationClassForRequest:requestCopy];
  if (v6)
  {
    v7 = [(objc_class *)v6 validateRequest:requestCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)taskOperationForRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation alloc];
    deviceInfoPrimitives = [(DMTTaskOperationBuilder *)self deviceInfoPrimitives];
    v7 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)v5 initWithRequest:requestCopy deviceInformationPrimitives:deviceInfoPrimitives];
LABEL_3:
    v8 = v7;
LABEL_6:

    goto LABEL_7;
  }

  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v9 = [DMTPerformAutomatedDeviceEnrollmentOperation alloc];
    deviceInfoPrimitives = [(DMTTaskOperationBuilder *)self enrollmentPrerequisiteReceiver];
    enrollmentInitiator = [(DMTTaskOperationBuilder *)self enrollmentInitiator];
    v8 = [(DMTPerformAutomatedDeviceEnrollmentOperation *)v9 initWithRequest:requestCopy prerequisiteReceiver:deviceInfoPrimitives enrollmentInitiator:enrollmentInitiator];

    goto LABEL_6;
  }

  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v12 = [DMTFetchAutomatedDeviceEnrollmentStateOperation alloc];
    deviceInfoPrimitives = [(DMTTaskOperationBuilder *)self enrollmentStateProvider];
    v7 = [(DMTFetchAutomatedDeviceEnrollmentStateOperation *)v12 initWithRequest:requestCopy enrollmentStateProvider:deviceInfoPrimitives];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (Class)validationClassForRequest:(id)request
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v15[0] = v6;
  v16[0] = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v15[1] = v8;
  v16[1] = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15[2] = v10;
  v16[2] = objc_opt_class();
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v12 = [v11 objectForKeyedSubscript:v4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end