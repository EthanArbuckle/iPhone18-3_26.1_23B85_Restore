@interface MXMSampleTimeSeries
- (MXMSampleTimeSeries)initWithAbsoluteTimeSeries:(unint64_t *)a3 length:(unint64_t)a4;
- (MXMSampleTimeSeries)initWithContinuousTimeSeries:(unint64_t *)a3 length:(unint64_t)a4;
- (MXMSampleTimeSeries)initWithTimeSeries:(double *)a3 tag:(id)a4 unit:(id)a5 length:(unint64_t)a6;
- (id)timeIndex;
- (void)_appendAbsoluteTime:(unint64_t)a3;
@end

@implementation MXMSampleTimeSeries

- (id)timeIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_time);

  return WeakRetained;
}

- (MXMSampleTimeSeries)initWithAbsoluteTimeSeries:(unint64_t *)a3 length:(unint64_t)a4
{
  v7 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    v10 = a4;
    do
    {
      v11 = *a3++;
      [MXMMachUtils _nanosecondsWithAbsoluteTime:v11];
      *v9++ = v12;
      --v10;
    }

    while (v10);
  }

  objc_initWeak(&location, self);
  v13 = +[MXMClockSampleTag absoluteTime];
  v14 = [MEMORY[0x277CCADD0] nanoseconds];
  v15 = [(MXMSampleTimeSeries *)self initWithTimeSeries:v8 tag:v13 unit:v14 length:a4];

  if (v15)
  {
    v16 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v15->_time, v16);
  }

  free(v8);
  objc_destroyWeak(&location);
  return v15;
}

- (MXMSampleTimeSeries)initWithContinuousTimeSeries:(unint64_t *)a3 length:(unint64_t)a4
{
  if (initWithContinuousTimeSeries_length__onceToken != -1)
  {
    [MXMSampleTimeSeries initWithContinuousTimeSeries:length:];
  }

  v7 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    v10 = a4;
    do
    {
      v11 = *a3++;
      [MXMMachUtils _nanosecondsWithContinuousTime:v11];
      *v9++ = v12;
      --v10;
    }

    while (v10);
  }

  objc_initWeak(&location, self);
  v13 = +[MXMClockSampleTag continuousTime];
  v14 = [MEMORY[0x277CCADD0] nanoseconds];
  v15 = [(MXMSampleTimeSeries *)self initWithTimeSeries:v8 tag:v13 unit:v14 length:a4];

  if (v15)
  {
    v16 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v15->_time, v16);
  }

  free(v8);
  objc_destroyWeak(&location);
  return v15;
}

uint64_t __59__MXMSampleTimeSeries_initWithContinuousTimeSeries_length___block_invoke()
{
  initWithContinuousTimeSeries_length__transl = objc_alloc_init(MEMORY[0x277D55020]);

  return MEMORY[0x2821F96F8]();
}

- (MXMSampleTimeSeries)initWithTimeSeries:(double *)a3 tag:(id)a4 unit:(id)a5 length:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  objc_initWeak(&location, self);
  v15.receiver = self;
  v15.super_class = MXMSampleTimeSeries;
  v12 = [(MXMSampleSet *)&v15 initWithTime:0 tag:v10 unit:v11 attributes:0 doubleValues:a3 length:a6];
  if (v12)
  {
    v13 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v12->_time, v13);
  }

  objc_destroyWeak(&location);

  return v12;
}

- (void)_appendAbsoluteTime:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  [(MXMSampleSet *)v4 _prepareUnderlyingBufferSizeWithAdditionalBytes:8];
  [MXMMachUtils _nanosecondsWithAbsoluteTime:a3];
  v6 = v5;
  v7 = [(MXMSampleSet *)v4 underlyingBuffer];
  *(v7 + 8 * [(MXMSampleSet *)v4 index][8]) = v6;
  v8 = [(MXMSampleSet *)v4 index];
  ++*(v8 + 8);
  objc_sync_exit(v4);

  [(MXMSampleSet *)v4 setCachedSamples:0];
}

@end