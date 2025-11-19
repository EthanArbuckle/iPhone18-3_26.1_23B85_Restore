@interface HUCameraEventReachabilityCell
- (CALayer)badgeLayer;
- (HUCameraEventReachabilityCell)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (void)drawRect:(CGRect)a3;
- (void)updateWithReachabilityEventContainer:(id)a3 mode:(unint64_t)a4;
@end

@implementation HUCameraEventReachabilityCell

- (HUCameraEventReachabilityCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUCameraEventReachabilityCell;
  v3 = [(HUCameraEventReachabilityCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCameraEventReachabilityCell *)v3 setOpaque:0];
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
  CGContextSetLineDash(CurrentContext, 2.0, drawRect__lengths, 2uLL);
  v9 = [MEMORY[0x277D75208] bezierPath];
  [v9 setLineWidth:2.0];
  [v9 setLineCapStyle:1];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  [v9 moveToPoint:{0.0, MidY}];
  v11 = [(HUCameraEventReachabilityCell *)self needsFullDashedLineWidth];
  v12 = -9.0;
  if (v11)
  {
    v12 = 1.0;
  }

  [v9 addLineToPoint:{width + v12, MidY}];
  v16 = 0.0;
  v17 = 0.0;
  v15 = 0.0;
  v13 = [MEMORY[0x277D75348] systemRedColor];
  [v13 getRed:&v17 green:&v16 blue:&v15 alpha:0];

  v14 = [MEMORY[0x277D75348] colorWithRed:v17 green:v16 blue:v15 alpha:0.35];
  [v14 setStroke];

  [v9 stroke];
}

- (CALayer)badgeLayer
{
  badgeLayer = self->_badgeLayer;
  if (!badgeLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = [MEMORY[0x277D75348] clearColor];
    -[CALayer setBackgroundColor:](v4, "setBackgroundColor:", [v5 CGColor]);

    [(CALayer *)v4 setCornerRadius:9.0];
    [(CALayer *)v4 setOpaque:0];
    v6 = [(HUCameraEventReachabilityCell *)self layer];
    [v6 addSublayer:v4];

    v7 = HUImageNamed(@"CameraEventMarkerCameraOffline");
    [(HUCameraEventReachabilityCell *)self bounds];
    v9 = v8;
    v11 = v10;
    [v7 size];
    v13 = v12;
    [v7 size];
    [(CALayer *)v4 setFrame:v9 + 18.0, v11 * 0.5 + -9.0, v13, v14];
    -[CALayer setContents:](v4, "setContents:", [v7 CGImage]);
    [(CALayer *)v4 setHidden:1];
    v15 = self->_badgeLayer;
    self->_badgeLayer = v4;

    badgeLayer = self->_badgeLayer;
  }

  return badgeLayer;
}

- (void)updateWithReachabilityEventContainer:(id)a3 mode:(unint64_t)a4
{
  v9 = a3;
  [(HUCameraEventReachabilityCell *)self setDisplayMode:a4];
  [(HUCameraEventReachabilityCell *)self setReachabilityEvent:v9];
  v6 = [v9 endEvent];
  if (v6)
  {
    v7 = [v9 endEvent];
    -[HUCameraEventReachabilityCell setNeedsFullDashedLineWidth:](self, "setNeedsFullDashedLineWidth:", [v7 containerType] == 2);
  }

  else
  {
    [(HUCameraEventReachabilityCell *)self setNeedsFullDashedLineWidth:1];
  }

  if (!self->_badgeLayer)
  {
    v8 = [(HUCameraEventReachabilityCell *)self badgeLayer];
    [v8 setHidden:0];
  }

  [(HUCameraEventReachabilityCell *)self setNeedsDisplay];
}

- (id)accessibilityLabel
{
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(HUCameraEventReachabilityCell *)self reachabilityEvent];
    v5 = [v4 uniqueIdentifier];
    v6 = [(HUCameraEventReachabilityCell *)self reachabilityEvent];
    v7 = [v6 dateOfOccurrence];
    v8 = [v3 stringWithFormat:@"Reachability Event UUID:%@ Date:%@", v5, v7];
  }

  else
  {
    v4 = [(HUCameraEventReachabilityCell *)self reachabilityEvent];
    v8 = [v4 displayDescription];
  }

  return v8;
}

@end