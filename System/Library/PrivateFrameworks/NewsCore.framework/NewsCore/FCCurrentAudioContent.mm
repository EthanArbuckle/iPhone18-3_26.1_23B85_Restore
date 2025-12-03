@interface FCCurrentAudioContent
- (void)initWithRecentHeadlines:(void *)headlines featuredHeadlines:;
@end

@implementation FCCurrentAudioContent

- (void)initWithRecentHeadlines:(void *)headlines featuredHeadlines:
{
  v5 = a2;
  headlinesCopy = headlines;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = FCCurrentAudioContent;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      v9 = [headlinesCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

@end