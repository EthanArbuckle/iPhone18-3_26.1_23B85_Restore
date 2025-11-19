@interface HMDAccessorySettingMergeHandler
+ (BOOL)_extractMinMaxStep:(id)a3 minConstraint:(id *)a4 maxConstraint:(id *)a5 stepConstraint:(id *)a6 first:(id)a7;
+ (BOOL)_isNumber:(id)a3 betweenStart:(id)a4 andEnd:(id)a5 first:(id)a6;
+ (id)_mergeFirst:(id)a3 second:(id)a4 mergedConstraints:(id)a5 mergeStrategy:(id)a6;
+ (id)_mergeRangeConstraintsFirst:(id)a3 second:(id)a4 shouldAddMissing:(BOOL)a5;
+ (id)_mergeValidValueConstraintsFirst:(id)a3 second:(id)a4 shouldAddMissing:(BOOL)a5;
@end

@implementation HMDAccessorySettingMergeHandler

+ (id)_mergeValidValueConstraintsFirst:(id)a3 second:(id)a4 shouldAddMissing:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEB98];
  v10 = [v7 constraints];
  v11 = [v9 setWithArray:v10];
  v12 = [v11 mutableCopy];

  v13 = MEMORY[0x277CBEB98];
  v14 = [v8 constraints];
  v15 = [v13 setWithArray:v14];
  v16 = [v15 mutableCopy];

  v17 = objc_autoreleasePoolPush();
  v18 = v7;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v32 = 138543874;
    v33 = v20;
    v34 = 2048;
    v35 = [v12 count];
    v36 = 2048;
    v37 = [v16 count];
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Valid value constraints: this: %lu, second: %lu", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  if (v5)
  {
    [v12 unionSet:v16];
    v21 = objc_autoreleasePoolPush();
    v22 = v18;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v24 = HMFGetLogIdentifier();
    v25 = [v12 count];
    v32 = 138543618;
    v33 = v24;
    v34 = 2048;
    v35 = v25;
    v26 = "%{public}@Combined: %lu";
  }

  else
  {
    [v12 intersectSet:v16];
    v21 = objc_autoreleasePoolPush();
    v27 = v18;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v24 = HMFGetLogIdentifier();
    v28 = [v12 count];
    v32 = 138543618;
    v33 = v24;
    v34 = 2048;
    v35 = v28;
    v26 = "%{public}@Intersected: %lu";
  }

  _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, v26, &v32, 0x16u);

LABEL_9:
  objc_autoreleasePoolPop(v21);
  v29 = [v12 allObjects];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (BOOL)_extractMinMaxStep:(id)a3 minConstraint:(id *)a4 maxConstraint:(id *)a5 stepConstraint:(id *)a6 first:(id)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a7;
  v12 = v11;
  if (!a4 || !a5 || !a6)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v12;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot return result in invalid data", buf, 0xCu);
    }

    goto LABEL_28;
  }

  v36 = v11;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v19 = [v18 type];
        v20 = a4;
        if (v19 != 1)
        {
          if (v19 == 3)
          {
            v20 = a6;
          }

          else
          {
            v20 = a5;
            if (v19 != 2)
            {
              continue;
            }
          }
        }

        v21 = [v18 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        *v20 = v22;
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v15);
  }

  if (!*a4 || !*a5 || !*a6)
  {
    v25 = objc_autoreleasePoolPush();
    v12 = v36;
    v29 = v36;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = *a4;
      v32 = *a5;
      v33 = *a6;
      *buf = 138544130;
      v43 = v30;
      v44 = 2112;
      v45 = v31;
      v46 = 2112;
      v47 = v32;
      v48 = 2112;
      v49 = v33;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not find min %@ or max %@ or step %@", buf, 0x2Au);
    }

LABEL_28:

    objc_autoreleasePoolPop(v25);
    v24 = 0;
    goto LABEL_29;
  }

  v24 = 1;
  v12 = v36;
LABEL_29:

  v34 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)_mergeRangeConstraintsFirst:(id)a3 second:(id)a4 shouldAddMissing:(BOOL)a5
{
  v5 = a5;
  v96 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 constraints];
  v10 = [v9 copy];
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v11 = [HMDAccessorySettingMergeHandler _extractMinMaxStep:v10 minConstraint:&v87 maxConstraint:&v86 stepConstraint:&v85 first:v7];
  v81 = v87;
  v80 = v86;
  v12 = v85;

  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v14 constraints];
      *buf = 138543618;
      v89 = v16;
      v90 = 2112;
      v91 = *&v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot extract min, max and step from this setting's constraints %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (!v5)
    {
      v59 = 0;
      v18 = v8;
      goto LABEL_51;
    }
  }

  v18 = v8;
  v19 = [v8 constraints];
  v20 = [v19 copy];
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v21 = [HMDAccessorySettingMergeHandler _extractMinMaxStep:v20 minConstraint:&v84 maxConstraint:&v83 stepConstraint:&v82 first:v7];
  v22 = v84;
  v23 = v83;
  v79 = v82;

  if (!v21)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = v7;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543362;
      v89 = v63;
      v64 = "%{public}@Cannot extract min, max and step from second setting's constraints";
LABEL_47:
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, v64, buf, 0xCu);
    }

LABEL_48:

    objc_autoreleasePoolPop(v60);
    goto LABEL_49;
  }

  if (!v22 || !v23 || !v79)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = v7;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543362;
      v89 = v63;
      v64 = "%{public}@second min, max or step is nil";
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  if (v5)
  {
    if (!v81)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v7;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v89 = v27;
        v90 = 2112;
        v91 = *&v8;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Taking min constraint from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v81 = v22;
      v18 = v8;
    }

    if (!v80)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v7;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v89 = v31;
        v90 = 2112;
        v91 = *&v8;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Taking max constraint from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v80 = v23;
      v18 = v8;
    }

    if (!v12)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v7;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v89 = v35;
        v90 = 2112;
        v91 = *&v18;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Taking step constraint from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v12 = v79;
    }
  }

  if (v81 && v80 && v12)
  {
    goto LABEL_28;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = v7;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v39 = v75 = v36;
    *buf = 138543362;
    v89 = v39;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Min, max or step is nil", buf, 0xCu);

    v36 = v75;
  }

  objc_autoreleasePoolPop(v36);
  if (v5)
  {
LABEL_28:
    v74 = [MEMORY[0x277CBEB18] array];
    if ([v81 compare:v22] == -1)
    {
      v40 = v22;
    }

    else
    {
      v40 = v81;
    }

    v41 = v40;
    if ([v12 compare:v79] == -1)
    {
      v42 = v79;
    }

    else
    {
      v42 = v12;
    }

    v76 = v42;
    v73 = v23;
    if ([v80 compare:v23] == -1)
    {
      v43 = v80;
    }

    else
    {
      v43 = v23;
    }

    v44 = v43;
    v45 = objc_autoreleasePoolPush();
    v46 = a1;
    v47 = HMFGetOSLogHandle();
    v78 = v44;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138544130;
      v89 = v48;
      v90 = 2112;
      v91 = *&v41;
      v92 = 2112;
      v93 = v76;
      v94 = 2112;
      v95 = v78;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Chosen min: %@, step: %@, max: %@", buf, 0x2Au);

      v44 = v78;
    }

    objc_autoreleasePoolPop(v45);
    [v44 doubleValue];
    v50 = v49;
    [v41 doubleValue];
    v52 = v50 - v51;
    if (v52 <= 0.0)
    {
      v67 = v41;
      v68 = objc_autoreleasePoolPush();
      v69 = v46;
      v70 = HMFGetOSLogHandle();
      v23 = v73;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = HMFGetLogIdentifier();
        *buf = 138543618;
        v89 = v71;
        v90 = 2048;
        v91 = v52;
        v72 = "%{public}@Chosen max constraint is not compatible with min constraint: %lf";
LABEL_58:
        _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, v72, buf, 0x16u);
      }
    }

    else
    {
      v53 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
      v54 = compareCharacteristicValue(v76, v53, 1, &unk_283E780A0);

      v23 = v73;
      if (v54)
      {
        v55 = [objc_alloc(MEMORY[0x277CD1780]) initWithType:1 value:v41];
        v56 = v74;
        [v74 addObject:v55];

        v57 = [objc_alloc(MEMORY[0x277CD1780]) initWithType:3 value:v76];
        [v74 addObject:v57];

        v18 = v8;
        v58 = [objc_alloc(MEMORY[0x277CD1780]) initWithType:2 value:v78];
        [v74 addObject:v58];

        v59 = [v74 copy];
LABEL_60:

        goto LABEL_50;
      }

      v67 = v41;
      v68 = objc_autoreleasePoolPush();
      v69 = v46;
      v70 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = HMFGetLogIdentifier();
        *buf = 138543618;
        v89 = v71;
        v90 = 2048;
        v91 = v52;
        v72 = "%{public}@New max-min cannot fit in the new step value: %lf";
        goto LABEL_58;
      }
    }

    objc_autoreleasePoolPop(v68);
    v59 = 0;
    v56 = v74;
    v41 = v67;
    goto LABEL_60;
  }

LABEL_49:
  v59 = 0;
LABEL_50:

LABEL_51:
  v65 = *MEMORY[0x277D85DE8];

  return v59;
}

+ (BOOL)_isNumber:(id)a3 betweenStart:(id)a4 andEnd:(id)a5 first:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v12;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Given value is nil, cannot determine whether within the range", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_10;
  }

  if ([v10 compare:v9] != -1 && objc_msgSend(v10, "compare:", v9) || objc_msgSend(v9, "compare:", v11) != -1 && objc_msgSend(v9, "compare:", v11))
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v13 = 1;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)_mergeFirst:(id)a3 second:(id)a4 mergedConstraints:(id)a5 mergeStrategy:(id)a6
{
  v101 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v91 = v15;

  v16 = [v11 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v95 = 0;
  v96 = 0;
  v94 = 0;
  v19 = [a1 _extractMinMaxStep:v12 minConstraint:&v96 maxConstraint:&v95 stepConstraint:&v94 first:v10];
  v20 = v96;
  v93 = v95;
  v92 = v94;
  if (v19)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v10;
    v23 = HMFGetOSLogHandle();
    v24 = v23;
    v90 = v20;
    if (!v20 || !v93 || !v92)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v40 = v39 = v18;
        *buf = 138543362;
        v98 = v40;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Min, max or step is nil", buf, 0xCu);

        v18 = v39;
      }

      objc_autoreleasePoolPop(v21);
LABEL_20:
      v38 = 0;
LABEL_74:
      v20 = v90;
      goto LABEL_75;
    }

    v25 = v13;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v86 = v18;
      v26 = v11;
      v27 = HMFGetLogIdentifier();
      v28 = v25;
      v29 = v27;
      v30 = v28;
      v31 = [v28 strategy];
      if (v31 >= 5)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDAccessorySettingMergeStrategyType %tu", v31];
      }

      else
      {
        v32 = off_278675050[v31];
      }

      *buf = 138543618;
      v98 = v29;
      v99 = 2112;
      v100 = v32;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Merge strategy is %@", buf, 0x16u);

      v25 = v30;
      v11 = v26;
      v18 = v86;
    }

    objc_autoreleasePoolPop(v21);
    v41 = [v25 strategy];
    if (v41 == 4)
    {
      v62 = [a1 _isNumber:v91 betweenStart:v90 andEnd:v93 first:v22];
      v63 = [a1 _isNumber:v18 betweenStart:v90 andEnd:v93 first:v22];
      v64 = objc_autoreleasePoolPush();
      v51 = v22;
      v52 = HMFGetOSLogHandle();
      v65 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
      if (v62 && v63)
      {
        if (v65)
        {
          v66 = HMFGetLogIdentifier();
          *buf = 138543362;
          v98 = v66;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Current values are within the merged range", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v64);
        v88 = v18;
        v67 = [(__CFString *)v91 compare:v18];
        v68 = objc_autoreleasePoolPush();
        v69 = v51;
        v70 = HMFGetOSLogHandle();
        v71 = os_log_type_enabled(v70, OS_LOG_TYPE_INFO);
        v13 = v25;
        if (v67 != -1)
        {
          if (v71)
          {
            v72 = HMFGetLogIdentifier();
            *buf = 138543618;
            v98 = v72;
            v99 = 2112;
            v100 = v91;
            _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@Retaining current value %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
          v38 = v91;
          v18 = v88;
          goto LABEL_74;
        }

        if (v71)
        {
          v81 = HMFGetLogIdentifier();
          *buf = 138543618;
          v98 = v81;
          v99 = 2112;
          v100 = v88;
          _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@Choosing second setting's value %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v68);
        v18 = v88;
        goto LABEL_72;
      }

      if (v62)
      {
        v73 = v64;
        v13 = v25;
        if (v65)
        {
LABEL_52:
          v74 = HMFGetLogIdentifier();
          *buf = 138543618;
          v98 = v74;
          v99 = 2112;
          v100 = v91;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Only current value %@ is within the merged range", buf, 0x16u);
        }

LABEL_53:

        objc_autoreleasePoolPop(v73);
        v75 = v91;
LABEL_54:
        v76 = v75;
LABEL_73:
        v38 = v76;
        goto LABEL_74;
      }

      v78 = v64;
      v13 = v25;
      if (!v63)
      {
        if (v65)
        {
          v85 = HMFGetLogIdentifier();
          *buf = 138543618;
          v98 = v85;
          v99 = 2112;
          v100 = v93;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Neither of the values are within the merged range, choosing the max %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v78);
        v75 = v93;
        goto LABEL_54;
      }

      if (v65)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    if (v41 != 3)
    {
      if (v41 == 1)
      {
        v38 = [v25 conflictValue];
        v42 = objc_autoreleasePoolPush();
        v43 = v22;
        v44 = HMFGetOSLogHandle();
        v45 = v44;
        if (v38)
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v46 = v87 = v18;
            *buf = 138543618;
            v98 = v46;
            v99 = 2112;
            v100 = v38;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Using the conflict value %@ as a merged value", buf, 0x16u);

            v18 = v87;
          }

          v13 = v25;

          objc_autoreleasePoolPop(v42);
          v47 = v38;
        }

        else
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v77 = v89 = v18;
            *buf = 138543362;
            v98 = v77;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the conflict value", buf, 0xCu);

            v18 = v89;
          }

          v13 = v25;

          objc_autoreleasePoolPop(v42);
        }

        goto LABEL_74;
      }

      v13 = v25;
      goto LABEL_20;
    }

    v48 = [a1 _isNumber:v91 betweenStart:v90 andEnd:v93 first:v22];
    v49 = [a1 _isNumber:v18 betweenStart:v90 andEnd:v93 first:v22];
    v50 = objc_autoreleasePoolPush();
    v51 = v22;
    v52 = HMFGetOSLogHandle();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
    if (v48 && v49)
    {
      if (v53)
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543362;
        v98 = v54;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Current values are within the merged range", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v55 = v18;
      v56 = [(__CFString *)v91 compare:v18];
      v57 = objc_autoreleasePoolPush();
      v58 = v51;
      v59 = HMFGetOSLogHandle();
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);
      v13 = v25;
      if (v56 == -1)
      {
        if (v60)
        {
          v80 = HMFGetLogIdentifier();
          *buf = 138543618;
          v98 = v80;
          v99 = 2112;
          v100 = v91;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Retaining current value %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v57);
        v38 = v91;
        v18 = v55;
        goto LABEL_74;
      }

      if (v60)
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        v98 = v61;
        v99 = 2112;
        v100 = v55;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Choosing second setting's value %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v57);
      v18 = v55;
      goto LABEL_72;
    }

    if (v48)
    {
      v73 = v50;
      v13 = v25;
      if (v53)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v78 = v50;
    v13 = v25;
    if (v49)
    {
      if (v53)
      {
LABEL_64:
        v79 = HMFGetLogIdentifier();
        *buf = 138543618;
        v98 = v79;
        v99 = 2112;
        v100 = v18;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Only second setting's value %@ is within the merged range", buf, 0x16u);
      }

LABEL_65:

      objc_autoreleasePoolPop(v78);
LABEL_72:
      v76 = v18;
      goto LABEL_73;
    }

    if (v53)
    {
      v84 = HMFGetLogIdentifier();
      *buf = 138543618;
      v98 = v84;
      v99 = 2112;
      v100 = v90;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Neither of the values are within the merged range, choosing the min %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v78);
    v20 = v90;
    v38 = v90;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v10;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v18;
      *buf = 138543618;
      v98 = v37;
      v99 = 2112;
      v100 = v12;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot extract min, max and step from merged constraints %@", buf, 0x16u);

      v18 = v36;
    }

    objc_autoreleasePoolPop(v33);
    v38 = 0;
  }

LABEL_75:

  v82 = *MEMORY[0x277D85DE8];

  return v38;
}

@end