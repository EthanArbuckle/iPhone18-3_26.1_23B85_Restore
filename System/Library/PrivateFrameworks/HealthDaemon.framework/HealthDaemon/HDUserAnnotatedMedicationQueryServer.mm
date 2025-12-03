@interface HDUserAnnotatedMedicationQueryServer
- (HDUserAnnotatedMedicationQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDUserAnnotatedMedicationQueryServer

- (HDUserAnnotatedMedicationQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = HDUserAnnotatedMedicationQueryServer;
  v11 = [(HDQueryServer *)&v13 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v11->_limit = [configurationCopy limit];
  }

  return v11;
}

- (void)_queue_start
{
  v31.receiver = self;
  v31.super_class = HDUserAnnotatedMedicationQueryServer;
  [(HDQueryServer *)&v31 _queue_start];
  queryUUID = [(HDQueryServer *)self queryUUID];
  clientProxy = [(HDQueryServer *)self clientProxy];
  profile = [(HDQueryServer *)self profile];
  filter = [(HDQueryServer *)self filter];
  v5 = [filter predicateWithProfile:profile];

  v6 = *MEMORY[0x277D10C08];
  v30 = 0;
  v27 = v5;
  v28 = profile;
  v7 = [HDUserDomainConceptAPIObjectManager allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile:profile predicate:v5 limit:v6 error:&v30];
  v8 = v30;
  profile2 = [(HDQueryServer *)self profile];
  authorizationManager = [profile2 authorizationManager];
  client = [(HDQueryServer *)self client];
  process = [client process];
  bundleIdentifier = [process bundleIdentifier];
  client2 = [(HDQueryServer *)self client];
  entitlements = [client2 entitlements];
  v29 = v8;
  v26 = v7;
  v15 = [authorizationManager filterForClientUserAnnotatedMedications:v7 bundleIdentifier:bundleIdentifier clientEntitlements:entitlements error:&v29];
  v16 = v29;

  if (v15)
  {
    v17 = clientProxy;
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

    v22 = queryUUID;
    [clientProxy client_deliverUserAnnotatedMedications:v15 queryUUID:queryUUID];
    v16 = v15;
  }

  else
  {
    v17 = clientProxy;
    v22 = queryUUID;
    [clientProxy client_deliverError:v16 forQuery:queryUUID];
  }
}

@end