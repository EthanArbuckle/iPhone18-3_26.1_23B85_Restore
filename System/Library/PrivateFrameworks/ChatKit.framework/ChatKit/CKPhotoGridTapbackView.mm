@interface CKPhotoGridTapbackView
- (BOOL)invertTail;
- (BOOL)isDisplayedInGridView;
- (BOOL)isFromMe;
- (BOOL)shouldAnimate;
- (CGRect)clippingRect;
- (Class)balloonViewClass;
- (id)_imAggregateAcknowledgmentChatItem;
- (id)asset;
- (id)gradientReferenceView;
- (id)tapbackUserData;
- (void)_setupBalloonView;
- (void)_tearDownBalloonView;
- (void)balloonViewTapped:(id)tapped withModifierFlags:(int64_t)flags selectedText:(id)text;
- (void)layoutSubviews;
- (void)performInsertion:(id)insertion;
- (void)setUserData:(id)data;
@end

@implementation CKPhotoGridTapbackView

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (self->_userData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->_userData, data);
    [(CKPhotoGridTapbackView *)self _tearDownBalloonView];
    [(CKPhotoGridTapbackView *)self _setupBalloonView];
    dataCopy = v6;
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = CKPhotoGridTapbackView;
  [(CKPhotoGridTapbackView *)&v27 layoutSubviews];
  tapbackBalloonView = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  [tapbackBalloonView prepareForDisplayIfNeeded];

  [(CKPhotoGridTapbackView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 aggregateAcknowledgmentTranscriptBalloonSize];
  v10 = v9;
  v12 = v11;

  v13 = v7 - v12;
  if ([(CKPhotoGridTapbackView *)self isDisplayedInGridView])
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 messageAcknowledgmentPhotoGridXOffsetScalar];
    v16 = v15;

    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 messageAcknowledgmentPhotoGridYOffsetScalar];
    v19 = v18;

    v20 = v10 * v16;
    v21 = v13 - v12 * v19;
  }

  else
  {
    v22 = +[CKUIBehavior sharedBehaviors];
    [v22 messageAcknowledgmentPhotoCarouselXOffsetScalar];
    v24 = v23;

    v20 = (v5 - v10) * 0.5 - v10 * v24;
    v21 = v13 * 0.5;
  }

  tapbackBalloonView2 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  [tapbackBalloonView2 setFrame:{v20, v21, v10, v12}];

  if ([(CKPhotoGridTapbackView *)self needsAnimation])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__CKPhotoGridTapbackView_layoutSubviews__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    [(CKPhotoGridTapbackView *)self setNeedsAnimation:0];
  }
}

- (id)tapbackUserData
{
  userData = [(CKPhotoGridTapbackView *)self userData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    userData2 = [(CKPhotoGridTapbackView *)self userData];
  }

  else
  {
    userData2 = 0;
  }

  return userData2;
}

- (void)_setupBalloonView
{
  [(CKPhotoGridTapbackView *)self setNeedsAnimation:[(CKPhotoGridTapbackView *)self shouldAnimate]];
  v6 = CKBalloonViewForClass([(CKPhotoGridTapbackView *)self balloonViewClass]);
  [(CKPhotoGridTapbackView *)self setTapbackBalloonView:v6];
  [(CKPhotoGridTapbackView *)self addSubview:v6];
  asset = [(CKPhotoGridTapbackView *)self asset];
  acknowledgmentChatItem = [asset acknowledgmentChatItem];
  [v6 configureForAggregateAcknowledgmentChatItem:acknowledgmentChatItem];

  gradientReferenceView = [(CKPhotoGridTapbackView *)self gradientReferenceView];
  [v6 setGradientReferenceView:gradientReferenceView];

  [v6 setInvertTailDirection:{-[CKPhotoGridTapbackView invertTail](self, "invertTail")}];
  [v6 setNeedsPrepareForDisplay];
  [v6 setNeedsLayout];
  [v6 setHidesFirstTapbackTail:1];
  [v6 setDelegate:self];
  [(CKPhotoGridTapbackView *)self setNeedsLayout];
}

- (void)_tearDownBalloonView
{
  tapbackBalloonView = [(CKPhotoGridTapbackView *)self tapbackBalloonView];

  if (tapbackBalloonView)
  {
    tapbackBalloonView2 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
    [tapbackBalloonView2 removeFromSuperview];

    tapbackBalloonView3 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
    [tapbackBalloonView3 prepareForReuse];

    tapbackBalloonView4 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
    CKBalloonViewReuse(tapbackBalloonView4);

    [(CKPhotoGridTapbackView *)self setTapbackBalloonView:0];
  }
}

- (id)asset
{
  userData = [(CKPhotoGridTapbackView *)self userData];
  asset = [userData asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(CKPhotoGridTapbackView *)self userData];
  }

  else
  {
    [(CKPhotoGridTapbackView *)self tapbackUserData];
  }
  v6 = ;
  asset2 = [v6 asset];

  return asset2;
}

- (id)gradientReferenceView
{
  tapbackUserData = [(CKPhotoGridTapbackView *)self tapbackUserData];
  v4 = tapbackUserData;
  if (tapbackUserData && ([tapbackUserData isDisplayedInGridView] & 1) == 0)
  {
    selfCopy = [v4 gradientReferenceView];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (BOOL)isDisplayedInGridView
{
  tapbackUserData = [(CKPhotoGridTapbackView *)self tapbackUserData];
  isDisplayedInGridView = [tapbackUserData isDisplayedInGridView];

  return isDisplayedInGridView;
}

- (BOOL)isFromMe
{
  asset = [(CKPhotoGridTapbackView *)self asset];
  acknowledgmentChatItem = [asset acknowledgmentChatItem];
  isFromMe = [acknowledgmentChatItem isFromMe];

  return isFromMe;
}

- (BOOL)shouldAnimate
{
  tapbackUserData = [(CKPhotoGridTapbackView *)self tapbackUserData];
  shouldAnimate = [tapbackUserData shouldAnimate];

  return shouldAnimate;
}

- (BOOL)invertTail
{
  tapbackUserData = [(CKPhotoGridTapbackView *)self tapbackUserData];
  invertTailDirection = [tapbackUserData invertTailDirection];

  return invertTailDirection;
}

- (Class)balloonViewClass
{
  [(CKPhotoGridTapbackView *)self isFromMe];
  v2 = objc_opt_class();

  return v2;
}

- (id)_imAggregateAcknowledgmentChatItem
{
  asset = [(CKPhotoGridTapbackView *)self asset];
  acknowledgmentChatItem = [asset acknowledgmentChatItem];
  iMChatItem = [acknowledgmentChatItem IMChatItem];

  return iMChatItem;
}

- (void)performInsertion:(id)insertion
{
  insertionCopy = insertion;
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  tapbackBalloonView = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  layer = [tapbackBalloonView layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  v8 = v7;

  v9 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v9 setFromValue:&unk_1F04E7A10];
  [v9 setMass:1.0];
  [v9 setStiffness:80.0];
  [v9 setDamping:20.0];
  [v9 setBeginTime:v8];
  LODWORD(v10) = 3.0;
  [v9 setSpeed:v10];
  [v9 setDuration:1.0];
  [v9 setFillMode:*MEMORY[0x1E69797E8]];
  tapbackBalloonView2 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  layer2 = [tapbackBalloonView2 layer];
  [layer2 addAnimation:v9 forKey:@"transform.scale.xy"];

  tapbackBalloonView3 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  glyphView = [tapbackBalloonView3 glyphView];

  [glyphView animationDuration];
  [glyphView animateWithBeginTime:0 completionDelay:v8 completion:v15];
  v16 = MEMORY[0x1E6979518];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__CKPhotoGridTapbackView_performInsertion___block_invoke;
  v18[3] = &unk_1E72EBDB8;
  v19 = insertionCopy;
  v17 = insertionCopy;
  [v16 setCompletionBlock:v18];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
}

uint64_t __43__CKPhotoGridTapbackView_performInsertion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)balloonViewTapped:(id)tapped withModifierFlags:(int64_t)flags selectedText:(id)text
{
  v15 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  textCopy = text;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = tappedCopy;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Detected tap on view: %@", &v13, 0xCu);
    }
  }

  tapbackUserData = [(CKPhotoGridTapbackView *)self tapbackUserData];
  photoGridTapbackPileDelegate = [tapbackUserData photoGridTapbackPileDelegate];
  asset = [(CKPhotoGridTapbackView *)self asset];
  [photoGridTapbackPileDelegate tapbackPileViewTapped:tappedCopy asset:asset];
}

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end