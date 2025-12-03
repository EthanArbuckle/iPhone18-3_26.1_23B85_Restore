@interface HUCameraEventReachabilityCell
- (CALayer)badgeLayer;
- (HUCameraEventReachabilityCell)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (void)drawRect:(CGRect)rect;
- (void)updateWithReachabilityEventContainer:(id)container mode:(unint64_t)mode;
@end

@implementation HUCameraEventReachabilityCell

- (HUCameraEventReachabilityCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUCameraEventReachabilityCell;
  v3 = [(HUCameraEventReachabilityCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCameraEventReachabilityCell *)v3 setOpaque:0];
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
  CGContextSetLineDash(CurrentContext, 2.0, drawRect__lengths, 2uLL);
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [bezierPath setLineWidth:2.0];
  [bezierPath setLineCapStyle:1];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  [bezierPath moveToPoint:{0.0, MidY}];
  needsFullDashedLineWidth = [(HUCameraEventReachabilityCell *)self needsFullDashedLineWidth];
  v12 = -9.0;
  if (needsFullDashedLineWidth)
  {
    v12 = 1.0;
  }

  [bezierPath addLineToPoint:{width + v12, MidY}];
  v16 = 0.0;
  v17 = 0.0;
  v15 = 0.0;
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [systemRedColor getRed:&v17 green:&v16 blue:&v15 alpha:0];

  v14 = [MEMORY[0x277D75348] colorWithRed:v17 green:v16 blue:v15 alpha:0.35];
  [v14 setStroke];

  [bezierPath stroke];
}

- (CALayer)badgeLayer
{
  badgeLayer = self->_badgeLayer;
  if (!badgeLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CALayer setBackgroundColor:](layer, "setBackgroundColor:", [clearColor CGColor]);

    [(CALayer *)layer setCornerRadius:9.0];
    [(CALayer *)layer setOpaque:0];
    layer2 = [(HUCameraEventReachabilityCell *)self layer];
    [layer2 addSublayer:layer];

    v7 = HUImageNamed(@"CameraEventMarkerCameraOffline");
    [(HUCameraEventReachabilityCell *)self bounds];
    v9 = v8;
    v11 = v10;
    [v7 size];
    v13 = v12;
    [v7 size];
    [(CALayer *)layer setFrame:v9 + 18.0, v11 * 0.5 + -9.0, v13, v14];
    -[CALayer setContents:](layer, "setContents:", [v7 CGImage]);
    [(CALayer *)layer setHidden:1];
    v15 = self->_badgeLayer;
    self->_badgeLayer = layer;

    badgeLayer = self->_badgeLayer;
  }

  return badgeLayer;
}

- (void)updateWithReachabilityEventContainer:(id)container mode:(unint64_t)mode
{
  containerCopy = container;
  [(HUCameraEventReachabilityCell *)self setDisplayMode:mode];
  [(HUCameraEventReachabilityCell *)self setReachabilityEvent:containerCopy];
  endEvent = [containerCopy endEvent];
  if (endEvent)
  {
    endEvent2 = [containerCopy endEvent];
    -[HUCameraEventReachabilityCell setNeedsFullDashedLineWidth:](self, "setNeedsFullDashedLineWidth:", [endEvent2 containerType] == 2);
  }

  else
  {
    [(HUCameraEventReachabilityCell *)self setNeedsFullDashedLineWidth:1];
  }

  if (!self->_badgeLayer)
  {
    badgeLayer = [(HUCameraEventReachabilityCell *)self badgeLayer];
    [badgeLayer setHidden:0];
  }

  [(HUCameraEventReachabilityCell *)self setNeedsDisplay];
}

- (id)accessibilityLabel
{
  if ([MEMORY[0x277D14CE8] isInternalInstall])
  {
    v3 = MEMORY[0x277CCACA8];
    reachabilityEvent = [(HUCameraEventReachabilityCell *)self reachabilityEvent];
    uniqueIdentifier = [reachabilityEvent uniqueIdentifier];
    reachabilityEvent2 = [(HUCameraEventReachabilityCell *)self reachabilityEvent];
    dateOfOccurrence = [reachabilityEvent2 dateOfOccurrence];
    displayDescription = [v3 stringWithFormat:@"Reachability Event UUID:%@ Date:%@", uniqueIdentifier, dateOfOccurrence];
  }

  else
  {
    reachabilityEvent = [(HUCameraEventReachabilityCell *)self reachabilityEvent];
    displayDescription = [reachabilityEvent displayDescription];
  }

  return displayDescription;
}

@end