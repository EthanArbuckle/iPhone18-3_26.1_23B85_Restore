@interface CKConversationListAccessoryView
+ (double)defaultDiameter;
+ (id)defaultStateConfigMap;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CKConversationListAccessoryView)init;
- (CKConversationListAccessoryView)initWithFrame:(CGRect)frame;
- (UIImageSymbolConfiguration)preferredSymbolConfiguration;
- (id)configForState:(unint64_t)state;
- (void)_setConfig:(id)config forState:(unint64_t)state;
- (void)_updateVisualAppearanceForCurrentStateIfNeeded;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
- (void)setBlurEffect:(id)effect forState:(unint64_t)state;
- (void)setBlurEffect:(id)effect withVibrancyEffectStyle:(int64_t)style forState:(unint64_t)state;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setPreferredSymbolConfiguration:(id)configuration;
- (void)setSelected:(BOOL)selected;
- (void)setTintColor:(id)color forState:(unint64_t)state;
- (void)setVibrancyEffectStyle:(int64_t)style forState:(unint64_t)state;
@end

@implementation CKConversationListAccessoryView

+ (double)defaultDiameter
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 pinnedConversationDefaultAccessorySize];
  v4 = v3;

  return v4;
}

+ (id)defaultStateConfigMap
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = &unk_1F04E7FF8;
  v2 = objc_alloc_init(CKConversationListAccessoryViewConfiguration);
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (CKConversationListAccessoryView)initWithFrame:(CGRect)frame
{
  v44.receiver = self;
  v44.super_class = CKConversationListAccessoryView;
  v3 = [(CKConversationListAccessoryView *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CKConversationListAccessoryView defaultStateConfigMap];
    [(CKConversationListAccessoryView *)v3 setConfigStateMap:v4];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKConversationListAccessoryView *)v3 setBackgroundColor:clearColor];

    [(CKConversationListAccessoryView *)v3 bounds];
    v7 = v6 * 0.5;
    layer = [(CKConversationListAccessoryView *)v3 layer];
    [layer setCornerRadius:v7];

    v9 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKConversationListAccessoryView *)v3 bounds];
    v10 = [v9 initWithFrame:?];
    [(CKConversationListAccessoryView *)v3 setColorView:v10];

    colorView = [(CKConversationListAccessoryView *)v3 colorView];
    [colorView setClipsToBounds:1];

    colorView2 = [(CKConversationListAccessoryView *)v3 colorView];
    [colorView2 bounds];
    v14 = v13 * 0.5;
    colorView3 = [(CKConversationListAccessoryView *)v3 colorView];
    layer2 = [colorView3 layer];
    [layer2 setCornerRadius:v14];

    colorView4 = [(CKConversationListAccessoryView *)v3 colorView];
    [colorView4 setUserInteractionEnabled:0];

    colorView5 = [(CKConversationListAccessoryView *)v3 colorView];
    [(CKConversationListAccessoryView *)v3 addSubview:colorView5];

    v19 = objc_alloc(MEMORY[0x1E69DCAE0]);
    imageView = [(CKConversationListAccessoryView *)v3 imageView];
    [imageView frame];
    v22 = v21;
    v24 = v23;
    backgroundView = [(CKConversationListAccessoryView *)v3 backgroundView];
    [backgroundView bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    if (CKMainScreenScale_once_70 != -1)
    {
      [CKConversationListAccessoryView initWithFrame:];
    }

    v34 = 1.0;
    if (*&CKMainScreenScale_sMainScreenScale_70 != 0.0)
    {
      v34 = *&CKMainScreenScale_sMainScreenScale_70;
    }

    v35 = [v19 initWithFrame:{floor((v27 + (v31 - v22) * 0.5) * v34) / v34, floor((v29 + (v33 - v24) * 0.5) * v34) / v34, v22, v24}];
    [(CKConversationListAccessoryView *)v3 setImageView:v35];

    imageView2 = [(CKConversationListAccessoryView *)v3 imageView];
    [imageView2 setUserInteractionEnabled:0];

    preferredSymbolConfiguration = [(CKConversationListAccessoryView *)v3 preferredSymbolConfiguration];
    imageView3 = [(CKConversationListAccessoryView *)v3 imageView];
    [imageView3 setPreferredSymbolConfiguration:preferredSymbolConfiguration];

    imageNeedsEdgeAntiAliasing = [(CKConversationListAccessoryView *)v3 imageNeedsEdgeAntiAliasing];
    imageView4 = [(CKConversationListAccessoryView *)v3 imageView];
    layer3 = [imageView4 layer];
    [layer3 setAllowsEdgeAntialiasing:imageNeedsEdgeAntiAliasing];

    imageView5 = [(CKConversationListAccessoryView *)v3 imageView];
    [(CKConversationListAccessoryView *)v3 addSubview:imageView5];

    [(CKConversationListAccessoryView *)v3 _setNeedsVisualAppearanceUpdate];
    [(CKConversationListAccessoryView *)v3 _updateVisualAppearanceForCurrentStateIfNeeded];
  }

  return v3;
}

- (CKConversationListAccessoryView)init
{
  +[CKConversationListAccessoryView defaultDiameter];

  return [(CKConversationListAccessoryView *)self initWithDiameter:?];
}

- (id)configForState:(unint64_t)state
{
  configStateMap = [(CKConversationListAccessoryView *)self configStateMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v6 = [configStateMap objectForKey:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(CKConversationListAccessoryViewConfiguration);
  }

  v7 = [(CKConversationListAccessoryViewConfiguration *)v6 copy];

  return v7;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  point = inside.y;
  x = inside.x;
  [(CKConversationListAccessoryView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CKConversationListAccessoryView *)self bounds];
  if (v14 + -44.0 <= 0.0)
  {
    v15 = v14 + -44.0;
  }

  else
  {
    v15 = 0.0;
  }

  [(CKConversationListAccessoryView *)self bounds];
  if (v16 + -44.0 <= 0.0)
  {
    v17 = v16 + -44.0;
  }

  else
  {
    v17 = 0.0;
  }

  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  v24 = CGRectInset(v23, v15, v17);
  v18 = x;
  v19 = point;

  return CGRectContainsPoint(v24, *&v18);
}

- (void)_updateVisualAppearanceForCurrentStateIfNeeded
{
  lastKnownState = [(CKConversationListAccessoryView *)self lastKnownState];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKConversationListAccessoryView state](self, "state")}];
  v5 = [lastKnownState isEqualToNumber:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKConversationListAccessoryView state](self, "state")}];
    [(CKConversationListAccessoryView *)self setLastKnownState:v6];

    v69 = [(CKConversationListAccessoryView *)self configForState:[(CKConversationListAccessoryView *)self state]];
    backgroundColor = [v69 backgroundColor];
    colorView = [(CKConversationListAccessoryView *)self colorView];
    [colorView setBackgroundColor:backgroundColor];

    LODWORD(colorView) = [(CKConversationListAccessoryView *)self needsVisualEffects];
    backgroundView = [(CKConversationListAccessoryView *)self backgroundView];
    v10 = backgroundView;
    if (colorView)
    {

      if (!v10)
      {
        v11 = objc_alloc(MEMORY[0x1E69DD298]);
        [(CKConversationListAccessoryView *)self bounds];
        v12 = [v11 initWithFrame:?];
        [(CKConversationListAccessoryView *)self setBackgroundView:v12];

        backgroundView2 = [(CKConversationListAccessoryView *)self backgroundView];
        [backgroundView2 setClipsToBounds:1];

        backgroundView3 = [(CKConversationListAccessoryView *)self backgroundView];
        [backgroundView3 bounds];
        v16 = v15 * 0.5;
        backgroundView4 = [(CKConversationListAccessoryView *)self backgroundView];
        layer = [backgroundView4 layer];
        [layer setCornerRadius:v16];

        backgroundView5 = [(CKConversationListAccessoryView *)self backgroundView];
        [backgroundView5 setUserInteractionEnabled:0];

        backgroundView6 = [(CKConversationListAccessoryView *)self backgroundView];
        [(CKConversationListAccessoryView *)self addSubview:backgroundView6];
      }

      blurEffect = [v69 blurEffect];
      backgroundView7 = [(CKConversationListAccessoryView *)self backgroundView];
      [backgroundView7 setEffect:blurEffect];
    }

    else
    {
      [backgroundView removeFromSuperview];

      [(CKConversationListAccessoryView *)self setBackgroundView:0];
    }

    blurEffect2 = [v69 blurEffect];
    if (blurEffect2 && (v24 = blurEffect2, v25 = [(CKConversationListAccessoryView *)self needsVibrancy], v24, v25))
    {
      v26 = MEMORY[0x1E69DD248];
      blurEffect3 = [v69 blurEffect];
      v28 = [v26 effectForBlurEffect:blurEffect3 style:{objc_msgSend(v69, "vibrancyStyle")}];

      vibrancyView = [(CKConversationListAccessoryView *)self vibrancyView];

      if (!vibrancyView)
      {
        v30 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v28];
        [(CKConversationListAccessoryView *)self setVibrancyView:v30];

        backgroundView8 = [(CKConversationListAccessoryView *)self backgroundView];
        [backgroundView8 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        vibrancyView2 = [(CKConversationListAccessoryView *)self vibrancyView];
        [vibrancyView2 setFrame:{v33, v35, v37, v39}];

        backgroundView9 = [(CKConversationListAccessoryView *)self backgroundView];
        contentView = [backgroundView9 contentView];
        vibrancyView3 = [(CKConversationListAccessoryView *)self vibrancyView];
        [contentView addSubview:vibrancyView3];
      }
    }

    else
    {
      vibrancyView4 = [(CKConversationListAccessoryView *)self vibrancyView];
      [vibrancyView4 removeFromSuperview];

      [(CKConversationListAccessoryView *)self setVibrancyView:0];
    }

    image = [v69 image];
    imageView = [(CKConversationListAccessoryView *)self imageView];
    [imageView setImage:image];

    imageView2 = [(CKConversationListAccessoryView *)self imageView];
    [imageView2 sizeToFit];

    imageView3 = [(CKConversationListAccessoryView *)self imageView];
    [imageView3 frame];
    v50 = v49;
    v52 = v51;
    backgroundView10 = [(CKConversationListAccessoryView *)self backgroundView];
    [backgroundView10 bounds];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    if (CKMainScreenScale_once_70 != -1)
    {
      [CKConversationListAccessoryView _updateVisualAppearanceForCurrentStateIfNeeded];
    }

    v62 = *&CKMainScreenScale_sMainScreenScale_70;
    if (*&CKMainScreenScale_sMainScreenScale_70 == 0.0)
    {
      v62 = 1.0;
    }

    v63 = floor((v55 + (v59 - v50) * 0.5) * v62) / v62;
    v64 = floor((v57 + (v61 - v52) * 0.5) * v62) / v62;
    imageView4 = [(CKConversationListAccessoryView *)self imageView];
    [imageView4 setFrame:{v63, v64, v50, v52}];

    tintColor = [v69 tintColor];
    imageView5 = [(CKConversationListAccessoryView *)self imageView];
    [imageView5 setTintColor:tintColor];

    imageView6 = [(CKConversationListAccessoryView *)self imageView];
    [(CKConversationListAccessoryView *)self bringSubviewToFront:imageView6];
  }
}

- (UIImageSymbolConfiguration)preferredSymbolConfiguration
{
  imageView = [(CKConversationListAccessoryView *)self imageView];
  preferredSymbolConfiguration = [imageView preferredSymbolConfiguration];

  return preferredSymbolConfiguration;
}

- (void)setPreferredSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageView = [(CKConversationListAccessoryView *)self imageView];
  [imageView setPreferredSymbolConfiguration:configurationCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = CKConversationListAccessoryView;
  [(CKConversationListAccessoryView *)&v4 setEnabled:enabled];
  [(CKConversationListAccessoryView *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = CKConversationListAccessoryView;
  [(CKConversationListAccessoryView *)&v4 setHighlighted:highlighted];
  [(CKConversationListAccessoryView *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = CKConversationListAccessoryView;
  [(CKConversationListAccessoryView *)&v4 setSelected:selected];
  [(CKConversationListAccessoryView *)self setNeedsLayout];
}

- (void)_setConfig:(id)config forState:(unint64_t)state
{
  configCopy = config;
  configStateMap = [(CKConversationListAccessoryView *)self configStateMap];
  v10 = [configStateMap mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  [v10 setObject:configCopy forKey:v8];

  v9 = [v10 copy];
  [(CKConversationListAccessoryView *)self setConfigStateMap:v9];

  [(CKConversationListAccessoryView *)self _setNeedsVisualAppearanceUpdate];
  [(CKConversationListAccessoryView *)self setNeedsLayout];
}

- (void)setVibrancyEffectStyle:(int64_t)style forState:(unint64_t)state
{
  v7 = [(CKConversationListAccessoryView *)self configForState:state];
  [(CKConversationListAccessoryView *)self setNeedsVibrancy:1];
  [v7 setVibrancyStyle:style];
  [(CKConversationListAccessoryView *)self _setConfig:v7 forState:state];
}

- (void)setBlurEffect:(id)effect withVibrancyEffectStyle:(int64_t)style forState:(unint64_t)state
{
  [(CKConversationListAccessoryView *)self setBlurEffect:effect forState:state];
  if (effect)
  {
    [(CKConversationListAccessoryView *)self setNeedsVibrancy:1];
    v10 = [(CKConversationListAccessoryView *)self configForState:state];
    [v10 setVibrancyStyle:style];
    [(CKConversationListAccessoryView *)self _setConfig:v10 forState:state];
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListAccessoryView setBlurEffect:state withVibrancyEffectStyle:v9 forState:?];
    }
  }
}

- (void)setBlurEffect:(id)effect forState:(unint64_t)state
{
  effectCopy = effect;
  if (effectCopy)
  {
    [(CKConversationListAccessoryView *)self setNeedsVisualEffects:1];
    v7 = [(CKConversationListAccessoryView *)self configForState:state];
    [v7 setBlurEffect:effectCopy];
    [(CKConversationListAccessoryView *)self _setConfig:v7 forState:state];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListAccessoryView setBlurEffect:state forState:v8];
    }
  }
}

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  v7 = [(CKConversationListAccessoryView *)self configForState:state];
  [v7 setBackgroundColor:colorCopy];

  [(CKConversationListAccessoryView *)self _setConfig:v7 forState:state];
}

- (void)setTintColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  v7 = [(CKConversationListAccessoryView *)self configForState:state];
  [v7 setTintColor:colorCopy];

  [(CKConversationListAccessoryView *)self _setConfig:v7 forState:state];
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  v7 = [(CKConversationListAccessoryView *)self configForState:state];
  [v7 setImage:imageCopy];

  [(CKConversationListAccessoryView *)self _setConfig:v7 forState:state];
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = CKConversationListAccessoryView;
  [(CKConversationListAccessoryView *)&v55 layoutSubviews];
  [(CKConversationListAccessoryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  colorView = [(CKConversationListAccessoryView *)self colorView];
  [colorView setFrame:{v4, v6, v8, v10}];

  [(CKConversationListAccessoryView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  backgroundView = [(CKConversationListAccessoryView *)self backgroundView];
  [backgroundView setFrame:{v13, v15, v17, v19}];

  v21 = [(CKConversationListAccessoryView *)self configForState:[(CKConversationListAccessoryView *)self state]];
  tintColor = [v21 tintColor];
  imageView = [(CKConversationListAccessoryView *)self imageView];
  [imageView setTintColor:tintColor];

  imageView2 = [(CKConversationListAccessoryView *)self imageView];
  [imageView2 frame];
  v26 = v25;
  v28 = v27;
  backgroundView2 = [(CKConversationListAccessoryView *)self backgroundView];
  [backgroundView2 frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (CKMainScreenScale_once_70 != -1)
  {
    [CKConversationListAccessoryView initWithFrame:];
  }

  v38 = *&CKMainScreenScale_sMainScreenScale_70;
  if (*&CKMainScreenScale_sMainScreenScale_70 == 0.0)
  {
    v38 = 1.0;
  }

  v39 = floor((v31 + (v35 - v26) * 0.5) * v38) / v38;
  v40 = floor((v33 + (v37 - v28) * 0.5) * v38) / v38;
  imageView3 = [(CKConversationListAccessoryView *)self imageView];
  [imageView3 setFrame:{v39, v40, v26, v28}];

  [(CKConversationListAccessoryView *)self bounds];
  v43 = v42 * 0.5;
  layer = [(CKConversationListAccessoryView *)self layer];
  [layer setCornerRadius:v43];

  colorView2 = [(CKConversationListAccessoryView *)self colorView];
  [colorView2 bounds];
  v47 = v46 * 0.5;
  colorView3 = [(CKConversationListAccessoryView *)self colorView];
  layer2 = [colorView3 layer];
  [layer2 setCornerRadius:v47];

  backgroundView3 = [(CKConversationListAccessoryView *)self backgroundView];
  [backgroundView3 bounds];
  v52 = v51 * 0.5;
  backgroundView4 = [(CKConversationListAccessoryView *)self backgroundView];
  layer3 = [backgroundView4 layer];
  [layer3 setCornerRadius:v52];

  [(CKConversationListAccessoryView *)self _updateVisualAppearanceForCurrentStateIfNeeded];
}

- (void)setBlurEffect:(uint64_t)a1 withVibrancyEffectStyle:(NSObject *)a2 forState:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Not setting vibrancy effect for state %lu on CKConversationListAccessoryView because the blur effect passed was nil", &v2, 0xCu);
}

- (void)setBlurEffect:(uint64_t)a1 forState:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Not setting blur effect for state %lu on CKConversationListAccessoryView because the blur effect passed was nil", &v2, 0xCu);
}

@end