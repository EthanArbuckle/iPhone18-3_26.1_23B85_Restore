@interface ICSearchResultConfiguration
- (BOOL)isEqual:(id)a3;
- (ICSearchResultConfiguration)initWithSearchString:(id)a3 searchSuggestionType:(unint64_t)a4 isTopHit:(BOOL)a5 foundAttachmentObjectID:(id)a6 sortableSearchableItem:(id)a7;
- (unint64_t)hash;
@end

@implementation ICSearchResultConfiguration

- (ICSearchResultConfiguration)initWithSearchString:(id)a3 searchSuggestionType:(unint64_t)a4 isTopHit:(BOOL)a5 foundAttachmentObjectID:(id)a6 sortableSearchableItem:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = ICSearchResultConfiguration;
  v16 = [(ICSearchResultConfiguration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_searchString, a3);
    v17->_searchStringLength = [v13 length];
    v17->_searchSuggestionType = a4;
    v17->_isTopHit = a5;
    objc_storeStrong(&v17->_foundAttachmentObjectID, a6);
    objc_storeStrong(&v17->_sortableSearchableItem, a7);
  }

  return v17;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICSearchResultConfiguration *)self searchString];
    v5 = [v4 hash];
    v6 = [(ICSearchResultConfiguration *)self searchSuggestionType];
    [(ICSearchResultConfiguration *)self isTopHit];
    v7 = [(ICSearchResultConfiguration *)self foundAttachmentObjectID];
    [v7 hash];
    v8 = [(ICSearchResultConfiguration *)self sortableSearchableItem];
    [v8 hash];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, v6);

    return self->_hash;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v24.receiver = self;
  v24.super_class = ICSearchResultConfiguration;
  v4 = a3;
  v5 = [(ICSearchResultConfiguration *)&v24 isEqual:v4];
  objc_opt_class();
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [(ICSearchResultConfiguration *)self searchString:v24.receiver];
  v9 = [v6 searchString];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [(ICSearchResultConfiguration *)self searchSuggestionType];
  if (v11 != [v6 searchSuggestionType])
  {
    goto LABEL_8;
  }

  v12 = [(ICSearchResultConfiguration *)self isTopHit];
  if (v12 != [v6 isTopHit])
  {
    goto LABEL_8;
  }

  v15 = [(ICSearchResultConfiguration *)self foundAttachmentObjectID];
  v16 = [v6 foundAttachmentObjectID];
  v17 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738] == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v19 = v18;
  if (v17 == v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = v16;
  }

  v21 = v20;
  if (!(v19 | v21))
  {

    goto LABEL_22;
  }

  v22 = v21;
  if (!v19 || !v21)
  {

    v13 = 0;
    goto LABEL_24;
  }

  v23 = [v19 isEqual:v21];

  if (v23)
  {
LABEL_22:
    v15 = [(ICSearchResultConfiguration *)self sortableSearchableItem];
    v16 = [v6 sortableSearchableItem];
    v13 = [v15 isEqual:v16];
LABEL_24:

    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  return v13;
}

@end