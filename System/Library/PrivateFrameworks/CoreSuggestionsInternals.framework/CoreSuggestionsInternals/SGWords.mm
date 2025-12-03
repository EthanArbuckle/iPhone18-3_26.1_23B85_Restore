@interface SGWords
+ (id)normalizeLowercaseWord:(id)word;
+ (id)normalizeWord:(id)word;
@end

@implementation SGWords

+ (id)normalizeLowercaseWord:(id)word
{
  wordCopy = word;
  v6 = wordCopy;
  if (!wordCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGWords.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"word"}];

    if (isLowercaseAscii(0))
    {
      goto LABEL_3;
    }

LABEL_5:
    if (canTurnIntoAscii(v6))
    {
      v9 = fastPathLatinToAsciiTransformation(v6);
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = _PASSimpleICUTransform();
      }

      v7 = v11;
    }

    else
    {
      v7 = &stru_284703F00;
    }

    goto LABEL_11;
  }

  if ((isLowercaseAscii(wordCopy) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = v6;
LABEL_11:

  return v7;
}

+ (id)normalizeWord:(id)word
{
  wordCopy = word;
  v6 = wordCopy;
  if (!wordCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGWords.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"word"}];

    wordCopy = 0;
  }

  if (isLowercaseAscii(wordCopy))
  {
LABEL_4:
    v7 = v6;
    goto LABEL_51;
  }

  if ([v6 length] <= 4)
  {
    v8 = v6;
    v9 = objc_opt_self();

    if (v9)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      *buffer = 0u;
      v36 = 0u;
      Length = CFStringGetLength(v8);
      theString = v8;
      v46 = 0;
      v47 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v8);
      CStringPtr = 0;
      v44 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
      }

      v48 = 0;
      v49 = 0;
      v45 = CStringPtr;
      if (Length >= 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 64;
        do
        {
          if (v15 >= 4)
          {
            v17 = 4;
          }

          else
          {
            v17 = v15;
          }

          v18 = v47;
          if (v47 <= v15)
          {
            v20 = 0;
            v21 = 0;
            goto LABEL_19;
          }

          if (v44)
          {
            v19 = &v44[v46];
          }

          else
          {
            if (v45)
            {
              v20 = v45[v46 + v15];
              goto LABEL_30;
            }

            if (v49 <= v15 || v14 > v15)
            {
              v23 = v17 + v13;
              v24 = v16 - v17;
              v25 = v15 - v17;
              v26 = v25 + 64;
              if (v25 + 64 >= v47)
              {
                v26 = v47;
              }

              v48 = v25;
              v49 = v26;
              if (v47 >= v24)
              {
                v18 = v24;
              }

              v51.location = v25 + v46;
              v51.length = v18 + v23;
              CFStringGetCharacters(theString, v51, buffer);
              v14 = v48;
            }

            v19 = &buffer[-v14];
          }

          v20 = v19[v15];
LABEL_30:
          if (v20 <= 0x318Fu)
          {
            if (v20 - 12272 < 0x50 || v20 - 12544 < 0x30)
            {
LABEL_59:

              goto LABEL_4;
            }
          }

          else if (v20 - 12688 < 0x70 || v20 - 19904 < 0x40)
          {
            goto LABEL_59;
          }

          if ((v20 & 0xFF80) == 0x2E80)
          {
            goto LABEL_59;
          }

          v21 = v20;
LABEL_19:
          if ((v21 - 12032) < 0xE0 || (v21 - 12352) < 0x60 || (v21 - 12448) < 0x60 || (v21 - 12592) < 0x60 || (v20 & 0xFE00 | 0x100) == 0x3300 || (v21 - 13312) >> 6 < 0x67 || (v21 - 19968) >> 9 < 0x29)
          {
            goto LABEL_59;
          }

          ++v15;
          --v13;
          ++v16;
        }

        while (Length != v15);
      }
    }
  }

  v27 = objc_autoreleasePoolPush();
  lowercaseString = [v6 lowercaseString];
  objc_autoreleasePoolPop(v27);

  if (!isLowercaseAscii(lowercaseString))
  {
    if (canTurnIntoAscii(lowercaseString))
    {
      v31 = fastPathLatinToAsciiTransformation(lowercaseString);
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = _PASSimpleICUTransform();
      }

      v29 = v33;
    }

    else
    {
      v29 = &stru_284703F00;
    }

    goto LABEL_52;
  }

  v7 = lowercaseString;
LABEL_51:
  lowercaseString = v7;
  v29 = v7;
LABEL_52:

  return v29;
}

@end