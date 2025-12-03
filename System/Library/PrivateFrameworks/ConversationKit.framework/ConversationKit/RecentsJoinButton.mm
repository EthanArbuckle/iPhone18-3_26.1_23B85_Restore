@interface RecentsJoinButton
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation RecentsJoinButton

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v9 = RecentsJoinButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(selfCopy, __PAIR128__(v8, v7));

  return v9;
}

@end