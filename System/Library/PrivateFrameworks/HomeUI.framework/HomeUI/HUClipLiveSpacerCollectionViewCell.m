@interface HUClipLiveSpacerCollectionViewCell
- (HUClipLiveSpacerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation HUClipLiveSpacerCollectionViewCell

- (HUClipLiveSpacerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUClipLiveSpacerCollectionViewCell;
  v3 = [(HUClipLiveSpacerCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUClipLiveSpacerCollectionViewCell *)v3 setOpaque:0];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineDash(CurrentContext, 2.0, drawRect__lengths_1, 2uLL);
  v8 = [MEMORY[0x277D75208] bezierPath];
  [v8 setLineWidth:2.0];
  [v8 setLineCapStyle:1];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);
  [v8 moveToPoint:{0.0, MidY}];
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  *&y = CGRectGetMaxX(v15) + -1.0;
  [v8 addLineToPoint:{width, MidY}];
  v10 = [MEMORY[0x277D75348] systemGrayColor];
  [v10 setStroke];

  [v8 stroke];
  v12 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*&y cornerRadius:{7.0, 1.0, height + -14.0, 2.0}];

  v11 = [MEMORY[0x277D75348] systemOrangeColor];
  [v11 setStroke];

  CGContextSetLineDash(CurrentContext, 0.0, 0, 0);
  [v12 stroke];
}

@end