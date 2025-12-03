@interface _HKObjectComparisonFilter(HealthDaemon)
- (id)filterIgnoringPrivateMetadata;
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKObjectComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v147 = *MEMORY[0x277D85DE8];
  v5 = a3;
  keyPath = [self keyPath];
  v7 = [keyPath isEqualToString:*MEMORY[0x277CCC6A0]];

  if (v7)
  {
    if (self)
    {
      _appleWatchSourcePredicate = HDAssociationEntityPredicateForAssociatedObjects([self operatorType] == 4);
LABEL_4:
      falsePredicate2 = _appleWatchSourcePredicate;
      goto LABEL_85;
    }

    goto LABEL_115;
  }

  keyPath2 = [self keyPath];
  v11 = [keyPath2 isEqualToString:*MEMORY[0x277CCC6B0]];

  selfCopy = self;
  if (!v11)
  {
    keyPath3 = [self keyPath];
    v34 = [keyPath3 isEqualToString:*MEMORY[0x277CCC768]];

    if (v34)
    {
      if (!self)
      {
        goto LABEL_115;
      }

      v35 = v5;
      operatorType = [self operatorType];
      value = [self value];
      v38 = value;
      v120 = v5;
      if (operatorType != 10)
      {
        *v137 = value;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:1];

        v38 = v39;
      }

      v40 = v35;
      v41 = v38;
      objc_opt_self();
      v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v19 = v41;
      v43 = [v19 countByEnumeratingWithState:&v138 objects:buf count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v139;
        while (2)
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v139 != v45)
            {
              objc_enumerationMutation(v19);
            }

            bundleIdentifier = [*(*(&v138 + 1) + 8 * i) bundleIdentifier];
            sourceManager = [v40 sourceManager];
            *&v131 = 0;
            v49 = [sourceManager allSourcesForBundleIdentifier:bundleIdentifier error:&v131];
            v50 = v131;

            if (!v49)
            {
              _HKInitializeLogging();
              v81 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *v144 = 138412546;
                *&v144[4] = bundleIdentifier;
                *&v144[12] = 2114;
                *&v144[14] = v50;
                _os_log_error_impl(&dword_228986000, v81, OS_LOG_TYPE_ERROR, "Failed to retrieve sources for '%@': %{public}@", v144, 0x16u);
              }

              v51 = 0;
              goto LABEL_71;
            }

            [v42 unionSet:v49];
          }

          v44 = [v19 countByEnumeratingWithState:&v138 objects:buf count:16];
          if (v44)
          {
            continue;
          }

          break;
        }
      }

      v51 = v42;
LABEL_71:

      if (v51)
      {
        [selfCopy operatorType];
        v82 = HDSQLiteComparisonTypeForPredicateOperator();
        falsePredicate = HDDataEntityPredicateForSourceEntitySet(v82, v51);
LABEL_83:
        falsePredicate2 = falsePredicate;
        v5 = v120;

LABEL_84:
        goto LABEL_85;
      }

      goto LABEL_82;
    }

    keyPath4 = [self keyPath];
    v55 = [keyPath4 isEqualToString:*MEMORY[0x277CCC770]];

    if (v55)
    {
      if (!self)
      {
        goto LABEL_115;
      }

      v56 = v5;
      operatorType2 = [self operatorType];
      value2 = [self value];
      v59 = value2;
      v120 = v5;
      if (operatorType2 != 10)
      {
        v136 = value2;
        v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];

        v59 = v60;
      }

      v124 = v56;
      v61 = v59;
      objc_opt_self();
      v62 = objc_alloc_init(MEMORY[0x277CBEB58]);
      memset(v144, 0, sizeof(v144));
      v145 = 0u;
      v146 = 0u;
      v19 = v61;
      v123 = [v19 countByEnumeratingWithState:v144 objects:buf count:16];
      if (v123)
      {
        v121 = v19;
        v122 = **&v144[16];
        while (2)
        {
          v63 = 0;
          do
          {
            if (**&v144[16] != v122)
            {
              objc_enumerationMutation(v19);
            }

            v64 = *(*&v144[8] + 8 * v63);
            source = [v64 source];
            bundleIdentifier2 = [source bundleIdentifier];

            sourceManager2 = [v124 sourceManager];
            v135 = 0;
            v68 = [sourceManager2 allSourcesForBundleIdentifier:bundleIdentifier2 error:&v135];
            v69 = v135;

            if (!v68)
            {
              _HKInitializeLogging();
              v89 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *v137 = 138412546;
                *&v137[4] = bundleIdentifier2;
                *&v137[12] = 2114;
                *&v137[14] = v69;
                _os_log_error_impl(&dword_228986000, v89, OS_LOG_TYPE_ERROR, "Failed to retrieve sources for '%@': %{public}@", v137, 0x16u);
              }

              v51 = 0;
              goto LABEL_80;
            }

            v126 = v69;
            obja = v63;
            v130 = bundleIdentifier2;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v70 = v68;
            v71 = [v70 countByEnumeratingWithState:&v131 objects:&v138 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v132;
              do
              {
                for (j = 0; j != v72; ++j)
                {
                  if (*v132 != v73)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v75 = *(*(&v131 + 1) + 8 * j);
                  v76 = [HDSourceRevision alloc];
                  version = [v64 version];
                  productType = [v64 productType];
                  if (v64)
                  {
                    [v64 operatingSystemVersion];
                  }

                  else
                  {
                    memset(v137, 0, 24);
                  }

                  v79 = [(HDSourceRevision *)v76 initWithSource:v75 version:version productType:productType operatingSystemVersion:v137];

                  [v62 addObject:v79];
                }

                v72 = [v70 countByEnumeratingWithState:&v131 objects:&v138 count:16];
              }

              while (v72);
            }

            v63 = obja + 1;
            self = selfCopy;
            v19 = v121;
          }

          while (obja + 1 != v123);
          v123 = [v121 countByEnumeratingWithState:v144 objects:buf count:16];
          if (v123)
          {
            continue;
          }

          break;
        }
      }

      v51 = v62;
LABEL_80:

      if (v51)
      {
        [self operatorType];
        v90 = HDSQLiteComparisonTypeForPredicateOperator();
        [self applicationSDKVersionToken];
        v91 = dyld_version_token_at_least();
        falsePredicate = HDDataEntityPredicateForSourceRevisionsSet(v90, v51, v91 ^ 1);
        goto LABEL_83;
      }

LABEL_82:
      falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
      goto LABEL_83;
    }

    keyPath5 = [self keyPath];
    v85 = [keyPath5 isEqualToString:*MEMORY[0x277CCC7A8]];

    if (v85)
    {
      if (self)
      {
        operatorType3 = [self operatorType];
        value3 = [self value];
        v88 = value3;
        if (operatorType3 == 10)
        {
          HDDataEntityPredicateForDataUUIDs(value3);
        }

        else
        {
          HDDataEntityPredicateForDataUUID();
        }
        falsePredicate2 = ;

        goto LABEL_85;
      }

      goto LABEL_115;
    }

    keyPath6 = [self keyPath];
    if ([keyPath6 isEqualToString:*MEMORY[0x277CCC7D0]])
    {
    }

    else
    {
      keyPath7 = [self keyPath];
      v96 = [keyPath7 isEqualToString:*MEMORY[0x277CCDF48]];

      if (!v96)
      {
        keyPath8 = [self keyPath];
        v101 = [keyPath8 isEqualToString:*MEMORY[0x277CCC830]];

        if (!v101)
        {
          keyPath9 = [self keyPath];
          v103 = [keyPath9 isEqualToString:*MEMORY[0x277CCDF40]];

          if (v103)
          {
            _appleWatchSourcePredicate = [(_HKObjectComparisonFilter *)self _appleWatchSourcePredicate];
          }

          else
          {
            keyPath10 = [self keyPath];
            v105 = [keyPath10 isEqualToString:*MEMORY[0x277CCDF50]];

            if (v105)
            {
              _appleWatchSourcePredicate = [(_HKObjectComparisonFilter *)self _OSBuildPredicate];
            }

            else
            {
              keyPath11 = [self keyPath];
              v107 = [keyPath11 isEqualToString:*MEMORY[0x277CCDF58]];

              if (v107)
              {
                _appleWatchSourcePredicate = [(_HKObjectComparisonFilter *)self _contributorPredicateWithProfile:v5];
              }

              else
              {
                keyPath12 = [self keyPath];
                v109 = [keyPath12 isEqualToString:*MEMORY[0x277CCDF60]];

                if (v109)
                {
                  _appleWatchSourcePredicate = [(_HKObjectComparisonFilter *)self _creationDatePredicate];
                }

                else
                {
                  keyPath13 = [self keyPath];
                  v111 = [keyPath13 isEqualToString:*MEMORY[0x277CCDF78]];

                  if (v111)
                  {
                    _appleWatchSourcePredicate = [(_HKObjectComparisonFilter *)self _productTypePredicate];
                  }

                  else
                  {
                    keyPath14 = [self keyPath];
                    v113 = [keyPath14 isEqualToString:*MEMORY[0x277CCDF70]];

                    if (v113)
                    {
                      _appleWatchSourcePredicate = [(_HKObjectComparisonFilter *)self _syncIdentityPredicateWithProfile:v5];
                    }

                    else
                    {
                      keyPath15 = [self keyPath];
                      hk_hasDevicePropertyKeyPathPrefix = [keyPath15 hk_hasDevicePropertyKeyPathPrefix];

                      if (hk_hasDevicePropertyKeyPathPrefix)
                      {
                        _appleWatchSourcePredicate = [(_HKObjectComparisonFilter *)self _devicePropertyPredicateWithProfile:v5];
                      }

                      else
                      {
                        keyPath16 = [self keyPath];
                        hk_hasMetadataKeyPathPrefix = [keyPath16 hk_hasMetadataKeyPathPrefix];

                        if (hk_hasMetadataKeyPathPrefix)
                        {
                          [(_HKObjectComparisonFilter *)self _metadataPredicateWithProfile:v5];
                        }

                        else
                        {
                          currentHandler = [MEMORY[0x277CCA890] currentHandler];
                          [currentHandler handleFailureInMethod:a2 object:self file:@"_HKObjectComparisonFilter+HealthDaemon.m" lineNumber:69 description:@"Unreachable code has been executed"];

                          [MEMORY[0x277D10B70] falsePredicate];
                        }
                        _appleWatchSourcePredicate = ;
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_4;
        }

        selfCopy3 = self;
        v98 = v5;
        v99 = 1;
        goto LABEL_92;
      }
    }

    selfCopy3 = self;
    v98 = v5;
    v99 = 0;
LABEL_92:
    _appleWatchSourcePredicate = [(_HKObjectComparisonFilter *)selfCopy3 _associationPredicateWithProfile:v98 type:v99];
    goto LABEL_4;
  }

  if (self)
  {
    v12 = v5;
    operatorType4 = [self operatorType];
    value4 = [self value];
    v15 = value4;
    v119 = v5;
    if (operatorType4 != 10)
    {
      *v137 = value4;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:1];

      v15 = v16;
    }

    v135 = 0;
    v129 = v12;
    v17 = v15;
    objc_opt_self();
    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    memset(v144, 0, sizeof(v144));
    v145 = 0u;
    v146 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:v144 objects:buf count:16];
    if (v20)
    {
      v21 = v20;
      v22 = **&v144[16];
      obj = v19;
      while (2)
      {
        for (k = 0; k != v21; ++k)
        {
          if (**&v144[16] != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*&v144[8] + 8 * k);
          deviceManager = [v129 deviceManager];
          v26 = [deviceManager deviceEntitiesForDevice:v24 error:&v135];

          if (!v26)
          {
            v19 = obj;

            goto LABEL_39;
          }

          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v27 = v26;
          v28 = [v27 countByEnumeratingWithState:&v131 objects:&v138 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v132;
            do
            {
              for (m = 0; m != v29; ++m)
              {
                if (*v132 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v131 + 1) + 8 * m), "persistentID")}];
                [v18 addObject:v32];
              }

              v29 = [v27 countByEnumeratingWithState:&v131 objects:&v138 count:16];
            }

            while (v29);
          }
        }

        v19 = obj;
        v21 = [obj countByEnumeratingWithState:v144 objects:buf count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v26 = v18;
LABEL_39:

    v52 = v135;
    if (v26)
    {
      [selfCopy operatorType];
      v53 = HDSQLiteComparisonTypeForPredicateOperator();
      falsePredicate2 = HDDataEntityPredicateForDeviceIdentifierSet(v53, v26);
      v5 = v119;
    }

    else
    {
      _HKInitializeLogging();
      v80 = *MEMORY[0x277CCC2A0];
      v5 = v119;
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v143 = v52;
        _os_log_error_impl(&dword_228986000, v80, OS_LOG_TYPE_ERROR, "Failed to find devices: %{public}@", buf, 0xCu);
      }

      falsePredicate2 = [MEMORY[0x277D10B70] falsePredicate];
    }

    goto LABEL_84;
  }

LABEL_115:
  falsePredicate2 = 0;
LABEL_85:

  v92 = *MEMORY[0x277D85DE8];

  return falsePredicate2;
}

- (id)filterIgnoringPrivateMetadata
{
  keyPath = [self keyPath];
  hk_hasMetadataKeyPathPrefix = [keyPath hk_hasMetadataKeyPathPrefix];

  if (!hk_hasMetadataKeyPathPrefix)
  {
    goto LABEL_7;
  }

  _metadataKeyFromMetadataKeyPath = [(_HKObjectComparisonFilter *)self _metadataKeyFromMetadataKeyPath];
  if (!_HKMetadataKeyIsPrivate())
  {

LABEL_7:
    selfCopy = self;
    goto LABEL_10;
  }

  if ([self operatorType] == 5 && (objc_msgSend(self, "value"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    trueFilter = [MEMORY[0x277CCDD38] trueFilter];
  }

  else
  {
    trueFilter = [MEMORY[0x277CCDD38] falseFilter];
  }

  selfCopy = trueFilter;

LABEL_10:

  return selfCopy;
}

@end