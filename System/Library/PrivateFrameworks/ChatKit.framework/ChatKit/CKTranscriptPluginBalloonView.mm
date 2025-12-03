@interface CKTranscriptPluginBalloonView
- (BOOL)canUseOpaqueMask;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)hasBalloonShape;
- (BOOL)needsGlassPlatter;
- (BOOL)shouldShowBackdropBalloonLayer;
- (BOOL)shouldShowPluginOverlayBalloonLayer;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKBalloonDescriptor_t)backdropBalloonDescriptor;
- (CKBalloonDescriptor_t)pluginContainerMaskBalloonDescriptor;
- (CKBalloonDescriptor_t)pluginOverlayBalloonDescriptor;
- (CKTranscriptPluginBalloonView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)pluginInsets;
- (UIViewController)pluginViewController;
- (id)highlightOverlayColor;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)imageForInvisibleInkEffectView;
- (void)_pluginViewReadyForSnapshot:(id)snapshot;
- (void)_reparentCurrentPluginView;
- (void)_setAndAddPluginViewAsSubview:(id)subview;
- (void)addFilter:(id)filter;
- (void)attachInvisibleInkEffectView;
- (void)clearFilters;
- (void)configureForComposition:(id)composition;
- (void)configureForTranscriptPlugin:(id)plugin context:(id)context;
- (void)detachInvisibleInkEffectView;
- (void)invisibleInkEffectViewWasUncovered;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setBackgroundLuminance:(double)luminance;
- (void)setCanUseOpaqueMask:(BOOL)mask;
- (void)setHasHighlightOverlay:(BOOL)overlay animated:(BOOL)animated autoDismiss:(BOOL)dismiss;
- (void)setHasTail:(BOOL)tail;
- (void)setPluginSnapshotView:(id)view;
- (void)setPluginSnapshotViewForThrowAnimation:(id)animation;
- (void)setPluginView:(id)view;
- (void)setPluginView:(id)view pluginController:(id)controller;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)setSuggestedActionsBackgroundColor:(id)color;
- (void)setSuppressMask:(BOOL)mask;
- (void)setUserInterfaceLevel:(int64_t)level;
- (void)setUserInterfaceStyle:(int64_t)style;
- (void)updateBalloonMasks;
@end

@implementation CKTranscriptPluginBalloonView

- (void)configureForComposition:(id)composition
{
  compositionCopy = composition;
  v15.receiver = self;
  v15.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v15 configureForComposition:compositionCopy];
  shelfPluginPayload = [compositionCopy shelfPluginPayload];
  if (!shelfPluginPayload)
  {
    pluginDisplayContainers = [compositionCopy pluginDisplayContainers];
    lastObject = [pluginDisplayContainers lastObject];

    pluginPayload = [lastObject pluginPayload];

    if (pluginPayload)
    {
      goto LABEL_4;
    }

    shelfPluginPayload = [compositionCopy firstEmbeddedPluginPayload];
  }

  pluginPayload = shelfPluginPayload;
LABEL_4:
  [pluginPayload setIsFromMe:1];
  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  pluginBundleID = [pluginPayload pluginBundleID];
  v11 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:pluginBundleID];

  v12 = [objc_alloc(objc_msgSend(v11 "dataSourceClass"))];
  v13 = [objc_alloc(objc_msgSend(v11 "bubbleClass"))];
  pluginContentView = [v13 pluginContentView];
  [(CKTranscriptPluginBalloonView *)self setPluginView:pluginContentView pluginController:v13];

  [(CKTranscriptPluginBalloonView *)self setDataSource:v12];
}

- (CKTranscriptPluginBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v34.receiver = self;
  v34.super_class = CKTranscriptPluginBalloonView;
  v7 = [(CKBalloonView *)&v34 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(CKBalloonImageView *)v7 setContentsTransformAnimationEnabled:1];
    [(CKTranscriptPluginBalloonView *)v8 setMayReparentPluginViews:1];
    v9 = +[CKUIBehavior sharedBehaviors];
    theme = [v9 theme];
    v11 = [theme unfilledBalloonColorForColorType:0xFFFFFFFFLL];
    [v11 ck_imColorComponents];
    [(CKBalloonView *)v8 setStrokeColor:?];

    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    pluginContainerView = v8->_pluginContainerView;
    v8->_pluginContainerView = v12;

    [(CKTranscriptPluginBalloonView *)v8 addSubview:v8->_pluginContainerView];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    [(CKTranscriptPluginBalloonView *)v8 pluginContainerMaskBalloonDescriptor];
    v14 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
    v25[4] = v30;
    v25[5] = v31;
    v25[6] = v32;
    v25[7] = v33;
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;
    v15 = [(CKBalloonMaskLayer *)v14 initWithDescriptor:v25];
    pluginContainerMaskLayer = v8->_pluginContainerMaskLayer;
    v8->_pluginContainerMaskLayer = v15;

    v17 = v8->_pluginContainerMaskLayer;
    layer = [(UIView *)v8->_pluginContainerView layer];
    [layer setMask:v17];

    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v20 = [systemTraitsAffectingColorAppearance mutableCopy];

    [v20 addObject:objc_opt_class()];
    v21 = [v20 copy];
    v22 = [v21 copy];
    v23 = [(CKTranscriptPluginBalloonView *)v8 registerForTraitChanges:v22 withHandler:&__block_literal_global_167];
  }

  return v8;
}

- (UIEdgeInsets)pluginInsets
{
  if ([(CKTranscriptPluginBalloonView *)self isScheduled])
  {
    bubblePath = [(CKBalloonView *)self bubblePath];
    [(CKTranscriptPluginBalloonView *)self maskFrame];
    [bubblePath tailInsetsForBubbleSize:{v4, v5}];
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 linkPreviewSendLaterInsets];

    UIEdgeInsetsAdd();
  }

  else
  {
    bubblePath = [(CKTranscriptPluginBalloonView *)self pluginContainerMaskLayer];
    [bubblePath tailInsets];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v23.receiver = self;
  v23.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v23 layoutSublayersOfLayer:layer];
  [(CKTranscriptPluginBalloonView *)self maskFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(CKTranscriptPluginBalloonView *)self isScheduled])
  {
    [(CKTranscriptPluginBalloonView *)self pluginInsets];
    v13 = v7 + v12;
    v16 = v9 - (v14 + v15);
    v18 = v11 - (v12 + v17);
    backdropBalloonLayer = self->_backdropBalloonLayer;
    v20 = v5 + v14;
    v21 = v13;
    v22 = v16;
  }

  else
  {
    backdropBalloonLayer = self->_backdropBalloonLayer;
    v20 = v5;
    v21 = v7;
    v22 = v9;
    v18 = v11;
  }

  [(CKBalloonLayer *)backdropBalloonLayer setFrame:v20, v21, v22, v18];
  [(CKBalloonLayer *)self->_pluginOverlayBalloonLayer setFrame:v5, v7, v9, v11];
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v38 layoutSubviews];
  if ([(CKTranscriptPluginBalloonView *)self hasBalloonShape])
  {
    pluginContainerMaskLayer = self->_pluginContainerMaskLayer;
  }

  else
  {
    pluginContainerMaskLayer = 0;
  }

  layer = [(UIView *)self->_pluginContainerView layer];
  [layer setMask:pluginContainerMaskLayer];

  [(CKTranscriptPluginBalloonView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(CKTranscriptPluginBalloonView *)self isScheduled])
  {
    [(CKTranscriptPluginBalloonView *)self pluginInsets];
    v6 = v6 + v13;
    v8 = v8 + v14;
    v10 = v10 - (v13 + v15);
    v12 = v12 - (v14 + v16);
  }

  [(UIView *)self->_pluginContainerView setFrame:v6, v8, v10, v12];
  [(UIView *)self->_pluginContainerView bounds];
  [(CKBalloonMaskLayer *)self->_pluginContainerMaskLayer setFrame:?];
  [(CKBalloonMaskLayer *)self->_pluginContainerMaskLayer bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ([(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    [(CKBalloonView *)self suggestedActionsMenuAdditionalHeight];
    v24 = v24 - v25;
  }

  [(CKTranscriptPluginView *)self->_pluginView setFrame:v18, v20, v22, v24];
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];
  [effectView setFrame:{v18, v20, v22, v24}];

  isScheduled = [(CKTranscriptPluginBalloonView *)self isScheduled];
  v29 = 1.0;
  if (isScheduled)
  {
    isTranscriptBackgroundActive = [(CKBalloonView *)self isTranscriptBackgroundActive];
    v29 = 0.5;
    if (isTranscriptBackgroundActive)
    {
      v29 = 1.0;
    }
  }

  [(CKTranscriptPluginView *)self->_pluginView setAlpha:v29];
  if ([(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    [(CKBalloonView *)self suggestedActionsMenuAdditionalHeight];
    v32 = v31;
    [(CKTranscriptPluginBalloonView *)self bounds];
    v34 = v33 - v32;
    [(CKTranscriptPluginBalloonView *)self bounds];
    v36 = v35;
    suggestedActionsBackgroundView = [(CKTranscriptPluginBalloonView *)self suggestedActionsBackgroundView];
    [suggestedActionsBackgroundView setFrame:{0.0, v34, v36, v32}];
  }
}

- (void)prepareForDisplay
{
  v20.receiver = self;
  v20.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v20 prepareForDisplay];
  [(CKTranscriptPluginBalloonView *)self updateBalloonMasks];
  pluginView = [(CKTranscriptPluginBalloonView *)self pluginView];
  [pluginView layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v19 = v10;
  [(CKBalloonLayer *)self->_backdropBalloonLayer tailInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (!CKFloatApproximatelyEqualToFloatWithTolerance(v11, v5, 0.001) || !CKFloatApproximatelyEqualToFloatWithTolerance(v14, v7, 0.001) || !CKFloatApproximatelyEqualToFloatWithTolerance(v16, v9, 0.001) || !CKFloatApproximatelyEqualToFloatWithTolerance(v18, v19, 0.001))
  {
    [pluginView setLayoutMargins:{v12, v14, v16, v18}];
    [pluginView layoutMarginsDidChange];
  }

  if (objc_opt_respondsToSelector())
  {
    [pluginView setPluginViewDelegate:self];
  }
}

- (BOOL)shouldShowBackdropBalloonLayer
{
  bundleID = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [bundleID isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  return [(CKTranscriptPluginBalloonView *)self hasBalloonShape];
}

- (BOOL)shouldShowPluginOverlayBalloonLayer
{
  bundleID = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [bundleID isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  if ([(CKTranscriptPluginBalloonView *)self isScheduled])
  {
    return 1;
  }

  [(CKBalloonView *)self balloonDescriptor:0];
  if (v9 - 1 < 4)
  {
    return 1;
  }

  if (v9 != 5)
  {
    return 0;
  }

  traitCollection = [(CKTranscriptPluginBalloonView *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  return isTranscriptBackgroundActive ^ 1;
}

- (CKBalloonDescriptor_t)backdropBalloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  [(CKBalloonView *)self balloonDescriptor];
  retstr->var2 = 0;
  retstr->var6 = -1;
  result = [(CKTranscriptPluginBalloonView *)self isScheduled];
  if (result)
  {
    retstr->var1 = 0;
    *&retstr->var13 = 256;
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 linkPreviewSendLaterInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    if (v10 >= v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = v14;
    }

    if (v15 < v8)
    {
      v15 = v8;
    }

    if (v15 < v12)
    {
      v15 = v12;
    }

    retstr->var5 = retstr->var5 - v15;
  }

  retstr->var9 = 1;
  return result;
}

- (CKBalloonDescriptor_t)pluginOverlayBalloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  result = [(CKBalloonView *)self balloonDescriptor];
  v6 = 0;
  var2 = retstr->var2;
  if (var2 > 2)
  {
    if (var2 - 3 >= 2)
    {
      if (var2 == 5)
      {
        traitCollection = [(CKTranscriptPluginBalloonView *)self traitCollection];
        isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

        v6 = isTranscriptBackgroundActive ^ 1;
      }
    }

    else
    {
      v6 = 3;
    }
  }

  else if (var2 - 1 >= 2)
  {
    if (!retstr->var2)
    {
      result = [(CKTranscriptPluginBalloonView *)self isScheduled];
      if (result)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  retstr->var2 = v6;
  return result;
}

- (CKBalloonDescriptor_t)pluginContainerMaskBalloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  return [(CKTranscriptPluginBalloonView *)self backdropBalloonDescriptor];
}

- (void)updateBalloonMasks
{
  traitCollection = [(CKTranscriptPluginBalloonView *)self traitCollection];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  [(CKTranscriptPluginBalloonView *)self pluginContainerMaskBalloonDescriptor];
  pluginContainerMaskLayer = self->_pluginContainerMaskLayer;
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  [(CKBalloonMaskLayer *)pluginContainerMaskLayer updateDescriptor:&v25];
  if ([(CKTranscriptPluginBalloonView *)self shouldShowBackdropBalloonLayer])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    [(CKTranscriptPluginBalloonView *)self backdropBalloonDescriptor];
    backdropBalloonLayer = self->_backdropBalloonLayer;
    if (backdropBalloonLayer)
    {
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      v20 = v28;
      [(CKBalloonLayer *)backdropBalloonLayer updateDescriptor:&v17 traitCollection:traitCollection];
    }

    else
    {
      v7 = [_TtC7ChatKit14CKBalloonLayer alloc];
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      v20 = v28;
      v8 = [(CKBalloonLayer *)v7 initWithDescriptor:&v17 traitCollection:traitCollection];
      v9 = self->_backdropBalloonLayer;
      self->_backdropBalloonLayer = v8;

      layer = [(CKTranscriptPluginBalloonView *)self layer];
      [layer insertSublayer:self->_backdropBalloonLayer atIndex:0];
    }
  }

  else
  {
    [(CKBalloonLayer *)self->_backdropBalloonLayer removeFromSuperlayer];
    v6 = self->_backdropBalloonLayer;
    self->_backdropBalloonLayer = 0;
  }

  if ([(CKTranscriptPluginBalloonView *)self shouldShowPluginOverlayBalloonLayer])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    [(CKTranscriptPluginBalloonView *)self pluginOverlayBalloonDescriptor];
    pluginOverlayBalloonLayer = self->_pluginOverlayBalloonLayer;
    if (pluginOverlayBalloonLayer)
    {
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      v20 = v28;
      [(CKBalloonLayer *)pluginOverlayBalloonLayer updateDescriptor:&v17 traitCollection:traitCollection];
    }

    else
    {
      v13 = [_TtC7ChatKit14CKBalloonLayer alloc];
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      v20 = v28;
      v14 = [(CKBalloonLayer *)v13 initWithDescriptor:&v17 traitCollection:traitCollection];
      v15 = self->_pluginOverlayBalloonLayer;
      self->_pluginOverlayBalloonLayer = v14;

      [(CKBalloonLayer *)self->_pluginOverlayBalloonLayer setAllowsHitTesting:0];
      layer2 = [(CKTranscriptPluginBalloonView *)self layer];
      [layer2 addSublayer:self->_pluginOverlayBalloonLayer];
    }
  }

  else
  {
    [(CKBalloonLayer *)self->_pluginOverlayBalloonLayer removeFromSuperlayer];
    v12 = self->_pluginOverlayBalloonLayer;
    self->_pluginOverlayBalloonLayer = 0;
  }
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  if (self->_userInterfaceStyle != style)
  {
    self->_userInterfaceStyle = style;
    [(CKTranscriptPluginBalloonView *)self updateBalloonMasks];
  }
}

- (void)setUserInterfaceLevel:(int64_t)level
{
  if (self->_userInterfaceLevel != level)
  {
    self->_userInterfaceLevel = level;
    [(CKTranscriptPluginBalloonView *)self updateBalloonMasks];
  }
}

- (void)setHasTail:(BOOL)tail
{
  tailCopy = tail;
  if ([(CKBalloonView *)self hasTail]!= tail)
  {
    v5.receiver = self;
    v5.super_class = CKTranscriptPluginBalloonView;
    [(CKBalloonView *)&v5 setHasTail:tailCopy];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (BOOL)hasBalloonShape
{
  bundleID = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [bundleID isEqualToString:v4];

  v8 = 0;
  if ([(CKBalloonView *)self isStagedForSend]|| !v5)
  {
    v6 = IMBalloonExtensionIDWithSuffix();
    v7 = [bundleID isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      if (![bundleID isEqualToString:*MEMORY[0x1E69A69E0]] || (-[CKTranscriptPluginBalloonView traitCollection](self, "traitCollection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isTranscriptBackgroundActive"), v10, v11))
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v4 prepareForReuse];
  [(CKTranscriptPluginBalloonView *)self setPluginView:0 pluginController:0];
  [(CKTranscriptPluginBalloonView *)self setPluginSnapshotView:0];
  pluginSnapshotViewForThrowAnimation = [(CKTranscriptPluginBalloonView *)self pluginSnapshotViewForThrowAnimation];
  [pluginSnapshotViewForThrowAnimation removeFromSuperview];

  [(CKTranscriptPluginBalloonView *)self setPluginSnapshotViewForThrowAnimation:0];
  [(CKTranscriptPluginBalloonView *)self setDataSource:0];
  [(CKTranscriptPluginBalloonView *)self setSuppressMask:0];
  [(CKTranscriptPluginBalloonView *)self setScheduled:0];
}

- (BOOL)canUseOpaqueMask
{
  v3 = +[CKPrintController sharedInstance];
  if ([v3 isPrinting])
  {

LABEL_4:
    v7.receiver = self;
    v7.super_class = CKTranscriptPluginBalloonView;
    return [(CKBalloonView *)&v7 canUseOpaqueMask];
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  canPluginBalloonsUseOpaqueMask = [v4 canPluginBalloonsUseOpaqueMask];

  if (canPluginBalloonsUseOpaqueMask)
  {
    goto LABEL_4;
  }

  return 0;
}

- (void)setCanUseOpaqueMask:(BOOL)mask
{
  maskCopy = mask;
  v5 = +[CKPrintController sharedInstance];
  if ([v5 isPrinting])
  {
  }

  else
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    canPluginBalloonsUseOpaqueMask = [v6 canPluginBalloonsUseOpaqueMask];

    if (!canPluginBalloonsUseOpaqueMask)
    {
      return;
    }
  }

  if ([(CKTranscriptPluginBalloonView *)self canUseOpaqueMask]!= maskCopy)
  {
    v8.receiver = self;
    v8.super_class = CKTranscriptPluginBalloonView;
    [(CKBalloonView *)&v8 setCanUseOpaqueMask:maskCopy];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKTranscriptPluginBalloonView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v8;
  }

  dataSource = [(CKTranscriptPluginBalloonView *)self dataSource];

  if (dataSource)
  {
    [(CKTranscriptPluginBalloonView *)self pluginInsets];
    v12 = width - (v10 + v11);
    v15 = height - (v13 + v14);
    dataSource2 = [(CKTranscriptPluginBalloonView *)self dataSource];
    [dataSource2 sizeThatFits:{v12, v15}];
    v18 = v17;
    v20 = v19;

    [(CKTranscriptPluginBalloonView *)self pluginInsets];
    v22 = v21;
    v25 = v18 + v23 + v24;
    v27 = v20 + v22 + v26;
  }

  else
  {
    v25 = *MEMORY[0x1E695F060];
    v27 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v27;
  result.width = v25;
  return result;
}

- (id)highlightOverlayColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  pluginBalloonSelectionOverlayColor = [v2 pluginBalloonSelectionOverlayColor];

  return pluginBalloonSelectionOverlayColor;
}

- (void)setBackgroundLuminance:(double)luminance
{
  v8.receiver = self;
  v8.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v8 setBackgroundLuminance:?];
  pluginViewController = [(CKTranscriptPluginBalloonView *)self pluginViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    pluginViewController2 = [(CKTranscriptPluginBalloonView *)self pluginViewController];
    [pluginViewController2 didChangeBackgroundLuminance:luminance];
  }
}

- (BOOL)needsGlassPlatter
{
  bundleID = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [bundleID isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptPortalEnabled = [mEMORY[0x1E69A8070] isTranscriptPortalEnabled];

  if (!isTranscriptPortalEnabled)
  {
    return 0;
  }

  traitCollection = [(CKTranscriptPluginBalloonView *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  return isTranscriptBackgroundActive;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v32.receiver = self;
  v32.super_class = CKTranscriptPluginBalloonView;
  v8 = [(CKTranscriptPluginBalloonView *)&v32 hitTest:eventCopy withEvent:x, y];
  if ([(CKBalloonView *)self invisibleInkEffectEnabled]&& [(CKTranscriptPluginBalloonView *)self isInteractive])
  {
    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    effectView = [invisibleInkEffectController effectView];

    coverageTracker = [effectView coverageTracker];
    v12 = coverageTracker;
    if (coverageTracker && ([coverageTracker isUncovered] & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if ([(CKTranscriptPluginBalloonView *)self isInteractive])
  {
    pluginView = [(CKTranscriptPluginBalloonView *)self pluginView];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      pluginView2 = [(CKTranscriptPluginBalloonView *)self pluginView];
      interactiveViews = [pluginView2 interactiveViews];
      v17 = [interactiveViews count];

      if (v17)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        pluginView3 = [(CKTranscriptPluginBalloonView *)self pluginView];
        interactiveViews2 = [pluginView3 interactiveViews];

        v20 = [interactiveViews2 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v29;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v29 != v22)
              {
                objc_enumerationMutation(interactiveViews2);
              }

              v24 = *(*(&v28 + 1) + 8 * i);
              [v24 convertPoint:self fromView:{x, y}];
              v25 = [v24 hitTest:eventCopy withEvent:?];
              if (v25)
              {
                v26 = v25;

                v8 = v26;
                goto LABEL_19;
              }
            }

            v21 = [interactiveViews2 countByEnumeratingWithState:&v28 objects:v33 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }
    }
  }

  v8 = v8;
  effectView = v8;
LABEL_21:

  return effectView;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v30 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  touchCopy = touch;
  view = [touchCopy view];
  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    goto LABEL_18;
  }

  delegate = [(CKBalloonView *)self delegate];
  [delegate liveBalloonTouched:self];

  if ([(CKTranscriptPluginBalloonView *)self isInteractive])
  {
    pluginView = [(CKTranscriptPluginBalloonView *)self pluginView];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      pluginView2 = [(CKTranscriptPluginBalloonView *)self pluginView];
      interactiveViews = [pluginView2 interactiveViews];

      if ([interactiveViews containsObject:view])
      {

LABEL_18:
        v19 = 0;
        goto LABEL_19;
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = interactiveViews;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = *v26;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v15);
            }

            if ([view isDescendantOfView:*(*(&v25 + 1) + 8 * i)] && !CKIsRunningInMessagesNotificationExtension())
            {
              objc_initWeak(&location, self);
              v22 = MEMORY[0x1E69E9820];
              objc_copyWeak(&v23, &location);
              v20 = [(CKTranscriptPluginBalloonView *)self dataSource:v22];
              [v20 setWillOpenHandler:&v22];

              objc_destroyWeak(&v23);
              objc_destroyWeak(&location);

              goto LABEL_18;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v19 = 1;
LABEL_19:

  return v19;
}

void __70__CKTranscriptPluginBalloonView_gestureRecognizer_shouldReceiveTouch___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v2 interactionStartedWithPluginBalloonView:v3];
    }

    WeakRetained = v3;
  }
}

- (void)attachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  pluginView = [(CKTranscriptPluginBalloonView *)self pluginView];
  superview = [pluginView superview];

  pluginContainerView = self->_pluginContainerView;
  if (superview)
  {
    [(UIView *)pluginContainerView insertSubview:effectView aboveSubview:pluginView];
  }

  else
  {
    [(UIView *)pluginContainerView insertSubview:effectView atIndex:0];
  }
}

- (void)detachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [effectView removeFromSuperview];
}

- (id)imageForInvisibleInkEffectView
{
  pluginView = [(CKTranscriptPluginBalloonView *)self pluginView];
  v4 = pluginView;
  if (pluginView)
  {
    [pluginView layoutSubviews];
    [(CKTranscriptPluginBalloonView *)self bounds];
    v13.width = v5;
    v13.height = v6;
    UIGraphicsBeginImageContextWithOptions(v13, 1, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    CGContextSetFillColorWithColor(CurrentContext, [whiteColor CGColor]);

    [(CKTranscriptPluginBalloonView *)self bounds];
    CGContextFillRect(CurrentContext, v14);
    layer = [v4 layer];
    [layer renderInContext:CurrentContext];

    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)invisibleInkEffectViewWasUncovered
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController suspendForTimeInterval:5.0];
}

- (void)_pluginViewReadyForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  invisibleInkEffectEnabled = [(CKBalloonView *)self invisibleInkEffectEnabled];
  v5 = snapshotCopy;
  if (invisibleInkEffectEnabled)
  {
    userInfo = [snapshotCopy userInfo];
    v7 = [userInfo objectForKey:@"CKTranscriptPluginViewSnapshotUserInfoKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 size];
      v9 = v8;
      v11 = v10;
      [v7 size];
      v13 = v12;
      v15 = v14;
      [v7 scale];
      v17 = v16;
      v23.width = v13;
      v23.height = v15;
      UIGraphicsBeginImageContextWithOptions(v23, 1, v17);
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [whiteColor set];

      v24.size.width = ceil(v9);
      v24.size.height = ceil(v11);
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      UIRectFill(v24);
      [v7 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      imageForInvisibleInkEffectView = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
    }

    else
    {
      imageForInvisibleInkEffectView = [(CKTranscriptPluginBalloonView *)self imageForInvisibleInkEffectView];
    }

    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    [invisibleInkEffectController hostViewDidUpdateSnapshot:imageForInvisibleInkEffectView];

    v5 = snapshotCopy;
  }
}

- (void)_reparentCurrentPluginView
{
  if ([(CKTranscriptPluginBalloonView *)self mayReparentPluginViews]|| ([(CKTranscriptPluginView *)self->_pluginView superview], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    superview = [(CKTranscriptPluginView *)self->_pluginView superview];
    pluginContainerView = self->_pluginContainerView;

    if (superview != pluginContainerView)
    {
      [(CKTranscriptPluginView *)self->_pluginView removeFromSuperview];
      pluginView = self->_pluginView;

      [(CKTranscriptPluginBalloonView *)self _setAndAddPluginViewAsSubview:pluginView];
    }
  }
}

- (void)_setAndAddPluginViewAsSubview:(id)subview
{
  subviewCopy = subview;
  delegate = [(CKBalloonView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKBalloonView *)self delegate];
    [delegate2 balloonView:self willInsertPluginViewAsSubview:subviewCopy];
  }

  objc_storeStrong(&self->_pluginView, subview);
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  pluginContainerView = self->_pluginContainerView;
  pluginView = self->_pluginView;
  if (effectView)
  {
    [(UIView *)pluginContainerView insertSubview:pluginView belowSubview:effectView];
  }

  else
  {
    [(UIView *)pluginContainerView addSubview:pluginView];
  }

  [(CKTranscriptPluginBalloonView *)self setNeedsLayout];
  [(CKBalloonView *)self setNeedsPrepareForDisplay];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"CKTranscriptPluginViewReadyForSnapshotNotification" object:0];
  if (self->_pluginView)
  {
    [defaultCenter addObserver:self selector:sel__pluginViewReadyForSnapshot_ name:@"CKTranscriptPluginViewReadyForSnapshotNotification" object:?];
  }
}

- (void)setPluginView:(id)view
{
  viewCopy = view;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CKTranscriptPluginBalloonView setPluginView:v5];
  }

  [(CKTranscriptPluginBalloonView *)self setPluginView:viewCopy pluginController:0];
}

- (void)setPluginView:(id)view pluginController:(id)controller
{
  v37 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  controllerCopy = controller;
  pluginView = self->_pluginView;
  if (pluginView == viewCopy && pluginView != 0)
  {
    [(CKTranscriptPluginBalloonView *)self _reparentCurrentPluginView];
    goto LABEL_36;
  }

  if (pluginView == viewCopy)
  {
    goto LABEL_36;
  }

  if ([(CKTranscriptPluginBalloonView *)self mayReparentPluginViews]|| ([(CKTranscriptPluginView *)viewCopy superview], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    if (!IMIsRunningInMessagesTranscriptExtension() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_19:
      superview = [(CKTranscriptPluginView *)self->_pluginView superview];
      pluginContainerView = self->_pluginContainerView;

      if (superview == pluginContainerView && [(CKTranscriptPluginView *)self->_pluginView isDescendantOfView:self->_pluginContainerView])
      {
        WeakRetained = objc_loadWeakRetained(&self->_pluginViewController);
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          v22 = objc_loadWeakRetained(&self->_pluginViewController);
          [v22 willMoveToParentViewController:0];
        }

        [(CKTranscriptPluginView *)self->_pluginView removeFromSuperview];
        v23 = objc_loadWeakRetained(&self->_pluginViewController);
        v24 = objc_opt_respondsToSelector();

        if (v24)
        {
          v25 = objc_loadWeakRetained(&self->_pluginViewController);
          [v25 removeFromParentViewController];
        }

        if (objc_opt_respondsToSelector())
        {
          [(CKTranscriptPluginView *)self->_pluginView setPluginViewDelegate:0];
        }

        v26 = +[CKTranscriptPluginViewManager sharedInstance];
        [v26 enqueuePluginViewForReuse:self->_pluginView];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        view = [controllerCopy view];

        if (view == viewCopy)
        {
LABEL_35:
          objc_storeWeak(&self->_pluginViewController, controllerCopy);
          [(CKTranscriptPluginBalloonView *)self _setAndAddPluginViewAsSubview:viewCopy];
          goto LABEL_36;
        }

        v28 = IMLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = 136315906;
          v30 = "[CKTranscriptPluginBalloonView setPluginView:pluginController:]";
          v31 = 2112;
          selfCopy = self;
          v33 = 2112;
          v34 = viewCopy;
          v35 = 2112;
          v36 = controllerCopy;
          _os_log_error_impl(&dword_19020E000, v28, OS_LOG_TYPE_ERROR, "%s: %@ passing in a plugin view %@ that doesn't match the plugin view controller view %@", &v29, 0x2Au);
        }
      }

      else
      {
        v28 = IMLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(CKTranscriptPluginBalloonView *)self setPluginView:controllerCopy pluginController:v28];
        }
      }

      goto LABEL_35;
    }

    v12 = viewCopy;
    metadata = [(CKTranscriptPluginView *)v12 metadata];
    specialization = [metadata specialization];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      metadata2 = [(CKTranscriptPluginView *)v12 metadata];
      specialization2 = [metadata2 specialization];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    [(CKTranscriptPluginView *)v12 _setUseLowMemoryImageFilters:1];
    goto LABEL_18;
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CKTranscriptPluginBalloonView *)self setPluginView:viewCopy pluginController:v11];
  }

LABEL_36:
}

- (void)setPluginSnapshotView:(id)view
{
  viewCopy = view;
  pluginSnapshotView = self->_pluginSnapshotView;
  v10 = viewCopy;
  if (pluginSnapshotView != viewCopy)
  {
    [(UIView *)pluginSnapshotView removeFromSuperview];
    pluginView = [(CKTranscriptPluginBalloonView *)self pluginView];
    [pluginView setAlpha:1.0];

    objc_storeStrong(&self->_pluginSnapshotView, view);
    v8 = self->_pluginSnapshotView;
    if (v8)
    {
      [(UIView *)self->_pluginContainerView insertSubview:v8 atIndex:0];
      pluginView2 = [(CKTranscriptPluginBalloonView *)self pluginView];
      [pluginView2 setAlpha:0.0];
    }
  }
}

- (void)setPluginSnapshotViewForThrowAnimation:(id)animation
{
  animationCopy = animation;
  pluginSnapshotViewForThrowAnimation = self->_pluginSnapshotViewForThrowAnimation;
  if (pluginSnapshotViewForThrowAnimation != animationCopy)
  {
    v8 = animationCopy;
    [(UIView *)pluginSnapshotViewForThrowAnimation removeFromSuperview];
    objc_storeStrong(&self->_pluginSnapshotViewForThrowAnimation, animation);
    if (self->_pluginSnapshotViewForThrowAnimation)
    {
      [(CKTranscriptPluginBalloonView *)self setPluginView:0 pluginController:0];
      v7 = self->_pluginSnapshotViewForThrowAnimation;
    }

    else
    {
      v7 = 0;
    }

    [(CKTranscriptPluginBalloonView *)self bounds];
    [(UIView *)v7 setFrame:?];
    [(UIView *)self->_pluginSnapshotViewForThrowAnimation setAutoresizingMask:18];
    [(UIView *)self->_pluginContainerView addSubview:self->_pluginSnapshotViewForThrowAnimation];
    [(UIView *)self->_pluginContainerView bringSubviewToFront:self->_pluginSnapshotViewForThrowAnimation];
    animationCopy = v8;
  }
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  balloonBackdropFilters = [filterCopy balloonBackdropFilters];
  v6 = [balloonBackdropFilters count];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(43);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Cannot have two backdrop filter layers", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      backdropFilterLayer = [(CKBalloonView *)self backdropFilterLayer];
      _CKAssert(backdropFilterLayer == 0);
    }

    backdropFilterLayer2 = [(CKBalloonView *)self backdropFilterLayer];

    if (backdropFilterLayer2)
    {
      backdropFilterLayer3 = [(CKBalloonView *)self backdropFilterLayer];
      [backdropFilterLayer3 removeFromSuperlayer];

      [(CKBalloonView *)self setBackdropFilterLayer:0];
    }

    pluginView = [(CKTranscriptPluginBalloonView *)self pluginView];
    [pluginView setHidden:1];

    [(CKTranscriptPluginBalloonView *)self setSuppressMask:1];
    layer = [(UIView *)self->_pluginContainerView layer];
    [layer setAllowsGroupBlending:0];

    v13 = objc_alloc_init(MEMORY[0x1E6979310]);
    [v13 setGroupName:@"FSMBackdropGroup"];
    balloonBackdropFilters2 = [filterCopy balloonBackdropFilters];
    [v13 setFilters:balloonBackdropFilters2];

    [v13 setScale:0.25];
    [(UIView *)self->_pluginContainerView bounds];
    [v13 setFrame:?];
    [(CKBalloonView *)self setBackdropFilterLayer:v13];
    layer2 = [(UIView *)self->_pluginContainerView layer];
    [layer2 addSublayer:v13];
  }

  layer3 = [(CKTranscriptPluginBalloonView *)self layer];
  balloonFilters = [filterCopy balloonFilters];
  [layer3 setFilters:balloonFilters];

  layer4 = [(CKTranscriptPluginBalloonView *)self layer];
  balloonCompositingFilter = [filterCopy balloonCompositingFilter];
  [layer4 setCompositingFilter:balloonCompositingFilter];

  v20.receiver = self;
  v20.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v20 addFilter:filterCopy];
}

- (void)clearFilters
{
  pluginView = [(CKTranscriptPluginBalloonView *)self pluginView];
  [pluginView setHidden:0];

  [(CKTranscriptPluginBalloonView *)self setSuppressMask:0];
  layer = [(UIView *)self->_pluginContainerView layer];
  [layer setAllowsGroupBlending:1];

  backdropFilterLayer = [(CKBalloonView *)self backdropFilterLayer];
  [backdropFilterLayer removeFromSuperlayer];

  [(CKBalloonView *)self setBackdropFilterLayer:0];
  layer2 = [(CKTranscriptPluginBalloonView *)self layer];
  [layer2 setFilters:0];

  layer3 = [(CKTranscriptPluginBalloonView *)self layer];
  [layer3 setCompositingFilter:0];

  v8.receiver = self;
  v8.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v8 clearFilters];
}

- (void)setHasHighlightOverlay:(BOOL)overlay animated:(BOOL)animated autoDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  animatedCopy = animated;
  overlayCopy = overlay;
  bundleID = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = [bundleID isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = CKTranscriptPluginBalloonView;
    [(CKBalloonView *)&v12 setHasHighlightOverlay:overlayCopy animated:animatedCopy autoDismiss:dismissCopy];
  }
}

- (void)setSuppressMask:(BOOL)mask
{
  if (self->_suppressMask != mask)
  {
    self->_suppressMask = mask;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];

    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (void)setSuggestedActionsBackgroundColor:(id)color
{
  colorCopy = color;
  suggestedActionsBackgroundView = [(CKTranscriptPluginBalloonView *)self suggestedActionsBackgroundView];

  if (!suggestedActionsBackgroundView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(CKTranscriptPluginBalloonView *)self setSuggestedActionsBackgroundView:v6];

    suggestedActionsBackgroundView2 = [(CKTranscriptPluginBalloonView *)self suggestedActionsBackgroundView];
    [(CKTranscriptPluginBalloonView *)self addSubview:suggestedActionsBackgroundView2];
  }

  suggestedActionsBackgroundView3 = [(CKTranscriptPluginBalloonView *)self suggestedActionsBackgroundView];
  [suggestedActionsBackgroundView3 setBackgroundColor:colorCopy];
}

- (void)setShouldPerformSendAnimationOnAppear
{
  pluginViewController = [(CKTranscriptPluginBalloonView *)self pluginViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    pluginViewController2 = [(CKTranscriptPluginBalloonView *)self pluginViewController];
    [pluginViewController2 setShouldPerformSendAnimationOnAppear];
  }
}

- (UIViewController)pluginViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginViewController);

  return WeakRetained;
}

- (void)configureForTranscriptPlugin:(id)plugin context:(id)context
{
  pluginCopy = plugin;
  v31.receiver = self;
  v31.super_class = CKTranscriptPluginBalloonView;
  contextCopy = context;
  [(CKBalloonView *)&v31 configureForMessagePart:pluginCopy];
  -[CKBalloonView setOrientation:](self, "setOrientation:", [pluginCopy balloonOrientation]);
  v8 = [pluginCopy extensibleViewForContext:contextCopy];
  v9 = [pluginCopy extensibleViewControllerForContext:contextCopy];
  [(CKTranscriptPluginBalloonView *)self setPluginView:v8 pluginController:v9];

  bundleIdentifier = [pluginCopy bundleIdentifier];
  [(CKTranscriptPluginBalloonView *)self setAccessibilityIdentifier:bundleIdentifier];

  iMChatItem = [pluginCopy IMChatItem];
  dataSource = [iMChatItem dataSource];
  [(CKTranscriptPluginBalloonView *)self setDataSource:dataSource];

  v13 = [pluginCopy balloonControllerForContext:contextCopy];

  if (objc_opt_respondsToSelector())
  {
    isInteractive = [v13 isInteractive];
  }

  else
  {
    isInteractive = 0;
  }

  [(CKTranscriptPluginBalloonView *)self setIsInteractive:isInteractive];
  v15 = *MEMORY[0x1E69A6E08];
  v16 = *(MEMORY[0x1E69A6E08] + 8);
  v17 = *(MEMORY[0x1E69A6E08] + 16);
  v18 = *(MEMORY[0x1E69A6E08] + 24);
  if (objc_opt_respondsToSelector())
  {
    messageTintColor = [v13 messageTintColor];
    traitCollection = [(CKTranscriptPluginBalloonView *)self traitCollection];
    v21 = [messageTintColor resolvedColorWithTraitCollection:traitCollection];
    v22 = v21;
    if (v21)
    {
      [v21 ck_imColorComponents];
      v15 = v23;
      v16 = v24;
      v17 = v25;
      v18 = v26;
    }
  }

  [(CKBalloonView *)self setDynamicFillColor:v15, v16, v17, v18];
  -[CKTranscriptPluginBalloonView setScheduled:](self, "setScheduled:", [pluginCopy wantsPendingMessageStyle]);
  if ([pluginCopy wantsPendingMessageStyle])
  {
    balloonStyle = 3;
  }

  else
  {
    balloonStyle = [pluginCopy balloonStyle];
  }

  [(CKBalloonView *)self setBalloonStyle:balloonStyle];
  if ([pluginCopy wantsPendingMessageStyle] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    balloonOutlineColor = [v13 balloonOutlineColor];
    v29 = [balloonOutlineColor colorWithAlphaComponent:0.5];

    [v29 ck_imColorComponents];
    [(CKBalloonView *)self setStrokeColor:?];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 wantsOutline])
  {
    [(CKBalloonView *)self setBalloonStyle:1];
  }

  if ([(CKBalloonView *)self hasSuggestedActionsMenu]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    balloonOutlineColor2 = [v13 balloonOutlineColor];
    [(CKTranscriptPluginBalloonView *)self setSuggestedActionsBackgroundColor:balloonOutlineColor2];
  }
}

- (void)setPluginView:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[CKTranscriptPluginBalloonView setPluginView:]";
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "%s deprecated, please use setPluginView:pluginController:", &v1, 0xCu);
}

- (void)setPluginView:(NSObject *)a3 pluginController:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [a2 superview];
  v7 = 136315906;
  v8 = "[CKTranscriptPluginBalloonView setPluginView:pluginController:]";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = a2;
  v13 = 2112;
  v14 = v6;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "%s: not setting %@'s plugin view to be %@, since that would remove it from its superview %@", &v7, 0x2Au);
}

- (void)setPluginView:(os_log_t)log pluginController:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[CKTranscriptPluginBalloonView setPluginView:pluginController:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "%s: %@ passing in a non UIViewController instance! %@", &v3, 0x20u);
}

@end