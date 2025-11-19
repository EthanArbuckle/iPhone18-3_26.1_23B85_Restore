@interface LXLanguageIdentifierResult
- (LXLanguageIdentifierResult)initWithLocale:(id)a3 probability:(double)a4;
@end

@implementation LXLanguageIdentifierResult

- (LXLanguageIdentifierResult)initWithLocale:(id)a3 probability:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = LXLanguageIdentifierResult;
  v8 = [(LXLanguageIdentifierResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, a3);
    v9->_probability = a4;
  }

  return v9;
}

@end