@interface JSSharedWithYouHighlightsProvider
- (JSValue)highlights;
- (JSValue)isEnabled;
- (JSValue)isSupported;
- (void)startIfNeeded;
@end

@implementation JSSharedWithYouHighlightsProvider

- (JSValue)isSupported
{
  selfCopy = self;
  v3 = sub_216E2CE24();

  return v3;
}

- (JSValue)isEnabled
{
  selfCopy = self;
  v3 = sub_216E2D09C();

  return v3;
}

- (void)startIfNeeded
{
  selfCopy = self;
  sub_216E2CFB8();
}

- (JSValue)highlights
{
  selfCopy = self;
  v3 = sub_216E2D09C();

  return v3;
}

@end