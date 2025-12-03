@interface HMDCoreDataCloudTransformableLocalHomeObject
+ (void)_addHomeForObjectWithID:(void *)d additionalUpdates:(void *)updates context:;
@end

@implementation HMDCoreDataCloudTransformableLocalHomeObject

+ (void)_addHomeForObjectWithID:(void *)d additionalUpdates:(void *)updates context:
{
  v84[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  dCopy = d;
  updatesCopy = updates;
  v66 = objc_opt_self();
  entity = [v6 entity];
  v9 = +[_MKFHomeSetting entity];
  v10 = [entity isKindOfEntity:v9];

  p_cache = &OBJC_METACLASS___HMDAccessCodeManagerUtilities.cache;
  if (v10)
  {
    v12 = +[_MKFHome entity];
    propertiesByName = [v12 propertiesByName];
    v14 = [propertiesByName objectForKeyedSubscript:@"settings_"];
    v77 = v14;
    v15 = &v77;
  }

  else
  {
    v16 = +[_MKFGuestAccessCode entity];
    v17 = [entity isKindOfEntity:v16];

    if (v17)
    {
      v12 = +[_MKFHome entity];
      propertiesByName = [v12 propertiesByName];
      v14 = [propertiesByName objectForKeyedSubscript:@"guestAccessCodes_"];
      v76 = v14;
      v15 = &v76;
    }

    else
    {
      v18 = +[_MKFRemovedUserAccessCode entity];
      v19 = [entity isKindOfEntity:v18];

      if (!v19)
      {
        v68 = MEMORY[0x277CBEBF8];
        goto LABEL_8;
      }

      v12 = +[_MKFHome entity];
      propertiesByName = [v12 propertiesByName];
      v14 = [propertiesByName objectForKeyedSubscript:@"removedAccessCodes_"];
      v75 = v14;
      v15 = &v75;
    }
  }

  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

LABEL_8:
  v20 = v6;
  v21 = updatesCopy;
  v72 = objc_opt_self();
  v22 = v20;
  v70 = v22;
  v71 = v21;
  v69 = entity;
  while (1)
  {
    entity2 = [v22 entity];
    entity3 = [p_cache + 353 entity];
    v25 = [entity2 isKindOfEntity:entity3];

    if (v25)
    {
      v22 = v22;
      v44 = v22;
      goto LABEL_42;
    }

    entity4 = [v22 entity];
    if (entity4)
    {
      v27 = entity4;
      while (1)
      {
        userInfo = [v27 userInfo];
        v29 = [userInfo objectForKeyedSubscript:@"parent"];

        if (v29)
        {
          break;
        }

        superentity = [v27 superentity];

        v27 = superentity;
        if (!superentity)
        {
          v29 = 0;
          break;
        }
      }
    }

    else
    {
      v29 = 0;
    }

    v84[0] = v29;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];
    v74 = 0;
    v32 = [v21 hmd_fetchExistingObjectWithID:v22 propertiesToFetch:v31 error:&v74];
    v33 = v74;

    if (v33)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = v72;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543874;
        v79 = v48;
        v80 = 2114;
        v81 = v22;
        v82 = 2114;
        v83 = v33;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch object with objectID %{public}@: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v45);
      goto LABEL_37;
    }

    if (!v32)
    {
      v49 = objc_autoreleasePoolPush();
      v50 = v72;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        v79 = v52;
        v80 = 2114;
        v81 = v22;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find object with objectID %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
      v33 = 0;
LABEL_37:
      v53 = dCopy;

      v44 = 0;
      goto LABEL_43;
    }

    v34 = [v32 valueForKey:v29];
    if (!v34)
    {
      break;
    }

    v35 = v34;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    if (isKindOfClass)
    {
      objectID = [v35 objectID];

      v22 = objectID;
    }

    else
    {
      v73 = v22;
      v40 = objc_autoreleasePoolPush();
      v41 = v72;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543874;
        v79 = v43;
        v80 = 2114;
        v81 = v29;
        v82 = 2112;
        v83 = v32;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Object value for '%{public}@' is not an object: %@", buf, 0x20u);

        entity = v69;
      }

      objc_autoreleasePoolPop(v40);
      v21 = v71;
      v22 = v73;
    }

    p_cache = (&OBJC_METACLASS___HMDAccessCodeManagerUtilities + 16);
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v54 = objc_autoreleasePoolPush();
  v55 = v72;
  v56 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    v57 = HMFGetLogIdentifier();
    *buf = 138543874;
    v79 = v57;
    v80 = 2114;
    v81 = v29;
    v82 = 2112;
    v83 = v32;
    _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Object has no value for '%{public}@': %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v54);
LABEL_41:
  v44 = 0;
LABEL_42:
  v53 = dCopy;
LABEL_43:

  if (v44)
  {
    v58 = [v53 objectForKeyedSubscript:v44];
    v59 = v58;
    if (v58)
    {
      if ([v58 count])
      {
        [v59 addObjectsFromArray:v68];
      }
    }

    else
    {
      v64 = [MEMORY[0x277CBEB58] setWithArray:v68];
      [v53 setObject:v64 forKeyedSubscript:v44];
    }
  }

  else
  {
    v60 = objc_autoreleasePoolPush();
    v61 = v66;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543618;
      v79 = v63;
      v80 = 2114;
      v81 = v70;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find home for model with objectID %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v60);
    v53 = dCopy;
  }

  v65 = *MEMORY[0x277D85DE8];
}

@end