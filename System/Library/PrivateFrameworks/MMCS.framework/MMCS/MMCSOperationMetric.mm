@interface MMCSOperationMetric
- (MMCSOperationMetric)initWithDate:(id)date;
- (NSArray)rangesCopy;
- (NSString)description;
- (double)absoluteStart;
- (double)absoluteStop;
- (id)describeRanges;
- (id)newRangeWithOperationState:(unint64_t)state startDate:(id)date duration:(double)duration;
- (int64_t)compareExecutingStartTime:(id)time;
- (int64_t)compareStartTime:(id)time;
- (void)addRange:(id)range;
- (void)rangesCompleted;
@end

@implementation MMCSOperationMetric

- (id)newRangeWithOperationState:(unint64_t)state startDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v8 = [[MMCSOperationStateTimeRange alloc] initWithOperationState:state startDate:dateCopy duration:duration];

  return v8;
}

- (MMCSOperationMetric)initWithDate:(id)date
{
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = MMCSOperationMetric;
  v5 = [(MMCSOperationMetric *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(MMCSOperationMetric *)v5 setStartDate:dateCopy];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    totalBytesByChunkProfile = v6->_totalBytesByChunkProfile;
    v6->_totalBytesByChunkProfile = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chunkCountByChunkProfile = v6->_chunkCountByChunkProfile;
    v6->_chunkCountByChunkProfile = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fileCountByChunkProfile = v6->_fileCountByChunkProfile;
    v6->_fileCountByChunkProfile = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requestUUIDs = v6->_requestUUIDs;
    v6->_requestUUIDs = v13;
  }

  if (!v6->_totalBytesByChunkProfile || !v6->_chunkCountByChunkProfile || !v6->_fileCountByChunkProfile || !v6->_requestUUIDs)
  {

    v6 = 0;
  }

  return v6;
}

- (void)addRange:(id)range
{
  rangeCopy = range;
  ranges = [(MMCSOperationMetric *)self ranges];

  if (!ranges)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(MMCSOperationMetric *)self setRanges:array];
  }

  ranges2 = [(MMCSOperationMetric *)self ranges];
  [ranges2 addObject:rangeCopy];
}

- (void)rangesCompleted
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  ranges = [(MMCSOperationMetric *)self ranges];
  v4 = [ranges countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(ranges);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 queueing];
        v8 = v8 + v11;
        [v10 executing];
        v7 = v7 + v12;
      }

      v5 = [ranges countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  [(MMCSOperationMetric *)self setQueueing:v8];
  [(MMCSOperationMetric *)self setExecuting:v7];
  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)rangesCopy
{
  ranges = [(MMCSOperationMetric *)self ranges];
  v3 = [ranges copy];

  return v3;
}

- (id)describeRanges
{
  string = [MEMORY[0x277CCAB68] string];
  ranges = [(MMCSOperationMetric *)self ranges];
  v5 = [ranges count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0.0;
    do
    {
      v10 = v7;
      v7 = [ranges objectAtIndexedSubscript:v8];

      if (v8)
      {
        [v7 absoluteStart];
        if (v11 > v9)
        {
          [string appendString:@" "];
          [v7 absoluteStart];
          v13 = [MMCSOperationStateTimeRange descriptionWithOperationState:2 absoluteStart:v9 duration:v12 - v9];
          [string appendString:v13];
        }

        [string appendString:@" "];
        v14 = [v7 description];
        [string appendString:v14];
      }

      else
      {
        [(MMCSOperationMetric *)self absoluteStart];
        v16 = v15;
        [v7 absoluteStart];
        if (v16 < v17)
        {
          [(MMCSOperationMetric *)self absoluteStart];
          v19 = v18;
          [v7 absoluteStart];
          v21 = v20;
          [(MMCSOperationMetric *)self absoluteStart];
          v23 = [MMCSOperationStateTimeRange descriptionWithOperationState:2 absoluteStart:v19 duration:v21 - v22];
          [string appendString:v23];

          [string appendString:@" "];
        }

        v24 = [v7 description];
        [string appendString:v24];

        [v7 absoluteStop];
        v9 = v25;
      }

      ++v8;
    }

    while (v6 != v8);
    if (v7)
    {
      [(MMCSOperationMetric *)self absoluteStop];
      v27 = v26;
      [v7 absoluteStop];
      if (v27 > v28)
      {
        [string appendString:@" "];
        [v7 absoluteStop];
        v30 = v29;
        [(MMCSOperationMetric *)self absoluteStop];
        v32 = v31;
        [v7 absoluteStop];
        v34 = [MMCSOperationStateTimeRange descriptionWithOperationState:2 absoluteStart:v30 duration:v32 - v33];
        [string appendString:v34];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return string;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  [(MMCSOperationMetric *)self absoluteStart];
  v5 = v4;
  mmcs_operation_metric_reference_time();
  return [v3 stringWithFormat:@"start %0.3lf duration %0.3lf queueing %0.3lf executing %0.3lf bytesUp %llu bytesDown %llu connections %llu(%llu) uuidSetCount %llu", v5 - v6, *&self->_duration, *&self->_queueing, *&self->_executing, self->_bytesUploaded, self->_bytesDownloaded, self->_connections, self->_connectionsCreated, -[NSMutableSet count](self->_requestUUIDs, "count")];
}

- (double)absoluteStart
{
  startDate = [(MMCSOperationMetric *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (int64_t)compareStartTime:(id)time
{
  timeCopy = time;
  [(MMCSOperationMetric *)self absoluteStart];
  v6 = v5;
  [timeCopy absoluteStart];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (int64_t)compareExecutingStartTime:(id)time
{
  timeCopy = time;
  [(MMCSOperationMetric *)self absoluteStart];
  v6 = v5;
  [timeCopy absoluteStart];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (double)absoluteStop
{
  [(MMCSOperationMetric *)self absoluteStart];
  v4 = v3;
  [(MMCSOperationMetric *)self duration];
  return v4 + v5;
}

@end