@interface SeparatorLayer
+ (double)separatorHeight;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SeparatorLayer)initWithFrame:(CGRect)frame;
- (void)setAxis:(unint64_t)axis;
@end

@implementation SeparatorLayer

+ (double)separatorHeight
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = 1.0 / v3;

  return v4;
}

- (SeparatorLayer)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SeparatorLayer;
  v3 = [(SeparatorLayer *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SeparatorLayer *)v3 setAutoresizingMask:2];
    [(SeparatorLayer *)v4 setAxis:0];
    mailHeaderSeparatorLayerColor = [MEMORY[0x277D75348] mailHeaderSeparatorLayerColor];
    [(SeparatorLayer *)v4 setBackgroundColor:mailHeaderSeparatorLayerColor];
  }

  return v4;
}

- (void)setAxis:(unint64_t)axis
{
  self->_axis = axis;
  v5 = axis != 0;
  v6 = axis == 0;
  LODWORD(v3) = 1148846080;
  [(SeparatorLayer *)self setContentCompressionResistancePriority:v6 forAxis:v3];
  LODWORD(v7) = 1148846080;
  [(SeparatorLayer *)self setContentHuggingPriority:v6 forAxis:v7];
  LODWORD(v8) = 1132068864;
  [(SeparatorLayer *)self setContentCompressionResistancePriority:v5 forAxis:v8];
  LODWORD(v9) = 1132068864;
  [(SeparatorLayer *)self setContentHuggingPriority:v5 forAxis:v9];

  [(SeparatorLayer *)self invalidateIntrinsicContentSize];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  +[SeparatorLayer separatorHeight];
  v7 = v6;
  axis = self->_axis;
  if (axis == 1)
  {
    width = v6;
LABEL_5:
    v7 = height;
    goto LABEL_6;
  }

  if (axis)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = width;
  result.height = v7;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(SeparatorLayer *)self sizeThatFits:*MEMORY[0x277D77260], *MEMORY[0x277D77260]];
  result.height = v3;
  result.width = v2;
  return result;
}

@end