@interface CKTranscriptUnavailabilityIndicatorCell
+ (id)unavailableTitleLabel;
- (CKTranscriptUnavailabilityIndicatorCell)initWithFrame:(CGRect)a3;
- (id)animationWithKeyPath:(id)a3 beginTime:(double)a4 duration:(double)a5 fromValue:(id)a6 toValue:(id)a7;
- (void)_fadeInLabelAtStartTime:(double)a3 completion:(id)a4;
- (void)_updateUnavailableTitleLabelAttributedTextAnimated:(BOOL)a3;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)displayNotifyAnywayButtonStateChanged:(id)a3;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)a3;
- (void)setDisplayingNotifyAnywayButton:(BOOL)a3;
- (void)setUnavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:(id)a3;
- (void)setUnavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton:(id)a3;
@end

@implementation CKTranscriptUnavailabilityIndicatorCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = CKTranscriptUnavailabilityIndicatorCell;
    [(CKTranscriptCell *)&v17 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
    v14 = [v12 unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton];
    [(CKTranscriptUnavailabilityIndicatorCell *)self setUnavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:v14];

    v15 = [v12 unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton];
    [(CKTranscriptUnavailabilityIndicatorCell *)self setUnavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton:v15];

    -[CKTranscriptUnavailabilityIndicatorCell setDisplayingNotifyAnywayButton:](self, "setDisplayingNotifyAnywayButton:", [v12 displayNotifyAnywayButton]);
    v16 = [v12 imUnavailabilityIndicatorChatItem];
    [v16 addUnavailabilityIndicatorChatItemDelegate:self];
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptUnavailabilityIndicatorCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

- (CKTranscriptUnavailabilityIndicatorCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKTranscriptUnavailabilityIndicatorCell;
  v3 = [(CKTranscriptCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() unavailableTitleLabel];
    v5 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v5 addSubview:v4];

    [(CKTranscriptUnavailabilityIndicatorCell *)v3 setUnavailableTitleLabel:v4];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:v7];
  }

  return v3;
}

- (void)displayNotifyAnywayButtonStateChanged:(id)a3
{
  v4 = [a3 displayNotifyAnywayButton];

  [(CKTranscriptUnavailabilityIndicatorCell *)self setDisplayingNotifyAnywayButton:v4];
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
  v11 = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)setDisplayingNotifyAnywayButton:(BOOL)a3
{
  if (self->_displayingNotifyAnywayButton != a3)
  {
    self->_displayingNotifyAnywayButton = a3;
    [(CKTranscriptUnavailabilityIndicatorCell *)self _updateUnavailableTitleLabelAttributedTextAnimated:1];
  }
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
      v9.super_class = CKTranscriptUnavailabilityIndicatorCell;
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

  [(CKTranscriptUnavailabilityIndicatorCell *)self _fadeInLabelAtStartTime:v4 completion:v5 + v7];
LABEL_11:
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v11 = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
  v5 = [v11 layer];
  [v5 setAllowsGroupBlending:0];

  v6 = [v11 layer];
  [v6 setAllowsGroupOpacity:0];

  v7 = [v11 layer];
  v8 = [v4 textCompositingFilter];
  [v7 setCompositingFilter:v8];

  [v4 contentAlpha];
  v10 = v9;

  [v11 setAlpha:v10];
}

- (void)clearFilters
{
  v5 = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
  v2 = [v5 layer];
  [v2 setAllowsGroupBlending:1];

  v3 = [v5 layer];
  [v3 setAllowsGroupOpacity:1];

  v4 = [v5 layer];
  [v4 setCompositingFilter:0];

  [v5 setAlpha:1.0];
}

- (void)_updateUnavailableTitleLabelAttributedTextAnimated:(BOOL)a3
{
  v3 = a3;
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
    v7 = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
    v8 = v7;
    if (v3)
    {
      v9 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __94__CKTranscriptUnavailabilityIndicatorCell__updateUnavailableTitleLabelAttributedTextAnimated___block_invoke;
      v11[3] = &unk_1E72EB8D0;
      v12 = v7;
      v13 = v6;
      [v9 transitionWithView:v12 duration:5242880 options:v11 animations:0 completion:0.25];
    }

    else
    {
      v10 = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
      [v10 setAttributedText:v6];
    }
  }
}

- (void)setUnavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton:(id)a3
{
  v5 = a3;
  if (self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_unavailableTitleLabelAttributedTextWhenDisplayingNotifyAnywayButton, a3);
    v5 = v6;
    if (self->_displayingNotifyAnywayButton)
    {
      [(CKTranscriptUnavailabilityIndicatorCell *)self _updateUnavailableTitleLabelAttributedTextAnimated:0];
      v5 = v6;
    }
  }
}

- (void)setUnavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton:(id)a3
{
  v5 = a3;
  if (self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_unavailableTitleLabelAttributedTextWhenNotDisplayingNotifyAnywayButton, a3);
    v5 = v6;
    if (!self->_displayingNotifyAnywayButton)
    {
      [(CKTranscriptUnavailabilityIndicatorCell *)self _updateUnavailableTitleLabelAttributedTextAnimated:0];
      v5 = v6;
    }
  }
}

- (void)_fadeInLabelAtStartTime:(double)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(CKTranscriptCell *)self insertionDuration];
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  v9 = [(CKTranscriptUnavailabilityIndicatorCell *)self unavailableTitleLabel];
  v10 = [v9 layer];
  [v10 setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [v10 convertTime:0 fromLayer:?];
  v12 = v11 + a3;
  v13 = [(CKTranscriptUnavailabilityIndicatorCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8B78 duration:&unk_1F04E8B88 fromValue:v11 + a3 toValue:v8];
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