@interface ICAutoCompleteSuggestionsItem
- (ICAutoCompleteSuggestionsItem)initWithDisplayText:(id)text shortText:(id)shortText rightText:(id)rightText uuidString:(id)string isEmptyPlaceholder:(BOOL)placeholder isSectionHeader:(BOOL)header isCreationSuggestion:(BOOL)suggestion iconImage:(id)self0 parentNoteIdentifier:(id)self1 representedObject:(id)self2;
@end

@implementation ICAutoCompleteSuggestionsItem

- (ICAutoCompleteSuggestionsItem)initWithDisplayText:(id)text shortText:(id)shortText rightText:(id)rightText uuidString:(id)string isEmptyPlaceholder:(BOOL)placeholder isSectionHeader:(BOOL)header isCreationSuggestion:(BOOL)suggestion iconImage:(id)self0 parentNoteIdentifier:(id)self1 representedObject:(id)self2
{
  textCopy = text;
  shortTextCopy = shortText;
  obj = rightText;
  rightTextCopy = rightText;
  stringCopy = string;
  stringCopy2 = string;
  imageCopy = image;
  identifierCopy = identifier;
  objectCopy = object;
  v31.receiver = self;
  v31.super_class = ICAutoCompleteSuggestionsItem;
  v23 = [(ICAutoCompleteSuggestionsItem *)&v31 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_displayText, text);
    objc_storeStrong(&v24->_shortText, shortText);
    objc_storeStrong(&v24->_rightText, obj);
    objc_storeStrong(&v24->_uuidString, stringCopy);
    v24->_isEmptyPlaceholder = placeholder;
    v24->_isSectionHeader = header;
    v24->_isCreationSuggestion = suggestion;
    objc_storeStrong(&v24->_iconImage, image);
    objc_storeStrong(&v24->_parentNoteIdentifier, identifier);
    objc_storeStrong(&v24->_representedObject, object);
  }

  return v24;
}

@end