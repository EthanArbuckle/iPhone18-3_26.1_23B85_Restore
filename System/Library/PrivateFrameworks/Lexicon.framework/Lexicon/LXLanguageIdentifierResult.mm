@interface LXLanguageIdentifierResult
- (LXLanguageIdentifierResult)initWithLocale:(id)locale probability:(double)probability;
@end

@implementation LXLanguageIdentifierResult

- (LXLanguageIdentifierResult)initWithLocale:(id)locale probability:(double)probability
{
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = LXLanguageIdentifierResult;
  v8 = [(LXLanguageIdentifierResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, locale);
    v9->_probability = probability;
  }

  return v9;
}

@end