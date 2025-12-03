@interface BLDownloadPipelineQueue
- (BLDownloadPipelineQueue)initWithQueue:(id)queue;
- (BOOL)alreadyHaveCellularDownloadWithDownloadID:(id)d;
- (BOOL)alreadyHaveDiscretionaryDownloadWithDownloadID:(id)d;
- (BOOL)alreadyHaveNondiscretionaryDownloadWithDownloadID:(id)d;
- (BOOL)alreadyHaveSampleDownloadWithDownloadID:(id)d;
- (BOOL)downloadIsHighPriorityWithDownloadID:(id)d;
- (NSSet)inFlightCellularDownloadIDs;
- (NSSet)inFlightDiscretionaryDownloadIDs;
- (NSSet)inFlightNondiscretionaryDownloadIDs;
- (NSSet)inFlightSampleDownloadIDs;
- (id)inFlightCellularDownloadsDescription;
- (id)inFlightDiscretionaryDownloadsDescription;
- (id)inFlightNondiscretionaryDownloadsDescription;
- (id)inFlightSampleDownloadsDescription;
- (unint64_t)availableCellularDownloads;
- (unint64_t)availableDiscretionaryDownloads;
- (unint64_t)availableNondiscretionaryDownloads;
- (unint64_t)availableSampleDownloads;
- (unint64_t)inFlightCellularDownloadsCount;
- (unint64_t)inFlightDiscretionaryDownloadsCount;
- (unint64_t)inFlightNondiscretionaryDownloadsCount;
- (unint64_t)inFlightSampleDownloadsCount;
- (void)addDownloadWithDownloadID:(id)d discretionary:(BOOL)discretionary sample:(BOOL)sample cellular:(BOOL)cellular;
- (void)markDownloadAsHighPriorityWithDownloadID:(id)d;
- (void)markDownloadAsStandardPriorityWithDownloadID:(id)d;
- (void)removeDownloadWithDownloadID:(id)d;
@end

@implementation BLDownloadPipelineQueue

- (BLDownloadPipelineQueue)initWithQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = BLDownloadPipelineQueue;
  v6 = [(BLDownloadPipelineQueue *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(NSMutableSet);
    mutableInFlightDiscretionaryDownloadIDs = v7->_mutableInFlightDiscretionaryDownloadIDs;
    v7->_mutableInFlightDiscretionaryDownloadIDs = v8;

    v10 = objc_alloc_init(NSMutableSet);
    mutableInFlightNondiscretionaryDownloadIDs = v7->_mutableInFlightNondiscretionaryDownloadIDs;
    v7->_mutableInFlightNondiscretionaryDownloadIDs = v10;

    v12 = objc_alloc_init(NSMutableSet);
    mutableInFlightSampleDownloadIDs = v7->_mutableInFlightSampleDownloadIDs;
    v7->_mutableInFlightSampleDownloadIDs = v12;

    v14 = objc_alloc_init(NSMutableSet);
    mutableInFlightCellularDownloadIDs = v7->_mutableInFlightCellularDownloadIDs;
    v7->_mutableInFlightCellularDownloadIDs = v14;

    v16 = objc_alloc_init(NSMutableSet);
    highPriorityDownloadIds = v7->_highPriorityDownloadIds;
    v7->_highPriorityDownloadIds = v16;
  }

  return v7;
}

- (unint64_t)availableDiscretionaryDownloads
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightDiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightDiscretionaryDownloadIDs];
  v5 = 3 - [mutableInFlightDiscretionaryDownloadIDs count];

  return v5;
}

- (unint64_t)availableNondiscretionaryDownloads
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightNondiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightNondiscretionaryDownloadIDs];
  v5 = 3 - [mutableInFlightNondiscretionaryDownloadIDs count];

  return v5;
}

- (unint64_t)availableSampleDownloads
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightSampleDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightSampleDownloadIDs];
  v5 = 1 - [mutableInFlightSampleDownloadIDs count];

  return v5;
}

- (unint64_t)availableCellularDownloads
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightCellularDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightCellularDownloadIDs];
  v5 = 3 - [mutableInFlightCellularDownloadIDs count];

  return v5;
}

- (NSSet)inFlightDiscretionaryDownloadIDs
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  return [(BLDownloadPipelineQueue *)self mutableInFlightDiscretionaryDownloadIDs];
}

- (NSSet)inFlightNondiscretionaryDownloadIDs
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  return [(BLDownloadPipelineQueue *)self mutableInFlightNondiscretionaryDownloadIDs];
}

- (NSSet)inFlightSampleDownloadIDs
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  return [(BLDownloadPipelineQueue *)self mutableInFlightSampleDownloadIDs];
}

- (NSSet)inFlightCellularDownloadIDs
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  return [(BLDownloadPipelineQueue *)self mutableInFlightCellularDownloadIDs];
}

- (void)addDownloadWithDownloadID:(id)d discretionary:(BOOL)discretionary sample:(BOOL)sample cellular:(BOOL)cellular
{
  cellularCopy = cellular;
  sampleCopy = sample;
  discretionaryCopy = discretionary;
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  if (sampleCopy)
  {
    mutableInFlightSampleDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightSampleDownloadIDs];
  }

  else if (cellularCopy)
  {
    mutableInFlightSampleDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightCellularDownloadIDs];
  }

  else
  {
    if (discretionaryCopy)
    {
      [(BLDownloadPipelineQueue *)self mutableInFlightDiscretionaryDownloadIDs];
    }

    else
    {
      [(BLDownloadPipelineQueue *)self mutableInFlightNondiscretionaryDownloadIDs];
    }
    mutableInFlightSampleDownloadIDs = ;
  }

  v12 = mutableInFlightSampleDownloadIDs;
  [mutableInFlightSampleDownloadIDs addObject:dCopy];
}

- (void)removeDownloadWithDownloadID:(id)d
{
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightSampleDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightSampleDownloadIDs];
  [mutableInFlightSampleDownloadIDs removeObject:dCopy];

  mutableInFlightCellularDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightCellularDownloadIDs];
  [mutableInFlightCellularDownloadIDs removeObject:dCopy];

  mutableInFlightDiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightDiscretionaryDownloadIDs];
  [mutableInFlightDiscretionaryDownloadIDs removeObject:dCopy];

  mutableInFlightNondiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightNondiscretionaryDownloadIDs];
  [mutableInFlightNondiscretionaryDownloadIDs removeObject:dCopy];
}

- (BOOL)alreadyHaveDiscretionaryDownloadWithDownloadID:(id)d
{
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightDiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightDiscretionaryDownloadIDs];
  LOBYTE(queue) = [mutableInFlightDiscretionaryDownloadIDs containsObject:dCopy];

  return queue;
}

- (BOOL)alreadyHaveNondiscretionaryDownloadWithDownloadID:(id)d
{
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightNondiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightNondiscretionaryDownloadIDs];
  LOBYTE(queue) = [mutableInFlightNondiscretionaryDownloadIDs containsObject:dCopy];

  return queue;
}

- (BOOL)alreadyHaveSampleDownloadWithDownloadID:(id)d
{
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightSampleDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightSampleDownloadIDs];
  LOBYTE(queue) = [mutableInFlightSampleDownloadIDs containsObject:dCopy];

  return queue;
}

- (BOOL)alreadyHaveCellularDownloadWithDownloadID:(id)d
{
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightCellularDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightCellularDownloadIDs];
  LOBYTE(queue) = [mutableInFlightCellularDownloadIDs containsObject:dCopy];

  return queue;
}

- (unint64_t)inFlightDiscretionaryDownloadsCount
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightDiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightDiscretionaryDownloadIDs];
  v5 = [mutableInFlightDiscretionaryDownloadIDs count];

  return v5;
}

- (unint64_t)inFlightNondiscretionaryDownloadsCount
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightNondiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightNondiscretionaryDownloadIDs];
  v5 = [mutableInFlightNondiscretionaryDownloadIDs count];

  return v5;
}

- (unint64_t)inFlightSampleDownloadsCount
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightSampleDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightSampleDownloadIDs];
  v5 = [mutableInFlightSampleDownloadIDs count];

  return v5;
}

- (unint64_t)inFlightCellularDownloadsCount
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightCellularDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightCellularDownloadIDs];
  v5 = [mutableInFlightCellularDownloadIDs count];

  return v5;
}

- (id)inFlightDiscretionaryDownloadsDescription
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightDiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightDiscretionaryDownloadIDs];
  v5 = [mutableInFlightDiscretionaryDownloadIDs description];

  return v5;
}

- (id)inFlightNondiscretionaryDownloadsDescription
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightNondiscretionaryDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightNondiscretionaryDownloadIDs];
  v5 = [mutableInFlightNondiscretionaryDownloadIDs description];

  return v5;
}

- (id)inFlightSampleDownloadsDescription
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightSampleDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightSampleDownloadIDs];
  v5 = [mutableInFlightSampleDownloadIDs description];

  return v5;
}

- (id)inFlightCellularDownloadsDescription
{
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableInFlightCellularDownloadIDs = [(BLDownloadPipelineQueue *)self mutableInFlightCellularDownloadIDs];
  v5 = [mutableInFlightCellularDownloadIDs description];

  return v5;
}

- (BOOL)downloadIsHighPriorityWithDownloadID:(id)d
{
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  highPriorityDownloadIds = [(BLDownloadPipelineQueue *)self highPriorityDownloadIds];
  LOBYTE(queue) = [highPriorityDownloadIds containsObject:dCopy];

  return queue;
}

- (void)markDownloadAsHighPriorityWithDownloadID:(id)d
{
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  highPriorityDownloadIds = [(BLDownloadPipelineQueue *)self highPriorityDownloadIds];
  [highPriorityDownloadIds addObject:dCopy];
}

- (void)markDownloadAsStandardPriorityWithDownloadID:(id)d
{
  dCopy = d;
  queue = [(BLDownloadPipelineQueue *)self queue];
  dispatch_assert_queue_V2(queue);

  highPriorityDownloadIds = [(BLDownloadPipelineQueue *)self highPriorityDownloadIds];
  [highPriorityDownloadIds removeObject:dCopy];
}

@end