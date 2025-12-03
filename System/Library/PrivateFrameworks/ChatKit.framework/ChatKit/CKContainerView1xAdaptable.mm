@interface CKContainerView1xAdaptable
- (void)setFrame:(CGRect)frame;
@end

@implementation CKContainerView1xAdaptable

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  traitCollection = [(CKContainerView1xAdaptable *)self traitCollection];
  [traitCollection displayScale];
  v10 = round(x * v9) / v9;
  v11 = round(y * v9) / v9;
  v12 = round(width * v9) / v9;
  v13 = round(height * v9) / v9;

  v14.receiver = self;
  v14.super_class = CKContainerView1xAdaptable;
  [(CKContainerView1xAdaptable *)&v14 setFrame:v10, v11, v12, v13];
}

@end