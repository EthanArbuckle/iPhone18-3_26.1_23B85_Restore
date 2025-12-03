@interface IMDSpamCheckRequeryTrackerRecord
- (IMDSpamCheckRequeryTrackerRecord)initWithMessageGUID:(id)d chatGUID:(id)iD;
@end

@implementation IMDSpamCheckRequeryTrackerRecord

- (IMDSpamCheckRequeryTrackerRecord)initWithMessageGUID:(id)d chatGUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v11.receiver = self;
  v11.super_class = IMDSpamCheckRequeryTrackerRecord;
  v8 = [(IMDSpamCheckRequeryTrackerRecord *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IMDSpamCheckRequeryTrackerRecord *)v8 setMessageGUID:dCopy];
    [(IMDSpamCheckRequeryTrackerRecord *)v9 setChatGUID:iDCopy];
  }

  return v9;
}

@end