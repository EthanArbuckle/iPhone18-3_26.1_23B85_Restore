@interface CKTranscriptStampCell
+ (id)createStampTextView;
- (CGRect)contentAlignmentRect;
- (CKTranscriptStampCell)initWithFrame:(CGRect)a3;
- (NSAttributedString)attributedText;
- (id)animationWithKeyPath:(id)a3 beginTime:(double)a4 duration:(double)a5 fromValue:(id)a6 toValue:(id)a7;
- (void)_fadeInLabelAtStartTime:(double)a3 completion:(id)a4;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)layoutSubviewsForContents;
- (void)performInsertion:(id)a3;
- (void)prepareForReuse;
- (void)setAttributedText:(id)a3;
- (void)setOrientation:(char)a3;
- (void)setWantsContactImageLayout:(BOOL)a3;
- (void)setWantsOffsetForReplyLine:(BOOL)a3;
@end

@implementation CKTranscriptStampCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CKTranscriptStampCell;
  v12 = a3;
  [(CKTranscriptCell *)&v14 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 transcriptText];

  [(CKTranscriptStampCell *)self setAttributedText:v13];
}

+ (id)createStampTextView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CKTranscriptStampCell.m" lineNumber:23 description:@"Subclasses must implement createStampTextView"];

  return 0;
}

- (void)setAttributedText:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CKTranscriptStampCell.m" lineNumber:28 description:@"Subclasses must implement setAttributedText:"];
}

- (NSAttributedString)attributedText
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CKTranscriptStampCell.m" lineNumber:32 description:@"Subclasses must implement attributedText"];

  return 0;
}

- (CKTranscriptStampCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKTranscriptStampCell;
  v3 = [(CKTranscriptCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() createStampTextView];
    v5 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v5 addSubview:v4];

    [(CKTranscriptStampCell *)v3 setStampTextView:v4];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:v7];
  }

  return v3;
}

- (void)layoutSubviewsForContents
{
  v43.receiver = self;
  v43.super_class = CKTranscriptStampCell;
  [(CKEditableCollectionViewCell *)&v43 layoutSubviewsForContents];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CKTranscriptStampCell *)self wantsContactImageLayout])
  {
    if (![(CKEditableCollectionViewCell *)self orientation])
    {
      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 transcriptContactImageDiameter];
      v13 = v12;
      v14 = +[CKUIBehavior sharedBehaviors];
      [v14 contactPhotoBalloonMargin];
      v42 = v13 + v15;

      [(CKEditableCollectionViewCell *)self marginInsets];
      v39 = v17;
      v40 = v16;
      v41 = v18;
      v38 = v19;
      v20 = +[CKUIBehavior sharedBehaviors];
      [v20 balloonTranscriptInsets];
      v22 = v21;
      v24 = v23;
      v36 = v25;
      v37 = v26;

      v27 = +[CKUIBehavior sharedBehaviors];
      [v27 contactPhotoTranscriptInsets];
      v29 = v28;
      v31 = v30;
      v34 = v33;
      v35 = v32;

      [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v24 + v42 + v4 - (v39 + v24) + v39 + v31, v22 + v6 - (v40 + v22) + v40 + v29 + 0.0, v8 + v39 + v24 + v38 + v37 - (v39 + v31 + v38 + v34) - (v42 + 0.0) - (v24 + v37), v10 + v40 + v22 + v41 + v36 - (v40 + v29 + v41 + v35) - (v22 + v36)];
    }
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v12.receiver = self;
  v12.super_class = CKTranscriptStampCell;
  [(CKEditableCollectionViewCell *)&v12 layoutSubviewsForAlignmentContents];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKTranscriptStampCell *)self stampTextView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (CGRect)contentAlignmentRect
{
  v20.receiver = self;
  v20.super_class = CKTranscriptStampCell;
  [(CKEditableCollectionViewCell *)&v20 contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(CKEditableCollectionViewCell *)self orientation]&& [(CKTranscriptStampCell *)self wantsOffsetForReplyLine])
  {
    v11 = [(CKTranscriptStampCell *)self wantsContactImageLayout];
    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = v12;
    if (v11)
    {
      [v12 replyLineViewContactImageLayoutHorizontalPadding];
    }

    else
    {
      [v12 replyLineViewHorizontalPadding];
    }

    v15 = v14;

    v4 = v4 + v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)performInsertion:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (![(CKTranscriptCell *)self insertingBeforeReplyPreview])
  {
    if ([(CKTranscriptCell *)self insertingWithReplyPreview])
    {
      v5 = 0.3;
    }

    else
    {
      v5 = 0.0;
    }
  }

  v6 = [(CKTranscriptCell *)self insertionType];
  if ((v6 - 1) >= 2)
  {
    if (v6 != 3)
    {
      v9.receiver = self;
      v9.super_class = CKTranscriptStampCell;
      [(CKEditableCollectionViewCell *)&v9 performInsertion:v4];
      goto LABEL_11;
    }

    [(CKTranscriptCell *)self insertionDuration];
    v7 = v8 + -0.25;
  }

  else
  {
    [(CKTranscriptCell *)self insertionDuration];
  }

  [(CKTranscriptStampCell *)self _fadeInLabelAtStartTime:v4 completion:v5 + v7];
LABEL_11:
}

- (void)setOrientation:(char)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = CKTranscriptStampCell;
  [(CKEditableCollectionViewCell *)&v9 setOrientation:?];
  v5 = [(CKTranscriptStampCell *)self stampTextView];
  v6 = v5;
  v7 = 4;
  if (v3 == 2)
  {
    v7 = 8;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 7;
  }

  [v5 setContentMode:v8];
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v9 = [(CKTranscriptStampCell *)self stampTextView];
  v5 = [v9 layer];
  [v5 setAllowsGroupBlending:0];
  [v5 setAllowsGroupOpacity:0];
  v6 = [v4 textCompositingFilter];
  [v5 setCompositingFilter:v6];

  [v4 contentAlpha];
  v8 = v7;

  [v9 setAlpha:v8];
}

- (void)clearFilters
{
  v3 = [(CKTranscriptStampCell *)self stampTextView];
  v2 = [v3 layer];
  [v2 setAllowsGroupBlending:1];
  [v2 setAllowsGroupOpacity:1];
  [v2 setCompositingFilter:0];
  [v3 setAlpha:1.0];
}

- (void)setWantsContactImageLayout:(BOOL)a3
{
  if (self->_wantsContactImageLayout != a3)
  {
    self->_wantsContactImageLayout = a3;
    [(CKTranscriptStampCell *)self setNeedsLayout];
  }
}

- (void)setWantsOffsetForReplyLine:(BOOL)a3
{
  if (self->_wantsOffsetForReplyLine != a3)
  {
    self->_wantsOffsetForReplyLine = a3;
    [(CKTranscriptStampCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTranscriptStampCell;
  [(CKTranscriptCell *)&v3 prepareForReuse];
  [(CKTranscriptStampCell *)self setWantsOffsetForReplyLine:0];
}

- (void)_fadeInLabelAtStartTime:(double)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(CKTranscriptCell *)self insertionDuration];
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  v9 = [(CKTranscriptStampCell *)self stampTextView];
  v10 = [v9 layer];
  [v10 setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [v10 convertTime:0 fromLayer:?];
  v12 = v11 + a3;
  v13 = [(CKTranscriptStampCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8B98 duration:&unk_1F04E8BA8 fromValue:v11 + a3 toValue:v8];
  [v10 addAnimation:v13 forKey:@"labelFadeIn"];
  LODWORD(v14) = 1.0;
  [v10 setOpacity:v14];
  [MEMORY[0x1E6979518] commit];
  v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v16 = [v15 fullTranscriptLoggingEnabled];

  if (v16)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = 134218752;
      v19 = v12;
      v20 = 2048;
      v21 = a3;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v8 + a3;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "INSERTION: Label: Begin:%f, StartTime:%f, Duration:%f, Total:%f", &v18, 0x2Au);
    }
  }

  if (v6)
  {
    v6[2](v6, 1);
  }
}

- (id)animationWithKeyPath:(id)a3 beginTime:(double)a4 duration:(double)a5 fromValue:(id)a6 toValue:(id)a7
{
  v11 = MEMORY[0x1E6979318];
  v12 = a7;
  v13 = a6;
  v14 = [v11 animationWithKeyPath:a3];
  [v14 setFromValue:v13];

  [v14 setToValue:v12];
  [v14 setFillMode:*MEMORY[0x1E69797E0]];
  [v14 setRemovedOnCompletion:1];
  [v14 setBeginTime:a4];
  [v14 setDuration:a5];

  return v14;
}

@end