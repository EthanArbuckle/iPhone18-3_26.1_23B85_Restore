@interface _DASBMHistogramBuilder
+ (id)builderWithPublisher:(id)publisher;
- (_DASBMHistogramBuilder)initWithPublisher:(id)publisher saveSpans:(BOOL)spans;
- (id)histogram;
- (void)histogramOnResponseQueue:(id)queue withCompletion:(id)completion;
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
  collect = [(BPSPublisher *)v3 collect];
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
  v10 = [collect sinkWithCompletion:v15 receiveInput:v14];

  v11 = [_DASHistogram alloc];
  v12 = [(_DASHistogram *)v11 initWithEvents:v17[5]];
  _Block_object_dispose(&v16, 8);

  return v12;
}

+ (id)builderWithPublisher:(id)publisher
{
  publisherCopy = publisher;
  v4 = [[_DASBMHistogramBuilder alloc] initWithPublisher:publisherCopy saveSpans:0];

  return v4;
}

- (_DASBMHistogramBuilder)initWithPublisher:(id)publisher saveSpans:(BOOL)spans
{
  publisherCopy = publisher;
  v15.receiver = self;
  v15.super_class = _DASBMHistogramBuilder;
  v8 = [(_DASBMHistogramBuilder *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_publisher, publisher);
    v9->_saveSpans = spans;
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

- (void)histogramOnResponseQueue:(id)queue withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66___DASBMHistogramBuilder_histogramOnResponseQueue_withCompletion___block_invoke;
  v8[3] = &unk_1E7C8F508;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

@end