@interface MPCSamplesRecorder
- (MPCSamplesRecorder)initWithRecordID:(id)d modelID:(id)iD firstFailureDetector:(id)detector shouldStoreSamples:(BOOL)samples delegate:(id)delegate;
- (MPCSamplesRecorderDelegate)delegate;
- (id)description;
- (id)dictionaryRepresentation;
- (id)flushSamplesToCSVDataWithHeader:(BOOL)header;
- (void)recordSample:(id)sample;
@end

@implementation MPCSamplesRecorder

- (MPCSamplesRecorderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)flushSamplesToCSVDataWithHeader:(BOOL)header
{
  if ([(MPCSamplesRecorder *)self isStoringSamples])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1539;
    v14 = __Block_byref_object_dispose__1540;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MPCSamplesRecorder_flushSamplesToCSVDataWithHeader___block_invoke;
    block[3] = &unk_1E82318C8;
    headerCopy = header;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(accessQueue, block);
    v6 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __54__MPCSamplesRecorder_flushSamplesToCSVDataWithHeader___block_invoke(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 104), "count")}];
  v3 = v2;
  if (*(v1 + 48) == 1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Number, State, Level, Time [ms], Thermal"];
    [v3 addObject:v4];
  }

  else
  {
    [v2 addObject:&stru_1F454A698];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [*(v1 + 32) samples];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v22 = v1;
    v7 = 0;
    v8 = *v25;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v9);
        v12 = MEMORY[0x1E696AEC0];
        v13 = [v11 number];
        v14 = [v11 state];
        [v11 level];
        v16 = v15;
        [v11 time];
        v7 = [v12 stringWithFormat:@"%d, %ld, %3.2f, %3.2f, %d", v13, v14, v16, v17, objc_msgSend(v11, "thermalLevel")];

        [v3 addObject:v7];
        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);

    v1 = v22;
  }

  v18 = [v3 componentsJoinedByString:@"\n"];
  v19 = [v18 dataUsingEncoding:134217984 allowLossyConversion:1];
  v20 = *(*(v1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  [*(*(v1 + 32) + 104) removeAllObjects];
}

- (id)dictionaryRepresentation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1539;
  v11 = __Block_byref_object_dispose__1540;
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:7];
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MPCSamplesRecorder_dictionaryRepresentation__block_invoke;
  v6[3] = &unk_1E82394D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__MPCSamplesRecorder_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  [*(v2 + 112) samplingTime];
  v5 = v4 * v3 / 1000.0;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:@"duration"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 80)];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v7 forKeyedSubscript:@"max"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 88)];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:@"mean"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:sqrt(*(*(a1 + 32) + 96))];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"sigma"];

  [*(*(*(a1 + 40) + 8) + 40) setObject:*(*(a1 + 32) + 64) forKeyedSubscript:@"MLModel"];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 36)];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKeyedSubscript:@"glitches"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 40)];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v11 forKeyedSubscript:@"thermal"];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 36) * 3600.0 / v5];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v12 forKeyedSubscript:@"FPH"];

  v13 = [*(*(a1 + 32) + 112) singleSampleFailure];

  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = [*(*(a1 + 32) + 112) singleSampleFailure];
    [v15 startTime];
    v16 = [v14 numberWithDouble:?];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKeyedSubscript:@"TFSF"];
  }

  v17 = [*(*(a1 + 32) + 112) multiSamplesFailure];

  if (v17)
  {
    v18 = MEMORY[0x1E696AD98];
    v19 = [*(*(a1 + 32) + 112) multiSamplesFailure];
    [v19 startTime];
    v20 = [v18 numberWithDouble:?];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v20 forKeyedSubscript:@"TFMF"];

    v21 = MEMORY[0x1E696AD98];
    v23 = [*(*(a1 + 32) + 112) multiSamplesFailure];
    [v23 duration];
    v22 = [v21 numberWithDouble:?];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v22 forKeyedSubscript:@"DFMF"];
  }
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1539;
  v10 = __Block_byref_object_dispose__1540;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MPCSamplesRecorder_description__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__MPCSamplesRecorder_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v5 = [v2 stringWithFormat:@"<%@: %p - RecordID:%@ - ModelID:%@ - mean: %2.5fms - std: %2.5fms - min: %2.5fms - max: %2.5fms - samples: %d - glitches: %d - thermal level: %d>", v3, v4, *(v4 + 56), *(v4 + 64), *(v4 + 88), sqrt(*(v4 + 96)), *(v4 + 72), *(v4 + 80), *(v4 + 8), *(v4 + 36), *(v4 + 40)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (void)recordSample:(id)sample
{
  sampleCopy = sample;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MPCSamplesRecorder_recordSample___block_invoke;
  v7[3] = &unk_1E82392C0;
  v7[4] = self;
  v8 = sampleCopy;
  v6 = sampleCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __35__MPCSamplesRecorder_recordSample___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isStoringSamples])
  {
    v2 = [*(a1 + 32) samples];
    [v2 addObject:*(a1 + 40)];

    v3 = [*(a1 + 32) samples];
    v4 = [v3 count];

    if (v4 >= 0x191)
    {
      v5 = [*(a1 + 32) delegate];
      [v5 samplesRecorderHasNewSamples:*(a1 + 32)];
    }
  }

  v6 = [*(a1 + 32) firstFailureDetector];
  v7 = [v6 processSample:*(a1 + 40)];

  if (v7)
  {
    ++*(*(a1 + 32) + 36);
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) time];
      v9 = *(*(a1 + 32) + 36);
      v23 = 134218240;
      v24 = v10;
      v25 = 1024;
      v26 = v9;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[AP] - Rendering limit exceeded [no audio] - time:%3.2fms - total: %d", &v23, 0x12u);
    }
  }

  *(*(a1 + 32) + 40) = [*(a1 + 40) thermalLevel];
  [*(a1 + 40) time];
  v12 = v11;
  ++*(*(a1 + 32) + 8);
  v13 = *(a1 + 32);
  v14 = 1.0 / v13[2];
  [v13 mean];
  v15 = *(a1 + 32);
  v17 = v12 - v16;
  v18 = v16 + (v12 - v16) * v14;
  v19 = *(v15 + 16) + v17 * (v12 - v18);
  *(v15 + 88) = v18;
  *(*(a1 + 32) + 16) = v19;
  *(*(a1 + 32) + 96) = v14 * v19;
  [*(a1 + 32) min];
  *(*(a1 + 32) + 72) = fmin(v20, v12);
  result = [*(a1 + 32) max];
  *(*(a1 + 32) + 80) = fmax(v22, v12);
  return result;
}

- (MPCSamplesRecorder)initWithRecordID:(id)d modelID:(id)iD firstFailureDetector:(id)detector shouldStoreSamples:(BOOL)samples delegate:(id)delegate
{
  samplesCopy = samples;
  dCopy = d;
  iDCopy = iD;
  detectorCopy = detector;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = MPCSamplesRecorder;
  v16 = [(MPCSamplesRecorder *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_glitches = 0;
    v18 = [dCopy copy];
    recordID = v17->_recordID;
    v17->_recordID = v18;

    v20 = [iDCopy copy];
    modelID = v17->_modelID;
    v17->_modelID = v20;

    v17->_mean = 0.0;
    v17->_rms = 0.0;
    *&v17->_min = xmmword_1C60451F0;
    v17->_k = 0;
    v17->_storingSamples = samplesCopy;
    if (samplesCopy)
    {
      v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:500];
      samples = v17->_samples;
      v17->_samples = v22;
    }

    objc_storeStrong(&v17->_firstFailureDetector, detector);
    objc_storeWeak(&v17->_delegate, delegateCopy);
    v24 = dispatch_queue_create("com.apple.MediaPlaybackCore/Suntory.samplesRecorderQueue", 0);
    accessQueue = v17->_accessQueue;
    v17->_accessQueue = v24;
  }

  return v17;
}

@end