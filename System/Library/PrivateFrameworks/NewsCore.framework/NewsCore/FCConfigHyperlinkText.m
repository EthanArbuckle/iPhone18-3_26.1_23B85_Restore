@interface FCConfigHyperlinkText
- (FCConfigHyperlinkText)initWithConfigDictionary:(id)a3;
- (FCConfigHyperlinkText)initWithText:(id)a3 links:(id)a4;
@end

@implementation FCConfigHyperlinkText

- (FCConfigHyperlinkText)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FCConfigHyperlinkText;
  v5 = [(FCConfigHyperlinkText *)&v12 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"text", 0);
    text = v5->_text;
    v5->_text = v6;

    v8 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"links", 0);
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

- (FCConfigHyperlinkText)initWithText:(id)a3 links:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCConfigHyperlinkText;
  v9 = [(FCConfigHyperlinkText *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, a3);
    objc_storeStrong(&v10->_links, a4);
  }

  return v10;
}

@end