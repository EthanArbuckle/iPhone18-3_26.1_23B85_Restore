@interface _CDInteractionPolicies
+ (id)interactionPolicies;
+ (id)limitArray:(id)array toMaxCount:(unint64_t)count;
+ (id)modifyDate:(id)date usingPolicy:(id)policy;
- (_CDInteractionPolicies)init;
- (id)dateOfOldestAllowedInteractionForMechanism:(int64_t)mechanism;
- (id)description;
- (id)filterAndModifyInteractionsWithPolicies:(id)policies enforceDataLimits:(BOOL)limits enforcePrivacy:(BOOL)privacy;
- (id)policyForMechanism:(int64_t)mechanism;
- (id)whitelistedFirstPartyBundleIds;
- (void)readConfigurationPlist;
- (void)setupDefaultHardcodedPolicies;
@end

@implementation _CDInteractionPolicies

+ (id)interactionPolicies
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (_CDInteractionPolicies)init
{
  v5.receiver = self;
  v5.super_class = _CDInteractionPolicies;
  v2 = [(_CDInteractionPolicies *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_CDInteractionPolicies *)v2 setupDefaultHardcodedPolicies];
  }

  return v3;
}

- (id)whitelistedFirstPartyBundleIds
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.MobileSMS";
  v5[1] = @"com.apple.iChat";
  v5[2] = @"com.apple.mobilemail";
  v5[3] = @"com.apple.mail";
  v5[4] = @"com.apple.UIKit.activity.AirDrop";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)policyForMechanism:(int64_t)mechanism
{
  specialPoliciesForMechanisms = self->_specialPoliciesForMechanisms;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:mechanism];
  v6 = [(NSDictionary *)specialPoliciesForMechanisms objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = self->_defaultPolicy;
  }

  return v6;
}

- (id)dateOfOldestAllowedInteractionForMechanism:(int64_t)mechanism
{
  v3 = [(_CDInteractionPolicies *)self policyForMechanism:mechanism];
  lifespanInSeconds = [v3 lifespanInSeconds];

  v5 = MEMORY[0x1E695DF00];
  v6 = -lifespanInSeconds;
  if (lifespanInSeconds > 0xDD7C00)
  {
    v6 = -14515200.0;
  }

  return [v5 dateWithTimeIntervalSinceNow:v6];
}

+ (id)modifyDate:(id)date usingPolicy:(id)policy
{
  dateCopy = date;
  policyCopy = policy;
  v7 = policyCopy;
  if (dateCopy)
  {
    if ([policyCopy timeResolutionInSeconds])
    {
      [dateCopy timeIntervalSinceReferenceDate];
      v9 = v8;
      timeResolutionInSeconds = [v7 timeResolutionInSeconds];
      timeResolutionInSeconds2 = [v7 timeResolutionInSeconds];
      v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:floor(v9 / timeResolutionInSeconds2) * timeResolutionInSeconds];
    }

    else
    {
      v12 = dateCopy;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)limitArray:(id)array toMaxCount:(unint64_t)count
{
  arrayCopy = array;
  v6 = arrayCopy;
  if (arrayCopy && [arrayCopy count] > count)
  {
    v7 = [v6 subarrayWithRange:{0, count}];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (id)filterAndModifyInteractionsWithPolicies:(id)policies enforceDataLimits:(BOOL)limits enforcePrivacy:(BOOL)privacy
{
  privacyCopy = privacy;
  limitsCopy = limits;
  v97 = *MEMORY[0x1E69E9840];
  policiesCopy = policies;
  v9 = +[_CDSiriLearningSettings sharedInstance];
  allLearningDisabledBundleIDs = [v9 allLearningDisabledBundleIDs];

  if ([allLearningDisabledBundleIDs count])
  {
    v11 = MEMORY[0x1E696AE18];
    v12 = [allLearningDisabledBundleIDs _pas_mappedArrayWithTransform:&__block_literal_global_61];
    v13 = [v11 predicateWithFormat:@"SELF.bundleId IN %@ OR SELF.targetBundleId IN %@", allLearningDisabledBundleIDs, v12];

    if (+[_CDDeviceInfo isRunningOnInternalBuild])
    {
      v14 = [policiesCopy filteredArrayUsingPredicate:v13];
      if ([v14 count])
      {
        v15 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v91 = [v14 count];
          v92 = 2114;
          v93 = allLearningDisabledBundleIDs;
          _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Filtered %tu interactions for bundles with Siri Learning disabled (%{public}@)", buf, 0x16u);
        }
      }
    }

    v16 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v13];
    v17 = [policiesCopy filteredArrayUsingPredicate:v16];

    policiesCopy = v17;
  }

  v18 = [policiesCopy count];
  if ((limitsCopy || privacyCopy) && v18)
  {
    v75 = allLearningDisabledBundleIDs;
    v78 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(policiesCopy, "count")}];
    v19 = [(_CDInteractionPolicies *)self policyForMechanism:1];
    v85 = [(_CDInteractionPolicies *)self dateOfOldestAllowedInteractionForMechanism:1];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v76 = policiesCopy;
    obj = policiesCopy;
    v84 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (!v84)
    {
      goto LABEL_55;
    }

    v83 = *v87;
    v79 = 1;
    v80 = limitsCopy;
    v81 = privacyCopy;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v87 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v86 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v19;
          v23 = v21;
          mechanism = [v23 mechanism];
          whitelistedFirstPartyBundleIds = [(_CDInteractionPolicies *)self whitelistedFirstPartyBundleIds];
          bundleId = [v23 bundleId];
          v27 = [whitelistedFirstPartyBundleIds containsObject:bundleId];

          if (v27)
          {
            specialPoliciesForBundleIds = self->_specialPoliciesForBundleIds;
            bundleId2 = [v23 bundleId];
            v19 = [(NSDictionary *)specialPoliciesForBundleIds objectForKeyedSubscript:bundleId2];

            dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds = [(_CDInteractionPolicies *)self dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds];
            goto LABEL_28;
          }

          targetBundleId = [v23 targetBundleId];
          if (!targetBundleId)
          {
            goto LABEL_22;
          }

          v32 = targetBundleId;
          whitelistedFirstPartyBundleIds2 = [(_CDInteractionPolicies *)self whitelistedFirstPartyBundleIds];
          targetBundleId2 = [v23 targetBundleId];
          v35 = [whitelistedFirstPartyBundleIds2 containsObject:targetBundleId2];

          if (v35)
          {
            v36 = self->_specialPoliciesForBundleIds;
            targetBundleId3 = [v23 targetBundleId];
            v19 = [(NSDictionary *)v36 objectForKeyedSubscript:targetBundleId3];

            dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds = [(_CDInteractionPolicies *)self dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds];
LABEL_27:
            limitsCopy = v80;
            privacyCopy = v81;
LABEL_28:

            v85 = dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds;
            if (privacyCopy)
            {
              goto LABEL_29;
            }

LABEL_24:
            v38 = 0;
            if (!limitsCopy)
            {
LABEL_35:
              v44 = 0;
              goto LABEL_36;
            }
          }

          else
          {
LABEL_22:
            if (mechanism != v79)
            {
              v19 = [(_CDInteractionPolicies *)self policyForMechanism:mechanism];

              dateOfOldestAllowedInteractionForWhitelistedFirstPartyBundleIds = [(_CDInteractionPolicies *)self dateOfOldestAllowedInteractionForMechanism:mechanism];
              v79 = mechanism;
              goto LABEL_27;
            }

            limitsCopy = v80;
            privacyCopy = v81;
            v19 = v22;
            if (!v81)
            {
              goto LABEL_24;
            }

LABEL_29:
            startDate = [v23 startDate];
            v40 = [v85 earlierDate:startDate];

            if (v40 == v85)
            {
              v38 = 0;
              if (!limitsCopy)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v41 = +[_CDLogging interactionChannel];
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                startDate2 = [v23 startDate];
                *buf = 138412802;
                v91 = startDate2;
                v92 = 2112;
                v93 = v85;
                v94 = 2112;
                v95 = v23;
                _os_log_debug_impl(&dword_191750000, v41, OS_LOG_TYPE_DEBUG, "Incoming interaction fails retention policy. %@ (oldest allowed is %@). %@", buf, 0x20u);
              }

              v38 = 1;
              if (!limitsCopy)
              {
                goto LABEL_35;
              }
            }
          }

          rateLimiter = [v19 rateLimiter];
          debited = [rateLimiter debited];

          v44 = debited ^ 1;
LABEL_36:
          if (((v38 | v44) & 1) == 0)
          {
            if (privacyCopy)
            {
              v45 = objc_opt_class();
              startDate3 = [v23 startDate];
              v47 = [v45 modifyDate:startDate3 usingPolicy:v19];
              [v23 setStartDate:v47];

              v48 = objc_opt_class();
              endDate = [v23 endDate];
              v50 = [v48 modifyDate:endDate usingPolicy:v19];
              [v23 setEndDate:v50];
            }

            if (limitsCopy)
            {
              v51 = objc_opt_class();
              recipients = [v23 recipients];
              v53 = [v51 limitArray:recipients toMaxCount:{objc_msgSend(v19, "maxNumberOfRecipients")}];
              [v23 setRecipients:v53];

              v54 = objc_opt_class();
              keywords = [v23 keywords];
              v56 = [v54 limitArray:keywords toMaxCount:{objc_msgSend(v19, "maxNumberOfKeywords")}];
              [v23 setKeywords:v56];

              v57 = objc_opt_class();
              attachments = [v23 attachments];
              v59 = [v57 limitArray:attachments toMaxCount:{objc_msgSend(v19, "maxNumberOfAttachments")}];
              [v23 setAttachments:v59];
            }

            if ([v23 mechanism] == 13)
            {
              targetBundleId4 = [v23 targetBundleId];
              v61 = [targetBundleId4 isEqualToString:@"com.apple.UIKit.activity.Mail"];

              if (v61)
              {
                v77 = v19;
                recipients2 = [v23 recipients];
                v63 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recipients2, "count")}];
                if ([recipients2 count])
                {
                  v64 = 0;
                  do
                  {
                    v65 = [recipients2 objectAtIndexedSubscript:v64];
                    personId = [v65 personId];

                    if (personId)
                    {
                      [v65 setPersonId:0];
                    }

                    else
                    {
                      [v65 identifier];
                      v68 = v67 = self;
                      v69 = [_CDContactResolver resolveContactIfPossibleFromContactIdentifierString:v68];
                      identifier = [v69 identifier];

                      self = v67;
                      [v65 setPersonId:identifier];
                      if (identifier)
                      {
                        [v65 setPersonIdType:3];
                      }
                    }

                    [v63 addObject:v65];

                    ++v64;
                  }

                  while ([recipients2 count] > v64);
                }

                [v23 setRecipients:v63];

                limitsCopy = v80;
                privacyCopy = v81;
                v19 = v77;
              }
            }

            [v78 addObject:v23];
          }
        }

        ++v20;
      }

      while (v20 != v84);
      v84 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
      if (!v84)
      {
LABEL_55:

        v72 = [v78 copy];
        allLearningDisabledBundleIDs = v75;
        policiesCopy = v76;
        goto LABEL_57;
      }
    }
  }

  v72 = policiesCopy;
LABEL_57:

  v73 = *MEMORY[0x1E69E9840];

  return v72;
}

- (id)description
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@ { \n", v5];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxNumberOfInteractions];
  [v3 appendFormat:@"         maxNumber: %@\n", v6];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxLifespanInSeconds];
  [v3 appendFormat:@"       maxLifespan: %@\n", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxNumberOfInteractionsDeletedInBatch];
  [v3 appendFormat:@" maxDeletedInBatch: %@\n", v8];

  [v3 appendFormat:@"     defaultPolicy: %@\n", self->_defaultPolicy];
  [v3 appendFormat:@"   specialPolicies: {\n"];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = self->_specialPoliciesForMechanisms;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = mechanismToString([v14 integerValue]);
        v16 = [(NSDictionary *)self->_specialPoliciesForMechanisms objectForKeyedSubscript:v14];
        [v3 appendFormat:@" %@  : %@\n", v15, v16];
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = self->_specialPoliciesForBundleIds;
  v18 = [(NSDictionary *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        v23 = [(NSDictionary *)self->_specialPoliciesForBundleIds objectForKeyedSubscript:v22];
        [v3 appendFormat:@" %@  : %@\n", v22, v23, v26];
      }

      v19 = [(NSDictionary *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  [v3 appendFormat:@"}\n"];
  [v3 appendString:@"}\n"];
  v24 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setupDefaultHardcodedPolicies
{
  v23[5] = *MEMORY[0x1E69E9840];
  *&self->_maxNumberOfInteractions = xmmword_19190EEB0;
  self->_maxLifespanInSeconds = 14515200.0;
  v3 = +[_CDInteractionPolicy defaultPolicy];
  defaultPolicy = self->_defaultPolicy;
  self->_defaultPolicy = v3;

  v22[0] = &unk_1F05EEBB0;
  v5 = +[_CDInteractionPolicy defaultPolicyForEmail];
  v23[0] = v5;
  v22[1] = &unk_1F05EEBC8;
  v6 = +[_CDInteractionPolicy defaultPolicyForMessages];
  v23[1] = v6;
  v22[2] = &unk_1F05EEBE0;
  v7 = +[_CDInteractionPolicy defaultPolicyForMessages];
  v23[2] = v7;
  v22[3] = &unk_1F05EEBF8;
  v8 = +[_CDInteractionPolicy defaultPolicyForMessages];
  v23[3] = v8;
  v22[4] = &unk_1F05EEC10;
  v9 = +[_CDInteractionPolicy defaultPolicyForMeetings];
  v23[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];
  specialPoliciesForMechanisms = self->_specialPoliciesForMechanisms;
  self->_specialPoliciesForMechanisms = v10;

  v20[0] = @"com.apple.MobileSMS";
  v12 = +[_CDInteractionPolicy specialPolicyForFirstPartyApps];
  v21[0] = v12;
  v20[1] = @"com.apple.iChat";
  v13 = +[_CDInteractionPolicy specialPolicyForFirstPartyApps];
  v21[1] = v13;
  v20[2] = @"com.apple.mobilemail";
  v14 = +[_CDInteractionPolicy specialPolicyForFirstPartyApps];
  v21[2] = v14;
  v20[3] = @"com.apple.mail";
  v15 = +[_CDInteractionPolicy specialPolicyForFirstPartyApps];
  v21[3] = v15;
  v20[4] = @"com.apple.UIKit.activity.AirDrop";
  v16 = +[_CDInteractionPolicy specialPolicyForFirstPartyApps];
  v21[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
  specialPoliciesForBundleIds = self->_specialPoliciesForBundleIds;
  self->_specialPoliciesForBundleIds = v17;

  v19 = *MEMORY[0x1E69E9840];
}

- (void)readConfigurationPlist
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[_CDPaths policiesConfigPath];
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_191750000, self, OS_LOG_TYPE_ERROR, "Failed to read %@", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

@end