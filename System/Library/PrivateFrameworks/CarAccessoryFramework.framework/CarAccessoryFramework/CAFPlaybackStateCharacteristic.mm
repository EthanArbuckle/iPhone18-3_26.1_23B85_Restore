@interface CAFPlaybackStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPlaybackStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPlaybackStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFPlaybackStateCharacteristic *)self playbackStateValue];

  return NSStringFromPlaybackState(v2);
}

@end