@interface GKAuthenticateHostViewController
+ (id)authenticateExtension;
- (GKHostedAuthenticateViewController)delegate;
- (void)applicationWillTerminate:(id)terminate;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)messageFromExtension:(id)extension;
- (void)viewDidLoad;
@end

@implementation GKAuthenticateHostViewController

+ (id)authenticateExtension
{
  if (authenticateExtension_onceToken != -1)
  {
    +[GKAuthenticateHostViewController authenticateExtension];
  }

  v3 = authenticateExtension_extension;

  return v3;
}

void __57__GKAuthenticateHostViewController_authenticateExtension__block_invoke()
{
  v5 = 0;
  v0 = [MEMORY[0x277CCA9C8] _gkExtensionWithIdentifier:@"com.apple.GameCenterUI.GameCenterAuthenticateExtension" error:&v5];
  v1 = v5;
  v2 = authenticateExtension_extension;
  authenticateExtension_extension = v0;

  if (v1)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __57__GKAuthenticateHostViewController_authenticateExtension__block_invoke_cold_1(v1, v4);
    }
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = GKAuthenticateHostViewController;
  [(GKExtensionRemoteViewController *)&v5 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  willTerminate = [MEMORY[0x277D0BFD8] willTerminate];
  [defaultCenter addObserver:self selector:sel_applicationWillTerminate_ name:willTerminate object:0];
}

- (void)messageFromExtension:(id)extension
{
  extensionCopy = extension;
  v5 = MEMORY[0x277CCAAC8];
  v6 = GKExtensionProtocolSecureCodedClasses();
  v15 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:extensionCopy error:&v15];
  v8 = v15;

  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKAuthenticateHostViewController *)v8 messageFromExtension:v10];
    }
  }

  v11 = [v7 objectForKeyedSubscript:@"MessageCommandKey"];
  integerValue = [v11 integerValue];

  if (integerValue == 46)
  {
    delegate = [(GKAuthenticateHostViewController *)self delegate];
    [delegate onboardingFlowDidSignOut];
  }

  else
  {
    if (integerValue != 44)
    {
      v14.receiver = self;
      v14.super_class = GKAuthenticateHostViewController;
      [(GKExtensionRemoteViewController *)&v14 messageFromExtension:extensionCopy];
      goto LABEL_12;
    }

    delegate = [(GKAuthenticateHostViewController *)self delegate];
    [delegate setRotationLocked:0];
  }

LABEL_12:
}

- (void)extensionIsFinishing
{
  delegate = [(GKAuthenticateHostViewController *)self delegate];
  [delegate dismissViewControllerAnimated:1 completion:0];

  v4.receiver = self;
  v4.super_class = GKAuthenticateHostViewController;
  [(GKExtensionRemoteViewController *)&v4 extensionIsFinishing];
}

- (void)extensionIsCanceling
{
  v3 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
  delegate = [(GKAuthenticateHostViewController *)self delegate];
  [delegate setError:v3];

  delegate2 = [(GKAuthenticateHostViewController *)self delegate];
  [delegate2 dismissViewControllerAnimated:1 completion:0];

  v6.receiver = self;
  v6.super_class = GKAuthenticateHostViewController;
  [(GKExtensionRemoteViewController *)&v6 extensionIsCanceling];
}

- (void)applicationWillTerminate:(id)terminate
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"MessageCommandKey";
  v7[0] = &unk_286189288;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (GKHostedAuthenticateViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __57__GKAuthenticateHostViewController_authenticateExtension__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Error loading Game Center authenticate issue extension, %@", &v2, 0xCu);
}

- (void)messageFromExtension:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "error while decoding messageFromExtension arhive in GKAuthenticateHostViewController:%@", &v2, 0xCu);
}

@end