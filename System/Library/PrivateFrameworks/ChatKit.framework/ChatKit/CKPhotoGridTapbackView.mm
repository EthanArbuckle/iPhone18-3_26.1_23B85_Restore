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
- (void)balloonViewTapped:(id)a3 withModifierFlags:(int64_t)a4 selectedText:(id)a5;
- (void)layoutSubviews;
- (void)performInsertion:(id)a3;
- (void)setUserData:(id)a3;
@end

@implementation CKPhotoGridTapbackView

- (void)setUserData:(id)a3
{
  v5 = a3;
  if (self->_userData != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userData, a3);
    [(CKPhotoGridTapbackView *)self _tearDownBalloonView];
    [(CKPhotoGridTapbackView *)self _setupBalloonView];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = CKPhotoGridTapbackView;
  [(CKPhotoGridTapbackView *)&v27 layoutSubviews];
  v3 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  [v3 prepareForDisplayIfNeeded];

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

  v25 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  [v25 setFrame:{v20, v21, v10, v12}];

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
  v3 = [(CKPhotoGridTapbackView *)self userData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKPhotoGridTapbackView *)self userData];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setupBalloonView
{
  [(CKPhotoGridTapbackView *)self setNeedsAnimation:[(CKPhotoGridTapbackView *)self shouldAnimate]];
  v6 = CKBalloonViewForClass([(CKPhotoGridTapbackView *)self balloonViewClass]);
  [(CKPhotoGridTapbackView *)self setTapbackBalloonView:v6];
  [(CKPhotoGridTapbackView *)self addSubview:v6];
  v3 = [(CKPhotoGridTapbackView *)self asset];
  v4 = [v3 acknowledgmentChatItem];
  [v6 configureForAggregateAcknowledgmentChatItem:v4];

  v5 = [(CKPhotoGridTapbackView *)self gradientReferenceView];
  [v6 setGradientReferenceView:v5];

  [v6 setInvertTailDirection:{-[CKPhotoGridTapbackView invertTail](self, "invertTail")}];
  [v6 setNeedsPrepareForDisplay];
  [v6 setNeedsLayout];
  [v6 setHidesFirstTapbackTail:1];
  [v6 setDelegate:self];
  [(CKPhotoGridTapbackView *)self setNeedsLayout];
}

- (void)_tearDownBalloonView
{
  v3 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];

  if (v3)
  {
    v4 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
    [v4 removeFromSuperview];

    v5 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
    [v5 prepareForReuse];

    v6 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
    CKBalloonViewReuse(v6);

    [(CKPhotoGridTapbackView *)self setTapbackBalloonView:0];
  }
}

- (id)asset
{
  v3 = [(CKPhotoGridTapbackView *)self userData];
  v4 = [v3 asset];
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
  v7 = [v6 asset];

  return v7;
}

- (id)gradientReferenceView
{
  v3 = [(CKPhotoGridTapbackView *)self tapbackUserData];
  v4 = v3;
  if (v3 && ([v3 isDisplayedInGridView] & 1) == 0)
  {
    v5 = [v4 gradientReferenceView];
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  return v6;
}

- (BOOL)isDisplayedInGridView
{
  v2 = [(CKPhotoGridTapbackView *)self tapbackUserData];
  v3 = [v2 isDisplayedInGridView];

  return v3;
}

- (BOOL)isFromMe
{
  v2 = [(CKPhotoGridTapbackView *)self asset];
  v3 = [v2 acknowledgmentChatItem];
  v4 = [v3 isFromMe];

  return v4;
}

- (BOOL)shouldAnimate
{
  v2 = [(CKPhotoGridTapbackView *)self tapbackUserData];
  v3 = [v2 shouldAnimate];

  return v3;
}

- (BOOL)invertTail
{
  v2 = [(CKPhotoGridTapbackView *)self tapbackUserData];
  v3 = [v2 invertTailDirection];

  return v3;
}

- (Class)balloonViewClass
{
  [(CKPhotoGridTapbackView *)self isFromMe];
  v2 = objc_opt_class();

  return v2;
}

- (id)_imAggregateAcknowledgmentChatItem
{
  v2 = [(CKPhotoGridTapbackView *)self asset];
  v3 = [v2 acknowledgmentChatItem];
  v4 = [v3 IMChatItem];

  return v4;
}

- (void)performInsertion:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:2.0];
  v5 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  v6 = [v5 layer];
  [v6 convertTime:0 fromLayer:CACurrentMediaTime()];
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
  v11 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  v12 = [v11 layer];
  [v12 addAnimation:v9 forKey:@"transform.scale.xy"];

  v13 = [(CKPhotoGridTapbackView *)self tapbackBalloonView];
  v14 = [v13 glyphView];

  [v14 animationDuration];
  [v14 animateWithBeginTime:0 completionDelay:v8 completion:v15];
  v16 = MEMORY[0x1E6979518];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__CKPhotoGridTapbackView_performInsertion___block_invoke;
  v18[3] = &unk_1E72EBDB8;
  v19 = v4;
  v17 = v4;
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

- (void)balloonViewTapped:(id)a3 withModifierFlags:(int64_t)a4 selectedText:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Detected tap on view: %@", &v13, 0xCu);
    }
  }

  v10 = [(CKPhotoGridTapbackView *)self tapbackUserData];
  v11 = [v10 photoGridTapbackPileDelegate];
  v12 = [(CKPhotoGridTapbackView *)self asset];
  [v11 tapbackPileViewTapped:v7 asset:v12];
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