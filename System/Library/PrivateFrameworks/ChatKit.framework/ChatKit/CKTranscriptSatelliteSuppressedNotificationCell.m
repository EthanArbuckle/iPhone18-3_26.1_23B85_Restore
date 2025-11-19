@interface CKTranscriptSatelliteSuppressedNotificationCell
+ (id)satelliteNoNotificationTitleLabel;
- (CKTranscriptSatelliteSuppressedNotificationCell)initWithFrame:(CGRect)a3;
- (id)animationWithKeyPath:(id)a3 beginTime:(double)a4 duration:(double)a5 fromValue:(id)a6 toValue:(id)a7;
- (void)_fadeInLabelAtStartTime:(double)a3 completion:(id)a4;
- (void)_updateSatelliteNoNotificationTitleLabelAttributedTextAnimated:(BOOL)a3;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)a3;
- (void)setSatelliteNoNotificationTitleLabelAttributedText:(id)a3;
@end

@implementation CKTranscriptSatelliteSuppressedNotificationCell

- (CKTranscriptSatelliteSuppressedNotificationCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKTranscriptSatelliteSuppressedNotificationCell;
  v3 = [(CKTranscriptCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() satelliteNoNotificationTitleLabel];
    v5 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v5 addSubview:v4];

    [(CKTranscriptSatelliteSuppressedNotificationCell *)v3 setSatelliteNoNotificationTitleLabel:v4];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:v7];
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
  v12.super_class = CKTranscriptSatelliteSuppressedNotificationCell;
  [(CKEditableCollectionViewCell *)&v12 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKTranscriptSatelliteSuppressedNotificationCell *)self satelliteNoNotificationTitleLabel];
  [v11 setFrame:{v4, v6, v8, v10}];
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
      v9.super_class = CKTranscriptSatelliteSuppressedNotificationCell;
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

  [(CKTranscriptSatelliteSuppressedNotificationCell *)self _fadeInLabelAtStartTime:v4 completion:v5 + v7];
LABEL_11:
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v11 = [(CKTranscriptSatelliteSuppressedNotificationCell *)self satelliteNoNotificationTitleLabel];
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
  v5 = [(CKTranscriptSatelliteSuppressedNotificationCell *)self satelliteNoNotificationTitleLabel];
  v2 = [v5 layer];
  [v2 setAllowsGroupBlending:1];

  v3 = [v5 layer];
  [v3 setAllowsGroupOpacity:1];

  v4 = [v5 layer];
  [v4 setCompositingFilter:0];

  [v5 setAlpha:1.0];
}

- (void)_updateSatelliteNoNotificationTitleLabelAttributedTextAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self->_satelliteNoNotificationTitleLabelAttributedText;
  if (v5)
  {
    v6 = [(CKTranscriptSatelliteSuppressedNotificationCell *)self satelliteNoNotificationTitleLabel];
    v7 = v6;
    if (v3)
    {
      v8 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __114__CKTranscriptSatelliteSuppressedNotificationCell__updateSatelliteNoNotificationTitleLabelAttributedTextAnimated___block_invoke;
      v10[3] = &unk_1E72EB8D0;
      v11 = v6;
      v12 = v5;
      [v8 transitionWithView:v11 duration:5242880 options:v10 animations:0 completion:0.25];
    }

    else
    {
      v9 = [(CKTranscriptSatelliteSuppressedNotificationCell *)self satelliteNoNotificationTitleLabel];
      [v9 setAttributedText:v5];
    }
  }
}

- (void)setSatelliteNoNotificationTitleLabelAttributedText:(id)a3
{
  v5 = a3;
  if (self->_satelliteNoNotificationTitleLabelAttributedText != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_satelliteNoNotificationTitleLabelAttributedText, a3);
    [(CKTranscriptSatelliteSuppressedNotificationCell *)self _updateSatelliteNoNotificationTitleLabelAttributedTextAnimated:0];
    v5 = v6;
  }
}

- (void)_fadeInLabelAtStartTime:(double)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(CKTranscriptCell *)self insertionDuration];
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  v9 = [(CKTranscriptSatelliteSuppressedNotificationCell *)self satelliteNoNotificationTitleLabel];
  v10 = [v9 layer];
  [v10 setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [v10 convertTime:0 fromLayer:?];
  v12 = v11 + a3;
  v13 = [(CKTranscriptSatelliteSuppressedNotificationCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8908 duration:&unk_1F04E8918 fromValue:v11 + a3 toValue:v8];
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

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15.receiver = self;
    v15.super_class = CKTranscriptSatelliteSuppressedNotificationCell;
    [(CKTranscriptCell *)&v15 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
    v14 = [v12 satelliteNoNotificationTitleLabelAttributedText];
    [(CKTranscriptSatelliteSuppressedNotificationCell *)self setSatelliteNoNotificationTitleLabelAttributedText:v14];
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptSatelliteSuppressedNotificationCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

@end