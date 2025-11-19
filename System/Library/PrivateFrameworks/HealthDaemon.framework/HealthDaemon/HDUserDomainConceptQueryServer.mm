@interface HDUserDomainConceptQueryServer
- (HDUserDomainConceptQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDUserDomainConceptQueryServer

- (HDUserDomainConceptQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = HDUserDomainConceptQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v11->_limit = [v10 limit];
    v12 = [v10 sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = v12;

    v14 = [v10 anchor];
    anchor = v11->_anchor;
    v11->_anchor = v14;
  }

  return v11;
}

- (void)_queue_start
{
  v36 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HDUserDomainConceptQueryServer;
  [(HDQueryServer *)&v31 _queue_start];
  v3 = [(HDQueryServer *)self queryUUID];
  v4 = [(HDQueryServer *)self clientProxy];
  v5 = [(HDQueryServer *)self profile];
  v6 = [v5 userDomainConceptManager];

  v7 = [(HDQueryServer *)self filter];
  v8 = [(HDQueryServer *)self profile];
  v9 = [v7 predicateWithProfile:v8];

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
    v16 = [v6 orderingTermsForSortDescriptors:sortDescriptors error:&v30];
    v17 = v30;
    v18 = v17;
    if (!v16)
    {
      [v4 client_deliverError:v17 forQuery:v3];
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
  v22 = [v6 enumerateUserDomainConceptsWithPredicate:v9 limit:limit orderingTerms:v18 error:&v29 enumerationHandler:v27];
  v23 = v29;
  if (v22)
  {
    [v4 client_deliverResults:v21 queryUUID:v3];
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
      v35 = self;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Error while fetching concepts: %{public}@", buf, 0x16u);
    }

    [v4 client_deliverError:v23 forQuery:v3];
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