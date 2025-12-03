@interface CKTranscriptSatelliteAvailabilityCell
+ (id)satelliteAvailabilityTitleLabel;
- (CKTranscriptSatelliteAvailabilityCell)initWithFrame:(CGRect)frame;
- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration fromValue:(id)value toValue:(id)toValue;
- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion;
- (void)_updateSatelliteAvailabilityTitleLabelAttributedTextAnimated:(BOOL)animated;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)insertion;
- (void)setSatelliteAvailabilityTitleLabelAttributedText:(id)text;
@end

@implementation CKTranscriptSatelliteAvailabilityCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15.receiver = self;
    v15.super_class = CKTranscriptSatelliteAvailabilityCell;
    [(CKTranscriptCell *)&v15 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
    satelliteAvailabilityTitleLabelAttributedText = [itemCopy satelliteAvailabilityTitleLabelAttributedText];
    [(CKTranscriptSatelliteAvailabilityCell *)self setSatelliteAvailabilityTitleLabelAttributedText:satelliteAvailabilityTitleLabelAttributedText];
  }

  else
  {
    satelliteAvailabilityTitleLabelAttributedText = IMLogHandleForCategory();
    if (os_log_type_enabled(satelliteAvailabilityTitleLabelAttributedText, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptSatelliteAvailabilityCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

- (CKTranscriptSatelliteAvailabilityCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKTranscriptSatelliteAvailabilityCell;
  v3 = [(CKTranscriptCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    satelliteAvailabilityTitleLabel = [objc_opt_class() satelliteAvailabilityTitleLabel];
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:satelliteAvailabilityTitleLabel];

    [(CKTranscriptSatelliteAvailabilityCell *)v3 setSatelliteAvailabilityTitleLabel:satelliteAvailabilityTitleLabel];
    v6 = +[CKUIBehavior sharedBehaviors];
    transcriptTextVibrancyEffect = [v6 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:transcriptTextVibrancyEffect];
  }

  return v3;
}

+ (id)satelliteAvailabilityTitleLabel
{
  v2 = objc_alloc(MEMORY[0x1E69DCC10]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setNumberOfLines:0];
  [v3 setContentMode:4];
  [v3 setTextAlignment:1];

  return v3;
}

- (void)layoutSubviewsForAlignmentContents
{
  v12.receiver = self;
  v12.super_class = CKTranscriptSatelliteAvailabilityCell;
  [(CKEditableCollectionViewCell *)&v12 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  satelliteAvailabilityTitleLabel = [(CKTranscriptSatelliteAvailabilityCell *)self satelliteAvailabilityTitleLabel];
  [satelliteAvailabilityTitleLabel setFrame:{v4, v6, v8, v10}];
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
      v9.super_class = CKTranscriptSatelliteAvailabilityCell;
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

  [(CKTranscriptSatelliteAvailabilityCell *)self _fadeInLabelAtStartTime:insertionCopy completion:v5 + v7];
LABEL_11:
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  satelliteAvailabilityTitleLabel = [(CKTranscriptSatelliteAvailabilityCell *)self satelliteAvailabilityTitleLabel];
  layer = [satelliteAvailabilityTitleLabel layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [satelliteAvailabilityTitleLabel layer];
  [layer2 setAllowsGroupOpacity:0];

  layer3 = [satelliteAvailabilityTitleLabel layer];
  textCompositingFilter = [filterCopy textCompositingFilter];
  [layer3 setCompositingFilter:textCompositingFilter];

  [filterCopy contentAlpha];
  v10 = v9;

  [satelliteAvailabilityTitleLabel setAlpha:v10];
}

- (void)clearFilters
{
  satelliteAvailabilityTitleLabel = [(CKTranscriptSatelliteAvailabilityCell *)self satelliteAvailabilityTitleLabel];
  layer = [satelliteAvailabilityTitleLabel layer];
  [layer setAllowsGroupBlending:1];

  layer2 = [satelliteAvailabilityTitleLabel layer];
  [layer2 setAllowsGroupOpacity:1];

  layer3 = [satelliteAvailabilityTitleLabel layer];
  [layer3 setCompositingFilter:0];

  [satelliteAvailabilityTitleLabel setAlpha:1.0];
}

- (void)_updateSatelliteAvailabilityTitleLabelAttributedTextAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_satelliteAvailabilityTitleLabelAttributedText;
  if (v5)
  {
    satelliteAvailabilityTitleLabel = [(CKTranscriptSatelliteAvailabilityCell *)self satelliteAvailabilityTitleLabel];
    v7 = satelliteAvailabilityTitleLabel;
    if (animatedCopy)
    {
      v8 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __102__CKTranscriptSatelliteAvailabilityCell__updateSatelliteAvailabilityTitleLabelAttributedTextAnimated___block_invoke;
      v10[3] = &unk_1E72EB8D0;
      v11 = satelliteAvailabilityTitleLabel;
      v12 = v5;
      [v8 transitionWithView:v11 duration:5242880 options:v10 animations:0 completion:0.25];
    }

    else
    {
      satelliteAvailabilityTitleLabel2 = [(CKTranscriptSatelliteAvailabilityCell *)self satelliteAvailabilityTitleLabel];
      [satelliteAvailabilityTitleLabel2 setAttributedText:v5];
    }
  }
}

- (void)setSatelliteAvailabilityTitleLabelAttributedText:(id)text
{
  textCopy = text;
  if (self->_satelliteAvailabilityTitleLabelAttributedText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_satelliteAvailabilityTitleLabelAttributedText, text);
    [(CKTranscriptSatelliteAvailabilityCell *)self _updateSatelliteAvailabilityTitleLabelAttributedTextAnimated:0];
    textCopy = v6;
  }
}

- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(CKTranscriptCell *)self insertionDuration];
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  satelliteAvailabilityTitleLabel = [(CKTranscriptSatelliteAvailabilityCell *)self satelliteAvailabilityTitleLabel];
  layer = [satelliteAvailabilityTitleLabel layer];
  [layer setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer convertTime:0 fromLayer:?];
  v12 = v11 + time;
  v13 = [(CKTranscriptSatelliteAvailabilityCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8EC8 duration:&unk_1F04E8ED8 fromValue:v11 + time toValue:v8];
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