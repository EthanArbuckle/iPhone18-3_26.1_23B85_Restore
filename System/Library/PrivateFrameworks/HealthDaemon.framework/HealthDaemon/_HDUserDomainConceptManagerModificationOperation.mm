@interface _HDUserDomainConceptManagerModificationOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (_HDUserDomainConceptManagerModificationOperation)init;
- (_HDUserDomainConceptManagerModificationOperation)initWithCoder:(id)coder;
- (_HDUserDomainConceptManagerModificationOperation)initWithUserDomainConcepts:(id)concepts method:(int64_t)method syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity syncVersion:(id)version;
- (void)encodeWithCoder:(id)coder;
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

- (_HDUserDomainConceptManagerModificationOperation)initWithUserDomainConcepts:(id)concepts method:(int64_t)method syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity syncVersion:(id)version
{
  conceptsCopy = concepts;
  v17.receiver = self;
  v17.super_class = _HDUserDomainConceptManagerModificationOperation;
  v14 = [(_HDUserDomainConceptManagerModificationOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_userDomainConcepts, concepts);
    v15->_method = method;
    v15->_syncProvenance = provenance;
    v15->_syncIdentity = identity;
    v15->_syncVersion = version;
  }

  return v15;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v73[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  profileCopy = profile;
  syncIdentityManager = [profileCopy syncIdentityManager];
  legacySyncIdentity = [syncIdentityManager legacySyncIdentity];
  entity = [legacySyncIdentity entity];
  persistentID = [entity persistentID];

  if (self->_syncIdentity == -1)
  {
    syncIdentity = persistentID;
  }

  else
  {
    syncIdentity = self->_syncIdentity;
  }

  userDomainConceptManager = [profileCopy userDomainConceptManager];

  method = self->_method;
  syncProvenance = self->_syncProvenance;
  syncVersion = self->_syncVersion;
  v59 = self->_userDomainConcepts;
  v19 = transactionCopy;
  v20 = userDomainConceptManager;
  if (userDomainConceptManager)
  {
    if ((method - 1) < 2)
    {
      v21 = userDomainConceptManager;
      errorCopy = error;
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

            if (![HDUserDomainConceptEntity storeUserDomainConcept:*(*(&v66 + 1) + 8 * i) method:v29 syncProvenance:syncProvenance syncIdentity:syncIdentity syncVersion:syncVersion profile:v27 transaction:v28 error:errorCopy])
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
      v36 = userDomainConceptManager;
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
            profile = [userDomainConceptManager profile];
            daemon = [profile daemon];
            userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
            identifier = [v38 identifier];
            v43 = [userDomainConceptEntityRegistry userDomainConceptEntityClassForTypeIdentifier:identifier];

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
              v70[4] = userDomainConceptManager;
              v47 = obja;
              v71 = v47;
              v48 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v44 enumerationOptions:2 limit:0 orderingTerms:v46 transaction:v47 error:error enumerationHandler:v70];

              if (!v48)
              {
                goto LABEL_38;
              }
            }

            else
            {
            }

            v49 = objc_loadWeakRetained(userDomainConceptManager + 8);
            v50 = [HDUserDomainConceptEntity deleteUserDomainConcept:v38 profile:v49 transaction:obja error:error];

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
    [v51 hk_assignError:error code:100 format:{@"Unknown user domain concept modification method %@", v52}];
  }

  v34 = 0;
  v53 = v59;
  v36 = userDomainConceptManager;
LABEL_43:

  v54 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  method = self->_method;
  coderCopy = coder;
  [coderCopy encodeInteger:method forKey:@"method"];
  [coderCopy encodeInt64:selfCopy->_syncProvenance forKey:@"sync_provenance"];
  [coderCopy encodeObject:selfCopy->_userDomainConcepts forKey:@"concepts"];
  [coderCopy encodeInt64:selfCopy->_syncIdentity forKey:@"sync_identity"];
  selfCopy = (selfCopy + 32);
  [coderCopy encodeInt32:LODWORD(selfCopy->super.super.super.isa) forKey:@"sync_version_minimum"];
  [coderCopy encodeInt32:HIDWORD(selfCopy->super.super.super.isa) forKey:@"sync_version_current"];
}

- (_HDUserDomainConceptManagerModificationOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _HDUserDomainConceptManagerModificationOperation;
  v5 = [(_HDUserDomainConceptManagerModificationOperation *)&v11 init];
  if (v5)
  {
    v5->_method = [coderCopy decodeIntegerForKey:@"method"];
    v5->_syncProvenance = [coderCopy decodeInt64ForKey:@"sync_provenance"];
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"concepts"];
    userDomainConcepts = v5->_userDomainConcepts;
    v5->_userDomainConcepts = v7;

    v5->_syncIdentity = -1;
    if ([coderCopy containsValueForKey:@"sync_identity"])
    {
      v5->_syncIdentity = [coderCopy decodeInt64ForKey:@"sync_identity"];
    }

    v9 = [coderCopy decodeInt32ForKey:@"sync_version_minimum"];
    v5->_syncVersion = (v9 | ([coderCopy decodeInt32ForKey:@"sync_version_current"] << 32));
  }

  return v5;
}

@end