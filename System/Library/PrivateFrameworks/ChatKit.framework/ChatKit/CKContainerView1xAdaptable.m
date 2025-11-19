@interface CKContainerView1xAdaptable
- (void)setFrame:(CGRect)a3;
@end

@implementation CKContainerView1xAdaptable

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CKContainerView1xAdaptable *)self traitCollection];
  [v8 displayScale];
  v10 = round(x * v9) / v9;
  v11 = round(y * v9) / v9;
  v12 = round(width * v9) / v9;
  v13 = round(height * v9) / v9;

  v14.receiver = self;
  v14.super_class = CKContainerView1xAdaptable;
  [(CKContainerView1xAdaptable *)&v14 setFrame:v10, v11, v12, v13];
}

@end