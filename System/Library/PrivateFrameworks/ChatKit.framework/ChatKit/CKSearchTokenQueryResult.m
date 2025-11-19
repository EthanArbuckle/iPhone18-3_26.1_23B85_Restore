@interface CKSearchTokenQueryResult
- (CKSearchTokenFilter)associatedStagedFilter;
- (CKSearchTokenQueryResult)initWithContentType:(unint64_t)a3 filterOptions:(unint64_t)a4 conversation:(id)a5 itemIdentifier:(id)a6 tokenAddresses:(id)a7;
- (UISearchToken)searchToken;
- (id)attributedSuggestionTextForSearchText:(id)a3 font:(id)a4;
- (id)image;
- (id)tokenText;
- (void)addFilterOption:(unint64_t)a3;
@end

@implementation CKSearchTokenQueryResult

- (CKSearchTokenQueryResult)initWithContentType:(unint64_t)a3 filterOptions:(unint64_t)a4 conversation:(id)a5 itemIdentifier:(id)a6 tokenAddresses:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v22.receiver = self;
  v22.super_class = CKSearchTokenQueryResult;
  v15 = [(CKSearchTokenQueryResult *)&v22 init];
  v16 = v15;
  if (v15)
  {
    [(CKSearchTokenQueryResult *)v15 setContentType:a3];
    [(CKSearchTokenQueryResult *)v16 setItemIdentifier:v13];
    [(CKSearchTokenQueryResult *)v16 setTokenAddresses:v14];
    [(CKSearchTokenQueryResult *)v16 setFilterOptions:a4];
    if (v12)
    {
      [(CKSpotlightQueryResult *)v16 setConversation:v12];
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = [(CKSearchTokenQueryResult *)v16 tokenText];
    v19 = [MEMORY[0x1E696AEC0] stringGUID];
    v20 = [v17 stringWithFormat:@"%@-%@", v18, v19];

    [(CKSpotlightQueryResult *)v16 setIdentifier:v20];
  }

  return v16;
}

- (UISearchToken)searchToken
{
  searchToken = self->_searchToken;
  if (!searchToken)
  {
    v4 = [[CKSearchTokenFilter alloc] initWithContentType:self->_contentType filterOptions:self->_filterOptions itemIdentifier:self->_itemIdentifier tokenAddresses:self->_tokenAddresses];
    v5 = [(CKSpotlightQueryResult *)self conversation];
    [(CKSearchTokenFilter *)v4 setConversation:v5];

    v6 = MEMORY[0x1E69DCF30];
    v7 = [(CKSearchTokenQueryResult *)self image];
    v8 = [(CKSearchTokenQueryResult *)self tokenText];
    v9 = [v6 tokenWithIcon:v7 text:v8];

    [(UISearchToken *)v9 setRepresentedObject:v4];
    v10 = self->_searchToken;
    self->_searchToken = v9;

    searchToken = self->_searchToken;
  }

  return searchToken;
}

- (id)image
{
  contentType = self->_contentType;
  if (contentType <= 3)
  {
    switch(contentType)
    {
      case 0:
        v5 = [(CKSpotlightQueryResult *)self conversation];
        if (v5 && (v6 = v5, -[CKSpotlightQueryResult conversation](self, "conversation"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isGroupConversation], v7, v6, (v8 & 1) != 0))
        {
          v3 = @"person.2.circle";
        }

        else
        {
          v3 = @"person.crop.circle";
        }

        goto LABEL_20;
      case 2:
        v3 = @"link";
        goto LABEL_20;
      case 3:
        v3 = @"photo";
        goto LABEL_20;
    }

LABEL_15:
    v3 = @"message";
    goto LABEL_20;
  }

  if (contentType > 5)
  {
    if (contentType == 6)
    {
      v3 = @"doc";
      goto LABEL_20;
    }

    if (contentType == 8)
    {
      v3 = @"calendar";
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (contentType == 4)
  {
    v3 = @"mappin.and.ellipse";
  }

  else
  {
    v3 = @"wallet.pass";
  }

LABEL_20:
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];

  return v9;
}

- (id)tokenText
{
  v3 = [(CKSpotlightQueryResult *)self conversation];

  if (v3)
  {
    v4 = [(CKSpotlightQueryResult *)self conversation];
    v5 = [v4 hasDisplayName];
    v6 = [(CKSpotlightQueryResult *)self conversation];
    v7 = v6;
    if (v5)
    {
      [v6 displayName];
    }

    else
    {
      [v6 name];
    }
    v8 = ;
  }

  else
  {
    v8 = [(CKSearchTokenQueryResult *)self itemIdentifier];
  }

  if ([(CKSearchTokenQueryResult *)self hasFilterOption:2])
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"FROM_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = [v9 stringWithFormat:v11, v8];

    v13 = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = [v13 userInterfaceLayoutDirection];

    if (v14 == 1)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = @"\u200E";
    }

    v16 = [(__CFString *)v15 stringByAppendingString:v12];

    v8 = v16;
  }

  return v8;
}

- (id)attributedSuggestionTextForSearchText:(id)a3 font:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKSpotlightQueryResult *)self conversation];

  if (v8)
  {
    v9 = [(CKSpotlightQueryResult *)self conversation];
    v10 = [v9 hasDisplayName];
    v11 = [(CKSpotlightQueryResult *)self conversation];
    v12 = v11;
    if (v10)
    {
      [v11 displayName];
    }

    else
    {
      [v11 searchDisplayName];
    }
    v13 = ;
  }

  else
  {
    v13 = [(CKSearchTokenQueryResult *)self itemIdentifier];
  }

  v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v15 = [MEMORY[0x1E69DC888] labelColor];
  if (v7)
  {
    [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:v6 resultText:v13 primaryTextColor:v14 primaryFont:v7 annotatedTextColor:v15 annotatedFont:v7];
  }

  else
  {
    [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:v6 resultText:v13 primaryTextColor:v14 annotatedTextColor:v15];
  }
  v16 = ;

  if (!-[CKSearchTokenQueryResult contentType](self, "contentType") && (-[CKSpotlightQueryResult conversation](self, "conversation"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19) && (!-[CKSearchTokenQueryResult hasFilterOption:](self, "hasFilterOption:", 2) ? ((-[CKSpotlightQueryResult conversation](self, "conversation"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 isGroupConversation], v23, CKFrameworkBundle(), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20, !v24) ? (v22 = @"MESSAGES_WITH_%@") : (v22 = @"MESSAGES_IN_%@")) : (CKFrameworkBundle(), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20, v22 = @"MESSAGES_FROM_%@"), objc_msgSend(v20, "localizedStringForKey:value:table:", v22, &stru_1F04268F8, @"ChatKit"), v25 = objc_claimAutoreleasedReturnValue(), v21, v25))
  {
    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = *MEMORY[0x1E69DB650];
    v27 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v31[0] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v29 = [v26 initWithString:v25 attributes:v28];

    v17 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v29, v16];
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (void)addFilterOption:(unint64_t)a3
{
  v4 = [(CKSearchTokenQueryResult *)self filterOptions]| a3;

  [(CKSearchTokenQueryResult *)self setFilterOptions:v4];
}

- (CKSearchTokenFilter)associatedStagedFilter
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedStagedFilter);

  return WeakRetained;
}

@end