@interface HLPHelpTopicItem
- (BOOL)categoryContainKey:(id)key;
- (HLPHelpTopicItem)initWithDictionary:(id)dictionary helpBookURL:(id)l serverType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
@end

@implementation HLPHelpTopicItem

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = HLPHelpTopicItem;
  v4 = [(HLPHelpItem *)&v10 copyWithZone:zone];
  hrefID = [(HLPHelpTopicItem *)self hrefID];
  [v4 setHrefID:hrefID];

  categories = [(HLPHelpTopicItem *)self categories];
  [v4 setCategories:categories];

  anchor = [(HLPHelpTopicItem *)self anchor];
  [v4 setAnchor:anchor];

  glossaryIdentifierString = [(HLPHelpTopicItem *)self glossaryIdentifierString];
  [v4 setGlossaryIdentifierString:glossaryIdentifierString];

  return v4;
}

- (HLPHelpTopicItem)initWithDictionary:(id)dictionary helpBookURL:(id)l serverType:(int64_t)type
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = HLPHelpTopicItem;
  v9 = [(HLPHelpItem *)&v16 initWithDictionary:dictionaryCopy helpBookURL:l serverType:type];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"href"];
    v11 = [v10 componentsSeparatedByString:@"#"];
    firstObject = [v11 firstObject];
    [(HLPHelpTopicItem *)v9 setHrefID:firstObject];

    if ([v11 count] == 2)
    {
      lastObject = [v11 lastObject];
      [(HLPHelpTopicItem *)v9 setAnchor:lastObject];
    }

    else
    {
      [(HLPHelpTopicItem *)v9 setAnchor:0];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"categories"];
    [(HLPHelpTopicItem *)v9 setCategories:v14];

    [(HLPHelpTopicItem *)v9 setGlossaryIdentifierString:@"aside"];
  }

  return v9;
}

- (BOOL)categoryContainKey:(id)key
{
  keyCopy = key;
  categories = [(HLPHelpTopicItem *)self categories];
  if ([categories count])
  {
    categories2 = [(HLPHelpTopicItem *)self categories];
    v7 = [categories2 indexOfObject:keyCopy] != 0x7FFFFFFFFFFFFFFFLL;
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

  hrefID = [(HLPHelpTopicItem *)self hrefID];
  [v5 appendFormat:@"hrefID: %@\n", hrefID];

  anchor = [(HLPHelpTopicItem *)self anchor];
  [v5 appendFormat:@"anchor: %@\n", anchor];

  categories = [(HLPHelpTopicItem *)self categories];
  [v5 appendFormat:@"categories: %@\n", categories];

  return v5;
}

@end