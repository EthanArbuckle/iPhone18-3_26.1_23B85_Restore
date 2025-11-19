@interface HUEditOutgoingInvitationViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUEditOutgoingInvitationViewController)initWithItem:(id)a3 home:(id)a4;
- (id)_messageForInvitationState:(int64_t)a3;
- (id)user;
- (void)_cancelOutgoingInvitation:(BOOL)a3;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HUEditOutgoingInvitationViewController

- (HUEditOutgoingInvitationViewController)initWithItem:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HUEditOutgoingInvitationItemManager alloc];
  v9 = [v7 copy];

  v10 = [(HUEditOutgoingInvitationItemManager *)v8 initWithDelegate:self sourceItem:v9 home:v6];
  v13.receiver = self;
  v13.super_class = HUEditOutgoingInvitationViewController;
  v11 = [(HUUserTableViewController *)&v13 initWithUserItemManager:v10 home:v6];

  if (v11)
  {
    objc_storeStrong(&v11->_editOutgoingInvitationItemManager, v10);
  }

  return v11;
}

- (id)user
{
  v2 = [(HUEditOutgoingInvitationViewController *)self editOutgoingInvitationItemManager];
  v3 = [v2 outgoingInvitation];
  v4 = [v3 invitee];

  return v4;
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUEditOutgoingInvitationViewController;
  [(HUItemTableViewController *)&v8 itemManager:a3 didUpdateResultsForSourceItem:a4];
  v5 = [(HUEditOutgoingInvitationViewController *)self editOutgoingInvitationItemManager];
  v6 = [v5 outgoingInvitation];
  v7 = -[HUEditOutgoingInvitationViewController _messageForInvitationState:](self, "_messageForInvitationState:", [v6 invitationState]);
  [(HUUserTableViewController *)self setHeaderMessage:v7];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUEditOutgoingInvitationViewController *)self editOutgoingInvitationItemManager];
  v9 = [v8 inviteAgainItem];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v11 = objc_opt_class();
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUEditOutgoingInvitationViewController;
    v11 = [(HUUserTableViewController *)&v14 cellClassForItem:v6 indexPath:v7];
  }

  v12 = v11;

  return v12;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = HUEditOutgoingInvitationViewController;
  v9 = a4;
  [(HUUserTableViewController *)&v14 setupCell:v8 forItem:v9 indexPath:a5];
  v10 = [(HUEditOutgoingInvitationViewController *)self editOutgoingInvitationItemManager:v14.receiver];
  v11 = [v10 inviteAgainItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = v8;
    [v13 setDestructive:0];
    [v13 setUseFullWidthSeparator:1];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HUEditOutgoingInvitationViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v14 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager:v14.receiver];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v10 = [(HUEditOutgoingInvitationViewController *)self editOutgoingInvitationItemManager];
  v11 = [v10 inviteAgainItem];
  v12 = [v9 isEqual:v11];

  [v7 deselectRowAtIndexPath:v6 animated:1];
  [(HUEditOutgoingInvitationViewController *)self _cancelOutgoingInvitation:v12];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[HUEditOutgoingInvitationViewController tableView:didSelectRowAtIndexPath:]";
    v17 = 2112;
    v18 = v9;
    v19 = 1024;
    v20 = v12;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "(%s) User tapped %@. resendInvitation = %{BOOL}d", buf, 0x1Cu);
  }
}

- (void)_cancelOutgoingInvitation:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUEditOutgoingInvitationViewController *)self editOutgoingInvitationItemManager];
  v6 = [v5 outgoingInvitation];

  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 home];

  v9 = [(HUEditOutgoingInvitationViewController *)self user];
  v10 = [v9 userID];

  v11 = MEMORY[0x277D2C900];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke;
  v24[3] = &unk_277DB7508;
  v12 = v6;
  v25 = v12;
  v13 = [v11 futureWithErrorOnlyHandlerAdapterBlock:v24];
  if (v3)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke_2;
    v21[3] = &unk_277DBE0A0;
    v22 = v10;
    v23 = v8;
    v14 = [v13 flatMap:v21];

    v13 = v14;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke_4;
  v18[3] = &unk_277DB7720;
  v19 = v8;
  v20 = v12;
  v15 = v12;
  v16 = v8;
  v17 = [v13 addCompletionBlock:v18];
  [(HUUserTableViewController *)self performRemovalAction:v13];
}

id __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D2C900];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke_3;
  v5[3] = &unk_277DBD260;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 futureWithCompletionHandlerAdapterBlock:v5];

  return v3;
}

void __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD1EF8];
  v4 = a2;
  v5 = [[v3 alloc] initWithUser:*(a1 + 32) administrator:0 remoteAccess:1];
  v6 = *(a1 + 40);
  v8[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v6 inviteUsersWithInviteInformation:v7 completionHandler:v4];
}

void __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke_5;
  v3[3] = &unk_277DB9920;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 dispatchHomeObserverMessage:v3 sender:0];
}

void __68__HUEditOutgoingInvitationViewController__cancelOutgoingInvitation___block_invoke_5(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v6[0] = *(a1 + 40);
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [v3 home:v4 didUpdateStateForOutgoingInvitations:v5];
  }
}

- (id)_messageForInvitationState:(int64_t)a3
{
  v5 = [(HUEditOutgoingInvitationViewController *)self user];
  v6 = [v5 userID];

  v13 = 0;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
LABEL_8:
        v14 = [(HUItemTableViewController *)self itemManager];
        v15 = [v14 home];
        v26 = [v15 name];
        v13 = HULocalizedStringWithFormat(@"HUUserOutgoingInvitationAcceptedMessage", @"%@%@", v16, v17, v18, v19, v20, v21, v6);

        goto LABEL_15;
      }

      HULocalizedStringWithFormat(@"HUUserOutgoingInvitationDeclinedMessage", @"%@", v7, v8, v9, v10, v11, v12, v6);
      goto LABEL_14;
    }

    if (a3 != 7)
    {
      if (a3 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_12:
    HULocalizedStringWithFormat(@"HUUserOutgoingInvitationPendingMessage", @"%@", v7, v8, v9, v10, v11, v12, v6);
    goto LABEL_14;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_11:
  HULocalizedStringWithFormat(@"HUUserOutgoingInvitationFailedMessage", @"%@", v7, v8, v9, v10, v11, v12, v6);
  v13 = LABEL_14:;
LABEL_15:
  v22 = objc_alloc(MEMORY[0x277CCA898]);
  v23 = HUPriorityMessageDefaultAttributedStringAttributes();
  v24 = [v22 initWithString:v13 attributes:v23];

  return v24;
}

@end