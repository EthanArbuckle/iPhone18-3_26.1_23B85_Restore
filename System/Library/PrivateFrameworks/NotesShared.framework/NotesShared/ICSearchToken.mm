@interface ICSearchToken
+ (id)iconImageNameForCSToken:(id)token;
+ (id)iconImageNameForSuggestionType:(unint64_t)type;
+ (unint64_t)suggestionTypeOfFirstItemInTokens:(id)tokens;
- (BOOL)hasMultipleScopes;
- (ICSearchToken)initWithCSSuggestionToken:(id)token;
- (ICSearchToken)initWithTitle:(id)title subQueryString:(id)string suggestionType:(unint64_t)type;
- (NSArray)availableScopes;
- (NSString)scopeName;
- (unint64_t)selectedScopeIndex;
- (void)scopeName;
@end

@implementation ICSearchToken

- (ICSearchToken)initWithTitle:(id)title subQueryString:(id)string suggestionType:(unint64_t)type
{
  titleCopy = title;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = ICSearchToken;
  v11 = [(ICSearchToken *)&v17 init];
  v12 = v11;
  if (v11)
  {
    csToken = v11->_csToken;
    v11->_csToken = 0;

    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v12->_subQueryString, string);
    v12->_suggestionType = type;
    v14 = [ICSearchToken iconImageNameForSuggestionType:type];
    iconImageName = v12->_iconImageName;
    v12->_iconImageName = v14;
  }

  return v12;
}

- (ICSearchToken)initWithCSSuggestionToken:(id)token
{
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = ICSearchToken;
  v6 = [(ICSearchToken *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_csToken, token);
    displayText = [tokenCopy displayText];
    string = [displayText string];
    title = v7->_title;
    v7->_title = string;

    subQueryString = v7->_subQueryString;
    v7->_subQueryString = 0;

    v7->_suggestionType = 0;
    v12 = [ICSearchToken iconImageNameForCSToken:tokenCopy];
    iconImageName = v7->_iconImageName;
    v7->_iconImageName = v12;
  }

  return v7;
}

- (NSString)scopeName
{
  p_csToken = &self->_csToken;
  csToken = self->_csToken;
  if (csToken)
  {
    selectedScope = [(_CSSuggestionToken *)csToken selectedScope];
    scopes = [(_CSSuggestionToken *)*p_csToken scopes];
    v7 = [scopes count];

    if (selectedScope < v7)
    {
      scopes2 = [(_CSSuggestionToken *)*p_csToken scopes];
      v9 = [scopes2 objectAtIndexedSubscript:selectedScope];

      goto LABEL_8;
    }

    v10 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ICSearchToken *)self scopeName];
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (unint64_t)selectedScopeIndex
{
  result = self->_csToken;
  if (result)
  {
    return [result selectedScope];
  }

  return result;
}

- (NSArray)availableScopes
{
  csToken = self->_csToken;
  if (csToken)
  {
    csToken = [csToken scopes];
    v2 = vars8;
  }

  return csToken;
}

- (BOOL)hasMultipleScopes
{
  csToken = self->_csToken;
  if (!csToken)
  {
    return 0;
  }

  scopes = [(_CSSuggestionToken *)csToken scopes];
  v4 = [scopes count] != 0;

  return v4;
}

+ (unint64_t)suggestionTypeOfFirstItemInTokens:(id)tokens
{
  tokensCopy = tokens;
  if ([tokensCopy count])
  {
    v4 = [tokensCopy objectAtIndexedSubscript:0];
    v5 = v4;
    if (v4)
    {
      suggestionType = [v4 suggestionType];
    }

    else
    {
      suggestionType = 0;
    }
  }

  else
  {
    suggestionType = 0;
  }

  return suggestionType;
}

+ (id)iconImageNameForSuggestionType:(unint64_t)type
{
  v5 = @"person.crop.circle";
  if (type <= 3)
  {
    if (type)
    {
      if (type == 3)
      {
        v5 = @"checklist";
      }

      if (type == 2)
      {
        return @"lock.fill";
      }

      else
      {
        return v5;
      }
    }

    else if ([ICSearchSuggestionsContext supportsSearchSuggestions:v3])
    {
      return @"magnifyingglass";
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICSearchToken iconImageNameForSuggestionType:]" simulateCrash:1 showAlert:0 format:@"Undefined token type"];
      return @"camera.metering.unknown";
    }
  }

  else
  {
    v6 = @"doc.viewfinder";
    v7 = @"paperclip";
    if (type != 7)
    {
      v7 = @"person.crop.circle";
    }

    if (type != 6)
    {
      v6 = v7;
    }

    if (type == 5)
    {
      v5 = @"pencil.tip.crop.circle";
    }

    if (type == 4)
    {
      v5 = @"number";
    }

    if (type <= 5)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

+ (id)iconImageNameForCSToken:(id)token
{
  v16 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v4 = tokenCopy;
  if (!tokenCopy)
  {
    goto LABEL_31;
  }

  tokenKind = [tokenCopy tokenKind];
  if (tokenKind <= 15)
  {
    if (tokenKind <= 6)
    {
      if (tokenKind <= 4)
      {
        if (tokenKind == 2)
        {
          v6 = @"paperclip";
          goto LABEL_32;
        }

        if (tokenKind == 3)
        {
          v6 = @"music.note";
          goto LABEL_32;
        }

        goto LABEL_44;
      }

      if (tokenKind != 5)
      {
        v6 = @"doc";
        goto LABEL_32;
      }

LABEL_36:
      v6 = @"calendar";
      goto LABEL_32;
    }

    if (tokenKind <= 9)
    {
      if (tokenKind == 7)
      {
        goto LABEL_36;
      }

      if (tokenKind == 8)
      {
        v6 = @"folder";
        goto LABEL_32;
      }

LABEL_44:
      v13 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 134217984;
        tokenKind2 = [v4 tokenKind];
        _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Got token kind with unknown icon image name: %ld", &v14, 0xCu);
      }

      v6 = @"magnifyingglass";
      goto LABEL_32;
    }

    if (tokenKind != 10)
    {
      if (tokenKind == 15)
      {
        v6 = @"note";
        goto LABEL_32;
      }

      goto LABEL_44;
    }

LABEL_35:
    v6 = @"photo";
    goto LABEL_32;
  }

  if (tokenKind <= 35)
  {
    if (tokenKind > 23)
    {
      if (tokenKind == 24)
      {
        v6 = @"number";
        goto LABEL_32;
      }

      if (tokenKind == 34)
      {
        v6 = @"textformat.size.larger";
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    if (tokenKind == 16)
    {
      v6 = @"person";
      goto LABEL_32;
    }

    if (tokenKind != 17)
    {
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  if (tokenKind <= 42)
  {
    if (tokenKind == 36)
    {
      v6 = @"video";
      goto LABEL_32;
    }

    if (tokenKind == 37)
    {
      v6 = @"link";
      goto LABEL_32;
    }

    goto LABEL_44;
  }

  if (tokenKind != 43)
  {
    if (tokenKind != 45)
    {
      goto LABEL_44;
    }

LABEL_31:
    v6 = 0;
    goto LABEL_32;
  }

  v8 = MEMORY[0x277CBEAF8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  v11 = [v8 lineDirectionForLanguage:languageCode];
  v12 = @"text.alignright";
  if (v11 == 1)
  {
    v12 = @"text.alignleft";
  }

  v6 = v12;

LABEL_32:

  return v6;
}

- (void)scopeName
{
  v14 = *MEMORY[0x277D85DE8];
  selectedScope = [*a2 selectedScope];
  scopes = [*a2 scopes];
  v8 = 138412802;
  selfCopy = self;
  v10 = 2048;
  v11 = selectedScope;
  v12 = 2048;
  v13 = [scopes count];
  _os_log_error_impl(&dword_214D51000, a3, OS_LOG_TYPE_ERROR, "Search token %@ has selected scope out of range of available scopes (%lu/%lu).", &v8, 0x20u);
}

@end