@interface _NBRegExMatcher
- (BOOL)matchNationalNumber:(id)a3 phoneNumberDesc:(id)a4 allowsPrefixMatch:(BOOL)a5;
@end

@implementation _NBRegExMatcher

- (BOOL)matchNationalNumber:(id)a3 phoneNumberDesc:(id)a4 allowsPrefixMatch:(BOOL)a5
{
  v7 = a3;
  v8 = [a4 nationalNumberPattern];
  if ([v8 length])
  {
    v9 = +[_NBPhoneNumberUtil sharedInstance];
    v10 = [v9 entireRegularExpressionWithPattern:v8 options:0 error:0];

    if (v10)
    {
      v11 = [v7 length];
      v12 = +[_NBRegularExpressionCache sharedInstance];
      v13 = [v12 regularExpressionForPattern:v8 error:0];

      if (v13)
      {
        v14 = [v13 firstMatchInString:v7 options:4 range:{0, v11}];
        if ([v14 numberOfRanges])
        {
          v15 = [v10 firstMatchInString:v7 options:4 range:{0, v11}];
          v16 = v15;
          v17 = a5 || [v15 numberOfRanges] != 0;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end