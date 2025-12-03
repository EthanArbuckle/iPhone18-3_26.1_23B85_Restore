@interface FCConfigHyperlinkText
- (FCConfigHyperlinkText)initWithConfigDictionary:(id)dictionary;
- (FCConfigHyperlinkText)initWithText:(id)text links:(id)links;
@end

@implementation FCConfigHyperlinkText

- (FCConfigHyperlinkText)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FCConfigHyperlinkText;
  v5 = [(FCConfigHyperlinkText *)&v12 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"text", 0);
    text = v5->_text;
    v5->_text = v6;

    v8 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"links", 0);
    v9 = [v8 fc_arrayByTransformingWithBlock:&__block_literal_global_171];
    links = v5->_links;
    v5->_links = v9;
  }

  return v5;
}

FCConfigHyperlinkTextLink *__50__FCConfigHyperlinkText_initWithConfigDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCConfigHyperlinkTextLink alloc] initWithConfigDictionary:v2];

  return v3;
}

- (FCConfigHyperlinkText)initWithText:(id)text links:(id)links
{
  textCopy = text;
  linksCopy = links;
  v12.receiver = self;
  v12.super_class = FCConfigHyperlinkText;
  v9 = [(FCConfigHyperlinkText *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, text);
    objc_storeStrong(&v10->_links, links);
  }

  return v10;
}

@end