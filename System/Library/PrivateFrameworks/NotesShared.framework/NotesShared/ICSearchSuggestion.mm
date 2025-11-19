@interface ICSearchSuggestion
+ (NSArray)orderedDefaultSearchSuggestions;
+ (id)iconImageForToken:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICSearchSuggestion)initWithSuggestion:(id)a3;
- (ICSearchSuggestion)initWithType:(unint64_t)a3;
- (NSString)iconImageName;
- (UIImage)iconImage;
- (UISearchSuggestionItem)uiSuggestion;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ICSearchSuggestion

- (ICSearchSuggestion)initWithType:(unint64_t)a3
{
  v39.receiver = self;
  v39.super_class = ICSearchSuggestion;
  v4 = [(ICSearchSuggestion *)&v39 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    if (a3 > 3)
    {
      if (a3 <= 5)
      {
        if (a3 == 4)
        {
          v27 = __ICLocalizedFrameworkString_impl(@"Notes with Tags", @"Notes with Tags", 0, 1);
          suggestionItemTitle = v5->_suggestionItemTitle;
          v5->_suggestionItemTitle = v27;

          v29 = [ICSearchToken alloc];
          subQueryString = __ICLocalizedFrameworkString_impl(@"Tags", @"Tags", 0, 1);
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ = 1", @"_ICItemHasICItemHasTags"];
          v11 = v29;
          v12 = subQueryString;
          v13 = v10;
          v14 = 4;
        }

        else
        {
          v15 = __ICLocalizedFrameworkString_impl(@"Notes with Drawings", @"Notes with Drawings", 0, 1);
          v16 = v5->_suggestionItemTitle;
          v5->_suggestionItemTitle = v15;

          v17 = [ICSearchToken alloc];
          subQueryString = __ICLocalizedFrameworkString_impl(@"Drawings", @"Drawings", 0, 1);
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ = 1", @"_ICItemHasDrawings"];
          v11 = v17;
          v12 = subQueryString;
          v13 = v10;
          v14 = 5;
        }

        goto LABEL_19;
      }

      if (a3 == 6)
      {
        v33 = __ICLocalizedFrameworkString_impl(@"Notes with Scanned Documents", @"Notes with Scanned Documents", 0, 1);
        v34 = v5->_suggestionItemTitle;
        v5->_suggestionItemTitle = v33;

        v35 = [ICSearchToken alloc];
        subQueryString = __ICLocalizedFrameworkString_impl(@"Scanned Documents", @"Scanned Documents", 0, 1);
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ = 1", @"_ICItemHasScannedDocuments"];
        v11 = v35;
        v12 = subQueryString;
        v13 = v10;
        v14 = 6;
        goto LABEL_19;
      }

      if (a3 == 7)
      {
        v21 = __ICLocalizedFrameworkString_impl(@"Notes with Attachments", @"Notes with Attachments", 0, 1);
        v22 = v5->_suggestionItemTitle;
        v5->_suggestionItemTitle = v21;

        v23 = [ICSearchToken alloc];
        subQueryString = __ICLocalizedFrameworkString_impl(@"Attachments", @"Attachments", 0, 1);
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ = 1", @"_ICItemHasAttachments"];
        v11 = v23;
        v12 = subQueryString;
        v13 = v10;
        v14 = 7;
        goto LABEL_19;
      }
    }

    else
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v30 = __ICLocalizedFrameworkString_impl(@"Locked Notes", @"Locked Notes", 0, 1);
          v31 = v5->_suggestionItemTitle;
          v5->_suggestionItemTitle = v30;

          v32 = [ICSearchToken alloc];
          subQueryString = __ICLocalizedFrameworkString_impl(@"Locked", @"Locked", 0, 1);
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ = 1", @"_ICItemIsLocked"];
          v11 = v32;
          v12 = subQueryString;
          v13 = v10;
          v14 = 2;
        }

        else
        {
          v18 = __ICLocalizedFrameworkString_impl(@"Notes with Checklists", @"Notes with Checklists", 0, 1);
          v19 = v5->_suggestionItemTitle;
          v5->_suggestionItemTitle = v18;

          v20 = [ICSearchToken alloc];
          subQueryString = __ICLocalizedFrameworkString_impl(@"Checklists", @"Checklists", 0, 1);
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ = 1", @"_ICItemHasChecklists"];
          v11 = v20;
          v12 = subQueryString;
          v13 = v10;
          v14 = 3;
        }

        goto LABEL_19;
      }

      if (!a3)
      {
        v24 = v4->_suggestionItemTitle;
        v4->_suggestionItemTitle = @" ";

        v25 = [[ICSearchToken alloc] initWithTitle:@" " subQueryString:&stru_2827172C0 suggestionType:0];
        token = v5->_token;
        v5->_token = v25;

        subQueryString = v5->_subQueryString;
        v5->_subQueryString = @" ";
LABEL_20:

        return v5;
      }

      if (a3 == 1)
      {
        v6 = __ICLocalizedFrameworkString_impl(@"Shared Notes", @"Shared Notes", 0, 1);
        v7 = v5->_suggestionItemTitle;
        v5->_suggestionItemTitle = v6;

        v8 = [ICSearchToken alloc];
        subQueryString = __ICLocalizedFrameworkString_impl(@"Shared", @"Shared", 0, 1);
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ = 1", @"_ICItemIsShared"];
        v11 = v8;
        v12 = subQueryString;
        v13 = v10;
        v14 = 1;
LABEL_19:
        v36 = [(ICSearchToken *)v11 initWithTitle:v12 subQueryString:v13 suggestionType:v14];
        v37 = v5->_token;
        v5->_token = v36;

        goto LABEL_20;
      }
    }
  }

  return v5;
}

- (ICSearchSuggestion)initWithSuggestion:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = ICSearchSuggestion;
  v6 = [(ICSearchSuggestion *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_csSuggestion, a3);
    v8 = [v5 localizedAttributedSuggestion];
    v9 = [v8 string];
    suggestionItemTitle = v7->_suggestionItemTitle;
    v7->_suggestionItemTitle = v9;

    v11 = [ICSearchToken alloc];
    v12 = [v5 currentToken];
    v13 = [(ICSearchToken *)v11 initWithCSSuggestionToken:v12];
    token = v7->_token;
    v7->_token = v13;

    v15 = [v5 userQueryString];
    subQueryString = v7->_subQueryString;
    v7->_subQueryString = v15;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = -[ICSearchSuggestion type](self, "type"), v5 == [v4 type]))
  {
    v6 = [(ICSearchSuggestion *)self csSuggestion];
    v7 = [v4 csSuggestion];
    if (v6 == v7)
    {
      v10 = [(ICSearchSuggestion *)self suggestionItemTitle];
      v11 = [v4 suggestionItemTitle];
      v8 = [v10 isEqualToString:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ICSearchSuggestion;
  v4 = [(ICSearchSuggestion *)&v8 description];
  v5 = [(ICSearchSuggestion *)self token];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (NSString)iconImageName
{
  v2 = [(ICSearchSuggestion *)self token];
  v3 = [v2 iconImageName];

  return v3;
}

- (UIImage)iconImage
{
  v3 = [(ICSearchSuggestion *)self csSuggestion];

  if (v3)
  {
    v4 = [ICSearchToken alloc];
    v5 = [(ICSearchSuggestion *)self csSuggestion];
    v6 = [v5 currentToken];
    v7 = [(ICSearchToken *)v4 initWithCSSuggestionToken:v6];
  }

  else
  {
    v7 = [(ICSearchSuggestion *)self token];
  }

  v8 = [ICSearchSuggestion iconImageForToken:v7];

  return v8;
}

+ (id)iconImageForToken:(id)a3
{
  v3 = [a3 iconImageName];
  v4 = v3;
  v5 = @"magnifyingglass";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x277D755B8] ic_systemImageNamed:v6 textStyle:*MEMORY[0x277D76A28]];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(ICSearchSuggestion *)self csSuggestion];

  if (v5)
  {
    v6 = [(ICSearchSuggestion *)self csSuggestion];
    v7 = [v6 copyWithZone:a3];

    v8 = [[ICSearchSuggestion allocWithZone:?], "initWithSuggestion:", v7];
    return v8;
  }

  else
  {
    v10 = [ICSearchSuggestion allocWithZone:a3];
    v11 = [(ICSearchSuggestion *)self type];

    return [(ICSearchSuggestion *)v10 initWithType:v11];
  }
}

- (UISearchSuggestionItem)uiSuggestion
{
  v3 = objc_alloc(MEMORY[0x277D759F8]);
  v4 = [(ICSearchSuggestion *)self suggestionItemTitle];
  v5 = [(ICSearchSuggestion *)self suggestionItemTitle];
  v6 = [(ICSearchSuggestion *)self iconImage];
  v7 = [v3 initWithLocalizedSuggestion:v4 localizedDescription:v5 iconImage:v6];

  [v7 setRepresentedObject:self];

  return v7;
}

+ (NSArray)orderedDefaultSearchSuggestions
{
  if (orderedDefaultSearchSuggestions_onceToken != -1)
  {
    +[ICSearchSuggestion orderedDefaultSearchSuggestions];
  }

  v3 = orderedDefaultSearchSuggestions_orderedDefaultSearchSuggestions;

  return v3;
}

void __53__ICSearchSuggestion_orderedDefaultSearchSuggestions__block_invoke()
{
  v9[7] = *MEMORY[0x277D85DE8];
  v0 = [[ICSearchSuggestion alloc] initWithType:1];
  v1 = [[ICSearchSuggestion alloc] initWithType:2, v0];
  v9[1] = v1;
  v2 = [[ICSearchSuggestion alloc] initWithType:3];
  v9[2] = v2;
  v3 = [[ICSearchSuggestion alloc] initWithType:4];
  v9[3] = v3;
  v4 = [[ICSearchSuggestion alloc] initWithType:5];
  v9[4] = v4;
  v5 = [[ICSearchSuggestion alloc] initWithType:6];
  v9[5] = v5;
  v6 = [[ICSearchSuggestion alloc] initWithType:7];
  v9[6] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:7];
  v8 = orderedDefaultSearchSuggestions_orderedDefaultSearchSuggestions;
  orderedDefaultSearchSuggestions_orderedDefaultSearchSuggestions = v7;
}

@end