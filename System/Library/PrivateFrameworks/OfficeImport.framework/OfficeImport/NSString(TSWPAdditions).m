@interface NSString(TSWPAdditions)
+ (id)tswp_stringForValue:()TSWPAdditions withListNumberFormat:includeFormatting:;
+ (id)tswp_stringForValue:()TSWPAdditions withPageNumberFormat:;
+ (uint64_t)tswp_numberForString:()TSWPAdditions withListNumberFormat:;
+ (uint64_t)tswp_numberForString:()TSWPAdditions withPageNumberFormat:;
- (__CFString)tswp_replaceOccurrencesOfCharactersInSet:()TSWPAdditions minimumConsecutiveLength:replaceString:;
- (__CFString)tswp_stringByNormalizingParagraphBreaks;
- (id)tswp_stringWithoutControlCharacters;
- (uint64_t)tswp_NSDetectorMatchStringIsStrictPhoneNumber;
- (uint64_t)tswp_findIndexOfCharacter:()TSWPAdditions range:;
- (uint64_t)tswp_isLowerCaseFromIndex:()TSWPAdditions;
- (uint64_t)tswp_rangeOfCharactersFromSet:()TSWPAdditions index:;
- (uint64_t)tswp_utf32CharacterAtIndex:()TSWPAdditions;
- (uint64_t)tswp_utf32CharacterAtIndex:()TSWPAdditions planeClassification:;
@end

@implementation NSString(TSWPAdditions)

- (__CFString)tswp_stringByNormalizingParagraphBreaks
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  v30 = v1;
  v33 = 0;
  v34 = v2;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v32 = CStringPtr;
  v35 = 0;
  v36 = 0;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 64;
    while (1)
    {
      if (v8 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v8;
      }

      if (v8 >= 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = v8;
      }

      v12 = v34;
      if (v34 <= v8)
      {
        goto LABEL_48;
      }

      if (CharactersPtr)
      {
        break;
      }

      if (!v32)
      {
        if (v36 <= v8 || v5 > v8)
        {
          v20 = -v10;
          v21 = v10 + v4;
          v22 = v9 - v10;
          v23 = v8 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v34)
          {
            v24 = v34;
          }

          v35 = v23;
          v36 = v24;
          if (v34 >= v22)
          {
            v12 = v22;
          }

          v38.location = v23 + v33;
          v38.length = v12 + v21;
          CFStringGetCharacters(v30, v38, buffer);
          v5 = v35;
        }

        v13 = &buffer[-v5];
        goto LABEL_15;
      }

      v14 = v32[v33 + v8];
LABEL_18:
      if (v14 == 8233)
      {
        goto LABEL_25;
      }

      if (v14 == 13)
      {
        v15 = v8 + 1;
        if (v8 + 1 >= v2 || (v16 = v34, v34 <= v15))
        {
LABEL_25:
          v19 = 1;
          if (!v7)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (CharactersPtr)
          {
            v17 = &CharactersPtr[v33];
            goto LABEL_24;
          }

          if (v32)
          {
            v18 = v32[v33 + 1 + v8];
          }

          else
          {
            if (v36 <= v15 || v5 > v15)
            {
              v26 = v8 - v11 + 64;
              if (v26 >= v34)
              {
                v26 = v34;
              }

              v35 = v8 - v11;
              v36 = v26;
              if (v34 >= v9 - v11)
              {
                v16 = v9 - v11;
              }

              v39.location = v8 - v11 + v33;
              v39.length = v16 + v11 + v4;
              CFStringGetCharacters(v30, v39, buffer);
              v5 = v35;
            }

            v17 = &buffer[-v5];
LABEL_24:
            v18 = v17[v8 + 1];
          }

          if (v18 == 10)
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          if (!v7)
          {
LABEL_42:
            v7 = [(__CFString *)v1 mutableCopyWithZone:0];

            v1 = v7;
            if (!v6)
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          }
        }

        if (!v6)
        {
LABEL_43:
          v28 = 10;
          v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v28 length:1];
        }

LABEL_44:
        [(__CFString *)v7 replaceCharactersInRange:v8 withString:v19, v6];
        v2 = [(__CFString *)v1 length];
        v30 = v1;
        v33 = 0;
        v34 = v2;
        CharactersPtr = CFStringGetCharactersPtr(v1);
        if (CharactersPtr)
        {
          v25 = 0;
        }

        else
        {
          v25 = CFStringGetCStringPtr(v1, 0x600u);
        }

        v5 = 0;
        v32 = v25;
        v35 = 0;
        v36 = 0;
      }

LABEL_48:
      ++v8;
      --v4;
      ++v9;
      if (v8 >= v2)
      {

        goto LABEL_58;
      }
    }

    v13 = &CharactersPtr[v33];
LABEL_15:
    v14 = v13[v8];
    goto LABEL_18;
  }

LABEL_58:

  return v1;
}

- (uint64_t)tswp_findIndexOfCharacter:()TSWPAdditions range:
{
  v36.length = [(__CFString *)a1 length];
  v34.location = a4;
  v34.length = a5;
  v36.location = 0;
  v9 = NSIntersectionRange(v34, v36);
  if (v9.length)
  {
    location = v9.location;
    theString = a1;
    v31 = v9;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    v11 = CharactersPtr ? 0 : CFStringGetCStringPtr(a1, 0x600u);
    v32 = 0;
    v33 = 0;
    v30 = v11;
    if (v9.length >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 64;
      do
      {
        if (v14 >= 4)
        {
          v16 = 4;
        }

        else
        {
          v16 = v14;
        }

        length = v31.length;
        if (v31.length <= v14)
        {
          v19 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v18 = &CharactersPtr[v31.location];
          }

          else
          {
            if (v30)
            {
              v19 = v30[v31.location + v14];
              goto LABEL_15;
            }

            if (v33 <= v14 || v13 > v14)
            {
              v21 = -v16;
              v22 = v16 + v12;
              v23 = v15 - v16;
              v24 = v14 + v21;
              v25 = v24 + 64;
              if (v24 + 64 >= v31.length)
              {
                v25 = v31.length;
              }

              v32 = v24;
              v33 = v25;
              if (v31.length >= v23)
              {
                length = v23;
              }

              v35.location = v24 + v31.location;
              v35.length = length + v22;
              CFStringGetCharacters(theString, v35, buffer);
              v13 = v32;
            }

            v18 = &buffer[-v13];
          }

          v19 = v18[v14];
        }

LABEL_15:
        if (a3 == v19)
        {
          return location;
        }

        ++v14;
        ++location;
        --v12;
        ++v15;
      }

      while (v9.length != v14);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (uint64_t)tswp_rangeOfCharactersFromSet:()TSWPAdditions index:
{
  v6 = a3;
  v7 = [a1 length];
  v8 = [a1 rangeOfCharacterFromSet:v6 options:0 range:{a4, v7 - a4}];
  v10 = v9;
  if (v9)
  {
    v11 = a4 + 1;
    if (a4 + 1 < v7)
    {
      do
      {
        if (![v6 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v11)}])
        {
          break;
        }

        ++v10;
        ++v11;
      }

      while (v7 != v11);
    }
  }

  return v8;
}

- (__CFString)tswp_replaceOccurrencesOfCharactersInSet:()TSWPAdditions minimumConsecutiveLength:replaceString:
{
  v7 = a3;
  v8 = a5;
  v51 = v7;
  if (!v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_replaceOccurrencesOfCharactersInSet:minimumConsecutiveLength:replaceString:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:968 isFatal:0 description:"invalid nil value for '%{public}s'", "replaceString"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v60 = 0;
  v61 = 0;
  v62 = 0;
  v11 = [(__CFString *)a1 length];
  theString = a1;
  range.location = 0;
  range.length = v11;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v58 = 0;
  length = 0;
  v56 = CStringPtr;
  v50 = a1;
  if (v11 && range.length >= 1)
  {
    if (CharactersPtr)
    {
      v13 = CharactersPtr[range.location];
    }

    else if (CStringPtr)
    {
      v13 = CStringPtr[range.location];
    }

    else
    {
      if (range.length >= 0x40uLL)
      {
        v47.length = 64;
      }

      else
      {
        v47.length = range.length;
      }

      length = v47.length;
      v47.location = range.location;
      CFStringGetCharacters(theString, v47, buffer);
      v13 = buffer[-v58];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = CFCharacterSetIsCharacterMember(v7, v13) != 0;
  v15 = v11 - 2;
  if (v11 < 2 || range.length < 2)
  {
    v16 = 0;
  }

  else if (CharactersPtr)
  {
    v16 = CharactersPtr[range.location + 1];
  }

  else if (v56)
  {
    v16 = v56[range.location + 1];
  }

  else
  {
    if (length < 2 || (v48 = v58, v58 >= 2))
    {
      if (range.length >= 0x40uLL)
      {
        v49.length = 64;
      }

      else
      {
        v49.length = range.length;
      }

      v58 = 0;
      length = v49.length;
      v49.location = range.location;
      CFStringGetCharacters(theString, v49, buffer);
      v48 = v58;
    }

    v16 = buffer[1 - v48];
  }

  IsCharacterMember = CFCharacterSetIsCharacterMember(v7, v16);
  if (v11)
  {
    v18 = 0;
    v19 = IsCharacterMember != 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 2;
    while (1)
    {
      v22 = v21 - 2;
      if (v14)
      {
        if (v22 < v20)
        {
          v20 = v21 - 2;
        }

        ++v18;
        if (!v19)
        {
          if (v18 >= a4)
          {
            v23 = v61;
            if (v61 >= v62)
            {
              v25 = v60;
              v26 = v61 - v60;
              v27 = (v61 - v60) >> 4;
              v28 = v27 + 1;
              if ((v27 + 1) >> 60)
              {
                std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
              }

              v29 = v62 - v60;
              if ((v62 - v60) >> 3 > v28)
              {
                v28 = v29 >> 3;
              }

              v30 = v29 >= 0x7FFFFFFFFFFFFFF0;
              v31 = 0xFFFFFFFFFFFFFFFLL;
              if (!v30)
              {
                v31 = v28;
              }

              if (v31)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(&v60, v31);
              }

              v32 = (v61 - v60) >> 4;
              v33 = (16 * v27);
              *v33 = v20;
              v33[1] = v18;
              v24 = 16 * v27 + 16;
              v34 = &v33[-2 * v32];
              memcpy(v34, v25, v26);
              v35 = v60;
              v60 = v34;
              v61 = v24;
              v62 = 0;
              if (v35)
              {
                operator delete(v35);
              }

              v7 = v51;
            }

            else
            {
              *v61 = v20;
              *(v23 + 1) = v18;
              v24 = (v23 + 16);
            }

            v18 = 0;
            v61 = v24;
          }

          else
          {
            v18 = 0;
          }

          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (v22 < v15)
      {
        break;
      }

      v39 = 0;
LABEL_47:
      ++v21;
      v14 = v19;
      v19 = v39;
      if (!--v11)
      {
        goto LABEL_59;
      }
    }

    if (v21 < 0 || (v36 = range.length, range.length <= v21))
    {
      v38 = 0;
    }

    else
    {
      if (CharactersPtr)
      {
        v37 = &CharactersPtr[range.location];
      }

      else
      {
        if (v56)
        {
          v38 = v56[range.location + v21];
          goto LABEL_46;
        }

        if (length <= v21 || (v40 = v58, v58 > v21))
        {
          v41 = v21 - 4;
          if (v21 < 4)
          {
            v41 = 0;
          }

          if ((v41 + 64) < range.length)
          {
            v36 = v41 + 64;
          }

          v58 = v41;
          length = v36;
          v64.length = v36 - v41;
          v64.location = range.location + v41;
          CFStringGetCharacters(theString, v64, buffer);
          v40 = v58;
        }

        v37 = &buffer[-v40];
      }

      v38 = v37[v21];
    }

LABEL_46:
    v39 = CFCharacterSetIsCharacterMember(v7, v38) != 0;
    goto LABEL_47;
  }

LABEL_59:
  if (v61 == v60)
  {
    v42 = v50;
  }

  else
  {
    v42 = [(__CFString *)v50 mutableCopy];
    for (i = v61; i != v60; i -= 16)
    {
      v44 = *(i - 2);
      v45 = *(i - 1);
      [(__CFString *)v42 replaceCharactersInRange:v44 withString:v45, v8];
    }
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  return v42;
}

+ (uint64_t)tswp_numberForString:()TSWPAdditions withListNumberFormat:
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    if (!+[NSString(TSWPAdditions) tswp_numberForString:withListNumberFormat:]::sformattingCharacterSet)
    {
      v8 = objc_alloc_init(MEMORY[0x277CCAB50]);
      v9 = [MEMORY[0x277CCACA8] stringWithCharacters:L".()" length:3];
      [v8 addCharactersInString:v9];

      v10 = +[NSString(TSWPAdditions) tswp_numberForString:withListNumberFormat:]::sformattingCharacterSet;
      +[NSString(TSWPAdditions) tswp_numberForString:withListNumberFormat:]::sformattingCharacterSet = v8;
    }

    if (a4 >= 3)
    {
      v11 = [v7 tsu_stringByRemovingCharactersInSet:+[NSString(TSWPAdditions) tswp_numberForString:withListNumberFormat:]::sformattingCharacterSet];

      v7 = v11;
    }

    if ([v7 length] >= 0x65)
    {
      v13 = [v7 substringWithRange:{0, 100}];

      v7 = v13;
    }

    if (a4 > 0xE)
    {
      goto LABEL_14;
    }

    if (((1 << a4) & 0x1C0) != 0)
    {
      goto LABEL_20;
    }

    if (((1 << a4) & 0xE00) != 0)
    {
      goto LABEL_20;
    }

    if (((1 << a4) & 0x7000) != 0)
    {
    }

    else
    {
LABEL_14:
      if (a4 - 3 < 3)
      {
      }

      else
      {
        if (a4 > 2)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSString(TSWPAdditions) tswp_numberForString:withListNumberFormat:]"];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
          [OITSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1087 isFatal:0 description:"Label format (%lu) not recognized.", a4];

          +[OITSUAssertionHandler logBacktraceThrottled];
          v15 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }
      }
    }

LABEL_20:
    v15 = v14;
LABEL_21:

    goto LABEL_22;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:

  return v15;
}

+ (uint64_t)tswp_numberForString:()TSWPAdditions withPageNumberFormat:
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    if ([v7 length] >= 0x65)
    {
      v9 = [v7 substringWithRange:{0, 100}];

      v7 = v9;
    }

    if (a4 <= 1)
    {
      if (!a4)
      {
        goto LABEL_16;
      }

      if (a4 == 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      switch(a4)
      {
        case 2:
          goto LABEL_16;
        case 3:
          goto LABEL_16;
        case 4:
LABEL_16:
          v11 = v10;
LABEL_17:

          goto LABEL_18;
      }
    }

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSString(TSWPAdditions) tswp_numberForString:withPageNumberFormat:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1128 isFatal:0 description:"Number format (%d) not recognized.", a4];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  return v11;
}

+ (id)tswp_stringForValue:()TSWPAdditions withListNumberFormat:includeFormatting:
{
  switch(a4)
  {
    case 0:
      v8 = v7 = MEMORY[0x277CCACA8];
      v9 = [v7 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 1:
      v8 = v35 = MEMORY[0x277CCACA8];
      v9 = [v35 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 2:
      v8 = v44 = MEMORY[0x277CCACA8];
      v9 = [v44 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 3:
      v8 = v40 = MEMORY[0x277CCACA8];
      v9 = [v40 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 4:
      v8 = v49 = MEMORY[0x277CCACA8];
      v9 = [v49 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 5:
      v8 = v53 = MEMORY[0x277CCACA8];
      v9 = [v53 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 6:
      v8 = v34 = MEMORY[0x277CCACA8];
      v9 = [v34 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 7:
      v8 = v27 = MEMORY[0x277CCACA8];
      v9 = [v27 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 8:
      v8 = v29 = MEMORY[0x277CCACA8];
      v9 = [v29 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 9:
      v8 = v56 = MEMORY[0x277CCACA8];
      v9 = [v56 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 10:
      v8 = v32 = MEMORY[0x277CCACA8];
      v9 = [v32 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 11:
      v8 = v42 = MEMORY[0x277CCACA8];
      v9 = [v42 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 12:
      v8 = v39 = MEMORY[0x277CCACA8];
      v9 = [v39 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 13:
      v8 = v26 = MEMORY[0x277CCACA8];
      v9 = [v26 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 14:
      v8 = v54 = MEMORY[0x277CCACA8];
      v9 = [v54 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 15:
      v8 = v55 = MEMORY[0x277CCACA8];
      v9 = [v55 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 16:
      v8 = v60 = MEMORY[0x277CCACA8];
      v9 = [v60 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 17:
      v8 = v58 = MEMORY[0x277CCACA8];
      v9 = [v58 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 18:
      v8 = v22 = MEMORY[0x277CCACA8];
      v9 = [v22 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 19:
      v8 = v41 = MEMORY[0x277CCACA8];
      v9 = [v41 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 20:
      v8 = v65 = MEMORY[0x277CCACA8];
      v9 = [v65 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 21:
      v8 = v25 = MEMORY[0x277CCACA8];
      v9 = [v25 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 22:
      v8 = v38 = MEMORY[0x277CCACA8];
      v9 = [v38 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 23:
      v8 = v30 = MEMORY[0x277CCACA8];
      v9 = [v30 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 24:
      v8 = v47 = MEMORY[0x277CCACA8];
      v9 = [v47 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 25:
      v8 = v28 = MEMORY[0x277CCACA8];
      v9 = [v28 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 26:
      v8 = v20 = MEMORY[0x277CCACA8];
      v9 = [v20 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 27:
      v8 = v68 = MEMORY[0x277CCACA8];
      v9 = [v68 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 28:
      v8 = v33 = MEMORY[0x277CCACA8];
      v9 = [v33 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 29:
      v8 = v36 = MEMORY[0x277CCACA8];
      v9 = [v36 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 30:
      v8 = v52 = MEMORY[0x277CCACA8];
      v9 = [v52 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 31:
      v8 = v37 = MEMORY[0x277CCACA8];
      v9 = [v37 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 32:
      v8 = v16 = MEMORY[0x277CCACA8];
      v9 = [v16 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 33:
      v8 = v24 = MEMORY[0x277CCACA8];
      v9 = [v24 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 34:
      v8 = v57 = MEMORY[0x277CCACA8];
      v9 = [v57 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 35:
      v8 = v70 = MEMORY[0x277CCACA8];
      v9 = [v70 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 36:
      v8 = v19 = MEMORY[0x277CCACA8];
      v9 = [v19 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 37:
      v8 = v50 = MEMORY[0x277CCACA8];
      v9 = [v50 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 38:
      v8 = v18 = MEMORY[0x277CCACA8];
      v9 = [v18 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 39:
      v8 = v17 = MEMORY[0x277CCACA8];
      v9 = [v17 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 40:
      v8 = v31 = MEMORY[0x277CCACA8];
      v9 = [v31 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 41:
      v8 = v43 = MEMORY[0x277CCACA8];
      v9 = [v43 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 42:
      v8 = v61 = MEMORY[0x277CCACA8];
      v9 = [v61 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 43:
      v8 = v11 = MEMORY[0x277CCACA8];
      v9 = [v11 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 44:
      v8 = v21 = MEMORY[0x277CCACA8];
      v9 = [v21 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 45:
      v8 = v45 = MEMORY[0x277CCACA8];
      v9 = [v45 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 46:
      v8 = v48 = MEMORY[0x277CCACA8];
      v9 = [v48 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 47:
      v8 = v71 = MEMORY[0x277CCACA8];
      v9 = [v71 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 48:
      v8 = v46 = MEMORY[0x277CCACA8];
      v9 = [v46 stringWithFormat:@"%@", v8];
      goto LABEL_71;
    case 49:
      v8 = v15 = MEMORY[0x277CCACA8];
      v9 = [v15 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 50:
      v8 = v12 = MEMORY[0x277CCACA8];
      v9 = [v12 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 51:
      v8 = v73 = MEMORY[0x277CCACA8];
      v9 = [v73 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 52:
      v8 = v69 = MEMORY[0x277CCACA8];
      v9 = [v69 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 53:
      v8 = v14 = MEMORY[0x277CCACA8];
      v9 = [v14 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 54:
      v8 = v51 = MEMORY[0x277CCACA8];
      v9 = [v51 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 55:
      v8 = v59 = MEMORY[0x277CCACA8];
      v9 = [v59 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 56:
      v8 = v13 = MEMORY[0x277CCACA8];
      v9 = [v13 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 57:
      v8 = v66 = MEMORY[0x277CCACA8];
      v9 = [v66 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 58:
      v8 = v62 = MEMORY[0x277CCACA8];
      v9 = [v62 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 59:
      v8 = v75 = MEMORY[0x277CCACA8];
      v9 = [v75 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 60:
      v8 = v72 = MEMORY[0x277CCACA8];
      v9 = [v72 stringWithFormat:@"%@"], v8);
      goto LABEL_71;
    case 61:
      v8 = v74 = MEMORY[0x277CCACA8];
      v9 = [v74 stringWithFormat:@"%@", v8];
      goto LABEL_71;
    case 62:
      v8 = v63 = MEMORY[0x277CCACA8];
      v9 = [v63 stringWithFormat:@"%@.", v8];
      goto LABEL_71;
    case 63:
      v8 = v64 = MEMORY[0x277CCACA8];
      v9 = [v64 stringWithFormat:@"(%@)", v8];
      goto LABEL_71;
    case 64:
      v8 = v23 = MEMORY[0x277CCACA8];
      v9 = [v23 stringWithFormat:@"%@"], v8);
LABEL_71:
      v67 = v9;

      if ((a5 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_75;
      v10 = case 66:;
      goto LABEL_61;
      v10 = case 67:;
LABEL_61:
      v67 = v10;
      if ((a5 & 1) == 0)
      {
LABEL_72:
        if (+[NSString(TSWPAdditions) tswp_stringForValue:withListNumberFormat:includeFormatting:]::s_predicate != -1)
        {
          +[NSString(TSWPAdditions) tswp_stringForValue:withListNumberFormat:includeFormatting:];
        }

        v76 = [v67 tsu_stringByRemovingCharactersInSet:+[NSString(TSWPAdditions) tswp_stringForValue:withListNumberFormat:includeFormatting:]::_formattingCharacterSet];

        v67 = v76;
      }

LABEL_75:

      return v67;
    default:
      v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSString(TSWPAdditions) tswp_stringForValue:withListNumberFormat:includeFormatting:]"];
      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v78 file:v79 lineNumber:1346 isFatal:1 description:"Label format (%lu) invalid for numeric list.", a4];

      TSUCrash("Label format (%lu) invalid for numeric list.", v80, v81, v82, v83, v84, v85, v86, a4);
  }
}

- (uint64_t)tswp_NSDetectorMatchStringIsStrictPhoneNumber
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA900] letterCharacterSet];
  v3 = [a1 rangeOfCharacterFromSet:v2];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v4 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v5 = [a1 rangeOfCharacterFromSet:v4];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL || [a1 length] && !u_charDigitValue(objc_msgSend(a1, "tswp_utf32CharacterAtIndex:", 0)))
  {
    return 1;
  }

  v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v7 = [a1 componentsSeparatedByCharactersInSet:v6];

  if ([v7 count] < 2)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 length] > 3)
          {
            v14 = 1;
            goto LABEL_22;
          }

          if ([v13 length] <= 2)
          {
            v14 = 1;
            if (v10)
            {
              goto LABEL_22;
            }

            v10 = 1;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_22:
  }

  return v14;
}

+ (id)tswp_stringForValue:()TSWPAdditions withPageNumberFormat:
{
  v4 = 0;
  if (a4 > 2)
  {
    switch(a4)
    {
        v4 = case 3:;
        break;
        v4 = case 4:;
        break;
        v4 = case 5:;
        break;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
      v4 = {;
    }

    else if (a4 == 2)
      v4 = {;
    }
  }

  else
    v4 = {;
  }

  return v4;
}

- (uint64_t)tswp_utf32CharacterAtIndex:()TSWPAdditions
{
  v5 = [a1 length];
  if (v5 <= a3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1493 isFatal:0 description:"index out of bounds"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  else
  {
    v6 = v5;
    v7 = [a1 characterAtIndex:a3];
    if ((v7 & 0xFC00) == 0xDC00)
    {
      if (a3)
      {
        v8 = [a1 characterAtIndex:a3 - 1];
      }

      else
      {
        v8 = 0;
      }

      if (a3 + 1 >= [a1 length])
      {
        v12 = 0;
      }

      else
      {
        v12 = [a1 characterAtIndex:a3 + 1];
      }

      v13 = [a1 rangeOfComposedCharacterSequenceAtIndex:a3];
      v15 = v14;
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
      v37.location = v13;
      v37.length = v15;
      v18 = NSStringFromRange(v37);
      [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1502 isFatal:1 description:"index inside surrogate pair. characters:U+%04x U+%04x U+%04x, sequence range: %{public}@", v8, v7, v12, v18];

      v38.location = v13;
      v38.length = v15;
      NSStringFromRange(v38);
      objc_claimAutoreleasedReturnValue();
      TSUCrash("index inside surrogate pair. characters:U+%04x U+%04x U+%04x, sequence range: %{public}@", v19, v20, v21, v22, v23, v24, v25, v8);
    }

    if (a3 + 1 < v6 && (v7 & 0xFC00) == 0xD800)
    {
      v11 = [a1 characterAtIndex:?];
      if ((v11 & 0xFC00) != 0xDC00)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:]"];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:1508 isFatal:1 description:"invalid surrogate pair"];

        TSUCrash("invalid surrogate pair", v28, v29, v30, v31, v32, v33, v34, v36);
      }

      return (v11 + (v7 << 10) - 56613888);
    }
  }

  return v7;
}

- (uint64_t)tswp_utf32CharacterAtIndex:()TSWPAdditions planeClassification:
{
  v7 = [a1 length];
  v8 = [a1 characterAtIndex:a3];
  if ((v8 & 0xFC00) == 0xD800)
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (v7 - 1 == a3)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:planeClassification:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1548 isFatal:0 description:"Invalid surrogate pair (single code point=0x%x, index=%lu)", v8, a3];
    }

    else
    {
      v13 = [a1 characterAtIndex:a3 + 1];
      if ((v13 & 0xFC00) == 0xDC00)
      {
        v10 = v13 + (v8 << 10);
        return (v10 - 56613888);
      }

      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:planeClassification:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1556 isFatal:0 description:"Invalid surrogate pair (single code point=0x%x, index=%lu)", v8, a3];
    }

    goto LABEL_20;
  }

  if ((v8 & 0xFC00) == 0xDC00)
  {
    if (a4)
    {
      *a4 = 2;
    }

    if (!a3)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:planeClassification:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1529 isFatal:0 description:"Invalid surrogate pair (single code point=0x%x, index=%lu)", v8, 0];

LABEL_21:
      +[OITSUAssertionHandler logBacktraceThrottled];
      return v8;
    }

    v9 = [a1 characterAtIndex:a3 - 1];
    if ((v9 & 0xFC00) == 0xD800)
    {
      v10 = v8 + (v9 << 10);
      return (v10 - 56613888);
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:planeClassification:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1537 isFatal:0 description:"Invalid surrogate pair (single code point=0x%x, index=%lu)", v8, a3];
LABEL_20:

    goto LABEL_21;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return v8;
}

- (uint64_t)tswp_isLowerCaseFromIndex:()TSWPAdditions
{
  v5 = [a1 length];
  v6 = v5 - a3;
  if (v5 <= a3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) tswp_isLowerCaseFromIndex:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/TSNSStringAdditions.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1570 isFatal:0 description:"index is out of bounds"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    return 1;
  }

  else
  {
    v7 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v8 = [a1 rangeOfCharacterFromSet:v7 options:2 range:{a3, v6}] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)tswp_stringWithoutControlCharacters
{
  v1 = [a1 mutableCopy];
  v2 = [MEMORY[0x277CCA900] controlCharacterSet];
  while (1)
  {
    v4 = [v1 rangeOfCharacterFromSet:v2];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    [v1 deleteCharactersInRange:{v4, v3}];
  }

  v5 = [v1 copy];

  return v5;
}

@end