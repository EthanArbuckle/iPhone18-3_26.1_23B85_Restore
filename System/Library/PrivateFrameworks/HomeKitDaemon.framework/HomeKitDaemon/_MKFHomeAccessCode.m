@interface _MKFHomeAccessCode
- (BOOL)_validateParentsForInsertOrUpdate:(id *)a3;
- (BOOL)validateAccessCodeForInsertOrUpdate:(id *)a3;
- (MKFHomeAccessCodeDatabaseID)databaseID;
- (id)fetchOtherGuestAccessCodesInHome:(id)a3;
- (id)fetchOtherGuestUserAccessCodesInHome:(id)a3;
- (id)fetchOtherUserAccessCodesInHome:(id)a3;
- (id)homeForHomeAccessCode:(id)a3;
@end

@implementation _MKFHomeAccessCode

- (MKFHomeAccessCodeDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeAccessCodeDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)_validateParentsForInsertOrUpdate:(id *)a3
{
  v5 = [(_MKFHomeAccessCode *)self entity];
  v6 = +[_MKFUserAccessCode entity];
  v7 = [v5 isKindOfEntity:v6];

  if (v7)
  {
    if ([(_MKFModel *)self validateForInsertOrUpdateWithParentKey:@"user" error:a3])
    {
      return 1;
    }

    else
    {

      return [(_MKFModel *)self validateForInsertOrUpdateWithParentKey:@"guest" error:a3];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _MKFHomeAccessCode;
    return [(_MKFModel *)&v9 validateForInsertOrUpdate:a3];
  }
}

- (id)fetchOtherGuestAccessCodesInHome:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[_MKFGuestAccessCode fetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"home", v4];
  v7 = MEMORY[0x277CCAC30];
  v8 = [(_MKFHomeAccessCode *)self modelID];
  v9 = [v7 predicateWithFormat:@"(%K != %@)", @"modelID", v8];

  v10 = MEMORY[0x277CCA920];
  v27[0] = v6;
  v27[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v5 setPredicate:v12];

  v13 = [(_MKFHomeAccessCode *)self managedObjectContext];
  v22 = 0;
  v14 = [v13 executeFetchRequest:v5 error:&v22];
  v15 = v22;

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch the guest accessCodes : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)fetchOtherGuestUserAccessCodesInHome:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[_MKFUserAccessCode fetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K.%K == %@)", @"guest", @"home", v4];
  v7 = MEMORY[0x277CCAC30];
  v8 = [(_MKFHomeAccessCode *)self modelID];
  v9 = [v7 predicateWithFormat:@"(%K != %@)", @"modelID", v8];

  v10 = MEMORY[0x277CCA920];
  v27[0] = v6;
  v27[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v5 setPredicate:v12];

  v13 = [(_MKFHomeAccessCode *)self managedObjectContext];
  v22 = 0;
  v14 = [v13 executeFetchRequest:v5 error:&v22];
  v15 = v22;

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch the accessCodes for guest: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)fetchOtherUserAccessCodesInHome:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[_MKFUserAccessCode fetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K.%K == %@)", @"user", @"home", v4];
  v7 = MEMORY[0x277CCAC30];
  v8 = [(_MKFHomeAccessCode *)self modelID];
  v9 = [v7 predicateWithFormat:@"(%K != %@)", @"modelID", v8];

  v10 = MEMORY[0x277CCA920];
  v27[0] = v6;
  v27[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v5 setPredicate:v12];

  v13 = [(_MKFHomeAccessCode *)self managedObjectContext];
  v22 = 0;
  v14 = [v13 executeFetchRequest:v5 error:&v22];
  v15 = v22;

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch the accessCodes for user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)homeForHomeAccessCode:(id)a3
{
  v4 = [(_MKFHomeAccessCode *)self entity];
  v5 = +[_MKFUserAccessCode entity];
  v6 = [v4 isKindOfEntity:v5];

  if (v6)
  {
    v7 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [(_MKFHomeAccessCode *)v9 user];
    v11 = [v10 home];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v22 = [(_MKFHomeAccessCode *)v9 guest];
      v13 = [v22 home];
    }

LABEL_15:
    goto LABEL_16;
  }

  v14 = [(_MKFHomeAccessCode *)self entity];
  v15 = +[_MKFGuestAccessCode entity];
  v16 = [v14 isKindOfEntity:v15];

  if (v16 || (-[_MKFHomeAccessCode entity](self, "entity"), v17 = objc_claimAutoreleasedReturnValue(), +[_MKFRemovedUserAccessCode entity](_MKFRemovedUserAccessCode, "entity"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v17 isKindOfEntity:v18], v18, v17, v19))
  {
    v20 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v9 = v21;

    v13 = [(_MKFHomeAccessCode *)v9 home];
    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (BOOL)validateAccessCodeForInsertOrUpdate:(id *)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Validating access code for insert or update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (![(_MKFHomeAccessCode *)v6 _validateParentsForInsertOrUpdate:a3])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Validation failed in the super class", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
LABEL_14:
    v18 = 0;
    goto LABEL_29;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v9 = [(_MKFHomeAccessCode *)v6 accessCode];
  v10 = [v9 length];

  if (!v10)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v6;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Validation failed because the access code has zero length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    if (a3)
    {
      [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"Access code must not be empty."];
      *a3 = v18 = 0;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v11 = [(_MKFHomeAccessCode *)v6 entity];
  v12 = +[_MKFRemovedUserAccessCode entity];
  v13 = [v11 isKindOfEntity:v12];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Not enforcing value uniqueness on access code because it is a RemovedUserAccessCode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = 1;
  }

  else
  {
    v27 = [(_MKFHomeAccessCode *)v6 homeForHomeAccessCode:v6];
    v28 = [(_MKFHomeAccessCode *)v6 fetchOtherUserAccessCodesInHome:v27];
    v29 = [(_MKFHomeAccessCode *)v6 fetchOtherGuestAccessCodesInHome:v27];
    v30 = [(_MKFHomeAccessCode *)v6 fetchOtherGuestUserAccessCodesInHome:v27];
    v31 = v30;
    v18 = 0;
    if (v28 && v29 && v30)
    {
      v32 = [MEMORY[0x277CBEB18] array];
      [v32 addObjectsFromArray:v28];
      [v32 addObjectsFromArray:v29];
      [v32 addObjectsFromArray:v31];
      v33 = [v32 asSet];
      v34 = [v33 na_map:&__block_literal_global_198695];

      v35 = MEMORY[0x277CD1610];
      v36 = [(_MKFHomeAccessCode *)v6 accessCode];
      v37 = [v35 doesAccessCode:v36 conflictWithExistingAccessCodes:v34];

      if (v37)
      {
        context = objc_autoreleasePoolPush();
        v38 = v6;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v45 = v42;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Validation failed because the access code conflicts with an existing access code", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        if (a3)
        {
          *a3 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"Access code must be unique within home"];
        }
      }

      v18 = v37 ^ 1;
    }
  }

LABEL_29:
  v40 = *MEMORY[0x277D85DE8];
  return v18;
}

@end