@interface CDPurgeOperationResult
- (CDPurgeOperationResult)initWithVolumes:(id)a3 requestedBytes:(unint64_t)a4 mainVolume:(id)a5 clientProcName:(id)a6;
- (unint64_t)totalMeasuredBytes;
- (unint64_t)totalReportedBytes;
- (void)addResult:(id)a3;
@end

@implementation CDPurgeOperationResult

- (CDPurgeOperationResult)initWithVolumes:(id)a3 requestedBytes:(unint64_t)a4 mainVolume:(id)a5 clientProcName:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CDPurgeOperationResult;
  v14 = [(CDResult *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_volumeNames, a3);
    v15->_requestedBytes = a4;
    v16 = [v12 freespace];
    v15->_beginFreeSpace = v16;
    v15->_endFreeSpace = v16;
    objc_storeStrong(&v15->_clientProcName, a6);
    v17 = objc_alloc_init(NSMutableArray);
    mutableResults = v15->_mutableResults;
    v15->_mutableResults = v17;

    v15->_noOfTimeouts = 0;
    v15->_timeoutTime = 0;
    v19 = objc_alloc_init(NSMutableArray);
    timedOutServices = v15->_timedOutServices;
    v15->_timedOutServices = v19;

    if (([v12 containerTotalSize:&v15->_containerSize andFreespace:&v15->_containerInitialFreespace] & 1) == 0)
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
  v2 = [(CDPurgeOperationResult *)self results];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __44__CDPurgeOperationResult_totalReportedBytes__block_invoke;
  v5[3] = &unk_100061780;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

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
  v3 = [(CDPurgeOperationResult *)self endFreeSpace];
  if (v3 < [(CDPurgeOperationResult *)self beginFreeSpace])
  {
    return 0;
  }

  v5 = [(CDPurgeOperationResult *)self endFreeSpace];
  return v5 - [(CDPurgeOperationResult *)self beginFreeSpace];
}

- (void)addResult:(id)a3
{
  v6 = a3;
  v4 = [(CDResult *)self isFinished];
  if (v6 && (v4 & 1) == 0)
  {
    v5 = [(CDPurgeOperationResult *)self mutableResults];
    [v5 addObject:v6];
  }
}

@end