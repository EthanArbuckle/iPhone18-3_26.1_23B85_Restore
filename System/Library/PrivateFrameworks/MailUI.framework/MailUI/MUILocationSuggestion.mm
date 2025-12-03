@interface MUILocationSuggestion
+ (id)suggestionWithAddress:(id)address date:(id)date authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)d messageList:(id)list;
- (MUILocationSuggestion)initWithAddress:(id)address date:(id)date authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)d messageList:(id)list;
- (id)description;
@end

@implementation MUILocationSuggestion

+ (id)suggestionWithAddress:(id)address date:(id)date authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)d messageList:(id)list
{
  listCopy = list;
  dCopy = d;
  addressesCopy = addresses;
  authorsCopy = authors;
  dateCopy = date;
  addressCopy = address;
  v20 = [[self alloc] initWithAddress:addressCopy date:dateCopy authors:authorsCopy authorEmailAddresses:addressesCopy objectID:dCopy messageList:listCopy];

  return v20;
}

- (MUILocationSuggestion)initWithAddress:(id)address date:(id)date authors:(id)authors authorEmailAddresses:(id)addresses objectID:(id)d messageList:(id)list
{
  addressCopy = address;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = MUILocationSuggestion;
  v17 = [(MUIResultSuggestion *)&v20 initWithObjectID:d messageList:list authors:authors authorEmailAddresses:addresses];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_address, address);
    objc_storeStrong(&v18->_date, date);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  address = self->_address;
  date = self->_date;
  authors = [(MUIResultSuggestion *)self authors];
  authorEmailAddresses = [(MUIResultSuggestion *)self authorEmailAddresses];
  objectID = [(MUIResultSuggestion *)self objectID];
  messageList = [(MUIResultSuggestion *)self messageList];
  v11 = [v3 stringWithFormat:@"<%@: %p> address=%@ date=%@ authors=%@ authorEmailAddresses=%@ objectID=%@ messageList=%@", v4, self, address, date, authors, authorEmailAddresses, objectID, messageList];

  return v11;
}

@end