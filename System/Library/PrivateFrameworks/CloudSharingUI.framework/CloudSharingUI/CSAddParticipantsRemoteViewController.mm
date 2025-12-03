@interface CSAddParticipantsRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (CSAddParticipantsPublicController)publicController;
- (void)dismissViewControllerWithError:(id)error shareURL:(id)l ckShare:(id)share;
- (void)showContactPickerFromSourceRect:(id)rect;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation CSAddParticipantsRemoteViewController

+ (id)serviceViewControllerInterface
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856E0298];
  v3 = MEMORY[0x277CBEB98];
  v32[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_setShare_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_setCollaborationOptionsGroups_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v30 = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_setAddressingViewModel_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  v29 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v14 = [v12 setWithArray:v13];
  [v2 setClasses:v14 forSelector:sel_setSandboxingURLWrapper_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v17 = [v15 setWithArray:v16];
  [v2 setClasses:v17 forSelector:sel_setContainerSetupInfo_ argumentIndex:0 ofReply:0];

  v18 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v20 = [v18 setWithArray:v19];
  [v2 setClasses:v20 forSelector:sel_userDidSelectContact_contactProperty_ argumentIndex:0 ofReply:0];

  v21 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v23 = [v21 setWithArray:v22];
  [v2 setClasses:v23 forSelector:sel_userDidSelectContact_contactProperty_ argumentIndex:1 ofReply:0];

  v24 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)exportedInterface
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856D4030];
  v3 = CKErrorUserInfoClasses();
  v4 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v6 = [v4 setWithArray:v5];
  v7 = [v3 setByAddingObjectsFromSet:v6];
  [v2 setClasses:v7 forSelector:sel_dismissViewControllerWithError_shareURL_ckShare_ argumentIndex:0 ofReply:0];

  v8 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v10 = [v8 setWithArray:v9];
  [v2 setClasses:v10 forSelector:sel_showContactPickerFromSourceRect_ argumentIndex:0 ofReply:0];

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = CSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CSAddParticipantsRemoteViewController *)errorCopy viewServiceDidTerminateWithError:v5];
  }

  [(CSAddParticipantsRemoteViewController *)self dismissViewControllerWithError:errorCopy shareURL:0 ckShare:0];
  v6.receiver = self;
  v6.super_class = CSAddParticipantsRemoteViewController;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:errorCopy];
}

- (void)dismissViewControllerWithError:(id)error shareURL:(id)l ckShare:(id)share
{
  shareCopy = share;
  lCopy = l;
  errorCopy = error;
  publicController = [(CSAddParticipantsRemoteViewController *)self publicController];
  [publicController dismissViewControllerWithError:errorCopy shareURL:lCopy ckShare:shareCopy];
}

- (void)showContactPickerFromSourceRect:(id)rect
{
  rectCopy = rect;
  publicController = [(CSAddParticipantsRemoteViewController *)self publicController];
  [publicController showContactPickerFromSourceRect:rectCopy];
}

- (CSAddParticipantsPublicController)publicController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicController);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243B1E000, a2, OS_LOG_TYPE_ERROR, "CSAddParticipantsRemoteViewController view service did terminate with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end