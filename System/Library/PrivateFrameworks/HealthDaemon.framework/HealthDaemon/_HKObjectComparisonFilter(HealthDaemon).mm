@interface _HKObjectComparisonFilter(HealthDaemon)
- (id)filterIgnoringPrivateMetadata;
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKObjectComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v147 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a1 keyPath];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCC6A0]];

  if (v7)
  {
    if (a1)
    {
      v8 = HDAssociationEntityPredicateForAssociatedObjects([a1 operatorType] == 4);
LABEL_4:
      v9 = v8;
      goto LABEL_85;
    }

    goto LABEL_115;
  }

  v10 = [a1 keyPath];
  v11 = [v10 isEqualToString:*MEMORY[0x277CCC6B0]];

  v125 = a1;
  if (!v11)
  {
    v33 = [a1 keyPath];
    v34 = [v33 isEqualToString:*MEMORY[0x277CCC768]];

    if (v34)
    {
      if (!a1)
      {
        goto LABEL_115;
      }

      v35 = v5;
      v36 = [a1 operatorType];
      v37 = [a1 value];
      v38 = v37;
      v120 = v5;
      if (v36 != 10)
      {
        *v137 = v37;
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

            v47 = [*(*(&v138 + 1) + 8 * i) bundleIdentifier];
            v48 = [v40 sourceManager];
            *&v131 = 0;
            v49 = [v48 allSourcesForBundleIdentifier:v47 error:&v131];
            v50 = v131;

            if (!v49)
            {
              _HKInitializeLogging();
              v81 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *v144 = 138412546;
                *&v144[4] = v47;
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
        [v125 operatorType];
        v82 = HDSQLiteComparisonTypeForPredicateOperator();
        v83 = HDDataEntityPredicateForSourceEntitySet(v82, v51);
LABEL_83:
        v9 = v83;
        v5 = v120;

LABEL_84:
        goto LABEL_85;
      }

      goto LABEL_82;
    }

    v54 = [a1 keyPath];
    v55 = [v54 isEqualToString:*MEMORY[0x277CCC770]];

    if (v55)
    {
      if (!a1)
      {
        goto LABEL_115;
      }

      v56 = v5;
      v57 = [a1 operatorType];
      v58 = [a1 value];
      v59 = v58;
      v120 = v5;
      if (v57 != 10)
      {
        v136 = v58;
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
            v65 = [v64 source];
            v66 = [v65 bundleIdentifier];

            v67 = [v124 sourceManager];
            v135 = 0;
            v68 = [v67 allSourcesForBundleIdentifier:v66 error:&v135];
            v69 = v135;

            if (!v68)
            {
              _HKInitializeLogging();
              v89 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *v137 = 138412546;
                *&v137[4] = v66;
                *&v137[12] = 2114;
                *&v137[14] = v69;
                _os_log_error_impl(&dword_228986000, v89, OS_LOG_TYPE_ERROR, "Failed to retrieve sources for '%@': %{public}@", v137, 0x16u);
              }

              v51 = 0;
              goto LABEL_80;
            }

            v126 = v69;
            obja = v63;
            v130 = v66;
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
                  v77 = [v64 version];
                  v78 = [v64 productType];
                  if (v64)
                  {
                    [v64 operatingSystemVersion];
                  }

                  else
                  {
                    memset(v137, 0, 24);
                  }

                  v79 = [(HDSourceRevision *)v76 initWithSource:v75 version:v77 productType:v78 operatingSystemVersion:v137];

                  [v62 addObject:v79];
                }

                v72 = [v70 countByEnumeratingWithState:&v131 objects:&v138 count:16];
              }

              while (v72);
            }

            v63 = obja + 1;
            a1 = v125;
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
        [a1 operatorType];
        v90 = HDSQLiteComparisonTypeForPredicateOperator();
        [a1 applicationSDKVersionToken];
        v91 = dyld_version_token_at_least();
        v83 = HDDataEntityPredicateForSourceRevisionsSet(v90, v51, v91 ^ 1);
        goto LABEL_83;
      }

LABEL_82:
      v83 = [MEMORY[0x277D10B70] falsePredicate];
      goto LABEL_83;
    }

    v84 = [a1 keyPath];
    v85 = [v84 isEqualToString:*MEMORY[0x277CCC7A8]];

    if (v85)
    {
      if (a1)
      {
        v86 = [a1 operatorType];
        v87 = [a1 value];
        v88 = v87;
        if (v86 == 10)
        {
          HDDataEntityPredicateForDataUUIDs(v87);
        }

        else
        {
          HDDataEntityPredicateForDataUUID();
        }
        v9 = ;

        goto LABEL_85;
      }

      goto LABEL_115;
    }

    v94 = [a1 keyPath];
    if ([v94 isEqualToString:*MEMORY[0x277CCC7D0]])
    {
    }

    else
    {
      v95 = [a1 keyPath];
      v96 = [v95 isEqualToString:*MEMORY[0x277CCDF48]];

      if (!v96)
      {
        v100 = [a1 keyPath];
        v101 = [v100 isEqualToString:*MEMORY[0x277CCC830]];

        if (!v101)
        {
          v102 = [a1 keyPath];
          v103 = [v102 isEqualToString:*MEMORY[0x277CCDF40]];

          if (v103)
          {
            v8 = [(_HKObjectComparisonFilter *)a1 _appleWatchSourcePredicate];
          }

          else
          {
            v104 = [a1 keyPath];
            v105 = [v104 isEqualToString:*MEMORY[0x277CCDF50]];

            if (v105)
            {
              v8 = [(_HKObjectComparisonFilter *)a1 _OSBuildPredicate];
            }

            else
            {
              v106 = [a1 keyPath];
              v107 = [v106 isEqualToString:*MEMORY[0x277CCDF58]];

              if (v107)
              {
                v8 = [(_HKObjectComparisonFilter *)a1 _contributorPredicateWithProfile:v5];
              }

              else
              {
                v108 = [a1 keyPath];
                v109 = [v108 isEqualToString:*MEMORY[0x277CCDF60]];

                if (v109)
                {
                  v8 = [(_HKObjectComparisonFilter *)a1 _creationDatePredicate];
                }

                else
                {
                  v110 = [a1 keyPath];
                  v111 = [v110 isEqualToString:*MEMORY[0x277CCDF78]];

                  if (v111)
                  {
                    v8 = [(_HKObjectComparisonFilter *)a1 _productTypePredicate];
                  }

                  else
                  {
                    v112 = [a1 keyPath];
                    v113 = [v112 isEqualToString:*MEMORY[0x277CCDF70]];

                    if (v113)
                    {
                      v8 = [(_HKObjectComparisonFilter *)a1 _syncIdentityPredicateWithProfile:v5];
                    }

                    else
                    {
                      v114 = [a1 keyPath];
                      v115 = [v114 hk_hasDevicePropertyKeyPathPrefix];

                      if (v115)
                      {
                        v8 = [(_HKObjectComparisonFilter *)a1 _devicePropertyPredicateWithProfile:v5];
                      }

                      else
                      {
                        v116 = [a1 keyPath];
                        v117 = [v116 hk_hasMetadataKeyPathPrefix];

                        if (v117)
                        {
                          [(_HKObjectComparisonFilter *)a1 _metadataPredicateWithProfile:v5];
                        }

                        else
                        {
                          v118 = [MEMORY[0x277CCA890] currentHandler];
                          [v118 handleFailureInMethod:a2 object:a1 file:@"_HKObjectComparisonFilter+HealthDaemon.m" lineNumber:69 description:@"Unreachable code has been executed"];

                          [MEMORY[0x277D10B70] falsePredicate];
                        }
                        v8 = ;
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_4;
        }

        v97 = a1;
        v98 = v5;
        v99 = 1;
        goto LABEL_92;
      }
    }

    v97 = a1;
    v98 = v5;
    v99 = 0;
LABEL_92:
    v8 = [(_HKObjectComparisonFilter *)v97 _associationPredicateWithProfile:v98 type:v99];
    goto LABEL_4;
  }

  if (a1)
  {
    v12 = v5;
    v13 = [a1 operatorType];
    v14 = [a1 value];
    v15 = v14;
    v119 = v5;
    if (v13 != 10)
    {
      *v137 = v14;
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
          v25 = [v129 deviceManager];
          v26 = [v25 deviceEntitiesForDevice:v24 error:&v135];

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
      [v125 operatorType];
      v53 = HDSQLiteComparisonTypeForPredicateOperator();
      v9 = HDDataEntityPredicateForDeviceIdentifierSet(v53, v26);
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

      v9 = [MEMORY[0x277D10B70] falsePredicate];
    }

    goto LABEL_84;
  }

LABEL_115:
  v9 = 0;
LABEL_85:

  v92 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)filterIgnoringPrivateMetadata
{
  v2 = [a1 keyPath];
  v3 = [v2 hk_hasMetadataKeyPathPrefix];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [(_HKObjectComparisonFilter *)a1 _metadataKeyFromMetadataKeyPath];
  if (!_HKMetadataKeyIsPrivate())
  {

LABEL_7:
    v7 = a1;
    goto LABEL_10;
  }

  if ([a1 operatorType] == 5 && (objc_msgSend(a1, "value"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [MEMORY[0x277CCDD38] trueFilter];
  }

  else
  {
    v6 = [MEMORY[0x277CCDD38] falseFilter];
  }

  v7 = v6;

LABEL_10:

  return v7;
}

@end