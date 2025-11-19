void sub_1C66578A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t EMIsGreymatterSupported()
{
  if (EMIsGreymatterSupported_onceToken != -1)
  {
    EMIsGreymatterSupported_cold_1();
  }

  return EMIsGreymatterSupported_isGreymatterSupported;
}

void __EMIsGreymatterSupported_block_invoke()
{
  if ((EFIsRunningUnitTests() & 1) != 0 || [EMInternalPreferences preferenceEnabled:52])
  {
    EMIsGreymatterSupported_isGreymatterSupported = 1;
  }

  else
  {
    v0 = [MEMORY[0x1E699B7B0] currentDevice];
    EMIsGreymatterSupported_isGreymatterSupported = [v0 supportsGenerativeModelSystems];
  }
}

id CopyInvocation(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 methodSignature];
  v3 = [v2 numberOfArguments];
  v4 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v2];
  v5 = [v2 frameLength];
  v6 = v5;
  if (v5 >= 0x6400001)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInvocation *CopyInvocation(NSInvocation *__strong)"];
    [v16 handleFailureInFunction:v17 file:@"EMRemoteConnection.m" lineNumber:173 description:{@"Temporary buffer too large or with a negative count (%zu).", v6}];
  }

  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  memset(v18 - v8, 170, v10);
  if (v6 > 0x800)
  {
    v11 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
  }

  else
  {
    bzero(v9, v7);
    v11 = 0;
  }

  if (v6 >= 0x801)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      [v1 getArgument:v12 atIndex:i];
      [v4 setArgument:v12 atIndex:i];
    }
  }

  free(v11);

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C665A970(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id nonReattemptingHandlerForErrorHandler(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nonReattemptingHandlerForErrorHandler_block_invoke;
  aBlock[3] = &unk_1E826F5A0;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

uint64_t EMBlackPearlIsFeatureEnabled()
{
  if (EMBlackPearlIsFeatureEnabled_onceToken != -1)
  {
    EMBlackPearlIsFeatureEnabled_cold_1();
  }

  return EMBlackPearlIsFeatureEnabled_isFeatureEnabled;
}

void __EMBlackPearlIsFeatureEnabled_block_invoke()
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  v0 = [MEMORY[0x1E699B7B0] currentDevice];
  v1 = [v0 isPhone];
  v2 = [v0 isPad];
  v3 = [v0 isMac];
  if (((v1 | v2 | v3 | [EMInternalPreferences preferenceEnabled:39]) & 1) == 0)
  {
    v4 = _EMBlackPearlPlatformSupported_isPlatformSupported;

    if (v4 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  _EMBlackPearlPlatformSupported_isPlatformSupported = 1;

LABEL_5:
  if (EMBlackPearlIsLanguageSupported_onceToken != -1)
  {
    EMBlackPearlIsLanguageSupported_cold_1();
  }

  v5 = EMBlackPearlIsLanguageSupported_isSupportedLocale;
LABEL_9:
  EMBlackPearlIsFeatureEnabled_isFeatureEnabled = v5 & 1;
}

void __EMBlackPearlIsLanguageSupported_block_invoke()
{
  if (![EMInternalPreferences preferenceEnabled:36])
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2050000000;
    v0 = getMCCSecretAgentControllerClass_softClass_0;
    v8 = getMCCSecretAgentControllerClass_softClass_0;
    if (!getMCCSecretAgentControllerClass_softClass_0)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __getMCCSecretAgentControllerClass_block_invoke_0;
      v4[3] = &unk_1E826C010;
      v4[4] = &v5;
      __getMCCSecretAgentControllerClass_block_invoke_0(v4);
      v0 = v6[3];
    }

    v1 = v0;
    _Block_object_dispose(&v5, 8);
    v2 = objc_alloc_init(v0);
    if (objc_opt_respondsToSelector())
    {
      v3 = [MEMORY[0x1E695DF58] _deviceLanguage];
      [v2 isCategorizationSupportedForLocale:v3 completion:&__block_literal_global_26];
    }

    else
    {
      v3 = [MEMORY[0x1E695DF58] _deviceLanguage];
      EMBlackPearlIsLanguageSupported_isSupportedLocale = [&unk_1F461CE28 containsObject:v3];
    }
  }
}

void sub_1C665B060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __EMBlackPearlIsLanguageSupported_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = EMLogUtilities();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __EMBlackPearlIsLanguageSupported_block_invoke_2_cold_1(v4, v5);
    }

    a2 = 0;
  }

  EMBlackPearlIsLanguageSupported_isSupportedLocale = a2;
}

void sub_1C665BE80(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C665C1C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 72));

  _Unwind_Resume(a1);
}

void sub_1C665C368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __defaultCollectionScheduler_block_invoke()
{
  v0 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"EMQueryingCollection"];
  v1 = defaultCollectionScheduler_scheduler;
  defaultCollectionScheduler_scheduler = v0;
}

void sub_1C665D654(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C665DB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id defaultReattemptingHandlerForConnection(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __defaultReattemptingHandlerForConnection_block_invoke;
  aBlock[3] = &unk_1E826F578;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void sub_1C665E290(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C665E6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v11 == 1)
  {
  }

  _Unwind_Resume(a1);
}

id defaultNonReattemptingHandlerForConnection(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __defaultNonReattemptingHandlerForConnection_block_invoke;
  aBlock[3] = &unk_1E826F578;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

id predicateFromPredicateIgnoringKeyPaths(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 ef_matchesEverything] & 1) != 0 || objc_msgSend(v3, "ef_matchesNothing"))
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = predicateFromComparisonPredicateIgnoringKeyPaths(v3, v4);
      goto LABEL_4;
    }

LABEL_3:
    v5 = v3;
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __predicateFromPredicateIgnoringKeyPaths_block_invoke;
  v8[3] = &unk_1E826E458;
  v9 = v4;
  v6 = predicateFromCompoundPredicateWithChangeBlock(v3, v8);

LABEL_5:

  return v6;
}

id predicateFromCompoundPredicateWithChangeBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 subpredicates];
  if ([v3 compoundPredicateType])
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__7;
    v38 = __Block_byref_object_dispose__7;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__7;
    v32 = __Block_byref_object_dispose__7;
    v33 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __predicateFromCompoundPredicateWithChangeBlock_block_invoke;
    aBlock[3] = &unk_1E826E480;
    v27 = &v28;
    v6 = v5;
    v26 = v6;
    v7 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __predicateFromCompoundPredicateWithChangeBlock_block_invoke_2;
    v19[3] = &unk_1E826E4A8;
    v21 = v4;
    v8 = v3;
    v20 = v8;
    v9 = v7;
    v22 = v9;
    v23 = &v34;
    v24 = &v28;
    [v6 enumerateObjectsUsingBlock:v19];
    v10 = v35[5];
    if (!v10)
    {
      if ([v29[5] count])
      {
        v15 = objc_alloc(MEMORY[0x1E696AB28]);
        v16 = [v8 compoundPredicateType];
        v11 = [v15 initWithType:v16 subpredicates:v29[5]];
        goto LABEL_9;
      }

      v10 = v8;
    }

    v11 = v10;
LABEL_9:
    v17 = v11;

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);

    goto LABEL_16;
  }

  if ([v5 count] == 1)
  {
    v12 = [v5 firstObject];
    v13 = (*(v4 + 2))(v4, v12);

    if ([v13 ef_matchesEverything])
    {
      v14 = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
LABEL_12:
      v17 = v14;

      goto LABEL_16;
    }

    if ([v13 ef_matchesNothing])
    {
      v14 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
      goto LABEL_12;
    }
  }

  v17 = v3;
LABEL_16:

  return v17;
}

void sub_1C665EFBC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id __predicateFromPredicateIgnoringKeyPaths_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = predicateFromPredicateIgnoringKeyPaths(a2, *(a1 + 32));

  return v2;
}

void __predicateFromCompoundPredicateWithChangeBlock_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = (*(*(a1 + 40) + 16))();
  if ([v6 ef_matchesEverything])
  {
    if ([*(a1 + 32) compoundPredicateType] == 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v6);
    *a4 = 1;
    goto LABEL_9;
  }

  if ([v6 ef_matchesNothing])
  {
    if ([*(a1 + 32) compoundPredicateType] != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v6 != v8)
  {
LABEL_8:
    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    [v7 addObject:v6];
  }

LABEL_9:
}

id predicateFromComparisonPredicateIgnoringKeyPaths(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 leftExpression];
  v6 = [v5 expressionType];

  if (v6 == 3)
  {
    v7 = [v3 leftExpression];
    v8 = [v7 keyPath];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if ([v8 hasPrefix:{*(*(&v16 + 1) + 8 * i), v16}])
          {
            v13 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];

            goto LABEL_13;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = v3;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id mailboxScopeForPredicate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 ef_matchesEverything])
  {
    v5 = +[EMMailboxScope allMailboxesScope];
  }

  else
  {
    if ([v3 ef_matchesNothing])
    {
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 compoundPredicateType])
      {
        mailboxScopeForCompoundPredicate(v3, v4);
      }

      else
      {
        mailboxScopeForNotPredicate(v3, v4);
      }
      v5 = ;
      goto LABEL_5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_4:
      v5 = +[EMMailboxScope noMailboxesScope];
    }

    else
    {
      v5 = mailboxScopeForComparisonPredicate(v3, v4);
    }
  }

LABEL_5:
  v6 = v5;

  return v6;
}

id mailboxScopeForCompoundPredicate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 compoundPredicateType];
  v6 = [v3 subpredicates];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __mailboxScopeForCompoundPredicate_block_invoke;
  v11[3] = &unk_1E826E518;
  v7 = v4;
  v12 = v7;
  v8 = [v6 ef_map:v11];

  v9 = combinedMailboxScopeForMailboxScopes(v8, v7, v5 == 1);

  return v9;
}

id __mailboxScopeForCompoundPredicate_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = mailboxScopeForPredicate(a2, *(a1 + 32));

  return v2;
}

id mailboxScopeForComparisonPredicate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 leftExpression];
  v6 = [v5 expressionType];

  if (v6 == 3)
  {
    v7 = [v3 leftExpression];
    v8 = [v7 keyPath];
    v9 = [v8 isEqual:@"mailboxObjectIDs.url.absoluteString"];

    if (v9)
    {
      v10 = isExclusionPredicate(v3);
      v11 = [v3 rightExpression];
      v12 = [v11 constantValue];
      v13 = mailboxScopeForMailboxObjectIDValue(v12, v10);
LABEL_8:
      v21 = v13;

      goto LABEL_10;
    }

    v14 = [v3 leftExpression];
    v15 = [v14 keyPath];
    v16 = [v15 isEqual:@"mailboxes.type"];

    if (v16)
    {
      v17 = isExclusionPredicate(v3);
      v11 = [v3 rightExpression];
      v12 = [v11 constantValue];
      v13 = mailboxScopeForMailboxTypeValue(v12, v17);
      goto LABEL_8;
    }

    v18 = [v3 leftExpression];
    v19 = [v18 keyPath];
    v20 = [v19 isEqual:@"objectID.serializedRepresentation"];

    if (v20)
    {
      v11 = [v3 rightExpression];
      v12 = [v11 constantValue];
      v13 = mailboxScopeForMessageObjectIDConstantValue(v12, v4);
      goto LABEL_8;
    }
  }

  v21 = +[EMMailboxScope allMailboxesScope];
LABEL_10:

  return v21;
}

void sub_1C665F85C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t isExclusionPredicate(void *a1)
{
  v1 = a1;
  v2 = [v1 predicateOperatorType];
  v3 = 0;
  if (v2 <= 5)
  {
    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_8;
      }

      v3 = 1;
    }
  }

  else if ((v2 - 6) >= 5 && v2 != 99)
  {
LABEL_8:
    __assert_rtn("isExclusionPredicate", "EMMessageListItemPredicates.m", 1575, "NO");
  }

  return v3;
}

id mailboxScopeForMailboxObjectIDValue(void *a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 ef_compactMap:&__block_literal_global_160];
  }

  else
  {
    v5 = mailboxObjectIDForConstantValue(v3);
    v6 = v5;
    if (v5)
    {
      v10[0] = v5;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  if ([v4 count])
  {
    [EMMailboxScope mailboxScopeForMailboxObjectIDs:v4 forExclusion:a2];
  }

  else
  {
    +[EMMailboxScope noMailboxesScope];
  }
  v7 = ;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

EMMailboxObjectID *mailboxObjectIDForConstantValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[EMMailboxObjectID alloc] initWithURL:v1];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v1];
    v3 = [[EMMailboxObjectID alloc] initWithURL:v5];
  }

  else
  {
    v3 = 0;
  }

LABEL_6:

  return v3;
}

id combinedMailboxScopeForMailboxScopes(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 count] == 1)
  {
    v7 = [v5 firstObject];
  }

  else
  {
    v8 = +[EMMailboxScope allMailboxesScope];
    v9 = +[EMMailboxScope noMailboxesScope];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __combinedMailboxScopeForMailboxScopes_block_invoke;
    v13[3] = &unk_1E826E540;
    v10 = v8;
    v17 = a3;
    v14 = v10;
    v15 = v9;
    v16 = v6;
    v11 = v9;
    v7 = [v5 ef_reduce:v13];
  }

  return v7;
}

void sub_1C66602F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6660718(_Unwind_Exception *a1)
{
  v6 = v5;

  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void sub_1C6660EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

BOOL EMIsGreymatterAvailable(uint64_t a1)
{
  if (_EMShouldOverrideGreymatterAvailability_onceToken != -1)
  {
    EMIsGreymatterAvailable_cold_1();
  }

  if ((_EMShouldOverrideGreymatterAvailability_overrideIsGreymatterAvailability & 1) != 0 || [_TtC5Email30EMGenerativeModelsAvailability isFeatureAvailable:_EMGenerativeModelsAvailabilityFeature(a1)])
  {
    return 1;
  }

  v3 = _EMGenerativeModelsAvailabilityFeature(a1);

  return [_TtC5Email30EMGenerativeModelsAvailability isFeatureRestricted:v3];
}

uint64_t _EMGenerativeModelsAvailabilityFeature(uint64_t a1)
{
  if (_EMGenerativeModelsAvailabilityFeature_onceToken != -1)
  {
    _EMGenerativeModelsAvailabilityFeature_cold_1();
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v3 = [_EMGenerativeModelsAvailabilityFeature_featureDictionary objectForKeyedSubscript:v2];
  v4 = v3;
  if (!v3)
  {
    __assert_rtn("_EMGenerativeModelsAvailabilityFeature", "EMFeatureFlag.m", 122, "featureNumber");
  }

  v5 = [v3 integerValue];

  return v5;
}

uint64_t type metadata accessor for EMGenerativeModelsAvailability()
{
  result = qword_1EDAD9860;
  if (!qword_1EDAD9860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6661450()
{
  result = sub_1C672577C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C67256FC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C6661554(uint64_t a1)
{
  v2 = sub_1C67256FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = sub_1C672577C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_1EDAD9810 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDAD9818;
  }

  else if (a1 == 1)
  {
    if (qword_1EC1CAC68 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EC1CAC70;
  }

  else
  {
    if (a1)
    {
      v21[1] = a1;
      result = sub_1C6725ADC();
      __break(1u);
      return result;
    }

    if (qword_1EDAD9800 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDAD9808;
  }

  v16 = *v15;
  v17 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availability;
  swift_beginAccess();
  (*(v11 + 16))(v14, v16 + v17, v10);
  sub_1C672572C();
  (*(v11 + 8))(v14, v10);
  (*(v3 + 32))(v7, v9, v2);
  v18 = (*(v3 + 88))(v7, v2);
  v19 = *MEMORY[0x1E69A1198];
  if (v18 != *MEMORY[0x1E69A1198])
  {
    (*(v3 + 8))(v7, v2);
  }

  return v18 == v19;
}

uint64_t sub_1C6661878(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for EMGenerativeModelsAvailability());
  result = sub_1C66618BC(a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C66618BC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1C67256FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v60 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v57 - v11;
  v13 = sub_1C672571C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1C672577C();
  v18 = *(v64 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  *&v2[OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availabilityNotification] = 0;
  *&v2[OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature] = a1;
  v62 = v23;
  v59 = "geThreadOnDemand";
  if (!a1 || a1 == 2 || a1 == 1)
  {
    sub_1C672570C();
    sub_1C672575C();
    (*(v14 + 8))(v17, v13);
    v24 = v64;
    (*(v18 + 32))(&v2[OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availability], v22, v64);
    swift_beginAccess();
    sub_1C672572C();
    swift_endAccess();
    (*(v5 + 32))(&v2[OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availabilityState], v12, v4);
    v25 = type metadata accessor for EMGenerativeModelsAvailability();
    v66.receiver = v2;
    v66.super_class = v25;
    v26 = objc_msgSendSuper2(&v66, sel_init);
    v27 = qword_1EDAD9878;
    v28 = v26;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = sub_1C67257AC();
    __swift_project_value_buffer(v29, qword_1EDAD9880);
    v30 = sub_1C672578C();
    v31 = sub_1C672592C();

    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_20;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v65 = v33;
    *v32 = 136315394;
    v58 = v33;
    if (a1)
    {
      if (a1 == 2)
      {
        v34 = "fication";
        v35 = v60;
        v36 = 0xD000000000000019;
      }

      else
      {
        v35 = v60;
        v34 = "textComposition.MailReply";
        v36 = 0xD000000000000030;
      }
    }

    else
    {
      v36 = 0xD000000000000028;
      v34 = v59;
      v35 = v60;
    }

    v37 = sub_1C6662230(v36, v34 | 0x8000000000000000, &v65);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    swift_beginAccess();
    v38 = v61;
    sub_1C672572C();
    swift_endAccess();
    (*(v5 + 16))(v35, v38, v4);
    v39 = (*(v5 + 88))(v35, v4);
    if (v39 == *MEMORY[0x1E69A0EF0])
    {
      v40 = *(v5 + 8);
      v40(v38, v4);
      v40(v35, v4);
      v41 = 0xEA00000000006465;
      v42 = 0x7463697274736552;
    }

    else
    {
      v24 = v64;
      if (v39 == *MEMORY[0x1E69A0F08])
      {
        v43 = *(v5 + 8);
        v43(v61, v4);
        v43(v35, v4);
        v41 = 0xEB00000000656C62;
        v42 = 0x616C696176616E55;
        goto LABEL_19;
      }

      v54 = *MEMORY[0x1E69A1198];
      v55 = *(v5 + 8);
      v56 = v39;
      v55(v61, v4);
      if (v56 == v54)
      {
        v41 = 0xE900000000000065;
        v42 = 0x6C62616C69617641;
      }

      else
      {
        v55(v60, v4);
        v41 = 0xE700000000000000;
        v42 = 0x6E776F6E6B6E55;
      }
    }

    v24 = v64;
LABEL_19:
    v44 = sub_1C6662230(v42, v41, &v65);

    *(v32 + 14) = v44;
    _os_log_impl(&dword_1C6655000, v30, v31, "Current GenerativeModelsAvailability for %s: %s", v32, 0x16u);
    v45 = v58;
    swift_arrayDestroy();
    MEMORY[0x1C695D5C0](v45, -1, -1);
    MEMORY[0x1C695D5C0](v32, -1, -1);
LABEL_20:

    v46 = ObjectType;
    v47 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availability;
    swift_beginAccess();
    v48 = v62;
    (*(v18 + 16))(v62, &v28[v47], v24);
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v46;

    v51 = sub_1C672576C();

    (*(v18 + 8))(v48, v24);

    v52 = *&v28[OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availabilityNotification];
    *&v28[OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availabilityNotification] = v51;

    return v28;
  }

  v67 = a1;
  result = sub_1C6725ADC();
  __break(1u);
  return result;
}

uint64_t sub_1C666209C()
{
  MEMORY[0x1C695D620](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C66620D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C666210C()
{
  v0 = sub_1C67257AC();
  __swift_allocate_value_buffer(v0, qword_1EDAD9880);
  __swift_project_value_buffer(v0, qword_1EDAD9880);
  return sub_1C672579C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1C6662230(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C66622FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C6662408(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C66622FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C6662654(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C67259BC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C6662408(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1C66624B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD308, &qword_1C674F108);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1C6662524(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C66624B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C67259BC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C67258AC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C66624B0(v10, 0);
        result = sub_1C672599C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C6662654(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C6662524(a1, a2);
  sub_1C66626A4(&unk_1F45FC490);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C66626A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C671B598(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1C6663068(_Unwind_Exception *a1)
{
  v6 = v3;

  os_unfair_lock_unlock((v1 + v5));
  _Unwind_Resume(a1);
}

void __predicateFromCompoundPredicateWithChangeBlock_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = v5;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [*(a1 + 32) ef_prefix:a3];
    v7 = [v6 mutableCopy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
  }

LABEL_6:
}

id __combinedMailboxScopeForMailboxScopes_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  v8 = otherMailboxScopeForSpecialMailboxScope(v5, v6, *(a1 + 32));
  if (!v8)
  {
    v7 = (a1 + 40);
    v10 = otherMailboxScopeForSpecialMailboxScope(v5, v6, *(a1 + 40));
    if (!v10)
    {
      v15[0] = v5;
      v15[1] = v6;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      v11 = combinedMailboxScopeForMailboxScopesHelper(v12, *(a1 + 48), *(a1 + 56));
      goto LABEL_8;
    }

    v9 = v10;
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    v11 = *v7;
    v12 = v9;
LABEL_8:
    v9 = v11;

    goto LABEL_9;
  }

  v9 = v8;
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

id otherMailboxScopeForSpecialMailboxScope(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = v6;
  if (v5 == a3 || (v8 = v5, v6 == a3))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1C6663734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _EMActivityRegistryObserverWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66637BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EMActivity;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

EMMailboxScope *combinedMailboxScopeForMailboxScopesHelper(void *a1, void *a2, int a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v46 = v5;
  if ([v5 count] == 1)
  {
    v7 = [v5 firstObject];
    goto LABEL_64;
  }

  v45 = v6;
  v8 = +[EMMailboxScope allMailboxesScope];
  v50 = +[EMMailboxScope noMailboxesScope];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (v10)
  {
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v11 = 0;
    v12 = *v83;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v83 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v82 + 1) + 8 * i);
        if (v14 == v8)
        {
          if ((a3 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (v14 == v50)
        {
          if (a3)
          {
LABEL_24:
            v7 = v14;

            goto LABEL_63;
          }
        }

        else
        {
          if ([*(*(&v82 + 1) + 8 * i) excludeTypes])
          {
            v81 = v49;
            v15 = [v14 mailboxTypes];
            combineSets(&v81, v15, 1, a3);
            v16 = v81;
            v17 = v49;
            v49 = v81;
          }

          else
          {
            v80 = v48;
            v15 = [v14 mailboxTypes];
            combineSets(&v80, v15, 0, a3);
            v16 = v80;
            v17 = v48;
            v48 = v80;
          }

          v18 = v16;

          if ([v14 excludeMailboxes])
          {
            v79 = v11;
            v19 = [v14 mailboxObjectIDs];
            combineSets(&v79, v19, 1, a3);
            v20 = v79;
            v21 = v11;
            v11 = v79;
          }

          else
          {
            v78 = v47;
            v19 = [v14 mailboxObjectIDs];
            combineSets(&v78, v19, 0, a3);
            v20 = v78;
            v21 = v47;
            v47 = v78;
          }

          v22 = v20;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v82 objects:v86 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v11 = 0;
  }

  v77 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__7;
  v75 = __Block_byref_object_dispose__7;
  v76 = 0;
  v70 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__7;
  v68 = __Block_byref_object_dispose__7;
  v69 = 0;
  if (a3)
  {
    v23 = resolveSetsForAnd(v48, v49, &v77);
    v24 = v72[5];
    v72[5] = v23;

    resolveSetsForAnd(v47, v11, &v70);
  }

  else
  {
    v26 = resolveSetsForOr(v48, v49, &v77);
    v27 = v72[5];
    v72[5] = v26;

    resolveSetsForOr(v47, v11, &v70);
  }
  v25 = ;
  v28 = v65[5];
  v65[5] = v25;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __combinedMailboxScopeForMailboxScopesHelper_block_invoke;
  aBlock[3] = &unk_1E826E590;
  v62 = &v64;
  v29 = v45;
  v61 = v29;
  v63 = &v71;
  v30 = _Block_copy(aBlock);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __combinedMailboxScopeForMailboxScopesHelper_block_invoke_3;
  v56[3] = &unk_1E826E5E0;
  v58 = &v64;
  v31 = v29;
  v57 = v31;
  v59 = &v71;
  v32 = _Block_copy(v56);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __combinedMailboxScopeForMailboxScopesHelper_block_invoke_5;
  v52[3] = &unk_1E826E5E0;
  v54 = &v64;
  v53 = v31;
  v55 = &v71;
  v33 = _Block_copy(v52);
  v34 = v72[5];
  if (v34)
  {
    v7 = 0;
  }

  else
  {
    if (v65[5])
    {
      v7 = 0;
      goto LABEL_35;
    }

    v38 = +[EMMailboxScope allMailboxesScope];
    v34 = v72[5];
    v7 = v38;
    if (!v34)
    {
      goto LABEL_35;
    }
  }

  if (![v34 count])
  {
LABEL_43:
    v37 = +[EMMailboxScope noMailboxesScope];

    v7 = v37;
    goto LABEL_62;
  }

LABEL_35:
  v35 = v65[5];
  if (v35 && ![v35 count])
  {
    goto LABEL_43;
  }

  if (!v72[5] || !v65[5])
  {
    goto LABEL_60;
  }

  if (v70 != v77)
  {
    v36 = v30[2];
    if (a3)
    {
      if (!v77)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

    if (!v77)
    {
LABEL_52:
      v36(v30, 0);
      goto LABEL_53;
    }

LABEL_59:
    v36(v30, v70 != v77);
    goto LABEL_60;
  }

  if (!a3)
  {
    if (v70)
    {
      if (v33[2](v33))
      {
        v41 = +[EMMailboxScope allMailboxesScope];
        v40 = v7;
        v7 = v41;
        goto LABEL_54;
      }

      (v30[2])(v30, 1);
LABEL_53:
      v40 = v72[5];
      v72[5] = 0;
LABEL_54:

      goto LABEL_60;
    }

LABEL_58:
    v36 = v30[2];
    goto LABEL_59;
  }

  if (v70)
  {
    goto LABEL_58;
  }

  if (!v32[2](v32))
  {
    goto LABEL_53;
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __combinedMailboxScopeForMailboxScopesHelper_block_invoke_7;
  v51[3] = &unk_1E826E608;
  v51[4] = &v71;
  v51[5] = &v64;
  v39 = [v9 ef_firstObjectPassingTest:v51];

  v7 = v39;
  if (v39)
  {
    goto LABEL_62;
  }

  v7 = +[EMMailboxScope noMailboxesScope];
LABEL_60:
  if (!v7)
  {
    v42 = [EMMailboxScope alloc];
    v7 = [(EMMailboxScope *)v42 initWithMailboxTypes:v72[5] excludeTypes:v77 mailboxObjectIDs:v65[5] excludeMailboxes:v70];
  }

LABEL_62:

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v71, 8);

LABEL_63:
  v6 = v45;
LABEL_64:

  v43 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1C66643EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55)
{
  _Block_object_dispose(&a43, 8);

  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void combineSets(void **a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = *a1;
  v9 = v7;
  if (a3)
  {
    if (v8)
    {
LABEL_3:
      [v8 unionSet:v7];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v8)
  {
LABEL_8:
    *a1 = [v7 mutableCopy];
    goto LABEL_9;
  }

  if (!v7 || !a4)
  {
    goto LABEL_3;
  }

  [v8 intersectSet:v7];
LABEL_9:
}

id resolveSetsForOr(void *a1, void *a2, BOOL *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 count])
  {
    if ([v5 count])
    {
      [v6 minusSet:v5];
      v7 = [v6 count] != 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = v5;
  }

  *a3 = v7;
  v9 = [v8 ef_notEmpty];

  return v9;
}

id mailboxScopeForThreadWithPredicate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = mailboxScopeForComparisonPredicate(v3, v4);
    v6 = +[EMMailboxScope allMailboxesScope];

    if (v5 != v6)
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

uint64_t hasMailboxPredicates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 subpredicates];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __hasMailboxPredicates_block_invoke;
    v9[3] = &unk_1E826E690;
    v10 = v4;
    v6 = [v5 ef_any:v9];
  }

  else
  {
    v7 = mailboxScopeForThreadWithPredicate(v3, v4);
    v6 = v7 != 0;
  }

  return v6;
}

uint64_t EMMailCleanupIsFeatureEnabled()
{
  if (EMMailCleanupIsFeatureEnabled_onceToken != -1)
  {
    EMMailCleanupIsFeatureEnabled_cold_1();
  }

  return EMMailCleanupIsFeatureEnabled_isFeatureEnabled;
}

void __EMMailCleanupIsFeatureEnabled_block_invoke()
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_6;
  }

  if (EMBlackPearlIsFeatureEnabled_onceToken != -1)
  {
    EMBlackPearlIsFeatureEnabled_cold_1();
  }

  if (EMBlackPearlIsFeatureEnabled_isFeatureEnabled == 1)
  {
    v0 = _os_feature_enabled_impl() ^ 1;
  }

  else
  {
LABEL_6:
    v0 = 0;
  }

  EMMailCleanupIsFeatureEnabled_isFeatureEnabled = v0;
}

void sub_1C6664C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _EMMessageRepositoryCountingQueryObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6665E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C66669C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = EMQueryingCollection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _groupedSenderMessageListItemsPropertiesAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] || objc_msgSend(v4, "count"))
  {
    v5 = [v3 count];
    if (v5 != [v4 count])
    {
LABEL_17:
      v11 = 0;
      goto LABEL_18;
    }

    for (i = 0; i < [v3 count]; ++i)
    {
      v7 = [v3 objectAtIndexedSubscript:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v3 objectAtIndexedSubscript:i];
      }

      else
      {
        v8 = 0;
      }

      v9 = [v4 objectAtIndexedSubscript:i];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = [v4 objectAtIndexedSubscript:i];

      if (!v8 || !v10 || ([v8 arePropertiesEqual:v10] & 1) == 0)
      {
        v9 = v10;
LABEL_16:

        goto LABEL_17;
      }
    }
  }

  v11 = 1;
LABEL_18:

  return v11;
}

EMMailboxScope *mailboxScopeForNotPredicate(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 subpredicates];
  v5 = [v4 firstObject];

  if ([v5 ef_matchesEverything])
  {
    goto LABEL_2;
  }

  if ([v5 ef_matchesNothing])
  {
    v6 = +[EMMailboxScope allMailboxesScope];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v6 = +[EMMailboxScope noMailboxesScope];
LABEL_5:
      v7 = v6;
      goto LABEL_6;
    }

    v9 = v5;
    v10 = mailboxScopeForComparisonPredicate(v9, v3);
    v11 = [v9 leftExpression];
    if ([v11 expressionType] == 3)
    {
      v12 = [v9 leftExpression];
      v13 = [v12 keyPath];
      if ([v13 isEqual:@"mailboxObjectIDs.url.absoluteString"])
      {

        goto LABEL_18;
      }

      v14 = [v9 leftExpression];
      v15 = [v14 keyPath];
      v16 = [v15 isEqual:@"mailboxes.type"];

      if (v16)
      {
LABEL_18:
        v17 = +[EMMailboxScope allMailboxesScope];
        v18 = +[EMMailboxScope noMailboxesScope];
        v19 = v18;
        if (v10 == v18)
        {
          v24 = v17;
        }

        else
        {
          if (v10 != v17)
          {
            v20 = [EMMailboxScope alloc];
            v21 = [v10 mailboxTypes];
            v22 = [v10 excludeTypes];
            v23 = [v10 mailboxObjectIDs];
            v7 = -[EMMailboxScope initWithMailboxTypes:excludeTypes:mailboxObjectIDs:excludeMailboxes:](v20, "initWithMailboxTypes:excludeTypes:mailboxObjectIDs:excludeMailboxes:", v21, v22 ^ 1u, v23, [v10 excludeMailboxes] ^ 1);

LABEL_24:
            goto LABEL_25;
          }

          v24 = v18;
        }

        v7 = v24;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v7 = v10;
LABEL_25:

    goto LABEL_26;
  }

  v9 = normalizedForNotCompoundPredicate(v5);
  v7 = mailboxScopeForPredicate(v9, v3);
LABEL_26:

LABEL_6:

  return v7;
}

id mailboxScopeForMailboxTypeValue(void *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 ef_compactMap:&__block_literal_global_163];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  if ([v5 count])
  {
    [EMMailboxScope mailboxScopeForMailboxTypes:v5 forExclusion:a2];
  }

  else
  {
    +[EMMailboxScope noMailboxesScope];
  }
  v6 = ;

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void *__mailboxScopeForMailboxTypeValue_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_1C6669370(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66695F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EMMessageList;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C666985C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _EMMessageRepositoryQueryObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6669AE0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

__CFString *EMStringFromCategoryType(unint64_t a1)
{
  if (a1 < 4)
  {
    return off_1E826C5D0[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull EMStringFromCategoryType(EMCategoryType)"];
  [v3 handleFailureInFunction:v4 file:@"EMCategory.m" lineNumber:42 description:{@"Unexpected category type: %ld", a1}];

  return @"None";
}

__CFString *EMStringFromSubtype(unint64_t a1)
{
  if (a1 < 9)
  {
    return off_1E826C5F0[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull EMStringFromSubtype(EMCategorySubtype)"];
  [v3 handleFailureInFunction:v4 file:@"EMCategory.m" lineNumber:68 description:{@"Unexpected category type: %ld", a1}];

  return @"None";
}

uint64_t sub_1C666A5F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C672588C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C666A624(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityStateObserver.ActivityState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C666A6D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityStateObserver.ActivityState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C666A774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C666A83C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C666A8EC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1CD2C0, &qword_1C674EEC8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C666A91C()
{
  v1 = (type metadata accessor for ActivityStateObserver.Update(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v3 + v1[7];
  v7 = *(v6 + 16);

  v8 = *(type metadata accessor for ActivityStateObserver.ActivityState(0) + 40);
  v9 = sub_1C672568C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C666AA74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C666AACC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C666AB68(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1C666AC1C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C666B328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23)
{
  *(v28 - 104) = v27;

  _Unwind_Resume(a1);
}

void sub_1C666B97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

Class __getSFMailRankingSignalsClass_block_invoke(uint64_t a1)
{
  v8[9] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!SearchFoundationLibraryCore_frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __SearchFoundationLibraryCore_block_invoke;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v8[7] = 0;
    v8[8] = 0;
    v8[6] = "/System/Library/PrivateFrameworks/SearchFoundation.framework/SearchFoundation";
    SearchFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SearchFoundationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SearchFoundationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"CSSearchableItem+SFMailRankingSignals.m" lineNumber:13 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("SFMailRankingSignals");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFMailRankingSignalsClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"CSSearchableItem+SFMailRankingSignals.m" lineNumber:14 description:{@"Unable to find class %s", "SFMailRankingSignals"}];

LABEL_10:
    __break(1u);
  }

  getSFMailRankingSignalsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SearchFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SearchFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C666D73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C666D978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMAccountRepository;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C666F050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  os_unfair_lock_unlock(v11 + 2);
  _Unwind_Resume(a1);
}

void sub_1C666F1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_1C666F704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C666F880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 6);

  _Unwind_Resume(a1);
}

void sub_1C666FE3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_1C66707AC()
{
  if (v0)
  {
    JUMPOUT(0x1C6670794);
  }

  JUMPOUT(0x1C6670798);
}

void sub_1C6670868(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6672E6C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6673F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  os_unfair_lock_unlock((v10 + v12));

  _Unwind_Resume(a1);
}

void sub_1C6674358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  os_unfair_lock_unlock((v10 + v12));

  _Unwind_Resume(a1);
}

uint64_t EMBIMIIncomingServerIsAllowlisted(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFF8] ef_urlWithString:a1];
  v2 = [v1 ef_highLevelDomain];

  if ([v2 length])
  {
    IsAllowlisted = EMBIMIIncomingServerHighLevelDomainIsAllowlisted(v2);
  }

  else
  {
    IsAllowlisted = 0;
  }

  return IsAllowlisted;
}

uint64_t EMBIMIIncomingServerHighLevelDomainIsAllowlisted(void *a1)
{
  v1 = a1;
  v6 = 0;
  v2 = _serverConfigurationValueForKey(@"bimi-mail-provider-allowlist", &v6);
  if (!v2)
  {
    if (v6 == 1)
    {
      v2 = EMLogBIMI();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        EMBIMIIncomingServerHighLevelDomainIsAllowlisted_cold_3();
      }
    }

    else
    {
      v2 = EMLogBIMI();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        EMBIMIIncomingServerHighLevelDomainIsAllowlisted_cold_2();
      }
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = EMLogBIMI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      EMBIMIIncomingServerHighLevelDomainIsAllowlisted_cold_1();
    }

LABEL_11:
    v2 = &unk_1F461CE10;
  }

  v4 = [v2 containsObject:v1];

  return v4;
}

id _serverConfigurationValueForKey(void *a1, char *a2)
{
  v3 = a1;
  v4 = [EMServerConfiguration getValueForKey:v3];
  if (v4)
  {
LABEL_4:
    v5 = 1;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (+[EMServerConfiguration isCacheRecent])
  {
    v4 = 0;
    goto LABEL_4;
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0 && +[EMServerConfiguration refresh](EMServerConfiguration, "refresh"))
  {
    v4 = [EMServerConfiguration getValueForKey:v3];
    goto LABEL_4;
  }

  v4 = 0;
  v5 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v5;
  }

LABEL_6:

  return v4;
}

id EMBIMIMailProviderDisplayNameForIncomingMailServer(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFF8] ef_urlWithString:a1];
  v2 = [v1 ef_highLevelDomain];

  if (!v2)
  {
    v5 = 0;
    goto LABEL_25;
  }

  v10 = 0;
  v3 = _serverConfigurationValueForKey(@"bimi-mail-provider-info", &v10);
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_14;
    }

    v4 = EMLogBIMI();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      EMBIMIMailProviderDisplayNameForIncomingMailServer_cold_1();
    }
  }

  else if (v10 == 1)
  {
    v3 = EMLogBIMI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      EMBIMIMailProviderDisplayNameForIncomingMailServer_cold_3();
    }
  }

  else
  {
    v3 = EMLogBIMI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      EMBIMIMailProviderDisplayNameForIncomingMailServer_cold_2();
    }
  }

  v3 = 0;
LABEL_14:
  v6 = [v3 objectForKeyedSubscript:v2];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = EMLogBIMI();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        EMBIMIMailProviderDisplayNameForIncomingMailServer_cold_1();
      }

      v6 = 0;
    }
  }

  v5 = [v6 objectForKeyedSubscript:@"display-name"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = EMLogBIMI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        EMBIMIMailProviderDisplayNameForIncomingMailServer_cold_1();
      }

      v5 = 0;
    }
  }

LABEL_25:

  return v5;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1C6676014(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id _ef_log_EMBlockedSenderManager()
{
  if (_ef_log_EMBlockedSenderManager_onceToken != -1)
  {
    _ef_log_EMBlockedSenderManager_cold_1();
  }

  v1 = _ef_log_EMBlockedSenderManager_log;

  return v1;
}

void sub_1C667614C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMBlockedSenderManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void -[EMBlockedSenderManager _blockedSenderListDidChange:](EMBlockedSenderManager *self, SEL a2, id a3)
{
  v4 = [(EMBlockedSenderManager *)self blockedSenderCache];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__EMBlockedSenderManager__blockedSenderListDidChange___block_invoke;
  v5[3] = &unk_1E826C3B0;
  v5[4] = self;
  [v4 performWhileLocked:v5];
}

void sub_1C6676B20(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void -[EMBlockedSenderManager _blockContact:block:](EMBlockedSenderManager *self, SEL a2, id a3, BOOL a4)
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E699AFD8]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 emailAddresses];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v23 + 1) + 8 * v11) value];
        [v7 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  if (v4)
  {
    [(EMBlockedSenderManager *)self blockEmailAddresses:v7];
  }

  else
  {
    [(EMBlockedSenderManager *)self unblockEmailAddresses:v7];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v6 phoneNumbers];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) value];
        if (v4)
        {
          [(EMBlockedSenderManager *)self _blockPhoneNumber:v17];
        }

        else
        {
          [(EMBlockedSenderManager *)self _unblockPhoneNumber:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1C6677B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void -[EMBlockedSenderManager _blockPhoneNumber:](EMBlockedSenderManager *self, SEL a2, id a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%p: Block phone number", &v9, 0xCu);
  }

  v6 = [v4 formattedInternationalStringValue];
  CMFItemFromString = CreateCMFItemFromString();
  if (CMFItemFromString)
  {
    CMFBlockListAddItemForAllServices();
    CFRelease(CMFItemFromString);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1C66785B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMBusinessExternalID;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6679050(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66796DC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6679864(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6679B38(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6679EB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C667A22C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C667BB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);

  objc_destroyWeak((v6 - 24));
  _Unwind_Resume(a1);
}

id _ef_log_EMCategorizationSyncManager()
{
  if (_ef_log_EMCategorizationSyncManager_onceToken != -1)
  {
    _ef_log_EMCategorizationSyncManager_cold_1();
  }

  v1 = _ef_log_EMCategorizationSyncManager_log;

  return v1;
}

void sub_1C667C4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C667C740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C667C9B0(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1C667CEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __getMCCCategoryRulesControllerClass_block_invoke(uint64_t a1)
{
  icloudMCCKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MCCCategoryRulesController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCCCategoryRulesControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCCCategoryRulesControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"EMCategorizationSyncManager.m" lineNumber:20 description:{@"Unable to find class %s", "MCCCategoryRulesController"}];

    __break(1u);
  }
}

void icloudMCCKitLibrary()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!icloudMCCKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __icloudMCCKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/icloudMCCKit.framework/icloudMCCKit";
    icloudMCCKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!icloudMCCKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *icloudMCCKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"EMCategorizationSyncManager.m" lineNumber:19 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __icloudMCCKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  icloudMCCKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getMCCSecretAgentControllerClass_block_invoke(uint64_t a1)
{
  icloudMCCKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MCCSecretAgentController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCCSecretAgentControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCCSecretAgentControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"EMCategorizationSyncManager.m" lineNumber:21 description:{@"Unable to find class %s", "MCCSecretAgentController"}];

    __break(1u);
  }
}

__CFString *EMShortStringFromCategoryType(unint64_t a1)
{
  if (a1 < 4)
  {
    return off_1E826C638[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *EMShortStringFromCategoryType(EMCategoryType)"];
  [v3 handleFailureInFunction:v4 file:@"EMCategory.m" lineNumber:84 description:{@"Unexpected category type: %ld", a1}];

  return @"None";
}

__CFString *EMShortStringFromSubtype(unint64_t a1)
{
  if (a1 < 9)
  {
    return off_1E826C658[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *EMShortStringFromSubtype(EMCategorySubtype)"];
  [v3 handleFailureInFunction:v4 file:@"EMCategory.m" lineNumber:110 description:{@"Unexpected category type: %ld", a1}];

  return @"None";
}

uint64_t EMCategoryTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"Transactions"])
  {
    if ([v1 caseInsensitiveCompare:@"Updates"])
    {
      if ([v1 caseInsensitiveCompare:@"Promotions"])
      {
        v2 = 0;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

__CFString *EMStringFromCategorizationState(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Uncategorized";
  }

  else
  {
    return off_1E826C6A0[a1 - 1];
  }
}

uint64_t EMCategoryFromSubtype(uint64_t a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1C674E648[a1 - 2];
  }
}

__CFString *EMShortStringForCategory(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 state];
    if (v3 >= 5)
    {
      v6 = 0;
    }

    else
    {
      v4 = off_1E826C6C0[v3];
      v5 = [v2 _shortDescription];
      v6 = [(__CFString *)v4 stringByAppendingString:v5];
    }
  }

  else
  {
    v6 = @"N/A";
  }

  return v6;
}

void sub_1C667E118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMCertificateTrustInformation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C667EAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C667FA18(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6680640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C6681054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C6682130(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_1C6682630(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C66826F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6682B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = EMContentRepresentation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6683EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  v18 = v17;

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 encodeObject:v10 forKey:?];
}

void OUTLINED_FUNCTION_3(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_1C6685370(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C66856BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v29 - 88));

  _Unwind_Resume(a1);
}

void sub_1C6686100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_1C6686918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C6686A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1C6686B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = EMDaemonBooster;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C668737C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v32 + 32));

  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C6687620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMDaemonInterface;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6687B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1C6688024(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 13);

  _Unwind_Resume(a1);
}

void sub_1C668861C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C668871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C668927C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C6689334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_s *a10)
{
  os_unfair_lock_unlock(a10 + 2);

  _Unwind_Resume(a1);
}

void sub_1C66894AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  os_unfair_lock_unlock(v9 + 2);
  a9.receiver = v9;
  a9.super_class = EMDiagnosticInfoGatherer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6689708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C66898E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C6689AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C6689B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C668A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57)
{
  _Block_object_dispose(&a52, 8);

  _Unwind_Resume(a1);
}

void sub_1C668AB30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C668ABB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = EMDiagnosticsHelper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C668ADE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t EMBlackPearlIsLanguageSupported()
{
  if (EMBlackPearlIsLanguageSupported_onceToken != -1)
  {
    EMBlackPearlIsLanguageSupported_cold_1();
  }

  return EMBlackPearlIsLanguageSupported_isSupportedLocale;
}

id EMFeatureOverride(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (sFeatureOverrideDictionary)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v4];
    v6 = [sFeatureOverrideDictionary objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void EMSetFeatureOverride(void *a1, void *a2, void *a3)
{
  v12 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v12;
  v8 = v6;
  if (!sFeatureOverrideDictionary)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = sFeatureOverrideDictionary;
    sFeatureOverrideDictionary = v9;

    v7 = v12;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v7, v5];
  [sFeatureOverrideDictionary setObject:v8 forKeyedSubscript:v11];
}

uint64_t EMResetFeatureOverrides()
{
  result = sFeatureOverrideDictionary;
  if (sFeatureOverrideDictionary)
  {
    return [sFeatureOverrideDictionary removeAllObjects];
  }

  return result;
}

Class __getMCCSecretAgentControllerClass_block_invoke_0(uint64_t a1)
{
  v8[9] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!icloudMCCKitLibraryCore_frameworkLibrary_0)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __icloudMCCKitLibraryCore_block_invoke_0;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v8[7] = 0;
    v8[8] = 0;
    v8[6] = "/System/Library/PrivateFrameworks/icloudMCCKit.framework/icloudMCCKit";
    icloudMCCKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!icloudMCCKitLibraryCore_frameworkLibrary_0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *icloudMCCKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"EMFeatureFlag.m" lineNumber:24 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("MCCSecretAgentController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCCSecretAgentControllerClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"EMFeatureFlag.m" lineNumber:25 description:{@"Unable to find class %s", "MCCSecretAgentController"}];

LABEL_10:
    __break(1u);
  }

  getMCCSecretAgentControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __icloudMCCKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  icloudMCCKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C668BF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id _ef_log_EMFocusController()
{
  if (_ef_log_EMFocusController_onceToken != -1)
  {
    _ef_log_EMFocusController_cold_1();
  }

  v1 = _ef_log_EMFocusController_log;

  return v1;
}

void sub_1C668C3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EMFocusController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C668C634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1C668CA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  os_unfair_lock_unlock(v17 + 10);
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1C668CB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_s *a10)
{
  os_unfair_lock_unlock(a10 + 10);

  _Unwind_Resume(a1);
}

void sub_1C668CF18(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock(v1 + 10);
  _Unwind_Resume(a1);
}

void sub_1C668D510(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C668DABC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

double +[EMForceBlankCellsController _blockRate](id a1, SEL a2)
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 objectForKey:@"BlankCellBlockRate"];

  if (!v3)
  {
LABEL_9:
    v5 = 0.2;
    goto LABEL_10;
  }

  [v3 doubleValue];
  v5 = v4;
  if (v4 < 0.0 || v4 > 1.0)
  {
    v7 = +[EMForceBlankCellsController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(EMForceBlankCellsController *)v7];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

void sub_1C668EFC0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *EMGroupedSenderGroupingDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Simple Address";
  }

  else
  {
    return off_1E826D0E8[a1];
  }
}

id _ef_log_EMGroupedSenderCollectionItemID()
{
  if (_ef_log_EMGroupedSenderCollectionItemID_onceToken != -1)
  {
    _ef_log_EMGroupedSenderCollectionItemID_cold_1();
  }

  v1 = _ef_log_EMGroupedSenderCollectionItemID_log;

  return v1;
}

void sub_1C6691D84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6692C54(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6693478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1C6693A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1C6694520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_1C66949A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1C6694C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_1C6694F28(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_1C6695088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_1C6695C7C(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6696220(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6696388(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6697598(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C66978C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C669A770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id EMRecodeDataToNetwork(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];
  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_12;
  }

  v5 = &v2[v3];
  v6 = v3;
  v7 = v3;
  v8 = v2;
  do
  {
    v9 = memchr(v8, 10, v7);
    v10 = v8 - (v9 + 1);
    if (v9)
    {
      v8 = v9 + 1;
    }

    else
    {
      v8 = &v2[v4];
    }

    if (!v9)
    {
      v10 = 0;
    }

    v7 += v10;
    if (v9)
    {
      ++v6;
    }
  }

  while (v8 < v5);
  if (v6 == v4)
  {
LABEL_12:
    v11 = v1;
  }

  else
  {
    v12 = malloc_type_malloc(v6, 0x57E173BBuLL);
    v13 = v12;
    if (v4 >= 1)
    {
      v14 = v12;
      while (1)
      {
        v15 = memchr(v2, 10, v4);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = v15 - v2;
        if (v15 != v2)
        {
          memcpy(v14, v2, v17);
        }

        v18 = &v14[v17];
        *v18 = 2573;
        v14 = v18 + 2;
        v4 = &v2[v4] - (v16 + 1);
        v2 = v16 + 1;
        if ((v16 + 1) >= v5)
        {
          goto LABEL_21;
        }
      }

      memcpy(v14, v2, v5 - v2);
    }

LABEL_21:
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v13 length:v6 freeWhenDone:1];
  }

  v19 = v11;

  return v19;
}

void sub_1C669BB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1C669C1C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id EMLogCategoryMessageLoading()
{
  if (EMLogCategoryMessageLoading_onceToken != -1)
  {
    EMLogCategoryMessageLoading_cold_1();
  }

  v1 = EMLogCategoryMessageLoading_os_log;

  return v1;
}

void __EMLogCategoryMessageLoading_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MessageLoading");
  v1 = EMLogCategoryMessageLoading_os_log;
  EMLogCategoryMessageLoading_os_log = v0;
}

id EMLogMailDrop()
{
  if (EMLogMailDrop_onceToken != -1)
  {
    EMLogMailDrop_cold_1();
  }

  v1 = EMLogMailDrop_os_log;

  return v1;
}

void __EMLogMailDrop_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MailDrop");
  v1 = EMLogMailDrop_os_log;
  EMLogMailDrop_os_log = v0;
}

id EMLogSearch()
{
  if (EMLogSearch_onceToken != -1)
  {
    EMLogSearch_cold_1();
  }

  v1 = EMLogSearch_os_log;

  return v1;
}

void __EMLogSearch_block_invoke()
{
  v0 = os_log_create("com.apple.email", "Search");
  v1 = EMLogSearch_os_log;
  EMLogSearch_os_log = v0;
}

id EMLogCompose()
{
  if (EMLogCompose_onceToken[0] != -1)
  {
    EMLogCompose_cold_1();
  }

  v1 = EMLogCompose_os_log;

  return v1;
}

void __EMLogCompose_block_invoke()
{
  v0 = os_log_create("com.apple.email", "Compose");
  v1 = EMLogCompose_os_log;
  EMLogCompose_os_log = v0;
}

id EMLogSearchableIndexStatus()
{
  if (EMLogSearchableIndexStatus_onceToken != -1)
  {
    EMLogSearchableIndexStatus_cold_1();
  }

  v1 = EMLogSearchableIndexStatus_os_log;

  return v1;
}

void __EMLogSearchableIndexStatus_block_invoke()
{
  v0 = os_log_create("com.apple.email", "SearchableIndexStatus");
  v1 = EMLogSearchableIndexStatus_os_log;
  EMLogSearchableIndexStatus_os_log = v0;
}

id EMLogBIMI()
{
  if (EMLogBIMI_onceToken != -1)
  {
    EMLogBIMI_cold_1();
  }

  v1 = EMLogBIMI_os_log;

  return v1;
}

void __EMLogBIMI_block_invoke()
{
  v0 = os_log_create("com.apple.email", "BIMI");
  v1 = EMLogBIMI_os_log;
  EMLogBIMI_os_log = v0;
}

id EMLogUtilities()
{
  if (EMLogUtilities_onceToken != -1)
  {
    EMLogUtilities_cold_1();
  }

  v1 = EMLogUtilities_os_log;

  return v1;
}

void __EMLogUtilities_block_invoke()
{
  v0 = os_log_create("com.apple.email", "Utilities");
  v1 = EMLogUtilities_os_log;
  EMLogUtilities_os_log = v0;
}

id _ef_log_EMMailboxCategoryCloudStorage()
{
  if (_ef_log_EMMailboxCategoryCloudStorage_onceToken != -1)
  {
    _ef_log_EMMailboxCategoryCloudStorage_cold_1();
  }

  v1 = _ef_log_EMMailboxCategoryCloudStorage_log;

  return v1;
}

void sub_1C66A1AB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___mailboxTypeOrder_block_invoke()
{
  v0 = _mailboxTypeOrder_order;
  _mailboxTypeOrder_order = &unk_1F461CE40;
}

void sub_1C66A30CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C66A3234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMMailboxRepository;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66A3334(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66A38FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10)
{
  os_unfair_lock_unlock(&a10[v10]);

  _Unwind_Resume(a1);
}

void sub_1C66A3EDC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1C66A4400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C66A47E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1C66A4970(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_1C66A4AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C66A5274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  os_unfair_lock_unlock((a21 + v22));

  _Unwind_Resume(a1);
}

void sub_1C66A56E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C66A60F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C66A76B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C66A7798(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C66A8D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C66A9738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

id EMMarkAsReadBehaviorExplanation(unint64_t a1)
{
  if (a1 <= 3)
  {
    v2 = off_1E826D9F0[a1];
    a1 = _EFLocalizedString();
  }

  return a1;
}

void sub_1C66AC43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1C66AC9BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C66ADA90(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void sub_1C66ADB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_1C66ADF60(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C66AE164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v25 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C66AF3A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1C66B0E34(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1C66B1BE8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66B2B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1C66B2FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C66B3458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C66B3798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C66B4544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C66B5170(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C66B9568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  os_unfair_lock_unlock((v42 + v45));

  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_1C66BA1B4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1C66BA834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C66C1454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  if (!v23)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1C66C1F24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66C55BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id predicateFromPredicateIgnoringPredicates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 ef_matchesEverything] & 1) != 0 || objc_msgSend(v3, "ef_matchesNothing"))
  {
    goto LABEL_3;
  }

  if ([v4 containsObject:v3])
  {
    v5 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_3:
    v5 = v3;
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __predicateFromPredicateIgnoringPredicates_block_invoke;
  v8[3] = &unk_1E826E458;
  v9 = v4;
  v6 = predicateFromCompoundPredicateWithChangeBlock(v3, v8);

LABEL_5:

  return v6;
}

id __predicateFromPredicateIgnoringPredicates_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = predicateFromPredicateIgnoringPredicates(a2, *(a1 + 32));

  return v2;
}

id normalizedForNotCompoundPredicate(void *a1)
{
  v1 = a1;
  if ([v1 compoundPredicateType])
  {
    v2 = [v1 subpredicates];
    v3 = [v2 ef_map:&__block_literal_global_150];

    if ([v1 compoundPredicateType] == 1)
    {
      [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];
    }

    else
    {
      [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];
    }
    v4 = ;
  }

  else
  {
    v3 = [v1 subpredicates];
    v4 = [v3 firstObject];
  }

  v5 = v4;

  return v5;
}

id __normalizedForNotCompoundPredicate_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v2 compoundPredicateType])
  {
    v5 = [v2 subpredicates];
    v3 = [v5 firstObject];
  }

  else
  {
    v3 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v2];
  }

  return v3;
}

id resolveSetsForAnd(void *a1, void *a2, BOOL *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 count])
  {
    *a3 = 0;
    if ([v6 count])
    {
      [v5 minusSet:v6];
    }

    v7 = [v5 ef_notEmpty];
    goto LABEL_7;
  }

  if (v5)
  {
    *a3 = 0;
    v7 = v5;
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  v8 = v6;
  *a3 = [v8 count] != 0;
LABEL_8:

  return v8;
}

void __combinedMailboxScopeForMailboxScopesHelper_block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __combinedMailboxScopeForMailboxScopesHelper_block_invoke_2;
  v10[3] = &unk_1E826E568;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = a2;
  v7 = [v4 ef_filter:v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

BOOL __combinedMailboxScopeForMailboxScopesHelper_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) mailboxTypeForMailboxObjectID:a2];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  LODWORD(v4) = [v4 containsObject:v5];

  return *(a1 + 48) == v4;
}

uint64_t __combinedMailboxScopeForMailboxScopesHelper_block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __combinedMailboxScopeForMailboxScopesHelper_block_invoke_4;
  v7[3] = &unk_1E826E5B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v5 = [v2 ef_any:v7];

  return v5;
}

uint64_t __combinedMailboxScopeForMailboxScopesHelper_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mailboxTypeForMailboxObjectID:v3];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  LODWORD(v5) = [v5 containsObject:v6];

  return v5 ^ 1;
}

uint64_t __combinedMailboxScopeForMailboxScopesHelper_block_invoke_5(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __combinedMailboxScopeForMailboxScopesHelper_block_invoke_6;
  v7[3] = &unk_1E826E5B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v5 = [v2 ef_all:v7];

  return v5;
}

uint64_t __combinedMailboxScopeForMailboxScopesHelper_block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mailboxTypeForMailboxObjectID:v3];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  LODWORD(v5) = [v5 containsObject:v6];

  return v5 ^ 1;
}

uint64_t __combinedMailboxScopeForMailboxScopesHelper_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 excludeTypes] & 1) != 0 || (objc_msgSend(v3, "excludeMailboxes"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 mailboxTypes];
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (EFSetsAreEqual())
    {
      v7 = [v3 mailboxObjectIDs];
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v4 = EFSetsAreEqual();
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id mailboxScopeForMessageObjectIDConstantValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[EMMailboxScope allMailboxesScope];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(EMObjectID *)EMMessageObjectID objectIDFromSerializedRepresentation:v3];
    v7 = [v6 mailboxScope];
LABEL_6:
    v8 = v7;

    v5 = v8;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v6 = [v3 ef_map:&__block_literal_global_168];
    v7 = combinedMailboxScopeForMailboxScopes(v6, v4, 0);
    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

id __mailboxScopeForMailboxObjectIDValue_block_invoke(uint64_t a1, void *a2)
{
  v2 = mailboxObjectIDForConstantValue(a2);

  return v2;
}

id __mailboxScopeForMessageObjectIDConstantValue_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(EMObjectID *)EMMessageObjectID objectIDFromSerializedRepresentation:a2];
  v3 = [v2 mailboxScope];

  return v3;
}

void sub_1C66CEE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C66CF054(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&v1[v3]);

  _Unwind_Resume(a1);
}

void sub_1C66CF104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMMessageRepository;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66CF80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C66CFE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, void *a35)
{
  os_activity_scope_leave((v39 - 160));

  _Unwind_Resume(a1);
}

void sub_1C66D06A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);

  _Unwind_Resume(a1);
}

void sub_1C66D0E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1C66D150C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v4 + v7));

  _Unwind_Resume(a1);
}

void sub_1C66D1BD0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1C66D2058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C66D2388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);

  os_unfair_lock_unlock((v29 + v34));
  _Unwind_Resume(a1);
}

void sub_1C66D52B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C66D5488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1C66D5CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1C66D5E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C66D600C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C66D647C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C66D65C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C66D68A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C66D6C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1C66D717C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C66D7238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C66D77C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C66D80DC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C66D85D8(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1C66D9174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void -[EMMessageRepository _blockedSendersDidChange:](EMMessageRepository *self, SEL a2, id a3)
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"EMBlockedSenderManagerBlockedSendersKey"];
  v7 = [v5 objectForKeyedSubscript:@"EMBlockedSenderManagerIsBlockedSenderEnabledKey"];
  v8 = [v7 BOOLValue];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMMessageRepository__blockedSendersDidChange___block_invoke;
  aBlock[3] = &unk_1E826EDD0;
  v14 = v8;
  v9 = v6;
  v12 = v9;
  v13 = self;
  v10 = _Block_copy(aBlock);
  [(EMMessageRepository *)self _broadcastMessageListItemChangesToObservers:v10 forObjectIDs:0];
}

void sub_1C66DB218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C66DB2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C66DBE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _EMMessageRepositoryMailboxPredictionObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66DC0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1C66DC278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _EMOneTimeCodeObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void __descriptionForObjectIDToItemDictionary_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v14 collectionItemID];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 appendFormat:@"%@ = <%@: %p>\n", v8, v11, v7];

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 24) - 1;
  *(v12 + 24) = v13;
  if (!v13)
  {
    [*(a1 + 32) appendString:@"...\n"];
    *a4 = 1;
  }
}

void sub_1C66DCC98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66DD39C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66DE058(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id ___registerEMErrorDomainUserInfoValueProvider_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (![v5 isEqualToString:*MEMORY[0x1E696A278]])
  {
    v9 = 0;
    goto LABEL_26;
  }

  v6 = [v4 code];
  if (v6 <= 1025)
  {
    if (v6 > 1023)
    {
      if (v6 != 1024)
      {
        v7 = v6 == 1025;
        v8 = @"EMItemTemporarilyUnavailableError";
LABEL_20:
        if (v7)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_26;
      }

      v18 = MEMORY[0x1E696AEC0];
      v15 = [v4 userInfo];
      v16 = [v15 objectForKeyedSubscript:@"itemID"];
      v17 = [v18 stringWithFormat:@"Item not found (itemID: %@)", v16];
    }

    else
    {
      if (v6 != 1)
      {
        v7 = v6 == 2;
        v8 = @"EMConnectionInvalidated";
        goto LABEL_20;
      }

      v14 = MEMORY[0x1E696AEC0];
      v15 = [v4 userInfo];
      v16 = [v15 objectForKeyedSubscript:@"reason"];
      v17 = [v14 stringWithFormat:@"Internal error (reason: %@)", v16];
    }

    v9 = v17;

    goto LABEL_26;
  }

  v10 = @"EMContentCorruptError";
  v11 = @"EMContentLoadFailedError";
  if (v6 != 2050)
  {
    v11 = 0;
  }

  if (v6 != 2049)
  {
    v10 = v11;
  }

  v12 = @"EMItemTimeoutError";
  v13 = @"EMContentUnavailableError";
  if (v6 != 2048)
  {
    v13 = 0;
  }

  if (v6 != 1026)
  {
    v12 = v13;
  }

  if (v6 <= 2048)
  {
    v9 = v12;
  }

  else
  {
    v9 = v10;
  }

LABEL_26:

  return v9;
}

void sub_1C66DF278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C66DF644(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66DFFBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66E0C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = EMOneTimeCodeAccelerator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66E2BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C66E2D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMOutgoingMessageRepository;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66E4AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C66E4EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C66E524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1C66E6C68(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1C66E6E9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66E8540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

void sub_1C66E8F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(&sSortDescriptorsLock);

  _Unwind_Resume(a1);
}

void sub_1C66E9058(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&sSortDescriptorsLock);

  _Unwind_Resume(a1);
}

uint64_t hashForPredicate(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 5381;
    v3 = [v2 compoundPredicateType];
    v18[3] = v3 + 177573;
    v4 = objc_alloc_init(MEMORY[0x1E699B810]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v2 subpredicates];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addIndex:hashForPredicate(*(*(&v13 + 1) + 8 * v8++))];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v6);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __hashForPredicate_block_invoke;
    v12[3] = &unk_1E826F288;
    v12[4] = &v17;
    [v4 enumerateIndexesUsingBlock:v12];
    v9 = v18[3];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = [v1 hash];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1C66EA498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t predicatesAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v3;
    v6 = v4;
    v7 = [v5 compoundPredicateType];
    if (v7 == [v6 compoundPredicateType])
    {
      v8 = [v5 subpredicates];
      v9 = [v6 subpredicates];
      v10 = [v8 count];
      if (v10 == [v9 count])
      {
        if ([v8 count])
        {
          if ([v8 count] == 1)
          {
            v11 = [v8 firstObject];
            v12 = [v9 firstObject];
            v13 = predicatesAreEqual(v11, v12);
          }

          else
          {
            v11 = predicatesByHashForPredicates(v8);
            v12 = predicatesByHashForPredicates(v9);
            v13 = predicatesByHashAreEqual(v11, v12);
          }

          v14 = v13;
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = EFObjectsAreEqual();
  }

  return v14;
}

id predicatesByHashForPredicates(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v1 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = v11;
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = *v14;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v14 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v13 + 1) + 8 * i);
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:hashForPredicate(v5)];
        v7 = [v1 objectForKeyedSubscript:v6];
        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = v7;
            [v8 addObject:v5];
          }

          else
          {
            v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, v5, 0}];
            [v1 setObject:v8 forKeyedSubscript:v6];
          }
        }

        else
        {
          [v1 setObject:v5 forKeyedSubscript:v6];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v2);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t predicatesByHashAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __predicatesByHashAreEqual_block_invoke;
    v8[3] = &unk_1E826F2B0;
    v9 = v4;
    v10 = &v11;
    [v3 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1C66EAD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __predicatesByHashAreEqual_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (predicatesAreEqual(v8, v9) & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v23 = [*(a1 + 32) objectForKeyedSubscript:v7];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v11 = [v10 count], v11 == objc_msgSend(v23, "count")))
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        obj = v10;
        v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v12)
        {
          v21 = v7;
          v22 = *v29;
          while (1)
          {
            v13 = 0;
LABEL_12:
            if (*v29 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v28 + 1) + 8 * v13);
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v15 = v23;
            v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (!v16)
            {
              break;
            }

            v17 = *v25;
LABEL_16:
            v18 = 0;
            while (1)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v15);
              }

              if (predicatesAreEqual(v14, *(*(&v24 + 1) + 8 * v18)))
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v16)
                {
                  goto LABEL_16;
                }

                goto LABEL_28;
              }
            }

            v7 = v21;
            if (++v13 != v12)
            {
              goto LABEL_12;
            }

            v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
            if (!v12)
            {
              goto LABEL_29;
            }
          }

LABEL_28:

          v7 = v21;
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
        }

LABEL_29:
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
        *a4 = 1;
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1C66EB4E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C66EB6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;
  os_unfair_lock_unlock((v10 + v13));

  _Unwind_Resume(a1);
}

void sub_1C66EB770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;
  os_unfair_lock_unlock((v10 + v13));

  _Unwind_Resume(a1);
}

void sub_1C66EB924(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v3 + v4));

  _Unwind_Resume(a1);
}

void sub_1C66EBA08(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1C66EBC6C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v3 + v4));

  _Unwind_Resume(a1);
}

void sub_1C66ECEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C66EE464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1C66EE7FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C66F1034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMRemoteConnectionRecoveryAssertion;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66F17D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMRemoteConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66F21A8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 16);

  _Unwind_Resume(a1);
}

uint64_t __defaultReattemptingHandlerForConnection_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"EMErrorDomain"])
  {
    v5 = [v3 code];

    if (v5 == 2)
    {
      v6 = +[EMRemoteConnection log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        [v3 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __defaultReattemptingHandlerForConnection_block_invoke_cold_2();
      }

      v8 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v6 = +[EMRemoteConnection log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __defaultReattemptingHandlerForConnection_block_invoke_cold_1();
  }

  v8 = 1;
LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __defaultNonReattemptingHandlerForConnection_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EMRemoteConnection log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __defaultNonReattemptingHandlerForConnection_block_invoke_cold_1();
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __nonReattemptingHandlerForErrorHandler_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  return 0;
}

void sub_1C66F5094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

id _ef_log_EMRemoteContentURLSession()
{
  if (_ef_log_EMRemoteContentURLSession_onceToken != -1)
  {
    _ef_log_EMRemoteContentURLSession_cold_1();
  }

  v1 = _ef_log_EMRemoteContentURLSession_log;

  return v1;
}

void sub_1C66F6498(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock(v2 + 8);
  _Unwind_Resume(a1);
}

void sub_1C66F65F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C66F68C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1C66F7870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void EMPrivacyProxyIsDisabledForNetwork(void *a1)
{
  v1 = a1;
  if (EMPrivacyProxyIsDisabledForNetwork_onceToken != -1)
  {
    EMPrivacyProxyIsDisabledForNetwork_cold_1();
  }

  v2 = MEMORY[0x1E69B37E0];
  v3 = EMPrivacyProxyIsDisabledForNetwork_sPrivacyProxyStatusQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __EMPrivacyProxyIsDisabledForNetwork_block_invoke_2;
  v5[3] = &unk_1E826F7A0;
  v6 = v1;
  v4 = v1;
  [v2 getServiceStatus:v3 completionHandler:v5];
}

void __EMPrivacyProxyIsDisabledForNetwork_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.email.EMRemoteContentURLSchemeHandler.privacyProxyStatusQueue", v0);
  v2 = EMPrivacyProxyIsDisabledForNetwork_sPrivacyProxyStatusQueue;
  EMPrivacyProxyIsDisabledForNetwork_sPrivacyProxyStatusQueue = v1;

  v3 = os_log_create("com.apple.email", "EMRemoteContentURLUtilities");
  v4 = EMPrivacyProxyIsDisabledForNetwork_sLog;
  EMPrivacyProxyIsDisabledForNetwork_sLog = v3;
}

void __EMPrivacyProxyIsDisabledForNetwork_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = EMPrivacyProxyIsDisabledForNetwork_sLog;
  if (v5)
  {
    if (os_log_type_enabled(EMPrivacyProxyIsDisabledForNetwork_sLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "Got service status: %{public}@", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v5 networkStatuses];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if (![*(*(&v15 + 1) + 8 * v11) networkStatus])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = EMPrivacyProxyIsDisabledForNetwork_sLog;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v6 ef_publicDescription];
      __EMPrivacyProxyIsDisabledForNetwork_block_invoke_2_cold_1(v13, buf, v12);
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1C66F8D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C66F8DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C66F8E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C66F949C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_1C66FA1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, id location)
{
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a57);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C66FABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = EMSearchableIndexQuery;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C66FDEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C66FEFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C66FF100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C66FF280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C66FF3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C67001B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMSearchableIndexTopHitsQuery;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6700418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v18 - 88));

  _Unwind_Resume(a1);
}

void sub_1C6702AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMSender;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6702FB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id _ef_log_EMServerConfiguration()
{
  if (_ef_log_EMServerConfiguration_onceToken != -1)
  {
    _ef_log_EMServerConfiguration_cold_1();
  }

  v1 = _ef_log_EMServerConfiguration_log;

  return v1;
}

void sub_1C67043AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromEMSmartMailboxType(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      result = @"Flagged";
      break;
    case 2:
      result = @"Unread";
      break;
    case 3:
      result = @"Includes Me";
      break;
    case 4:
      result = @"Has Attachments";
      break;
    case 5:
      result = @"Notify Threads";
      break;
    case 6:
      result = @"Today";
      break;
    case 7:
      result = @"Mute Threads";
      break;
    case 8:
      if ((a2 - 1) >= 7)
      {
        result = @"Unified";
      }

      else
      {
        result = off_1E826FB38[a2 - 1];
      }

      break;
    case 9:
      result = @"Read Later";
      break;
    case 10:
      result = @"Follow Up";
      break;
    case 11:
      result = @"Send Later";
      break;
    case 12:
      result = @"Unsubscribe";
      break;
    case 13:
      result = @"Spotlight";
      break;
    case 14:
      result = @"iCloud Cleanup";
      break;
    default:
      result = @"VIP";
      break;
  }

  return result;
}

void sub_1C6705218(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6705494(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6705714(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6705994(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6705C14(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6705E94(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6706114(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6706394(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6706614(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6706890(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6706B0C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6706D88(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6707004(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6707280(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C67074FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6707778(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C67079F4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6707C70(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6707EEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6708168(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C67083F4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6708630(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id _ef_log_EMSMIMEUtilities()
{
  if (_ef_log_EMSMIMEUtilities_onceToken != -1)
  {
    _ef_log_EMSMIMEUtilities_cold_1();
  }

  v1 = _ef_log_EMSMIMEUtilities_log;

  return v1;
}

void sub_1C670BE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  os_unfair_lock_unlock((v10 + v12));

  _Unwind_Resume(a1);
}

void sub_1C670BEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  os_unfair_lock_unlock((v10 + v12));

  _Unwind_Resume(a1);
}

void sub_1C670E674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C670F2C8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C670F798(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C670FCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_NSU9ChangeReasonString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown change reason (%lu)", a1];
  }

  else
  {
    v2 = off_1E826FC80[a1];
  }

  return v2;
}

void sub_1C6711E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12)
{
  os_unfair_lock_unlock(v12 + 2);

  _Unwind_Resume(a1);
}

void sub_1C6712638(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6712AC4(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1C6712C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1C6712CC0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6713014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C67130FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EMVIPManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C6713364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(v21 + 2);
  _Unwind_Resume(a1);
}

void sub_1C67136CC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void sub_1C6713AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  os_unfair_lock_unlock(v15 + 2);

  _Unwind_Resume(a1);
}

void sub_1C6713BFC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void __sharedClientVIPManager_block_invoke()
{
  v0 = objc_alloc_init(EMDaemonInterface);
  v1 = sharedClientVIPManager_daemonInterface;
  sharedClientVIPManager_daemonInterface = v0;

  v2 = [sharedClientVIPManager_daemonInterface vipManager];
  v3 = sharedClientVIPManager_vipManager;
  sharedClientVIPManager_vipManager = v2;
}

void sub_1C6715324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t EMActivityType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x69726F6765746163;
      }

      return sub_1C6725AAC();
    }

    return 0x6C69614D646E6573;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6863746566;
      }

      return sub_1C6725AAC();
    }

    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1C67154D4()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x69726F6765746163;
      }

      goto LABEL_8;
    }

    return 0x6C69614D646E6573;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6863746566;
      }

LABEL_8:
      v3 = *v0;
      return sub_1C6725AAC();
    }

    return 0x6E776F6E6B6E75;
  }
}

uint64_t EMActivityFetchState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1701736292;
      }

      return sub_1C6725AAC();
    }

    return 0xD000000000000013;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD000000000000015;
      }

      return sub_1C6725AAC();
    }

    return 0x697463656E6E6F63;
  }
}

uint64_t sub_1C67156B4()
{
  v1 = *v0;
  sub_1C672588C();
  v2 = sub_1C672584C();

  v3 = sub_1C672588C();
  v4 = MEMORY[0x1C695C4D0](v3);

  return v4;
}

uint64_t sub_1C6715718()
{
  v1 = *v0;
  sub_1C672588C();
  v2 = sub_1C672584C();

  sub_1C672588C();
  sub_1C672589C();
}

uint64_t sub_1C6715794()
{
  v1 = *v0;
  sub_1C672588C();
  v2 = sub_1C672584C();

  sub_1C672588C();
  sub_1C6725B3C();
  sub_1C672589C();
  v3 = sub_1C6725B6C();

  return v3;
}

uint64_t sub_1C6715840(uint64_t a1, id *a2)
{
  result = sub_1C672586C();
  *a2 = 0;
  return result;
}

uint64_t sub_1C67158B8(uint64_t a1, id *a2)
{
  v3 = sub_1C672587C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C6715938(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C672588C();
  v4 = sub_1C672584C();

  sub_1C672588C();
  v5 = sub_1C672584C();

  v6 = sub_1C672588C();
  v8 = v7;
  if (v6 == sub_1C672588C() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6725ACC();
  }

  return v11 & 1;
}

uint64_t sub_1C6715A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_1C672588C();
  v7 = a3(v6);

  return v7;
}

uint64_t sub_1C6715A4C()
{
  v1 = *v0;
  sub_1C672588C();
  sub_1C672589C();
}

uint64_t sub_1C6715AA0()
{
  v1 = *v0;
  sub_1C672588C();
  sub_1C6725B3C();
  sub_1C672589C();
  v2 = sub_1C6725B6C();

  return v2;
}

uint64_t sub_1C6715B14@<X0>(uint64_t *a1@<X8>)
{
  sub_1C672588C();
  v2 = sub_1C672584C();

  *a1 = v2;
  return result;
}

uint64_t sub_1C6715B58(uint64_t a1)
{
  v2 = sub_1C6715CA4(&qword_1EC1CABB0, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1C6715CA4(&unk_1EC1CD0F0, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6715CA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6715D40@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1C672588C();
  v4 = sub_1C672584C();

  *a1 = v4;
  return result;
}

uint64_t sub_1C6715D88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1C672588C();
  v6 = v5;
  if (v4 == sub_1C672588C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6725ACC();
  }

  return v9 & 1;
}

uint64_t sub_1C6715E10(uint64_t a1)
{
  v2 = sub_1C6715CA4(&unk_1EC1CAB68, type metadata accessor for EMActivityUserInfoKey);
  v3 = sub_1C6715CA4(&qword_1EC1CD170, type metadata accessor for EMActivityUserInfoKey);
  v4 = sub_1C6715CA4(&qword_1EC1CD178, type metadata accessor for ProgressUserInfoKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6715F00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C672584C();

  *a2 = v5;
  return result;
}

uint64_t sub_1C6715F48(uint64_t a1)
{
  v2 = sub_1C6715CA4(&qword_1EC1CD178, type metadata accessor for ProgressUserInfoKey);
  v3 = sub_1C6715CA4(&unk_1EC1CD1A0, type metadata accessor for ProgressUserInfoKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1C6716104(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C6716250()
{
  v0 = sub_1C67257AC();
  __swift_allocate_value_buffer(v0, qword_1EC1CAC50);
  __swift_project_value_buffer(v0, qword_1EC1CAC50);
  return sub_1C672579C();
}

uint64_t sub_1C67163BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityStateObserver.Update.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActivityStateObserver.Update(0) + 20);

  return sub_1C6716438(a1, v3);
}

uint64_t sub_1C6716438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStateObserver.ActivityState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ActivityStateObserver.Update.init(mailbox:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for ActivityStateObserver.Update(0);
  return sub_1C6718E14(a2, a3 + *(v5 + 20), type metadata accessor for ActivityStateObserver.ActivityState);
}

uint64_t ActivityStateObserver.ActivityState.localizedDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ActivityStateObserver.ActivityState.localizedDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *ActivityStateObserver.ActivityState.progress.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ActivityStateObserver.ActivityState.error.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ActivityStateObserver.ActivityState.fetchState.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ActivityStateObserver.ActivityState.fetchState.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ActivityStateObserver.ActivityState.lastSuccessfulUpdate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActivityStateObserver.ActivityState(0) + 40);

  return sub_1C6716828(a1, v3);
}

uint64_t sub_1C6716828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ActivityStateObserver.ActivityState.init(kind:running:localizedDescription:progress:error:fetchState:lastSuccessfulUpdate:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a1;
  v17 = *a2;
  v18 = *(type metadata accessor for ActivityStateObserver.ActivityState(0) + 40);
  v19 = sub_1C672568C();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *a9 = v16;
  *(a9 + 1) = v17;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;

  return sub_1C6716828(a10, a9 + v18);
}

uint64_t ActivityStateObserver.ActivityState.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1C6725B3C();
  MEMORY[0x1C695C760](v1);
  return sub_1C6725B6C();
}

uint64_t sub_1C6716A58()
{
  v1 = *v0;
  sub_1C6725B3C();
  MEMORY[0x1C695C760](v1);
  return sub_1C6725B6C();
}

uint64_t sub_1C6716ACC()
{
  v1 = *v0;
  sub_1C6725B3C();
  MEMORY[0x1C695C760](v1);
  return sub_1C6725B6C();
}

uint64_t ActivityStateObserver.ActivityState.Running.hashValue.getter()
{
  v1 = *v0;
  sub_1C6725B3C();
  MEMORY[0x1C695C760](v1);
  return sub_1C6725B6C();
}

id ActivityStateObserver.__allocating_init(queue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___EMActivityStateObserver_state];
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *&v3[OBJC_IVAR___EMActivityStateObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___EMActivityStateObserver_queue] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ActivityStateObserver.init(queue:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___EMActivityStateObserver_state];
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *&v1[OBJC_IVAR___EMActivityStateObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___EMActivityStateObserver_queue] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t ActivityStateObserver.start(registry:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = [a1 registerActivityObserver_];
  v7 = v3 + OBJC_IVAR___EMActivityStateObserver_state;
  os_unfair_lock_lock((v3 + OBJC_IVAR___EMActivityStateObserver_state));
  if (*(v7 + 8))
  {
    sub_1C67259CC();
    __break(1u);
  }

  else
  {
    if (qword_1EC1CAC40 != -1)
    {
      swift_once();
    }

    v8 = sub_1C67257AC();
    __swift_project_value_buffer(v8, qword_1EC1CAC50);
    sub_1C67170E4();
    sub_1C67170E4();
    v9 = sub_1C672578C();
    v10 = sub_1C672592C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v4;
      _os_log_impl(&dword_1C6655000, v9, v10, "0x%lx Starting.", v11, 0xCu);
      MEMORY[0x1C695D5C0](v11, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
    *(v7 + 8) = v6;
    *(v7 + 16) = v12;
    os_unfair_lock_unlock(v7);
    *(v4 + OBJC_IVAR___EMActivityStateObserver_delegate + 8) = a3;
  }

  return MEMORY[0x1EEE6C198]();
}

uint64_t ActivityStateObserver.start(token:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v3 + OBJC_IVAR___EMActivityStateObserver_state;
  os_unfair_lock_lock((v3 + OBJC_IVAR___EMActivityStateObserver_state));
  if (*(v7 + 8))
  {
    sub_1C67259CC();
    __break(1u);
  }

  else
  {
    if (qword_1EC1CAC40 != -1)
    {
      swift_once();
    }

    v8 = sub_1C67257AC();
    __swift_project_value_buffer(v8, qword_1EC1CAC50);
    sub_1C67170E4();
    sub_1C67170E4();
    v9 = sub_1C672578C();
    v10 = sub_1C672592C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v4;
      _os_log_impl(&dword_1C6655000, v9, v10, "0x%lx Starting.", v11, 0xCu);
      MEMORY[0x1C695D5C0](v11, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
    *(v7 + 8) = a1;
    *(v7 + 16) = v12;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v7);
    *(v4 + OBJC_IVAR___EMActivityStateObserver_delegate + 8) = a3;
  }

  return MEMORY[0x1EEE6C198]();
}

Swift::Void __swiftcall ActivityStateObserver.tearDown()()
{
  v1 = v0 + OBJC_IVAR___EMActivityStateObserver_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR___EMActivityStateObserver_state));
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    v3 = *(v1 + 16);
    *(v1 + 8) = xmmword_1C674ED10;
    os_unfair_lock_unlock(v1);
    [v2 cancel];
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = 32;
      do
      {
        v6 = *(v3 + v5);
        v7 = sub_1C672584C();
        [v6 removeObserver:v0 forKeyPath:v7 context:&unk_1EC1CD218];

        v5 += 8;
        --v4;
      }

      while (v4);
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {

    os_unfair_lock_unlock(v1);
  }
}

id ActivityStateObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___EMActivityStateObserver_state];
  os_unfair_lock_lock(&v0[OBJC_IVAR___EMActivityStateObserver_state]);
  if (*&v2[2]._os_unfair_lock_opaque >= 2uLL)
  {
    result = sub_1C67259CC();
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v2);
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_dealloc);
  }

  return result;
}

Swift::Void __swiftcall ActivityStateObserver.registryDidStartActivity(_:)(EMActivity *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD240, &qword_1C674ED28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v21 - v5);
  v7 = type metadata accessor for ActivityStateObserver.Update(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC1CAC40 != -1)
  {
    swift_once();
  }

  v12 = sub_1C67257AC();
  __swift_project_value_buffer(v12, qword_1EC1CAC50);
  v13 = v1;
  sub_1C67170E4();
  sub_1C67170E4();
  v14 = a1;
  sub_1C67170E4();
  sub_1C67170E4();
  p_super = sub_1C672578C();
  v16 = sub_1C672592C();
  if (os_log_type_enabled(p_super, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = v13;

    *(v17 + 12) = 2048;
    *(v17 + 14) = v14;

    _os_log_impl(&dword_1C6655000, p_super, v16, "0x%lx Did start activity 0x%lx", v17, 0x16u);
    MEMORY[0x1C695D5C0](v17, -1, -1);
  }

  else
  {

    p_super = &v14->super;
  }

  v18 = v14;
  sub_1C671775C(v18, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C6719B88(v6, &qword_1EC1CD240, &qword_1C674ED28);
  }

  else
  {
    sub_1C6718E14(v6, v11, type metadata accessor for ActivityStateObserver.Update);
    if (v11[*(v7 + 20) + 1])
    {
      v18 = 0;
      v19 = 2;
    }

    else
    {
      v20 = v18;
      v19 = 0;
    }

    sub_1C6717A9C(v11, v18, v19);

    sub_1C6718E7C(v11);
  }
}

uint64_t sub_1C671775C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD2E0, &qword_1C674EF28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v8 = type metadata accessor for ActivityStateObserver.ActivityState(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  v16 = [a1 userInfo];
  type metadata accessor for EMActivityUserInfoKey(0);
  sub_1C6719B40(&unk_1EC1CAB68, type metadata accessor for EMActivityUserInfoKey);
  v17 = sub_1C672581C();

  if (!*(v17 + 16) || (v18 = sub_1C671FAC0(@"mailboxObjectID"), (v19 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_1C6662408(*(v17 + 56) + 32 * v18, v25);

  sub_1C6719320(0, &qword_1EC1CABB8, off_1E826B518);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v20 = v24[1];
  sub_1C6718920(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1C6718E14(v7, v15, type metadata accessor for ActivityStateObserver.ActivityState);
    sub_1C6718E14(v15, v13, type metadata accessor for ActivityStateObserver.ActivityState);
    *a2 = v20;
    v23 = type metadata accessor for ActivityStateObserver.Update(0);
    sub_1C6718E14(v13, a2 + *(v23 + 20), type metadata accessor for ActivityStateObserver.ActivityState);
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }

  sub_1C6719B88(v7, &qword_1EC1CD2E0, &qword_1C674EF28);
LABEL_8:
  v21 = type metadata accessor for ActivityStateObserver.Update(0);
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

void sub_1C6717A9C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v28 = a1;
  v7 = sub_1C67257DC();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C67257FC();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActivityStateObserver.Update(0);
  v27 = *(v15 - 8);
  v16 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (v3 + OBJC_IVAR___EMActivityStateObserver_state);
  os_unfair_lock_lock((v3 + OBJC_IVAR___EMActivityStateObserver_state));
  v18 = sub_1C67185C8(a2, a3);
  os_unfair_lock_unlock(v17);
  if ((v18 & 1) == 0)
  {
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_7:
        v26[1] = *(v4 + OBJC_IVAR___EMActivityStateObserver_queue);
        v20 = v4 + OBJC_IVAR___EMActivityStateObserver_delegate;
        Strong = swift_unknownObjectWeakLoadStrong();
        v22 = *(v20 + 8);
        sub_1C6719824(v28, v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityStateObserver.Update);
        v23 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = Strong;
        *(v24 + 24) = v22;
        sub_1C6718E14(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for ActivityStateObserver.Update);
        aBlock[4] = sub_1C671988C;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C67187AC;
        aBlock[3] = &block_descriptor;
        v25 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        sub_1C67257EC();
        v32 = MEMORY[0x1E69E7CC0];
        sub_1C6719B40(&qword_1EC1CAC38, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1CD2D0, &qword_1C674EF20);
        sub_1C6719938();
        sub_1C672597C();
        MEMORY[0x1C695C550](0, v14, v10, v25);
        _Block_release(v25);
        swift_unknownObjectRelease();
        (*(v31 + 8))(v10, v7);
        (*(v29 + 8))(v14, v30);

        return;
      }

      v19 = sub_1C672584C();
      [a2 removeObserver:v4 forKeyPath:v19 context:&unk_1EC1CD218];
    }

    else
    {
      v19 = sub_1C672584C();
      [a2 addObserver:v4 forKeyPath:v19 options:1 context:&unk_1EC1CD218];
    }

    goto LABEL_7;
  }
}

void ActivityStateObserver.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (a5 != &unk_1EC1CD218)
  {
    v11 = ObjectType;
    if (a2)
    {
      a2 = sub_1C672584C();
    }

    sub_1C6718ED8(a3, v22, &qword_1EC1CD248, &qword_1C674ED30);
    v12 = v23;
    if (v23)
    {
      v13 = __swift_project_boxed_opaque_existential_0(v22, v23);
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17);
      v18 = sub_1C6725ABC();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_0(v22);
      if (!a4)
      {
LABEL_10:
        v21.receiver = v5;
        v21.super_class = v11;
        objc_msgSendSuper2(&v21, sel_observeValueForKeyPath_ofObject_change_context_, a2, v18, a4, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v18 = 0;
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1C6719B40(&qword_1EC1CABB0, type metadata accessor for NSKeyValueChangeKey);
    a4 = sub_1C672580C();
    goto LABEL_10;
  }

  sub_1C6718ED8(a3, v22, &qword_1EC1CD248, &qword_1C674ED30);
  if (v23)
  {
    sub_1C6719320(0, &unk_1EC1CAC08, off_1E826B358);
    if (swift_dynamicCast())
    {
      sub_1C67181B0(v20);
    }
  }

  else
  {
    sub_1C6719B88(v22, &qword_1EC1CD248, &qword_1C674ED30);
  }
}

uint64_t sub_1C67181B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD240, &qword_1C674ED28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v22 - v5);
  v7 = type metadata accessor for ActivityStateObserver.Update(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC1CAC40 != -1)
  {
    swift_once();
  }

  v12 = sub_1C67257AC();
  __swift_project_value_buffer(v12, qword_1EC1CAC50);
  v13 = v1;
  sub_1C67170E4();
  sub_1C67170E4();
  v14 = a1;
  sub_1C67170E4();
  sub_1C67170E4();
  v15 = sub_1C672578C();
  v16 = sub_1C672592C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = v13;

    *(v17 + 12) = 2048;
    *(v17 + 14) = v14;

    _os_log_impl(&dword_1C6655000, v15, v16, "0x%lx Activity 0x%lx did change", v17, 0x16u);
    MEMORY[0x1C695D5C0](v17, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  v18 = v14;
  sub_1C671775C(v18, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1C6719B88(v6, &qword_1EC1CD240, &qword_1C674ED28);
  }

  sub_1C6718E14(v6, v11, type metadata accessor for ActivityStateObserver.Update);
  if (v11[*(v7 + 20) + 1] == 1)
  {
    v20 = v18;
    v21 = 1;
  }

  else
  {
    v18 = 0;
    v21 = 2;
  }

  sub_1C6717A9C(v11, v18, v21);

  return sub_1C6718E7C(v11);
}

uint64_t sub_1C67185C8(uint64_t a1, char a2)
{
  v3 = *v2;
  if (*v2 < 2)
  {
    return 1;
  }

  v5 = v2[1];
  if (a2)
  {
    if (a2 == 1)
    {
      v16 = v2[1];
      v6 = *(v5 + 16);
      if (!v6)
      {
LABEL_9:
        sub_1C67199E4(v3);

        swift_unknownObjectRelease();
        return 1;
      }

      v7 = 0;
      while (*(v5 + 32 + 8 * v7) != a1)
      {
        if (v6 == ++v7)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      v13 = v16;
      *v2 = v3;
      v2[1] = v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = a1;
    v16 = v5;
    v14[2] = &v15;
    v8 = MEMORY[0x1EEE9AC00](a1);
    sub_1C67199E4(v3);
    v9 = v8;

    v10 = sub_1C6719A28(sub_1C6719AE4, v14, v5);

    if (v10)
    {

      swift_unknownObjectRelease();

      return 1;
    }

    else
    {
      sub_1C6719AFC(v3);
      v11 = v9;
      MEMORY[0x1C695C500]();
      if (*(v16 + 16) >= *(v16 + 24) >> 1)
      {
        sub_1C67258FC();
      }

      sub_1C672590C();

      result = 0;
      v12 = v16;
      *v2 = v3;
      v2[1] = v12;
    }
  }

  return result;
}

uint64_t sub_1C67187AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id ActivityStateObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C6718898(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C6719AD0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C6718920@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  v11 = [a1 activityType] - 1;
  if (v11 < 3)
  {
    v49 = v11;
    v12 = [a1 userInfo];
    type metadata accessor for EMActivityUserInfoKey(0);
    v14 = v13;
    v45 = sub_1C6719B40(&unk_1EC1CAB68, type metadata accessor for EMActivityUserInfoKey);
    v46 = v14;
    v15 = sub_1C672581C();

    if (*(v15 + 16) && (v16 = sub_1C671FAC0(@"activityFetchState"), (v17 & 1) != 0))
    {
      sub_1C6662408(*(v15 + 56) + 32 * v16, v51);

      if (swift_dynamicCast())
      {
        v47 = 0;
        v48 = v50;
LABEL_11:
        v21 = [a1 finished];
        if (v21)
        {
          sub_1C672567C();

          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v23 = sub_1C672568C();
        v24 = *(*(v23 - 8) + 56);
        v24(v10, v22, 1, v23);
        sub_1C6719B88(v10, &qword_1EC1CD220, &qword_1C674ED20);
        v25 = [a1 localizedDescription];
        if (v25)
        {
          v26 = v25;
          v27 = sub_1C672588C();
          v43 = v28;
          v44 = v27;
        }

        else
        {
          v43 = 0;
          v44 = 0;
        }

        v42 = [a1 progress];
        v29 = [a1 error];
        if (v29)
        {
          v30 = v29;
          v31 = sub_1C672563C();
        }

        else
        {
          v31 = 0;
        }

        v32 = [a1 userInfo];
        v33 = sub_1C672581C();

        if (*(v33 + 16) && (v34 = sub_1C671FAC0(@"lastSuccessfulUpdate"), (v35 & 1) != 0))
        {
          sub_1C6662408(*(v33 + 56) + 32 * v34, v51);

          v36 = swift_dynamicCast() ^ 1;
          v37 = v8;
        }

        else
        {

          v37 = v8;
          v36 = 1;
        }

        v24(v37, v36, 1, v23);
        v38 = type metadata accessor for ActivityStateObserver.ActivityState(0);
        v39 = *(v38 + 40);
        (*(*(v23 - 8) + 56))(a2 + v39, 1, 1, v23);
        *a2 = v49;
        *(a2 + 1) = v21 != 0;
        v40 = v43;
        *(a2 + 8) = v44;
        *(a2 + 16) = v40;
        *(a2 + 24) = v42;
        *(a2 + 32) = v31;
        *(a2 + 40) = v48;
        *(a2 + 48) = v47;
        sub_1C6716828(v8, a2 + v39);
        return (*(*(v38 - 8) + 56))(a2, 0, 1, v38);
      }
    }

    else
    {
    }

    v48 = 0;
    v47 = 1;
    goto LABEL_11;
  }

  v18 = type metadata accessor for ActivityStateObserver.ActivityState(0);
  v19 = *(*(v18 - 8) + 56);

  return v19(a2, 1, 1, v18);
}

uint64_t sub_1C6718E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6718E7C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityStateObserver.Update(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6718ED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C6718F88()
{
  result = qword_1EC1CD250;
  if (!qword_1EC1CD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD250);
  }

  return result;
}

unint64_t sub_1C6718FE0()
{
  result = qword_1EC1CD258;
  if (!qword_1EC1CD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD258);
  }

  return result;
}

uint64_t sub_1C6719070()
{
  result = sub_1C6719320(319, &qword_1EC1CABB8, off_1E826B518);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActivityStateObserver.ActivityState(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C671912C()
{
  sub_1C6719278();
  if (v0 <= 0x3F)
  {
    sub_1C67192C8(319, &qword_1EC1CABF8, &qword_1EC1CAC00, 0x1E696AE38);
    if (v1 <= 0x3F)
    {
      sub_1C67192C8(319, &qword_1EC1CAB38, &qword_1EC1CAB40, 0x1E696ABC0);
      if (v2 <= 0x3F)
      {
        sub_1C6719368(319, &unk_1EC1CAB78, type metadata accessor for EMActivityFetchState);
        if (v3 <= 0x3F)
        {
          sub_1C6719368(319, &qword_1EDAD9820, MEMORY[0x1E6969530]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6719278()
{
  if (!qword_1EC1CAC20)
  {
    v0 = sub_1C672595C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1CAC20);
    }
  }
}

void sub_1C67192C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1C6719320(255, a3, a4);
    v5 = sub_1C672595C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C6719320(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C6719368(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C672595C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityStateObserver.ActivityState.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityStateObserver.ActivityState.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityStateObserver.ActivityState.Running(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityStateObserver.ActivityState.Running(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Email21ActivityStateObserverC0C0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C67196EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6719740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1C671979C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1C6719824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C671988C()
{
  v1 = type metadata accessor for ActivityStateObserver.Update(0);
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  if (*(v0 + 16))
  {
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v0 + 24);
    v7 = *(v0 + 16);
    ObjectType = swift_getObjectType();
    return (*(v6 + 8))(v0 + v5, ObjectType, v6);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C6719938()
{
  result = qword_1EC1CAC18;
  if (!qword_1EC1CAC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1CD2D0, &qword_1C674EF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CAC18);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C67199E4(unint64_t result)
{
  if (result >= 2)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1C6719A28(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_1C6719AFC(unint64_t result)
{
  if (result >= 2)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C6719B40(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6719B88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6719BE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6719C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t EMGenerativeModelsAvailabilityFeature.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C6719CA0()
{
  v1 = *v0;
  sub_1C6725B3C();
  MEMORY[0x1C695C760](v1);
  return sub_1C6725B6C();
}

uint64_t sub_1C6719D14()
{
  v1 = *v0;
  sub_1C6725B3C();
  MEMORY[0x1C695C760](v1);
  return sub_1C6725B6C();
}

uint64_t *sub_1C6719D58@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C6719DB8(uint64_t a1)
{
  v2 = sub_1C67256FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C67256EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C672577C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v8;
  v28 = v7;
  if (a1 == 2)
  {
    if (qword_1EDAD9810 != -1)
    {
      swift_once();
    }

    v17 = &qword_1EDAD9818;
  }

  else if (a1 == 1)
  {
    if (qword_1EC1CAC68 != -1)
    {
      swift_once();
    }

    v17 = &qword_1EC1CAC70;
  }

  else
  {
    if (a1)
    {
      v29 = a1;
      result = sub_1C6725ADC();
      __break(1u);
      return result;
    }

    if (qword_1EDAD9800 != -1)
    {
      swift_once();
    }

    v17 = &qword_1EDAD9808;
  }

  v18 = *v17;
  v19 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availability;
  swift_beginAccess();
  (*(v13 + 16))(v16, v18 + v19, v12);
  sub_1C672572C();
  v20 = (*(v3 + 88))(v6, v2);
  v21 = *MEMORY[0x1E69A0EF0];
  if (v20 == *MEMORY[0x1E69A0EF0])
  {
    (*(v3 + 96))(v6, v2);
    v22 = v27;
    v23 = v6;
    v24 = v28;
    (*(v27 + 32))(v11, v23, v28);
    sub_1C67256DC();
    (*(v22 + 8))(v11, v24);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  (*(v13 + 8))(v16, v12);
  return v20 == v21;
}

uint64_t sub_1C671A188(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C67256CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1C671BFC4(&qword_1EC1CD2F8, MEMORY[0x1E69A0F98]), v9 = sub_1C672582C(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1C671BFC4(&qword_1EC1CD300, MEMORY[0x1E69A0F98]);
      v17 = sub_1C672583C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1C671A408()
{
  v1 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C671A4A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1C671A554(uint64_t a1)
{
  v2 = sub_1C67256FC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v110[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v116 = &v110[-v9];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v119 = &v110[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v110[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v117 = &v110[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v110[-v18];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v110[-v21];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v124 = &v110[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v110[-v25];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v115 = v7;
    v29 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availabilityState;
    swift_beginAccess();
    v30 = v3[2];
    v118 = v29;
    v125 = v3 + 2;
    v126 = v30;
    v30(v26, &v28[v29], v2);
    sub_1C671BFC4(&qword_1EDAD98B0, MEMORY[0x1E69A11B0]);
    v120 = a1;
    LOBYTE(v29) = sub_1C672583C();
    v123 = v3;
    v31 = v3[1];
    v121 = v3 + 1;
    v122 = v31;
    v31(v26, v2);
    if (v29)
    {
      if (qword_1EDAD9878 != -1)
      {
        swift_once();
      }

      v32 = sub_1C67257AC();
      __swift_project_value_buffer(v32, qword_1EDAD9880);
      v126(v14, v120, v2);
      v33 = v28;
      v34 = v28;
      v35 = sub_1C672578C();
      v36 = sub_1C672591C();

      v124 = v35;
      if (!os_log_type_enabled(v35, v36))
      {

        v122(v14, v2);
        return;
      }

      v37 = 0xD000000000000019;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v127[0] = v39;
      *v38 = 136315650;
      v40 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
      swift_beginAccess();
      v41 = *&v34[v40];
      LODWORD(v117) = v36;
      v114 = v39;
      switch(v41)
      {
        case 0uLL:
          v42 = "geThreadOnDemand";
          v37 = 0xD000000000000028;
          goto LABEL_21;
        case 2uLL:
          v42 = "fication";
LABEL_21:
          v56 = 0x7463697274736552;
          v57 = sub_1C6662230(v37, v42 | 0x8000000000000000, v127);

          *(v38 + 4) = v57;
          *(v38 + 12) = 2080;
          v58 = v119;
          v126(v119, v14, v2);
          v59 = v123[11];
          v123 += 11;
          v113 = v59;
          v60 = v59(v58, v2);
          v61 = *MEMORY[0x1E69A0EF0];
          v120 = 0x7463697274736552;
          v62 = 0xEA00000000006465;
          if (v60 == v61 || (v63 = v60, v56 = 0x616C696176616E55, v62 = 0xEB00000000656C62, v60 == *MEMORY[0x1E69A0F08]))
          {
            v64 = v14;
            v65 = v122;
            v122(v64, v2);
            v65(v119, v2);
          }

          else
          {
            v103 = *MEMORY[0x1E69A1198];
            v122(v14, v2);
            if (v63 == v103)
            {
              v56 = 0x6C62616C69617641;
              v62 = 0xE900000000000065;
              v65 = v122;
            }

            else
            {
              v56 = 0x6E776F6E6B6E55;
              v62 = 0xE700000000000000;
              v65 = v122;
              v122(v119, v2);
            }
          }

          v66 = sub_1C6662230(v56, v62, v127);

          *(v38 + 14) = v66;
          *(v38 + 22) = 2080;
          v67 = &v33[v118];
          v68 = v116;
          v69 = v126;
          v126(v116, v67, v2);
          v70 = v115;
          v69(v115, v68, v2);
          v71 = v113(v70, v2);
          v72 = 0xEA00000000006465;
          if (v71 == v61 || (v73 = *MEMORY[0x1E69A0F08], v120 = 0x616C696176616E55, v72 = 0xEB00000000656C62, v71 == v73))
          {
            v65(v68, v2);
            v74 = v117;
            v75 = v114;
            v76 = v120;
          }

          else
          {
            v104 = *MEMORY[0x1E69A1198];
            v105 = v71;
            v65(v68, v2);
            v106 = v105 == v104;
            v74 = v117;
            v75 = v114;
            if (v106)
            {
              v76 = 0x6C62616C69617641;
              v72 = 0xE900000000000065;
              goto LABEL_28;
            }

            v76 = 0x6E776F6E6B6E55;
            v72 = 0xE700000000000000;
          }

          v65(v70, v2);
LABEL_28:
          v77 = sub_1C6662230(v76, v72, v127);

          *(v38 + 24) = v77;
          v78 = v124;
          _os_log_impl(&dword_1C6655000, v124, v74, "GenerativeModelsAvailability for %s changed to: %s, but was already: %s. Skipping availability-change notification", v38, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1C695D5C0](v75, -1, -1);
          MEMORY[0x1C695D5C0](v38, -1, -1);

          return;
        case 1uLL:
          v42 = "textComposition.MailReply";
          v37 = 0xD000000000000030;
          goto LABEL_21;
      }

      goto LABEL_54;
    }

    if (qword_1EDAD9878 != -1)
    {
      swift_once();
    }

    v43 = sub_1C67257AC();
    __swift_project_value_buffer(v43, qword_1EDAD9880);
    v44 = v124;
    v45 = v120;
    v126(v124, v120, v2);
    v46 = v28;
    v47 = v28;
    v48 = sub_1C672578C();
    v49 = sub_1C672592C();

    LODWORD(v116) = v49;
    if (!os_log_type_enabled(v48, v49))
    {

      v122(v44, v2);
      v55 = v123;
      goto LABEL_39;
    }

    v114 = v48;
    v50 = 0xD000000000000019;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v128[0] = v52;
    *v51 = 136315650;
    v53 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
    swift_beginAccess();
    v41 = *&v47[v53];
    v113 = v52;
    if (v41)
    {
      if (v41 == 2)
      {
        v54 = "fication";
      }

      else
      {
        if (v41 != 1)
        {
          goto LABEL_54;
        }

        v54 = "textComposition.MailReply";
        v50 = 0xD000000000000030;
      }
    }

    else
    {
      v54 = "geThreadOnDemand";
      v50 = 0xD000000000000028;
    }

    v115 = 0xEA00000000006465;
    v79 = sub_1C6662230(v50, v54 | 0x8000000000000000, v128);

    *(v51 + 4) = v79;
    v119 = v51;
    *(v51 + 12) = 2080;
    v80 = v126;
    v126(v22, &v46[v118], v2);
    v80(v19, v22, v2);
    v112 = v123[11];
    v81 = v112(v19, v2);
    v82 = 0x7463697274736552;
    v83 = 0xEA00000000006465;
    v111 = *MEMORY[0x1E69A0EF0];
    if (v81 == v111 || (v84 = v81, v82 = 0x616C696176616E55, v83 = 0xEB00000000656C62, v81 == *MEMORY[0x1E69A0F08]))
    {
      v85 = v122;
      v122(v22, v2);
      v85(v19, v2);
    }

    else
    {
      v107 = *MEMORY[0x1E69A1198];
      v122(v22, v2);
      if (v84 == v107)
      {
        v82 = 0x6C62616C69617641;
        v83 = 0xE900000000000065;
      }

      else
      {
        v82 = 0x6E776F6E6B6E55;
        v83 = 0xE700000000000000;
        v122(v19, v2);
      }
    }

    v86 = sub_1C6662230(v82, v83, v128);

    v87 = v119;
    *(v119 + 14) = v86;
    *(v87 + 11) = 2080;
    v88 = v117;
    v126(v117, v124, v2);
    v89 = v112(v88, v2);
    v45 = v120;
    v90 = 0x7463697274736552;
    if (v89 == v111 || (v91 = *MEMORY[0x1E69A0F08], v90 = 0x616C696176616E55, v115 = 0xEB00000000656C62, v89 == v91))
    {
      v92 = v122;
      v122(v124, v2);
    }

    else
    {
      v108 = *MEMORY[0x1E69A1198];
      v109 = v89;
      v92 = v122;
      v122(v124, v2);
      if (v109 == v108)
      {
        v90 = 0x6C62616C69617641;
        v93 = 0xE900000000000065;
        v55 = v123;
        goto LABEL_38;
      }

      v90 = 0x6E776F6E6B6E55;
      v115 = 0xE700000000000000;
    }

    v55 = v123;
    v92(v88, v2);
    v93 = v115;
LABEL_38:
    v94 = sub_1C6662230(v90, v93, v128);

    v95 = v119;
    *(v119 + 3) = v94;
    v96 = v114;
    _os_log_impl(&dword_1C6655000, v114, v116, "GenerativeModelsAvailability for %s changed from: %s, to: %s", v95, 0x20u);
    v97 = v113;
    swift_arrayDestroy();
    MEMORY[0x1C695D5C0](v97, -1, -1);
    MEMORY[0x1C695D5C0](v95, -1, -1);

LABEL_39:
    v98 = v126;
    v126(v26, v45, v2);
    v99 = v118;
    swift_beginAccess();
    (v55[5])(&v46[v99], v26, v2);
    swift_endAccess();
    v98(v26, v45, v2);
    swift_beginAccess();
    sub_1C672573C();
    swift_endAccess();
    v100 = [objc_opt_self() defaultCenter];
    v101 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_feature;
    swift_beginAccess();
    v41 = *&v47[v101];
    if (v41 < 3)
    {
      v102 = *off_1E8270238[v41];
      [v100 postNotificationName:v102 object:0];

      return;
    }

LABEL_54:
    v127[3] = v41;
    sub_1C6725ADC();
    __break(1u);
  }
}

id EMGenerativeModelsAvailability.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availabilityNotification])
  {

    sub_1C672574C();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for EMGenerativeModelsAvailability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id EMGenerativeModelsAvailability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_1C671B598(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD308, &qword_1C674F108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C671B68C(uint64_t a1)
{
  v2 = sub_1C67256FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = sub_1C672577C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 2:
      if (qword_1EDAD9810 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDAD9818;
      goto LABEL_13;
    case 1:
      if (qword_1EC1CAC68 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EC1CAC70;
LABEL_13:
      v16 = *v15;
      v17 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availability;
      swift_beginAccess();
      (*(v11 + 16))(v14, v16 + v17, v10);
      sub_1C672572C();
      (*(v11 + 8))(v14, v10);
      (*(v3 + 32))(v7, v9, v2);
      v18 = (*(v3 + 88))(v7, v2) == *MEMORY[0x1E69A0EF0];
      (*(v3 + 8))(v7, v2);
      return v18;
    case 0:
      if (qword_1EDAD9800 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EDAD9808;
      goto LABEL_13;
  }

  v20[1] = a1;
  result = sub_1C6725ADC();
  __break(1u);
  return result;
}

uint64_t sub_1C671B998(uint64_t a1)
{
  v2 = sub_1C67256CC();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C67256FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C67256EC();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C672577C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v2;
  if (a1 == 2)
  {
    if (qword_1EDAD9810 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EDAD9818;
  }

  else if (a1 == 1)
  {
    if (qword_1EC1CAC68 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EC1CAC70;
  }

  else
  {
    if (a1)
    {
      v38 = a1;
      result = sub_1C6725ADC();
      __break(1u);
      return result;
    }

    if (qword_1EDAD9800 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EDAD9808;
  }

  v20 = *v19;
  v21 = OBJC_IVAR____TtC5Email30EMGenerativeModelsAvailability_availability;
  swift_beginAccess();
  v22 = v20 + v21;
  v23 = v14;
  (*(v15 + 16))(v18, v22, v14);
  sub_1C672572C();
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69A0EF0])
  {
    (*(v6 + 96))(v9, v5);
    v24 = v35;
    (*(v10 + 32))(v13, v9, v35);
    v25 = sub_1C67256DC();
    v26 = *MEMORY[0x1E69A0F18];
    v27 = v36;
    v28 = *(v36 + 104);
    v29 = v34;
    v33 = v23;
    v30 = v37;
    v28(v34, v26, v37);
    v31 = sub_1C671A188(v29, v25);

    (*(v27 + 8))(v29, v30);
    (*(v10 + 8))(v13, v24);
    (*(v15 + 8))(v18, v33);
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    (*(v6 + 8))(v9, v5);
    v31 = 0;
  }

  return v31 & 1;
}

unint64_t sub_1C671BE54()
{
  result = qword_1EC1CD2F0;
  if (!qword_1EC1CD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD2F0);
  }

  return result;
}

void sub_1C671BFBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C671A554(a1);
}

uint64_t sub_1C671BFC4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}