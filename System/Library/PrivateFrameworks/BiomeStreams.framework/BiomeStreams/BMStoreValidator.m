@interface BMStoreValidator
- (BMStoreValidator)initWithIdentifier:(id)a3 storeConfig:(id)a4;
- (int)isChronologicallyValidFromBookmark:(id)a3 shouldContinue:(id)a4;
- (int)isChronologicallyValidFromTimestamp:(double)a3;
- (int)isChronologicallyValidFromTimestamp:(double)a3 shouldContinue:(id)a4;
- (int)isChronologicallyValidWithPublisher:(id)a3 shouldContinue:(id)a4;
@end

@implementation BMStoreValidator

- (BMStoreValidator)initWithIdentifier:(id)a3 storeConfig:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BMStoreValidator;
  v9 = [(BMStoreValidator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = [[BPSBiomeStorePublisher alloc] initWithStreamId:v7 storeConfig:v8];
    publisher = v10->_publisher;
    v10->_publisher = v11;
  }

  return v10;
}

- (int)isChronologicallyValidFromTimestamp:(double)a3
{
  v3 = self;
  v4 = [(BPSBiomeStorePublisher *)self->_publisher withStartTime:a3];
  LODWORD(v3) = [(BMStoreValidator *)v3 isChronologicallyValidWithPublisher:v4 shouldContinue:&__block_literal_global_16];

  return v3;
}

- (int)isChronologicallyValidFromBookmark:(id)a3 shouldContinue:(id)a4
{
  v6 = a4;
  if (a3)
  {
    [(BPSBiomeStorePublisher *)self->_publisher applyBookmark:a3];
    v7 = [(BMStoreValidator *)self isChronologicallyValidWithPublisher:self->_publisher shouldContinue:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMStoreValidator isChronologicallyValidFromBookmark:? shouldContinue:?];
    }

    v7 = 2;
  }

  return v7;
}

- (int)isChronologicallyValidFromTimestamp:(double)a3 shouldContinue:(id)a4
{
  v5 = self;
  publisher = self->_publisher;
  v7 = a4;
  v8 = [(BPSBiomeStorePublisher *)publisher withStartTime:a3];
  LODWORD(v5) = [(BMStoreValidator *)v5 isChronologicallyValidWithPublisher:v8 shouldContinue:v7];

  return v5;
}

- (int)isChronologicallyValidWithPublisher:(id)a3 shouldContinue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__BMStoreValidator_isChronologicallyValidWithPublisher_shouldContinue___block_invoke_4;
    v13[3] = &unk_1E6E54308;
    v15 = v17;
    v16 = &v18;
    v13[4] = self;
    v14 = v7;
    v9 = [v6 sinkWithCompletion:&__block_literal_global_3 shouldContinue:v13];
    v10 = *(v19 + 6);

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMStoreValidator isChronologicallyValidWithPublisher:? shouldContinue:?];
    }

    v10 = 2;
  }

  return v10;
}

void __71__BMStoreValidator_isChronologicallyValidWithPublisher_shouldContinue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__BMStoreValidator_isChronologicallyValidWithPublisher_shouldContinue___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __71__BMStoreValidator_isChronologicallyValidWithPublisher_shouldContinue___block_invoke_4(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 timestamp];
  if (v4 < *(*(a1[6] + 8) + 24))
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1[4] + 8);
      v11 = *(*(a1[6] + 8) + 24);
      v12 = [v3 segmentName];
      [v3 timestamp];
      v14 = v13;
      v15 = *(*(a1[6] + 8) + 24);
      [v3 timestamp];
      v17 = 138413314;
      v18 = v10;
      v19 = 2048;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2048;
      v24 = v14;
      v25 = 2048;
      v26 = v15 - v16;
      _os_log_fault_impl(&dword_1848EE000, v5, OS_LOG_TYPE_FAULT, "found unchronological events for stream - %@, last timestamp:%f, current event segment:%@ timestamp:%f diff:%f", &v17, 0x34u);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  [v3 timestamp];
  *(*(a1[6] + 8) + 24) = v6;
  v7 = (*(a1[5] + 16))();

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end