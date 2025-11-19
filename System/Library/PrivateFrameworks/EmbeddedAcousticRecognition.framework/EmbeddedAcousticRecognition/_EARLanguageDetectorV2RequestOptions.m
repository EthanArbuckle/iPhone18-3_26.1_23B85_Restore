@interface _EARLanguageDetectorV2RequestOptions
- (_EARLanguageDetectorV2RequestOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _EARLanguageDetectorV2RequestOptions

- (_EARLanguageDetectorV2RequestOptions)init
{
  v3.receiver = self;
  v3.super_class = _EARLanguageDetectorV2RequestOptions;
  result = [(_EARLanguageDetectorV2RequestOptions *)&v3 init];
  if (result)
  {
    *&result->_useMaxpool = 257;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_EARLanguageDetectorV2RequestOptions allocWithZone:?]];
  [(_EARLanguageDetectorV2RequestOptions *)v4 setReportingFrequency:[(_EARLanguageDetectorV2RequestOptions *)self reportingFrequency]];
  [(_EARLanguageDetectorV2RequestOptions *)v4 setUseMaxpool:[(_EARLanguageDetectorV2RequestOptions *)self useMaxpool]];
  return v4;
}

@end