@interface CKDownloadingPendingMessagesCell
- (CKDownloadingPendingMessagesCell)initWithFrame:(CGRect)frame;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)setPendingMessageCountAttributedText:(id)text;
@end

@implementation CKDownloadingPendingMessagesCell

- (CKDownloadingPendingMessagesCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKDownloadingPendingMessagesCell;
  v3 = [(CKTranscriptCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[_TtC7ChatKit39CKDownloadingPendingMessagesViewBuilder createDownloadingPendingMessagesViewInstanceForChatKit];
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:v4];

    [(CKDownloadingPendingMessagesCell *)v3 setPendingMessagesContentView:v4];
  }

  return v3;
}

- (void)layoutSubviewsForAlignmentContents
{
  v12.receiver = self;
  v12.super_class = CKDownloadingPendingMessagesCell;
  [(CKEditableCollectionViewCell *)&v12 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  pendingMessagesContentView = [(CKDownloadingPendingMessagesCell *)self pendingMessagesContentView];
  [pendingMessagesContentView setFrame:{v4, v6, v8, v10}];
}

- (void)setPendingMessageCountAttributedText:(id)text
{
  textCopy = text;
  if (self->_pendingMessageCountAttributedText != textCopy)
  {
    v7 = textCopy;
    objc_storeStrong(&self->_pendingMessageCountAttributedText, text);
    pendingMessagesContentView = [(CKDownloadingPendingMessagesCell *)self pendingMessagesContentView];
    [pendingMessagesContentView updateMessageCountWith:self->_pendingMessageCountAttributedText];

    textCopy = v7;
  }
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  v26.receiver = self;
  v26.super_class = CKDownloadingPendingMessagesCell;
  [(CKTranscriptCell *)&v26 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  iMChatItem = [itemCopy IMChatItem];
  objc_opt_class();
  LOBYTE(animatedCopy) = objc_opt_isKindOfClass();

  if (animatedCopy)
  {
    iMChatItem2 = [itemCopy IMChatItem];
    pendingIncomingSatelliteMessageCount = [iMChatItem2 pendingIncomingSatelliteMessageCount];
    -[CKDownloadingPendingMessagesCell setTotalSatelliteMessageCount:](self, "setTotalSatelliteMessageCount:", [iMChatItem2 totalSatelliteMessageCount]);
    v16 = [(CKDownloadingPendingMessagesCell *)self totalSatelliteMessageCount]- pendingIncomingSatelliteMessageCount + 1;
    v17 = MEMORY[0x1E696AEC0];
    v18 = CKFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"NUMBER_OF_REMAINING_PENDING_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
    v20 = [v17 localizedStringWithFormat:v19, v16, -[CKDownloadingPendingMessagesCell totalSatelliteMessageCount](self, "totalSatelliteMessageCount")];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v23 = @"\u200F";
    }

    else
    {
      v23 = @"\u200E";
    }

    v24 = [(__CFString *)v23 stringByAppendingString:v20];

    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v24];
    [(CKDownloadingPendingMessagesCell *)self setPendingMessageCountAttributedText:v25];
  }
}

@end