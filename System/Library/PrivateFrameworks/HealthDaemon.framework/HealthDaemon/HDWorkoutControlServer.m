@interface HDWorkoutControlServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (void)remote_finishAllWorkoutsWithCompletion:(id)a3;
- (void)remote_generateFakeDataForActivityType:(int64_t)a3 minutes:(double)a4 completion:(id)a5;
@end

@implementation HDWorkoutControlServer

- (void)remote_finishAllWorkoutsWithCompletion:(id)a3
{
  workoutManager = self->_workoutManager;
  v5 = a3;
  v6 = [(HDStandardTaskServer *)self client];
  v9 = 0;
  v7 = [(HDWorkoutManager *)workoutManager finishAllWorkoutsForClient:v6 error:&v9];
  v8 = v9;

  v5[2](v5, v7, v8);
}

- (void)remote_generateFakeDataForActivityType:(int64_t)a3 minutes:(double)a4 completion:(id)a5
{
  v11 = a5;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 dataCollectionManager];

  if (v9)
  {
    [v9 generateFakeDataForActivityType:a3 minutes:v11 completion:a4];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    v11[2](v11, 0, v10);
  }
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 workoutManager];

  if (v16)
  {
    v17 = [(HDStandardTaskServer *)[HDWorkoutControlServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    v18 = v16;
    workoutManager = v17->_workoutManager;
    v17->_workoutManager = v18;
  }

  else
  {
    workoutManager = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (workoutManager)
    {
      if (a7)
      {
        v20 = workoutManager;
        *a7 = workoutManager;
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