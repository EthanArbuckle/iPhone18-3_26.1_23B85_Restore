@interface NSString(EmailFoundationAdditions)
+ (__CFString)ef_emptyStringIfNil:()EmailFoundationAdditions;
+ (id)ef_UUID;
+ (id)ef_stringByIsolatingDirectionalityForString:()EmailFoundationAdditions;
- (_BYTE)ef_sqliteAllocatedStringWithHexFromUTF8;
- (__CFString)ef_stringByTrimmingTrailingCharactersInSet:()EmailFoundationAdditions;
- (id)_ef_sqliteFormattedWithFormatSpecifier:()EmailFoundationAdditions;
- (id)ef_UTF8ConvertibleString;
- (id)ef_componentsSeparatedByString:()EmailFoundationAdditions maxSeparations:;
- (id)ef_declaredUTTypeFromExtension;
- (id)ef_md5Digest;
- (id)ef_pathByReplacingRelativePathWithFolderName:()EmailFoundationAdditions;
- (id)ef_quotedWordComponentsForLanguages:()EmailFoundationAdditions;
- (id)ef_sanitizedFileName;
- (id)ef_sha256Digest;
- (id)ef_sha256String;
- (id)ef_stringByAddingPercentEscapesUsingEncoding:()EmailFoundationAdditions;
- (id)ef_stringByApplyingJavaScriptArguments:()EmailFoundationAdditions;
- (id)ef_stringByEscapingForMessageBody;
- (id)ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater:()EmailFoundationAdditions;
- (id)ef_stringByRFC5322Unfolding;
- (id)ef_stringByRemovingCharactersInSet:()EmailFoundationAdditions;
- (id)ef_stringByRemovingCharactersInSet:()EmailFoundationAdditions beforeOccurrencesOfString:;
- (id)ef_stringByRemovingQuotedSubstringsForLocales:()EmailFoundationAdditions tokenizationHandler:;
- (id)ef_stringByRemovingQuotesForLanguages:()EmailFoundationAdditions;
- (id)ef_stringByRemovingTokenizedLinksUsingTokenizationHandler:()EmailFoundationAdditions;
- (id)ef_stringByRemovingUnbalancedOpenQuote:()EmailFoundationAdditions closeQuote:;
- (id)ef_stringByRemovingUnbalancedQuotesForLanguages:()EmailFoundationAdditions;
- (id)ef_stringByRemovingWhitespaceAndUnbalancedQuotesForLanguages:()EmailFoundationAdditions;
- (id)ef_stringByReplacingContiguousSequencesOfCharactersInSet:()EmailFoundationAdditions withString:;
- (id)ef_stringByReplacingPercentEscapesUsingEncoding:()EmailFoundationAdditions;
- (id)ef_stringByTrimmingLeadingCharactersInSet:()EmailFoundationAdditions;
- (id)ef_stringByTrimmingOuterQuotes;
- (id)ef_stringByTrimmingWhitespaceAndDuplicateSpaces;
- (id)ef_stringByTrimmingWhitespaceAndNewlineCharacters;
- (id)ef_stringWithNoExtraSpaces;
- (id)ef_substringWithIndexes:()EmailFoundationAdditions;
- (id)ef_wordComponentsForLocale:()EmailFoundationAdditions;
- (id)ef_wordComponentsForLocale:()EmailFoundationAdditions minimumWordLength:;
- (id)ef_wordComponentsForLocale:()EmailFoundationAdditions minimumWordLength:componentLimit:remainingString:;
- (uint64_t)_lengthOfPrefixOfCharactersFromSet:()EmailFoundationAdditions range:;
- (uint64_t)_lengthOfSuffixOfCharactersFromSet:()EmailFoundationAdditions range:;
- (uint64_t)ef_conformsToMarkupUTType;
- (uint64_t)ef_conformsToRFC822UTType;
- (uint64_t)ef_firstStrongDirectionalityIsLeftToRight;
- (uint64_t)ef_isUnsignedIntegerString;
- (uint64_t)ef_isWebAddress;
- (uint64_t)ef_lastStrongDirectionalityIsLeftToRight;
- (uint64_t)ef_lossyDefaultCStringBytes;
- (uint64_t)ef_rangeOfCharactersFromSet:()EmailFoundationAdditions options:;
- (uint64_t)ef_rangeOfCharactersFromSet:()EmailFoundationAdditions options:range:;
- (uint64_t)ef_rangeOfWebAddressContainingRange:()EmailFoundationAdditions;
- (void)ef_filenameWithExtensionForMimeType:()EmailFoundationAdditions;
@end

@implementation NSString(EmailFoundationAdditions)

- (id)ef_stringByTrimmingWhitespaceAndNewlineCharacters
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

- (id)ef_sanitizedFileName
{
  if (ef_sanitizedFileName_onceToken != -1)
  {
    [NSString(EmailFoundationAdditions) ef_sanitizedFileName];
  }

  v2 = [a1 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
  v3 = [v2 ef_stringByReplacingContiguousSequencesOfCharactersInSet:ef_sanitizedFileName_shouldBeWhitespaceCharacterSet withString:@" "];

  return v3;
}

- (id)ef_md5Digest
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [v1 ef_md5Digest];

  return v2;
}

+ (id)ef_UUID
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];

  return v1;
}

- (id)ef_sha256Digest
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [v1 ef_sha256Digest];

  return v2;
}

- (id)ef_sha256String
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [a1 UTF8String];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *md = v2;
  v10 = v2;
  v3 = strlen(v1);
  CC_SHA256(v1, v3, md);
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithString:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)ef_firstStrongDirectionalityIsLeftToRight
{
  v2 = [(__CFString *)a1 length];
  theString = a1;
  v27 = 0;
  v28 = v2;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v25 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v29 = 0;
  v30 = 0;
  v26 = CStringPtr;
  if (v2 >= 1)
  {
    v5 = 0;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[6] = v6;
    v23[7] = v6;
    v23[4] = v6;
    v23[5] = v6;
    v23[2] = v6;
    v23[3] = v6;
    v23[0] = v6;
    v23[1] = v6;
    do
    {
      if (v5 < 0 || (v7 = v28, v28 <= v5))
      {
        v9 = 0;
      }

      else
      {
        if (v25)
        {
          v8 = v25[v27 + v5];
        }

        else if (v26)
        {
          v8 = v26[v27 + v5];
        }

        else
        {
          if (v30 <= v5 || (v14 = v29, v29 > v5))
          {
            v15 = v5 - 4;
            if (v5 < 4)
            {
              v15 = 0;
            }

            if (v15 + 64 < v28)
            {
              v7 = v15 + 64;
            }

            v29 = v15;
            v30 = v7;
            v31.length = v7 - v15;
            v31.location = v27 + v15;
            CFStringGetCharacters(theString, v31, v23);
            v14 = v29;
          }

          v8 = *(v23 + v5 - v14);
        }

        v9 = v8;
        if (v8 >> 10 == 54 && v5 < v2 - 1)
        {
          v17 = v5 + 1;
          v18 = v28;
          if (v28 <= v5 + 1)
          {
            goto LABEL_50;
          }

          if (v25)
          {
            v19 = v25[v27 + v17];
          }

          else if (v26)
          {
            v19 = v26[v27 + v17];
          }

          else
          {
            if (v30 <= v17 || (v20 = v29, v29 > v17))
            {
              v21 = v5 - 3;
              if (v5 < 3)
              {
                v21 = 0;
              }

              if (v21 + 64 < v28)
              {
                v18 = v21 + 64;
              }

              v29 = v21;
              v30 = v18;
              v32.length = v18 - v21;
              v32.location = v27 + v21;
              CFStringGetCharacters(theString, v32, v23);
              v20 = v29;
            }

            v19 = *(v23 + v17 - v20);
          }

          if (v19 >> 10 != 55)
          {
LABEL_50:
            ++v5;
            goto LABEL_18;
          }

          v9 = (v9 << 10) + v19 + 9216;
          ++v5;
        }
      }

      v10 = 1;
      UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane();
      if (!UnicodePropertyDataForPlane)
      {
        return v10;
      }

      v12 = *(UnicodePropertyDataForPlane + HIBYTE(v9));
      if (v12 >= 0x13)
      {
        v12 = *(UnicodePropertyDataForPlane + (v12 << 8) - 4864 + v9 + 256);
      }

      if (v12 == 1)
      {
        return v10;
      }

      if (v12 == 2 || v12 == 5)
      {
        return 0;
      }

LABEL_18:
      ++v5;
    }

    while (v5 < v2);
  }

  return 1;
}

- (uint64_t)ef_lastStrongDirectionalityIsLeftToRight
{
  v2 = [(__CFString *)a1 length];
  theString = a1;
  v26 = 0;
  v27 = v2;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v24 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v28 = 0;
  v29 = 0;
  v25 = CStringPtr;
  if (v2 >= 1)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[6] = v5;
    v22[7] = v5;
    v22[4] = v5;
    v22[5] = v5;
    v22[2] = v5;
    v22[3] = v5;
    v22[0] = v5;
    v22[1] = v5;
    do
    {
      v6 = v2 - 1;
      v7 = v27;
      if (v27 >= v2)
      {
        if (v24)
        {
          v13 = v24[v26 + v6];
        }

        else if (v25)
        {
          v13 = v25[v26 + v6];
        }

        else
        {
          v14 = v28;
          if (v29 < v2 || v28 >= v2)
          {
            v16 = v2 - 5;
            if (v2 < 5)
            {
              v16 = 0;
            }

            if (v16 + 64 < v27)
            {
              v7 = v16 + 64;
            }

            v28 = v16;
            v29 = v7;
            v30.length = v7 - v16;
            v30.location = v26 + v16;
            CFStringGetCharacters(theString, v30, v22);
            v14 = v28;
          }

          v13 = *(v22 + v6 - v14);
        }

        v8 = v13;
        if (v2 != 1 && (v13 & 0xFC00) == 0xDC00)
        {
          v6 = v2 - 2;
          v17 = v27;
          if (v27 <= v2 - 2)
          {
            goto LABEL_15;
          }

          if (v24)
          {
            v18 = v24[v26 + v6];
          }

          else if (v25)
          {
            v18 = v25[v26 + v6];
          }

          else
          {
            if (v29 <= v6 || (v19 = v28, v28 > v6))
            {
              v20 = v2 - 6;
              if (v6 < 4)
              {
                v20 = 0;
              }

              if (v20 + 64 < v27)
              {
                v17 = v20 + 64;
              }

              v28 = v20;
              v29 = v17;
              v31.length = v17 - v20;
              v31.location = v26 + v20;
              CFStringGetCharacters(theString, v31, v22);
              v19 = v28;
            }

            v18 = *(v22 + v6 - v19);
          }

          if (v18 >> 10 != 54)
          {
            goto LABEL_15;
          }

          v8 += (v18 << 10) + 9216;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = 1;
      UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane();
      if (!UnicodePropertyDataForPlane)
      {
        return v9;
      }

      v11 = *(UnicodePropertyDataForPlane + HIBYTE(v8));
      if (v11 >= 0x13)
      {
        v11 = *(UnicodePropertyDataForPlane + (v11 << 8) - 4864 + v8 + 256);
      }

      if (v11 == 1)
      {
        return v9;
      }

      if (v11 == 2 || v11 == 5)
      {
        return 0;
      }

LABEL_15:
      v2 = v6;
    }

    while (v6 >= 1);
  }

  return 1;
}

- (id)_ef_sqliteFormattedWithFormatSpecifier:()EmailFoundationAdditions
{
  v3 = sqlite3_mprintf(a3, [a1 UTF8String]);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v3 length:strlen(v3) encoding:4 deallocator:&__block_literal_global_22];

  return v4;
}

- (_BYTE)ef_sqliteAllocatedStringWithHexFromUTF8
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 lengthOfBytesUsingEncoding:4];
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v5 = [a1 dataUsingEncoding:4 allowLossyConversion:1];
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    v3 = [v4 lengthOfBytesUsingEncoding:4];
  }

  v6 = sqlite3_malloc64((2 * v3) | 1);
  v7 = [v4 length];
  v15 = 0;
  v16 = v7;
  v8 = v6;
  if (v7)
  {
    v9 = v6;
    do
    {
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[14] = v10;
      v17[15] = v10;
      v17[12] = v10;
      v17[13] = v10;
      v17[10] = v10;
      v17[11] = v10;
      v17[8] = v10;
      v17[9] = v10;
      v17[7] = v10;
      v17[5] = v10;
      v17[6] = v10;
      v17[3] = v10;
      v17[4] = v10;
      v17[1] = v10;
      v17[2] = v10;
      v17[0] = v10;
      v14 = 0;
      [v4 getBytes:v17 maxLength:256 usedLength:&v14 encoding:4 options:0 range:v15 remainingRange:{v7, &v15}];
      if (v14)
      {
        for (i = 0; i < v14; ++i)
        {
          *v9 = a0123456789abcd[*(v17 + i) >> 4];
          v8 = v9 + 2;
          v9[1] = a0123456789abcd[*(v17 + i) & 0xF];
          v9 += 2;
        }
      }

      else
      {
        v8 = v9;
      }

      v7 = v16;
      v9 = v8;
    }

    while (v16);
  }

  *v8 = 0;

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)ef_stringByRemovingQuotedSubstringsForLocales:()EmailFoundationAdditions tokenizationHandler:
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AE70] ef_regularExpressionForQuotedStringsInLocales:a3];
  v8 = [v7 ef_stringByRemovingTokensFromString:a1 matchingOptions:0 tokenizationOptions:3 tokenizationHandler:v6];

  return v8;
}

- (id)ef_stringByRemovingUnbalancedOpenQuote:()EmailFoundationAdditions closeQuote:
{
  v6 = a3;
  v36 = a4;
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = [a1 length];
  v7 = 0;
  v33 = [v6 isEqualToString:v36];
  v8 = v33 ^ 1;
  v9 = 1;
  v10 = v34;
  do
  {
    while (1)
    {
      if (v9)
      {
        v11 = [a1 rangeOfString:v6 options:0 range:{v7, v10}];
        v13 = v12;
        if ((v8 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = 0;
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v8 & 1) == 0)
        {
LABEL_4:
          v14 = 0;
          v15 = 0x7FFFFFFFFFFFFFFFLL;
          if (!v13)
          {
            goto LABEL_11;
          }

          goto LABEL_8;
        }
      }

      v15 = [a1 rangeOfString:v36 options:0 range:{v7, v10}];
      v14 = v16;
      if (!v13)
      {
        goto LABEL_11;
      }

LABEL_8:
      if (v14)
      {
        v17 = v36;
        if (v11 <= v15)
        {
          v17 = v6;
          v14 = v13;
          v15 = v11;
        }

        goto LABEL_14;
      }

LABEL_11:
      if (v13)
      {
        v8 = 0;
        v17 = v6;
        v15 = v11;
        v14 = v13;
        goto LABEL_14;
      }

      v9 = 0;
      v17 = v36;
      if (!v14)
      {
        break;
      }

LABEL_14:
      v18 = v17;
      if (v18)
      {
        v19 = v18;
        if ([v18 isEqualToString:v6])
        {
          v20 = [MEMORY[0x1E696B098] valueWithRange:{v15, v14}];
          v21 = [EFPair pairWithFirst:v20 second:v19];
          [v35 addObject:v21];
        }

        else
        {
          v22 = [v35 lastObject];
          v20 = v22;
          if (v22)
          {
            v23 = [v22 second];
            v24 = [v23 isEqualToString:v6];

            if (v24)
            {
              [v35 removeLastObject];
LABEL_22:

              v7 = v15 + v14;
              v10 = v34 - (v15 + v14);

              goto LABEL_23;
            }
          }

          v21 = [MEMORY[0x1E696B098] valueWithRange:{v15, v14}];
          v25 = [EFPair pairWithFirst:v21 second:v19];
          [v35 addObject:v25];
        }

        goto LABEL_22;
      }

LABEL_23:
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v8 = 0;
LABEL_24:
    ;
  }

  while ((v8 & 1) != 0);
  v26 = [v35 count];
  if (v26)
  {
    if (v33)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_30;
      }

      v28 = MEMORY[0x1E695DF70];
      v29 = [v35 lastObject];
      v30 = [v28 arrayWithObject:v29];

      v35 = v30;
    }

    v31 = [a1 mutableCopy];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __88__NSString_EmailFoundationAdditions__ef_stringByRemovingUnbalancedOpenQuote_closeQuote___block_invoke;
    v37[3] = &unk_1E82493F8;
    v27 = v31;
    v38 = v27;
    [v35 enumerateObjectsWithOptions:2 usingBlock:v37];
  }

  else
  {
LABEL_30:
    v27 = a1;
  }

  return v27;
}

- (id)ef_stringByRemovingUnbalancedQuotesForLanguages:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1;
  [MEMORY[0x1E695DF58] ef_quotePairsForLanguages:a3];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v8);
        v11 = [v10 first];
        v12 = [v10 second];
        v4 = [v9 ef_stringByRemovingUnbalancedOpenQuote:v11 closeQuote:v12];

        ++v8;
        v9 = v4;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)ef_stringByRemovingTokenizedLinksUsingTokenizationHandler:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:32 error:0];
  v6 = [v5 ef_stringByRemovingTokensFromString:a1 matchingOptions:16 tokenizationOptions:2 tokenizationHandler:v4];

  return v6;
}

- (id)ef_stringByRemovingQuotesForLanguages:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1;
  [MEMORY[0x1E695DF58] ef_quotePairsForLanguages:a3];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 first];
        v11 = [v4 stringByReplacingOccurrencesOfString:v10 withString:&stru_1F459BF68];

        v12 = [v9 second];
        v4 = [v11 stringByReplacingOccurrencesOfString:v12 withString:&stru_1F459BF68];
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)ef_stringByTrimmingOuterQuotes
{
  v1 = a1;
  if ([v1 length] >= 2)
  {
    if ((v2 = [v1 characterAtIndex:0], v3 = objc_msgSend(v1, "characterAtIndex:", objc_msgSend(v1, "length") - 1), v2 == 39) && v3 == 39 || v2 == 34 && v3 == 34)
    {
      v4 = [v1 substringWithRange:{1, objc_msgSend(v1, "length") - 2}];

      v1 = v4;
    }
  }

  return v1;
}

- (id)ef_stringByRemovingCharactersInSet:()EmailFoundationAdditions
{
  v1 = [a1 componentsSeparatedByCharactersInSet:?];
  v2 = [v1 componentsJoinedByString:&stru_1F459BF68];

  return v2;
}

- (id)ef_stringByRemovingCharactersInSet:()EmailFoundationAdditions beforeOccurrencesOfString:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 mutableCopy];
  [v8 ef_removeCharactersInSet:v6 beforeOccurrencesOfString:v7];

  return v8;
}

- (id)ef_stringByReplacingContiguousSequencesOfCharactersInSet:()EmailFoundationAdditions withString:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 mutableCopy];
  [v8 ef_replaceContiguousSequencesOfCharactersInSet:v6 withString:v7];

  return v8;
}

- (id)ef_stringByTrimmingLeadingCharactersInSet:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 ef_trimLeadingCharactersInSet:v4];

  return v5;
}

- (__CFString)ef_stringByTrimmingTrailingCharactersInSet:()EmailFoundationAdditions
{
  v4 = [a3 invertedSet];
  v5 = [a1 rangeOfCharacterFromSet:v4 options:4];
  v7 = v6;

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &stru_1F459BF68;
  }

  else if (v5 + v7 == [a1 length])
  {
    v8 = [a1 copy];
  }

  else
  {
    v8 = [a1 substringToIndex:v5 + v7];
  }

  return v8;
}

- (id)ef_stringByRFC5322Unfolding
{
  v1 = [a1 mutableCopy];
  [v1 ef_rfc5322Unfold];

  return v1;
}

- (id)ef_componentsSeparatedByString:()EmailFoundationAdditions maxSeparations:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    v7 = [a1 componentsSeparatedByString:v6];
    if ([v7 count] <= (a4 + 1))
    {
      v9 = v7;
    }

    else
    {
      v8 = [v7 subarrayWithRange:{0, a4}];
      v9 = [v8 mutableCopy];

      v10 = [v7 subarrayWithRange:{a4, objc_msgSend(v7, "count") - 1}];
      v11 = [v10 componentsJoinedByString:v6];

      [v9 addObject:v11];
    }
  }

  else
  {
    v14[0] = a1;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)ef_wordComponentsForLocale:()EmailFoundationAdditions
{
  v3 = [a1 ef_wordComponentsForLocale:a3 minimumWordLength:0];

  return v3;
}

- (id)ef_wordComponentsForLocale:()EmailFoundationAdditions minimumWordLength:
{
  v4 = [a1 ef_wordComponentsForLocale:a3 minimumWordLength:a4 componentLimit:-1 remainingString:0];

  return v4;
}

- (id)ef_wordComponentsForLocale:()EmailFoundationAdditions minimumWordLength:componentLimit:remainingString:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v28.length = CFStringGetLength(a1);
  v28.location = 0;
  v11 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], a1, v28, 4uLL, v10);
  if (v11)
  {
    v25 = v10;
    v12 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (CFStringTokenizerAdvanceToNextToken(v11) && [v13 count] < a5)
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v11);
      if (CurrentTokenRange.length >= a4)
      {
        v15 = [(__CFString *)a1 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
        v16 = [v15 stringByTrimmingCharactersInSet:v12];
        v17 = [v16 length];

        if (v17)
        {
          [v13 addObject:v15];
        }
      }
    }

    if (a6)
    {
      location = CFStringTokenizerGetCurrentTokenRange(v11).location;
      if (location != -1)
      {
        v19 = [(__CFString *)a1 substringFromIndex:location];
        v20 = [v19 ef_stringByTrimmingLeadingCharactersInSet:v12];

        if ([v20 length])
        {
          v21 = v20;
LABEL_18:
          CFRelease(v11);
          if (a6)
          {
            v22 = v21;
            *a6 = v21;
          }

          v10 = v25;
          goto LABEL_21;
        }
      }
    }

    v21 = 0;
    goto LABEL_18;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v26[0] = a1;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
LABEL_21:

  v23 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)ef_quotedWordComponentsForLanguages:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF58] ef_localesFromLanguages:v4];
  v6 = [MEMORY[0x1E696AE70] ef_regularExpressionForQuotedStringsInLocales:v5];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__NSString_EmailFoundationAdditions__ef_quotedWordComponentsForLanguages___block_invoke;
  v14[3] = &unk_1E8249420;
  v8 = v4;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = v5;
  v17 = v10;
  [v6 ef_enumerateTokensInString:a1 options:0 usingBlock:v14];
  v11 = v17;
  v12 = v9;

  return v9;
}

- (id)ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater:()EmailFoundationAdditions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = [a1 mutableCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__NSString_EmailFoundationAdditions__ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater___block_invoke;
  aBlock[3] = &unk_1E8249448;
  aBlock[4] = &v9;
  v4 = _Block_copy(aBlock);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", a3];
  v4[2](v4, v5, a3);

  v4[2](v4, @"%", a3);
  v4[2](v4, @"_", a3);
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)ef_substringWithIndexes:()EmailFoundationAdditions
{
  v4 = a3;
  if ([v4 rangeCount] == 1)
  {
    v5 = [v4 rangeAtIndex:0];
    v7 = [a1 substringWithRange:{v5, v6}];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__NSString_EmailFoundationAdditions__ef_substringWithIndexes___block_invoke;
    v11[3] = &unk_1E8249470;
    v9 = v8;
    v12 = v9;
    v13 = a1;
    [v4 enumerateRangesUsingBlock:v11];
    v7 = v9;
  }

  return v7;
}

+ (id)ef_stringByIsolatingDirectionalityForString:()EmailFoundationAdditions
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"⁨%@⁩", a3];

  return v3;
}

+ (__CFString)ef_emptyStringIfNil:()EmailFoundationAdditions
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return &stru_1F459BF68;
  }
}

- (id)ef_stringWithNoExtraSpaces
{
  v1 = 0;
  v2 = [a1 mutableCopy];
  while (v1 < [v2 length])
  {
    v3 = [v2 characterAtIndex:v1++];
    if (v3 == 32)
    {
      while (v1 < [v2 length] && objc_msgSend(v2, "characterAtIndex:", v1) == 32)
      {
        [v2 deleteCharactersInRange:{v1, 1}];
      }
    }
  }

  if ([v2 length] && objc_msgSend(v2, "characterAtIndex:", 0) == 32)
  {
    [v2 deleteCharactersInRange:{0, 1}];
  }

  v4 = [v2 length];
  if (v4)
  {
    v5 = v4 - 1;
    if ([v2 characterAtIndex:v4 - 1] == 32)
    {
      [v2 deleteCharactersInRange:{v5, 1}];
    }
  }

  return v2;
}

- (id)ef_stringByAddingPercentEscapesUsingEncoding:()EmailFoundationAdditions
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"&" withString:@"%26" options:2 range:{0, objc_msgSend(v1, "length")}];

  v3 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
  v4 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  return v4;
}

- (id)ef_stringByReplacingPercentEscapesUsingEncoding:()EmailFoundationAdditions
{
  v1 = a1;
  v2 = [v1 stringByRemovingPercentEncoding];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"%26" withString:@"&" options:2 range:{0, objc_msgSend(v2, "length")}];

  return v3;
}

- (id)ef_stringByApplyingJavaScriptArguments:()EmailFoundationAdditions
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"EFNSStringAdditions.m" lineNumber:559 description:@"Arguments is not a valid array."];
  }

  v6 = &stru_1F459BF68;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v5])
  {
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:0];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
    v9 = [v8 substringToIndex:1];
    if ([v9 isEqualToString:@"["])
    {
      v10 = [v8 substringFromIndex:{objc_msgSend(v8, "length") - 1}];
      v11 = [v10 isEqualToString:@"]"];

      if (v11)
      {
LABEL_7:
        v13 = [v8 substringWithRange:{1, objc_msgSend(v8, "length") - 2}];

        v6 = v13;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"EFNSStringAdditions.m" lineNumber:566 description:@"Unexpected characters in sanitized string."];

    goto LABEL_7;
  }

LABEL_8:
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", a1, v6];;

  return v14;
}

- (uint64_t)ef_lossyDefaultCStringBytes
{
  v2 = [a1 _fastCStringContents:1];
  if (!v2)
  {
    v3 = [a1 length];
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    if ([a1 getBytes:0 maxLength:0x7FFFFFFFFFFFFFFELL usedLength:&v9 encoding:1 options:1 range:0 remainingRange:{v3, 0}])
    {
      v4 = [MEMORY[0x1E695DF88] dataWithLength:v9 + 1];
      v2 = [v4 mutableBytes];
      if (v2 && ([a1 getBytes:v2 maxLength:v9 usedLength:&v8 encoding:1 options:1 range:0 remainingRange:{v3, 0}] & 1) != 0)
      {
        v5 = v8;
        v6 = v9;

        if (v5 == v6)
        {
          *(v2 + v9) = 0;
        }
      }

      else
      {
      }
    }
  }

  return v2;
}

- (uint64_t)ef_isWebAddress
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:32 error:0];
  v3 = [a1 length];
  v4 = [v2 firstMatchInString:a1 options:1 range:{0, v3}];
  if ([v4 range])
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 == v5;
  }

  if (v6)
  {
    v8 = [v4 URL];
    v7 = [v8 ef_isEligibleForRichLink];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)ef_rangeOfWebAddressContainingRange:()EmailFoundationAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a1 length])
  {
    v7 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:32 error:0];
    [v7 matchesInString:a1 options:1 range:{0, objc_msgSend(a1, "length")}];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v8 = v19 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v24.location = [v12 range];
          v25.location = a3;
          v25.length = a4;
          if (NSIntersectionRange(v24, v25).length == a4)
          {
            v13 = [v12 URL];
            v14 = [v13 ef_isEligibleForRichLink];

            if (v14)
            {
              v15 = [v12 range];
              goto LABEL_14;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (uint64_t)ef_isUnsignedIntegerString
{
  result = [a1 length];
  if (result)
  {
    if (ef_isUnsignedIntegerString_onceToken != -1)
    {
      [NSString(EmailFoundationAdditions) ef_isUnsignedIntegerString];
    }

    return [a1 rangeOfCharacterFromSet:ef_isUnsignedIntegerString_nonDigitCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)ef_stringByEscapingForMessageBody
{
  v1 = [(NSString *)a1 _escapeForXML];
  [v1 replaceOccurrencesOfString:@"\r\n" withString:@"<BR>" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"\n" withString:@"<BR>" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"\r" withString:@"<BR>" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

- (uint64_t)ef_conformsToMarkupUTType
{
  v1 = [MEMORY[0x1E6982C40] typeWithIdentifier:a1];
  if ([v1 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 conformsToType:*MEMORY[0x1E6982F10]];
  }

  return v2;
}

- (uint64_t)ef_conformsToRFC822UTType
{
  v1 = [MEMORY[0x1E6982C40] typeWithIdentifier:a1];
  v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.mail.email"];
  if ([v1 conformsToType:*MEMORY[0x1E6982DA8]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v1 conformsToType:v2];
  }

  return v3;
}

- (id)ef_declaredUTTypeFromExtension
{
  v2 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:a1];
  v3 = v2;
  if (!v2 || [v2 isDynamic])
  {
    v4 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:a1 conformingToType:*MEMORY[0x1E6982F30]];

    v3 = v4;
  }

  return v3;
}

- (void)ef_filenameWithExtensionForMimeType:()EmailFoundationAdditions
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(a1, "pathExtension"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, !v6))
  {
    v8 = [MEMORY[0x1E6982C40] typeWithMIMEType:v4];
    v9 = [v8 preferredFilenameExtension];
    if ([v9 length])
    {
      v7 = [a1 stringByAppendingPathExtension:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    a1 = v7;
  }

  v10 = a1;

  return a1;
}

- (id)ef_pathByReplacingRelativePathWithFolderName:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 pathComponents];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__NSString_EmailFoundationAdditions__ef_pathByReplacingRelativePathWithFolderName___block_invoke;
  v10[3] = &unk_1E8249498;
  v6 = v4;
  v11 = v6;
  v7 = [v5 ef_map:v10];

  v8 = [MEMORY[0x1E696AEC0] pathWithComponents:v7];

  return v8;
}

- (id)ef_UTF8ConvertibleString
{
  if ([a1 UTF8String])
  {
    v2 = a1;
  }

  else
  {
    v2 = _EFRepairString(a1);
  }

  return v2;
}

- (id)ef_stringByTrimmingWhitespaceAndDuplicateSpaces
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 ef_filter:&__block_literal_global_145];

  v5 = [v4 componentsJoinedByString:@" "];

  return v5;
}

- (id)ef_stringByRemovingWhitespaceAndUnbalancedQuotesForLanguages:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 ef_stringByTrimmingWhitespaceAndNewlineCharacters];
  v6 = [v5 ef_stringByRemovingUnbalancedQuotesForLanguages:v4];

  return v6;
}

- (uint64_t)ef_rangeOfCharactersFromSet:()EmailFoundationAdditions options:
{
  v6 = a3;
  v7 = [a1 ef_rangeOfCharactersFromSet:v6 options:a4 range:{0, objc_msgSend(a1, "length")}];

  return v7;
}

- (uint64_t)ef_rangeOfCharactersFromSet:()EmailFoundationAdditions options:range:
{
  v10 = a3;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (a5 != 0x7FFFFFFFFFFFFFFFLL && a6)
  {
    if ((a4 & 4) != 0)
    {
      if ((a4 & 8) != 0)
      {
        v14 = [a1 _lengthOfSuffixOfCharactersFromSet:v10 range:{a5, a6}];
        if (v14)
        {
          v11 = a5 + a6 - v14;
        }

        else
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        for (i = a5 + a6; ; --i)
        {
          if (i <= a5)
          {
LABEL_9:
            v11 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_23;
          }

          v13 = [a1 _lengthOfSuffixOfCharactersFromSet:v10 range:{a5, a6}];
          if (v13)
          {
            break;
          }

          --a6;
        }

        v11 = i - v13;
      }
    }

    else if ((a4 & 8) != 0)
    {
      if ([a1 _lengthOfPrefixOfCharactersFromSet:v10 range:{a5, a6}])
      {
        v11 = a5;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else if (a5 < a5 + a6)
    {
      v11 = a5;
      while (![a1 _lengthOfPrefixOfCharactersFromSet:v10 range:{v11, a6}])
      {
        ++v11;
        if (!--a6)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_23:

  return v11;
}

- (uint64_t)_lengthOfPrefixOfCharactersFromSet:()EmailFoundationAdditions range:
{
  v8 = a3;
  if (a4 < a4 + a5)
  {
    v9 = 0;
    while (([v8 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", a4 + v9)}] & 1) != 0)
    {
      if (a5 == ++v9)
      {
        goto LABEL_7;
      }
    }

    a5 = v9;
  }

LABEL_7:

  return a5;
}

- (uint64_t)_lengthOfSuffixOfCharactersFromSet:()EmailFoundationAdditions range:
{
  v8 = a3;
  v9 = a4 + a5;
  v10 = -1;
  while (v9 > a4)
  {
    --v9;
    ++v10;
    if (([v8 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v9)}] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v10 = a5;
LABEL_6:

  return v10;
}

@end