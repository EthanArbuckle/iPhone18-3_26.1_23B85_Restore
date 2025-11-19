@interface DCNotesTextureBackgroundView
+ (id)colorWithPaperTexturePatternImage;
- (DCNotesTextureBackgroundView)initWithCoder:(id)a3;
- (DCNotesTextureBackgroundView)initWithFrame:(CGRect)a3 scrollingTextures:(BOOL)a4 hasAlpha:(BOOL)a5;
- (double)heightByCoveringHeight:(double)a3 withImage:(id)a4;
- (void)commonInitWithScrollingTextures:(BOOL)a3 hasAlpha:(BOOL)a4;
- (void)setBounds:(CGRect)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation DCNotesTextureBackgroundView

+ (id)colorWithPaperTexturePatternImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DCNotesTextureBackgroundView_colorWithPaperTexturePatternImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (colorWithPaperTexturePatternImage_predicate != -1)
  {
    dispatch_once(&colorWithPaperTexturePatternImage_predicate, block);
  }

  v2 = colorWithPaperTexturePatternImage_patternColor;

  return v2;
}

void __65__DCNotesTextureBackgroundView_colorWithPaperTexturePatternImage__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D75348];
  v4 = [*(a1 + 32) textureImage];
  v2 = [v1 colorWithPatternImage:v4];
  v3 = colorWithPaperTexturePatternImage_patternColor;
  colorWithPaperTexturePatternImage_patternColor = v2;
}

- (double)heightByCoveringHeight:(double)a3 withImage:(id)a4
{
  v5 = a4;
  [v5 size];
  v7 = (ceil(a3 / v6) + 1.0);
  [v5 size];
  v9 = v8;

  return v9 * v7;
}

- (DCNotesTextureBackgroundView)initWithFrame:(CGRect)a3 scrollingTextures:(BOOL)a4 hasAlpha:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10.receiver = self;
  v10.super_class = DCNotesTextureBackgroundView;
  v7 = [(DCNotesTextureBackgroundView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    [(DCNotesTextureBackgroundView *)v7 commonInitWithScrollingTextures:v6 hasAlpha:v5];
  }

  return v8;
}

- (DCNotesTextureBackgroundView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DCNotesTextureBackgroundView;
  v3 = [(DCNotesTextureBackgroundView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(DCNotesTextureBackgroundView *)v3 commonInitWithScrollingTextures:0 hasAlpha:1];
  }

  return v4;
}

- (void)commonInitWithScrollingTextures:(BOOL)a3 hasAlpha:(BOOL)a4
{
  v4 = a4;
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = +[DCNotesTextureBackgroundView textureImage];
  self->_scrollsTexture = a3;
  v8 = [DCNotesTextureView alloc];
  v9 = [(DCNotesTextureView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  textureView = self->_textureView;
  self->_textureView = v9;

  [(DCNotesTextureView *)self->_textureView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(DCNotesTextureView *)self->_textureView setImage:v7];
  [(DCNotesTextureBackgroundView *)self insertSubview:self->_textureView atIndex:0];
  if (v4)
  {
    [(DCNotesTextureBackgroundView *)self setAlpha:0.96];
  }

  v11 = [(DCNotesTextureBackgroundView *)self layer];
  [v11 setAllowsGroupOpacity:0];

  v12 = _NSDictionaryOfVariableBindings(&cfstr_Textureview.isa, self->_textureView, 0);
  v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[_textureView]|" options:0 metrics:0 views:v12];
  [(DCNotesTextureBackgroundView *)self addConstraints:v13];

  if (self->_scrollsTexture)
  {
    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[_textureView]" options:0 metrics:0 views:v12];
    v15 = [v14 lastObject];
    [(DCNotesTextureBackgroundView *)self setTextureYConstraint:v15];

    v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_textureView(0)]" options:0 metrics:0 views:v12];
    v17 = [v16 lastObject];
    [(DCNotesTextureBackgroundView *)self setTextureHeightConstraint:v17];

    v18 = [(DCNotesTextureBackgroundView *)self textureYConstraint];
    v21[0] = v18;
    v19 = [(DCNotesTextureBackgroundView *)self textureHeightConstraint];
    v21[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [(DCNotesTextureBackgroundView *)self addConstraints:v20];
  }

  else
  {
    v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_textureView]|" options:0 metrics:0 views:v12];
    [(DCNotesTextureBackgroundView *)self addConstraints:v18];
  }

  [(DCNotesTextureBackgroundView *)self setClipsToBounds:1];
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  if ([(DCNotesTextureBackgroundView *)self scrollsTexture])
  {
    v5 = [(DCNotesTextureView *)self->_textureView image];
    [v5 size];
    v7 = v6;

    if (v7 > 0.0)
    {
      v9 = [(DCNotesTextureView *)self->_textureView image];
      [v9 size];
      *&v10 = v10;
      v8 = y;
      v11 = fmodf(v8, *&v10);

      v12 = -v11;
      if (y < 0.0)
      {
        v13 = [(DCNotesTextureView *)self->_textureView image];
        [v13 size];
        v12 = v12 - v14;
      }

      v15 = [(DCNotesTextureBackgroundView *)self textureYConstraint];
      [v15 setConstant:v12];
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = DCNotesTextureBackgroundView;
  [(DCNotesTextureBackgroundView *)&v13 setBounds:?];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectGetHeight(v14);
  v9 = [(DCNotesTextureView *)self->_textureView image];
  [(DCNotesTextureBackgroundView *)self heightByCoveringHeight:v9 withImage:v8];
  v11 = v10;

  v12 = [(DCNotesTextureBackgroundView *)self textureHeightConstraint];
  [v12 setConstant:v11];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = DCNotesTextureBackgroundView;
  [(DCNotesTextureBackgroundView *)&v13 setFrame:?];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectGetHeight(v14);
  v9 = [(DCNotesTextureView *)self->_textureView image];
  [(DCNotesTextureBackgroundView *)self heightByCoveringHeight:v9 withImage:v8];
  v11 = v10;

  v12 = [(DCNotesTextureBackgroundView *)self textureHeightConstraint];
  [v12 setConstant:v11];
}

@end