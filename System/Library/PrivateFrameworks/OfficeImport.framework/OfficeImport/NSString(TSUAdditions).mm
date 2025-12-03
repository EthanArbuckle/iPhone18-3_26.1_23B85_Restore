@interface NSString(TSUAdditions)
+ (__CFString)tsu_stringWithUUID;
+ (id)tsu_stringByBase64EncodingBytes:()TSUAdditions length:breakLines:;
+ (id)tsu_stringByHexEncodingData:()TSUAdditions;
+ (id)tsu_stringByIndentingString:()TSUAdditions times:;
+ (id)tsu_stringWithFormat:()TSUAdditions arguments:;
+ (id)tsu_stringWithHexFromBytes:()TSUAdditions length:;
- (BOOL)tsu_containsOnlyCharactersFromSet:()TSUAdditions;
- (__CFString)tsu_stringByFixingBrokenSurrogatePairs;
- (__CFString)tsu_stringByTrimmingCharactersInSetFromFront:()TSUAdditions;
- (__CFString)tsu_stringWithPathRelativeTo:()TSUAdditions;
- (__CFString)tsu_stringWithPathRelativeTo:()TSUAdditions allowBacktracking:;
- (id)tsu_escapeForIcuRegex;
- (id)tsu_escapeXML;
- (id)tsu_middleTruncateToLength:()TSUAdditions;
- (id)tsu_setOfContainedWordsIncludingPunctuationAndSymbols:()TSUAdditions;
- (id)tsu_stringByAddingCSVEscapesForLocale:()TSUAdditions;
- (id)tsu_stringByAppendingSeparator:()TSUAdditions format:;
- (id)tsu_stringByExpandingTableFormatting;
- (id)tsu_stringByMakingFirstCharacterLowercase;
- (id)tsu_stringByMakingFirstCharacterUppercase;
- (id)tsu_stringByRemovingCharactersInSet:()TSUAdditions options:;
- (id)tsu_stringByReplacingInstancesOfCharactersInSet:()TSUAdditions withString:;
- (id)tsu_stringByUniquingPathInsideDirectory:()TSUAdditions withFormat:;
- (id)tsu_stringQuotedIfContainsCharacterSet:()TSUAdditions;
- (id)tsu_stringWithNormalizedHyphensAndQuotationMarks;
- (id)tsu_stringWithRealpath;
- (id)tsu_substringWithComposedCharacterSequencesToFileSystemLength:()TSUAdditions;
- (id)tsu_substringWithComposedCharacterSequencesTruncatedToLength:()TSUAdditions;
- (id)tsu_tolerantStringByAppendingPathExtension:()TSUAdditions;
- (id)tsu_unescapeXML;
- (uint64_t)tsu_countInstancesOfString:()TSUAdditions options:;
- (uint64_t)tsu_encodeStringBase64;
- (uint64_t)tsu_isChildOfPath:()TSUAdditions;
- (uint64_t)tsu_isDescendantOfPath:()TSUAdditions;
- (uint64_t)tsu_isEqualToString:()TSUAdditions;
- (uint64_t)tsu_rangeOfString:()TSUAdditions options:updatingSearchRange:;
- (uint64_t)tsu_stringWithNormalizedHyphens;
- (uint64_t)tsu_stringWithNormalizedQuotationMarks;
- (uint64_t)tsu_stringWithoutAttachmentCharacters;
- (void)tsu_enumerateRangesOfCharactersInSet:()TSUAdditions usingBlock:;
@end

@implementation NSString(TSUAdditions)

+ (__CFString)tsu_stringWithUUID
{
  v0 = CFUUIDCreate(0);
  if (v0)
  {
    v1 = v0;
    v2 = CFUUIDCreateString(0, v0);
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)tsu_stringWithFormat:()TSUAdditions arguments:
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [[v5 alloc] initWithFormat:v6 arguments:a4];

  return v7;
}

+ (id)tsu_stringByIndentingString:()TSUAdditions times:
{
  v5 = a3;
  v6 = [v5 length];
  if (a4 && v6)
  {
    do
    {
      v7 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  "];

      if ([v7 hasSuffix:@"\n  "])
      {
        v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];

        v7 = v8;
      }

      v5 = [@"  " stringByAppendingString:v7];

      --a4;
    }

    while (a4);
  }

  v9 = v5;

  return v5;
}

- (id)tsu_stringByExpandingTableFormatting
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [self componentsSeparatedByString:@"$"];
  array = [MEMORY[0x277CBEB18] array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v65;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v64 + 1) + 8 * i) componentsSeparatedByString:@"|"];
        [array addObject:v11];
        v12 = [v11 count];
        if (v8 <= v12)
        {
          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  lastObject = [array lastObject];
  if ([lastObject count] == 1)
  {
    lastObject2 = [array lastObject];
    v15 = [lastObject2 objectAtIndexedSubscript:0];
    v16 = [v15 length];

    if (!v16)
    {
      [array removeLastObject];
    }
  }

  else
  {
  }

  if (v8)
  {
    v50 = v5;
    v51 = v2;
    v17 = malloc_type_calloc(8uLL, v8, 0x9230B1FEuLL);
    v59 = malloc_type_calloc(8uLL, [array count], 0x76FD0194uLL);
    v54 = array;
    if ([array count])
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v52 = v19;
        [array objectAtIndexedSubscript:v18];
        v57 = v55 = v18;
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = &stru_286EE1130;
          if ([v57 count] > v20)
          {
            v22 = [v57 objectAtIndexedSubscript:v20];
          }

          v23 = [(__CFString *)v22 componentsSeparatedByString:@"\n"];
          v24 = v59[v18];
          v25 = [v23 count];
          if (v24 <= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v24;
          }

          v59[v18] = v26;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v27 = v23;
          v28 = [v27 countByEnumeratingWithState:&v60 objects:v68 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v61;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v61 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = v17[v20];
                v33 = [*(*(&v60 + 1) + 8 * j) length];
                if (v32 <= v33)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = v32;
                }

                v17[v20] = v34;
              }

              v29 = [v27 countByEnumeratingWithState:&v60 objects:v68 count:16];
            }

            while (v29);
          }

          v20 = ++v21;
          v18 = v55;
        }

        while (v8 > v21);

        v18 = (v52 + 1);
        array = v54;
        v35 = [v54 count];
        v19 = v52 + 1;
      }

      while (v35 > v18);
    }

    v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([array count])
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v53 = v37;
        v38 = [array objectAtIndexedSubscript:v36];
        if (v59[v36])
        {
          v39 = 0;
          v40 = 0;
          v56 = v36;
          do
          {
            v58 = v40;
            if ([v38 count])
            {
              v41 = 0;
              v42 = 1;
              do
              {
                v43 = &stru_286EE1130;
                if ([v38 count] > v41)
                {
                  v43 = [v38 objectAtIndexedSubscript:v41];
                }

                v44 = [(__CFString *)v43 componentsSeparatedByString:@"\n"];
                v45 = &stru_286EE1130;
                if ([v44 count] > v39)
                {
                  v45 = [v44 objectAtIndexedSubscript:v39];
                }

                v46 = [(__CFString *)v45 stringByPaddingToLength:v17[v41] + 1 withString:@" " startingAtIndex:0];
                [v8 appendString:v46];

                v41 = v42;
              }

              while ([v38 count] > v42++);
            }

            [v8 appendString:@"\n"];
            v39 = (v58 + 1);
            v40 = v58 + 1;
          }

          while (v59[v56] > v39);
        }

        v36 = (v53 + 1);
        array = v54;
        v48 = [v54 count];
        v37 = v53 + 1;
      }

      while (v48 > v36);
    }

    free(v59);
    free(v17);
    v5 = v50;
    v2 = v51;
  }

  objc_autoreleasePoolPop(v2);

  return v8;
}

- (id)tsu_stringQuotedIfContainsCharacterSet:()TSUAdditions
{
  selfCopy = self;
  if ([selfCopy rangeOfCharacterFromSet:a3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [selfCopy mutableCopy];
    [v5 replaceOccurrencesOfString:@" withString:@" options:0 range:{0, objc_msgSend(selfCopy, "length")}];
    [v5 appendString:@""];
    [v5 insertString:@"" atIndex:0];

    selfCopy = v5;
  }

  return selfCopy;
}

- (id)tsu_stringByAppendingSeparator:()TSUAdditions format:
{
  v11 = a3;
  v12 = [MEMORY[0x277CCACA8] tsu_stringWithFormat:a4 arguments:&a9];
  if ([self length])
  {
    v13 = [self stringByAppendingFormat:@"%@%@", v11, v12];

    v12 = v13;
  }

  return v12;
}

- (id)tsu_stringByAddingCSVEscapesForLocale:()TSUAdditions
{
  v4 = a3;
  v5 = [v4 localeSpecificStorageForKey:@"stringByAddingCSVEscapes"];
  if (!v5)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [whitespaceAndNewlineCharacterSet mutableCopy];

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    invertedSet = [whitespaceCharacterSet invertedSet];
    [v7 formIntersectionWithCharacterSet:invertedSet];

    [v7 addCharactersInString:@""];
    listSeparator = [v4 listSeparator];
    if ([listSeparator length] != 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByAddingCSVEscapesForLocale:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSString_TSUAdditions.m"];
      [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:191 isFatal:0 description:"The list separator is not a 1-char string"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    [v7 addCharactersInString:listSeparator];
    v5 = [v7 copy];
    [v4 setLocaleSpecificStorage:v5 forKey:@"stringByAddingCSVEscapes"];
  }

  v13 = [self tsu_stringQuotedIfContainsCharacterSet:v5];

  return v13;
}

- (id)tsu_stringByUniquingPathInsideDirectory:()TSUAdditions withFormat:
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByUniquingPathInsideDirectory:withFormat:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSString_TSUAdditions.m"];
    [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:205 isFatal:0 description:"invalid nil value for '%{public}s'", "directoryPath"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  selfCopy = self;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v6 stringByAppendingPathComponent:selfCopy];
  v13 = [defaultManager fileExistsAtPath:v12];

  if (v13)
  {
    context = objc_autoreleasePoolPush();
    pathExtension = [selfCopy pathExtension];
    if (pathExtension)
    {
      v15 = pathExtension;
      if ([(__CFString *)pathExtension length])
      {
        v16 = [@"." stringByAppendingString:v15];

        v15 = v16;
      }
    }

    else
    {
      v15 = &stru_286EE1130;
    }

    stringByDeletingPathExtension = [selfCopy stringByDeletingPathExtension];
    v18 = 2;
    do
    {
      v19 = selfCopy;
      v20 = (v18 + 1);
      selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:v7, stringByDeletingPathExtension, v18, v15];

      v21 = [v6 stringByAppendingPathComponent:selfCopy];
      v22 = [defaultManager fileExistsAtPath:v21];

      v18 = v20;
    }

    while ((v22 & 1) != 0);

    objc_autoreleasePoolPop(context);
  }

  return selfCopy;
}

- (__CFString)tsu_stringByFixingBrokenSurrogatePairs
{
  selfCopy = self;
  v2 = [(__CFString *)selfCopy length];
  theString = selfCopy;
  v30 = 0;
  v31 = v2;
  CharactersPtr = CFStringGetCharactersPtr(selfCopy);
  CStringPtr = 0;
  v28 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(selfCopy, 0x600u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v32 = 0;
  v33 = 0;
  v29 = CStringPtr;
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = v31;
        if (v31 > v7)
        {
          if (v28)
          {
            v9 = v28[v30 + v7];
          }

          else if (v29)
          {
            v9 = v29[v30 + v7];
          }

          else
          {
            if (v33 <= v7 || v5 > v7)
            {
              v10 = v7 - 4;
              if (v7 < 4)
              {
                v10 = 0;
              }

              if (v10 + 64 < v31)
              {
                v8 = v10 + 64;
              }

              v32 = v10;
              v33 = v8;
              v35.length = v8 - v10;
              v35.location = v30 + v10;
              CFStringGetCharacters(theString, v35, &v19);
              v5 = v32;
            }

            v9 = *(&v19 + v7 - v5);
          }

          v11 = v9 & 0xFC00;
          if (v11 == 56320)
          {
LABEL_37:
            if (!v6)
            {
              v6 = [(__CFString *)selfCopy mutableCopyWithZone:0, v19, v20, v21, v22, v23, v24, v25, v26];

              selfCopy = v6;
            }

            [(__CFString *)v6 replaceCharactersInRange:v7 withString:1, @"\uFFFD", v19, v20, v21, v22, v23, v24, v25, v26];
            v2 = [(__CFString *)selfCopy length];
            theString = selfCopy;
            v30 = 0;
            v31 = v2;
            v16 = CFStringGetCharactersPtr(selfCopy);
            v17 = 0;
            v28 = v16;
            if (!v16)
            {
              v17 = CFStringGetCStringPtr(selfCopy, 0x600u);
            }

            v5 = 0;
            v29 = v17;
            v32 = 0;
            v33 = 0;
            goto LABEL_42;
          }

          if (v11 == 55296)
          {
            v12 = v7 + 1;
            if (v7 + 1 >= v2)
            {
              goto LABEL_37;
            }

            v13 = v31;
            if (v31 <= v12)
            {
              goto LABEL_37;
            }

            if (v28)
            {
              v14 = v28[v30 + v12];
            }

            else if (v29)
            {
              v14 = v29[v30 + v12];
            }

            else
            {
              if (v33 <= v12 || v5 > v12)
              {
                v15 = v7 - 3;
                if (v7 < 3)
                {
                  v15 = 0;
                }

                if (v15 + 64 < v31)
                {
                  v13 = v15 + 64;
                }

                v32 = v15;
                v33 = v13;
                v36.length = v13 - v15;
                v36.location = v30 + v15;
                CFStringGetCharacters(theString, v36, &v19);
                v5 = v32;
              }

              v14 = *(&v19 + v12 - v5);
            }

            if (v14 >> 10 != 55)
            {
              goto LABEL_37;
            }

            ++v7;
          }
        }
      }

LABEL_42:
      if (++v7 >= v2)
      {

        break;
      }
    }
  }

  return selfCopy;
}

- (id)tsu_stringByRemovingCharactersInSet:()TSUAdditions options:
{
  v6 = a3;
  if (v6)
  {
    selfCopy = self;
    if ([selfCopy rangeOfCharacterFromSet:v6] == 0x7FFFFFFFFFFFFFFFLL)
    {
      selfCopy2 = selfCopy;
    }

    else
    {
      selfCopy2 = [MEMORY[0x277CCAB68] string];
      v11 = [selfCopy length];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = a4 & 0xFFFFFFFB;
        v15 = v11;
        do
        {
          v16 = [selfCopy rangeOfCharacterFromSet:v6 options:v14 range:{v13, v15}];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = 0;
          }

          else
          {
            v18 = v17;
          }

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v12;
          }

          else
          {
            v19 = v16;
          }

          v20 = [selfCopy substringWithRange:{v13, v19 - v13}];
          [selfCopy2 appendString:v20];

          v13 = v18 + v19;
          v15 = v12 - (v18 + v19);
        }

        while (v12 != v18 + v19);
      }
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByRemovingCharactersInSet:options:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSString_TSUAdditions.m"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:283 isFatal:0 description:"invalid nil value for '%{public}s'", "charSet"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)tsu_stringByReplacingInstancesOfCharactersInSet:()TSUAdditions withString:
{
  v6 = a3;
  v7 = a4;
  if ([self rangeOfCharacterFromSet:v6 options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v9 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(self, "length")}];
    v10 = [MEMORY[0x277CCAC80] scannerWithString:self];
    [v10 setCharactersToBeSkipped:0];
    if (([v10 isAtEnd] & 1) == 0)
    {
      v11 = 0;
      while (1)
      {
        v17 = v11;
        v12 = [v10 scanUpToCharactersFromSet:v6 intoString:&v17];
        v13 = v17;

        if (v12)
        {
          [v9 appendString:v13];
        }

        if ([v10 isAtEnd])
        {
          break;
        }

        v16 = v13;
        [v10 scanCharactersFromSet:v6 intoString:&v16];
        v11 = v16;

        for (i = [v11 length]; i; --i)
        {
          [v9 appendString:v7];
        }

        if ([v10 isAtEnd])
        {
          goto LABEL_13;
        }
      }

      v11 = v13;
LABEL_13:
    }

    selfCopy = [MEMORY[0x277CCACA8] stringWithString:v9];
  }

  return selfCopy;
}

- (uint64_t)tsu_countInstancesOfString:()TSUAdditions options:
{
  v6 = a3;
  v7 = [self length];
  v8 = [v6 length];
  v9 = [self rangeOfString:v6 options:a4 range:{0, v7}];
  v10 = 0;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v10 = 0;
    do
    {
      ++v10;
      v12 = v9 + v8;
      v7 = v7 - (v9 + v8) + v11;
      v9 = [self rangeOfString:v6 options:a4 range:{v9 + v8, v7}];
      v11 = v12;
    }

    while (v9 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v10;
}

- (id)tsu_escapeForIcuRegex
{
  if (tsu_escapeForIcuRegex_icuRegexCharSetToken != -1)
  {
    [NSString(TSUAdditions) tsu_escapeForIcuRegex];
  }

  selfCopy = self;
  v3 = [selfCopy length];
  *&v12 = [selfCopy rangeOfCharacterFromSet:tsu_escapeForIcuRegex_icuRegexCharSet];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = selfCopy;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAB68]);
    v6 = [selfCopy substringToIndex:v12];
    v4 = [v5 initWithString:v6];

    if (v3 != v12)
    {
      do
      {
        [v4 appendFormat:@"\\%C", objc_msgSend(selfCopy, "characterAtIndex:", v12)];
        *&v12 = v12 + 1;
        *(&v12 + 1) = v3 - v12;
        v7 = v12;
        if (v3 != v12)
        {
          *&v11 = [selfCopy rangeOfCharacterFromSet:tsu_escapeForIcuRegex_icuRegexCharSet options:0 range:v12];
          *(&v11 + 1) = v8;
          v12 = v11;
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = v3;
          }

          if (v12 != v7)
          {
            v9 = [selfCopy substringWithRange:{v7, v12 - v7}];
            [v4 appendString:v9];
          }
        }
      }

      while (*(&v12 + 1));
    }
  }

  return v4;
}

- (uint64_t)tsu_isDescendantOfPath:()TSUAdditions
{
  v4 = a3;
  pathComponents = [self pathComponents];
  pathComponents2 = [v4 pathComponents];
  v7 = [pathComponents2 count];
  if (v7)
  {
    do
    {
      v8 = v7 - 1;
      v9 = [pathComponents2 objectAtIndexedSubscript:v7 - 1];
      v10 = [v9 isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      --v7;
    }

    while (v8);
  }

  v11 = [pathComponents count];
  v12 = v7 <= v11;
  if (v7 - 1 < v11)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [pathComponents objectAtIndexedSubscript:v13];
      v16 = [pathComponents2 objectAtIndexedSubscript:v13];
      v12 = [v15 isEqualToString:v16];

      if (v7 <= v14)
      {
        break;
      }

      v13 = v14++;
    }

    while ((v12 & 1) != 0);
  }

  return v12;
}

- (uint64_t)tsu_isChildOfPath:()TSUAdditions
{
  v4 = a3;
  pathComponents = [self pathComponents];
  v6 = [pathComponents mutableCopy];

  pathComponents2 = [v4 pathComponents];
  v8 = [pathComponents2 mutableCopy];

  if ([v6 count] >= 2)
  {
    do
    {
      lastObject = [v6 lastObject];
      v10 = [lastObject isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      [v6 removeObjectAtIndex:{objc_msgSend(v6, "count") - 1}];
    }

    while ([v6 count] > 1);
  }

  if ([v8 count] >= 2)
  {
    do
    {
      lastObject2 = [v8 lastObject];
      v12 = [lastObject2 isEqualToString:@"/"];

      if (!v12)
      {
        break;
      }

      [v8 removeObjectAtIndex:{objc_msgSend(v8, "count") - 1}];
    }

    while ([v8 count] > 1);
  }

  v13 = [v8 count] + 1;
  v14 = [v6 count];
  v15 = v13 == v14;
  v16 = [v8 count];
  if (v16 && v13 == v14)
  {
    v17 = v16;
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = [v6 objectAtIndexedSubscript:v18];
      v21 = [v8 objectAtIndexedSubscript:v18];
      v15 = [v20 isEqualToString:v21];

      if (v17 <= v19)
      {
        break;
      }

      v18 = v19++;
    }

    while ((v15 & 1) != 0);
  }

  return v15;
}

- (id)tsu_stringWithRealpath
{
  v1 = realpath_DARWIN_EXTSN([self fileSystemRepresentation], 0);
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:4];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)tsu_substringWithComposedCharacterSequencesTruncatedToLength:()TSUAdditions
{
  if ([self length] <= a3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "rangeOfComposedCharacterSequenceAtIndex:", a3)}];
  }

  return selfCopy;
}

- (id)tsu_substringWithComposedCharacterSequencesToFileSystemLength:()TSUAdditions
{
  v5 = [self length];
  v6 = 0;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [self rangeOfComposedCharacterSequenceAtIndex:v6];
      v10 = v9;
      v11 = [self substringWithRange:{v8, v9}];
      fileSystemRepresentation = [v11 fileSystemRepresentation];

      v7 += strlen(fileSystemRepresentation);
      if (v7 > a3)
      {
        break;
      }

      v6 += v10;
    }

    while (v6 < v5);
  }

  if (v6 == v5)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:v6];
  }

  return selfCopy;
}

- (__CFString)tsu_stringWithPathRelativeTo:()TSUAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    stringByStandardizingPath = [self stringByStandardizingPath];
    pathComponents = [stringByStandardizingPath pathComponents];

    stringByStandardizingPath2 = [v4 stringByStandardizingPath];
    pathComponents2 = [stringByStandardizingPath2 pathComponents];

    v10 = [pathComponents count];
    v11 = [pathComponents2 count];
    if (v10 < v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    v22 = v5;
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [pathComponents2 objectAtIndexedSubscript:v13];
      v16 = [pathComponents objectAtIndexedSubscript:v13];
      v17 = [v15 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        break;
      }

      v13 = v14;
    }

    while (v12 > v14++);
    v5 = v22;
    if (v12 != v13)
    {
LABEL_10:
      v19 = 0;
    }

    else
    {
LABEL_8:
      if (v10 == v12)
      {
        v19 = &stru_286EE1130;
      }

      else
      {
        v20 = [pathComponents subarrayWithRange:{v12, v10 - v12}];
        v19 = [MEMORY[0x277CCACA8] pathWithComponents:v20];
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (__CFString)tsu_stringWithPathRelativeTo:()TSUAdditions allowBacktracking:
{
  v6 = a3;
  if (a4)
  {
    stringByStandardizingPath = [self stringByStandardizingPath];
    pathComponents = [stringByStandardizingPath pathComponents];

    stringByStandardizingPath2 = [v6 stringByStandardizingPath];
    pathComponents2 = [stringByStandardizingPath2 pathComponents];

    v11 = [pathComponents count];
    v12 = [pathComponents2 count];
    v13 = v12;
    if (v12 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [pathComponents2 objectAtIndexedSubscript:v15];
        v18 = [pathComponents objectAtIndexedSubscript:v15];
        v19 = [v17 isEqualToString:v18];

        if (!v19)
        {
          break;
        }

        v15 = ++v16;
      }

      while (v14 > v16);
    }

    else
    {
      v16 = 0;
    }

    v21 = v13 - v16;
    if (v13 <= v16)
    {
      v23 = &stru_286EE1130;
    }

    else
    {
      v22 = &stru_286EE1130;
      do
      {
        v23 = [(__CFString *)v22 stringByAppendingPathComponent:@".."];

        v22 = v23;
        --v21;
      }

      while (v21);
    }

    if (v16 >= v11)
    {
      v20 = v23;
    }

    else
    {
      do
      {
        v24 = [pathComponents objectAtIndexedSubscript:v16];
        v20 = [(__CFString *)v23 stringByAppendingPathComponent:v24];

        ++v16;
        v23 = v20;
      }

      while (v11 != v16);
    }
  }

  else
  {
    v20 = [self tsu_stringWithPathRelativeTo:v6];
  }

  return v20;
}

- (__CFString)tsu_stringByTrimmingCharactersInSetFromFront:()TSUAdditions
{
  selfCopy = self;
  v5 = [(__CFString *)selfCopy rangeOfCharacterFromSet:a3 options:8];
  v7 = v6;
  if (v6 == [(__CFString *)selfCopy length])
  {
    v8 = &stru_286EE1130;
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v8 = [(__CFString *)selfCopy substringFromIndex:v7];
  }

  selfCopy = v8;
LABEL_6:

  return selfCopy;
}

+ (id)tsu_stringWithHexFromBytes:()TSUAdditions length:
{
  v4 = a4;
  v6 = 2 * a4;
  v7 = malloc_type_malloc(2 * a4, 0x100004077774924uLL);
  if (v4)
  {
    v8 = v7;
    do
    {
      v9 = *a3++;
      *v8 = a0123456789abcd[v9 >> 4];
      v8[1] = a0123456789abcd[v9 & 0xF];
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v7 length:v6 encoding:1 freeWhenDone:1];

  return v10;
}

+ (id)tsu_stringByBase64EncodingBytes:()TSUAdditions length:breakLines:
{
  v6 = a4;
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:4 * a4 / 3];
  if (v6 < 3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 + 2);
    v16 = 3 * ((v6 - 3) / 3) + 3;
    v10 = -4;
    v11 = 4;
    do
    {
      [v8 appendFormat:@"%c%c%c%c", Base64Alphabet[*(v9 - 2) >> 2], Base64Alphabet[(((*(v9 - 1) << 8) | (*(v9 - 2) << 16)) >> 12) & 0x3F], Base64Alphabet[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F], Base64Alphabet[*v9 & 0x3F]];
      if (a5 && !(v10 + 76 * (v11 / 0x4C)))
      {
        [v8 appendString:@"\n"];
      }

      v9 += 3;
      v10 -= 4;
      v11 += 4;
      v6 -= 3;
    }

    while (v6 > 2);
    v12 = v16;
  }

  if (v6 == 1)
  {
    [v8 appendFormat:@"%c%c==", Base64Alphabet[*(a3 + v12) >> 2], Base64Alphabet[16 * (*(a3 + v12) & 3)], v15];
  }

  else if (v6 == 2)
  {
    v13 = (a3 + v12);
    [v8 appendFormat:@"%c%c%c=", Base64Alphabet[*v13 >> 2], Base64Alphabet[((((v13[1] & 0xF0) << 8) | (*v13 << 16)) >> 12) & 0x3F], Base64Alphabet[4 * (v13[1] & 0xF)]];
  }

  return v8;
}

- (uint64_t)tsu_encodeStringBase64
{
  uTF8String = [self UTF8String];
  v2 = strlen(uTF8String);
  v3 = MEMORY[0x277CCACA8];

  return [v3 tsu_stringByBase64EncodingBytes:uTF8String length:v2];
}

- (id)tsu_stringByMakingFirstCharacterLowercase
{
  selfCopy = self;
  if ([selfCopy length])
  {
    v2 = [selfCopy substringToIndex:1];
    lowercaseString = [v2 lowercaseString];
    if (([v2 isEqualToString:lowercaseString] & 1) == 0)
    {
      v4 = [selfCopy substringFromIndex:1];
      v5 = [lowercaseString stringByAppendingString:v4];

      selfCopy = v5;
    }
  }

  return selfCopy;
}

- (id)tsu_stringByMakingFirstCharacterUppercase
{
  v2 = [self mutableCopy];
  if ([v2 length])
  {
    v3 = [self substringToIndex:1];
    uppercaseString = [v3 uppercaseString];
    [v2 replaceCharactersInRange:0 withString:{1, uppercaseString}];
  }

  return v2;
}

- (id)tsu_escapeXML
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

- (id)tsu_unescapeXML
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"&amp;" withString:@"&" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&gt;" withString:@">" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

- (BOOL)tsu_containsOnlyCharactersFromSet:()TSUAdditions
{
  invertedSet = [a3 invertedSet];
  v5 = [self rangeOfCharacterFromSet:invertedSet];

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)tsu_tolerantStringByAppendingPathExtension:()TSUAdditions
{
  v4 = a3;
  if (([self isEqualToString:&stru_286EE1130] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", &stru_286EE1130))
  {
    selfCopy = self;
LABEL_4:
    v6 = selfCopy;
    goto LABEL_5;
  }

  if ([self isEqualToString:@"\\\\""])
  {
    v8 = [@"\\"" stringByAppendingPathExtension:v4];
    v9 = [@"\\"" stringByAppendingString:v8];
  }

  else
  {
    if (![self length] || objc_msgSend(self, "characterAtIndex:", 0) != 126)
    {
      selfCopy = [self stringByAppendingPathExtension:v4];
      goto LABEL_4;
    }

    v10 = [@"X" stringByAppendingString:self];
    v8 = [v10 stringByAppendingPathExtension:v4];

    v9 = [v8 substringFromIndex:1];
  }

  v6 = v9;

LABEL_5:

  return v6;
}

+ (id)tsu_stringByHexEncodingData:()TSUAdditions
{
  v3 = a3;
  string = [MEMORY[0x277CCAB68] string];
  bytes = [v3 bytes];
  v6 = [v3 length];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *bytes++;
      [string appendFormat:@"%02x", v8];
      --v7;
    }

    while (v7);
  }

  v9 = [string copy];

  return v9;
}

- (uint64_t)tsu_rangeOfString:()TSUAdditions options:updatingSearchRange:
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    v10 = *a5;
    v11 = a5[1];
    v12 = [self rangeOfString:v8 options:a4 range:{*a5, v11}];
    v14 = v12;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a5 = NSInvalidRange;
    }

    else if ((a4 & 4) != 0)
    {
      *a5 = v10;
      a5[1] = v12 - v10;
    }

    else
    {
      *a5 = v12 + v13;
      a5[1] = v11 + v10 - (v12 + v13);
    }
  }

  else
  {
    v14 = [self rangeOfString:v8 options:a4 range:{0, objc_msgSend(v8, "length")}];
  }

  return v14;
}

- (void)tsu_enumerateRangesOfCharactersInSet:()TSUAdditions usingBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:self];
  [v8 setCaseSensitive:1];
  [v8 setCharactersToBeSkipped:0];
  if (([v8 isAtEnd] & 1) == 0)
  {
    do
    {
      scanLocation = [v8 scanLocation];
      if ([v8 scanCharactersFromSet:v6 intoString:0])
      {
        scanLocation2 = [v8 scanLocation];
        v11 = 0;
        v7[2](v7, scanLocation, scanLocation2 - scanLocation, &v11);
        if (v11)
        {
          break;
        }
      }

      if (([v8 isAtEnd] & 1) == 0)
      {
        [v8 scanUpToCharactersFromSet:v6 intoString:0];
      }
    }

    while (![v8 isAtEnd]);
  }
}

- (id)tsu_setOfContainedWordsIncludingPunctuationAndSymbols:()TSUAdditions
{
  v30 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__NSString_TSUAdditions__tsu_setOfContainedWordsIncludingPunctuationAndSymbols___block_invoke;
  aBlock[3] = &__block_descriptor_33_e30_Q16__0____CFStringTokenizer__8l;
  v35 = a3;
  v38 = a3;
  v5 = _Block_copy(aBlock);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [(__CFString *)self length];
  v7 = CFLocaleCopyCurrent();
  v40.location = 0;
  v31 = v6;
  v40.length = v6;
  v8 = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], self, v40, 4uLL, v7);
  CFRelease(v7);
  v9 = CFStringTokenizerGoToTokenAtIndex(v8, 0);
  LODWORD(v10) = v9;
  if (!v9)
  {
    v5[2](v5, v8);
  }

  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v8);
  if (CurrentTokenRange.location != -1)
  {
    location = CurrentTokenRange.location;
    length = CurrentTokenRange.length;
    v14 = 0;
    v15 = CurrentTokenRange.length;
    selfCopy = self;
    do
    {
      if (location >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = location;
      }

      v32 = v16;
      v33 = length;
      v17 = (v5[2])(v5, v8);
      v18 = CFStringTokenizerGetCurrentTokenRange(v8);
      v19 = v18.location;
      length = v18.length;
      if (v35)
      {
        while (1)
        {
          v20 = v10;
          v10 = v17;
          if (((v20 | v17) & 0x20) != 0)
          {
            if ((v17 & 0x10) == 0)
            {
              goto LABEL_20;
            }
          }

          else if ((v17 & 0x10) != 0 && length == 1)
          {
            if ([whitespaceAndNewlineCharacterSet characterIsMember:{-[__CFString characterAtIndex:](self, "characterAtIndex:", v19)}])
            {
              v28 = 1;
              goto LABEL_21;
            }
          }

          else if (!v17 || (v17 & 0x10) != 0)
          {
            goto LABEL_20;
          }

          v17 = (v5[2])(v5, v8);
          v21 = CFStringTokenizerGetCurrentTokenRange(v8);
          v19 = v21.location;
          length = v21.length;
        }
      }

      v10 = v17;
LABEL_20:
      v28 = length;
LABEL_21:
      v22 = location + v15;
      if (location + v15 <= v31)
      {
        v22 = v31;
      }

      if (v19 > v31 || v10 == 0)
      {
        v14 = v22;
      }

      else
      {
        v14 = v19;
      }

      if (v35)
      {
        v24 = v32;
      }

      else
      {
        v24 = location;
      }

      if (v35)
      {
        v25 = v14 - v32;
      }

      else
      {
        v25 = v33;
      }

      v26 = [(__CFString *)selfCopy substringWithRange:v24, v25, v30];
      v27 = [v26 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      if ([v27 length])
      {
        [v30 addObject:v27];
      }

      location = v19;
      v15 = v28;
      self = selfCopy;
    }

    while (v19 != -1);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v30;
}

- (uint64_t)tsu_stringWithoutAttachmentCharacters
{
  if (tsu_stringWithoutAttachmentCharacters_onceToken != -1)
  {
    [NSString(TSUAdditions) tsu_stringWithoutAttachmentCharacters];
  }

  v2 = tsu_stringWithoutAttachmentCharacters_sAttachmentCharacter;

  return [self stringByReplacingOccurrencesOfString:v2 withString:&stru_286EE1130];
}

- (id)tsu_middleTruncateToLength:()TSUAdditions
{
  selfCopy = self;
  if ([selfCopy length] <= a3)
  {
    v5 = selfCopy;
  }

  else
  {
    v5 = [selfCopy mutableCopy];
    do
    {
      [v5 replaceCharactersInRange:(objc_msgSend(v5 withString:{"length") >> 1) - 1, 3, @"…"}];
    }

    while ([v5 length] > a3);
  }

  return v5;
}

- (uint64_t)tsu_isEqualToString:()TSUAdditions
{
  if (a3)
  {
    return [self isEqualToString:?];
  }

  else
  {
    return 0;
  }
}

- (id)tsu_stringWithNormalizedHyphensAndQuotationMarks
{
  tsu_stringWithNormalizedHyphens = [self tsu_stringWithNormalizedHyphens];
  tsu_stringWithNormalizedQuotationMarks = [tsu_stringWithNormalizedHyphens tsu_stringWithNormalizedQuotationMarks];

  return tsu_stringWithNormalizedQuotationMarks;
}

- (uint64_t)tsu_stringWithNormalizedHyphens
{
  if (tsu_stringWithNormalizedHyphens_onceToken != -1)
  {
    [NSString(TSUAdditions) tsu_stringWithNormalizedHyphens];
  }

  v2 = tsu_stringWithNormalizedHyphens_hyphenSet;

  return [self tsu_stringByReplacingInstancesOfCharactersInSet:v2 withString:@"-"];
}

- (uint64_t)tsu_stringWithNormalizedQuotationMarks
{
  if (tsu_stringWithNormalizedQuotationMarks_onceToken != -1)
  {
    [NSString(TSUAdditions) tsu_stringWithNormalizedQuotationMarks];
  }

  v2 = tsu_stringWithNormalizedQuotationMarks_quotationSet;

  return [self tsu_stringByReplacingInstancesOfCharactersInSet:v2 withString:@"'"];
}

@end