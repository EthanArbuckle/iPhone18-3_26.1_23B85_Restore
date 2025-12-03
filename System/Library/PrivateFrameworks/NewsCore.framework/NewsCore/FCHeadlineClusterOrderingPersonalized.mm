@interface FCHeadlineClusterOrderingPersonalized
- (id)orderTopicsWithClusteredHeadlines:(id)headlines additionalHeadlines:(id)additionalHeadlines subscribedTagIDs:(id)ds scoresByArticleID:(id)d personalizer:(id)personalizer tagNameProvider:(id)provider personalizationTreatment:(id)treatment translationProvider:(id)self0;
@end

@implementation FCHeadlineClusterOrderingPersonalized

- (id)orderTopicsWithClusteredHeadlines:(id)headlines additionalHeadlines:(id)additionalHeadlines subscribedTagIDs:(id)ds scoresByArticleID:(id)d personalizer:(id)personalizer tagNameProvider:(id)provider personalizationTreatment:(id)treatment translationProvider:(id)self0
{
  v11 = MEMORY[0x1E695DFB8];
  personalizerCopy = personalizer;
  allKeys = [headlines allKeys];
  v14 = [personalizerCopy rankTagIDsDescending:allKeys];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = [v11 orderedSetWithArray:v15];

  return v16;
}

@end