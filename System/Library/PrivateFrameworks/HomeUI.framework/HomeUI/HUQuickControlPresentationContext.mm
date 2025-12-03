@interface HUQuickControlPresentationContext
- (CGRect)sourceRect;
- (UIViewController)sourceViewController;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUQuickControlPresentationContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setColorStyle:{-[HUQuickControlPresentationContext colorStyle](self, "colorStyle")}];
  item = [(HUQuickControlPresentationContext *)self item];
  if (item)
  {
    goto LABEL_4;
  }

  itemManager = [(HUQuickControlPresentationContext *)self itemManager];

  if (itemManager)
  {
    v7 = [HUQuickControlPresentationItemManager alloc];
    item = [(HUQuickControlPresentationContext *)self itemManager];
    homeKitObjectUUID = [item homeKitObjectUUID];
    itemManager2 = [(HUQuickControlPresentationContext *)self itemManager];
    v10 = -[HUQuickControlPresentationItemManager initWithHomeKitObjectUUID:type:](v7, "initWithHomeKitObjectUUID:type:", homeKitObjectUUID, [itemManager2 presentationItemType]);
    [v4 setItemManager:v10];

LABEL_4:
  }

  item2 = [(HUQuickControlPresentationContext *)self item];
  [v4 setItem:item2];

  controlItems = [(HUQuickControlPresentationContext *)self controlItems];
  [v4 setControlItems:controlItems];

  home = [(HUQuickControlPresentationContext *)self home];
  [v4 setHome:home];

  [(HUQuickControlPresentationContext *)self sourceRect];
  [v4 setSourceRect:?];
  sourceViewController = [(HUQuickControlPresentationContext *)self sourceViewController];
  [v4 setSourceViewController:sourceViewController];

  [v4 setDidAuthenticate:{-[HUQuickControlPresentationContext didAuthenticate](self, "didAuthenticate")}];
  tappedArea = [(HUQuickControlPresentationContext *)self tappedArea];
  [v4 setTappedArea:tappedArea];

  [v4 setPrefersSystemTransitions:{-[HUQuickControlPresentationContext prefersSystemTransitions](self, "prefersSystemTransitions")}];
  [v4 setShouldIncludeRoomNameInHeaderTitle:{-[HUQuickControlPresentationContext shouldIncludeRoomNameInHeaderTitle](self, "shouldIncludeRoomNameInHeaderTitle")}];
  [v4 setIsItemDisplayedByPrediction:{-[HUQuickControlPresentationContext isItemDisplayedByPrediction](self, "isItemDisplayedByPrediction")}];
  return v4;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIViewController)sourceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceViewController);

  return WeakRetained;
}

@end