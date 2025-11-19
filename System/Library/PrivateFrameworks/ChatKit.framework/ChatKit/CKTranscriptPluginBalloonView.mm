@interface CKTranscriptPluginBalloonView
- (BOOL)canUseOpaqueMask;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)hasBalloonShape;
- (BOOL)needsGlassPlatter;
- (BOOL)shouldShowBackdropBalloonLayer;
- (BOOL)shouldShowPluginOverlayBalloonLayer;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKBalloonDescriptor_t)backdropBalloonDescriptor;
- (CKBalloonDescriptor_t)pluginContainerMaskBalloonDescriptor;
- (CKBalloonDescriptor_t)pluginOverlayBalloonDescriptor;
- (CKTranscriptPluginBalloonView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)pluginInsets;
- (UIViewController)pluginViewController;
- (id)highlightOverlayColor;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)imageForInvisibleInkEffectView;
- (void)_pluginViewReadyForSnapshot:(id)a3;
- (void)_reparentCurrentPluginView;
- (void)_setAndAddPluginViewAsSubview:(id)a3;
- (void)addFilter:(id)a3;
- (void)attachInvisibleInkEffectView;
- (void)clearFilters;
- (void)configureForComposition:(id)a3;
- (void)configureForTranscriptPlugin:(id)a3 context:(id)a4;
- (void)detachInvisibleInkEffectView;
- (void)invisibleInkEffectViewWasUncovered;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setBackgroundLuminance:(double)a3;
- (void)setCanUseOpaqueMask:(BOOL)a3;
- (void)setHasHighlightOverlay:(BOOL)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5;
- (void)setHasTail:(BOOL)a3;
- (void)setPluginSnapshotView:(id)a3;
- (void)setPluginSnapshotViewForThrowAnimation:(id)a3;
- (void)setPluginView:(id)a3;
- (void)setPluginView:(id)a3 pluginController:(id)a4;
- (void)setShouldPerformSendAnimationOnAppear;
- (void)setSuggestedActionsBackgroundColor:(id)a3;
- (void)setSuppressMask:(BOOL)a3;
- (void)setUserInterfaceLevel:(int64_t)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
- (void)updateBalloonMasks;
@end

@implementation CKTranscriptPluginBalloonView

- (void)configureForComposition:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v15 configureForComposition:v4];
  v5 = [v4 shelfPluginPayload];
  if (!v5)
  {
    v7 = [v4 pluginDisplayContainers];
    v8 = [v7 lastObject];

    v6 = [v8 pluginPayload];

    if (v6)
    {
      goto LABEL_4;
    }

    v5 = [v4 firstEmbeddedPluginPayload];
  }

  v6 = v5;
LABEL_4:
  [v6 setIsFromMe:1];
  v9 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v10 = [v6 pluginBundleID];
  v11 = [v9 balloonPluginForBundleID:v10];

  v12 = [objc_alloc(objc_msgSend(v11 "dataSourceClass"))];
  v13 = [objc_alloc(objc_msgSend(v11 "bubbleClass"))];
  v14 = [v13 pluginContentView];
  [(CKTranscriptPluginBalloonView *)self setPluginView:v14 pluginController:v13];

  [(CKTranscriptPluginBalloonView *)self setDataSource:v12];
}

- (CKTranscriptPluginBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34.receiver = self;
  v34.super_class = CKTranscriptPluginBalloonView;
  v7 = [(CKBalloonView *)&v34 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(CKBalloonImageView *)v7 setContentsTransformAnimationEnabled:1];
    [(CKTranscriptPluginBalloonView *)v8 setMayReparentPluginViews:1];
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 unfilledBalloonColorForColorType:0xFFFFFFFFLL];
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
    v18 = [(UIView *)v8->_pluginContainerView layer];
    [v18 setMask:v17];

    v19 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v20 = [v19 mutableCopy];

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
    v3 = [(CKBalloonView *)self bubblePath];
    [(CKTranscriptPluginBalloonView *)self maskFrame];
    [v3 tailInsetsForBubbleSize:{v4, v5}];
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 linkPreviewSendLaterInsets];

    UIEdgeInsetsAdd();
  }

  else
  {
    v3 = [(CKTranscriptPluginBalloonView *)self pluginContainerMaskLayer];
    [v3 tailInsets];
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

- (void)layoutSublayersOfLayer:(id)a3
{
  v23.receiver = self;
  v23.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v23 layoutSublayersOfLayer:a3];
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

  v4 = [(UIView *)self->_pluginContainerView layer];
  [v4 setMask:pluginContainerMaskLayer];

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
  v26 = [(CKBalloonView *)self invisibleInkEffectController];
  v27 = [v26 effectView];
  [v27 setFrame:{v18, v20, v22, v24}];

  v28 = [(CKTranscriptPluginBalloonView *)self isScheduled];
  v29 = 1.0;
  if (v28)
  {
    v30 = [(CKBalloonView *)self isTranscriptBackgroundActive];
    v29 = 0.5;
    if (v30)
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
    v37 = [(CKTranscriptPluginBalloonView *)self suggestedActionsBackgroundView];
    [v37 setFrame:{0.0, v34, v36, v32}];
  }
}

- (void)prepareForDisplay
{
  v20.receiver = self;
  v20.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v20 prepareForDisplay];
  [(CKTranscriptPluginBalloonView *)self updateBalloonMasks];
  v3 = [(CKTranscriptPluginBalloonView *)self pluginView];
  [v3 layoutMargins];
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
    [v3 setLayoutMargins:{v12, v14, v16, v18}];
    [v3 layoutMarginsDidChange];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setPluginViewDelegate:self];
  }
}

- (BOOL)shouldShowBackdropBalloonLayer
{
  v3 = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  return [(CKTranscriptPluginBalloonView *)self hasBalloonShape];
}

- (BOOL)shouldShowPluginOverlayBalloonLayer
{
  v3 = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

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

  v7 = [(CKTranscriptPluginBalloonView *)self traitCollection];
  v8 = [v7 isTranscriptBackgroundActive];

  return v8 ^ 1;
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
        v8 = [(CKTranscriptPluginBalloonView *)self traitCollection];
        v9 = [v8 isTranscriptBackgroundActive];

        v6 = v9 ^ 1;
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
  v3 = [(CKTranscriptPluginBalloonView *)self traitCollection];
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
      [(CKBalloonLayer *)backdropBalloonLayer updateDescriptor:&v17 traitCollection:v3];
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
      v8 = [(CKBalloonLayer *)v7 initWithDescriptor:&v17 traitCollection:v3];
      v9 = self->_backdropBalloonLayer;
      self->_backdropBalloonLayer = v8;

      v10 = [(CKTranscriptPluginBalloonView *)self layer];
      [v10 insertSublayer:self->_backdropBalloonLayer atIndex:0];
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
      [(CKBalloonLayer *)pluginOverlayBalloonLayer updateDescriptor:&v17 traitCollection:v3];
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
      v14 = [(CKBalloonLayer *)v13 initWithDescriptor:&v17 traitCollection:v3];
      v15 = self->_pluginOverlayBalloonLayer;
      self->_pluginOverlayBalloonLayer = v14;

      [(CKBalloonLayer *)self->_pluginOverlayBalloonLayer setAllowsHitTesting:0];
      v16 = [(CKTranscriptPluginBalloonView *)self layer];
      [v16 addSublayer:self->_pluginOverlayBalloonLayer];
    }
  }

  else
  {
    [(CKBalloonLayer *)self->_pluginOverlayBalloonLayer removeFromSuperlayer];
    v12 = self->_pluginOverlayBalloonLayer;
    self->_pluginOverlayBalloonLayer = 0;
  }
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(CKTranscriptPluginBalloonView *)self updateBalloonMasks];
  }
}

- (void)setUserInterfaceLevel:(int64_t)a3
{
  if (self->_userInterfaceLevel != a3)
  {
    self->_userInterfaceLevel = a3;
    [(CKTranscriptPluginBalloonView *)self updateBalloonMasks];
  }
}

- (void)setHasTail:(BOOL)a3
{
  v3 = a3;
  if ([(CKBalloonView *)self hasTail]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CKTranscriptPluginBalloonView;
    [(CKBalloonView *)&v5 setHasTail:v3];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (BOOL)hasBalloonShape
{
  v3 = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  v8 = 0;
  if ([(CKBalloonView *)self isStagedForSend]|| !v5)
  {
    v6 = IMBalloonExtensionIDWithSuffix();
    v7 = [v3 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      if (![v3 isEqualToString:*MEMORY[0x1E69A69E0]] || (-[CKTranscriptPluginBalloonView traitCollection](self, "traitCollection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isTranscriptBackgroundActive"), v10, v11))
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
  v3 = [(CKTranscriptPluginBalloonView *)self pluginSnapshotViewForThrowAnimation];
  [v3 removeFromSuperview];

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
  v5 = [v4 canPluginBalloonsUseOpaqueMask];

  if (v5)
  {
    goto LABEL_4;
  }

  return 0;
}

- (void)setCanUseOpaqueMask:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKPrintController sharedInstance];
  if ([v5 isPrinting])
  {
  }

  else
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 canPluginBalloonsUseOpaqueMask];

    if (!v7)
    {
      return;
    }
  }

  if ([(CKTranscriptPluginBalloonView *)self canUseOpaqueMask]!= v3)
  {
    v8.receiver = self;
    v8.super_class = CKTranscriptPluginBalloonView;
    [(CKBalloonView *)&v8 setCanUseOpaqueMask:v3];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKTranscriptPluginBalloonView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v8;
  }

  v9 = [(CKTranscriptPluginBalloonView *)self dataSource];

  if (v9)
  {
    [(CKTranscriptPluginBalloonView *)self pluginInsets];
    v12 = width - (v10 + v11);
    v15 = height - (v13 + v14);
    v16 = [(CKTranscriptPluginBalloonView *)self dataSource];
    [v16 sizeThatFits:{v12, v15}];
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
  v3 = [v2 pluginBalloonSelectionOverlayColor];

  return v3;
}

- (void)setBackgroundLuminance:(double)a3
{
  v8.receiver = self;
  v8.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v8 setBackgroundLuminance:?];
  v5 = [(CKTranscriptPluginBalloonView *)self pluginViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKTranscriptPluginBalloonView *)self pluginViewController];
    [v7 didChangeBackgroundLuminance:a3];
  }
}

- (BOOL)needsGlassPlatter
{
  v3 = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isTranscriptPortalEnabled];

  if (!v7)
  {
    return 0;
  }

  v8 = [(CKTranscriptPluginBalloonView *)self traitCollection];
  v9 = [v8 isTranscriptBackgroundActive];

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v34 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v32.receiver = self;
  v32.super_class = CKTranscriptPluginBalloonView;
  v8 = [(CKTranscriptPluginBalloonView *)&v32 hitTest:v7 withEvent:x, y];
  if ([(CKBalloonView *)self invisibleInkEffectEnabled]&& [(CKTranscriptPluginBalloonView *)self isInteractive])
  {
    v9 = [(CKBalloonView *)self invisibleInkEffectController];
    v10 = [v9 effectView];

    v11 = [v10 coverageTracker];
    v12 = v11;
    if (v11 && ([v11 isUncovered] & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if ([(CKTranscriptPluginBalloonView *)self isInteractive])
  {
    v13 = [(CKTranscriptPluginBalloonView *)self pluginView];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(CKTranscriptPluginBalloonView *)self pluginView];
      v16 = [v15 interactiveViews];
      v17 = [v16 count];

      if (v17)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v18 = [(CKTranscriptPluginBalloonView *)self pluginView];
        v19 = [v18 interactiveViews];

        v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v28 + 1) + 8 * i);
              [v24 convertPoint:self fromView:{x, y}];
              v25 = [v24 hitTest:v7 withEvent:?];
              if (v25)
              {
                v26 = v25;

                v8 = v26;
                goto LABEL_19;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
  v10 = v8;
LABEL_21:

  return v10;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 view];
  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    goto LABEL_18;
  }

  v10 = [(CKBalloonView *)self delegate];
  [v10 liveBalloonTouched:self];

  if ([(CKTranscriptPluginBalloonView *)self isInteractive])
  {
    v11 = [(CKTranscriptPluginBalloonView *)self pluginView];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CKTranscriptPluginBalloonView *)self pluginView];
      v14 = [v13 interactiveViews];

      if ([v14 containsObject:v8])
      {

LABEL_18:
        v19 = 0;
        goto LABEL_19;
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v14;
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

            if ([v8 isDescendantOfView:*(*(&v25 + 1) + 8 * i)] && !CKIsRunningInMessagesNotificationExtension())
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
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  v7 = [v3 effectView];

  v4 = [(CKTranscriptPluginBalloonView *)self pluginView];
  v5 = [v4 superview];

  pluginContainerView = self->_pluginContainerView;
  if (v5)
  {
    [(UIView *)pluginContainerView insertSubview:v7 aboveSubview:v4];
  }

  else
  {
    [(UIView *)pluginContainerView insertSubview:v7 atIndex:0];
  }
}

- (void)detachInvisibleInkEffectView
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  v3 = [v2 effectView];

  [v3 removeFromSuperview];
}

- (id)imageForInvisibleInkEffectView
{
  v3 = [(CKTranscriptPluginBalloonView *)self pluginView];
  v4 = v3;
  if (v3)
  {
    [v3 layoutSubviews];
    [(CKTranscriptPluginBalloonView *)self bounds];
    v13.width = v5;
    v13.height = v6;
    UIGraphicsBeginImageContextWithOptions(v13, 1, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    CGContextSetFillColorWithColor(CurrentContext, [v8 CGColor]);

    [(CKTranscriptPluginBalloonView *)self bounds];
    CGContextFillRect(CurrentContext, v14);
    v9 = [v4 layer];
    [v9 renderInContext:CurrentContext];

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
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  [v2 suspendForTimeInterval:5.0];
}

- (void)_pluginViewReadyForSnapshot:(id)a3
{
  v21 = a3;
  v4 = [(CKBalloonView *)self invisibleInkEffectEnabled];
  v5 = v21;
  if (v4)
  {
    v6 = [v21 userInfo];
    v7 = [v6 objectForKey:@"CKTranscriptPluginViewSnapshotUserInfoKey"];

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
      v18 = [MEMORY[0x1E69DC888] whiteColor];
      [v18 set];

      v24.size.width = ceil(v9);
      v24.size.height = ceil(v11);
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      UIRectFill(v24);
      [v7 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      v19 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
    }

    else
    {
      v19 = [(CKTranscriptPluginBalloonView *)self imageForInvisibleInkEffectView];
    }

    v20 = [(CKBalloonView *)self invisibleInkEffectController];
    [v20 hostViewDidUpdateSnapshot:v19];

    v5 = v21;
  }
}

- (void)_reparentCurrentPluginView
{
  if ([(CKTranscriptPluginBalloonView *)self mayReparentPluginViews]|| ([(CKTranscriptPluginView *)self->_pluginView superview], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(CKTranscriptPluginView *)self->_pluginView superview];
    pluginContainerView = self->_pluginContainerView;

    if (v4 != pluginContainerView)
    {
      [(CKTranscriptPluginView *)self->_pluginView removeFromSuperview];
      pluginView = self->_pluginView;

      [(CKTranscriptPluginBalloonView *)self _setAndAddPluginViewAsSubview:pluginView];
    }
  }
}

- (void)_setAndAddPluginViewAsSubview:(id)a3
{
  v13 = a3;
  v5 = [(CKBalloonView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKBalloonView *)self delegate];
    [v7 balloonView:self willInsertPluginViewAsSubview:v13];
  }

  objc_storeStrong(&self->_pluginView, a3);
  v8 = [(CKBalloonView *)self invisibleInkEffectController];
  v9 = [v8 effectView];

  pluginContainerView = self->_pluginContainerView;
  pluginView = self->_pluginView;
  if (v9)
  {
    [(UIView *)pluginContainerView insertSubview:pluginView belowSubview:v9];
  }

  else
  {
    [(UIView *)pluginContainerView addSubview:pluginView];
  }

  [(CKTranscriptPluginBalloonView *)self setNeedsLayout];
  [(CKBalloonView *)self setNeedsPrepareForDisplay];
  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 removeObserver:self name:@"CKTranscriptPluginViewReadyForSnapshotNotification" object:0];
  if (self->_pluginView)
  {
    [v12 addObserver:self selector:sel__pluginViewReadyForSnapshot_ name:@"CKTranscriptPluginViewReadyForSnapshotNotification" object:?];
  }
}

- (void)setPluginView:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CKTranscriptPluginBalloonView setPluginView:v5];
  }

  [(CKTranscriptPluginBalloonView *)self setPluginView:v4 pluginController:0];
}

- (void)setPluginView:(id)a3 pluginController:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pluginView = self->_pluginView;
  if (pluginView == v6 && pluginView != 0)
  {
    [(CKTranscriptPluginBalloonView *)self _reparentCurrentPluginView];
    goto LABEL_36;
  }

  if (pluginView == v6)
  {
    goto LABEL_36;
  }

  if ([(CKTranscriptPluginBalloonView *)self mayReparentPluginViews]|| ([(CKTranscriptPluginView *)v6 superview], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    if (!IMIsRunningInMessagesTranscriptExtension() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_19:
      v18 = [(CKTranscriptPluginView *)self->_pluginView superview];
      pluginContainerView = self->_pluginContainerView;

      if (v18 == pluginContainerView && [(CKTranscriptPluginView *)self->_pluginView isDescendantOfView:self->_pluginContainerView])
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
        v27 = [v7 view];

        if (v27 == v6)
        {
LABEL_35:
          objc_storeWeak(&self->_pluginViewController, v7);
          [(CKTranscriptPluginBalloonView *)self _setAndAddPluginViewAsSubview:v6];
          goto LABEL_36;
        }

        v28 = IMLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = 136315906;
          v30 = "[CKTranscriptPluginBalloonView setPluginView:pluginController:]";
          v31 = 2112;
          v32 = self;
          v33 = 2112;
          v34 = v6;
          v35 = 2112;
          v36 = v7;
          _os_log_error_impl(&dword_19020E000, v28, OS_LOG_TYPE_ERROR, "%s: %@ passing in a plugin view %@ that doesn't match the plugin view controller view %@", &v29, 0x2Au);
        }
      }

      else
      {
        v28 = IMLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [(CKTranscriptPluginBalloonView *)self setPluginView:v7 pluginController:v28];
        }
      }

      goto LABEL_35;
    }

    v12 = v6;
    v13 = [(CKTranscriptPluginView *)v12 metadata];
    v14 = [v13 specialization];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v15 = [(CKTranscriptPluginView *)v12 metadata];
      v16 = [v15 specialization];
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
    [(CKTranscriptPluginBalloonView *)self setPluginView:v6 pluginController:v11];
  }

LABEL_36:
}

- (void)setPluginSnapshotView:(id)a3
{
  v5 = a3;
  pluginSnapshotView = self->_pluginSnapshotView;
  v10 = v5;
  if (pluginSnapshotView != v5)
  {
    [(UIView *)pluginSnapshotView removeFromSuperview];
    v7 = [(CKTranscriptPluginBalloonView *)self pluginView];
    [v7 setAlpha:1.0];

    objc_storeStrong(&self->_pluginSnapshotView, a3);
    v8 = self->_pluginSnapshotView;
    if (v8)
    {
      [(UIView *)self->_pluginContainerView insertSubview:v8 atIndex:0];
      v9 = [(CKTranscriptPluginBalloonView *)self pluginView];
      [v9 setAlpha:0.0];
    }
  }
}

- (void)setPluginSnapshotViewForThrowAnimation:(id)a3
{
  v5 = a3;
  pluginSnapshotViewForThrowAnimation = self->_pluginSnapshotViewForThrowAnimation;
  if (pluginSnapshotViewForThrowAnimation != v5)
  {
    v8 = v5;
    [(UIView *)pluginSnapshotViewForThrowAnimation removeFromSuperview];
    objc_storeStrong(&self->_pluginSnapshotViewForThrowAnimation, a3);
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
    v5 = v8;
  }
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v5 = [v4 balloonBackdropFilters];
  v6 = [v5 count];

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
      v8 = [(CKBalloonView *)self backdropFilterLayer];
      _CKAssert(v8 == 0);
    }

    v9 = [(CKBalloonView *)self backdropFilterLayer];

    if (v9)
    {
      v10 = [(CKBalloonView *)self backdropFilterLayer];
      [v10 removeFromSuperlayer];

      [(CKBalloonView *)self setBackdropFilterLayer:0];
    }

    v11 = [(CKTranscriptPluginBalloonView *)self pluginView];
    [v11 setHidden:1];

    [(CKTranscriptPluginBalloonView *)self setSuppressMask:1];
    v12 = [(UIView *)self->_pluginContainerView layer];
    [v12 setAllowsGroupBlending:0];

    v13 = objc_alloc_init(MEMORY[0x1E6979310]);
    [v13 setGroupName:@"FSMBackdropGroup"];
    v14 = [v4 balloonBackdropFilters];
    [v13 setFilters:v14];

    [v13 setScale:0.25];
    [(UIView *)self->_pluginContainerView bounds];
    [v13 setFrame:?];
    [(CKBalloonView *)self setBackdropFilterLayer:v13];
    v15 = [(UIView *)self->_pluginContainerView layer];
    [v15 addSublayer:v13];
  }

  v16 = [(CKTranscriptPluginBalloonView *)self layer];
  v17 = [v4 balloonFilters];
  [v16 setFilters:v17];

  v18 = [(CKTranscriptPluginBalloonView *)self layer];
  v19 = [v4 balloonCompositingFilter];
  [v18 setCompositingFilter:v19];

  v20.receiver = self;
  v20.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v20 addFilter:v4];
}

- (void)clearFilters
{
  v3 = [(CKTranscriptPluginBalloonView *)self pluginView];
  [v3 setHidden:0];

  [(CKTranscriptPluginBalloonView *)self setSuppressMask:0];
  v4 = [(UIView *)self->_pluginContainerView layer];
  [v4 setAllowsGroupBlending:1];

  v5 = [(CKBalloonView *)self backdropFilterLayer];
  [v5 removeFromSuperlayer];

  [(CKBalloonView *)self setBackdropFilterLayer:0];
  v6 = [(CKTranscriptPluginBalloonView *)self layer];
  [v6 setFilters:0];

  v7 = [(CKTranscriptPluginBalloonView *)self layer];
  [v7 setCompositingFilter:0];

  v8.receiver = self;
  v8.super_class = CKTranscriptPluginBalloonView;
  [(CKBalloonView *)&v8 clearFilters];
}

- (void)setHasHighlightOverlay:(BOOL)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = CKTranscriptPluginBalloonView;
    [(CKBalloonView *)&v12 setHasHighlightOverlay:v7 animated:v6 autoDismiss:v5];
  }
}

- (void)setSuppressMask:(BOOL)a3
{
  if (self->_suppressMask != a3)
  {
    self->_suppressMask = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];

    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (void)setSuggestedActionsBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptPluginBalloonView *)self suggestedActionsBackgroundView];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(CKTranscriptPluginBalloonView *)self setSuggestedActionsBackgroundView:v6];

    v7 = [(CKTranscriptPluginBalloonView *)self suggestedActionsBackgroundView];
    [(CKTranscriptPluginBalloonView *)self addSubview:v7];
  }

  v8 = [(CKTranscriptPluginBalloonView *)self suggestedActionsBackgroundView];
  [v8 setBackgroundColor:v4];
}

- (void)setShouldPerformSendAnimationOnAppear
{
  v3 = [(CKTranscriptPluginBalloonView *)self pluginViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKTranscriptPluginBalloonView *)self pluginViewController];
    [v5 setShouldPerformSendAnimationOnAppear];
  }
}

- (UIViewController)pluginViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginViewController);

  return WeakRetained;
}

- (void)configureForTranscriptPlugin:(id)a3 context:(id)a4
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = CKTranscriptPluginBalloonView;
  v7 = a4;
  [(CKBalloonView *)&v31 configureForMessagePart:v6];
  -[CKBalloonView setOrientation:](self, "setOrientation:", [v6 balloonOrientation]);
  v8 = [v6 extensibleViewForContext:v7];
  v9 = [v6 extensibleViewControllerForContext:v7];
  [(CKTranscriptPluginBalloonView *)self setPluginView:v8 pluginController:v9];

  v10 = [v6 bundleIdentifier];
  [(CKTranscriptPluginBalloonView *)self setAccessibilityIdentifier:v10];

  v11 = [v6 IMChatItem];
  v12 = [v11 dataSource];
  [(CKTranscriptPluginBalloonView *)self setDataSource:v12];

  v13 = [v6 balloonControllerForContext:v7];

  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 isInteractive];
  }

  else
  {
    v14 = 0;
  }

  [(CKTranscriptPluginBalloonView *)self setIsInteractive:v14];
  v15 = *MEMORY[0x1E69A6E08];
  v16 = *(MEMORY[0x1E69A6E08] + 8);
  v17 = *(MEMORY[0x1E69A6E08] + 16);
  v18 = *(MEMORY[0x1E69A6E08] + 24);
  if (objc_opt_respondsToSelector())
  {
    v19 = [v13 messageTintColor];
    v20 = [(CKTranscriptPluginBalloonView *)self traitCollection];
    v21 = [v19 resolvedColorWithTraitCollection:v20];
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
  -[CKTranscriptPluginBalloonView setScheduled:](self, "setScheduled:", [v6 wantsPendingMessageStyle]);
  if ([v6 wantsPendingMessageStyle])
  {
    v27 = 3;
  }

  else
  {
    v27 = [v6 balloonStyle];
  }

  [(CKBalloonView *)self setBalloonStyle:v27];
  if ([v6 wantsPendingMessageStyle] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v28 = [v13 balloonOutlineColor];
    v29 = [v28 colorWithAlphaComponent:0.5];

    [v29 ck_imColorComponents];
    [(CKBalloonView *)self setStrokeColor:?];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 wantsOutline])
  {
    [(CKBalloonView *)self setBalloonStyle:1];
  }

  if ([(CKBalloonView *)self hasSuggestedActionsMenu]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v30 = [v13 balloonOutlineColor];
    [(CKTranscriptPluginBalloonView *)self setSuggestedActionsBackgroundColor:v30];
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