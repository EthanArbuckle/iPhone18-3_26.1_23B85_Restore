@interface _DASBMMinimumSpanConfiguration
+ (id)configurationWithMinimumDuration:(double)duration aggregationKey:(id)key spanMarker:(id)marker;
- (_DASBMMinimumSpanConfiguration)init;
- (id)deriveSpanTuplesWithMinimumDurationOnStream:(id)stream;
- (id)deriveSpansWithMinimumDurationOnStream:(id)stream;
- (id)deriveSpansWithMinimumDurationOnStream_array:(id)stream_array;
- (id)deriveSpansWithMinimumDurationOnStream_heap:(id)stream_heap;
- (id)publisherWithSpansMeetingMinimumDuration:(id)duration;
@end

@implementation _DASBMMinimumSpanConfiguration

- (_DASBMMinimumSpanConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _DASBMMinimumSpanConfiguration;
  v2 = [(_DASBMMinimumSpanConfiguration *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.DuetActivityScheduler", "MinimumSpanConfiguration");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

+ (id)configurationWithMinimumDuration:(double)duration aggregationKey:(id)key spanMarker:(id)marker
{
  markerCopy = marker;
  keyCopy = key;
  v9 = objc_opt_new();
  [v9 setMinimumSpanDuration:duration];
  [v9 setAggregationKeyBlock:keyCopy];

  [v9 setSpanMarkerBlock:markerCopy];

  return v9;
}

- (id)publisherWithSpansMeetingMinimumDuration:(id)duration
{
  durationCopy = duration;
  v5 = objc_autoreleasePoolPush();
  if (self->_spanMarkerBlock)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75___DASBMMinimumSpanConfiguration_publisherWithSpansMeetingMinimumDuration___block_invoke;
    v20[3] = &unk_1E7C8F3B8;
    v20[4] = self;
    v21 = dictionary;
    v7 = dictionary;
    v8 = [durationCopy mapWithTransform:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75___DASBMMinimumSpanConfiguration_publisherWithSpansMeetingMinimumDuration___block_invoke_6;
    v19[3] = &unk_1E7C8F3E0;
    v19[4] = self;
    v9 = [v8 filterWithIsIncluded:v19];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(_DASBMMinimumSpanConfiguration *)log publisherWithSpansMeetingMinimumDuration:v11, v12, v13, v14, v15, v16, v17];
    }

    v9 = durationCopy;
  }

  objc_autoreleasePoolPop(v5);

  return v9;
}

- (id)deriveSpansWithMinimumDurationOnStream:(id)stream
{
  streamCopy = stream;
  if (_os_feature_enabled_impl())
  {
    [(_DASBMMinimumSpanConfiguration *)self deriveSpansWithMinimumDurationOnStream_heap:streamCopy];
  }

  else
  {
    [(_DASBMMinimumSpanConfiguration *)self deriveSpansWithMinimumDurationOnStream_array:streamCopy];
  }
  v5 = ;

  return v5;
}

- (id)deriveSpansWithMinimumDurationOnStream_array:(id)stream_array
{
  stream_arrayCopy = stream_array;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_DASBMMinimumSpanConfiguration *)self publisherWithSpansMeetingMinimumDuration:stream_arrayCopy];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  collect = [v6 collect];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke;
  v14[3] = &unk_1E7C8F408;
  v14[4] = self;
  v8 = stream_arrayCopy;
  v15 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_array___block_invoke_11;
  v13[3] = &unk_1E7C8F430;
  v13[4] = &v16;
  v9 = [collect sinkWithCompletion:v14 receiveInput:v13];

  [v17[5] sortUsingComparator:&__block_literal_global_1];
  v10 = objc_alloc(MEMORY[0x1E698F0E8]);
  v11 = [v10 initWithSequence:v17[5]];

  _Block_object_dispose(&v16, 8);
  objc_autoreleasePoolPop(v5);

  return v11;
}

- (id)deriveSpansWithMinimumDurationOnStream_heap:(id)stream_heap
{
  stream_heapCopy = stream_heap;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_DASBMMinimumSpanConfiguration *)self publisherWithSpansMeetingMinimumDuration:stream_heapCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  collect = [v6 collect];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_heap___block_invoke;
  v20[3] = &unk_1E7C8F408;
  v20[4] = self;
  v8 = stream_heapCopy;
  v21 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78___DASBMMinimumSpanConfiguration_deriveSpansWithMinimumDurationOnStream_heap___block_invoke_16;
  v19[3] = &unk_1E7C8F478;
  v19[4] = self;
  v19[5] = &v22;
  v9 = [collect sinkWithCompletion:v20 receiveInput:v19];

  v10 = v23[3];
  if (v10)
  {
    Count = CFBinaryHeapGetCount(v10);
    if (Count == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = Count;
    }

    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
    while (1)
    {
      v14 = CFBinaryHeapGetCount(v23[3]);
      v15 = v23[3];
      if (v14 < 1)
      {
        break;
      }

      [v13 addObject:CFBinaryHeapGetMinimum(v15)];
      CFBinaryHeapRemoveMinimumValue(v23[3]);
    }

    CFRelease(v15);
    v16 = [objc_alloc(MEMORY[0x1E698F0E8]) initWithSequence:v13];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E698F0E8]);
    v16 = [v17 initWithSequence:MEMORY[0x1E695E0F0]];
  }

  _Block_object_dispose(&v22, 8);
  objc_autoreleasePoolPop(v5);

  return v16;
}

- (id)deriveSpanTuplesWithMinimumDurationOnStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v6 = [(_DASBMMinimumSpanConfiguration *)self publisherWithSpansMeetingMinimumDuration:streamCopy];
  collect = [v6 collect];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78___DASBMMinimumSpanConfiguration_deriveSpanTuplesWithMinimumDurationOnStream___block_invoke;
  v14[3] = &unk_1E7C8F408;
  v14[4] = self;
  v8 = streamCopy;
  v15 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78___DASBMMinimumSpanConfiguration_deriveSpanTuplesWithMinimumDurationOnStream___block_invoke_17;
  v13[3] = &unk_1E7C8F430;
  v13[4] = &v16;
  v9 = [collect sinkWithCompletion:v14 receiveInput:v13];

  [v17[5] sortUsingComparator:&__block_literal_global_20];
  v10 = objc_alloc(MEMORY[0x1E698F0E8]);
  v11 = [v10 initWithSequence:v17[5]];

  _Block_object_dispose(&v16, 8);
  objc_autoreleasePoolPop(v5);

  return v11;
}

@end