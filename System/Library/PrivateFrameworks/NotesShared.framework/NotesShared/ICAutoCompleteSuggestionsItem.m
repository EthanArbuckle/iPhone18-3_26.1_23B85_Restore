@interface ICAutoCompleteSuggestionsItem
- (ICAutoCompleteSuggestionsItem)initWithDisplayText:(id)a3 shortText:(id)a4 rightText:(id)a5 uuidString:(id)a6 isEmptyPlaceholder:(BOOL)a7 isSectionHeader:(BOOL)a8 isCreationSuggestion:(BOOL)a9 iconImage:(id)a10 parentNoteIdentifier:(id)a11 representedObject:(id)a12;
@end

@implementation ICAutoCompleteSuggestionsItem

- (ICAutoCompleteSuggestionsItem)initWithDisplayText:(id)a3 shortText:(id)a4 rightText:(id)a5 uuidString:(id)a6 isEmptyPlaceholder:(BOOL)a7 isSectionHeader:(BOOL)a8 isCreationSuggestion:(BOOL)a9 iconImage:(id)a10 parentNoteIdentifier:(id)a11 representedObject:(id)a12
{
  v17 = a3;
  v18 = a4;
  obj = a5;
  v19 = a5;
  v27 = a6;
  v30 = a6;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v31.receiver = self;
  v31.super_class = ICAutoCompleteSuggestionsItem;
  v23 = [(ICAutoCompleteSuggestionsItem *)&v31 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_displayText, a3);
    objc_storeStrong(&v24->_shortText, a4);
    objc_storeStrong(&v24->_rightText, obj);
    objc_storeStrong(&v24->_uuidString, v27);
    v24->_isEmptyPlaceholder = a7;
    v24->_isSectionHeader = a8;
    v24->_isCreationSuggestion = a9;
    objc_storeStrong(&v24->_iconImage, a10);
    objc_storeStrong(&v24->_parentNoteIdentifier, a11);
    objc_storeStrong(&v24->_representedObject, a12);
  }

  return v24;
}

@end