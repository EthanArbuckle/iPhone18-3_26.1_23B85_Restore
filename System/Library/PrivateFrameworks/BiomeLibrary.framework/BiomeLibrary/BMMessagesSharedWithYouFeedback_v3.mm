@interface BMMessagesSharedWithYouFeedback_v3
- (int)feedbackType;
@end

@implementation BMMessagesSharedWithYouFeedback_v3

- (int)feedbackType
{
  v4.receiver = self;
  v4.super_class = BMMessagesSharedWithYouFeedback_v3;
  feedbackType = [(BMMessagesSharedWithYouFeedback *)&v4 feedbackType];
  if (feedbackType < 0xB)
  {
    return feedbackType + 1;
  }

  else
  {
    return 0;
  }
}

@end