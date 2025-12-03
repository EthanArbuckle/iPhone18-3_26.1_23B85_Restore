@interface MUIGenericSuggestion
+ (id)allMailboxesSuggestionWithSpotlightSuggestion:(id)suggestion;
+ (id)genericSuggestionWithSpotlightSuggestion:(id)suggestion;
- (BOOL)isRecent;
- (MUIGenericSuggestion)initWithCoder:(id)coder;
- (MUIGenericSuggestion)initWithSpotlightSuggestion:(id)suggestion isAllMailboxes:(BOOL)mailboxes;
- (NSAttributedString)attributedTitle;
- (UIColor)imageTintColor;
- (id)_allMailboxesSuggestionTitle;
- (id)_joinRecentsTitleComponents:(id)components;
- (id)_recentsTitle;
- (id)accessibilityDescription;
- (id)category;
- (id)debugDescription;
- (id)ef_publicDescription;
- (id)image;
- (id)title;
- (int64_t)resultCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MUIGenericSuggestion

+ (id)allMailboxesSuggestionWithSpotlightSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = [[self alloc] initWithSpotlightSuggestion:suggestionCopy isAllMailboxes:1];

  return v5;
}

+ (id)genericSuggestionWithSpotlightSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = [[self alloc] initWithSpotlightSuggestion:suggestionCopy isAllMailboxes:0];

  return v5;
}

- (MUIGenericSuggestion)initWithSpotlightSuggestion:(id)suggestion isAllMailboxes:(BOOL)mailboxes
{
  suggestionCopy = suggestion;
  v11.receiver = self;
  v11.super_class = MUIGenericSuggestion;
  v8 = [(MUIGenericSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_spotlightSuggestion, suggestion);
    v9->_isAllMailboxes = mailboxes;
  }

  return v9;
}

- (MUIGenericSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_spotlightSuggestion"];

  v6 = [(MUIGenericSuggestion *)self initWithSpotlightSuggestion:v5 isAllMailboxes:0];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  spotlightSuggestion = [(MUIGenericSuggestion *)self spotlightSuggestion];
  [coderCopy encodeObject:spotlightSuggestion forKey:@"EFPropertyKey_spotlightSuggestion"];
}

- (id)category
{
  lastUsedTime = [(MUISearchAtomSuggestion *)self lastUsedTime];

  if (lastUsedTime)
  {
    v4 = +[MUISearchSuggestionCategory recentGenericCategory];
  }

  else
  {
    if ([(MUIGenericSuggestion *)self isAllMailboxes])
    {
      +[MUISearchSuggestionCategory allMailboxesCategory];
    }

    else
    {
      +[MUISearchSuggestionCategory genericCategory];
    }
    v4 = ;
  }

  return v4;
}

- (id)title
{
  attributedTitle = [(MUIGenericSuggestion *)self attributedTitle];
  string = [attributedTitle string];

  return string;
}

- (NSAttributedString)attributedTitle
{
  if ([(MUIGenericSuggestion *)self isRecent])
  {
    _recentsTitle = [(MUIGenericSuggestion *)self _recentsTitle];
LABEL_5:
    localizedAttributedSuggestion = _recentsTitle;
    goto LABEL_7;
  }

  if ([(MUIGenericSuggestion *)self isAllMailboxes])
  {
    _recentsTitle = [(MUIGenericSuggestion *)self _allMailboxesSuggestionTitle];
    goto LABEL_5;
  }

  spotlightSuggestion = [(MUIGenericSuggestion *)self spotlightSuggestion];
  localizedAttributedSuggestion = [spotlightSuggestion localizedAttributedSuggestion];

LABEL_7:

  return localizedAttributedSuggestion;
}

- (id)image
{
  isRecent = [(MUIGenericSuggestion *)self isRecent];
  v4 = MEMORY[0x277D755B8];
  if (isRecent)
  {
    v5 = [MEMORY[0x277D755B8] mui_imageWithSystemSymbolName:@"clock.arrow.circlepath"];
  }

  else
  {
    spotlightSuggestion = [(MUIGenericSuggestion *)self spotlightSuggestion];
    currentToken = [spotlightSuggestion currentToken];
    v5 = [v4 mui_imageFromSuggestionToken:currentToken];
  }

  return v5;
}

- (UIColor)imageTintColor
{
  spotlightSuggestion = [(MUIGenericSuggestion *)self spotlightSuggestion];
  currentToken = [spotlightSuggestion currentToken];
  tokenKind = [currentToken tokenKind];

  systemRedColor = 0;
  if (tokenKind <= 28)
  {
    switch(tokenKind)
    {
      case 26:
        systemRedColor = [MEMORY[0x277D75348] systemRedColor];
        break;
      case 27:
        systemRedColor = [MEMORY[0x277D75348] systemOrangeColor];
        break;
      case 28:
        systemRedColor = [MEMORY[0x277D75348] systemYellowColor];
        break;
    }
  }

  else if (tokenKind > 30)
  {
    if (tokenKind == 31)
    {
      systemRedColor = [MEMORY[0x277D75348] systemIndigoColor];
    }

    else if (tokenKind == 32)
    {
      systemRedColor = [MEMORY[0x277D75348] systemGrayColor];
    }
  }

  else
  {
    if (tokenKind == 29)
    {
      [MEMORY[0x277D75348] systemGreenColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemTealColor];
    }
    systemRedColor = ;
  }

  return systemRedColor;
}

- (int64_t)resultCount
{
  spotlightSuggestion = [(MUIGenericSuggestion *)self spotlightSuggestion];
  resultCount = [spotlightSuggestion resultCount];

  return resultCount;
}

- (id)accessibilityDescription
{
  suggestionTokens = [(CSSuggestion *)self->_spotlightSuggestion suggestionTokens];
  lastObject = [suggestionTokens lastObject];
  tokenKindAccessibilityDescription = [lastObject tokenKindAccessibilityDescription];

  return tokenKindAccessibilityDescription;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  attributedTitle = [(MUIGenericSuggestion *)self attributedTitle];
  resultCount = [(MUIGenericSuggestion *)self resultCount];
  spotlightSuggestion = [(MUIGenericSuggestion *)self spotlightSuggestion];
  suggestionTokens = [spotlightSuggestion suggestionTokens];
  lastObject = [suggestionTokens lastObject];
  v10 = [v3 stringWithFormat:@"<%@ %p> attributedTitle=%@ resultCount=%ld lastTokenKind=%ld", v4, self, attributedTitle, resultCount, objc_msgSend(lastObject, "tokenKind")];

  return v10;
}

- (id)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = MEMORY[0x277D07198];
  attributedTitle = [(MUIGenericSuggestion *)self attributedTitle];
  string = [attributedTitle string];
  v8 = [v5 partiallyRedactedStringForString:string];
  resultCount = [(MUIGenericSuggestion *)self resultCount];
  spotlightSuggestion = [(MUIGenericSuggestion *)self spotlightSuggestion];
  suggestionTokens = [spotlightSuggestion suggestionTokens];
  lastObject = [suggestionTokens lastObject];
  v13 = [v3 stringWithFormat:@"<%@ %p> attributedTitle=%@ resultCount=%ld lastTokenKind=%ld", v4, self, v8, resultCount, objc_msgSend(lastObject, "tokenKind")];

  return v13;
}

- (BOOL)isRecent
{
  category = [(MUIGenericSuggestion *)self category];
  v3 = +[MUISearchSuggestionCategory recentGenericCategory];
  v4 = category == v3;

  return v4;
}

- (id)_allMailboxesSuggestionTitle
{
  v2 = objc_alloc(MEMORY[0x277CCA898]);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"SuggestionsMenuItemTitle" value:&stru_2826EE5B8 table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_recentsTitle
{
  v30[1] = *MEMORY[0x277D85DE8];
  spotlightSuggestion = [(MUIGenericSuggestion *)self spotlightSuggestion];
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_2826EE5B8];
  v5 = v4;
  if (spotlightSuggestion)
  {
    v29 = *MEMORY[0x277D740C0];
    v6 = v29;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v30[0] = secondaryLabelColor;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v27 = v6;
    labelColor = [MEMORY[0x277D75348] labelColor];
    v28 = labelColor;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    currentTokens = [spotlightSuggestion currentTokens];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__MUIGenericSuggestion__recentsTitle__block_invoke;
    v24[3] = &unk_27818A650;
    v12 = v10;
    v25 = v12;
    v13 = v8;
    v26 = v13;
    v14 = [currentTokens ef_compactMap:v24];

    userQueryString = [spotlightSuggestion userQueryString];
    v16 = [userQueryString length];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CCA898]);
      userQueryString2 = [spotlightSuggestion userQueryString];
      v19 = [v17 initWithString:userQueryString2 attributes:v12];
      v20 = [v14 arrayByAddingObject:v19];

      v14 = v20;
    }

    v21 = [(MUIGenericSuggestion *)self _joinRecentsTitleComponents:v14];

    v22 = v21;
  }

  else
  {
    v22 = v4;
  }

  return v22;
}

id __37__MUIGenericSuggestion__recentsTitle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayText];
  v5 = [v4 string];

  if ([v5 length])
  {
    v6 = [v3 scopes];
    if ([v6 count] && (v7 = objc_msgSend(v3, "selectedScope"), v7 < objc_msgSend(v6, "count")))
    {
      v8 = objc_alloc(MEMORY[0x277CCAB48]);
      v9 = MEMORY[0x277CCACA8];
      v10 = [v6 objectAtIndexedSubscript:{objc_msgSend(v3, "selectedScope")}];
      v11 = MUILocalizedTokenAndStringSeparator();
      v12 = [v9 stringWithFormat:@"%@%@ ", v10, v11];
      v13 = [v8 initWithString:v12 attributes:*(a1 + 40)];

      v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:*(a1 + 32)];
      [v13 appendAttributedString:v14];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:*(a1 + 32)];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_joinRecentsTitleComponents:(id)components
{
  componentsCopy = components;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v4 = objc_alloc(MEMORY[0x277CCA898]);
  v5 = MUILocalizedTokenSeparator();
  v6 = [v4 initWithString:v5];

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __52__MUIGenericSuggestion__joinRecentsTitleComponents___block_invoke;
  v13 = &unk_27818A678;
  v15 = &v16;
  v7 = v6;
  v14 = v7;
  [componentsCopy enumerateObjectsUsingBlock:&v10];
  v8 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __52__MUIGenericSuggestion__joinRecentsTitleComponents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 40) + 8) + 40) length])
  {
    [*(*(*(a1 + 40) + 8) + 40) appendAttributedString:*(a1 + 32)];
  }

  [*(*(*(a1 + 40) + 8) + 40) appendAttributedString:v3];
}

@end