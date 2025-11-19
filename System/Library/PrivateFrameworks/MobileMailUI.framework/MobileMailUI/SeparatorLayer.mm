@interface SeparatorLayer
+ (double)separatorHeight;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SeparatorLayer)initWithFrame:(CGRect)a3;
- (void)setAxis:(unint64_t)a3;
@end

@implementation SeparatorLayer

+ (double)separatorHeight
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = 1.0 / v3;

  return v4;
}

- (SeparatorLayer)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SeparatorLayer;
  v3 = [(SeparatorLayer *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SeparatorLayer *)v3 setAutoresizingMask:2];
    [(SeparatorLayer *)v4 setAxis:0];
    v5 = [MEMORY[0x277D75348] mailHeaderSeparatorLayerColor];
    [(SeparatorLayer *)v4 setBackgroundColor:v5];
  }

  return v4;
}

- (void)setAxis:(unint64_t)a3
{
  self->_axis = a3;
  v5 = a3 != 0;
  v6 = a3 == 0;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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