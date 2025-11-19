void sub_1A86805EC(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v3)
  {
    v26 = *v30;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v29 + 1) + 8 * i);
        v6 = [v5 title];
        if ([v6 length])
        {
          v7 = *(a1 + 32);
          v8 = [v6 localizedLowercaseString];
          LODWORD(v7) = [v7 containsObject:v8];

          if (v7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A85E5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "IMReplySuggestionGenerator - SROSmartRepliesSuggestion collides with an existing special event suggestion.", buf, 2u);
            }
          }

          else
          {
            v38 = 0;
            v39 = &v38;
            v40 = 0x2050000000;
            v9 = qword_1EB30AFE0;
            v41 = qword_1EB30AFE0;
            if (!qword_1EB30AFE0)
            {
              *buf = MEMORY[0x1E69E9820];
              v34 = 3221225472;
              v35 = sub_1A8682028;
              v36 = &unk_1E78261C8;
              v37 = &v38;
              sub_1A8682028(buf);
              v9 = v39[3];
            }

            v10 = v9;
            _Block_object_dispose(&v38, 8);
            if (objc_opt_isKindOfClass())
            {
              v11 = v5;
              v12 = v6;
              v13 = [v11 type];
              if (v13 == 15)
              {
                v17 = [v11 metadata];
                v18 = [v17 url];
                v19 = [v18 absoluteString];

                if ([v19 length])
                {
                  v20 = v19;
                }

                else
                {
                  v20 = v12;
                }

                v15 = v20;

                v14 = 5;
              }

              else
              {
                if (v13 == 3)
                {
                  v14 = 4;
                }

                else
                {
                  v14 = 3;
                }

                v15 = v12;
              }

              v16 = [[IMReplySuggestion alloc] initWithType:v14 text:v12 version:0];
              v21 = [v11 attribution];
              v22 = [v21 copy];
              [(IMReplySuggestion *)v16 setAttribution:v22];

              [(IMReplySuggestion *)v16 setStringRepresentation:v15];
            }

            else
            {
              v16 = -[IMReplySuggestion initWithType:text:version:]([IMReplySuggestion alloc], "initWithType:text:version:", [v5 isDynamicSuggestion] ^ 1, v6, 0);
              v11 = [v6 copy];
              [(IMReplySuggestion *)v16 setStringRepresentation:v11];
            }

            v23 = *(a1 + 32);
            v24 = [v6 localizedLowercaseString];
            [v23 addObject:v24];

            [*(a1 + 40) addObject:v16];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_1A88C27C0(&v27, v28);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v3);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1A8680BDC(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v12 lowercaseString];
        if (([v6 containsObject:v13] & 1) == 0)
        {
          [v5 addObject:v12];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

void sub_1A8680D2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 count])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x1E69E9C10];
    do
    {
      v9 = [v3 objectAtIndexedSubscript:v7];
      v10 = [v9 title];
      if ([v10 length])
      {
        v11 = [v9 isDynamicSuggestion];
        v6 += v11;
        if ((v11 & (v5 == 0)) != 0)
        {
          v5 = v7;
        }

        [v4 addObject:v10];
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C27C0(&v12, v13);
      }

      ++v7;
    }

    while (v7 < [v3 count]);
  }

  sub_1A8680BDC(*(a1 + 32), *(a1 + 40), v4);
  (*(*(a1 + 48) + 16))();
}

id sub_1A8681584()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EB30AFF0;
  v7 = qword_1EB30AFF0;
  if (!qword_1EB30AFF0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A86821F0;
    v3[3] = &unk_1E78261C8;
    v3[4] = &v4;
    sub_1A86821F0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A868164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A8681664()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EB30B000;
  v7 = qword_1EB30B000;
  if (!qword_1EB30B000)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A86822A0;
    v3[3] = &unk_1E78261C8;
    v3[4] = &v4;
    sub_1A86822A0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A868172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8681744(uint64_t a1, void *a2)
{
  v3 = [a2 suggestions];
  (*(*(a1 + 32) + 16))();
}

void sub_1A86817D0()
{
  v0 = dispatch_get_global_queue(17, 0);
  dispatch_async(v0, &unk_1F1BA6448);
}

void sub_1A8681820()
{
  v0 = [sub_1A8681664() sharedManager];
  [v0 primeResponsesExperimentsIfNeeded];
}

void sub_1A868199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86819B4(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 transferGUID];

  if (!v3)
  {
    v4 = [v14 messagePartBody];
    v5 = [v4 string];
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v5 trimmedString];
    v8 = [v6 stringByAppendingString:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:@" "];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

id sub_1A8681D10(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v8 = off_1EB30AFD0;
  v17 = off_1EB30AFD0;
  if (!off_1EB30AFD0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A8681E74;
    v13[3] = &unk_1E78261C8;
    v13[4] = &v14;
    sub_1A8681E74(v13);
    v8 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v8)
  {
    sub_1A88C02E0();
    v12 = v11;
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v12);
  }

  v9 = v8(v5, v6, @"IMSharedUtilities", v7);

  return v9;
}

void *sub_1A8681E44()
{
  result = MEMORY[0x1AC570AB0]("IMDCNGivenNameAndBirthdayForHandleID", @"IMDPersistence");
  off_1EB30AFC0 = result;
  return result;
}

void *sub_1A8681E74(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1EB30AFD8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1A8681FB4;
    v5[4] = &unk_1E7826200;
    v5[5] = v5;
    v6 = xmmword_1E7828760;
    v7 = 0;
    qword_1EB30AFD8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1EB30AFD8;
    if (qword_1EB30AFD8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1EB30AFD8;
LABEL_5:
  result = dlsym(v2, "WRLocalizedStringForLanguage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB30AFD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A8681FB4()
{
  result = _sl_dlopen();
  qword_1EB30AFD8 = result;
  return result;
}

void sub_1A8682028(uint64_t a1)
{
  sub_1A8682080();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SROSmartRepliesActionSuggestion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30AFE0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1A88C285C();
    sub_1A8682080();
  }
}

void sub_1A8682080()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!qword_1EB30AFE8)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = sub_1A868217C;
    v1[4] = &unk_1E7826200;
    v1[5] = v1;
    v2 = xmmword_1E7828778;
    v3 = 0;
    qword_1EB30AFE8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1EB30AFE8)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1A868217C()
{
  result = _sl_dlopen();
  qword_1EB30AFE8 = result;
  return result;
}

Class sub_1A86821F0(uint64_t a1)
{
  sub_1A8682080();
  result = objc_getClass("SROSmartRepliesMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30AFF0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1A88C2884();
    return sub_1A8682248(v3);
  }

  return result;
}

void sub_1A8682248(uint64_t a1)
{
  sub_1A8682080();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SROSmartRepliesSuggestionRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30AFF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_1A88C28AC();
    sub_1A86822A0(v2);
  }
}

void sub_1A86822A0(uint64_t a1)
{
  sub_1A8682080();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SROSmartRepliesManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30B000 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_1A88C28D4();
    [(IMLocationShareStatusChangeItem *)v2 dealloc];
  }
}

id sub_1A8682B04(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A8682C6C;
  aBlock[3] = &unk_1E78287A8;
  v10 = v8;
  v21 = v10;
  v11 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A8682CB0;
  v17[3] = &unk_1E78287D0;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = _Block_copy(v17);
  v15 = [a1 __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingIsAdaptiveImageGlyphProvider:v11 replacementTextProvider:v14 removedTransferGUIDsOut:a5];

  return v15;
}

uint64_t sub_1A8682C6C(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 isAdaptiveImageGlyph];

  return v2;
}

id sub_1A8682CB0(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = (*(*(a1 + 40) + 16))();

  return v3;
}

id sub_1A8682D1C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = [a1 length];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v13 = *MEMORY[0x1E69A5F68];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1A8682FCC;
  v37[3] = &unk_1E78287F8;
  v34 = v7;
  v41 = v34;
  v31 = v12;
  v38 = v31;
  v33 = v8;
  v42 = v33;
  v14 = v10;
  v15 = v13;
  v16 = v14;
  v39 = v14;
  v17 = v11;
  v40 = v17;
  [a1 enumerateAttribute:v13 inRange:0 options:v9 usingBlock:{0, v37}];
  v36 = [a1 mutableCopy];
  v18 = [v16 count] - 1;
  if (v18 >= 0)
  {
    do
    {
      v19 = [v16 objectAtIndexedSubscript:{v18, v31, v33, v34}];
      v20 = [v19 integerValue];

      v21 = [v17 objectAtIndexedSubscript:v18];
      [a1 attributesAtIndex:v20 effectiveRange:0];
      v23 = v22 = v16;
      v24 = [v23 mutableCopy];
      [v24 removeObjectForKey:v15];
      v25 = v15;
      v26 = a1;
      v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21 attributes:v24];
      [v36 replaceCharactersInRange:v20 withAttributedString:{1, v27}];

      a1 = v26;
      v15 = v25;

      v16 = v22;
      --v18;
    }

    while (v18 != -1);
  }

  v28 = [v36 copy];
  v29 = [v32 array];
  if (a5)
  {
    v29 = v29;
    *a5 = v29;
  }

  return v28;
}

uint64_t sub_1A8682FCC(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v13 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v13;
    if ((*(*(a1 + 56) + 16))())
    {
      [*(a1 + 32) addObject:v8];
      v9 = (*(*(a1 + 64) + 16))();
      if (a3 < a3 + a4)
      {
        do
        {
          v10 = *(a1 + 40);
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
          [v10 addObject:v11];

          [*(a1 + 48) addObject:v9];
          ++a3;
          --a4;
        }

        while (a4);
      }
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A86830F0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 length];
  v9 = *MEMORY[0x1E69A5F68];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A86831E0;
  v12[3] = &unk_1E7828820;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [a1 enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v12}];
}

void sub_1A86831E0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if ((*(*(a1 + 32) + 16))())
    {
      v9 = a3 >= a3 + a4;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      do
      {
        (*(*(a1 + 40) + 16))();
        ++a3;
        --a4;
      }

      while (a4);
    }
  }
}

void sub_1A86832C0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 length];
  v9 = *MEMORY[0x1E69A5F68];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A86833B0;
  v12[3] = &unk_1E7828820;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [a1 enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v12}];
}

void sub_1A86833B0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = (*(*(a1 + 32) + 16))();
    if ([v8 isAdaptiveImageGlyph])
    {
      v9 = a3 >= a3 + a4;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      do
      {
        (*(*(a1 + 40) + 16))();
        ++a3;
        --a4;
      }

      while (a4);
    }
  }
}

id sub_1A8683494(void *a1)
{
  v2 = [a1 length];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *MEMORY[0x1E69A5F68];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8683588;
  v8[3] = &unk_1E7826748;
  v9 = v3;
  v5 = v3;
  [a1 enumerateAttribute:v4 inRange:0 options:v2 usingBlock:{0, v8}];
  v6 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v5];

  return v6;
}

uint64_t sub_1A8683588(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v6;
    if ([v4 length])
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

uint64_t sub_1A868360C(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A86836E8;
  v5[3] = &unk_1E78267C0;
  v5[4] = &v6;
  [a1 enumerateAttribute:@"CTAdaptiveImageProvider" inRange:0 options:v2 usingBlock:{0, v5}];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1A86836D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A86836E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t sub_1A8683704(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86837D8;
  v7[3] = &unk_1E7828848;
  v7[4] = &v8;
  [a1 __im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v4 block:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_1A86837C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A86837D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

uint64_t sub_1A86837F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 length];
  v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v7 = [a1 string];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = *MEMORY[0x1E69A5F68];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A86839AC;
  v14[3] = &unk_1E7828870;
  v9 = v7;
  v15 = v9;
  v10 = v6;
  v16 = v10;
  v18 = &v24;
  v11 = v4;
  v17 = v11;
  v19 = &v20;
  [a1 enumerateAttribute:v8 inRange:0 options:v5 usingBlock:{0, v14}];
  if (*(v21 + 24) == 1)
  {
    v12 = *(v25 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12 & 1;
}

void sub_1A8683988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A86839AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = (*(*(a1 + 48) + 16))();
    v10 = v9;
    if (v9 && [v9 isAdaptiveImageGlyph])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a5 = 1;
    }
  }

  else
  {
    v10 = [*(a1 + 32) substringWithRange:{a3, a4}];
    v11 = [v10 stringByTrimmingCharactersInSet:*(a1 + 40)];
    if ([v11 length])
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a5 = 1;
    }
  }
}

uint64_t sub_1A8683AC4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 length];
  v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v7 = [a1 string];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = *MEMORY[0x1E69A5F68];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A8683C80;
  v14[3] = &unk_1E7828870;
  v9 = v7;
  v15 = v9;
  v10 = v6;
  v16 = v10;
  v18 = &v24;
  v11 = v4;
  v17 = v11;
  v19 = &v20;
  [a1 enumerateAttribute:v8 inRange:0 options:v5 usingBlock:{0, v14}];
  if (*(v21 + 24) == 1)
  {
    v12 = *(v25 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12 & 1;
}

void sub_1A8683C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A8683C80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((*(*(a1 + 48) + 16))())
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a5 = 1;
    }
  }

  else
  {
    v9 = [*(a1 + 32) substringWithRange:{a3, a4}];
    v10 = [v9 stringByTrimmingCharactersInSet:*(a1 + 40)];
    if ([v10 length])
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a5 = 1;
    }
  }
}

id sub_1A8683D84(void *a1)
{
  v2 = [a1 mutableCopy];
  v3 = [a1 length];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = sub_1A8683E68;
  v10 = &unk_1E7828898;
  v11 = v2;
  v12 = @"\uFFFD";
  v4 = v2;
  [v4 enumerateAttribute:@"CTAdaptiveImageProvider" inRange:0 options:v3 usingBlock:{0, &v7}];
  v5 = [v4 copy];

  return v5;
}

void sub_1A8683E68(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7 && a3 < a3 + a4)
  {
    do
    {
      [*(a1 + 32) replaceCharactersInRange:a3++ withString:{1, *(a1 + 40)}];
      --a4;
    }

    while (a4);
  }
}

void sub_1A8683EE8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A8683FB0;
  v12[3] = &unk_1E78288C0;
  v13 = v8;
  v14 = v9;
  v12[4] = a1;
  v10 = v9;
  v11 = v8;
  [a1 __im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:a3 block:v12];
}

void sub_1A8683FB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  v9 = a2;
  v10 = v8(v7, v9);
  v11 = *(a1 + 48);
  v12 = [v9 guid];

  LODWORD(v9) = (*(v11 + 16))(v11, v12);
  if (v9)
  {
    v13 = [*(a1 + 32) attributesAtIndex:a3 effectiveRange:0];
    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\uFFFD" attributes:v13];
    [*(a1 + 32) replaceCharactersInRange:a3 withAttributedString:{a4, v14}];
  }

  else if (v10)
  {
    [*(a1 + 32) addAttribute:@"CTAdaptiveImageProvider" value:v10 range:{a3, a4}];
    [*(a1 + 32) addAttribute:@"CTEmojiImageProvider" value:v10 range:{a3, a4}];
  }

  else
  {
    v15 = IMLogHandleForCategory("NSAttributedString+EmojiImages");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C28FC(v15);
    }
  }
}

void sub_1A868411C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A86841E8;
  v12[3] = &unk_1E78288E8;
  v13 = v9;
  v14 = v8;
  v12[4] = a1;
  v10 = v8;
  v11 = v9;
  [a1 __im_enumerateAdaptiveImageGlyphFileTransfersUsingIsAdaptiveImageGlyphProvider:a3 block:v12];
}

void sub_1A86841E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  v9 = a2;
  v10 = v8(v7, v9);
  v11 = (*(*(a1 + 48) + 16))();

  if (!v10 || (v11 & 1) != 0)
  {
    v12 = IMLogHandleForCategory("NSAttributedString+EmojiImages");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1A88C28FC(v12);
    }
  }

  else
  {
    [*(a1 + 32) addAttribute:@"CTAdaptiveImageProvider" value:v10 range:{a3, a4}];
    [*(a1 + 32) addAttribute:@"CTEmojiImageProvider" value:v10 range:{a3, a4}];
  }
}

void sub_1A86842E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 length];
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A86843B8;
  v8[3] = &unk_1E7828910;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a1 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v8}];
}

void sub_1A86843B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:v12] & 1) == 0)
        {
          [*(a1 + 40) removeAttribute:v12 range:{a3, a4}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 8;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          Data = PBReaderReadData();

          v14 = Data;
          v15 = 24;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

LABEL_40:
          *(a1 + 32) = v23;
          goto LABEL_41;
        }

        if (v12 != 2)
        {
          goto LABEL_24;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 16;
      }

      *(a1 + v15) = v14;
LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1A8684F28()
{
  if (qword_1EB309600 != -1)
  {
    sub_1A88C2940();
  }

  v1 = qword_1EB309608;

  return v1;
}

uint64_t sub_1A8684F6C()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = qword_1EB309608;
  qword_1EB309608 = v0;

  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [qword_1EB309608 setLocale:v2];

  [qword_1EB309608 setNumberStyle:1];
  v3 = qword_1EB309608;

  return MEMORY[0x1EEE66B58](v3, sel_setUsesGroupingSeparator_);
}

id sub_1A8684FEC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (qword_1EB30B010 != -1)
  {
    sub_1A88C2954();
  }

  if (!v3)
  {
    v3 = &unk_1F1BFA688;
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v3 countStyle:{"longLongValue"), 3}];
  v6 = [qword_1EB30B008 stringFromNumber:v3];
  v7 = [v4 stringWithFormat:@"%@ (%@ Bytes)", v5, v6];

  return v7;
}

uint64_t sub_1A86850CC()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = qword_1EB30B008;
  qword_1EB30B008 = v0;

  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [qword_1EB30B008 setLocale:v2];

  [qword_1EB30B008 setNumberStyle:1];
  v3 = qword_1EB30B008;

  return MEMORY[0x1EEE66B58](v3, sel_setUsesGroupingSeparator_);
}

id sub_1A868514C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  v8 = [a1 stringFromHugeNumber:v7];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v10 = [a1 stringFromHugeNumber:v9];
  v11 = [v6 stringWithFormat:@"%@ (disk allocation size: %@)", v8, v10];

  return v11;
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedParticipantChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v31 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          v20 = String;
          v21 = 16;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_53;
          }

          Data = PBReaderReadData();

          v20 = Data;
          v21 = 24;
        }

        *(a1 + v21) = v20;
      }

      else if (v12 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v32 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v32 & 0x7F) << v23;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v10 = v24++ >= 9;
          if (v10)
          {
            v28 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v25;
        }

LABEL_52:
        *(a1 + 32) = v28;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_32;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v33 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v33 & 0x7F) << v13;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_48:
        *(a1 + 8) = v18;
      }

LABEL_53:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A8686890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1A86868A8(uint64_t a1)
{
  if (!qword_1EB30B020)
  {
    qword_1EB30B020 = _sl_dlopen();
  }

  result = objc_getClass("NSSCompanionGenerativeModelsEligibilityState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB30B018 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A86869A8()
{
  result = _sl_dlopen();
  qword_1EB30B020 = result;
  return result;
}

void sub_1A86870E4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, v11);
  }

  else
  {
    v7 = *(a1 + 64);
  }

  [*(a1 + 32) setAllAreReachable:{v7 & objc_msgSend(*(a1 + 32), "allAreReachable")}];
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = (*(v8 + 16))(v8, v11);
  }

  else
  {
    v9 = *(a1 + 65);
  }

  [*(a1 + 32) setAllSupportEncryption:{v9 & objc_msgSend(*(a1 + 32), "allSupportEncryption")}];
  v10 = [[IMServiceReachabilityHandleResult alloc] initWithHandleID:v11 service:*(a1 + 40) isReachable:v7 supportsEncryption:v9];
  v5[2](v5, v11, v10);
}

id IMAttachmentsCreateLocalizedDescription(void *a1, void *a2, void *a3)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v71 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v89 objects:v94 count:16];
  v78 = v7;
  if (v10)
  {
    v69 = v6;
    v11 = 0;
    v77 = *v90;
    v73 = *MEMORY[0x1E69A5EF8];
    v76 = v8;
    v12 = v10;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v90 != v77)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v89 + 1) + 8 * v13);
      v88 = 0;
      v86 = 0;
      v87 = 0;
      v85 = 0;
      v15 = (v78)[2](v78, v14, &v87, &v86, &v88 + 1, &v88, &v85, 0, 0);
      v79 = v87;
      v16 = v86;
      v17 = v85;
      v18 = v17;
      if (!v15)
      {
        goto LABEL_38;
      }

      v19 = @"%lu Stickers";
      if ((v88 & 0x100) == 0)
      {
        v20 = [v17 objectForKey:v73];
        if ([v20 BOOLValue])
        {

          v19 = @"%lu Animated Emoji";
          v8 = v76;
        }

        else
        {
          v74 = v16;
          v21 = v79;
          v22 = [v21 pathExtension];
          v23 = [v22 isEqualToString:@"png"];
          if ((v23 & 1) == 0)
          {
            v24 = [v21 pathExtension];
            if (![v24 isEqualToString:@"gif"])
            {

              v16 = v74;
              v8 = v76;
              v27 = v21;
LABEL_18:
              IsImage = IMUTTypeIsImage(v16);
              v19 = @"%lu Images";
              if (!IsImage)
              {
                IsMovie = IMUTTypeIsMovie(v16);
                v19 = @"%lu Movies";
                if (!IsMovie)
                {
                  IsPass = IMUTTypeIsPass(v16);
                  v19 = @"%lu Passes";
                  if (!IsPass)
                  {
                    if (IMUTTypeIsWatchface(v16, v31))
                    {
                      v32 = [v9 count];
                      v19 = @"%lu Watch Faces";
                      if (v32 == 1)
                      {
                        v64 = MEMORY[0x1E696AEC0];
                        v65 = IMSharedUtilitiesFrameworkBundle();
                        [v65 localizedStringForKey:@"SHARED_WATCHFACE_NOTIFICATION" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
                        v67 = v66 = v27;
                        v6 = v69;
                        goto LABEL_56;
                      }
                    }

                    else if (IMUTTypeIsWorkout(v16))
                    {
                      v34 = [v9 count];
                      v19 = @"%lu Workouts";
                      if (v34 == 1)
                      {
                        v6 = v69;
                        if (v69)
                        {
                          v64 = MEMORY[0x1E696AEC0];
                          v65 = IMSharedUtilitiesFrameworkBundle();
                          [v65 localizedStringForKey:@"SHARED_WORKOUT_NOTIFICATION" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
                          v67 = v66 = v27;
LABEL_56:
                          v46 = [v64 stringWithFormat:v67, v6];

                          v27 = v66;
                        }

                        else
                        {
                          v65 = IMSharedUtilitiesFrameworkBundle();
                          v46 = [v65 localizedStringForKey:@"SHARED_WORKOUT_NOTIFICATION_NO_NAME" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
                        }

                        goto LABEL_58;
                      }
                    }

                    else
                    {
                      IsMap = IMUTTypeIsMap(v16, v33);
                      v19 = @"%lu Locations";
                      if ((IsMap & 1) == 0)
                      {
                        IsAudio = IMUTTypeIsAudio(v16);
                        v19 = @"%lu Audio Files";
                        if (!IsAudio)
                        {
                          IsVCard = IMUTTypeIsVCard(v16);
                          v19 = @"%lu Contacts";
                          if (!IsVCard)
                          {
                            IsCalendar = IMUTTypeIsCalendar(v16);
                            v19 = @"%lu Files";
                            if (IsCalendar)
                            {
                              v19 = @"%lu Calendars";
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_32;
            }

            v70 = v24;
          }

          v72 = v11;
          v25 = [v21 path];
          v26 = [v25 rangeOfString:@".emoji"];

          if ((v23 & 1) == 0)
          {
          }

          v19 = @"%lu Animated Emoji";
          v16 = v74;
          v8 = v76;
          v11 = v72;
          v27 = v21;
          if (v26 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_32:
      v39 = v19;
      if (v39)
      {
        v75 = v18;
        v40 = v16;
        v41 = [v8 objectForKey:v39];
        v42 = v41;
        if (v41)
        {
          v43 = v9;
          v44 = v11;
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v41, "unsignedIntegerValue") + 1}];
          [v8 setObject:v45 forKey:v39];

          v11 = v44;
          v9 = v43;
        }

        else
        {
          [v8 setObject:&unk_1F1BFA6A0 forKey:v39];
          [v71 addObject:v39];
        }

        v16 = v40;
        v18 = v75;
      }

      ++v11;

LABEL_38:
      if (v12 == ++v13)
      {
        v12 = [v9 countByEnumeratingWithState:&v89 objects:v94 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        if (v11 < 1)
        {
          v46 = 0;
          v6 = v69;
          goto LABEL_60;
        }

        v46 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v47 = MEMORY[0x1E696AEC0];
        IMSharedUtilitiesFrameworkBundle();
        v49 = v48 = v11;
        v50 = [v49 localizedStringForKey:@"%lu Attachments: " value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
        v51 = [v47 localizedStringWithFormat:v50, v48];
        [v46 appendString:v51];

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v52 = v71;
        v53 = [v52 countByEnumeratingWithState:&v81 objects:v93 count:16];
        if (v53)
        {
          v54 = v53;
          v80 = v9;
          v55 = *v82;
          v56 = 1;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v82 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v58 = *(*(&v81 + 1) + 8 * i);
              v59 = [v8 objectForKey:v58];
              if ((v56 & 1) == 0)
              {
                [v46 appendString:{@", "}];
              }

              v60 = MEMORY[0x1E696AEC0];
              v61 = IMSharedUtilitiesFrameworkBundle();
              v62 = [v61 localizedStringForKey:v58 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
              v63 = [v60 localizedStringWithFormat:v62, objc_msgSend(v59, "unsignedIntegerValue")];
              [v46 appendFormat:v63];

              v56 = 0;
              v8 = v76;
            }

            v54 = [v52 countByEnumeratingWithState:&v81 objects:v93 count:16];
            v56 = 0;
          }

          while (v54);
          v6 = v69;
          v9 = v80;
        }

        else
        {
          v6 = v69;
        }

        goto LABEL_59;
      }
    }
  }

  v46 = 0;
LABEL_58:
  v52 = v9;
LABEL_59:

LABEL_60:

  return v46;
}

void AttachmentsAutomationLogMilestoneWithOptionFlags(void *a1, void *a2, void *a3, char a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v6 = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([v6 isInternalInstall])
  {
    v7 = IMGetCachedDomainBoolForKey();

    if (v7)
    {
      v8 = [v40 mutableCopy];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v9 = v40;
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v10)
      {
        v11 = *v43;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v43 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v42 + 1) + 8 * i);
            v14 = [v9 objectForKeyedSubscript:v13];
            if (([MEMORY[0x1E696ACB0] isValidJSONObject:v14] & 1) == 0)
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v14];
              [v8 setObject:v15 forKeyedSubscript:v13];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v10);
      }

      v16 = [MEMORY[0x1E696AE30] processInfo];
      v17 = v39;
      if (v17)
      {
        CFDictionarySetValue(v8, qword_1EB300F48, v17);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A88C29E4();
      }

      v18 = [v16 processName];
      if (v18)
      {
        CFDictionarySetValue(v8, qword_1EB300F30, v18);
      }

      v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "processIdentifier")}];
      if (v19)
      {
        CFDictionarySetValue(v8, qword_1EB300F38, v19);
      }

      v20 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v21 = [v20 numberWithDouble:?];
      if (v21)
      {
        CFDictionarySetValue(v8, qword_1EB300F40, v21);
      }

      v41 = 0;
      v22 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:1 error:&v41];
      v23 = v41;
      if (v22)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = v38;
        v26 = NSTemporaryDirectory();
        v27 = [v24 stringWithFormat:@"%@/AttachmentsAutomation/%@.json", v26, v25];

        v28 = [MEMORY[0x1E696AC08] defaultManager];
        LOBYTE(v25) = [v28 fileExistsAtPath:v27];

        if ((v25 & 1) == 0)
        {
          v29 = [MEMORY[0x1E696AC08] defaultManager];
          [v29 createFileAtPath:v27 contents:0 attributes:0];
        }

        v30 = [MEMORY[0x1E696AD60] string];
        v31 = v30;
        if (a4)
        {
          v32 = @"[";
        }

        else
        {
          v32 = @",\n";
        }

        [v30 appendString:v32];
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v22 encoding:4];
        [v31 appendString:v33];

        if ((a4 & 2) != 0)
        {
          [v31 appendString:@"]"];
        }

        v34 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v27];
        v35 = v34;
        if (v34)
        {
          [v34 seekToEndOfFile];
          v36 = [v31 dataUsingEncoding:4];
          [v35 writeData:v36];

          [v35 closeFile];
        }
      }
    }
  }

  else
  {
  }
}

void sub_1A86892E4(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedStatusSubscriptionForHandle:*(a1 + 40)];
  v2 = [*(a1 + 40) ID];
  v3 = *(a1 + 32);
  v4 = [v3 _overrideDateForHandleWithID:v2];
  *(*(*(a1 + 48) + 8) + 24) = [v3 _offGridModeFromStatusSubscription:v5 handleID:v2 onlyIfLaterThanDate:v4];
}

void sub_1A8689450(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 lastKnownSubscriptionCache];
  v5 = [v2 _cachedStatusSubscriptionForIMHandle:v3 fromCache:v4 cacheDescription:@"LastKnown" cacheMiss:0];

  [*(a1 + 32) _fetchUpdatedStatusAndUpdateCachesForHandle:*(a1 + 40) lastKnownStatus:v5 completion:*(a1 + 48)];
}

uint64_t sub_1A86895F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedStatusSubscriptionForHandle:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A8689704(uint64_t a1)
{
  v6 = [*(a1 + 32) _cachedStatusSubscriptionForHandle:*(a1 + 40)];
  v2 = [*(a1 + 40) ID];
  v3 = *(a1 + 32);
  v4 = [v3 _overrideDateForHandleWithID:v2];
  [v3 _offGridModeFromStatusSubscription:v6 handleID:v2 onlyIfLaterThanDate:v4];

  v5 = [*(a1 + 32) _identifierFromStatusSubscription:v6 handleID:v2];
  (*(*(a1 + 48) + 16))();
}

void sub_1A8689958(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 personalSubscription];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _offGridModeFromStatusSubscription:v3 handleID:0 onlyIfLaterThanDate:0];
}

void sub_1A8689A60(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8689AF0;
  v4[3] = &unk_1E78289F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _personalSubscriptionWithCompletion:v4];
}

uint64_t sub_1A8689AF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _offGridModeFromStatusSubscription:a2 handleID:0 onlyIfLaterThanDate:0];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_1A8689C18(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) overrideDatesByHandleID];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_1A8689C74()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 __mainThreadPostNotificationName:IMHandleOffGridStateChangedNotification object:0];
}

void sub_1A8689D60(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  [*(a1 + 32) setOverrideDatesByHandleID:v2];
}

void sub_1A868A274(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A868A3C0;
  block[3] = &unk_1E7828A68;
  objc_copyWeak(v17, (a1 + 80));
  v5 = *(a1 + 88);
  v12 = v3;
  v17[1] = v5;
  v16 = *(a1 + 72);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = *(a1 + 32);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v15 = *(a1 + 64);
  v10 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(v17);
}

void sub_1A868A3C0(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = [*(a1 + 32) currentStatus];
  v4 = [v3 statusUniqueIdentifier];

  v5 = [WeakRetained currentCacheGeneration];
  if (*(a1 + 96) == v5 || *(a1 + 80))
  {
    v6 = [WeakRetained pendingFetchesForCacheKeys];
    [v6 removeObject:*(a1 + 40)];

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
    }

    v9 = v8;
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v23 = 138412802;
        v24 = v11;
        v25 = 2112;
        v26 = v12;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Caching subscription for handle %@ with key %@ and value: %@", &v23, 0x20u);
      }
    }

    v13 = [WeakRetained currentSubscriptionCache];
    [v13 setObject:v9 forKeyedSubscript:*(a1 + 40)];

    v14 = [WeakRetained lastKnownSubscriptionCache];
    [v14 setObject:v9 forKeyedSubscript:*(a1 + 40)];

    v15 = *(a1 + 56);
    if (v4 == v15 || v4 && v15 && ([v4 isEqualToString:?]& 1) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 40);
          v23 = 138412290;
          v24 = v17;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Fetched status is the same as the lask known status already returned. Not posting change notification for key: %@", &v23, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 56);
          v20 = *(a1 + 40);
          v23 = 138412802;
          v24 = v4;
          v25 = 2112;
          v26 = v19;
          v27 = 2112;
          v28 = v20;
          _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Fetched status %@ is different than the last known status %@. Posting change notification for key: %@", &v23, 0x20u);
        }
      }

      [WeakRetained _postNotificationForUpdatedStatusWithSubscription:*(a1 + 32)];
    }

    if (*(a1 + 80))
    {
      [*(a1 + 64) _offGridModeFromStatusSubscription:*(a1 + 32) handleID:*(a1 + 48) onlyIfLaterThanDate:*(a1 + 72)];
      (*(*(a1 + 80) + 16))();
    }
  }

  else
  {
    v21 = v5;
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_26;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 96);
      v23 = 134218498;
      v24 = v22;
      v25 = 2048;
      v26 = v21;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Fetched status is not current (startGeneration: %ld, endGeneration: %ld), discarding status %@.", &v23, 0x20u);
    }
  }

LABEL_26:
}

void sub_1A868AC08(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = IMOSLoggingEnabled();
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 32) handleString];
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Found status subscription for handleID: %@. Subscription: %@", &v12, 0x16u);
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) handleString];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Did not find status subscription for handleID: %@", &v12, 0xCu);
      }
    }

    goto LABEL_5;
  }

  v7 = IMLogHandleForCategory("IMHandleOffGridStateManager");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C2A80(a1, v6, v7);
  }

LABEL_5:
  (*(*(a1 + 40) + 16))();
}

void sub_1A868ADD0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A868AC84);
  }

  _Unwind_Resume(a1);
}

void sub_1A868AF50(uint64_t a1)
{
  v2 = [*(a1 + 32) personalStatusSubscription];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A868B010;
  block[3] = &unk_1E78289A0;
  block[4] = v4;
  v8 = v2;
  v9 = v3;
  v6 = v2;
  dispatch_async(v5, block);
}

uint64_t sub_1A868B010(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1A868B46C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A868B2E8);
  }

  _Unwind_Resume(a1);
}

void sub_1A868BBBC(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 __mainThreadPostNotificationName:IMHandleOffGridStateChangedNotification object:*(a1 + 32)];
}

void sub_1A868BD9C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48) + 1;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = v2;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Clearing current subscription cache. New cache generation: %ld", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(v5 + 48) = v2;
  [*(*v4 + 32) removeAllObjects];
  [*(*v4 + 56) removeAllObjects];
  v6 = *(*v4 + 24);
  *(*v4 + 24) = 0;
}

_DWORD *sub_1A868CED0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *(a1 + 40);
  v5 = [WeakRetained trackedObjects];
  v6 = [v5 count];

  if (v6 <= v4)
  {
    v13 = 0;
  }

  else
  {
    v7 = [WeakRetained trackedObjects];
    v8 = [v7 pointerAtIndex:*(a1 + 40)];

    if (v8)
    {
      v9 = sub_1A864E51C(v8);
      v10 = MEMORY[0x1E696AEC0];
      v11 = [WeakRetained title];
      v12 = [v10 stringWithFormat:@"%@-%d", v11, *(a1 + 40)];
      v13 = sub_1A864E620(v12, v9);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

id sub_1A868DD78(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v1];
  v3 = [v2 path];
  if (v3)
  {
    v4 = [v2 URL];
    v5 = [v4 pathExtension];

    if ([v5 length])
    {
      v6 = [v3 substringToIndex:{objc_msgSend(v3, "length") + ~objc_msgSend(v5, "length")}];
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = v1;
  }

  return v7;
}

void *IMSMSReportSpamExtensionAvailable()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = sub_1A85FA914();
  if (v0)
  {
    v1 = IMGetCachedDomainValueForKey();
    v2 = v1;
    if (v1)
    {
      v3 = sub_1A868DD78(v1);

      v2 = [v0 extensions];

      if (v2)
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v4 = [v0 extensions];
        v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v15;
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v15 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v14 + 1) + 8 * i);
              v10 = [v9 identifier];
              v11 = sub_1A868DD78(v10);
              v12 = [v11 isEqualToString:v3];

              if (v12)
              {
                [v0 setElectedExtension:v9];

                v2 = [v0 isClassificationAvailable];
                goto LABEL_16;
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

        v2 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_16:
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t IMSSMSReportSpamShouldShowReportMessagesForItems(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMSMSReportSpamExtensionAvailable())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = v1;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = *v17;
      v5 = 1;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v17 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          v8 = [v7 service];
          if ([v8 isEqualToString:IMServiceNameSMS[0]])
          {
          }

          else
          {
            v9 = [v7 service];
            v10 = [v9 isEqualToString:IMServiceNameRCS[0]];

            v5 &= v10;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v3);

      if ((v5 & 1) == 0)
      {
        v11 = 0;
LABEL_21:
        v1 = v14;
        goto LABEL_22;
      }
    }

    else
    {
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "We have an extension installed and all the messages are on the SMS service, we can show Report Messages", buf, 2u);
      }
    }

    v11 = 1;
    goto LABEL_21;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

void sub_1A868E22C()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = [v0 installedMDMProfileIdentifier];

  v1 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v2 = [v1 installedProfileWithIdentifier:v4];
  v3 = [v2 signerSummary];

  if ([v4 isEqualToString:@"00000000-0000-0000-A000-4A414D460003"] && objc_msgSend(v3, "isEqualToString:", @"manage.apple.com"))
  {
    byte_1EB30B028 = 1;
  }
}

uint64_t sub_1A868E2FC()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED8C9840 != -1)
  {
    sub_1A88C2C6C();
  }

  v0 = byte_1EB30B028;
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = @"NO";
      if (v0)
      {
        v2 = @"YES";
      }

      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "iOS - Apple MDM profile is installed: %@", &v4, 0xCu);
    }
  }

  return v0;
}

BOOL sub_1A868E400()
{
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"disable-phishing-ui"];
  v2 = v1;
  v3 = v1 && ([v1 BOOLValue] & 1) != 0;

  return v3;
}

uint64_t IMShouldHandleInternalPhishingAttempts()
{
  if (sub_1A868E400())
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      return result;
    }

    v1 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v8 = 0;
    v2 = "Phishing UI disabled in IDSServerBag";
    v3 = &v8;
LABEL_14:
    _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, v2, v3, 2u);
LABEL_15:

    return 0;
  }

  v4 = sub_1A868E2FC();
  result = IMOSLoggingEnabled();
  if (!v4)
  {
    if (!result)
    {
      return result;
    }

    v1 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v6 = 0;
    v2 = "Should NOT Handle Phishing UI - iOS";
    v3 = &v6;
    goto LABEL_14;
  }

  if (result)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Should Handle Phishing UI - iOS", buf, 2u);
    }
  }

  return 1;
}

IMSharedMessageSendingUtilities *sub_1A868F290()
{
  result = objc_alloc_init(IMSharedMessageSendingUtilities);
  qword_1ED8CA378 = result;
  return result;
}

uint64_t sub_1A868F7E8()
{
  v0 = +[IMCTRCSUtilitiesManager sharedManager];

  return MEMORY[0x1EEE66B58](v0, sel_isRBMEnabledForContext_);
}

uint64_t sub_1A868F834()
{
  v0 = +[IMCTRCSUtilitiesManager sharedManager];

  return MEMORY[0x1EEE66B58](v0, sel_isRBMSupportedForContext_);
}

id sub_1A868FBA8(void *a1)
{
  if (([a1 _currentLocaleSupportsTrimming] & 1) != 0 && objc_msgSend(a1, "length") > 0x32)
  {
    v3 = [a1 string];
    v4 = [v3 rangeOfComposedCharacterSequenceAtIndex:50];

    v5 = [a1 attributedSubstringFromRange:{0, v4}];
    v6 = [v5 mutableCopy];
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"…"];
    [v6 appendAttributedString:v7];
    v2 = [v6 copy];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

void *sub_1A868FC88()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = IMSharedUtilitiesFrameworkBundle();
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v1 localeIdentifier];

  v3 = MEMORY[0x1E696AAE8];
  v4 = [v0 localizations];
  v11[0] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v6 = [v3 preferredLocalizationsFromArray:v4 forPreferences:v5];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v2;
  }

  v9 = v8;

  return v8;
}

uint64_t sub_1A868FDA0(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 _currentLocale];
  v3 = [a1 _localesSupportingTrim];
  v4 = [v3 containsObject:v2];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v2;
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Current locale: %@, supports trimming: %{BOOL}d", &v7, 0x12u);
    }
  }

  return v4;
}

id sub_1A868FEB4()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1BFAD30];

  return v0;
}

_DWORD *sub_1A8690164(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = sub_1A864E51C(WeakRetained);

  v5 = sub_1A864E620(*(a1 + 32), v4);
  return v5;
}

__CFString *IMTextEffectNameFromType(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E7828C20[a1 - 1];
  }
}

uint64_t IMTextEffectTypeFromName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"scaleRipple"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"stretch"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"squish"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"bounce"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"big"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"bloom"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"somersault"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"shakeVertical"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"shakeHorizontal"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"jitter"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"explode"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"small"])
  {
    v2 = 11;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *IMTextStyleAttributeNameFromStyle(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7828C80[a1 - 1];
  }
}

uint64_t IMTextStyleFromAttributeName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"__kIMTextBoldAttributeName"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"__kIMTextItalicAttributeName"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"__kIMTextUnderlineAttributeName"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"__kIMTextStrikethroughAttributeName"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *IMTextEffectLocalizationKeyFromType(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return &stru_1F1BB91F0;
  }

  else
  {
    return off_1E7828CC0[a1 - 1];
  }
}

__CFString *IMTextEffectDiscoverabilityTitleLocalizationKeyFromType(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return &stru_1F1BB91F0;
  }

  else
  {
    return off_1E7828D20[a1 - 1];
  }
}

id IMTextEffectOrderedSupportedNames()
{
  if (qword_1EB309638 != -1)
  {
    sub_1A88C2C94();
  }

  v1 = qword_1EB309630;

  return v1;
}

void sub_1A86904D0()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"big";
  v2[1] = @"small";
  v2[2] = @"shakeHorizontal";
  v2[3] = @"shakeVertical";
  v2[4] = @"explode";
  v2[5] = @"bounce";
  v2[6] = @"bloom";
  v2[7] = @"jitter";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];
  v1 = qword_1EB309630;
  qword_1EB309630 = v0;
}

uint64_t sub_1A86905D4()
{
  v0 = objc_alloc_init(IMSharedWithYouManager);
  qword_1ED8C9900 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A869080C()
{
  v0 = [@"SLSharedWithYouSettingHasChanged" UTF8String];
  v1 = MEMORY[0x1E69E96A0];

  return notify_register_dispatch(v0, &unk_1EB3095B0, v1, &unk_1F1BA6608);
}

void sub_1A8690854()
{
  v0 = qword_1EB3095F0;
  qword_1EB3095F0 = 0;
}

uint64_t sub_1A8691718(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 entitlements];
  v4 = [v3 objectForKey:@"com.apple.developer.shared-with-you" ofClass:objc_opt_class()];

  v5 = [v2 entitlements];

  v6 = [v5 objectForKey:@"com.apple.developer.shared-with-you.collaboration" ofClass:objc_opt_class()];

  if ([v4 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 BOOLValue];
  }

  return v7;
}

uint64_t sub_1A8692230()
{
  result = MEMORY[0x1AC570AA0](@"WLKURLBagUtilities", @"WatchListKit");
  qword_1ED8CA4A0 = result;
  return result;
}

uint64_t sub_1A8693DC0()
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v0 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v0 postNotificationName:@"com.apple.IMSharedUtilities.IMUserLoginIntentChanged" object:0];
}

void sub_1A8693E20()
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1A8693DC0, @"com.apple.IMSharedUtilities.IMUserLoginIntentChangedInternal", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void IMSetUserLoginIntent(void *a1)
{
  if (qword_1EB30A510 != -1)
  {
    sub_1A88C2E98();
  }

  if (IMGetUserLoginIntent() != a1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v3 = *MEMORY[0x1E695E8B8];
    v4 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(@"UserLoginIntent", v2, @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(@"com.apple.MobileSMS", v3, v4);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.IMSharedUtilities.IMUserLoginIntentChangedInternal", 0, 0, 1u);
  }
}

void *IMGetUserLoginIntent()
{
  if (qword_1EB30A510 != -1)
  {
    sub_1A88C2E98();
  }

  result = CFPreferencesCopyValue(@"UserLoginIntent", @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    result = [result integerValue];
    if (result >= 3)
    {
      return 0;
    }
  }

  return result;
}

void *IMSetUserIgnoreLogoutIntent(uint64_t a1)
{
  result = IMGetUserIgnoreLogoutIntent();
  if (result != a1)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    v4 = *MEMORY[0x1E695E8B8];
    v5 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(@"UserIgnoreLogoutIntent", v3, @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

    return CFPreferencesSynchronize(@"com.apple.MobileSMS", v4, v5);
  }

  return result;
}

uint64_t sub_1A8694088()
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v0 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v0 postNotificationName:@"com.apple.IMSharedUtilities.IMUserRegistrationFailureIntentChanged" object:0];
}

void sub_1A86940E8()
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1A8694088, @"com.apple.IMSharedUtilities.IMUserRegistrationFailureIntentChangedInternal", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void *IMGetUserIgnoreFailureWaitingForCloudIntent()
{
  result = CFPreferencesCopyValue(@"UserIgnoreFailureWaitingIntent", @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    return ([result integerValue] != 0);
  }

  return result;
}

void IMSetUserIgnoreFailureWaitingForCloudIntent(uint64_t a1)
{
  if (IMGetUserIgnoreFailureWaitingForCloudIntent() != a1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    v3 = *MEMORY[0x1E695E8B8];
    v4 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(@"UserIgnoreFailureWaitingIntent", v2, @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(@"com.apple.MobileSMS", v3, v4);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.IMSharedUtilities.IMUserRegistrationFailureIntentChangedInternal", 0, 0, 1u);
}

void *IMGetUserIgnoreFailureUpdateAppleIDIntent()
{
  result = CFPreferencesCopyValue(@"UserIgnoreFailureSyncingIntent", @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    return ([result integerValue] != 0);
  }

  return result;
}

void IMSetUserIgnoreFailureUpdateAppleIDIntent(uint64_t a1)
{
  if (IMGetUserIgnoreFailureUpdateAppleIDIntent() != a1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    v3 = *MEMORY[0x1E695E8B8];
    v4 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(@"UserIgnoreFailureSyncingIntent", v2, @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(@"com.apple.MobileSMS", v3, v4);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.IMSharedUtilities.IMUserRegistrationFailureIntentChangedInternal", 0, 0, 1u);
  }
}

void sub_1A8694F70()
{
  v0 = qword_1EB30B030;
  qword_1EB30B030 = &unk_1F1BFADC0;
}

void sub_1A8694FCC()
{
  v0 = qword_1EB30B040;
  qword_1EB30B040 = &unk_1F1BFADD8;
}

void sub_1A869518C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412546;
      v5 = &unk_1F1BFA6B8;
      v6 = 2112;
      v7 = v3;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "apply-imessage-junk-filter: Client (%@) Server (%@)", &v4, 0x16u);
    }
  }
}

void sub_1A86952A0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412546;
      v5 = &unk_1F1BFA6B8;
      v6 = 2112;
      v7 = v3;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "apply-imessage-junk-filter: Client (%@) Server (%@)", &v4, 0x16u);
    }
  }
}

uint64_t sub_1A86953F8()
{
  v0 = objc_alloc_init(IMOffGridModeInvitationManager);
  qword_1ED8C9920 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8695858(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IMLogHandleForCategory("IMOffGridModeInvitationManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2F2C(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0, 0, v5);
    }
  }

  else
  {
    v14 = IMOSLoggingEnabled();
    if (a2)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 32);
          v20 = 138412290;
          v21 = v16;
          _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Handle is already invited: %@", &v20, 0xCu);
        }
      }

      v17 = *(a1 + 56);
      if (v17)
      {
        (*(v17 + 16))(v17, 0, 1, 0, 0);
      }
    }

    else
    {
      if (v14)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 32);
          v20 = 138412290;
          v21 = v19;
          _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Handle is not already invited. Initiating invitation flow for handle: %@", &v20, 0xCu);
        }
      }

      [*(a1 + 40) _inviteHandleID:*(a1 + 32) fromSenderHandle:*(a1 + 48) completion:*(a1 + 56)];
    }
  }
}

void sub_1A8695EDC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8695DE0);
  }

  _Unwind_Resume(a1);
}

void sub_1A8695F10(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory("IMOffGridModeInvitationManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2F2C(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = *(a1 + 56);
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v27 = [v5 count];
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Removing already invited handles, total of %lu invited handles", buf, 0xCu);
      }
    }

    [*(a1 + 32) minusSet:v5];
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [*(a1 + 32) count];
        *buf = 134217984;
        v27 = v18;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Final set of URIs to invite has %lu handles", buf, 0xCu);
      }
    }

    if ([*(a1 + 32) count])
    {
      v19 = [*(a1 + 40) offGridStateManager];
      v20 = *(a1 + 32);
      v21 = [objc_alloc(MEMORY[0x1E69A5428]) initWithPrefixedURI:*(a1 + 48)];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1A8696250;
      v24[3] = &unk_1E7828EC8;
      v25 = *(a1 + 56);
      [v19 inviteHandles:v20 fromSenderHandle:v21 withDictionaryPayload:MEMORY[0x1E695E0F8] completion:v24];

      v15 = v25;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "No URIs to invite", buf, 2u);
        }
      }

      v23 = *(a1 + 56);
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      (*(v23 + 16))(v23, v15);
    }
  }
}

void sub_1A8696250(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12 && IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Error inviting handles %@", &v17, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v9 count];
      v17 = 134217984;
      v18 = v15;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Invited %lu handles", &v17, 0xCu);
    }
  }

  v16 = [v9 __imSetByApplyingBlock:&unk_1F1BA6708];
  (*(*(a1 + 32) + 16))();
}

void sub_1A869650C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_19;
  }

  if (a2)
  {
LABEL_4:
    [*(a1 + 32) _inviteHandleID:*(a1 + 40) fromSenderHandle:*(a1 + 48) completion:*(a1 + 56)];
    goto LABEL_19;
  }

  v6 = [*(a1 + 32) _isHandleIDEligibleToReceiveAutomaticInvitation:*(a1 + 40)];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Handle is eligible to receive an automatic invitation, will repair failed validation token.", buf, 2u);
      }
    }

    goto LABEL_4;
  }

  if (v7)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Handle is neither invited nor eligible to receive an automatic invitation, will not repair the failed validation token.", v14, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Not repairing invalid validation token.", v12, 2u);
    }
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMOffGridModeInvitationManagerErrorDomain" code:2 userInfo:0];
  (*(*(a1 + 56) + 16))();

LABEL_19:
}

void sub_1A8696864(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = IMLogHandleForCategory("IMOffGridModeInvitationManager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2F98(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      v21 = *(v20 + 16);
LABEL_12:
      v21();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Completed inviting handles", v24, 2u);
      }
    }

    v23 = *(a1 + 32);
    if (v23)
    {
      v21 = *(v23 + 16);
      goto LABEL_12;
    }
  }
}

uint64_t sub_1A8696B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    [*(a1 + 32) _isHandleAlreadyInvited:*(a1 + 40) idsInvitedHandles:a2];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

BOOL sub_1A8696C34(uint64_t a1, uint64_t a2)
{
  v2 = [IMContactStore validateAndCleanupID:a2];
  v3 = +[IMContactStore sharedInstance];
  v4 = [v3 fetchCNContactForHandleWithID:v2];

  v5 = [IMContactStore isCNContactAKnownContact:v4];
  return v5;
}

void sub_1A8696EF4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8696EB4);
  }

  _Unwind_Resume(a1);
}

void sub_1A86970F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 userInfo];
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A278]];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

uint64_t sub_1A86990D4(void *a1, const char *a2, double a3)
{
  if (a3 > 1000000000.0)
  {
    a3 = a3 / 1000000000.0;
  }

  return [a1 dateWithTimeIntervalSinceReferenceDate:a3];
}

uint64_t sub_1A86990EC()
{
  result = MEMORY[0x1AC570AA0](@"IDSCurrentServerTime", @"IDSFoundation");
  qword_1ED8C96A0 = result;
  return result;
}

BOOL sub_1A8699144(void *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  [a1 timeIntervalSinceReferenceDate];
  v6 = v5;
  [v4 timeIntervalSinceReferenceDate];
  v8 = v7;

  return vabdd_f64(v6, v8) < 0.00001;
}

BOOL sub_1A86991B4(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 components:30 fromDate:v3];

  v5 = [v2 components:30 fromDate:a1];
  v6 = [v4 day];
  if (v6 == [v5 day] && (v7 = objc_msgSend(v4, "month"), v7 == objc_msgSend(v5, "month")) && (v8 = objc_msgSend(v4, "year"), v8 == objc_msgSend(v5, "year")))
  {
    v9 = [v4 era];
    v10 = v9 == [v5 era];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1A86992C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:16 fromDate:v5 toDate:a1 options:0];

  v8 = [v7 day];
  return v8;
}

uint64_t sub_1A8699340(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:32 fromDate:v5 toDate:a1 options:0];

  v8 = [v7 hour];
  return v8;
}

uint64_t sub_1A86993C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:32 fromDate:v5 toDate:a1 options:0];

  v8 = [v7 minute];
  return v8;
}

uint64_t sub_1A8699440(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:128 fromDate:v5 toDate:a1 options:0];

  v8 = [v7 second];
  return v8;
}

id sub_1A86994C0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
  }

  v6 = v5;

  return v6;
}

id sub_1A869951C(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedLongLongValue];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = *&v4;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Converting timestamp: %@ to date", &v14, 0xCu);
      }
    }

    v7 = v5 / 1000000000.0;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 134217984;
        v15 = v7;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "  => seconds: %f", &v14, 0xCu);
      }
    }

    if (v7 <= 600000.0)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "  => Returning current date, failed sanity", &v14, 2u);
        }
      }

      v9 = [MEMORY[0x1E695DF00] date];
    }

    else
    {
      v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v7];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = *&v9;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "  => Returning date: %@", &v14, 0xCu);
        }
      }
    }

    v11 = [MEMORY[0x1E695DF00] __im_clampDate:v9];
  }

  else
  {
    v11 = [MEMORY[0x1E695DF00] date];
  }

  return v11;
}

uint64_t sub_1A86997F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:2097918 fromDate:a1];
  v8 = [v6 components:2097918 fromDate:v5];

  v9 = [v7 isEqual:v8];
  return v9;
}

id sub_1A869989C()
{
  if (qword_1EB30B060 != -1)
  {
    sub_1A88C33F8();
  }

  v1 = qword_1EB30B058;

  return v1;
}

void sub_1A86998E0()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = qword_1EB30B058;
  qword_1EB30B058 = v0;

  [qword_1EB30B058 setFormatOptions:1907];
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [qword_1EB30B058 setTimeZone:v2];
}

id sub_1A8699968(uint64_t a1)
{
  v2 = [objc_opt_class() __im_serialization_dateFormatter];
  v3 = [v2 stringFromDate:a1];

  return v3;
}

id sub_1A86999C0(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 __im_serialization_dateFormatter];
    v6 = [v5 dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1A8699A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:a3];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [v6 dateByAddingComponents:v5 toDate:a1 options:0];

  return v7;
}

void sub_1A8699B0C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B068 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B068 = v0;
  }
}

void sub_1A8699BE8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B078 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B078 = v0;
  }
}

void sub_1A8699CC4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A948 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A948 = v0;
  }
}

void sub_1A8699DA0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B088 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B088 = v0;
  }
}

void sub_1A8699E7C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3095E0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3095E0 = v0;
  }
}

void sub_1A8699F5C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B098 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B098 = v0;
  }
}

void sub_1A869A03C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B0A8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B0A8 = v0;
  }
}

void sub_1A869A120()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3094D8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3094D8 = v0;
  }
}

void sub_1A869A1FC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B0B0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B0B0 = v0;
  }
}

void sub_1A869A2D8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A450 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A450 = v0;
  }
}

void sub_1A869A3B4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B0C0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B0C0 = v0;
  }
}

void sub_1A869A4B4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B0D0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B0D0 = v0;
  }
}

void sub_1A869A590()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A480 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A480 = v0;
  }
}

void sub_1A869A66C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B0E0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B0E0 = v0;
  }
}

void sub_1A869A748()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3093C0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3093C0 = v0;
  }
}

void sub_1A869A824()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B0E8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B0E8 = v0;
  }
}

void sub_1A869A900()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3093D0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3093D0 = v0;
  }
}

void sub_1A869A9DC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309498 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309498 = v0;
  }
}

void sub_1A869AAB8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B0F8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B0F8 = v0;
  }
}

void sub_1A869AB94()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309480 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309480 = v0;
  }
}

void sub_1A869AC70()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309470 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309470 = v0;
  }
}

id IMSMWorkoutAlwaysPromptActionIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1EB30B100;
  v9 = qword_1EB30B100;
  if (!qword_1EB30B100)
  {
    v1 = sub_1A869D5AC();
    v7[3] = dlsym(v1, "SMWorkoutAlwaysPromptActionIdentifier");
    qword_1EB30B100 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    sub_1A88C02E0();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

uint64_t IMShouldDropIncomingCheckInMessage(void *a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "No URL for check-in message, skipping letting SafetyMonitorManager know", v13, 2u);
      }
    }

    goto LABEL_15;
  }

  v7 = [sub_1A869AFF0() defaultManager];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      *v13 = 138412802;
      *&v13[4] = v5;
      *&v13[12] = 2112;
      if (a3)
      {
        v9 = @"YES";
      }

      *&v13[14] = v6;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Asking SafetyMonitorManager if we should drop incoming message with URL: %@ from handle: %@, isFromMe %@", v13, 0x20u);
    }
  }

  v10 = [v7 shouldDropMessage:v5 from:v6 fromMe:{a3, *v13}];

LABEL_16:
  return v10;
}

id sub_1A869AFF0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED8C9820;
  v7 = qword_1ED8C9820;
  if (!qword_1ED8C9820)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A869D720;
    v3[3] = &unk_1E78261C8;
    v3[4] = &v4;
    sub_1A869D720(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A869B0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IMInformSafetyMonitorManagerOfOutgoingMessage(void *a1, void *a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (v7)
  {
    v10 = [sub_1A869AFF0() defaultManager];
    if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = @"NO";
          *v14 = 138413058;
          *&v14[4] = v7;
          if (a3)
          {
            v12 = @"YES";
          }

          *&v14[12] = 2112;
          *&v14[14] = v8;
          v15 = 2112;
          v16 = v12;
          v17 = 2112;
          v18 = v9;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager of an outgoing message with URL: %@ guid: %@ was success: %@, error %@", v14, 0x2Au);
        }
      }

      [v10 iMessageSendFor:v7 guid:v8 successful:a3 withError:{v9, *v14}];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "No URL for check-in message, skipping letting SafetyMonitorManager know", v14, 2u);
    }
  }
}

void IMInformSafetyMonitorManagerOfIncomingMessage(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [sub_1A869AFF0() defaultManager];
    if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = @"NO";
          *v11 = 138412802;
          *&v11[4] = v5;
          *&v11[12] = 2112;
          if (a3)
          {
            v9 = @"YES";
          }

          *&v11[14] = v6;
          v12 = 2112;
          v13 = v9;
          _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager that of an incoming message with URL: %@ from handle: %@, isFromMe %@", v11, 0x20u);
        }
      }

      [v7 iMessageReceived:v5 fromHandle:v6 fromMe:{a3, *v11}];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "No URL for check-in message, skipping letting SafetyMonitorManager know", v11, 2u);
    }
  }
}

void IMInformSafetyMonitorManagerOfDeletedMessages(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [sub_1A869AFF0() defaultManager];
    v3 = objc_opt_respondsToSelector();
    v4 = IMOSLoggingEnabled();
    if (v3)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v7 = 138412290;
          v8 = v1;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager of deleted messages URLs: %@ ", &v7, 0xCu);
        }
      }

      [v2 iMessageDeletedFor:v1];
    }

    else if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "NOT Informing SafetyMonitorManager of deleted messages URLs: %@ since SMManager does not respond to iMessageDeletedFor:", &v7, 0xCu);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "No URLs passed in, skipping letting SafetyMonitorManager know of message deletions", &v7, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

void IMInformSafetyMonitorManagerOfDeletedConversation(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [sub_1A869AFF0() defaultManager];
    v3 = objc_opt_respondsToSelector();
    v4 = IMOSLoggingEnabled();
    if (v3)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v7 = 138412290;
          v8 = v1;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager of deleted conversation with: %@ ", &v7, 0xCu);
        }
      }

      [v2 iMessageConversationDeletedFor:v1];
    }

    else if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "NOT Informing SafetyMonitorManager of deleted conversation with: %@ since SMManager does not respond to iMessageConversationDeletedFor:", &v7, 0xCu);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "No receiver handles passed in, skipping letting SafetyMonitorManager know of conversation deletions", &v7, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

void IMInformSafetyMonitorManagerOfScheduledSendScheduledFor(void *a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if ([v8 length])
  {
    v10 = [sub_1A869AFF0() defaultManager];
    if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = @"NO";
          *v16 = 138413058;
          *&v16[4] = v7;
          if (a3)
          {
            v12 = @"YES";
          }

          *&v16[12] = 2112;
          *&v16[14] = v8;
          v17 = 2112;
          v18 = v12;
          v19 = 2112;
          v20 = v9;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager that scheduled message send was scheduled with URL: %@ guid: %@ was success: %@, error %@", v16, 0x2Au);
        }
      }

      [v10 iMessageScheduledSendScheduledFor:v7 guid:v8 successful:a3 withError:{v9, *v16}];
    }

    else if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          *v16 = 138412802;
          *&v16[4] = v8;
          *&v16[12] = 2112;
          if (a3)
          {
            v15 = @"YES";
          }

          *&v16[14] = v15;
          v17 = 2112;
          v18 = v9;
          _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager that scheduled message send was scheduled for messageGUID: %@ was success: %@, error %@", v16, 0x20u);
        }
      }

      [v10 iMessageScheduledSendScheduledFor:v8 successful:a3 withError:{v9, *v16, *&v16[8]}];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Invalid messageGUID passed in, skipping letting SafetyMonitorManager know", v16, 2u);
    }
  }
}

void IMInformSafetyMonitorManagerOfScheduledSendCancelledFor(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if ([v5 length])
  {
    v7 = [sub_1A869AFF0() defaultManager];
    if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = @"NO";
          *v11 = 138412802;
          *&v11[4] = v5;
          *&v11[12] = 2112;
          if (a2)
          {
            v9 = @"YES";
          }

          *&v11[14] = v9;
          v12 = 2112;
          v13 = v6;
          _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager that scheduled message send for messageGUID: %@ was cancelled with success: %@, error %@", v11, 0x20u);
        }
      }

      [v7 iMessageScheduledSendCancelFor:v5 successful:a2 withError:{v6, *v11}];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Invalid messageGUID passed in, skipping letting SafetyMonitorManager know", v11, 2u);
    }
  }
}

void IMInformSafetyMonitorManagerOfScheduledSendTriggeredFor(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length])
  {
    v2 = [sub_1A869AFF0() defaultManager];
    if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v4 = 138412290;
          v5 = v1;
          _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager that scheduled message send for messageGUID: %@ was triggered", &v4, 0xCu);
        }
      }

      [v2 iMessageScheduledSendTriggeredFor:v1];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v4) = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Invalid messageGUID passed in, skipping letting SafetyMonitorManager know", &v4, 2u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void IMFetchSafetyMonitorHandleSuggestions(void *a1)
{
  v1 = a1;
  v2 = [sub_1A869AFF0() defaultManager];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8601F54;
  v13 = sub_1A8602198;
  v14 = [MEMORY[0x1E695DF70] array];
  if (objc_opt_respondsToSelector())
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Fetching handles with which the user is most likely to initiate a session", buf, 2u);
      }
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1A869C0C4;
    v5[3] = &unk_1E7828F68;
    v7 = &v9;
    v6 = v1;
    [v2 fetchMostLikelyReceiverHandlesWithHandler:v5];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Failed to fetch SafetyMonitor Handle suggestions", buf, 2u);
      }
    }

    (*(v1 + 2))(v1, v10[5]);
  }

  _Block_object_dispose(&v9, 8);
}

void sub_1A869C0C4(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v5 localizedDescription];
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Error fetching likelySessionHandles: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v6)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v23 count];
        v11 = [0 localizedDescription];
        *buf = 134218242;
        v30 = v10;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "%lu handles received.Error: %@", buf, 0x16u);
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v23;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v16 primaryHandle];
          v18 = [v17 length] == 0;

          if (!v18)
          {
            v19 = [v16 primaryHandle];
            v20 = [IMContactStore validateAndCleanupID:v19];

            if ([v20 length])
            {
              [*(*(*(a1 + 40) + 8) + 40) addObject:v20];
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v30 = v22;
      _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Returning likelySessionHandles: %@", buf, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1A869C3EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A869C31CLL);
  }

  _Unwind_Resume(a1);
}

id sub_1A869C434()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED8C9750;
  v7 = qword_1ED8C9750;
  if (!qword_1ED8C9750)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A869D778;
    v3[3] = &unk_1E78261C8;
    v3[4] = &v4;
    sub_1A869D778(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A869C4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A869C514(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 localizedDescription];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Error fetching shouldShowKeyboardSuggestionsForInitiator: %@", &v7, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void IMShouldShowTipKitSuggestionsForCheckIn(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (![v5 length] || !objc_msgSend(v6, "length"))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Invalid handle ID passed in :%@, %@", buf, 0x16u);
      }
    }

    v7[2](v7, 0);
  }

  v9 = [sub_1A869AFF0() defaultManager];
  if (objc_opt_respondsToSelector())
  {
    v10 = [objc_alloc(sub_1A869C434()) initWithPrimaryHandle:v5 secondaryHandles:MEMORY[0x1E695E0F0]];
    v11 = [objc_alloc(sub_1A869C434()) initWithPrimaryHandle:v6 secondaryHandles:MEMORY[0x1E695E0F0]];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A869C8D0;
    v13[3] = &unk_1E7828598;
    v14 = v7;
    [v9 shouldShowTipKitSuggestionsForInitiator:v10 receiver:v11 handler:v13];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Failed to fetch SafetyMonitor TipKit suggestion policy", buf, 2u);
      }
    }

    v7[2](v7, 0);
  }
}

void sub_1A869C8D0(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 localizedDescription];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Error fetching shouldShowTipKitSuggestionsForInitiator: %@", &v7, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t IMPopulateNotificationUserInfoForCheckIn(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 length];
  if (v5 && v7 && v8)
  {
    v9 = [sub_1A869AFF0() defaultManager];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 prepareUserInfoForNotificationContent:v5 initiatorHandle:v6 messageUrl:v7];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "SafetyMonitor does not respond to prepareUserInfoForNotificationContent. Defaulting to DefaultDeliveryRequest", &v14, 2u);
        }
      }

      v10 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412802;
        v15 = v5;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Invalid parameter passed in :%@, %@, %@", &v14, 0x20u);
      }
    }

    v10 = 0;
  }

  return v10;
}

void IMRespondToNotificationWithIdentifier(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [sub_1A869AFF0() defaultManager];
  if (objc_opt_respondsToSelector())
  {
    [v11 respondToNotificationWithIdentifier:v7 sessionIdentifier:v8 actionIdentifier:v9 handler:v10];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "SafetyMonitor does not respond to respondToNotificationWithIdentifier.", v13, 2u);
    }
  }
}

void IMInformSafetyMonitorManagerOfChangedGroupMembership(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [sub_1A869AFF0() defaultManager];
    v3 = objc_opt_respondsToSelector();
    v4 = IMOSLoggingEnabled();
    if (v3)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v7 = 138412290;
          v8 = v1;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager of changed group membership with: %@ ", &v7, 0xCu);
        }
      }

      [v2 iMessageGroupMembershipChangedFor:v1];
    }

    else if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "NOT Informing SafetyMonitorManager of changed group membership: %@ since SMManager does not respond to iMessageGroupMembershipChangedFor:", &v7, 0xCu);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "No groupID passed in, skipping letting SafetyMonitorManager know of group membership change", &v7, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

void IMInformSafetyMonitorManagerOfKickFromGroup(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [sub_1A869AFF0() defaultManager];
    v3 = objc_opt_respondsToSelector();
    v4 = IMOSLoggingEnabled();
    if (v3)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v7 = 138412290;
          v8 = v1;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager of kick from group with: %@ ", &v7, 0xCu);
        }
      }

      [v2 kickedFromIMessageGroupWith:v1];
    }

    else if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "NOT Informing SafetyMonitorManager of kick from group: %@ since SMManager does not respond to kickedFromIMessageGroupWith:", &v7, 0xCu);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "No groupID passed in, skipping letting SafetyMonitorManager know of kick from group", &v7, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

void IMInformSafetyMonitorManagerOfChangedGroupDisplayName(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [sub_1A869AFF0() defaultManager];
    v3 = objc_opt_respondsToSelector();
    v4 = IMOSLoggingEnabled();
    if (v3)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v7 = 138412290;
          v8 = v1;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager of changed group display name with: %@ ", &v7, 0xCu);
        }
      }

      [v2 iMessageGroupDisplayNameChangedFor:v1];
    }

    else if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "NOT Informing SafetyMonitorManager of changed group display name: %@ since SMManager does not respond to iMessageGroupDisplayNameChangedFor:", &v7, 0xCu);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "No groupID passed in, skipping letting SafetyMonitorManager know of group display name change", &v7, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

void IMInformSafetyMonitorManagerOfChangedGroupPhoto(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [sub_1A869AFF0() defaultManager];
    v3 = objc_opt_respondsToSelector();
    v4 = IMOSLoggingEnabled();
    if (v3)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v7 = 138412290;
          v8 = v1;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Informing SafetyMonitorManager of changed group photo with: %@ ", &v7, 0xCu);
        }
      }

      [v2 iMessageGroupPhotoChangedFor:v1];
    }

    else if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "NOT Informing SafetyMonitorManager of changed group photo: %@ since SMManager does not respond to iMessageGroupPhotoChangedFor:", &v7, 0xCu);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "No groupID passed in, skipping letting SafetyMonitorManager know of group photo change", &v7, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

id IMLTDisplayNameForContext(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v3 lt_displayNameForContext:a2 inTargetLocale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *sub_1A869D55C(uint64_t a1)
{
  v2 = sub_1A869D5AC();
  result = dlsym(v2, "SMWorkoutAlwaysPromptActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB30B100 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A869D5AC()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!qword_1ED8C9838)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_1A869D6AC;
    v3[4] = &unk_1E7826200;
    v3[5] = v3;
    v4 = xmmword_1E7828F88;
    v5 = 0;
    qword_1ED8C9838 = _sl_dlopen();
  }

  v0 = qword_1ED8C9838;
  v1 = v3[0];
  if (!qword_1ED8C9838)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1A869D6AC()
{
  result = _sl_dlopen();
  qword_1ED8C9838 = result;
  return result;
}

Class sub_1A869D720(uint64_t a1)
{
  sub_1A869D5AC();
  result = objc_getClass("SMSafetyMonitorManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED8C9820 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1A88C35B0();
    return sub_1A869D778(v3);
  }

  return result;
}

Class sub_1A869D778(uint64_t a1)
{
  sub_1A869D5AC();
  result = objc_getClass("SMHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED8C9750 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1A88C35D8();
    return [(IMSharedEmergencyInfo *)v3 infoFromDictionary:v4 isStewieTranscriptSharingMessage:v5, v6];
  }

  return result;
}

uint64_t sub_1A869F360(uint64_t a1)
{
  [*(a1 + 40) testLog:{@"actually starting test batch %ld of %ld", *(a1 + 48), *(a1 + 56)}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A869F3FC;
  v4[3] = &unk_1E7828FD8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v5 = *(a1 + 48);
  return [v2 runTest:v4];
}

uint64_t sub_1A869F3FC(uint64_t a1)
{
  [*(a1 + 32) testLog:{@"finished test batch %ld of %ld", *(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v2, sel_runTestsIfNeededWithRepeatCount_withCount_);
}

uint64_t sub_1A869F5F8()
{
  v0 = objc_alloc_init(IMSafetyMonitorCoordinator);
  qword_1ED8C97B0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86A2318(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Received Me Card Picker Changed Notification (IMContactStore)", v5, 2u);
    }
  }

  return [a2 meCardChanged:0];
}

void sub_1A86A2C1C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A86A2C08);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A86A3184(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 addEntriesToIDToCNContactMap:v2];
}

void sub_1A86A37B0()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:IMContactStoreBatchLoadCompleteNotification object:0];
}

void sub_1A86A40A4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A86A4098);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A86A4250(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Updating Current History token", v3, 2u);
    }
  }

  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
}

void sub_1A86A4DA0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A86A4D28);
  }

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1A86A4DFC(uint64_t a1, void *a2, _BYTE *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v7[3] currentHistoryToken];
  [v7 setCurrentHistoryToken:v8];

  [IMContactStore logCNContact:v6];
  *a3 = 1;
}

void sub_1A86A5720(void *a1)
{
  v2 = a1[4];
  v3 = v2[7];
  if (!v3)
  {
    [v2 generateCNIDToHandleIDMap];
    v3 = *(a1[4] + 56);
  }

  v7 = [v3 objectForKey:a1[5]];
  v4 = [v7 copy];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_1A86A5DF0(uint64_t a1)
{
  if (!*(*(a1 + 32) + 64))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = Mutable;
  }

  [IMContactStore logCNContact:*(a1 + 40) andID:*(a1 + 48)];
  [*(*(a1 + 32) + 64) setObject:*(a1 + 40) forKey:*(a1 + 56)];
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) identifier];
  [v6 addIDToCNIDToHandleIDsMap:v5 withCNID:v7];

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);

  return [IMContactStore logCNContact:v8 andID:v9];
}

void sub_1A86A61CC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKey:*(*(*(a1 + 56) + 8) + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40) && MEMORY[0x1AC570A50](*(a1 + 40)) && ([*(a1 + 40) hasPrefix:@"+"] & 1) == 0)
  {
    v12 = [IMContactStore dialingCodeForID:*(a1 + 40)];
    if ([v12 length])
    {
      v5 = [*(a1 + 40) stringByReplacingOccurrencesOfString:v12 withString:&stru_1F1BB91F0];
      v6 = MEMORY[0x1AC570A80]();
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      if ([*(*(*(a1 + 56) + 8) + 40) length])
      {
        v9 = [*(*(a1 + 32) + 64) objectForKey:*(*(*(a1 + 56) + 8) + 40)];
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }
  }
}

uint64_t sub_1A86A6554(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) identifier];
  [v2 removeIDFromCNIDToHandleIDsMap:v3 withCNID:v4];

  v5 = *(a1 + 56);

  return [IMContactStore logHandleID:v5];
}

uint64_t sub_1A86A6854(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) identifier];
  [v2 removeIDFromCNIDToHandleIDsMap:v3 withCNID:v4];

  [*(*(a1 + 32) + 64) setObject:*(a1 + 56) forKey:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 56) identifier];
  [v5 addIDToCNIDToHandleIDsMap:v6 withCNID:v7];

  v8 = *(a1 + 56);
  v9 = *(a1 + 64);

  return [IMContactStore logCNContact:v8 andID:v9];
}

uint64_t sub_1A86A6B14(void *a1)
{
  [*(a1[4] + 64) removeObjectForKey:a1[5]];
  [*(a1[4] + 64) setObject:a1[6] forKey:a1[5]];
  v2 = a1[7];

  return [IMContactStore logHandleID:v2];
}

void sub_1A86A6C5C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 64) allKeys];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_1A86A6D6C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = Mutable;

    v2 = *(*(a1 + 32) + 64);
  }

  v6 = *(a1 + 40);

  return [v2 addEntriesFromDictionary:v6];
}

void sub_1A86A6EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A86A6F00(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Accepted contacts changed", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86A7000;
    block[3] = &unk_1E7828050;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t sub_1A86A7000(uint64_t a1)
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_checkForAcceptedContactStoreChanges object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel_checkForAcceptedContactStoreChanges withObject:0 afterDelay:1.0];
}

uint64_t sub_1A86A79C8(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeAllObjects];
  v2 = *(*(a1 + 32) + 56);

  return [v2 removeAllObjects];
}

void sub_1A86A7BC4(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v23 = 0;
  v4 = [v3 enumeratorForChangeHistoryFetchRequest:v2 error:&v23];
  v5 = v23;
  if (v4)
  {
    v6 = objc_alloc_init(IMContactStoreChangeHistoryEventsHandler);
    v7 = [v4 value];
    v8 = [v7 nextObject];
    if (v8)
    {
      v9 = 1;
      while (1)
      {
        v10 = v9;
        v11 = objc_autoreleasePoolPush();
        [v8 acceptEventVisitor:v6];
        if ([(IMContactStoreChangeHistoryEventsHandler *)v6 receivedDropEverythingEvent])
        {
          break;
        }

        objc_autoreleasePoolPop(v11);
        v12 = [v7 nextObject];

        v9 = v10 + 1;
        v8 = v12;
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Skipping Contact change history events after the Drop Everything Event", buf, 2u);
        }
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      v10 = 0;
    }

LABEL_17:
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v25 = v10;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Received at least %ld contact change history events.", buf, 0xCu);
      }
    }

    if (v10 >= 1)
    {
      v17 = +[IMContactStore IMContactStoreQueue];
      dispatch_async(v17, &unk_1F1BA6AE8);

      if (![(IMContactStoreChangeHistoryEventsHandler *)v6 receivedDropEverythingEvent])
      {
        v19 = *(a1 + 32);
        v20 = [v4 currentHistoryToken];
        [v19 setCurrentHistoryToken:v20];

        goto LABEL_30;
      }

      if ([(IMContactStoreChangeHistoryEventsHandler *)v6 receivedDropEverythingEvent])
      {
        [*(a1 + 32) setCurrentHistoryToken:0];
LABEL_30:
        v21 = [*(a1 + 32) getIDToCNContactMap];
        [IMContactStore logDictionary:v21];

        v22 = [*(a1 + 32) currentHistoryToken];
        [IMContactStore logHistoryToken:v22];

        goto LABEL_31;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Not updating history token since NO change history events were received.", buf, 2u);
      }
    }

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v5 description];
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Could not fetch Change History from CNContactStore error:%@", buf, 0xCu);
    }
  }

LABEL_31:
}

void sub_1A86A7FA8()
{
  v0 = +[IMContactStore CNIDToFormattedStringCache];
  [v0 removeAllObjects];
}

void sub_1A86A8390(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86A8344);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A86A86F0()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1EB30B108 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86A8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A86A8890(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v13 = [v2 stringByAppendingFormat:@"-%ld", *(a1 + 48)];

  v3 = +[IMContactStore CNIDToFormattedStringCache];
  v4 = [v3 objectForKey:v13];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
  }

  else
  {
    v7 = [(objc_class *)+[IMContactStore IMCNContactFormatterClass](IMContactStore stringFromContact:"stringFromContact:style:" style:*(a1 + 32), *(a1 + 48)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = +[IMContactStore CNIDToFormattedStringCache];
    v5 = v10;
    v11 = *(*(*(a1 + 40) + 8) + 40);
    if (v11)
    {
      [v10 setObject:v11 forKey:v13];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v5 setObject:v12 forKey:v13];
    }
  }
}

uint64_t sub_1A86A90C8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

uint64_t sub_1A86AA59C()
{
  v0 = objc_alloc_init(IMDPLogsCollector);
  qword_1ED8CA388 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMMutedChatListLogHandle()
{
  if (qword_1EB30B120 != -1)
  {
    sub_1A88C38DC();
  }

  v1 = qword_1EB30B118;

  return v1;
}

uint64_t sub_1A86AAC3C()
{
  v0 = os_log_create("com.apple.Messages", "IMMutedChatList");
  qword_1EB30B118 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86AAC80(uint64_t a1, void *a2)
{
  v3 = IMMutedChatListLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_DEFAULT, "Received Do Not Disturb List Changed Notification", v5, 2u);
  }

  [a2 _handleMutedChatListChanged];
  return +[_TtC17IMSharedUtilities35MutedConversationListRemoteNotifier notifyListChanged];
}

void sub_1A86AB01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A86AB048(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A86AB0C0;
  v4[3] = &unk_1E7829598;
  v5 = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

uint64_t sub_1A86AB0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 40;
  if (!a3)
  {
    v3 = 32;
  }

  return [*(*(*(a1 + v3) + 8) + 40) addObject:a2];
}

void sub_1A86ABA18()
{
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS.CKDNDList");
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"__kIMMutedChatListDidChangeNotification" object:0];
}

uint64_t sub_1A86ABF74(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A86ABFEC;
  v4[3] = &unk_1E78295E8;
  v5 = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void sub_1A86ABFEC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) unmuteDateForMuteIdentifier:?];

  if (!v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }
}

uint64_t sub_1A86AC060(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A86AC0D8;
  v4[3] = &unk_1E78295E8;
  v5 = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void sub_1A86AC0D8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) unmuteDateForMuteIdentifier:?];

  if (v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }
}

id sub_1A86AC2CC(void *a1)
{
  if ([a1 isSingleCharacterString:@"\uFFFE"])
  {
    v2 = [a1 attributesAtIndex:0 effectiveRange:0];
    v3 = [v2 _arrayForKey:@"__kIMRichCardsAttributeName"];
    v4 = [IMRichCards alloc];
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    v6 = [(IMRichCards *)v4 initWithCardArray:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [(IMRichCards *)v6 previewText];
      if (v8)
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = IMSharedUtilitiesFrameworkBundle();
        v11 = [v10 localizedStringForKey:@"RICH_CARDS_PREVIEW_FORMAT" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
        v12 = [v9 localizedStringWithFormat:v11, v8];
      }

      else
      {
        v10 = IMSharedUtilitiesFrameworkBundle();
        v12 = [v10 localizedStringForKey:@"RICH_CARDS_DEFAULT_PREVIEW" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1A86AC44C(void *a1)
{
  if ([a1 isSingleCharacterString:@"\uFFFF"])
  {
    v2 = [a1 attributesAtIndex:0 effectiveRange:0];
    v3 = [v2 _dictionaryForKey:@"__kIMSuggestedReplyAttributeName"];
    v4 = [[IMChipReply alloc] initWithDictionary:v3];
    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = IMSharedUtilitiesFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"SELECTED_OPTION_PREVIEW_FORMAT" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
      v8 = [(IMChipReply *)v4 suggestion];
      v9 = [v8 displayText];
      v10 = [v5 localizedStringWithFormat:v7, v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1A86AC5B8(void *a1)
{
  result = [a1 length];
  if (result)
  {
    v3 = [a1 string];
    v4 = [v3 substringFromIndex:{objc_msgSend(a1, "length") - 1}];
    v5 = [v4 isEqualToString:@"\uFFFF"];

    return v5;
  }

  return result;
}

uint64_t sub_1A86AC634(void *a1)
{
  if ([a1 isSingleCharacterString:@"\uFFFE"])
  {
    return 1;
  }

  return [a1 isSingleCharacterString:@"\uFFFF"];
}

uint64_t sub_1A86AC698(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([a1 length] == 1)
  {
    v5 = [a1 string];
    v6 = [v5 substringToIndex:1];
    v7 = [v6 isEqualToString:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 16;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          Data = PBReaderReadData();

          v14 = Data;
          v15 = 24;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

LABEL_40:
          *(a1 + 32) = v23;
          goto LABEL_41;
        }

        if (v12 != 2)
        {
          goto LABEL_24;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 8;
      }

      *(a1 + v15) = v14;
LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1A86AD1AC()
{
  v0 = objc_opt_new();
  qword_1ED8C95C0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86AD5F0(uint64_t a1)
{
  v4 = [MEMORY[0x1E698F350] discoverabilitySignal];
  v2 = [v4 source];
  v3 = [objc_alloc(MEMORY[0x1E698F278]) initWithIdentifier:*(a1 + 32) bundleID:@"com.apple.MobileSMS" context:0];
  [v2 sendEvent:v3];
}

id sub_1A86AD694()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E698DC80] sharedInstance];
  v1 = [v0 primaryAuthKitAccount];
  v2 = [v0 userIsSeniorForAccount:v1];
  v6 = @"u65_flag";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

__CFData *IMCreateASTCImageDataFromCGImageRef(CGImage *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if (v2)
  {
    if (qword_1EB3096B8 != -1)
    {
      sub_1A88C39AC();
    }

    v3 = CGImageDestinationCreateWithData(v2, @"com.apple.atx", 1uLL, 0);
    if (!v3 || (v4 = v3, CGImageDestinationAddImage(v3, a1, qword_1EB3096C0), v5 = CGImageDestinationFinalize(v4), CFRelease(v4), !v5))
    {

      return 0;
    }
  }

  return v2;
}

uint64_t IMFreeSpaceWriteDataToURL(void *a1, uint64_t a2, int a3)
{
  v6 = [a1 length];
  v7 = 0;
  if (a2 && v6)
  {
    v8 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    if (a3)
    {
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
    }

    v9 = MEMORY[0x1E695DF20];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v9 dictionaryWithObject:v10 forKey:*MEMORY[0x1E698B6C0]];
    [a1 length];
    CPFreeSpaceRequestBytesAtPathWithCompletionBlock();
    if (v8)
    {
      dispatch_group_wait(v8, 0x3B9ACA00uLL);
      dispatch_release(v8);
    }

    v7 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v7 & 1;
}

void sub_1A86AE0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef IMCreateThumbnailWithImageSourceAtIndexForMaxDimension(CGImageSource *a1, size_t a2, double a3)
{
  v22[6] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    LOWORD(v17) = 0;
    v13 = "ImageSource was null";
    v14 = v12;
    v15 = 2;
    goto LABEL_12;
  }

  v6 = IMLogHandleForCategory("IMAttachmentUtilities");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1A88C39C0(v6);
  }

  v7 = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E696DFE0];
  v21[0] = *MEMORY[0x1E696E0F0];
  v21[1] = v8;
  v22[0] = MEMORY[0x1E695E118];
  v22[1] = MEMORY[0x1E695E118];
  v21[2] = *MEMORY[0x1E696E108];
  v22[2] = [MEMORY[0x1E696AD98] numberWithLong:{fmin(a3, 4.61168602e18)}];
  v9 = *MEMORY[0x1E696E130];
  v21[3] = *MEMORY[0x1E696DFF8];
  v21[4] = v9;
  v22[3] = v7;
  v22[4] = v7;
  v21[5] = *MEMORY[0x1E696E0B0];
  v22[5] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  if (CGImageSourceGetCount(a1) > a2)
  {
    return CGImageSourceCreateThumbnailAtIndex(a1, a2, v10);
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = 134218240;
      Count = CGImageSourceGetCount(a1);
      v19 = 2048;
      v20 = a2;
      v13 = "Required image did not exist, count %zu, index %zu";
      v14 = v16;
      v15 = 22;
LABEL_12:
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, v13, &v17, v15);
    }
  }

  return 0;
}

void sub_1A86AE694(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86AE65CLL);
  }

  _Unwind_Resume(a1);
}

CFTypeRef sub_1A86AE6B4()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696D3D8];
  v2[0] = *MEMORY[0x1E696D898];
  v2[1] = v0;
  v3[0] = *MEMORY[0x1E696D3F0];
  v3[1] = &unk_1F1BFA6E8;
  v2[2] = *MEMORY[0x1E696D3F8];
  v3[2] = MEMORY[0x1E695E118];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  if (result)
  {
    result = CFRetain(result);
  }

  qword_1EB3096C0 = result;
  return result;
}

CGImageDestination *IMCreateHEICSImageDataFromCGImageRef(CGImage *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  result = CGImageDestinationCreateWithData(v2, @"public.heic", 1uLL, 0);
  if (result)
  {
    v4 = result;
    v5 = *MEMORY[0x1E696D330];
    v6[0] = &unk_1F1BFB1A8;
    CGImageDestinationAddImage(result, a1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1]);
    CGImageDestinationFinalize(v4);
    CFAutorelease(v4);
    return [(__CFData *)v2 copy];
  }

  return result;
}

__CFData *IMCreatePNGImageDataFromCGImageRef(CGImage *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v3 = v2;
  if (v2)
  {
    v4 = CGImageDestinationCreateWithData(v2, @"public.png", 1uLL, 0);
    if (!v4 || (v5 = v4, v6 = objc_alloc_init(MEMORY[0x1E695DF90]), v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:8], v8 = objc_alloc(MEMORY[0x1E695DF20]), v9 = objc_msgSend(v8, "initWithObjectsAndKeys:", v7, *MEMORY[0x1E696DE98], 0), objc_msgSend(v6, "setObject:forKey:", v9, *MEMORY[0x1E696DEB8]), v10 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", 2), objc_msgSend(v6, "setObject:forKey:", v10, *MEMORY[0x1E696DE90]), CGImageDestinationAddImage(v5, a1, v6), v11 = CGImageDestinationFinalize(v5), CFRelease(v5), v9, v6, v7, !v11))
    {

      return 0;
    }
  }

  return v3;
}

void sub_1A86AE99C(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = 0;
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) writeToURL:*(a1 + 40) options:1073741825 error:&v8];
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v4 = *(a1 + 40);
          *buf = 138412546;
          v10 = v4;
          v11 = 2112;
          v12 = v8;
          _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Failed to write preview with permissions via CPFreeSpaceRequestBytesAtPathWithCompletionBlock at URL: %@    error: %@", buf, 0x16u);
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) writeToURL:*(a1 + 40) atomically:1];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v5 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            v6 = *(a1 + 40);
            *buf = 138412290;
            v10 = v6;
            _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Failed to write preview with [NSData writeToURL:] at URL %@", buf, 0xCu);
          }
        }
      }
    }
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    dispatch_group_leave(v7);
  }
}

CGImageRef IMImageUtilsCreateImageFromImageWithCropRect(CGImage *a1, double a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 0;
  }

  v30 = CGRectStandardize(*&a2);
  v31 = CGRectIntegral(v30);
  DeviceRGB = 0;
  if (v31.size.width <= 0.0)
  {
    return DeviceRGB;
  }

  height = v31.size.height;
  if (v31.size.height <= 0.0)
  {
    return DeviceRGB;
  }

  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  v11 = CGImageGetWidth(a1);
  v12 = CGImageGetHeight(a1);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = v11;
  v32.size.height = v12;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v33 = CGRectIntersection(v32, v43);
  v34 = CGRectStandardize(v33);
  if (v34.size.width < width || v34.size.height < height)
  {
    DeviceRGB = 0;
    if (v34.size.width < 0.0)
    {
      return DeviceRGB;
    }

    if (v34.size.height < 0.0)
    {
      return DeviceRGB;
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (!DeviceRGB)
    {
      return DeviceRGB;
    }

    v14 = CGBitmapContextCreate(0, width, height, 8uLL, vcvtd_n_u64_f64(width, 2uLL), DeviceRGB, 0x2006u);
    CGColorSpaceRelease(DeviceRGB);
    if (v14)
    {
      CGContextSetFillColor(v14, dbl_1EB301108);
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.width = width;
      v35.size.height = height;
      CGContextFillRect(v14, v35);
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v15 = CGImageCreateWithImageInRect(a1, v36);
      if (v15)
      {
        v16 = v15;
        v44.origin.x = -x;
        v44.origin.y = -y;
        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = width;
        v37.size.height = height;
        v44.size.width = v11;
        v44.size.height = v12;
        v38 = CGRectIntersection(v37, v44);
        v17 = v38.origin.x;
        v18 = v38.origin.y;
        v19 = v38.size.width;
        v20 = v38.size.height;
        memset(&v28, 0, sizeof(v28));
        CGAffineTransformMakeScale(&v28, 1.0, -1.0);
        memset(&v27, 0, sizeof(v27));
        CGAffineTransformMakeTranslation(&v27, 0.0, height);
        v26 = v28;
        v39.origin.x = v17;
        v39.origin.y = v18;
        v39.size.width = v19;
        v39.size.height = v20;
        v40 = CGRectApplyAffineTransform(v39, &v26);
        v26 = v27;
        v41 = CGRectApplyAffineTransform(v40, &v26);
        v42 = CGRectStandardize(v41);
        CGContextDrawImage(v14, v42, v16);
        DeviceRGB = CGBitmapContextCreateImage(v14);
        CGImageRelease(v16);
      }

      else
      {
        DeviceRGB = 0;
      }

      CFRelease(v14);
      return DeviceRGB;
    }

    return 0;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;

  return CGImageCreateWithImageInRect(a1, *&v22);
}

__CFData *IMCroppedImageDataFromDataWithCropRect(const __CFData *a1, double a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 0;
  }

  if (!CGRectIsEmpty(*&a2))
  {
    v11 = CGImageSourceCreateWithData(a1, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
    ImageFromImageWithCropRect = IMImageUtilsCreateImageFromImageWithCropRect(ImageAtIndex, a2, a3, a4, a5);
    v10 = IMCreatePNGImageDataFromCGImageRef(ImageFromImageWithCropRect);
    if (ImageFromImageWithCropRect)
    {
      CFRelease(ImageFromImageWithCropRect);
    }

    if (ImageAtIndex)
    {
      CFRelease(ImageAtIndex);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    return v10;
  }

  return a1;
}

__CFData *IMRescaledImageDataFromDataForBiomeDonation(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CGImageSourceCreateWithData(a1, 0);
  [IMImageUtilities imageSourcePxSize:v1];
  v4 = [IMImageUtilities newThumbnailForTargetSize:v1 imageSize:1 imageSource:360.0 mode:360.0 scale:v2, v3, 2.0];
  v5 = IMCreatePNGImageDataFromCGImageRef(v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v5;
}

void sub_1A86AF4DC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B128 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B128 = v0;
  }
}

void sub_1A86AF5B8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B138 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B138 = v0;
  }
}

void sub_1A86AF694()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B140 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B140 = v0;
  }
}

void sub_1A86AF770()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3095A0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3095A0 = v0;
  }
}

void sub_1A86B0B68()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A8B0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A8B0 = v0;
  }
}

void sub_1A86B0C44()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B148 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B148 = v0;
  }
}

void sub_1A86B0D20()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B158 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B158 = v0;
  }
}

void sub_1A86B0DFC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B168 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B168 = v0;
  }
}

void sub_1A86B0F30()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B170 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B170 = v0;
  }
}

uint64_t sub_1A86B10C4(uint64_t a1)
{
  if (!IMIsRunningInIMDPersistenceAgent())
  {
    IMDispatchForNotify();
  }

  return [*(a1 + 32) _reloadOneChatForceDisabled];
}

void sub_1A86B12F4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B178 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B178 = v0;
  }
}

void sub_1A86B13E0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B188 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B188 = v0;
  }
}

void sub_1A86B14BC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B198 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B198 = v0;
  }
}

void sub_1A86B1598()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309388 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309388 = v0;
  }
}

void sub_1A86B1674()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B1A8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B1A8 = v0;
  }
}

void sub_1A86B1750()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3094F0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3094F0 = v0;
  }
}

void sub_1A86B182C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B1B8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B1B8 = v0;
  }
}

void sub_1A86B190C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B1C8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B1C8 = v0;
  }
}

void sub_1A86B19E8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB3093E8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB3093E8 = v0;
  }
}

void sub_1A86B1AC4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B1D8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B1D8 = v0;
  }
}

void sub_1A86B1BA4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B1E0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B1E0 = v0;
  }
}

void sub_1A86B1C80()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B1F0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B1F0 = v0;
  }
}

void sub_1A86B1D5C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B200 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B200 = v0;
  }
}

void sub_1A86B1E84()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A470 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A470 = v0;
  }
}

void sub_1A86B1F60()
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    byte_1EB30B210 = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    byte_1EB30B210 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B210 = v0;
  }
}

void sub_1A86B2064()
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    byte_1EB30B220 = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    byte_1EB30B220 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B220 = v0;
  }
}

void sub_1A86B2168()
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    byte_1EB30B230 = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    byte_1EB30B230 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B230 = v0;
  }
}

void sub_1A86B226C()
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    byte_1EB309398 = 0;
  }

  else if (_os_feature_enabled_impl())
  {
    byte_1EB309398 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309398 = v0;
  }
}

void sub_1A86B2370()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B240 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B240 = v0;
  }
}

void sub_1A86B244C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B250 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B250 = v0;
  }
}

void sub_1A86B2528()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B260 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B260 = v0;
  }
}

void sub_1A86B2604()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B270 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B270 = v0;
  }
}

void sub_1A86B26E0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A4E8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A4E8 = v0;
  }
}

void sub_1A86B27BC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B280 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B280 = v0;
  }
}

void sub_1A86B289C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A8E0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A8E0 = v0;
  }
}

void sub_1A86B2978()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A8A0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A8A0 = v0;
  }
}

void sub_1A86B2A54()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A908 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A908 = v0;
  }
}

void sub_1A86B2B30()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B290 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B290 = v0;
  }
}

void sub_1A86B2CAC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B298 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B298 = v0;
  }
}

void sub_1A86B2D88()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B2A8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B2A8 = v0;
  }
}

void sub_1A86B2EC0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B2B8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B2B8 = v0;
  }
}

uint64_t sub_1A86B2FBC()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v0 = [v0 containsString:@"iPhone"];
  }

  byte_1EB30A508 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A86B3020()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B2C8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B2C8 = v0;
  }
}

void sub_1A86B30FC()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B2D0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B2D0 = v0;
  }
}

void sub_1A86B31D8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B2E0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B2E0 = v0;
  }
}

void sub_1A86B32B4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1ED8C9BB8 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1ED8C9BB8 = v0;
  }
}

void sub_1A86B3390()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B2F0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B2F0 = v0;
  }
}

void sub_1A86B346C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B300 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B300 = v0;
  }
}

void sub_1A86B3548()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B310 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B310 = v0;
  }
}

void sub_1A86B3624()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B320 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B320 = v0;
  }
}

void sub_1A86B40DC()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:3];
  v2 = [v0 setWithArray:{v1, v4, v5}];
  v3 = qword_1EB30B330;
  qword_1EB30B330 = v2;
}

void sub_1A86B4464()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B340 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B340 = v0;
  }
}

void sub_1A86B4540()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309428 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309428 = v0;
  }
}

void sub_1A86B461C()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B350 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B350 = v0;
  }
}

void sub_1A86B46F8()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB309378 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB309378 = v0;
  }
}

void sub_1A86B47D4()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30B360 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30B360 = v0;
  }
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 24;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          Data = PBReaderReadData();

          v14 = Data;
          v15 = 16;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

LABEL_40:
          *(a1 + 32) = v23;
          goto LABEL_41;
        }

        if (v12 != 2)
        {
          goto LABEL_24;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 8;
      }

      *(a1 + v15) = v14;
LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1A86B52BC(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addIndex:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "unsignedIntegerValue", v12)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];

  return v10;
}

id sub_1A86B53F0(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A86B54AC;
  v6[3] = &unk_1E78297A8;
  v7 = v2;
  v3 = v2;
  [a1 enumerateIndexesUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

void sub_1A86B54AC(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [*(a1 + 32) addObject:v3];
}

id IMMessagesDatabaseURL()
{
  if (qword_1EB30B378 != -1)
  {
    sub_1A88C4210();
  }

  v1 = qword_1EB30B370;

  return v1;
}

void sub_1A86B5FB0()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"sms.db" isDirectory:0];
  v1 = qword_1EB30B370;
  qword_1EB30B370 = v0;
}

id IMAttachmentsDirectoryURL()
{
  if (qword_1EB3096E8 != -1)
  {
    sub_1A88C4224();
  }

  v1 = qword_1EB3096E0;

  return v1;
}

void sub_1A86B6054()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"Attachments" isDirectory:1];
  v1 = qword_1EB3096E0;
  qword_1EB3096E0 = v0;
}

id IMExternalAttachmentsDirectoryURL()
{
  if (qword_1EB309698 != -1)
  {
    sub_1A88C4238();
  }

  v1 = qword_1EB309690;

  return v1;
}

void sub_1A86B60F8()
{
  v2 = IMHomeLibraryDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"MessagesMetaData" isDirectory:1];
  v1 = qword_1EB309690;
  qword_1EB309690 = v0;
}

void sub_1A86B6158()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFF8];
  v1 = [@"/var/mobile/Library/Caches/" stringByAppendingPathComponent:@"com.apple.MobileSMS"];
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];
  v3 = qword_1ED8C9A20;
  qword_1ED8C9A20 = v2;

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = qword_1ED8C9A20;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Caches directory is %@", &v5, 0xCu);
    }
  }
}

id IMNicknameCacheDirectoryURL()
{
  if (qword_1EB30B388 != -1)
  {
    sub_1A88C424C();
  }

  v1 = qword_1EB30B380;

  return v1;
}

void sub_1A86B62E4()
{
  v2 = IMExternalAttachmentsDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"NickNameCache" isDirectory:1];
  v1 = qword_1EB30B380;
  qword_1EB30B380 = v0;
}

id IMCollaborationNoticeDirectoryURL()
{
  if (qword_1EB30B398 != -1)
  {
    sub_1A88C4260();
  }

  v1 = qword_1EB30B390;

  return v1;
}

void sub_1A86B6388()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"CollaborationNoticeCache" isDirectory:1];
  v1 = qword_1EB30B390;
  qword_1EB30B390 = v0;
}

id IMStickerCacheDirectoryURL()
{
  if (qword_1EB30A550 != -1)
  {
    sub_1A88C4274();
  }

  v1 = qword_1EB30A548;

  return v1;
}

void sub_1A86B642C()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"StickerCache" isDirectory:1];
  v1 = qword_1EB30A548;
  qword_1EB30A548 = v0;
}

id IMStickerTransferInfoDirectoryURL()
{
  if (qword_1EB30A540 != -1)
  {
    sub_1A88C4288();
  }

  v1 = qword_1EB30A538;

  return v1;
}

void sub_1A86B64D0()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"transferInfo" isDirectory:1];
  v1 = qword_1EB30A538;
  qword_1EB30A538 = v0;
}

id IMBrowserSnapshotCacheDirectoryURL()
{
  if (qword_1EB3096D8 != -1)
  {
    sub_1A88C429C();
  }

  v1 = qword_1EB3096D0;

  return v1;
}

void sub_1A86B6574()
{
  v2 = IMCachesDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"BrowserSnapshots" isDirectory:1];
  v1 = qword_1EB3096D0;
  qword_1EB3096D0 = v0;
}

id IMBalloonPluginMetadataCacheDirectoryURL()
{
  if (qword_1EB30B3A8 != -1)
  {
    sub_1A88C42B0();
  }

  v1 = qword_1EB30B3A0;

  return v1;
}

void sub_1A86B6618()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"PluginMetaDataCache" isDirectory:1];
  v1 = qword_1EB30B3A0;
  qword_1EB30B3A0 = v0;
}

id IMSafeTemporaryDirectory()
{
  if (qword_1ED8C9A08 != -1)
  {
    sub_1A88C42C4();
  }

  v1 = qword_1ED8C9A00;

  return v1;
}

void sub_1A86B66BC()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFF8];
  v1 = NSTemporaryDirectory();
  v2 = [v0 fileURLWithPath:v1];
  v3 = qword_1ED8C9A00;
  qword_1ED8C9A00 = v2;

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = qword_1ED8C9A00;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Safe temporary directory is %@", &v5, 0xCu);
    }
  }
}

id IMTranscriptBackgroundDirectory()
{
  if (qword_1EB30B3B8 != -1)
  {
    sub_1A88C42D8();
  }

  v1 = qword_1EB30B3B0;

  return v1;
}

void sub_1A86B6834()
{
  v2 = IMExternalAttachmentsDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"TranscriptBackgroundCache" isDirectory:1];
  v1 = qword_1EB30B3B0;
  qword_1EB30B3B0 = v0;
}

void sub_1A86B6EC0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void *IMParserResultsForLogging(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_opt_class();
  if (v4)
  {
    Superclass = v4;
    do
    {
      MethodImplementation = class_getMethodImplementation(Superclass, sel_resultsForLogging);
      if (!MethodImplementation)
      {
        break;
      }

      v7 = (MethodImplementation)(a1, sel_resultsForLogging);
      if (!v7)
      {
        break;
      }

      [v2 addObjectsFromArray:v7];
      Superclass = class_getSuperclass(Superclass);
    }

    while (Superclass);
  }

  [v2 sortUsingSelector:sel_compare_];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = [a1 valueForKey:*(*(&v15 + 1) + 8 * v10)];
        if (!v11)
        {
          v11 = [MEMORY[0x1E695DFB0] null];
        }

        [v3 addObject:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E696AD60] string];
  if ([v2 count])
  {
    v13 = 0;
    do
    {
      [v12 appendFormat:@"    %@: %@\n", objc_msgSend(v2, "objectAtIndex:", v13), objc_msgSend(v3, "objectAtIndex:", v13)];
      ++v13;
    }

    while (v13 < [v2 count]);
  }

  return v12;
}

IMXMLParser *sub_1A86B71B8()
{
  result = objc_alloc_init(IMXMLParser);
  qword_1ED8CA390 = result;
  return result;
}

uint64_t sub_1A86B7728(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 16) reset];
  *(*(a1 + 32) + 8) = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:a2];
  *(*(a1 + 32) + 32) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(*(a1 + 32) + 24) = 0;
  [*(*(a1 + 32) + 8) setDelegate:?];
  v4 = *(*(a1 + 32) + 8);

  return [v4 parse];
}

void sub_1A86B77B4(uint64_t a1)
{
  [*(*(a1 + 32) + 32) makeObjectsPerformSelector:sel_release];

  *(*(a1 + 32) + 32) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {

    *(*(a1 + 32) + 24) = 0;
    v2 = *(a1 + 32);
  }

  [*(v2 + 8) setDelegate:0];

  *(*(a1 + 32) + 8) = 0;
}

Class sub_1A86B7C68(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v5 == v4)
  {
    return 0;
  }

  Superclass = v5;
  while (1)
  {
    MethodImplementation = class_getMethodImplementation(Superclass, sel_name);
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_Frame", (MethodImplementation)(*(a1 + 32), sel_name), a2];
    v9 = NSClassFromString(v8);

    if (v9)
    {
      break;
    }

    Superclass = class_getSuperclass(Superclass);
    if (Superclass == v4)
    {
      return 0;
    }
  }

  return v9;
}

void sub_1A86B815C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86B80E0);
  }

  _Unwind_Resume(a1);
}

void sub_1A86B87DC(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v8 = *(*(a1 + 48) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
LABEL_7:

    goto LABEL_8;
  }

  v10 = v6;
  if (!v6)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(*(a1 + 40) + 8) + 24);
      v13 = *(*(*(a1 + 56) + 8) + 40);
      v14[0] = 67109378;
      v14[1] = v12;
      v15 = 2112;
      v16 = v13;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Blastdoor validation completed, result: %d, err: %@", v14, 0x12u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1A86B8984(uint64_t a1)
{
  sub_1A86B89DC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKUIBlastDoorDataSource");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30B3C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1A88C4300();
    sub_1A86B89DC();
  }
}

void sub_1A86B89DC()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!qword_1EB30B3D0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = sub_1A86B8AD8;
    v1[4] = &unk_1E7826200;
    v1[5] = v1;
    v2 = xmmword_1E7829840;
    v3 = 0;
    qword_1EB30B3D0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1EB30B3D0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1A86B8AD8()
{
  result = _sl_dlopen();
  qword_1EB30B3D0 = result;
  return result;
}

Class sub_1A86B8B4C(uint64_t a1)
{
  sub_1A86B89DC();
  result = objc_getClass("WKUIConfigurationPreviewGenerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EB30B3D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1A88C4328();
    return [(IMSpamFilterHelper *)v3 shouldDowngradeToRecipient:v4 fromSender:v5 ifCapableOfSMS:v6 withConversationDowngradeState:v7 andConversationHistoryState:v8, v9];
  }

  return result;
}

void sub_1A86B8EE0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A86B8E9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A86BB420(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectForKey:*(*(&v11 + 1) + 8 * v8)];
        v10 = [v9 integerValue];

        if (v10 != 1)
        {
          (*(*(a1 + 32) + 16))();
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1A86BBBF0()
{
  v4 = *MEMORY[0x1E69E9840];
  off_1EB30B3E8 = MEMORY[0x1AC570AB0]("IMDCNRecordIDForAliases", @"IMDPersistence");
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (off_1EB30B3E8)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "Linked linkedIMDCNRecordIDForAliases ok: %@", &v2, 0xCu);
    }
  }
}

void sub_1A86BBD20(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412546;
      v5 = &unk_1F1BFA700;
      v6 = 2112;
      v7 = v3;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "apply-international-spam-filter: Client (%@) Server (%@)", &v4, 0x16u);
    }
  }
}

void sub_1A86BBE34(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412546;
      v5 = &unk_1F1BFA700;
      v6 = 2112;
      v7 = v3;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "apply-international-spam-filter: Client (%@) Server (%@)", &v4, 0x16u);
    }
  }
}

void sub_1A86BC09C()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_INFO, "chinese-spam-filter enabled using Defaults", v1, 2u);
    }
  }
}

void sub_1A86BC144(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412546;
      v5 = &unk_1F1BFA700;
      v6 = 2112;
      v7 = v3;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "apply-chinese-spam-filter: Client (%@) Server (%@)", &v4, 0x16u);
    }
  }
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v27 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v28 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v28 & 0x7F) << v20;
            if ((v28 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v22;
          }

LABEL_44:
          *(a1 + 40) = v25;
          goto LABEL_28;
        }

        if (v12 == 2)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 8;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v17 = PBReaderReadString();

            v14 = v17;
            v15 = 24;
            goto LABEL_27;
          case 4:
            v18 = PBReaderReadString();

            v14 = v18;
            v15 = 32;
            goto LABEL_27;
          case 5:
            Data = PBReaderReadData();

            v14 = Data;
            v15 = 16;
LABEL_27:
            *(a1 + v15) = v14;
            goto LABEL_28;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_28:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}