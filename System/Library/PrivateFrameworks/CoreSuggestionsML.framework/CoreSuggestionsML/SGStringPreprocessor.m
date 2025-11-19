@interface SGStringPreprocessor
- (SGStringPreprocessor)init;
- (id)characterSetFromString:(id)a3;
- (unsigned)bufferPtrWithMinimumLength:(unint64_t)a3;
- (void)combineDakutenAndHandakuten:(id)a3;
- (void)finalizeForWordPieceCaseInsensitive:(id)a3;
- (void)finalizeForWordPieceCaseSensitive:(id)a3;
- (void)mergeAnyConsecutiveCharacters:(id)a3;
- (void)mergeAnyConsecutiveNonalphabeticCharactersWithExceptions:(id)a3 withValue:(id)a4;
- (void)mergeNumbersSeparatedByASCIISpace:(id)a3;
- (void)mergeTwoOrMoreConsecutiveCharacters:(id)a3;
- (void)removeCharacters:(id)a3 withExceptions:(id)a4 fromString:(id)a5;
- (void)removeCharacters:(id)a3 withValue:(id)a4;
- (void)removeDuplicateWhitespace:(id)a3;
- (void)removeEmojiModifyingCharactersWithExceptions:(id)a3 withValue:(id)a4;
- (void)removeEmojisWithExceptions:(id)a3 withValue:(id)a4;
- (void)removeNonASCII:(id)a3;
- (void)removeNonBaseCharacters:(id)a3;
- (void)removeNonBasicMultilingualPlane:(id)a3;
- (void)removeNonEmojiSymbolsWithExceptions:(id)a3 withValue:(id)a4;
- (void)removePunctuation:(id)a3;
- (void)removePunctuationWithExceptions:(id)a3 withValue:(id)a4;
- (void)removeSpacingModifierLetters:(id)a3;
- (void)removeSymbols:(id)a3;
- (void)removeSymbolsWithExceptions:(id)a3 withValue:(id)a4;
- (void)replace:(id)a3 withBuffer:(unsigned __int16 *)a4 toIndex:(unint64_t)a5;
- (void)replaceAllWhitespaceWithSpaces:(id)a3;
- (void)replaceCharactersWithSpaces:(id)a3 withValue:(id)a4;
- (void)replaceContactNamesWithString:(id)a3 withValue:(id)a4;
- (void)replaceLinksWithString:(id)a3 withValue:(id)a4;
- (void)replaceNumbersWithString:(id)a3 withValue:(id)a4;
- (void)separateCharacter:(id)a3 withValue:(id)a4;
- (void)separateFrenchElisions:(id)a3;
- (void)stripCombiningMarks:(id)a3;
- (void)stripNonBaseCharacters:(id)a3;
- (void)transformFullwidthToHalfwidth:(id)a3;
- (void)transformFullwidthToHalfwidthASCII:(id)a3;
- (void)transformHalfwidthToFullwidthCJK:(id)a3;
@end

@implementation SGStringPreprocessor

- (void)finalizeForWordPieceCaseSensitive:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByFoldingWithOptions:128 locale:0];
  [v3 setString:v4];
}

- (void)finalizeForWordPieceCaseInsensitive:(id)a3
{
  v3 = a3;
  v4 = [(__CFString *)v3 stringByFoldingWithOptions:128 locale:0];
  [(__CFString *)v3 setString:v4];
  CFStringLowercase(v3, 0);
}

- (void)replaceContactNamesWithString:(id)a3 withValue:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 componentsSeparatedByString:@""];;
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v7 objectAtIndexedSubscript:1];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v10 = getSGNameDetectorClass_softClass;
    v25 = getSGNameDetectorClass_softClass;
    if (!getSGNameDetectorClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v27 = __getSGNameDetectorClass_block_invoke;
      v28 = &unk_278EB8500;
      v29 = &v22;
      __getSGNameDetectorClass_block_invoke(&buf);
      v10 = v23[3];
    }

    v11 = v10;
    _Block_object_dispose(&v22, 8);
    v12 = [[v10 alloc] initWithLanguage:v8];
    v13 = [v12 detectNames:v5 algorithm:0];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x2020000000;
    v28 = 0;
    v14 = [v9 length];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__SGStringPreprocessor_replaceContactNamesWithString_withValue___block_invoke;
    v17[3] = &unk_278EB7750;
    p_buf = &buf;
    v18 = v5;
    v15 = v9;
    v19 = v15;
    v21 = v14;
    [v13 enumerateObjectsUsingBlock:v17];

    _Block_object_dispose(&buf, 8);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[SGStringPreprocessingTransformer replaceContactNamesWithString:withValue:] - Incorrect format for value: %@", &buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __64__SGStringPreprocessor_replaceContactNamesWithString_withValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = a2;
  v5 = [v4 range];
  [v4 range];
  [*(a1 + 32) replaceCharactersInRange:v5 + v3 withString:{v6, *(a1 + 40)}];
  v7 = *(a1 + 56);
  [v4 range];
  v9 = v8;

  *(*(*(a1 + 48) + 8) + 24) += v7 - v9;
}

- (void)combineDakutenAndHandakuten:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v5];
  v7 = v4;
  v8 = objc_opt_self();

  if (!v8)
  {
    goto LABEL_52;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *buffer = 0u;
  v35 = 0u;
  Length = CFStringGetLength(v7);
  theString = v7;
  v45 = 0;
  v46 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v7);
  CStringPtr = 0;
  v43 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  }

  v47 = 0;
  v48 = 0;
  v44 = CStringPtr;
  if (Length < 1)
  {
LABEL_52:

    goto LABEL_55;
  }

  v32 = v7;
  v33 = self;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v6 - 1;
  v20 = 64;
  do
  {
    v21 = v17;
    if (v15 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v15;
    }

    if (v46 <= v15)
    {
      v23 = 0;
LABEL_32:
      v17 = v21 + 1;
      v30 = v6;
      v16 = v23;
      goto LABEL_42;
    }

    if (v43)
    {
      v23 = v43[v45 + v15];
    }

    else if (v44)
    {
      v23 = v44[v45 + v15];
    }

    else
    {
      if (v48 <= v15 || v14 > v15)
      {
        v25 = v22 + v12;
        v26 = v20 - v22;
        v27 = v15 - v22;
        v28 = v27 + 64;
        if (v27 + 64 >= v46)
        {
          v28 = v46;
        }

        v47 = v27;
        v48 = v28;
        if (v46 < v26)
        {
          v26 = v46;
        }

        v49.location = v27 + v45;
        v49.length = v26 + v25;
        v29 = v19;
        CFStringGetCharacters(theString, v49, buffer);
        v19 = v29;
        v13 = v47;
      }

      v23 = buffer[v15 - v13];
      v14 = v13;
    }

    if (v23 == 12442)
    {
      if ((v16 - 12399) <= 0xCu)
      {
        v23 = v16 + 2;
        v18 = 1;
        v16 = 12442;
        goto LABEL_41;
      }

      v17 = v21 + 1;
      v18 = 1;
      v16 = 12442;
      v23 = 12444;
      goto LABEL_35;
    }

    if (v23 != 12441)
    {
      goto LABEL_32;
    }

    if (v16 <= 0x30AAu)
    {
      if (v16 > 0x309Cu)
      {
        if (v16 == 12445)
        {
          goto LABEL_38;
        }

        v31 = 12454;
      }

      else
      {
        if (v16 - 12363 < 0x31)
        {
LABEL_38:
          v23 = v16 + 1;
          goto LABEL_39;
        }

        v31 = 12358;
      }

      if (v16 == v31)
      {
        v19[v21] = v16 + 78;
      }

LABEL_51:
      v17 = v21 + 1;
      v18 = 1;
      v16 = 12441;
      v23 = 12443;
LABEL_35:
      v30 = v6;
      goto LABEL_42;
    }

    if (v16 - 12459 < 0x31)
    {
      goto LABEL_38;
    }

    if (v16 - 12527 >= 4)
    {
      if (v16 != 12541)
      {
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v23 = v16 + 8;
LABEL_39:
    v18 = 1;
    v16 = 12441;
LABEL_41:
    v30 = v19;
    v17 = v21;
LABEL_42:
    v30[v21] = v23;
    ++v15;
    --v12;
    ++v20;
  }

  while (Length != v15);

  if (v18)
  {
    [(SGStringPreprocessor *)v33 replace:v32 withBuffer:v6 toIndex:v17];
  }

LABEL_55:
}

- (void)transformHalfwidthToFullwidthCJK:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v5];
  v7 = v4;
  v8 = objc_opt_self();

  if (!v8)
  {
    goto LABEL_36;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  Length = CFStringGetLength(v7);
  theString = v7;
  v39 = 0;
  v40 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v7);
  CStringPtr = 0;
  v37 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  }

  v41 = 0;
  v42 = 0;
  v38 = CStringPtr;
  if (Length < 1)
  {
LABEL_36:

    goto LABEL_39;
  }

  v12 = 0;
  v13 = 0;
LABEL_7:
  v14 = -v12;
  v15 = v12 + 64;
  do
  {
    if (v12 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v12;
    }

    v17 = v40;
    if (v40 <= v12)
    {
      v19 = 0;
      goto LABEL_20;
    }

    if (v37)
    {
      v18 = &v37[v39];
LABEL_14:
      v19 = v18[v12];
      goto LABEL_18;
    }

    if (!v38)
    {
      v20 = v41;
      if (v42 <= v12 || v41 > v12)
      {
        v22 = v16 + v14;
        v23 = v15 - v16;
        v24 = v12 - v16;
        v25 = v24 + 64;
        if (v24 + 64 >= v40)
        {
          v25 = v40;
        }

        v41 = v24;
        v42 = v25;
        if (v40 >= v23)
        {
          v17 = v23;
        }

        v43.location = v24 + v39;
        v43.length = v17 + v22;
        CFStringGetCharacters(theString, v43, &v28);
        v20 = v41;
      }

      v18 = &v28 - v20;
      goto LABEL_14;
    }

    v19 = v38[v39 + v12];
LABEL_18:
    if ((v19 + 159) < 0x3Fu)
    {
      v26 = -65377;
      v27 = @"。「」、・ヲァィゥェォャュョッーアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワン゙゚";
LABEL_34:
      v6[v12++] = [(__CFString *)v27 characterAtIndex:v26 + v19, v28, v29, v30, v31, v32, v33, v34, v35];
      v13 = 1;
      if (v12 != Length)
      {
        goto LABEL_7;
      }

      goto LABEL_38;
    }

    if ((v19 + 96) < 0x3Du)
    {
      v26 = -65440;
      v27 = @"ᅠᄀᄁᆪᄂᆬᆭᄃᄄᄅᆰᆱᆲᆳᆴᆵᄚᄆᄇᄈᄡᄉᄊᄋᄌᄍᄎᄏᄐᄑ하ᅢᅣᅤᅥᅦᅧᅨᅩᅪᅫᅬᅭᅮᅯᅰᅱᅲᅳᅴᅵ";
      goto LABEL_34;
    }

LABEL_20:
    v6[v12++] = v19;
    --v14;
    ++v15;
  }

  while (Length != v12);

  if (v13)
  {
LABEL_38:
    [(SGStringPreprocessor *)self replace:v7 withBuffer:v6 toIndex:Length, v28, v29, v30, v31, v32, v33, v34, v35];
  }

LABEL_39:
}

- (void)transformFullwidthToHalfwidthASCII:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();

  if (v4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buffer = 0u;
    v26 = 0u;
    Length = CFStringGetLength(v3);
    v33 = v3;
    v36 = 0;
    v37 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v34 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v35 = CStringPtr;
    v38 = 0;
    v39 = 0;
    if (Length >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = buffer;
      v11 = 64;
      do
      {
        if (v9 >= 4)
        {
          v12 = 4;
        }

        else
        {
          v12 = v9;
        }

        v13 = v37;
        if (v37 > v9)
        {
          if (v34)
          {
            v14 = &v34[v36 + v9];
LABEL_12:
            v15 = *v14;
            v16 = v15;
            if ((v15 + 255) < 0x5Eu)
            {
              v15 += 288;
            }

            if (v16 == 12288)
            {
              v15 = 32;
            }

            v24 = v15;
            if (v16 != v15)
            {
              v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&v24 length:1 freeWhenDone:0];
              [(__CFString *)v3 replaceCharactersInRange:v9 withString:1, v17];
            }

            goto LABEL_19;
          }

          if (!v35)
          {
            v18 = v38;
            if (v39 <= v9 || v38 > v9)
            {
              v20 = v12 + v8;
              v21 = v11 - v12;
              v22 = v9 - v12;
              v23 = v22 + 64;
              if (v22 + 64 >= v37)
              {
                v23 = v37;
              }

              v38 = v22;
              v39 = v23;
              if (v37 >= v21)
              {
                v13 = v21;
              }

              v40.location = v22 + v36;
              v40.length = v13 + v20;
              CFStringGetCharacters(v33, v40, buffer);
              v18 = v38;
            }

            v14 = &v10[-v18];
            goto LABEL_12;
          }
        }

LABEL_19:
        ++v9;
        --v8;
        ++v11;
        ++v10;
      }

      while (Length != v9);
    }
  }
}

- (void)transformFullwidthToHalfwidth:(id)a3
{
  v3 = a3;
  v4.location = 0;
  v4.length = [(__CFString *)v3 length];
  CFStringTransform(v3, &v4, *MEMORY[0x277CBF0A8], 0);
}

- (void)removeSymbolsWithExceptions:(id)a3 withValue:(id)a4
{
  v6 = MEMORY[0x277CCA900];
  v7 = a4;
  v8 = a3;
  v10 = [v6 symbolCharacterSet];
  v9 = [(SGStringPreprocessor *)self characterSetFromString:v7];

  [(SGStringPreprocessor *)self removeCharacters:v10 withExceptions:v9 fromString:v8];
}

- (void)removeSymbols:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 symbolCharacterSet];
  [(SGStringPreprocessor *)self removeCharacters:v6 withExceptions:0 fromString:v5];
}

- (void)removePunctuationWithExceptions:(id)a3 withValue:(id)a4
{
  v6 = MEMORY[0x277CCA900];
  v7 = a4;
  v8 = a3;
  v10 = [v6 punctuationCharacterSet];
  v9 = [(SGStringPreprocessor *)self characterSetFromString:v7];

  [(SGStringPreprocessor *)self removeCharacters:v10 withExceptions:v9 fromString:v8];
}

- (void)replaceAllWhitespaceWithSpaces:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = v3;
  v6 = objc_opt_self();

  if (v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    Length = CFStringGetLength(v5);
    theString = v5;
    v34 = 0;
    v35 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v5);
    CStringPtr = 0;
    v32 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v36 = 0;
    v37 = 0;
    v33 = CStringPtr;
    if (Length >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 64;
      do
      {
        if (v11 >= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v11;
        }

        v14 = v35;
        if (v35 <= v11)
        {
          v16 = 0;
        }

        else
        {
          if (v32)
          {
            v15 = &v32[v34];
          }

          else
          {
            if (v33)
            {
              v16 = v33[v34 + v11];
              goto LABEL_14;
            }

            v17 = v36;
            if (v37 <= v11 || v36 > v11)
            {
              v19 = v13 + v10;
              v20 = v12 - v13;
              v21 = v11 - v13;
              v22 = v21 + 64;
              if (v21 + 64 >= v35)
              {
                v22 = v35;
              }

              v36 = v21;
              v37 = v22;
              if (v35 >= v20)
              {
                v14 = v20;
              }

              v38.location = v21 + v34;
              v38.length = v14 + v19;
              CFStringGetCharacters(theString, v38, &v23);
              v17 = v36;
            }

            v15 = &v23 - v17;
          }

          v16 = v15[v11];
        }

LABEL_14:
        if (CFCharacterSetIsCharacterMember(v4, v16))
        {
          [(__CFString *)v5 replaceCharactersInRange:v11 withString:1, @" ", v23, v24, v25, v26, v27, v28, v29, v30];
        }

        ++v11;
        --v10;
        ++v12;
      }

      while (Length != v11);
    }
  }
}

- (void)removeNonEmojiSymbolsWithExceptions:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = [MEMORY[0x277CCA900] symbolCharacterSet];
  if (v8)
  {
    v10 = _PASCharacterSetWithCharactersInString();
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14 = MEMORY[0x277D85DD0];
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  _PASIterateLongChars();
  if (v18[3] != v8)
  {
    [(SGStringPreprocessor *)self replace:v6 withBuffer:v11 toIndex:v14, 3221225472, __70__SGStringPreprocessor_removeNonEmojiSymbolsWithExceptions_withValue___block_invoke, &unk_278EB7598, v12, v13, &v17, v11];
  }

  _Block_object_dispose(&v17, 8);
}

const __CFCharacterSet *__70__SGStringPreprocessor_removeNonEmojiSymbolsWithExceptions_withValue___block_invoke(uint64_t a1, UTF32Char a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!CFCharacterSetIsLongCharacterMember(*(a1 + 32), a2) || (SGIsEmoji(a2) & 1) != 0 || (result = *(a1 + 40)) != 0 && (result = CFCharacterSetIsLongCharacterMember(result, a2), result))
  {
    result = memcpy((*(a1 + 56) + 2 * *(*(*(a1 + 48) + 8) + 24)), a3, 2 * a5);
    *(*(*(a1 + 48) + 8) + 24) += a5;
  }

  return result;
}

- (void)removeEmojisWithExceptions:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v8)
  {
    v9 = _PASCharacterSetWithCharactersInString();
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11 = v9;
  _PASIterateLongChars();
  if (v13[3] != v8)
  {
    [(SGStringPreprocessor *)self replace:v6 withBuffer:v10 toIndex:?];
  }

  _Block_object_dispose(&v12, 8);
}

const __CFCharacterSet *__61__SGStringPreprocessor_removeEmojisWithExceptions_withValue___block_invoke(void *a1, UTF32Char a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!SGIsEmoji(a2) || (result = a1[4]) != 0 && (result = CFCharacterSetIsLongCharacterMember(result, a2), result))
  {
    result = memcpy((a1[6] + 2 * *(*(a1[5] + 8) + 24)), a3, 2 * a5);
    *(*(a1[5] + 8) + 24) += a5;
  }

  return result;
}

- (void)removeEmojiModifyingCharactersWithExceptions:(id)a3 withValue:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = _PASCharacterSetWithCharactersInString();
  if ([v6 length])
  {
    v8 = _PASCharacterSetWithCharactersInString();
  }

  else
  {
    v8 = 0;
  }

  [(SGStringPreprocessor *)self removeCharacters:v7 withExceptions:v8 fromString:v9];
}

- (void)removeNonBaseCharacters:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 nonBaseCharacterSet];
  [(SGStringPreprocessor *)self removeCharacters:v6 withExceptions:0 fromString:v5];
}

- (void)stripNonBaseCharacters:(id)a3
{
  v4 = a3;
  [(SGStringPreprocessor *)self decomposeStringWithCompatibilityMapping:v4];
  [(SGStringPreprocessor *)self removeNonBaseCharacters:v4];
}

- (void)stripCombiningMarks:(id)a3
{
  v3 = a3;
  v4.location = 0;
  v4.length = [(__CFString *)v3 length];
  CFStringTransform(v3, &v4, *MEMORY[0x277CBF100], 0);
}

- (void)removeNonBasicMultilingualPlane:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v5];
    v8 = v4;
    v9 = objc_opt_self();

    if (v9)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *buffer = 0u;
      v27 = 0u;
      Length = CFStringGetLength(v8);
      theString = v8;
      v37 = 0;
      v38 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v8);
      CStringPtr = 0;
      v35 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
      }

      v39 = 0;
      v40 = 0;
      v36 = CStringPtr;
      if (Length >= 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 64;
        while (1)
        {
          if (v16 >= 4)
          {
            v19 = 4;
          }

          else
          {
            v19 = v16;
          }

          if (v38 <= v16)
          {
            v20 = 0;
          }

          else
          {
            if (v35)
            {
              v20 = v35[v37 + v16];
            }

            else if (v36)
            {
              v20 = v36[v37 + v16];
            }

            else
            {
              if (v40 <= v16 || v15 > v16)
              {
                v22 = v19 + v13;
                v23 = v18 - v19;
                v24 = v16 - v19;
                v25 = v24 + 64;
                if (v24 + 64 >= v38)
                {
                  v25 = v38;
                }

                v39 = v24;
                v40 = v25;
                if (v38 < v23)
                {
                  v23 = v38;
                }

                v41.location = v24 + v37;
                v41.length = v23 + v22;
                CFStringGetCharacters(theString, v41, buffer);
                v14 = v39;
              }

              v20 = buffer[v16 - v14];
              v15 = v14;
            }

            if (((v20 + 0x2000) >> 11) > 0x1Eu)
            {
              goto LABEL_28;
            }
          }

          v7[v17++] = v20;
LABEL_28:
          ++v16;
          --v13;
          ++v18;
          if (Length == v16)
          {
            goto LABEL_32;
          }
        }
      }

      v17 = 0;
    }

    else
    {
      v17 = 0;
    }

LABEL_32:

    if (v17 != v6)
    {
      [(SGStringPreprocessor *)self replace:v8 withBuffer:v7 toIndex:v17];
    }
  }
}

- (void)replaceLinksWithString:(id)a3 withValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 length];
  if (v9 >= 5)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"SGStringPreprocessingTransformer.m" lineNumber:507 description:{@"Invalid parameter not satisfying: %@", @"valueLen <= patternLen"}];
  }

  v10 = [v7 length];
  if (!v10)
  {
    goto LABEL_55;
  }

  v11 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v10];
  v12 = v7;
  v13 = objc_opt_self();

  if (!v13)
  {
    goto LABEL_52;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *buffer = 0u;
  v36 = 0u;
  Length = CFStringGetLength(v12);
  theString = v12;
  v46 = 0;
  v47 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v12);
  CStringPtr = 0;
  v44 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v12, 0x600u);
  }

  v48 = 0;
  v49 = 0;
  v45 = CStringPtr;
  if (Length <= 0)
  {
LABEL_52:

    goto LABEL_55;
  }

  v33 = self;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_9:
  v34 = v20;
  do
  {
    v21 = v47;
    if (v47 <= v18)
    {
      v22 = 0;
      goto LABEL_15;
    }

    if (v44)
    {
      v22 = v44[v46 + v18];
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else if (v45)
    {
      v22 = v45[v46 + v18];
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v28 = v48;
      if (v49 <= v18 || v48 > v18)
      {
        v30 = v18 - 4;
        if (v18 < 4)
        {
          v30 = 0;
        }

        if (v30 + 64 < v47)
        {
          v21 = v30 + 64;
        }

        v48 = v30;
        v49 = v21;
        v50.length = v21 - v30;
        v50.location = v46 + v30;
        CFStringGetCharacters(theString, v50, buffer);
        v28 = v48;
      }

      v22 = buffer[v18 - v28];
      if (v19)
      {
        goto LABEL_15;
      }
    }

    if (v22 == 104)
    {
      v22 = 104;
      v19 = 1u;
      goto LABEL_46;
    }

LABEL_15:
    if (v19 >= 1)
    {
      if (replaceLinksWithString_withValue__pattern[v19] != v22)
      {
        goto LABEL_33;
      }

      ++v19;
      v11[v17] = v22;
      if (v19 == 4)
      {
        [v8 getCharacters:&v11[v17 - 3] range:{0, v9}];
        v17 = v17 - 3 + v9;
        ++v18;
        v20 = 1;
        v19 = 0xFFFFFFFFFFFFFFFFLL;
        if (v18 == Length)
        {

          v31 = v33;
LABEL_54:
          [(SGStringPreprocessor *)v31 replace:v12 withBuffer:v11 toIndex:v17];
          goto LABEL_55;
        }

        goto LABEL_9;
      }

      goto LABEL_47;
    }

    if (v19 != -1)
    {
      goto LABEL_46;
    }

    if (v22 - 48 >= 0xA && (v22 & 0xFFDFu) - 65 >= 0x1A)
    {
      v23 = ":/.?=&_-+$!*'(),;@";
      do
      {
        v25 = *v23++;
        v24 = v25;
        v26 = v25;
        if (v25)
        {
          v27 = v26 == v22;
        }

        else
        {
          v27 = 1;
        }
      }

      while (!v27);
      if (v24)
      {
        v19 = -1;
        goto LABEL_48;
      }

LABEL_33:
      v19 = 0;
LABEL_46:
      v11[v17] = v22;
LABEL_47:
      ++v17;
    }

LABEL_48:
    ++v18;
  }

  while (v18 != Length);

  v31 = v33;
  if (v34)
  {
    goto LABEL_54;
  }

LABEL_55:
}

- (void)mergeAnyConsecutiveNonalphabeticCharactersWithExceptions:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCA900] letterCharacterSet];
    if ([v7 length])
    {
      v11 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v7];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v9];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v13 = v10;
    v14 = v11;
    _PASIterateLongChars();
    if (v18[3] != v9)
    {
      [(SGStringPreprocessor *)self replace:v6 withBuffer:v12 toIndex:?];
    }

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v17, 8);
  }
}

const __CFCharacterSet *__91__SGStringPreprocessor_mergeAnyConsecutiveNonalphabeticCharactersWithExceptions_withValue___block_invoke(uint64_t a1, UTF32Char theChar, void *__src, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a1 + 48) + 8) + 24) != theChar || CFCharacterSetIsLongCharacterMember(*(a1 + 32), theChar) || (result = *(a1 + 40)) != 0 && (result = CFCharacterSetIsLongCharacterMember(result, theChar), result))
  {
    result = memcpy((*(a1 + 64) + 2 * *(*(*(a1 + 56) + 8) + 24)), __src, 2 * a5);
    *(*(*(a1 + 56) + 8) + 24) += a5;
  }

  *(*(*(a1 + 48) + 8) + 24) = theChar;
  return result;
}

- (void)mergeAnyConsecutiveCharacters:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v5];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v9 = 0;
    _PASIterateLongChars();
    if (v11[3] != v6)
    {
      [(SGStringPreprocessor *)self replace:v4 withBuffer:v7 toIndex:?];
    }

    _Block_object_dispose(v8, 8);
    _Block_object_dispose(&v10, 8);
  }
}

void *__54__SGStringPreprocessor_mergeAnyConsecutiveCharacters___block_invoke(void *result, int a2, void *__src, uint64_t a4, uint64_t a5)
{
  v6 = *(result[4] + 8);
  if (*(v6 + 24) != a2)
  {
    v8 = result;
    result = memcpy((result[6] + 2 * *(*(result[5] + 8) + 24)), __src, 2 * a5);
    *(*(v8[5] + 8) + 24) += a5;
    v6 = *(v8[4] + 8);
  }

  *(v6 + 24) = a2;
  return result;
}

- (void)mergeTwoOrMoreConsecutiveCharacters:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v5];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    v8 = MEMORY[0x277D85DD0];
    _PASIterateLongChars();
    if (v14[3] != v6)
    {
      [(SGStringPreprocessor *)self replace:v4 withBuffer:v7 toIndex:v8, 3221225472, __60__SGStringPreprocessor_mergeTwoOrMoreConsecutiveCharacters___block_invoke, &unk_278EB76B0, v11, v9, &v13, v7];
    }

    _Block_object_dispose(v9, 8);
    _Block_object_dispose(v11, 8);
    _Block_object_dispose(&v13, 8);
  }
}

void *__60__SGStringPreprocessor_mergeTwoOrMoreConsecutiveCharacters___block_invoke(void *result, int a2, void *__src, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (*(*(result[4] + 8) + 24) != a2 || (v8 = *(result[5] + 8), v9 = a2, *(v8 + 24) != a2))
  {
    result = memcpy((result[7] + 2 * *(*(result[6] + 8) + 24)), __src, 2 * a5);
    *(*(v7[6] + 8) + 24) += a5;
    v9 = *(*(v7[4] + 8) + 24);
    v8 = *(v7[5] + 8);
  }

  *(v8 + 24) = v9;
  *(*(v7[4] + 8) + 24) = a2;
  return result;
}

- (void)replaceNumbersWithString:(id)a3 withValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 length] != 1)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGStringPreprocessingTransformer.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"value.length == 1"}];
  }

  v9 = [v7 length];
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    if (([v8 characterAtIndex:0] & 0xF800 | 0x400) == 0xDC00)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"SGStringPreprocessingTransformer.m" lineNumber:405 description:{@"Invalid parameter not satisfying: %@", @"!CFUniCharIsSurrogateHighCharacter(replacement) && !CFUniCharIsSurrogateLowCharacter(replacement)"}];
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v10];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v12 = v11;
    _PASIterateLongChars();
    if (*(v16 + 24) == 1)
    {
      [(SGStringPreprocessor *)self replace:v7 withBuffer:v26[3] toIndex:v22[3]];
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }
}

void *__59__SGStringPreprocessor_replaceNumbersWithString_withValue___block_invoke(uint64_t a1, UTF32Char a2, const void *a3, uint64_t a4, uint64_t a5)
{
  result = CFCharacterSetIsLongCharacterMember(*(a1 + 32), a2);
  v9 = result;
  if (result)
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v10 = *(a1 + 72);
      v11 = *(*(*(a1 + 40) + 8) + 24);
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 24);
      *(v12 + 24) = v13 + 1;
      *(v11 + 2 * v13) = v10;
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    result = memcpy((*(*(*(a1 + 40) + 8) + 24) + 2 * *(*(*(a1 + 48) + 8) + 24)), a3, 2 * a5);
    *(*(*(a1 + 48) + 8) + 24) += a5;
  }

  *(*(*(a1 + 56) + 8) + 24) = v9 != 0;
  return result;
}

- (void)mergeNumbersSeparatedByASCIISpace:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v8 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v6];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v9 = v7;
    _PASIterateLongChars();
    if (v15[3] != v6)
    {
      [(SGStringPreprocessor *)self replace:v4 withBuffer:v8 toIndex:?];
    }

    _Block_object_dispose(v10, 8);
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v14, 8);
  }
}

void *__58__SGStringPreprocessor_mergeNumbersSeparatedByASCIISpace___block_invoke(uint64_t a1, UTF32Char a2, void *__src, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 32 && CFCharacterSetIsLongCharacterMember(*(a1 + 32), *(*(*(a1 + 48) + 8) + 24)) && CFCharacterSetIsLongCharacterMember(*(a1 + 32), a2))
  {
    --*(*(*(a1 + 56) + 8) + 24);
  }

  result = memcpy((*(a1 + 64) + 2 * *(*(*(a1 + 56) + 8) + 24)), __src, 2 * a5);
  *(*(*(a1 + 56) + 8) + 24) += a5;
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 24) = a2;
  return result;
}

- (void)removeDuplicateWhitespace:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v6];
    v9 = v4;
    v10 = objc_opt_self();

    if (v10)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      *buffer = 0u;
      v35 = 0u;
      Length = CFStringGetLength(v9);
      theString = v9;
      v45 = 0;
      v46 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v9);
      CStringPtr = 0;
      v43 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v9, 0x600u);
      }

      v30 = v9;
      v31 = v6;
      v32 = self;
      v33 = v4;
      v47 = 0;
      v48 = 0;
      v44 = CStringPtr;
      if (Length >= 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 64;
        while (1)
        {
          if (v16 >= 4)
          {
            v19 = 4;
          }

          else
          {
            v19 = v16;
          }

          v20 = v46;
          if (v46 <= v16)
          {
            v22 = 0;
          }

          else
          {
            if (v43)
            {
              v21 = &v43[v45];
            }

            else
            {
              if (v44)
              {
                v22 = v44[v45 + v16];
                goto LABEL_15;
              }

              v24 = v47;
              if (v48 <= v16 || v47 > v16)
              {
                v26 = v19 + v14;
                v27 = v18 - v19;
                v28 = v16 - v19;
                v29 = v28 + 64;
                if (v28 + 64 >= v46)
                {
                  v29 = v46;
                }

                v47 = v28;
                v48 = v29;
                if (v46 >= v27)
                {
                  v20 = v27;
                }

                v49.location = v28 + v45;
                v49.length = v20 + v26;
                CFStringGetCharacters(theString, v49, buffer);
                v24 = v47;
              }

              v21 = &buffer[-v24];
            }

            v22 = v21[v16];
          }

LABEL_15:
          v23 = [v7 characterIsMember:{v22, v30, v31, v32, v33, *buffer, *&buffer[4], v35, v36, v37, v38, v39, v40, v41}];
          if ((v17 & v23 & 1) == 0)
          {
            v8[v15++] = v22;
          }

          ++v16;
          --v14;
          ++v18;
          v17 = v23;
          if (Length == v16)
          {
            goto LABEL_33;
          }
        }
      }

      v15 = 0;
LABEL_33:
      self = v32;
      v4 = v33;
      v9 = v30;
      v6 = v31;
    }

    else
    {
      v15 = 0;
    }

    if (v15 != v6)
    {
      [(SGStringPreprocessor *)self replace:v9 withBuffer:v8 toIndex:v15];
    }
  }
}

- (void)removeSpacingModifierLetters:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 characterSetWithRange:{688, 64}];
  [(SGStringPreprocessor *)self removeCharacters:v6 withExceptions:0 fromString:v5];
}

- (void)removePunctuation:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 punctuationCharacterSet];
  [(SGStringPreprocessor *)self removeCharacters:v6 withExceptions:0 fromString:v5];
}

- (void)removeNonASCII:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v7 = [v4 characterSetWithRange:{0, 128}];
  v6 = [v7 invertedSet];
  [(SGStringPreprocessor *)self removeCharacters:v6 withExceptions:0 fromString:v5];
}

- (void)replaceCharactersWithSpaces:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v9 = [(SGStringPreprocessor *)self characterSetFromString:a4];
  v7 = v6;
  v8 = v9;
  _PASIterateLongChars();
}

uint64_t __62__SGStringPreprocessor_replaceCharactersWithSpaces_withValue___block_invoke(uint64_t a1, UTF32Char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CFCharacterSetIsLongCharacterMember(*(a1 + 32), a2);
  if (result)
  {
    v9 = *(a1 + 40);

    return [v9 replaceCharactersInRange:a4 withString:{a5, @" "}];
  }

  return result;
}

- (void)removeCharacters:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = [(SGStringPreprocessor *)self characterSetFromString:a4];
  [(SGStringPreprocessor *)self removeCharacters:v7 withExceptions:0 fromString:v6];
}

- (void)separateFrenchElisions:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v43[4] = xmmword_278EB75F8;
    v43[5] = *&off_278EB7608;
    v43[6] = xmmword_278EB7618;
    v44 = 0;
    v43[0] = xmmword_278EB75B8;
    v43[1] = *&off_278EB75C8;
    v43[2] = xmmword_278EB75D8;
    v43[3] = *&off_278EB75E8;
    v7 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v5];
    v8 = v4;
    v9 = objc_opt_self();

    if (v9)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *buffer = 0u;
      v29 = 0u;
      Length = CFStringGetLength(v8);
      theString = v8;
      v39 = 0;
      v40 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v8);
      CStringPtr = 0;
      v37 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
      }

      v26 = v4;
      v27 = self;
      v41 = 0;
      v42 = 0;
      v38 = CStringPtr;
      v25 = v6;
      if (Length >= 1)
      {
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = v40;
          if (v40 <= v14)
          {
            v16 = 0;
          }

          else
          {
            if (v37)
            {
              v16 = v37[v39 + v14];
            }

            else if (v38)
            {
              v16 = v38[v39 + v14];
            }

            else
            {
              v17 = v41;
              if (v42 <= v14 || v41 > v14)
              {
                v19 = v14 - 4;
                if (v14 < 4)
                {
                  v19 = 0;
                }

                if (v19 + 64 < v40)
                {
                  v15 = v19 + 64;
                }

                v41 = v19;
                v42 = v15;
                v46.length = v15 - v19;
                v46.location = v39 + v19;
                CFStringGetCharacters(theString, v46, buffer);
                v17 = v41;
              }

              v16 = buffer[v14 - v17];
            }

            if (v16 > 0x2017u)
            {
              if (v16 - 8216 > 1)
              {
                goto LABEL_33;
              }
            }

            else if (v16 != 39 && v16 != 96 && v16 != 180)
            {
              goto LABEL_33;
            }

            if (*&v43[0])
            {
              v20 = v43 + 1;
              while ([__CFString rangeOfString:v8 options:"rangeOfString:options:range:" range:?]== 0x7FFFFFFFFFFFFFFFLL)
              {
                if (!*v20++)
                {
                  goto LABEL_33;
                }
              }

              v7 = [(SGStringPreprocessor *)v27 bufferPtrWithMinimumLength:++v6];
              *&v7[v13] = 2097191;
              v22 = v13 + 2;
              goto LABEL_34;
            }
          }

LABEL_33:
          v22 = v13 + 1;
          v7[v13] = v16;
LABEL_34:
          ++v14;
          v13 = v22;
          if (v14 == Length)
          {
            goto LABEL_39;
          }
        }
      }

      v22 = 0;
LABEL_39:
      v4 = v26;
      self = v27;
      v6 = v25;
    }

    else
    {
      v22 = 0;
    }

    if (v22 != v6)
    {
      [(SGStringPreprocessor *)self replace:v8 withBuffer:v7 toIndex:v22];
    }

    for (i = 112; i != -8; i -= 8)
    {
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)separateCharacter:(id)a3 withValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 length] != 1)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"SGStringPreprocessingTransformer.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"value.length == 1"}];
  }

  v9 = [v7 length];
  if (!v9)
  {
    goto LABEL_46;
  }

  v10 = v9;
  theSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [v8 characterAtIndex:0];
  if ((v11 & 0xF800 | 0x400) == 0xDC00)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"SGStringPreprocessingTransformer.m" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"!CFUniCharIsSurrogateHighCharacter(separator) && !CFUniCharIsSurrogateLowCharacter(separator)"}];
  }

  v12 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v10];
  v13 = v7;
  v14 = objc_opt_self();

  if (!v14)
  {
    goto LABEL_42;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  *buffer = 0u;
  v44 = 0u;
  Length = CFStringGetLength(v13);
  theString = v13;
  v54 = 0;
  v55 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v13);
  CStringPtr = 0;
  v52 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v13, 0x600u);
  }

  v56 = 0;
  v57 = 0;
  v53 = CStringPtr;
  if (Length < 1)
  {
LABEL_42:

    goto LABEL_45;
  }

  v37 = v13;
  v38 = v8;
  v39 = self;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_11:
  v40 = v10;
  v21 = -v18;
  v22 = v18 + 64;
  v41 = v20;
  do
  {
    if (v18 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v18;
    }

    v24 = v55;
    if (v55 <= v18)
    {
      v26 = 0;
    }

    else
    {
      if (v52)
      {
        v25 = &v52[v54];
LABEL_18:
        v26 = v25[v18];
        goto LABEL_20;
      }

      if (!v53)
      {
        v27 = v56;
        if (v57 <= v18 || v56 > v18)
        {
          v29 = v23 + v21;
          v30 = v22 - v23;
          v31 = v18 - v23;
          v32 = v31 + 64;
          if (v31 + 64 >= v55)
          {
            v32 = v55;
          }

          v56 = v31;
          v57 = v32;
          if (v55 >= v30)
          {
            v24 = v30;
          }

          v58.location = v31 + v54;
          v58.length = v24 + v29;
          CFStringGetCharacters(theString, v58, buffer);
          v27 = v56;
        }

        v25 = &buffer[-v27];
        goto LABEL_18;
      }

      v26 = v53[v54 + v18];
    }

LABEL_20:
    if (v11 == v26 || (v20 & 1) == 0)
    {
      if (v11 != v26)
      {
LABEL_25:
        v20 = 0;
        v12[v19++] = v26;
        goto LABEL_26;
      }
    }

    else if (!CFCharacterSetIsCharacterMember(theSet, v26))
    {
      goto LABEL_25;
    }

    if ((v20 & 1) == 0)
    {
      v10 = v40 + 2;
      v12 = [(SGStringPreprocessor *)v39 bufferPtrWithMinimumLength:v40 + 2];
      v33 = &v12[v19];
      *v33 = 32;
      v33[1] = v11;
      v19 += 3;
      v33[2] = 32;
      ++v18;
      v20 = 1;
      if (v18 != Length)
      {
        goto LABEL_11;
      }

      v34 = v37;

      v8 = v38;
      goto LABEL_44;
    }

    v20 = 1;
LABEL_26:
    ++v18;
    --v21;
    ++v22;
  }

  while (Length != v18);
  v34 = v37;

  v8 = v38;
  if (v41)
  {
LABEL_44:
    [(SGStringPreprocessor *)v39 replace:v34 withBuffer:v12 toIndex:v19];
  }

LABEL_45:

LABEL_46:
}

- (id)characterSetFromString:(id)a3
{
  v3 = a3;
  if ([v3 length] == 1)
  {
    v4 = MEMORY[0x277CCA900];
    v5 = [v3 characterAtIndex:0];

    v6 = [v4 characterSetWithRange:{v5, 1}];
  }

  else
  {
    v6 = _PASCharacterSetWithCharactersInString();
  }

  return v6;
}

- (void)removeCharacters:(id)a3 withExceptions:(id)a4 fromString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 length];
  if (v11)
  {
    v12 = v11;
    v13 = [(SGStringPreprocessor *)self bufferPtrWithMinimumLength:v11];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v14 = MEMORY[0x277D85DD0];
    v15 = v8;
    v16 = v9;
    _PASIterateLongChars();
    if (v18[3] != v12)
    {
      [(SGStringPreprocessor *)self replace:v10 withBuffer:v13 toIndex:v14, 3221225472, __67__SGStringPreprocessor_removeCharacters_withExceptions_fromString___block_invoke, &unk_278EB7598, v15, v16, &v17, v13];
    }

    _Block_object_dispose(&v17, 8);
  }
}

const __CFCharacterSet *__67__SGStringPreprocessor_removeCharacters_withExceptions_fromString___block_invoke(uint64_t a1, UTF32Char a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!CFCharacterSetIsLongCharacterMember(*(a1 + 32), a2) || (result = *(a1 + 40)) != 0 && (result = CFCharacterSetIsLongCharacterMember(result, a2), result))
  {
    result = memcpy((*(a1 + 56) + 2 * *(*(*(a1 + 48) + 8) + 24)), a3, 2 * a5);
    *(*(*(a1 + 48) + 8) + 24) += a5;
  }

  return result;
}

- (void)replace:(id)a3 withBuffer:(unsigned __int16 *)a4 toIndex:(unint64_t)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  v9 = [[v7 alloc] initWithCharactersNoCopy:a4 length:a5 freeWhenDone:0];
  CFStringReplaceAll(v8, v9);
}

- (unsigned)bufferPtrWithMinimumLength:(unint64_t)a3
{
  v4 = 2 * a3;
  v5 = [(NSMutableData *)self->_buffer length];
  v6 = v4 - v5;
  if (v4 > v5)
  {
    [(NSMutableData *)self->_buffer increaseLengthBy:v6];
  }

  buffer = self->_buffer;

  return [(NSMutableData *)buffer mutableBytes];
}

- (SGStringPreprocessor)init
{
  v6.receiver = self;
  v6.super_class = SGStringPreprocessor;
  v2 = [(SGStringPreprocessor *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    buffer = v2->_buffer;
    v2->_buffer = v3;
  }

  return v2;
}

@end