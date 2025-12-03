@interface SUUIItemContentRating
- (SUUIItemContentRating)initWithContentRatingDictionary:(id)dictionary systemName:(id)name;
@end

@implementation SUUIItemContentRating

- (SUUIItemContentRating)initWithContentRatingDictionary:(id)dictionary systemName:(id)name
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = SUUIItemContentRating;
  v8 = [(SUUIItemContentRating *)&v23 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A2E8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      contentRatingAdvisories = v8->_contentRatingAdvisories;
      v8->_contentRatingAdvisories = v10;
    }

    v12 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A318]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      contentRatingName = v8->_contentRatingName;
      v8->_contentRatingName = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"rank"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [v15 stringValue];
      contentRank = v8->_contentRank;
      v8->_contentRank = stringValue;
    }

    v18 = [dictionaryCopy objectForKey:@"system"];

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = nameCopy;
    }

    v20 = [v19 copy];
    contentRatingSystemName = v8->_contentRatingSystemName;
    v8->_contentRatingSystemName = v20;
  }

  return v8;
}

@end