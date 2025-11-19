void sub_245F82180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id charSetWithEndpoints(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1 || (a1 & 1) != 0)
  {
    charSetWithEndpoints_cold_1();
  }

  v17 = &a9;
  v10 = objc_opt_new();
  if (a1 >= 1)
  {
    v11 = 1;
    do
    {
      v12 = v17;
      v13 = *v17;
      v17 += 4;
      LODWORD(v12) = v12[2];
      v14 = v12 - v13;
      if (v12 <= v13)
      {
        charSetWithEndpoints_cold_2();
      }

      [v10 addCharactersInRange:{v13, v14 + 1}];
      v11 += 2;
    }

    while (v11 <= a1);
  }

  v15 = [v10 copy];

  return v15;
}

__CFString *_NPCollapseWhitespaceAndStrip(void *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 length];
  if (!v2)
  {
    goto LABEL_36;
  }

  v3 = v2;
  if (v2 > 0x1FF)
  {
    v5 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_36:
    v30 = v1;
    goto LABEL_49;
  }

  MEMORY[0x28223BE20]();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v5, v4);
LABEL_5:
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = v1;
  v8 = v7;
  if (v7)
  {
    memset(buffer, 0, sizeof(buffer));
    Length = CFStringGetLength(v7);
    v38 = v8;
    v41 = 0;
    v42 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v8);
    CStringPtr = 0;
    v39 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
    }

    v35 = v8;
    v36 = v3;
    v43 = 0;
    v44 = 0;
    v40 = CStringPtr;
    if (Length >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 1;
      v17 = 64;
      while (1)
      {
        if (v13 >= 4)
        {
          v18 = 4;
        }

        else
        {
          v18 = v13;
        }

        v19 = v42;
        if (v42 <= v13)
        {
          v21 = 0;
        }

        else
        {
          if (v39)
          {
            v20 = &v39[v41];
          }

          else
          {
            if (v40)
            {
              v21 = v40[v41 + v13];
              goto LABEL_18;
            }

            v23 = v43;
            if (v44 <= v13 || v43 > v13)
            {
              v25 = -v18;
              v26 = v18 + v12;
              v27 = v17 - v18;
              v28 = v13 + v25;
              v29 = v28 + 64;
              if (v28 + 64 >= v42)
              {
                v29 = v42;
              }

              v43 = v28;
              v44 = v29;
              if (v42 >= v27)
              {
                v19 = v27;
              }

              v47.location = v28 + v41;
              v47.length = v19 + v26;
              CFStringGetCharacters(v38, v47, buffer);
              v23 = v43;
            }

            v20 = buffer - v23;
          }

          v21 = v20[v13];
        }

LABEL_18:
        v22 = [v6 characterIsMember:{v21, v35, v36}];
        if (v22)
        {
          if ((v16 & 1) == 0)
          {
            *&v5[2 * v14++] = 32;
            v15 |= v21 != 32;
          }
        }

        else
        {
          *&v5[2 * v14++] = v21;
        }

        ++v13;
        --v12;
        ++v17;
        v16 = v22;
        if (Length == v13)
        {
          goto LABEL_39;
        }
      }
    }

    v15 = 0;
    v14 = 0;
LABEL_39:
    v3 = v36;
    v8 = v35;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  do
  {
    v31 = v14;
    if (!v14)
    {
      break;
    }

    --v14;
  }

  while (*&v5[2 * v31 - 2] == 32);
  if ((v15 & 1) != 0 || v31 < [(__CFString *)v8 length])
  {
    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v5 length:v31];

    v8 = v32;
  }

  if (v3 >= 0x200)
  {
    free(v5);
  }

  v30 = v8;

LABEL_49:
  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

id _NPStripQuotationMarks(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    goto LABEL_7;
  }

  if (_NPStripQuotationMarks_onceToken != -1)
  {
    _NPStripQuotationMarks_cold_1();
  }

  v2 = [v1 characterAtIndex:0];
  v3 = [v1 characterAtIndex:{objc_msgSend(v1, "length") - 1}];
  if ([_NPStripQuotationMarks_quotationMarksCharset characterIsMember:v2] && objc_msgSend(_NPStripQuotationMarks_quotationMarksCharset, "characterIsMember:", v3))
  {
    v4 = [v1 stringByTrimmingCharactersInSet:_NPStripQuotationMarks_quotationMarksCharset];
  }

  else
  {
LABEL_7:
    v4 = v1;
  }

  v5 = v4;

  return v5;
}

id _NPRemoveEmojis(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  [v1 length];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = ___NPRemoveEmojis_block_invoke;
  v22 = &unk_278E98068;
  v23 = &v24;
  CEMEnumerateEmojiTokensInStringWithBlock();
  if (v25[5])
  {
    v2 = [v1 mutableCopy];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [v25[5] reverseObjectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v30 count:16];
    if (v4)
    {
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = objc_autoreleasePoolPush();
          v9 = [v7 rangeValue];
          v11 = v10;
          if (v9 < [v2 length] - 1)
          {
            [v2 replaceCharactersInRange:v9 withString:{v11, &stru_2858DACA8}];
          }

          objc_autoreleasePoolPop(v8);
        }

        v4 = [v3 countByEnumeratingWithState:&v15 objects:v30 count:16];
      }

      while (v4);
    }

    v12 = [v2 copy];
  }

  else
  {
    v12 = v1;
  }

  _Block_object_dispose(&v24, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_245F85200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _NPTrimNonLetters(void *a1)
{
  v1 = _NPTrimNonLetters_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _NPTrimNonLetters_cold_1();
  }

  v3 = [v2 stringByTrimmingCharactersInSet:_NPTrimNonLetters_nonLetterCharacterSet];

  return v3;
}

id _NPTokenizeName(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v3 = 0;
    goto LABEL_42;
  }

  v2 = malloc_type_malloc(2 * [v1 length], 0x1000040BDFB0063uLL);
  v3 = objc_opt_new();
  v4 = v1;
  if (!v4)
  {
    goto LABEL_41;
  }

  v5 = v4;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  Length = CFStringGetLength(v4);
  theString = v5;
  v39 = 0;
  v40 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v5);
  CStringPtr = 0;
  v37 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  v41 = 0;
  v42 = 0;
  v38 = CStringPtr;
  if (Length < 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 64;
  do
  {
    if (v10 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v10;
    }

    v14 = v40;
    if (v40 <= v10)
    {
      v16 = 0;
LABEL_15:
      v2[v11++] = v16;
      goto LABEL_25;
    }

    if (v37)
    {
      v15 = &v37[v39];
LABEL_13:
      v16 = v15[v10];
      goto LABEL_18;
    }

    if (!v38)
    {
      v20 = v41;
      if (v42 <= v10 || v41 > v10)
      {
        v22 = -v13;
        v23 = v13 + v9;
        v24 = v12 - v13;
        v25 = v10 + v22;
        v26 = v25 + 64;
        if (v25 + 64 >= v40)
        {
          v26 = v40;
        }

        v41 = v25;
        v42 = v26;
        if (v40 >= v24)
        {
          v14 = v24;
        }

        v44.location = v25 + v39;
        v44.length = v14 + v23;
        CFStringGetCharacters(theString, v44, &v28);
        v20 = v41;
      }

      v15 = &v28 - v20;
      goto LABEL_13;
    }

    v16 = v38[v39 + v10];
LABEL_18:
    if (v16 != 47)
    {
      if (v16 == 44)
      {
        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        v19 = [v18 initWithCharacters:v2 length:{v11, v28, v29, v30, v31, v32, v33, v34, v35}];
        [v3 addObject:v19];

        [v3 addObject:{@", "}];
        goto LABEL_24;
      }

      if (v16 != 32)
      {
        goto LABEL_15;
      }
    }

    if (!v11)
    {
      goto LABEL_25;
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v2 length:v11];
    [v3 addObject:v17];

LABEL_24:
    v11 = 0;
LABEL_25:
    ++v10;
    --v9;
    ++v12;
  }

  while (Length != v10);

  if (v11)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v2 length:v11];
    [v3 addObject:v5];
    goto LABEL_40;
  }

LABEL_41:
  free(v2);
LABEL_42:

  return v3;
}

id _NPRemoveParenthesisBracketsAndInside(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___NPRemoveParenthesisBracketsAndInside_block_invoke;
  block[3] = &unk_278E98090;
  v6 = @"(\\(.*?\\)|\\[.*?\\]|<.*?>)";
  v1 = _NPRemoveParenthesisBracketsAndInside_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_NPRemoveParenthesisBracketsAndInside_onceToken, block);
  }

  v3 = [_NPRemoveParenthesisBracketsAndInside_regex stringByReplacingMatchesInString:v2 options:0 range:0 withTemplate:{objc_msgSend(v2, "length"), &stru_2858DACA8}];

  return v3;
}

id _NPRemoveAppSignature(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___NPRemoveAppSignature_block_invoke;
  block[3] = &unk_278E98090;
  v6 = @"via linkedin";
  v1 = _NPRemoveAppSignature_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_NPRemoveAppSignature_onceToken, block);
  }

  v3 = [_NPRemoveAppSignature_appSignatureRegex stringByReplacingMatchesInString:v2 options:0 range:0 withTemplate:{objc_msgSend(v2, "length"), &stru_2858DACA8}];

  return v3;
}

void charSetWithEndpoints_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSCharacterSet *charSetWithEndpoints(int, ...)"}];
  [v1 handleFailureInFunction:v0 file:@"NPStringUtils.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"n_args && (n_args % 2) == 0"}];
}

void charSetWithEndpoints_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSCharacterSet *charSetWithEndpoints(int, ...)"}];
  [v0 handleFailureInFunction:v1 file:@"NPStringUtils.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"start < end"}];
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}