@interface HMDCoreDataCloudTransformableLocalUserObject
+ (void)_addUserForObjectWithID:(void *)d additionalUpdates:(void *)updates context:;
@end

@implementation HMDCoreDataCloudTransformableLocalUserObject

+ (void)_addUserForObjectWithID:(void *)d additionalUpdates:(void *)updates context:
{
  v108 = *MEMORY[0x277D85DE8];
  v6 = a2;
  dCopy = d;
  updatesCopy = updates;
  v9 = objc_opt_self();
  entity = [v6 entity];
  v11 = +[_MKFUserAccessCode entity];
  v12 = [entity isKindOfEntity:v11];

  v94 = entity;
  v95 = dCopy;
  if (v12)
  {
    v13 = +[_MKFUser entity];
    propertiesByName = [v13 propertiesByName];
    v15 = [propertiesByName objectForKeyedSubscript:@"accessCode"];
    v100 = v15;
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
  }

  else
  {
    v93 = MEMORY[0x277CBEBF8];
  }

  v16 = v6;
  v97 = updatesCopy;
  v92 = v9;
  v96 = objc_opt_self();
  v17 = v16;
  entity2 = [(__CFString *)v17 entity];
  v19 = +[_MKFUser entity];
  v20 = [entity2 isKindOfEntity:v19];

  objectID = v17;
  if (v20)
  {
LABEL_5:
    v23 = objectID;
    v24 = v23;
    goto LABEL_56;
  }

  *&v21 = 138543618;
  v91 = v21;
  objectID = v17;
  while (1)
  {
    v23 = objectID;
    v25 = v97;
    v26 = objc_opt_self();
    v99 = 0;
    v27 = [v25 hmd_fetchExistingObjectWithID:v23 propertiesToFetch:MEMORY[0x277CBEBF8] error:&v99];
    v28 = v99;
    if (v28)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v26;
      v31 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        objc_autoreleasePoolPop(v29);
LABEL_12:
        v36 = 0;
        goto LABEL_13;
      }

      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v103 = v32;
      v104 = 2114;
      v105 = v23;
      v106 = 2114;
      v107 = v28;
      v33 = v31;
      v34 = "%{public}@Failed to fetch object with objectID %{public}@: %{public}@";
      v35 = 32;
LABEL_10:
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, v34, buf, v35);

      goto LABEL_11;
    }

    if (!v27)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v26;
      v31 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v32 = HMFGetLogIdentifier();
      *buf = v91;
      v103 = v32;
      v104 = 2114;
      v105 = v23;
      v33 = v31;
      v34 = "%{public}@Couldn't find object with objectID %{public}@";
      v35 = 22;
      goto LABEL_10;
    }

    entity3 = [v27 entity];
    v42 = +[_MKFUserAccessCode entity];
    v43 = [entity3 isKindOfEntity:v42];

    if (!v43)
    {
      goto LABEL_12;
    }

    v44 = v27;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_41;
    }

    user = [v44 user];

    v36 = @"user";
    if (!user)
    {
      guest = [v44 guest];

      v36 = @"guest";
      if (!guest)
      {
LABEL_41:

        goto LABEL_12;
      }
    }

LABEL_13:
    superentity = v36;
    if (!superentity)
    {
      entity4 = [(__CFString *)v23 entity];
      if (entity4)
      {
        v39 = entity4;
        do
        {
          userInfo = [v39 userInfo];
          superentity = [userInfo objectForKeyedSubscript:@"parent"];

          if (superentity)
          {
            break;
          }

          superentity = [v39 superentity];

          v39 = superentity;
        }

        while (superentity);
      }

      else
      {
        superentity = 0;
      }
    }

    v101 = superentity;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:{1, v91}];
    v98 = 0;
    v51 = [v25 hmd_fetchExistingObjectWithID:v23 propertiesToFetch:v50 error:&v98];
    v52 = v98;

    if (v52)
    {
      v64 = objc_autoreleasePoolPush();
      v65 = v96;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = HMFGetLogIdentifier();
        *buf = 138543874;
        v103 = v67;
        v104 = 2114;
        v105 = v23;
        v106 = 2114;
        v107 = v52;
        _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch object with objectID %{public}@: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v64);
      v69 = v94;
      v68 = v95;
      v70 = v93;
      goto LABEL_48;
    }

    if (!v51)
    {
      v71 = objc_autoreleasePoolPush();
      v72 = v96;
      v73 = HMFGetOSLogHandle();
      v69 = v94;
      v68 = v95;
      v70 = v93;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = HMFGetLogIdentifier();
        *buf = v91;
        v103 = v74;
        v104 = 2114;
        v105 = v23;
        _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find object with objectID %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v71);
      v52 = 0;
LABEL_48:

      v24 = 0;
      goto LABEL_57;
    }

    v53 = [v51 valueForKey:superentity];
    if (!v53)
    {
      break;
    }

    v54 = v53;
    objc_opt_class();
    v55 = objc_opt_isKindOfClass() & 1;
    if (v55)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0;
    }

    v57 = v56;

    if (!v55)
    {
      v79 = objc_autoreleasePoolPush();
      v80 = v96;
      v81 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        v82 = HMFGetLogIdentifier();
        *buf = 138543874;
        v103 = v82;
        v104 = 2114;
        v105 = superentity;
        v106 = 2112;
        v107 = v51;
        _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_ERROR, "%{public}@Object value for '%{public}@' is not an object: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v79);
      goto LABEL_55;
    }

    objectID = [v54 objectID];

    entity5 = [(__CFString *)v17 entity];
    v59 = +[_MKFUserAccessCode entity];
    v60 = [entity5 isKindOfEntity:v59];

    if ((v60 & 1) == 0)
    {
      entity6 = [objectID entity];
      v62 = +[_MKFUser entity];
      v63 = [entity6 isKindOfEntity:v62];

      if (!v63)
      {
        continue;
      }
    }

    goto LABEL_5;
  }

  v75 = objc_autoreleasePoolPush();
  v76 = v96;
  v77 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
  {
    v78 = HMFGetLogIdentifier();
    *buf = 138543874;
    v103 = v78;
    v104 = 2114;
    v105 = superentity;
    v106 = 2112;
    v107 = v51;
    _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Object has no value for '%{public}@': %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v75);
LABEL_55:

  v24 = 0;
LABEL_56:
  v69 = v94;
  v68 = v95;
  v70 = v93;
LABEL_57:

  if (v24)
  {
    v83 = [v68 objectForKeyedSubscript:v24];
    v84 = v83;
    if (v83)
    {
      if ([v83 count])
      {
        [v84 addObjectsFromArray:v70];
      }
    }

    else
    {
      v89 = [MEMORY[0x277CBEB58] setWithArray:v70];
      [v68 setObject:v89 forKeyedSubscript:v24];
    }
  }

  else
  {
    v85 = objc_autoreleasePoolPush();
    v86 = v92;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = HMFGetLogIdentifier();
      *buf = 138543618;
      v103 = v88;
      v104 = 2114;
      v105 = v17;
      _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find user for model with objectID %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v85);
  }

  v90 = *MEMORY[0x277D85DE8];
}

@end