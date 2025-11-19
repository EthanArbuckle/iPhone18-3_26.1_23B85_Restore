@interface ASFolderChangedHistory
- (ASFolderChangedHistory)initWithCount:(int)a3;
@end

@implementation ASFolderChangedHistory

- (ASFolderChangedHistory)initWithCount:(int)a3
{
  v9.receiver = self;
  v9.super_class = ASFolderChangedHistory;
  v4 = [(ASFolderChangedHistory *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = a3;
    v6 = +[NSDate date];
    startTime = v5->_startTime;
    v5->_startTime = v6;
  }

  return v5;
}

@end