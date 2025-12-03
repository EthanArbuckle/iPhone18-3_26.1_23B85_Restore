@interface HDWorkoutControlServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (void)remote_finishAllWorkoutsWithCompletion:(id)completion;
- (void)remote_generateFakeDataForActivityType:(int64_t)type minutes:(double)minutes completion:(id)completion;
@end

@implementation HDWorkoutControlServer

- (void)remote_finishAllWorkoutsWithCompletion:(id)completion
{
  workoutManager = self->_workoutManager;
  completionCopy = completion;
  client = [(HDStandardTaskServer *)self client];
  v9 = 0;
  v7 = [(HDWorkoutManager *)workoutManager finishAllWorkoutsForClient:client error:&v9];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_generateFakeDataForActivityType:(int64_t)type minutes:(double)minutes completion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  dataCollectionManager = [profile dataCollectionManager];

  if (dataCollectionManager)
  {
    [dataCollectionManager generateFakeDataForActivityType:type minutes:completionCopy completion:minutes];
  }

  else
  {
    hk_featureUnavailableForProfileError = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    completionCopy[2](completionCopy, 0, hk_featureUnavailableForProfileError);
  }
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  workoutManager = [profile workoutManager];

  if (workoutManager)
  {
    v17 = [(HDStandardTaskServer *)[HDWorkoutControlServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
    v18 = workoutManager;
    workoutManager = v17->_workoutManager;
    v17->_workoutManager = v18;
  }

  else
  {
    workoutManager = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (workoutManager)
    {
      if (error)
      {
        v20 = workoutManager;
        *error = workoutManager;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end