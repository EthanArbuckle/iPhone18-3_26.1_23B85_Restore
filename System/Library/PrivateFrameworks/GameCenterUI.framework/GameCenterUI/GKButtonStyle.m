@interface GKButtonStyle
+ (id)defaultStyle;
+ (id)standardStyle;
- (GKButtonStyle)initWithCornerRadius:(double)a3 andBackgroundColor:(id)a4;
- (UIEdgeInsets)titleEdgeInsets;
- (void)applyToButton:(id)a3;
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

- (GKButtonStyle)initWithCornerRadius:(double)a3 andBackgroundColor:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKButtonStyle;
  v8 = [(GKButtonStyle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 2) = a3;
    v8[8] = 1;
    *(v8 + 40) = xmmword_24E367C90;
    *(v8 + 56) = xmmword_24E367C90;
    objc_storeStrong(v8 + 3, a4);
    v9->_compositingFilter = *MEMORY[0x277CDA5E8];
  }

  return v9;
}

- (void)applyToButton:(id)a3
{
  cornerRadius = self->_cornerRadius;
  v8 = a3;
  v5 = [v8 layer];
  [v5 setCornerRadius:cornerRadius];

  [v8 setClipsToBounds:self->_clipToBounds];
  [v8 setTitleEdgeInsets:{self->_titleEdgeInsets.top, self->_titleEdgeInsets.left, self->_titleEdgeInsets.bottom, self->_titleEdgeInsets.right}];
  [v8 setBackgroundColor:self->_backgroundColor];
  compositingFilter = self->_compositingFilter;
  v7 = [v8 layer];
  [v7 setCompositingFilter:compositingFilter];

  [v8 setNeedsLayout];
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