@interface HUCameraEventSpacerCell
- (HUCameraEventSpacerCell)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)updateWithRecordingEvent:(id)event previousEvent:(id)previousEvent spanningMultipleDays:(BOOL)days;
@end

@implementation HUCameraEventSpacerCell

- (HUCameraEventSpacerCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUCameraEventSpacerCell;
  v3 = [(HUCameraEventSpacerCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCameraEventSpacerCell *)v3 setOpaque:0];
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
  CGContextSetLineDash(CurrentContext, 2.0, drawRect__lengths_0, 2uLL);
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [bezierPath setLineWidth:2.0];
  [bezierPath setLineCapStyle:1];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidY = CGRectGetMidY(v21);
  [bezierPath moveToPoint:{0.0, MidY}];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidX = CGRectGetMidX(v22);
  if ([(HUCameraEventSpacerCell *)self spansMultipleDays])
  {
    [bezierPath moveToPoint:{2.0, MidY}];
    [bezierPath addLineToPoint:{MidX + -3.0, MidY}];
    [bezierPath moveToPoint:{MidX + 3.0, MidY}];
  }

  needsFullDashedLineWidth = [(HUCameraEventSpacerCell *)self needsFullDashedLineWidth];
  v13 = -9.0;
  if (needsFullDashedLineWidth)
  {
    v13 = 1.0;
  }

  [bezierPath addLineToPoint:{width + v13, MidY}];
  v19 = 0.0;
  v20 = 0.0;
  v18 = 0.0;
  systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
  [systemMidGrayColor getRed:&v20 green:&v19 blue:&v18 alpha:0];

  v15 = [MEMORY[0x277D75348] colorWithRed:v20 green:v19 blue:v18 alpha:0.35];
  [v15 setStroke];

  [bezierPath stroke];
  if ([(HUCameraEventSpacerCell *)self spansMultipleDays])
  {
    v16 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:MidX cornerRadius:{7.0, 1.0, 33.0, 2.0}];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [systemWhiteColor setStroke];

    CGContextSetLineDash(CurrentContext, 0.0, 0, 0);
    [v16 stroke];
    bezierPath = v16;
  }
}

- (void)updateWithRecordingEvent:(id)event previousEvent:(id)previousEvent spanningMultipleDays:(BOOL)days
{
  daysCopy = days;
  containerType = [event containerType];
  if ([(HUCameraEventSpacerCell *)self spansMultipleDays]!= daysCopy || (containerType == 2) != [(HUCameraEventSpacerCell *)self needsFullDashedLineWidth])
  {
    [(HUCameraEventSpacerCell *)self setSpansMultipleDays:daysCopy];
    [(HUCameraEventSpacerCell *)self setNeedsFullDashedLineWidth:containerType == 2];

    [(HUCameraEventSpacerCell *)self setNeedsDisplay];
  }
}

@end