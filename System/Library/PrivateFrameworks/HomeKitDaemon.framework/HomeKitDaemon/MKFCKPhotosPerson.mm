@interface MKFCKPhotosPerson
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)validateUser:(id *)a3 error:(id *)a4;
- (id)home;
@end

@implementation MKFCKPhotosPerson

- (BOOL)validateUser:(id *)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(MKFCKModel *)self shouldSkipValidationDuringImport]|| (v7 = *a3, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0) && v7)
  {
    result = 1;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *a3;
      v18 = 138543874;
      v19 = v13;
      v20 = 2114;
      v21 = @"user";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [objc_opt_class() hmd_errorForInvalidValue:*a3 key:@"user"];
    v16 = v15;
    result = 0;
    *a4 = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 user];
  if ([v11 isOwner])
  {
    v21.receiver = self;
    v21.super_class = MKFCKPhotosPerson;
    if (![(MKFCKPerson *)&v21 exportFromLocalModel:v8 updatedProperties:v9 context:v10])
    {
      v19 = 0;
      goto LABEL_16;
    }

    v12 = [(MKFCKModel *)MKFCKUser fetchWithLocalModel:v11 context:v10];
    if (v12)
    {
      v13 = [(MKFCKPhotosPerson *)self user];
      v14 = [v13 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        [(MKFCKPhotosPerson *)self setUser:v12];
      }

      v15 = [v8 linkedHomePerson];
      if (v15)
      {
        v16 = [(MKFCKModel *)MKFCKHomePerson fetchWithLocalModel:v15 context:v10];
        if (v16)
        {
          v17 = [(MKFCKPhotosPerson *)self linkedHomePerson];
          v18 = HMFEqualObjects();

          if ((v18 & 1) == 0)
          {
            [(MKFCKPhotosPerson *)self setLinkedHomePerson:v16];
          }
        }
      }
    }
  }

  else
  {
    [v10 deleteObject:self];
  }

  v19 = 1;
LABEL_16:

  return v19;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = MKFCKPhotosPerson;
  v10 = [(MKFCKPerson *)&v20 importIntoLocalModel:v8 updatedProperties:a4 context:v9];
  if (v10)
  {
    v11 = [(MKFCKPhotosPerson *)self user];
    v12 = [v11 fetchLocalModelWithContext:v9];

    if (v12)
    {
      v13 = [v8 user];
      v14 = HMFEqualObjects();

      if ((v14 & 1) == 0)
      {
        [v8 setUser:v12];
      }

      v15 = [(MKFCKPhotosPerson *)self linkedHomePerson];
      v16 = [v15 fetchLocalModelWithContext:v9];
      v17 = [v8 linkedHomePerson];
      v18 = HMFEqualObjects();

      if ((v18 & 1) == 0)
      {
        [v8 setLinkedHomePerson:v16];
      }
    }
  }

  return v10;
}

- (id)home
{
  v2 = [(MKFCKPhotosPerson *)self user];
  v3 = [v2 home];

  return v3;
}

@end