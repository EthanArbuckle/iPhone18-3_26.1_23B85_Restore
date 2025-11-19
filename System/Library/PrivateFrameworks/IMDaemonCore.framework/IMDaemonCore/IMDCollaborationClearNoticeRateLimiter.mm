@interface IMDCollaborationClearNoticeRateLimiter
- (BOOL)shouldSendWithNotice:(id)a3;
- (void)didSendWithNotice:(id)a3;
@end

@implementation IMDCollaborationClearNoticeRateLimiter

- (BOOL)shouldSendWithNotice:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_22B715844(v4);

  return self & 1;
}

- (void)didSendWithNotice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22B716384(v4);
}

@end