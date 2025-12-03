@interface IMDCollaborationClearNoticeRateLimiter
- (BOOL)shouldSendWithNotice:(id)notice;
- (void)didSendWithNotice:(id)notice;
@end

@implementation IMDCollaborationClearNoticeRateLimiter

- (BOOL)shouldSendWithNotice:(id)notice
{
  noticeCopy = notice;
  selfCopy = self;
  LOBYTE(self) = sub_22B715844(noticeCopy);

  return self & 1;
}

- (void)didSendWithNotice:(id)notice
{
  noticeCopy = notice;
  selfCopy = self;
  sub_22B716384(noticeCopy);
}

@end