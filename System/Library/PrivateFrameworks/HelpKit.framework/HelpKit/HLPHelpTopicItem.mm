@interface HLPHelpTopicItem
- (BOOL)categoryContainKey:(id)a3;
- (HLPHelpTopicItem)initWithDictionary:(id)a3 helpBookURL:(id)a4 serverType:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
@end

@implementation HLPHelpTopicItem

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = HLPHelpTopicItem;
  v4 = [(HLPHelpItem *)&v10 copyWithZone:a3];
  v5 = [(HLPHelpTopicItem *)self hrefID];
  [v4 setHrefID:v5];

  v6 = [(HLPHelpTopicItem *)self categories];
  [v4 setCategories:v6];

  v7 = [(HLPHelpTopicItem *)self anchor];
  [v4 setAnchor:v7];

  v8 = [(HLPHelpTopicItem *)self glossaryIdentifierString];
  [v4 setGlossaryIdentifierString:v8];

  return v4;
}

- (HLPHelpTopicItem)initWithDictionary:(id)a3 helpBookURL:(id)a4 serverType:(int64_t)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = HLPHelpTopicItem;
  v9 = [(HLPHelpItem *)&v16 initWithDictionary:v8 helpBookURL:a4 serverType:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"href"];
    v11 = [v10 componentsSeparatedByString:@"#"];
    v12 = [v11 firstObject];
    [(HLPHelpTopicItem *)v9 setHrefID:v12];

    if ([v11 count] == 2)
    {
      v13 = [v11 lastObject];
      [(HLPHelpTopicItem *)v9 setAnchor:v13];
    }

    else
    {
      [(HLPHelpTopicItem *)v9 setAnchor:0];
    }

    v14 = [v8 objectForKeyedSubscript:@"categories"];
    [(HLPHelpTopicItem *)v9 setCategories:v14];

    [(HLPHelpTopicItem *)v9 setGlossaryIdentifierString:@"aside"];
  }

  return v9;
}

- (BOOL)categoryContainKey:(id)a3
{
  v4 = a3;
  v5 = [(HLPHelpTopicItem *)self categories];
  if ([v5 count])
  {
    v6 = [(HLPHelpTopicItem *)self categories];
    v7 = [v6 indexOfObject:v4] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v10.receiver = self;
  v10.super_class = HLPHelpTopicItem;
  v4 = [(HLPHelpItem *)&v10 debugDescription];
  v5 = [v3 stringWithString:v4];

  v6 = [(HLPHelpTopicItem *)self hrefID];
  [v5 appendFormat:@"hrefID: %@\n", v6];

  v7 = [(HLPHelpTopicItem *)self anchor];
  [v5 appendFormat:@"anchor: %@\n", v7];

  v8 = [(HLPHelpTopicItem *)self categories];
  [v5 appendFormat:@"categories: %@\n", v8];

  return v5;
}

@end