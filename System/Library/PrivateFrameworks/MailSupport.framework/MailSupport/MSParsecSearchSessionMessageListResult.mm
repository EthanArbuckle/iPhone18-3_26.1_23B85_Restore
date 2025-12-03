@interface MSParsecSearchSessionMessageListResult
- (id)feedbackResult;
@end

@implementation MSParsecSearchSessionMessageListResult

- (id)feedbackResult
{
  v4.receiver = self;
  v4.super_class = MSParsecSearchSessionMessageListResult;
  feedbackResult = [(MSParsecSearchSessionMessageResult *)&v4 feedbackResult];
  [feedbackResult setSectionBundleIdentifier:@"com.apple.mail.search.messagelist"];
  [feedbackResult setResultBundleId:@"com.apple.mail.search.messageresult"];

  return feedbackResult;
}

@end