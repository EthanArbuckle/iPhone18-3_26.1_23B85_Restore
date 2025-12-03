@interface CKTranscriptSatelliteSMSFallbackStatusCell
+ (id)satelliteNoNotificationTitleLabel;
- (CKTranscriptSatelliteSMSFallbackStatusCell)initWithFrame:(CGRect)frame;
- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration fromValue:(id)value toValue:(id)toValue;
- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion;
- (void)_updateSMSFallbackStatusTitleLabelAttributedTextAnimated:(BOOL)animated;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)insertion;
- (void)setSMSFallbackStatusTitleLabelAttributedText:(id)text;
@end

@implementation CKTranscriptSatelliteSMSFallbackStatusCell

- (CKTranscriptSatelliteSMSFallbackStatusCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKTranscriptSatelliteSMSFallbackStatusCell;
  v3 = [(CKTranscriptCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    satelliteNoNotificationTitleLabel = [objc_opt_class() satelliteNoNotificationTitleLabel];
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:satelliteNoNotificationTitleLabel];

    [(CKTranscriptSatelliteSMSFallbackStatusCell *)v3 setSatelliteNoNotificationTitleLabel:satelliteNoNotificationTitleLabel];
  }

  return v3;
}

+ (id)satelliteNoNotificationTitleLabel
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
  v12.super_class = CKTranscriptSatelliteSMSFallbackStatusCell;
  [(CKEditableCollectionViewCell *)&v12 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  satelliteNoNotificationTitleLabel = [(CKTranscriptSatelliteSMSFallbackStatusCell *)self satelliteNoNotificationTitleLabel];
  [satelliteNoNotificationTitleLabel setFrame:{v4, v6, v8, v10}];
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
      v9.super_class = CKTranscriptSatelliteSMSFallbackStatusCell;
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

  [(CKTranscriptSatelliteSMSFallbackStatusCell *)self _fadeInLabelAtStartTime:insertionCopy completion:v5 + v7];
LABEL_11:
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  satelliteNoNotificationTitleLabel = [(CKTranscriptSatelliteSMSFallbackStatusCell *)self satelliteNoNotificationTitleLabel];
  layer = [satelliteNoNotificationTitleLabel layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [satelliteNoNotificationTitleLabel layer];
  [layer2 setAllowsGroupOpacity:0];

  layer3 = [satelliteNoNotificationTitleLabel layer];
  textCompositingFilter = [filterCopy textCompositingFilter];
  [layer3 setCompositingFilter:textCompositingFilter];

  [filterCopy contentAlpha];
  v10 = v9;

  [satelliteNoNotificationTitleLabel setAlpha:v10];
}

- (void)clearFilters
{
  satelliteNoNotificationTitleLabel = [(CKTranscriptSatelliteSMSFallbackStatusCell *)self satelliteNoNotificationTitleLabel];
  layer = [satelliteNoNotificationTitleLabel layer];
  [layer setAllowsGroupBlending:1];

  layer2 = [satelliteNoNotificationTitleLabel layer];
  [layer2 setAllowsGroupOpacity:1];

  layer3 = [satelliteNoNotificationTitleLabel layer];
  [layer3 setCompositingFilter:0];

  [satelliteNoNotificationTitleLabel setAlpha:1.0];
}

- (void)_updateSMSFallbackStatusTitleLabelAttributedTextAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_SMSFallbackStatusTitleLabelAttributedText;
  if (v5)
  {
    satelliteNoNotificationTitleLabel = [(CKTranscriptSatelliteSMSFallbackStatusCell *)self satelliteNoNotificationTitleLabel];
    v7 = satelliteNoNotificationTitleLabel;
    if (animatedCopy)
    {
      v8 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __103__CKTranscriptSatelliteSMSFallbackStatusCell__updateSMSFallbackStatusTitleLabelAttributedTextAnimated___block_invoke;
      v10[3] = &unk_1E72EB8D0;
      v11 = satelliteNoNotificationTitleLabel;
      v12 = v5;
      [v8 transitionWithView:v11 duration:5242880 options:v10 animations:0 completion:0.25];
    }

    else
    {
      satelliteNoNotificationTitleLabel2 = [(CKTranscriptSatelliteSMSFallbackStatusCell *)self satelliteNoNotificationTitleLabel];
      [satelliteNoNotificationTitleLabel2 setAttributedText:v5];
    }
  }
}

- (void)setSMSFallbackStatusTitleLabelAttributedText:(id)text
{
  textCopy = text;
  if (self->_SMSFallbackStatusTitleLabelAttributedText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_SMSFallbackStatusTitleLabelAttributedText, text);
    [(CKTranscriptSatelliteSMSFallbackStatusCell *)self _updateSMSFallbackStatusTitleLabelAttributedTextAnimated:0];
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
  satelliteNoNotificationTitleLabel = [(CKTranscriptSatelliteSMSFallbackStatusCell *)self satelliteNoNotificationTitleLabel];
  layer = [satelliteNoNotificationTitleLabel layer];
  [layer setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer convertTime:0 fromLayer:?];
  v12 = v11 + time;
  v13 = [(CKTranscriptSatelliteSMSFallbackStatusCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8758 duration:&unk_1F04E8768 fromValue:v11 + time toValue:v8];
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

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15.receiver = self;
    v15.super_class = CKTranscriptSatelliteSMSFallbackStatusCell;
    [(CKTranscriptCell *)&v15 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
    smsFallbackStatusTitleLabelAttributedText = [itemCopy smsFallbackStatusTitleLabelAttributedText];
    [(CKTranscriptSatelliteSMSFallbackStatusCell *)self setSMSFallbackStatusTitleLabelAttributedText:smsFallbackStatusTitleLabelAttributedText];
  }

  else
  {
    smsFallbackStatusTitleLabelAttributedText = IMLogHandleForCategory();
    if (os_log_type_enabled(smsFallbackStatusTitleLabelAttributedText, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptSatelliteSMSFallbackStatusCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

@end