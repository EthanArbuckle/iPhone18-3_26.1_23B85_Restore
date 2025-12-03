@interface CRKKeyline
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CRKKeyline)initWithType:(int64_t)type direction:(int64_t)direction visualEffectStyle:(unint64_t)style;
- (double)_roundedKeylineThickness;
- (double)defaultKeylineInsetForCurrentDevice;
- (id)_keylineColorForVisualEffectStyle:(unint64_t)style;
- (void)layoutSubviews;
@end

@implementation CRKKeyline

- (CRKKeyline)initWithType:(int64_t)type direction:(int64_t)direction visualEffectStyle:(unint64_t)style
{
  v18.receiver = self;
  v18.super_class = CRKKeyline;
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [(CRKKeyline *)&v18 initWithFrame:type, direction, *MEMORY[0x277CBF3A0], v8, v9, v10];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    keylineView = v12->_keylineView;
    v12->_keylineView = v13;

    v12->_visualEffectStyle = style;
    v15 = v12->_keylineView;
    v16 = [(CRKKeyline *)v12 _keylineColorForVisualEffectStyle:style];
    [(UIView *)v15 setBackgroundColor:v16];

    [(UIView *)v12->_keylineView setHidden:type == 0];
    [(CRKKeyline *)v12 addSubview:v12->_keylineView];
  }

  return v12;
}

- (id)_keylineColorForVisualEffectStyle:(unint64_t)style
{
  v3 = 0.0;
  if (style == 1)
  {
    v3 = 1.0;
  }

  return [MEMORY[0x277D75348] colorWithWhite:v3 alpha:0.18];
}

- (double)_roundedKeylineThickness
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  result = 1.0;
  if (v4 != 1.0)
  {
    return 1.0 / v4;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(CRKKeyline *)self _roundedKeylineThickness];
  direction = self->_direction;
  if (direction)
  {
    v8 = *(MEMORY[0x277CBF3A8] + 8);
    if (direction == 1)
    {
      v8 = height;
      width = v6;
    }

    else
    {
      width = *MEMORY[0x277CBF3A8];
    }
  }

  else
  {
    v8 = v6;
  }

  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CRKKeyline *)self sizeThatFits:0.0, 0.0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)defaultKeylineInsetForCurrentDevice
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 16.0;
  if (userInterfaceIdiom != 2)
  {
    v5 = CRKIsLargeDevice();
    result = 16.0;
    if (v5)
    {
      return 20.0;
    }
  }

  return result;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CRKKeyline;
  [(CRKKeyline *)&v19 layoutSubviews];
  [(CRKKeyline *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  type = self->_type;
  v12 = 0.0;
  if (type == 1)
  {
    [(CRKKeyline *)self defaultKeylineInsetForCurrentDevice];
    v13 = v17;
  }

  else if (type == 2)
  {
    [(CRKKeyline *)self defaultKeylineInsetForCurrentDevice];
    v12 = v16;
    v13 = 43.0;
  }

  else
  {
    v13 = 0.0;
    if (type == 3)
    {
      [(CRKKeyline *)self defaultKeylineInsetForCurrentDevice];
      v13 = v14;
      [(CRKKeyline *)self defaultKeylineInsetForCurrentDevice];
      v12 = v15;
    }
  }

  if (CRKIsRTL(self))
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  [(UIView *)self->_keylineView setFrame:v4 + v18, v6, v8 - (v13 + v12), v10];
}

@end