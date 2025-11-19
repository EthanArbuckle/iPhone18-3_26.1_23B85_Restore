@interface HUAccessoryRepresentableItemModule
- (HUAccessoryRepresentableItemModule)initWithContext:(id)a3 in:(id)a4 itemUpdater:(id)a5;
@end

@implementation HUAccessoryRepresentableItemModule

- (HUAccessoryRepresentableItemModule)initWithContext:(id)a3 in:(id)a4 itemUpdater:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  return AccessoryRepresentableItemModule.init(context:in:itemUpdater:)(v7, v8, a5);
}

@end