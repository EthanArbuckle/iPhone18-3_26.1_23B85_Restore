@interface CKTitleIcon
- (BOOL)isEqual:(id)equal;
- (CKTitleIcon)initWithTitleIconImageType:(int64_t)type;
- (NSString)imageName;
- (UIColor)preferredColor;
- (UIImage)image;
@end

@implementation CKTitleIcon

- (CKTitleIcon)initWithTitleIconImageType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = CKTitleIcon;
  result = [(CKTitleIcon *)&v5 init];
  if (result)
  {
    result->_imageType = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    imageType = [(CKTitleIcon *)self imageType];
    imageType2 = [v5 imageType];

    v8 = imageType == imageType2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UIImage)image
{
  v2 = 0;
  imageType = self->_imageType;
  if (imageType > 3)
  {
    switch(imageType)
    {
      case 4:
        v6 = MEMORY[0x1E69DCAB8];
        v7 = @"checkmark.circle.fill";
        break;
      case 5:
        v6 = MEMORY[0x1E69DCAB8];
        v7 = @"exclamationmark.triangle.fill";
        break;
      case 6:
        v6 = MEMORY[0x1E69DCAB8];
        v7 = @"nosign";
        break;
      default:
        goto LABEL_16;
    }

    v2 = [v6 systemImageNamed:v7];
  }

  else
  {
    switch(imageType)
    {
      case 1:
        v4 = +[CKUIBehavior sharedBehaviors];
        businessVerifiedImageLarge = [v4 businessVerifiedImageLarge];
        break;
      case 2:
        v4 = +[CKUIBehavior sharedBehaviors];
        businessVerifiedImageLarge = [v4 navBarHeaderChevronImageNoAvatar];
        break;
      case 3:
        v4 = +[CKUIBehavior sharedBehaviors];
        businessVerifiedImageLarge = [v4 navBarHeaderOpaqueChevronImageNoAvatar];
        break;
      default:
        goto LABEL_16;
    }

    v2 = businessVerifiedImageLarge;
  }

LABEL_16:

  return v2;
}

- (NSString)imageName
{
  v2 = self->_imageType - 1;
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72EFBF8 + v2);
  }
}

- (UIColor)preferredColor
{
  navBarGrayColor = 0;
  imageType = self->_imageType;
  if (imageType <= 4)
  {
    if (imageType != 2 && imageType != 4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    navBarGrayColor = [theme navBarGrayColor];

    goto LABEL_9;
  }

  if (imageType == 5)
  {
    goto LABEL_8;
  }

  if (imageType == 6)
  {
    navBarGrayColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

LABEL_9:

  return navBarGrayColor;
}

@end