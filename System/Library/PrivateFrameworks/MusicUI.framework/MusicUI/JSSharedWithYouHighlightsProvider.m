@interface JSSharedWithYouHighlightsProvider
- (JSValue)highlights;
- (JSValue)isEnabled;
- (JSValue)isSupported;
- (void)startIfNeeded;
@end

@implementation JSSharedWithYouHighlightsProvider

- (JSValue)isSupported
{
  v2 = self;
  v3 = sub_216E2CE24();

  return v3;
}

- (JSValue)isEnabled
{
  v2 = self;
  v3 = sub_216E2D09C();

  return v3;
}

- (void)startIfNeeded
{
  v2 = self;
  sub_216E2CFB8();
}

- (JSValue)highlights
{
  v2 = self;
  v3 = sub_216E2D09C();

  return v3;
}

@end