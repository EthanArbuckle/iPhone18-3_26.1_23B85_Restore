@interface ISLanguageCarouselItem
- (ISLanguageCarouselItem)initWithLanguageIdentifier:(id)a3 data:(id)a4;
- (ISLanguageCarouselItem)initWithLocale:(id)a3 data:(id)a4;
- (NSLocale)locale;
- (id)description;
@end

@implementation ISLanguageCarouselItem

- (ISLanguageCarouselItem)initWithLocale:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = [a3 languageIdentifier];
  v8 = [(ISLanguageCarouselItem *)self initWithLanguageIdentifier:v7 data:v6];

  return v8;
}

- (ISLanguageCarouselItem)initWithLanguageIdentifier:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ISLanguageCarouselItem;
  v8 = [(ISLanguageCarouselItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ISLanguageCarouselItem *)v8 setLanguageIdentifier:v6];
    [(ISLanguageCarouselItem *)v9 setData:v7];
  }

  return v9;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = ISLanguageCarouselItem;
  v3 = [(ISLanguageCarouselItem *)&v8 description];
  v4 = [(ISLanguageCarouselItem *)self languageIdentifier];
  v5 = [(ISLanguageCarouselItem *)self data];
  v6 = [v3 stringByAppendingFormat:@", language = %@, data = %@", v4, v5];

  return v6;
}

- (NSLocale)locale
{
  v2 = MEMORY[0x1E695DF58];
  v3 = [(ISLanguageCarouselItem *)self languageIdentifier];
  v4 = [v2 localeWithLocaleIdentifier:v3];

  return v4;
}

@end