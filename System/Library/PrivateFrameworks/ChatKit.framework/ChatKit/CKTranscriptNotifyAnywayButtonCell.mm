@interface CKTranscriptNotifyAnywayButtonCell
+ (id)notifyAnywayButton;
- (CKTranscriptNotifyAnywayButtonCell)initWithFrame:(CGRect)frame;
- (NSAttributedString)notifyAnywayButtonAttributedText;
- (id)animationWithKeyPath:(id)path beginTime:(double)time duration:(double)duration fromValue:(id)value toValue:(id)toValue;
- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)insertion;
- (void)setNotifyAnywayButtonAttributedText:(id)text;
@end

@implementation CKTranscriptNotifyAnywayButtonCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v14.receiver = self;
  v14.super_class = CKTranscriptNotifyAnywayButtonCell;
  itemCopy = item;
  [(CKTranscriptCell *)&v14 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];

  [(CKTranscriptNotifyAnywayButtonCell *)self setNotifyAnywayButtonAttributedText:transcriptText];
}

- (CKTranscriptNotifyAnywayButtonCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKTranscriptNotifyAnywayButtonCell;
  v3 = [(CKTranscriptCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    notifyAnywayButton = [objc_opt_class() notifyAnywayButton];
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:notifyAnywayButton];

    [(CKTranscriptNotifyAnywayButtonCell *)v3 setNotifyAnywayButton:notifyAnywayButton];
    v6 = +[CKUIBehavior sharedBehaviors];
    transcriptTextVibrancyEffect = [v6 transcriptTextVibrancyEffect];
    [(CKEditableCollectionViewCell *)v3 setEffect:transcriptTextVibrancyEffect];
  }

  return v3;
}

+ (id)notifyAnywayButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptLabelAccessoryButtonConfiguration = [v3 transcriptLabelAccessoryButtonConfiguration];
  [v2 setConfiguration:transcriptLabelAccessoryButtonConfiguration];

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
  notifyAnywayButton = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  LODWORD(v12) = 1112014848;
  LODWORD(v13) = 1148846080;
  [notifyAnywayButton systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:v10 verticalFittingPriority:{v12, v13}];
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
  notifyAnywayButton2 = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  [notifyAnywayButton2 setFrame:{v19, v20, v15, v17}];
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
      v9.super_class = CKTranscriptNotifyAnywayButtonCell;
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

  [(CKTranscriptNotifyAnywayButtonCell *)self _fadeInLabelAtStartTime:insertionCopy completion:v5 + v7];
LABEL_11:
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  notifyAnywayButton = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  layer = [notifyAnywayButton layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [notifyAnywayButton layer];
  [layer2 setAllowsGroupOpacity:0];

  layer3 = [notifyAnywayButton layer];
  textCompositingFilter = [filterCopy textCompositingFilter];
  [layer3 setCompositingFilter:textCompositingFilter];

  [filterCopy contentAlpha];
  v10 = v9;

  [notifyAnywayButton setAlpha:v10];
}

- (void)clearFilters
{
  notifyAnywayButton = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  layer = [notifyAnywayButton layer];
  [layer setAllowsGroupBlending:1];

  layer2 = [notifyAnywayButton layer];
  [layer2 setAllowsGroupOpacity:1];

  layer3 = [notifyAnywayButton layer];
  [layer3 setCompositingFilter:0];

  [notifyAnywayButton setAlpha:1.0];
}

- (void)setNotifyAnywayButtonAttributedText:(id)text
{
  textCopy = text;
  notifyAnywayButtonAttributedText = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButtonAttributedText];

  if (notifyAnywayButtonAttributedText != textCopy)
  {
    notifyAnywayButton = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
    [notifyAnywayButton setAttributedTitle:textCopy forState:0];

    [(CKTranscriptNotifyAnywayButtonCell *)self setNeedsLayout];
  }
}

- (NSAttributedString)notifyAnywayButtonAttributedText
{
  notifyAnywayButton = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  v3 = [notifyAnywayButton attributedTitleForState:0];

  return v3;
}

- (void)_fadeInLabelAtStartTime:(double)time completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(CKTranscriptCell *)self insertionDuration];
  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  notifyAnywayButton = [(CKTranscriptNotifyAnywayButtonCell *)self notifyAnywayButton];
  layer = [notifyAnywayButton layer];
  [layer setOpacity:0.0];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer convertTime:0 fromLayer:?];
  v12 = v11 + time;
  v13 = [(CKTranscriptNotifyAnywayButtonCell *)self animationWithKeyPath:@"opacity" beginTime:&unk_1F04E8BB8 duration:&unk_1F04E8BC8 fromValue:v11 + time toValue:v8];
  [layer addAnimation:v13 forKey:@"buttonFadeIn"];
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