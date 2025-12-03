@interface MUIResultSuggestion
- (MUIResultSuggestion)initWithObjectID:(id)d messageList:(id)list authors:(id)authors authorEmailAddresses:(id)addresses;
@end

@implementation MUIResultSuggestion

- (MUIResultSuggestion)initWithObjectID:(id)d messageList:(id)list authors:(id)authors authorEmailAddresses:(id)addresses
{
  dCopy = d;
  listCopy = list;
  authorsCopy = authors;
  addressesCopy = addresses;
  v18.receiver = self;
  v18.super_class = MUIResultSuggestion;
  v15 = [(MUIResultSuggestion *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_authors, authors);
    objc_storeStrong(&v16->_authorEmailAddresses, addresses);
    objc_storeStrong(&v16->_objectID, d);
    objc_storeStrong(&v16->_messageList, list);
  }

  return v16;
}

@end