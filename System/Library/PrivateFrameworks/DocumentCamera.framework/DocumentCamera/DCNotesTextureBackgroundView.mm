@interface DCNotesTextureBackgroundView
+ (id)colorWithPaperTexturePatternImage;
- (DCNotesTextureBackgroundView)initWithCoder:(id)coder;
- (DCNotesTextureBackgroundView)initWithFrame:(CGRect)frame scrollingTextures:(BOOL)textures hasAlpha:(BOOL)alpha;
- (double)heightByCoveringHeight:(double)height withImage:(id)image;
- (void)commonInitWithScrollingTextures:(BOOL)textures hasAlpha:(BOOL)alpha;
- (void)setBounds:(CGRect)bounds;
- (void)setContentOffset:(CGPoint)offset;
- (void)setFrame:(CGRect)frame;
@end

@implementation DCNotesTextureBackgroundView

+ (id)colorWithPaperTexturePatternImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DCNotesTextureBackgroundView_colorWithPaperTexturePatternImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (double)heightByCoveringHeight:(double)height withImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v7 = (ceil(height / v6) + 1.0);
  [imageCopy size];
  v9 = v8;

  return v9 * v7;
}

- (DCNotesTextureBackgroundView)initWithFrame:(CGRect)frame scrollingTextures:(BOOL)textures hasAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  texturesCopy = textures;
  v10.receiver = self;
  v10.super_class = DCNotesTextureBackgroundView;
  v7 = [(DCNotesTextureBackgroundView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    [(DCNotesTextureBackgroundView *)v7 commonInitWithScrollingTextures:texturesCopy hasAlpha:alphaCopy];
  }

  return v8;
}

- (DCNotesTextureBackgroundView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DCNotesTextureBackgroundView;
  v3 = [(DCNotesTextureBackgroundView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(DCNotesTextureBackgroundView *)v3 commonInitWithScrollingTextures:0 hasAlpha:1];
  }

  return v4;
}

- (void)commonInitWithScrollingTextures:(BOOL)textures hasAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = +[DCNotesTextureBackgroundView textureImage];
  self->_scrollsTexture = textures;
  v8 = [DCNotesTextureView alloc];
  v9 = [(DCNotesTextureView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  textureView = self->_textureView;
  self->_textureView = v9;

  [(DCNotesTextureView *)self->_textureView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(DCNotesTextureView *)self->_textureView setImage:v7];
  [(DCNotesTextureBackgroundView *)self insertSubview:self->_textureView atIndex:0];
  if (alphaCopy)
  {
    [(DCNotesTextureBackgroundView *)self setAlpha:0.96];
  }

  layer = [(DCNotesTextureBackgroundView *)self layer];
  [layer setAllowsGroupOpacity:0];

  v12 = _NSDictionaryOfVariableBindings(&cfstr_Textureview.isa, self->_textureView, 0);
  v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[_textureView]|" options:0 metrics:0 views:v12];
  [(DCNotesTextureBackgroundView *)self addConstraints:v13];

  if (self->_scrollsTexture)
  {
    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[_textureView]" options:0 metrics:0 views:v12];
    lastObject = [v14 lastObject];
    [(DCNotesTextureBackgroundView *)self setTextureYConstraint:lastObject];

    v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_textureView(0)]" options:0 metrics:0 views:v12];
    lastObject2 = [v16 lastObject];
    [(DCNotesTextureBackgroundView *)self setTextureHeightConstraint:lastObject2];

    textureYConstraint = [(DCNotesTextureBackgroundView *)self textureYConstraint];
    v21[0] = textureYConstraint;
    textureHeightConstraint = [(DCNotesTextureBackgroundView *)self textureHeightConstraint];
    v21[1] = textureHeightConstraint;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [(DCNotesTextureBackgroundView *)self addConstraints:v20];
  }

  else
  {
    textureYConstraint = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_textureView]|" options:0 metrics:0 views:v12];
    [(DCNotesTextureBackgroundView *)self addConstraints:textureYConstraint];
  }

  [(DCNotesTextureBackgroundView *)self setClipsToBounds:1];
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  if ([(DCNotesTextureBackgroundView *)self scrollsTexture])
  {
    image = [(DCNotesTextureView *)self->_textureView image];
    [image size];
    v7 = v6;

    if (v7 > 0.0)
    {
      image2 = [(DCNotesTextureView *)self->_textureView image];
      [image2 size];
      *&v10 = v10;
      v8 = y;
      v11 = fmodf(v8, *&v10);

      v12 = -v11;
      if (y < 0.0)
      {
        image3 = [(DCNotesTextureView *)self->_textureView image];
        [image3 size];
        v12 = v12 - v14;
      }

      textureYConstraint = [(DCNotesTextureBackgroundView *)self textureYConstraint];
      [textureYConstraint setConstant:v12];
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13.receiver = self;
  v13.super_class = DCNotesTextureBackgroundView;
  [(DCNotesTextureBackgroundView *)&v13 setBounds:?];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectGetHeight(v14);
  image = [(DCNotesTextureView *)self->_textureView image];
  [(DCNotesTextureBackgroundView *)self heightByCoveringHeight:image withImage:v8];
  v11 = v10;

  textureHeightConstraint = [(DCNotesTextureBackgroundView *)self textureHeightConstraint];
  [textureHeightConstraint setConstant:v11];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = DCNotesTextureBackgroundView;
  [(DCNotesTextureBackgroundView *)&v13 setFrame:?];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectGetHeight(v14);
  image = [(DCNotesTextureView *)self->_textureView image];
  [(DCNotesTextureBackgroundView *)self heightByCoveringHeight:image withImage:v8];
  v11 = v10;

  textureHeightConstraint = [(DCNotesTextureBackgroundView *)self textureHeightConstraint];
  [textureHeightConstraint setConstant:v11];
}

@end