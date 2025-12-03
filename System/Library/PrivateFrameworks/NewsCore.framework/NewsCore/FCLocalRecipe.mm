@interface FCLocalRecipe
- (FCLocalRecipe)initWithIdentifier:(id)identifier title:(id)title shortExcerpt:(id)excerpt sourceChannel:(id)channel thumbnailURL:(id)l contentURL:(id)rL contentFormat:(unint64_t)format contentEncoding:(unint64_t)self0 thumbnailPrimaryColor:(id)self1 thumbnailBackgroundColor:(id)self2;
@end

@implementation FCLocalRecipe

- (FCLocalRecipe)initWithIdentifier:(id)identifier title:(id)title shortExcerpt:(id)excerpt sourceChannel:(id)channel thumbnailURL:(id)l contentURL:(id)rL contentFormat:(unint64_t)format contentEncoding:(unint64_t)self0 thumbnailPrimaryColor:(id)self1 thumbnailBackgroundColor:(id)self2
{
  identifierCopy = identifier;
  obj = title;
  titleCopy = title;
  excerptCopy = excerpt;
  excerptCopy2 = excerpt;
  channelCopy = channel;
  lCopy = l;
  lCopy2 = l;
  rLCopy = rL;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v35.receiver = self;
  v35.super_class = FCLocalRecipe;
  v25 = [(FCLocalRecipe *)&v35 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_identifier, identifier);
    objc_storeStrong(&v26->_title, obj);
    objc_storeStrong(&v26->_shortExcerpt, excerptCopy);
    v27 = [channelCopy copy];
    sourceChannel = v26->_sourceChannel;
    v26->_sourceChannel = v27;

    objc_storeStrong(&v26->_thumbnailURL, lCopy);
    objc_storeStrong(&v26->_contentURL, rL);
    v26->_contentFormat = format;
    v26->_contentEncoding = encoding;
    objc_storeStrong(&v26->_thumbnailPrimaryColor, color);
    objc_storeStrong(&v26->_thumbnailBackgroundColor, backgroundColor);
  }

  return v26;
}

@end