@interface SFHistoryViewDataSourceSession
- (BOOL)isEqual:(id)equal;
- (SFHistoryViewDataSourceSession)initWithIdentifier:(id)identifier title:(id)title lastVisitedDate:(id)date historyItems:(id)items;
- (id)filteredSessionWithItems:(id)items;
@end

@implementation SFHistoryViewDataSourceSession

- (SFHistoryViewDataSourceSession)initWithIdentifier:(id)identifier title:(id)title lastVisitedDate:(id)date historyItems:(id)items
{
  identifierCopy = identifier;
  titleCopy = title;
  dateCopy = date;
  itemsCopy = items;
  v19.receiver = self;
  v19.super_class = SFHistoryViewDataSourceSession;
  v15 = [(SFHistoryViewDataSourceSession *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v16->_lastVisitedDate, date);
    objc_storeStrong(&v16->_historyItems, items);
    v17 = v16;
  }

  return v16;
}

- (id)filteredSessionWithItems:(id)items
{
  itemsCopy = items;
  v5 = [SFHistoryViewDataSourceSession alloc];
  identifier = self->_identifier;
  title = self->_title;
  lastVisitedDate = self->_lastVisitedDate;
  v9 = [MEMORY[0x277CBEB70] orderedSetWithArray:itemsCopy];

  v10 = [(SFHistoryViewDataSourceSession *)v5 initWithIdentifier:identifier title:title lastVisitedDate:lastVisitedDate historyItems:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[1] isEqualToString:self->_identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end