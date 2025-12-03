@interface _NBRegExMatcher
- (BOOL)matchNationalNumber:(id)number phoneNumberDesc:(id)desc allowsPrefixMatch:(BOOL)match;
@end

@implementation _NBRegExMatcher

- (BOOL)matchNationalNumber:(id)number phoneNumberDesc:(id)desc allowsPrefixMatch:(BOOL)match
{
  numberCopy = number;
  nationalNumberPattern = [desc nationalNumberPattern];
  if ([nationalNumberPattern length])
  {
    v9 = +[_NBPhoneNumberUtil sharedInstance];
    v10 = [v9 entireRegularExpressionWithPattern:nationalNumberPattern options:0 error:0];

    if (v10)
    {
      v11 = [numberCopy length];
      v12 = +[_NBRegularExpressionCache sharedInstance];
      v13 = [v12 regularExpressionForPattern:nationalNumberPattern error:0];

      if (v13)
      {
        v14 = [v13 firstMatchInString:numberCopy options:4 range:{0, v11}];
        if ([v14 numberOfRanges])
        {
          v15 = [v10 firstMatchInString:numberCopy options:4 range:{0, v11}];
          v16 = v15;
          v17 = match || [v15 numberOfRanges] != 0;
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