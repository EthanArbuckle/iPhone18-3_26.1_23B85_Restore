@interface CNAutocompleteSearchControllerOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CNAutocompleteSearchControllerOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  trailingButtonMidlineInsetFromLayoutMargin = [(CNAutocompleteSearchControllerOptions *)self trailingButtonMidlineInsetFromLayoutMargin];
  [v4 setTrailingButtonMidlineInsetFromLayoutMargin:trailingButtonMidlineInsetFromLayoutMargin];

  labelTopPadding = [(CNAutocompleteSearchControllerOptions *)self labelTopPadding];
  [v4 setLabelTopPadding:labelTopPadding];

  labelLeadingPadding = [(CNAutocompleteSearchControllerOptions *)self labelLeadingPadding];
  [v4 setLabelLeadingPadding:labelLeadingPadding];

  shouldHideSeparator = [(CNAutocompleteSearchControllerOptions *)self shouldHideSeparator];
  [v4 setShouldHideSeparator:shouldHideSeparator];

  shouldAlwaysShowAddContactsButton = [(CNAutocompleteSearchControllerOptions *)self shouldAlwaysShowAddContactsButton];
  [v4 setShouldAlwaysShowAddContactsButton:shouldAlwaysShowAddContactsButton];

  showGlassBackground = [(CNAutocompleteSearchControllerOptions *)self showGlassBackground];
  [v4 setShowGlassBackground:showGlassBackground];

  [v4 setAddressableGroupResultStyle:{-[CNAutocompleteSearchControllerOptions addressableGroupResultStyle](self, "addressableGroupResultStyle")}];
  return v4;
}

@end