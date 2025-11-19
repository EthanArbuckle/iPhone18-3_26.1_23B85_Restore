@interface SUUIReviewConfiguration
- (SUUIReviewConfiguration)initWithConfigurationDictionary:(id)a3;
@end

@implementation SUUIReviewConfiguration

- (SUUIReviewConfiguration)initWithConfigurationDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUUIReviewConfiguration;
  v5 = [(SUUIReviewConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"allVersionsUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      allVersionsURLString = v5->_allVersionsURLString;
      v5->_allVersionsURLString = v7;
    }

    v9 = [v4 objectForKey:@"currentVersionUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      currentVersionURLString = v5->_currentVersionURLString;
      v5->_currentVersionURLString = v10;
    }

    v12 = [v4 objectForKey:@"inlineRatingUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      ratingURLString = v5->_ratingURLString;
      v5->_ratingURLString = v13;
    }

    v15 = [v4 objectForKey:@"pageNumberQueryParam"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      pageNumberQueryParameter = v5->_pageNumberQueryParameter;
      v5->_pageNumberQueryParameter = v16;
    }
  }

  return v5;
}

@end