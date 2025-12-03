@interface SUUIAdornedImageView
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIAdornedImageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setImage:(id)image;
- (void)setImage:(id)image cacheKey:(id)key context:(id)context;
- (void)updatePlayButonBlur:(id)blur context:(id)context image:(id)image cacheKey:(id)key;
@end

@implementation SUUIAdornedImageView

- (SUUIAdornedImageView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SUUIAdornedImageView;
  v3 = [(SUUIAdornedImageView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIAdornedImageViewReuseView);
    reuseView = v3->_reuseView;
    v3->_reuseView = v4;

    v6 = v3->_reuseView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIViewReuseView *)v6 setBackgroundColor:clearColor];

    [(SUUIAdornedImageView *)v3 addSubview:v3->_reuseView];
    [(SUUIAdornedImageView *)v3 setUserInteractionEnabled:1];
  }

  return v3;
}

- (void)setImage:(id)image
{
  v3.receiver = self;
  v3.super_class = SUUIAdornedImageView;
  [(SUUIImageView *)&v3 setImage:image];
}

- (void)setImage:(id)image cacheKey:(id)key context:(id)context
{
  contextCopy = context;
  keyCopy = key;
  [(SUUIAdornedImageView *)self setImage:image];
  playButton = [(SUUIAdornedImageViewReuseView *)self->_reuseView playButton];
  image = [(SUUIAdornedImageView *)self image];
  [(SUUIAdornedImageView *)self updatePlayButonBlur:playButton context:contextCopy image:image cacheKey:keyCopy];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SUUIAdornedImageViewReuseView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SUUIAdornedImageViewReuseView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  [(SUUIAdornedImageViewReuseView *)self->_reuseView reloadWithViewElement:elementCopy width:contextCopy context:width];
  v9 = [contextCopy imageResourceCacheKeyForViewElement:elementCopy];
  if (v9)
  {
    playButton = [(SUUIAdornedImageViewReuseView *)self->_reuseView playButton];
    image = [(SUUIAdornedImageView *)self image];
    [(SUUIAdornedImageView *)self updatePlayButonBlur:playButton context:contextCopy image:image cacheKey:v9];
  }

  [elementCopy layerShadowRadius];
  if (v12 != 0.0)
  {
    layer = [(SUUIAdornedImageView *)self layer];
    [layer setMasksToBounds:0];

    layer2 = [(SUUIAdornedImageView *)self layer];
    [elementCopy layerShadowRadius];
    [layer2 setShadowRadius:?];

    layer3 = [(SUUIAdornedImageView *)self layer];
    [elementCopy layerShadowOffset];
    [layer3 setShadowOffset:?];
  }

  [elementCopy layerShadowOpacity];
  if (v16 != 0.0)
  {
    layer4 = [(SUUIAdornedImageView *)self layer];
    [elementCopy layerShadowOpacity];
    [layer4 setShadowOpacity:?];
  }
}

- (void)updatePlayButonBlur:(id)blur context:(id)context image:(id)image cacheKey:(id)key
{
  blurCopy = blur;
  contextCopy = context;
  imageCopy = image;
  keyCopy = key;
  if (keyCopy && contextCopy && blurCopy && imageCopy)
  {
    v13 = [contextCopy blurColorForCacheKey:keyCopy];
    if (v13)
    {
      defaultBackgroundColor = v13;
    }

    else
    {
      [(SUUIAdornedImageView *)self bounds];
      [(SUUIAdornedImageViewReuseView *)self->_reuseView frameForView:blurCopy];
      x = v22.origin.x;
      y = v22.origin.y;
      width = v22.size.width;
      height = v22.size.height;
      CGRectGetMaxX(v22);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      CGRectGetMaxY(v23);
      [blurCopy buttonSize];
      v19 = [SUUIPlayButtonControl blurColorForImage:"blurColorForImage:forButtonSize:withOffsetRight:withOffsetBottom:" forButtonSize:imageCopy withOffsetRight:? withOffsetBottom:?];
      if (v19)
      {
        defaultBackgroundColor = v19;
        [contextCopy setBlurColor:v19 cacheKey:keyCopy];
      }

      else
      {
        defaultBackgroundColor = [blurCopy defaultBackgroundColor];
        [contextCopy setBlurColor:defaultBackgroundColor cacheKey:keyCopy];
        if (!defaultBackgroundColor)
        {
          goto LABEL_11;
        }
      }
    }

    [blurCopy setControlColor:defaultBackgroundColor];
  }

LABEL_11:
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUUIAdornedImageView;
  [(SUUIImageView *)&v3 layoutSubviews];
  [(SUUIAdornedImageView *)self bounds];
  [(SUUIAdornedImageViewReuseView *)self->_reuseView setFrame:?];
}

@end