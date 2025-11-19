@interface KSSearchUserWordsController
- (KSSearchUserWordsController)initWithNavigationController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)filterContentForSearchText:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
@end

@implementation KSSearchUserWordsController

- (KSSearchUserWordsController)initWithNavigationController:(id)a3
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = KSSearchUserWordsController;
  v4 = [(KSSearchUserWordsController *)&v7 init];
  if (v4)
  {
    v8[0] = &stru_28679E3A8;
    v8[1] = &stru_28679E3A8;
    v8[2] = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"NO_RESULTS", &stru_28679E3A8, @"Keyboard"}];
    v4->_noResults = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
    [(KSSearchUserWordsController *)v4 setEdgesForExtendedLayout:4];
    [(KSSearchUserWordsController *)v4 setParentNavigationController:a3];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSSearchUserWordsController;
  [(KSSearchUserWordsController *)&v3 dealloc];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    [a3 deselectRowAtIndexPath:a5 animated:?];
    v7 = -[NSArray objectAtIndex:](-[KSSearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [a5 row]);
    v8 = [(KSSearchUserWordsController *)self dictionaryController];
    v10[0] = v7;
    -[KSUserWordsManager addEntries:removeEntries:withCompletionHandler:](v8, "addEntries:removeEntries:withCompletionHandler:", 0, [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1], 0);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  if ([(NSArray *)[(KSSearchUserWordsController *)self filteredListContent] count])
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [a3 deselectRowAtIndexPath:a4 animated:1];
  v6 = -[KSEditUserWordController initWithUserWord:]([KSEditUserWordController alloc], "initWithUserWord:", -[NSArray objectAtIndex:](-[KSSearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [a4 row]));
  [(KSEditUserWordController *)v6 setDictionaryController:[(KSSearchUserWordsController *)self dictionaryController]];
  [(UINavigationController *)[(KSSearchUserWordsController *)self parentNavigationController] pushViewController:v6 animated:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = [(NSArray *)[(KSSearchUserWordsController *)self filteredListContent:a3] count];
  if (!result)
  {
    v6 = [(KSSearchUserWordsController *)self noResults];

    return [(NSArray *)v6 count];
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  if ([(NSArray *)[(KSSearchUserWordsController *)self filteredListContent] count])
  {
    v7 = @"kCellIdentifier";
  }

  else
  {
    v7 = @"kNoResultsIdentifier";
  }

  v8 = [a3 dequeueReusableCellWithIdentifier:v7];
  if (!v8)
  {
    v9 = [(NSArray *)[(KSSearchUserWordsController *)self filteredListContent] count]!= 0;
    v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:v9 reuseIdentifier:v7];
    [v8 setAccessoryType:0];
  }

  if ([(NSArray *)[(KSSearchUserWordsController *)self filteredListContent] count])
  {
    v10 = -[NSArray objectAtIndex:](-[KSSearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [a4 row]);
    [objc_msgSend(v8 "detailTextLabel")];
    [objc_msgSend(v8 "textLabel")];
  }

  else
  {
    [objc_msgSend(v8 "textLabel")];
    [objc_msgSend(v8 "textLabel")];
    v11 = [v8 textLabel];
    [v11 setTextColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.8, 1.0)}];
    [objc_msgSend(v8 "textLabel")];
  }

  return v8;
}

- (void)filterContentForSearchText:(id)a3
{
  -[KSSearchUserWordsController setFilteredListContent:](self, "setFilteredListContent:", -[NSArray filteredArrayUsingPredicate:](-[KSUserWordsManager entries](-[KSSearchUserWordsController dictionaryController](self, "dictionaryController"), "entries"), "filteredArrayUsingPredicate:", [MEMORY[0x277CCAC30] predicateWithFormat:@"(shortcut CONTAINS[c] %@) OR (phrase CONTAINS[c] %@)", a3, a3]));
  v4 = [(KSSearchUserWordsController *)self tableView];

  [v4 reloadData];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  if ([a3 isActive])
  {
    v5 = [objc_msgSend(a3 "searchBar")];

    [(KSSearchUserWordsController *)self filterContentForSearchText:v5];
  }
}

@end