@interface CNUIAvatarImage
- (CNUIAvatarImage)initWithImage:(id)a3;
- (id)APNGRepresentation;
- (id)HEICRepresentation;
- (id)HEICSRepresentation;
@end

@implementation CNUIAvatarImage

- (CNUIAvatarImage)initWithImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIAvatarImage;
  v6 = [(CNUIAvatarImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiImage, a3);
  }

  return v7;
}

- (id)HEICRepresentation
{
  v2 = [(CNUIAvatarImage *)self uiImage];
  v3 = [v2 HEICRepresentation];

  return v3;
}

- (id)HEICSRepresentation
{
  v2 = [(CNUIAvatarImage *)self uiImage];
  v3 = [v2 HEICSRepresentation];

  return v3;
}

- (id)APNGRepresentation
{
  v2 = [(CNUIAvatarImage *)self uiImage];
  v3 = [v2 APNGRepresentation];

  return v3;
}

@end