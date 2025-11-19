@interface MUISuggestionToken
+ (id)suggestionTokenWithTitle:(id)a3;
- (BOOL)hasMultipleScopes;
- (MUISuggestionToken)initWithCSToken:(id)a3;
- (MUISuggestionToken)initWithTitle:(id)a3;
- (NSString)scopeName;
- (UIImage)image;
- (_NSRange)replacementRange;
@end

@implementation MUISuggestionToken

- (MUISuggestionToken)initWithTitle:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MUISuggestionToken;
  v5 = [(MUISuggestionToken *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [v4 stringByTrimmingCharactersInSet:v6];
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

- (MUISuggestionToken)initWithCSToken:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MUISuggestionToken;
  v6 = [(MUISuggestionToken *)&v14 init];
  if (v6)
  {
    v7 = [v5 displayText];
    v8 = [v7 string];
    title = v6->_title;
    v6->_title = v8;

    v6->_replacementRange.location = [v5 replacementRange];
    v6->_replacementRange.length = v10;
    v11 = [v5 scopes];
    scopeNames = v6->_scopeNames;
    v6->_scopeNames = v11;

    v6->_selectedScopeIndex = [v5 selectedScope];
    objc_storeStrong(&v6->_csToken, a3);
  }

  return v6;
}

+ (id)suggestionTokenWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[MUISuggestionToken alloc] initWithTitle:v3];

  return v4;
}

- (BOOL)hasMultipleScopes
{
  v2 = [(MUISuggestionToken *)self scopeNames];
  v3 = [v2 count] > 1;

  return v3;
}

- (NSString)scopeName
{
  v3 = [(MUISuggestionToken *)self scopeNames];
  v4 = [(MUISuggestionToken *)self selectedScopeIndex];
  if (v4 >= [v3 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (UIImage)image
{
  v2 = MEMORY[0x277D755B8];
  v3 = [(MUISuggestionToken *)self csToken];
  v4 = [v2 mui_imageFromSuggestionToken:v3];

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