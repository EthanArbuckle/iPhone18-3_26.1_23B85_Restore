@interface SFHistoryViewDataSourceSession
- (BOOL)isEqual:(id)a3;
- (SFHistoryViewDataSourceSession)initWithIdentifier:(id)a3 title:(id)a4 lastVisitedDate:(id)a5 historyItems:(id)a6;
- (id)filteredSessionWithItems:(id)a3;
@end

@implementation SFHistoryViewDataSourceSession

- (SFHistoryViewDataSourceSession)initWithIdentifier:(id)a3 title:(id)a4 lastVisitedDate:(id)a5 historyItems:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = SFHistoryViewDataSourceSession;
  v15 = [(SFHistoryViewDataSourceSession *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_title, a4);
    objc_storeStrong(&v16->_lastVisitedDate, a5);
    objc_storeStrong(&v16->_historyItems, a6);
    v17 = v16;
  }

  return v16;
}

- (id)filteredSessionWithItems:(id)a3
{
  v4 = a3;
  v5 = [SFHistoryViewDataSourceSession alloc];
  identifier = self->_identifier;
  title = self->_title;
  lastVisitedDate = self->_lastVisitedDate;
  v9 = [MEMORY[0x277CBEB70] orderedSetWithArray:v4];

  v10 = [(SFHistoryViewDataSourceSession *)v5 initWithIdentifier:identifier title:title lastVisitedDate:lastVisitedDate historyItems:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4[1] isEqualToString:self->_identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end