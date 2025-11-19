@interface MUIGenericSuggestion
+ (id)allMailboxesSuggestionWithSpotlightSuggestion:(id)a3;
+ (id)genericSuggestionWithSpotlightSuggestion:(id)a3;
- (BOOL)isRecent;
- (MUIGenericSuggestion)initWithCoder:(id)a3;
- (MUIGenericSuggestion)initWithSpotlightSuggestion:(id)a3 isAllMailboxes:(BOOL)a4;
- (NSAttributedString)attributedTitle;
- (UIColor)imageTintColor;
- (id)_allMailboxesSuggestionTitle;
- (id)_joinRecentsTitleComponents:(id)a3;
- (id)_recentsTitle;
- (id)accessibilityDescription;
- (id)category;
- (id)debugDescription;
- (id)ef_publicDescription;
- (id)image;
- (id)title;
- (int64_t)resultCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MUIGenericSuggestion

+ (id)allMailboxesSuggestionWithSpotlightSuggestion:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSpotlightSuggestion:v4 isAllMailboxes:1];

  return v5;
}

+ (id)genericSuggestionWithSpotlightSuggestion:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSpotlightSuggestion:v4 isAllMailboxes:0];

  return v5;
}

- (MUIGenericSuggestion)initWithSpotlightSuggestion:(id)a3 isAllMailboxes:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUIGenericSuggestion;
  v8 = [(MUIGenericSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_spotlightSuggestion, a3);
    v9->_isAllMailboxes = a4;
  }

  return v9;
}

- (MUIGenericSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_spotlightSuggestion"];

  v6 = [(MUIGenericSuggestion *)self initWithSpotlightSuggestion:v5 isAllMailboxes:0];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MUIGenericSuggestion *)self spotlightSuggestion];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_spotlightSuggestion"];
}

- (id)category
{
  v3 = [(MUISearchAtomSuggestion *)self lastUsedTime];

  if (v3)
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
  v2 = [(MUIGenericSuggestion *)self attributedTitle];
  v3 = [v2 string];

  return v3;
}

- (NSAttributedString)attributedTitle
{
  if ([(MUIGenericSuggestion *)self isRecent])
  {
    v3 = [(MUIGenericSuggestion *)self _recentsTitle];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  if ([(MUIGenericSuggestion *)self isAllMailboxes])
  {
    v3 = [(MUIGenericSuggestion *)self _allMailboxesSuggestionTitle];
    goto LABEL_5;
  }

  v5 = [(MUIGenericSuggestion *)self spotlightSuggestion];
  v4 = [v5 localizedAttributedSuggestion];

LABEL_7:

  return v4;
}

- (id)image
{
  v3 = [(MUIGenericSuggestion *)self isRecent];
  v4 = MEMORY[0x277D755B8];
  if (v3)
  {
    v5 = [MEMORY[0x277D755B8] mui_imageWithSystemSymbolName:@"clock.arrow.circlepath"];
  }

  else
  {
    v6 = [(MUIGenericSuggestion *)self spotlightSuggestion];
    v7 = [v6 currentToken];
    v5 = [v4 mui_imageFromSuggestionToken:v7];
  }

  return v5;
}

- (UIColor)imageTintColor
{
  v2 = [(MUIGenericSuggestion *)self spotlightSuggestion];
  v3 = [v2 currentToken];
  v4 = [v3 tokenKind];

  v5 = 0;
  if (v4 <= 28)
  {
    switch(v4)
    {
      case 26:
        v5 = [MEMORY[0x277D75348] systemRedColor];
        break;
      case 27:
        v5 = [MEMORY[0x277D75348] systemOrangeColor];
        break;
      case 28:
        v5 = [MEMORY[0x277D75348] systemYellowColor];
        break;
    }
  }

  else if (v4 > 30)
  {
    if (v4 == 31)
    {
      v5 = [MEMORY[0x277D75348] systemIndigoColor];
    }

    else if (v4 == 32)
    {
      v5 = [MEMORY[0x277D75348] systemGrayColor];
    }
  }

  else
  {
    if (v4 == 29)
    {
      [MEMORY[0x277D75348] systemGreenColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemTealColor];
    }
    v5 = ;
  }

  return v5;
}

- (int64_t)resultCount
{
  v2 = [(MUIGenericSuggestion *)self spotlightSuggestion];
  v3 = [v2 resultCount];

  return v3;
}

- (id)accessibilityDescription
{
  v2 = [(CSSuggestion *)self->_spotlightSuggestion suggestionTokens];
  v3 = [v2 lastObject];
  v4 = [v3 tokenKindAccessibilityDescription];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(MUIGenericSuggestion *)self attributedTitle];
  v6 = [(MUIGenericSuggestion *)self resultCount];
  v7 = [(MUIGenericSuggestion *)self spotlightSuggestion];
  v8 = [v7 suggestionTokens];
  v9 = [v8 lastObject];
  v10 = [v3 stringWithFormat:@"<%@ %p> attributedTitle=%@ resultCount=%ld lastTokenKind=%ld", v4, self, v5, v6, objc_msgSend(v9, "tokenKind")];

  return v10;
}

- (id)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = MEMORY[0x277D07198];
  v6 = [(MUIGenericSuggestion *)self attributedTitle];
  v7 = [v6 string];
  v8 = [v5 partiallyRedactedStringForString:v7];
  v9 = [(MUIGenericSuggestion *)self resultCount];
  v10 = [(MUIGenericSuggestion *)self spotlightSuggestion];
  v11 = [v10 suggestionTokens];
  v12 = [v11 lastObject];
  v13 = [v3 stringWithFormat:@"<%@ %p> attributedTitle=%@ resultCount=%ld lastTokenKind=%ld", v4, self, v8, v9, objc_msgSend(v12, "tokenKind")];

  return v13;
}

- (BOOL)isRecent
{
  v2 = [(MUIGenericSuggestion *)self category];
  v3 = +[MUISearchSuggestionCategory recentGenericCategory];
  v4 = v2 == v3;

  return v4;
}

- (id)_allMailboxesSuggestionTitle
{
  v2 = objc_alloc(MEMORY[0x277CCA898]);
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"SuggestionsMenuItemTitle" value:&stru_2826EE5B8 table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_recentsTitle
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [(MUIGenericSuggestion *)self spotlightSuggestion];
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_2826EE5B8];
  v5 = v4;
  if (v3)
  {
    v29 = *MEMORY[0x277D740C0];
    v6 = v29;
    v7 = [MEMORY[0x277D75348] secondaryLabelColor];
    v30[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v27 = v6;
    v9 = [MEMORY[0x277D75348] labelColor];
    v28 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v11 = [v3 currentTokens];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__MUIGenericSuggestion__recentsTitle__block_invoke;
    v24[3] = &unk_27818A650;
    v12 = v10;
    v25 = v12;
    v13 = v8;
    v26 = v13;
    v14 = [v11 ef_compactMap:v24];

    v15 = [v3 userQueryString];
    v16 = [v15 length];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CCA898]);
      v18 = [v3 userQueryString];
      v19 = [v17 initWithString:v18 attributes:v12];
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

- (id)_joinRecentsTitleComponents:(id)a3
{
  v3 = a3;
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
  [v3 enumerateObjectsUsingBlock:&v10];
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