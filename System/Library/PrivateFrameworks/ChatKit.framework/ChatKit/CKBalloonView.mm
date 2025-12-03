@interface CKBalloonView
- (BOOL)hasSuggestedActionsMenu;
- (BOOL)invisibleInkEffectEnabled;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (CKBalloonDescriptor_t)highlightOverlayBalloonDescriptor;
- (CKBalloonView)initWithFrame:(CGRect)frame;
- (CKBalloonViewAnimationDelegate)animationDelegate;
- (CKBalloonViewDelegate)delegate;
- (CKTextBalloonView)asTextBalloonView;
- (IMColorComponents)dynamicFillColor;
- (IMColorComponents)strokeColor;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size;
- (UIEdgeInsets)tailInsets;
- (UIEdgeInsets)tailInsetsForPillSize:(CGSize)size;
- (UIEdgeInsets)tailInsetsForViewSize:(CGSize)size;
- (UIEdgeInsets)textAlignmentInsets;
- (UIView)snapshotCurrentView;
- (_TtC7ChatKit12CKBubblePath)bubblePath;
- (char)balloonShape;
- (double)suggestedActionsMenuAdditionalHeight;
- (double)suggestedActionsMenuAdditionalHeightForBalloonSize:(CGSize)size;
- (double)suggestedActionsMenuHeight;
- (double)suggestedActionsMenuHeightForSize:(CGSize)size;
- (id)bezierPathForDragPreview;
- (id)createHighlightOverlayLayer;
- (id)highlightOverlayBalloonTraitCollection;
- (void)_performHighlightOverlayLayerAppearanceAnimation;
- (void)_performHighlightOverlayLayerDisappearanceAnimation;
- (void)addFilter:(id)filter;
- (void)addSuggestedActionsMenuWithSuggestedActionsList:(id)list backgroundStyle:(int64_t)style;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)chatBotActionButton:(id)button didSelectChipAction:(id)action;
- (void)clearFilters;
- (void)configureForComposition:(id)composition;
- (void)configureForEffectViewWithMediaObject:(id)object;
- (void)configureForMessagePart:(id)part;
- (void)configureGestureRecognizers;
- (void)dealloc;
- (void)didTapTruncatedCaptionForRichCard:(id)card;
- (void)doubleTapGestureRecognized:(id)recognized;
- (void)insertHighlightOverlayLayer:(id)layer;
- (void)layoutDropDownMenuIfNeeded;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)longPressGestureRecognized:(id)recognized;
- (void)openAppFromNotificationExtensionWith:(id)with;
- (void)performTranscriptHideAnimation:(id)animation;
- (void)performTranscriptInsertionAnimation:(id)animation;
- (void)performTranscriptReloadAnimation:(id)animation;
- (void)performTranscriptRemovalAnimation:(id)animation;
- (void)performTranscriptRevealAnimation:(id)animation;
- (void)prepareForDisplay;
- (void)prepareForDisplayIfNeeded;
- (void)prepareForReuse;
- (void)registerForBalloonViewTraitCollectionUpdates;
- (void)removeSuggestedActionsMenu;
- (void)setBackdropFilterLayer:(id)layer;
- (void)setBackgroundLuminance:(double)luminance;
- (void)setBalloonCorners:(unint64_t)corners;
- (void)setBalloonDescriptor:(CKBalloonDescriptor_t *)descriptor;
- (void)setBalloonStyle:(char)style;
- (void)setCornerRadius:(double)radius;
- (void)setDragInteraction:(id)interaction;
- (void)setDynamicFillColor:(IMColorComponents)color;
- (void)setEffectView:(id)view;
- (void)setHasHighlightOverlay:(BOOL)overlay animated:(BOOL)animated autoDismiss:(BOOL)dismiss;
- (void)setHasVibrantOuterStroke:(BOOL)stroke;
- (void)setInvisibleInkEffectEnabled:(BOOL)enabled;
- (void)setInvisibleInkEffectPaused:(BOOL)paused;
- (void)setNeedsPrepareForDisplay;
- (void)setOrientation:(char)orientation;
- (void)setStrokeColor:(IMColorComponents)color;
- (void)setTextAlignmentInsets:(UIEdgeInsets)insets;
- (void)setTranscriptBackgroundActive:(BOOL)active;
- (void)setUserInterfaceLevel:(int64_t)level;
- (void)setUserInterfaceStyle:(int64_t)style;
- (void)tapGestureRecognized:(id)recognized;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBalloonForTraitCollection:(id)collection;
- (void)updateGestureEnablement;
- (void)updateRasterizationForInvisibleInkEffect;
@end

@implementation CKBalloonView

- (void)configureGestureRecognizers
{
  v3 = +[CKUIBehavior sharedBehaviors];
  disableTranscriptInteractions = [v3 disableTranscriptInteractions];

  if ((disableTranscriptInteractions & 1) == 0)
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
    isPrinting = [v7 isPrinting];

    if ((isPrinting & 1) == 0)
    {
      [(CKBalloonView *)self addGestureRecognizer:v6];
      [(CKBalloonView *)self addGestureRecognizer:v9];
      [(CKBalloonView *)self addGestureRecognizer:v5];
    }
  }
}

- (void)setNeedsPrepareForDisplay
{
  displayUpdater = [(CKBalloonView *)self displayUpdater];
  [displayUpdater setNeedsUpdate];
}

- (void)prepareForDisplayIfNeeded
{
  displayUpdater = [(CKBalloonView *)self displayUpdater];
  [displayUpdater updateIfNeeded];
}

- (void)prepareForDisplay
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController prepareForDisplay];
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
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  isEnabled = [invisibleInkEffectController isEnabled];

  return isEnabled;
}

- (BOOL)hasSuggestedActionsMenu
{
  dropDownMenuButton = [(CKBalloonView *)self dropDownMenuButton];
  v3 = dropDownMenuButton != 0;

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
  delegate = [(CKBalloonView *)self delegate];
  image = [(CKBalloonImageView *)self image];
  v10.receiver = self;
  v10.super_class = CKBalloonView;
  v7 = [(CKBalloonView *)&v10 description];
  v8 = [v3 stringWithFormat:@"[CKBalloonView balloon:%@ delegate:%@ [UIImageView image:%@ [%@]]]", v4, delegate, image, v7];

  return v8;
}

- (CKBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKBalloonView;
  v3 = [(CKBalloonImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v6 = [systemTraitsAffectingColorAppearance mutableCopy];

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
  disableTranscriptInteractions = [v3 disableTranscriptInteractions];
  longPressGestureRecognizer = [(CKBalloonView *)self longPressGestureRecognizer];
  [longPressGestureRecognizer setEnabled:disableTranscriptInteractions ^ 1u];

  v6 = +[CKUIBehavior sharedBehaviors];
  disableTranscriptInteractions2 = [v6 disableTranscriptInteractions];
  doubleTapGestureRecognizer = [(CKBalloonView *)self doubleTapGestureRecognizer];
  [doubleTapGestureRecognizer setEnabled:disableTranscriptInteractions2 ^ 1u];

  v10 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v6) = [v10 disableTranscriptInteractions];
  tapGestureRecognizer = [(CKBalloonView *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:v6 ^ 1];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v12 = *MEMORY[0x1E69DDCE0];
  v13 = v4;
  v11[0] = v12;
  v11[1] = v4;
  [(CKBalloonView *)self sizeThatFits:&v12 textAlignmentInsets:v11 tailInsets:fits.width, fits.height];
  v6 = v5;
  v8 = v7;
  [(CKBalloonView *)self setTextAlignmentInsets:v12, v13];
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)addSuggestedActionsMenuWithSuggestedActionsList:(id)list backgroundStyle:(int64_t)style
{
  listCopy = list;
  if (![(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    dropDownMenuButton = [(CKBalloonView *)self dropDownMenuButton];
    [dropDownMenuButton removeFromSuperview];

    v7 = [[CKChatBotActionButton alloc] initWithActions:listCopy delegate:self backgroundStyle:style showTitle:1];
    [(CKBalloonView *)self setDropDownMenuButton:v7];

    dropDownMenuButton2 = [(CKBalloonView *)self dropDownMenuButton];
    [(CKBalloonView *)self addSubview:dropDownMenuButton2];
  }
}

- (void)removeSuggestedActionsMenu
{
  dropDownMenuButton = [(CKBalloonView *)self dropDownMenuButton];
  [dropDownMenuButton removeFromSuperview];

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

- (void)layoutSublayersOfLayer:(id)layer
{
  v5.receiver = self;
  v5.super_class = CKBalloonView;
  [(CKBalloonView *)&v5 layoutSublayersOfLayer:layer];
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController hostViewDidLayoutSubviews];
}

- (double)suggestedActionsMenuAdditionalHeightForBalloonSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  hasSuggestedActionsMenu = [(CKBalloonView *)self hasSuggestedActionsMenu];
  result = 0.0;
  if (hasSuggestedActionsMenu)
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

- (double)suggestedActionsMenuHeightForSize:(CGSize)size
{
  v4 = size.width + -32.0;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 suggestedActionButtonMinHeight];
  v7 = v6;

  dropDownMenuButton = [(CKBalloonView *)self dropDownMenuButton];
  [dropDownMenuButton sizeThatFits:{v4, 1.79769313e308}];
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
    dropDownMenuButton = [(CKBalloonView *)self dropDownMenuButton];
    [dropDownMenuButton setFrame:{v18, v22, v6 - (v16 + v15), v24}];

    dropDownMenuButton2 = [(CKBalloonView *)self dropDownMenuButton];
    [(CKBalloonView *)self bringSubviewToFront:dropDownMenuButton2];
  }
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size
{
  v7.receiver = self;
  v7.super_class = CKBalloonView;
  [(CKBalloonImageView *)&v7 alignmentRectInsets:size.width];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setEffectView:(id)view
{
  viewCopy = view;
  stickerEffectView = [(CKBalloonView *)self stickerEffectView];

  v5 = viewCopy;
  if (stickerEffectView != viewCopy)
  {
    stickerEffectView2 = [(CKBalloonView *)self stickerEffectView];
    [stickerEffectView2 removeFromSuperview];

    [(CKBalloonView *)self setStickerEffectView:viewCopy];
    stickerEffectView3 = [(CKBalloonView *)self stickerEffectView];

    if (stickerEffectView3)
    {
      invisibleInkEffectImage = [(CKBalloonImageView *)self invisibleInkEffectImage];

      stickerEffectView4 = [(CKBalloonView *)self stickerEffectView];
      if (invisibleInkEffectImage)
      {
        [(CKBalloonView *)self insertSubview:stickerEffectView4 atIndex:0];
      }

      else
      {
        [(CKBalloonView *)self addSubview:stickerEffectView4];
      }
    }

    [(CKBalloonImageView *)self setImageHidden:stickerEffectView3 != 0];
    [(CKBalloonView *)self setNeedsLayout];
    v5 = viewCopy;
  }
}

- (void)configureForEffectViewWithMediaObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = objectCopy;
  if (isKindOfClass)
  {
    v6 = objectCopy;
    if (([v6 needsAnimation] & 1) == 0)
    {
      [v6 stickerEffectType];
      if (([v6 needsAnimation] & 1) == 0 && (IMStickerEffectTypeShouldAvoidEffectView() & 1) == 0)
      {
        stickerEffectView = [(CKBalloonView *)self stickerEffectView];
        if (!stickerEffectView)
        {
          v8 = MTLCreateSystemDefaultDevice();
          stickerEffectView = [objc_alloc(MEMORY[0x1E69DFA08]) initWithDevice:v8];
          [stickerEffectView setContentMode:1];
          [(CKBalloonView *)self frame];
          [stickerEffectView setFrame:?];
          imageData = [v6 imageData];
          uTIType = [imageData UTIType];
          v11 = [uTIType hasSuffix:@"heics"];

          if (v11)
          {
            imageData2 = [v6 imageData];
            data = [imageData2 data];
            [stickerEffectView setVideoData:data];
          }

          else
          {
            imageData2 = [(CKBalloonImageView *)self image];
            [stickerEffectView setImage:imageData2];
          }

          v14 = [MEMORY[0x1E69DFA00] effectWithType:{objc_msgSend(v6, "stickerEffectType")}];
          [stickerEffectView setEffect:v14];

          [(CKBalloonView *)self setEffectView:stickerEffectView];
        }
      }
    }

    v5 = objectCopy;
  }
}

- (void)setOrientation:(char)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setTextAlignmentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textAlignmentInsets.top, v3), vceqq_f64(*&self->_textAlignmentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_textAlignmentInsets = insets;
    [(CKBalloonView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  v7.receiver = self;
  v7.super_class = CKBalloonView;
  [(CKBalloonImageView *)&v7 sizeThatFits:insets, tailInsets, fits.width, fits.height];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = CKBalloonView;
  changeCopy = change;
  [(CKBalloonView *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(CKBalloonView *)self traitCollection:v11.receiver];
  -[CKBalloonView setUserInterfaceStyle:](self, "setUserInterfaceStyle:", [v5 userInterfaceStyle]);

  traitCollection = [(CKBalloonView *)self traitCollection];
  [traitCollection displayScale];
  v8 = v7;
  [changeCopy displayScale];
  v10 = v9;

  if (v8 != v10)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (void)updateBalloonForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = CKBackgroundLevelForTraitCollection();
  -[CKBalloonView setUserInterfaceStyle:](self, "setUserInterfaceStyle:", [collectionCopy userInterfaceStyle]);
  [(CKBalloonView *)self setUserInterfaceLevel:v5];
  isTranscriptBackgroundActive = [collectionCopy isTranscriptBackgroundActive];

  [(CKBalloonView *)self setTranscriptBackgroundActive:isTranscriptBackgroundActive];
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
  layer = [(CKBalloonView *)self layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  filters = [(CKBalloonView *)self filters];
  v5 = [filters count];

  if (v5)
  {
    [(CKBalloonView *)self clearFilters];
  }

  [(CKBalloonView *)self setInteractions:MEMORY[0x1E695E0F0]];
  [(CKBalloonView *)self setDragInteraction:0];
  stickerEffectView = [(CKBalloonView *)self stickerEffectView];
  [stickerEffectView removeFromSuperview];

  [(CKBalloonView *)self setEffectView:0];
  dropDownMenuButton = [(CKBalloonView *)self dropDownMenuButton];
  [dropDownMenuButton removeFromSuperview];

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
  highlightOverlayColor = [(CKBalloonView *)self highlightOverlayColor];
  [highlightOverlayColor ck_imColorComponents];
  retstr->var7.red = v5;
  retstr->var7.green = v6;
  retstr->var7.blue = v7;
  retstr->var7.alpha = v8;

  return result;
}

- (id)highlightOverlayBalloonTraitCollection
{
  traitCollection = [(CKBalloonView *)self traitCollection];
  v3 = [traitCollection traitCollectionByModifyingTraits:&__block_literal_global_248];

  return v3;
}

void __55__CKBalloonView_highlightOverlayBalloonTraitCollection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E110] forTrait:{"integerValue"), objc_opt_class()}];
}

- (void)insertHighlightOverlayLayer:(id)layer
{
  layerCopy = layer;
  layer = [(CKBalloonView *)self layer];
  [layer addSublayer:layerCopy];
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
  highlightOverlayBalloonTraitCollection = [(CKBalloonView *)self highlightOverlayBalloonTraitCollection];
  v4 = [_TtC7ChatKit14CKBalloonLayer alloc];
  v7[4] = v12;
  v7[5] = v13;
  v7[6] = v14;
  v7[7] = v15;
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  v5 = [(CKBalloonLayer *)v4 initWithDescriptor:v7 traitCollection:highlightOverlayBalloonTraitCollection];
  [(CKBalloonLayer *)v5 setAllowsHitTesting:0];

  return v5;
}

- (void)setHasHighlightOverlay:(BOOL)overlay animated:(BOOL)animated autoDismiss:(BOOL)dismiss
{
  if (self->_hasHighlightOverlay != overlay)
  {
    animatedCopy = animated;
    self->_hasHighlightOverlay = overlay;
    if (overlay)
    {
      dismissCopy = dismiss;
      createHighlightOverlayLayer = [(CKBalloonView *)self createHighlightOverlayLayer];
      highlightOverlayLayer = self->_highlightOverlayLayer;
      self->_highlightOverlayLayer = createHighlightOverlayLayer;

      if (self->_highlightOverlayLayer)
      {
        [(CKBalloonView *)self insertHighlightOverlayLayer:?];
        if (animatedCopy)
        {
          [(CKBalloonView *)self _performHighlightOverlayLayerAppearanceAnimation];
        }
      }

      if (dismissCopy)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__highlightOverlayAutoDismissTimerFired object:0];
        [(CKBalloonView *)self performSelector:sel__highlightOverlayAutoDismissTimerFired withObject:0 afterDelay:2.0];
      }
    }

    else if (animated)
    {
      [(CKBalloonView *)self _performHighlightOverlayLayerDisappearanceAnimation];
    }

    else
    {
      highlightOverlayLayer = [(CKBalloonView *)self highlightOverlayLayer];
      [highlightOverlayLayer removeFromSuperlayer];

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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (self->_activeHighlightOverlayLayerDisappearanceAnimation == stop)
  {
    highlightOverlayLayer = [(CKBalloonView *)self highlightOverlayLayer];
    [highlightOverlayLayer removeFromSuperlayer];

    [(CKBalloonView *)self setHighlightOverlayLayer:0];
    activeHighlightOverlayLayerDisappearanceAnimation = self->_activeHighlightOverlayLayerDisappearanceAnimation;
    self->_activeHighlightOverlayLayerDisappearanceAnimation = 0;
  }
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  [filterCopy balloonAlpha];
  [(CKBalloonView *)self setAlpha:?];
  filters = [(CKBalloonView *)self filters];

  if (!filters)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(CKBalloonView *)self setFilters:array];
  }

  filters2 = [(CKBalloonView *)self filters];
  [filters2 addObject:filterCopy];
}

- (void)clearFilters
{
  [(CKBalloonView *)self setAlpha:1.0];
  filters = [(CKBalloonView *)self filters];
  [filters removeAllObjects];

  [(CKBalloonView *)self setFilters:0];

  [(CKBalloonView *)self setNeedsPrepareForDisplay];
}

- (void)setDragInteraction:(id)interaction
{
  interactionCopy = interaction;
  dragInteraction = self->_dragInteraction;
  if (dragInteraction != interactionCopy)
  {
    v7 = interactionCopy;
    if (dragInteraction)
    {
      [(CKBalloonView *)self removeInteraction:?];
      interactionCopy = v7;
    }

    if (interactionCopy)
    {
      [(CKBalloonView *)self addInteraction:v7];
    }

    objc_storeStrong(&self->_dragInteraction, interaction);
    interactionCopy = v7;
  }
}

- (void)setBalloonStyle:(char)style
{
  if (self->_balloonStyle != style)
  {
    self->_balloonStyle = style;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  if (self->_userInterfaceStyle != style)
  {
    self->_userInterfaceStyle = style;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setBackgroundLuminance:(double)luminance
{
  v3 = vabdd_f64(luminance, self->_backgroundLuminance);
  self->_backgroundLuminance = luminance;
  if (v3 > 0.01)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setUserInterfaceLevel:(int64_t)level
{
  if (self->_userInterfaceLevel != level)
  {
    self->_userInterfaceLevel = level;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setHasVibrantOuterStroke:(BOOL)stroke
{
  if (self->_hasVibrantOuterStroke != stroke)
  {
    self->_hasVibrantOuterStroke = stroke;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setCornerRadius:(double)radius
{
  v3 = vabdd_f64(radius, self->_cornerRadius);
  self->_cornerRadius = radius;
  if (v3 > 0.01)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setDynamicFillColor:(IMColorComponents)color
{
  alpha = color.alpha;
  blue = color.blue;
  green = color.green;
  red = color.red;
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

- (void)setStrokeColor:(IMColorComponents)color
{
  alpha = color.alpha;
  blue = color.blue;
  green = color.green;
  red = color.red;
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

- (void)setTranscriptBackgroundActive:(BOOL)active
{
  if (self->_transcriptBackgroundActive != active)
  {
    self->_transcriptBackgroundActive = active;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setBalloonCorners:(unint64_t)corners
{
  if (self->_balloonCorners != corners)
  {
    self->_balloonCorners = corners;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ([recognizedCopy modifierFlags] == 0x80000)
  {
    delegate = [(CKBalloonView *)self delegate];
    [delegate balloonViewLongTouched:self];
  }

  else
  {
    modifierFlags = [recognizedCopy modifierFlags];
    delegate2 = [(CKBalloonView *)self delegate];
    delegate = delegate2;
    if (modifierFlags == 655360)
    {
      [delegate2 balloonViewShowInlineReply:self];
    }

    else
    {
      [delegate2 balloonViewTapped:self withModifierFlags:objc_msgSend(recognizedCopy selectedText:{"modifierFlags"), 0}];
    }
  }
}

- (void)setInvisibleInkEffectEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  if (enabledCopy && !invisibleInkEffectController)
  {
    v6 = [[CKInvisibleInkEffectController alloc] initWithHostView:self];
    [(CKInvisibleInkEffectController *)v6 setPaused:[(CKBalloonView *)self invisibleInkEffectPaused]];
    [(CKBalloonView *)self setInvisibleInkEffectController:v6];
    invisibleInkEffectController = v6;
  }

  v7 = invisibleInkEffectController;
  if ([invisibleInkEffectController isEnabled] != enabledCopy)
  {
    [v7 setEnabled:enabledCopy];
    [(CKBalloonView *)self updateRasterizationForInvisibleInkEffect];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (void)setInvisibleInkEffectPaused:(BOOL)paused
{
  if (self->_invisibleInkEffectPaused != paused)
  {
    pausedCopy = paused;
    self->_invisibleInkEffectPaused = paused;
    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    [invisibleInkEffectController setPaused:pausedCopy];

    [(CKBalloonView *)self updateRasterizationForInvisibleInkEffect];
  }
}

- (void)setBackdropFilterLayer:(id)layer
{
  layerCopy = layer;
  if (self->_backdropFilterLayer != layerCopy)
  {
    v6 = layerCopy;
    objc_storeStrong(&self->_backdropFilterLayer, layer);
    [(CKBalloonView *)self setNeedsLayout];
    layerCopy = v6;
  }
}

- (void)doubleTapGestureRecognized:(id)recognized
{
  v17 = *MEMORY[0x1E69E9840];
  recognizedCopy = recognized;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      delegate = [(CKBalloonView *)self delegate];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      delegate2 = [(CKBalloonView *)self delegate];
      v11 = 134218498;
      selfCopy = self;
      v13 = 2112;
      v14 = v8;
      v15 = 2048;
      v16 = delegate2;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Balloon view %p was double tapped delegate=<%@:%p>", &v11, 0x20u);
    }
  }

  delegate3 = [(CKBalloonView *)self delegate];
  [delegate3 balloonViewDoubleTapped:self];
}

- (void)longPressGestureRecognized:(id)recognized
{
  if ([recognized state] == 1)
  {
    delegate = [(CKBalloonView *)self delegate];
    [delegate balloonViewLongTouched:self];
  }
}

- (void)setBalloonDescriptor:(CKBalloonDescriptor_t *)descriptor
{
  [(CKBalloonView *)self setBalloonShape:descriptor->var0];
  [(CKBalloonView *)self setBalloonTailShape:descriptor->var1];
  [(CKBalloonView *)self setBalloonStyle:descriptor->var2];
  [(CKBalloonView *)self setDynamicFillColor:descriptor->var7.red, descriptor->var7.green, descriptor->var7.blue, descriptor->var7.alpha];
  [(CKBalloonView *)self setStrokeColor:descriptor->var8.red, descriptor->var8.green, descriptor->var8.blue, descriptor->var8.alpha];
  [(CKBalloonView *)self setOrientation:descriptor->var3];
  [(CKBalloonView *)self setBalloonCorners:descriptor->var4];
  [(CKBalloonView *)self setCornerRadius:descriptor->var5];
  [(CKBalloonView *)self setCanUseOpaqueMask:descriptor->var12];
  [(CKBalloonView *)self setHasTail:descriptor->var13];
  [(CKBalloonView *)self setUseLargeAsset:descriptor->var15];
  [(CKBalloonView *)self setUserInterfaceStyle:descriptor->var10];
  [(CKBalloonView *)self setHasVibrantOuterStroke:descriptor->var9];
  [(CKBalloonView *)self setUserInterfaceLevel:descriptor->var11];
  [(CKBalloonView *)self setNeedsPrepareForDisplay];

  [(CKBalloonView *)self setNeedsLayout];
}

- (id)bezierPathForDragPreview
{
  bubblePath = [(CKBalloonView *)self bubblePath];
  bezierPath = [bubblePath bezierPath];

  return bezierPath;
}

- (UIEdgeInsets)tailInsetsForPillSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

  if ((isCAShapeLayerBalloonsEnabled & 1) != 0 && [(CKBalloonView *)self hasBalloonShape])
  {
    bubblePath = [(CKBalloonView *)self bubblePath];
    [bubblePath cornerRadius];
    if (fabs(v9) >= 0.01)
    {
      [bubblePath tailInsetsForPillSize:{width, height}];
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

- (UIEdgeInsets)tailInsetsForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

  if ((isCAShapeLayerBalloonsEnabled & 1) != 0 && [(CKBalloonView *)self hasBalloonShape])
  {
    bubblePath = [(CKBalloonView *)self bubblePath];
    [bubblePath cornerRadius];
    if (fabs(v9) >= 0.01)
    {
      [bubblePath tailInsetsForBubbleSize:{width, height}];
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
    invisibleInkEffectPaused = [(CKBalloonView *)self invisibleInkEffectPaused];
  }

  else
  {
    invisibleInkEffectPaused = 0;
  }

  [(CKBalloonView *)self _setShouldRasterize:invisibleInkEffectPaused];
}

- (void)performTranscriptInsertionAnimation:(id)animation
{
  if (animation)
  {
    (*(animation + 2))(animation, 1);
  }
}

- (void)performTranscriptReloadAnimation:(id)animation
{
  if (animation)
  {
    (*(animation + 2))(animation, 1);
  }
}

- (void)performTranscriptRemovalAnimation:(id)animation
{
  if (animation)
  {
    (*(animation + 2))(animation, 1);
  }
}

- (void)performTranscriptHideAnimation:(id)animation
{
  if (animation)
  {
    (*(animation + 2))(animation, 1);
  }
}

- (void)performTranscriptRevealAnimation:(id)animation
{
  if (animation)
  {
    (*(animation + 2))(animation, 1);
  }
}

- (void)chatBotActionButton:(id)button didSelectChipAction:(id)action
{
  actionCopy = action;
  delegate = [(CKBalloonView *)self delegate];
  [delegate balloonView:self selectedChipAction:actionCopy];
}

- (void)openAppFromNotificationExtensionWith:(id)with
{
  delegate = [(CKBalloonView *)self delegate];
  [delegate didTapChipListFromNotificationExtensionWithBalloonView:self];
}

- (void)didTapTruncatedCaptionForRichCard:(id)card
{
  cardCopy = card;
  delegate = [(CKBalloonView *)self delegate];
  [delegate didTapTruncatedCaptionForRichCard:cardCopy onBalloonView:self];
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

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  [(CKBalloonView *)self sizeThatFits:insets textAlignmentInsets:0 tailInsets:fits.width, fits.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CKTextBalloonView)asTextBalloonView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)configureForComposition:(id)composition
{
  compositionCopy = composition;
  [(CKBalloonView *)self setOrientation:1];
  [(CKBalloonView *)self setHasTail:1];
  [(CKBalloonView *)self setTextAlignmentInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(CKBalloonView *)self setBalloonCorners:-1];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 balloonCornerRadius];
  [(CKBalloonView *)self setCornerRadius:?];

  sendLaterPluginInfo = [compositionCopy sendLaterPluginInfo];

  if (sendLaterPluginInfo)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    theme = [v7 theme];
    v9 = [theme unfilledBalloonColorForColorType:15];
    [v9 ck_imColorComponents];
    [(CKBalloonView *)self setStrokeColor:?];

    [(CKBalloonView *)self setBalloonStyle:3];
  }
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  transcriptTraitCollection = [partCopy transcriptTraitCollection];
  -[CKBalloonView setUserInterfaceStyle:](self, "setUserInterfaceStyle:", [transcriptTraitCollection userInterfaceStyle]);
  [(CKBalloonView *)self setUserInterfaceLevel:CKBackgroundLevelForTraitCollection(transcriptTraitCollection)];
  -[CKBalloonView setOrientation:](self, "setOrientation:", [partCopy balloonOrientation]);
  -[CKBalloonView setHasTail:](self, "setHasTail:", [partCopy hasTail]);
  [partCopy textAlignmentInsets];
  [(CKBalloonView *)self setTextAlignmentInsets:?];
  -[CKBalloonView setBalloonCorners:](self, "setBalloonCorners:", [partCopy balloonCorners]);
  [partCopy balloonCornerRadius];
  [(CKBalloonView *)self setCornerRadius:?];
  [partCopy transcriptBackgroundLuminance];
  [(CKBalloonView *)self setBackgroundLuminance:?];
  -[CKBalloonView setTranscriptBackgroundActive:](self, "setTranscriptBackgroundActive:", [transcriptTraitCollection isTranscriptBackgroundActive]);
  -[CKBalloonView setHasVibrantOuterStroke:](self, "setHasVibrantOuterStroke:", [partCopy needsVibrantOuterStrokeOverBackground]);
  [partCopy dynamicFillColor];
  [(CKBalloonView *)self setDynamicFillColor:?];
  [partCopy strokeColor];
  [(CKBalloonView *)self setStrokeColor:?];
  -[CKBalloonView setBalloonStyle:](self, "setBalloonStyle:", [partCopy balloonStyle]);
  if (([partCopy isCommSafetySensitive] & 1) == 0)
  {
    message = [partCopy message];
    expressiveSendStyleID = [message expressiveSendStyleID];
    -[CKBalloonView setInvisibleInkEffectEnabled:](self, "setInvisibleInkEffectEnabled:", [expressiveSendStyleID isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"]);
  }

  suggestedActionsList = [partCopy suggestedActionsList];
  if ([suggestedActionsList count])
  {
    iMChatItem = [partCopy IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      iMChatItem2 = [partCopy IMChatItem];
      if ([iMChatItem2 supportsSuggestedActionsMenu])
      {
        suggestedActionsList2 = [partCopy suggestedActionsList];
        [(CKBalloonView *)self addSuggestedActionsMenuWithSuggestedActionsList:suggestedActionsList2];
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
  selfCopy = self;
  v3 = CKBalloonView.snapshotCurrentView.getter();

  return v3;
}

@end