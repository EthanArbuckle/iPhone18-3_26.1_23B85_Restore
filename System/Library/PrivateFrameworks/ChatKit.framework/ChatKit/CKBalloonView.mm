@interface CKBalloonView
- (BOOL)hasSuggestedActionsMenu;
- (BOOL)invisibleInkEffectEnabled;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (CKBalloonDescriptor_t)highlightOverlayBalloonDescriptor;
- (CKBalloonView)initWithFrame:(CGRect)a3;
- (CKBalloonViewAnimationDelegate)animationDelegate;
- (CKBalloonViewDelegate)delegate;
- (CKTextBalloonView)asTextBalloonView;
- (IMColorComponents)dynamicFillColor;
- (IMColorComponents)strokeColor;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3;
- (UIEdgeInsets)tailInsets;
- (UIEdgeInsets)tailInsetsForPillSize:(CGSize)a3;
- (UIEdgeInsets)tailInsetsForViewSize:(CGSize)a3;
- (UIEdgeInsets)textAlignmentInsets;
- (UIView)snapshotCurrentView;
- (_TtC7ChatKit12CKBubblePath)bubblePath;
- (char)balloonShape;
- (double)suggestedActionsMenuAdditionalHeight;
- (double)suggestedActionsMenuAdditionalHeightForBalloonSize:(CGSize)a3;
- (double)suggestedActionsMenuHeight;
- (double)suggestedActionsMenuHeightForSize:(CGSize)a3;
- (id)bezierPathForDragPreview;
- (id)createHighlightOverlayLayer;
- (id)highlightOverlayBalloonTraitCollection;
- (void)_performHighlightOverlayLayerAppearanceAnimation;
- (void)_performHighlightOverlayLayerDisappearanceAnimation;
- (void)addFilter:(id)a3;
- (void)addSuggestedActionsMenuWithSuggestedActionsList:(id)a3 backgroundStyle:(int64_t)a4;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)chatBotActionButton:(id)a3 didSelectChipAction:(id)a4;
- (void)clearFilters;
- (void)configureForComposition:(id)a3;
- (void)configureForEffectViewWithMediaObject:(id)a3;
- (void)configureForMessagePart:(id)a3;
- (void)configureGestureRecognizers;
- (void)dealloc;
- (void)didTapTruncatedCaptionForRichCard:(id)a3;
- (void)doubleTapGestureRecognized:(id)a3;
- (void)insertHighlightOverlayLayer:(id)a3;
- (void)layoutDropDownMenuIfNeeded;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)longPressGestureRecognized:(id)a3;
- (void)openAppFromNotificationExtensionWith:(id)a3;
- (void)performTranscriptHideAnimation:(id)a3;
- (void)performTranscriptInsertionAnimation:(id)a3;
- (void)performTranscriptReloadAnimation:(id)a3;
- (void)performTranscriptRemovalAnimation:(id)a3;
- (void)performTranscriptRevealAnimation:(id)a3;
- (void)prepareForDisplay;
- (void)prepareForDisplayIfNeeded;
- (void)prepareForReuse;
- (void)registerForBalloonViewTraitCollectionUpdates;
- (void)removeSuggestedActionsMenu;
- (void)setBackdropFilterLayer:(id)a3;
- (void)setBackgroundLuminance:(double)a3;
- (void)setBalloonCorners:(unint64_t)a3;
- (void)setBalloonDescriptor:(CKBalloonDescriptor_t *)a3;
- (void)setBalloonStyle:(char)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDragInteraction:(id)a3;
- (void)setDynamicFillColor:(IMColorComponents)a3;
- (void)setEffectView:(id)a3;
- (void)setHasHighlightOverlay:(BOOL)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5;
- (void)setHasVibrantOuterStroke:(BOOL)a3;
- (void)setInvisibleInkEffectEnabled:(BOOL)a3;
- (void)setInvisibleInkEffectPaused:(BOOL)a3;
- (void)setNeedsPrepareForDisplay;
- (void)setOrientation:(char)a3;
- (void)setStrokeColor:(IMColorComponents)a3;
- (void)setTextAlignmentInsets:(UIEdgeInsets)a3;
- (void)setTranscriptBackgroundActive:(BOOL)a3;
- (void)setUserInterfaceLevel:(int64_t)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
- (void)tapGestureRecognized:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBalloonForTraitCollection:(id)a3;
- (void)updateGestureEnablement;
- (void)updateRasterizationForInvisibleInkEffect;
@end

@implementation CKBalloonView

- (void)configureGestureRecognizers
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 disableTranscriptInteractions];

  if ((v4 & 1) == 0)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_doubleTapGestureRecognized_];
    [v9 setCancelsTouchesInView:0];
    [v9 setNumberOfTapsRequired:2];
    [(CKBalloonView *)self setDoubleTapGestureRecognizer:v9];
    v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_longPressGestureRecognized_];
    [v5 setMinimumPressDuration:0.5];
    [v5 setDelaysTouchesBegan:1];
    [v5 _setRequiresQuietImpulse:1];
    [v5 setEnabled:{-[CKBalloonView shouldEnableLongPress](self, "shouldEnableLongPress")}];
    [(CKBalloonView *)self setLongPressGestureRecognizer:v5];
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapGestureRecognized_];
    [v6 setDelegate:self];
    [v6 setCancelsTouchesInView:0];
    [v6 requireGestureRecognizerToFail:v9];
    [v6 requireGestureRecognizerToFail:v5];
    [(CKBalloonView *)self setTapGestureRecognizer:v6];
    v7 = +[CKPrintController sharedInstance];
    v8 = [v7 isPrinting];

    if ((v8 & 1) == 0)
    {
      [(CKBalloonView *)self addGestureRecognizer:v6];
      [(CKBalloonView *)self addGestureRecognizer:v9];
      [(CKBalloonView *)self addGestureRecognizer:v5];
    }
  }
}

- (void)setNeedsPrepareForDisplay
{
  v2 = [(CKBalloonView *)self displayUpdater];
  [v2 setNeedsUpdate];
}

- (void)prepareForDisplayIfNeeded
{
  v2 = [(CKBalloonView *)self displayUpdater];
  [v2 updateIfNeeded];
}

- (void)prepareForDisplay
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  [v2 prepareForDisplay];
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(CKBalloonView *)self bounds];

  [(CKBalloonView *)self alignmentRectInsetsForBoundsSize:v3, v4];
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (_TtC7ChatKit12CKBubblePath)bubblePath
{
  [(CKBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  [(CKBalloonView *)self balloonDescriptor];
  v11 = [_TtC7ChatKit12CKBubblePath alloc];
  v14[4] = v19;
  v14[5] = v20;
  v14[6] = v21;
  v14[7] = v22;
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  v12 = [(CKBubblePath *)v11 initWithFrame:v14 balloonDescriptor:v4, v6, v8, v10];

  return v12;
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  *retstr = *CKBalloonDescriptorZero;
  retstr->var0 = [(CKBalloonView *)self balloonShape];
  retstr->var1 = [(CKBalloonView *)self balloonTailShape];
  retstr->var2 = [(CKBalloonView *)self balloonStyle];
  retstr->var3 = [(CKBalloonView *)self orientation];
  retstr->var4 = [(CKBalloonView *)self balloonCorners];
  [(CKBalloonView *)self cornerRadius];
  retstr->var5 = v5;
  retstr->var12 = [(CKBalloonView *)self canUseOpaqueMask];
  retstr->var13 = [(CKBalloonView *)self hasTail];
  retstr->var15 = [(CKBalloonView *)self useLargeAsset];
  retstr->var6 = [(CKBalloonView *)self color];
  [(CKBalloonView *)self dynamicFillColor];
  retstr->var7.red = v6;
  retstr->var7.green = v7;
  retstr->var7.blue = v8;
  retstr->var7.alpha = v9;
  [(CKBalloonView *)self strokeColor];
  retstr->var8.red = v10;
  retstr->var8.green = v11;
  retstr->var8.blue = v12;
  retstr->var8.alpha = v13;
  retstr->var9 = [(CKBalloonView *)self hasVibrantOuterStroke];
  retstr->var10 = [(CKBalloonView *)self userInterfaceStyle];
  result = [(CKBalloonView *)self userInterfaceLevel];
  retstr->var11 = result;
  return result;
}

- (char)balloonShape
{
  if (self->_balloonShape == 3)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (IMColorComponents)dynamicFillColor
{
  red = self->_dynamicFillColor.red;
  green = self->_dynamicFillColor.green;
  blue = self->_dynamicFillColor.blue;
  alpha = self->_dynamicFillColor.alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

- (IMColorComponents)strokeColor
{
  red = self->_strokeColor.red;
  green = self->_strokeColor.green;
  blue = self->_strokeColor.blue;
  alpha = self->_strokeColor.alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

- (BOOL)invisibleInkEffectEnabled
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  v3 = [v2 isEnabled];

  return v3;
}

- (BOOL)hasSuggestedActionsMenu
{
  v2 = [(CKBalloonView *)self dropDownMenuButton];
  v3 = v2 != 0;

  return v3;
}

- (void)dealloc
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = CKBalloonView;
  [(CKBalloonView *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CKBalloonView *)self balloonDescriptor];
  v4 = NSStringFromBalloonDescriptor(v11);
  v5 = [(CKBalloonView *)self delegate];
  v6 = [(CKBalloonImageView *)self image];
  v10.receiver = self;
  v10.super_class = CKBalloonView;
  v7 = [(CKBalloonView *)&v10 description];
  v8 = [v3 stringWithFormat:@"[CKBalloonView balloon:%@ delegate:%@ [UIImageView image:%@ [%@]]]", v4, v5, v6, v7];

  return v8;
}

- (CKBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKBalloonView;
  v3 = [(CKBalloonImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKBalloonView *)v3 configureGestureRecognizers];
    v5 = [[CKManualUpdater alloc] initWithTarget:v4 action:sel_prepareForDisplay];
    [(CKBalloonView *)v4 setDisplayUpdater:v5];
    [(CKBalloonView *)v4 setUserInteractionEnabled:1];
    [(CKBalloonView *)v4 setOpaque:0];
    [(CKBalloonView *)v4 setBalloonTailShape:1];
    [(CKBalloonView *)v4 setHasTail:1];
    [(CKBalloonView *)v4 setCanUseOpaqueMask:1];
    [(CKBalloonView *)v4 setBalloonStyle:0];
    [(CKBalloonView *)v4 setBalloonCorners:-1];
    [(CKBalloonView *)v4 registerForBalloonViewTraitCollectionUpdates];
    [(CKBalloonView *)v4 setNeedsPrepareForDisplay];
  }

  return v4;
}

- (void)registerForBalloonViewTraitCollectionUpdates
{
  v3 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v6 = [v3 mutableCopy];

  [v6 addObject:objc_opt_class()];
  [v6 addObject:objc_opt_class()];
  v4 = [v6 copy];
  v5 = [(CKBalloonView *)self registerForTraitChanges:v4 withHandler:&__block_literal_global_16];
}

void __61__CKBalloonView_registerForBalloonViewTraitCollectionUpdates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  [v2 updateBalloonForTraitCollection:v3];
  [v2 setNeedsPrepareForDisplay];
}

- (void)updateGestureEnablement
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 disableTranscriptInteractions];
  v5 = [(CKBalloonView *)self longPressGestureRecognizer];
  [v5 setEnabled:v4 ^ 1u];

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 disableTranscriptInteractions];
  v8 = [(CKBalloonView *)self doubleTapGestureRecognizer];
  [v8 setEnabled:v7 ^ 1u];

  v10 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v6) = [v10 disableTranscriptInteractions];
  v9 = [(CKBalloonView *)self tapGestureRecognizer];
  [v9 setEnabled:v6 ^ 1];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v12 = *MEMORY[0x1E69DDCE0];
  v13 = v4;
  v11[0] = v12;
  v11[1] = v4;
  [(CKBalloonView *)self sizeThatFits:&v12 textAlignmentInsets:v11 tailInsets:a3.width, a3.height];
  v6 = v5;
  v8 = v7;
  [(CKBalloonView *)self setTextAlignmentInsets:v12, v13];
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)addSuggestedActionsMenuWithSuggestedActionsList:(id)a3 backgroundStyle:(int64_t)a4
{
  v9 = a3;
  if (![(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    v6 = [(CKBalloonView *)self dropDownMenuButton];
    [v6 removeFromSuperview];

    v7 = [[CKChatBotActionButton alloc] initWithActions:v9 delegate:self backgroundStyle:a4 showTitle:1];
    [(CKBalloonView *)self setDropDownMenuButton:v7];

    v8 = [(CKBalloonView *)self dropDownMenuButton];
    [(CKBalloonView *)self addSubview:v8];
  }
}

- (void)removeSuggestedActionsMenu
{
  v3 = [(CKBalloonView *)self dropDownMenuButton];
  [v3 removeFromSuperview];

  [(CKBalloonView *)self setDropDownMenuButton:0];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKBalloonView;
  [(CKBalloonImageView *)&v14 layoutSubviews];
  [(CKBalloonView *)self layoutDropDownMenuIfNeeded];
  [(CKBalloonView *)self bounds];
  if (self->_highlightOverlayLayer)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    MidX = CGRectGetMidX(*&v3);
    v15.origin.x = v7;
    v15.origin.y = v8;
    v15.size.width = v9;
    v15.size.height = v10;
    MidY = CGRectGetMidY(v15);
    [(CALayer *)self->_highlightOverlayLayer setBounds:v7, v8, v9, v10];
    [(CALayer *)self->_highlightOverlayLayer setPosition:MidX, MidY];
  }

  stickerEffectView = self->_stickerEffectView;
  if (stickerEffectView)
  {
    [(CKBalloonView *)self bounds];
    [(VKCStickerEffectView *)stickerEffectView setFrame:?];
  }
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKBalloonView;
  [(CKBalloonView *)&v5 layoutSublayersOfLayer:a3];
  v4 = [(CKBalloonView *)self invisibleInkEffectController];
  [v4 hostViewDidLayoutSubviews];
}

- (double)suggestedActionsMenuAdditionalHeightForBalloonSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CKBalloonView *)self hasSuggestedActionsMenu];
  result = 0.0;
  if (v6)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 suggestedActionButtonInsets];
    v10 = v9;

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 suggestedActionButtonInsets];
    v13 = v12;

    [(CKBalloonView *)self suggestedActionsMenuHeightForSize:width, height];
    return v13 + v10 + v14;
  }

  return result;
}

- (double)suggestedActionsMenuAdditionalHeight
{
  [(CKBalloonView *)self bounds];

  [(CKBalloonView *)self suggestedActionsMenuAdditionalHeightForBalloonSize:v3, v4];
  return result;
}

- (double)suggestedActionsMenuHeight
{
  [(CKBalloonView *)self bounds];

  [(CKBalloonView *)self suggestedActionsMenuHeightForSize:v3, v4];
  return result;
}

- (double)suggestedActionsMenuHeightForSize:(CGSize)a3
{
  v4 = a3.width + -32.0;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 suggestedActionButtonMinHeight];
  v7 = v6;

  v8 = [(CKBalloonView *)self dropDownMenuButton];
  [v8 sizeThatFits:{v4, 1.79769313e308}];
  v10 = fmax(v9, v7);

  return v10;
}

- (void)layoutDropDownMenuIfNeeded
{
  if ([(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    [(CKBalloonView *)self frame];
    [(UIView *)self __ck_alignmentRectSizeForFrameSize:v3, v4];
    v6 = v5;
    [(CKBalloonView *)self bounds];
    v8 = v7;
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 suggestedActionButtonInsets];
    v11 = v10;

    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 suggestedActionButtonInsets];
    v14 = v13;

    if (v6 == v8)
    {
      if ([(CKBalloonView *)self orientation])
      {
        v15 = 13.0;
      }

      else
      {
        v15 = 19.0;
      }

      if ([(CKBalloonView *)self orientation]== 1)
      {
        v16 = 19.0;
      }

      else
      {
        v16 = 13.0;
      }
    }

    else
    {
      v16 = 0.0;
      v15 = 0.0;
    }

    [(CKBalloonView *)self alignmentRectInsets];
    v18 = v15 + v17;
    [(CKBalloonView *)self bounds];
    v20 = v19;
    [(CKBalloonView *)self suggestedActionsMenuHeight];
    v22 = v20 - v21 - v14 - v11;
    [(CKBalloonView *)self suggestedActionsMenuHeight];
    v24 = v23;
    v25 = [(CKBalloonView *)self dropDownMenuButton];
    [v25 setFrame:{v18, v22, v6 - (v16 + v15), v24}];

    v26 = [(CKBalloonView *)self dropDownMenuButton];
    [(CKBalloonView *)self bringSubviewToFront:v26];
  }
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3
{
  v7.receiver = self;
  v7.super_class = CKBalloonView;
  [(CKBalloonImageView *)&v7 alignmentRectInsets:a3.width];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setEffectView:(id)a3
{
  v10 = a3;
  v4 = [(CKBalloonView *)self stickerEffectView];

  v5 = v10;
  if (v4 != v10)
  {
    v6 = [(CKBalloonView *)self stickerEffectView];
    [v6 removeFromSuperview];

    [(CKBalloonView *)self setStickerEffectView:v10];
    v7 = [(CKBalloonView *)self stickerEffectView];

    if (v7)
    {
      v8 = [(CKBalloonImageView *)self invisibleInkEffectImage];

      v9 = [(CKBalloonView *)self stickerEffectView];
      if (v8)
      {
        [(CKBalloonView *)self insertSubview:v9 atIndex:0];
      }

      else
      {
        [(CKBalloonView *)self addSubview:v9];
      }
    }

    [(CKBalloonImageView *)self setImageHidden:v7 != 0];
    [(CKBalloonView *)self setNeedsLayout];
    v5 = v10;
  }
}

- (void)configureForEffectViewWithMediaObject:(id)a3
{
  v15 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v15;
  if (isKindOfClass)
  {
    v6 = v15;
    if (([v6 needsAnimation] & 1) == 0)
    {
      [v6 stickerEffectType];
      if (([v6 needsAnimation] & 1) == 0 && (IMStickerEffectTypeShouldAvoidEffectView() & 1) == 0)
      {
        v7 = [(CKBalloonView *)self stickerEffectView];
        if (!v7)
        {
          v8 = MTLCreateSystemDefaultDevice();
          v7 = [objc_alloc(MEMORY[0x1E69DFA08]) initWithDevice:v8];
          [v7 setContentMode:1];
          [(CKBalloonView *)self frame];
          [v7 setFrame:?];
          v9 = [v6 imageData];
          v10 = [v9 UTIType];
          v11 = [v10 hasSuffix:@"heics"];

          if (v11)
          {
            v12 = [v6 imageData];
            v13 = [v12 data];
            [v7 setVideoData:v13];
          }

          else
          {
            v12 = [(CKBalloonImageView *)self image];
            [v7 setImage:v12];
          }

          v14 = [MEMORY[0x1E69DFA00] effectWithType:{objc_msgSend(v6, "stickerEffectType")}];
          [v7 setEffect:v14];

          [(CKBalloonView *)self setEffectView:v7];
        }
      }
    }

    v5 = v15;
  }
}

- (void)setOrientation:(char)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setTextAlignmentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textAlignmentInsets.top, v3), vceqq_f64(*&self->_textAlignmentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_textAlignmentInsets = a3;
    [(CKBalloonView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  v7.receiver = self;
  v7.super_class = CKBalloonView;
  [(CKBalloonImageView *)&v7 sizeThatFits:a4, a5, a3.width, a3.height];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = CKBalloonView;
  v4 = a3;
  [(CKBalloonView *)&v11 traitCollectionDidChange:v4];
  v5 = [(CKBalloonView *)self traitCollection:v11.receiver];
  -[CKBalloonView setUserInterfaceStyle:](self, "setUserInterfaceStyle:", [v5 userInterfaceStyle]);

  v6 = [(CKBalloonView *)self traitCollection];
  [v6 displayScale];
  v8 = v7;
  [v4 displayScale];
  v10 = v9;

  if (v8 != v10)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (void)updateBalloonForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = CKBackgroundLevelForTraitCollection();
  -[CKBalloonView setUserInterfaceStyle:](self, "setUserInterfaceStyle:", [v4 userInterfaceStyle]);
  [(CKBalloonView *)self setUserInterfaceLevel:v5];
  v6 = [v4 isTranscriptBackgroundActive];

  [(CKBalloonView *)self setTranscriptBackgroundActive:v6];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = CKBalloonView;
  [(CKBalloonImageView *)&v8 prepareForReuse];
  [(CKBalloonView *)self setDelegate:0];
  [(CKBalloonView *)self setBalloonStyle:0];
  [(CKBalloonView *)self setCanUseOpaqueMask:1];
  [(CKBalloonView *)self setIsBeingUsedInThrowAnimation:0];
  [(CKBalloonView *)self setIsBeingUsedForSnapshot:0];
  [(CKBalloonView *)self setSelected:0 withSelectionState:0];
  [(CKBalloonView *)self setBalloonCorners:-1];
  [(CKBalloonView *)self setAlpha:1.0];
  [(CKBalloonView *)self setHidden:0];
  [(CKBalloonView *)self setUserInteractionEnabled:1];
  [(CKBalloonView *)self setInvisibleInkEffectEnabled:0];
  [(CKBalloonView *)self setInvisibleInkEffectPaused:0];
  v3 = [(CKBalloonView *)self layer];
  [v3 setAnchorPoint:{0.5, 0.5}];

  v4 = [(CKBalloonView *)self filters];
  v5 = [v4 count];

  if (v5)
  {
    [(CKBalloonView *)self clearFilters];
  }

  [(CKBalloonView *)self setInteractions:MEMORY[0x1E695E0F0]];
  [(CKBalloonView *)self setDragInteraction:0];
  v6 = [(CKBalloonView *)self stickerEffectView];
  [v6 removeFromSuperview];

  [(CKBalloonView *)self setEffectView:0];
  v7 = [(CKBalloonView *)self dropDownMenuButton];
  [v7 removeFromSuperview];

  [(CKBalloonView *)self setDropDownMenuButton:0];
}

- (CKBalloonDescriptor_t)highlightOverlayBalloonDescriptor
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
  v10 = [(CKBalloonView *)self highlightOverlayColor];
  [v10 ck_imColorComponents];
  retstr->var7.red = v5;
  retstr->var7.green = v6;
  retstr->var7.blue = v7;
  retstr->var7.alpha = v8;

  return result;
}

- (id)highlightOverlayBalloonTraitCollection
{
  v2 = [(CKBalloonView *)self traitCollection];
  v3 = [v2 traitCollectionByModifyingTraits:&__block_literal_global_248];

  return v3;
}

void __55__CKBalloonView_highlightOverlayBalloonTraitCollection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E110] forTrait:{"integerValue"), objc_opt_class()}];
}

- (void)insertHighlightOverlayLayer:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonView *)self layer];
  [v5 addSublayer:v4];
}

- (id)createHighlightOverlayLayer
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  [(CKBalloonView *)self highlightOverlayBalloonDescriptor];
  v3 = [(CKBalloonView *)self highlightOverlayBalloonTraitCollection];
  v4 = [_TtC7ChatKit14CKBalloonLayer alloc];
  v7[4] = v12;
  v7[5] = v13;
  v7[6] = v14;
  v7[7] = v15;
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  v5 = [(CKBalloonLayer *)v4 initWithDescriptor:v7 traitCollection:v3];
  [(CKBalloonLayer *)v5 setAllowsHitTesting:0];

  return v5;
}

- (void)setHasHighlightOverlay:(BOOL)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5
{
  if (self->_hasHighlightOverlay != a3)
  {
    v6 = a4;
    self->_hasHighlightOverlay = a3;
    if (a3)
    {
      v8 = a5;
      v9 = [(CKBalloonView *)self createHighlightOverlayLayer];
      highlightOverlayLayer = self->_highlightOverlayLayer;
      self->_highlightOverlayLayer = v9;

      if (self->_highlightOverlayLayer)
      {
        [(CKBalloonView *)self insertHighlightOverlayLayer:?];
        if (v6)
        {
          [(CKBalloonView *)self _performHighlightOverlayLayerAppearanceAnimation];
        }
      }

      if (v8)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__highlightOverlayAutoDismissTimerFired object:0];
        [(CKBalloonView *)self performSelector:sel__highlightOverlayAutoDismissTimerFired withObject:0 afterDelay:2.0];
      }
    }

    else if (a4)
    {
      [(CKBalloonView *)self _performHighlightOverlayLayerDisappearanceAnimation];
    }

    else
    {
      v11 = [(CKBalloonView *)self highlightOverlayLayer];
      [v11 removeFromSuperlayer];

      [(CKBalloonView *)self setHighlightOverlayLayer:0];
    }

    [(CKBalloonView *)self setNeedsLayout];
  }
}

- (void)_performHighlightOverlayLayerAppearanceAnimation
{
  if (self->_highlightOverlayLayer)
  {
    v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v5 setFromValue:&unk_1F04E86E8];
    [v5 setToValue:&unk_1F04E86F8];
    [v5 setDuration:0.25];
    v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v5 setTimingFunction:v3];

    [v5 setRemovedOnCompletion:1];
    [(CALayer *)self->_highlightOverlayLayer addAnimation:v5 forKey:@"opacity"];
    LODWORD(v4) = 1.0;
    [(CALayer *)self->_highlightOverlayLayer setOpacity:v4];
  }
}

- (void)_performHighlightOverlayLayerDisappearanceAnimation
{
  if (self->_highlightOverlayLayer)
  {
    v3 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [(CABasicAnimation *)v3 setFromValue:&unk_1F04E86F8];
    [(CABasicAnimation *)v3 setToValue:&unk_1F04E86E8];
    [(CABasicAnimation *)v3 setDuration:0.25];
    v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [(CABasicAnimation *)v3 setTimingFunction:v4];

    [(CABasicAnimation *)v3 setRemovedOnCompletion:1];
    [(CABasicAnimation *)v3 setDelegate:self];
    activeHighlightOverlayLayerDisappearanceAnimation = self->_activeHighlightOverlayLayerDisappearanceAnimation;
    self->_activeHighlightOverlayLayerDisappearanceAnimation = v3;
    v6 = v3;

    [(CALayer *)self->_highlightOverlayLayer addAnimation:v6 forKey:@"opacity"];
    [(CALayer *)self->_highlightOverlayLayer setOpacity:0.0];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (self->_activeHighlightOverlayLayerDisappearanceAnimation == a3)
  {
    v5 = [(CKBalloonView *)self highlightOverlayLayer];
    [v5 removeFromSuperlayer];

    [(CKBalloonView *)self setHighlightOverlayLayer:0];
    activeHighlightOverlayLayerDisappearanceAnimation = self->_activeHighlightOverlayLayerDisappearanceAnimation;
    self->_activeHighlightOverlayLayerDisappearanceAnimation = 0;
  }
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  [v4 balloonAlpha];
  [(CKBalloonView *)self setAlpha:?];
  v5 = [(CKBalloonView *)self filters];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [(CKBalloonView *)self setFilters:v6];
  }

  v7 = [(CKBalloonView *)self filters];
  [v7 addObject:v4];
}

- (void)clearFilters
{
  [(CKBalloonView *)self setAlpha:1.0];
  v3 = [(CKBalloonView *)self filters];
  [v3 removeAllObjects];

  [(CKBalloonView *)self setFilters:0];

  [(CKBalloonView *)self setNeedsPrepareForDisplay];
}

- (void)setDragInteraction:(id)a3
{
  v5 = a3;
  dragInteraction = self->_dragInteraction;
  if (dragInteraction != v5)
  {
    v7 = v5;
    if (dragInteraction)
    {
      [(CKBalloonView *)self removeInteraction:?];
      v5 = v7;
    }

    if (v5)
    {
      [(CKBalloonView *)self addInteraction:v7];
    }

    objc_storeStrong(&self->_dragInteraction, a3);
    v5 = v7;
  }
}

- (void)setBalloonStyle:(char)a3
{
  if (self->_balloonStyle != a3)
  {
    self->_balloonStyle = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setBackgroundLuminance:(double)a3
{
  v3 = vabdd_f64(a3, self->_backgroundLuminance);
  self->_backgroundLuminance = a3;
  if (v3 > 0.01)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setUserInterfaceLevel:(int64_t)a3
{
  if (self->_userInterfaceLevel != a3)
  {
    self->_userInterfaceLevel = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setHasVibrantOuterStroke:(BOOL)a3
{
  if (self->_hasVibrantOuterStroke != a3)
  {
    self->_hasVibrantOuterStroke = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setCornerRadius:(double)a3
{
  v3 = vabdd_f64(a3, self->_cornerRadius);
  self->_cornerRadius = a3;
  if (v3 > 0.01)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setDynamicFillColor:(IMColorComponents)a3
{
  alpha = a3.alpha;
  blue = a3.blue;
  green = a3.green;
  red = a3.red;
  p_dynamicFillColor = &self->_dynamicFillColor;
  if ((IMColorComponentsEqualToColorComponents() & 1) == 0)
  {
    p_dynamicFillColor->red = red;
    p_dynamicFillColor->green = green;
    p_dynamicFillColor->blue = blue;
    p_dynamicFillColor->alpha = alpha;

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setStrokeColor:(IMColorComponents)a3
{
  alpha = a3.alpha;
  blue = a3.blue;
  green = a3.green;
  red = a3.red;
  p_strokeColor = &self->_strokeColor;
  if ((IMColorComponentsEqualToColorComponents() & 1) == 0)
  {
    p_strokeColor->red = red;
    p_strokeColor->green = green;
    p_strokeColor->blue = blue;
    p_strokeColor->alpha = alpha;

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setTranscriptBackgroundActive:(BOOL)a3
{
  if (self->_transcriptBackgroundActive != a3)
  {
    self->_transcriptBackgroundActive = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setBalloonCorners:(unint64_t)a3
{
  if (self->_balloonCorners != a3)
  {
    self->_balloonCorners = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)tapGestureRecognized:(id)a3
{
  v7 = a3;
  if ([v7 modifierFlags] == 0x80000)
  {
    v4 = [(CKBalloonView *)self delegate];
    [v4 balloonViewLongTouched:self];
  }

  else
  {
    v5 = [v7 modifierFlags];
    v6 = [(CKBalloonView *)self delegate];
    v4 = v6;
    if (v5 == 655360)
    {
      [v6 balloonViewShowInlineReply:self];
    }

    else
    {
      [v6 balloonViewTapped:self withModifierFlags:objc_msgSend(v7 selectedText:{"modifierFlags"), 0}];
    }
  }
}

- (void)setInvisibleInkEffectEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKBalloonView *)self invisibleInkEffectController];
  if (v3 && !v5)
  {
    v6 = [[CKInvisibleInkEffectController alloc] initWithHostView:self];
    [(CKInvisibleInkEffectController *)v6 setPaused:[(CKBalloonView *)self invisibleInkEffectPaused]];
    [(CKBalloonView *)self setInvisibleInkEffectController:v6];
    v5 = v6;
  }

  v7 = v5;
  if ([v5 isEnabled] != v3)
  {
    [v7 setEnabled:v3];
    [(CKBalloonView *)self updateRasterizationForInvisibleInkEffect];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (void)setInvisibleInkEffectPaused:(BOOL)a3
{
  if (self->_invisibleInkEffectPaused != a3)
  {
    v4 = a3;
    self->_invisibleInkEffectPaused = a3;
    v6 = [(CKBalloonView *)self invisibleInkEffectController];
    [v6 setPaused:v4];

    [(CKBalloonView *)self updateRasterizationForInvisibleInkEffect];
  }
}

- (void)setBackdropFilterLayer:(id)a3
{
  v5 = a3;
  if (self->_backdropFilterLayer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backdropFilterLayer, a3);
    [(CKBalloonView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)doubleTapGestureRecognized:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CKBalloonView *)self delegate];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [(CKBalloonView *)self delegate];
      v11 = 134218498;
      v12 = self;
      v13 = 2112;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Balloon view %p was double tapped delegate=<%@:%p>", &v11, 0x20u);
    }
  }

  v10 = [(CKBalloonView *)self delegate];
  [v10 balloonViewDoubleTapped:self];
}

- (void)longPressGestureRecognized:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = [(CKBalloonView *)self delegate];
    [v4 balloonViewLongTouched:self];
  }
}

- (void)setBalloonDescriptor:(CKBalloonDescriptor_t *)a3
{
  [(CKBalloonView *)self setBalloonShape:a3->var0];
  [(CKBalloonView *)self setBalloonTailShape:a3->var1];
  [(CKBalloonView *)self setBalloonStyle:a3->var2];
  [(CKBalloonView *)self setDynamicFillColor:a3->var7.red, a3->var7.green, a3->var7.blue, a3->var7.alpha];
  [(CKBalloonView *)self setStrokeColor:a3->var8.red, a3->var8.green, a3->var8.blue, a3->var8.alpha];
  [(CKBalloonView *)self setOrientation:a3->var3];
  [(CKBalloonView *)self setBalloonCorners:a3->var4];
  [(CKBalloonView *)self setCornerRadius:a3->var5];
  [(CKBalloonView *)self setCanUseOpaqueMask:a3->var12];
  [(CKBalloonView *)self setHasTail:a3->var13];
  [(CKBalloonView *)self setUseLargeAsset:a3->var15];
  [(CKBalloonView *)self setUserInterfaceStyle:a3->var10];
  [(CKBalloonView *)self setHasVibrantOuterStroke:a3->var9];
  [(CKBalloonView *)self setUserInterfaceLevel:a3->var11];
  [(CKBalloonView *)self setNeedsPrepareForDisplay];

  [(CKBalloonView *)self setNeedsLayout];
}

- (id)bezierPathForDragPreview
{
  v2 = [(CKBalloonView *)self bubblePath];
  v3 = [v2 bezierPath];

  return v3;
}

- (UIEdgeInsets)tailInsetsForPillSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isCAShapeLayerBalloonsEnabled];

  if ((v7 & 1) != 0 && [(CKBalloonView *)self hasBalloonShape])
  {
    v8 = [(CKBalloonView *)self bubblePath];
    [v8 cornerRadius];
    if (fabs(v9) >= 0.01)
    {
      [v8 tailInsetsForPillSize:{width, height}];
      v10 = v14;
      v11 = v15;
      v12 = v16;
      v13 = v17;
    }

    else
    {
      v10 = *MEMORY[0x1E69DDCE0];
      v11 = *(MEMORY[0x1E69DDCE0] + 8);
      v12 = *(MEMORY[0x1E69DDCE0] + 16);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
    }
  }

  else
  {
    v10 = *MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v12 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (UIEdgeInsets)tailInsetsForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isCAShapeLayerBalloonsEnabled];

  if ((v7 & 1) != 0 && [(CKBalloonView *)self hasBalloonShape])
  {
    v8 = [(CKBalloonView *)self bubblePath];
    [v8 cornerRadius];
    if (fabs(v9) >= 0.01)
    {
      [v8 tailInsetsForBubbleSize:{width, height}];
      v10 = v14;
      v11 = v15;
      v12 = v16;
      v13 = v17;
    }

    else
    {
      v10 = *MEMORY[0x1E69DDCE0];
      v11 = *(MEMORY[0x1E69DDCE0] + 8);
      v12 = *(MEMORY[0x1E69DDCE0] + 16);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
    }
  }

  else
  {
    v10 = *MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v12 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (UIEdgeInsets)tailInsets
{
  [(CKBalloonView *)self bounds];

  [(CKBalloonView *)self tailInsetsForViewSize:v3, v4];
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)updateRasterizationForInvisibleInkEffect
{
  if ([(CKBalloonView *)self invisibleInkEffectEnabled])
  {
    v3 = [(CKBalloonView *)self invisibleInkEffectPaused];
  }

  else
  {
    v3 = 0;
  }

  [(CKBalloonView *)self _setShouldRasterize:v3];
}

- (void)performTranscriptInsertionAnimation:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)performTranscriptReloadAnimation:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)performTranscriptRemovalAnimation:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)performTranscriptHideAnimation:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)performTranscriptRevealAnimation:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)chatBotActionButton:(id)a3 didSelectChipAction:(id)a4
{
  v5 = a4;
  v6 = [(CKBalloonView *)self delegate];
  [v6 balloonView:self selectedChipAction:v5];
}

- (void)openAppFromNotificationExtensionWith:(id)a3
{
  v4 = [(CKBalloonView *)self delegate];
  [v4 didTapChipListFromNotificationExtensionWithBalloonView:self];
}

- (void)didTapTruncatedCaptionForRichCard:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonView *)self delegate];
  [v5 didTapTruncatedCaptionForRichCard:v4 onBalloonView:self];
}

- (CKBalloonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKBalloonViewAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)textAlignmentInsets
{
  top = self->_textAlignmentInsets.top;
  left = self->_textAlignmentInsets.left;
  bottom = self->_textAlignmentInsets.bottom;
  right = self->_textAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  [(CKBalloonView *)self sizeThatFits:a4 textAlignmentInsets:0 tailInsets:a3.width, a3.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CKTextBalloonView)asTextBalloonView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)configureForComposition:(id)a3
{
  v4 = a3;
  [(CKBalloonView *)self setOrientation:1];
  [(CKBalloonView *)self setHasTail:1];
  [(CKBalloonView *)self setTextAlignmentInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(CKBalloonView *)self setBalloonCorners:-1];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 balloonCornerRadius];
  [(CKBalloonView *)self setCornerRadius:?];

  v6 = [v4 sendLaterPluginInfo];

  if (v6)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 unfilledBalloonColorForColorType:15];
    [v9 ck_imColorComponents];
    [(CKBalloonView *)self setStrokeColor:?];

    [(CKBalloonView *)self setBalloonStyle:3];
  }
}

- (void)configureForMessagePart:(id)a3
{
  v12 = a3;
  v4 = [v12 transcriptTraitCollection];
  -[CKBalloonView setUserInterfaceStyle:](self, "setUserInterfaceStyle:", [v4 userInterfaceStyle]);
  [(CKBalloonView *)self setUserInterfaceLevel:CKBackgroundLevelForTraitCollection(v4)];
  -[CKBalloonView setOrientation:](self, "setOrientation:", [v12 balloonOrientation]);
  -[CKBalloonView setHasTail:](self, "setHasTail:", [v12 hasTail]);
  [v12 textAlignmentInsets];
  [(CKBalloonView *)self setTextAlignmentInsets:?];
  -[CKBalloonView setBalloonCorners:](self, "setBalloonCorners:", [v12 balloonCorners]);
  [v12 balloonCornerRadius];
  [(CKBalloonView *)self setCornerRadius:?];
  [v12 transcriptBackgroundLuminance];
  [(CKBalloonView *)self setBackgroundLuminance:?];
  -[CKBalloonView setTranscriptBackgroundActive:](self, "setTranscriptBackgroundActive:", [v4 isTranscriptBackgroundActive]);
  -[CKBalloonView setHasVibrantOuterStroke:](self, "setHasVibrantOuterStroke:", [v12 needsVibrantOuterStrokeOverBackground]);
  [v12 dynamicFillColor];
  [(CKBalloonView *)self setDynamicFillColor:?];
  [v12 strokeColor];
  [(CKBalloonView *)self setStrokeColor:?];
  -[CKBalloonView setBalloonStyle:](self, "setBalloonStyle:", [v12 balloonStyle]);
  if (([v12 isCommSafetySensitive] & 1) == 0)
  {
    v5 = [v12 message];
    v6 = [v5 expressiveSendStyleID];
    -[CKBalloonView setInvisibleInkEffectEnabled:](self, "setInvisibleInkEffectEnabled:", [v6 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"]);
  }

  v7 = [v12 suggestedActionsList];
  if ([v7 count])
  {
    v8 = [v12 IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v12 IMChatItem];
      if ([v10 supportsSuggestedActionsMenu])
      {
        v11 = [v12 suggestedActionsList];
        [(CKBalloonView *)self addSuggestedActionsMenuWithSuggestedActionsList:v11];
      }

      else
      {
        [(CKBalloonView *)self removeSuggestedActionsMenu];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  [(CKBalloonView *)self removeSuggestedActionsMenu];
LABEL_11:
}

- (UIView)snapshotCurrentView
{
  v2 = self;
  v3 = CKBalloonView.snapshotCurrentView.getter();

  return v3;
}

@end