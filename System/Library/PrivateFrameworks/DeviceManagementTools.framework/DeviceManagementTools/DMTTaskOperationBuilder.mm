@interface DMTTaskOperationBuilder
+ (Class)validationClassForRequest:(id)a3;
- (BOOL)validateRequest:(id)a3 error:(id *)a4;
- (DMTTaskOperationBuilder)initWithDeviceInfoPrimitives:(id)a3 enrollmentPrerequisiteReceiver:(id)a4 enrollmentInitiator:(id)a5 enrollmentStateProvider:(id)a6;
- (id)taskOperationForRequest:(id)a3;
@end

@implementation DMTTaskOperationBuilder

- (DMTTaskOperationBuilder)initWithDeviceInfoPrimitives:(id)a3 enrollmentPrerequisiteReceiver:(id)a4 enrollmentInitiator:(id)a5 enrollmentStateProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = DMTTaskOperationBuilder;
  v15 = [(DMTTaskOperationBuilder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceInfoPrimitives, a3);
    objc_storeStrong(&v16->_enrollmentPrerequisiteReceiver, a4);
    objc_storeStrong(&v16->_enrollmentInitiator, a5);
    objc_storeStrong(&v16->_enrollmentStateProvider, a6);
  }

  return v16;
}

- (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [DMTTaskOperationBuilder validationClassForRequest:v5];
  if (v6)
  {
    v7 = [(objc_class *)v6 validateRequest:v5 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)taskOperationForRequest:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation alloc];
    v6 = [(DMTTaskOperationBuilder *)self deviceInfoPrimitives];
    v7 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesOperation *)v5 initWithRequest:v4 deviceInformationPrimitives:v6];
LABEL_3:
    v8 = v7;
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v9 = [DMTPerformAutomatedDeviceEnrollmentOperation alloc];
    v6 = [(DMTTaskOperationBuilder *)self enrollmentPrerequisiteReceiver];
    v10 = [(DMTTaskOperationBuilder *)self enrollmentInitiator];
    v8 = [(DMTPerformAutomatedDeviceEnrollmentOperation *)v9 initWithRequest:v4 prerequisiteReceiver:v6 enrollmentInitiator:v10];

    goto LABEL_6;
  }

  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v12 = [DMTFetchAutomatedDeviceEnrollmentStateOperation alloc];
    v6 = [(DMTTaskOperationBuilder *)self enrollmentStateProvider];
    v7 = [(DMTFetchAutomatedDeviceEnrollmentStateOperation *)v12 initWithRequest:v4 enrollmentStateProvider:v6];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (Class)validationClassForRequest:(id)a3
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