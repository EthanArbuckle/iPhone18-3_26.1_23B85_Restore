@interface MSConversationFlagChangeTriageAction
- (EMMessage)referenceMessage;
- (MSConversationFlagChangeTriageAction)initWithReferenceMessage:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 reason:(int64_t)a7;
- (id)_changeAction;
- (id)messageFlags;
- (void)_toggleFlagWithBuilder:(id)a3;
@end

@implementation MSConversationFlagChangeTriageAction

- (MSConversationFlagChangeTriageAction)initWithReferenceMessage:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6 reason:(int64_t)a7
{
  v21[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = [MSMessageListItemSelection alloc];
  v21[0] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v16 = [(MSMessageListItemSelection *)v14 initWithMessageListItems:v15];

  v20.receiver = self;
  v20.super_class = MSConversationFlagChangeTriageAction;
  v17 = [(MSFlagChangeTriageAction *)&v20 initWithMessageListSelection:v16 origin:a4 actor:a5 delegate:v13 reason:a7];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (EMMessage)referenceMessage
{
  v2 = [(MSTriageAction *)self messageListItemSelection];
  v3 = [v2 messageListItems];
  v4 = [v3 firstObject];
  v5 = [v4 displayMessage];
  v6 = [v5 result];

  return v6;
}

- (id)messageFlags
{
  v2 = [(MSConversationFlagChangeTriageAction *)self referenceMessage];
  v3 = [v2 flags];

  return v3;
}

- (id)_changeAction
{
  v3 = [(MSConversationFlagChangeTriageAction *)self referenceMessage];
  if ([v3 conversationNotificationLevel])
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_class() conversationNotificationLevelToSet];
  }

  v5 = MEMORY[0x277CBEB98];
  v6 = [(MSTriageAction *)self messageListItemSelection];
  v7 = [v6 messageListItems];
  v8 = [v7 ef_compactMap:&__block_literal_global_2];
  v9 = [v5 setWithArray:v8];
  v10 = [v9 allObjects];

  v11 = [objc_alloc(MEMORY[0x277D06DD0]) initWithConversationIDs:v10 origin:-[MSTriageAction origin](self actor:"origin") conversationNotificationLevel:{-[MSTriageAction actor](self, "actor"), v4}];

  return v11;
}

id __53__MSConversationFlagChangeTriageAction__changeAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

- (void)_toggleFlagWithBuilder:(id)a3
{
  v7 = [(MSTriageAction *)self messageListItemSelection];
  v5 = [v7 messageListItems];
  v6 = [v5 em_messageListItemTotalCount];

  if (v6 != 1)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSConversationFlagChangeTriageAction.m" lineNumber:51 description:@"This action only expects a single reference message"];
  }
}

@end