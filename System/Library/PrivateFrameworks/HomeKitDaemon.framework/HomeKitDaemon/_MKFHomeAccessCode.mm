@interface _MKFHomeAccessCode
- (BOOL)_validateParentsForInsertOrUpdate:(id *)update;
- (BOOL)validateAccessCodeForInsertOrUpdate:(id *)update;
- (MKFHomeAccessCodeDatabaseID)databaseID;
- (id)fetchOtherGuestAccessCodesInHome:(id)home;
- (id)fetchOtherGuestUserAccessCodesInHome:(id)home;
- (id)fetchOtherUserAccessCodesInHome:(id)home;
- (id)homeForHomeAccessCode:(id)code;
@end

@implementation _MKFHomeAccessCode

- (MKFHomeAccessCodeDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeAccessCodeDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)_validateParentsForInsertOrUpdate:(id *)update
{
  entity = [(_MKFHomeAccessCode *)self entity];
  v6 = +[_MKFUserAccessCode entity];
  v7 = [entity isKindOfEntity:v6];

  if (v7)
  {
    if ([(_MKFModel *)self validateForInsertOrUpdateWithParentKey:@"user" error:update])
    {
      return 1;
    }

    else
    {

      return [(_MKFModel *)self validateForInsertOrUpdateWithParentKey:@"guest" error:update];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _MKFHomeAccessCode;
    return [(_MKFModel *)&v9 validateForInsertOrUpdate:update];
  }
}

- (id)fetchOtherGuestAccessCodesInHome:(id)home
{
  v27[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = +[_MKFGuestAccessCode fetchRequest];
  homeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"home", homeCopy];
  v7 = MEMORY[0x277CCAC30];
  modelID = [(_MKFHomeAccessCode *)self modelID];
  v9 = [v7 predicateWithFormat:@"(%K != %@)", @"modelID", modelID];

  v10 = MEMORY[0x277CCA920];
  v27[0] = homeCopy;
  v27[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v5 setPredicate:v12];

  managedObjectContext = [(_MKFHomeAccessCode *)self managedObjectContext];
  v22 = 0;
  v14 = [managedObjectContext executeFetchRequest:v5 error:&v22];
  v15 = v22;

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (id)fetchOtherGuestUserAccessCodesInHome:(id)home
{
  v27[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = +[_MKFUserAccessCode fetchRequest];
  homeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K.%K == %@)", @"guest", @"home", homeCopy];
  v7 = MEMORY[0x277CCAC30];
  modelID = [(_MKFHomeAccessCode *)self modelID];
  v9 = [v7 predicateWithFormat:@"(%K != %@)", @"modelID", modelID];

  v10 = MEMORY[0x277CCA920];
  v27[0] = homeCopy;
  v27[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v5 setPredicate:v12];

  managedObjectContext = [(_MKFHomeAccessCode *)self managedObjectContext];
  v22 = 0;
  v14 = [managedObjectContext executeFetchRequest:v5 error:&v22];
  v15 = v22;

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (id)fetchOtherUserAccessCodesInHome:(id)home
{
  v27[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = +[_MKFUserAccessCode fetchRequest];
  homeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K.%K == %@)", @"user", @"home", homeCopy];
  v7 = MEMORY[0x277CCAC30];
  modelID = [(_MKFHomeAccessCode *)self modelID];
  v9 = [v7 predicateWithFormat:@"(%K != %@)", @"modelID", modelID];

  v10 = MEMORY[0x277CCA920];
  v27[0] = homeCopy;
  v27[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v5 setPredicate:v12];

  managedObjectContext = [(_MKFHomeAccessCode *)self managedObjectContext];
  v22 = 0;
  v14 = [managedObjectContext executeFetchRequest:v5 error:&v22];
  v15 = v22;

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (id)homeForHomeAccessCode:(id)code
{
  entity = [(_MKFHomeAccessCode *)self entity];
  v5 = +[_MKFUserAccessCode entity];
  v6 = [entity isKindOfEntity:v5];

  if (v6)
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = selfCopy;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    user = [(_MKFHomeAccessCode *)v9 user];
    home = [user home];
    v12 = home;
    if (home)
    {
      home2 = home;
    }

    else
    {
      guest = [(_MKFHomeAccessCode *)v9 guest];
      home2 = [guest home];
    }

LABEL_15:
    goto LABEL_16;
  }

  entity2 = [(_MKFHomeAccessCode *)self entity];
  v15 = +[_MKFGuestAccessCode entity];
  v16 = [entity2 isKindOfEntity:v15];

  if (v16 || (-[_MKFHomeAccessCode entity](self, "entity"), v17 = objc_claimAutoreleasedReturnValue(), +[_MKFRemovedUserAccessCode entity](_MKFRemovedUserAccessCode, "entity"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v17 isKindOfEntity:v18], v18, v17, v19))
  {
    selfCopy2 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = selfCopy2;
    }

    else
    {
      v21 = 0;
    }

    v9 = v21;

    home2 = [(_MKFHomeAccessCode *)v9 home];
    goto LABEL_15;
  }

  home2 = 0;
LABEL_16:

  return home2;
}

- (BOOL)validateAccessCodeForInsertOrUpdate:(id *)update
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Validating access code for insert or update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (![(_MKFHomeAccessCode *)selfCopy _validateParentsForInsertOrUpdate:update])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
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

  if (update)
  {
    *update = 0;
  }

  accessCode = [(_MKFHomeAccessCode *)selfCopy accessCode];
  v10 = [accessCode length];

  if (!v10)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Validation failed because the access code has zero length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    if (update)
    {
      [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"Access code must not be empty."];
      *update = v18 = 0;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  entity = [(_MKFHomeAccessCode *)selfCopy entity];
  v12 = +[_MKFRemovedUserAccessCode entity];
  v13 = [entity isKindOfEntity:v12];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
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
    v27 = [(_MKFHomeAccessCode *)selfCopy homeForHomeAccessCode:selfCopy];
    v28 = [(_MKFHomeAccessCode *)selfCopy fetchOtherUserAccessCodesInHome:v27];
    v29 = [(_MKFHomeAccessCode *)selfCopy fetchOtherGuestAccessCodesInHome:v27];
    v30 = [(_MKFHomeAccessCode *)selfCopy fetchOtherGuestUserAccessCodesInHome:v27];
    v31 = v30;
    v18 = 0;
    if (v28 && v29 && v30)
    {
      array = [MEMORY[0x277CBEB18] array];
      [array addObjectsFromArray:v28];
      [array addObjectsFromArray:v29];
      [array addObjectsFromArray:v31];
      asSet = [array asSet];
      v34 = [asSet na_map:&__block_literal_global_198695];

      v35 = MEMORY[0x277CD1610];
      accessCode2 = [(_MKFHomeAccessCode *)selfCopy accessCode];
      v37 = [v35 doesAccessCode:accessCode2 conflictWithExistingAccessCodes:v34];

      if (v37)
      {
        context = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v45 = v42;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Validation failed because the access code conflicts with an existing access code", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        if (update)
        {
          *update = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"Access code must be unique within home"];
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