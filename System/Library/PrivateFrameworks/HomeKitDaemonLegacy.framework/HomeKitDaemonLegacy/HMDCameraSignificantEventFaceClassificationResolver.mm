@interface HMDCameraSignificantEventFaceClassificationResolver
+ (id)logCategory;
- (HMDCameraSignificantEventFaceClassificationResolver)initWithHome:(id)home;
- (HMDHome)home;
- (id)_faceClassificationForSignificantEventFaceClassifications:(id)classifications user:(id)user;
- (id)faceClassificationForSignificantEventFaceClassifications:(id)classifications;
- (id)logIdentifier;
- (id)personManagerWithUUID:(id)d;
@end

@implementation HMDCameraSignificantEventFaceClassificationResolver

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDCameraSignificantEventFaceClassificationResolver *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)personManagerWithUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  home = [(HMDCameraSignificantEventFaceClassificationResolver *)self home];
  v6 = home;
  if (home)
  {
    personManager = [home personManager];
    uUID = [personManager UUID];
    v9 = [dCopy isEqual:uUID];

    if (v9)
    {
      photosPersonManager = personManager;
    }

    else
    {
      users = [v6 users];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __77__HMDCameraSignificantEventFaceClassificationResolver_personManagerWithUUID___block_invoke;
      v19[3] = &unk_27972E540;
      v20 = dCopy;
      v16 = [users na_firstObjectPassingTest:v19];
      photosPersonManager = [v16 photosPersonManager];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Returning nil because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    photosPersonManager = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return photosPersonManager;
}

uint64_t __77__HMDCameraSignificantEventFaceClassificationResolver_personManagerWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 photosPersonManager];
  v4 = [v3 UUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)_faceClassificationForSignificantEventFaceClassifications:(id)classifications user:(id)user
{
  v77 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  userCopy = user;
  home = [(HMDCameraSignificantEventFaceClassificationResolver *)self home];
  if (home)
  {
    array = [MEMORY[0x277CBEB18] array];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v59 = classificationsCopy;
    obj = classificationsCopy;
    v65 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (v65)
    {
      selfCopy = self;
      v63 = 0;
      v64 = *v69;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v69 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v68 + 1) + 8 * v7);
        photosPersonManager = [userCopy photosPersonManager];
        personManagerUUID = [v8 personManagerUUID];
        uUID = [photosPersonManager UUID];
        v12 = [personManagerUUID isEqual:uUID];

        if (v12)
        {
          personUUID = [v8 personUUID];
          if (personUUID)
          {
            v14 = [photosPersonManager personWithUUID:personUUID];
            if (v14)
            {
              v49 = v14;
              v50 = objc_alloc(MEMORY[0x277CD1A28]);
              personManagerUUID2 = [v8 personManagerUUID];
              v52 = [v50 initWithPersonManagerUUID:personManagerUUID2 person:v49 faceCrop:0];

              if (!v52)
              {
                goto LABEL_43;
              }

              v53 = v52;
              firstObject = v53;
              classificationsCopy = v59;
              v54 = array;
              goto LABEL_47;
            }
          }
        }

        personManager = [home personManager];
        personManagerUUID3 = [v8 personManagerUUID];
        uUID2 = [personManager UUID];
        v18 = [personManagerUUID3 isEqual:uUID2];

        if (!v18)
        {
          goto LABEL_27;
        }

        personUUID2 = [v8 personUUID];
        if (personUUID2 && ([personManager personWithUUID:personUUID2], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          unassociatedFaceCropUUID = v20;
          v22 = objc_alloc(MEMORY[0x277CD1A28]);
          personManagerUUID4 = [v8 personManagerUUID];
          v24 = [v22 initWithPersonManagerUUID:personManagerUUID4 person:unassociatedFaceCropUUID faceCrop:0];
        }

        else
        {
          unassociatedFaceCropUUID = [v8 unassociatedFaceCropUUID];
          if (!unassociatedFaceCropUUID)
          {
            goto LABEL_26;
          }

          v25 = [personManager unassociatedFaceCropWithUUID:unassociatedFaceCropUUID];
          if (v25)
          {
            v26 = v25;
            v27 = objc_alloc(MEMORY[0x277CD1A28]);
            personManagerUUID5 = [v8 personManagerUUID];
            v24 = [v27 initWithPersonManagerUUID:personManagerUUID5 person:0 faceCrop:v26];
            v29 = v63;
          }

          else
          {
            v30 = [personManager associatedUnassociatedFaceCropWithUUID:unassociatedFaceCropUUID];
            v26 = v30;
            if (!v30)
            {
              goto LABEL_25;
            }

            personFaceCropUUID = [v30 personFaceCropUUID];
            personManagerUUID5 = [personManager personFaceCropWithUUID:personFaceCropUUID];

            if (!personManagerUUID5 || ([personManagerUUID5 personUUID], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(personManager, "personWithUUID:", v32), v29 = objc_claimAutoreleasedReturnValue(), v32, !v29))
            {

LABEL_25:
LABEL_26:

LABEL_27:
              personUUID2 = [v8 personUUID];
              personName = [v8 personName];
              unassociatedFaceCropUUID = personName;
              if (personUUID2 && personName)
              {
                v36 = [objc_alloc(MEMORY[0x277CD1C70]) initWithUUID:personUUID2];
                [v36 setName:unassociatedFaceCropUUID];
                v37 = objc_alloc(MEMORY[0x277CD1A28]);
                personManagerUUID6 = [v8 personManagerUUID];
                v39 = [v37 initWithPersonManagerUUID:personManagerUUID6 person:v36 faceCrop:0];

                [array addObject:v39];
              }

              else
              {
                v40 = objc_autoreleasePoolPush();
                v41 = selfCopy;
                v42 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v73 = v43;
                  v74 = 2112;
                  v75 = v8;
                  _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Could not determine face classification for significant event face classification: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v40);
              }

              goto LABEL_33;
            }

            v33 = objc_alloc(MEMORY[0x277CD1A28]);
            personManagerUUID7 = [v8 personManagerUUID];
            v24 = [v33 initWithPersonManagerUUID:personManagerUUID7 person:v29 faceCrop:0];
          }
        }

        v63 = v24;
LABEL_33:

        if (v65 == ++v7)
        {
          v65 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
          if (v65)
          {
            goto LABEL_4;
          }

          goto LABEL_42;
        }
      }
    }

    v63 = 0;
LABEL_42:

LABEL_43:
    v54 = array;
    if (v63)
    {
      [MEMORY[0x277CBEB18] arrayWithObject:?];
    }

    else
    {
      [MEMORY[0x277CBEB18] array];
    }
    v55 = ;
    classificationsCopy = v59;
    v56 = [array sortedArrayUsingComparator:&__block_literal_global_87749];
    [v55 addObjectsFromArray:v56];
    [v55 sortWithOptions:16 usingComparator:&__block_literal_global_4];
    firstObject = [v55 firstObject];

    v53 = 0;
LABEL_47:
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v47;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@Not returning a face classification because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
    firstObject = 0;
  }

  v57 = *MEMORY[0x277D85DE8];

  return firstObject;
}

uint64_t __118__HMDCameraSignificantEventFaceClassificationResolver__faceClassificationForSignificantEventFaceClassifications_user___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 person];
  v7 = [v6 name];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 person];
    v10 = [v9 name];

    if (!v10)
    {
      v11 = -1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = [v5 person];
  v13 = [v12 name];
  if (v13)
  {
    v14 = v13;
    v15 = [v4 person];
    v16 = [v15 name];
    v11 = v16 == 0;
  }

  else
  {

    v11 = 0;
  }

LABEL_8:

  return v11;
}

uint64_t __118__HMDCameraSignificantEventFaceClassificationResolver__faceClassificationForSignificantEventFaceClassifications_user___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 personManagerUUID];
  v6 = [v5 UUIDString];
  v7 = [v4 personManagerUUID];

  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)faceClassificationForSignificantEventFaceClassifications:(id)classifications
{
  classificationsCopy = classifications;
  home = [(HMDCameraSignificantEventFaceClassificationResolver *)self home];
  currentUser = [home currentUser];
  v7 = [(HMDCameraSignificantEventFaceClassificationResolver *)self _faceClassificationForSignificantEventFaceClassifications:classificationsCopy user:currentUser];

  return v7;
}

- (HMDCameraSignificantEventFaceClassificationResolver)initWithHome:(id)home
{
  homeCopy = home;
  v8.receiver = self;
  v8.super_class = HMDCameraSignificantEventFaceClassificationResolver;
  v5 = [(HMDCameraSignificantEventFaceClassificationResolver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, homeCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_87758 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_87758, &__block_literal_global_8_87759);
  }

  v3 = logCategory__hmf_once_v4_87760;

  return v3;
}

uint64_t __66__HMDCameraSignificantEventFaceClassificationResolver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_87760;
  logCategory__hmf_once_v4_87760 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end