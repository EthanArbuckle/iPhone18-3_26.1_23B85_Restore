@interface CKZKWQueryResult
- (CKZKWQueryResult)initWithSearchableItem:(id)item inSection:(id)section withConversation:(id)conversation;
@end

@implementation CKZKWQueryResult

- (CKZKWQueryResult)initWithSearchableItem:(id)item inSection:(id)section withConversation:(id)conversation
{
  sectionCopy = section;
  conversationCopy = conversation;
  v15.receiver = self;
  v15.super_class = CKZKWQueryResult;
  v9 = [(CKZKWQueryResult *)&v15 init];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    chat = [conversationCopy chat];
    guid = [chat guid];
    v13 = [v10 stringWithFormat:@"%@-%@", sectionCopy, guid];

    [(CKSpotlightQueryResult *)v9 setIdentifier:v13];
    [(CKSpotlightQueryResult *)v9 setConversation:conversationCopy];
  }

  return v9;
}

@end