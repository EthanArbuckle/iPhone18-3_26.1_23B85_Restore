@interface Util
+ (BOOL)linewiseFromFile:(id)a3 dataReadingOptions:(unint64_t)a4 withIterator:(id)a5;
+ (double)elapsedMillisForBlock:(id)a3 enableTiming:(BOOL)a4;
+ (double)elapsedMillisSinceMachAbsolute:(unint64_t)a3;
+ (double)elapsedMillisSinceMachAbsolute:(unint64_t)a3 nowTarget:(unint64_t *)a4;
+ (double)elapsedNanosForMachAbsoluteTimeStart:(unint64_t)a3 machAbsoluteTimeEnd:(unint64_t)a4;
+ (double)elapsedNanosSinceMachAbsolute:(unint64_t)a3;
+ (double)elapsedNanosSinceMachAbsolute:(unint64_t)a3 nowTarget:(unint64_t *)a4;
+ (id)buildVersion;
+ (id)languageTagForString:(id)a3;
@end

@implementation Util

+ (double)elapsedNanosForMachAbsoluteTimeStart:(unint64_t)a3 machAbsoluteTimeEnd:(unint64_t)a4
{
  v6 = dword_1005572CC;
  if (!dword_1005572CC)
  {
    mach_timebase_info(&dword_1005572C8);
    v6 = dword_1005572CC;
  }

  return ((a4 - a3) * dword_1005572C8 / v6);
}

+ (double)elapsedNanosSinceMachAbsolute:(unint64_t)a3
{
  v5 = mach_absolute_time();

  [a1 elapsedNanosForMachAbsoluteTimeStart:a3 machAbsoluteTimeEnd:v5];
  return result;
}

+ (double)elapsedMillisSinceMachAbsolute:(unint64_t)a3
{
  v5 = mach_absolute_time();

  [a1 elapsedMillisForMachAbsoluteTimeStart:a3 machAbsoluteTimeEnd:v5];
  return result;
}

+ (double)elapsedNanosSinceMachAbsolute:(unint64_t)a3 nowTarget:(unint64_t *)a4
{
  v7 = mach_absolute_time();
  [a1 elapsedNanosForMachAbsoluteTimeStart:a3 machAbsoluteTimeEnd:v7];
  *a4 = v7;
  return result;
}

+ (double)elapsedMillisSinceMachAbsolute:(unint64_t)a3 nowTarget:(unint64_t *)a4
{
  v7 = mach_absolute_time();
  [a1 elapsedMillisForMachAbsoluteTimeStart:a3 machAbsoluteTimeEnd:v7];
  *a4 = v7;
  return result;
}

+ (double)elapsedMillisForBlock:(id)a3 enableTiming:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = mach_absolute_time();
    v5[2](v5);

    v7 = mach_absolute_time();

    [a1 elapsedMillisForMachAbsoluteTimeStart:v6 machAbsoluteTimeEnd:v7];
  }

  else
  {
    v9 = *(a3 + 2);
    v10 = a3;
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

+ (id)languageTagForString:(id)a3
{
  v3 = a3;
  if (![v3 length])
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
  [v5 processString:v3];
  v6 = [v5 languageHypothesesWithMaximum:1];
  v7 = [v6 allValues];
  v8 = [v7 firstObject];

  if (v8 && ([v8 doubleValue], v9 > 0.4))
  {
    v10 = [v5 dominantLanguage];
  }

  else
  {
    [v5 reset];
    [v5 processString:v3];
    v10 = [v5 dominantLanguage];
    if (v10 == NLLanguageUndetermined)
    {
      v11 = 0;
      goto LABEL_9;
    }
  }

  v10 = v10;
  v11 = v10;
LABEL_9:

LABEL_10:

  return v11;
}

+ (BOOL)linewiseFromFile:(id)a3 dataReadingOptions:(unint64_t)a4 withIterator:(id)a5
{
  v7 = a5;
  if (a3)
  {
    v8 = [NSData dataWithContentsOfFile:a3 options:a4 error:0];
    v9 = v8;
    v10 = v8 != 0;
    if (v8)
    {
      v11 = [v8 bytes];
      v12 = [v9 length];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = 0;
        v16 = CKContextExecutor_ptr;
        while (1)
        {
          v17 = &v11[-v15 - 1];
          while (1)
          {
            v18 = v11[v15];
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
            v21 = v11[++v20];
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
        v23 = [objc_alloc(v16[70]) initWithBytes:&v11[v15] length:v22 encoding:4];
        v7[2](v7, v23);
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