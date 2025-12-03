@interface MFMailMessageRelationshipAnalyzer
+ (BOOL)isMessage:(id)message addressedToMailingListForMessage:(id)forMessage;
+ (BOOL)isMessage:(id)message addressedToPreviousSender:(id)sender;
+ (BOOL)isMessage:(id)message responseToMessage:(id)toMessage previousSenders:(id)senders myEmailAddresses:(id)addresses;
+ (BOOL)isMessage:(id)message sentByAddress:(id)address;
+ (id)analysisOfConversation:(id)conversation;
+ (id)analyzeMessages:(id)messages myEmailAddresses:(id)addresses;
+ (id)myEmailAddresses;
+ (id)recipientsOfMessage:(id)message;
+ (id)sendersOfMessage:(id)message;
+ (unint64_t)relationOfMessage:(id)message toMessage:(id)toMessage;
+ (unint64_t)relationOfMessage:(id)message toMessage:(id)toMessage previousSenders:(id)senders myEmailAddresses:(id)addresses;
- (MFMailMessageRelationshipAnalyzer)initWithMessages:(id)messages relationships:(id)relationships;
- (unint64_t)relationOfMessage:(id)message;
- (void)dealloc;
@end

@implementation MFMailMessageRelationshipAnalyzer

+ (id)analysisOfConversation:(id)conversation
{
  v3 = [[self alloc] initWithMessages:conversation relationships:{objc_msgSend(self, "analyzeMessages:myEmailAddresses:", conversation, objc_msgSend(self, "myEmailAddresses"))}];

  return v3;
}

- (MFMailMessageRelationshipAnalyzer)initWithMessages:(id)messages relationships:(id)relationships
{
  v8.receiver = self;
  v8.super_class = MFMailMessageRelationshipAnalyzer;
  v6 = [(MFMailMessageRelationshipAnalyzer *)&v8 init];
  if (v6)
  {
    v6->_messages = [messages copy];
    v6->_relationships = [relationships copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMailMessageRelationshipAnalyzer;
  [(MFMailMessageRelationshipAnalyzer *)&v3 dealloc];
}

- (unint64_t)relationOfMessage:(id)message
{
  v4 = [(NSArray *)self->_messages indexOfObject:message];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [(NSArray *)self->_relationships objectAtIndex:v4];

  return [v6 unsignedIntegerValue];
}

+ (id)analyzeMessages:(id)messages myEmailAddresses:(id)addresses
{
  firstObject = [messages firstObject];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  [orderedSet addObjectsFromArray:{objc_msgSend(self, "sendersOfMessage:", firstObject)}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__MFMailMessageRelationshipAnalyzer_analyzeMessages_myEmailAddresses___block_invoke;
  v10[3] = &unk_2798B74B0;
  v10[4] = self;
  v10[5] = firstObject;
  v10[6] = orderedSet;
  v10[7] = addresses;
  return [messages ef_map:v10];
}

uint64_t __70__MFMailMessageRelationshipAnalyzer_analyzeMessages_myEmailAddresses___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) relationOfMessage:a2 toMessage:*(a1 + 40) previousSenders:*(a1 + 48) myEmailAddresses:*(a1 + 56)];
  [*(a1 + 48) addObjectsFromArray:{objc_msgSend(*(a1 + 32), "sendersOfMessage:", a2)}];
  v5 = MEMORY[0x277CCABB0];

  return [v5 numberWithUnsignedInteger:v4];
}

+ (id)sendersOfMessage:(id)message
{
  array = [MEMORY[0x277CBEB18] array];
  [array addObjectsFromArray:{objc_msgSend(message, "senders")}];

  return [array ef_map:&__block_literal_global_13];
}

+ (unint64_t)relationOfMessage:(id)message toMessage:(id)toMessage
{
  myEmailAddresses = [self myEmailAddresses];

  return [self relationOfMessage:message toMessage:toMessage previousSenders:0 myEmailAddresses:myEmailAddresses];
}

+ (unint64_t)relationOfMessage:(id)message toMessage:(id)toMessage previousSenders:(id)senders myEmailAddresses:(id)addresses
{
  if ([toMessage isEqual:?])
  {
    return 0;
  }

  if ([self isMessage:message responseToMessage:toMessage previousSenders:senders myEmailAddresses:addresses])
  {
    if ([self isMessageDraft:message])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ([self isMessage:message forwardOfMessage:toMessage myEmailAddresses:addresses])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isMessage:(id)message responseToMessage:(id)toMessage previousSenders:(id)senders myEmailAddresses:(id)addresses
{
  v10 = [self isMessage:message sentByAddress:addresses];
  if (v10)
  {
    if ([self isMessage:message addressedToPreviousSender:senders])
    {
      LOBYTE(v10) = 1;
    }

    else
    {

      LOBYTE(v10) = [self isMessage:message addressedToMailingListForMessage:toMessage];
    }
  }

  return v10;
}

+ (BOOL)isMessage:(id)message addressedToPreviousSender:(id)sender
{
  v5 = [self recipientsOfMessage:message];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__MFMailMessageRelationshipAnalyzer_isMessage_addressedToPreviousSender___block_invoke;
  v7[3] = &unk_2798B74F8;
  v7[4] = sender;
  return [v5 ef_any:v7];
}

uint64_t __73__MFMailMessageRelationshipAnalyzer_isMessage_addressedToPreviousSender___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mf_uncommentedAddress];

  return [v2 containsObject:v3];
}

+ (BOOL)isMessage:(id)message addressedToMailingListForMessage:(id)forMessage
{
  headersIfAvailable = [forMessage headersIfAvailable];
  v7 = [objc_msgSend(headersIfAvailable firstHeaderForKey:{*MEMORY[0x277D06FC0]), "mf_uncommentedAddress"}];
  v8 = [v7 length];
  if (v8)
  {
    v9 = [self recipientsOfMessage:message];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__MFMailMessageRelationshipAnalyzer_isMessage_addressedToMailingListForMessage___block_invoke;
    v11[3] = &unk_2798B74F8;
    v11[4] = v7;
    LOBYTE(v8) = [v9 ef_any:v11];
  }

  return v8;
}

+ (id)recipientsOfMessage:(id)message
{
  v3 = [message to];

  return [v3 ef_map:&__block_literal_global_8];
}

+ (id)myEmailAddresses
{
  v2 = [+[MailAccount activeAccounts](MailAccount "activeAccounts")];
  v3 = [v2 ef_filter:*MEMORY[0x277D07110]];

  return [v3 ef_flatten];
}

+ (BOOL)isMessage:(id)message sentByAddress:(id)address
{
  v5 = [objc_msgSend(message "firstSender")];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__MFMailMessageRelationshipAnalyzer_isMessage_sentByAddress___block_invoke;
  v7[3] = &unk_2798B74F8;
  v7[4] = v5;
  return [address ef_any:v7];
}

uint64_t __61__MFMailMessageRelationshipAnalyzer_isMessage_sentByAddress___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mf_uncommentedAddress];

  return [v2 mf_caseInsensitiveIsEqualToString:v3];
}

@end