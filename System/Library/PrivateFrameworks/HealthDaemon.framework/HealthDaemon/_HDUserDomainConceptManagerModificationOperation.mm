@interface _HDUserDomainConceptManagerModificationOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (_HDUserDomainConceptManagerModificationOperation)init;
- (_HDUserDomainConceptManagerModificationOperation)initWithCoder:(id)a3;
- (_HDUserDomainConceptManagerModificationOperation)initWithUserDomainConcepts:(id)a3 method:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 syncVersion:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDUserDomainConceptManagerModificationOperation

- (_HDUserDomainConceptManagerModificationOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HDUserDomainConceptManagerModificationOperation)initWithUserDomainConcepts:(id)a3 method:(int64_t)a4 syncProvenance:(int64_t)a5 syncIdentity:(int64_t)a6 syncVersion:(id)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = _HDUserDomainConceptManagerModificationOperation;
  v14 = [(_HDUserDomainConceptManagerModificationOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_userDomainConcepts, a3);
    v15->_method = a4;
    v15->_syncProvenance = a5;
    v15->_syncIdentity = a6;
    v15->_syncVersion = a7;
  }

  return v15;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v73[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = [v9 syncIdentityManager];
  v11 = [v10 legacySyncIdentity];
  v12 = [v11 entity];
  v13 = [v12 persistentID];

  if (self->_syncIdentity == -1)
  {
    syncIdentity = v13;
  }

  else
  {
    syncIdentity = self->_syncIdentity;
  }

  v15 = [v9 userDomainConceptManager];

  method = self->_method;
  syncProvenance = self->_syncProvenance;
  syncVersion = self->_syncVersion;
  v59 = self->_userDomainConcepts;
  v19 = v8;
  v20 = v15;
  if (v15)
  {
    if ((method - 1) < 2)
    {
      v21 = v15;
      v22 = a5;
      WeakRetained = objc_loadWeakRetained(v20 + 8);
      v24 = v59;
      v25 = WeakRetained;
      v26 = v19;
      v27 = v25;
      v56 = v26;
      v28 = v26;
      v66 = 0u;
      v67 = 0u;
      if (method == 2)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v68 = 0uLL;
      v69 = 0uLL;
      obj = v24;
      v30 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v30)
      {
        v31 = v30;
        v62 = v21;
        v32 = *v67;
        while (2)
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v67 != v32)
            {
              objc_enumerationMutation(obj);
            }

            if (![HDUserDomainConceptEntity storeUserDomainConcept:*(*(&v66 + 1) + 8 * i) method:v29 syncProvenance:syncProvenance syncIdentity:syncIdentity syncVersion:syncVersion profile:v27 transaction:v28 error:v22])
            {
              v34 = 0;
              goto LABEL_33;
            }
          }

          v31 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v72 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }

        v34 = 1;
LABEL_33:
        v36 = v62;
      }

      else
      {
        v34 = 1;
        v36 = v21;
      }

      v19 = v56;
LABEL_42:
      v53 = v59;
      goto LABEL_43;
    }

    if (method == 3)
    {
      v35 = v59;
      v63 = v19;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v58 = v35;
      v61 = [(NSArray *)v58 countByEnumeratingWithState:&v66 objects:v72 count:16];
      v36 = v15;
      if (v61)
      {
        v57 = v19;
        v60 = *v67;
        while (2)
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v67 != v60)
            {
              objc_enumerationMutation(v58);
            }

            v38 = *(*(&v66 + 1) + 8 * j);
            obja = v63;
            v39 = [v15 profile];
            v40 = [v39 daemon];
            v41 = [v40 userDomainConceptEntityRegistry];
            v42 = [v38 identifier];
            v43 = [v41 userDomainConceptEntityClassForTypeIdentifier:v42];

            if ([v43 supportsHidingSemanticDuplicates])
            {
              v44 = [v43 predicateMatchingSemanticDuplicatesOf:v38];
              v45 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:0];
              v73[0] = v45;
              v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
              v70[0] = MEMORY[0x277D85DD0];
              v70[1] = 3221225472;
              v70[2] = __129__HDUserDomainConceptManager__enumerateAndDeleteSemanticDuplicatesOfConceptIfSupportsHidingSemanticDuplicates_transaction_error___block_invoke;
              v70[3] = &unk_27862B040;
              v70[4] = v15;
              v47 = obja;
              v71 = v47;
              v48 = [v15 enumerateUserDomainConceptsWithPredicate:v44 enumerationOptions:2 limit:0 orderingTerms:v46 transaction:v47 error:a5 enumerationHandler:v70];

              if (!v48)
              {
                goto LABEL_38;
              }
            }

            else
            {
            }

            v49 = objc_loadWeakRetained(v15 + 8);
            v50 = [HDUserDomainConceptEntity deleteUserDomainConcept:v38 profile:v49 transaction:obja error:a5];

            if (!v50)
            {
LABEL_38:
              v34 = 0;
              goto LABEL_39;
            }
          }

          v61 = [(NSArray *)v58 countByEnumeratingWithState:&v66 objects:v72 count:16];
          if (v61)
          {
            continue;
          }

          break;
        }

        v34 = 1;
LABEL_39:
        v19 = v57;
      }

      else
      {
        v34 = 1;
      }

      goto LABEL_42;
    }

    v51 = MEMORY[0x277CCA9B8];
    v52 = HKStringFromUserDomainConceptStoreMethod();
    [v51 hk_assignError:a5 code:100 format:{@"Unknown user domain concept modification method %@", v52}];
  }

  v34 = 0;
  v53 = v59;
  v36 = v15;
LABEL_43:

  v54 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = self;
  method = self->_method;
  v5 = a3;
  [v5 encodeInteger:method forKey:@"method"];
  [v5 encodeInt64:v3->_syncProvenance forKey:@"sync_provenance"];
  [v5 encodeObject:v3->_userDomainConcepts forKey:@"concepts"];
  [v5 encodeInt64:v3->_syncIdentity forKey:@"sync_identity"];
  v3 = (v3 + 32);
  [v5 encodeInt32:LODWORD(v3->super.super.super.isa) forKey:@"sync_version_minimum"];
  [v5 encodeInt32:HIDWORD(v3->super.super.super.isa) forKey:@"sync_version_current"];
}

- (_HDUserDomainConceptManagerModificationOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _HDUserDomainConceptManagerModificationOperation;
  v5 = [(_HDUserDomainConceptManagerModificationOperation *)&v11 init];
  if (v5)
  {
    v5->_method = [v4 decodeIntegerForKey:@"method"];
    v5->_syncProvenance = [v4 decodeInt64ForKey:@"sync_provenance"];
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"concepts"];
    userDomainConcepts = v5->_userDomainConcepts;
    v5->_userDomainConcepts = v7;

    v5->_syncIdentity = -1;
    if ([v4 containsValueForKey:@"sync_identity"])
    {
      v5->_syncIdentity = [v4 decodeInt64ForKey:@"sync_identity"];
    }

    v9 = [v4 decodeInt32ForKey:@"sync_version_minimum"];
    v5->_syncVersion = (v9 | ([v4 decodeInt32ForKey:@"sync_version_current"] << 32));
  }

  return v5;
}

@end