@interface CKColoredBalloonView
+ (Class)layerClass;
- (BOOL)_shouldApplySendLaterStyleForComposition:(id)composition;
- (BOOL)needsGlassPlatter;
- (BOOL)needsGroupOpacity;
- (CGRect)gradientOverrideFrame;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (CKBalloonImageView)effectViewMask;
- (CKBalloonImageView)mask;
- (CKColoredBalloonView)initWithFrame:(CGRect)frame;
- (CKGradientReferenceView)gradientReferenceView;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (id)description;
- (id)highlightOverlayColor;
- (id)resolvedGlassBalloonColor;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForComposition:(id)composition;
- (void)configureForMessagePart:(id)part;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setAnimationDelegate:(id)delegate;
- (void)setBalloonDescriptor:(CKBalloonDescriptor_t *)descriptor;
- (void)setBounds:(CGRect)bounds;
- (void)setCanUseOpaqueMask:(BOOL)mask;
- (void)setColor:(char)color;
- (void)setEffectViewMaskImage:(id)image;
- (void)setFrame:(CGRect)frame;
- (void)setGradientOverrideFrame:(CGRect)frame;
- (void)setGradientReferenceView:(id)view;
- (void)setHasTail:(BOOL)tail;
- (void)setIsBeingUsedForSnapshot:(BOOL)snapshot;
- (void)setIsBeingUsedInThrowAnimation:(BOOL)animation;
- (void)setWantsGradient:(BOOL)gradient;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWantsGradient;
@end

@implementation CKColoredBalloonView

+ (Class)layerClass
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

  if (isCAShapeLayerBalloonsEnabled)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKColoredBalloonView;
    v5 = objc_msgSendSuper2(&v7, sel_layerClass);
  }

  return v5;
}

- (void)updateWantsGradient
{
  v3 = +[CKUIBehavior sharedBehaviors];
  shouldUseDynamicGradient = [v3 shouldUseDynamicGradient];

  if (shouldUseDynamicGradient)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    v8 = [theme balloonColorsForColorType:{-[CKBalloonView color](self, "color")}];

    if ([v8 count] <= 1)
    {
      [(CKColoredBalloonView *)self setWantsGradient:0];
    }

    else
    {
      gradientReferenceView = [(CKColoredBalloonView *)self gradientReferenceView];
      [(CKColoredBalloonView *)self setWantsGradient:gradientReferenceView != 0];
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
  gradientView = [(CKColoredBalloonView *)self gradientView];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  v14 = [theme balloonColorsForColorType:SBYTE8(v53)];

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __41__CKColoredBalloonView_prepareForDisplay__block_invoke;
  v51[3] = &unk_1E72F57D8;
  v51[4] = self;
  v15 = [v14 __imArrayByApplyingBlock:v51];
  v16 = +[CKPrintController sharedInstance];
  isPrinting = [v16 isPrinting];

  if (isPrinting)
  {
    v50 = v15;
    [CKPrintController printResolvedColors:&v50 balloonDescriptor:&v52 coloredBalloonView:self];
    v18 = v50;

    v15 = v18;
  }

  mask = [(CKColoredBalloonView *)self mask];
  superview = [gradientView superview];

  if (superview)
  {
    [gradientView removeFromSuperview];
  }

  if (BYTE8(v59) == 1 && [(CKColoredBalloonView *)self wantsInvisibleInkEffectMask]&& [(CKColoredBalloonView *)self hasBackground])
  {
    [(CKColoredBalloonView *)self setEffectViewMaskImage:0];
    [(CKBalloonImageView *)self setImage:0];
    lastObject = [v15 lastObject];
    [(CKColoredBalloonView *)self setBackgroundColor:lastObject];

    v46 = v56;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v22 = CKResizableBalloonPunchout(&v42);
    [mask setImage:v22];

    superview2 = [mask superview];

    if (!superview2)
    {
      [(CKColoredBalloonView *)self addSubview:mask];
    }
  }

  else
  {
    balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
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

    traitCollection = [(CKColoredBalloonView *)self traitCollection];
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    [balloonLayer updateDescriptor:&v34 traitCollection:traitCollection];
    gradientReferenceView = [(CKColoredBalloonView *)self gradientReferenceView];
    [balloonLayer setGradientReferenceView:gradientReferenceView];

    [(CKColoredBalloonView *)self updateGlassPlatterForDisplay];
    [mask removeFromSuperview];
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
    traitCollection = [(CKColoredBalloonView *)self traitCollection];
    retstr->var10 = [traitCollection userInterfaceStyle];
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
      currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
      userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  [mEMORY[0x1E69A8070] isTranscriptPortalEnabled];

  return 0;
}

- (CKGradientReferenceView)gradientReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  return WeakRetained;
}

- (void)configureForComposition:(id)composition
{
  v7.receiver = self;
  v7.super_class = CKColoredBalloonView;
  compositionCopy = composition;
  [(CKBalloonView *)&v7 configureForComposition:compositionCopy];
  v5 = [(CKColoredBalloonView *)self _shouldApplySendLaterStyleForComposition:compositionCopy, v7.receiver, v7.super_class];

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

- (BOOL)_shouldApplySendLaterStyleForComposition:(id)composition
{
  sendLaterPluginInfo = [composition sendLaterPluginInfo];
  v4 = sendLaterPluginInfo != 0;

  return v4;
}

- (void)configureForMessagePart:(id)part
{
  v6.receiver = self;
  v6.super_class = CKColoredBalloonView;
  partCopy = part;
  [(CKBalloonView *)&v6 configureForMessagePart:partCopy];
  color = [partCopy color];

  [(CKColoredBalloonView *)self setColor:color];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  color = [(CKBalloonView *)self color];
  wantsGradient = [(CKColoredBalloonView *)self wantsGradient];
  v9.receiver = self;
  v9.super_class = CKColoredBalloonView;
  v6 = [(CKBalloonView *)&v9 description];
  v7 = [v3 stringWithFormat:@"[CKColoredBalloonView color:%ld wantsGradient:%d %@]", color, wantsGradient, v6];

  return v7;
}

- (CKColoredBalloonView)initWithFrame:(CGRect)frame
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CKColoredBalloonView;
  v3 = [(CKBalloonView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

    if (isCAShapeLayerBalloonsEnabled)
    {
      goto LABEL_6;
    }

    v13 = [[CKGradientView alloc] initWithFrame:v6, v8, v10, v12];
    [(CKColoredBalloonView *)v4 setGradientView:v13];
  }

LABEL_6:
  [(CKColoredBalloonView *)v4 setColor:0xFFFFFFFFLL];
  v16 = [(UIView *)v4 registerForBalloonBackdropGroupTraitChangesWithTarget:v4 action:sel_balloonBackdropGroupDidChange];
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070]2 isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
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
  gradientView = [(CKColoredBalloonView *)self gradientView];
  [(CKColoredBalloonView *)self bounds];
  [gradientView setFrame:?];
  if ([(CKColoredBalloonView *)self wantsInvisibleInkEffectMask])
  {
    effectViewMask = self->_effectViewMask;
    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    effectView = [invisibleInkEffectController effectView];
    [effectView bounds];
    [(CKBalloonImageView *)effectViewMask setFrame:?];
  }
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size
{
  [(CKBalloonView *)self tailInsetsForViewSize:size.width, size.height];
  [(CKColoredBalloonView *)self balloonTypePillContentInsets];

  UIEdgeInsetsAdd();
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

  if (isCAShapeLayerBalloonsEnabled)
  {
    balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
    [balloonLayer viewDidMoveToWindow];
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

- (void)setIsBeingUsedInThrowAnimation:(BOOL)animation
{
  animationCopy = animation;
  v6.receiver = self;
  v6.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v6 setIsBeingUsedInThrowAnimation:?];
  balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
  [balloonLayer setIsBeingUsedInThrowAnimation:animationCopy];
}

- (void)setIsBeingUsedForSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v6.receiver = self;
  v6.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v6 setIsBeingUsedForSnapshot:?];
  balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
  [balloonLayer setIsBeingUsedForSnapshot:snapshotCopy];
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
    theme = [v3 theme];
    v5 = [theme balloonColorsForColorType:SBYTE8(v11)];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__CKColoredBalloonView_resolvedGlassBalloonColor__block_invoke;
    v9[3] = &unk_1E72F57D8;
    v9[4] = self;
    v6 = [v5 __imArrayByApplyingBlock:v9];
    lastObject = [v6 lastObject];
  }

  else
  {
    lastObject = [MEMORY[0x1E69DC888] ck_colorWithIMColorComponents:{0.0, 0.0, 0.0, 0.0}];
  }

  return lastObject;
}

id __49__CKColoredBalloonView_resolvedGlassBalloonColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 traitCollection];
  v5 = [v3 resolvedColorForTraitCollection:v4];

  return v5;
}

- (void)setHasTail:(BOOL)tail
{
  tailCopy = tail;
  if ([(CKBalloonView *)self hasTail]!= tail)
  {
    v5.receiver = self;
    v5.super_class = CKColoredBalloonView;
    [(CKBalloonView *)&v5 setHasTail:tailCopy];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setCanUseOpaqueMask:(BOOL)mask
{
  maskCopy = mask;
  if ([(CKBalloonView *)self canUseOpaqueMask]!= mask)
  {
    v5.receiver = self;
    v5.super_class = CKColoredBalloonView;
    [(CKBalloonView *)&v5 setCanUseOpaqueMask:maskCopy];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKColoredBalloonView *)self setNeedsLayout];
  }
}

- (BOOL)needsGroupOpacity
{
  wantsGradient = [(CKColoredBalloonView *)self wantsGradient];
  if (wantsGradient)
  {

    LOBYTE(wantsGradient) = [(CKBalloonView *)self canUseOpaqueMask];
  }

  return wantsGradient;
}

- (id)highlightOverlayColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  v5 = [theme balloonOverlayColorForColorType:{-[CKBalloonView color](self, "color")}];

  return v5;
}

- (void)setColor:(char)color
{
  v4.receiver = self;
  v4.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v4 setColor:color];
  [(CKColoredBalloonView *)self updateWantsGradient];
  [(CKBalloonView *)self setNeedsPrepareForDisplay];
}

- (void)setGradientReferenceView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_gradientReferenceView, obj);
    balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      balloonLayer2 = [(CKColoredBalloonView *)self balloonLayer];
      v9 = objc_loadWeakRetained(&self->_gradientReferenceView);
      [balloonLayer2 setGradientReferenceView:v9];
    }

    gradientView = [(CKColoredBalloonView *)self gradientView];
    [gradientView setReferenceView:obj];

    [(CKColoredBalloonView *)self updateWantsGradient];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    v5 = obj;
  }
}

- (void)setWantsGradient:(BOOL)gradient
{
  if (self->_wantsGradient != gradient)
  {
    self->_wantsGradient = gradient;
    [(CKColoredBalloonView *)self setNeedsLayout];
  }
}

- (void)setBalloonDescriptor:(CKBalloonDescriptor_t *)descriptor
{
  v10.receiver = self;
  v10.super_class = CKColoredBalloonView;
  v5 = *&descriptor->var8.blue;
  v9[4] = *&descriptor->var8.red;
  v9[5] = v5;
  v6 = *&descriptor->var11;
  v9[6] = *&descriptor->var9;
  v9[7] = v6;
  v7 = *&descriptor->var5;
  v9[0] = *&descriptor->var0;
  v9[1] = v7;
  v8 = *&descriptor->var7.blue;
  v9[2] = *&descriptor->var7.red;
  v9[3] = v8;
  [(CKBalloonView *)&v10 setBalloonDescriptor:v9];
  [(CKColoredBalloonView *)self setColor:descriptor->var6];
  [(CKBalloonView *)self setStrokeColor:descriptor->var8.red, descriptor->var8.green, descriptor->var8.blue, descriptor->var8.alpha];
  [(CKColoredBalloonView *)self updateWantsGradient];
  [(CKBalloonView *)self setNeedsPrepareForDisplay];
}

- (void)setAnimationDelegate:(id)delegate
{
  delegateCopy = delegate;
  animationDelegate = [(CKBalloonView *)self animationDelegate];

  if (animationDelegate != delegateCopy)
  {
    v7.receiver = self;
    v7.super_class = CKColoredBalloonView;
    [(CKBalloonView *)&v7 setAnimationDelegate:delegateCopy];
    balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
    [balloonLayer setAnimationDelegate:delegateCopy];
  }
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  balloonBackdropFilters = [filterCopy balloonBackdropFilters];
  v6 = [balloonBackdropFilters count];

  if (v6)
  {
    layer = [(CKColoredBalloonView *)self layer];
    [layer setAllowsGroupBlending:0];

    backdropFilterLayer = [(CKBalloonView *)self backdropFilterLayer];
    if (!backdropFilterLayer)
    {
      backdropFilterLayer = objc_alloc_init(MEMORY[0x1E6979310]);
      [backdropFilterLayer setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      [backdropFilterLayer setGroupName:@"FSMBackdropGroup"];
      [backdropFilterLayer setScale:0.25];
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
      [backdropFilterLayer setMask:v10];
      [(CKColoredBalloonView *)self bounds];
      [backdropFilterLayer setFrame:?];
      [(CKColoredBalloonView *)self bounds];
      [(CKBalloonMaskLayer *)v10 setFrame:?];
      layer2 = [(CKColoredBalloonView *)self layer];
      [layer2 insertSublayer:backdropFilterLayer atIndex:0];

      [(CKBalloonView *)self setBackdropFilterLayer:backdropFilterLayer];
      [(CKBalloonImageView *)self setImageHidden:1];
      balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
      [balloonLayer setBalloonHidden:1];
    }

    balloonBackdropFilters2 = [filterCopy balloonBackdropFilters];
    [backdropFilterLayer setFilters:balloonBackdropFilters2];
  }

  layer3 = [(CKColoredBalloonView *)self layer];
  balloonFilters = [filterCopy balloonFilters];
  [layer3 setFilters:balloonFilters];

  layer4 = [(CKColoredBalloonView *)self layer];
  balloonCompositingFilter = [filterCopy balloonCompositingFilter];
  [layer4 setCompositingFilter:balloonCompositingFilter];

  v18.receiver = self;
  v18.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v18 addFilter:filterCopy];
}

- (void)clearFilters
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  filters = [(CKBalloonView *)self filters];
  v4 = [filters countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(filters);
        }

        balloonBackdropFilters = [*(*(&v17 + 1) + 8 * i) balloonBackdropFilters];
        v9 = [balloonBackdropFilters count];

        if (v9)
        {
          gradientView = [(CKColoredBalloonView *)self gradientView];
          [gradientView setHidden:0];

          [(CKBalloonImageView *)self setImageHidden:0];
          balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
          [balloonLayer setBalloonHidden:0];

          goto LABEL_11;
        }
      }

      v5 = [filters countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  layer = [(CKColoredBalloonView *)self layer];
  [layer setAllowsGroupBlending:1];

  layer2 = [(CKColoredBalloonView *)self layer];
  [layer2 setFilters:0];

  layer3 = [(CKColoredBalloonView *)self layer];
  [layer3 setCompositingFilter:0];

  backdropFilterLayer = [(CKBalloonView *)self backdropFilterLayer];
  [backdropFilterLayer removeFromSuperlayer];

  [(CKBalloonView *)self setBackdropFilterLayer:0];
  v16.receiver = self;
  v16.super_class = CKColoredBalloonView;
  [(CKBalloonView *)&v16 clearFilters];
}

- (void)setEffectViewMaskImage:(id)image
{
  imageCopy = image;
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  if (effectView)
  {
    if (imageCopy)
    {
      effectViewMask = [(CKColoredBalloonView *)self effectViewMask];
      [effectViewMask setImage:imageCopy];
      [effectView setMaskView:effectViewMask];
    }

    else
    {
      [effectView setMaskView:0];
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

- (void)setGradientOverrideFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_gradientOverrideFrame = &self->_gradientOverrideFrame;
  if (!CGRectEqualToRect(self->_gradientOverrideFrame, frame))
  {
    p_gradientOverrideFrame->origin.x = x;
    p_gradientOverrideFrame->origin.y = y;
    p_gradientOverrideFrame->size.width = width;
    p_gradientOverrideFrame->size.height = height;
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

    if (isCAShapeLayerBalloonsEnabled)
    {
      balloonLayer = [(CKColoredBalloonView *)self balloonLayer];
      [balloonLayer setGradientOverrideFrame:{x, y, width, height}];
    }

    else
    {
      balloonLayer = [MEMORY[0x1E6979398] layer];
      gradientView = [(CKColoredBalloonView *)self gradientView];
      gradient = [gradientView gradient];
      [balloonLayer setContents:{objc_msgSend(gradient, "CGImage")}];

      [balloonLayer setFrame:{x, y, width, height}];
      layer = [(CKColoredBalloonView *)self layer];
      gradientView2 = [(CKColoredBalloonView *)self gradientView];
      layer2 = [gradientView2 layer];
      [layer insertSublayer:balloonLayer above:layer2];

      v16 = objc_alloc(MEMORY[0x1E69DCAE0]);
      gradientView3 = [(CKColoredBalloonView *)self gradientView];
      maskImage = [gradientView3 maskImage];
      v19 = [v16 initWithImage:maskImage];

      [(CKColoredBalloonView *)self bounds];
      [v19 setFrame:?];
      [(CKColoredBalloonView *)self setMaskView:v19];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = CKColoredBalloonView;
  changeCopy = change;
  [(CKBalloonView *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(CKColoredBalloonView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

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