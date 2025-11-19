@interface CVNLPTextDecoder
- (CVNLPTextDecoder)initWithLanguageResourceBundle:(id)a3;
@end

@implementation CVNLPTextDecoder

- (CVNLPTextDecoder)initWithLanguageResourceBundle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CVNLPTextDecoder;
  v6 = [(CVNLPTextDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_languageResourceBundle, a3);
  }

  return v7;
}

@end