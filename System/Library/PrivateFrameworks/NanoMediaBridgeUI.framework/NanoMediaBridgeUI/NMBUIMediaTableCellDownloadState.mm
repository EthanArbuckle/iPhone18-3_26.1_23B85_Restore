@interface NMBUIMediaTableCellDownloadState
- (NMBUIMediaTableCellDownloadState)initWithState:(unint64_t)state progress:(double)progress;
@end

@implementation NMBUIMediaTableCellDownloadState

- (NMBUIMediaTableCellDownloadState)initWithState:(unint64_t)state progress:(double)progress
{
  v7.receiver = self;
  v7.super_class = NMBUIMediaTableCellDownloadState;
  result = [(NMBUIMediaTableCellDownloadState *)&v7 init];
  if (result)
  {
    result->_state = state;
    result->_progress = progress;
  }

  return result;
}

@end