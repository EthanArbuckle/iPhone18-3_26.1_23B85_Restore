@interface HDMedicationScheduleQueryServer
- (HDMedicationScheduleQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDMedicationScheduleQueryServer

- (HDMedicationScheduleQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDMedicationScheduleQueryServer;
  v11 = [(HDQueryServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v11->_limit = [v10 limit];
    v12 = [v10 sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = v12;
  }

  return v11;
}

- (void)_queue_start
{
  v22.receiver = self;
  v22.super_class = HDMedicationScheduleQueryServer;
  [(HDQueryServer *)&v22 _queue_start];
  v3 = [(HDQueryServer *)self queryUUID];
  v4 = [(HDQueryServer *)self clientProxy];
  v5 = [v4 remoteObjectProxy];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(HDQueryServer *)self profile];
  v8 = [v7 healthMedicationsProfileExtension];
  v9 = [v8 medicationScheduleManager];

  sortDescriptors = self->_sortDescriptors;
  if (sortDescriptors)
  {
    v21 = 0;
    v11 = [v9 orderingTermsForSortDescriptors:sortDescriptors error:&v21];
    v12 = v21;
    v13 = v12;
    if (!v11)
    {
      [v5 client_deliverError:v12 forQuery:v3];
      v17 = 0;
      goto LABEL_10;
    }

    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  limit = self->_limit;
  v20 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__HDMedicationScheduleQueryServer__queue_start__block_invoke;
  v18[3] = &unk_2796CD720;
  v15 = v6;
  v19 = v15;
  v16 = [v9 enumerateMedicationSchedulesWithPredicate:0 limit:limit orderingTerms:v13 error:&v20 enumerationHandler:v18];
  v17 = v20;
  if (v16)
  {
    [v5 client_deliverSchedules:v15 queryUUID:v3];
  }

  else
  {
    [v5 client_deliverError:v17 forQuery:v3];
  }

LABEL_10:
}

@end