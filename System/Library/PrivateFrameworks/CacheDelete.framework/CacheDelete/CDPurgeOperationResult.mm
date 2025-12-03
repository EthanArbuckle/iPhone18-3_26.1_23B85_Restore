@interface CDPurgeOperationResult
- (CDPurgeOperationResult)initWithVolumes:(id)volumes requestedBytes:(unint64_t)bytes mainVolume:(id)volume clientProcName:(id)name;
- (unint64_t)totalMeasuredBytes;
- (unint64_t)totalReportedBytes;
- (void)addResult:(id)result;
@end

@implementation CDPurgeOperationResult

- (CDPurgeOperationResult)initWithVolumes:(id)volumes requestedBytes:(unint64_t)bytes mainVolume:(id)volume clientProcName:(id)name
{
  volumesCopy = volumes;
  volumeCopy = volume;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = CDPurgeOperationResult;
  v14 = [(CDResult *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_volumeNames, volumes);
    v15->_requestedBytes = bytes;
    freespace = [volumeCopy freespace];
    v15->_beginFreeSpace = freespace;
    v15->_endFreeSpace = freespace;
    objc_storeStrong(&v15->_clientProcName, name);
    v17 = objc_alloc_init(NSMutableArray);
    mutableResults = v15->_mutableResults;
    v15->_mutableResults = v17;

    v15->_noOfTimeouts = 0;
    v15->_timeoutTime = 0;
    v19 = objc_alloc_init(NSMutableArray);
    timedOutServices = v15->_timedOutServices;
    v15->_timedOutServices = v19;

    if (([volumeCopy containerTotalSize:&v15->_containerSize andFreespace:&v15->_containerInitialFreespace] & 1) == 0)
    {
      v15->_containerInitialFreespace = 0;
      v15->_containerSize = 0;
    }
  }

  return v15;
}

- (unint64_t)totalReportedBytes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  results = [(CDPurgeOperationResult *)self results];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __44__CDPurgeOperationResult_totalReportedBytes__block_invoke;
  v5[3] = &unk_100061780;
  v5[4] = &v6;
  [results enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __44__CDPurgeOperationResult_totalReportedBytes__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 reportedBytes];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)totalMeasuredBytes
{
  endFreeSpace = [(CDPurgeOperationResult *)self endFreeSpace];
  if (endFreeSpace < [(CDPurgeOperationResult *)self beginFreeSpace])
  {
    return 0;
  }

  endFreeSpace2 = [(CDPurgeOperationResult *)self endFreeSpace];
  return endFreeSpace2 - [(CDPurgeOperationResult *)self beginFreeSpace];
}

- (void)addResult:(id)result
{
  resultCopy = result;
  isFinished = [(CDResult *)self isFinished];
  if (resultCopy && (isFinished & 1) == 0)
  {
    mutableResults = [(CDPurgeOperationResult *)self mutableResults];
    [mutableResults addObject:resultCopy];
  }
}

@end