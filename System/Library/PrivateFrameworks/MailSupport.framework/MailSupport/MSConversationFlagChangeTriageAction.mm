@interface MSConversationFlagChangeTriageAction
- (EMMessage)referenceMessage;
- (MSConversationFlagChangeTriageAction)initWithReferenceMessage:(id)message origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate reason:(int64_t)reason;
- (id)_changeAction;
- (id)messageFlags;
- (void)_toggleFlagWithBuilder:(id)builder;
@end

@implementation MSConversationFlagChangeTriageAction

- (MSConversationFlagChangeTriageAction)initWithReferenceMessage:(id)message origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate reason:(int64_t)reason
{
  v21[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  delegateCopy = delegate;
  v14 = [MSMessageListItemSelection alloc];
  v21[0] = messageCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v16 = [(MSMessageListItemSelection *)v14 initWithMessageListItems:v15];

  v20.receiver = self;
  v20.super_class = MSConversationFlagChangeTriageAction;
  v17 = [(MSFlagChangeTriageAction *)&v20 initWithMessageListSelection:v16 origin:origin actor:actor delegate:delegateCopy reason:reason];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (EMMessage)referenceMessage
{
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];
  displayMessage = [firstObject displayMessage];
  result = [displayMessage result];

  return result;
}

- (id)messageFlags
{
  referenceMessage = [(MSConversationFlagChangeTriageAction *)self referenceMessage];
  flags = [referenceMessage flags];

  return flags;
}

- (id)_changeAction
{
  referenceMessage = [(MSConversationFlagChangeTriageAction *)self referenceMessage];
  if ([referenceMessage conversationNotificationLevel])
  {
    conversationNotificationLevelToSet = 0;
  }

  else
  {
    conversationNotificationLevelToSet = [objc_opt_class() conversationNotificationLevelToSet];
  }

  v5 = MEMORY[0x277CBEB98];
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v8 = [messageListItems ef_compactMap:&__block_literal_global_2];
  v9 = [v5 setWithArray:v8];
  allObjects = [v9 allObjects];

  v11 = [objc_alloc(MEMORY[0x277D06DD0]) initWithConversationIDs:allObjects origin:-[MSTriageAction origin](self actor:"origin") conversationNotificationLevel:{-[MSTriageAction actor](self, "actor"), conversationNotificationLevelToSet}];

  return v11;
}

id __53__MSConversationFlagChangeTriageAction__changeAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

- (void)_toggleFlagWithBuilder:(id)builder
{
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  em_messageListItemTotalCount = [messageListItems em_messageListItemTotalCount];

  if (em_messageListItemTotalCount != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSConversationFlagChangeTriageAction.m" lineNumber:51 description:@"This action only expects a single reference message"];
  }
}

@end