@interface ASFolderChangedHistory
- (ASFolderChangedHistory)initWithCount:(int)count;
@end

@implementation ASFolderChangedHistory

- (ASFolderChangedHistory)initWithCount:(int)count
{
  v9.receiver = self;
  v9.super_class = ASFolderChangedHistory;
  v4 = [(ASFolderChangedHistory *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = count;
    v6 = +[NSDate date];
    startTime = v5->_startTime;
    v5->_startTime = v6;
  }

  return v5;
}

@end