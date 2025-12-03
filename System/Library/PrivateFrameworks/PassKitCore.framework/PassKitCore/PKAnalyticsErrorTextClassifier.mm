@interface PKAnalyticsErrorTextClassifier
+ (BOOL)containsAnyTerm:(id)term inText:(id)text;
+ (id)analyticsValueForResult:(int64_t)result;
+ (int64_t)classifyErrorText:(id)text;
@end

@implementation PKAnalyticsErrorTextClassifier

+ (int64_t)classifyErrorText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy && [textCopy length])
  {
    lowercaseString = [v5 lowercaseString];
    if (![self containsAnyTerm:&unk_1F23B3FC8 inText:lowercaseString] || objc_msgSend(lowercaseString, "containsString:", @"name") && ((objc_msgSend(lowercaseString, "containsString:", @"street") & 1) != 0 || (objc_msgSend(lowercaseString, "containsString:", @"country") & 1) != 0 || (objc_msgSend(lowercaseString, "containsString:", @"county") & 1) != 0 || objc_msgSend(lowercaseString, "containsString:", @"city")))
    {
      if ([self containsAnyTerm:&unk_1F23B3FE0 inText:lowercaseString] && (objc_msgSend(self, "containsAnyTerm:inText:", &unk_1F23B4010, lowercaseString) & 1) != 0)
      {
        v7 = 1;
      }

      else if ([self containsAnyTerm:&unk_1F23B3FF8 inText:lowercaseString] && (objc_msgSend(self, "containsAnyTerm:inText:", &unk_1F23B4010, lowercaseString) & 1) != 0)
      {
        v7 = 2;
      }

      else if ([self containsAnyTerm:&unk_1F23B4010 inText:lowercaseString])
      {
        v7 = 3;
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

+ (id)analyticsValueForResult:(int64_t)result
{
  if (result > 3)
  {
    return @"Others";
  }

  else
  {
    return off_1E79D64C0[result];
  }
}

+ (BOOL)containsAnyTerm:(id)term inText:(id)text
{
  v19 = *MEMORY[0x1E69E9840];
  termCopy = term;
  textCopy = text;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = termCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        lowercaseString = [*(*(&v14 + 1) + 8 * i) lowercaseString];
        v12 = [textCopy containsString:lowercaseString];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

@end