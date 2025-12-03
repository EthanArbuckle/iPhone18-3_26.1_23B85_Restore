@interface HDMedicationScheduleQueryServer
- (HDMedicationScheduleQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDMedicationScheduleQueryServer

- (HDMedicationScheduleQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDMedicationScheduleQueryServer;
  v11 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v11->_limit = [configurationCopy limit];
    sortDescriptors = [configurationCopy sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = sortDescriptors;
  }

  return v11;
}

- (void)_queue_start
{
  v22.receiver = self;
  v22.super_class = HDMedicationScheduleQueryServer;
  [(HDQueryServer *)&v22 _queue_start];
  queryUUID = [(HDQueryServer *)self queryUUID];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  profile = [(HDQueryServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  sortDescriptors = self->_sortDescriptors;
  if (sortDescriptors)
  {
    v21 = 0;
    v11 = [medicationScheduleManager orderingTermsForSortDescriptors:sortDescriptors error:&v21];
    v12 = v21;
    v13 = v12;
    if (!v11)
    {
      [remoteObjectProxy client_deliverError:v12 forQuery:queryUUID];
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
  v16 = [medicationScheduleManager enumerateMedicationSchedulesWithPredicate:0 limit:limit orderingTerms:v13 error:&v20 enumerationHandler:v18];
  v17 = v20;
  if (v16)
  {
    [remoteObjectProxy client_deliverSchedules:v15 queryUUID:queryUUID];
  }

  else
  {
    [remoteObjectProxy client_deliverError:v17 forQuery:queryUUID];
  }

LABEL_10:
}

@end