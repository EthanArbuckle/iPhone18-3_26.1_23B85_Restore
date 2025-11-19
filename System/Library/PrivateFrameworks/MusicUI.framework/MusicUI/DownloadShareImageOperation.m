@interface DownloadShareImageOperation
- (void)cancel;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
@end

@implementation DownloadShareImageOperation

- (void)cancel
{
  v2 = self;
  sub_216946C24();
}

- (void)setExecuting:(BOOL)a3
{
  v4 = self;
  sub_216946F7C(a3, 0x7475636578457369, 0xEB00000000676E69, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isExecuting);
}

- (void)setFinished:(BOOL)a3
{
  v4 = self;
  sub_216946F7C(a3, 0x6873696E69467369, 0xEA00000000006465, &OBJC_IVAR____TtC7MusicUI27DownloadShareImageOperation__isFinished);
}

@end