@interface EFPrivacy
+ (id)dateByRemovingTimeComponentsFromDate:(id)a3;
+ (id)fullyOrPartiallyRedactFields:(id)a3 inString:(id)a4;
+ (id)fullyOrPartiallyRedactedStringForString:(id)a3;
+ (id)fullyOrPartiallyRedactedStringForString:(id)a3 maximumUnredactedLength:(unint64_t)a4;
+ (id)fullyRedactedStringForString:(id)a3;
+ (id)partiallyRedactedDictionary:(id)a3;
+ (id)partiallyRedactedStringForString:(id)a3;
+ (id)partiallyRedactedStringForString:(id)a3 maximumUnredactedLength:(unint64_t)a4;
+ (id)partiallyRedactedStringFromArray:(id)a3;
+ (id)redactedQueryStringForQueryString:(id)a3;
+ (int64_t)bucketedMessageAgeSinceDate:(id)a3 leadingDigits:(int64_t)a4;
+ (int64_t)bucketedNumber:(int)a3 leadingDigits:(int64_t)a4;
+ (int64_t)numberOfDigits:(int64_t)a3;
+ (int64_t)roundedInteger:(int64_t)a3;
+ (int64_t)weeksSinceDate:(id)a3;
+ (unint64_t)_roundQueryLogCount:(unint64_t)a3 maxCount:(unint64_t)a4 queryCount:(unint64_t)a5;
+ (unint64_t)bucketValueForQueryLogCount:(id)a3 bucketValues:(id)a4;
+ (unsigned)bucketMessageCount:(unint64_t)a3;
@end

@implementation EFPrivacy

+ (id)dateByRemovingTimeComponentsFromDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 components:28 fromDate:v3];
  v6 = [v4 dateFromComponents:v5];

  return v6;
}

+ (int64_t)weeksSinceDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [MEMORY[0x1E695DF00] date];
  if ([v5 compare:v3] == 1)
  {
    v6 = [v4 components:0x2000 fromDate:v3 toDate:v5 options:0];
    v7 = [v6 weekOfYear];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int64_t)bucketedMessageAgeSinceDate:(id)a3 leadingDigits:(int64_t)a4
{
  [a3 timeIntervalSinceNow];
  if (!(v4 / 86400.0))
  {
    return 0;
  }

  return [EFPrivacy bucketedNumber:"bucketedNumber:leadingDigits:" leadingDigits:?];
}

+ (int64_t)bucketedNumber:(int)a3 leadingDigits:(int64_t)a4
{
  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  v7 = log10(v6);
  v8 = __exp10(floor(v7) + 1.0 - a4);
  v9 = (v8 * round(a3 / v8));
  if (v9 >= 0)
  {
    return v9;
  }

  else
  {
    return -v9;
  }
}

+ (int64_t)roundedInteger:(int64_t)a3
{
  v4 = objc_opt_class();
  v5 = [objc_opt_class() numberOfDigits:a3] - 1;

  return [v4 roundedInteger:a3 placeValueDigits:v5];
}

+ (int64_t)numberOfDigits:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a3];
  v4 = [v3 length];

  return v4;
}

+ (id)partiallyRedactedStringForString:(id)a3 maximumUnredactedLength:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  v7 = v6;
  if (a4)
  {
    if (v6 <= a4 || (v8 = [v5 rangeOfComposedCharacterSequenceAtIndex:a4 - 1], v10 = v8 + v9, v7 <= v8 + v9))
    {
      v15 = v5;
      goto LABEL_8;
    }

    v11 = [[EFStringHash alloc] initWithString:v5];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v5 substringToIndex:v10];
    v14 = [(EFStringHash *)v11 redactedStringValue];
    v15 = [v12 stringWithFormat:@"%@...<%lu chars, hash=%@>", v13, v7, v14];
  }

  else
  {
    v11 = [[EFStringHash alloc] initWithString:v5];
    v16 = MEMORY[0x1E696AEC0];
    v13 = [(EFStringHash *)v11 redactedStringValue];
    v15 = [v16 stringWithFormat:@"<%lu chars, hash=%@>", v7, v13];
  }

LABEL_8:

  return v15;
}

+ (id)partiallyRedactedStringForString:(id)a3
{
  v3 = [a1 partiallyRedactedStringForString:a3 maximumUnredactedLength:2];

  return v3;
}

+ (id)partiallyRedactedStringFromArray:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__EFPrivacy_partiallyRedactedStringFromArray___block_invoke;
  v7[3] = &unk_1E8249968;
  v7[4] = &v8;
  v7[5] = a1;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __46__EFPrivacy_partiallyRedactedStringFromArray___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([*(*(*(a1 + 32) + 8) + 40) length])
    {
      [*(*(*(a1 + 32) + 8) + 40) appendString:{@", "}];
    }

    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [*(a1 + 40) partiallyRedactedStringForString:v5 maximumUnredactedLength:2];
    [v3 appendString:v4];
  }
}

+ (id)partiallyRedactedDictionary:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__EFPrivacy_partiallyRedactedDictionary___block_invoke;
  v7[3] = &unk_1E8249990;
  v7[4] = &v8;
  v7[5] = a1;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __41__EFPrivacy_partiallyRedactedDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([*(*(*(a1 + 32) + 8) + 40) length])
  {
    [*(*(*(a1 + 32) + 8) + 40) appendString:@"\n"];
  }

  v6 = [*(a1 + 40) partiallyRedactedStringFromArray:v5];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v9, v6];
  [v7 appendString:v8];
}

+ (id)fullyRedactedStringForString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [[EFStringHash alloc] initWithString:v3];
    v5 = [(EFStringHash *)v4 redactedStringValue];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

+ (id)fullyOrPartiallyRedactedStringForString:(id)a3
{
  v3 = [EFPrivacy fullyOrPartiallyRedactedStringForString:a3 maximumUnredactedLength:2];

  return v3;
}

+ (id)fullyOrPartiallyRedactedStringForString:(id)a3 maximumUnredactedLength:(unint64_t)a4
{
  v5 = a3;
  v6 = +[EFDevice currentDevice];
  v7 = [v6 isInternal];

  if (v7)
  {
    [EFPrivacy partiallyRedactedStringForString:v5 maximumUnredactedLength:a4];
  }

  else
  {
    [EFPrivacy fullyRedactedStringForString:v5];
  }
  v8 = ;

  return v8;
}

+ (id)fullyOrPartiallyRedactFields:(id)a3 inString:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v5 = [a4 mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v23;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v25 = *v28;
    do
    {
      v26 = v6;
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(?<=%@ = ['||“])([^]+)(?=['||”];)", *(*(&v27 + 1) + 8 * i)];;
        v9 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v8 options:1 error:0];
        if (v9)
        {
          v10 = [v5 length];
          v11 = v10;
          if (v10)
          {
            v12 = 0;
            v13 = v10;
            do
            {
              if (v12 + v11 > [v5 length])
              {
                break;
              }

              v15 = [v9 rangeOfFirstMatchInString:v5 options:0 range:{v12, v11}];
              if (v15 == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              v16 = v14;
              v17 = [v5 substringWithRange:{v15, v14}];
              v18 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v17 maximumUnredactedLength:1];

              [v5 replaceCharactersInRange:v15 withString:{v16, v18}];
              if (v13 != [v5 length])
              {
                v13 = [v5 length];
              }

              v19 = [v18 length];
              v20 = [v5 length];

              v12 = v19 + v15;
              v11 = v20 - v12;
            }

            while (v12 < v13);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (unsigned)bucketMessageCount:(unint64_t)a3
{
  result = a3;
  if (a3 > 0xA)
  {
    if (a3 <= 0x63)
    {
      return (round(a3 / 10.0) * 10.0);
    }

    else
    {
      return 100;
    }
  }

  return result;
}

+ (id)redactedQueryStringForQueryString:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 replaceOccurrencesOfString:@"'(.*?)'" withString:@"?" options:1024 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"[0-9]+" withString:@"?" options:1024 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"CAST\\(X\\? AS TEXT\\)" withString:@"?" options:1024 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"\\(\\?+( withString:()*\\?+)*\\)" options:@"(?)" range:{1024, 0, objc_msgSend(v3, "length")}];

  return v3;
}

+ (unint64_t)_roundQueryLogCount:(unint64_t)a3 maxCount:(unint64_t)a4 queryCount:(unint64_t)a5
{
  if (a5 >= (a4 + a3) >> 1)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

+ (unint64_t)bucketValueForQueryLogCount:(id)a3 bucketValues:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 count] <= 1)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"EFPrivacy.m" lineNumber:239 description:@"Invalid number of values in queryBucketValues"];
  }

  v9 = [v7 integerValue];
  v10 = [v8 firstObject];
  v11 = [v10 unsignedIntegerValue];

  if (v9 >= v11)
  {
    v12 = [v8 lastObject];
    v13 = [v12 unsignedIntegerValue];

    if (v9 <= v13)
    {
      v15 = 0;
      do
      {
        if (v15 >= [v8 count] - 1)
        {
          __assert_rtn("+[EFPrivacy bucketValueForQueryLogCount:bucketValues:]", "EFPrivacy.m", 259, "0 && Fail to bucket query count value");
        }

        v16 = [v8 objectAtIndexedSubscript:v15];
        v17 = [v16 unsignedIntegerValue];

        v18 = [v8 objectAtIndexedSubscript:v15 + 1];
        v19 = [v18 unsignedIntegerValue];

        ++v15;
      }

      while (v9 < v17 || v9 > v19);
      v9 = [a1 _roundQueryLogCount:v17 maxCount:v19 queryCount:v9];
    }

    else
    {
      v14 = [v8 lastObject];
      v9 = [v14 unsignedIntegerValue];
    }
  }

  return v9;
}

@end