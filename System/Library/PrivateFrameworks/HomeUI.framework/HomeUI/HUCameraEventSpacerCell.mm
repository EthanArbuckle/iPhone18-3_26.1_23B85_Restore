@interface HUCameraEventSpacerCell
- (HUCameraEventSpacerCell)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)updateWithRecordingEvent:(id)a3 previousEvent:(id)a4 spanningMultipleDays:(BOOL)a5;
@end

@implementation HUCameraEventSpacerCell

- (HUCameraEventSpacerCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUCameraEventSpacerCell;
  v3 = [(HUCameraEventSpacerCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCameraEventSpacerCell *)v3 setOpaque:0];
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
  CGContextSetLineDash(CurrentContext, 2.0, drawRect__lengths_0, 2uLL);
  v9 = [MEMORY[0x277D75208] bezierPath];
  [v9 setLineWidth:2.0];
  [v9 setLineCapStyle:1];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidY = CGRectGetMidY(v21);
  [v9 moveToPoint:{0.0, MidY}];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidX = CGRectGetMidX(v22);
  if ([(HUCameraEventSpacerCell *)self spansMultipleDays])
  {
    [v9 moveToPoint:{2.0, MidY}];
    [v9 addLineToPoint:{MidX + -3.0, MidY}];
    [v9 moveToPoint:{MidX + 3.0, MidY}];
  }

  v12 = [(HUCameraEventSpacerCell *)self needsFullDashedLineWidth];
  v13 = -9.0;
  if (v12)
  {
    v13 = 1.0;
  }

  [v9 addLineToPoint:{width + v13, MidY}];
  v19 = 0.0;
  v20 = 0.0;
  v18 = 0.0;
  v14 = [MEMORY[0x277D75348] systemMidGrayColor];
  [v14 getRed:&v20 green:&v19 blue:&v18 alpha:0];

  v15 = [MEMORY[0x277D75348] colorWithRed:v20 green:v19 blue:v18 alpha:0.35];
  [v15 setStroke];

  [v9 stroke];
  if ([(HUCameraEventSpacerCell *)self spansMultipleDays])
  {
    v16 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:MidX cornerRadius:{7.0, 1.0, 33.0, 2.0}];

    v17 = [MEMORY[0x277D75348] systemWhiteColor];
    [v17 setStroke];

    CGContextSetLineDash(CurrentContext, 0.0, 0, 0);
    [v16 stroke];
    v9 = v16;
  }
}

- (void)updateWithRecordingEvent:(id)a3 previousEvent:(id)a4 spanningMultipleDays:(BOOL)a5
{
  v5 = a5;
  v7 = [a3 containerType];
  if ([(HUCameraEventSpacerCell *)self spansMultipleDays]!= v5 || (v7 == 2) != [(HUCameraEventSpacerCell *)self needsFullDashedLineWidth])
  {
    [(HUCameraEventSpacerCell *)self setSpansMultipleDays:v5];
    [(HUCameraEventSpacerCell *)self setNeedsFullDashedLineWidth:v7 == 2];

    [(HUCameraEventSpacerCell *)self setNeedsDisplay];
  }
}

@end