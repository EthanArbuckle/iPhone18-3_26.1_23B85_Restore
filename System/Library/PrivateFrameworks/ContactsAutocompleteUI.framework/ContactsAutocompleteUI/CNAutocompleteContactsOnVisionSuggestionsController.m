@interface CNAutocompleteContactsOnVisionSuggestionsController
- (CNAutocompleteContactsOnVisionSuggestionsController)initWithSuggestions:(id)a3;
- (CNAutocompleteContactsOnVisionSuggestionsControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CNAutocompleteContactsOnVisionSuggestionsController

- (CNAutocompleteContactsOnVisionSuggestionsController)initWithSuggestions:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = CNAutocompleteContactsOnVisionSuggestionsController;
  v6 = [(CNAutocompleteContactsOnVisionSuggestionsController *)&v23 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestions, a3);
    v8 = [CNAutocompleteContactsOnVisionSuggestionsTableView alloc];
    v9 = [(CNAutocompleteContactsOnVisionSuggestionsTableView *)v8 initWithFrame:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 setTableView:v9];

    v10 = [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 tableView];
    [v10 setSeparatorStyle:1];

    v11 = [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 tableView];
    [v11 setSeparatorInset:{0.0, 12.0, 0.0, 12.0}];

    v12 = objc_alloc_init(MEMORY[0x1E69DD050]);
    v13 = [v12 defaultContentConfiguration];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CONTACTS_ON_VISION" value:&stru_1F3002C60 table:@"Localized"];
    [v13 setText:v15];

    [v12 setContentConfiguration:v13];
    v16 = [v13 textProperties];
    v17 = [v16 font];
    [v17 lineHeight];
    v18 = [v13 textProperties];
    v19 = [v18 font];
    [v19 capHeight];

    v20 = [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 tableView];
    [v20 frame];
    [v12 setFrame:{0.0, 0.0}];

    v21 = [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 tableView];
    [v21 setTableHeaderView:v12];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteContactsOnVisionSuggestionsController *)self suggestions];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [[CNAutocompleteContactsOnVisionTableViewCell alloc] initWithSuggestion:v8];

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  if (v5 && UIContentSizeCategoryCompareToCategory(v5, *MEMORY[0x1E69DDC50]) == NSOrderedDescending)
  {
    v6 = 0x4059000000000000;
  }

  else
  {
    v6 = 0x4053000000000000;
  }

  v7 = *&v6;

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(CNAutocompleteContactsOnVisionSuggestionsController *)self delegate];
  v6 = [(CNAutocompleteContactsOnVisionSuggestionsController *)self suggestions];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [v9 visionSuggestionsController:self didSelectRecipient:v8];
}

- (CNAutocompleteContactsOnVisionSuggestionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end