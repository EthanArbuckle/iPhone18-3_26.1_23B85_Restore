@interface MKFCKPhotosPerson
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)validateUser:(id *)user error:(id *)error;
- (id)home;
@end

@implementation MKFCKPhotosPerson

- (BOOL)validateUser:(id *)user error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(MKFCKModel *)self shouldSkipValidationDuringImport]|| (v7 = *user, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0) && v7)
  {
    result = 1;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *user;
      v18 = 138543874;
      v19 = v13;
      v20 = 2114;
      v21 = @"user";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [objc_opt_class() hmd_errorForInvalidValue:*user key:@"user"];
    v16 = v15;
    result = 0;
    *error = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  user = [modelCopy user];
  if ([user isOwner])
  {
    v21.receiver = self;
    v21.super_class = MKFCKPhotosPerson;
    if (![(MKFCKPerson *)&v21 exportFromLocalModel:modelCopy updatedProperties:propertiesCopy context:contextCopy])
    {
      v19 = 0;
      goto LABEL_16;
    }

    v12 = [(MKFCKModel *)MKFCKUser fetchWithLocalModel:user context:contextCopy];
    if (v12)
    {
      user2 = [(MKFCKPhotosPerson *)self user];
      v14 = [user2 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        [(MKFCKPhotosPerson *)self setUser:v12];
      }

      linkedHomePerson = [modelCopy linkedHomePerson];
      if (linkedHomePerson)
      {
        v16 = [(MKFCKModel *)MKFCKHomePerson fetchWithLocalModel:linkedHomePerson context:contextCopy];
        if (v16)
        {
          linkedHomePerson2 = [(MKFCKPhotosPerson *)self linkedHomePerson];
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
    [contextCopy deleteObject:self];
  }

  v19 = 1;
LABEL_16:

  return v19;
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = MKFCKPhotosPerson;
  v10 = [(MKFCKPerson *)&v20 importIntoLocalModel:modelCopy updatedProperties:properties context:contextCopy];
  if (v10)
  {
    user = [(MKFCKPhotosPerson *)self user];
    v12 = [user fetchLocalModelWithContext:contextCopy];

    if (v12)
    {
      user2 = [modelCopy user];
      v14 = HMFEqualObjects();

      if ((v14 & 1) == 0)
      {
        [modelCopy setUser:v12];
      }

      linkedHomePerson = [(MKFCKPhotosPerson *)self linkedHomePerson];
      v16 = [linkedHomePerson fetchLocalModelWithContext:contextCopy];
      linkedHomePerson2 = [modelCopy linkedHomePerson];
      v18 = HMFEqualObjects();

      if ((v18 & 1) == 0)
      {
        [modelCopy setLinkedHomePerson:v16];
      }
    }
  }

  return v10;
}

- (id)home
{
  user = [(MKFCKPhotosPerson *)self user];
  home = [user home];

  return home;
}

@end