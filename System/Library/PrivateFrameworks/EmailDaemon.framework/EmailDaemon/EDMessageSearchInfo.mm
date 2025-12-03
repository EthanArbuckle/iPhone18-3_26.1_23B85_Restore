@interface EDMessageSearchInfo
+ (id)searchInfoWithInstantAnswer:(id)answer snippetsByObjectID:(id)d snippetMessageObjectIDsByConversation:(id)conversation;
- (EDMessageSearchInfo)initWithInstantAnswer:(id)answer snippetsByObjectID:(id)d snippetMessageObjectIDsByConversation:(id)conversation;
@end

@implementation EDMessageSearchInfo

+ (id)searchInfoWithInstantAnswer:(id)answer snippetsByObjectID:(id)d snippetMessageObjectIDsByConversation:(id)conversation
{
  answerCopy = answer;
  dCopy = d;
  conversationCopy = conversation;
  if (answerCopy || [dCopy count])
  {
    v11 = [[self alloc] initWithInstantAnswer:answerCopy snippetsByObjectID:dCopy snippetMessageObjectIDsByConversation:conversationCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (EDMessageSearchInfo)initWithInstantAnswer:(id)answer snippetsByObjectID:(id)d snippetMessageObjectIDsByConversation:(id)conversation
{
  answerCopy = answer;
  dCopy = d;
  conversationCopy = conversation;
  v17.receiver = self;
  v17.super_class = EDMessageSearchInfo;
  v12 = [(EDMessageSearchInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instantAnswer, answer);
    if ([dCopy count])
    {
      v14 = dCopy;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v13->_snippetsByObjectID, v14);
    if ([conversationCopy count])
    {
      v15 = conversationCopy;
    }

    else
    {
      v15 = 0;
    }

    objc_storeStrong(&v13->_snippetMessageObjectIDsByConversation, v15);
  }

  return v13;
}

@end