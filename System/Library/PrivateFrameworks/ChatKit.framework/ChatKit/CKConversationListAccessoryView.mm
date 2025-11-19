@interface CKConversationListAccessoryView
+ (double)defaultDiameter;
+ (id)defaultStateConfigMap;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CKConversationListAccessoryView)init;
- (CKConversationListAccessoryView)initWithFrame:(CGRect)a3;
- (UIImageSymbolConfiguration)preferredSymbolConfiguration;
- (id)configForState:(unint64_t)a3;
- (void)_setConfig:(id)a3 forState:(unint64_t)a4;
- (void)_updateVisualAppearanceForCurrentStateIfNeeded;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3 forState:(unint64_t)a4;
- (void)setBlurEffect:(id)a3 forState:(unint64_t)a4;
- (void)setBlurEffect:(id)a3 withVibrancyEffectStyle:(int64_t)a4 forState:(unint64_t)a5;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setPreferredSymbolConfiguration:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTintColor:(id)a3 forState:(unint64_t)a4;
- (void)setVibrancyEffectStyle:(int64_t)a3 forState:(unint64_t)a4;
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

- (CKConversationListAccessoryView)initWithFrame:(CGRect)a3
{
  v44.receiver = self;
  v44.super_class = CKConversationListAccessoryView;
  v3 = [(CKConversationListAccessoryView *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CKConversationListAccessoryView defaultStateConfigMap];
    [(CKConversationListAccessoryView *)v3 setConfigStateMap:v4];

    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(CKConversationListAccessoryView *)v3 setBackgroundColor:v5];

    [(CKConversationListAccessoryView *)v3 bounds];
    v7 = v6 * 0.5;
    v8 = [(CKConversationListAccessoryView *)v3 layer];
    [v8 setCornerRadius:v7];

    v9 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKConversationListAccessoryView *)v3 bounds];
    v10 = [v9 initWithFrame:?];
    [(CKConversationListAccessoryView *)v3 setColorView:v10];

    v11 = [(CKConversationListAccessoryView *)v3 colorView];
    [v11 setClipsToBounds:1];

    v12 = [(CKConversationListAccessoryView *)v3 colorView];
    [v12 bounds];
    v14 = v13 * 0.5;
    v15 = [(CKConversationListAccessoryView *)v3 colorView];
    v16 = [v15 layer];
    [v16 setCornerRadius:v14];

    v17 = [(CKConversationListAccessoryView *)v3 colorView];
    [v17 setUserInteractionEnabled:0];

    v18 = [(CKConversationListAccessoryView *)v3 colorView];
    [(CKConversationListAccessoryView *)v3 addSubview:v18];

    v19 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v20 = [(CKConversationListAccessoryView *)v3 imageView];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v25 = [(CKConversationListAccessoryView *)v3 backgroundView];
    [v25 bounds];
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

    v36 = [(CKConversationListAccessoryView *)v3 imageView];
    [v36 setUserInteractionEnabled:0];

    v37 = [(CKConversationListAccessoryView *)v3 preferredSymbolConfiguration];
    v38 = [(CKConversationListAccessoryView *)v3 imageView];
    [v38 setPreferredSymbolConfiguration:v37];

    v39 = [(CKConversationListAccessoryView *)v3 imageNeedsEdgeAntiAliasing];
    v40 = [(CKConversationListAccessoryView *)v3 imageView];
    v41 = [v40 layer];
    [v41 setAllowsEdgeAntialiasing:v39];

    v42 = [(CKConversationListAccessoryView *)v3 imageView];
    [(CKConversationListAccessoryView *)v3 addSubview:v42];

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

- (id)configForState:(unint64_t)a3
{
  v4 = [(CKConversationListAccessoryView *)self configStateMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(CKConversationListAccessoryViewConfiguration);
  }

  v7 = [(CKConversationListAccessoryViewConfiguration *)v6 copy];

  return v7;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  point = a3.y;
  x = a3.x;
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
  v3 = [(CKConversationListAccessoryView *)self lastKnownState];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKConversationListAccessoryView state](self, "state")}];
  v5 = [v3 isEqualToNumber:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKConversationListAccessoryView state](self, "state")}];
    [(CKConversationListAccessoryView *)self setLastKnownState:v6];

    v69 = [(CKConversationListAccessoryView *)self configForState:[(CKConversationListAccessoryView *)self state]];
    v7 = [v69 backgroundColor];
    v8 = [(CKConversationListAccessoryView *)self colorView];
    [v8 setBackgroundColor:v7];

    LODWORD(v8) = [(CKConversationListAccessoryView *)self needsVisualEffects];
    v9 = [(CKConversationListAccessoryView *)self backgroundView];
    v10 = v9;
    if (v8)
    {

      if (!v10)
      {
        v11 = objc_alloc(MEMORY[0x1E69DD298]);
        [(CKConversationListAccessoryView *)self bounds];
        v12 = [v11 initWithFrame:?];
        [(CKConversationListAccessoryView *)self setBackgroundView:v12];

        v13 = [(CKConversationListAccessoryView *)self backgroundView];
        [v13 setClipsToBounds:1];

        v14 = [(CKConversationListAccessoryView *)self backgroundView];
        [v14 bounds];
        v16 = v15 * 0.5;
        v17 = [(CKConversationListAccessoryView *)self backgroundView];
        v18 = [v17 layer];
        [v18 setCornerRadius:v16];

        v19 = [(CKConversationListAccessoryView *)self backgroundView];
        [v19 setUserInteractionEnabled:0];

        v20 = [(CKConversationListAccessoryView *)self backgroundView];
        [(CKConversationListAccessoryView *)self addSubview:v20];
      }

      v21 = [v69 blurEffect];
      v22 = [(CKConversationListAccessoryView *)self backgroundView];
      [v22 setEffect:v21];
    }

    else
    {
      [v9 removeFromSuperview];

      [(CKConversationListAccessoryView *)self setBackgroundView:0];
    }

    v23 = [v69 blurEffect];
    if (v23 && (v24 = v23, v25 = [(CKConversationListAccessoryView *)self needsVibrancy], v24, v25))
    {
      v26 = MEMORY[0x1E69DD248];
      v27 = [v69 blurEffect];
      v28 = [v26 effectForBlurEffect:v27 style:{objc_msgSend(v69, "vibrancyStyle")}];

      v29 = [(CKConversationListAccessoryView *)self vibrancyView];

      if (!v29)
      {
        v30 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v28];
        [(CKConversationListAccessoryView *)self setVibrancyView:v30];

        v31 = [(CKConversationListAccessoryView *)self backgroundView];
        [v31 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v40 = [(CKConversationListAccessoryView *)self vibrancyView];
        [v40 setFrame:{v33, v35, v37, v39}];

        v41 = [(CKConversationListAccessoryView *)self backgroundView];
        v42 = [v41 contentView];
        v43 = [(CKConversationListAccessoryView *)self vibrancyView];
        [v42 addSubview:v43];
      }
    }

    else
    {
      v44 = [(CKConversationListAccessoryView *)self vibrancyView];
      [v44 removeFromSuperview];

      [(CKConversationListAccessoryView *)self setVibrancyView:0];
    }

    v45 = [v69 image];
    v46 = [(CKConversationListAccessoryView *)self imageView];
    [v46 setImage:v45];

    v47 = [(CKConversationListAccessoryView *)self imageView];
    [v47 sizeToFit];

    v48 = [(CKConversationListAccessoryView *)self imageView];
    [v48 frame];
    v50 = v49;
    v52 = v51;
    v53 = [(CKConversationListAccessoryView *)self backgroundView];
    [v53 bounds];
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
    v65 = [(CKConversationListAccessoryView *)self imageView];
    [v65 setFrame:{v63, v64, v50, v52}];

    v66 = [v69 tintColor];
    v67 = [(CKConversationListAccessoryView *)self imageView];
    [v67 setTintColor:v66];

    v68 = [(CKConversationListAccessoryView *)self imageView];
    [(CKConversationListAccessoryView *)self bringSubviewToFront:v68];
  }
}

- (UIImageSymbolConfiguration)preferredSymbolConfiguration
{
  v2 = [(CKConversationListAccessoryView *)self imageView];
  v3 = [v2 preferredSymbolConfiguration];

  return v3;
}

- (void)setPreferredSymbolConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListAccessoryView *)self imageView];
  [v5 setPreferredSymbolConfiguration:v4];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKConversationListAccessoryView;
  [(CKConversationListAccessoryView *)&v4 setEnabled:a3];
  [(CKConversationListAccessoryView *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKConversationListAccessoryView;
  [(CKConversationListAccessoryView *)&v4 setHighlighted:a3];
  [(CKConversationListAccessoryView *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKConversationListAccessoryView;
  [(CKConversationListAccessoryView *)&v4 setSelected:a3];
  [(CKConversationListAccessoryView *)self setNeedsLayout];
}

- (void)_setConfig:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CKConversationListAccessoryView *)self configStateMap];
  v10 = [v7 mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v10 setObject:v6 forKey:v8];

  v9 = [v10 copy];
  [(CKConversationListAccessoryView *)self setConfigStateMap:v9];

  [(CKConversationListAccessoryView *)self _setNeedsVisualAppearanceUpdate];
  [(CKConversationListAccessoryView *)self setNeedsLayout];
}

- (void)setVibrancyEffectStyle:(int64_t)a3 forState:(unint64_t)a4
{
  v7 = [(CKConversationListAccessoryView *)self configForState:a4];
  [(CKConversationListAccessoryView *)self setNeedsVibrancy:1];
  [v7 setVibrancyStyle:a3];
  [(CKConversationListAccessoryView *)self _setConfig:v7 forState:a4];
}

- (void)setBlurEffect:(id)a3 withVibrancyEffectStyle:(int64_t)a4 forState:(unint64_t)a5
{
  [(CKConversationListAccessoryView *)self setBlurEffect:a3 forState:a5];
  if (a3)
  {
    [(CKConversationListAccessoryView *)self setNeedsVibrancy:1];
    v10 = [(CKConversationListAccessoryView *)self configForState:a5];
    [v10 setVibrancyStyle:a4];
    [(CKConversationListAccessoryView *)self _setConfig:v10 forState:a5];
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListAccessoryView setBlurEffect:a5 withVibrancyEffectStyle:v9 forState:?];
    }
  }
}

- (void)setBlurEffect:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    [(CKConversationListAccessoryView *)self setNeedsVisualEffects:1];
    v7 = [(CKConversationListAccessoryView *)self configForState:a4];
    [v7 setBlurEffect:v6];
    [(CKConversationListAccessoryView *)self _setConfig:v7 forState:a4];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListAccessoryView setBlurEffect:a4 forState:v8];
    }
  }
}

- (void)setBackgroundColor:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CKConversationListAccessoryView *)self configForState:a4];
  [v7 setBackgroundColor:v6];

  [(CKConversationListAccessoryView *)self _setConfig:v7 forState:a4];
}

- (void)setTintColor:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CKConversationListAccessoryView *)self configForState:a4];
  [v7 setTintColor:v6];

  [(CKConversationListAccessoryView *)self _setConfig:v7 forState:a4];
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CKConversationListAccessoryView *)self configForState:a4];
  [v7 setImage:v6];

  [(CKConversationListAccessoryView *)self _setConfig:v7 forState:a4];
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
  v11 = [(CKConversationListAccessoryView *)self colorView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(CKConversationListAccessoryView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(CKConversationListAccessoryView *)self backgroundView];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [(CKConversationListAccessoryView *)self configForState:[(CKConversationListAccessoryView *)self state]];
  v22 = [v21 tintColor];
  v23 = [(CKConversationListAccessoryView *)self imageView];
  [v23 setTintColor:v22];

  v24 = [(CKConversationListAccessoryView *)self imageView];
  [v24 frame];
  v26 = v25;
  v28 = v27;
  v29 = [(CKConversationListAccessoryView *)self backgroundView];
  [v29 frame];
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
  v41 = [(CKConversationListAccessoryView *)self imageView];
  [v41 setFrame:{v39, v40, v26, v28}];

  [(CKConversationListAccessoryView *)self bounds];
  v43 = v42 * 0.5;
  v44 = [(CKConversationListAccessoryView *)self layer];
  [v44 setCornerRadius:v43];

  v45 = [(CKConversationListAccessoryView *)self colorView];
  [v45 bounds];
  v47 = v46 * 0.5;
  v48 = [(CKConversationListAccessoryView *)self colorView];
  v49 = [v48 layer];
  [v49 setCornerRadius:v47];

  v50 = [(CKConversationListAccessoryView *)self backgroundView];
  [v50 bounds];
  v52 = v51 * 0.5;
  v53 = [(CKConversationListAccessoryView *)self backgroundView];
  v54 = [v53 layer];
  [v54 setCornerRadius:v52];

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