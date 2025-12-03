@interface SGSuggestionSection
- (id)category;
- (id)comparator;
- (id)list;
@end

@implementation SGSuggestionSection

- (id)comparator
{
  category = [(SGSuggestionSection *)self category];
  if (objc_opt_respondsToSelector())
  {
    suggestionComparator = [category suggestionComparator];
    v4 = _Block_copy(suggestionComparator);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)list
{
  if ([(SGList *)self count])
  {
    v3 = [(SGList *)self itemAtIndex:0];
    suggestionList = 0;
    if (objc_opt_respondsToSelector())
    {
      suggestionList = [v3 suggestionList];
    }
  }

  else
  {
    suggestionList = 0;
  }

  return suggestionList;
}

- (id)category
{
  if ([(SGList *)self count])
  {
    v3 = [(SGList *)self itemAtIndex:0];
    suggestionCategory = [v3 suggestionCategory];
  }

  else
  {
    suggestionCategory = 0;
  }

  return suggestionCategory;
}

@end