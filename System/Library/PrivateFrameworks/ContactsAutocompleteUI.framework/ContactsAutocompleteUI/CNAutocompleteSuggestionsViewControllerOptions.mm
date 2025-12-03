@interface CNAutocompleteSuggestionsViewControllerOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CNAutocompleteSuggestionsViewControllerOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSearchType:{-[CNAutocompleteSuggestionsViewControllerOptions searchType](self, "searchType")}];
  [v4 setMaxNumberOfSuggestions:{-[CNAutocompleteSuggestionsViewControllerOptions maxNumberOfSuggestions](self, "maxNumberOfSuggestions")}];
  [v4 setSupplementSuggestionsWithZKWRecipients:{-[CNAutocompleteSuggestionsViewControllerOptions supplementSuggestionsWithZKWRecipients](self, "supplementSuggestionsWithZKWRecipients")}];
  return v4;
}

@end