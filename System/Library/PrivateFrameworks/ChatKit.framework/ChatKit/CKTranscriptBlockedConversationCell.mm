@interface CKTranscriptBlockedConversationCell
- (CGSize)layoutSizeForWidth:(double)a3 applyLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKTranscriptBlockedConversationCell)initWithFrame:(CGRect)a3;
- (NSAttributedString)attributedButtonText;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)prepareForReuse;
- (void)setAttributedButtonText:(id)a3;
@end

@implementation CKTranscriptBlockedConversationCell

- (CKTranscriptBlockedConversationCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKTranscriptBlockedConversationCell;
  v3 = [(CKTranscriptLabelCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:CKIsRunningInMacCatalyst() == 0];
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 transcriptLabelAccessoryButtonConfiguration];
    [v4 setConfiguration:v6];

    v7 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v7 addSubview:v4];

    [(CKTranscriptBlockedConversationCell *)v3 setLeaveConversationButton:v4];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CKTranscriptBlockedConversationCell *)self layoutSizeForWidth:0 applyLayout:a3.width, a3.height];
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

- (CGSize)layoutSizeForWidth:(double)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v8 = v7;
  v10 = v9;
  v11 = [(CKTranscriptLabelCell *)self label];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(CKTranscriptLabelCell *)self label];
  if (v15)
  {
    v16 = v15;
    v17 = [(CKTranscriptLabelCell *)self label];
    v18 = [v17 attributedText];

    if (v18)
    {
      v19 = [(CKTranscriptLabelCell *)self label];
      v20 = [v19 attributedText];
      [v20 boundingRectWithSize:1 options:0 context:{a3, 1.79769313e308}];
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
  [v11 setNumberOfLines:0];
  v26 = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton];
  v27 = [(CKTranscriptBlockedConversationCell *)self attributedButtonText];
  v28 = [v27 length];

  if (v28)
  {
    v46 = v13;
    v29 = v12;
    v30 = +[CKUIBehavior sharedBehaviors];
    [v30 mediumTranscriptSpace];
    v32 = v31;
    v47 = a3;
    [v26 sizeThatFits:{a3, 1.79769313e308}];
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
    v40 = [v26 configuration];
    v41 = [v40 background];
    [v41 cornerRadius];
    v43 = v39 + v42 * 0.5;

    if (v4)
    {
      [v26 setHidden:0];
      [v11 setFrame:{v25, v29, v46, v14}];
      [v26 setFrame:{v38, v43, v34, v36}];
      [v26 __ck_ensureMinimumTouchInsets];
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

    a3 = v47;
  }

  else if (v4)
  {
    [v26 setHidden:1];
    [v11 setFrame:{v25, v12, v13, v14}];
  }

  v44 = a3;
  v45 = v14;
  result.height = v45;
  result.width = v44;
  return result;
}

- (void)addFilter:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKTranscriptBlockedConversationCell;
  v4 = a3;
  [(CKTranscriptStampCell *)&v8 addFilter:v4];
  v5 = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton:v8.receiver];
  [v4 contentAlpha];
  v7 = v6;

  [v5 setAlpha:v7];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKTranscriptBlockedConversationCell;
  [(CKTranscriptStampCell *)&v4 clearFilters];
  v3 = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton];
  [v3 setAlpha:1.0];
}

- (void)setAttributedButtonText:(id)a3
{
  v6 = a3;
  v4 = [(CKTranscriptBlockedConversationCell *)self attributedButtonText];

  if (v4 != v6)
  {
    v5 = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton];
    [v5 setAttributedTitle:v6 forState:0];

    [(CKTranscriptBlockedConversationCell *)self setNeedsLayout];
  }
}

- (NSAttributedString)attributedButtonText
{
  v2 = [(CKTranscriptBlockedConversationCell *)self leaveConversationButton];
  v3 = [v2 attributedTitleForState:0];

  return v3;
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = CKTranscriptBlockedConversationCell;
  [(CKTranscriptStampCell *)&v2 prepareForReuse];
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
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

    v20 = [MEMORY[0x1E69A8168] sharedInstance];
    [v20 forceAutoBugCaptureWithSubType:@"WrongChatItemForCKTranscriptCell" errorPayload:v19 type:@"CKTranscriptBlockedConversationCell" context:0];
  }

  v24.receiver = self;
  v24.super_class = CKTranscriptBlockedConversationCell;
  [(CKTranscriptStampCell *)&v24 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
  v21 = [v12 transcriptText];
  [(CKTranscriptLabelCell *)self setAttributedText:v21];

  v22 = [v12 IMChatItem];
  if ([v22 canLeaveChat] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v23 = [v12 transcriptButtonText];
    [(CKTranscriptBlockedConversationCell *)self setAttributedButtonText:v23];
  }
}

@end