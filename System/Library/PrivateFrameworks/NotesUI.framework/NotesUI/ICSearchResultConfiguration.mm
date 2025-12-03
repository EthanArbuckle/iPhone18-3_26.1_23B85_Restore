@interface ICSearchResultConfiguration
- (BOOL)isEqual:(id)equal;
- (ICSearchResultConfiguration)initWithSearchString:(id)string searchSuggestionType:(unint64_t)type isTopHit:(BOOL)hit foundAttachmentObjectID:(id)d sortableSearchableItem:(id)item;
- (unint64_t)hash;
@end

@implementation ICSearchResultConfiguration

- (ICSearchResultConfiguration)initWithSearchString:(id)string searchSuggestionType:(unint64_t)type isTopHit:(BOOL)hit foundAttachmentObjectID:(id)d sortableSearchableItem:(id)item
{
  stringCopy = string;
  dCopy = d;
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = ICSearchResultConfiguration;
  v16 = [(ICSearchResultConfiguration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_searchString, string);
    v17->_searchStringLength = [stringCopy length];
    v17->_searchSuggestionType = type;
    v17->_isTopHit = hit;
    objc_storeStrong(&v17->_foundAttachmentObjectID, d);
    objc_storeStrong(&v17->_sortableSearchableItem, item);
  }

  return v17;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    searchString = [(ICSearchResultConfiguration *)self searchString];
    v5 = [searchString hash];
    searchSuggestionType = [(ICSearchResultConfiguration *)self searchSuggestionType];
    [(ICSearchResultConfiguration *)self isTopHit];
    foundAttachmentObjectID = [(ICSearchResultConfiguration *)self foundAttachmentObjectID];
    [foundAttachmentObjectID hash];
    sortableSearchableItem = [(ICSearchResultConfiguration *)self sortableSearchableItem];
    [sortableSearchableItem hash];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, searchSuggestionType);

    return self->_hash;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v24.receiver = self;
  v24.super_class = ICSearchResultConfiguration;
  equalCopy = equal;
  v5 = [(ICSearchResultConfiguration *)&v24 isEqual:equalCopy];
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
  searchString = [v6 searchString];
  v10 = [v8 isEqualToString:searchString];

  if (!v10)
  {
    goto LABEL_8;
  }

  searchSuggestionType = [(ICSearchResultConfiguration *)self searchSuggestionType];
  if (searchSuggestionType != [v6 searchSuggestionType])
  {
    goto LABEL_8;
  }

  isTopHit = [(ICSearchResultConfiguration *)self isTopHit];
  if (isTopHit != [v6 isTopHit])
  {
    goto LABEL_8;
  }

  foundAttachmentObjectID = [(ICSearchResultConfiguration *)self foundAttachmentObjectID];
  foundAttachmentObjectID2 = [v6 foundAttachmentObjectID];
  v17 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738] == foundAttachmentObjectID)
  {
    v18 = 0;
  }

  else
  {
    v18 = foundAttachmentObjectID;
  }

  v19 = v18;
  if (v17 == foundAttachmentObjectID2)
  {
    v20 = 0;
  }

  else
  {
    v20 = foundAttachmentObjectID2;
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
    foundAttachmentObjectID = [(ICSearchResultConfiguration *)self sortableSearchableItem];
    foundAttachmentObjectID2 = [v6 sortableSearchableItem];
    v13 = [foundAttachmentObjectID isEqual:foundAttachmentObjectID2];
LABEL_24:

    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  return v13;
}

@end