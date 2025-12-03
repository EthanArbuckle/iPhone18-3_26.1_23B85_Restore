@interface CVNLPTextDecoder
- (CVNLPTextDecoder)initWithLanguageResourceBundle:(id)bundle;
@end

@implementation CVNLPTextDecoder

- (CVNLPTextDecoder)initWithLanguageResourceBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = CVNLPTextDecoder;
  v6 = [(CVNLPTextDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_languageResourceBundle, bundle);
  }

  return v7;
}

@end