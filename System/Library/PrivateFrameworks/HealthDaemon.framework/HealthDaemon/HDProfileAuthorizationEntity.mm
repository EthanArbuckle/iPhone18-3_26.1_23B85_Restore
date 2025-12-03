@interface HDProfileAuthorizationEntity
+ (BOOL)fetchStatus:(int64_t *)status profile:(id)profile bundleIdentifier:(id)identifier error:(id *)error;
+ (BOOL)setStatus:(int64_t)status profile:(id)profile bundleIdentifier:(id)identifier dateModified:(id)modified error:(id *)error;
+ (BOOL)setStatusIfNeeded:(int64_t)needed profile:(id)profile bundleIdentifier:(id)identifier error:(id *)error;
+ (id)_allProperties;
+ (id)anyForBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error;
- (BOOL)unitTest_getBundleIdentifier:(id *)identifier status:(int64_t *)status dateModified:(id *)modified forProfile:(id)profile error:(id *)error;
@end

@implementation HDProfileAuthorizationEntity

+ (id)_allProperties
{
  v3[3] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"source_bundle_id";
  v3[1] = @"status";
  v3[2] = @"date_modified";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

+ (BOOL)setStatusIfNeeded:(int64_t)needed profile:(id)profile bundleIdentifier:(id)identifier error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  database = [profileCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDProfileAuthorizationEntity_setStatusIfNeeded_profile_bundleIdentifier_error___block_invoke;
  v16[3] = &unk_2786154B8;
  v17 = profileCopy;
  v18 = identifierCopy;
  selfCopy = self;
  neededCopy = needed;
  v13 = identifierCopy;
  v14 = profileCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __81__HDProfileAuthorizationEntity_setStatusIfNeeded_profile_bundleIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  if (![*(a1 + 48) fetchStatus:&v13 profile:*(a1 + 32) bundleIdentifier:*(a1 + 40) error:a3])
  {
    return 0;
  }

  v5 = *(a1 + 56);
  if (v13 == v5)
  {
    return 1;
  }

  v7 = *(a1 + 32);
  v10 = a1 + 40;
  v8 = *(a1 + 40);
  v9 = *(v10 + 8);
  v11 = [MEMORY[0x277CBEAA8] now];
  v6 = [v9 setStatus:v5 profile:v7 bundleIdentifier:v8 dateModified:v11 error:a3];

  return v6;
}

+ (BOOL)setStatus:(int64_t)status profile:(id)profile bundleIdentifier:(id)identifier dateModified:(id)modified error:(id *)error
{
  profileCopy = profile;
  identifierCopy = identifier;
  modifiedCopy = modified;
  if ([profileCopy profileType] == 1)
  {
    hk_invalidProfileError = [MEMORY[0x277CCA9B8] hk_invalidProfileError];
    if (hk_invalidProfileError)
    {
      if (error)
      {
        v16 = hk_invalidProfileError;
        *error = hk_invalidProfileError;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = 0;
  }

  else
  {
    database = [profileCopy database];
    v18 = +[HDProfileAuthorizationEntity _allProperties];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __86__HDProfileAuthorizationEntity_setStatus_profile_bundleIdentifier_dateModified_error___block_invoke;
    v22[3] = &unk_278613AE8;
    v23 = identifierCopy;
    statusCopy = status;
    v24 = modifiedCopy;
    v19 = [self insertOrReplaceEntity:1 healthDatabase:database properties:v18 error:error bindingHandler:v22];

    v20 = v19 != 0;
  }

  return v20;
}

void __86__HDProfileAuthorizationEntity_setStatus_profile_bundleIdentifier_dateModified_error___block_invoke(void *a1, uint64_t a2)
{
  MEMORY[0x22AAC6BD0](a2, @"source_bundle_id", a1[4]);
  MEMORY[0x22AAC6B90](a2, @"status", a1[6]);
  v4 = a1[5];

  JUMPOUT(0x22AAC6B50);
}

+ (BOOL)fetchStatus:(int64_t *)status profile:(id)profile bundleIdentifier:(id)identifier error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  identifierCopy = identifier;
  if ([profileCopy profileType] != 1)
  {
    v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"source_bundle_id" equalToValue:identifierCopy];
    database = [profileCopy database];
    v22 = 0;
    v15 = [self propertyValueForAnyWithProperty:@"status" predicate:v13 healthDatabase:database error:&v22];
    v16 = v22;

    if (!v15)
    {
      if (v16)
      {
        if (error)
        {
          v18 = v16;
          v12 = 0;
          *error = v16;
        }

        else
        {
          _HKLogDroppedError();
          v12 = 0;
        }

        goto LABEL_16;
      }

      *status = 0;
LABEL_15:
      v12 = 1;
LABEL_16:

      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v15 integerValue];
      if (integerValue < 3)
      {
LABEL_14:
        *status = integerValue;
        goto LABEL_15;
      }
    }

    else
    {
      integerValue = -1;
    }

    _HKInitializeLogging();
    v19 = HKLogInfrastructure();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v25 = 2048;
      v26 = integerValue;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Encountered unexpected value %ld in table profile_authorization", buf, 0x16u);
    }

    integerValue = 0;
    goto LABEL_14;
  }

  v12 = 1;
  *status = 1;
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)anyForBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  profileCopy = profile;
  v10 = [v8 predicateWithProperty:@"source_bundle_id" equalToValue:identifier];
  database = [profileCopy database];

  v12 = [self anyWithPredicate:v10 healthDatabase:database error:error];

  return v12;
}

- (BOOL)unitTest_getBundleIdentifier:(id *)identifier status:(int64_t *)status dateModified:(id *)modified forProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__14;
  v28 = __Block_byref_object_dispose__14;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v13 = +[HDProfileAuthorizationEntity _allProperties];
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__HDProfileAuthorizationEntity_unitTest_getBundleIdentifier_status_dateModified_forProfile_error___block_invoke;
  v17[3] = &unk_2786154E0;
  v17[4] = &v24;
  v17[5] = &v18;
  v17[6] = status;
  v15 = [(HDHealthEntity *)self getValuesForProperties:v13 healthDatabase:database error:error handler:v17];

  if (v15)
  {
    if (identifier)
    {
      *identifier = v25[5];
    }

    if (modified)
    {
      *modified = v19[5];
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v15;
}

uint64_t __98__HDProfileAuthorizationEntity_unitTest_getBundleIdentifier_status_dateModified_forProfile_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    **(a1 + 48) = HDSQLiteColumnWithNameAsInt64();
  }

  v2 = HDSQLiteColumnWithNameAsString();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = HDSQLiteColumnWithNameAsDate();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

@end