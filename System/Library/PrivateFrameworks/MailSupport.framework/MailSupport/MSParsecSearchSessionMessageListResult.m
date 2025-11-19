@interface MSParsecSearchSessionMessageListResult
- (id)feedbackResult;
@end

@implementation MSParsecSearchSessionMessageListResult

- (id)feedbackResult
{
  v4.receiver = self;
  v4.super_class = MSParsecSearchSessionMessageListResult;
  v2 = [(MSParsecSearchSessionMessageResult *)&v4 feedbackResult];
  [v2 setSectionBundleIdentifier:@"com.apple.mail.search.messagelist"];
  [v2 setResultBundleId:@"com.apple.mail.search.messageresult"];

  return v2;
}

@end