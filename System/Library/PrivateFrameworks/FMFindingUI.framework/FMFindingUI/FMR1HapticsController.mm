@interface FMR1HapticsController
- (NSString)description;
- (void)hapticDisplayLinkUpdateWithDisplaylink:(id)displaylink;
@end

@implementation FMR1HapticsController

- (NSString)description
{
  selfCopy = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)hapticDisplayLinkUpdateWithDisplaylink:(id)displaylink
{
  displaylinkCopy = displaylink;
  selfCopy = self;
  sub_24A57D95C(displaylinkCopy);
}

@end