@interface NUPaywallGroupData
- (NUPaywallGroupData)init;
- (NUPaywallGroupData)initWithGroupType:(int64_t)a3 groupID:(id)a4 groupCount:(int)a5 groupPosition:(int)a6 groupedArticleIDs:(id)a7 groupedIssueIDs:(id)a8 groupedTagIDs:(id)a9 groupedRecipeIDs:(id)a10;
@end

@implementation NUPaywallGroupData

- (NUPaywallGroupData)initWithGroupType:(int64_t)a3 groupID:(id)a4 groupCount:(int)a5 groupPosition:(int)a6 groupedArticleIDs:(id)a7 groupedIssueIDs:(id)a8 groupedTagIDs:(id)a9 groupedRecipeIDs:(id)a10
{
  v14 = sub_219BF5414();
  v16 = v15;
  if (a7)
  {
    a7 = sub_219BF5924();
  }

  v17 = a9;
  if (a8)
  {
    a8 = sub_219BF5924();
  }

  if (a9)
  {
    v17 = sub_219BF5924();
  }

  v18 = a10;
  if (v18)
  {
    v19 = v18;
    v20 = sub_219BF5924();
  }

  else
  {
    v20 = 0;
  }

  return PaywallGroupData.init(groupType:groupID:groupCount:groupPosition:groupedArticleIDs:groupedIssueIDs:groupedTagIDs:groupedRecipeIDs:)(a3, v14, v16, a5, a6, a7, a8, v17, v20);
}

- (NUPaywallGroupData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end