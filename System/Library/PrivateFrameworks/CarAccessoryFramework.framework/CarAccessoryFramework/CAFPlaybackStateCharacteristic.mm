@interface CAFPlaybackStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPlaybackStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPlaybackStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  playbackStateValue = [(CAFPlaybackStateCharacteristic *)self playbackStateValue];

  return NSStringFromPlaybackState(playbackStateValue);
}

@end