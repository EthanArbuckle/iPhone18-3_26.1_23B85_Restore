@interface HDWorkoutCondenserControlServer
+ (id)requiredEntitlements;
- (id)_condenserWithError:(void *)error;
- (void)remote_condensableWorkoutsWithCompletion:(id)completion;
- (void)remote_condenseWorkoutWithUUID:(id)d completion:(id)completion;
- (void)remote_condenseWorkoutsForReason:(int64_t)reason workoutBatchLimit:(int64_t)limit completion:(id)completion;
- (void)remote_condensedWorkoutsWithCompletion:(id)completion;
@end

@implementation HDWorkoutCondenserControlServer

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCBBA0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_condenserWithError:(void *)error
{
  if (error)
  {
    profile = [error profile];
    workoutCondenser = [profile workoutCondenser];

    if (workoutCondenser)
    {
      profile2 = [error profile];
      workoutCondenser2 = [profile2 workoutCondenser];

      goto LABEL_12;
    }

    hk_featureUnavailableForProfileError = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (hk_featureUnavailableForProfileError)
    {
      if (a2)
      {
        v9 = hk_featureUnavailableForProfileError;
        *a2 = hk_featureUnavailableForProfileError;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v10 = HKLogCondenser();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Asked for condenser on profile other than the primary profile", v12, 2u);
    }
  }

  workoutCondenser2 = 0;
LABEL_12:

  return workoutCondenser2;
}

- (void)remote_condenseWorkoutsForReason:(int64_t)reason workoutBatchLimit:(int64_t)limit completion:(id)completion
{
  v11 = 0;
  completionCopy = completion;
  v9 = [(HDWorkoutCondenserControlServer *)self _condenserWithError:?];
  v10 = v11;
  if (v9)
  {
    [v9 condenseWorkoutsForReason:reason workoutBatchLimit:limit completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)remote_condenseWorkoutWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  v19 = 0;
  v10 = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:dCopy encodingOptions:0 profile:profile error:&v19];
  v11 = v19;

  if (v10)
  {
    v18 = 0;
    v12 = [(HDWorkoutCondenserControlServer *)self _condenserWithError:?];
    v13 = v18;
    v14 = v13;
    if (v12)
    {
      v17 = v13;
      v15 = [v12 condenseWorkout:v10 error:&v17];
      v16 = v17;

      completionCopy[2](completionCopy, v15, v16);
      v14 = v16;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v13);
    }
  }

  else
  {
    if (!v11)
    {
      v11 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"No workout found with UUID %@", dCopy}];
    }

    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)remote_condensedWorkoutsWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v5 = [(HDWorkoutCondenserControlServer *)self _condenserWithError:?];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v10 = v6;
    v8 = [v5 condensedWorkoutsWithError:&v10];
    v9 = v10;

    completionCopy[2](completionCopy, v8, v9);
    v7 = v9;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)remote_condensableWorkoutsWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v5 = [(HDWorkoutCondenserControlServer *)self _condenserWithError:?];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v10 = v6;
    v8 = [v5 condensableWorkoutsWithError:&v10];
    v9 = v10;

    completionCopy[2](completionCopy, v8, v9);
    v7 = v9;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

@end