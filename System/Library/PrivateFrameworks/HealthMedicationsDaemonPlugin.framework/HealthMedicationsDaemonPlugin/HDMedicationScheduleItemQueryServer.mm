@interface HDMedicationScheduleItemQueryServer
- (HDMedicationScheduleItemQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDMedicationScheduleItemQueryServer

- (HDMedicationScheduleItemQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = HDMedicationScheduleItemQueryServer;
  v12 = [(HDQueryServer *)&v15 initWithUUID:a3 configuration:v11 client:a5 delegate:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, a4);
  }

  return v13;
}

- (void)_queue_start
{
  v2 = self;
  v56 = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = HDMedicationScheduleItemQueryServer;
  [(HDQueryServer *)&v54 _queue_start];
  v3 = [(HDQueryServer *)v2 queryUUID];
  v4 = [(HDQueryServer *)v2 clientProxy];
  v5 = [v4 remoteObjectProxy];

  v6 = [(HKMedicationScheduleItemQueryConfiguration *)v2->_configuration fromDate];

  if (v6)
  {
    v7 = [(HKMedicationScheduleItemQueryConfiguration *)v2->_configuration fromDate];
    v8 = HDMedicationScheduleItemPredicateForScheduledDateTime(6);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HKMedicationScheduleItemQueryConfiguration *)v2->_configuration toDate];

  if (v9)
  {
    v10 = [(HKMedicationScheduleItemQueryConfiguration *)v2->_configuration toDate];
    v11 = HDMedicationScheduleItemPredicateForScheduledDateTime(3);

    if (v8)
    {
      v12 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v8 otherPredicate:v11];

      v8 = v12;
    }

    else
    {
      v8 = v11;
    }
  }

  v13 = [(HKMedicationScheduleItemQueryConfiguration *)v2->_configuration identifier];

  if (v13)
  {
    v14 = [(HKMedicationScheduleItemQueryConfiguration *)v2->_configuration identifier];
    v15 = HDMedicationScheduleItemPredicateForIdentifier(v14, 1);

    if (v8)
    {
      v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v8 otherPredicate:v15];

      v8 = v16;
    }

    else
    {
      v8 = v15;
    }
  }

  v17 = [(HKMedicationScheduleItemQueryConfiguration *)v2->_configuration sortDescriptors];

  v18 = 0x277CBE000uLL;
  if (v17)
  {
    v43 = v5;
    v44 = v3;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v42 = v2;
    v20 = [(HKMedicationScheduleItemQueryConfiguration *)v2->_configuration sortDescriptors];
    v21 = [v20 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v51;
      v24 = *MEMORY[0x277D113F0];
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v50 + 1) + 8 * i);
          v27 = [v26 key];
          v28 = [v27 isEqualToString:v24];

          if (!v28)
          {
            v31 = MEMORY[0x277CCA9B8];
            v32 = MEMORY[0x277CCACA8];
            v33 = objc_opt_class();
            v34 = [v26 key];
            v35 = [v32 stringWithFormat:@"%@ Invalid sort descriptor key passed: '%@", v33, v34];
            v36 = [v31 hk_error:3 description:v35];

            v5 = v43;
            v37 = v44;
            [v43 client_deliverError:v36 forQuery:v44];
            goto LABEL_30;
          }

          v29 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"scheduled_date_time" entityClass:objc_opt_class() ascending:{objc_msgSend(v26, "ascending")}];
          [v19 addObject:v29];
        }

        v22 = [v20 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v5 = v43;
    v30 = v44;
    v2 = v42;
    v18 = 0x277CBE000;
  }

  else
  {
    v30 = v3;
    v19 = 0;
  }

  v38 = objc_alloc_init(*(v18 + 2840));
  v39 = [(HDQueryServer *)v2 profile];
  v40 = [v39 database];
  v49 = 0;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __51__HDMedicationScheduleItemQueryServer__queue_start__block_invoke;
  v45[3] = &unk_2796CE850;
  v46 = v8;
  v19 = v19;
  v47 = v19;
  v20 = v38;
  v48 = v20;
  LODWORD(v38) = [(HDHealthEntity *)HDMedicationScheduleItemEntity performReadTransactionWithHealthDatabase:v40 error:&v49 block:v45];
  v36 = v49;

  if (v38)
  {
    v37 = v30;
    [v5 client_deliverScheduleItems:v20 queryUUID:v30];
  }

  else
  {
    v37 = v30;
    [v5 client_deliverError:v36 forQuery:v30];
  }

LABEL_30:
  v41 = *MEMORY[0x277D85DE8];
}

BOOL __51__HDMedicationScheduleItemQueryServer__queue_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HDMedicationScheduleItemQueryServer__queue_start__block_invoke_2;
  v9[3] = &unk_2796CD618;
  v10 = *(a1 + 48);
  v7 = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:v5 orderingTerms:v6 transaction:a2 error:a3 enumerationHandler:v9];

  return v7;
}

@end