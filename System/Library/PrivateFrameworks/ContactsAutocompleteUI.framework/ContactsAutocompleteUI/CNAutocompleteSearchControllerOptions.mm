@interface CNAutocompleteSearchControllerOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CNAutocompleteSearchControllerOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(CNAutocompleteSearchControllerOptions *)self trailingButtonMidlineInsetFromLayoutMargin];
  [v4 setTrailingButtonMidlineInsetFromLayoutMargin:v5];

  v6 = [(CNAutocompleteSearchControllerOptions *)self labelTopPadding];
  [v4 setLabelTopPadding:v6];

  v7 = [(CNAutocompleteSearchControllerOptions *)self labelLeadingPadding];
  [v4 setLabelLeadingPadding:v7];

  v8 = [(CNAutocompleteSearchControllerOptions *)self shouldHideSeparator];
  [v4 setShouldHideSeparator:v8];

  v9 = [(CNAutocompleteSearchControllerOptions *)self shouldAlwaysShowAddContactsButton];
  [v4 setShouldAlwaysShowAddContactsButton:v9];

  v10 = [(CNAutocompleteSearchControllerOptions *)self showGlassBackground];
  [v4 setShowGlassBackground:v10];

  [v4 setAddressableGroupResultStyle:{-[CNAutocompleteSearchControllerOptions addressableGroupResultStyle](self, "addressableGroupResultStyle")}];
  return v4;
}

@end