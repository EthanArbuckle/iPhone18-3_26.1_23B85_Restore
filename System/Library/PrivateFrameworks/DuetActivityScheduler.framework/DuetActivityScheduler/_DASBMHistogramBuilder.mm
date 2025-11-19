@interface _DASBMHistogramBuilder
+ (id)builderWithPublisher:(id)a3;
- (_DASBMHistogramBuilder)initWithPublisher:(id)a3 saveSpans:(BOOL)a4;
- (id)histogram;
- (void)histogramOnResponseQueue:(id)a3 withCompletion:(id)a4;
@end

@implementation _DASBMHistogramBuilder

- (id)histogram
{
  v3 = self->_publisher;
  minimumSpanConfiguration = self->_minimumSpanConfiguration;
  if (minimumSpanConfiguration)
  {
    v5 = [(_DASBMMinimumSpanConfiguration *)minimumSpanConfiguration deriveSpansWithMinimumDurationOnStream:v3];

    v3 = v5;
  }

  if (!self->_saveSpans)
  {
    v6 = [(BPSPublisher *)v3 filterWithIsIncluded:&__block_literal_global_69];

    v3 = v6;
  }

  if (self->_filter)
  {
    v7 = [(BPSPublisher *)v3 filterWithIsIncluded:?];

    v3 = v7;
  }

  if (self->_transform)
  {
    v8 = [(BPSPublisher *)v3 mapWithTransform:?];

    v3 = v8;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v9 = [(BPSPublisher *)v3 collect];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35___DASBMHistogramBuilder_histogram__block_invoke_2;
  v15[3] = &unk_1E7C8F4E0;
  v15[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35___DASBMHistogramBuilder_histogram__block_invoke_72;
  v14[3] = &unk_1E7C8F430;
  v14[4] = &v16;
  v10 = [v9 sinkWithCompletion:v15 receiveInput:v14];

  v11 = [_DASHistogram alloc];
  v12 = [(_DASHistogram *)v11 initWithEvents:v17[5]];
  _Block_object_dispose(&v16, 8);

  return v12;
}

+ (id)builderWithPublisher:(id)a3
{
  v3 = a3;
  v4 = [[_DASBMHistogramBuilder alloc] initWithPublisher:v3 saveSpans:0];

  return v4;
}

- (_DASBMHistogramBuilder)initWithPublisher:(id)a3 saveSpans:(BOOL)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = _DASBMHistogramBuilder;
  v8 = [(_DASBMHistogramBuilder *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_publisher, a3);
    v9->_saveSpans = a4;
    filter = v9->_filter;
    v9->_filter = 0;

    transform = v9->_transform;
    v9->_transform = 0;

    v12 = os_log_create("com.apple.duetactivityscheduler", "BiomeHistogramBuilder");
    log = v9->_log;
    v9->_log = v12;
  }

  return v9;
}

- (void)histogramOnResponseQueue:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66___DASBMHistogramBuilder_histogramOnResponseQueue_withCompletion___block_invoke;
  v8[3] = &unk_1E7C8F508;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(a3, v8);
}

@end