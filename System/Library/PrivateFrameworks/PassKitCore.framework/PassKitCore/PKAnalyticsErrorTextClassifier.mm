@interface PKAnalyticsErrorTextClassifier
+ (BOOL)containsAnyTerm:(id)a3 inText:(id)a4;
+ (id)analyticsValueForResult:(int64_t)a3;
+ (int64_t)classifyErrorText:(id)a3;
@end

@implementation PKAnalyticsErrorTextClassifier

+ (int64_t)classifyErrorText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [v5 lowercaseString];
    if (![a1 containsAnyTerm:&unk_1F23B3FC8 inText:v6] || objc_msgSend(v6, "containsString:", @"name") && ((objc_msgSend(v6, "containsString:", @"street") & 1) != 0 || (objc_msgSend(v6, "containsString:", @"country") & 1) != 0 || (objc_msgSend(v6, "containsString:", @"county") & 1) != 0 || objc_msgSend(v6, "containsString:", @"city")))
    {
      if ([a1 containsAnyTerm:&unk_1F23B3FE0 inText:v6] && (objc_msgSend(a1, "containsAnyTerm:inText:", &unk_1F23B4010, v6) & 1) != 0)
      {
        v7 = 1;
      }

      else if ([a1 containsAnyTerm:&unk_1F23B3FF8 inText:v6] && (objc_msgSend(a1, "containsAnyTerm:inText:", &unk_1F23B4010, v6) & 1) != 0)
      {
        v7 = 2;
      }

      else if ([a1 containsAnyTerm:&unk_1F23B4010 inText:v6])
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

+ (id)analyticsValueForResult:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Others";
  }

  else
  {
    return off_1E79D64C0[a3];
  }
}

+ (BOOL)containsAnyTerm:(id)a3 inText:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
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

        v11 = [*(*(&v14 + 1) + 8 * i) lowercaseString];
        v12 = [v6 containsString:v11];

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