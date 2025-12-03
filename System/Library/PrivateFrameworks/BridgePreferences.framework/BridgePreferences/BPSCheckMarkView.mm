@interface BPSCheckMarkView
- (BPSCheckMarkView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)checkedImage;
- (id)uncheckedImage;
- (void)layoutSubviews;
- (void)setIsChecked:(BOOL)checked;
@end

@implementation BPSCheckMarkView

- (BPSCheckMarkView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = BPSCheckMarkView;
  v3 = [(BPSCheckMarkView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    uncheckedImage = [(BPSCheckMarkView *)v3 uncheckedImage];
    v6 = [v4 initWithImage:uncheckedImage];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 23.0;
  v4 = 23.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setIsChecked:(BOOL)checked
{
  self->_isChecked = checked;
  imageView = self->_imageView;
  if (checked)
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
  tintColor = [(BPSCheckMarkView *)self tintColor];
  [tintColor setFill];

  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = width;
  v13.size.height = height;
  CGContextFillEllipseInRect(CurrentContext, v13);
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [whiteColor setStroke];

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
  tintColor = [(BPSCheckMarkView *)self tintColor];
  [tintColor setStroke];

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