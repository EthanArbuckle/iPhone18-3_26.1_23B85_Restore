@interface CKVideoCancelActionMenuItem
- (void)updateForState:(int64_t)state touchInside:(BOOL)inside;
@end

@implementation CKVideoCancelActionMenuItem

- (void)updateForState:(int64_t)state touchInside:(BOOL)inside
{
  insideCopy = inside;
  selfCopy = self;
  if (state <= 2)
  {
    if (state == 1)
    {
      [(CKVideoCancelActionMenuItem *)self setTouchDownCount:[(CKVideoCancelActionMenuItem *)self touchDownCount]+ 1];
    }

    else if (state != 2)
    {
      return;
    }

    self = selfCopy;
    v6 = insideCopy;
    v7 = 1;
    goto LABEL_10;
  }

  if (state != 3)
  {
    if (state != 4)
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
  if (insideCopy && [(CKVideoCancelActionMenuItem *)selfCopy touchDownCount]>= 2)
  {

    [(CKActionMenuItem *)selfCopy sendAction];
  }
}

@end