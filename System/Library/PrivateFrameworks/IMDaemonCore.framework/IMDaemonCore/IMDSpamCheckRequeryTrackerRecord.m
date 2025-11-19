@interface IMDSpamCheckRequeryTrackerRecord
- (IMDSpamCheckRequeryTrackerRecord)initWithMessageGUID:(id)a3 chatGUID:(id)a4;
@end

@implementation IMDSpamCheckRequeryTrackerRecord

- (IMDSpamCheckRequeryTrackerRecord)initWithMessageGUID:(id)a3 chatGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IMDSpamCheckRequeryTrackerRecord;
  v8 = [(IMDSpamCheckRequeryTrackerRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IMDSpamCheckRequeryTrackerRecord *)v8 setMessageGUID:v6];
    [(IMDSpamCheckRequeryTrackerRecord *)v9 setChatGUID:v7];
  }

  return v9;
}

@end