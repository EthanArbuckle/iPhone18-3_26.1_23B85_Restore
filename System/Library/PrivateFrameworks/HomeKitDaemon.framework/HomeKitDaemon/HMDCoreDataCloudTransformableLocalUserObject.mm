@interface HMDCoreDataCloudTransformableLocalUserObject
+ (void)_addUserForObjectWithID:(void *)a3 additionalUpdates:(void *)a4 context:;
@end

@implementation HMDCoreDataCloudTransformableLocalUserObject

+ (void)_addUserForObjectWithID:(void *)a3 additionalUpdates:(void *)a4 context:
{
  v108 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = [v6 entity];
  v11 = +[_MKFUserAccessCode entity];
  v12 = [v10 isKindOfEntity:v11];

  v94 = v10;
  v95 = v7;
  if (v12)
  {
    v13 = +[_MKFUser entity];
    v14 = [v13 propertiesByName];
    v15 = [v14 objectForKeyedSubscript:@"accessCode"];
    v100 = v15;
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
  }

  else
  {
    v93 = MEMORY[0x277CBEBF8];
  }

  v16 = v6;
  v97 = v8;
  v92 = v9;
  v96 = objc_opt_self();
  v17 = v16;
  v18 = [(__CFString *)v17 entity];
  v19 = +[_MKFUser entity];
  v20 = [v18 isKindOfEntity:v19];

  v22 = v17;
  if (v20)
  {
LABEL_5:
    v23 = v22;
    v24 = v23;
    goto LABEL_56;
  }

  *&v21 = 138543618;
  v91 = v21;
  v22 = v17;
  while (1)
  {
    v23 = v22;
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

    v41 = [v27 entity];
    v42 = +[_MKFUserAccessCode entity];
    v43 = [v41 isKindOfEntity:v42];

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

    v48 = [v44 user];

    v36 = @"user";
    if (!v48)
    {
      v49 = [v44 guest];

      v36 = @"guest";
      if (!v49)
      {
LABEL_41:

        goto LABEL_12;
      }
    }

LABEL_13:
    v37 = v36;
    if (!v37)
    {
      v38 = [(__CFString *)v23 entity];
      if (v38)
      {
        v39 = v38;
        do
        {
          v40 = [v39 userInfo];
          v37 = [v40 objectForKeyedSubscript:@"parent"];

          if (v37)
          {
            break;
          }

          v37 = [v39 superentity];

          v39 = v37;
        }

        while (v37);
      }

      else
      {
        v37 = 0;
      }
    }

    v101 = v37;
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

    v53 = [v51 valueForKey:v37];
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
        v105 = v37;
        v106 = 2112;
        v107 = v51;
        _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_ERROR, "%{public}@Object value for '%{public}@' is not an object: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v79);
      goto LABEL_55;
    }

    v22 = [v54 objectID];

    v58 = [(__CFString *)v17 entity];
    v59 = +[_MKFUserAccessCode entity];
    v60 = [v58 isKindOfEntity:v59];

    if ((v60 & 1) == 0)
    {
      v61 = [v22 entity];
      v62 = +[_MKFUser entity];
      v63 = [v61 isKindOfEntity:v62];

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
    v105 = v37;
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