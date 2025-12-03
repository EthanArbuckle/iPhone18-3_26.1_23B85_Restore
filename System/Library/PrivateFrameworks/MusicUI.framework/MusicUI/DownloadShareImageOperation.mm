@interface DownloadShareImageOperation
- (void)cancel;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
@end

@implementation DownloadShareImageOperation

- (void)cancel
{
  selfCopy = self;
  sub_216946C24();
}

- (void)setExecuting:(BOOL)executing
{
  selfCopy = self;
  sub_216946F7C(executing, 0x7475636578457369, 0xEB00000000676E69, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isExecuting);
}

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  sub_216946F7C(finished, 0x6873696E69467369, 0xEA00000000006465, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished);
}

@end