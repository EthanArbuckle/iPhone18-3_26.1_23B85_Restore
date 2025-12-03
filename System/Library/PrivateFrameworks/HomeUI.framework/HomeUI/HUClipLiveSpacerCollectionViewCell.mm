@interface HUClipLiveSpacerCollectionViewCell
- (HUClipLiveSpacerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation HUClipLiveSpacerCollectionViewCell

- (HUClipLiveSpacerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUClipLiveSpacerCollectionViewCell;
  v3 = [(HUClipLiveSpacerCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUClipLiveSpacerCollectionViewCell *)v3 setOpaque:0];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineDash(CurrentContext, 2.0, drawRect__lengths_1, 2uLL);
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [bezierPath setLineWidth:2.0];
  [bezierPath setLineCapStyle:1];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);
  [bezierPath moveToPoint:{0.0, MidY}];
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  *&y = CGRectGetMaxX(v15) + -1.0;
  [bezierPath addLineToPoint:{width, MidY}];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [systemGrayColor setStroke];

  [bezierPath stroke];
  v12 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*&y cornerRadius:{7.0, 1.0, height + -14.0, 2.0}];

  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [systemOrangeColor setStroke];

  CGContextSetLineDash(CurrentContext, 0.0, 0, 0);
  [v12 stroke];
}

@end