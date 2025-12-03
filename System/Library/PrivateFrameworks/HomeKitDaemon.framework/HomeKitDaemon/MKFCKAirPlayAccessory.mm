@interface MKFCKAirPlayAccessory
+ (id)fetchWithLocalModel:(id)model context:(id)context;
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)validateMinimumUserPrivilege:(id *)privilege error:(id *)error;
- (id)fetchLocalModelWithContext:(id)context;
@end

@implementation MKFCKAirPlayAccessory

+ (id)fetchWithLocalModel:(id)model context:(id)context
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MKFCKAirPlayAccessory;
  v4 = objc_msgSendSuper2(&v6, sel_fetchWithLocalModel_context_, model, context);

  return v4;
}

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v6.receiver = self;
  v6.super_class = MKFCKAirPlayAccessory;
  return [(MKFCKAccessory *)&v6 exportFromLocalModel:model updatedProperties:properties context:context];
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v6.receiver = self;
  v6.super_class = MKFCKAirPlayAccessory;
  return [(MKFCKAccessory *)&v6 importIntoLocalModel:model updatedProperties:properties context:context];
}

- (id)fetchLocalModelWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = MKFCKAirPlayAccessory;
  v3 = [(MKFCKModel *)&v5 fetchLocalModelWithContext:context];

  return v3;
}

- (BOOL)validateMinimumUserPrivilege:(id *)privilege error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (-[MKFCKModel shouldSkipValidationDuringImport](self, "shouldSkipValidationDuringImport") || -[NSManagedObject hmd_validateNumber:key:error:](self, "hmd_validateNumber:key:error:", *privilege, @"minimumUserPrivilege", error) && [*privilege integerValue] < 4)
  {
    result = 1;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *privilege;
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = @"minimumUserPrivilege";
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (error)
    {
      v13 = [objc_opt_class() hmd_errorForInvalidValue:*privilege key:@"minimumUserPrivilege"];
      v14 = v13;
      result = 0;
      *error = v13;
    }

    else
    {
      result = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

@end