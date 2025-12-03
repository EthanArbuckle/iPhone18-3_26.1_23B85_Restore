@interface CNUIAvatarLayoutLayerItem
- (CNUIAvatarLayoutLayerItem)initWithLayer:(id)layer;
- (void)resetToken;
@end

@implementation CNUIAvatarLayoutLayerItem

- (CNUIAvatarLayoutLayerItem)initWithLayer:(id)layer
{
  layerCopy = layer;
  v10.receiver = self;
  v10.super_class = CNUIAvatarLayoutLayerItem;
  v6 = [(CNUIAvatarLayoutLayerItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layer, layer);
    v8 = v7;
  }

  return v7;
}

- (void)resetToken
{
  avatarImageRendererToken = [(CNUIAvatarLayoutLayerItem *)self avatarImageRendererToken];
  [avatarImageRendererToken cancel];

  [(CNUIAvatarLayoutLayerItem *)self setAvatarImageRendererToken:0];
}

@end