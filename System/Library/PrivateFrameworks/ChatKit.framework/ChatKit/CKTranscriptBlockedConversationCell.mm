@interface CKTranscriptBlockedConversationCell
- (CGSize)layoutSizeForWidth:(double)width applyLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptBlockedConversationCell)initWithFrame:(CGRect)frame;
- (NSAttributedString)attributedButtonText;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)setAttributedButtonText:(id)text;
@end

@implementation CKTranscriptBlockedConversationCell

- (CKTranscriptBlockedConversationCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKTranscriptBlockedConversationCell;
  v3 = [(CKTranscriptLabelCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:CKIsRunningInMacCatalyst() == 0];
    v5 = +[CKUIBehavior sharedBehaviors];
    transcriptLabelAccessoryButtonConfiguration = [v5 transcriptLabelAccessoryButtonConfiguration];
    [v4 setConfiguration:transcriptLabelAccessoryButtonConfiguration];

    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:v4];

    [(CKTranscriptBlockedConversationCell *)v3 setLeaveConversationButton:v4];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CKTranscriptBlockedConversationCell *)self layoutSizeForWidth:0 applyLayout:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviewsForAlignmentContents
{
  v4.receiver = self;
  v4.super_class = CKTranscriptBlockedConversationCell;
  [(CKTranscriptStampCell *)&v4 layoutSubviewsForAlignmentContents];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  [(CKTranscriptBlockedConversationCell *)self layoutSizeForWidth:1 applyLayout:v3];
}

- (CGSize)layoutSizeForWidth:(double)width applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v8 = v7;
  v10 = v9;
  label = [(CKTranscriptLabelCell *)self label];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  label2 = [(CKTranscriptLabelCell *)self label];
  if (label2)
  {
    v16 = label2;
    label3 = [(CKTranscriptLabelCell *)self label];
    attributedText = [label3 attributedText];

    if (attributedText)
    {
      label4 = [(CKTranscriptLabelCell *)self label];
      attributedText2 = [label4 attributedText];
      [attributedText2 boundingRectWithSize:1 options:0 context:{width, 1.79769313e308}];
      v12 = v21;
      v13 = v22;
      v14 = v23;
    }
  }

  if (CKMainScreenScale_once_51 != -1)
  {
    [CKTranscriptBlockedConversationCell layoutSizeForWidth:applyLayout:];
  }

  v24 = *&CKMainScreenScale_sMainScreenScale_51;
  if (*&CKMainScreenScale_sMainScreenScale_51 == 0.0)
  {
    v24 = 1.0;
  }

  v25 = floor((v8 + (v10 - v13) * 0.5) * v24) / v24;
  [label setNumberOfLines:0];
  leaveConversationButton = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton];
  attributedButtonText = [(CKTranscriptBlockedConversationCell *)self attributedButtonText];
  v28 = [attributedButtonText length];

  if (v28)
  {
    v46 = v13;
    v29 = v12;
    v30 = +[CKUIBehavior sharedBehaviors];
    [v30 mediumTranscriptSpace];
    v32 = v31;
    widthCopy = width;
    [leaveConversationButton sizeThatFits:{width, 1.79769313e308}];
    v34 = v33;
    v36 = v35;
    if (CKMainScreenScale_once_51 != -1)
    {
      [CKTranscriptBlockedConversationCell layoutSizeForWidth:applyLayout:];
    }

    v37 = *&CKMainScreenScale_sMainScreenScale_51;
    if (*&CKMainScreenScale_sMainScreenScale_51 == 0.0)
    {
      v37 = 1.0;
    }

    v38 = floor((v8 + (v10 - v34) * 0.5) * v37) / v37;
    v49.origin.x = v25;
    v49.origin.y = v29;
    v49.size.width = v46;
    v49.size.height = v14;
    v39 = v32 + CGRectGetMaxY(v49);
    configuration = [leaveConversationButton configuration];
    background = [configuration background];
    [background cornerRadius];
    v43 = v39 + v42 * 0.5;

    if (layoutCopy)
    {
      [leaveConversationButton setHidden:0];
      [label setFrame:{v25, v29, v46, v14}];
      [leaveConversationButton setFrame:{v38, v43, v34, v36}];
      [leaveConversationButton __ck_ensureMinimumTouchInsets];
    }

    v50.origin.x = v25;
    v50.origin.y = v29;
    v50.size.width = v46;
    v50.size.height = v14;
    v52.origin.x = v38;
    v52.origin.y = v43;
    v52.size.width = v34;
    v52.size.height = v36;
    v51 = CGRectUnion(v50, v52);
    v14 = v51.size.height + fmax(44.0 - v36, 0.0) * 0.5;

    width = widthCopy;
  }

  else if (layoutCopy)
  {
    [leaveConversationButton setHidden:1];
    [label setFrame:{v25, v12, v13, v14}];
  }

  widthCopy2 = width;
  v45 = v14;
  result.height = v45;
  result.width = widthCopy2;
  return result;
}

- (void)addFilter:(id)filter
{
  v8.receiver = self;
  v8.super_class = CKTranscriptBlockedConversationCell;
  filterCopy = filter;
  [(CKTranscriptStampCell *)&v8 addFilter:filterCopy];
  v5 = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton:v8.receiver];
  [filterCopy contentAlpha];
  v7 = v6;

  [v5 setAlpha:v7];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKTranscriptBlockedConversationCell;
  [(CKTranscriptStampCell *)&v4 clearFilters];
  leaveConversationButton = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton];
  [leaveConversationButton setAlpha:1.0];
}

- (void)setAttributedButtonText:(id)text
{
  textCopy = text;
  attributedButtonText = [(CKTranscriptBlockedConversationCell *)self attributedButtonText];

  if (attributedButtonText != textCopy)
  {
    leaveConversationButton = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton];
    [leaveConversationButton setAttributedTitle:textCopy forState:0];

    [(CKTranscriptBlockedConversationCell *)self setNeedsLayout];
  }
}

- (NSAttributedString)attributedButtonText
{
  leaveConversationButton = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton];
  v3 = [leaveConversationButton attributedTitleForState:0];

  return v3;
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = CKTranscriptBlockedConversationCell;
  [(CKTranscriptStampCell *)&v2 prepareForReuse];
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v26[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptBlockedConversationCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69A5F40];
    v25 = *MEMORY[0x1E696A278];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calling into configureForChatItem: with an unexpected type: %@", objc_opt_class()];
    v26[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v19 = [v15 errorWithDomain:v16 code:0 userInfo:v18];

    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] forceAutoBugCaptureWithSubType:@"WrongChatItemForCKTranscriptCell" errorPayload:v19 type:@"CKTranscriptBlockedConversationCell" context:0];
  }

  v24.receiver = self;
  v24.super_class = CKTranscriptBlockedConversationCell;
  [(CKTranscriptStampCell *)&v24 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];
  [(CKTranscriptLabelCell *)self setAttributedText:transcriptText];

  iMChatItem = [itemCopy IMChatItem];
  if ([iMChatItem canLeaveChat] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    transcriptButtonText = [itemCopy transcriptButtonText];
    [(CKTranscriptBlockedConversationCell *)self setAttributedButtonText:transcriptButtonText];
  }
}

@end