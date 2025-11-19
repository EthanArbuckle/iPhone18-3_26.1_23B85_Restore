@interface _DKPrivacyPolicyEnforcer
+ (id)privacyPolicyEnforcer;
- (id)enforcePrivacy:(id)a3;
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

- (id)enforcePrivacy:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v56 = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AE18];
  v5 = +[_CDSiriLearningSettings sharedInstance];
  v6 = [v5 allLearningDisabledBundleIDs];
  v7 = [v4 predicateWithFormat:@"SELF.source.bundleID IN %@", v6];

  if (+[_CDDeviceInfo isRunningOnInternalBuild])
  {
    v8 = [v3 filteredArrayUsingPredicate:v7];
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
  v14 = [v3 filteredArrayUsingPredicate:v13];

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
          v22 = [v20 stream];
          v23 = [v22 name];

          v24 = [_CDEventStreams privacyPolicyForEventStreamName:v23];
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
            v27 = [v20 startDate];
            [v27 timeIntervalSinceReferenceDate];
            v29 = v28;

            [v24 temporalPrecision];
            v31 = v30 * floor(v29 / v30);
            v32 = [v20 endDate];
            [v32 timeIntervalSinceReferenceDate];
            v34 = v33;

            [v24 temporalPrecision];
            v36 = v35 * floor(v34 / v35);
            v54 = *(v18 + 1528);
            v53 = [v20 stream];
            v37 = [v20 source];
            v55 = v23;
            v38 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v31];
            v39 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v36];
            v40 = [v20 value];
            [v20 confidence];
            v42 = v41;
            [v20 metadata];
            v44 = v43 = v18;
            v25 = [v54 eventWithStream:v53 source:v37 startDate:v38 endDate:v39 value:v40 confidence:v44 metadata:v42];

            v18 = v43;
            v17 = v52;

            v15 = v51;
            [v25 setShouldSync:{objc_msgSend(v20, "shouldSync")}];
            v45 = [v20 UUID];
            [v25 setUUID:v45];

            [v25 setCompatibilityVersion:{objc_msgSend(v20, "compatibilityVersion")}];
            v46 = [v20 timeZone];
            [v25 setTimeZone:v46];

            v23 = v55;
          }

          v20 = v25;
        }

        if (!v20)
        {
          goto LABEL_23;
        }

        [v56 addObject:v20];
LABEL_22:

LABEL_23:
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v17);
  }

  v47 = [v56 copy];
  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

@end