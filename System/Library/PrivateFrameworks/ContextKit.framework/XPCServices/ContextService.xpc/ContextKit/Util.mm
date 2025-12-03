@interface Util
+ (BOOL)linewiseFromFile:(id)file dataReadingOptions:(unint64_t)options withIterator:(id)iterator;
+ (double)elapsedMillisForBlock:(id)block enableTiming:(BOOL)timing;
+ (double)elapsedMillisSinceMachAbsolute:(unint64_t)absolute;
+ (double)elapsedMillisSinceMachAbsolute:(unint64_t)absolute nowTarget:(unint64_t *)target;
+ (double)elapsedNanosForMachAbsoluteTimeStart:(unint64_t)start machAbsoluteTimeEnd:(unint64_t)end;
+ (double)elapsedNanosSinceMachAbsolute:(unint64_t)absolute;
+ (double)elapsedNanosSinceMachAbsolute:(unint64_t)absolute nowTarget:(unint64_t *)target;
+ (id)buildVersion;
+ (id)languageTagForString:(id)string;
@end

@implementation Util

+ (double)elapsedNanosForMachAbsoluteTimeStart:(unint64_t)start machAbsoluteTimeEnd:(unint64_t)end
{
  v6 = dword_1005572CC;
  if (!dword_1005572CC)
  {
    mach_timebase_info(&dword_1005572C8);
    v6 = dword_1005572CC;
  }

  return ((end - start) * dword_1005572C8 / v6);
}

+ (double)elapsedNanosSinceMachAbsolute:(unint64_t)absolute
{
  v5 = mach_absolute_time();

  [self elapsedNanosForMachAbsoluteTimeStart:absolute machAbsoluteTimeEnd:v5];
  return result;
}

+ (double)elapsedMillisSinceMachAbsolute:(unint64_t)absolute
{
  v5 = mach_absolute_time();

  [self elapsedMillisForMachAbsoluteTimeStart:absolute machAbsoluteTimeEnd:v5];
  return result;
}

+ (double)elapsedNanosSinceMachAbsolute:(unint64_t)absolute nowTarget:(unint64_t *)target
{
  v7 = mach_absolute_time();
  [self elapsedNanosForMachAbsoluteTimeStart:absolute machAbsoluteTimeEnd:v7];
  *target = v7;
  return result;
}

+ (double)elapsedMillisSinceMachAbsolute:(unint64_t)absolute nowTarget:(unint64_t *)target
{
  v7 = mach_absolute_time();
  [self elapsedMillisForMachAbsoluteTimeStart:absolute machAbsoluteTimeEnd:v7];
  *target = v7;
  return result;
}

+ (double)elapsedMillisForBlock:(id)block enableTiming:(BOOL)timing
{
  if (timing)
  {
    blockCopy = block;
    v6 = mach_absolute_time();
    blockCopy[2](blockCopy);

    v7 = mach_absolute_time();

    [self elapsedMillisForMachAbsoluteTimeStart:v6 machAbsoluteTimeEnd:v7];
  }

  else
  {
    v9 = *(block + 2);
    blockCopy2 = block;
    v9();

    return 0.0;
  }

  return result;
}

+ (id)buildVersion
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [v2 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];

  return v3;
}

+ (id)languageTagForString:(id)string
{
  stringCopy = string;
  if (![stringCopy length])
  {
    v11 = 0;
    goto LABEL_10;
  }

  v13[0] = NLLanguageEnglish;
  v13[1] = NLLanguageGerman;
  v13[2] = NLLanguageSpanish;
  v13[3] = NLLanguageJapanese;
  v13[4] = NLLanguageKorean;
  v13[5] = NLLanguageFrench;
  v13[6] = NLLanguageSimplifiedChinese;
  v13[7] = NLLanguageTraditionalChinese;
  v4 = [NSArray arrayWithObjects:v13 count:8];
  v5 = objc_alloc_init(NLLanguageRecognizer);
  [v5 setLanguageConstraints:v4];
  [v5 processString:stringCopy];
  v6 = [v5 languageHypothesesWithMaximum:1];
  allValues = [v6 allValues];
  firstObject = [allValues firstObject];

  if (firstObject && ([firstObject doubleValue], v9 > 0.4))
  {
    dominantLanguage = [v5 dominantLanguage];
  }

  else
  {
    [v5 reset];
    [v5 processString:stringCopy];
    dominantLanguage = [v5 dominantLanguage];
    if (dominantLanguage == NLLanguageUndetermined)
    {
      v11 = 0;
      goto LABEL_9;
    }
  }

  dominantLanguage = dominantLanguage;
  v11 = dominantLanguage;
LABEL_9:

LABEL_10:

  return v11;
}

+ (BOOL)linewiseFromFile:(id)file dataReadingOptions:(unint64_t)options withIterator:(id)iterator
{
  iteratorCopy = iterator;
  if (file)
  {
    v8 = [NSData dataWithContentsOfFile:file options:options error:0];
    v9 = v8;
    v10 = v8 != 0;
    if (v8)
    {
      bytes = [v8 bytes];
      v12 = [v9 length];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = 0;
        v16 = CKContextExecutor_ptr;
        while (1)
        {
          v17 = &bytes[-v15 - 1];
          while (1)
          {
            v18 = bytes[v15];
            if (v18 != 10)
            {
              break;
            }

            ++v15;
            --v17;
            if (v15 >= v13)
            {
              goto LABEL_24;
            }
          }

          if (v13 <= v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v13;
          }

          v20 = v14;
          while (v19 != v20)
          {
            v14 = v20 + 1;
            v21 = bytes[++v20];
            if (v21 == 10)
            {
              goto LABEL_17;
            }
          }

          v14 = v19;
LABEL_17:
          v22 = v14 - v15;
          if (v14 == v15 || v18 == 35)
          {
            goto LABEL_23;
          }

          if (v17[v14] != 13)
          {
            goto LABEL_22;
          }

          if (v14 - 1 != v15)
          {
            break;
          }

LABEL_23:
          if (v15 >= v13)
          {
            goto LABEL_24;
          }
        }

        v22 = ~v15 + v14;
LABEL_22:
        v23 = [objc_alloc(v16[70]) initWithBytes:&bytes[v15] length:v22 encoding:4];
        iteratorCopy[2](iteratorCopy, v23);
        v15 = v14 + 1;

        v16 = CKContextExecutor_ptr;
        goto LABEL_23;
      }
    }

LABEL_24:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end