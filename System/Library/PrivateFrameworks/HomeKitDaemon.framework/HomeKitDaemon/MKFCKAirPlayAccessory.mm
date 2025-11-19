@interface MKFCKAirPlayAccessory
+ (id)fetchWithLocalModel:(id)a3 context:(id)a4;
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)validateMinimumUserPrivilege:(id *)a3 error:(id *)a4;
- (id)fetchLocalModelWithContext:(id)a3;
@end

@implementation MKFCKAirPlayAccessory

+ (id)fetchWithLocalModel:(id)a3 context:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MKFCKAirPlayAccessory;
  v4 = objc_msgSendSuper2(&v6, sel_fetchWithLocalModel_context_, a3, a4);

  return v4;
}

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v6.receiver = self;
  v6.super_class = MKFCKAirPlayAccessory;
  return [(MKFCKAccessory *)&v6 exportFromLocalModel:a3 updatedProperties:a4 context:a5];
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v6.receiver = self;
  v6.super_class = MKFCKAirPlayAccessory;
  return [(MKFCKAccessory *)&v6 importIntoLocalModel:a3 updatedProperties:a4 context:a5];
}

- (id)fetchLocalModelWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = MKFCKAirPlayAccessory;
  v3 = [(MKFCKModel *)&v5 fetchLocalModelWithContext:a3];

  return v3;
}

- (BOOL)validateMinimumUserPrivilege:(id *)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  if (-[MKFCKModel shouldSkipValidationDuringImport](self, "shouldSkipValidationDuringImport") || -[NSManagedObject hmd_validateNumber:key:error:](self, "hmd_validateNumber:key:error:", *a3, @"minimumUserPrivilege", a4) && [*a3 integerValue] < 4)
  {
    result = 1;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *a3;
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = @"minimumUserPrivilege";
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (a4)
    {
      v13 = [objc_opt_class() hmd_errorForInvalidValue:*a3 key:@"minimumUserPrivilege"];
      v14 = v13;
      result = 0;
      *a4 = v13;
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