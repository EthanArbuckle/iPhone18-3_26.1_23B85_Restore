@interface MUISuggestionToken
+ (id)suggestionTokenWithTitle:(id)title;
- (BOOL)hasMultipleScopes;
- (MUISuggestionToken)initWithCSToken:(id)token;
- (MUISuggestionToken)initWithTitle:(id)title;
- (NSString)scopeName;
- (UIImage)image;
- (_NSRange)replacementRange;
@end

@implementation MUISuggestionToken

- (MUISuggestionToken)initWithTitle:(id)title
{
  titleCopy = title;
  v13.receiver = self;
  v13.super_class = MUISuggestionToken;
  v5 = [(MUISuggestionToken *)&v13 init];
  if (v5)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [titleCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v8 = *(v5 + 2);
    *(v5 + 2) = v7;

    *(v5 + 40) = xmmword_214CE9D70;
    v9 = *(v5 + 3);
    *(v5 + 3) = MEMORY[0x277CBEBF8];

    *(v5 + 4) = 0;
    v10 = objc_alloc_init(MEMORY[0x277CC3528]);
    v11 = *(v5 + 1);
    *(v5 + 1) = v10;
  }

  return v5;
}

- (MUISuggestionToken)initWithCSToken:(id)token
{
  tokenCopy = token;
  v14.receiver = self;
  v14.super_class = MUISuggestionToken;
  v6 = [(MUISuggestionToken *)&v14 init];
  if (v6)
  {
    displayText = [tokenCopy displayText];
    string = [displayText string];
    title = v6->_title;
    v6->_title = string;

    v6->_replacementRange.location = [tokenCopy replacementRange];
    v6->_replacementRange.length = v10;
    scopes = [tokenCopy scopes];
    scopeNames = v6->_scopeNames;
    v6->_scopeNames = scopes;

    v6->_selectedScopeIndex = [tokenCopy selectedScope];
    objc_storeStrong(&v6->_csToken, token);
  }

  return v6;
}

+ (id)suggestionTokenWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[MUISuggestionToken alloc] initWithTitle:titleCopy];

  return v4;
}

- (BOOL)hasMultipleScopes
{
  scopeNames = [(MUISuggestionToken *)self scopeNames];
  v3 = [scopeNames count] > 1;

  return v3;
}

- (NSString)scopeName
{
  scopeNames = [(MUISuggestionToken *)self scopeNames];
  selectedScopeIndex = [(MUISuggestionToken *)self selectedScopeIndex];
  if (selectedScopeIndex >= [scopeNames count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [scopeNames objectAtIndexedSubscript:selectedScopeIndex];
  }

  return v5;
}

- (UIImage)image
{
  v2 = MEMORY[0x277D755B8];
  csToken = [(MUISuggestionToken *)self csToken];
  v4 = [v2 mui_imageFromSuggestionToken:csToken];

  return v4;
}

- (_NSRange)replacementRange
{
  length = self->_replacementRange.length;
  location = self->_replacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end