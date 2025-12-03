@interface CKTranscriptStampCell
+ (id)createStampTextView;
- (CGRect)contentAlignmentRect;
- (CKTranscriptStampCell)initWithFrame:(CGRect)frame;
- (NSAttributedString)attributedText;
- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration fromValue:(id)value toValue:(id)toValue;
- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)layoutSubviewsForContents;
- (void)performInsertion:(id)insertion;
- (void)prepareForReuse;
- (void)setAttributedText:(id)text;
- (void)setOrientation:(char)orientation;
- (void)setWantsContactImageLayout:(BOOL)layout;
- (void)setWantsOffsetForReplyLine:(BOOL)line;
@end

@implementation CKTranscriptStampCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v14.receiver = self;
  v14.super_class = CKTranscriptStampCell;
  itemCopy = item;
  [(CKTranscriptCell *)&v14 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];

  [(CKTranscriptStampCell *)self setAttributedText:transcriptText];
}

+ (id)createStampTextView
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKTranscriptStampCell.m" lineNumber:23 description:@"Subclasses must implement createStampTextView"];

  return 0;
}

- (void)setAttributedText:(id)text
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKTranscriptStampCell.m" lineNumber:28 description:@"Subclasses must implement setAttributedText:"];
}

- (NSAttributedString)attributedText
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKTranscriptStampCell.m" lineNumber:32 description:@"Subclasses must implement attributedText"];

  return 0;
}

- (CKTranscriptStampCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKTranscriptStampCell;
  v3 = [(CKTranscriptCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    createStampTextView = [objc_opt_class() createStampTextView];
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:createStampTextView];

    [(CKTranscriptStampCell *)v3 setStampTextView:createStampTextView];
    v6 = +[CKUIBehavior sharedBehaviors];
    transcriptTextVibrancyEffect = [v6 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:transcriptTextVibrancyEffect];
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
  stampTextView = [(CKTranscriptStampCell *)self stampTextView];
  [stampTextView setFrame:{v4, v6, v8, v10}];
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
    wantsContactImageLayout = [(CKTranscriptStampCell *)self wantsContactImageLayout];
    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = v12;
    if (wantsContactImageLayout)
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

- (void)performInsertion:(id)insertion
{
  insertionCopy = insertion;
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

  insertionType = [(CKTranscriptCell *)self insertionType];
  if ((insertionType - 1) >= 2)
  {
    if (insertionType != 3)
    {
      v9.receiver = self;
      v9.super_class = CKTranscriptStampCell;
      [(CKEditableCollectionViewCell *)&v9 performInsertion:insertionCopy];
      goto LABEL_11;
    }

    [(CKTranscriptCell *)self insertionDuration];
    v7 = v8 + -0.25;
  }

  else
  {
    [(CKTranscriptCell *)self insertionDuration];
  }

  [(CKTranscriptStampCell *)self _fadeInLabelAtStartTime:insertionCopy completion:v5 + v7];
LABEL_11:
}

- (void)setOrientation:(char)orientation
{
  orientationCopy = orientation;
  v9.receiver = self;
  v9.super_class = CKTranscriptStampCell;
  [(CKEditableCollectionViewCell *)&v9 setOrientation:?];
  stampTextView = [(CKTranscriptStampCell *)self stampTextView];
  v6 = stampTextView;
  v7 = 4;
  if (orientationCopy == 2)
  {
    v7 = 8;
  }

  if (orientationCopy)
  {
    v8 = v7;
  }

  else
  {
    v8 = 7;
  }

  [stampTextView setContentMode:v8];
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  stampTextView = [(CKTranscriptStampCell *)self stampTextView];
  layer = [stampTextView layer];
  [layer setAllowsGroupBlending:0];
  [layer setAllowsGroupOpacity:0];
  textCompositingFilter = [filterCopy textCompositingFilter];
  [layer setCompositingFilter:textCompositingFilter];

  [filterCopy contentAlpha];
  v8 = v7;

  [stampTextView setAlpha:v8];
}

- (void)clearFilters
{
  stampTextView = [(CKTranscriptStampCell *)self stampTextView];
  layer = [stampTextView layer];
  [layer setAllowsGroupBlending:1];
  [layer setAllowsGroupOpacity:1];
  [layer setCompositingFilter:0];
  [stampTextView setAlpha:1.0];
}

- (void)setWantsContactImageLayout:(BOOL)layout
{
  if (self->_wantsContactImageLayout != layout)
  {
    self->_wantsContactImageLayout = layout;
    [(CKTranscriptStampCell *)self setNeedsLayout];
  }
}

- (void)setWantsOffsetForReplyLine:(BOOL)line
{
  if (self->_wantsOffsetForReplyLine != line)
  {
    self->_wantsOffsetForReplyLine = line;
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

- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(CKTranscriptCell *)self insertionDuration];
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  stampTextView = [(CKTranscriptStampCell *)self stampTextView];
  layer = [stampTextView layer];
  [layer setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer convertTime:0 fromLayer:?];
  v12 = v11 + time;
  v13 = [(CKTranscriptStampCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8B98 duration:&unk_1F04E8BA8 fromValue:v11 + time toValue:v8];
  [layer addAnimation:v13 forKey:@"labelFadeIn"];
  LODWORD(v14) = 1.0;
  [layer setOpacity:v14];
  [MEMORY[0x1E6979518] commit];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  fullTranscriptLoggingEnabled = [mEMORY[0x1E69A8070] fullTranscriptLoggingEnabled];

  if (fullTranscriptLoggingEnabled)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = 134218752;
      v19 = v12;
      v20 = 2048;
      timeCopy = time;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v8 + time;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "INSERTION: Label: Begin:%f, StartTime:%f, Duration:%f, Total:%f", &v18, 0x2Au);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration fromValue:(id)value toValue:(id)toValue
{
  v11 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  v14 = [v11 animationWithKeyPath:path];
  [v14 setFromValue:valueCopy];

  [v14 setToValue:toValueCopy];
  [v14 setFillMode:*MEMORY[0x1E69797E0]];
  [v14 setRemovedOnCompletion:1];
  [v14 setBeginTime:time];
  [v14 setDuration:duration];

  return v14;
}

@end