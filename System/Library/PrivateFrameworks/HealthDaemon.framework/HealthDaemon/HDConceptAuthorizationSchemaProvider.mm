@interface HDConceptAuthorizationSchemaProvider
+ (BOOL)_createRecordsAndInsertByLookingUpUDCs:(id)a3 sourceUUID:(id)a4 profile:(id)a5 transaction:(id)a6 errorOut:(id *)a7;
+ (id)_allUserDomainConceptsThatSupportUserAnnotatedMedicationDerivation:(id)a3 transaction:(id)a4 errorOut:(id *)a5;
- (BOOL)setObjectAuthorizationStatusContext:(id)a3 forObjectType:(id)a4 bundleIdentifier:(id)a5 profile:(id)a6 error:(id *)a7;
- (id)filterForClientUserAnnotatedMedications:(id)a3 bundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
- (id)filteredAuthorizedObjectsForClient:(id)a3 anchor:(id)a4 bundleIdentifier:(id)a5 clientEntitlements:(id)a6 profile:(id)a7 error:(id *)a8;
- (int64_t)isClientAuthorizedToReadObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
- (int64_t)isClientAuthorizedToReadType:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDConceptAuthorizationSchemaProvider

- (int64_t)isClientAuthorizedToReadObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v14 arrayEntitlement:*MEMORY[0x277CCCCE0] containsString:*MEMORY[0x277CCBBE8]] & 1) != 0 || (objc_msgSend(v14, "hasEntitlement:", *MEMORY[0x277CCC8B0]))
  {
    v16 = 1;
  }

  else
  {
    v17 = [v15 sourceManager];
    v39 = 0;
    v18 = [v17 sourceUUIDForBundleIdentifier:v13 error:&v39];
    v19 = v39;
    v20 = v19;
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v12;
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__145;
        v37 = __Block_byref_object_dispose__145;
        v38 = 0;
        v21 = [v15 database];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __127__HDConceptAuthorizationSchemaProvider_isClientAuthorizedToReadObject_sourceBundleIdentifier_clientEntitlements_profile_error___block_invoke;
        v29[3] = &unk_278615F88;
        v28 = v27;
        v30 = v28;
        v31 = v18;
        v32 = &v33;
        v22 = [(HDHealthEntity *)HDConceptAuthorizationEntity performReadTransactionWithHealthDatabase:v21 error:a7 block:v29];

        if (v22)
        {
          v23 = v34[5];
          if (v23)
          {
            [v23 status];
            v16 = HKAuthorizationBooleanResultForConceptAuthorizationRecordStatus();
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 3;
        }

        _Block_object_dispose(&v33, 8);
      }

      else
      {
        v26 = self;
        v16 = 3;
        [MEMORY[0x277CCA9B8] hk_assignError:a7 code:3 format:{@"%@ Authorization Information requested from non-UserAnnotatedMedicaionObject with class: %@", v26, objc_opt_class()}];
      }
    }

    else if (v19)
    {
      if (a7)
      {
        v24 = v19;
        *a7 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }

      v16 = 3;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

BOOL __127__HDConceptAuthorizationSchemaProvider_isClientAuthorizedToReadObject_sourceBundleIdentifier_clientEntitlements_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 medication];
  v8 = [v7 identifier];
  v9 = HDConceptAuthorizationEntityPredicateForHealthConceptIdentifier(v8, 1);

  v10 = HDConceptAuthorizationEntityPredicateForSourceUUID(a1[5]);
  v11 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v9 otherPredicate:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __127__HDConceptAuthorizationSchemaProvider_isClientAuthorizedToReadObject_sourceBundleIdentifier_clientEntitlements_profile_error___block_invoke_2;
  v14[3] = &unk_2786272B8;
  v14[4] = a1[6];
  v12 = [HDConceptAuthorizationEntity enumerateAuthorizationRecordsMatchingPredicate:v11 transaction:v6 error:a3 enumerationHandler:v14];

  return v12;
}

- (int64_t)isClientAuthorizedToReadType:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v14 arrayEntitlement:*MEMORY[0x277CCCCE0] containsString:*MEMORY[0x277CCC3F8]] & 1) != 0 || (objc_msgSend(v14, "hasEntitlement:", *MEMORY[0x277CCC8B0]))
  {
    v16 = 1;
  }

  else
  {
    v17 = [MEMORY[0x277CCD658] medicationDoseEventType];
    v18 = v17;
    if (v17 == v12 || v17 && ([v12 isEqual:v17] & 1) != 0)
    {
      v19 = [v15 sourceManager];
      v40 = 0;
      v20 = [v19 sourceUUIDForBundleIdentifier:v13 error:&v40];
      v21 = v40;

      if (v20)
      {
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 0;
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        v22 = [v15 database];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __125__HDConceptAuthorizationSchemaProvider_isClientAuthorizedToReadType_sourceBundleIdentifier_clientEntitlements_profile_error___block_invoke;
        v28[3] = &unk_278624108;
        v29 = v20;
        v30 = &v36;
        v31 = &v32;
        v23 = [(HDHealthEntity *)HDConceptAuthorizationEntity performReadTransactionWithHealthDatabase:v22 error:a7 block:v28];

        if (v23)
        {
          if (v37[3])
          {
            v16 = 1;
          }

          else if (*(v33 + 24))
          {
            v16 = 2;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 3;
        }

        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(&v36, 8);
      }

      else if (v21)
      {
        if (a7)
        {
          v26 = v21;
          *a7 = v21;
        }

        else
        {
          _HKLogDroppedError();
        }

        v16 = 3;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = [v12 identifier];
      [v24 hk_assignError:a7 code:100 format:{@"%@ does not support looking up authorization for non-dose-event type %@", self, v25}];

      v16 = 3;
    }
  }

  return v16;
}

BOOL __125__HDConceptAuthorizationSchemaProvider_isClientAuthorizedToReadType_sourceBundleIdentifier_clientEntitlements_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = HDConceptAuthorizationEntityPredicateForSourceUUID(v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __125__HDConceptAuthorizationSchemaProvider_isClientAuthorizedToReadType_sourceBundleIdentifier_clientEntitlements_profile_error___block_invoke_2;
  v10[3] = &unk_2786272E0;
  v11 = *(a1 + 40);
  v8 = [HDConceptAuthorizationEntity enumerateAuthorizationRecordsMatchingPredicate:v7 transaction:v6 error:a3 enumerationHandler:v10];

  return v8;
}

uint64_t __125__HDConceptAuthorizationSchemaProvider_isClientAuthorizedToReadType_sourceBundleIdentifier_clientEntitlements_profile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) |= [v3 status] == 2;
  v4 = [v3 status];

  *(*(*(a1 + 40) + 8) + 24) |= v4 == 1;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  }

  return v5 & 1;
}

- (id)filteredAuthorizedObjectsForClient:(id)a3 anchor:(id)a4 bundleIdentifier:(id)a5 clientEntitlements:(id)a6 profile:(id)a7 error:(id *)a8
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a3 array];
  if (([v14 arrayEntitlement:*MEMORY[0x277CCCCE0] containsString:*MEMORY[0x277CCC3F8]] & 1) != 0 || objc_msgSend(v14, "hasEntitlement:", *MEMORY[0x277CCC8B0]))
  {
    v17 = v16;
  }

  else
  {
    v18 = [v15 sourceManager];
    v36 = 0;
    v19 = [v18 localSourceForBundleIdentifier:v13 error:&v36];
    v20 = v36;

    if (v19)
    {
      v21 = [v16 hk_firstObjectPassingTest:&__block_literal_global_178];
      if (v21)
      {
        v22 = v19;
        v23 = v20;
        v24 = MEMORY[0x277CCA9B8];
        v25 = v21;
        v33 = [v21 UUID];
        v26 = v24;
        v20 = v23;
        v19 = v22;
        v27 = v33;
        [v26 hk_assignError:a8 code:100 format:{@"%@ does not support filtering HKObjects that are not HKMedicationDoseEvents. Found mismatched object with UUID %@", self, v33}];
        v17 = 0;
      }

      else
      {
        v27 = v16;
        v29 = [v27 hk_map:&__block_literal_global_312_0];
        v30 = [HDConceptAuthorizationEntity authorizationRecordsForHealthConceptIdentifiers:"authorizationRecordsForHealthConceptIdentifiers:sourceEntity:profile:error:" sourceEntity:? profile:? error:?];
        v31 = v30;
        if (v30)
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __132__HDConceptAuthorizationSchemaProvider_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_profile_error___block_invoke_3;
          v34[3] = &unk_278627348;
          v35 = v30;
          v17 = [v27 hk_filter:v34];
        }

        else
        {
          v17 = 0;
        }

        v25 = 0;
      }
    }

    else if (v20)
    {
      if (a8)
      {
        v28 = v20;
        v17 = 0;
        *a8 = v20;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }
  }

  return v17;
}

BOOL __132__HDConceptAuthorizationSchemaProvider_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

id __132__HDConceptAuthorizationSchemaProvider_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_profile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD4B0];
  v3 = [a2 medicationIdentifier];
  v4 = [v2 medicationConceptIdentifierWithSemanticIdentifierString:v3];

  return v4;
}

uint64_t __132__HDConceptAuthorizationSchemaProvider_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_profile_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __132__HDConceptAuthorizationSchemaProvider_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_profile_error___block_invoke_4;
  v8[3] = &unk_278621BB0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 hk_containsObjectPassingTest:v8];

  return v6;
}

BOOL __132__HDConceptAuthorizationSchemaProvider_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_profile_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCD4B0];
  v5 = [*(a1 + 32) medicationIdentifier];
  v6 = [v4 medicationConceptIdentifierWithSemanticIdentifierString:v5];

  v7 = [v3 identifier];
  if (v7 == v6)
  {
    v9 = [v3 status] == 2;
  }

  else if (v6)
  {
    v8 = [v3 identifier];
    if ([v8 isEqual:v6])
    {
      v9 = [v3 status] == 2;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)filterForClientUserAnnotatedMedications:(id)a3 bundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (([v13 arrayEntitlement:*MEMORY[0x277CCCCE0] containsString:*MEMORY[0x277CCBBE8]] & 1) != 0 || objc_msgSend(v13, "hasEntitlement:", *MEMORY[0x277CCC8B0]))
  {
    v15 = v11;
  }

  else
  {
    v16 = [v14 sourceManager];
    v26 = 0;
    v17 = [v16 localSourceForBundleIdentifier:v12 error:&v26];
    v18 = v26;

    if (v17)
    {
      v19 = [v11 hk_map:&__block_literal_global_318_1];
      v20 = [HDConceptAuthorizationEntity authorizationRecordsForHealthConceptIdentifiers:v19 sourceEntity:v17 profile:v14 error:a7];
      v21 = v20;
      if (v20)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __130__HDConceptAuthorizationSchemaProvider_filterForClientUserAnnotatedMedications_bundleIdentifier_clientEntitlements_profile_error___block_invoke_2;
        v24[3] = &unk_278621BD8;
        v25 = v20;
        v15 = [v11 hk_filter:v24];
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v18)
    {
      if (a7)
      {
        v22 = v18;
        v15 = 0;
        *a7 = v18;
      }

      else
      {
        _HKLogDroppedError();
        v15 = 0;
      }
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }
  }

  return v15;
}

id __130__HDConceptAuthorizationSchemaProvider_filterForClientUserAnnotatedMedications_bundleIdentifier_clientEntitlements_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 medication];
  v3 = [v2 identifier];

  return v3;
}

uint64_t __130__HDConceptAuthorizationSchemaProvider_filterForClientUserAnnotatedMedications_bundleIdentifier_clientEntitlements_profile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __130__HDConceptAuthorizationSchemaProvider_filterForClientUserAnnotatedMedications_bundleIdentifier_clientEntitlements_profile_error___block_invoke_3;
  v8[3] = &unk_278621BB0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 hk_containsObjectPassingTest:v8];

  return v6;
}

BOOL __130__HDConceptAuthorizationSchemaProvider_filterForClientUserAnnotatedMedications_bundleIdentifier_clientEntitlements_profile_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) medication];
  v6 = [v5 identifier];
  if (v4 == v6)
  {
    v12 = [v3 status] == 2;
  }

  else
  {
    v7 = [*(a1 + 32) medication];
    v8 = [v7 identifier];
    if (v8)
    {
      v9 = [v3 identifier];
      v10 = [*(a1 + 32) medication];
      v11 = [v10 identifier];
      if ([v9 isEqual:v11])
      {
        v12 = [v3 status] == 2;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)setObjectAuthorizationStatusContext:(id)a3 forObjectType:(id)a4 bundleIdentifier:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v13 identifier];
  v17 = v16;
  v18 = *MEMORY[0x277CCBBE8];
  if (v16 == *MEMORY[0x277CCBBE8])
  {
  }

  else
  {
    if (!v18)
    {

LABEL_10:
      [MEMORY[0x277CCA9B8] hk_assignError:a7 code:3 format:{@"%@ Attempting to save authorizations for unsupported data type %@", self, v13}];
      v25 = 0;
      goto LABEL_11;
    }

    v19 = [v13 identifier];
    v20 = [v19 isEqualToString:v18];

    if ((v20 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v21 = [v15 sourceManager];
  v32 = 0;
  v22 = [v21 sourceUUIDForBundleIdentifier:v14 error:&v32];
  v23 = v32;

  if (v22)
  {
    v24 = [v15 database];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __121__HDConceptAuthorizationSchemaProvider_setObjectAuthorizationStatusContext_forObjectType_bundleIdentifier_profile_error___block_invoke;
    v28[3] = &unk_278615D40;
    v29 = v12;
    v30 = v22;
    v31 = v15;
    v25 = [(HDHealthEntity *)HDConceptAuthorizationEntity performWriteTransactionWithHealthDatabase:v24 error:a7 block:v28];
  }

  else if (v23)
  {
    if (a7)
    {
      v27 = v23;
      v25 = 0;
      *a7 = v23;
    }

    else
    {
      _HKLogDroppedError();
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

LABEL_11:
  return v25;
}

BOOL __121__HDConceptAuthorizationSchemaProvider_setObjectAuthorizationStatusContext_forObjectType_bundleIdentifier_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 objectAuthorizationStatuses];
  v8 = [HDConceptAuthorizationSchemaProvider _createRecordsAndInsertByLookingUpUDCs:v7 sourceUUID:a1[5] profile:a1[6] transaction:v6 errorOut:a3];

  return v8;
}

+ (BOOL)_createRecordsAndInsertByLookingUpUDCs:(id)a3 sourceUUID:(id)a4 profile:(id)a5 transaction:(id)a6 errorOut:(id *)a7
{
  v44 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v34 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = a1;
  v33 = a7;
  v37 = [a1 _allUserDomainConceptsThatSupportUserAnnotatedMedicationDerivation:v13 transaction:v14 errorOut:a7];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = v12;
  v36 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v36)
  {
    v35 = *v40;
    v30 = v14;
    v31 = v13;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(v16);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [v16 objectForKey:v18];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 longLongValue];
          if (v21 >= 3)
          {
            [MEMORY[0x277CCA9B8] hk_assignError:v33 code:100 format:{@"%@ Attempting ot save an authorization status that is not currently supported %ld", v32, v21}];

LABEL_17:
            v27 = 0;
            v14 = v30;
            v13 = v31;
            goto LABEL_18;
          }
        }

        else
        {
          v21 = 1;
        }

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __119__HDConceptAuthorizationSchemaProvider__createRecordsAndInsertByLookingUpUDCs_sourceUUID_profile_transaction_errorOut___block_invoke;
        v38[3] = &unk_278627390;
        v38[4] = v18;
        v22 = [v37 hk_firstObjectPassingTest:v38];
        if (v22)
        {
          v23 = objc_alloc(MEMORY[0x277CCD1C8]);
          v24 = [v22 semanticIdentifier];
          v25 = [v24 stringValue];
          v26 = [v23 initWithHealthConceptIdentifier:v18 semanticIdentifierString:v25 sourceUUID:v34 status:v21 modificationDate:CFAbsoluteTimeGetCurrent()];

          [v15 hk_addNonNilObject:v26];
        }

        else
        {
          [MEMORY[0x277CCA9B8] hk_assignError:v33 code:100 format:{@"%@ Unable to find user domain concept matching records health concept identifier %@", v32, v18}];
        }

        if (!v22)
        {
          goto LABEL_17;
        }
      }

      v14 = v30;
      v13 = v31;
      v36 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  v27 = [HDConceptAuthorizationEntity insertConceptAuthorizationRecords:v15 transaction:v14 profile:v13 error:v33];
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t __119__HDConceptAuthorizationSchemaProvider__createRecordsAndInsertByLookingUpUDCs_sourceUUID_profile_transaction_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 semanticIdentifier];
  v5 = [v4 healthConceptIdentifier];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    v9 = 1;
  }

  else if (v6)
  {
    v7 = [v3 semanticIdentifier];
    v8 = [v7 healthConceptIdentifier];
    v9 = [v8 isEqual:*(a1 + 32)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_allUserDomainConceptsThatSupportUserAnnotatedMedicationDerivation:(id)a3 transaction:(id)a4 errorOut:(id *)a5
{
  v6 = a3;
  v7 = [v6 daemon];
  v8 = [v7 userDomainConceptEntityRegistry];
  v9 = [v8 registeredUserDomainConceptEntityClasses];

  v10 = [v9 hk_map:&__block_literal_global_335_0];
  v11 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifiers(v10);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [v6 userDomainConceptManager];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __128__HDConceptAuthorizationSchemaProvider__allUserDomainConceptsThatSupportUserAnnotatedMedicationDerivation_transaction_errorOut___block_invoke_2;
  v18[3] = &unk_278616670;
  v19 = v12;
  v14 = v12;
  LODWORD(a5) = [v13 enumerateUserDomainConceptsWithPredicate:v11 error:a5 enumerationHandler:v18];

  if (a5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

id __128__HDConceptAuthorizationSchemaProvider__allUserDomainConceptsThatSupportUserAnnotatedMedicationDerivation_transaction_errorOut___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 supportsUserAnnotatedMedicationAPIObjectGeneration])
  {
    v3 = [objc_msgSend(a2 "userDomainConceptClass")];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end