@interface CKUIBehaviorPhone
- (CGSize)detonatedItemBalloonViewSize;
- (CGSize)detonatedItemDocumentIconSize;
- (double)welcomeViewContentViewLeadingAnchorLayoutConstraintConstant;
- (double)welcomeViewContentViewTopAnchorLayoutConstraintConstant;
- (double)whatsNewViewBulletPointSymbolLeadingAnchorLayoutConstraintConstant;
- (double)whatsNewViewBulletPointTextTrailingAnchorLayoutConstraintConstant;
- (id)whatsNewViewApplePayImage;
@end

@implementation CKUIBehaviorPhone

- (double)welcomeViewContentViewLeadingAnchorLayoutConstraintConstant
{
  v7.receiver = self;
  v7.super_class = CKUIBehaviorPhone;
  [(CKUIBehavior *)&v7 welcomeViewContentViewLeadingAnchorLayoutConstraintConstant];
  v3 = v2;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  ck_screenSizeCategory = [mainScreen ck_screenSizeCategory];

  result = 16.0;
  if (ck_screenSizeCategory != 1)
  {
    return v3;
  }

  return result;
}

- (double)welcomeViewContentViewTopAnchorLayoutConstraintConstant
{
  v7.receiver = self;
  v7.super_class = CKUIBehaviorPhone;
  [(CKUIBehavior *)&v7 welcomeViewContentViewTopAnchorLayoutConstraintConstant];
  v3 = v2;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  ck_screenSizeCategory = [mainScreen ck_screenSizeCategory];

  result = 88.0;
  if (ck_screenSizeCategory != 4)
  {
    return v3;
  }

  return result;
}

- (double)whatsNewViewBulletPointSymbolLeadingAnchorLayoutConstraintConstant
{
  v7.receiver = self;
  v7.super_class = CKUIBehaviorPhone;
  [(CKUIBehavior *)&v7 whatsNewViewBulletPointSymbolLeadingAnchorLayoutConstraintConstant];
  v3 = v2;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  ck_screenSizeCategory = [mainScreen ck_screenSizeCategory];

  result = 16.0;
  if (ck_screenSizeCategory != 1)
  {
    return v3;
  }

  return result;
}

- (double)whatsNewViewBulletPointTextTrailingAnchorLayoutConstraintConstant
{
  v7.receiver = self;
  v7.super_class = CKUIBehaviorPhone;
  [(CKUIBehavior *)&v7 whatsNewViewBulletPointTextTrailingAnchorLayoutConstraintConstant];
  v3 = v2;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  ck_screenSizeCategory = [mainScreen ck_screenSizeCategory];

  result = 16.0;
  if (ck_screenSizeCategory != 1)
  {
    return v3;
  }

  return result;
}

- (id)whatsNewViewApplePayImage
{
  v7.receiver = self;
  v7.super_class = CKUIBehaviorPhone;
  whatsNewViewApplePayImage = [(CKUIBehavior *)&v7 whatsNewViewApplePayImage];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  ck_screenSizeCategory = [mainScreen ck_screenSizeCategory];

  if (ck_screenSizeCategory == 4)
  {
    v5 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"CKSurfEducationScreen_D22"];

    whatsNewViewApplePayImage = v5;
  }

  return whatsNewViewApplePayImage;
}

- (CGSize)detonatedItemBalloonViewSize
{
  if (detonatedItemBalloonViewSize_once != -1)
  {
    [CKUIBehaviorPhone detonatedItemBalloonViewSize];
  }

  v2 = *&detonatedItemBalloonViewSize_sBehavior_0;
  v3 = *&detonatedItemBalloonViewSize_sBehavior_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)detonatedItemDocumentIconSize
{
  if (detonatedItemDocumentIconSize_once != -1)
  {
    [CKUIBehaviorPhone detonatedItemDocumentIconSize];
  }

  v2 = *&detonatedItemDocumentIconSize_sBehavior_0;
  v3 = *&detonatedItemDocumentIconSize_sBehavior_1;
  result.height = v3;
  result.width = v2;
  return result;
}

@end