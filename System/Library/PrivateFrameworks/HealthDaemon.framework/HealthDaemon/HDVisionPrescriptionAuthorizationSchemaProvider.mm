@interface HDVisionPrescriptionAuthorizationSchemaProvider
- (BOOL)setObjectAuthorizationStatusContext:(id)a3 forObjectType:(id)a4 bundleIdentifier:(id)a5 profile:(id)a6 error:(id *)a7;
- (int64_t)isClientAuthorizedToReadObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
- (int64_t)isClientAuthorizedToWriteObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDVisionPrescriptionAuthorizationSchemaProvider

- (int64_t)isClientAuthorizedToReadObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v39[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (objc_opt_respondsToSelector())
  {
    v15 = [v11 hk_objectType];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 identifier];
      if (v17 && ([v13 arrayEntitlement:*MEMORY[0x277CCCCE0] containsString:v17] & 1) != 0)
      {
        v18 = 0;
        v19 = 1;
        goto LABEL_38;
      }

      v22 = [v14 sourceManager];
      v38 = 0;
      v23 = [v22 localSourceForBundleIdentifier:v12 error:&v38];
      v18 = v38;

      if (!v23)
      {
        if (v18)
        {
          v28 = v18;
        }

        else
        {
          v28 = [MEMORY[0x277CCA9B8] hk_error:124 format:{@"Failed to find local source entity for client with bundle identifier: %@", v12}];
          if (!v28)
          {
LABEL_34:
            v18 = 0;
            goto LABEL_35;
          }
        }

        if (a7)
        {
          v30 = v28;
          *a7 = v28;
        }

        else
        {
          _HKLogDroppedError();
        }

        if (v18)
        {
          v19 = 0;
LABEL_37:

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v36 = v13;
      v39[0] = v11;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v25 = v23;
      v26 = v24;
      v37 = v18;
      v35 = v25;
      v27 = [HDObjectAuthorizationEntity authorizationRecordsForSamples:"authorizationRecordsForSamples:sourceEntity:sessionIdentifier:profile:error:" sourceEntity:v24 sessionIdentifier:? profile:? error:?];
      v34 = v37;

      v28 = [v27 firstObject];

      if (v28)
      {
        if ([v28 status] == 2)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v23 = v35;
        v13 = v36;
        v18 = v34;
        goto LABEL_36;
      }

      v18 = v34;
      if (v34)
      {
        v29 = v34;
        v23 = v35;
        v13 = v36;
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"Failed to fetch HKObjectAuthorizationRecord for object: %@, client bundle identifier: %@", v11, v12}];
        v23 = v35;
        v13 = v36;
        if (!v29)
        {
LABEL_33:

          v28 = 0;
          goto LABEL_34;
        }
      }

      if (a7)
      {
        v31 = v29;
        *a7 = v29;
      }

      else
      {
        _HKLogDroppedError();
      }

      if (v34)
      {
        v28 = 0;
LABEL_35:
        v19 = 0;
LABEL_36:

        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  v20 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"%@ object does not comform to the type protocol", v11}];
  if (v20)
  {
    if (a7)
    {
      v21 = v20;
      *a7 = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = 0;
  v18 = 0;
  v17 = 0;
  v19 = 0;
LABEL_38:

  v32 = *MEMORY[0x277D85DE8];
  return v19;
}

- (int64_t)isClientAuthorizedToWriteObject:(id)a3 sourceBundleIdentifier:(id)a4 clientEntitlements:(id)a5 profile:(id)a6 error:(id *)a7
{
  v53[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v45 = a5;
  v15 = a6;
  v16 = MEMORY[0x277CCD8A8];
  v53[0] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  v18 = [v16 hd_sampleTypesForObjects:v17];

  v51 = 0;
  v19 = [HDAuthorizationStatus authorizationStatusForTypes:v18 bundleIdentifier:v14 profile:v15 error:&v51];
  v20 = v51;
  v21 = v20;
  if (!v19)
  {
    v28 = 2;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v43 = self;
  v22 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:v18];
  v23 = [v19 count];
  v38 = v22;
  if (v23 != [v22 count])
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:v43 file:@"HDVisionPrescriptionAuthorizationSchemaProvider.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"[authorizationStatuses count] == [typesIncludingParentTypes count]"}];
  }

  v40 = v15;
  v41 = a7;
  v42 = v14;
  v44 = v13;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v39 = v18;
  v24 = v18;
  v25 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    v28 = 2;
    do
    {
      v29 = 0;
      v30 = v21;
      do
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v47 + 1) + 8 * v29);
        v32 = [v19 objectForKeyedSubscript:v31];
        v46 = v30;
        v33 = [HDAuthorizationStatus isAuthorizedForObjectType:v31 authorizationStatus:v32 clientEntitlements:v45 sharing:1 error:&v46];
        v21 = v46;

        if (v33)
        {
          v28 = 1;
        }

        ++v29;
        v30 = v21;
      }

      while (v26 != v29);
      v26 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v26);
  }

  else
  {
    v28 = 2;
  }

  v14 = v42;
  v13 = v44;
  v15 = v40;
  a7 = v41;
  v18 = v39;
  if (v21)
  {
LABEL_18:
    if (a7)
    {
      v34 = v21;
      *a7 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_21:

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)setObjectAuthorizationStatusContext:(id)a3 forObjectType:(id)a4 bundleIdentifier:(id)a5 profile:(id)a6 error:(id *)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 sourceManager];
  v50 = 0;
  v15 = [v14 localSourceForBundleIdentifier:v12 error:&v50];
  v16 = v50;

  if (v15)
  {
    v44 = [v15 sourceUUIDWithProfile:v13 error:a7];
    if (v44)
    {
      v38 = a7;
      v39 = v16;
      v40 = v15;
      v41 = v13;
      v42 = v12;
      v43 = v11;
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v45 objectAuthorizationStatuses];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v18 = v49 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v47;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v47 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v46 + 1) + 8 * i);
            v24 = [v23 domain];
            v25 = [v24 isEqualToString:@"HKHealthConceptDomainHealthKit"];

            if (!v25)
            {
              v11 = v43;
              [MEMORY[0x277CCA9B8] hk_assignError:v38 code:2000 format:{@"%@: Domain of the concept identifier does not match the right domain for the following object type %@:", objc_opt_class(), v43}];

              v34 = 0;
              v13 = v41;
              goto LABEL_16;
            }

            v26 = objc_alloc(MEMORY[0x277CCAD78]);
            v27 = [v23 underlyingIdentifier];
            v28 = [v26 initWithUUIDString:v27];

            v29 = objc_alloc(MEMORY[0x277CCD710]);
            v30 = [v45 sessionIdentifier];
            v31 = [v18 objectForKeyedSubscript:v23];
            v32 = HKObjectAuthorizationStatusForNumber();
            v33 = [v29 initWithObjectUUID:v28 sourceUUID:v44 sessionUUID:v30 status:v32 modificationDate:CFAbsoluteTimeGetCurrent()];

            [v17 addObject:v33];
          }

          v20 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v13 = v41;
      v34 = +[HDObjectAuthorizationEntity setObjectAuthorizationRecords:syncProvenance:syncIdentity:profile:error:](HDObjectAuthorizationEntity, "setObjectAuthorizationRecords:syncProvenance:syncIdentity:profile:error:", v17, 0, [v41 currentSyncIdentityPersistentID], v41, v38);
      v11 = v43;
LABEL_16:

      v12 = v42;
      v16 = v39;
      v15 = v40;
    }

    else
    {
      v34 = 0;
    }
  }

  else if (v16)
  {
    if (a7)
    {
      v35 = v16;
      v34 = 0;
      *a7 = v16;
    }

    else
    {
      _HKLogDroppedError();
      v34 = 0;
    }
  }

  else
  {
    v34 = 1;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

@end