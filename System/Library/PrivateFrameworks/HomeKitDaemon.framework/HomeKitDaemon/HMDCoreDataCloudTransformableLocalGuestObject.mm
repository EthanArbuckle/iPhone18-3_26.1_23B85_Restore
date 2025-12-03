@interface HMDCoreDataCloudTransformableLocalGuestObject
+ (void)_addGuestForObjectWithID:(void *)d additionalUpdates:(void *)updates context:;
@end

@implementation HMDCoreDataCloudTransformableLocalGuestObject

+ (void)_addGuestForObjectWithID:(void *)d additionalUpdates:(void *)updates context:
{
  v126 = *MEMORY[0x277D85DE8];
  v6 = a2;
  dCopy = d;
  updatesCopy = updates;
  v8 = objc_opt_self();
  v9 = +[_MKFGuest entity];
  propertiesByName = [v9 propertiesByName];
  v11 = [propertiesByName objectForKeyedSubscript:@"accessCode"];
  v118 = v11;
  v112 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];

  v12 = v6;
  v13 = updatesCopy;
  v111 = v8;
  v14 = objc_opt_self();
  objectID = v12;
  entity = [(__CFString *)objectID entity];
  v17 = +[_MKFGuest entity];
  LOBYTE(v8) = [entity isKindOfEntity:v17];

  v114 = objectID;
  if (v8)
  {
    goto LABEL_2;
  }

  *&v18 = 138543618;
  v110 = v18;
  p_cache = (&OBJC_METACLASS___HMDAccessCodeManagerUtilities + 16);
  while (1)
  {
    v19 = objectID;
    v24 = v13;
    v25 = v13;
    v26 = objc_opt_self();
    v117 = 0;
    v27 = [v25 hmd_fetchExistingObjectWithID:v19 propertiesToFetch:MEMORY[0x277CBEBF8] error:&v117];
    v28 = v117;
    if (v28)
    {
      v29 = v28;
      v30 = objc_autoreleasePoolPush();
      v31 = v26;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v121 = v33;
        v122 = 2114;
        v123 = v19;
        v124 = 2114;
        v125 = v29;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch object with objectID %{public}@: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
LABEL_8:
      v34 = 0;
      goto LABEL_9;
    }

    if (v27)
    {
      v29 = 0;
      v51 = v27;
    }

    else
    {
      v52 = objc_autoreleasePoolPush();
      v53 = v26;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        *buf = v110;
        v121 = v55;
        v122 = 2114;
        v123 = v19;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find object with objectID %{public}@ while searching for its parent", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v52);
      v116 = 0;
      v51 = [v25 existingObjectWithID:v19 error:&v116];
      v29 = v116;
      if (!v51)
      {
        v78 = objc_autoreleasePoolPush();
        v79 = v53;
        v80 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v81 = HMFGetLogIdentifier();
          *buf = v110;
          v121 = v81;
          v122 = 2114;
          v123 = v19;
          _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find object with objectID %{public}@ using existingObjectWithID API", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v78);
        v27 = 0;
        goto LABEL_8;
      }
    }

    entity2 = [v51 entity];
    v57 = +[_MKFWeekDayScheduleRule entity];
    v58 = [entity2 isKindOfEntity:v57];

    if (v58)
    {
      v27 = v51;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v60 = v27;
      }

      else
      {
        v60 = 0;
      }

      v61 = v60;

      if (isKindOfClass)
      {
        invitation = [v27 invitation];

        v34 = @"invitation";
        if (invitation || ([v27 guest], v63 = objc_claimAutoreleasedReturnValue(), v63, v34 = @"guest", v63))
        {
LABEL_40:

          goto LABEL_9;
        }
      }

      p_cache = (&OBJC_METACLASS___HMDAccessCodeManagerUtilities + 16);
    }

    entity3 = [v51 entity];
    v65 = +[_MKFYearDayScheduleRule entity];
    v66 = [entity3 isKindOfEntity:v65];

    if (v66)
    {
      v27 = v51;
      objc_opt_class();
      v67 = objc_opt_isKindOfClass();
      if (v67)
      {
        v68 = v27;
      }

      else
      {
        v68 = 0;
      }

      v69 = v68;

      if (v67)
      {
        invitation2 = [v27 invitation];

        v34 = @"invitation";
        if (invitation2)
        {
          goto LABEL_40;
        }

        guest = [v27 guest];

        v34 = @"guest";
        if (guest)
        {
          goto LABEL_40;
        }
      }

      p_cache = &OBJC_METACLASS___HMDAccessCodeManagerUtilities.cache;
    }

    entity4 = [v51 entity];
    entity5 = [p_cache + 198 entity];
    v74 = [entity4 isKindOfEntity:entity5];

    if (v74)
    {
      v27 = v51;
      objc_opt_class();
      v75 = objc_opt_isKindOfClass();
      if (v75)
      {
        v76 = v27;
      }

      else
      {
        v76 = 0;
      }

      v77 = v76;

      if ((v75 & 1) == 0)
      {
        goto LABEL_8;
      }

      v34 = @"home";
    }

    else
    {
      v34 = 0;
      v27 = v51;
    }

LABEL_9:

    v35 = v34;
    if (!v35)
    {
      v82 = objc_autoreleasePoolPush();
      v83 = v14;
      v84 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v85 = HMFGetLogIdentifier();
        *buf = v110;
        v121 = v85;
        v122 = 2114;
        v123 = v19;
        _os_log_impl(&dword_229538000, v84, OS_LOG_TYPE_ERROR, "%{public}@No parent pointer found for the objectID: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v82);
LABEL_69:
      v20 = 0;
      v22 = v112;
      v21 = dCopy;
      goto LABEL_70;
    }

    v36 = v35;
    v119 = v35;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
    v115 = 0;
    v38 = [v25 hmd_fetchExistingObjectWithID:v19 propertiesToFetch:v37 error:&v115];
    v39 = v115;

    if (v39)
    {
      v86 = objc_autoreleasePoolPush();
      v87 = v14;
      v88 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = HMFGetLogIdentifier();
        *buf = 138543874;
        v121 = v89;
        v122 = 2114;
        v123 = v19;
        v124 = 2114;
        v125 = v39;
        _os_log_impl(&dword_229538000, v88, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch object with objectID %{public}@: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v86);
      goto LABEL_61;
    }

    if (!v38)
    {
      v90 = objc_autoreleasePoolPush();
      v91 = v14;
      v92 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v93 = HMFGetLogIdentifier();
        *buf = v110;
        v121 = v93;
        v122 = 2114;
        v123 = v19;
        _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find object with objectID %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v90);
      v39 = 0;
LABEL_61:
      v22 = v112;
      v21 = dCopy;

      v20 = 0;
LABEL_70:
      v13 = v24;
      goto LABEL_71;
    }

    v40 = [v38 valueForKey:v36];
    if (!v40)
    {
      v94 = objc_autoreleasePoolPush();
      v95 = v14;
      v96 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v97 = HMFGetLogIdentifier();
        *buf = 138543874;
        v121 = v97;
        v122 = 2114;
        v123 = v36;
        v124 = 2112;
        v125 = v38;
        _os_log_impl(&dword_229538000, v96, OS_LOG_TYPE_ERROR, "%{public}@Object has no value for '%{public}@': %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v94);
LABEL_68:

      goto LABEL_69;
    }

    v41 = v40;
    objc_opt_class();
    v42 = objc_opt_isKindOfClass() & 1;
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;

    if (!v42)
    {
      v98 = objc_autoreleasePoolPush();
      v99 = v14;
      v100 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        v101 = HMFGetLogIdentifier();
        *buf = 138543874;
        v121 = v101;
        v122 = 2114;
        v123 = v36;
        v124 = 2112;
        v125 = v38;
        _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_ERROR, "%{public}@Object value for '%{public}@' is not an object: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v98);
      goto LABEL_68;
    }

    objectID = [v41 objectID];

    entity6 = [(__CFString *)objectID entity];
    p_cache = &OBJC_METACLASS___HMDAccessCodeManagerUtilities.cache;
    v46 = +[_MKFOutgoingInvitation entity];
    v47 = [entity6 isKindOfEntity:v46];

    if (v47)
    {
      break;
    }

    entity7 = [(__CFString *)objectID entity];
    v49 = +[_MKFGuest entity];
    v50 = [entity7 isKindOfEntity:v49];

    v13 = v24;
    if (v50)
    {
      goto LABEL_2;
    }
  }

  v13 = v24;
LABEL_2:
  v19 = objectID;
  v20 = v19;
  v22 = v112;
  v21 = dCopy;
LABEL_71:

  if (v20)
  {
    v102 = [v21 objectForKeyedSubscript:v20];
    v103 = v102;
    if (v102)
    {
      if ([v102 count])
      {
        [v103 addObjectsFromArray:v22];
      }
    }

    else
    {
      v108 = [MEMORY[0x277CBEB58] setWithArray:v22];
      [v21 setObject:v108 forKeyedSubscript:v20];
    }
  }

  else
  {
    v104 = objc_autoreleasePoolPush();
    v105 = v111;
    v106 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      v107 = HMFGetLogIdentifier();
      *buf = 138543618;
      v121 = v107;
      v122 = 2114;
      v123 = v114;
      _os_log_impl(&dword_229538000, v106, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find guest for model with objectID %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v104);
  }

  v109 = *MEMORY[0x277D85DE8];
}

@end