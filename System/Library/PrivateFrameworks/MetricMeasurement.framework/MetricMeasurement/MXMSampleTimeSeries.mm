@interface MXMSampleTimeSeries
- (MXMSampleTimeSeries)initWithAbsoluteTimeSeries:(unint64_t *)series length:(unint64_t)length;
- (MXMSampleTimeSeries)initWithContinuousTimeSeries:(unint64_t *)series length:(unint64_t)length;
- (MXMSampleTimeSeries)initWithTimeSeries:(double *)series tag:(id)tag unit:(id)unit length:(unint64_t)length;
- (id)timeIndex;
- (void)_appendAbsoluteTime:(unint64_t)time;
@end

@implementation MXMSampleTimeSeries

- (id)timeIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_time);

  return WeakRetained;
}

- (MXMSampleTimeSeries)initWithAbsoluteTimeSeries:(unint64_t *)series length:(unint64_t)length
{
  v7 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
  v8 = v7;
  if (length)
  {
    v9 = v7;
    lengthCopy = length;
    do
    {
      v11 = *series++;
      [MXMMachUtils _nanosecondsWithAbsoluteTime:v11];
      *v9++ = v12;
      --lengthCopy;
    }

    while (lengthCopy);
  }

  objc_initWeak(&location, self);
  v13 = +[MXMClockSampleTag absoluteTime];
  nanoseconds = [MEMORY[0x277CCADD0] nanoseconds];
  v15 = [(MXMSampleTimeSeries *)self initWithTimeSeries:v8 tag:v13 unit:nanoseconds length:length];

  if (v15)
  {
    v16 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v15->_time, v16);
  }

  free(v8);
  objc_destroyWeak(&location);
  return v15;
}

- (MXMSampleTimeSeries)initWithContinuousTimeSeries:(unint64_t *)series length:(unint64_t)length
{
  if (initWithContinuousTimeSeries_length__onceToken != -1)
  {
    [MXMSampleTimeSeries initWithContinuousTimeSeries:length:];
  }

  v7 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
  v8 = v7;
  if (length)
  {
    v9 = v7;
    lengthCopy = length;
    do
    {
      v11 = *series++;
      [MXMMachUtils _nanosecondsWithContinuousTime:v11];
      *v9++ = v12;
      --lengthCopy;
    }

    while (lengthCopy);
  }

  objc_initWeak(&location, self);
  v13 = +[MXMClockSampleTag continuousTime];
  nanoseconds = [MEMORY[0x277CCADD0] nanoseconds];
  v15 = [(MXMSampleTimeSeries *)self initWithTimeSeries:v8 tag:v13 unit:nanoseconds length:length];

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

- (MXMSampleTimeSeries)initWithTimeSeries:(double *)series tag:(id)tag unit:(id)unit length:(unint64_t)length
{
  tagCopy = tag;
  unitCopy = unit;
  objc_initWeak(&location, self);
  v15.receiver = self;
  v15.super_class = MXMSampleTimeSeries;
  v12 = [(MXMSampleSet *)&v15 initWithTime:0 tag:tagCopy unit:unitCopy attributes:0 doubleValues:series length:length];
  if (v12)
  {
    v13 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v12->_time, v13);
  }

  objc_destroyWeak(&location);

  return v12;
}

- (void)_appendAbsoluteTime:(unint64_t)time
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MXMSampleSet *)selfCopy _prepareUnderlyingBufferSizeWithAdditionalBytes:8];
  [MXMMachUtils _nanosecondsWithAbsoluteTime:time];
  v6 = v5;
  underlyingBuffer = [(MXMSampleSet *)selfCopy underlyingBuffer];
  *(underlyingBuffer + 8 * [(MXMSampleSet *)selfCopy index][8]) = v6;
  index = [(MXMSampleSet *)selfCopy index];
  ++*(index + 8);
  objc_sync_exit(selfCopy);

  [(MXMSampleSet *)selfCopy setCachedSamples:0];
}

@end