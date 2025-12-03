@interface CNUIAvatarImage
- (CNUIAvatarImage)initWithImage:(id)image;
- (id)APNGRepresentation;
- (id)HEICRepresentation;
- (id)HEICSRepresentation;
@end

@implementation CNUIAvatarImage

- (CNUIAvatarImage)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = CNUIAvatarImage;
  v6 = [(CNUIAvatarImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiImage, image);
  }

  return v7;
}

- (id)HEICRepresentation
{
  uiImage = [(CNUIAvatarImage *)self uiImage];
  hEICRepresentation = [uiImage HEICRepresentation];

  return hEICRepresentation;
}

- (id)HEICSRepresentation
{
  uiImage = [(CNUIAvatarImage *)self uiImage];
  hEICSRepresentation = [uiImage HEICSRepresentation];

  return hEICSRepresentation;
}

- (id)APNGRepresentation
{
  uiImage = [(CNUIAvatarImage *)self uiImage];
  aPNGRepresentation = [uiImage APNGRepresentation];

  return aPNGRepresentation;
}

@end