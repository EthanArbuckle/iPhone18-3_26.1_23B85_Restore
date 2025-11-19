void sub_1B81098C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B810B110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B810B6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t isTraitCollectionAccessible(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69DDC38];
  v9 = *MEMORY[0x1E69DDC40];
  v10 = v1;
  v2 = *MEMORY[0x1E69DDC28];
  v11 = *MEMORY[0x1E69DDC30];
  v12 = v2;
  v13 = *MEMORY[0x1E69DDC20];
  v3 = MEMORY[0x1E695DEC8];
  v4 = a1;
  v5 = [v3 arrayWithObjects:&v9 count:5];
  v6 = [v4 preferredContentSizeCategory];

  v7 = [v5 containsObject:v6];
  return v7;
}

NSObject *CreateSuggestionsFetchDebounceDispatchTimer(NSObject *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1);
  if (v6)
  {
    v7 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    dispatch_source_set_event_handler(v6, v5);
    dispatch_resume(v6);
  }

  return v6;
}

void sub_1B8110E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B8111C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1B81162B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8118F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8119608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8119C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B811AB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t CNComposeFirstIndexInRangePassingTest(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 > a2)
  {
    goto LABEL_2;
  }

  if ((*(v5 + 2))(v5, a1))
  {
    a2 = a1;
    goto LABEL_5;
  }

  if (v6[2](v6, a2))
  {
    while (a1 + 1 < a2)
    {
      if (v6[2](v6, (a2 + a1) >> 1))
      {
        a2 = (a2 + a1) >> 1;
      }

      else
      {
        a1 = (a2 + a1) >> 1;
      }
    }
  }

  else
  {
LABEL_2:
    a2 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_5:

  return a2;
}

uint64_t CNComposeLastIndexInRangePassingTest(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 <= a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __CNComposeLastIndexInRangePassingTest_block_invoke;
    v11[3] = &unk_1E7CD2310;
    v12 = v5;
    IndexInRangePassingTest = CNComposeFirstIndexInRangePassingTest(a1, a2, v11);
    v9 = IndexInRangePassingTest - 1;
    if (IndexInRangePassingTest == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = a2;
    }

    if (IndexInRangePassingTest != a1)
    {
      v7 = v9;
    }
  }

  return v7;
}

uint64_t CNComposeLastIndexPassingTest(uint64_t a1, void *a2)
{
  if (a1)
  {
    return CNComposeLastIndexInRangePassingTest(0, a1 - 1, a2);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CNAutocompleteSharedContactStore()
{
  if (CNAutocompleteSharedContactStore_onceToken != -1)
  {
    CNAutocompleteSharedContactStore_cold_1();
  }

  v1 = CNAutocompleteSharedContactStore_store;

  return v1;
}

void __CNAutocompleteSharedContactStore_block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695CE28]);
  [v2 setIncludeLocalContacts:1];
  [v2 setIncludeSuggestedContacts:1];
  v0 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v2];
  v1 = CNAutocompleteSharedContactStore_store;
  CNAutocompleteSharedContactStore_store = v0;
}

id CNAutocompleteSharedLocalOnlyContactStore()
{
  if (CNAutocompleteSharedLocalOnlyContactStore_onceToken != -1)
  {
    CNAutocompleteSharedLocalOnlyContactStore_cold_1();
  }

  v1 = CNAutocompleteSharedLocalOnlyContactStore_store;

  return v1;
}

void __CNAutocompleteSharedLocalOnlyContactStore_block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695CE28]);
  [v2 setIncludeLocalContacts:1];
  v0 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v2];
  v1 = CNAutocompleteSharedLocalOnlyContactStore_store;
  CNAutocompleteSharedLocalOnlyContactStore_store = v0;
}

id fetchContactsForPredicate(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = MEMORY[0x1E695CD78];
  v11 = a3;
  v12 = a1;
  v13 = [[v10 alloc] initWithKeysToFetch:v11];

  [v13 setPredicate:v9];
  [v13 setUnifyResults:a4];
  v14 = [MEMORY[0x1E695DF70] array];
  v26 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __fetchContactsForPredicate_block_invoke;
  v24 = &unk_1E7CD2420;
  v15 = v14;
  v25 = v15;
  LOBYTE(v10) = [v12 enumerateContactsWithFetchRequest:v13 error:&v26 usingBlock:&v21];

  v16 = v26;
  if (v10)
  {

    v17 = [v15 copy];
  }

  else
  {
    v18 = contactsUtilsLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1B8106000, v18, OS_LOG_TYPE_DEFAULT, "Error fetching contact matching predicate %@, error: %@", buf, 0x16u);
    }

    if (a5)
    {
      v19 = v16;
      *a5 = v16;
    }

    v17 = 0;
  }

  return v17;
}

id copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6)
{
  v53[7] = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = 0;
  v42 = v10;
  if (v10 && v12)
  {
    v16 = *MEMORY[0x1E695C240];
    v53[0] = *MEMORY[0x1E695C300];
    v53[1] = v16;
    v17 = *MEMORY[0x1E695C230];
    v53[2] = *MEMORY[0x1E695C2F0];
    v53[3] = v17;
    v18 = *MEMORY[0x1E695C328];
    v53[4] = *MEMORY[0x1E695C308];
    v53[5] = v18;
    v53[6] = v12;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:7];
    v20 = v19;
    if (v14)
    {
      v21 = [v19 arrayByAddingObjectsFromArray:v14];

      v20 = v21;
    }

    v22 = objc_alloc_init(MEMORY[0x1E696AB50]);
    if ([v12 isEqual:*MEMORY[0x1E695C208]])
    {
      v23 = v22;
      v37 = v14;
      v38 = v13;
      v39 = v12;
      v24 = &__block_literal_global_43;
    }

    else
    {
      if (![v12 isEqualToString:*MEMORY[0x1E695C330]])
      {
LABEL_19:
        if ([v22 count] == 1)
        {
          v15 = [v22 anyObject];
        }

        else
        {
          v32 = [v13 ea_personNameComponents];
          v33 = objc_alloc_init(_CNCountableMatchesContext);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke_4;
          v43[3] = &unk_1E7CD2488;
          v47 = &__block_literal_global_50;
          v44 = v22;
          v45 = v32;
          v46 = v13;
          v34 = v32;
          [(_CNCountableMatchesContext *)v33 countInstances:v44 usingPredicate:v43];
          v35 = [(_CNCountableMatchesContext *)v33 highestMatches];
          v15 = [v35 anyObject];
        }

        goto LABEL_23;
      }

      v23 = v22;
      v37 = v14;
      v38 = v13;
      v39 = v12;
      v24 = &__block_literal_global_45;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v40 = v11;
    v25 = v11;
    v26 = [v25 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = v24[2](v24, *(*(&v48 + 1) + 8 * i));
          v31 = fetchContactsForPredicate(v42, v30, v20, a6, 0);
          if (v31)
          {
            [v23 addObjectsFromArray:v31];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v27);
    }

    v12 = v39;
    v11 = v40;
    v14 = v37;
    v13 = v38;
    v22 = v23;
    goto LABEL_19;
  }

LABEL_23:

  return v15;
}

id CNAutocompletePreferredAbbreviatedNameForAddressAndDisplayName(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = idealDisplayName(v10, a3);
  if (v9 && [v10 length] && objc_msgSend(v10, "ea_isLegalEmailAddress"))
  {
    v13 = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
    v36[0] = v13;
    v14 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:1000];
    v36[1] = v14;
    v15 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v36[2] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];

    if (v11)
    {
      v17 = [v16 arrayByAddingObjectsFromArray:v11];

      v16 = v17;
    }

    v35 = v10;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v19 = copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName(v9, v18, *MEMORY[0x1E695C208], v12, v16, 1u);

    if (!v19)
    {
      v19 = [v12 ea_personNameComponents];
      v20 = [v19 givenName];
      if (v20)
      {
      }

      else
      {
        v21 = [v19 familyName];

        if (!v21)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      v22 = objc_alloc_init(MEMORY[0x1E695CF18]);
      v23 = [v19 namePrefix];
      [v22 setNamePrefix:v23];

      v24 = [v19 givenName];
      [v22 setGivenName:v24];

      v25 = [v19 middleName];
      [v22 setMiddleName:v25];

      v26 = [v19 familyName];
      [v22 setFamilyName:v26];

      v27 = [v19 nameSuffix];
      [v22 setNameSuffix:v27];

      v28 = [v22 copy];
      if (!v28)
      {
LABEL_18:

        goto LABEL_19;
      }

      v19 = v28;
    }

    v29 = [MEMORY[0x1E695CD80] stringFromContact:v19 style:1000];
    if (v29 || ([MEMORY[0x1E695CD80] stringFromContact:v19 style:0], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;

      v12 = v30;
    }

    if (a5)
    {
      v31 = v19;
      *a5 = v19;
    }

    goto LABEL_17;
  }

LABEL_19:
  if (v12)
  {
    if ([v12 containsString:@"@"] && !objc_msgSend(v12, "isEqualToString:", v10))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@>", v12, v10];
    }

    else
    {
      v32 = v12;
    }
  }

  else
  {
    v32 = v10;
  }

  v33 = v32;

  return v33;
}

id idealDisplayName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    if (v6 >= 3 && [v5 characterAtIndex:0] == 60)
    {
      v7 = [v5 characterAtIndex:v6 - 1];
      v8 = v7 == 62;
      if (v7 == 62)
      {
        v6 -= 2;
      }
    }

    else
    {
      v8 = 0;
    }

    if (![v5 compare:v3 options:9 range:{v8, v6}])
    {

      v5 = 0;
    }
  }

  return v5;
}

id CNAutocompletePreferredCompositeNameForAddressAndDisplayName(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = idealDisplayName(v10, a3);
  if (v9 && [v10 length] && objc_msgSend(v10, "ea_isLegalEmailAddress"))
  {
    v13 = CNAutocompleteDescriptorForRequiredKeysForCompositeName();
    v14 = v13;
    if (v11)
    {
      v15 = [v13 arrayByAddingObjectsFromArray:v11];

      v14 = v15;
    }

    v26[0] = v10;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v17 = copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName(v9, v16, *MEMORY[0x1E695C208], v12, v14, 1u);

    if (v17)
    {
      v18 = preferredCompositeNameForUnifiedContact(v17);
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v12;
      }

      v21 = v20;

      if (a5)
      {
        v22 = v17;
        *a5 = v17;
      }
    }

    else
    {
      v21 = v12;
    }

    v12 = v21;
  }

  if (v12)
  {
    if ([v12 containsString:@"@"] && !objc_msgSend(v12, "isEqualToString:", v10))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@>", v12, v10];
    }

    else
    {
      v23 = v12;
    }
  }

  else
  {
    v23 = v10;
  }

  v24 = v23;

  return v24;
}

id CNAutocompleteDescriptorForRequiredKeysForCompositeName()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E695C310];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];

  return v1;
}

id preferredCompositeNameForUnifiedContact(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695CE40] sharedDefaults];
  if ([v2 shortNameFormatPrefersNicknames])
  {
    v3 = [v1 nickname];
  }

  else
  {
    v3 = 0;
  }

  if (![v3 length])
  {
    v4 = [MEMORY[0x1E695CD80] stringFromContact:v1 style:0];

    v3 = v4;
  }

  return v3;
}

id CNAutocompletePreferredCompositeNameForContact(void *a1, void *a2)
{
  v34[11] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = CNAutocompleteDescriptorForRequiredKeysForCompositeName();
    if (v3)
    {
      v6 = MEMORY[0x1E695CD58];
      v7 = [v4 identifier];
      v33 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v9 = [v6 predicateForContactsWithIdentifiers:v8];
      v29 = 0;
      v10 = fetchContactsForPredicate(v3, v9, v5, 1, &v29);
      v11 = v29;
      v12 = [v10 firstObject];

      if (!v12)
      {
        v13 = contactsUtilsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          CNAutocompletePreferredCompositeNameForContact_cold_1(v4, v11, v13);
        }
      }
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v4;
    }

    v16 = v15;
    if (([v16 areKeysAvailable:v5] & 1) == 0)
    {
      v17 = v16;
      v18 = *MEMORY[0x1E695C240];
      v34[0] = *MEMORY[0x1E695C300];
      v34[1] = v18;
      v19 = *MEMORY[0x1E695C230];
      v34[2] = *MEMORY[0x1E695C2F0];
      v34[3] = v19;
      v20 = *MEMORY[0x1E695C348];
      v34[4] = *MEMORY[0x1E695C308];
      v34[5] = v20;
      v21 = *MEMORY[0x1E695C340];
      v34[6] = *MEMORY[0x1E695C350];
      v34[7] = v21;
      v22 = *MEMORY[0x1E695C328];
      v34[8] = *MEMORY[0x1E695C310];
      v34[9] = v22;
      v34[10] = *MEMORY[0x1E695C208];
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:11];
      v24 = objc_alloc_init(MEMORY[0x1E695CF18]);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __fallbackContactForMissingContactRequiringKeys_block_invoke;
      v30[3] = &unk_1E7CD24B0;
      v31 = v17;
      v25 = v24;
      v32 = v25;
      v26 = v17;
      [v23 enumerateObjectsUsingBlock:v30];
      v27 = v32;
      v16 = v25;
    }

    v14 = preferredCompositeNameForUnifiedContact(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id contactsUtilsLog()
{
  if (contactsUtilsLog_cn_once_token_1 != -1)
  {
    contactsUtilsLog_cold_1();
  }

  v1 = contactsUtilsLog_cn_once_object_1;

  return v1;
}

id __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:a2];
  v4 = [v2 predicateForContactsMatchingPhoneNumber:v3];

  return v4;
}

uint64_t __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return [a2 hasPrefix:?];
  }

  else
  {
    return 0;
  }
}

uint64_t __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 countForObject:v4];
  v6 = *(v2 + 56);
  v7 = [v4 namePrefix];
  v8 = [*(v2 + 40) namePrefix];
  LODWORD(v6) = (*(v6 + 16))(v6, v7, v8);

  v9 = v5 + v6;
  v10 = *(v2 + 56);
  v11 = [v4 givenName];
  v12 = [*(v2 + 40) givenName];
  LODWORD(v10) = (*(v10 + 16))(v10, v11, v12);

  v13 = v9 + v10;
  v14 = *(v2 + 56);
  v15 = [v4 middleName];
  v16 = [*(v2 + 40) middleName];
  LODWORD(v14) = (*(v14 + 16))(v14, v15, v16);

  v17 = v13 + v14;
  v18 = *(v2 + 56);
  v19 = [v4 familyName];
  v20 = [*(v2 + 40) familyName];
  LODWORD(v18) = (*(v18 + 16))(v18, v19, v20);

  v21 = v17 + v18;
  v22 = *(v2 + 56);
  v23 = [v4 nameSuffix];
  v24 = [*(v2 + 40) nameSuffix];
  LODWORD(v22) = (*(v22 + 16))(v22, v23, v24);

  v25 = v21 + v22;
  v26 = *(v2 + 56);
  v27 = [v4 organizationName];

  LODWORD(v2) = (*(v26 + 16))(v26, v27, *(v2 + 48));
  return v25 + v2;
}

uint64_t __contactsUtilsLog_block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "CNAutocompleteUIContactsUtilities");
  v1 = contactsUtilsLog_cn_once_object_1;
  contactsUtilsLog_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __fallbackContactForMissingContactRequiringKeys_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) isKeyAvailable:?])
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) valueForKey:v5];
    [v3 setValue:v4 forKey:v5];
  }
}

id _displayableAddressOfKind(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3 && a2 == 1)
  {
    v4 = CPPhoneNumberCopyFormattedStringForTextMessage();
    v5 = v4;
    if (v4)
    {
      v6 = v4;

      v3 = [@"\u200E" stringByAppendingString:v6];
    }
  }

  return v3;
}

id _normalizeAddressOfKind(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2 == 1)
    {
      [v3 UTF8String];
      v5 = CPPhoneNumberCopyNormalized();
      if (v5)
      {
        v6 = v5;
        v7 = CFStringCreateWithCString(0, v5, 0x8000100u);
        v8 = CPPhoneNumberCopyHomeCountryCode();
        v9 = CFPhoneNumberCreate();
        String = CFPhoneNumberCreateString();

        v4 = String;
        if (!String)
        {
          v4 = CFPhoneNumberCreateString();
        }

        if (v9)
        {
          CFRelease(v9);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        free(v6);
      }
    }
  }

  return v4;
}

uint64_t _fastCountOfCompleteMatches(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    v29 = a3;
    v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v30 = v5;
    v9 = [v5 componentsSeparatedByCharactersInSet:v8];

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v9;
    v34 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v34)
    {
      v32 = *v43;
      v33 = v7;
      do
      {
        v10 = 0;
        do
        {
          if (*v43 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v10;
          v11 = *(*(&v42 + 1) + 8 * v10);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v36 = v7;
          v12 = [v36 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v39;
LABEL_9:
            v15 = 0;
            while (1)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v36);
              }

              v16 = *(*(&v38 + 1) + 8 * v15);
              if ([v37 count] == 1)
              {
                break;
              }

              v17 = [v16 address];
              v18 = [v16 displayString];
              v19 = [v18 ea_personNameComponents];
              v20 = [v19 givenName];

              if (v20 && ([v19 givenName], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "rangeOfString:options:", v11, 1), v21, !v22) || (objc_msgSend(v19, "familyName"), v23 = objc_claimAutoreleasedReturnValue(), v23, v23) && (objc_msgSend(v19, "familyName"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "rangeOfString:options:", v11, 1), v24, !v25) || v17 && !objc_msgSend(v17, "rangeOfString:options:", v11, 1))
              {
                [v37 addObject:v16];
              }

              if (v13 == ++v15)
              {
                v13 = [v36 countByEnumeratingWithState:&v38 objects:v46 count:16];
                if (v13)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }

          v10 = v35 + 1;
          v7 = v33;
        }

        while (v35 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v34);
    }

    v26 = v37;
    *v29 = v37;
    v27 = [v26 count];

    v5 = v30;
  }

  else
  {
    v27 = [v6 count];
  }

  return v27;
}

id _sortedArrayByRelevancy(void *a1, void *a2, void *a3, void *a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if ([v7 length])
  {
    v55 = a3;
    v56 = a4;
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = MEMORY[0x1E6964DF0];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = ___sortedArrayByRelevancy_block_invoke;
    v77[3] = &unk_1E7CD2578;
    v57 = v7;
    v58 = v9;
    v78 = v58;
    [v10 enumerateTokensForString:v7 locale:0 options:0 withHandler:v77];
    v69 = [MEMORY[0x1E695DF70] array];
    __base = malloc_type_calloc(0x18uLL, [v8 count], 0xE3A7F89FuLL);
    v62 = v8;
    if ([v8 count])
    {
      v11 = 0;
      do
      {
        v12 = [v8 objectAtIndex:v11];
        v67 = [v12 compositeName];
        v13 = [v12 address];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        obj = v58;
        v68 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
        if (v68)
        {
          v60 = v12;
          v61 = v11;
          v14 = 0;
          v65 = *v74;
          v66 = v13;
          v15 = -1;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v74 != v65)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v73 + 1) + 8 * i);
              v72 = 0;
              v18 = v14;
              if (!v13 || ((v19 = [v13 rangeOfString:v17 options:385], v21 = v19 - v20, v72 = v19 == 0, v19 != 0x7FFFFFFFFFFFFFFFLL) ? (v22 = v21 == 0x7FFFFFFFFFFFFFFFLL) : (v22 = 1), v22))
              {
                v70 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v19;
                v70 = v21 + 15;
                if (v19)
                {
                  v18 = (v19 == 0) | v14;
                }

                else
                {
                  v24 = v20;
                  v25 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13];
                  [v25 addAttribute:@"CNComposeRecipientStringMatchType" value:@"CNComposeRecipientStringMatchAddress" range:{v23, v24}];
                  [v69 addObject:v25];

                  v18 = 1;
                }
              }

              v71 = 0;
              v26 = _getDisplayNameMatches(v67, v17, &v71, &v72);
              v27 = v71;
              [v69 addObjectsFromArray:v26];
              v28 = v72;
              v29 = [v27 count];
              if (v29 && ([v27 objectAtIndex:0], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "integerValue"), v30, v31 != 0x7FFFFFFFFFFFFFFFLL))
              {
                v32 = v31 + 5;
              }

              else
              {
                v32 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (v29 < 2)
              {
                v34 = 0;
              }

              else if (v29 - 2 < 2)
              {
                v34 = 10;
              }

              else
              {
                v63 = v28;
                v33 = v18;
                v34 = 0;
                v35 = 3 - v29;
                v36 = 1;
                do
                {
                  v37 = [v27 objectAtIndex:v36];
                  v34 += [v37 integerValue];

                  ++v36;
                }

                while (v35 + v36 != 1);
                if (v34 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v34 += 10;
                }

                v18 = v33;
                v28 = v63;
              }

              v38 = v28 | v18 & 1;
              v14 = v38 & 1;
              v39 = [v27 lastObject];
              v40 = [v39 integerValue];

              if (v32 >= v34)
              {
                v41 = v34;
              }

              else
              {
                v41 = v32;
              }

              if (v41 >= v40)
              {
                v41 = v40;
              }

              if (v41 >= v70)
              {
                v41 = v70;
              }

              v15 += v41;

              v13 = v66;
            }

            v68 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
          }

          while (v68);
          v12 = v60;
          v11 = v61;
        }

        else
        {
          v38 = 0;
          v15 = -1;
        }

        v42 = &__base[24 * v11];
        *v42 = v15;
        *(v42 + 1) = v11;
        v42[16] = v38 & 1;

        ++v11;
        v8 = v62;
      }

      while (v11 < [v62 count]);
    }

    qsort(__base, [v8 count], 0x18uLL, _relevancyComparator);
    v43 = [MEMORY[0x1E695DF70] array];
    v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    if ([v8 count])
    {
      v45 = 0;
      v46 = __base + 16;
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        v49 = [v8 objectAtIndex:v47];
        [v44 setObject:v49 atIndexedSubscript:v45];

        v8 = v62;
        if (v48)
        {
          v50 = [v62 objectAtIndex:v47];
          [v43 addObject:v50];
        }

        v46 += 24;
        ++v45;
      }

      while (v45 < [v62 count]);
    }

    free(__base);
    v51 = v43;
    *v55 = v43;
    v52 = v69;
    *v56 = v69;

    v7 = v57;
  }

  else
  {
    v53 = v8;
    *a3 = v8;
    *a4 = MEMORY[0x1E695E0F0];
    v44 = v8;
  }

  return v44;
}

void sub_1B81225FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _getDisplayNameMatches(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1;
  v8 = a2;
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [MEMORY[0x1E695DF70] array];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v11 = MEMORY[0x1E6964DF0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___getDisplayNameMatches_block_invoke;
    v18[3] = &unk_1E7CD25B8;
    v19 = v8;
    v12 = v9;
    v20 = v12;
    v23 = &v26;
    v24 = v25;
    v21 = v7;
    v13 = v10;
    v22 = v13;
    [v11 enumerateTokensForString:v21 locale:0 options:0 withHandler:v18];
    *a4 = *(v27 + 24);
    v14 = v12;
    *a3 = v12;
    v15 = v22;
    v16 = v13;

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
    *a3 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

void sub_1B81236E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___sortedArrayByRelevancy_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithString:a2];
  [*(a1 + 32) addObject:v3];
}

uint64_t _relevancyComparator(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void ___getDisplayNameMatches_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  v19 = xmmword_1E7CD2598;
  v20 = @"CNComposeRecipientStringMatchLastName";
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7)
  {
    v10 = [v7 rangeOfString:*(a1 + 32) options:{385, v19, v20, v21}];
    v12 = v10;
    v13 = v11;
    v14 = v10 == 0;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v10 - v11;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
  }

  v15 = *(a1 + 40);
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{v9, v19, v20}];
  [v15 addObject:v16];

  *(*(*(a1 + 64) + 8) + 24) |= v14;
  if (v14)
  {
    if (*(*(*(a1 + 72) + 8) + 24) && a3 + a4 >= [*(a1 + 48) length])
    {
      *(*(*(a1 + 72) + 8) + 24) = 2;
    }

    v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
    [v17 addAttribute:@"CNComposeRecipientStringMatchType" value:*(&v19 + *(*(*(a1 + 72) + 8) + 24)) range:{v12, v13}];
    [*(a1 + 56) addObject:v17];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  for (i = 16; i != -8; i -= 8)
  {
  }
}

void sub_1B8125E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t IMCoreLibraryCore()
{
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return IMCoreLibraryCore_frameworkLibrary;
}

uint64_t getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_ptr;
  v6 = getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_ptr;
  if (!getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_block_invoke;
    v2[3] = &unk_1E7CD2670;
    v2[4] = &v3;
    __getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B812A434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IMCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "IMSPIGetGroupPhotosForChatsWithGroupIDs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id CNAutocompleteContactKeyForRecentsKind(void *a1)
{
  v1 = a1;
  if ([*MEMORY[0x1E6998F48] isEqualToString:v1])
  {
    v2 = MEMORY[0x1E695C208];
LABEL_5:
    v3 = *v2;
    goto LABEL_7;
  }

  if ([*MEMORY[0x1E6998F60] isEqualToString:v1])
  {
    v2 = MEMORY[0x1E695C330];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id CNAutocompleteRecentsKindForContactKey(void *a1)
{
  v1 = a1;
  if ([*MEMORY[0x1E695C208] isEqualToString:v1])
  {
    v2 = MEMORY[0x1E6998F48];
LABEL_5:
    v3 = *v2;
    goto LABEL_7;
  }

  if ([*MEMORY[0x1E695C330] isEqualToString:v1])
  {
    v2 = MEMORY[0x1E6998F60];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

BOOL CNComposeApplicationPreferredContentSizeIsLargerThanLarge()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC70]) == NSOrderedDescending;
  return v2;
}

void sub_1B812DD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CNIconImageForDownwardChevron()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD40] scale:1];
  v1 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.down" withConfiguration:v0];

  return v1;
}

id CNIconImageForPresentationOption(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  if (a5)
  {
    _specialGlyphColorForSelectedPresentationOption(a1);
  }

  else
  {
    _specialGlyphColorForPresentationOption(a1);
  }
  v8 = ;
  if (!v8)
  {
    v8 = v7;
  }

  v9 = 0;
  if (a1 <= 1023)
  {
    if (a1 <= 63)
    {
      if (a1 == 16)
      {
        v9 = @"star.fill";
      }

      else if (a1 == 32)
      {
        v9 = @"checkmark.seal.fill";
      }
    }

    else
    {
      switch(a1)
      {
        case 64:
          v9 = @"lock.open.fill";
          break;
        case 128:
          v9 = @"lock.fill";
          break;
        case 256:
          v9 = @"questionmark.circle.fill";
          break;
      }
    }
  }

  else if (a1 >= 0x2000)
  {
    switch(a1)
    {
      case 0x2000:
        v9 = @"hourglass.tophalf.filled";
        break;
      case 0x20000:
        v9 = @"exclamationmark.circle";
        break;
      case 0x100000:
        v9 = @"checkmark.circle.fill";
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 1024:
        v9 = @"checkmark.circle";
        break;
      case 2048:
        v9 = @"xmark.circle";
        break;
      case 4096:
        v9 = @"questionmark.circle";
        break;
    }
  }

  v10 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD78] scale:1];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9 withConfiguration:v10];
  v12 = v11;
  if (v11)
  {
    if (v8)
    {
      v13 = [v11 imageWithTintColor:v8 renderingMode:1];

      v12 = v13;
    }

    v12 = v12;
  }

  return v12;
}

id _specialGlyphColorForSelectedPresentationOption(uint64_t a1)
{
  if (a1 == 0x20000)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    _specialGlyphColorForPresentationOption(a1);
  }
  v1 = ;

  return v1;
}

id _specialGlyphColorForPresentationOption(uint64_t a1)
{
  v2 = 0;
  if (a1 > 4095)
  {
    if (a1 != 4096)
    {
      if (a1 == 0x2000)
      {
        v2 = [MEMORY[0x1E69DC888] systemRedColor];
      }

      else if (a1 == 0x20000)
      {
        v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      goto LABEL_13;
    }

LABEL_10:
    v2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    goto LABEL_13;
  }

  if (a1 == 16)
  {
    v2 = [MEMORY[0x1E69DC888] systemYellowColor];
    goto LABEL_13;
  }

  if (a1 == 1024 || a1 == 2048)
  {
    goto LABEL_10;
  }

LABEL_13:

  return v2;
}

void sub_1B8133698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B8134C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CNAUILocalizedAddressSeparator()
{
  if (CNAUILocalizedAddressSeparator_cn_once_token_1 != -1)
  {
    CNAUILocalizedAddressSeparator_cold_1();
  }

  v1 = CNAUILocalizedAddressSeparator_cn_once_object_1;

  return v1;
}

void __CNAUILocalizedAddressSeparator_block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v3 localizedStringForKey:@"ADDRESS_SEPARATOR" value:&stru_1F3002C60 table:@"Localized"];
  v1 = [v0 copy];
  v2 = CNAUILocalizedAddressSeparator_cn_once_object_1;
  CNAUILocalizedAddressSeparator_cn_once_object_1 = v1;
}

BOOL isPortraitIPhone()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v0 userInterfaceIdiom])
  {
    v1 = 0;
  }

  else
  {
    v1 = ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 1) < 2;
  }

  return v1;
}

uint64_t getSimulateAutocompleteResultsInternalSetting()
{
  v0 = [CNAutocompleteUIPreferences copyCompositionServicesPreferenceValueForKey:@"SimulateAutocompleteResults"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v0 BOOLValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1B813A55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B813ADB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id contactsSearchManagerLog()
{
  if (contactsSearchManagerLog_cn_once_token_1 != -1)
  {
    contactsSearchManagerLog_cold_1();
  }

  v1 = contactsSearchManagerLog_cn_once_object_1;

  return v1;
}

uint64_t __contactsSearchManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "contactssearchmanager");
  v1 = contactsSearchManagerLog_cn_once_object_1;
  contactsSearchManagerLog_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1B813E6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B813FD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8140954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8141CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B81438C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8143E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B814523C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B814ACCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_1B814BD6C()
{
  v1 = *v0;
  sub_1B814DA68();
  MEMORY[0x1B8CB8BB0](v1);
  return sub_1B814DA88();
}

uint64_t sub_1B814BDE0()
{
  v1 = *v0;
  sub_1B814DA68();
  MEMORY[0x1B8CB8BB0](v1);
  return sub_1B814DA88();
}

unint64_t sub_1B814BE24@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B814C388(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t UIView.cn_applyCornerRadius(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C0C8);
  (MEMORY[0x1EEE9AC00])();
  v3 = v13 - v2;
  v4 = sub_1B814D9A8();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  if (a1 <= 1)
  {
    if (!a1 || a1 == 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a1 == 2 || a1 == 3)
    {
LABEL_11:
      sub_1B814D988();
      goto LABEL_12;
    }

    if (a1 == 4)
    {
      sub_1B814D998();
LABEL_12:
      (*(v5 + 16))(v8, v10, v4);
      sub_1B814D978();
      v11 = sub_1B814D9B8();
      (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
      sub_1B814DA48();
      return (*(v5 + 8))(v10, v4);
    }
  }

  v13[1] = a1;
  result = sub_1B814DA58();
  __break(1u);
  return result;
}

void sub_1B814C094(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B814DA28();
  sub_1B814DA18();
  sub_1B814DA08();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  UIView.cn_applyCornerRadius(_:)(a3);
}

Swift::Void __swiftcall UIView.cn_setWantsGlassBackground(_:)(Swift::Bool a1)
{
  v2 = sub_1B814D9D8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B814D9E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    if (a1)
    {
      sub_1B814D9C8();
      sub_1B814D9F8();
      *(&v9 + 1) = v3;
      v10 = MEMORY[0x1E69DC388];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8);
      (*(v4 + 32))(boxed_opaque_existential_1, v6, v3);
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_1B814DA38();
  }
}

void sub_1B814C2BC(void *a1, uint64_t a2, Swift::Bool a3)
{
  sub_1B814DA28();
  sub_1B814DA18();
  sub_1B814DA08();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  UIView.cn_setWantsGlassBackground(_:)(a3);
}

unint64_t sub_1B814C388(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1B814C448()
{
  result = qword_1EBA7C0D0;
  if (!qword_1EBA7C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7C0D0);
  }

  return result;
}

void CNAutocompletePreferredCompositeNameForContact_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B8106000, log, OS_LOG_TYPE_ERROR, "Error re-fetching contact matching contact %@, error: %@", &v3, 0x16u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}