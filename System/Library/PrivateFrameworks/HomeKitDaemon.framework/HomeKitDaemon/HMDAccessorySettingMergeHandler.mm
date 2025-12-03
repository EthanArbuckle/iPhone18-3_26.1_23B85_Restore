@interface HMDAccessorySettingMergeHandler
+ (BOOL)_extractMinMaxStep:(id)step minConstraint:(id *)constraint maxConstraint:(id *)maxConstraint stepConstraint:(id *)stepConstraint first:(id)first;
+ (BOOL)_isNumber:(id)number betweenStart:(id)start andEnd:(id)end first:(id)first;
+ (id)_mergeFirst:(id)first second:(id)second mergedConstraints:(id)constraints mergeStrategy:(id)strategy;
+ (id)_mergeRangeConstraintsFirst:(id)first second:(id)second shouldAddMissing:(BOOL)missing;
+ (id)_mergeValidValueConstraintsFirst:(id)first second:(id)second shouldAddMissing:(BOOL)missing;
@end

@implementation HMDAccessorySettingMergeHandler

+ (id)_mergeValidValueConstraintsFirst:(id)first second:(id)second shouldAddMissing:(BOOL)missing
{
  missingCopy = missing;
  v38 = *MEMORY[0x277D85DE8];
  firstCopy = first;
  secondCopy = second;
  v9 = MEMORY[0x277CBEB98];
  constraints = [firstCopy constraints];
  v11 = [v9 setWithArray:constraints];
  v12 = [v11 mutableCopy];

  v13 = MEMORY[0x277CBEB98];
  constraints2 = [secondCopy constraints];
  v15 = [v13 setWithArray:constraints2];
  v16 = [v15 mutableCopy];

  v17 = objc_autoreleasePoolPush();
  v18 = firstCopy;
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
  if (missingCopy)
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
  allObjects = [v12 allObjects];

  v30 = *MEMORY[0x277D85DE8];

  return allObjects;
}

+ (BOOL)_extractMinMaxStep:(id)step minConstraint:(id *)constraint maxConstraint:(id *)maxConstraint stepConstraint:(id *)stepConstraint first:(id)first
{
  v51 = *MEMORY[0x277D85DE8];
  stepCopy = step;
  firstCopy = first;
  v12 = firstCopy;
  if (!constraint || !maxConstraint || !stepConstraint)
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

  v36 = firstCopy;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = stepCopy;
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
        type = [v18 type];
        maxConstraintCopy = constraint;
        if (type != 1)
        {
          if (type == 3)
          {
            maxConstraintCopy = stepConstraint;
          }

          else
          {
            maxConstraintCopy = maxConstraint;
            if (type != 2)
            {
              continue;
            }
          }
        }

        value = [v18 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = value;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        *maxConstraintCopy = v22;
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v15);
  }

  if (!*constraint || !*maxConstraint || !*stepConstraint)
  {
    v25 = objc_autoreleasePoolPush();
    v12 = v36;
    v29 = v36;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = *constraint;
      v32 = *maxConstraint;
      v33 = *stepConstraint;
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

+ (id)_mergeRangeConstraintsFirst:(id)first second:(id)second shouldAddMissing:(BOOL)missing
{
  missingCopy = missing;
  v96 = *MEMORY[0x277D85DE8];
  firstCopy = first;
  secondCopy = second;
  constraints = [firstCopy constraints];
  v10 = [constraints copy];
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v11 = [HMDAccessorySettingMergeHandler _extractMinMaxStep:v10 minConstraint:&v87 maxConstraint:&v86 stepConstraint:&v85 first:firstCopy];
  v81 = v87;
  v80 = v86;
  v12 = v85;

  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = firstCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      constraints2 = [v14 constraints];
      *buf = 138543618;
      v89 = v16;
      v90 = 2112;
      v91 = *&constraints2;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot extract min, max and step from this setting's constraints %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (!missingCopy)
    {
      v59 = 0;
      v18 = secondCopy;
      goto LABEL_51;
    }
  }

  v18 = secondCopy;
  constraints3 = [secondCopy constraints];
  v20 = [constraints3 copy];
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v21 = [HMDAccessorySettingMergeHandler _extractMinMaxStep:v20 minConstraint:&v84 maxConstraint:&v83 stepConstraint:&v82 first:firstCopy];
  v22 = v84;
  v23 = v83;
  v79 = v82;

  if (!v21)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = firstCopy;
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
    v61 = firstCopy;
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

  if (missingCopy)
  {
    if (!v81)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = firstCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v89 = v27;
        v90 = 2112;
        v91 = *&secondCopy;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Taking min constraint from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v81 = v22;
      v18 = secondCopy;
    }

    if (!v80)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = firstCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v89 = v31;
        v90 = 2112;
        v91 = *&secondCopy;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Taking max constraint from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v80 = v23;
      v18 = secondCopy;
    }

    if (!v12)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = firstCopy;
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
  v37 = firstCopy;
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
  if (missingCopy)
  {
LABEL_28:
    array = [MEMORY[0x277CBEB18] array];
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
    selfCopy = self;
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
      v69 = selfCopy;
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
        v56 = array;
        [array addObject:v55];

        v57 = [objc_alloc(MEMORY[0x277CD1780]) initWithType:3 value:v76];
        [array addObject:v57];

        v18 = secondCopy;
        v58 = [objc_alloc(MEMORY[0x277CD1780]) initWithType:2 value:v78];
        [array addObject:v58];

        v59 = [array copy];
LABEL_60:

        goto LABEL_50;
      }

      v67 = v41;
      v68 = objc_autoreleasePoolPush();
      v69 = selfCopy;
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
    v56 = array;
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

+ (BOOL)_isNumber:(id)number betweenStart:(id)start andEnd:(id)end first:(id)first
{
  v22 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  startCopy = start;
  endCopy = end;
  firstCopy = first;
  if (!numberCopy)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = firstCopy;
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

  if ([startCopy compare:numberCopy] != -1 && objc_msgSend(startCopy, "compare:", numberCopy) || objc_msgSend(numberCopy, "compare:", endCopy) != -1 && objc_msgSend(numberCopy, "compare:", endCopy))
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

+ (id)_mergeFirst:(id)first second:(id)second mergedConstraints:(id)constraints mergeStrategy:(id)strategy
{
  v101 = *MEMORY[0x277D85DE8];
  firstCopy = first;
  secondCopy = second;
  constraintsCopy = constraints;
  strategyCopy = strategy;
  value = [firstCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = value;
  }

  else
  {
    v15 = 0;
  }

  v91 = v15;

  value2 = [secondCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = value2;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v95 = 0;
  v96 = 0;
  v94 = 0;
  v19 = [self _extractMinMaxStep:constraintsCopy minConstraint:&v96 maxConstraint:&v95 stepConstraint:&v94 first:firstCopy];
  v20 = v96;
  v93 = v95;
  v92 = v94;
  if (v19)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = firstCopy;
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
      conflictValue = 0;
LABEL_74:
      v20 = v90;
      goto LABEL_75;
    }

    v25 = strategyCopy;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v86 = v18;
      v26 = secondCopy;
      v27 = HMFGetLogIdentifier();
      v28 = v25;
      v29 = v27;
      v30 = v28;
      strategy = [v28 strategy];
      if (strategy >= 5)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDAccessorySettingMergeStrategyType %tu", strategy];
      }

      else
      {
        v32 = off_278675050[strategy];
      }

      *buf = 138543618;
      v98 = v29;
      v99 = 2112;
      v100 = v32;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Merge strategy is %@", buf, 0x16u);

      v25 = v30;
      secondCopy = v26;
      v18 = v86;
    }

    objc_autoreleasePoolPop(v21);
    strategy2 = [v25 strategy];
    if (strategy2 == 4)
    {
      v62 = [self _isNumber:v91 betweenStart:v90 andEnd:v93 first:v22];
      v63 = [self _isNumber:v18 betweenStart:v90 andEnd:v93 first:v22];
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
        strategyCopy = v25;
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
          conflictValue = v91;
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
        strategyCopy = v25;
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
        conflictValue = v76;
        goto LABEL_74;
      }

      v78 = v64;
      strategyCopy = v25;
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

    if (strategy2 != 3)
    {
      if (strategy2 == 1)
      {
        conflictValue = [v25 conflictValue];
        v42 = objc_autoreleasePoolPush();
        v43 = v22;
        v44 = HMFGetOSLogHandle();
        v45 = v44;
        if (conflictValue)
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v46 = v87 = v18;
            *buf = 138543618;
            v98 = v46;
            v99 = 2112;
            v100 = conflictValue;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Using the conflict value %@ as a merged value", buf, 0x16u);

            v18 = v87;
          }

          strategyCopy = v25;

          objc_autoreleasePoolPop(v42);
          v47 = conflictValue;
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

          strategyCopy = v25;

          objc_autoreleasePoolPop(v42);
        }

        goto LABEL_74;
      }

      strategyCopy = v25;
      goto LABEL_20;
    }

    v48 = [self _isNumber:v91 betweenStart:v90 andEnd:v93 first:v22];
    v49 = [self _isNumber:v18 betweenStart:v90 andEnd:v93 first:v22];
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
      strategyCopy = v25;
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
        conflictValue = v91;
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
      strategyCopy = v25;
      if (v53)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v78 = v50;
    strategyCopy = v25;
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
    conflictValue = v90;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = firstCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v18;
      *buf = 138543618;
      v98 = v37;
      v99 = 2112;
      v100 = constraintsCopy;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot extract min, max and step from merged constraints %@", buf, 0x16u);

      v18 = v36;
    }

    objc_autoreleasePoolPop(v33);
    conflictValue = 0;
  }

LABEL_75:

  v82 = *MEMORY[0x277D85DE8];

  return conflictValue;
}

@end