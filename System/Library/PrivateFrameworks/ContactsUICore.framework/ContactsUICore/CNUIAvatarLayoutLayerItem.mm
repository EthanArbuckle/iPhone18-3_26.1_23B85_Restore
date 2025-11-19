@interface CNUIAvatarLayoutLayerItem
- (CNUIAvatarLayoutLayerItem)initWithLayer:(id)a3;
- (void)resetToken;
@end

@implementation CNUIAvatarLayoutLayerItem

- (CNUIAvatarLayoutLayerItem)initWithLayer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUIAvatarLayoutLayerItem;
  v6 = [(CNUIAvatarLayoutLayerItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layer, a3);
    v8 = v7;
  }

  return v7;
}

- (void)resetToken
{
  v3 = [(CNUIAvatarLayoutLayerItem *)self avatarImageRendererToken];
  [v3 cancel];

  [(CNUIAvatarLayoutLayerItem *)self setAvatarImageRendererToken:0];
}

@end