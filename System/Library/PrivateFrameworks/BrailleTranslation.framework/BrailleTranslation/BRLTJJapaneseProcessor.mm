@interface BRLTJJapaneseProcessor
- (BOOL)isWordDescriptionLike:(id)like;
- (BRLTJJapaneseProcessor)init;
- (id)longVowelExpressedFor:(id)for partOfSpeech:(int64_t)speech;
- (id)replaceKataWithHira:(id)hira;
- (id)spacedYomiOfWordDescription:(id)description;
@end

@implementation BRLTJJapaneseProcessor

- (BRLTJJapaneseProcessor)init
{
  v8.receiver = self;
  v8.super_class = BRLTJJapaneseProcessor;
  v2 = [(BRLTJJapaneseProcessor *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"KataToHira" ofType:@"plist"];

    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
    kataToHira = v2->_kataToHira;
    v2->_kataToHira = v5;
  }

  return v2;
}

- (id)longVowelExpressedFor:(id)for partOfSpeech:(int64_t)speech
{
  forCopy = for;
  if (([forCopy isEqual:@"うろうろ"] & 1) != 0 || objc_msgSend(forCopy, "isEqual:", @"こうり"))
  {
    v6 = forCopy;
  }

  else
  {
    v6 = objc_opt_new();
    if ([forCopy length])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = 1;
        v11 = [forCopy substringWithRange:{v9, 1}];
        v12 = v11;
        if (v8)
        {
          v10 = [(__CFString *)v11 isEqual:@"う"]^ 1;
        }

        v13 = speech == 1 && v9 == [forCopy length] - 1;
        if ((v10 | v13))
        {
          v14 = v12;
        }

        else
        {
          v14 = @"ー";
        }

        [v6 appendString:v14];
        if ([&unk_285402620 containsObject:v12])
        {
          v8 = 1;
        }

        else
        {
          v8 = [&unk_285402638 containsObject:v12];
        }

        ++v9;
      }

      while (v9 < [forCopy length]);
    }
  }

  return v6;
}

- (BOOL)isWordDescriptionLike:(id)like
{
  likeCopy = like;
  v5 = likeCopy;
  if (self->_kataToHira && [likeCopy length] >= 2)
  {
    if ([v5 length])
    {
      for (i = 0; i < [v5 length]; ++i)
      {
        v8 = [v5 substringWithRange:{i, 1}];
        v9 = [(NSDictionary *)self->_kataToHira objectForKey:v8];
        if (v9 || ([v8 isEqual:@"、"] & 1) != 0)
        {
        }

        else if (([v8 isEqual:@" "] & 1) == 0)
        {

          goto LABEL_3;
        }
      }
    }

    v6 = 1;
  }

  else
  {
LABEL_3:
    v6 = 0;
  }

  return v6;
}

- (id)replaceKataWithHira:(id)hira
{
  hiraCopy = hira;
  v5 = hiraCopy;
  if (self->_kataToHira)
  {
    v6 = objc_opt_new();
    if ([v5 length])
    {
      v7 = 0;
      do
      {
        v8 = [v5 substringWithRange:{v7, 1}];
        v9 = [(NSDictionary *)self->_kataToHira objectForKey:v8];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v8;
        }

        [v6 appendString:v10];

        ++v7;
      }

      while (v7 < [v5 length]);
    }
  }

  else
  {
    v6 = hiraCopy;
  }

  return v6;
}

- (id)spacedYomiOfWordDescription:(id)description
{
  v3 = [(BRLTJJapaneseProcessor *)self replaceKataWithHira:description];
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"ja");
  v51.location = 0;
  v51.length = 0;
  v6 = CFStringTokenizerCreate(v4, 0, v51, 0, v5);
  CFRelease(v5);
  v52.length = CFStringGetLength(v3);
  v52.location = 0;
  CFStringTokenizerSetString(v6, v3, v52);
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = 0;
  if (CFStringTokenizerAdvanceToNextToken(v6))
  {
    v46 = 0;
    v10 = 0x277CCA000uLL;
    v47 = v3;
    v43 = v8;
    v44 = v7;
    v42 = v6;
    do
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
      v12 = [(__CFString *)v3 substringWithRange:v9, CurrentTokenRange.location - v9];
      [v7 appendString:v12];

      v13 = v9;
      v14 = v9;
      if (CurrentTokenRange.location > v9)
      {
        do
        {
          v15 = [*(v10 + 2992) numberWithInteger:v13];
          [v8 addObject:v15];

          ++v13;
        }

        while (CurrentTokenRange.location != v13);
      }

      v16 = CFStringTokenizerCopyCurrentTokenAttribute(v6, 0x400000uLL);
      CurrentTokenPartOfSpeech = _CFStringTokenizerGetCurrentTokenPartOfSpeech();
      if ([v7 length])
      {
        v18 = CurrentTokenRange.location == v14;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      if (v19 & v46)
      {
        [v7 appendString:@" "];
        v20 = [*(v10 + 2992) numberWithInteger:v14 - 1];
        [v8 addObject:v20];
      }

      v21 = 0;
      v45 = CurrentTokenPartOfSpeech;
      v22 = CurrentTokenRange.length + CurrentTokenRange.location;
      v23 = -1;
      v49 = CurrentTokenRange.length + CurrentTokenRange.location;
      while ((CurrentTokenRange.length & ~(CurrentTokenRange.length >> 63)) != v21)
      {
        v24 = v21;
        if (v21 < [v16 length])
        {
          v25 = [(__CFString *)v47 substringWithRange:v22 + v23, 1];
          v26 = [v16 substringWithRange:{objc_msgSend(v16, "length") + v23, 1}];
          v27 = [(NSDictionary *)self->_kataToHira objectForKey:v25];
          v28 = v27;
          if (v27)
          {
            v29 = v27;

            v25 = v29;
          }

          v30 = [v25 isEqual:v26];
          ++v21;

          --v23;
          v22 = CurrentTokenRange.length + CurrentTokenRange.location;
          v10 = 0x277CCA000;
          if (v30)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v24 = CurrentTokenRange.length & ~(CurrentTokenRange.length >> 63);
LABEL_21:
      v3 = v47;
      v8 = v43;
      if ([v16 length] != v24)
      {
        v31 = 0;
        do
        {
          v32 = [*(v10 + 2992) numberWithLong:CurrentTokenRange.location];
          [v43 addObject:v32];

          ++v31;
        }

        while (v31 < [v16 length] - v24);
      }

      if (v24)
      {
        v33 = v24 + 1;
        v34 = CurrentTokenRange.length + CurrentTokenRange.location - v24;
        do
        {
          v35 = [*(v10 + 2992) numberWithInteger:v34];
          [v43 addObject:v35];

          --v33;
          ++v34;
        }

        while (v33 > 1);
      }

      v36 = [(BRLTJJapaneseProcessor *)self longVowelExpressedFor:v16 partOfSpeech:v45];

      v9 = CurrentTokenRange.length + CurrentTokenRange.location;
      if (v49 == [(__CFString *)v47 length])
      {
        v37 = v45 == 4;
        v7 = v44;
        v6 = v42;
      }

      else
      {
        v38 = [(__CFString *)v47 characterAtIndex:v49];
        v37 = v45 == 4;
        v7 = v44;
        v6 = v42;
        if ((v46 & 1) == 0 && v38 != 12289 && v45 == 4)
        {
          if ([(__CFString *)v36 isEqual:@"は"])
          {

            v37 = 1;
            v36 = @"わ";
          }

          else if ([(__CFString *)v36 isEqual:@"へ"])
          {

            v37 = 1;
            v36 = @"え";
          }

          else
          {
            v37 = 1;
          }
        }
      }

      [v7 appendString:v36];
      v46 = [(__CFString *)v36 isEqual:@"の"]& v37;

      v10 = 0x277CCA000;
    }

    while (CFStringTokenizerAdvanceToNextToken(v6));
  }

  CFRelease(v6);
  v39 = [(__CFString *)v3 substringWithRange:v9, [(__CFString *)v3 length]- v9];
  [v7 appendString:v39];

  for (; v9 < [(__CFString *)v3 length]; ++v9)
  {
    v40 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    [v8 addObject:v40];
  }

  return v7;
}

@end