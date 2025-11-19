@interface VCPFaceAssetProcessingStatusEntry
+ (id)entryWithPreviousStatus:(unint64_t)a3 previousAttempts:(unint64_t)a4 andLastAttemptDate:(id)a5;
- (VCPFaceAssetProcessingStatusEntry)initWithPreviousStatus:(unint64_t)a3 previousAttempts:(unint64_t)a4 andLastAttemptDate:(id)a5;
@end

@implementation VCPFaceAssetProcessingStatusEntry

- (VCPFaceAssetProcessingStatusEntry)initWithPreviousStatus:(unint64_t)a3 previousAttempts:(unint64_t)a4 andLastAttemptDate:(id)a5
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = VCPFaceAssetProcessingStatusEntry;
  v10 = [(VCPFaceAssetProcessingStatusEntry *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_previousStatus = a3;
    v10->_previousAttempts = a4;
    objc_storeStrong(&v10->_lastAttemptDate, a5);
    v12 = +[NSDate now];
    currentAttemptDate = v11->_currentAttemptDate;
    v11->_currentAttemptDate = v12;
  }

  return v11;
}

+ (id)entryWithPreviousStatus:(unint64_t)a3 previousAttempts:(unint64_t)a4 andLastAttemptDate:(id)a5
{
  v7 = a5;
  v8 = [[VCPFaceAssetProcessingStatusEntry alloc] initWithPreviousStatus:a3 previousAttempts:a4 andLastAttemptDate:v7];

  return v8;
}

@end