@interface CKConversationListCollectionViewRecentlyDeletedConversationCell
- (BOOL)hasUnreadMessagesForConversation:(id)a3;
- (BOOL)shouldAlwaysHideUnreadIndicatorForConversation:(id)a3;
- (id)_attributedStringForRecoverableSummaryLabelWithText:(id)a3;
- (unint64_t)_daysUntilDeletion:(id)a3;
- (void)updateSummaryLabel:(id)a3 conversation:(id)a4 fastPreview:(BOOL)a5;
@end

@implementation CKConversationListCollectionViewRecentlyDeletedConversationCell

- (void)updateSummaryLabel:(id)a3 conversation:(id)a4 fastPreview:(BOOL)a5
{
  v23 = a4;
  v7 = a3;
  v8 = [v23 chat];
  v9 = [v8 recoverableMessagesCount];

  v10 = [v23 chat];
  v11 = [v10 isDeletingIncomingMessages];

  if (v11)
  {
    v12 = [v23 chat];
    v13 = [v12 unreadRecoverableMessagesCount];
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = CKFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"RECENTLY_DELETED_CONVERSATIONLIST_CELL_SUMMARY_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v17 = [v14 localizedStringWithFormat:v16, v9, v13];

  v18 = [MEMORY[0x1E69DC668] sharedApplication];
  v19 = [v18 userInterfaceLayoutDirection];

  if (v19 == 1)
  {
    v20 = @"\u200F";
  }

  else
  {
    v20 = @"\u200E";
  }

  v21 = [(__CFString *)v20 stringByAppendingString:v17];

  v22 = [(CKConversationListCollectionViewRecentlyDeletedConversationCell *)self _attributedStringForRecoverableSummaryLabelWithText:v21];
  [v7 setAttributedText:v22];
}

- (id)_attributedStringForRecoverableSummaryLabelWithText:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 conversationListSummaryFont];

  v7 = [(CKConversationListCollectionViewConversationCell *)self summaryLabelTextColor];
  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4];

  v9 = [v8 length];
  [v8 addAttribute:*MEMORY[0x1E69DB648] value:v6 range:{0, v9}];
  [v8 addAttribute:*MEMORY[0x1E69DB650] value:v7 range:{0, v9}];

  return v8;
}

- (unint64_t)_daysUntilDeletion:(id)a3
{
  v3 = [a3 chat];
  v4 = [v3 earliestRecoverableMessageDeletionDate];
  v5 = [CKUtilities daysUntilRecentlyDeletedDeletionForDate:v4];

  return v5;
}

- (BOOL)shouldAlwaysHideUnreadIndicatorForConversation:(id)a3
{
  v3 = [a3 chat];
  v4 = [v3 isDeletingIncomingMessages];

  return v4 ^ 1;
}

- (BOOL)hasUnreadMessagesForConversation:(id)a3
{
  v3 = a3;
  v4 = [v3 chat];
  if ([v4 unreadRecoverableMessagesCount])
  {
    v5 = [v3 chat];
    v6 = [v5 isDeletingIncomingMessages];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end