@interface MUIResultSuggestion
- (MUIResultSuggestion)initWithObjectID:(id)a3 messageList:(id)a4 authors:(id)a5 authorEmailAddresses:(id)a6;
@end

@implementation MUIResultSuggestion

- (MUIResultSuggestion)initWithObjectID:(id)a3 messageList:(id)a4 authors:(id)a5 authorEmailAddresses:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MUIResultSuggestion;
  v15 = [(MUIResultSuggestion *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_authors, a5);
    objc_storeStrong(&v16->_authorEmailAddresses, a6);
    objc_storeStrong(&v16->_objectID, a3);
    objc_storeStrong(&v16->_messageList, a4);
  }

  return v16;
}

@end