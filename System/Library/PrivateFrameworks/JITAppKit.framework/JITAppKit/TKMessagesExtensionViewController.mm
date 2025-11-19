@interface TKMessagesExtensionViewController
- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4;
- (void)didReceiveMessage:(id)a3 conversation:(id)a4;
- (void)didResignActiveWithConversation:(id)a3;
- (void)didStartSendingMessage:(id)a3 conversation:(id)a4;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation TKMessagesExtensionViewController

- (void)willBecomeActiveWithConversation:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v7[0] = location[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(TKMessagesExtensionViewController *)v3 emitTMLSignal:@"willBecomeActive" withArguments:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didResignActiveWithConversation:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v7[0] = location[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(TKMessagesExtensionViewController *)v3 emitTMLSignal:@"didResignActive" withArguments:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessage:(id)a3 conversation:(id)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = v9;
  v10[0] = location[0];
  v10[1] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(TKMessagesExtensionViewController *)v5 emitTMLSignal:@"didReceive" withArguments:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didStartSendingMessage:(id)a3 conversation:(id)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = v9;
  v10[0] = location[0];
  v10[1] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(TKMessagesExtensionViewController *)v5 emitTMLSignal:@"didStartSending" withArguments:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = v9;
  v10[0] = location[0];
  v10[1] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(TKMessagesExtensionViewController *)v5 emitTMLSignal:@"didCancelSendingMessage" withArguments:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  v6[0] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(TKMessagesExtensionViewController *)self emitTMLSignal:@"willTransitionToPresentationStyle" withArguments:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  v6[0] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(TKMessagesExtensionViewController *)self emitTMLSignal:@"didTransitionToPresentationStyle" withArguments:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

@end