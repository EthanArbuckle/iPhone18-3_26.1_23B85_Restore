@interface CKTranscriptReportSpamCell
+ (NSAttributedString)internalPhishingWarning;
+ (id)internalPhishingWarningLabel;
- (CGSize)layoutSizeForWidth:(double)width applyLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptReportSpamCell)initWithFrame:(CGRect)frame;
- (NSAttributedString)attributedButtonText;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)setAttributedButtonText:(id)text;
@end

@implementation CKTranscriptReportSpamCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v29[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptReportSpamCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69A5F40];
    v28 = *MEMORY[0x1E696A278];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling into configureForChatItem: with an unexpected type: %@", objc_opt_class()];
    v29[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v19 = [v15 errorWithDomain:v16 code:0 userInfo:v18];

    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] forceAutoBugCaptureWithSubType:@"WrongChatItemForCKTranscriptCell" errorPayload:v19 type:@"CKTranscriptReportSpamCell" context:0];
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedInstance];
  if ([mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled])
  {
  }

  else
  {
    v22 = CKIsRunningInMacCatalyst();

    if (v22)
    {
      goto LABEL_14;
    }
  }

  v27.receiver = self;
  v27.super_class = CKTranscriptReportSpamCell;
  [(CKTranscriptStampCell *)&v27 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];
  [(CKTranscriptLabelCell *)self setAttributedText:transcriptText];

  if (CKIsRunningInMessagesNotificationExtension() || ([MEMORY[0x1E69A5B00] sharedInstance], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isSatelliteConnectionActive"), v24, v25))
  {
    reportSpamButton = [(CKTranscriptReportSpamCell *)self reportSpamButton];
    [reportSpamButton setHidden:1];
LABEL_11:

    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    reportSpamButton = [itemCopy transcriptButtonText];
    [(CKTranscriptReportSpamCell *)self setAttributedButtonText:reportSpamButton];
    goto LABEL_11;
  }

LABEL_12:
  if (objc_opt_respondsToSelector())
  {
    -[CKTranscriptReportSpamCell setShowReportSMSSpam:](self, "setShowReportSMSSpam:", [itemCopy showReportSMSSpam]);
  }

LABEL_14:
}

- (CKTranscriptReportSpamCell)initWithFrame:(CGRect)frame
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CKTranscriptReportSpamCell;
  v3 = [(CKTranscriptLabelCell *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (!v3)
  {
    return v3;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedInstance];
  if ([mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled])
  {

LABEL_5:
    v6 = [MEMORY[0x1E69DC738] buttonWithType:CKIsRunningInMacCatalyst() == 0];
    v7 = +[CKUIBehavior sharedBehaviors];
    transcriptLabelAccessoryButtonConfiguration = [v7 transcriptLabelAccessoryButtonConfiguration];
    [v6 setConfiguration:transcriptLabelAccessoryButtonConfiguration];

    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:v6];

    [(CKTranscriptReportSpamCell *)v3 setReportSpamButton:v6];
    goto LABEL_6;
  }

  v5 = CKIsRunningInMacCatalyst();

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (IMShouldHandleInternalPhishingAttempts())
  {
    internalPhishingWarningLabel = [objc_opt_class() internalPhishingWarningLabel];
    internalPhishingWarningLabel = v3->_internalPhishingWarningLabel;
    v3->_internalPhishingWarningLabel = internalPhishingWarningLabel;

    contentView2 = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_internalPhishingWarningLabel];
  }

  v17[0] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14 = [(CKTranscriptReportSpamCell *)v3 registerForTraitChanges:v13 withHandler:&__block_literal_global_207];

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CKTranscriptReportSpamCell *)self layoutSizeForWidth:0 applyLayout:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviewsForAlignmentContents
{
  v4.receiver = self;
  v4.super_class = CKTranscriptReportSpamCell;
  [(CKTranscriptStampCell *)&v4 layoutSubviewsForAlignmentContents];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  [(CKTranscriptReportSpamCell *)self layoutSizeForWidth:1 applyLayout:v3];
}

- (CGSize)layoutSizeForWidth:(double)width applyLayout:(BOOL)layout
{
  v7 = +[CKUIBehavior sharedBehaviors];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v70 = v8;
  v72 = v9;
  v10 = MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  [v7 phishingWarningEdgeInsets];
  v66 = v15;
  internalPhishingWarningLabel = self->_internalPhishingWarningLabel;
  if (internalPhishingWarningLabel)
  {
    v17 = v13;
    v18 = v14;
    attributedText = [(UILabel *)internalPhishingWarningLabel attributedText];
    [attributedText boundingRectWithSize:1 options:0 context:{width - (v17 + v18), 1.79769313e308}];
    v21 = v20;
    v23 = v22;

    if (CKMainScreenScale_once_81 != -1)
    {
      [CKTranscriptReportSpamCell layoutSizeForWidth:applyLayout:];
    }

    v24 = *&CKMainScreenScale_sMainScreenScale_81;
    if (*&CKMainScreenScale_sMainScreenScale_81 == 0.0)
    {
      v24 = 1.0;
    }

    v25 = floor((v70 + (v72 - v21) * 0.5) * v24) / v24;
    v26 = 0.0;
  }

  else
  {
    v25 = *v10;
    v26 = v10[1];
    v23 = v11;
    v21 = v12;
  }

  label = [(CKTranscriptLabelCell *)self label];
  label2 = [(CKTranscriptLabelCell *)self label];
  if (label2)
  {
    v29 = label2;
    label3 = [(CKTranscriptLabelCell *)self label];
    attributedText2 = [label3 attributedText];

    if (attributedText2)
    {
      label4 = [(CKTranscriptLabelCell *)self label];
      attributedText3 = [label4 attributedText];
      [attributedText3 boundingRectWithSize:1 options:0 context:{width, 1.79769313e308}];
      v12 = v34;
      v11 = v35;
    }
  }

  v65 = v25;
  v75.origin.x = v25;
  v75.origin.y = v26;
  v68 = v21;
  v75.size.width = v21;
  v75.size.height = v23;
  MaxY = CGRectGetMaxY(v75);
  if (v23 <= 0.0)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v66;
  }

  v62 = v26;
  if (CKMainScreenScale_once_81 != -1)
  {
    [CKTranscriptReportSpamCell layoutSizeForWidth:applyLayout:];
  }

  v38 = v37 + MaxY;
  v39 = *&CKMainScreenScale_sMainScreenScale_81;
  if (*&CKMainScreenScale_sMainScreenScale_81 == 0.0)
  {
    v39 = 1.0;
  }

  v40 = v12;
  v41 = v70;
  v42 = floor((v70 + (v72 - v12) * 0.5) * v39) / v39;
  [label setNumberOfLines:{0, *&v62}];
  reportSpamButton = [(CKTranscriptReportSpamCell *)self reportSpamButton];
  [v7 mediumTranscriptSpace];
  v45 = v44;
  widthCopy = width;
  [reportSpamButton sizeThatFits:{width, 1.79769313e308}];
  v47 = v46;
  v69 = v23;
  v64 = v48;
  if (CKMainScreenScale_once_81 != -1)
  {
    [CKTranscriptReportSpamCell layoutSizeForWidth:applyLayout:];
  }

  v49 = *&CKMainScreenScale_sMainScreenScale_81;
  if (*&CKMainScreenScale_sMainScreenScale_81 == 0.0)
  {
    v49 = 1.0;
  }

  v71 = v47;
  v73 = floor((v41 + (v72 - v47) * 0.5) * v49) / v49;
  v76.origin.x = v42;
  v76.origin.y = v38;
  v76.size.width = v40;
  v50 = v11;
  v76.size.height = v11;
  v51 = v45 + CGRectGetMaxY(v76);
  configuration = [reportSpamButton configuration];
  background = [configuration background];
  [background cornerRadius];
  v55 = v51 + v54 * 0.5;

  if (layout)
  {
    v56 = v65;
    v57 = v63;
    [(UILabel *)self->_internalPhishingWarningLabel setFrame:v65, v63, v68, v69];
    [label setFrame:{v42, v38, v40, v50}];
    v58 = v64;
    [reportSpamButton setFrame:{v73, v55, v71, v64}];
    [reportSpamButton __ck_ensureMinimumTouchInsets];
  }

  else
  {
    v58 = v64;
    v56 = v65;
    v57 = v63;
  }

  v77.origin.x = v42;
  v77.origin.y = v38;
  v77.size.width = v40;
  v77.size.height = v50;
  v80.size.width = v71;
  v80.origin.x = v73;
  v80.origin.y = v55;
  v80.size.height = v58;
  v78 = CGRectUnion(v77, v80);
  v81.origin.x = v56;
  v81.origin.y = v57;
  v81.size.width = v68;
  v81.size.height = v69;
  v79 = CGRectUnion(v78, v81);
  v59 = v79.size.height + fmax(44.0 - v58, 0.0) * 0.5;

  v60 = widthCopy;
  v61 = v59;
  result.height = v61;
  result.width = v60;
  return result;
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  v7.receiver = self;
  v7.super_class = CKTranscriptReportSpamCell;
  [(CKTranscriptStampCell *)&v7 addFilter:filterCopy];
  reportSpamButton = [(CKTranscriptReportSpamCell *)self reportSpamButton];
  [filterCopy contentAlpha];
  [reportSpamButton setAlpha:?];
  internalPhishingWarningLabel = self->_internalPhishingWarningLabel;
  if (internalPhishingWarningLabel)
  {
    [filterCopy contentAlpha];
    [(UILabel *)internalPhishingWarningLabel setAlpha:?];
  }
}

- (void)clearFilters
{
  v5.receiver = self;
  v5.super_class = CKTranscriptReportSpamCell;
  [(CKTranscriptStampCell *)&v5 clearFilters];
  reportSpamButton = [(CKTranscriptReportSpamCell *)self reportSpamButton];
  [reportSpamButton setAlpha:1.0];
  internalPhishingWarningLabel = self->_internalPhishingWarningLabel;
  if (internalPhishingWarningLabel)
  {
    [(UILabel *)internalPhishingWarningLabel setAlpha:1.0];
  }
}

- (void)setAttributedButtonText:(id)text
{
  textCopy = text;
  attributedButtonText = [(CKTranscriptReportSpamCell *)self attributedButtonText];

  if (attributedButtonText != textCopy)
  {
    reportSpamButton = [(CKTranscriptReportSpamCell *)self reportSpamButton];
    [reportSpamButton setAttributedTitle:textCopy forState:0];

    [(CKTranscriptReportSpamCell *)self setNeedsLayout];
  }
}

- (NSAttributedString)attributedButtonText
{
  reportSpamButton = [(CKTranscriptReportSpamCell *)self reportSpamButton];
  v3 = [reportSpamButton attributedTitleForState:0];

  return v3;
}

+ (id)internalPhishingWarningLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setNumberOfLines:0];
  [v4 setTextAlignment:1];
  internalPhishingWarning = [self internalPhishingWarning];
  [v4 setAttributedText:internalPhishingWarning];

  return v4;
}

+ (NSAttributedString)internalPhishingWarning
{
  v2 = +[CKUIBehavior sharedBehaviors];
  phishingWarningTextAttributes = [v2 phishingWarningTextAttributes];

  configurationPreferringMulticolor = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill" withConfiguration:configurationPreferringMulticolor];
  v6 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v5];
  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttachment:v6 attributes:phishingWarningTextAttributes];
  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v9 = [@" " stringByAppendingString:*MEMORY[0x1E69A7DC8]];
  v10 = [v8 initWithString:v9 attributes:phishingWarningTextAttributes];

  [v7 appendAttributedString:v10];

  return v7;
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = CKTranscriptReportSpamCell;
  [(CKTranscriptStampCell *)&v8 prepareForReuse];
  v3 = IMShouldHandleInternalPhishingAttempts();
  internalPhishingWarningLabel = self->_internalPhishingWarningLabel;
  if (!internalPhishingWarningLabel || (v3 & 1) != 0)
  {
    if (((internalPhishingWarningLabel == 0) & v3) != 1)
    {
      return;
    }

    internalPhishingWarningLabel = [objc_opt_class() internalPhishingWarningLabel];
    v7 = self->_internalPhishingWarningLabel;
    self->_internalPhishingWarningLabel = internalPhishingWarningLabel;

    contentView = [(CKEditableCollectionViewCell *)self contentView];
    [contentView addSubview:self->_internalPhishingWarningLabel];
  }

  else
  {
    [(UILabel *)self->_internalPhishingWarningLabel removeFromSuperview];
    contentView = self->_internalPhishingWarningLabel;
    self->_internalPhishingWarningLabel = 0;
  }

  [(CKTranscriptReportSpamCell *)self setNeedsLayout];
}

@end