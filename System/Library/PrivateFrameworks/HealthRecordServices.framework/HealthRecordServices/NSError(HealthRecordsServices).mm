@interface NSError(HealthRecordsServices)
+ (id)hrs_accumulatedErrorWithAuthorizationFailures:()HealthRecordsServices resourceFetchFailures:otherErrors:;
+ (id)hrs_authorizationOrResourceFetchErrorFromError:()HealthRecordsServices;
+ (id)hrs_cocoaErrorWithCode:()HealthRecordsServices;
+ (id)hrs_errorWithAccumulatedErrors:()HealthRecordsServices;
+ (id)hrs_resourceParsingErrorWithUnderlyingError:()HealthRecordsServices;
- (BOOL)hrs_hasResourceFetchErrorsIndicatingRateLimitation;
- (BOOL)hrs_hasResourceFetchFailure;
- (id)_hrs_accumulatedErrorsForUserInfoKey:()HealthRecordsServices;
- (id)hrs_completeDescriptionRedactingSensitiveItemsIfNecessary:()HealthRecordsServices;
- (id)hrs_userInfoValueForKey:()HealthRecordsServices prefixedWith:redactIfNecessary:;
- (uint64_t)hrs_hasAuthorizationFailure;
- (uint64_t)hrs_isReloginRequiredError;
@end

@implementation NSError(HealthRecordsServices)

- (uint64_t)hrs_isReloginRequiredError
{
  if ([self hk_OAuth2_isOAuth2Error])
  {
    code = [self code];
    if (code >= 0xB)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = 0x4A8u >> code;
    }
  }

  else
  {
    domain = [self domain];
    v5 = [domain isEqualToString:@"com.apple.healthkit.healthrecords.private"];

    if (v5)
    {
      LOBYTE(v3) = [self code] == 1;
    }

    else
    {
      hrs_accumulatedAuthorizationFailures = [self hrs_accumulatedAuthorizationFailures];
      v7 = [hrs_accumulatedAuthorizationFailures hk_filter:&__block_literal_global_2];
      v3 = [v7 count] != 0;
    }
  }

  return v3 & 1;
}

- (id)_hrs_accumulatedErrorsForUserInfoKey:()HealthRecordsServices
{
  v4 = a3;
  domain = [self domain];
  if (![domain isEqualToString:@"HRSAccumulatedIngestionErrorDomain"])
  {
    v12 = 0;
LABEL_8:

    goto LABEL_9;
  }

  userInfo = [self userInfo];
  v7 = [userInfo objectForKeyedSubscript:v4];

  if (v7)
  {
    userInfo2 = [self userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:v4];
    objc_opt_class();
    domain = HKSafeObject();

    v10 = [domain hk_filter:&__block_literal_global_310];
    if ([v10 count])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (uint64_t)hrs_hasAuthorizationFailure
{
  if ([self hk_OAuth2_isOAuth2Error])
  {
    return 1;
  }

  hrs_accumulatedAuthorizationFailures = [self hrs_accumulatedAuthorizationFailures];
  v2 = [hrs_accumulatedAuthorizationFailures count] != 0;

  return v2;
}

- (BOOL)hrs_hasResourceFetchFailure
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CCC160]];

  if (!v3)
  {
    domain2 = [self domain];
    if ([domain2 isEqualToString:@"com.apple.healthkit.healthrecords.private"])
    {
      code = [self code];

      if (code == 2)
      {
        return 1;
      }
    }

    else
    {
    }

    hrs_accumulatedResourceFetchFailures = [self hrs_accumulatedResourceFetchFailures];
    v4 = [hrs_accumulatedResourceFetchFailures count] != 0;

    return v4;
  }

  return [self code] > 399;
}

- (BOOL)hrs_hasResourceFetchErrorsIndicatingRateLimitation
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CCC160]];

  if (v3)
  {
    return [self code] == 429 || objc_msgSend(self, "code") == 425;
  }

  else
  {
    hrs_accumulatedResourceFetchFailures = [self hrs_accumulatedResourceFetchFailures];
    v6 = [hrs_accumulatedResourceFetchFailures hk_filter:&__block_literal_global_313];
    v4 = [v6 count] != 0;
  }

  return v4;
}

- (id)hrs_completeDescriptionRedactingSensitiveItemsIfNecessary:()HealthRecordsServices
{
  localizedDescription = [self localizedDescription];
  v6 = localizedDescription;
  if (a3)
  {
    v7 = HKSensitiveLogItem();

    v42 = v7;
  }

  else
  {
    v42 = localizedDescription;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [self hrs_userInfoValueForKey:*MEMORY[0x277CCA758] prefixedWith:@"failing URL" redactIfNecessary:a3];
  v10 = [self hrs_userInfoValueForKey:*MEMORY[0x277CCA0B0] prefixedWith:@"failing URL" redactIfNecessary:a3];
  v11 = [self hrs_userInfoValueForKey:*MEMORY[0x277CCC168] prefixedWith:@"failing URL" redactIfNecessary:a3];
  v39 = v11;
  v40 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v41 = v9;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  [v8 hk_addNonNilObject:v13];
  v14 = [self hrs_userInfoValueForKey:*MEMORY[0x277CCC170] prefixedWith:@"response headers" redactIfNecessary:a3];
  [v8 hk_addNonNilObject:v14];

  v15 = [self hrs_userInfoValueForKey:*MEMORY[0x277CCC590] prefixedWith:@"bearer auth error" redactIfNecessary:0];
  [v8 hk_addNonNilObject:v15];

  v16 = [self hrs_userInfoValueForKey:*MEMORY[0x277CCC5A0] prefixedWith:@"server error description" redactIfNecessary:a3];
  [v8 hk_addNonNilObject:v16];

  v17 = [self hrs_userInfoValueForKey:*MEMORY[0x277CCC5A8] prefixedWith:@"server error name" redactIfNecessary:0];
  [v8 hk_addNonNilObject:v17];

  v18 = [self hrs_userInfoValueForKey:*MEMORY[0x277CCC598] prefixedWith:@"HTTP status" redactIfNecessary:0];
  [v8 hk_addNonNilObject:v18];

  underlyingErrors = [self underlyingErrors];
  v20 = [underlyingErrors mutableCopy];

  hrs_accumulatedAuthorizationFailures = [self hrs_accumulatedAuthorizationFailures];
  if ([hrs_accumulatedAuthorizationFailures count])
  {
    [v20 addObjectsFromArray:hrs_accumulatedAuthorizationFailures];
  }

  hrs_accumulatedResourceFetchFailures = [self hrs_accumulatedResourceFetchFailures];
  if ([hrs_accumulatedResourceFetchFailures count])
  {
    [v20 addObjectsFromArray:hrs_accumulatedResourceFetchFailures];
  }

  hrs_accumulatedOtherErrors = [self hrs_accumulatedOtherErrors];
  if ([hrs_accumulatedOtherErrors count])
  {
    [v20 addObjectsFromArray:hrs_accumulatedOtherErrors];
  }

  v37 = hrs_accumulatedResourceFetchFailures;
  v38 = hrs_accumulatedAuthorizationFailures;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __92__NSError_HealthRecordsServices__hrs_completeDescriptionRedactingSensitiveItemsIfNecessary___block_invoke;
  v43[3] = &__block_descriptor_33_e17__16__0__NSError_8l;
  v44 = a3;
  v24 = [v20 hk_map:v43];
  if ([v8 count])
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [v8 componentsJoinedByString:{@", "}];
    v27 = [v25 stringWithFormat:@", %@", v26];
  }

  else
  {
    v27 = &stru_2863E37A8;
  }

  if ([v24 count])
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [v24 componentsJoinedByString:{@", "}];
    v30 = [v28 stringWithFormat:@", underlying errors: [%@]", v29];
  }

  else
  {
    v30 = &stru_2863E37A8;
  }

  v31 = MEMORY[0x277CCACA8];
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  domain = [self domain];
  v35 = [v31 stringWithFormat:@"<%@ %@: %ld, %@%@%@>", v33, domain, objc_msgSend(self, "code"), v42, v27, v30];

  return v35;
}

+ (id)hrs_resourceParsingErrorWithUnderlyingError:()HealthRecordsServices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.healthkit.healthrecords.private" code:2 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)hrs_authorizationOrResourceFetchErrorFromError:()HealthRecordsServices
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(NSError(HealthRecordsServices) *)a2 hrs_authorizationOrResourceFetchErrorFromError:self];
  }

  domain = [v5 domain];
  v7 = [domain isEqualToString:@"HRSAccumulatedIngestionErrorDomain"];

  if (v7)
  {
    v8 = [v5 copy];
  }

  else
  {
    hk_OAuth2_isOAuth2Error = [v5 hk_OAuth2_isOAuth2Error];
    v10 = MEMORY[0x277CCA9B8];
    if (hk_OAuth2_isOAuth2Error)
    {
      v18[0] = v5;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v12 = v10;
      v13 = v11;
      v14 = 0;
    }

    else
    {
      v17 = v5;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v12 = v10;
      v13 = 0;
      v14 = v11;
    }

    v8 = [v12 hrs_accumulatedErrorWithAuthorizationFailures:v13 resourceFetchFailures:v14 otherErrors:0];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)hrs_errorWithAccumulatedErrors:()HealthRecordsServices
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          domain = [v11 domain];
          v13 = [domain isEqualToString:@"HRSAccumulatedIngestionErrorDomain"];

          if (v13)
          {
            hrs_accumulatedAuthorizationFailures = [v11 hrs_accumulatedAuthorizationFailures];
            v15 = hrs_accumulatedAuthorizationFailures;
            if (hrs_accumulatedAuthorizationFailures)
            {
              v16 = hrs_accumulatedAuthorizationFailures;
            }

            else
            {
              v16 = v9;
            }

            [v4 addObjectsFromArray:v16];

            hrs_accumulatedResourceFetchFailures = [v11 hrs_accumulatedResourceFetchFailures];
            v18 = hrs_accumulatedResourceFetchFailures;
            if (hrs_accumulatedResourceFetchFailures)
            {
              v19 = hrs_accumulatedResourceFetchFailures;
            }

            else
            {
              v19 = v9;
            }

            [v33 addObjectsFromArray:v19];

            hrs_accumulatedOtherErrors = [v11 hrs_accumulatedOtherErrors];
            v21 = hrs_accumulatedOtherErrors;
            if (hrs_accumulatedOtherErrors)
            {
              v22 = hrs_accumulatedOtherErrors;
            }

            else
            {
              v22 = v9;
            }

            [v32 addObjectsFromArray:v22];
          }

          else
          {
            if ([v11 hrs_hasAuthorizationFailure])
            {
              v26 = v4;
            }

            else if ([v11 hrs_hasResourceFetchFailure])
            {
              v26 = v33;
            }

            else
            {
              v26 = v32;
            }

            [v26 addObject:v11];
          }
        }

        else
        {
          _HKInitializeLogging();
          v23 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v24 = v23;
            v25 = NSStringFromSelector(a2);
            *buf = 138543618;
            v39 = v25;
            v40 = 2114;
            v41 = v11;
            _os_log_error_impl(&dword_2519FE000, v24, OS_LOG_TYPE_ERROR, "%{public}@ only expecting NSError entries in the array but got %{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v7);
  }

  v27 = [self hrs_accumulatedErrorWithAuthorizationFailures:v4 resourceFetchFailures:v33 otherErrors:v32];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)hrs_accumulatedErrorWithAuthorizationFailures:()HealthRecordsServices resourceFetchFailures:otherErrors:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v7 count])
  {
    v11 = [v7 copy];
    [v10 setObject:v11 forKeyedSubscript:@"AuthorizationFailures"];
  }

  if ([v8 count])
  {
    v12 = [v8 copy];
    [v10 setObject:v12 forKeyedSubscript:@"ResourceFetchFailures"];
  }

  if ([v9 count])
  {
    v13 = [v9 copy];
    [v10 setObject:v13 forKeyedSubscript:@"OtherErrors"];
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu authorization failures, %lu resource fetch failures, %lu other errors", objc_msgSend(v7, "count"), objc_msgSend(v8, "count"), objc_msgSend(v9, "count")];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accumulated errors: %@", v14];
  [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HRSAccumulatedIngestionErrorDomain" code:0 userInfo:v10];

  return v16;
}

- (id)hrs_userInfoValueForKey:()HealthRecordsServices prefixedWith:redactIfNecessary:
{
  v8 = a4;
  v9 = a3;
  userInfo = [self userInfo];
  v11 = [userInfo objectForKeyedSubscript:v9];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __89__NSError_HealthRecordsServices__hrs_userInfoValueForKey_prefixedWith_redactIfNecessary___block_invoke;
      v19[3] = &unk_2796DC6F8;
      v20 = v12;
      v13 = v12;
      [v11 enumerateKeysAndObjectsUsingBlock:v19];
      v14 = [v13 componentsJoinedByString:{@", "}];

      v11 = v14;
    }

    v15 = MEMORY[0x277CCACA8];
    if (a5)
    {
      v16 = HKSensitiveLogItem();
      v17 = [v15 stringWithFormat:@"%@: %@", v8, v16];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v8, v11];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)hrs_cocoaErrorWithCode:()HealthRecordsServices
{
  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  v5 = [v4 initWithDomain:*MEMORY[0x277CCA050] code:a3 userInfo:0];

  return v5;
}

+ (void)hrs_authorizationOrResourceFetchErrorFromError:()HealthRecordsServices .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSError+HealthRecordServices.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

@end