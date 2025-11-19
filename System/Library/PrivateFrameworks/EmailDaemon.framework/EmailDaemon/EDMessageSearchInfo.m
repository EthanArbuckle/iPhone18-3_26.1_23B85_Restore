@interface EDMessageSearchInfo
+ (id)searchInfoWithInstantAnswer:(id)a3 snippetsByObjectID:(id)a4 snippetMessageObjectIDsByConversation:(id)a5;
- (EDMessageSearchInfo)initWithInstantAnswer:(id)a3 snippetsByObjectID:(id)a4 snippetMessageObjectIDsByConversation:(id)a5;
@end

@implementation EDMessageSearchInfo

+ (id)searchInfoWithInstantAnswer:(id)a3 snippetsByObjectID:(id)a4 snippetMessageObjectIDsByConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 || [v9 count])
  {
    v11 = [[a1 alloc] initWithInstantAnswer:v8 snippetsByObjectID:v9 snippetMessageObjectIDsByConversation:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (EDMessageSearchInfo)initWithInstantAnswer:(id)a3 snippetsByObjectID:(id)a4 snippetMessageObjectIDsByConversation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = EDMessageSearchInfo;
  v12 = [(EDMessageSearchInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instantAnswer, a3);
    if ([v10 count])
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v13->_snippetsByObjectID, v14);
    if ([v11 count])
    {
      v15 = v11;
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