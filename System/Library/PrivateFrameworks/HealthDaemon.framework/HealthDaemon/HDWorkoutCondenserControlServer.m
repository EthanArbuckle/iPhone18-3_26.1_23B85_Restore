@interface HDWorkoutCondenserControlServer
+ (id)requiredEntitlements;
- (id)_condenserWithError:(void *)a1;
- (void)remote_condensableWorkoutsWithCompletion:(id)a3;
- (void)remote_condenseWorkoutWithUUID:(id)a3 completion:(id)a4;
- (void)remote_condenseWorkoutsForReason:(int64_t)a3 workoutBatchLimit:(int64_t)a4 completion:(id)a5;
- (void)remote_condensedWorkoutsWithCompletion:(id)a3;
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

- (id)_condenserWithError:(void *)a1
{
  if (a1)
  {
    v4 = [a1 profile];
    v5 = [v4 workoutCondenser];

    if (v5)
    {
      v6 = [a1 profile];
      v7 = [v6 workoutCondenser];

      goto LABEL_12;
    }

    v8 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (v8)
    {
      if (a2)
      {
        v9 = v8;
        *a2 = v8;
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

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)remote_condenseWorkoutsForReason:(int64_t)a3 workoutBatchLimit:(int64_t)a4 completion:(id)a5
{
  v11 = 0;
  v8 = a5;
  v9 = [(HDWorkoutCondenserControlServer *)self _condenserWithError:?];
  v10 = v11;
  if (v9)
  {
    [v9 condenseWorkoutsForReason:a3 workoutBatchLimit:a4 completion:v8];
  }

  else
  {
    v8[2](v8, 0, v10);
  }
}

- (void)remote_condenseWorkoutWithUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HDStandardTaskServer *)self profile];
  v19 = 0;
  v10 = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:v7 encodingOptions:0 profile:v9 error:&v19];
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

      v8[2](v8, v15, v16);
      v14 = v16;
    }

    else
    {
      v8[2](v8, 0, v13);
    }
  }

  else
  {
    if (!v11)
    {
      v11 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"No workout found with UUID %@", v7}];
    }

    v8[2](v8, 0, v11);
  }
}

- (void)remote_condensedWorkoutsWithCompletion:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(HDWorkoutCondenserControlServer *)self _condenserWithError:?];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v10 = v6;
    v8 = [v5 condensedWorkoutsWithError:&v10];
    v9 = v10;

    v4[2](v4, v8, v9);
    v7 = v9;
  }

  else
  {
    v4[2](v4, 0, v6);
  }
}

- (void)remote_condensableWorkoutsWithCompletion:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(HDWorkoutCondenserControlServer *)self _condenserWithError:?];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v10 = v6;
    v8 = [v5 condensableWorkoutsWithError:&v10];
    v9 = v10;

    v4[2](v4, v8, v9);
    v7 = v9;
  }

  else
  {
    v4[2](v4, 0, v6);
  }
}

@end