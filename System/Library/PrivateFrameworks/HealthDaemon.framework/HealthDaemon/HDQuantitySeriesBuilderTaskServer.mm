@interface HDQuantitySeriesBuilderTaskServer
- (HDQuantitySeriesBuilderTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (int64_t)state;
- (uint64_t)_queue_insertQuantitySeries:(void *)series series:(int)a4 forceInsert:(void *)insert error:;
- (uint64_t)_queue_isStateInAllowedStates:(void *)states description:(uint64_t)description error:;
- (void)_queue_discardWithCompletion:(uint64_t)completion;
- (void)_queue_finishSeriesWithMetadata:(void *)metadata endDate:(void *)date completion:;
- (void)_queue_insertQuantitySeries:(void *)series completion:;
- (void)remote_discardWithCompletion:(id)completion;
- (void)remote_finishSeriesWithMetadata:(id)metadata endDate:(id)date finalSeries:(id)series completion:(id)completion;
- (void)remote_insertQuantitySeries:(id)series completion:(id)completion;
@end

@implementation HDQuantitySeriesBuilderTaskServer

- (HDQuantitySeriesBuilderTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = HDQuantitySeriesBuilderTaskServer;
  v12 = [(HDStandardTaskServer *)&v17 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v12)
  {
    v13 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v13;

    if (!configurationCopy)
    {
      v15 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_configuration, configuration);
    v12->_state = 0;
  }

  v15 = v12;
LABEL_6:

  return v15;
}

- (void)remote_insertQuantitySeries:(id)series completion:(id)completion
{
  seriesCopy = series;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HDQuantitySeriesBuilderTaskServer_remote_insertQuantitySeries_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = seriesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = seriesCopy;
  dispatch_async(queue, block);
}

- (void)_queue_insertQuantitySeries:(void *)series completion:
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  seriesCopy = series;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CB3B88, &unk_283CB3BA0, &unk_283CB3BB8, 0}];
    v35 = 0;
    v8 = [(HDQuantitySeriesBuilderTaskServer *)self _queue_isStateInAllowedStates:v7 description:@"insert" error:&v35];
    v9 = v35;
    v10 = v9;
    if (v8)
    {
      if (*(self + 56))
      {
        v11 = *(self + 48);
        v30 = v9;
        v12 = [(HDQuantitySeriesBuilderTaskServer *)self _queue_insertQuantitySeries:v5 series:v11 forceInsert:0 error:&v30];
        v13 = v30;

        seriesCopy[2](seriesCopy, v12, v13);
        v10 = v13;
      }

      else
      {
        v14 = MEMORY[0x277CCD7E8];
        quantityType = [*(self + 88) quantityType];
        canonicalUnit = [quantityType canonicalUnit];
        values = [v5 values];
        firstObject = [values firstObject];
        [firstObject value];
        v19 = [v14 quantityWithUnit:canonicalUnit doubleValue:?];

        v20 = MEMORY[0x277CCD800];
        quantityType2 = [*(self + 88) quantityType];
        startDate = [*(self + 88) startDate];
        device = [*(self + 88) device];
        v24 = [v20 _unfrozenQuantitySampleWithQuantityType:quantityType2 quantity:v19 startDate:startDate device:device];

        objc_storeStrong((self + 48), v24);
        *(self + 56) = 1;
        delegate = [self delegate];
        sampleSavingDelegate = [delegate sampleSavingDelegate];
        v36[0] = v24;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __76__HDQuantitySeriesBuilderTaskServer__queue_insertQuantitySeries_completion___block_invoke;
        v31[3] = &unk_278624278;
        v31[4] = self;
        v34 = seriesCopy;
        v32 = v5;
        v33 = v24;
        v28 = v24;
        [sampleSavingDelegate saveSamples:v27 databaseAssertion:0 withCompletion:v31];
      }
    }

    else
    {
      seriesCopy[2](seriesCopy, 0, v9);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)remote_finishSeriesWithMetadata:(id)metadata endDate:(id)date finalSeries:(id)series completion:(id)completion
{
  metadataCopy = metadata;
  dateCopy = date;
  seriesCopy = series;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HDQuantitySeriesBuilderTaskServer_remote_finishSeriesWithMetadata_endDate_finalSeries_completion___block_invoke;
  block[3] = &unk_278621AA0;
  v20 = seriesCopy;
  selfCopy = self;
  v23 = dateCopy;
  v24 = completionCopy;
  v22 = metadataCopy;
  v15 = dateCopy;
  v16 = metadataCopy;
  v17 = completionCopy;
  v18 = seriesCopy;
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

- (void)_queue_finishSeriesWithMetadata:(void *)metadata endDate:(void *)date completion:
{
  v55[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  metadataCopy = metadata;
  dateCopy = date;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    v10 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CB3BA0, &unk_283CB3BB8, &unk_283CB3BD0, 0}];
    v54 = 0;
    v11 = [(HDQuantitySeriesBuilderTaskServer *)self _queue_isStateInAllowedStates:v10 description:@"finish" error:&v54];
    v12 = v54;
    v13 = v54;
    v14 = v13;
    v15 = *(self + 56);
    if ((v11 & 1) == 0)
    {
      if (!v15)
      {
        *(self + 56) = 9;
        objc_storeStrong((self + 72), v12);
      }

      dateCopy[2](dateCopy, 0, v14);
      goto LABEL_8;
    }

    *(self + 56) = 8;
    if (v15 == 1)
    {
      *(self + 56) = 6;
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__HDQuantitySeriesBuilderTaskServer__queue_finishSeriesWithMetadata_endDate_completion___block_invoke;
      aBlock[3] = &unk_2786242A0;
      objc_copyWeak(&v52, &location);
      v7 = v7;
      v49 = v7;
      v50 = metadataCopy;
      v51 = dateCopy;
      v16 = _Block_copy(aBlock);
      v17 = *(self + 80);
      *(self + 80) = v16;

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

    client = [self client];
    configuration = [client configuration];
    applicationSDKVersionToken = [configuration applicationSDKVersionToken];

    if ((dyld_version_token_at_least() & 1) == 0)
    {
      hk_copyWithoutPrivateMetadataKeys = [v19 hk_copyWithoutPrivateMetadataKeys];

      v30 = hk_copyWithoutPrivateMetadataKeys;
      v28 = 1;
      goto LABEL_17;
    }

    client2 = [self client];
    entitlements = [client2 entitlements];
    v25 = metadataCopy;
    hasPrivateMetadataAccess = [entitlements hasPrivateMetadataAccess];

    v27 = hasPrivateMetadataAccess;
    metadataCopy = v25;
    if (![v19 hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:v27 applicationSDKVersionToken:applicationSDKVersionToken error:&v47])
    {
      v28 = 0;
    }

    else
    {
LABEL_13:
      v28 = 1;
    }

    hk_copyWithoutPrivateMetadataKeys = v19;
LABEL_17:

    v7 = hk_copyWithoutPrivateMetadataKeys;
    v31 = v47;

    if (v28)
    {
      profile = [self profile];
      dataManager = [profile dataManager];
      quantitySeriesManager = [dataManager quantitySeriesManager];
      v35 = *(self + 48);
      v46 = v31;
      v44 = metadataCopy;
      v36 = [quantitySeriesManager freezeSeries:v35 metadata:v7 endDate:metadataCopy error:&v46];
      v14 = v46;

      if (v36)
      {
        v37 = v14;
        frozenIdentifier = [v36 frozenIdentifier];

        if (frozenIdentifier)
        {
          frozenIdentifier2 = [v36 frozenIdentifier];
          profile2 = [self profile];
          v45 = v37;
          v41 = [(HDDataEntity *)HDQuantitySampleSeriesEntity objectWithUUID:frozenIdentifier2 encodingOptions:0 profile:profile2 error:&v45];
          v14 = v45;

          if (v41)
          {
            v55[0] = v41;
            v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
            (dateCopy)[2](dateCopy, v42, 0);
          }

          else
          {
            dateCopy[2](dateCopy, 0, v14);
          }
        }

        else
        {
          hk_protectedDataInaccessibilityError = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
          dateCopy[2](dateCopy, 0, hk_protectedDataInaccessibilityError);

          v14 = v37;
        }
      }

      else
      {
        dateCopy[2](dateCopy, 0, v14);
      }

      metadataCopy = v44;
    }

    else
    {
      dateCopy[2](dateCopy, 0, v31);
      v14 = v31;
    }

    goto LABEL_8;
  }

LABEL_9:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)remote_discardWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HDQuantitySeriesBuilderTaskServer_remote_discardWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_discardWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    dispatch_assert_queue_V2(*(completion + 40));
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CB3B88, &unk_283CB3BA0, &unk_283CB3BB8, &unk_283CB3BE8, 0}];
    v22 = 0;
    v5 = [(HDQuantitySeriesBuilderTaskServer *)completion _queue_isStateInAllowedStates:v4 description:@"discard" error:&v22];
    v6 = v22;
    if (v5)
    {
      v7 = *(completion + 56);
      *(completion + 56) = 5;
      if (v7 == 1)
      {
        *(completion + 56) = 3;
        objc_initWeak(&location, completion);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__HDQuantitySeriesBuilderTaskServer__queue_discardWithCompletion___block_invoke;
        aBlock[3] = &unk_27861B320;
        objc_copyWeak(&v20, &location);
        v19 = v3;
        v8 = _Block_copy(aBlock);
        v9 = *(completion + 80);
        *(completion + 80) = v8;

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }

      else if (v7)
      {
        v10 = *(completion + 48);
        *(completion + 48) = 0;
        v11 = v10;

        profile = [completion profile];
        dataManager = [profile dataManager];
        quantitySeriesManager = [dataManager quantitySeriesManager];
        v17 = v6;
        v15 = [quantitySeriesManager discardSeries:v11 error:&v17];
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

- (uint64_t)_queue_isStateInAllowedStates:(void *)states description:(uint64_t)description error:
{
  v7 = a2;
  statesCopy = states;
  dispatch_assert_queue_V2(*(self + 40));
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 56)];
  v10 = [v7 containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v7 hk_map:&__block_literal_global_141];
    v12 = MEMORY[0x277CCACA8];
    v13 = NSStringFromHDQuantitySeriesBuilderTaskServerState(*(self + 56));
    statesCopy = [v12 stringWithFormat:@"Current state %@ is not in allowed state(s) %@ for action %@", v13, v11, statesCopy];

    [MEMORY[0x277CCA9B8] hk_assignError:description code:3 description:statesCopy underlyingError:*(self + 72)];
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

- (uint64_t)_queue_insertQuantitySeries:(void *)series series:(int)a4 forceInsert:(void *)insert error:
{
  v9 = a2;
  seriesCopy = series;
  if (!self)
  {
    v20 = 0;
    goto LABEL_20;
  }

  dispatch_assert_queue_V2(*(self + 40));
  v11 = *(self + 56);
  if (v11 != 2)
  {
    if (v11 == 1)
    {
      v12 = *(self + 64);
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v14 = *(self + 64);
        *(self + 64) = v13;

        v12 = *(self + 64);
      }

      values = [v9 values];
      [v12 addObjectsFromArray:values];

      goto LABEL_11;
    }

    if (!a4)
    {
LABEL_11:
      v20 = 1;
      goto LABEL_20;
    }
  }

  v16 = *(self + 64);
  if (v16 && ([v9 values], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "addObjectsFromArray:", v17), v17, (v18 = *(self + 64)) != 0))
  {
    values2 = v18;
  }

  else
  {
    values2 = [v9 values];
  }

  v21 = values2;
  v22 = *(self + 64);
  *(self + 64) = 0;

  profile = [self profile];
  dataManager = [profile dataManager];
  quantitySeriesManager = [dataManager quantitySeriesManager];
  v32 = 0;
  v20 = [quantitySeriesManager insertValues:v21 series:seriesCopy error:&v32];
  v26 = v32;

  if ((v20 & 1) == 0)
  {
    *(self + 56) = 9;
    v27 = [v26 copy];
    v28 = *(self + 72);
    *(self + 72) = v27;

    v29 = v26;
    if (v29)
    {
      if (insert)
      {
        v30 = v29;
        *insert = v29;
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