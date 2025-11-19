@interface CKTitleIcon
- (BOOL)isEqual:(id)a3;
- (CKTitleIcon)initWithTitleIconImageType:(int64_t)a3;
- (NSString)imageName;
- (UIColor)preferredColor;
- (UIImage)image;
@end

@implementation CKTitleIcon

- (CKTitleIcon)initWithTitleIconImageType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CKTitleIcon;
  result = [(CKTitleIcon *)&v5 init];
  if (result)
  {
    result->_imageType = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKTitleIcon *)self imageType];
    v7 = [v5 imageType];

    v8 = v6 == v7;
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
        v5 = [v4 businessVerifiedImageLarge];
        break;
      case 2:
        v4 = +[CKUIBehavior sharedBehaviors];
        v5 = [v4 navBarHeaderChevronImageNoAvatar];
        break;
      case 3:
        v4 = +[CKUIBehavior sharedBehaviors];
        v5 = [v4 navBarHeaderOpaqueChevronImageNoAvatar];
        break;
      default:
        goto LABEL_16;
    }

    v2 = v5;
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
  v2 = 0;
  imageType = self->_imageType;
  if (imageType <= 4)
  {
    if (imageType != 2 && imageType != 4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v2 = [v5 navBarGrayColor];

    goto LABEL_9;
  }

  if (imageType == 5)
  {
    goto LABEL_8;
  }

  if (imageType == 6)
  {
    v2 = [MEMORY[0x1E69DC888] systemRedColor];
  }

LABEL_9:

  return v2;
}

@end