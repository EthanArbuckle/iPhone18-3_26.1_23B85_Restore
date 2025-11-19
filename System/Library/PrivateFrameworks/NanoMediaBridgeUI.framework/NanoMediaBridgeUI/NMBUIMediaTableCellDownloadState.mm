@interface NMBUIMediaTableCellDownloadState
- (NMBUIMediaTableCellDownloadState)initWithState:(unint64_t)a3 progress:(double)a4;
@end

@implementation NMBUIMediaTableCellDownloadState

- (NMBUIMediaTableCellDownloadState)initWithState:(unint64_t)a3 progress:(double)a4
{
  v7.receiver = self;
  v7.super_class = NMBUIMediaTableCellDownloadState;
  result = [(NMBUIMediaTableCellDownloadState *)&v7 init];
  if (result)
  {
    result->_state = a3;
    result->_progress = a4;
  }

  return result;
}

@end