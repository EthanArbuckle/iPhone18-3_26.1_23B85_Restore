@interface CKLinkBalloonView
- (BOOL)shouldShowLinkOverlayBalloonLayer;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKBalloonDescriptor_t)backdropBalloonDescriptor;
- (CKBalloonDescriptor_t)linkOverlayBalloonDescriptor;
- (CKBalloonDescriptor_t)linkViewBalloonDescriptor;
- (CKLinkBalloonView)initWithFrame:(CGRect)frame;
- (id)messageTintColor;
- (void)_linkViewMetadataDidBecomeComplete:(id)complete;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)linkViewNeedsResize:(id)resize;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setLinkView:(id)view;
- (void)updateBalloonMasks;
@end

@implementation CKLinkBalloonView

- (CKLinkBalloonView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKLinkBalloonView;
  v3 = [(CKImageBalloonView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
    [(CKBalloonView *)v3 balloonDescriptor];
    v5 = [(CKBalloonMaskLayer *)v4 initWithDescriptor:&v8];
    linkViewMaskLayer = v3->_linkViewMaskLayer;
    v3->_linkViewMaskLayer = v5;
  }

  return v3;
}

- (void)setLinkView:(id)view
{
  viewCopy = view;
  linkView = self->_linkView;
  if (linkView != viewCopy)
  {
    v10 = viewCopy;
    if (linkView)
    {
      [(LPLinkView *)linkView removeFromSuperview];
    }

    objc_storeStrong(&self->_linkView, view);
    viewCopy = v10;
    if (v10)
    {
      [(LPLinkView *)v10 setDelegate:self];
      [(LPLinkView *)v10 _setDisableTapGesture:1];
      [(LPLinkView *)v10 _setApplyCornerRadius:0];
      [(CKLinkBalloonView *)self addSubview:v10];
      layer = [(LPLinkView *)v10 layer];
      linkViewMaskLayer = [(CKLinkBalloonView *)self linkViewMaskLayer];
      [layer setMask:linkViewMaskLayer];

      if (objc_opt_respondsToSelector())
      {
        [(LPLinkView *)v10 set_usesInferredAppearanceWithOverriddenBackgroundColor:1];
      }

      if (objc_opt_respondsToSelector())
      {
        [(LPLinkView *)v10 set_needsDominantBackgroundColor:1];
      }

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(LPLinkView *)v10 _setOverrideBackgroundColor:clearColor];

      if (objc_opt_respondsToSelector())
      {
        [(LPLinkView *)v10 set_allowsVibrancy:0];
      }

      [(CKLinkBalloonView *)self updateBalloonMasks];
      viewCopy = v10;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  linkView = self->_linkView;
  if (linkView)
  {
    [(LPLinkView *)linkView sizeThatFits:insets, tailInsets, fits.width, fits.height];
    v10 = v9;
    v12 = v11;
    if ([(CKBalloonView *)self hasSuggestedActionsMenu])
    {
      [(CKBalloonView *)self suggestedActionsMenuAdditionalHeight];
      v10 = v10 + v10;
      v12 = v12 + v13;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(47);
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "Calling sizeThatFits when LPLinkView has not been configured yet.", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v21.receiver = self;
    v21.super_class = CKLinkBalloonView;
    [(CKImageBalloonView *)&v21 sizeThatFits:insets textAlignmentInsets:tailInsets tailInsets:width, height];
    v10 = v17;
    v12 = v18;
  }

  v19 = v10;
  v20 = v12;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKLinkBalloonView;
  [(CKImageBalloonView *)&v5 prepareForReuse];
  linkView = self->_linkView;
  if (linkView)
  {
    [(LPLinkView *)linkView removeFromSuperview];
    v4 = self->_linkView;
    self->_linkView = 0;
  }
}

- (void)updateBalloonMasks
{
  traitCollection = [(CKLinkBalloonView *)self traitCollection];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  [(CKLinkBalloonView *)self backdropBalloonDescriptor];
  linkViewBackgroundLayer = [(CKLinkBalloonView *)self linkViewBackgroundLayer];

  if (linkViewBackgroundLayer)
  {
    linkViewBackgroundLayer = self->_linkViewBackgroundLayer;
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    [(CKBalloonLayer *)linkViewBackgroundLayer updateDescriptor:&v25 traitCollection:traitCollection];
  }

  else
  {
    traitCollection2 = [(CKLinkBalloonView *)self traitCollection];
    v7 = [_TtC7ChatKit14CKBalloonLayer alloc];
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v8 = [(CKBalloonLayer *)v7 initWithDescriptor:&v25 traitCollection:traitCollection2];
    v9 = self->_linkViewBackgroundLayer;
    self->_linkViewBackgroundLayer = v8;

    layer = [(CKLinkBalloonView *)self layer];
    [layer insertSublayer:self->_linkViewBackgroundLayer atIndex:0];
  }

  if ([(CKLinkBalloonView *)self shouldShowLinkOverlayBalloonLayer])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    [(CKLinkBalloonView *)self linkOverlayBalloonDescriptor];
    linkOverlayBalloonLayer = self->_linkOverlayBalloonLayer;
    if (linkOverlayBalloonLayer)
    {
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      v20 = v28;
      [(CKBalloonLayer *)linkOverlayBalloonLayer updateDescriptor:&v17 traitCollection:traitCollection];
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
      v15 = self->_linkOverlayBalloonLayer;
      self->_linkOverlayBalloonLayer = v14;

      [(CKBalloonLayer *)self->_linkOverlayBalloonLayer setAllowsHitTesting:0];
      layer2 = [(CKLinkBalloonView *)self layer];
      [layer2 addSublayer:self->_linkOverlayBalloonLayer];
    }
  }

  else
  {
    [(CKBalloonLayer *)self->_linkOverlayBalloonLayer removeFromSuperlayer];
    v12 = self->_linkOverlayBalloonLayer;
    self->_linkOverlayBalloonLayer = 0;
  }
}

- (BOOL)shouldShowLinkOverlayBalloonLayer
{
  if ([(CKImageBalloonView *)self isScheduled])
  {
    return 1;
  }

  [(CKBalloonView *)self balloonDescriptor:0];
  if (v6 - 1 < 4)
  {
    return 1;
  }

  if (v6 != 5)
  {
    return 0;
  }

  traitCollection = [(CKLinkBalloonView *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  return isTranscriptBackgroundActive ^ 1;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v3.receiver = self;
  v3.super_class = CKLinkBalloonView;
  [(CKBalloonView *)&v3 layoutSublayersOfLayer:layer];
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = CKLinkBalloonView;
  [(CKImageBalloonView *)&v43 layoutSubviews];
  if (self->_linkView)
  {
    [(CKLinkBalloonView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(CKBalloonLayer *)self->_linkOverlayBalloonLayer setFrame:?];
    if ([(CKImageBalloonView *)self isScheduled])
    {
      bubblePath = [(CKBalloonView *)self bubblePath];
      [(CKLinkBalloonView *)self bounds];
      [bubblePath tailInsetsForBubbleSize:{v12, v13}];
      v14 = +[CKUIBehavior sharedBehaviors];
      [v14 linkPreviewSendLaterInsets];

      UIEdgeInsetsAdd();
      v4 = v4 + v15;
      v6 = v6 + v16;
      v8 = v8 - (v15 + v17);
      v10 = v10 - (v16 + v18);
    }

    [(LPLinkView *)self->_linkView setFrame:v4, v6, v8, v10];
    isScheduled = [(CKImageBalloonView *)self isScheduled];
    v20 = 1.0;
    if (isScheduled)
    {
      isTranscriptBackgroundActive = [(CKBalloonView *)self isTranscriptBackgroundActive];
      v20 = 0.5;
      if (isTranscriptBackgroundActive)
      {
        v20 = 1.0;
      }
    }

    [(LPLinkView *)self->_linkView setAlpha:v20];
    linkViewMaskLayer = [(CKLinkBalloonView *)self linkViewMaskLayer];
    [(CKLinkBalloonView *)self linkViewBalloonDescriptor];
    [linkViewMaskLayer updateDescriptor:v42];

    [(LPLinkView *)self->_linkView bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    linkViewMaskLayer2 = [(CKLinkBalloonView *)self linkViewMaskLayer];
    [linkViewMaskLayer2 setFrame:{v24, v26, v28, v30}];
  }

  linkView = [(CKLinkBalloonView *)self linkView];
  [linkView frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  linkViewBackgroundLayer = [(CKLinkBalloonView *)self linkViewBackgroundLayer];
  [linkViewBackgroundLayer setFrame:{v34, v36, v38, v40}];
}

- (void)prepareForDisplay
{
  v25.receiver = self;
  v25.super_class = CKLinkBalloonView;
  [(CKImageBalloonView *)&v25 prepareForDisplay];
  v3 = [(CKBalloonView *)self orientation]== 1;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 pluginBalloonInsetsForMessageFromMe:v3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  linkView = [(CKLinkBalloonView *)self linkView];
  [linkView setContentInset:{v6, v8, v10, v12}];

  if (self->_linkViewBackgroundLayer)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    [(CKLinkBalloonView *)self backdropBalloonDescriptor];
    traitCollection = [(CKLinkBalloonView *)self traitCollection];
    linkViewBackgroundLayer = self->_linkViewBackgroundLayer;
    v16[4] = v21;
    v16[5] = v22;
    v16[6] = v23;
    v16[7] = v24;
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    v16[3] = v20;
    [(CKBalloonLayer *)linkViewBackgroundLayer updateDescriptor:v16 traitCollection:traitCollection];
  }

  [(LPLinkView *)self->_linkView setNeedsLayout];
}

- (id)messageTintColor
{
  linkView = [(CKLinkBalloonView *)self linkView];
  _specializedBackgroundColor = [linkView _specializedBackgroundColor];

  return _specializedBackgroundColor;
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
  [(CKLinkBalloonView *)self linkViewBalloonDescriptor];
  retstr->var2 = 0;
  retstr->var6 = -1;
  retstr->var9 = 1;
  messageTintColor = [(CKLinkBalloonView *)self messageTintColor];
  traitCollection = [(CKLinkBalloonView *)self traitCollection];
  v6 = [messageTintColor resolvedColorWithTraitCollection:traitCollection];
  [v6 ck_imColorComponents];
  retstr->var7.red = v7;
  retstr->var7.green = v8;
  retstr->var7.blue = v9;
  retstr->var7.alpha = v10;

  return result;
}

- (CKBalloonDescriptor_t)linkViewBalloonDescriptor
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
  result = [(CKImageBalloonView *)self isScheduled];
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

  return result;
}

- (CKBalloonDescriptor_t)linkOverlayBalloonDescriptor
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
        traitCollection = [(CKLinkBalloonView *)self traitCollection];
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
      result = [(CKImageBalloonView *)self isScheduled];
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

- (void)linkViewNeedsResize:(id)resize
{
  linkView = self->_linkView;
  if (linkView == resize)
  {
    [(LPLinkView *)linkView setNeedsLayout];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)_linkViewMetadataDidBecomeComplete:(id)complete
{
  linkView = self->_linkView;
  if (linkView == complete)
  {
    [(LPLinkView *)linkView setNeedsLayout];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

@end