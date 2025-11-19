@interface UIAlertController(MailUI)
+ (id)mf_actionSheetWithTitle:()MailUI cancellationHandler:;
- (void)mf_addAvatarWithAvatarGenerator:()MailUI messageListItem:;
- (void)mf_addCancelActionWithHandler:()MailUI;
- (void)mf_presentFromViewController:()MailUI withSource:;
@end

@implementation UIAlertController(MailUI)

+ (id)mf_actionSheetWithTitle:()MailUI cancellationHandler:
{
  v5 = MEMORY[0x277D75110];
  v6 = a4;
  v7 = [v5 alertControllerWithTitle:a3 message:0 preferredStyle:0];
  [v7 setModalPresentationStyle:7];
  [v7 mf_addCancelActionWithHandler:v6];

  return v7;
}

- (void)mf_addAvatarWithAvatarGenerator:()MailUI messageListItem:
{
  v6 = a3;
  v7 = MEMORY[0x277D75D18];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v11 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
  v12 = [[MUIAvatarImageContext alloc] initWithMessageListItem:v8];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__UIAlertController_MailUI__mf_addAvatarWithAvatarGenerator_messageListItem___block_invoke;
  v16[3] = &unk_278189F30;
  v17 = v10;
  v18 = v11;
  v19 = a1;
  v13 = v11;
  v14 = v10;
  v15 = [v6 contactForContext:v12 handler:v16];
}

- (void)mf_addCancelActionWithHandler:()MailUI
{
  v4 = MEMORY[0x277D750F8];
  v5 = a3;
  v6 = _EFLocalizedString();
  v7 = [v4 actionWithTitle:v6 style:1 handler:v5];

  [a1 addAction:v7];
}

- (void)mf_presentFromViewController:()MailUI withSource:
{
  v6 = a4;
  v8 = a3;
  v7 = [a1 popoverPresentationController];
  [v7 setSourceItem:v6];

  [v8 presentViewController:a1 animated:1 completion:0];
}

@end