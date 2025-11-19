@interface CNAutocompleteSuggestionsViewControllerOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CNAutocompleteSuggestionsViewControllerOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSearchType:{-[CNAutocompleteSuggestionsViewControllerOptions searchType](self, "searchType")}];
  [v4 setMaxNumberOfSuggestions:{-[CNAutocompleteSuggestionsViewControllerOptions maxNumberOfSuggestions](self, "maxNumberOfSuggestions")}];
  [v4 setSupplementSuggestionsWithZKWRecipients:{-[CNAutocompleteSuggestionsViewControllerOptions supplementSuggestionsWithZKWRecipients](self, "supplementSuggestionsWithZKWRecipients")}];
  return v4;
}

@end