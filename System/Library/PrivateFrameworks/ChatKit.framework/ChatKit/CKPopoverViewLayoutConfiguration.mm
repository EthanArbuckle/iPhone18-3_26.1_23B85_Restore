@interface CKPopoverViewLayoutConfiguration
- (CGSize)optimalSizeForPreferredContentSize:(CGSize)result state:(unint64_t)a4;
- (CGSize)optimalSizeForPresentingAppInCompactStyle:(BOOL)a3;
- (CGSize)optimalSizeForPresentingSendMenuWithPreferredContentSize:(CGSize)a3;
@end

@implementation CKPopoverViewLayoutConfiguration

- (CGSize)optimalSizeForPresentingSendMenuWithPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CKPopoverViewLayoutConfiguration *)self minimumSendMenuDimension];
  if (width < v6)
  {
    width = v6;
  }

  if (height < v6)
  {
    height = v6;
  }

  [(CKPopoverViewLayoutConfiguration *)self maximumHeight];
  if (height >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = height;
  }

  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)optimalSizeForPresentingAppInCompactStyle:(BOOL)a3
{
  v3 = a3;
  [(CKPopoverViewLayoutConfiguration *)self preferredAppWidth];
  v6 = v5;
  if (v3)
  {
    [(CKPopoverViewLayoutConfiguration *)self defaultAppCompactHeight];
  }

  else
  {
    [(CKPopoverViewLayoutConfiguration *)self maximumHeight];
  }

  v8 = v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)optimalSizeForPreferredContentSize:(CGSize)result state:(unint64_t)a4
{
  if (a4 - 1 < 2)
  {
    [(CKPopoverViewLayoutConfiguration *)self optimalSizeForPresentingAppInCompactStyle:a4 == 1, result.width, result.height];
LABEL_5:
    v4 = v5;
    goto LABEL_6;
  }

  if (!a4)
  {
    [(CKPopoverViewLayoutConfiguration *)self optimalSizeForPresentingSendMenuWithPreferredContentSize:result.width, result.height];
    goto LABEL_5;
  }

LABEL_6:
  v6 = v4;
  result.height = v6;
  return result;
}

@end