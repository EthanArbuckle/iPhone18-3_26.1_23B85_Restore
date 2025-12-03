@interface CKTranscriptUnavailabilityIndicatorCell
+ (id)unavailableTitleLabel;
- (CKTranscriptUnavailabilityIndicatorCell)initWithFrame:(CGRect)frame;
- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration fromValue:(id)value toValue:(id)toValue;
- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion;
- (void)_updateUnavailableTitleLabelAttributedTextAnimated:(BOOL)animated;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)displayNotifyAnywayButtonStateChanged:(id)changed;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)insertion;
- (void)setDisplayingNotifyAnywayButton:(BOOL)button;
- (void)setUnavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:(id)button;
- (void)setUnavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton:(id)button;
@end

@implementation CKTranscriptUnavailabilityIndicatorCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = CKTranscriptUnavailabilityIndicatorCell;
    [(CKTranscriptCell *)&v17 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
    unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton = [itemCopy unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton];
    [(CKTranscriptUnavailabilityIndicatorCell *)self setUnavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton];

    unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton = [itemCopy unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton];
    [(CKTranscriptUnavailabilityIndicatorCell *)self setUnavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton:unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton];

    -[CKTranscriptUnavailabilityIndicatorCell setDisplayingNotifyAnywayButton:](self, "setDisplayingNotifyAnywayButton:", [itemCopy displayNotifyAnywayButton]);
    imUnavailabilityIndicatorChatItem = [itemCopy imUnavailabilityIndicatorChatItem];
    [imUnavailabilityIndicatorChatItem addUnavailabilityIndicatorChatItemDelegate:self];
  }

  else
  {
    imUnavailabilityIndicatorChatItem = IMLogHandleForCategory();
    if (os_log_type_enabled(imUnavailabilityIndicatorChatItem, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptUnavailabilityIndicatorCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

- (CKTranscriptUnavailabilityIndicatorCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKTranscriptUnavailabilityIndicatorCell;
  v3 = [(CKTranscriptCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    unavailableTitleLabel = [objc_opt_class() unavailableTitleLabel];
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:unavailableTitleLabel];

    [(CKTranscriptUnavailabilityIndicatorCell *)v3 setUnavailableTitleLabel:unavailableTitleLabel];
    v6 = +[CKUIBehavior sharedBehaviors];
    transcriptTextVibrancyEffect = [v6 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:transcriptTextVibrancyEffect];
  }

  return v3;
}

- (void)displayNotifyAnywayButtonStateChanged:(id)changed
{
  displayNotifyAnywayButton = [changed displayNotifyAnywayButton];

  [(CKTranscriptUnavailabilityIndicatorCell *)self setDisplayingNotifyAnywayButton:displayNotifyAnywayButton];
}

+ (id)unavailableTitleLabel
{
  v2 = [CKTranscriptLegibilityLabel alloc];
  v3 = [(CKTranscriptLegibilityLabel *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKTranscriptLegibilityLabel *)v3 setNumberOfLines:0];
  [(CKTranscriptLegibilityLabel *)v3 setContentMode:4];
  [(CKTranscriptLegibilityLabel *)v3 setTextAlignment:1];

  return v3;
}

- (void)layoutSubviewsForAlignmentContents
{
  v12.receiver = self;
  v12.super_class = CKTranscriptUnavailabilityIndicatorCell;
  [(CKEditableCollectionViewCell *)&v12 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  unavailableTitleLabel = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
  [unavailableTitleLabel setFrame:{v4, v6, v8, v10}];
}

- (void)setDisplayingNotifyAnywayButton:(BOOL)button
{
  if (self->_displayingNotifyAnywayButton != button)
  {
    self->_displayingNotifyAnywayButton = button;
    [(CKTranscriptUnavailabilityIndicatorCell *)self _updateUnavailableTitleLabelAttributedTextAnimated:1];
  }
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
      v9.super_class = CKTranscriptUnavailabilityIndicatorCell;
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

  [(CKTranscriptUnavailabilityIndicatorCell *)self _fadeInLabelAtStartTime:insertionCopy completion:v5 + v7];
LABEL_11:
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  unavailableTitleLabel = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
  layer = [unavailableTitleLabel layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [unavailableTitleLabel layer];
  [layer2 setAllowsGroupOpacity:0];

  layer3 = [unavailableTitleLabel layer];
  textCompositingFilter = [filterCopy textCompositingFilter];
  [layer3 setCompositingFilter:textCompositingFilter];

  [filterCopy contentAlpha];
  v10 = v9;

  [unavailableTitleLabel setAlpha:v10];
}

- (void)clearFilters
{
  unavailableTitleLabel = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
  layer = [unavailableTitleLabel layer];
  [layer setAllowsGroupBlending:1];

  layer2 = [unavailableTitleLabel layer];
  [layer2 setAllowsGroupOpacity:1];

  layer3 = [unavailableTitleLabel layer];
  [layer3 setCompositingFilter:0];

  [unavailableTitleLabel setAlpha:1.0];
}

- (void)_updateUnavailableTitleLabelAttributedTextAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_displayingNotifyAnywayButton)
  {
    v5 = &OBJC_IVAR___CKTranscriptUnavailabilityIndicatorCell__unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton;
  }

  else
  {
    v5 = &OBJC_IVAR___CKTranscriptUnavailabilityIndicatorCell__unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton;
  }

  v6 = *(&self->super.super.super.super.super.super.super.isa + *v5);
  if (v6)
  {
    unavailableTitleLabel = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
    v8 = unavailableTitleLabel;
    if (animatedCopy)
    {
      v9 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __94__CKTranscriptUnavailabilityIndicatorCell__updateUnavailableTitleLabelAttributedTextAnimated___block_invoke;
      v11[3] = &unk_1E72EB8D0;
      v12 = unavailableTitleLabel;
      v13 = v6;
      [v9 transitionWithView:v12 duration:5242880 options:v11 animations:0 completion:0.25];
    }

    else
    {
      unavailableTitleLabel2 = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
      [unavailableTitleLabel2 setAttributedText:v6];
    }
  }
}

- (void)setUnavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:(id)button
{
  buttonCopy = button;
  if (self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton != buttonCopy)
  {
    v6 = buttonCopy;
    objc_storeStrong(&self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton, button);
    buttonCopy = v6;
    if (self->_displayingNotifyAnywayButton)
    {
      [(CKTranscriptUnavailabilityIndicatorCell *)self _updateUnavailableTitleLabelAttributedTextAnimated:0];
      buttonCopy = v6;
    }
  }
}

- (void)setUnavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton:(id)button
{
  buttonCopy = button;
  if (self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton != buttonCopy)
  {
    v6 = buttonCopy;
    objc_storeStrong(&self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton, button);
    buttonCopy = v6;
    if (!self->_displayingNotifyAnywayButton)
    {
      [(CKTranscriptUnavailabilityIndicatorCell *)self _updateUnavailableTitleLabelAttributedTextAnimated:0];
      buttonCopy = v6;
    }
  }
}

- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(CKTranscriptCell *)self insertionDuration];
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  unavailableTitleLabel = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
  layer = [unavailableTitleLabel layer];
  [layer setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer convertTime:0 fromLayer:?];
  v12 = v11 + time;
  v13 = [(CKTranscriptUnavailabilityIndicatorCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8B78 duration:&unk_1F04E8B88 fromValue:v11 + time toValue:v8];
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