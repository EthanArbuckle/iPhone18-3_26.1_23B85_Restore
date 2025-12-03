@interface ISLanguageCarouselItem
- (ISLanguageCarouselItem)initWithLanguageIdentifier:(id)identifier data:(id)data;
- (ISLanguageCarouselItem)initWithLocale:(id)locale data:(id)data;
- (NSLocale)locale;
- (id)description;
@end

@implementation ISLanguageCarouselItem

- (ISLanguageCarouselItem)initWithLocale:(id)locale data:(id)data
{
  dataCopy = data;
  languageIdentifier = [locale languageIdentifier];
  v8 = [(ISLanguageCarouselItem *)self initWithLanguageIdentifier:languageIdentifier data:dataCopy];

  return v8;
}

- (ISLanguageCarouselItem)initWithLanguageIdentifier:(id)identifier data:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = ISLanguageCarouselItem;
  v8 = [(ISLanguageCarouselItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ISLanguageCarouselItem *)v8 setLanguageIdentifier:identifierCopy];
    [(ISLanguageCarouselItem *)v9 setData:dataCopy];
  }

  return v9;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = ISLanguageCarouselItem;
  v3 = [(ISLanguageCarouselItem *)&v8 description];
  languageIdentifier = [(ISLanguageCarouselItem *)self languageIdentifier];
  data = [(ISLanguageCarouselItem *)self data];
  v6 = [v3 stringByAppendingFormat:@", language = %@, data = %@", languageIdentifier, data];

  return v6;
}

- (NSLocale)locale
{
  v2 = MEMORY[0x1E695DF58];
  languageIdentifier = [(ISLanguageCarouselItem *)self languageIdentifier];
  v4 = [v2 localeWithLocaleIdentifier:languageIdentifier];

  return v4;
}

@end