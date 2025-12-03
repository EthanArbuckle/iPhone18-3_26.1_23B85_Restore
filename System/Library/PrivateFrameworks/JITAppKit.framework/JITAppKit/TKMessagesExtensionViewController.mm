@interface TKMessagesExtensionViewController
- (void)didCancelSendingMessage:(id)message conversation:(id)conversation;
- (void)didReceiveMessage:(id)message conversation:(id)conversation;
- (void)didResignActiveWithConversation:(id)conversation;
- (void)didStartSendingMessage:(id)message conversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation TKMessagesExtensionViewController

- (void)willBecomeActiveWithConversation:(id)conversation
{
  v7[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, conversation);
  v3 = selfCopy;
  v7[0] = location[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(TKMessagesExtensionViewController *)v3 emitTMLSignal:@"willBecomeActive" withArguments:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didResignActiveWithConversation:(id)conversation
{
  v7[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, conversation);
  v3 = selfCopy;
  v7[0] = location[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(TKMessagesExtensionViewController *)v3 emitTMLSignal:@"didResignActive" withArguments:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessage:(id)message conversation:(id)conversation
{
  v10[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v7 = 0;
  objc_storeStrong(&v7, conversation);
  v5 = selfCopy;
  v10[0] = location[0];
  v10[1] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(TKMessagesExtensionViewController *)v5 emitTMLSignal:@"didReceive" withArguments:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didStartSendingMessage:(id)message conversation:(id)conversation
{
  v10[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v7 = 0;
  objc_storeStrong(&v7, conversation);
  v5 = selfCopy;
  v10[0] = location[0];
  v10[1] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(TKMessagesExtensionViewController *)v5 emitTMLSignal:@"didStartSending" withArguments:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didCancelSendingMessage:(id)message conversation:(id)conversation
{
  v10[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v7 = 0;
  objc_storeStrong(&v7, conversation);
  v5 = selfCopy;
  v10[0] = location[0];
  v10[1] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(TKMessagesExtensionViewController *)v5 emitTMLSignal:@"didCancelSendingMessage" withArguments:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:style];
  v6[0] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(TKMessagesExtensionViewController *)self emitTMLSignal:@"willTransitionToPresentationStyle" withArguments:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:style];
  v6[0] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(TKMessagesExtensionViewController *)self emitTMLSignal:@"didTransitionToPresentationStyle" withArguments:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

@end