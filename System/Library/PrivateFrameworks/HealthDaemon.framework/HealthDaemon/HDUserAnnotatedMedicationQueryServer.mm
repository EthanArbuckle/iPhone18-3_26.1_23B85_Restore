@interface HDUserAnnotatedMedicationQueryServer
- (HDUserAnnotatedMedicationQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDUserAnnotatedMedicationQueryServer

- (HDUserAnnotatedMedicationQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v13.receiver = self;
  v13.super_class = HDUserAnnotatedMedicationQueryServer;
  v11 = [(HDQueryServer *)&v13 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v11->_limit = [v10 limit];
  }

  return v11;
}

- (void)_queue_start
{
  v31.receiver = self;
  v31.super_class = HDUserAnnotatedMedicationQueryServer;
  [(HDQueryServer *)&v31 _queue_start];
  v25 = [(HDQueryServer *)self queryUUID];
  v24 = [(HDQueryServer *)self clientProxy];
  v3 = [(HDQueryServer *)self profile];
  v4 = [(HDQueryServer *)self filter];
  v5 = [v4 predicateWithProfile:v3];

  v6 = *MEMORY[0x277D10C08];
  v30 = 0;
  v27 = v5;
  v28 = v3;
  v7 = [HDUserDomainConceptAPIObjectManager allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile:v3 predicate:v5 limit:v6 error:&v30];
  v8 = v30;
  v23 = [(HDQueryServer *)self profile];
  v9 = [v23 authorizationManager];
  v10 = [(HDQueryServer *)self client];
  v11 = [v10 process];
  v12 = [v11 bundleIdentifier];
  v13 = [(HDQueryServer *)self client];
  v14 = [v13 entitlements];
  v29 = v8;
  v26 = v7;
  v15 = [v9 filterForClientUserAnnotatedMedications:v7 bundleIdentifier:v12 clientEntitlements:v14 error:&v29];
  v16 = v29;

  if (v15)
  {
    v17 = v24;
    limit = self->_limit;

    if (limit)
    {
      v19 = [v15 count];
      if (limit >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = limit;
      }

      v21 = [v15 subarrayWithRange:{0, v20}];

      v15 = v21;
    }

    v22 = v25;
    [v24 client_deliverUserAnnotatedMedications:v15 queryUUID:v25];
    v16 = v15;
  }

  else
  {
    v17 = v24;
    v22 = v25;
    [v24 client_deliverError:v16 forQuery:v25];
  }
}

@end