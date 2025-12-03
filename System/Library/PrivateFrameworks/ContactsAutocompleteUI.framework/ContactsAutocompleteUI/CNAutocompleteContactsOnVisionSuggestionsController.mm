@interface CNAutocompleteContactsOnVisionSuggestionsController
- (CNAutocompleteContactsOnVisionSuggestionsController)initWithSuggestions:(id)suggestions;
- (CNAutocompleteContactsOnVisionSuggestionsControllerDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CNAutocompleteContactsOnVisionSuggestionsController

- (CNAutocompleteContactsOnVisionSuggestionsController)initWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v23.receiver = self;
  v23.super_class = CNAutocompleteContactsOnVisionSuggestionsController;
  v6 = [(CNAutocompleteContactsOnVisionSuggestionsController *)&v23 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestions, suggestions);
    v8 = [CNAutocompleteContactsOnVisionSuggestionsTableView alloc];
    v9 = [(CNAutocompleteContactsOnVisionSuggestionsTableView *)v8 initWithFrame:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 setTableView:v9];

    tableView = [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 tableView];
    [tableView setSeparatorStyle:1];

    tableView2 = [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 tableView];
    [tableView2 setSeparatorInset:{0.0, 12.0, 0.0, 12.0}];

    v12 = objc_alloc_init(MEMORY[0x1E69DD050]);
    defaultContentConfiguration = [v12 defaultContentConfiguration];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CONTACTS_ON_VISION" value:&stru_1F3002C60 table:@"Localized"];
    [defaultContentConfiguration setText:v15];

    [v12 setContentConfiguration:defaultContentConfiguration];
    textProperties = [defaultContentConfiguration textProperties];
    font = [textProperties font];
    [font lineHeight];
    textProperties2 = [defaultContentConfiguration textProperties];
    font2 = [textProperties2 font];
    [font2 capHeight];

    tableView3 = [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 tableView];
    [tableView3 frame];
    [v12 setFrame:{0.0, 0.0}];

    tableView4 = [(CNAutocompleteContactsOnVisionSuggestionsController *)v7 tableView];
    [tableView4 setTableHeaderView:v12];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  suggestions = [(CNAutocompleteContactsOnVisionSuggestionsController *)self suggestions];
  v7 = [pathCopy row];

  v8 = [suggestions objectAtIndexedSubscript:v7];

  v9 = [[CNAutocompleteContactsOnVisionTableViewCell alloc] initWithSuggestion:v8];

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (preferredContentSizeCategory && UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]) == NSOrderedDescending)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(CNAutocompleteContactsOnVisionSuggestionsController *)self delegate];
  suggestions = [(CNAutocompleteContactsOnVisionSuggestionsController *)self suggestions];
  v7 = [pathCopy row];

  v8 = [suggestions objectAtIndexedSubscript:v7];
  [delegate visionSuggestionsController:self didSelectRecipient:v8];
}

- (CNAutocompleteContactsOnVisionSuggestionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end