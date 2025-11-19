@interface CKDownloadingPendingMessagesCell
- (CKDownloadingPendingMessagesCell)initWithFrame:(CGRect)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)setPendingMessageCountAttributedText:(id)a3;
@end

@implementation CKDownloadingPendingMessagesCell

- (CKDownloadingPendingMessagesCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKDownloadingPendingMessagesCell;
  v3 = [(CKTranscriptCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[_TtC7ChatKit39CKDownloadingPendingMessagesViewBuilder createDownloadingPendingMessagesViewInstanceForChatKit];
    v5 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v5 addSubview:v4];

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
  v11 = [(CKDownloadingPendingMessagesCell *)self pendingMessagesContentView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)setPendingMessageCountAttributedText:(id)a3
{
  v5 = a3;
  if (self->_pendingMessageCountAttributedText != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_pendingMessageCountAttributedText, a3);
    v6 = [(CKDownloadingPendingMessagesCell *)self pendingMessagesContentView];
    [v6 updateMessageCountWith:self->_pendingMessageCountAttributedText];

    v5 = v7;
  }
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v26.receiver = self;
  v26.super_class = CKDownloadingPendingMessagesCell;
  [(CKTranscriptCell *)&v26 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 IMChatItem];
  objc_opt_class();
  LOBYTE(v9) = objc_opt_isKindOfClass();

  if (v9)
  {
    v14 = [v12 IMChatItem];
    v15 = [v14 pendingIncomingSatelliteMessageCount];
    -[CKDownloadingPendingMessagesCell setTotalSatelliteMessageCount:](self, "setTotalSatelliteMessageCount:", [v14 totalSatelliteMessageCount]);
    v16 = [(CKDownloadingPendingMessagesCell *)self totalSatelliteMessageCount]- v15 + 1;
    v17 = MEMORY[0x1E696AEC0];
    v18 = CKFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"NUMBER_OF_REMAINING_PENDING_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
    v20 = [v17 localizedStringWithFormat:v19, v16, -[CKDownloadingPendingMessagesCell totalSatelliteMessageCount](self, "totalSatelliteMessageCount")];

    v21 = [MEMORY[0x1E69DC668] sharedApplication];
    v22 = [v21 userInterfaceLayoutDirection];

    if (v22 == 1)
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