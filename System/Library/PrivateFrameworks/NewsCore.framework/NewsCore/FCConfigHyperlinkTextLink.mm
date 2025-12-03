@interface FCConfigHyperlinkTextLink
- (FCConfigHyperlinkTextLink)initWithConfigDictionary:(id)dictionary;
- (FCConfigHyperlinkTextLink)initWithURL:(id)l rangeStart:(int64_t)start rangeLength:(int64_t)length;
@end

@implementation FCConfigHyperlinkTextLink

- (FCConfigHyperlinkTextLink)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FCConfigHyperlinkTextLink;
  v5 = [(FCConfigHyperlinkTextLink *)&v9 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"url", 0);
    url = v5->_url;
    v5->_url = v6;

    v5->_rangeStart = FCAppConfigurationIntegerValue(dictionaryCopy, @"rangeStart", -1);
    v5->_rangeLength = FCAppConfigurationIntegerValue(dictionaryCopy, @"rangeLength", -1);
  }

  return v5;
}

- (FCConfigHyperlinkTextLink)initWithURL:(id)l rangeStart:(int64_t)start rangeLength:(int64_t)length
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = FCConfigHyperlinkTextLink;
  v10 = [(FCConfigHyperlinkTextLink *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_url, l);
    v11->_rangeStart = start;
    v11->_rangeLength = length;
  }

  return v11;
}

@end