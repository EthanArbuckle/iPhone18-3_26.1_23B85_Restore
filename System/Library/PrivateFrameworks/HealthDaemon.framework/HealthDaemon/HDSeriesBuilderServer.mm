@interface HDSeriesBuilderServer
- (BOOL)canAddMetadata:(id)a3 errorOut:(id *)a4;
- (BOOL)queue_canInsertDataWithError:(id *)a3;
- (HDSeriesBuilderEntity)persistentEntity;
- (HDSeriesBuilderServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (NSString)description;
- (void)_discardSeriesWithCompletion:(uint64_t)a1;
- (void)_setClientState:(void *)a3 completion:;
- (void)associateToWorkoutBuilderWithCompletion:(id)a3;
- (void)connectionInvalidated;
- (void)createSeriesSampleIfNeeded:(id)a3 errorHandler:(id)a4;
- (void)queue_freezeBuilderWithCompletion:(id)a3;
- (void)queue_recoverBuilder;
- (void)queue_setState:(int64_t)a3 completion:(id)a4;
- (void)remote_addMetadata:(id)a3 completion:(id)a4;
- (void)remote_discardWithCompletion:(id)a3;
- (void)remote_freezeWithCompletion:(id)a3;
- (void)remote_recoverWithCompletion:(id)a3;
@end

@implementation HDSeriesBuilderServer

- (HDSeriesBuilderServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v20.receiver = self;
  v20.super_class = HDSeriesBuilderServer;
  v11 = [(HDStandardTaskServer *)&v20 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [v10 copy];
    configuration = v11->_configuration;
    v11->_configuration = v14;

    v11->_queue_state = 0;
    v16 = v11->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HDSeriesBuilderServer_initWithUUID_configuration_client_delegate___block_invoke;
    block[3] = &unk_278613968;
    v19 = v11;
    dispatch_async(v16, block);
  }

  return v11;
}

void __68__HDSeriesBuilderServer_initWithUUID_configuration_client_delegate___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 48));
    v2 = [v1 taskUUID];
    v3 = [v1 profile];
    v18 = 0;
    v4 = [HDSeriesBuilderEntity persistentEntityForBuilderIdentifier:v2 profile:v3 error:&v18];
    v5 = v18;
    v6 = *(v1 + 72);
    *(v1 + 72) = v4;

    if (v5)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
LABEL_4:

        goto LABEL_7;
      }

      *buf = 138543362;
      v20 = v5;
      v16 = "Couldn't recover series builder with error %{public}@";
    }

    else
    {
      if (*(v1 + 72))
      {
        [v1 queue_recoverBuilder];
        goto LABEL_7;
      }

      v9 = [v1 taskUUID];
      v10 = [v1 seriesSample];
      v11 = [v10 sampleType];
      v12 = *(v1 + 56);
      v13 = [v1 profile];
      v17 = 0;
      v14 = [HDSeriesBuilderEntity createPersistentEntityForBuilderIdentifier:v9 seriesType:v11 state:v12 profile:v13 error:&v17];
      v5 = v17;
      v15 = *(v1 + 72);
      *(v1 + 72) = v14;

      if (!v5)
      {
        goto LABEL_7;
      }

      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      *buf = 138543362;
      v20 = v5;
      v16 = "Couldn't create persistent entity for series builder with error %{public}@";
    }

    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    goto LABEL_4;
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDStandardTaskServer *)self taskUUID];
  queue_state = self->_queue_state;
  v7 = HKSeriesBuilderStateToString();
  v8 = [v3 stringWithFormat:@"<%@:%p %@ %@>", v4, self, v5, v7];

  return v8;
}

- (void)associateToWorkoutBuilderWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSeriesBuilderConfiguration *)self->_configuration workoutBuilderID];

  if (v5)
  {
    v6 = [(HDSeriesBuilderServer *)self seriesSample];
    v7 = [(HKSeriesBuilderConfiguration *)self->_configuration workoutBuilderID];
    v8 = [(HDStandardTaskServer *)self profile];
    v11 = 0;
    v9 = [HDWorkoutBuilderAssociatedSeriesEntity associateSeries:v6 toWorkoutBuilderID:v7 profile:v8 error:&v11];
    v10 = v11;

    if ((v9 - 1) >= 2)
    {
      if (!v9)
      {
        v4[2](v4, 0, v10);
      }
    }

    else
    {
      v4[2](v4, 1, 0);
    }
  }

  else
  {
    v4[2](v4, 1, 0);
  }
}

- (void)createSeriesSampleIfNeeded:(id)a3 errorHandler:(id)a4
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)canAddMetadata:(id)a3 errorOut:(id *)a4
{
  v6 = a3;
  if (!v6 || (-[HDStandardTaskServer client](self, "client"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 hd_validateMetadataKeysAndValuesWithClient:v7 error:a4], v7, v8))
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)queue_canInsertDataWithError:(id *)a3
{
  dispatch_assert_queue_V2(self->_queue);
  queue_state = self->_queue_state;
  if (queue_state < 2)
  {
    return 1;
  }

  if (queue_state - 2 > 1)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Unknown state %ld", self->_queue_state}];
  }

  else
  {
    if (queue_state == 2)
    {
      v6 = @"completed";
    }

    else
    {
      v6 = @"discarded";
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Workout route is already %@.", v6}];
  }

  return 0;
}

- (void)remote_addMetadata:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDSeriesBuilderServer_remote_addMetadata_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

void __55__HDSeriesBuilderServer_remote_addMetadata_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    dispatch_assert_queue_V2(v1[6]);
    v10 = 0;
    v5 = [(dispatch_queue_t *)v1 queue_canInsertDataWithError:&v10];
    v6 = v10;
    if (v5)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __55__HDSeriesBuilderServer__queue_addMetadata_completion___block_invoke;
      v7[3] = &unk_278614160;
      v7[4] = v1;
      v8 = v3;
      v9 = v4;
      [(dispatch_queue_t *)v1 createSeriesSampleIfNeeded:v7 errorHandler:v9];
    }

    else
    {
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

- (void)remote_discardWithCompletion:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HDSeriesBuilderServer_remote_discardWithCompletion___block_invoke;
  block[3] = &unk_278620058;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_sync(queue, block);
}

void __54__HDSeriesBuilderServer_remote_discardWithCompletion___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[7] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:@"Cannot discard a finished or discarded series"];
    v5 = *(v3 + 16);
    v6 = v3;
LABEL_8:
    v18 = v4;
    v5(v6, 0);
    v17 = *MEMORY[0x277D85DE8];

    return;
  }

  v7 = [v2 seriesSample];

  if (!v7)
  {
    v16 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Unexpected error encoutered while discarding series"];
    v5 = *(v16 + 16);
    v6 = v16;
    goto LABEL_8;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v8)
  {
    dispatch_assert_queue_V2(v8[6]);
    v10 = [(dispatch_queue_t *)v8 delegate];
    v11 = [v10 sampleSavingDelegate];
    v12 = [(dispatch_queue_t *)v8 seriesSample];
    v13 = [v12 sampleType];
    v23[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__HDSeriesBuilderServer__queue_discardIfAuthorizedWithCompletion___block_invoke;
    v21[3] = &unk_2786200A8;
    v21[4] = v8;
    v22 = v9;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__HDSeriesBuilderServer__queue_discardIfAuthorizedWithCompletion___block_invoke_2;
    v19[3] = &unk_2786200D0;
    v20 = v22;
    [v11 performIfAuthorizedToDeleteObjectTypes:v14 usingBlock:v21 errorHandler:v19];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)remote_freezeWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HDSeriesBuilderServer_remote_freezeWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)remote_recoverWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDSeriesBuilderServer_remote_recoverWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __54__HDSeriesBuilderServer_remote_recoverWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[7];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__HDSeriesBuilderServer_remote_recoverWithCompletion___block_invoke_2;
  v3[3] = &unk_278613658;
  v4 = *(a1 + 40);
  [(HDSeriesBuilderServer *)v1 _setClientState:v2 completion:v3];
}

- (void)_setClientState:(void *)a3 completion:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HDSeriesBuilderServer__setClientState_completion___block_invoke;
    aBlock[3] = &unk_278620080;
    aBlock[4] = a1;
    v18 = a2;
    v7 = v5;
    v17 = v7;
    v8 = _Block_copy(aBlock);
    v9 = [a1 client];
    v10 = [v9 connection];
    v11 = [v10 remoteObjectProxyWithErrorHandler:v8];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HDSeriesBuilderServer__setClientState_completion___block_invoke_324;
    v13[3] = &unk_27861B2D0;
    v14 = v7;
    v15 = v8;
    v12 = v8;
    [v11 clientRemote_didChangeToState:a2 completion:v13];
  }
}

void __52__HDSeriesBuilderServer__setClientState_completion___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v7 = a1[4];
    v8 = a1[6];
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of state change to %ld with error: %{public}@", &v9, 0x20u);
  }

  v5 = a1[5];
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __52__HDSeriesBuilderServer__setClientState_completion___block_invoke_324(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

void __55__HDSeriesBuilderServer__queue_addMetadata_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 canAddMetadata:v3 errorOut:&v16];
  v5 = v16;
  if (v4)
  {
    v6 = [*(a1 + 32) profile];
    v7 = [v6 database];
    v15 = v5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__HDSeriesBuilderServer__queue_addMetadata_completion___block_invoke_2;
    v13[3] = &unk_278613218;
    v8 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v8;
    v9 = [(HDHealthEntity *)HDSeriesBuilderEntity performWriteTransactionWithHealthDatabase:v7 error:&v15 block:v13];
    v10 = v15;

    (*(*(a1 + 48) + 16))(*(a1 + 48), v9, v10, v11, v12);
    v5 = v10;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __55__HDSeriesBuilderServer__queue_addMetadata_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 persistentEntity];
  v8 = [v7 insertMetadata:*(a1 + 40) transaction:v6 error:a3];

  return v8;
}

- (void)queue_freezeBuilderWithCompletion:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = 0;
  queue_state = self->_queue_state;
  if (queue_state > 1)
  {
    if (queue_state == 3)
    {
      v8 = @"Workout route was discarded.";
    }

    else
    {
      if (queue_state != 2)
      {
        goto LABEL_11;
      }

      v8 = @"Workout route already finished.";
    }

LABEL_10:
    v6 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:v8];
    goto LABEL_11;
  }

  if (!queue_state)
  {
    v8 = @"No data was added to the workout route.";
    goto LABEL_10;
  }

  if (queue_state != 1)
  {
LABEL_11:
    v5[2](v5, 0, v6);
    goto LABEL_12;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HDSeriesBuilderServer_queue_freezeBuilderWithCompletion___block_invoke;
  v9[3] = &unk_278613658;
  v10 = v5;
  [(HDSeriesBuilderServer *)self queue_setState:2 completion:v9];
  v6 = v10;
LABEL_12:
}

- (void)queue_recoverBuilder
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(HDStandardTaskServer *)self profile];
  v4 = [v3 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HDSeriesBuilderServer_queue_recoverBuilder__block_invoke;
  v8[3] = &unk_278619398;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [(HDHealthEntity *)HDSeriesBuilderEntity performReadTransactionWithHealthDatabase:v4 error:&v9 block:v8];
  v5 = v9;

  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Couldn't recover state for series builder with error %{public}@", buf, 0xCu);
    }
  }

  [(HDSeriesBuilderServer *)self queue_setState:v11[3] completion:0];
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)queue_setState:(int64_t)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  self->_queue_state = a3;
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 database];
  v13[5] = a3;
  v14 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__HDSeriesBuilderServer_queue_setState_completion___block_invoke;
  v13[3] = &unk_278619348;
  v13[4] = self;
  v9 = [(HDHealthEntity *)HDSeriesBuilderEntity performWriteTransactionWithHealthDatabase:v8 error:&v14 block:v13];
  v10 = v14;

  if (!v9)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist state change with error: %{public}@", buf, 0x16u);
    }
  }

  [(HDSeriesBuilderServer *)self _setClientState:a3 completion:v6];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HDSeriesBuilderServer_queue_setState_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 persistentEntity];
  v8 = [v7 setBuilderState:*(a1 + 40) transaction:v6 error:a3];

  return v8;
}

- (HDSeriesBuilderEntity)persistentEntity
{
  v18 = *MEMORY[0x277D85DE8];
  persistentEntity = self->_persistentEntity;
  if (persistentEntity)
  {
    v3 = persistentEntity;
  }

  else
  {
    v5 = [(HDStandardTaskServer *)self taskUUID];
    v6 = [(HDStandardTaskServer *)self profile];
    v13 = 0;
    v7 = [HDSeriesBuilderEntity persistentEntityForBuilderIdentifier:v5 profile:v6 error:&v13];
    v8 = v13;
    v9 = self->_persistentEntity;
    self->_persistentEntity = v7;

    if (v8)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = self;
        v16 = 2114;
        v17 = v8;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch series builer persistent entity: %{public}@", buf, 0x16u);
      }
    }

    v3 = self->_persistentEntity;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_discardSeriesWithCompletion:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__HDSeriesBuilderServer__discardSeriesWithCompletion___block_invoke;
    v6[3] = &unk_278614E28;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __54__HDSeriesBuilderServer__discardSeriesWithCompletion___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    dispatch_assert_queue_V2(v1[6]);
    v3 = [(dispatch_queue_t *)v1 profile];
    v4 = [v3 dataManager];
    v5 = [(dispatch_queue_t *)v1 seriesSample];
    v16[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v15 = 0;
    v7 = [v4 deleteDataObjects:v6 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:&v15];
    v8 = v15;

    v9 = [v8 hk_isErrorInDomain:*MEMORY[0x277D10A78] code:1];
    if ((v7 & 1) != 0 || v9)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __60__HDSeriesBuilderServer__queue_discardSeriesWithCompletion___block_invoke;
      v11[3] = &unk_278616460;
      v13 = v2;
      v14 = v7;
      v12 = v8;
      [(dispatch_queue_t *)v1 queue_setState:3 completion:v11];
    }

    else
    {
      (*(v2 + 2))(v2, 0, v8);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)connectionInvalidated
{
  v3 = [(HKSeriesBuilderConfiguration *)self->_configuration workoutBuilderID];

  if (!v3)
  {

    [(HDSeriesBuilderServer *)self _discardSeriesWithCompletion:?];
  }
}

void __46__HDSeriesBuilderServer_connectionInvalidated__block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Couldn't discard invalidated series with error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end