@interface GKButtonStyle
+ (id)defaultStyle;
+ (id)standardStyle;
- (GKButtonStyle)initWithCornerRadius:(double)radius andBackgroundColor:(id)color;
- (UIEdgeInsets)titleEdgeInsets;
- (void)applyToButton:(id)button;
@end

@implementation GKButtonStyle

+ (id)defaultStyle
{
  v2 = [GKButtonStyle alloc];
  v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0799999982];
  v4 = [(GKButtonStyle *)v2 initWithCornerRadius:v3 andBackgroundColor:14.0];

  return v4;
}

+ (id)standardStyle
{
  v2 = [GKButtonStyle alloc];
  v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.200000003];
  v4 = [(GKButtonStyle *)v2 initWithCornerRadius:v3 andBackgroundColor:12.0];

  return v4;
}

- (GKButtonStyle)initWithCornerRadius:(double)radius andBackgroundColor:(id)color
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = GKButtonStyle;
  v8 = [(GKButtonStyle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 2) = radius;
    v8[8] = 1;
    *(v8 + 40) = xmmword_24E367C90;
    *(v8 + 56) = xmmword_24E367C90;
    objc_storeStrong(v8 + 3, color);
    v9->_compositingFilter = *MEMORY[0x277CDA5E8];
  }

  return v9;
}

- (void)applyToButton:(id)button
{
  cornerRadius = self->_cornerRadius;
  buttonCopy = button;
  layer = [buttonCopy layer];
  [layer setCornerRadius:cornerRadius];

  [buttonCopy setClipsToBounds:self->_clipToBounds];
  [buttonCopy setTitleEdgeInsets:{self->_titleEdgeInsets.top, self->_titleEdgeInsets.left, self->_titleEdgeInsets.bottom, self->_titleEdgeInsets.right}];
  [buttonCopy setBackgroundColor:self->_backgroundColor];
  compositingFilter = self->_compositingFilter;
  layer2 = [buttonCopy layer];
  [layer2 setCompositingFilter:compositingFilter];

  [buttonCopy setNeedsLayout];
}

- (UIEdgeInsets)titleEdgeInsets
{
  top = self->_titleEdgeInsets.top;
  left = self->_titleEdgeInsets.left;
  bottom = self->_titleEdgeInsets.bottom;
  right = self->_titleEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end