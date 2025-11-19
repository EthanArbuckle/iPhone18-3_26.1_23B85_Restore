@interface HUQuickControlPresentationContext
- (CGRect)sourceRect;
- (UIViewController)sourceViewController;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUQuickControlPresentationContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setColorStyle:{-[HUQuickControlPresentationContext colorStyle](self, "colorStyle")}];
  v5 = [(HUQuickControlPresentationContext *)self item];
  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [(HUQuickControlPresentationContext *)self itemManager];

  if (v6)
  {
    v7 = [HUQuickControlPresentationItemManager alloc];
    v5 = [(HUQuickControlPresentationContext *)self itemManager];
    v8 = [v5 homeKitObjectUUID];
    v9 = [(HUQuickControlPresentationContext *)self itemManager];
    v10 = -[HUQuickControlPresentationItemManager initWithHomeKitObjectUUID:type:](v7, "initWithHomeKitObjectUUID:type:", v8, [v9 presentationItemType]);
    [v4 setItemManager:v10];

LABEL_4:
  }

  v11 = [(HUQuickControlPresentationContext *)self item];
  [v4 setItem:v11];

  v12 = [(HUQuickControlPresentationContext *)self controlItems];
  [v4 setControlItems:v12];

  v13 = [(HUQuickControlPresentationContext *)self home];
  [v4 setHome:v13];

  [(HUQuickControlPresentationContext *)self sourceRect];
  [v4 setSourceRect:?];
  v14 = [(HUQuickControlPresentationContext *)self sourceViewController];
  [v4 setSourceViewController:v14];

  [v4 setDidAuthenticate:{-[HUQuickControlPresentationContext didAuthenticate](self, "didAuthenticate")}];
  v15 = [(HUQuickControlPresentationContext *)self tappedArea];
  [v4 setTappedArea:v15];

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