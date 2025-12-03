@interface PHRingHighlightView
+ (CGSize)ringSize;
+ (id)createRingImageWithSize:(CGSize)size strokeWidth:(double)width color:(id)color;
+ (id)ringImageForDodge;
+ (id)ringImageForLuminance;
- (CGSize)intrinsicContentSize;
- (PHRingHighlightView)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation PHRingHighlightView

+ (CGSize)ringSize
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 480.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 1024.0;
  }

  *&v8 = 75.0;
  if (v4 <= v7)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v8 = *(&unk_2429ED280 + ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1));
  }

  v11 = *&v8;
  v12 = *&v8;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (id)ringImageForLuminance
{
  v3 = ringImageForLuminance;
  if (!ringImageForLuminance)
  {
    [self ringSize];
    v5 = v4;
    v7 = v6;
    [self ringStroke];
    v9 = v8;
    colorForLuminance = [self colorForLuminance];
    v11 = [self createRingImageWithSize:colorForLuminance strokeWidth:v5 color:{v7, v9}];
    v12 = ringImageForLuminance;
    ringImageForLuminance = v11;

    v3 = ringImageForLuminance;
  }

  return v3;
}

+ (id)ringImageForDodge
{
  v3 = ringImageForDodge;
  if (!ringImageForDodge)
  {
    [self ringSize];
    v5 = v4;
    v7 = v6;
    [self ringStroke];
    v9 = v8;
    colorForDodge = [self colorForDodge];
    v11 = [self createRingImageWithSize:colorForDodge strokeWidth:v5 color:{v7, v9}];
    v12 = ringImageForDodge;
    ringImageForDodge = v11;

    v3 = ringImageForDodge;
  }

  return v3;
}

+ (id)createRingImageWithSize:(CGSize)size strokeWidth:(double)width color:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectInset(v23, width, width);
  x = v24.origin.x;
  y = v24.origin.y;
  v12 = v24.size.width;
  v13 = v24.size.height;
  v24.origin.x = width;
  v24.origin.y = height;
  UIGraphicsBeginImageContextWithOptions(v24.origin, 0, 0.0);
  v14 = MEMORY[0x277D75208];
  [self ringCornerRadius];
  v16 = [v14 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, v15}];
  v17 = MEMORY[0x277D75208];
  [self ringCornerRadius];
  v19 = [v17 bezierPathWithRoundedRect:x cornerRadius:{y, v12, v13, v18 - width}];
  [v16 appendPath:v19];

  [v16 setUsesEvenOddFillRule:1];
  [colorCopy setFill];

  [v16 fill];
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v20;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  [MEMORY[0x277CD9FF0] begin];
  v5 = MEMORY[0x277CD9FF0];
  LODWORD(v6) = 1043207291;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v5 setValue:v7 forKey:*MEMORY[0x277CDA908]];

  v8 = 0.0;
  if (selectedCopy)
  {
    [(CALayer *)self->_highlightDodgeLayer setOpacity:0.0];
    LODWORD(v8) = 1.0;
  }

  [(CALayer *)self->_selectionLayer setOpacity:v8];
  v9 = MEMORY[0x277CD9FF0];

  [v9 commit];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [MEMORY[0x277CD9FF0] begin];
  v5 = MEMORY[0x277CD9FF0];
  LODWORD(v6) = 1043207291;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v5 setValue:v7 forKey:*MEMORY[0x277CDA908]];

  if (highlightedCopy)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(CALayer *)self->_highlightDodgeLayer setOpacity:COERCE_DOUBLE(LODWORD(v8))];
  *&v9 = v8;
  [(CALayer *)self->_highlightLuminanceLayer setOpacity:v9];
  v10 = MEMORY[0x277CD9FF0];

  [v10 commit];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  v12.receiver = self;
  v12.super_class = PHRingHighlightView;
  [(PHRingHighlightView *)&v12 setUserInteractionEnabled:?];
  [MEMORY[0x277CD9FF0] begin];
  v5 = MEMORY[0x277CD9FF0];
  LODWORD(v6) = 1043207291;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v5 setValue:v7 forKey:*MEMORY[0x277CDA908]];

  v9 = 1.0;
  if (!enabled)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v9 = flt_2429ED270[[currentDevice _graphicsQuality] == 10];
  }

  *&v8 = v9;
  [(CALayer *)self->_luminanceRingLayer setOpacity:v8];
  *&v11 = v9;
  [(CALayer *)self->_dodgeRingLayer setOpacity:v11];
  [MEMORY[0x277CD9FF0] commit];
}

- (PHRingHighlightView)initWithFrame:(CGRect)frame
{
  v60.receiver = self;
  v60.super_class = PHRingHighlightView;
  v3 = [(PHRingHighlightView *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHRingHighlightView *)v3 setUserInteractionEnabled:0];
    [(PHRingHighlightView *)v4 setOpaque:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(PHRingHighlightView *)v4 setBackgroundColor:clearColor];

    layer = [(PHRingHighlightView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(PHRingHighlightView *)v4 layer];
    [layer2 setAllowsGroupOpacity:0];

    layer3 = [MEMORY[0x277CD9ED0] layer];
    luminanceRingLayer = v4->_luminanceRingLayer;
    v4->_luminanceRingLayer = layer3;

    ringImageForLuminance = [objc_opt_class() ringImageForLuminance];
    -[CALayer setContents:](v4->_luminanceRingLayer, "setContents:", [ringImageForLuminance CGImage]);

    v11 = *MEMORY[0x277CDA5E8];
    v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    [(CALayer *)v4->_luminanceRingLayer setCompositingFilter:v12];

    [objc_opt_class() ringSize];
    v14 = v13;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_luminanceRingLayer setFrame:0.0, 0.0, v14, v15];
    layer4 = [(PHRingHighlightView *)v4 layer];
    [layer4 addSublayer:v4->_luminanceRingLayer];

    layer5 = [MEMORY[0x277CD9ED0] layer];
    dodgeRingLayer = v4->_dodgeRingLayer;
    v4->_dodgeRingLayer = layer5;

    ringImageForDodge = [objc_opt_class() ringImageForDodge];
    -[CALayer setContents:](v4->_dodgeRingLayer, "setContents:", [ringImageForDodge CGImage]);

    v20 = *MEMORY[0x277CDA2A8];
    v21 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2A8]];
    [(CALayer *)v4->_dodgeRingLayer setCompositingFilter:v21];

    [objc_opt_class() ringSize];
    v23 = v22;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_dodgeRingLayer setFrame:0.0, 0.0, v23, v24];
    layer6 = [(PHRingHighlightView *)v4 layer];
    [layer6 addSublayer:v4->_dodgeRingLayer];

    layer7 = [MEMORY[0x277CD9ED0] layer];
    highlightDodgeLayer = v4->_highlightDodgeLayer;
    v4->_highlightDodgeLayer = layer7;

    colorForDodge = [objc_opt_class() colorForDodge];
    -[CALayer setBackgroundColor:](v4->_highlightDodgeLayer, "setBackgroundColor:", [colorForDodge CGColor]);

    v29 = [MEMORY[0x277CD9EA0] filterWithType:v20];
    [(CALayer *)v4->_highlightDodgeLayer setCompositingFilter:v29];

    [objc_opt_class() ringSize];
    v31 = v30;
    [objc_opt_class() ringSize];
    v33 = v32;
    [objc_opt_class() ringStroke];
    v35 = v34;
    [objc_opt_class() ringStroke];
    v37 = v36;
    v61.origin.x = 0.0;
    v61.origin.y = 0.0;
    v61.size.width = v31;
    v61.size.height = v33;
    v62 = CGRectInset(v61, v35, v37);
    width = v62.size.width;
    height = v62.size.height;
    [objc_opt_class() ringStroke];
    v41 = v40;
    [objc_opt_class() ringStroke];
    [(CALayer *)v4->_highlightDodgeLayer setFrame:v41, v42, width, height];
    [objc_opt_class() ringCornerRadius];
    v44 = v43;
    [objc_opt_class() ringStroke];
    [(CALayer *)v4->_highlightDodgeLayer setCornerRadius:v44 - v45];
    [(CALayer *)v4->_highlightDodgeLayer setOpacity:0.0];
    layer8 = [(PHRingHighlightView *)v4 layer];
    [layer8 addSublayer:v4->_highlightDodgeLayer];

    layer9 = [MEMORY[0x277CD9ED0] layer];
    highlightLuminanceLayer = v4->_highlightLuminanceLayer;
    v4->_highlightLuminanceLayer = layer9;

    colorForLuminance = [objc_opt_class() colorForLuminance];
    -[CALayer setBackgroundColor:](v4->_highlightLuminanceLayer, "setBackgroundColor:", [colorForLuminance CGColor]);

    v50 = [MEMORY[0x277CD9EA0] filterWithType:v11];
    [(CALayer *)v4->_highlightLuminanceLayer setCompositingFilter:v50];

    [(CALayer *)v4->_highlightDodgeLayer frame];
    [(CALayer *)v4->_highlightLuminanceLayer setFrame:?];
    [(CALayer *)v4->_highlightDodgeLayer cornerRadius];
    [(CALayer *)v4->_highlightLuminanceLayer setCornerRadius:?];
    [(CALayer *)v4->_highlightLuminanceLayer setOpacity:0.0];
    layer10 = [(PHRingHighlightView *)v4 layer];
    [layer10 insertSublayer:v4->_highlightLuminanceLayer below:v4->_highlightDodgeLayer];

    layer11 = [MEMORY[0x277CD9ED0] layer];
    selectionLayer = v4->_selectionLayer;
    v4->_selectionLayer = layer11;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    -[CALayer setBackgroundColor:](v4->_selectionLayer, "setBackgroundColor:", [whiteColor CGColor]);

    [objc_opt_class() ringSize];
    v56 = v55;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_selectionLayer setFrame:0.0, 0.0, v56, v57];
    [objc_opt_class() ringCornerRadius];
    [(CALayer *)v4->_selectionLayer setCornerRadius:?];
    [(CALayer *)v4->_selectionLayer setOpacity:0.0];
    layer12 = [(PHRingHighlightView *)v4 layer];
    [layer12 addSublayer:v4->_selectionLayer];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 ringSize];
  result.height = v4;
  result.width = v3;
  return result;
}

@end