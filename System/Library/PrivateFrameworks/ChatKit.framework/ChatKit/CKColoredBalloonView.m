@interface CKColoredBalloonView
+ (Class)layerClass;
- (BOOL)_shouldApplySendLaterStyleForComposition:(id)a3;
- (BOOL)needsGlassPlatter;
- (BOOL)needsGroupOpacity;
- (CGRect)gradientOverrideFrame;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (CKBalloonImageView)effectViewMask;
- (CKBalloonImageView)mask;
- (CKColoredBalloonView)initWithFrame:(CGRect)a3;
- (CKGradientReferenceView)gradientReferenceView;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (id)description;
- (id)highlightOverlayColor;
- (id)resolvedGlassBalloonColor;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForComposition:(id)a3;
- (void)configureForMessagePart:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setAnimationDelegate:(id)a3;
- (void)setBalloonDescriptor:(CKBalloonDescriptor_t *)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCanUseOpaqueMask:(BOOL)a3;
- (void)setColor:(char)a3;
- (void)setEffectViewMaskImage:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGradientOverrideFrame:(CGRect)a3;
- (void)setGradientReferenceView:(id)a3;
- (void)setHasTail:(BOOL)a3;
- (void)setIsBeingUsedForSnapshot:(BOOL)a3;
- (void)setIsBeingUsedInThrowAnimation:(BOOL)a3;
- (void)setWantsGradient:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWantsGradient;
@end

@implementation CKColoredBalloonView

+ (Class)layerClass
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isCAShapeLayerBalloonsEnabled];

  if (v4)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKColoredBalloonView;
    v5 = objc_msgSendSuper2(&v7, sel_layerClass);
  }

  return v5;
}

- (void)updateWantsGradient
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 shouldUseDynamicGradient];

  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v8 = [v6 balloonColorsForColorType:{-[CKBalloonView color](self, "color")}];

    if ([v8 count] <= 1)
    {
      [(CKColoredBalloonView *)self setWantsGradient:0];
    }

    else
    {
      v7 = [(CKColoredBalloonView *)self gradientReferenceView];
      [(CKColoredBalloonView *)self setWantsGradient:v7 != 0];
    }
  }
}

- (void)prepareForDisplay
{
  v60.receiver = self;
  v60.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v60 prepareForDisplay];
  [(CKBalloonView *)self alignmentRectInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  [(CKColoredBalloonView *)self balloonDescriptor];
  v11 = [(CKColoredBalloonView *)self gradientView];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 balloonColorsForColorType:SBYTE8(v53)];

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __41__CKColoredBalloonView_prepareForDisplay__block_invoke;
  v51[3] = &unk_1E72F57D8;
  v51[4] = self;
  v15 = [v14 __imArrayByApplyingBlock:v51];
  v16 = +[CKPrintController sharedInstance];
  v17 = [v16 isPrinting];

  if (v17)
  {
    v50 = v15;
    [CKPrintController printResolvedColors:&v50 balloonDescriptor:&v52 coloredBalloonView:self];
    v18 = v50;

    v15 = v18;
  }

  v19 = [(CKColoredBalloonView *)self mask];
  v20 = [v11 superview];

  if (v20)
  {
    [v11 removeFromSuperview];
  }

  if (BYTE8(v59) == 1 && [(CKColoredBalloonView *)self wantsInvisibleInkEffectMask]&& [(CKColoredBalloonView *)self hasBackground])
  {
    [(CKColoredBalloonView *)self setEffectViewMaskImage:0];
    [(CKBalloonImageView *)self setImage:0];
    v21 = [v15 lastObject];
    [(CKColoredBalloonView *)self setBackgroundColor:v21];

    v46 = v56;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v22 = CKResizableBalloonPunchout(&v42);
    [v19 setImage:v22];

    v23 = [v19 superview];

    if (!v23)
    {
      [(CKColoredBalloonView *)self addSubview:v19];
    }
  }

  else
  {
    v24 = [(CKColoredBalloonView *)self balloonLayer];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    if ([(CKBalloonView *)self hasBalloonShape])
    {
      if (![(CKColoredBalloonView *)self needsGlassPlatter]|| BYTE2(v52) == 4)
      {
        v46 = v56;
        v47 = v57;
        v48 = v58;
        v49 = v59;
        v42 = v52;
        v43 = v53;
        v25 = v54;
        v26 = v55;
      }

      else
      {
        v46 = *&CKBalloonDescriptorZero[64];
        v47 = *&CKBalloonDescriptorZero[80];
        v48 = *&CKBalloonDescriptorZero[96];
        v49 = *&CKBalloonDescriptorZero[112];
        v42 = *CKBalloonDescriptorZero;
        v43 = *&CKBalloonDescriptorZero[16];
        v25 = *&CKBalloonDescriptorZero[32];
        v26 = *&CKBalloonDescriptorZero[48];
      }

      v44 = v25;
      v45 = v26;
    }

    else
    {
      [(CKBalloonView *)self balloonDescriptorForAbsentBalloonShape];
    }

    v27 = [(CKColoredBalloonView *)self traitCollection];
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    [v24 updateDescriptor:&v34 traitCollection:v27];
    v28 = [(CKColoredBalloonView *)self gradientReferenceView];
    [v24 setGradientReferenceView:v28];

    [(CKColoredBalloonView *)self updateGlassPlatterForDisplay];
    [v19 removeFromSuperview];
    if ([(CKColoredBalloonView *)self wantsInvisibleInkEffectMask]&& [(CKColoredBalloonView *)self hasBackground])
    {
      v38 = v56;
      v39 = v57;
      v40 = v58;
      v41 = v59;
      v34 = v52;
      v35 = v53;
      v36 = v54;
      v37 = v55;
      v29 = CKResizableBalloonMask(&v34);
      [(CKColoredBalloonView *)self setEffectViewMaskImage:v29];
    }

    else
    {
      [(CKColoredBalloonView *)self setEffectViewMaskImage:0];
    }
  }

  [(CKBalloonView *)self alignmentRectInsets];
  if (v6 != v33 || v4 != v30 || v10 != v32 || v8 != v31)
  {
    [(CKColoredBalloonView *)self setNeedsLayout];
  }
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  v14.receiver = self;
  v14.super_class = CKColoredBalloonView;
  [(CKBalloonDescriptor_t *)&v14 balloonDescriptor];
  if (!retstr->var10)
  {
    v5 = [(CKColoredBalloonView *)self traitCollection];
    retstr->var10 = [v5 userInterfaceStyle];
  }

  retstr->var2 = [(CKBalloonView *)self balloonStyle];
  [(CKBalloonView *)self strokeColor];
  retstr->var8.red = v6;
  retstr->var8.green = v7;
  retstr->var8.blue = v8;
  retstr->var8.alpha = v9;
  retstr->var6 = [(CKBalloonView *)self color];
  result = [(CKBalloonView *)self isBeingShownAsPreview];
  if (result)
  {
    if ([(CKBalloonView *)self balloonStyle]== 3 || (result = [(CKBalloonView *)self balloonStyle], result == 4))
    {
      v11 = *(MEMORY[0x1E69A6E08] + 16);
      *&retstr->var8.red = *MEMORY[0x1E69A6E08];
      *&retstr->var8.blue = v11;
      v12 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
      v13 = [v12 userInterfaceStyle];

      if (v13 == 2)
      {
        retstr->var6 = -1;
      }
    }
  }

  return result;
}

- (UIEdgeInsets)balloonTypePillContentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 textBalloonPillContentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

id __41__CKColoredBalloonView_prepareForDisplay__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 traitCollection];
  v5 = [v3 resolvedColorForTraitCollection:v4];

  return v5;
}

- (CKBalloonImageView)mask
{
  mask = self->_mask;
  if (!mask)
  {
    v4 = objc_alloc_init(CKBalloonImageView);
    v5 = self->_mask;
    self->_mask = v4;

    [(CKBalloonImageView *)self->_mask setUserInteractionEnabled:0];
    mask = self->_mask;
  }

  return mask;
}

- (BOOL)needsGlassPlatter
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  [v2 isTranscriptPortalEnabled];

  return 0;
}

- (CKGradientReferenceView)gradientReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  return WeakRetained;
}

- (void)configureForComposition:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKColoredBalloonView;
  v4 = a3;
  [(CKBalloonView *)&v7 configureForComposition:v4];
  v5 = [(CKColoredBalloonView *)self _shouldApplySendLaterStyleForComposition:v4, v7.receiver, v7.super_class];

  if (v5)
  {
    v6 = 15;
  }

  else
  {
    v6 = 1;
  }

  [(CKColoredBalloonView *)self setColor:v6];
}

- (BOOL)_shouldApplySendLaterStyleForComposition:(id)a3
{
  v3 = [a3 sendLaterPluginInfo];
  v4 = v3 != 0;

  return v4;
}

- (void)configureForMessagePart:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKColoredBalloonView;
  v4 = a3;
  [(CKBalloonView *)&v6 configureForMessagePart:v4];
  v5 = [v4 color];

  [(CKColoredBalloonView *)self setColor:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKBalloonView *)self color];
  v5 = [(CKColoredBalloonView *)self wantsGradient];
  v9.receiver = self;
  v9.super_class = CKColoredBalloonView;
  v6 = [(CKBalloonView *)&v9 description];
  v7 = [v3 stringWithFormat:@"[CKColoredBalloonView color:%ld wantsGradient:%d %@]", v4, v5, v6];

  return v7;
}

- (CKColoredBalloonView)initWithFrame:(CGRect)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CKColoredBalloonView;
  v3 = [(CKBalloonView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  [(CKColoredBalloonView *)v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[CKUIBehavior sharedBehaviors];
  if ([(CKGradientView *)v13 shouldUseDynamicGradient])
  {
    v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v15 = [v14 isCAShapeLayerBalloonsEnabled];

    if (v15)
    {
      goto LABEL_6;
    }

    v13 = [[CKGradientView alloc] initWithFrame:v6, v8, v10, v12];
    [(CKColoredBalloonView *)v4 setGradientView:v13];
  }

LABEL_6:
  [(CKColoredBalloonView *)v4 setColor:0xFFFFFFFFLL];
  v16 = [(UIView *)v4 registerForBalloonBackdropGroupTraitChangesWithTarget:v4 action:sel_balloonBackdropGroupDidChange];
  v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v18 = [v17 isTranscriptBackgroundsEnabled];

  if (v18)
  {
    v23[0] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v20 = [(CKColoredBalloonView *)v4 registerForTraitChanges:v19 withTarget:v4 action:sel_backgroundActiveTraitDidChange];
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v7 layoutSubviews];
  v3 = [(CKColoredBalloonView *)self gradientView];
  [(CKColoredBalloonView *)self bounds];
  [v3 setFrame:?];
  if ([(CKColoredBalloonView *)self wantsInvisibleInkEffectMask])
  {
    effectViewMask = self->_effectViewMask;
    v5 = [(CKBalloonView *)self invisibleInkEffectController];
    v6 = [v5 effectView];
    [v6 bounds];
    [(CKBalloonImageView *)effectViewMask setFrame:?];
  }
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3
{
  [(CKBalloonView *)self tailInsetsForViewSize:a3.width, a3.height];
  [(CKColoredBalloonView *)self balloonTypePillContentInsets];

  UIEdgeInsetsAdd();
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKColoredBalloonView *)self bounds];
  v9 = v8;
  v10.receiver = self;
  v10.super_class = CKColoredBalloonView;
  [(CKBalloonImageView *)&v10 setBounds:x, y, width, height];
  if (v9 != width)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKColoredBalloonView *)self frame];
  v9 = v8;
  v10.receiver = self;
  v10.super_class = CKColoredBalloonView;
  [(CKBalloonImageView *)&v10 setFrame:x, y, width, height];
  if (v9 != width)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CKColoredBalloonView;
  [(CKColoredBalloonView *)&v6 didMoveToWindow];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isCAShapeLayerBalloonsEnabled];

  if (v4)
  {
    v5 = [(CKColoredBalloonView *)self balloonLayer];
    [v5 viewDidMoveToWindow];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v3 prepareForReuse];
  [(CKBalloonView *)self setIsBeingShownAsPreview:0];
  [(CKColoredBalloonView *)self setGradientOverrideFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (void)setIsBeingUsedInThrowAnimation:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v6 setIsBeingUsedInThrowAnimation:?];
  v5 = [(CKColoredBalloonView *)self balloonLayer];
  [v5 setIsBeingUsedInThrowAnimation:v3];
}

- (void)setIsBeingUsedForSnapshot:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v6 setIsBeingUsedForSnapshot:?];
  v5 = [(CKColoredBalloonView *)self balloonLayer];
  [v5 setIsBeingUsedForSnapshot:v3];
}

- (id)resolvedGlassBalloonColor
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  [(CKColoredBalloonView *)self balloonDescriptor];
  if (IMColorComponentsIsZero())
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 theme];
    v5 = [v4 balloonColorsForColorType:SBYTE8(v11)];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__CKColoredBalloonView_resolvedGlassBalloonColor__block_invoke;
    v9[3] = &unk_1E72F57D8;
    v9[4] = self;
    v6 = [v5 __imArrayByApplyingBlock:v9];
    v7 = [v6 lastObject];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] ck_colorWithIMColorComponents:{0.0, 0.0, 0.0, 0.0}];
  }

  return v7;
}

id __49__CKColoredBalloonView_resolvedGlassBalloonColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 traitCollection];
  v5 = [v3 resolvedColorForTraitCollection:v4];

  return v5;
}

- (void)setHasTail:(BOOL)a3
{
  v3 = a3;
  if ([(CKBalloonView *)self hasTail]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CKColoredBalloonView;
    [(CKBalloonView *)&v5 setHasTail:v3];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setCanUseOpaqueMask:(BOOL)a3
{
  v3 = a3;
  if ([(CKBalloonView *)self canUseOpaqueMask]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CKColoredBalloonView;
    [(CKBalloonView *)&v5 setCanUseOpaqueMask:v3];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKColoredBalloonView *)self setNeedsLayout];
  }
}

- (BOOL)needsGroupOpacity
{
  v3 = [(CKColoredBalloonView *)self wantsGradient];
  if (v3)
  {

    LOBYTE(v3) = [(CKBalloonView *)self canUseOpaqueMask];
  }

  return v3;
}

- (id)highlightOverlayColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [v4 balloonOverlayColorForColorType:{-[CKBalloonView color](self, "color")}];

  return v5;
}

- (void)setColor:(char)a3
{
  v4.receiver = self;
  v4.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v4 setColor:a3];
  [(CKColoredBalloonView *)self updateWantsGradient];
  [(CKBalloonView *)self setNeedsPrepareForDisplay];
}

- (void)setGradientReferenceView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_gradientReferenceView, obj);
    v6 = [(CKColoredBalloonView *)self balloonLayer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(CKColoredBalloonView *)self balloonLayer];
      v9 = objc_loadWeakRetained(&self->_gradientReferenceView);
      [v8 setGradientReferenceView:v9];
    }

    v10 = [(CKColoredBalloonView *)self gradientView];
    [v10 setReferenceView:obj];

    [(CKColoredBalloonView *)self updateWantsGradient];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    v5 = obj;
  }
}

- (void)setWantsGradient:(BOOL)a3
{
  if (self->_wantsGradient != a3)
  {
    self->_wantsGradient = a3;
    [(CKColoredBalloonView *)self setNeedsLayout];
  }
}

- (void)setBalloonDescriptor:(CKBalloonDescriptor_t *)a3
{
  v10.receiver = self;
  v10.super_class = CKColoredBalloonView;
  v5 = *&a3->var8.blue;
  v9[4] = *&a3->var8.red;
  v9[5] = v5;
  v6 = *&a3->var11;
  v9[6] = *&a3->var9;
  v9[7] = v6;
  v7 = *&a3->var5;
  v9[0] = *&a3->var0;
  v9[1] = v7;
  v8 = *&a3->var7.blue;
  v9[2] = *&a3->var7.red;
  v9[3] = v8;
  [(CKBalloonView *)&v10 setBalloonDescriptor:v9];
  [(CKColoredBalloonView *)self setColor:a3->var6];
  [(CKBalloonView *)self setStrokeColor:a3->var8.red, a3->var8.green, a3->var8.blue, a3->var8.alpha];
  [(CKColoredBalloonView *)self updateWantsGradient];
  [(CKBalloonView *)self setNeedsPrepareForDisplay];
}

- (void)setAnimationDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonView *)self animationDelegate];

  if (v5 != v4)
  {
    v7.receiver = self;
    v7.super_class = CKColoredBalloonView;
    [(CKBalloonView *)&v7 setAnimationDelegate:v4];
    v6 = [(CKColoredBalloonView *)self balloonLayer];
    [v6 setAnimationDelegate:v4];
  }
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v5 = [v4 balloonBackdropFilters];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CKColoredBalloonView *)self layer];
    [v7 setAllowsGroupBlending:0];

    v8 = [(CKBalloonView *)self backdropFilterLayer];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E6979310]);
      [v8 setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      [v8 setGroupName:@"FSMBackdropGroup"];
      [v8 setScale:0.25];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      [(CKColoredBalloonView *)self balloonDescriptor];
      v9 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
      v19[4] = v24;
      v19[5] = v25;
      v19[6] = v26;
      v19[7] = v27;
      v19[0] = v20;
      v19[1] = v21;
      v19[2] = v22;
      v19[3] = v23;
      v10 = [(CKBalloonMaskLayer *)v9 initWithDescriptor:v19];
      [v8 setMask:v10];
      [(CKColoredBalloonView *)self bounds];
      [v8 setFrame:?];
      [(CKColoredBalloonView *)self bounds];
      [(CKBalloonMaskLayer *)v10 setFrame:?];
      v11 = [(CKColoredBalloonView *)self layer];
      [v11 insertSublayer:v8 atIndex:0];

      [(CKBalloonView *)self setBackdropFilterLayer:v8];
      [(CKBalloonImageView *)self setImageHidden:1];
      v12 = [(CKColoredBalloonView *)self balloonLayer];
      [v12 setBalloonHidden:1];
    }

    v13 = [v4 balloonBackdropFilters];
    [v8 setFilters:v13];
  }

  v14 = [(CKColoredBalloonView *)self layer];
  v15 = [v4 balloonFilters];
  [v14 setFilters:v15];

  v16 = [(CKColoredBalloonView *)self layer];
  v17 = [v4 balloonCompositingFilter];
  [v16 setCompositingFilter:v17];

  v18.receiver = self;
  v18.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v18 addFilter:v4];
}

- (void)clearFilters
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(CKBalloonView *)self filters];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * i) balloonBackdropFilters];
        v9 = [v8 count];

        if (v9)
        {
          v10 = [(CKColoredBalloonView *)self gradientView];
          [v10 setHidden:0];

          [(CKBalloonImageView *)self setImageHidden:0];
          v11 = [(CKColoredBalloonView *)self balloonLayer];
          [v11 setBalloonHidden:0];

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [(CKColoredBalloonView *)self layer];
  [v12 setAllowsGroupBlending:1];

  v13 = [(CKColoredBalloonView *)self layer];
  [v13 setFilters:0];

  v14 = [(CKColoredBalloonView *)self layer];
  [v14 setCompositingFilter:0];

  v15 = [(CKBalloonView *)self backdropFilterLayer];
  [v15 removeFromSuperlayer];

  [(CKBalloonView *)self setBackdropFilterLayer:0];
  v16.receiver = self;
  v16.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v16 clearFilters];
}

- (void)setEffectViewMaskImage:(id)a3
{
  v7 = a3;
  v4 = [(CKBalloonView *)self invisibleInkEffectController];
  v5 = [v4 effectView];

  if (v5)
  {
    if (v7)
    {
      v6 = [(CKColoredBalloonView *)self effectViewMask];
      [v6 setImage:v7];
      [v5 setMaskView:v6];
    }

    else
    {
      [v5 setMaskView:0];
    }
  }
}

- (CKBalloonImageView)effectViewMask
{
  effectViewMask = self->_effectViewMask;
  if (!effectViewMask)
  {
    v4 = objc_alloc_init(CKBalloonImageView);
    v5 = self->_effectViewMask;
    self->_effectViewMask = v4;

    effectViewMask = self->_effectViewMask;
  }

  return effectViewMask;
}

- (void)setGradientOverrideFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_gradientOverrideFrame = &self->_gradientOverrideFrame;
  if (!CGRectEqualToRect(self->_gradientOverrideFrame, a3))
  {
    p_gradientOverrideFrame->origin.x = x;
    p_gradientOverrideFrame->origin.y = y;
    p_gradientOverrideFrame->size.width = width;
    p_gradientOverrideFrame->size.height = height;
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isCAShapeLayerBalloonsEnabled];

    if (v10)
    {
      v20 = [(CKColoredBalloonView *)self balloonLayer];
      [v20 setGradientOverrideFrame:{x, y, width, height}];
    }

    else
    {
      v20 = [MEMORY[0x1E6979398] layer];
      v11 = [(CKColoredBalloonView *)self gradientView];
      v12 = [v11 gradient];
      [v20 setContents:{objc_msgSend(v12, "CGImage")}];

      [v20 setFrame:{x, y, width, height}];
      v13 = [(CKColoredBalloonView *)self layer];
      v14 = [(CKColoredBalloonView *)self gradientView];
      v15 = [v14 layer];
      [v13 insertSublayer:v20 above:v15];

      v16 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v17 = [(CKColoredBalloonView *)self gradientView];
      v18 = [v17 maskImage];
      v19 = [v16 initWithImage:v18];

      [(CKColoredBalloonView *)self bounds];
      [v19 setFrame:?];
      [(CKColoredBalloonView *)self setMaskView:v19];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKColoredBalloonView;
  v4 = a3;
  [(CKBalloonView *)&v7 traitCollectionDidChange:v4];
  v5 = [(CKColoredBalloonView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (CGRect)gradientOverrideFrame
{
  x = self->_gradientOverrideFrame.origin.x;
  y = self->_gradientOverrideFrame.origin.y;
  width = self->_gradientOverrideFrame.size.width;
  height = self->_gradientOverrideFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end