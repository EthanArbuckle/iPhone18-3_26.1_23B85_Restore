@interface HDUserDomainConceptQueryServer
- (HDUserDomainConceptQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDUserDomainConceptQueryServer

- (HDUserDomainConceptQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = HDUserDomainConceptQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v11->_limit = [configurationCopy limit];
    sortDescriptors = [configurationCopy sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = sortDescriptors;

    anchor = [configurationCopy anchor];
    anchor = v11->_anchor;
    v11->_anchor = anchor;
  }

  return v11;
}

- (void)_queue_start
{
  v36 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HDUserDomainConceptQueryServer;
  [(HDQueryServer *)&v31 _queue_start];
  queryUUID = [(HDQueryServer *)self queryUUID];
  clientProxy = [(HDQueryServer *)self clientProxy];
  profile = [(HDQueryServer *)self profile];
  userDomainConceptManager = [profile userDomainConceptManager];

  filter = [(HDQueryServer *)self filter];
  profile2 = [(HDQueryServer *)self profile];
  v9 = [filter predicateWithProfile:profile2];

  anchor = self->_anchor;
  if (anchor)
  {
    v11 = MEMORY[0x277D10B70];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HKQueryAnchor _rowid](anchor, "_rowid")}];
    v13 = HDUserDomainConceptEntityPredicateForConceptsWithAnchorAfter(v12);
    v14 = [v11 compoundPredicateWithPredicate:v9 otherPredicate:v13];

    v9 = v14;
  }

  sortDescriptors = self->_sortDescriptors;
  if (sortDescriptors)
  {
    v30 = 0;
    v16 = [userDomainConceptManager orderingTermsForSortDescriptors:sortDescriptors error:&v30];
    v17 = v30;
    v18 = v17;
    if (!v16)
    {
      [clientProxy client_deliverError:v17 forQuery:queryUUID];
      goto LABEL_14;
    }

    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  limit = self->_limit;
  v29 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__HDUserDomainConceptQueryServer__queue_start__block_invoke;
  v27[3] = &unk_278616670;
  v21 = v19;
  v28 = v21;
  v22 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v9 limit:limit orderingTerms:v18 error:&v29 enumerationHandler:v27];
  v23 = v29;
  if (v22)
  {
    [clientProxy client_deliverResults:v21 queryUUID:queryUUID];
  }

  else
  {
    _HKInitializeLogging();
    v24 = HKLogHealthOntology();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = HKSensitiveLogItem();
      *buf = 138543618;
      v33 = v26;
      v34 = 2114;
      selfCopy = self;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Error while fetching concepts: %{public}@", buf, 0x16u);
    }

    [clientProxy client_deliverError:v23 forQuery:queryUUID];
  }

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __46__HDUserDomainConceptQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCDB38];
  v6 = a2;
  v7 = [[v5 alloc] initWithUserConcept:v6 rawAnchor:a3];

  [v4 addObject:v7];
  return 1;
}

@end