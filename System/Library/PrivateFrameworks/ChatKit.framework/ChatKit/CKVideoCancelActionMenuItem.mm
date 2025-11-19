@interface CKVideoCancelActionMenuItem
- (void)updateForState:(int64_t)a3 touchInside:(BOOL)a4;
@end

@implementation CKVideoCancelActionMenuItem

- (void)updateForState:(int64_t)a3 touchInside:(BOOL)a4
{
  v4 = a4;
  v5 = self;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      [(CKVideoCancelActionMenuItem *)self setTouchDownCount:[(CKVideoCancelActionMenuItem *)self touchDownCount]+ 1];
    }

    else if (a3 != 2)
    {
      return;
    }

    self = v5;
    v6 = v4;
    v7 = 1;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return;
    }

    v6 = 0;
    v7 = 0;
LABEL_10:

    [(CKActionMenuItem *)self setHighlighted:v6 animated:v7];
    return;
  }

  [(CKActionMenuItem *)self setHighlighted:0 animated:1];
  if (v4 && [(CKVideoCancelActionMenuItem *)v5 touchDownCount]>= 2)
  {

    [(CKActionMenuItem *)v5 sendAction];
  }
}

@end