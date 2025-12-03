@interface EFPrivacy
+ (id)dateByRemovingTimeComponentsFromDate:(id)date;
+ (id)fullyOrPartiallyRedactFields:(id)fields inString:(id)string;
+ (id)fullyOrPartiallyRedactedStringForString:(id)string;
+ (id)fullyOrPartiallyRedactedStringForString:(id)string maximumUnredactedLength:(unint64_t)length;
+ (id)fullyRedactedStringForString:(id)string;
+ (id)partiallyRedactedDictionary:(id)dictionary;
+ (id)partiallyRedactedStringForString:(id)string;
+ (id)partiallyRedactedStringForString:(id)string maximumUnredactedLength:(unint64_t)length;
+ (id)partiallyRedactedStringFromArray:(id)array;
+ (id)redactedQueryStringForQueryString:(id)string;
+ (int64_t)bucketedMessageAgeSinceDate:(id)date leadingDigits:(int64_t)digits;
+ (int64_t)bucketedNumber:(int)number leadingDigits:(int64_t)digits;
+ (int64_t)numberOfDigits:(int64_t)digits;
+ (int64_t)roundedInteger:(int64_t)integer;
+ (int64_t)weeksSinceDate:(id)date;
+ (unint64_t)_roundQueryLogCount:(unint64_t)count maxCount:(unint64_t)maxCount queryCount:(unint64_t)queryCount;
+ (unint64_t)bucketValueForQueryLogCount:(id)count bucketValues:(id)values;
+ (unsigned)bucketMessageCount:(unint64_t)count;
@end

@implementation EFPrivacy

+ (id)dateByRemovingTimeComponentsFromDate:(id)date
{
  dateCopy = date;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar components:28 fromDate:dateCopy];
  v6 = [currentCalendar dateFromComponents:v5];

  return v6;
}

+ (int64_t)weeksSinceDate:(id)date
{
  dateCopy = date;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  if ([date compare:dateCopy] == 1)
  {
    v6 = [currentCalendar components:0x2000 fromDate:dateCopy toDate:date options:0];
    weekOfYear = [v6 weekOfYear];
  }

  else
  {
    weekOfYear = 0;
  }

  return weekOfYear;
}

+ (int64_t)bucketedMessageAgeSinceDate:(id)date leadingDigits:(int64_t)digits
{
  [date timeIntervalSinceNow];
  if (!(v4 / 86400.0))
  {
    return 0;
  }

  return [EFPrivacy bucketedNumber:"bucketedNumber:leadingDigits:" leadingDigits:?];
}

+ (int64_t)bucketedNumber:(int)number leadingDigits:(int64_t)digits
{
  if (number >= 0)
  {
    numberCopy = number;
  }

  else
  {
    numberCopy = -number;
  }

  v7 = log10(numberCopy);
  v8 = __exp10(floor(v7) + 1.0 - digits);
  v9 = (v8 * round(number / v8));
  if (v9 >= 0)
  {
    return v9;
  }

  else
  {
    return -v9;
  }
}

+ (int64_t)roundedInteger:(int64_t)integer
{
  v4 = objc_opt_class();
  v5 = [objc_opt_class() numberOfDigits:integer] - 1;

  return [v4 roundedInteger:integer placeValueDigits:v5];
}

+ (int64_t)numberOfDigits:(int64_t)digits
{
  digits = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", digits];
  v4 = [digits length];

  return v4;
}

+ (id)partiallyRedactedStringForString:(id)string maximumUnredactedLength:(unint64_t)length
{
  stringCopy = string;
  v6 = [stringCopy length];
  v7 = v6;
  if (length)
  {
    if (v6 <= length || (v8 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:length - 1], v10 = v8 + v9, v7 <= v8 + v9))
    {
      v15 = stringCopy;
      goto LABEL_8;
    }

    v11 = [[EFStringHash alloc] initWithString:stringCopy];
    v12 = MEMORY[0x1E696AEC0];
    redactedStringValue2 = [stringCopy substringToIndex:v10];
    redactedStringValue = [(EFStringHash *)v11 redactedStringValue];
    v15 = [v12 stringWithFormat:@"%@...<%lu chars, hash=%@>", redactedStringValue2, v7, redactedStringValue];
  }

  else
  {
    v11 = [[EFStringHash alloc] initWithString:stringCopy];
    v16 = MEMORY[0x1E696AEC0];
    redactedStringValue2 = [(EFStringHash *)v11 redactedStringValue];
    v15 = [v16 stringWithFormat:@"<%lu chars, hash=%@>", v7, redactedStringValue2];
  }

LABEL_8:

  return v15;
}

+ (id)partiallyRedactedStringForString:(id)string
{
  v3 = [self partiallyRedactedStringForString:string maximumUnredactedLength:2];

  return v3;
}

+ (id)partiallyRedactedStringFromArray:(id)array
{
  arrayCopy = array;
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
  v7[5] = self;
  [arrayCopy enumerateObjectsUsingBlock:v7];
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

+ (id)partiallyRedactedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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
  v7[5] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];
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

+ (id)fullyRedactedStringForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [[EFStringHash alloc] initWithString:stringCopy];
    redactedStringValue = [(EFStringHash *)v4 redactedStringValue];
  }

  else
  {
    redactedStringValue = stringCopy;
  }

  return redactedStringValue;
}

+ (id)fullyOrPartiallyRedactedStringForString:(id)string
{
  v3 = [EFPrivacy fullyOrPartiallyRedactedStringForString:string maximumUnredactedLength:2];

  return v3;
}

+ (id)fullyOrPartiallyRedactedStringForString:(id)string maximumUnredactedLength:(unint64_t)length
{
  stringCopy = string;
  v6 = +[EFDevice currentDevice];
  isInternal = [v6 isInternal];

  if (isInternal)
  {
    [EFPrivacy partiallyRedactedStringForString:stringCopy maximumUnredactedLength:length];
  }

  else
  {
    [EFPrivacy fullyRedactedStringForString:stringCopy];
  }
  v8 = ;

  return v8;
}

+ (id)fullyOrPartiallyRedactFields:(id)fields inString:(id)string
{
  v32 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v5 = [string mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = fieldsCopy;
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

+ (unsigned)bucketMessageCount:(unint64_t)count
{
  result = count;
  if (count > 0xA)
  {
    if (count <= 0x63)
    {
      return (round(count / 10.0) * 10.0);
    }

    else
    {
      return 100;
    }
  }

  return result;
}

+ (id)redactedQueryStringForQueryString:(id)string
{
  v3 = [string mutableCopy];
  [v3 replaceOccurrencesOfString:@"'(.*?)'" withString:@"?" options:1024 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"[0-9]+" withString:@"?" options:1024 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"CAST\\(X\\? AS TEXT\\)" withString:@"?" options:1024 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"\\(\\?+( withString:()*\\?+)*\\)" options:@"(?)" range:{1024, 0, objc_msgSend(v3, "length")}];

  return v3;
}

+ (unint64_t)_roundQueryLogCount:(unint64_t)count maxCount:(unint64_t)maxCount queryCount:(unint64_t)queryCount
{
  if (queryCount >= (maxCount + count) >> 1)
  {
    return maxCount;
  }

  else
  {
    return count;
  }
}

+ (unint64_t)bucketValueForQueryLogCount:(id)count bucketValues:(id)values
{
  countCopy = count;
  valuesCopy = values;
  if ([valuesCopy count] <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFPrivacy.m" lineNumber:239 description:@"Invalid number of values in queryBucketValues"];
  }

  integerValue = [countCopy integerValue];
  firstObject = [valuesCopy firstObject];
  unsignedIntegerValue = [firstObject unsignedIntegerValue];

  if (integerValue >= unsignedIntegerValue)
  {
    lastObject = [valuesCopy lastObject];
    unsignedIntegerValue2 = [lastObject unsignedIntegerValue];

    if (integerValue <= unsignedIntegerValue2)
    {
      v15 = 0;
      do
      {
        if (v15 >= [valuesCopy count] - 1)
        {
          __assert_rtn("+[EFPrivacy bucketValueForQueryLogCount:bucketValues:]", "EFPrivacy.m", 259, "0 && Fail to bucket query count value");
        }

        v16 = [valuesCopy objectAtIndexedSubscript:v15];
        unsignedIntegerValue3 = [v16 unsignedIntegerValue];

        v18 = [valuesCopy objectAtIndexedSubscript:v15 + 1];
        unsignedIntegerValue4 = [v18 unsignedIntegerValue];

        ++v15;
      }

      while (integerValue < unsignedIntegerValue3 || integerValue > unsignedIntegerValue4);
      integerValue = [self _roundQueryLogCount:unsignedIntegerValue3 maxCount:unsignedIntegerValue4 queryCount:integerValue];
    }

    else
    {
      lastObject2 = [valuesCopy lastObject];
      integerValue = [lastObject2 unsignedIntegerValue];
    }
  }

  return integerValue;
}

@end