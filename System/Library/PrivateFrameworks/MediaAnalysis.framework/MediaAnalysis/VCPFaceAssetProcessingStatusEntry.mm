@interface VCPFaceAssetProcessingStatusEntry
+ (id)entryWithPreviousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date;
- (VCPFaceAssetProcessingStatusEntry)initWithPreviousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date;
@end

@implementation VCPFaceAssetProcessingStatusEntry

- (VCPFaceAssetProcessingStatusEntry)initWithPreviousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = VCPFaceAssetProcessingStatusEntry;
  v10 = [(VCPFaceAssetProcessingStatusEntry *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_previousStatus = status;
    v10->_previousAttempts = attempts;
    objc_storeStrong(&v10->_lastAttemptDate, date);
    v12 = +[NSDate now];
    currentAttemptDate = v11->_currentAttemptDate;
    v11->_currentAttemptDate = v12;
  }

  return v11;
}

+ (id)entryWithPreviousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date
{
  dateCopy = date;
  v8 = [[VCPFaceAssetProcessingStatusEntry alloc] initWithPreviousStatus:status previousAttempts:attempts andLastAttemptDate:dateCopy];

  return v8;
}

@end