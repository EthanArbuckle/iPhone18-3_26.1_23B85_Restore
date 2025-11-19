@interface HLPHelpSearchResult
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
@end

@implementation HLPHelpSearchResult

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(HLPHelpSearchResult *)self identifier];
  [v4 setIdentifier:v5];

  [v4 setWeight:{-[HLPHelpSearchResult weight](self, "weight")}];
  [v4 setMatchCount:{-[HLPHelpSearchResult matchCount](self, "matchCount")}];
  [(HLPHelpSearchResult *)self relevanceScore];
  [v4 setRelevanceScore:?];
  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HLPHelpSearchResult *)self identifier];
  v5 = [(HLPHelpSearchResult *)self weight];
  v6 = [(HLPHelpSearchResult *)self matchCount];
  [(HLPHelpSearchResult *)self relevanceScore];
  v8 = [v3 stringWithFormat:@"identifier: %@, weight: %ld matchCount: %ld relevanceScore %f", v4, v5, v6, v7];

  return v8;
}

@end