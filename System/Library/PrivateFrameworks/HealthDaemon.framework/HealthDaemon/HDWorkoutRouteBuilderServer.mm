@interface HDWorkoutRouteBuilderServer
- (id)seriesSample;
- (void)_queue_insertRouteData:(void *)a3 completion:;
- (void)createSeriesSampleIfNeeded:(id)a3 errorHandler:(id)a4;
- (void)queue_recoverBuilder;
- (void)remote_finishRouteWithWorkout:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)remote_insertRouteData:(id)a3 completion:(id)a4;
- (void)server_insertRouteData:(id)a3 completion:(id)a4;
@end

@implementation HDWorkoutRouteBuilderServer

- (void)remote_insertRouteData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDSeriesBuilderServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDWorkoutRouteBuilderServer_remote_insertRouteData_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_queue_insertRouteData:(void *)a3 completion:
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v33 = 0;
    v7 = [a1 queue_canInsertDataWithError:&v33];
    v8 = v33;
    if (v7)
    {
      v32 = 0;
      v9 = v5;
      if ([v9 count])
      {
        v25 = v5;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v34 + 1) + 8 * v14);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v17 = MEMORY[0x277CCA9B8];
                v18 = objc_opt_class();
                [v17 hk_assignError:&v32 code:3 format:{@"%@: Invalid data series object %@", v18, objc_opt_class()}];

                v16 = 0;
                goto LABEL_16;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v16 = 1;
LABEL_16:
        v5 = v25;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:&v32 code:3 format:{@"%@: Route data cannot be nil or empty.", objc_opt_class()}];
        v16 = 0;
      }

      v19 = v32;
      if (v16)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke;
        aBlock[3] = &unk_2786212E0;
        aBlock[4] = a1;
        v20 = v9;
        v30 = v20;
        v21 = v6;
        v31 = v21;
        v22 = _Block_copy(aBlock);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_6;
        v26[3] = &unk_278616D18;
        v26[4] = a1;
        v28 = v22;
        v27 = v20;
        v23 = v22;
        [a1 createSeriesSampleIfNeeded:v26 errorHandler:v21];
      }

      else if (v6)
      {
        (*(v6 + 2))(v6, 0, v19);
      }

      v8 = v19;
    }

    else if (v6)
    {
      (*(v6 + 2))(v6, 0, v8);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)remote_finishRouteWithWorkout:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HDSeriesBuilderServer *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__HDWorkoutRouteBuilderServer_remote_finishRouteWithWorkout_metadata_completion___block_invoke;
  v15[3] = &unk_278613680;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __81__HDWorkoutRouteBuilderServer_remote_finishRouteWithWorkout_metadata_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  if (v1)
  {
    v7 = [v1 queue];
    dispatch_assert_queue_V2(v7);

    v8 = [v1 configuration];
    v9 = [v8 workoutBuilderID];

    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_finishRouteWithWorkout_metadata_completion_ format:@"This route builder is attached to a workout builder and will be finished with the workout builder"];
      v6[2](v6, 0, v10);
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke;
      v11[3] = &unk_278621330;
      v14 = v6;
      v11[4] = v1;
      v12 = v5;
      v13 = v4;
      v15 = sel__queue_finishRouteWithWorkout_metadata_completion_;
      [v1 queue_freezeBuilderWithCompletion:v11];
    }
  }
}

- (void)server_insertRouteData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDSeriesBuilderServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDWorkoutRouteBuilderServer_server_insertRouteData_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1[4];
  v7 = a3;
  v8 = [v6 queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v5 count];
  v10 = [v7 count];

  [v5 _setCount:v10 + v9];
  v11 = [a1[4] delegate];
  v12 = [v11 sampleSavingDelegate];
  v13 = [v5 sampleType];
  v24[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_2;
  v19[3] = &unk_278613680;
  v20 = a1[5];
  v21 = v5;
  v22 = a1[4];
  v23 = a1[6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_5;
  v17[3] = &unk_2786200D0;
  v18 = a1[6];
  v15 = v5;
  [v12 performIfAuthorizedToSaveObjectTypes:v14 usingBlock:v19 errorHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = [*(a1 + 48) profile];
  v14 = 0;
  v5 = [HDLocationSeriesSampleEntity insertLocationData:v2 seriesIdentifier:v3 assertion:0 profile:v4 error:&v14];
  v6 = v14;

  v7 = [*(a1 + 48) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_3;
  block[3] = &unk_2786212B8;
  v8 = *(a1 + 56);
  block[4] = *(a1 + 48);
  v13 = v5;
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, block);
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_4;
  v3[3] = &unk_278616460;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  [v2 queue_setState:1 completion:v3];
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3);
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to save series data."];
    (*(v1 + 16))(v1, 0, v4);
  }
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_7;
  block[3] = &unk_278616488;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  block[4] = v4;
  v7 = v5;
  dispatch_async(v2, block);
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) seriesSample];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v27 = v5;
    v8 = [v6 canAddMetadata:v7 errorOut:&v27];
    v9 = v27;

    if (v8)
    {
      v10 = [*(a1 + 32) delegate];
      v11 = [v10 sampleSavingDelegate];
      v12 = [*(a1 + 32) seriesSample];
      v13 = [v12 sampleType];
      v28[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke_2;
      v23[3] = &unk_278621308;
      v20 = *(a1 + 32);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v26 = *(a1 + 64);
      *&v17 = *(a1 + 40);
      *(&v17 + 1) = v16;
      *&v18 = v20;
      *(&v18 + 1) = v15;
      v24 = v18;
      v25 = v17;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke_3;
      v21[3] = &unk_2786200D0;
      v22 = *(a1 + 56);
      [v11 performIfAuthorizedToSaveObjectTypes:v14 usingBlock:v23 errorHandler:v21];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }

    v5 = v9;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke_2(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to finish the series data."];
  v3 = [*(a1 + 32) profile];
  v4 = v3;
  if (!*(a1 + 40) || ([v3 dataManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsDataObject:", *(a1 + 40)), v5, (v6 & 1) != 0))
  {
    v7 = [*(a1 + 32) seriesSample];
    v8 = [v7 UUID];
    v9 = *(a1 + 48);
    v32 = 0;
    v10 = [(HDSeriesBuilderEntity *)HDWorkoutRouteBuilderEntity freezeSeriesWithIdentifier:v8 metadata:v9 profile:v4 error:&v32];
    v11 = v32;

    if (v10)
    {
      v12 = [*(a1 + 32) client];
      v13 = [v12 baseDataEntityEncodingOptions];

      v31 = v11;
      v14 = [(HDDataEntity *)HDLocationSeriesSampleEntity objectWithUUID:v10 encodingOptions:v13 profile:v4 error:&v31];
      v15 = v31;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        if (v14)
        {
          v28 = [v14 UUID];
          v33[0] = v28;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
          v17 = [*(a1 + 40) UUID];
          v30 = 0;
          v18 = [*(a1 + 32) profile];
          v29 = v15;
          v19 = [HDAssociationEntity associateSampleUUIDs:v16 withSampleUUID:v17 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v30 profile:v18 error:&v29];
          v27 = v30;
          v26 = v29;

          if (v19)
          {
            v20 = [MEMORY[0x277CCAB98] defaultCenter];
            [v20 postNotificationName:@"HDHealthStoreServerDidAssociateWorkoutSamples" object:0];
          }

          (*(*(a1 + 56) + 16))();

          v15 = v26;
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      v24 = v15;
    }

    else
    {
      v24 = v2;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v24);
LABEL_16:

    goto LABEL_17;
  }

  v21 = *(a1 + 56);
  v22 = *(a1 + 32);
  v23 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 64) format:@"Workout has not been saved."];
  (*(v21 + 16))(v21, 0, v23);

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

- (id)seriesSample
{
  route = self->_route;
  if (route)
  {
    v3 = route;
  }

  else
  {
    v5 = MEMORY[0x277CCDC70];
    v6 = [(HDSeriesBuilderServer *)self configuration];
    v7 = [v6 device];
    v3 = [v5 _workoutRouteWithDevice:v7 metadata:0];

    v8 = [(HDStandardTaskServer *)self taskUUID];
    [(HKWorkoutRoute *)v3 _setUUID:v8];
  }

  return v3;
}

- (void)createSeriesSampleIfNeeded:(id)a3 errorHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (self->_route)
  {
    v7[2](v7);
  }

  else
  {
    if ([(HDSeriesBuilderServer *)self queue_state])
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"HDWorkoutRouteBuilderServer.m" lineNumber:226 description:@"route missing."];
    }

    v9 = [(HDWorkoutRouteBuilderServer *)self seriesSample];
    route = self->_route;
    self->_route = v9;

    v11 = [(HDStandardTaskServer *)self delegate];
    v12 = [v11 sampleSavingDelegate];
    v13 = [(HDWorkoutRouteBuilderServer *)self seriesSample];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__HDWorkoutRouteBuilderServer_createSeriesSampleIfNeeded_errorHandler___block_invoke;
    v17[3] = &unk_27861FA38;
    v17[4] = self;
    v18 = v8;
    v19 = v7;
    [v12 saveSamples:v14 databaseAssertion:0 withCompletion:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __71__HDWorkoutRouteBuilderServer_createSeriesSampleIfNeeded_errorHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to save series sample."];
  if (a2)
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__HDWorkoutRouteBuilderServer_createSeriesSampleIfNeeded_errorHandler___block_invoke_2;
    v9[3] = &unk_27861B2D0;
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    [v7 associateToWorkoutBuilderWithCompletion:v9];
  }

  else
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v8);
  }
}

void __71__HDWorkoutRouteBuilderServer_createSeriesSampleIfNeeded_errorHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v5 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to associate series to workout builder."];
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = v5;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6);
  }
}

- (void)queue_recoverBuilder
{
  v3 = [(HDWorkoutRouteBuilderServer *)self seriesSample];
  route = self->_route;
  self->_route = v3;

  v5.receiver = self;
  v5.super_class = HDWorkoutRouteBuilderServer;
  [(HDSeriesBuilderServer *)&v5 queue_recoverBuilder];
}

@end