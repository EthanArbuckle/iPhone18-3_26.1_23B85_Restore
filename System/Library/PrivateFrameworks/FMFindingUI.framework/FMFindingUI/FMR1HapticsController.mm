@interface FMR1HapticsController
- (NSString)description;
- (void)hapticDisplayLinkUpdateWithDisplaylink:(id)a3;
@end

@implementation FMR1HapticsController

- (NSString)description
{
  v2 = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)hapticDisplayLinkUpdateWithDisplaylink:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A57D95C(v4);
}

@end