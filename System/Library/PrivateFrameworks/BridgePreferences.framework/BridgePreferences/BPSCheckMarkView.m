@interface BPSCheckMarkView
- (BPSCheckMarkView)initWithFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)checkedImage;
- (id)uncheckedImage;
- (void)layoutSubviews;
- (void)setIsChecked:(BOOL)a3;
@end

@implementation BPSCheckMarkView

- (BPSCheckMarkView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = BPSCheckMarkView;
  v3 = [(BPSCheckMarkView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [(BPSCheckMarkView *)v3 uncheckedImage];
    v6 = [v4 initWithImage:v5];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(BPSCheckMarkView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(BPSCheckMarkView *)self bounds];
  imageView = self->_imageView;

  [(UIImageView *)imageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 23.0;
  v4 = 23.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setIsChecked:(BOOL)a3
{
  self->_isChecked = a3;
  imageView = self->_imageView;
  if (a3)
  {
    [(BPSCheckMarkView *)self checkedImage];
  }

  else
  {
    [(BPSCheckMarkView *)self uncheckedImage];
  }
  v4 = ;
  [(UIImageView *)imageView setImage:v4];
}

- (id)checkedImage
{
  [(BPSCheckMarkView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  width = v12.width;
  height = v12.height;
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v6 = [(BPSCheckMarkView *)self tintColor];
  [v6 setFill];

  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = width;
  v13.size.height = height;
  CGContextFillEllipseInRect(CurrentContext, v13);
  v7 = [MEMORY[0x277D75348] whiteColor];
  [v7 setStroke];

  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 6.5, 12.0);
  CGPathAddLineToPoint(Mutable, 0, 9.5, 15.0);
  CGPathAddLineToPoint(Mutable, 0, 16.5, 8.5);
  CGContextSetLineCap(CurrentContext, kCGLineCapRound);
  CGContextSetLineWidth(CurrentContext, 1.5);
  CGContextAddPath(CurrentContext, Mutable);
  CGPathRelease(Mutable);
  CGContextStrokePath(CurrentContext);
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (id)uncheckedImage
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  [(BPSCheckMarkView *)self sizeThatFits:*MEMORY[0x277CBF3A8], v4];
  v6 = v5;
  v8 = v7;
  [(BPSCheckMarkView *)self sizeThatFits:v3, v4];
  UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v10 = [(BPSCheckMarkView *)self tintColor];
  [v10 setStroke];

  v15.size.width = v6 + -2.0;
  v15.size.height = v8 + -2.0;
  v15.origin.x = 1.0;
  v15.origin.y = 1.0;
  CGContextStrokeEllipseInRect(CurrentContext, v15);
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

@end