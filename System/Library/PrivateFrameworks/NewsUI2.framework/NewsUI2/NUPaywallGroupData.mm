@interface NUPaywallGroupData
- (NUPaywallGroupData)init;
- (NUPaywallGroupData)initWithGroupType:(int64_t)type groupID:(id)d groupCount:(int)count groupPosition:(int)position groupedArticleIDs:(id)ds groupedIssueIDs:(id)iDs groupedTagIDs:(id)tagIDs groupedRecipeIDs:(id)self0;
@end

@implementation NUPaywallGroupData

- (NUPaywallGroupData)initWithGroupType:(int64_t)type groupID:(id)d groupCount:(int)count groupPosition:(int)position groupedArticleIDs:(id)ds groupedIssueIDs:(id)iDs groupedTagIDs:(id)tagIDs groupedRecipeIDs:(id)self0
{
  v14 = sub_219BF5414();
  v16 = v15;
  if (ds)
  {
    ds = sub_219BF5924();
  }

  tagIDsCopy = tagIDs;
  if (iDs)
  {
    iDs = sub_219BF5924();
  }

  if (tagIDs)
  {
    tagIDsCopy = sub_219BF5924();
  }

  recipeIDsCopy = recipeIDs;
  if (recipeIDsCopy)
  {
    v19 = recipeIDsCopy;
    v20 = sub_219BF5924();
  }

  else
  {
    v20 = 0;
  }

  return PaywallGroupData.init(groupType:groupID:groupCount:groupPosition:groupedArticleIDs:groupedIssueIDs:groupedTagIDs:groupedRecipeIDs:)(type, v14, v16, count, position, ds, iDs, tagIDsCopy, v20);
}

- (NUPaywallGroupData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end