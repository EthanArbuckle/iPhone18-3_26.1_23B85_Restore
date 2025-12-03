@interface _DKPrivacyPolicyEnforcer
+ (id)privacyPolicyEnforcer;
- (id)enforcePrivacy:(id)privacy;
@end

@implementation _DKPrivacyPolicyEnforcer

+ (id)privacyPolicyEnforcer
{
  if (privacyPolicyEnforcer_onceToken != -1)
  {
    +[_DKPrivacyPolicyEnforcer privacyPolicyEnforcer];
  }

  v3 = privacyPolicyEnforcer_enforcer;

  return v3;
}

- (id)enforcePrivacy:(id)privacy
{
  v65 = *MEMORY[0x1E69E9840];
  privacyCopy = privacy;
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AE18];
  v5 = +[_CDSiriLearningSettings sharedInstance];
  allLearningDisabledBundleIDs = [v5 allLearningDisabledBundleIDs];
  v7 = [v4 predicateWithFormat:@"SELF.source.bundleID IN %@", allLearningDisabledBundleIDs];

  if (+[_CDDeviceInfo isRunningOnInternalBuild])
  {
    v8 = [privacyCopy filteredArrayUsingPredicate:v7];
    if ([v8 count])
    {
      v9 = MEMORY[0x1E695DFD8];
      v10 = [v8 valueForKeyPath:@"source.bundleID"];
      v11 = [v9 setWithArray:v10];

      v12 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v64 = v11;
        _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "Filtered objects for bundles with Siri Learning disabled: %@", buf, 0xCu);
      }
    }
  }

  v50 = v7;
  v13 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v7];
  v14 = [privacyCopy filteredArrayUsingPredicate:v13];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v57 = *v59;
    v18 = 0x1E7366000uLL;
    v51 = v15;
    do
    {
      v19 = 0;
      v52 = v17;
      do
      {
        if (*v59 != v57)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v58 + 1) + 8 * v19);
        v21 = *(v18 + 1528);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v20;
          stream = [v20 stream];
          name = [stream name];

          v24 = [_CDEventStreams privacyPolicyForEventStreamName:name];
          if (!v24)
          {
            v24 = +[_CDPrivacyPolicy sharedPrivacyPolicy];
          }

          if (![v24 canPersistOnStorage])
          {

            goto LABEL_22;
          }

          [v24 temporalPrecision];
          v25 = v20;
          if (v26 != 0.0)
          {
            startDate = [v20 startDate];
            [startDate timeIntervalSinceReferenceDate];
            v29 = v28;

            [v24 temporalPrecision];
            v31 = v30 * floor(v29 / v30);
            endDate = [v20 endDate];
            [endDate timeIntervalSinceReferenceDate];
            v34 = v33;

            [v24 temporalPrecision];
            v36 = v35 * floor(v34 / v35);
            v54 = *(v18 + 1528);
            stream2 = [v20 stream];
            source = [v20 source];
            v55 = name;
            v38 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v31];
            v39 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v36];
            value = [v20 value];
            [v20 confidence];
            v42 = v41;
            [v20 metadata];
            v44 = v43 = v18;
            v25 = [v54 eventWithStream:stream2 source:source startDate:v38 endDate:v39 value:value confidence:v44 metadata:v42];

            v18 = v43;
            v17 = v52;

            v15 = v51;
            [v25 setShouldSync:{objc_msgSend(v20, "shouldSync")}];
            uUID = [v20 UUID];
            [v25 setUUID:uUID];

            [v25 setCompatibilityVersion:{objc_msgSend(v20, "compatibilityVersion")}];
            timeZone = [v20 timeZone];
            [v25 setTimeZone:timeZone];

            name = v55;
          }

          v20 = v25;
        }

        if (!v20)
        {
          goto LABEL_23;
        }

        [array addObject:v20];
LABEL_22:

LABEL_23:
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v17);
  }

  v47 = [array copy];
  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

@end