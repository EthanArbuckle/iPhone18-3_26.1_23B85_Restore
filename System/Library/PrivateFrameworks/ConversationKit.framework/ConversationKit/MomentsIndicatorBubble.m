@interface MomentsIndicatorBubble
- (NSString)description;
- (void)start;
@end

@implementation MomentsIndicatorBubble

- (void)start
{
  v2 = self;
  MomentsIndicatorBubble.start()();
}

- (NSString)description
{
  v2 = self;
  v3 = MomentsIndicatorBubble.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1BFB209B0](v3, v5);

  return v6;
}

@end