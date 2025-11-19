@interface CKTranscriptNotifyAnywayButtonCell
+ (id)notifyAnywayButton;
- (CKTranscriptNotifyAnywayButtonCell)initWithFrame:(CGRect)a3;
- (NSAttributedString)notifyAnywayButtonAttributedText;
- (id)animationWithKeyPath:(id)a3 beginTime:(double)a4 duration:(double)a5 fromValue:(id)a6 toValue:(id)a7;
- (void)_fadeInLabelAtStartTime:(double)a3 completion:(id)a4;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)a3;
- (void)setNotifyAnywayButtonAttributedText:(id)a3;
@end

@implementation CKTranscriptNotifyAnywayButtonCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CKTranscriptNotifyAnywayButtonCell;
  v12 = a3;
  [(CKTranscriptCell *)&v14 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 transcriptText];

  [(CKTranscriptNotifyAnywayButtonCell *)self setNotifyAnywayButtonAttributedText:v13];
}

- (CKTranscriptNotifyAnywayButtonCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKTranscriptNotifyAnywayButtonCell;
  v3 = [(CKTranscriptCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() notifyAnywayButton];
    v5 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v5 addSubview:v4];

    [(CKTranscriptNotifyAnywayButtonCell *)v3 setNotifyAnywayButton:v4];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:v7];
  }

  return v3;
}

+ (id)notifyAnywayButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptLabelAccessoryButtonConfiguration];
  [v2 setConfiguration:v4];

  return v2;
}

- (void)layoutSubviewsForAlignmentContents
{
  v22.receiver = self;
  v22.super_class = CKTranscriptNotifyAnywayButtonCell;
  [(CKEditableCollectionViewCell *)&v22 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  LODWORD(v12) = 1112014848;
  LODWORD(v13) = 1148846080;
  [v11 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:v10 verticalFittingPriority:{v12, v13}];
  v15 = v14;
  v17 = v16;

  if (CKMainScreenScale_once_89 != -1)
  {
    [CKTranscriptNotifyAnywayButtonCell layoutSubviewsForAlignmentContents];
  }

  v18 = *&CKMainScreenScale_sMainScreenScale_89;
  if (*&CKMainScreenScale_sMainScreenScale_89 == 0.0)
  {
    v18 = 1.0;
  }

  v19 = floor((v4 + (v8 - v15) * 0.5) * v18) / v18;
  v20 = floor((v6 + (v10 - v17) * 0.5) * v18) / v18;
  v21 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  [v21 setFrame:{v19, v20, v15, v17}];
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
      v9.super_class = CKTranscriptNotifyAnywayButtonCell;
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

  [(CKTranscriptNotifyAnywayButtonCell *)self _fadeInLabelAtStartTime:v4 completion:v5 + v7];
LABEL_11:
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v11 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
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
  v5 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  v2 = [v5 layer];
  [v2 setAllowsGroupBlending:1];

  v3 = [v5 layer];
  [v3 setAllowsGroupOpacity:1];

  v4 = [v5 layer];
  [v4 setCompositingFilter:0];

  [v5 setAlpha:1.0];
}

- (void)setNotifyAnywayButtonAttributedText:(id)a3
{
  v6 = a3;
  v4 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButtonAttributedText];

  if (v4 != v6)
  {
    v5 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
    [v5 setAttributedTitle:v6 forState:0];

    [(CKTranscriptNotifyAnywayButtonCell *)self setNeedsLayout];
  }
}

- (NSAttributedString)notifyAnywayButtonAttributedText
{
  v2 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  v3 = [v2 attributedTitleForState:0];

  return v3;
}

- (void)_fadeInLabelAtStartTime:(double)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(CKTranscriptCell *)self insertionDuration];
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  v9 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  v10 = [v9 layer];
  [v10 setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [v10 convertTime:0 fromLayer:?];
  v12 = v11 + a3;
  v13 = [(CKTranscriptNotifyAnywayButtonCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8BB8 duration:&unk_1F04E8BC8 fromValue:v11 + a3 toValue:v8];
  [v10 addAnimation:v13 forKey:@"buttonFadeIn"];
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