@interface SGSuggestionSection
- (id)category;
- (id)comparator;
- (id)list;
@end

@implementation SGSuggestionSection

- (id)comparator
{
  v2 = [(SGSuggestionSection *)self category];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 suggestionComparator];
    v4 = _Block_copy(v3);
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
    v4 = 0;
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 suggestionList];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)category
{
  if ([(SGList *)self count])
  {
    v3 = [(SGList *)self itemAtIndex:0];
    v4 = [v3 suggestionCategory];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end