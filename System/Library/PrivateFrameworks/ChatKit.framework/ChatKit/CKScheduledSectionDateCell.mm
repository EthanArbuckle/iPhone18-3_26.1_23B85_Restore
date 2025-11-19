@interface CKScheduledSectionDateCell
+ (id)createStampLabelView;
- (CGSize)layoutSizeForWidth:(double)a3 applyLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKScheduledSectionDateCell)initWithFrame:(CGRect)a3;
- (CKScheduledSectionDateCellDelegate)delegate;
- (id)_deferredMenuForEditScheduleButton;
- (id)scheduledSectionDateStringWithControlState:(unint64_t)a3;
- (void)_updateEditScheduleButtonAttributedTitleForControlState:(unint64_t)a3;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)handleDeleteAllAction:(id)a3;
- (void)handleEditDateAction:(id)a3;
- (void)handleSendNowAction:(id)a3;
- (void)layoutSubviewsForAlignmentContents;
- (void)setDisplayEditButton:(BOOL)a3;
- (void)setTimeString:(id)a3;
@end

@implementation CKScheduledSectionDateCell

- (CKScheduledSectionDateCell)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = CKScheduledSectionDateCell;
  v3 = [(CKTranscriptStampCell *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [CKTranscriptLegibilityButton buttonWithType:1];
    [(CKEditableCollectionViewCell *)v3 setEffect:0];
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 transcriptSendLaterButtonConfiguration];
    [(CKTranscriptLegibilityButton *)v4 setConfiguration:v6];

    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 transcriptSendLaterButtonConfigurationUpdateHandler];
    [(CKTranscriptLegibilityButton *)v4 setConfigurationUpdateHandler:v8];

    v9 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v9 addSubview:v4];

    editScheduleButton = v3->_editScheduleButton;
    v3->_editScheduleButton = v4;
    v11 = v4;

    v12 = [(CKScheduledSectionDateCell *)v3 _deferredMenuForEditScheduleButton];
    [(CKTranscriptLegibilityButton *)v3->_editScheduleButton setMenu:v12];

    [(CKTranscriptLegibilityButton *)v3->_editScheduleButton setShowsMenuAsPrimaryAction:1];
  }

  return v3;
}

- (void)setDisplayEditButton:(BOOL)a3
{
  if (self->_displayEditButton != a3)
  {
    self->_displayEditButton = a3;
    [(CKTranscriptLegibilityButton *)self->_editScheduleButton setEnabled:?];

    [(CKScheduledSectionDateCell *)self _updateEditScheduleButtonAttributedTitleForControlState:0];
  }
}

- (void)setTimeString:(id)a3
{
  v5 = a3;
  if (self->_timeString != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_timeString, a3);
    [(CKScheduledSectionDateCell *)self _updateEditScheduleButtonAttributedTitleForControlState:0];
    [(CKTranscriptStampCell *)self contentAlignmentRect];
    [(CKScheduledSectionDateCell *)self layoutSizeForWidth:1 applyLayout:v6];
    v5 = v7;
  }
}

- (void)_updateEditScheduleButtonAttributedTitleForControlState:(unint64_t)a3
{
  v5 = [(CKScheduledSectionDateCell *)self scheduledSectionDateStringWithControlState:?];
  [(CKTranscriptLegibilityButton *)self->_editScheduleButton setAttributedTitle:v5 forState:a3];
}

- (id)_deferredMenuForEditScheduleButton
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC928];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke;
  v9[3] = &unk_1E72F3C78;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v4 = [v3 elementWithUncachedProvider:v9];
  v5 = MEMORY[0x1E69DCC60];
  v12[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [v5 menuWithChildren:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v41 = WeakRetained;
    v43 = v3;
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v6 = [*(a1 + 32) delegate];
    v7 = [v6 dateCellRequestedScheduledMessageCount:*(a1 + 32)];

    v8 = MEMORY[0x1E696AEC0];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"SEND_LATER_SEND_MESSAGE_NOW" value:&stru_1F04268F8 table:@"ChatKit"];
    v11 = [v8 localizedStringWithFormat:v10, v7];

    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    v13 = [v12 userInterfaceLayoutDirection];

    if (v13 == 1)
    {
      v14 = @"\u200F";
    }

    else
    {
      v14 = @"\u200E";
    }

    v15 = [(__CFString *)v14 stringByAppendingString:v11];

    v16 = MEMORY[0x1E696AEC0];
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"SEND_LATER_DELETE_ALL_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    v19 = [v16 localizedStringWithFormat:v18, v7];

    v20 = [MEMORY[0x1E69DC668] sharedApplication];
    v21 = [v20 userInterfaceLayoutDirection];

    if (v21 == 1)
    {
      v22 = @"\u200F";
    }

    else
    {
      v22 = @"\u200E";
    }

    v23 = [(__CFString *)v22 stringByAppendingString:v19];

    v24 = +[CKUIBehavior sharedBehaviors];
    v25 = [v24 sendLaterScheduledSectionMenuSendNowImage];

    v26 = MEMORY[0x1E69DC628];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_224;
    v48[3] = &unk_1E72EBCD8;
    objc_copyWeak(v49, (a1 + 40));
    v39 = v15;
    v40 = v25;
    v27 = [v26 actionWithTitle:v15 image:v25 identifier:0 handler:v48];
    v28 = MEMORY[0x1E69DC628];
    v29 = CKFrameworkBundle();
    v30 = [v29 localizedStringForKey:@"EDIT_TIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_233;
    v46[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v47, (a1 + 40));
    v32 = [v28 actionWithTitle:v30 image:v31 identifier:0 handler:v46];

    v33 = MEMORY[0x1E69DC628];
    v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_237;
    v44[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v45, (a1 + 40));
    v35 = v33;
    v36 = v23;
    v37 = [v35 actionWithTitle:v23 image:v34 identifier:0 handler:v44];

    v3 = v43;
    if (!CKIsRunningInMacCatalyst())
    {
      [v37 setAttributes:2];
    }

    [v42 addObject:v27];
    [v42 addObject:v32];
    [v42 addObject:v37];
    (v43)[2](v43, v42);

    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);

    objc_destroyWeak(v49);
    v5 = v41;
  }

  else
  {
    v38 = IMLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_cold_1();
    }

    v3[2](v3, MEMORY[0x1E695E0F0]);
  }
}

void __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_224(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleSendNowAction:v3];
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_224_cold_1();
    }
  }
}

void __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_233(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleEditDateAction:v3];
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_233_cold_1();
    }
  }
}

void __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_237(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Delete all messages", v7, 2u);
      }
    }

    [WeakRetained handleDeleteAllAction:v3];
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_237_cold_1();
    }
  }
}

- (void)handleSendNowAction:(id)a3
{
  v4 = [(CKScheduledSectionDateCell *)self delegate];
  [v4 dateCellRequestedScheduledMessageModification:self scheduleType:0 deliveryTime:0];
}

- (void)handleDeleteAllAction:(id)a3
{
  v4 = [(CKScheduledSectionDateCell *)self delegate];
  [v4 dateCellRequestedDeleteAllMessages:self];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CKScheduledSectionDateCell *)self layoutSizeForWidth:0 applyLayout:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviewsForAlignmentContents
{
  v4.receiver = self;
  v4.super_class = CKScheduledSectionDateCell;
  [(CKTranscriptStampCell *)&v4 layoutSubviewsForAlignmentContents];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  [(CKScheduledSectionDateCell *)self layoutSizeForWidth:1 applyLayout:v3];
}

+ (id)createStampLabelView
{
  v2 = [CKTranscriptLegibilityLabel alloc];
  v3 = [(CKTranscriptLegibilityLabel *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (CGSize)layoutSizeForWidth:(double)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v8 = v7;
  v10 = v9;
  v11 = [(CKScheduledSectionDateCell *)self editScheduleButton];
  [v11 sizeThatFits:{a3, 1.79769313e308}];
  v13 = v12;
  v15 = v14;
  if (CKMainScreenScale_once_54 == -1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [CKScheduledSectionDateCell layoutSizeForWidth:applyLayout:];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v16 = fmin(a3, v13);
  v17 = *&CKMainScreenScale_sMainScreenScale_54;
  if (*&CKMainScreenScale_sMainScreenScale_54 == 0.0)
  {
    v17 = 1.0;
  }

  [v11 setFrame:{floor((v8 + (v10 - v16) * 0.5) * v17) / v17, 0.0, v16, v15}];
  [v11 __ck_ensureMinimumTouchInsets];
LABEL_6:

  v18 = a3;
  v19 = v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)addFilter:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKScheduledSectionDateCell;
  v4 = a3;
  [(CKTranscriptStampCell *)&v8 addFilter:v4];
  v5 = [(CKScheduledSectionDateCell *)self editScheduleButton:v8.receiver];
  [v4 contentAlpha];
  v7 = v6;

  [v5 setAlpha:v7];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKScheduledSectionDateCell;
  [(CKTranscriptStampCell *)&v4 clearFilters];
  v3 = [(CKScheduledSectionDateCell *)self editScheduleButton];
  [v3 setAlpha:1.0];
}

- (CKScheduledSectionDateCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v7.receiver = self;
  v7.super_class = CKScheduledSectionDateCell;
  [(CKTranscriptStampCell *)&v7 configureForChatItem:a3 context:a4 animated:a5 animationDuration:a7 animationCurve:a6];
}

- (void)handleEditDateAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190BDA7AC();
}

- (id)scheduledSectionDateStringWithControlState:(unint64_t)a3
{
  v4 = self;
  v5.super.isa = CKScheduledSectionDateCell.scheduledSectionDateString(controlState:)(a3).super.isa;

  return v5.super.isa;
}

@end