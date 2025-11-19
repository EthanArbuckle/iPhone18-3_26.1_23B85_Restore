@interface HDQuantitySeriesBuilderTaskServer
- (HDQuantitySeriesBuilderTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (int64_t)state;
- (uint64_t)_queue_insertQuantitySeries:(void *)a3 series:(int)a4 forceInsert:(void *)a5 error:;
- (uint64_t)_queue_isStateInAllowedStates:(void *)a3 description:(uint64_t)a4 error:;
- (void)_queue_discardWithCompletion:(uint64_t)a1;
- (void)_queue_finishSeriesWithMetadata:(void *)a3 endDate:(void *)a4 completion:;
- (void)_queue_insertQuantitySeries:(void *)a3 completion:;
- (void)remote_discardWithCompletion:(id)a3;
- (void)remote_finishSeriesWithMetadata:(id)a3 endDate:(id)a4 finalSeries:(id)a5 completion:(id)a6;
- (void)remote_insertQuantitySeries:(id)a3 completion:(id)a4;
@end

@implementation HDQuantitySeriesBuilderTaskServer

- (HDQuantitySeriesBuilderTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v17.receiver = self;
  v17.super_class = HDQuantitySeriesBuilderTaskServer;
  v12 = [(HDStandardTaskServer *)&v17 initWithUUID:a3 configuration:v11 client:a5 delegate:a6];
  if (v12)
  {
    v13 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v13;

    if (!v11)
    {
      v15 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_configuration, a4);
    v12->_state = 0;
  }

  v15 = v12;
LABEL_6:

  return v15;
}

- (void)remote_insertQuantitySeries:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HDQuantitySeriesBuilderTaskServer_remote_insertQuantitySeries_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_queue_insertQuantitySeries:(void *)a3 completion:
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CB3B88, &unk_283CB3BA0, &unk_283CB3BB8, 0}];
    v35 = 0;
    v8 = [(HDQuantitySeriesBuilderTaskServer *)a1 _queue_isStateInAllowedStates:v7 description:@"insert" error:&v35];
    v9 = v35;
    v10 = v9;
    if (v8)
    {
      if (*(a1 + 56))
      {
        v11 = *(a1 + 48);
        v30 = v9;
        v12 = [(HDQuantitySeriesBuilderTaskServer *)a1 _queue_insertQuantitySeries:v5 series:v11 forceInsert:0 error:&v30];
        v13 = v30;

        v6[2](v6, v12, v13);
        v10 = v13;
      }

      else
      {
        v14 = MEMORY[0x277CCD7E8];
        v15 = [*(a1 + 88) quantityType];
        v16 = [v15 canonicalUnit];
        v17 = [v5 values];
        v18 = [v17 firstObject];
        [v18 value];
        v19 = [v14 quantityWithUnit:v16 doubleValue:?];

        v20 = MEMORY[0x277CCD800];
        v21 = [*(a1 + 88) quantityType];
        v22 = [*(a1 + 88) startDate];
        v23 = [*(a1 + 88) device];
        v24 = [v20 _unfrozenQuantitySampleWithQuantityType:v21 quantity:v19 startDate:v22 device:v23];

        objc_storeStrong((a1 + 48), v24);
        *(a1 + 56) = 1;
        v25 = [a1 delegate];
        v26 = [v25 sampleSavingDelegate];
        v36[0] = v24;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __76__HDQuantitySeriesBuilderTaskServer__queue_insertQuantitySeries_completion___block_invoke;
        v31[3] = &unk_278624278;
        v31[4] = a1;
        v34 = v6;
        v32 = v5;
        v33 = v24;
        v28 = v24;
        [v26 saveSamples:v27 databaseAssertion:0 withCompletion:v31];
      }
    }

    else
    {
      v6[2](v6, 0, v9);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)remote_finishSeriesWithMetadata:(id)a3 endDate:(id)a4 finalSeries:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HDQuantitySeriesBuilderTaskServer_remote_finishSeriesWithMetadata_endDate_finalSeries_completion___block_invoke;
  block[3] = &unk_278621AA0;
  v20 = v12;
  v21 = self;
  v23 = v11;
  v24 = v13;
  v22 = v10;
  v15 = v11;
  v16 = v10;
  v17 = v13;
  v18 = v12;
  dispatch_async(queue, block);
}

void __100__HDQuantitySeriesBuilderTaskServer_remote_finishSeriesWithMetadata_endDate_finalSeries_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__HDQuantitySeriesBuilderTaskServer_remote_finishSeriesWithMetadata_endDate_finalSeries_completion___block_invoke_2;
    v12[3] = &unk_278619540;
    v4 = *(a1 + 64);
    v11 = *(a1 + 40);
    v5 = *(&v11 + 1);
    *&v6 = *(a1 + 56);
    *(&v6 + 1) = v4;
    v13 = v11;
    v14 = v6;
    [(HDQuantitySeriesBuilderTaskServer *)v2 _queue_insertQuantitySeries:v3 completion:v12];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);

    [(HDQuantitySeriesBuilderTaskServer *)v10 _queue_finishSeriesWithMetadata:v7 endDate:v8 completion:v9];
  }
}

void __100__HDQuantitySeriesBuilderTaskServer_remote_finishSeriesWithMetadata_endDate_finalSeries_completion___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v10 = *(a1 + 32);
    v3 = *(v10 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HDQuantitySeriesBuilderTaskServer_remote_finishSeriesWithMetadata_endDate_finalSeries_completion___block_invoke_3;
    block[3] = &unk_278613680;
    v4 = *(&v10 + 1);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v12 = v10;
    v13 = v7;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 56) + 16);

    v9();
  }
}

- (void)_queue_finishSeriesWithMetadata:(void *)a3 endDate:(void *)a4 completion:
{
  v55[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v10 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CB3BA0, &unk_283CB3BB8, &unk_283CB3BD0, 0}];
    v54 = 0;
    v11 = [(HDQuantitySeriesBuilderTaskServer *)a1 _queue_isStateInAllowedStates:v10 description:@"finish" error:&v54];
    v12 = v54;
    v13 = v54;
    v14 = v13;
    v15 = *(a1 + 56);
    if ((v11 & 1) == 0)
    {
      if (!v15)
      {
        *(a1 + 56) = 9;
        objc_storeStrong((a1 + 72), v12);
      }

      v9[2](v9, 0, v14);
      goto LABEL_8;
    }

    *(a1 + 56) = 8;
    if (v15 == 1)
    {
      *(a1 + 56) = 6;
      objc_initWeak(&location, a1);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__HDQuantitySeriesBuilderTaskServer__queue_finishSeriesWithMetadata_endDate_completion___block_invoke;
      aBlock[3] = &unk_2786242A0;
      objc_copyWeak(&v52, &location);
      v7 = v7;
      v49 = v7;
      v50 = v8;
      v51 = v9;
      v16 = _Block_copy(aBlock);
      v17 = *(a1 + 80);
      *(a1 + 80) = v16;

      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);
LABEL_8:

      goto LABEL_9;
    }

    v47 = v13;
    v19 = v7;
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = [a1 client];
    v21 = [v20 configuration];
    v22 = [v21 applicationSDKVersionToken];

    if ((dyld_version_token_at_least() & 1) == 0)
    {
      v29 = [v19 hk_copyWithoutPrivateMetadataKeys];

      v30 = v29;
      v28 = 1;
      goto LABEL_17;
    }

    v23 = [a1 client];
    v24 = [v23 entitlements];
    v25 = v8;
    v26 = [v24 hasPrivateMetadataAccess];

    v27 = v26;
    v8 = v25;
    if (![v19 hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:v27 applicationSDKVersionToken:v22 error:&v47])
    {
      v28 = 0;
    }

    else
    {
LABEL_13:
      v28 = 1;
    }

    v29 = v19;
LABEL_17:

    v7 = v29;
    v31 = v47;

    if (v28)
    {
      v32 = [a1 profile];
      v33 = [v32 dataManager];
      v34 = [v33 quantitySeriesManager];
      v35 = *(a1 + 48);
      v46 = v31;
      v44 = v8;
      v36 = [v34 freezeSeries:v35 metadata:v7 endDate:v8 error:&v46];
      v14 = v46;

      if (v36)
      {
        v37 = v14;
        v38 = [v36 frozenIdentifier];

        if (v38)
        {
          v39 = [v36 frozenIdentifier];
          v40 = [a1 profile];
          v45 = v37;
          v41 = [(HDDataEntity *)HDQuantitySampleSeriesEntity objectWithUUID:v39 encodingOptions:0 profile:v40 error:&v45];
          v14 = v45;

          if (v41)
          {
            v55[0] = v41;
            v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
            (v9)[2](v9, v42, 0);
          }

          else
          {
            v9[2](v9, 0, v14);
          }
        }

        else
        {
          v43 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
          v9[2](v9, 0, v43);

          v14 = v37;
        }
      }

      else
      {
        v9[2](v9, 0, v14);
      }

      v8 = v44;
    }

    else
    {
      v9[2](v9, 0, v31);
      v14 = v31;
    }

    goto LABEL_8;
  }

LABEL_9:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)remote_discardWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HDQuantitySeriesBuilderTaskServer_remote_discardWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_queue_discardWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CB3B88, &unk_283CB3BA0, &unk_283CB3BB8, &unk_283CB3BE8, 0}];
    v22 = 0;
    v5 = [(HDQuantitySeriesBuilderTaskServer *)a1 _queue_isStateInAllowedStates:v4 description:@"discard" error:&v22];
    v6 = v22;
    if (v5)
    {
      v7 = *(a1 + 56);
      *(a1 + 56) = 5;
      if (v7 == 1)
      {
        *(a1 + 56) = 3;
        objc_initWeak(&location, a1);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__HDQuantitySeriesBuilderTaskServer__queue_discardWithCompletion___block_invoke;
        aBlock[3] = &unk_27861B320;
        objc_copyWeak(&v20, &location);
        v19 = v3;
        v8 = _Block_copy(aBlock);
        v9 = *(a1 + 80);
        *(a1 + 80) = v8;

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }

      else if (v7)
      {
        v10 = *(a1 + 48);
        *(a1 + 48) = 0;
        v11 = v10;

        v12 = [a1 profile];
        v13 = [v12 dataManager];
        v14 = [v13 quantitySeriesManager];
        v17 = v6;
        v15 = [v14 discardSeries:v11 error:&v17];
        v16 = v17;

        (*(v3 + 2))(v3, v15, v16);
        v6 = v16;
      }

      else
      {
        (*(v3 + 2))(v3, 1, 0);
      }
    }

    else
    {
      (*(v3 + 2))(v3, 0, v6);
    }
  }
}

- (int64_t)state
{
  dispatch_assert_queue_not_V2(self->_queue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 9;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HDQuantitySeriesBuilderTaskServer_state__block_invoke;
  v6[3] = &unk_278613990;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (uint64_t)_queue_isStateInAllowedStates:(void *)a3 description:(uint64_t)a4 error:
{
  v7 = a2;
  v8 = a3;
  dispatch_assert_queue_V2(*(a1 + 40));
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v10 = [v7 containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v7 hk_map:&__block_literal_global_141];
    v12 = MEMORY[0x277CCACA8];
    v13 = NSStringFromHDQuantitySeriesBuilderTaskServerState(*(a1 + 56));
    v14 = [v12 stringWithFormat:@"Current state %@ is not in allowed state(s) %@ for action %@", v13, v11, v8];

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:v14 underlyingError:*(a1 + 72)];
  }

  return v10;
}

void __76__HDQuantitySeriesBuilderTaskServer__queue_insertQuantitySeries_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _Block_copy(*(*(a1 + 32) + 96));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, *(a1 + 32));
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HDQuantitySeriesBuilderTaskServer__queue_insertQuantitySeries_completion___block_invoke_2;
  v11[3] = &unk_278624250;
  v16 = a2;
  v11[4] = v8;
  v12 = v5;
  v15 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v10 = v5;
  dispatch_async(v9, v11);
}

void __76__HDQuantitySeriesBuilderTaskServer__queue_insertQuantitySeries_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 40));
    v3 = *(v2 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__HDQuantitySeriesBuilderTaskServer__queue_newSeriesSaveCompleted__block_invoke;
    block[3] = &unk_278613968;
    block[4] = v2;
    dispatch_async(v3, block);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 72))
  {
    v5 = *(v4 + 56);
    switch(v5)
    {
      case 1:
        v6 = 2;
        break;
      case 3:
        v6 = 4;
        break;
      case 6:
        v6 = 7;
        break;
      default:
LABEL_14:
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v16 = 0;
        [(HDQuantitySeriesBuilderTaskServer *)v4 _queue_insertQuantitySeries:v13 series:v14 forceInsert:1 error:&v16];
        v15 = v16;
        (*(*(a1 + 64) + 16))();

        return;
    }

    *(v4 + 56) = v6;
    v4 = *(a1 + 32);
    goto LABEL_14;
  }

  *(v4 + 56) = 9;
  v7 = [*(a1 + 40) copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 72);
  *(v8 + 72) = v7;

  v10 = *(a1 + 72);
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 64) + 16);

  v12();
}

- (uint64_t)_queue_insertQuantitySeries:(void *)a3 series:(int)a4 forceInsert:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    v20 = 0;
    goto LABEL_20;
  }

  dispatch_assert_queue_V2(*(a1 + 40));
  v11 = *(a1 + 56);
  if (v11 != 2)
  {
    if (v11 == 1)
    {
      v12 = *(a1 + 64);
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v14 = *(a1 + 64);
        *(a1 + 64) = v13;

        v12 = *(a1 + 64);
      }

      v15 = [v9 values];
      [v12 addObjectsFromArray:v15];

      goto LABEL_11;
    }

    if (!a4)
    {
LABEL_11:
      v20 = 1;
      goto LABEL_20;
    }
  }

  v16 = *(a1 + 64);
  if (v16 && ([v9 values], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "addObjectsFromArray:", v17), v17, (v18 = *(a1 + 64)) != 0))
  {
    v19 = v18;
  }

  else
  {
    v19 = [v9 values];
  }

  v21 = v19;
  v22 = *(a1 + 64);
  *(a1 + 64) = 0;

  v23 = [a1 profile];
  v24 = [v23 dataManager];
  v25 = [v24 quantitySeriesManager];
  v32 = 0;
  v20 = [v25 insertValues:v21 series:v10 error:&v32];
  v26 = v32;

  if ((v20 & 1) == 0)
  {
    *(a1 + 56) = 9;
    v27 = [v26 copy];
    v28 = *(a1 + 72);
    *(a1 + 72) = v27;

    v29 = v26;
    if (v29)
    {
      if (a5)
      {
        v30 = v29;
        *a5 = v29;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

LABEL_20:
  return v20;
}

void __66__HDQuantitySeriesBuilderTaskServer__queue_newSeriesSaveCompleted__block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 80));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void __88__HDQuantitySeriesBuilderTaskServer__queue_finishSeriesWithMetadata_endDate_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [(HDQuantitySeriesBuilderTaskServer *)WeakRetained _queue_finishSeriesWithMetadata:*(a1 + 40) endDate:*(a1 + 48) completion:?];
}

void __66__HDQuantitySeriesBuilderTaskServer__queue_discardWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(HDQuantitySeriesBuilderTaskServer *)WeakRetained _queue_discardWithCompletion:?];
}

__CFString *__85__HDQuantitySeriesBuilderTaskServer__queue_isStateInAllowedStates_description_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return NSStringFromHDQuantitySeriesBuilderTaskServerState(v2);
}

@end