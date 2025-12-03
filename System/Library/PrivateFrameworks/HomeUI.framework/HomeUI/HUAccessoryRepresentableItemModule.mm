@interface HUAccessoryRepresentableItemModule
- (HUAccessoryRepresentableItemModule)initWithContext:(id)context in:(id)in itemUpdater:(id)updater;
@end

@implementation HUAccessoryRepresentableItemModule

- (HUAccessoryRepresentableItemModule)initWithContext:(id)context in:(id)in itemUpdater:(id)updater
{
  contextCopy = context;
  inCopy = in;
  swift_unknownObjectRetain();
  return AccessoryRepresentableItemModule.init(context:in:itemUpdater:)(contextCopy, inCopy, updater);
}

@end