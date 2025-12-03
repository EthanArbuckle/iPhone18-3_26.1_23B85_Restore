@interface _HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap
+ (id)_canonicalSleepingWristTemperatureBundleIDByBundleIDWithProfile:(id)profile;
- (_HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap)initWithProfile:(id)profile quantityType:(id)type;
- (id)_bundleIDForSourceID:(int64_t)d error:(id *)error;
- (id)baselineCompatibilityIDForSourceID:(int64_t)d;
- (id)predicateForDataEntitiesWithSourceIDsCompatibleWithSourceID:(int64_t)d;
@end

@implementation _HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap

- (_HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap)initWithProfile:(id)profile quantityType:(id)type
{
  profileCopy = profile;
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = _HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap;
  v8 = [(_HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    bundleIDBySourceID = v9->_bundleIDBySourceID;
    v9->_bundleIDBySourceID = dictionary;

    identifier = [typeCopy identifier];
    v13 = [identifier isEqualToString:*MEMORY[0x277CCC938]];

    if (v13)
    {
      v14 = [objc_opt_class() _canonicalSleepingWristTemperatureBundleIDByBundleIDWithProfile:profileCopy];
    }

    else
    {
      v14 = MEMORY[0x277CBEC10];
    }

    canonicalBundleIDByBundleID = v9->_canonicalBundleIDByBundleID;
    v9->_canonicalBundleIDByBundleID = v14;
  }

  return v9;
}

+ (id)_canonicalSleepingWristTemperatureBundleIDByBundleIDWithProfile:(id)profile
{
  v3 = [HDKeyValueDomain _wristTemperatureIdentifierDomainWithProfile:profile];
  _wristTemperatureResolvedSourceIdentifiersBySourceIdentifier = [v3 _wristTemperatureResolvedSourceIdentifiersBySourceIdentifier];

  return _wristTemperatureResolvedSourceIdentifiersBySourceIdentifier;
}

- (id)baselineCompatibilityIDForSourceID:(int64_t)d
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if ((isAppleInternalInstall & 1) == 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    stringValue = [v8 stringValue];
    goto LABEL_10;
  }

  v15 = 0;
  v7 = [(_HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap *)self _bundleIDForSourceID:d error:&v15];
  v8 = v15;
  if (v7)
  {
    v9 = [(NSDictionary *)self->_canonicalBundleIDByBundleID objectForKeyedSubscript:v7];
    if (!v9)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
      stringValue = [v13 stringValue];

      v11 = 0;
      goto LABEL_9;
    }

    stringValue2 = v9;
    v11 = stringValue2;
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    stringValue2 = [v11 stringValue];
  }

  stringValue = stringValue2;
LABEL_9:

LABEL_10:

  return stringValue;
}

- (id)_bundleIDForSourceID:(int64_t)d error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  bundleIDBySourceID = self->_bundleIDBySourceID;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  bundleIdentifier = [(NSMutableDictionary *)bundleIDBySourceID objectForKeyedSubscript:v8];

  if (!bundleIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    sourceManager = [WeakRetained sourceManager];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    v24 = 0;
    v13 = [sourceManager clientSourceForPersistentID:v12 error:&v24];
    v14 = v24;

    if (v13)
    {
      bundleIdentifier = [v13 bundleIdentifier];
      v15 = self->_bundleIDBySourceID;
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
      [(NSMutableDictionary *)v15 setObject:bundleIdentifier forKeyedSubscript:v16];

      v17 = v13;
LABEL_11:

      goto LABEL_12;
    }

    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
      *buf = 138543874;
      selfCopy = self;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Error determining source for ID %{public}@: %{public}@", buf, 0x20u);
    }

    v19 = v14;
    v17 = v19;
    if (v19)
    {
      if (error)
      {
        v20 = v19;
        bundleIdentifier = 0;
        *error = v17;
        goto LABEL_11;
      }

      _HKLogDroppedError();
    }

    bundleIdentifier = 0;
    goto LABEL_11;
  }

LABEL_12:
  v21 = *MEMORY[0x277D85DE8];

  return bundleIdentifier;
}

- (id)predicateForDataEntitiesWithSourceIDsCompatibleWithSourceID:(int64_t)d
{
  v42 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if ((isAppleInternalInstall & 1) == 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
    v16 = HDDataEntityPredicateForSourceIdentifier(v15);

    goto LABEL_29;
  }

  v34 = 0;
  v23 = [(_HDRollingBaselineRelativeDataSourceBaselineCompatibilityMap *)self _bundleIDForSourceID:d error:&v34];
  v5 = v34;
  if (v23)
  {
    v27 = [(NSDictionary *)self->_canonicalBundleIDByBundleID objectForKeyedSubscript:?];
    if (v27)
    {
      v26 = [MEMORY[0x277CBEB58] set];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = self->_canonicalBundleIDByBundleID;
      v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v6)
      {
        v7 = *v31;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v31 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v30 + 1) + 8 * i);
            v10 = [(NSDictionary *)self->_canonicalBundleIDByBundleID objectForKeyedSubscript:v9];
            if ([v10 isEqual:v27])
            {
              WeakRetained = objc_loadWeakRetained(&self->_profile);
              sourceManager = [WeakRetained sourceManager];
              v29 = v5;
              v13 = [sourceManager allSourcesForBundleIdentifier:v9 error:&v29];
              v14 = v29;

              if (!v13)
              {
                _HKInitializeLogging();
                v18 = *MEMORY[0x277CCC308];
                if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  selfCopy2 = self;
                  v37 = 2114;
                  v38 = v9;
                  v39 = 2114;
                  v40 = v14;
                  _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Error source entities for bundle ID %{public}@: %{public}@", buf, 0x20u);
                }

                v5 = v14;
                goto LABEL_21;
              }

              [v26 unionSet:v13];

              v5 = v14;
            }
          }

          v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v30 objects:v41 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      if (![v26 count])
      {
        _HKInitializeLogging();
        v19 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v37 = 2114;
          v38 = v27;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] No source entities found for canonical bundle ID %{public}@", buf, 0x16u);
        }

        v20 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
        v16 = HDDataEntityPredicateForSourceIdentifier(v20);

        goto LABEL_27;
      }

      v17 = HDDataEntityPredicateForSourceEntitySet(7, v26);
    }

    else
    {
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
      v17 = HDDataEntityPredicateForSourceIdentifier(v26);
    }

    v16 = v17;
LABEL_27:

    goto LABEL_28;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v16 = HDDataEntityPredicateForSourceIdentifier(v27);
LABEL_28:

LABEL_29:
  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

@end