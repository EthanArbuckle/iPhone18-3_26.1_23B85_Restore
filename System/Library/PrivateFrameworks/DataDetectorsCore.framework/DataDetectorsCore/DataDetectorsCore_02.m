BOOL _ddResultTypeHasMLEquivalent(uint64_t a1, const __CFArray *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 64);
  if (([v4 isEqualToString:@"Data"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Tag") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"Compatibility"))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(a1 + 56);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (_ddResultTypeHasMLEquivalent(*(*(&v13 + 1) + 8 * v9), a2))
          {

            v10 = 1;
            goto LABEL_14;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = DDResultTypeIsMLSupported(a1, a2) != 0;
  }

LABEL_14:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __Block_byref_object_copy__1028(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ddmlModelQueue()
{
  if (_ddmlModelQueue_onceToken != -1)
  {
    dispatch_once(&_ddmlModelQueue_onceToken, &__block_literal_global_217);
  }

  v1 = _ddmlModelsQueue;

  return v1;
}

void __DDMLGetTaggerModel_block_invoke(uint64_t a1)
{
  v2 = +[DDMLTaggerModel currentTaggerModel];
  v3 = MEMORY[0x1E695DF58];
  v4 = [*(a1 + 32) assetLocaleIdentifier];
  v5 = [v3 localeWithLocaleIdentifier:v4];

  v6 = [v2 embeddingLocale];
  v7 = [v6 isEqual:v5];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1028;
    v21 = __Block_byref_object_dispose__1029;
    v22 = 0;
    LDEnumerateAssetDataItems_delayInitStub(COERCE_DOUBLE(3221225472));
    v8 = MEMORY[0x1E695DF20];
    v9 = [v18[5] URLByAppendingPathComponent:@"model.plist"];
    v10 = [v8 dictionaryWithContentsOfURL:v9];

    v11 = [v10 objectForKeyedSubscript:@"models"];
    v12 = [v11 firstObject];

    v13 = [DDMLTaggerModel alloc];
    v14 = [(DDMLTaggerModel *)v13 initWithEmbeddingLocale:v5 modelDictionary:v12 baseURL:v18[5]];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [DDMLTaggerModel setCurrentTaggerModel:*(*(*(a1 + 40) + 8) + 40)];
    _Block_object_dispose(&v17, 8);
  }
}

void sub_1BCFFC6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DDMLScannerBuildResultsFromTokens_block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = [[DDMLResult alloc] initWithText:*(a1 + 32) resultRange:*(*(*(a1 + 48) + 8) + 32) confidence:*(*(*(a1 + 48) + 8) + 40) resultType:*(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 56) + 8) + 24)];
    [*(a1 + 40) addObject:v2];
  }

  *(*(*(a1 + 64) + 8) + 24) = 10;
  v3 = *(*(a1 + 48) + 8);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
}

uint64_t __DDMLGetTaggerModel_block_invoke_2(uint64_t a1, void *a2, double a3)
{
  Helper_x8__kLDAssetTypeDataDetectorHead = gotLoadHelper_x8__kLDAssetTypeDataDetectorHead(a3);
  result = [v7 isEqualToString:{**(v6 + 72), Helper_x8__kLDAssetTypeDataDetectorHead}];
  if (result)
  {
    v9 = *(*(a1 + 32) + 8);
    if (*(v9 + 40))
    {
      [a2 path];
      if ([objc_claimAutoreleasedReturnValue() hasPrefix:@"/System/Library/LinguisticData"])
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      }
    }

    else
    {
      v10 = a2;
      v11 = *(v9 + 40);
      *(v9 + 40) = v10;
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void ___ddmlModelQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.datadetectors.ddmlscanner.models", v2);
  v1 = _ddmlModelsQueue;
  _ddmlModelsQueue = v0;
}

void __DDMLScannerGetEmbeddingAndAssetsForScriptWithCompletionHandler_block_invoke(uint64_t a1)
{
  if (_currentEmbedding || (_currentEmbeddingFailed & 1) != 0)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v2 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v13 = 0;
    v11 = ">>> Model update not scheduled";
    v12 = &v13;
    goto LABEL_23;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v3 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1BCFDD000, v3, OS_LOG_TYPE_DEBUG, ">>> Model update in dedicated queue", buf, 2u);
  }

  Helper_x8__OBJC_CLASS___NLContextualEmbedding = gotLoadHelper_x8__OBJC_CLASS___NLContextualEmbedding(v4);
  v7 = [*(v6 + 2608) contextualEmbeddingWithModelIdentifier:{@"8075FCEB-2588-4FBD-9804-8507C9DB31E4", Helper_x8__OBJC_CLASS___NLContextualEmbedding}];
  v8 = _currentEmbedding;
  _currentEmbedding = v7;

  v9 = _currentEmbedding;
  _currentEmbeddingFailed = _currentEmbedding == 0;
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v10 = DDLogHandle_error_log_handle;
  v2 = v10;
  if (v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
LABEL_6:

      goto LABEL_7;
    }

    v14 = 0;
    v11 = ">>> Model update succeeded";
    v12 = &v14;
LABEL_23:
    _os_log_debug_impl(&dword_1BCFDD000, v2, OS_LOG_TYPE_DEBUG, v11, v12, 2u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_1BCFDD000, v2, OS_LOG_TYPE_ERROR, "Failed to get latin contextual embedding", v15, 2u);
  }

  _startEmbeddingCleanupTimeout();
LABEL_7:
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), _currentEmbedding);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    _startEmbeddingCleanupTimeout();
  }
}

void __DDMLScannerGetEmbeddingAndAssetsForScriptWithCompletionHandler_block_invoke_190(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 2)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v6 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_1BCFDD000, v6, OS_LOG_TYPE_ERROR, "Failed to get latin embedding, results will be of DDQOSRegular quality, %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void _startEmbeddingCleanupTimeout()
{
  v0 = _ddmlModelQueue();
  dispatch_assert_queue_V2(v0);

  if (_startEmbeddingCleanupTimeout__embeddingCleanupBlock)
  {
    dispatch_block_cancel(_startEmbeddingCleanupTimeout__embeddingCleanupBlock);
  }

  v1 = dispatch_block_create(0, &__block_literal_global_220);
  v2 = _startEmbeddingCleanupTimeout__embeddingCleanupBlock;
  _startEmbeddingCleanupTimeout__embeddingCleanupBlock = v1;

  v3 = dispatch_time(0, 600000000000);
  v4 = _ddmlModelQueue();
  dispatch_after(v3, v4, _startEmbeddingCleanupTimeout__embeddingCleanupBlock);
}

void ___startEmbeddingCleanupTimeout_block_invoke()
{
  if (_currentEmbedding)
  {
    [_currentEmbedding requestModelUnloading];
    v0 = _currentEmbedding;
    _currentEmbedding = 0;
  }

  else
  {
    _currentEmbeddingFailed = 0;
  }
}

BOOL DDMLUpdateScannerResultsWithMLResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = [DDResultCluster clustersWithDDResults:*(a1 + 168) mlResults:a3];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  Mutable = 0;
  v11 = *v21;
  v12 = MEMORY[0x1E695E9C0];
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = [*(*(&v20 + 1) + 8 * i) resolvedDDResultFromOriginalQuery:a2 mlSupportedTypes:a4];
      if (v14)
      {
        v15 = v14;
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, v12);
        }

        CFArrayAppendValue(Mutable, v15);
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v9);
  if (Mutable)
  {
    v16 = *(a1 + 168);
    if (v16)
    {
      CFRelease(v16);
    }

    *(a1 + 168) = Mutable;
    v17 = CFArrayGetCount(Mutable) > 0;
  }

  else
  {
LABEL_16:
    CFArrayRemoveAllValues(*(a1 + 168));
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

BOOL shouldURLifyNode(void *a1)
{
  if (shouldURLifyNode_sOnce != -1)
  {
    dispatch_once(&shouldURLifyNode_sOnce, &__block_literal_global_123);
  }

  return [a1 nodeType] != 1 || objc_msgSend(shouldURLifyNode_doNotVisit, "member:", objc_msgSend(a1, "nodeName")) == 0;
}

uint64_t __shouldURLifyNode_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"A", @"a", @"STYLE", @"style", @"IMG", @"img", @"META", @"meta", @"SCRIPT", @"script", @"TITLE", @"title", @"OBJECT", @"object", 0}];
  shouldURLifyNode_doNotVisit = result;
  return result;
}

uint64_t DDURLStringForResult(uint64_t a1, uint64_t a2, char a3, const void *a4, const __CFTimeZone *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  Category = DDResultGetCategory(a1);
  if ((Category - 3) >= 2)
  {
    v11 = Category;
    v12 = *(a1 + 64);
    if (!_typesAreEqual(@"TrackingNumber", v12) && !_typesAreEqual(@"FlightInformation", v12) && !_typesAreEqual(@"Parsec", v12) && !_typesAreEqual(@"GameCenter", v12) && !_typesAreEqual(@"Money", v12) && !_typesAreEqual(@"AuthCode", v12) && !_typesAreEqual(@"PhysicalAmount", v12) && !_typesAreEqual(@"DomesticIdentifier", v12) && !_typesAreEqual(@"UPIIdentifier", v12) && !_typesAreEqual(@"evts", v12))
    {
      v17 = DDResultCopyExtractedURLWithOptions(a1, 1);
      v13 = v17;
      if (v11 != 2)
      {
        goto LABEL_14;
      }

      if (v17)
      {
        goto LABEL_21;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v18 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 72);
        *buf = 138412290;
        v21 = v19;
        _os_log_error_impl(&dword_1BCFDD000, v18, OS_LOG_TYPE_ERROR, "Result %@ returned NULL URL", buf, 0xCu);
        if ((a3 & 2) != 0)
        {
LABEL_22:
          if (_typesAreEqual(v12, @"PhoneNumber"))
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_21:
        if ((a3 & 2) != 0)
        {
          goto LABEL_22;
        }
      }

      if ((a3 & 4) != 0 && _typesAreEqual(v12, @"QuotedShortPhoneNumber") || (a3 & 8) != 0 && _typesAreEqual(v12, @"UnquotedShortPhoneNumber"))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  if (DDResultIsPastDate(a1, a4, a5))
  {
LABEL_13:
    v13 = 0;
LABEL_14:
    v14 = *MEMORY[0x1E69E9840];
    return v13;
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"x-apple-data-detectors", a2];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BCFFE0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DDURLWithPotentiallyInvalidURLString(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = [MEMORY[0x1E695DFF8] URLWithString:result];
  if (result)
  {
    return result;
  }

  v2 = [v1 rangeOfString:@":"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:{objc_msgSend(MEMORY[0x1E696AB08], "URLPathAllowedCharacterSet")}];
LABEL_9:
    v11 = v4;
    v12 = v3;
    goto LABEL_10;
  }

  v5 = v2;
  v6 = [v1 substringToIndex:v2];
  v7 = v5 + 1;
  if (v7 >= [v1 length])
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [v1 substringFromIndex:v7];
    goto LABEL_9;
  }

  v8 = [v1 substringFromIndex:v7];
  v9 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:{objc_msgSend(MEMORY[0x1E696AB08], "URLPathAllowedCharacterSet")}];
  v10 = MEMORY[0x1E695DFF8];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v6, v9];
  v12 = v10;
LABEL_10:

  return [v12 URLWithString:v11];
}

uint64_t DDShouldUseLightLinksForResult(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (DDResultGetCategory(result) - 3 < 0xFFFFFFFE)
    {
      return 1;
    }

    else
    {
      return a2;
    }
  }

  return result;
}

uint64_t DDShouldUseDebugHighlightForResult(uint64_t a1)
{
  if (a1 && _typesAreEqual(*(a1 + 64), @"Parsec"))
  {
    DDResultHasContextualFloat(a1);
  }

  return 0;
}

uint64_t DDShouldImmediatelyShowActionSheetForResult(uint64_t result)
{
  if (result)
  {
    v1 = result;
    Category = DDResultGetCategory(result);
    if ((Category - 4) >= 3)
    {
      if (Category == 2)
      {
        v3 = 0;
        [+[DDScannerResult resultFromCoreResult:](DDScannerResult resultFromCoreResult:{v1), "getPhoneValue:label:", &v3, 0}];
        if (MGGetBoolAnswer())
        {
          if (DDTelephonyWillPrompt_sOnce != -1)
          {
            dispatch_once(&DDTelephonyWillPrompt_sOnce, &__block_literal_global_17);
          }

          return DDTelephonyWillPrompt_sandbox_result == 0;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return !_typesAreEqual(*(v1 + 64), @"Parsec");
    }
  }

  return result;
}

uint64_t DDShouldImmediatelyShowActionSheetForURL(uint64_t result)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_39;
  }

  v1 = result;
  result = [&unk_1F3B7DCD8 containsObject:{objc_msgSend(objc_msgSend(result, "scheme"), "lowercaseString")}];
  if (!result)
  {
    goto LABEL_39;
  }

  v2 = [v1 resourceSpecifier];
  if ([v2 hasPrefix:@"//"])
  {
    if ([v2 length] < 3)
    {
      goto LABEL_32;
    }

    v2 = [v2 substringFromIndex:2];
  }

  if (![v2 length])
  {
    goto LABEL_32;
  }

  v3 = [objc_msgSend(objc_msgSend(v1 "scheme")];
  v4 = v3;
  if (v3)
  {
    v5 = [v2 componentsSeparatedByString:@"?"];
    v6 = [objc_msgSend(v5 "firstObject")];
    if ([v5 count] < 2)
    {
      goto LABEL_12;
    }

    v7 = [v6 arrayByAddingObjectsFromArray:{objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 1), "componentsSeparatedByString:", @"&"}];
  }

  else
  {
    v7 = [v2 componentsSeparatedByString:@";"];
  }

  v6 = v7;
LABEL_12:
  if ([objc_msgSend(v6 "firstObject")])
  {
    v8 = [objc_msgSend(v6 objectAtIndexedSubscript:{0), "stringByRemovingPercentEncoding"}];
    v9 = v8;
    if ((v4 & 1) == 0)
    {
      v9 = [v8 stringByReplacingOccurrencesOfString:@":" withString:@";"];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = v9;
      v12 = 0;
      v13 = 1;
      v14 = *v24;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          v16 = v12;
          v12 = v13;
          if (*v24 != v14)
          {
            objc_enumerationMutation(v6);
          }

          if ((v12 & 1) == 0)
          {
            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = [v17 componentsSeparatedByString:@"="];
            v19 = v18;
            if ((v16 & 1) != 0 && [v18 count] == 1)
            {
              if ([v17 length] && objc_msgSend(v17, "rangeOfCharacterFromSet:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"1234567890#*"), "invertedSet")) == 0x7FFFFFFFFFFFFFFFLL)
              {
                v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@;%@", v22, v17];
LABEL_41:
                v9 = v21;
                goto LABEL_33;
              }
            }

            else if ([v19 count] == 2 && objc_msgSend(objc_msgSend(v19, "objectAtIndexedSubscript:", 0), "isEqualToString:", @"ext") && objc_msgSend(objc_msgSend(v19, "objectAtIndexedSubscript:", 1), "length"))
            {
              v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@;%@", v22, objc_msgSend(objc_msgSend(v19, "objectAtIndexedSubscript:", 1), "stringByRemovingPercentEncoding")];
              goto LABEL_41;
            }
          }

          v13 = 0;
        }

        v11 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v13 = 0;
        if (v11)
        {
          continue;
        }

        break;
      }

      v9 = v22;
    }

    goto LABEL_33;
  }

LABEL_32:
  v9 = 0;
LABEL_33:
  result = [v9 length];
  if (result)
  {
    if (MGGetBoolAnswer())
    {
      if (DDTelephonyWillPrompt_sOnce != -1)
      {
        dispatch_once(&DDTelephonyWillPrompt_sOnce, &__block_literal_global_17);
      }

      result = DDTelephonyWillPrompt_sandbox_result == 0;
    }

    else
    {
      result = 1;
    }
  }

LABEL_39:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DDSourcePushFile(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    a2 = 0;
    v6 = 1;
    goto LABEL_5;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_5:

    return DDSourcePushSharedDataOrFile(a1, 0, a2, v6, 0);
  }

  v10 = v3;
  v11 = v4;
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v8 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "Can only compile JSON files", v9, 2u);
  }

  return 0;
}

uint64_t DDSourcePushSharedDataOrFile(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!altPath)
  {
    if ((a1 & 0xFFFFFFFD) == 4)
    {
      if (DDUserSourcesWriteAllowed_sOnce != -1)
      {
        dispatch_once(&DDUserSourcesWriteAllowed_sOnce, &__block_literal_global_29);
      }

      v13 = &DDUserSourcesWriteAllowed_sandbox_result;
    }

    else
    {
      if (DDSystemSourcesWriteAllowed_sOnce != -1)
      {
        dispatch_once(&DDSystemSourcesWriteAllowed_sOnce, &__block_literal_global_35);
      }

      v13 = &DDSystemSourcesWriteAllowed_sandbox_result;
    }

    if (*v13)
    {
      v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.DataDetectorsSourceAccess" options:4096];
      if (v10)
      {
        goto LABEL_3;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v15 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BCFDD000, v15, OS_LOG_TYPE_ERROR, "Failed to connect to DataDetectorsSourceAccess (writing)", buf, 2u);
      }
    }

    return 0;
  }

  v10 = 0;
LABEL_3:
  *buf = 0;
  v19 = buf;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = sourceAccessCreateAndEnterGroup(v10, &__block_literal_global_58);
  if (v11)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __DDSourcePushSharedDataOrFile_block_invoke_59;
    v17[3] = &unk_1E80023F8;
    v17[4] = v10;
    v17[5] = buf;
    if (a4 == 1)
    {
      [(DataDetectorsSourceAccess *)v11 writeSourceFromRawData:a2 source:v12 signature:a5 withReply:v17];
    }

    else
    {
      [(DataDetectorsSourceAccess *)v11 writeSourceFromJSONFile:a3 source:v12 withReply:v17];
    }
  }

  v14 = v19[24];
  _Block_object_dispose(buf, 8);
  return v14;
}

void sub_1BCFFEBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

DataDetectorsSourceAccess *sourceAccessCreateAndEnterGroup(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F3B7F410)}];
    [a1 resume];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __sourceAccessCreateAndEnterGroup_block_invoke;
    v12[3] = &unk_1E8002420;
    v12[4] = a1;
    v12[5] = a2;
    v4 = [a1 synchronousRemoteObjectProxyWithErrorHandler:v12];
    if (v4)
    {
      v5 = v4;
      v6 = v4;
      return v5;
    }

LABEL_7:
    (*(a2 + 16))(a2);
    return 0;
  }

  v7 = objc_alloc_init(DataDetectorsSourceAccess);
  if (!v7)
  {
    goto LABEL_7;
  }

  v5 = v7;
  v8 = getuid();
  v9 = getpwuid(v8);
  if (v9)
  {
    pw_uid = v9->pw_uid;
  }

  else
  {
    pw_uid = 0;
  }

  [(DataDetectorsSourceAccess *)v5 setUserIdentifier:pw_uid];
  return v5;
}

void __DDSourcePushSharedDataOrFile_block_invoke_59(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v4 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1BCFDD000, v4, OS_LOG_TYPE_ERROR, "Failed to write data to DataDetectorsSourceAccess", v6, 2u);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 invalidate];
  }
}

uint64_t __sourceAccessCreateAndEnterGroup_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v4 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = a2;
    _os_log_error_impl(&dword_1BCFDD000, v4, OS_LOG_TYPE_ERROR, "Connection to DataDetectorsSourceAccess failed (%@)", &v7, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __DDSourcePushSharedDataOrFile_block_invoke()
{
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v0 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1BCFDD000, v0, OS_LOG_TYPE_ERROR, "Failed to write data using DataDetectorsSourceAccess", v1, 2u);
  }
}

uint64_t DDPushUserDebugData()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
  for (i = 0; i != 6; ++i)
  {
    [v0 addObject:{objc_msgSend(qword_1E8002440[i], "mutableCopy")}];
  }

  return DDSourcePushSharedDataOrFile(6, v0, 0, 1, 0);
}

id DDSourceGetLexiconData(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__1340;
  v13 = __Block_byref_object_dispose__1341;
  v14 = 0;
  if ((a1 & 0xFFFFFFFD) == 4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __DDSourceGetLexiconData_block_invoke;
    v8[3] = &unk_1E8002380;
    v8[4] = &v9;
    mmapSource(a1, 1, v8);
  }

  else if (_DDTriePathForSource(a1, v15, 1, 1, 0))
  {
    v6 = 0;
    v7 = 0;
    v5[0] = 0;
    v5[1] = 0;
    if (DDautommap(v15, &v6, &v7, v5))
    {
      if (v6)
      {
        if (v7)
        {
          v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:v7 deallocator:&__block_literal_global_46];
          v10[5] = v1;
        }

        else
        {
          munmap(v6, 0);
        }
      }
    }
  }

  v2 = v10[5];
  _Block_object_dispose(&v9, 8);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1BCFFF174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DDSourceGetLexiconData_block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = result;
      result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 length:a3 deallocator:&__block_literal_global_1349];
      *(*(*(v3 + 32) + 8) + 40) = result;
    }

    else
    {

      return munmap(a2, 0);
    }
  }

  return result;
}

void mmapSource(uint64_t a1, int a2, uint64_t a3)
{
  if (altPath)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if ((a1 & 0xFFFFFFFD) != 4)
  {
    goto LABEL_7;
  }

  if (DDUserSourcesReadAllowed_sOnce != -1)
  {
    dispatch_once(&DDUserSourcesReadAllowed_sOnce, &__block_literal_global_23);
  }

  if (DDUserSourcesReadAllowed_sandbox_result)
  {
LABEL_7:
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.DataDetectorsSourceAccess" options:4096];
    if (v6)
    {
LABEL_8:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __mmapSource_block_invoke;
      v17[3] = &unk_1E80023A8;
      v17[4] = a3;
      v7 = sourceAccessCreateAndEnterGroup(v6, v17);
      if (v7)
      {
        v8 = v7;
        *buf = 0;
        v14 = buf;
        v15 = 0x2020000000;
        v16 = 0;
        v12[0] = 0;
        v12[1] = v12;
        v12[2] = 0x2020000000;
        v12[3] = 0;
        v9 = [MEMORY[0x1E696AD98] numberWithInt:a1];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __mmapSource_block_invoke_53;
        v11[3] = &unk_1E80023D0;
        v11[6] = v12;
        v11[7] = buf;
        v11[4] = v6;
        v11[5] = a3;
        [(DataDetectorsSourceAccess *)v8 fileForSourceRead:v9 resourceType:a2 != 0 withReply:v11];

        _Block_object_dispose(v12, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        (*(a3 + 16))(a3, 0, 0);
      }

      return;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v10 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "Failed to connect to DataDetectorsSourceAccess (reading)", buf, 2u);
    }
  }
}

void sub_1BCFFF498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __mmapSource_block_invoke(uint64_t a1)
{
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v2 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1BCFDD000, v2, OS_LOG_TYPE_ERROR, "Failed to use DataDetectorsSourceAccess (reading)", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __mmapSource_block_invoke_53(void *a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 fileDescriptor];
    *(*(a1[6] + 8) + 24) = [a2 seekToEndOfFile];
    if (v4 >= 3)
    {
      v5 = *(*(a1[6] + 8) + 24);
      if (v5)
      {
        *(*(a1[7] + 8) + 24) = _DDmmap("<Service accessed>", v4, v5);
      }
    }
  }

  v6 = *(*(a1[7] + 8) + 24);
  v7 = *(*(a1[6] + 8) + 24);
  (*(a1[5] + 16))();
  v8 = a1[4];
  if (v8)
  {
    [v8 invalidate];
    v9 = a1[4];
  }
}

_BYTE *DDSourceGetClientSignature(uint64_t a1)
{
  cf = 0;
  DDLookupTableUpdateFromExternalFile(a1, &cf, 0);
  v1 = cf;
  if (!cf)
  {
    v3 = 0;
    return v3;
  }

  v2 = *(cf + 3);
  if (!v2 || *(v2 + 112) < 1)
  {
    goto LABEL_8;
  }

  v3 = *(v2 + 64);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (!*v3)
  {
LABEL_8:
    v3 = 0;
LABEL_9:
    v5 = v1 + 4;
    v4 = v1[4];
    if (v4)
    {
      munmap(v1[4], v4[1]);
      v5[1] = 0;
      v5[2] = 0;
      *v5 = 0;
      v1 = cf;
    }

    goto LABEL_11;
  }

  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v3];
  v1 = cf;
  if (cf)
  {
    goto LABEL_9;
  }

LABEL_11:
  CFRelease(v1);
  return v3;
}

void DDExternalTableAppendEntries(void (*a1)(void, void, void, void), uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 <= 7)
  {
    memset(v4, 0, sizeof(v4));
    *(v4 + a2) = a3;
    _DDSourceUpdateSourceWithContent(a1, v4, 0, 0, 8);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t DDExternalTableWriteAtPath(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (a1)
    {
      FinalizedSourceContent = DDSourceCreateFinalizedSourceContent(a1);
      if (FinalizedSourceContent)
      {
        v4 = FinalizedSourceContent;
        v2 = [(UInt8 *)FinalizedSourceContent writeToFile:v2 atomically:1];
        CFRelease(v4);
        return v2;
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      if (![v5 fileExistsAtPath:v2 isDirectory:0])
      {
        return 1;
      }

      v7 = 0;
      [v5 removeItemAtPath:v2 error:&v7];
    }

    return 0;
  }

  return v2;
}

void *DDCreateTimeZoneValuesFromResultValue(CFStringRef theString)
{
  v15 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    v2 = *MEMORY[0x1E695E480];
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @"|");
    if (CFArrayGetCount(ArrayBySeparatingStrings) <= 1)
    {
      if (CFArrayGetCount(ArrayBySeparatingStrings) >= 1)
      {
        Copy = CFRetain(ArrayBySeparatingStrings);
LABEL_9:
        v8 = Copy;
        CFRelease(ArrayBySeparatingStrings);
        if (v8)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v9 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&dword_1BCFDD000, v9, OS_LOG_TYPE_ERROR, "We've shouldn't have 0 items for a time zone value", &v13, 2u);
      }
    }

    else
    {
      if (DDCreateTimeZoneValuesFromResultValue_sOnce != -1)
      {
        dispatch_once(&DDCreateTimeZoneValuesFromResultValue_sOnce, &__block_literal_global_1369);
      }

      v4 = DDCreateTimeZoneValuesFromResultValue__sTimeZonesPlist;
      if (DDCreateTimeZoneValuesFromResultValue__sTimeZonesPlist)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
        Value = CFDictionaryGetValue(v4, ValueAtIndex);
        Copy = CFArrayCreateCopy(v2, Value);
        goto LABEL_9;
      }
    }

    CFRelease(ArrayBySeparatingStrings);
  }

LABEL_16:
  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v10 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    v13 = 138412290;
    v14 = theString;
    _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "Couldn't extract time zone values for %@", &v13, 0xCu);
  }

  v8 = 0;
LABEL_21:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

const __CFString *createPropertyListForResource(const __CFString *a1)
{
  v1 = a1;
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", a1, @"plist");
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.datadetectorscore.tests");
    if ((BundleWithIdentifier || (BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.datadetectorscore")) != 0) && (v4 = CFBundleCopyResourceURL(BundleWithIdentifier, v1, @"plist", 0)) != 0 || (MainBundle = CFBundleGetMainBundle(), (v4 = CFBundleCopyResourceURL(MainBundle, v1, @"plist", 0)) != 0))
    {
      v6 = v4;
      v7 = DDCreateDataFromFileAtUrl(v4);
      if (v7)
      {
        v8 = v7;
        v1 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
        CFRelease(v8);
        CFRelease(v6);
        if (v1)
        {
LABEL_22:
          CFRelease(v2);
          goto LABEL_23;
        }
      }

      else
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v9 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v15 = v6;
          v16 = 2112;
          v17 = v2;
          _os_log_error_impl(&dword_1BCFDD000, v9, OS_LOG_TYPE_ERROR, "DDCreateDataFromFileAtUrl failed on %@, could not find %@", buf, 0x16u);
        }

        CFRelease(v6);
      }
    }

    else
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v10 = DDLogHandle_error_log_handle;
      if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v15 = v2;
      _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "Could not find %@", buf, 0xCu);
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

LABEL_19:
    v11 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v2;
      _os_log_error_impl(&dword_1BCFDD000, v11, OS_LOG_TYPE_ERROR, "Could not load %@", buf, 0xCu);
    }

    v1 = 0;
    goto LABEL_22;
  }

LABEL_23:
  v12 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t extractHourMinuteSecondWithRefCopyTimeZone(uint64_t result, uint64_t a2, const __CFLocale *a3, int *a4, _DWORD *a5, _DWORD *a6, CFTimeZoneRef *a7, unsigned int a8, signed int a9, int a10, uint64_t a11)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_67;
  }

  v16 = result;
  while (1)
  {
    if (!_typesAreEqual(*(v16 + 64), @"Timestamp"))
    {
      if (DDResultGetSubresultWithType(v16, @"ApproxTime") && !DDResultGetSubresultWithType(v16, @"Hours"))
      {
        *buf = 0;
        SubresultWithType = DDResultGetSubresultWithType(v16, @"ApproxTime");
        if (SubresultWithType)
        {
          v29 = SubresultWithType;
          SubresultWithType = SubresultWithType[2].data;
          if (!SubresultWithType)
          {
            SubresultWithType = v29[2].info;
          }
        }

        result = extractHourFromApproxTimeValue(SubresultWithType, buf, a3);
        if (!result)
        {
          goto LABEL_67;
        }

        if (a4)
        {
          *a4 = *buf;
        }

        if (a5)
        {
          *a5 = 0;
        }

        if (a6)
        {
          *a6 = 0;
        }
      }

      else
      {
        if (!_typesAreEqual(*(v16 + 64), @"Time"))
        {
          DetailedDescription = createDetailedDescription(v16);
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v26 = DDLogHandle_error_log_handle;
          if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_65;
          }

          *buf = 138412290;
          v45 = DetailedDescription;
          v27 = "Could not parse %@";
          goto LABEL_64;
        }

        v40 = DDResultGetSubresultWithType(v16, @"Meridian");
        v20 = DDResultGetSubresultWithType(v16, @"Hours");
        v43 = 0;
        v21 = DDResultGetSubresultWithType(v16, @"Minutes");
        if (v21)
        {
          v22 = v21;
          v23 = v21[10];
          if (!v23)
          {
            v23 = v22[9];
          }

          if ((extractInteger(v23, &v43 + 1) & 1) == 0)
          {
            goto LABEL_66;
          }

          v24 = hourValueForHourAndMeridianResult(v20, a2, a3, v40, a8, a9, a10, a11, HIDWORD(v43) == 0);
          if (v24 < 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v30 = hourValueForHourAndMeridianResult(v20, a2, a3, v40, a8, a9, a10, a11, 1);
          if (v30 < 0)
          {
LABEL_60:
            DetailedDescription = createDetailedDescription(v16);
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v26 = DDLogHandle_error_log_handle;
            if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_65;
            }

            *buf = 138412290;
            v45 = DetailedDescription;
            v27 = "Time with no hour: %@";
LABEL_64:
            _os_log_error_impl(&dword_1BCFDD000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
LABEL_65:
            CFRelease(DetailedDescription);
            goto LABEL_66;
          }

          v24 = v30;
          v31 = DDResultGetSubresultWithType(v16, @"MinutesBefore");
          if (v31)
          {
            v32 = v31;
            v33 = v31[10];
            if (!v33)
            {
              v33 = v32[9];
            }

            result = extractInteger(v33, &v43 + 1);
            if (!result)
            {
              goto LABEL_67;
            }

            if (HIDWORD(v43) > 0x3B)
            {
LABEL_66:
              result = 0;
              goto LABEL_67;
            }

            if (HIDWORD(v43))
            {
              HIDWORD(v43) = 60 - HIDWORD(v43);
              if (v24)
              {
                --v24;
              }

              else
              {
                v24 = 23;
              }
            }
          }
        }

        v34 = DDResultGetSubresultWithType(v16, @"Seconds");
        if (v34)
        {
          v35 = v34;
          v36 = v34[10];
          if (!v36)
          {
            v36 = v35[9];
          }

          result = extractInteger(v36, &v43);
          if (!result)
          {
            goto LABEL_67;
          }
        }

        if (a4)
        {
          *a4 = v24;
        }

        if (a5)
        {
          *a5 = HIDWORD(v43);
        }

        if (a6)
        {
          *a6 = v43;
        }

        if (a7)
        {
          v37 = DDResultGetSubresultWithType(v16, @"TimeZone");
          if (v37)
          {
            v38 = DDCreateTimeZoneWithResult(v37);
            if (v38)
            {
              *a7 = v38;
            }
          }
        }
      }

      result = 1;
      goto LABEL_67;
    }

    v18 = *(v16 + 56);
    if (!v18 || CFArrayGetCount(*(v16 + 56)) != 1)
    {
      break;
    }

    result = CFArrayGetValueAtIndex(v18, 0);
    v16 = result;
    a10 = -1;
    if (!result)
    {
      goto LABEL_67;
    }
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v19 = DDLogHandle_error_log_handle;
  result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BCFDD000, v19, OS_LOG_TYPE_ERROR, "Wrong number of results", buf, 2u);
    goto LABEL_66;
  }

LABEL_67:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t extractHourFromApproxTimeValue(CFStringRef theString1, int *a2, CFLocaleRef locale)
{
  if (!locale)
  {
    goto LABEL_28;
  }

  Value = CFLocaleGetValue(locale, *MEMORY[0x1E695E6D0]);
  if (!Value)
  {
    goto LABEL_28;
  }

  v6 = Value;
  if (CFStringCompare(@"MX", Value, 0) && CFStringCompare(@"ES", v6, 0) && CFStringCompare(@"PT", v6, 0) && CFStringCompare(@"IT", v6, 0) && CFStringCompare(@"GR", v6, 0) && CFStringCompare(@"TR", v6, 0) && CFStringCompare(@"LB", v6, 0) && CFStringCompare(@"IL", v6, 0) && CFStringCompare(@"EG", v6, 0) && CFStringCompare(@"DZ", v6, 0) && CFStringCompare(@"TN", v6, 0) && CFStringCompare(@"MA", v6, 0))
  {
    if (CFStringCompare(@"CA", v6, 0) && CFStringCompare(@"RU", v6, 0) && CFStringCompare(@"UA", v6, 0) && CFStringCompare(@"BY", v6, 0) && CFStringCompare(@"SE", v6, 0) && CFStringCompare(@"NO", v6, 0) && CFStringCompare(@"FI", v6, 0) && CFStringCompare(@"DE", v6, 0) && CFStringCompare(@"PL", v6, 0) && CFStringCompare(@"IE", v6, 0) && CFStringCompare(@"GB", v6, 0))
    {
      if (CFStringCompare(@"FR", v6, 0) && CFStringCompare(@"KR", v6, 0))
      {
LABEL_28:
        v7 = 19;
        v8 = 18;
        goto LABEL_30;
      }

      v8 = 19;
      v7 = 19;
    }

    else
    {
      v7 = 18;
      v8 = 17;
    }
  }

  else
  {
    v7 = 20;
    v8 = 19;
  }

LABEL_30:
  if (CFStringCompare(theString1, @"morning", 0))
  {
    if (CFStringCompare(theString1, @"brunch", 0))
    {
      if (CFStringCompare(theString1, @"noon", 0))
      {
        if (CFStringCompare(theString1, @"afternoon", 0))
        {
          if (CFStringCompare(theString1, @"evening", 0))
          {
            if (CFStringCompare(theString1, @"dinner", 0) && CFStringCompare(theString1, @"night", 0))
            {
              v8 = v7;
              if (CFStringCompare(theString1, @"tonight", 0))
              {
                return 0;
              }
            }

            else
            {
              v8 = v7;
            }
          }
        }

        else
        {
          v8 = 15;
        }
      }

      else
      {
        v8 = 12;
      }
    }

    else
    {
      v8 = 11;
    }
  }

  else
  {
    v8 = 9;
  }

  *a2 = v8;
  return 1;
}

uint64_t extractInteger(const __CFString *a1, _DWORD *a2)
{
  if (a1)
  {
    v17 = 0;
    if (DDExtractSimpleInteger(a1, &v17) || DDExtractKanjiNumber(a1, &v17))
    {
      *a2 = v17;
      v4 = 1;
    }

    else
    {
      if (extractInteger_sOnce != -1)
      {
        dispatch_once(&extractInteger_sOnce, &__block_literal_global_345);
      }

      *buf = 0;
      v14 = buf;
      v15 = 0x2000000000;
      v16 = 0;
      if (extractInteger_sOnce_346 != -1)
      {
        dispatch_once(&extractInteger_sOnce_346, &__block_literal_global_350);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __extractInteger_block_invoke_2;
      block[3] = &unk_1E8002628;
      block[4] = buf;
      block[5] = a1;
      block[6] = a2;
      dispatch_sync(extractInteger_sQueue, block);
      if (v14[24])
      {
        v4 = 1;
      }

      else
      {
        DDLogErrD(v6, v7, v8, v9, v10, @"Extraction failed for %@", a1);
        v4 = v14[24];
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v5 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BCFDD000, v5, OS_LOG_TYPE_ERROR, "null value in DataDetectorsCore:extractInteger", buf, 2u);
    }

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t hourValueForHourAndMeridianResult(uint64_t a1, uint64_t a2, const __CFLocale *a3, uint64_t a4, unsigned int a5, signed int a6, int a7, uint64_t a8, char a9)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v28 = -1;
    v18 = *(a1 + 80);
    if (!v18)
    {
      v18 = *(a1 + 72);
    }

    if (!extractInteger(v18, &v28))
    {
      return 0xFFFFFFFFLL;
    }

    if (!a4)
    {
      if (a8)
      {
        v19 = __OFSUB__(v28, 12);
        if (v28 <= 12)
        {
          if ((a5 & 0x80000000) != 0 && (v19 = __OFSUB__(a6, 12), a6 <= 0xC) && (v19 = __OFSUB__(v28, a6), v28 >= a6) || (a5 & 0x80000000) == 0 && a6 < 0 && (v19 = __OFSUB__(v28, a5 % 0xC), v28 < (a5 % 0xC)))
          {
            a4 = a8;
          }

          else if (((a6 & a5 & 0x80000000) != 0) != v19)
          {
            a4 = a8;
          }

          else
          {
            a4 = 0;
          }
        }
      }
    }

    v27 = 0;
    v26 = 0;
    v20 = extractMeridianValue(a4, &v27, &v27 + 1, &v26, &v26 + 1);
    if (v20)
    {
      goto LABEL_20;
    }

    if (sForce24HrsFormat || localeHasStrict24Hrs(a3) || hourResultIsObvious24Hrs(a2))
    {
      return v28;
    }

    if (v18 && v28 && CFStringGetLength(v18) >= 1 && CFStringGetCharacterAtIndex(v18, 0) == 48)
    {
      v20 = 1;
      v22 = v28;
      v21 = 1;
    }

    else
    {
LABEL_20:
      v21 = v27;
      v22 = v28;
      if (v28 - 12 >= 0xFFFFFFF5 && !v27)
      {
        if (!HIBYTE(v27) && (v28 > 6 || !v26) && (v28 < 6 || !HIBYTE(v26)))
        {
          goto LABEL_48;
        }

        v22 = v28 + 12;
        goto LABEL_47;
      }
    }

    if (v22 == 12 && v20 && !v26)
    {
      if (HIBYTE(v26))
      {
        if (a9)
        {
          return 24;
        }

        else
        {
          return 0;
        }
      }

      if (!v21)
      {
        if (!HIBYTE(v27))
        {
          return v28;
        }

        v25 = locale12PMIsMidnight(a3);
        if (!a9 || !v25)
        {
          return v28;
        }

        return 24;
      }

      if (!locale12PMIsMidnight(a3))
      {
        return 0;
      }

      if (!a9)
      {
        return 24;
      }

      return v28;
    }

    if (v22 || !HIBYTE(v27))
    {
LABEL_48:
      if (v20 || !a6 || v22 < 1)
      {
        return v28;
      }

      if (a7 == -1 && v22 <= 7)
      {
        return (v22 + 12);
      }

      else
      {
        v24 = v22 + 12;
        if (v22 >= a7 || v22 > 0xB || v24 < a7)
        {
          if (a5 < 12)
          {
            if (v22 >= a6)
            {
              return v28;
            }
          }

          else if (v22 >= a6 && v24 > a5)
          {
            return v28;
          }
        }
      }

      return v24;
    }

    v22 = 12;
LABEL_47:
    v28 = v22;
    goto LABEL_48;
  }

  return result;
}

__CFString *createDetailedDescription(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = a1[5];
  CFStringAppendFormat(Mutable, 0, @"type = %@, range = %ld/%ld, matched string = %@", a1[8], a1[4], v3, a1[9]);
  if (a1[6])
  {
    CFStringAppendFormat(Mutable, 0, @", score = %ld", a1[6]);
  }

  v4 = a1[10];
  if (v4 || (v4 = a1[9]) != 0)
  {
    CFStringAppendFormat(Mutable, 0, @", value = %@", v4);
  }

  v5 = a1[7];
  if (v5 && CFArrayGetCount(v5))
  {
    CFStringAppend(Mutable, @"\nSubresults = {\n");
    for (i = 0; i < CFArrayGetCount(v5); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      v8 = ValueAtIndex[10];
      if (!v8)
      {
        v8 = ValueAtIndex[9];
      }

      CFStringAppendFormat(Mutable, 0, @"(%@:%@)\n", ValueAtIndex[8], v8);
    }

    CFStringAppend(Mutable, @"}");
  }

  return Mutable;
}

CFTimeZoneRef DDCreateTimeZoneWithResult(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  SubresultWithType = DDResultGetSubresultWithType(a1, @"OlsonTimeZone");
  if (!SubresultWithType || (v3 = SubresultWithType[10]) == 0 && (v3 = SubresultWithType[9]) == 0)
  {
    v10 = DDResultGetSubresultWithType(a1, @"Hours");
    if (v10)
    {
      v11 = v10[10];
      if (v11 || (v11 = v10[9]) != 0)
      {
        v27 = 0;
        if ((extractInteger(v11, &v27) & 1) == 0)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v18 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v11;
            _os_log_error_impl(&dword_1BCFDD000, v18, OS_LOG_TYPE_ERROR, "Could not extract hour offset for time zone (%@)", buf, 0xCu);
          }

          goto LABEL_57;
        }

        v12 = 3600 * v27;
        v13 = DDResultGetSubresultWithType(a1, @"Minutes");
        if (v13)
        {
          v14 = v13[10];
          if (v14 || (v14 = v13[9]) != 0)
          {
            if (extractInteger(v14, &v27))
            {
              v12 += 60 * v27;
            }

            else
            {
              if (DDLogHandle_onceToken != -1)
              {
                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
              }

              v19 = DDLogHandle_error_log_handle;
              if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v29 = v14;
                _os_log_error_impl(&dword_1BCFDD000, v19, OS_LOG_TYPE_ERROR, "Could not extract minute offset for time zone (%@), ignoring", buf, 0xCu);
              }
            }
          }
        }

        if (v12 > 64800)
        {
          goto LABEL_60;
        }

        v20 = DDResultGetSubresultWithType(a1, @"Sign");
        if (v20)
        {
          v21 = v20[10];
          if (v21 || (v21 = v20[9]) != 0)
          {
            if (CFStringCompare(v21, @"-", 0))
            {
              if (CFStringCompare(v21, @"+", 0))
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                v22 = DDLogHandle_error_log_handle;
                if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v29 = v21;
                  _os_log_error_impl(&dword_1BCFDD000, v22, OS_LOG_TYPE_ERROR, "Could not extract sign for time zone offset (%@), considering a positive offset", buf, 0xCu);
                }
              }
            }

            else
            {
              v12 = -v12;
            }
          }
        }

        v8 = CFTimeZoneCreateWithTimeIntervalFromGMT(*MEMORY[0x1E695E480], v12);
        if (!v8)
        {
          goto LABEL_57;
        }

        goto LABEL_61;
      }
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v16 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    if (a1)
    {
      v17 = *(a1 + 80);
      if (!v17)
      {
        v17 = *(a1 + 72);
      }
    }

    else
    {
      v17 = 0;
    }

    *buf = 138412290;
    v29 = v17;
    _os_log_error_impl(&dword_1BCFDD000, v16, OS_LOG_TYPE_ERROR, "Relative time zone without value (%@)", buf, 0xCu);
    goto LABEL_57;
  }

  v4 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v3, @"|");
  v6 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || !CFArrayGetCount(ArrayBySeparatingStrings))
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v15 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      if (!v6)
      {
        goto LABEL_57;
      }

      goto LABEL_24;
    }

    *buf = 138412290;
    v29 = v3;
    _os_log_error_impl(&dword_1BCFDD000, v15, OS_LOG_TYPE_ERROR, "Unexpected error while extracting time zone (%@)", buf, 0xCu);
    if (v6)
    {
LABEL_24:
      CFRelease(v6);
    }

LABEL_57:
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

LABEL_59:
    v23 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v26 = *(a1 + 80);
        if (!v26)
        {
          v26 = *(a1 + 72);
        }
      }

      else
      {
        v26 = 0;
      }

      *buf = 138412290;
      v29 = v26;
      _os_log_error_impl(&dword_1BCFDD000, v23, OS_LOG_TYPE_ERROR, "CFTimeZoneCreateWithName failed for %@", buf, 0xCu);
    }

LABEL_60:
    v8 = 0;
    goto LABEL_61;
  }

  if (CFArrayGetCount(v6) != 2 || (v7 = CFArrayGetValueAtIndex(v6, 1), (v8 = CFTimeZoneCreateWithName(v4, v7, 1u)) == 0))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    v8 = CFTimeZoneCreateWithName(v4, ValueAtIndex, 1u);
  }

  CFRelease(v6);
  if (!v8)
  {
    goto LABEL_57;
  }

LABEL_61:
  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t extractMeridianValue(uint64_t result, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  if (result)
  {
    v9 = result;
    if (_typesAreEqual(*(result + 64), @"Meridian") || _typesAreEqual(v9[8], @"ApproxTime") || (result = _typesAreEqual(v9[8], @"SpecialDateTime"), result))
    {
      v10 = v9[10];
      if (!v10)
      {
        v10 = v9[9];
        if (!v10)
        {
          return 0;
        }
      }

      if (CFStringGetLength(v10) < 2)
      {
        return 0;
      }

      if (CFStringCompare(v10, @"am", 0) && CFStringCompare(v10, @"morning", 0))
      {
        if (CFStringCompare(v10, @"pm", 0) && CFStringCompare(v10, @"afternoon", 0) && CFStringCompare(v10, @"evening", 0))
        {
          a2 = a3;
          if (CFStringCompare(v10, @"dinner", 0))
          {
            a2 = a5;
            if (CFStringCompare(v10, @"night", 0))
            {
              if (CFStringCompare(v10, @"day", 0) && CFStringCompare(v10, @"brunch", 0))
              {
                a2 = a4;
                if (CFStringCompare(v10, @"noon", 0))
                {
                  return 0;
                }
              }

              else
              {
                a2 = a4;
              }
            }
          }
        }

        else
        {
          a2 = a3;
        }
      }

      result = 1;
      *a2 = 1;
    }
  }

  return result;
}

uint64_t localeHasStrict24Hrs(uint64_t result)
{
  if (result)
  {
    result = CFLocaleGetValue(result, *MEMORY[0x1E695E6D0]);
    if (result)
    {
      v1 = result;
      if (CFStringGetLength(result) < 2)
      {
        return 0;
      }

      else
      {
        v10.location = 0;
        v10.length = 2;
        CFStringGetCharacters(v1, v10, &buffer);
        if (buffer == 65 && v9 == 88)
        {
          return 1;
        }

        if (buffer == 66 && v9 == 81)
        {
          return 1;
        }

        v2 = v9 == 80 || v9 == 90;
        v3 = v2;
        if (buffer == 67 && v3)
        {
          return 1;
        }

        if (buffer == 68 && v9 == 75)
        {
          return 1;
        }

        if (buffer == 70 && v9 == 73)
        {
          return 1;
        }

        v4 = v9 == 68 || v9 == 83;
        v5 = v4;
        if (buffer == 73 && v5 || buffer == 77 && v9 == 76 || buffer == 78 && v9 == 69 || buffer == 82 && v9 == 85)
        {
          return 1;
        }

        else
        {
          v7 = v9 == 69 || (v9 & 0xFFFE) == 74;
          return (buffer == 83) & v7;
        }
      }
    }
  }

  return result;
}

uint64_t hourResultIsObvious24Hrs(uint64_t result)
{
  v3 = -1;
  if (result)
  {
    v1 = result;
    v2 = *(result + 80);
    if (!v2)
    {
      v2 = *(v1 + 72);
    }

    result = extractInteger(v2, &v3);
    if (result)
    {
      return v3 > 12;
    }
  }

  return result;
}

const __CFLocale *locale12PMIsMidnight(const __CFLocale *result)
{
  if (result)
  {
    v1 = result;
    Value = CFLocaleGetValue(result, *MEMORY[0x1E695E6F0]);
    if (!Value || (result = CFStringHasPrefix(Value, @"ja"), !result))
    {
      result = CFLocaleGetValue(v1, *MEMORY[0x1E695E6D0]);
      if (result)
      {
        return (CFStringCompare(@"JP", result, 0) == kCFCompareEqualTo);
      }
    }
  }

  return result;
}

uint64_t DDExtractSimpleInteger(const __CFString *a1, uint64_t *a2)
{
  Length = CFStringGetLength(a1);
  v5 = Length - 1;
  if (Length < 1)
  {
    v7 = 0;
LABEL_26:
    if (!a2)
    {
      return 1;
    }

    goto LABEL_27;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v5);
    if ((CharacterAtIndex - 2406) >= 0xA)
    {
      v10 = CharacterAtIndex;
    }

    else
    {
      v10 = CharacterAtIndex - 2358;
    }

    if ((CharacterAtIndex - 3664) <= 9)
    {
      v11 = CharacterAtIndex - 3616;
    }

    else
    {
      v11 = v10;
    }

    if ((CharacterAtIndex - 1776) <= 9)
    {
      v12 = CharacterAtIndex - 1728;
    }

    else
    {
      v12 = v11;
    }

    if ((CharacterAtIndex - 1632) <= 9)
    {
      v13 = CharacterAtIndex - 1584;
    }

    else
    {
      v13 = v12;
    }

    if ((CharacterAtIndex + 240) <= 9u)
    {
      v14 = CharacterAtIndex + 288;
    }

    else
    {
      v14 = v13;
    }

    if ((v14 - 48) <= 9u)
    {
      if (v8 > 0xCCCCCCCCCCCCCCBLL)
      {
        return 0;
      }

      v7 += v8 * (v14 & 0xF);
      v8 *= 10;
      goto LABEL_23;
    }

    if (v14 != 46)
    {
      break;
    }

    if (v6)
    {
      return 0;
    }

LABEL_23:
    --v5;
    ++v6;
    if (v5 == -1)
    {
      goto LABEL_26;
    }
  }

  if (v14 != 45 || v5)
  {
    return 0;
  }

  v7 = -v7;
  if (a2)
  {
LABEL_27:
    *a2 = v7;
  }

  return 1;
}

uint64_t __extractInteger_block_invoke_2(uint64_t a1)
{
  result = extractInteger_numberParser;
  if (extractInteger_numberParser)
  {
    result = CFNumberFormatterGetValueFromString(extractInteger_numberParser, *(a1 + 40), 0, kCFNumberIntType, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = result != 0;
  }

  return result;
}

dispatch_queue_t __extractInteger_block_invoke_347()
{
  result = dispatch_queue_create("com.apple.datadetectors.extraction.uint", 0);
  extractInteger_sQueue = result;
  return result;
}

void __extractInteger_block_invoke()
{
  if (!extractInteger_numberParser)
  {
    if (getLocaleForExtraction_sOnce != -1)
    {
      dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
    }

    extractInteger_numberParser = CFNumberFormatterCreate(0, _sLocaleForExtraction, kCFNumberFormatterDecimalStyle);
    if (!extractInteger_numberParser)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v0 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        *v1 = 0;
        _os_log_error_impl(&dword_1BCFDD000, v0, OS_LOG_TYPE_ERROR, "Number parser initialization failed", v1, 2u);
      }
    }
  }
}

void __getLocaleForExtraction_block_invoke()
{
  if (!_sLocaleForExtraction)
  {
    _sLocaleForExtraction = CFLocaleCopyCurrent();
    if (!_sLocaleForExtraction)
    {
      System = CFLocaleGetSystem();
      _sLocaleForExtraction = System;

      CFRetain(System);
    }
  }
}

uint64_t DDResultCopyExtractedDateFromReferenceDateWithLocale(uint64_t a1, const __CFLocale *a2, const void *a3, const void *a4, BOOL *a5, CFDateRef *a6, CFTypeRef *a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = _copyDefaultCalendar();
  if (v14)
  {
    v15 = v14;
    v16 = DDResultCopyExtractedDateFromReferenceDateRec(a1, a2, v14, a3, a4, a5, a6, a7, 0);
    CFRelease(v15);
    v17 = *MEMORY[0x1E69E9840];
    return v16;
  }

  else
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v19 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "DDResultCopyExtractedDateFromReferenceDateWithLocale";
      _os_log_error_impl(&dword_1BCFDD000, v19, OS_LOG_TYPE_ERROR, "Couldn't fetch the gregorian calendar in %s...", buf, 0xCu);
    }

    v20 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

CFCalendarRef _copyDefaultCalendar()
{
  if (pthread_main_np() != 1)
  {
    goto LABEL_6;
  }

  if (_copyDefaultCalendar_onceToken != -1)
  {
    dispatch_once(&_copyDefaultCalendar_onceToken, &__block_literal_global_64);
  }

  if (!_copyDefaultCalendar__calendar || (CFRetain(_copyDefaultCalendar__calendar), (result = _copyDefaultCalendar__calendar) == 0))
  {
LABEL_6:
    v1 = *MEMORY[0x1E695E480];
    v2 = *MEMORY[0x1E695E678];

    return CFCalendarCreateWithIdentifier(v1, v2);
  }

  return result;
}

uint64_t DDResultCopyExtractedDateFromReferenceDateRec(uint64_t a1, const __CFLocale *a2, __CFCalendar *a3, const void *a4, const void *a5, BOOL *a6, CFDateRef *a7, CFTypeRef *a8, int a9)
{
  v72 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v15 = a1;
    v16 = *(a1 + 64);
    if (_typesAreEqual(v16, @"BeginDate") || _typesAreEqual(v16, @"EndDate"))
    {
      v16 = @"Date";
      SubresultWithType = DDResultGetSubresultWithType(v15, @"Date");
      if (SubresultWithType)
      {
        v15 = SubresultWithType;
      }

      else
      {
        v16 = @"DateTime";
        v20 = DDResultGetSubresultWithType(v15, @"DateTime");
        if (v20)
        {
          v15 = v20;
        }
      }
    }

    locale = a2;
    if (a5)
    {
      v21 = CFRetain(a5);
    }

    else
    {
      v21 = CFTimeZoneCopyDefault();
    }

    v22 = v21;
    v23 = copyBestDateForDate(a4);
    if (_typesAreEqual(v16, @"Timestamp"))
    {
      v24 = *(v15 + 56);
      if (!v24 || CFArrayGetCount(*(v15 + 56)) != 1)
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v26 = v22;
        v27 = v23;
        v33 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BCFDD000, v33, OS_LOG_TYPE_ERROR, "Wrong number of results", buf, 2u);
        }

        goto LABEL_126;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v24, 0);
      v19 = DDResultCopyExtractedDateFromReferenceDateRec(ValueAtIndex, a2, a3, a4, a5, a6, a7, a8, a9 + 1);
      v26 = v22;
LABEL_20:
      v27 = v23;
      if (!v19)
      {
        goto LABEL_126;
      }

LABEL_131:
      CFRelease(v26);
      CFRelease(v27);
      goto LABEL_132;
    }

    if (_typesAreEqual(v16, @"DateTime"))
    {
      v28 = DDResultGetSubresultWithType(v15, @"SpecialDateTime");
      v27 = v23;
      if (v28)
      {
        v29 = v28[10];
        if (!v29)
        {
          v29 = v28[9];
        }

        v26 = v22;
        if (a6)
        {
          *a6 = 0;
        }

        v70 = 0;
        *buf = 0;
        HIDWORD(v69) = 0;
        v30 = DDResultGetSubresultWithType(v15, @"Time");
        v31 = DDResultGetSubresultWithType(v15, @"ApproxTime");
        if (v30)
        {
          if (!v31)
          {
            v31 = DDResultGetSubresultWithType(v15, @"SpecialDateTime");
          }

          v32 = extractHourMinuteSecondWithRefCopyTimeZone(v30, 0, locale, &v70 + 1, &v70, &v69 + 1, buf, 0xFFFFFFFF, -1, -1, v31);
        }

        else
        {
          if (!v31)
          {
            LODWORD(v69) = -1;
            HourFromApproxTimeValue = extractHourFromApproxTimeValue(v29, &v69, locale);
            goto LABEL_86;
          }

          v43 = DDResultGetSubresultWithType(v15, @"ApproxTime");
          v32 = extractHourMinuteSecondWithRefCopyTimeZone(v43, 0, locale, &v70 + 1, &v70, &v69 + 1, buf, 0xFFFFFFFF, -1, -1, 0);
        }

        v44 = v32;
        LODWORD(v69) = -1;
        HourFromApproxTimeValue = extractHourFromApproxTimeValue(v29, &v69, locale);
        if (v44)
        {
          if (!HourFromApproxTimeValue)
          {
            goto LABEL_90;
          }

          if (v69 <= 11)
          {
            v46 = HIDWORD(v70) - 12;
            if (SHIDWORD(v70) <= 12 && (HIDWORD(v70) != 12 || v70 < 1))
            {
              goto LABEL_90;
            }

LABEL_84:
            HIDWORD(v70) = v46;
            goto LABEL_90;
          }

          if (v69 != 12 && (SHIDWORD(v70) < 12 || v69 != 15 && HIDWORD(v70) == 12))
          {
            v46 = HIDWORD(v70) + 12;
            goto LABEL_84;
          }

LABEL_90:
          v50 = *buf;
          if (a7)
          {
            v68 = 0;
            if (*buf)
            {
              v51 = *buf;
            }

            else
            {
              v51 = v22;
            }

            v67 = 0;
            at = MEMORY[0x1BFB34330](v23);
            CFCalendarSetTimeZone(a3, v51);
            CFCalendarDecomposeAbsoluteTime(a3, at, "yMd", &v68 + 4, &v68, &v67);
            v52 = DDResultGetSubresultWithType(v15, @"RelativeDay");
            if (v52)
            {
              v53 = v52;
              v65 = -1;
              v54 = v52[10];
              if (!v54)
              {
                v54 = v53[9];
              }

              if (!extractInteger(v54, &v65))
              {
                goto LABEL_126;
              }

              if (!CFCalendarComposeAbsoluteTime(a3, &at, "yMdHms", HIDWORD(v68), v68, v67, HIDWORD(v70), v70, HIDWORD(v69)))
              {
                goto LABEL_126;
              }

              v55 = CFCalendarAddComponents(a3, &at, 0, "d", v65);
              if (!v55)
              {
                goto LABEL_126;
              }
            }

            else
            {
              v56 = DDResultGetSubresultWithType(v15, @"Date");
              if (v56 && !DDResultExtractDayMonthYear(v56, locale, a3, &v67, &v68, &v68 + 1, v23, v51))
              {
                goto LABEL_126;
              }

              v55 = CFCalendarComposeAbsoluteTime(a3, &at, "yMdHms", HIDWORD(v68), v68, v67, HIDWORD(v70), v70, HIDWORD(v69));
              if (!v55)
              {
                goto LABEL_126;
              }
            }

            v19 = v55;
            *a7 = CFDateCreate(0, at);
            v50 = *buf;
          }

          else
          {
            v19 = 1;
          }

          if (a8 && v50)
          {
            *a8 = CFRetain(v50);
          }

          goto LABEL_131;
        }

LABEL_86:
        if (HourFromApproxTimeValue)
        {
          v49 = v69;
        }

        else
        {
          v49 = 12;
        }

        LODWORD(v70) = 0;
        HIDWORD(v70) = v49;
        HIDWORD(v69) = 0;
        *buf = 0;
        goto LABEL_90;
      }

      v40 = DDResultGetSubresultWithType(v15, @"Date");
      if (!v40)
      {
        v26 = v22;
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v47 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BCFDD000, v47, OS_LOG_TYPE_ERROR, "should have a date in a DateTime", buf, 2u);
        }

        v19 = 1;
        goto LABEL_131;
      }

      v70 = 0;
      HIDWORD(v69) = 0;
      if (DDResultExtractDayMonthYear(v40, locale, a3, &v70 + 1, &v70, &v69 + 1, a4, a5))
      {
        v41 = DDResultGetSubresultWithType(v15, @"Time");
        v26 = v22;
        if (v41)
        {
          v19 = v41;
          LODWORD(v69) = 0;
          v68 = 0;
          *buf = 0;
          v42 = locale;
        }

        else
        {
          v19 = DDResultGetSubresultWithType(v15, @"ApproxTime");
          LODWORD(v69) = 0;
          v68 = 0;
          *buf = 0;
          v42 = locale;
          if (!v19)
          {
            goto LABEL_125;
          }
        }

        v57 = DDResultGetSubresultWithType(v15, @"ApproxTime");
        if (!extractHourMinuteSecondWithRefCopyTimeZone(v19, 0, v42, &v69, &v68 + 1, &v68, buf, 0xFFFFFFFF, -1, -1, v57))
        {
          goto LABEL_126;
        }

        if (a6)
        {
          *a6 = 0;
        }

        if (!a7)
        {
          goto LABEL_120;
        }

        if (*buf)
        {
          v58 = *buf;
        }

        else
        {
          v58 = v22;
        }

        CFCalendarSetTimeZone(a3, v58);
        at = 0.0;
        v37 = HIDWORD(v69);
        v38 = v70;
        v39 = HIDWORD(v70);
        goto LABEL_119;
      }
    }

    else
    {
      if (!_typesAreEqual(v16, @"Date"))
      {
        if (!_typesAreEqual(v16, @"Time") && !_typesAreEqual(v16, @"ApproxTime"))
        {
          v26 = v22;
          if (!_typesAreEqual(v16, @"TimeOffset"))
          {
            v19 = 0;
            v27 = v23;
            goto LABEL_131;
          }

          v27 = v23;
          *buf = MEMORY[0x1BFB34330](v23);
          v48 = DDApplyTimeOffset(v15, a3, buf, a6);
          v19 = v48;
          if (a7 && v48)
          {
            *a7 = CFDateCreate(0, *buf);
            goto LABEL_131;
          }

          goto LABEL_125;
        }

        *buf = 0;
        at = MEMORY[0x1BFB34330](v23);
        v26 = v22;
        CFCalendarSetTimeZone(a3, v22);
        v69 = 0;
        v70 = 0;
        v68 = 0;
        CFCalendarDecomposeAbsoluteTime(a3, at, "yMdH", &v70 + 4, &v70, &v69 + 4, &v69);
        v34 = -1;
        if (!a9)
        {
          v35 = _typesAreEqual(v16, @"Time");
          v34 = v69;
          if (!v35)
          {
            v34 = -1;
          }
        }

        if (!extractHourMinuteSecondWithRefCopyTimeZone(v15, 0, a2, &v69, &v68 + 1, &v68, buf, 0xFFFFFFFF, -1, v34, 0))
        {
          v19 = 0;
          goto LABEL_20;
        }

        v27 = v23;
        if (a6)
        {
          *a6 = 0;
        }

        if (!a7)
        {
          goto LABEL_120;
        }

        if (*buf)
        {
          v36 = *buf;
        }

        else
        {
          v36 = v22;
        }

        CFCalendarSetTimeZone(a3, v36);
        v38 = v70;
        v37 = HIDWORD(v70);
        v39 = HIDWORD(v69);
LABEL_119:
        CFCalendarComposeAbsoluteTime(a3, &at, "yMdHms", v37, v38, v39, v69, HIDWORD(v68), v68);
        *a7 = CFDateCreate(0, at);
LABEL_120:
        if (*buf)
        {
          if (a8)
          {
            *a8 = *buf;
          }

          else
          {
            CFRelease(*buf);
          }
        }

LABEL_124:
        v19 = 1;
LABEL_125:
        if (v19)
        {
          goto LABEL_131;
        }

LABEL_126:
        DetailedDescription = createDetailedDescription(v15);
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v60 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = DetailedDescription;
          _os_log_error_impl(&dword_1BCFDD000, v60, OS_LOG_TYPE_ERROR, "Date extraction failed: could not parse %@", buf, 0xCu);
        }

        CFRelease(DetailedDescription);
        v19 = 0;
        goto LABEL_131;
      }

      if (a6)
      {
        *a6 = 1;
      }

      LODWORD(at) = 0;
      v70 = 0;
      v27 = v23;
      if (DDResultExtractDayMonthYear(v15, locale, a3, &at, &v70 + 1, &v70, a4, a5))
      {
        v26 = v22;
        if (a7)
        {
          CFCalendarSetTimeZone(a3, v22);
          *buf = 0;
          CFCalendarComposeAbsoluteTime(a3, buf, "yMdHms", v70, HIDWORD(v70), LODWORD(at), 12, 0, 0);
          *a7 = CFDateCreate(0, *buf);
        }

        goto LABEL_124;
      }
    }

    v26 = v22;
    goto LABEL_126;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v18 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BCFDD000, v18, OS_LOG_TYPE_ERROR, "result should not be NULL", buf, 2u);
  }

  v19 = 0;
LABEL_132:
  v61 = *MEMORY[0x1E69E9840];
  return v19;
}

CFDateRef copyBestDateForDate(const void *a1)
{
  if (a1)
  {

    return CFRetain(a1);
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    Current = CFAbsoluteTimeGetCurrent();

    return CFDateCreate(v3, Current);
  }
}

uint64_t DDResultExtractDayMonthYear(uint64_t a1, const __CFLocale *a2, __CFCalendar *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, uint64_t a7, CFTypeRef cf)
{
  v125 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v16 = CFRetain(cf);
  }

  else
  {
    v16 = CFTimeZoneCopyDefault();
  }

  v17 = v16;
  CFCalendarSetLocale(a3, a2);
  CFCalendarSetTimeZone(a3, v17);
  if (a7)
  {
    MEMORY[0x1BFB34330](a7);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v19 = Current;
  v120 = 0;
  v121 = 0;
  SubresultWithType = DDResultGetSubresultWithType(a1, @"AbsoluteDate");
  v21 = DDResultGetSubresultWithType(a1, @"PartialDate");
  if (!(SubresultWithType | v21))
  {
    if (DDResultGetSubresultWithType(a1, @"RelativeDay"))
    {
      data = DDResultGetSubresultWithType(a1, @"RelativeDay");
      v30 = data;
      LODWORD(v119) = -1;
      if (data)
      {
        v22 = a5;
        data = data[2].data;
        if (!data)
        {
          data = v30[2].info;
        }
      }

      else
      {
        v22 = a5;
      }

      if (extractInteger(data, &v119))
      {
        at[0] = v19;
        CFCalendarAddComponents(a3, at, 0, "d", LODWORD(v119));
        CFCalendarDecomposeAbsoluteTime(a3, at[0], "yMd", &v120 + 4, &v121, &v121 + 4);
        goto LABEL_111;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v44 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        if (v30)
        {
          info = v30[2].data;
          if (!info)
          {
            info = v30[2].info;
          }
        }

        else
        {
          info = 0;
        }

        LODWORD(at[0]) = 138412290;
        *(at + 4) = info;
        v61 = "Could not extract the value of the RelativeDay binder: %@";
LABEL_132:
        v76 = v44;
        v77 = 12;
LABEL_133:
        _os_log_error_impl(&dword_1BCFDD000, v76, OS_LOG_TYPE_ERROR, v61, at, v77);
      }

LABEL_186:
      v54 = 0;
      goto LABEL_187;
    }

    if (!DDResultGetSubresultWithType(a1, @"RelativeDayOfWeek"))
    {
      goto LABEL_186;
    }

    v37 = DDResultGetSubresultWithType(a1, @"RelativeDayOfWeek");
    v38 = DDResultGetSubresultWithType(v37, @"DayOfWeek");
    v114 = a6;
    if (v38 && ((v39 = v38[10]) != 0 || (v39 = v38[9]) != 0))
    {
      v40 = 0;
      v41 = 0;
      v42 = 1;
      v43 = 1;
    }

    else
    {
      v55 = DDResultGetSubresultWithType(v37, @"DayToCome");
      if (!v55 || (v39 = v55[10]) == 0 && (v39 = v55[9]) == 0)
      {
        v73 = DDResultGetSubresultWithType(v37, @"AmbiguousNextDay");
        if (v73 && ((v39 = v73[10]) != 0 || (v39 = v73[9]) != 0))
        {
          v42 = 0;
          v43 = 0;
          v40 = 0;
          v113 = 0;
          v115 = 1;
          v41 = 1;
        }

        else
        {
          v74 = DDResultGetSubresultWithType(v37, @"DayToComeWeekAfter");
          if (v74 && ((v39 = v74[10]) != 0 || (v39 = v74[9]) != 0))
          {
            v42 = 0;
            v43 = 0;
            v113 = 0;
            v41 = 0;
            v115 = 1;
            v40 = 1;
          }

          else
          {
            v75 = DDResultGetSubresultWithType(v37, @"DayToCome2WeeksAfter");
            if (v75)
            {
              v39 = v75[10];
              if (v39 || (v39 = v75[9]) != 0)
              {
                v42 = 0;
                v43 = 0;
                v41 = 0;
                v40 = 2;
                goto LABEL_59;
              }
            }

            v102 = DDResultGetSubresultWithType(v37, @"PreviousDay");
            if (!v102 || (v39 = v102[10]) == 0 && (v39 = v102[9]) == 0)
            {
              v103 = DDResultGetSubresultWithType(v37, @"DayOfPreviousWeek");
              if (v103 && ((v39 = v103[10]) != 0 || (v39 = v103[9]) != 0))
              {
                v42 = 0;
                v115 = 0;
                v41 = 0;
                v40 = -1;
              }

              else
              {
                v107 = DDResultGetSubresultWithType(v37, @"DayOfThisWeek");
                if (v107 && ((v39 = v107[10]) != 0 || (v39 = v107[9]) != 0))
                {
                  v42 = 0;
                  v115 = 0;
                  v40 = 0;
                  v41 = 0;
                }

                else
                {
                  v109 = DDResultGetSubresultWithType(v37, @"DayOfNextWeek");
                  if (v109)
                  {
                    v39 = v109[10];
                    if (v39 || (v39 = v109[9]) != 0)
                    {
                      v42 = 0;
                      v115 = 0;
                      v41 = 0;
                      v43 = 1;
                      v40 = 1;
                      goto LABEL_60;
                    }
                  }

                  v110 = DDResultGetSubresultWithType(v37, @"DayOfNextNextWeek");
                  if (!v110 || (v39 = v110[10]) == 0 && (v39 = v110[9]) == 0)
                  {
                    if (DDLogHandle_onceToken != -1)
                    {
                      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                    }

                    v84 = DDLogHandle_error_log_handle;
                    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_186;
                    }

                    LOWORD(at[0]) = 0;
                    v61 = "there should be a weekday";
                    goto LABEL_150;
                  }

                  v42 = 0;
                  v115 = 0;
                  v41 = 0;
                  v40 = 2;
                }
              }

              v43 = 1;
LABEL_60:
              v113 = 1;
              goto LABEL_61;
            }

            v42 = 0;
            v43 = 0;
            v113 = 0;
            v41 = 0;
            v40 = -1;
            v115 = 1;
          }
        }

LABEL_61:
        v118 = 0;
        if ((extractInteger(v39, &v118) & 1) == 0)
        {
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

          v44 = DDLogHandle_error_log_handle;
          if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_186;
          }

          LODWORD(at[0]) = 138412290;
          *(at + 4) = v39;
          v61 = "Could not extract the value of the Day : %@";
          goto LABEL_132;
        }

        v111 = v41;
        v56 = v42;
        v22 = a5;
        v57 = v118;
        DayOfWeek = CFAbsoluteTimeGetDayOfWeek(v19, v17);
        if (DayOfWeek == 7)
        {
          v59 = 0;
        }

        else
        {
          v59 = DayOfWeek;
        }

        at[0] = 0.0;
        *&at[1] = at;
        v123 = 0x2000000000;
        v124 = DDResultExtractDayMonthYear_actualFirstWeekDay;
        if (DDResultExtractDayMonthYear_sOnce != -1)
        {
          dispatch_once(&DDResultExtractDayMonthYear_sOnce, &__block_literal_global_182);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __DDResultExtractDayMonthYear_block_invoke_2;
        block[3] = &unk_1E8002558;
        block[4] = at;
        block[5] = a2;
        v117 = v59;
        dispatch_sync(DDResultExtractDayMonthYear_sQueue, block);
        v60 = *(*&at[1] + 24);
        if (v60 - 8 > 0xFFFFFFF8)
        {
          if (v60 >= 2)
          {
            v66 = v60 - 1;
            if (v57 >= v66)
            {
              v57 -= v66;
            }

            else
            {
              v57 = v57 - v66 + 7;
            }

            v67 = __OFSUB__(v59, v66);
            v68 = v59 - v66;
            if (v68 < 0 != v67)
            {
              v59 = v68 + 7;
            }

            else
            {
              v59 = v68;
            }
          }
        }

        else
        {
          *(*&at[1] + 24) = 1;
        }

        v69 = v57 - v59;
        if (v43)
        {
          v70 = v115;
          if (v69 >= 0)
          {
            v70 = 0;
          }
        }

        else
        {
          v70 = v113;
          if (v57 != v59)
          {
            v70 = 0;
          }

          if (v69 < 0)
          {
LABEL_101:
            ++v40;
LABEL_102:
            a6 = v114;
            LODWORD(v72) = v69 - v40 + 8 * v40;
            if ((v111 & (v72 < 4)) != 0)
            {
              v72 = (v72 + 7);
            }

            else
            {
              v72 = v72;
            }

            v119 = v19;
            CFCalendarAddComponents(a3, &v119, 0, "d", v72);
            CFCalendarDecomposeAbsoluteTime(a3, v119, "yMd", &v120 + 4, &v121, &v121 + 4);
            _Block_object_dispose(at, 8);
            goto LABEL_111;
          }
        }

        if ((v70 & 1) == 0)
        {
          v71 = v57 == v59 ? v56 : 0;
          if (v71 != 1)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_101;
      }

      v42 = 0;
      v43 = 0;
      v40 = 0;
      v41 = 0;
    }

LABEL_59:
    v115 = 1;
    goto LABEL_60;
  }

  v22 = a5;
  v23 = a6;
  if (SubresultWithType)
  {
    v24 = SubresultWithType;
  }

  else
  {
    v24 = v21;
  }

  v25 = DDResultGetSubresultWithType(v24, @"AmbiguousDate");
  GregorianDate = CFAbsoluteTimeGetGregorianDate(v19, cf);
  if (v25)
  {
    if (extractDMYFromAmbiguousForm(v25, a2, &v121 + 1, &v121, &v120 + 1))
    {
      a6 = v23;
      if (v120 < 0)
      {
        v27 = v121 - GregorianDate.month;
        if (v27 > -3)
        {
          if (v27 < 11)
          {
            HIDWORD(v120) = GregorianDate.year;
            goto LABEL_111;
          }

          v28 = GregorianDate.year - 1;
        }

        else
        {
          v28 = GregorianDate.year + 1;
        }

        HIDWORD(v120) = v28;
      }

LABEL_111:
      if (a4)
      {
        *a4 = HIDWORD(v121);
      }

      if (v22)
      {
        *v22 = v121;
      }

      if (a6)
      {
        *a6 = HIDWORD(v120);
      }

      v54 = 1;
      goto LABEL_187;
    }
  }

  else
  {
    v25 = v24;
  }

  v31 = DDResultGetSubresultWithType(v25, @"SpecialDay");
  if (!v31)
  {
    v46 = DDResultGetSubresultWithType(v25, @"MonthNumber");
    if (v46)
    {
      v47 = v46;
      v48 = v46[10];
      if (!v48)
      {
        v48 = v47[9];
      }

      if ((extractInteger(v48, &v121) & 1) == 0)
      {
        goto LABEL_186;
      }

      v49 = 0;
      v50 = 0;
    }

    else
    {
      v62 = DDResultGetSubresultWithType(v25, @"RelativeMonthNumber");
      if (v62)
      {
        v63 = v62;
        LODWORD(at[0]) = 0;
        v64 = v62[10];
        if (!v64)
        {
          v64 = v63[9];
        }

        if (!extractInteger(v64, at))
        {
          goto LABEL_186;
        }

        v65 = LODWORD(at[0]) + GregorianDate.month;
        LODWORD(v121) = v65;
        if (v65 < 13)
        {
          if (v65 <= 0)
          {
            LODWORD(v121) = v65 + 12;
            v50 = -1;
          }

          else
          {
            v50 = 0;
          }
        }

        else
        {
          LODWORD(v121) = v65 - 12;
          v50 = 1;
        }

        v49 = 0;
      }

      else
      {
        v50 = 0;
        v49 = 1;
      }
    }

    HIDWORD(v120) = extractGregorianYear(v25);
    if ((v120 & 0x8000000000000000) == 0)
    {
      goto LABEL_140;
    }

    HIDWORD(v120) = GregorianDate.year;
    if (v50)
    {
      v78 = v50 + GregorianDate.year;
    }

    else
    {
      if (v49)
      {
        goto LABEL_140;
      }

      v86 = v121 - GregorianDate.month;
      if (v86 > -3)
      {
        if (v86 < 11)
        {
          goto LABEL_140;
        }

        v78 = GregorianDate.year - 1;
      }

      else
      {
        v78 = GregorianDate.year + 1;
      }
    }

    HIDWORD(v120) = v78;
LABEL_140:
    v79 = DDResultGetSubresultWithType(v25, @"DayNumber");
    if (v79)
    {
      v112 = v49;
      v80 = v79[10];
      if (!v80)
      {
        v80 = v79[9];
      }

      v81 = HIDWORD(v120);
      v82 = v121;
      if (CFStringCompare(v80, @"LastDayOfMonth", 0))
      {
        LODWORD(at[0]) = -1;
        if (extractInteger(v80, at))
        {
          v83 = LODWORD(at[0]);
          goto LABEL_165;
        }
      }

      else
      {
        if (v82 < 0xD)
        {
          if (!v82)
          {
            HIDWORD(v121) = 31;
            a6 = v23;
            second = GregorianDate.second;
LABEL_168:
            v89 = DDResultGetSubresultWithType(v25, @"RelativeDayOfWeek");
            v90 = DDResultGetSubresultWithType(v89, @"DayOfWeek");
            if (!v90)
            {
              v99 = v112;
              if (v121)
              {
                v99 = 0;
              }

              if ((v99 & 1) == 0)
              {
                goto LABEL_111;
              }

LABEL_202:
              v104 = HIDWORD(v121) - ((*&GregorianDate.year >> 16) >> 24);
              if (v104 > -7)
              {
                month = GregorianDate.month;
                if (v104 < 25)
                {
LABEL_216:
                  LODWORD(v121) = month;
                  goto LABEL_111;
                }

                if ((*&GregorianDate.year >> 8) >> 24 > 1)
                {
                  month = GregorianDate.month - 1;
                  goto LABEL_216;
                }

                month = GregorianDate.month + 11;
                v106 = HIDWORD(v120) - 1;
              }

              else
              {
                if ((*&GregorianDate.year >> 8) >> 24 < 12)
                {
                  month = GregorianDate.month + 1;
                  goto LABEL_216;
                }

                month = GregorianDate.month - 11;
                v106 = HIDWORD(v120) + 1;
              }

              HIDWORD(v120) = v106;
              goto LABEL_216;
            }

            v91 = v90;
            v92 = v90[10];
            if (!v92)
            {
              v92 = v91[9];
            }

            if (extractInteger(v92, &v120))
            {
              if (!v112)
              {
                goto LABEL_111;
              }

              *&v126.year = *&GregorianDate.year & 0xFFFF00FF00000000 | (BYTE4(v121) << 40) | HIDWORD(v120);
              v126.second = second;
              AbsoluteTime = CFGregorianDateGetAbsoluteTime(v126, v17);
              *at = *"";
              LODWORD(v123) = -2;
              v119 = AbsoluteTime;
              CFCalendarAddComponents(a3, &v119, 0, "M", 1);
              *&v127.year = *&GregorianDate.year;
              v127.second = second;
              v94 = CFGregorianDateGetAbsoluteTime(v127, v17);
              if (v119 - v94 < v94 - AbsoluteTime)
              {
                *&at[0] = 1;
              }

              v95 = 0;
              while (1)
              {
                v119 = AbsoluteTime;
                CFCalendarAddComponents(a3, &v119, 0, "M", *(at + v95));
                v96 = *&CFAbsoluteTimeGetGregorianDate(v119, v17);
                v97 = CFAbsoluteTimeGetDayOfWeek(v119, v17);
                if (v97 % 7 == v120)
                {
                  break;
                }

                v95 += 4;
                if (v95 == 20)
                {
                  v98 = v121;
                  goto LABEL_201;
                }
              }

              v98 = (v96 >> 8) >> 24;
              HIDWORD(v120) = v96;
              LODWORD(v121) = v98;
LABEL_201:
              a6 = v23;
              if (v98)
              {
                goto LABEL_111;
              }

              goto LABEL_202;
            }

            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v44 = DDLogHandle_error_log_handle;
            if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_186;
            }

            v108 = v91[10];
            if (!v108)
            {
              v108 = v91[9];
            }

            LODWORD(at[0]) = 138412290;
            *(at + 4) = v108;
            v61 = "Could not extract the day of week from the value %@";
            goto LABEL_132;
          }

          if ((v81 + 3) >= 7)
          {
            v87 = &lastDayOfMonth;
          }

          else
          {
            v87 = lastDayOfMonthLeapYear;
          }

          v83 = v87[v82 - 1];
LABEL_165:
          HIDWORD(v121) = v83;
          a6 = v23;
          second = GregorianDate.second;
          if (v83 < 0)
          {
            goto LABEL_186;
          }

          goto LABEL_168;
        }

        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v85 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          LODWORD(at[0]) = 67109120;
          HIDWORD(at[0]) = v82;
          _os_log_error_impl(&dword_1BCFDD000, v85, OS_LOG_TYPE_ERROR, "DDExtractDayNumberForMonthAndYear called with bad monthNumber %d", at, 8u);
        }
      }

      v54 = 0;
      HIDWORD(v121) = -1;
      goto LABEL_187;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v84 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_186;
    }

    LOWORD(at[0]) = 0;
    v61 = "Missing day in date result";
LABEL_150:
    v76 = v84;
    v77 = 2;
    goto LABEL_133;
  }

  v32 = v31;
  GregorianYear = extractGregorianYear(v25);
  if (GregorianYear >= 0)
  {
    year = GregorianYear;
  }

  else
  {
    year = GregorianDate.year;
  }

  HIDWORD(v120) = year;
  LOBYTE(v119) = 0;
  LODWORD(at[0]) = 0;
  v35 = DDResultGetSubresultWithType(v32, @"Identifier");
  if (v35)
  {
    v36 = v35[10];
    if (!v36)
    {
      v36 = v35[9];
    }
  }

  else
  {
    v36 = 0;
  }

  v51 = DDResultGetSubresultWithType(v32, @"CalendarSystem");
  if (v51)
  {
    v52 = v51[10];
    a6 = v23;
    if (!v52)
    {
      v52 = v51[9];
    }
  }

  else
  {
    v52 = 0;
    a6 = v23;
  }

  v53 = DDResultExtractDayAndMonthWithSpecialDayIdentifierInYear(v36, v52, a2, &v119, at, &v121 + 1, &v121, year);
  v54 = 0;
  if (v53 && (v121 & 0x8000000000000000) == 0 && (v121 & 0x80000000) == 0)
  {
    goto LABEL_111;
  }

LABEL_187:
  if (v17)
  {
    CFRelease(v17);
  }

  v100 = *MEMORY[0x1E69E9840];
  return v54;
}

uint64_t DDApplyTimeOffset(uint64_t a1, __CFCalendar *a2, CFAbsoluteTime *a3, BOOL *a4)
{
  v8 = DDGetUnitValueFromSubBinder(a1, @"Months");
  v9 = DDGetUnitValueFromSubBinder(a1, @"Days");
  v10 = DDGetUnitValueFromSubBinder(a1, @"Hours");
  v11 = DDGetUnitValueFromSubBinder(a1, @"Minutes");
  v12 = v11;
  result = CFCalendarAddComponents(a2, a3, 0, "MdHm", v8, v9, v10, v11);
  if (a4)
  {
    if (result)
    {
      *a4 = (v12 | v10) == 0;
    }
  }

  return result;
}

uint64_t DDGetUnitValueFromSubBinder(uint64_t a1, const __CFString *a2)
{
  SubresultWithType = DDResultGetSubresultWithType(a1, a2);
  if (!SubresultWithType)
  {
    return 0;
  }

  v3 = SubresultWithType;
  v6 = 0;
  v4 = SubresultWithType[10];
  if (!v4)
  {
    v4 = v3[9];
  }

  if (extractInteger(v4, &v6))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t extractDMYFromAmbiguousForm(CFIndex Count, const __CFLocale *a2, _DWORD *a3, int *a4, int *a5)
{
  v5 = Count;
  v78 = *MEMORY[0x1E69E9840];
  v6 = *(Count + 56);
  if (!v6 || (Count = CFArrayGetCount(*(Count + 56)), (Count - 4) <= 0xFFFFFFFFFFFFFFFDLL))
  {
    DDLogErrD(Count, a2, a3, a4, a5, @"bad subresult %@", v5);
    goto LABEL_4;
  }

  v13 = Count;
  v14 = 0;
  v15 = v77;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v14);
    if (ValueAtIndex)
    {
      v17 = ValueAtIndex;
      ValueAtIndex = ValueAtIndex[2].data;
      if (!ValueAtIndex)
      {
        ValueAtIndex = v17[2].info;
      }
    }

    Integer = extractInteger(ValueAtIndex, v15);
    if ((Integer & 1) == 0)
    {
      DDLogErrD(Integer, v19, v20, v21, v22, @"could not extract integer at %ld from %@", v14, v5);
      goto LABEL_4;
    }

    ++v14;
    ++v15;
  }

  while (v13 != v14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __extractDMYFromAmbiguousForm_block_invoke;
  block[3] = &__block_descriptor_tmp_216;
  block[4] = a2;
  if (extractDMYFromAmbiguousForm_sOnce != -1)
  {
    dispatch_once(&extractDMYFromAmbiguousForm_sOnce, block);
  }

  v23 = extractDMYFromAmbiguousForm_sFormatLocale;
  if (extractDMYFromAmbiguousForm_sFormatLocale && (v24 = MEMORY[0x1BFB34430](a2), CFEqual(v23, v24)))
  {
    v25 = &extractDMYFromAmbiguousForm_sFormat2;
    if (v13 != 2)
    {
      v25 = &extractDMYFromAmbiguousForm_sFormat3;
    }

    DateFormatFromTemplate = CFRetain(*v25);
  }

  else
  {
    if (v13 == 3)
    {
      v31 = @"yMd";
    }

    else
    {
      v31 = @"Md";
    }

    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x1E695E480], v31, 0, a2);
  }

  v32 = DateFormatFromTemplate;
  if (!DateFormatFromTemplate)
  {
    DDLogErrD(0, v27, v28, v29, v30, @"could not get the date format string from the current locale");
    goto LABEL_4;
  }

  Length = CFStringGetLength(DateFormatFromTemplate);
  v75 = Length;
  if (Length >= 100)
  {
    DDLogErrD(Length, v34, v35, v36, v37, @"format length too long");
    CFRelease(v32);
    goto LABEL_4;
  }

  v38 = Length;
  v39 = MEMORY[0x1EEE9AC00](Length);
  v40 = &v74 - ((v39 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v40, v39 + 1);
  v79.location = 0;
  v79.length = v38;
  CFStringGetBytes(v32, v79, 0x600u, 0x3Fu, 0, v40, v38 + 1, &v75);
  v40[v75] = 0;
  CFRelease(v32);
  v46 = 0;
  v47 = 0xFFFFFFFFLL;
  do
  {
    v48 = v77[v46];
    if (!v48 || v48 >= 32)
    {
      if (v47 != -1)
      {
        DDLogErrD(v41, v42, v43, v44, v45, @"Aborting, impossible date pattern, too many years in %@", v5);
        goto LABEL_4;
      }

      v47 = v46;
    }

    ++v46;
  }

  while (v13 != v46);
  if (v47 == -1)
  {
    v50 = 0xFFFFFFFFLL;
  }

  else
  {
    v49 = 0;
    v50 = 0xFFFFFFFFLL;
    do
    {
      if (v77[v49] >= 13 && v47 != v49)
      {
        if (v50 != -1)
        {
          DDLogErrD(v41, v42, v43, v44, v45, @"Aborting, impossible date pattern, too many month in %@", v5);
          goto LABEL_4;
        }

        v50 = v49;
      }

      ++v49;
    }

    while (v13 != v49);
  }

  v52 = *v40;
  if (!*v40)
  {
    v54 = 0xFFFFFFFFLL;
    goto LABEL_91;
  }

  v53 = 0;
  v54 = 0xFFFFFFFFLL;
  while (v53 != v47 && v53 != v54 && v53 != v50)
  {
LABEL_73:
    if (v52 > 99)
    {
      if (v52 == 100)
      {
        if (v50 == -1)
        {
          v50 = v53;
        }

        else
        {
          v50 = v50;
        }

        goto LABEL_88;
      }

      if (v52 == 121)
      {
LABEL_82:
        if (v47 == -1)
        {
          v47 = v53;
        }

        else
        {
          v47 = v47;
        }
      }
    }

    else if ((v52 - 76) >= 2)
    {
      if (v52 == 89)
      {
        goto LABEL_82;
      }
    }

    else if (v54 == -1)
    {
      v54 = v53;
    }

    else
    {
      v54 = v54;
    }

LABEL_88:
    v63 = *++v40;
    v52 = v63;
    if (!v63)
    {
      goto LABEL_91;
    }
  }

  v55 = 0;
  if (v53 <= 2)
  {
    v56 = 2;
  }

  else
  {
    v56 = v53;
  }

  v57 = v56 - v53;
  v41 = v53;
  v42 = &v77[v53 + 1];
  v43 = v53;
  v44 = (1 - v54) + v53;
  v45 = (1 - v47) + v53;
  while (v57 != v55)
  {
    v58 = v53 + v55 + 1;
    v59 = v44 + v55;
    v60 = v45 + v55;
    if (v13 > v53 + v55 + 1 && v60 && v59 && v58 != v50)
    {
      if (v50 != -1 || v47 == -1)
      {
        v62 = v50;
      }

      else
      {
        v62 = v53 + v55 + 1;
      }

      if (v42[v55] >= 13)
      {
        v50 = v62;
      }

      else
      {
        v50 = v50;
      }
    }

    ++v55;
    if (v60 && v59 && v58 != v50)
    {
      v53 += v55;
      goto LABEL_73;
    }
  }

LABEL_91:
  if (v13 != 2)
  {
    if (v50 <= 2 && ((v54 | v47) & 0x80000000) == 0 && v54 <= 2 && v47 < 3)
    {
      v64 = v77[v47];
      goto LABEL_100;
    }

    goto LABEL_115;
  }

  if (v50 > 1 || v54 >= 2)
  {
LABEL_115:
    DDLogErrD(v41, v42, v43, v44, v45, @"Aborting, one of the position is incorrect (%d, %d, %d)", v50, v54, v47);
    goto LABEL_4;
  }

  v64 = -1;
LABEL_100:
  v65 = v77[v54];
  v66 = v77[v50];
  if (v65 >= 13 && (v66 - 1) <= 0xB)
  {
    v67 = lastDayOfMonthLeapYear[(v66 - 1)];
    v68 = v65 <= v67;
    if (v65 <= v67)
    {
      v69 = v65;
    }

    else
    {
      v69 = v66;
    }

    if (v68)
    {
      v65 = v66;
    }

    v66 = v69;
  }

  if ((v65 - 13) < 0xFFFFFFF4)
  {
    goto LABEL_4;
  }

  if (v66 < 1)
  {
    goto LABEL_113;
  }

  v70 = lastDayOfMonthLeapYear[v65 - 1];
  if (v66 <= v70)
  {
    if (v13 >= 3)
    {
      v71 = 0;
      while (v77[v71] <= v70)
      {
        if (++v71 == 3)
        {
          goto LABEL_122;
        }
      }

      if (v47 != v71)
      {
        DDLogErrD(v41, v42, v43, v44, v45, @"Locale information is useless (year)");
        goto LABEL_4;
      }
    }

LABEL_122:
    *a3 = v66;
    *a4 = v65;
    v72 = v64 + 1900;
    if (v64 >= 0x64)
    {
      v72 = v64;
    }

    if (v64 <= 0x31)
    {
      v72 = v64 + 2000;
    }

    if (v64 >= 0)
    {
      v73 = v72;
    }

    else
    {
      v73 = -1;
    }

    *a5 = v73;
    result = 1;
  }

  else
  {
    if ((v66 - 32) <= 0xFFFFFFE0)
    {
LABEL_113:
      DDLogErrD(v41, v42, v43, v44, v45, @"Day (%d) is out of bounds", v66);
    }

LABEL_4:
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t extractGregorianYear(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  SubresultWithType = DDResultGetSubresultWithType(a1, @"YearNumber");
  if (SubresultWithType)
  {
    v3 = SubresultWithType;
    *buf = 0;
    v4 = SubresultWithType[10];
    if (!v4)
    {
      v4 = v3[9];
    }

    if (extractInteger(v4, buf))
    {
      v5 = *buf + 1900;
      if (*buf >= 0x64u)
      {
        v5 = *buf;
      }

      if (*buf <= 0x31u)
      {
        v5 = *buf + 2000;
      }

      if (*buf >= 0)
      {
        result = v5;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      goto LABEL_62;
    }

LABEL_61:
    result = 0xFFFFFFFFLL;
    goto LABEL_62;
  }

  v7 = DDResultGetSubresultWithType(a1, @"JapaneseYear");
  if (v7)
  {
    v8 = v7;
    v28 = 0;
    data = DDResultGetSubresultWithType(v7, @"JapaneseYearNumber");
    if (data)
    {
      v10 = data;
      data = data[2].data;
      if (!data)
      {
        data = v10[2].info;
      }
    }

    if (!extractInteger(data, &v28))
    {
      goto LABEL_61;
    }

    v11 = DDResultGetSubresultWithType(v8, @"JapaneseEra");
    if (!v11)
    {
      goto LABEL_78;
    }

    v12 = v11[10];
    if (!v12)
    {
      v12 = v11[9];
      if (!v12)
      {
        goto LABEL_78;
      }
    }

    if (CFStringGetLength(v12) <= 0)
    {
      goto LABEL_70;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(v12, 0);
    if (CharacterAtIndex <= 13180)
    {
      if (CharacterAtIndex <= 113)
      {
        if (CharacterAtIndex != 72)
        {
          if (CharacterAtIndex == 82)
          {
            goto LABEL_59;
          }

          if (CharacterAtIndex != 104)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if (CharacterAtIndex <= 13178)
        {
          if (CharacterAtIndex != 114)
          {
            v14 = 13055;
            goto LABEL_58;
          }

LABEL_59:
          v24 = v28 + 2019;
          goto LABEL_73;
        }

        if (CharacterAtIndex != 13179)
        {
          v26 = 13180;
LABEL_68:
          if (CharacterAtIndex != v26)
          {
            goto LABEL_70;
          }

          v24 = v28 + 1926;
LABEL_73:
          v28 = v24 - 1;
          if (v24 <= 0)
          {
            goto LABEL_74;
          }

LABEL_78:
          result = v28;
          goto LABEL_62;
        }
      }

LABEL_65:
      v24 = v28 + 1989;
      goto LABEL_73;
    }

    if (CharacterAtIndex <= 22822)
    {
      if (CharacterAtIndex == 13181)
      {
        goto LABEL_71;
      }

      if (CharacterAtIndex != 13182)
      {
        v14 = 20196;
LABEL_58:
        if (CharacterAtIndex == v14)
        {
          goto LABEL_59;
        }

LABEL_70:
        v28 = -1;
LABEL_74:
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v27 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v12;
          _os_log_error_impl(&dword_1BCFDD000, v27, OS_LOG_TYPE_ERROR, "Unknown era: %@", buf, 0xCu);
        }

        goto LABEL_78;
      }
    }

    else
    {
      if (CharacterAtIndex <= 26125)
      {
        if (CharacterAtIndex != 22823)
        {
          if (CharacterAtIndex != 24179)
          {
            goto LABEL_70;
          }

          goto LABEL_65;
        }

LABEL_71:
        v24 = v28 + 1912;
        goto LABEL_73;
      }

      if (CharacterAtIndex != 26126)
      {
        v26 = 26157;
        goto LABEL_68;
      }
    }

    v24 = v28 + 1868;
    goto LABEL_73;
  }

  v15 = DDResultGetSubresultWithType(a1, @"MinguoYear");
  if (!v15)
  {
    v20 = DDResultGetSubresultWithType(a1, @"ThaiYear");
    if (v20)
    {
      v21 = v20;
      *buf = 0;
      v22 = v20[10];
      if (!v22)
      {
        v22 = v21[9];
      }

      if (extractInteger(v22, buf))
      {
        if (*buf < 100)
        {
          if (*buf >= 43)
          {
            if ((*buf - 43) > 0x31)
            {
              result = (*buf + 1857);
            }

            else
            {
              result = (*buf + 1957);
            }

            goto LABEL_62;
          }
        }

        else
        {
          v23 = *buf - 543;
          if (*buf >= 0x21Fu)
          {
            if (v23 > 0x31)
            {
              if (v23 >= 0x64)
              {
                result = v23;
              }

              else
              {
                result = (*buf + 1357);
              }
            }

            else
            {
              result = (*buf + 1457);
            }

            goto LABEL_62;
          }
        }
      }
    }

    goto LABEL_61;
  }

  v16 = v15;
  *buf = 0;
  v17 = v15[10];
  if (!v17)
  {
    v17 = v16[9];
  }

  if (!extractInteger(v17, buf))
  {
    goto LABEL_61;
  }

  v18 = *buf + 3811;
  if ((*buf + 1911) >= 0x64)
  {
    v18 = *buf + 1911;
  }

  if ((*buf + 1911) <= 0x31)
  {
    v19 = *buf + 3911;
  }

  else
  {
    v19 = v18;
  }

  if (*buf >= -1911)
  {
    result = v19;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_62:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DDResultExtractDayAndMonthWithSpecialDayIdentifierInYear(void *key, uint64_t a2, const __CFLocale *a3, Boolean *a4, int *a5, _DWORD *a6, _DWORD *a7, unsigned int a8)
{
  *a6 = 1;
  *a7 = 1;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (DDResultExtractDayAndMonthWithSpecialDayIdentifierInYear_sOnce != -1)
  {
    dispatch_once(&DDResultExtractDayAndMonthWithSpecialDayIdentifierInYear_sOnce, &__block_literal_global_28);
  }

  if (!DDResultExtractDayAndMonthWithSpecialDayIdentifierInYear__sVacationsInfoPlist)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(DDResultExtractDayAndMonthWithSpecialDayIdentifierInYear__sVacationsInfoPlist, key);
  if (!Value)
  {
    return 0;
  }

  v17 = Value;
  v36 = a8;
  if (a3)
  {
    v18 = CFLocaleGetValue(a3, *MEMORY[0x1E695E6D0]);
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"default";
  }

  v21 = *MEMORY[0x1E695E480];
  if (!a2)
  {
    goto LABEL_32;
  }

  alloc = *MEMORY[0x1E695E480];
  v22 = CFStringCreateWithFormat(v21, 0, @"%@.%@", v20, a2);
  v23 = CFDictionaryGetValue(v17, v22);
  CFRelease(v22);
  if (!v23)
  {
    v24 = CFStringCreateWithFormat(alloc, 0, @"default.%@", a2);
    v23 = CFDictionaryGetValue(v17, v24);
    v25 = v24;
    v21 = alloc;
    CFRelease(v25);
    if (!v23)
    {
LABEL_32:
      v26 = CFDictionaryGetValue(v17, v20);
      v27 = v26 ? v26 : @"GREGORIAN";
      v34 = v20;
      v28 = v21;
      v29 = CFStringCreateWithFormat(v21, 0, @"%@.%@", v34, v27);
      v23 = CFDictionaryGetValue(v17, v29);
      CFRelease(v29);
      if (!v23)
      {
        v30 = CFStringCreateWithFormat(v28, 0, @"default.%@", v27);
        v23 = CFDictionaryGetValue(v17, v30);
        CFRelease(v30);
        if (!v23)
        {
          v31 = CFDictionaryGetValue(v17, @"default");
          v32 = @"GREGORIAN";
          if (v31)
          {
            v32 = v31;
          }

          v33 = CFStringCreateWithFormat(v28, 0, @"default.%@", v32);
          v23 = CFDictionaryGetValue(v17, v33);
          CFRelease(v33);
        }
      }
    }
  }

  return DDExtractDayAndMonthFromSpecialDayInYearRec(a6, a7, v36, a4, a5, key, v23, 0);
}

void __DDResultExtractDayMonthYear_block_invoke_2(uint64_t a1)
{
  if (DDResultExtractDayMonthYear_firstWeekDayLocale != *(a1 + 40))
  {
    DDResultExtractDayMonthYear_firstWeekDayLocale = *(a1 + 40);
    v2 = CFCalendarCopyCurrent();
    v3 = *(a1 + 40);
    if (v2)
    {
      v4 = v2;
      CFCalendarSetLocale(v2, v3);
      DDResultExtractDayMonthYear_actualFirstWeekDay = MEMORY[0x1BFB34200](v4);
      CFRelease(v4);
    }

    else
    {
      if (v3 && (v5 = MEMORY[0x1BFB34430](*(a1 + 40)), CFStringHasSuffix(v5, @"US")))
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      DDResultExtractDayMonthYear_actualFirstWeekDay = v6;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = DDResultExtractDayMonthYear_actualFirstWeekDay;
  if (*(a1 + 48))
  {
    Value = CFLocaleGetValue(*(a1 + 40), *MEMORY[0x1E695E6D0]);
    if (Value)
    {
      v8 = Value;
      if (CFEqual(Value, @"JP") || CFEqual(v8, @"CN") || CFEqual(v8, @"TW") || CFEqual(v8, @"HK") || CFEqual(v8, @"MO"))
      {
        *(*(*(a1 + 32) + 8) + 24) = 2;
      }
    }
  }
}

dispatch_queue_t __DDResultExtractDayMonthYear_block_invoke()
{
  result = dispatch_queue_create("com.apple.datadetectors.extraction.locale", 0);
  DDResultExtractDayMonthYear_sQueue = result;
  return result;
}

uint64_t DDExtractDayAndMonthFromSpecialDayInYearRec(_DWORD *a1, _DWORD *a2, uint64_t a3, Boolean *a4, int *a5, uint64_t a6, const __CFDictionary *a7, int a8)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a8 >= 2)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v10 = DDLogHandle_error_log_handle;
    result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
    if (result)
    {
      buf.years = 138412546;
      *&buf.months = a6;
      LOWORD(buf.hours) = 1024;
      *(&buf.hours + 2) = a3;
      v12 = "Recursive parsing of a special date failed for %@ for year %d";
      v13 = v10;
      v14 = 18;
LABEL_6:
      _os_log_error_impl(&dword_1BCFDD000, v13, OS_LOG_TYPE_ERROR, v12, &buf, v14);
LABEL_33:
      result = 0;
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  Value = CFDictionaryGetValue(a7, @"Type");
  if (CFStringCompare(Value, @"AbsoluteDate", 0) == kCFCompareEqualTo)
  {
    v26 = CFDictionaryGetValue(a7, @"Month");
    CFNumberGetValue(v26, kCFNumberIntType, a2);
    v27 = CFDictionaryGetValue(a7, @"Day");
    CFNumberGetValue(v27, kCFNumberIntType, a1);
    goto LABEL_36;
  }

  if (CFStringCompare(Value, @"MonthRelativeWeekDay", 0) == kCFCompareEqualTo)
  {
    v28 = CFDictionaryGetValue(a7, @"Month");
    CFNumberGetValue(v28, kCFNumberIntType, a2);
    v29 = CFDictionaryGetValue(a7, @"WeekDay");
    buf.years = 1;
    CFNumberGetValue(v29, kCFNumberIntType, &buf);
    v30 = CFDictionaryGetValue(a7, @"WeekDayNumberInMonth");
    valuePtr = 1;
    CFNumberGetValue(v30, kCFNumberIntType, &valuePtr);
    if (extractDayFromWeekDayRelativeToMonth(a3, *a2, buf.years, valuePtr) < 1)
    {
      goto LABEL_33;
    }

    *a1 = extractDayFromWeekDayRelativeToMonth(a3, *a2, buf.years, valuePtr);
    goto LABEL_36;
  }

  if (CFStringCompare(Value, @"SpecialDateRelativeDate", 0))
  {
    if (CFStringCompare(Value, @"DateList", 0) == kCFCompareEqualTo)
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a3);
      v23 = CFDictionaryGetValue(a7, v22);
      if (!v23)
      {
        goto LABEL_32;
      }

      ValueAtIndex = v23;
      cf = v22;
      v25 = CFGetTypeID(v23);
      if (v25 == CFArrayGetTypeID())
      {
        v22 = cf;
        if (CFArrayGetCount(ValueAtIndex) < 1)
        {
          goto LABEL_32;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        if (!ValueAtIndex)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = cf;
      }

      v45 = CFDictionaryGetValue(ValueAtIndex, @"NoDefinition");
      if (v45)
      {
        if (CFBooleanGetValue(v45) == 1)
        {
LABEL_32:
          CFRelease(v22);
          goto LABEL_33;
        }
      }

      v46 = CFDictionaryGetValue(ValueAtIndex, @"Month");
      v47 = CFDictionaryGetValue(ValueAtIndex, @"Day");
      CFNumberGetValue(v46, kCFNumberIntType, a2);
      CFNumberGetValue(v47, kCFNumberIntType, a1);
      CFRelease(cf);
    }

LABEL_36:
    v48 = CFDictionaryGetValue(a7, @"RelativeDays");
    if (v48)
    {
      valuePtr = 0;
      CFNumberGetValue(v48, kCFNumberIntType, &valuePtr);
      v49 = valuePtr;
      if (valuePtr)
      {
        memset(&buf.hours, 0, 20);
        v65 = a1;
        cfa = a3;
        v50 = a6;
        v51 = *a1;
        v52 = a4;
        v53 = a5;
        v54 = *a2;
        v55 = CFTimeZoneCopyDefault();
        v56 = (v51 << 40) | (v54 << 32);
        a5 = v53;
        a4 = v52;
        *&v71.year = v56 | cfa;
        v71.second = 0.0;
        AbsoluteTime = CFGregorianDateGetAbsoluteTime(v71, v55);
        *&buf.years = 0;
        buf.days = v49;
        v58 = CFAbsoluteTimeAddGregorianUnits(AbsoluteTime, v55, &buf);
        v59 = *&CFAbsoluteTimeGetGregorianDate(v58, v55);
        CFRelease(v55);
        *v65 = (v59 >> 16) >> 24;
        *a2 = (v59 >> 8) >> 24;
        if (v59 != cfa)
        {
          result = DDExtractDayAndMonthFromSpecialDayInYearRec(v65, a2, 2 * cfa - v59, v52, a5, v50, a7, (a8 + 1));
          goto LABEL_55;
        }
      }
    }

    if (a4)
    {
      v60 = CFDictionaryGetValue(a7, @"ActualMayVary");
      if (v60)
      {
        *a4 = CFBooleanGetValue(v60);
      }
    }

    if (a5)
    {
      v61 = CFDictionaryGetValue(a7, @"Observed");
      if (v61)
      {
        v62 = v61;
        if (CFStringCompare(v61, @"closestBusinessDay", 0) == kCFCompareEqualTo)
        {
          result = 1;
          *a5 = 1;
          goto LABEL_55;
        }

        if (CFStringCompare(v62, @"nextBusinessDay", 0))
        {
          if (CFStringCompare(v62, @"previousBusinessDay", 0))
          {
            if (CFStringCompare(v62, @"sameDay", 0) == kCFCompareEqualTo)
            {
              *a5 = 0;
            }

            goto LABEL_54;
          }

          v63 = 2;
        }

        else
        {
          v63 = 3;
        }

        *a5 = v63;
      }
    }

LABEL_54:
    result = 1;
    goto LABEL_55;
  }

  v31 = CFDictionaryGetValue(a7, @"SpecialDate");
  v32 = CFDictionaryGetValue(a7, @"CalendarType");
  if (CFStringCompare(v31, @"easter", 0) == kCFCompareEqualTo)
  {
    if (v32 && CFStringCompare(v32, @"JULIAN", 0) == kCFCompareEqualTo)
    {
      extractJulianEasterInYear(a1, a2, a3);
    }

    else
    {
      v34 = a3 % 19;
      v35 = a3 / 100;
      v36 = a3 % 100;
      v37 = (a3 / 100) & 3;
      if (a3 / -100 >= 0)
      {
        v37 = -((a3 / -100) & 3);
      }

      v38 = ((1431655765 * (v35 + (v35 + 8) / -25 + 1)) >> 32) - (v35 + (v35 + 8) / -25 + 1);
      v39 = (v35 + a3 / -400 + 19 * v34 + (v38 >> 1) + (v38 >> 31) + 15) % 30;
      v40 = v36 + ((v36 >> 13) & 3);
      v41 = 2 * (v37 + (v40 >> 2)) + ((v40 & 0xFC) - v36 + 32);
      v42 = (37201 * (v34 + 11 * v39 + 22 * ((v41 - v39) % 7))) >> 16;
      v43 = v41 - 7 * ((v41 - v39) / 7) + 249 * ((v42 >> 8) + ((v42 & 0x8000) >> 15)) + 114;
      v44 = (((v43 - ((9 * v43) >> 8)) >> 1) + ((9 * v43) >> 8)) >> 4;
      *a1 = (-31 * v44 + v43 + 1);
      *a2 = v44;
    }

    goto LABEL_36;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v33 = DDLogHandle_error_log_handle;
  result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    buf.years = 138412546;
    *&buf.months = a6;
    LOWORD(buf.hours) = 2112;
    *(&buf.hours + 2) = v31;
    v12 = "Malformed Vacations.plist for %@ (SpecialDate %@ is unknown)";
    v13 = v33;
    v14 = 22;
    goto LABEL_6;
  }

LABEL_55:
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t extractDayFromWeekDayRelativeToMonth(unsigned int a1, unsigned __int8 a2, int a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = CFTimeZoneCopyDefault();
  *&v22.year = a1 | (a2 << 32) | 0x10000000000;
  v22.second = 0.0;
  AbsoluteTime = CFGregorianDateGetAbsoluteTime(v22, v8);
  v10 = _copyDefaultCalendar();
  if (!v10)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v14 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      v20.years = 136315138;
      *&v20.months = "extractDayFromWeekDayRelativeToMonth";
      _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, "Couldn't fetch the gregorian calendar in %s...", &v20, 0xCu);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else if (!v8)
    {
LABEL_9:
      result = 0xFFFFFFFFLL;
      goto LABEL_17;
    }

    CFRelease(v8);
    goto LABEL_9;
  }

  v11 = v10;
  length = CFCalendarGetRangeOfUnit(v10, 0x10uLL, 8uLL, AbsoluteTime).length;
  CFRelease(v11);
  if (a4 < 0)
  {
    memset(&v20.days, 0, 24);
    *&v20.years = 0x100000000;
    v16 = CFAbsoluteTimeAddGregorianUnits(AbsoluteTime, v8, &v20);
    DayOfWeek = CFAbsoluteTimeGetDayOfWeek(v16, v8);
    v13 = length - a4 + 8 * a4 + a3 - DayOfWeek + 7 - 7 * ((a3 - DayOfWeek + 7) / 7) + 1;
  }

  else
  {
    v13 = (a3 - CFAbsoluteTimeGetDayOfWeek(AbsoluteTime, v8) + 7) % 7 - a4 + 8 * a4 - 6;
  }

  CFRelease(v8);
  if (length < v13 || v13 < 1)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = v13;
  }

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *extractJulianEasterInYear(_DWORD *result, _DWORD *a2, int a3)
{
  if (a3 <= 0)
  {
    v3 = -(-a3 & 3);
  }

  else
  {
    v3 = a3 & 3;
  }

  v4 = 4 * (a3 % 7) + 2 * v3 + 34;
  v5 = v4 - 7 * ((v4 - (19 * (a3 % 19) + 15 - 30 * ((((34953 * (19 * (a3 % 19) + 15)) >> 16) >> 4) + ((((34953 * (19 * (a3 % 19) + 15)) >> 16) & 0x8000) >> 15)))) / 7) + 114;
  v6 = ((v5 - ((9 * v5) >> 8)) >> 1) + ((9 * v5) >> 8);
  v7 = (-31 * (v6 >> 4) + v5 + 13);
  v8 = lastDayOfMonthLeapYear[(v6 >> 4) - 1];
  *result = v7 % v8 + 1;
  *a2 = v7 / v8 + (v6 >> 4);
  return result;
}

void *__extractDMYFromAmbiguousForm_block_invoke(void *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = result;
    v3 = *MEMORY[0x1E695E480];
    extractDMYFromAmbiguousForm_sFormat3 = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x1E695E480], @"yMd", 0, v1);
    extractDMYFromAmbiguousForm_sFormat2 = CFDateFormatterCreateDateFormatFromTemplate(v3, @"Md", 0, v2[4]);
    v4 = MEMORY[0x1BFB34430](v2[4]);
    result = CFRetain(v4);
    extractDMYFromAmbiguousForm_sFormatLocale = result;
  }

  return result;
}

CFCalendarRef ___copyDefaultCalendar_block_invoke()
{
  result = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  _copyDefaultCalendar__calendar = result;
  return result;
}

uint64_t DDResultCopyExtractedDateFromReferenceDate(uint64_t a1, const void *a2, const void *a3, BOOL *a4, CFDateRef *a5, CFTypeRef *a6)
{
  if (getLocaleForExtraction_sOnce != -1)
  {
    dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
  }

  v12 = _sLocaleForExtraction;

  return DDResultCopyExtractedDateFromReferenceDateWithLocale(a1, v12, a2, a3, a4, a5, a6);
}

uint64_t DDResultCopyExtractedStartDateEndDate(uint64_t a1, CFDateRef *a2, CFTypeRef *a3, CFTypeRef *a4, CFTypeRef *a5, BOOL *a6, const void *a7, CFTypeRef cf)
{
  if (getLocaleForExtraction_sOnce != -1)
  {
    dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
  }

  return DDResultCopyExtractedStartDateEndDateWithLocale(a1, _sLocaleForExtraction, a2, a3, a4, a5, a6, a7, cf);
}

uint64_t DDResultCopyExtractedStartDateEndDateWithLocale(uint64_t a1, const __CFLocale *a2, CFDateRef *a3, CFTypeRef *a4, CFTypeRef *a5, CFTypeRef *a6, BOOL *a7, const void *a8, CFTypeRef cf)
{
  v154 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v20 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v21 = "result should not be NULL";
    v22 = v20;
    v23 = 2;
LABEL_81:
    _os_log_error_impl(&dword_1BCFDD000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    goto LABEL_12;
  }

  v17 = _copyDefaultCalendar();
  if (!v17)
  {
    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v24 = DDLogHandle_error_log_handle;
    if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    *&buf[4] = "DDResultCopyExtractedStartDateEndDateWithLocale";
    v21 = "Couldn't fetch the gregorian calendar in %s...";
    v22 = v24;
    v23 = 12;
    goto LABEL_81;
  }

  v18 = v17;
  v141 = a3;
  v140 = a5;
  v138 = a7;
  if (cf)
  {
    v19 = CFRetain(cf);
  }

  else
  {
    v19 = CFTimeZoneCopyDefault();
  }

  v26 = v19;
  v139 = a6;
  v143 = copyBestDateForDate(a8);
  SubresultWithType = a1;
  if (!_typesAreEqual(*(a1 + 64), @"TimeDuration"))
  {
    SubresultWithType = DDResultGetSubresultWithType(a1, @"TimeDuration");
  }

  v28 = a1;
  v29 = a2;
  CFCalendarSetLocale(v18, a2);
  calendar = v18;
  CFCalendarSetTimeZone(v18, v26);
  v30 = DDResultGetSubresultWithType(v28, @"BeginDate");
  v31 = v28;
  v32 = DDResultGetSubresultWithType(v28, @"EndDate");
  if (!v32)
  {
    v34 = v26;
    if (!v30)
    {
      goto LABEL_26;
    }

    v38 = calendar;
    v39 = v143;
    v40 = _DDResultCopyImplicitDateFromReferenceDateWithLocale(v30, 1, v29, calendar, a8, cf, v143, v26, v138, v140, v139, v141, a4);
LABEL_33:
    v25 = v40;
    goto LABEL_248;
  }

  v33 = v32;
  if (!v30)
  {
    v38 = v18;
    v39 = v143;
    v40 = _DDResultCopyImplicitDateFromReferenceDateWithLocale(v32, 0, v29, v18, a8, cf, v143, v26, v138, v141, a4, v140, v139);
    goto LABEL_33;
  }

  v34 = v26;
  v35 = v32[7];
  if (v35)
  {
    v36 = v30[7];
    if (CFArrayGetCount(v32[7]) >= 1 && (!v36 || CFArrayGetCount(v36) >= 1))
    {
      v152 = 0;
      *buf = 0;
      v151 = 0;
      v150 = 0;
      if (CFArrayGetCount(v35) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v35, 0);
        v37 = 0;
      }

      else
      {
        ValueAtIndex = DDResultGetSubresultWithType(v33, @"Date");
        v37 = DDResultGetSubresultWithType(v33, @"ApproxTime");
      }

      v135 = v37;
      v26 = v34;
      v38 = calendar;
      if (v36)
      {
        v74 = v29;
        if (CFArrayGetCount(v36) == 1)
        {
          v75 = CFArrayGetValueAtIndex(v36, 0);
          v76 = 0;
        }

        else
        {
          v75 = DDResultGetSubresultWithType(v30, @"Date");
          v76 = DDResultGetSubresultWithType(v30, @"ApproxTime");
        }

        v39 = v143;
        v88 = DDResultCopyExtractedDateFromReferenceDateRec(v75, v74, calendar, v143, v26, &v150 + 1, &v152, &v151, 1);
        if (a4 && v151)
        {
          *a4 = CFRetain(v151);
        }

        IsPartial = resultIsPartial(v75);
        if (!v88)
        {
          v91 = v143;
          v78 = v76;
          v79 = ValueAtIndex;
          goto LABEL_83;
        }

        v78 = v76;
        v79 = ValueAtIndex;
        if (IsPartial)
        {
          goto LABEL_79;
        }
      }

      else
      {
        HIBYTE(v150) = 0;
        v77 = MEMORY[0x1BFB34330](a8);
        v75 = 0;
        v78 = 0;
        v152 = CFDateCreate(0, v77);
        v39 = v143;
        v74 = v29;
        v79 = ValueAtIndex;
      }

      v90 = resultIsPartial(v79);
      v91 = v39;
      if (!v90)
      {
LABEL_83:
        DDResultCopyExtractedDateFromReferenceDateRec(v79, v74, calendar, v91, v26, &v150, buf, v139, 1);
        v25 = 0;
        v92 = v152;
        if (v152 && *buf)
        {
          if (v141)
          {
            if (CFDateCompare(v152, *buf, 0) == kCFCompareGreaterThan)
            {
              if (DDResultGetSubresultWithType(v75, @"YearNumber"))
              {
                v93 = 1;
              }

              else
              {
                v93 = DDResultGetSubresultWithType(v75, @"JapaneseYearNumber") != 0;
              }

              if (v79)
              {
                if (DDResultGetSubresultWithType(v79, @"YearNumber"))
                {
                  v115 = 1;
                }

                else
                {
                  v115 = DDResultGetSubresultWithType(v79, @"JapaneseYearNumber") != 0;
                }
              }

              else
              {
                v115 = 0;
              }

              memset(v149, 0, sizeof(v149));
              v148 = 0;
              v146 = 0;
              v147 = 0;
              v145 = 0;
              MEMORY[0x1BFB34330](v152);
              CFCalendarDecomposeAbsoluteTime(calendar, v118, "yMdHms", &v149[2] + 4, &v149[2], &v149[1] + 4, &v149[1], v149 + 4, v149);
              MEMORY[0x1BFB34330](*buf);
              CFCalendarDecomposeAbsoluteTime(calendar, v119, "yMdHms", &v148, &v147 + 4, &v147, &v146 + 4, &v146, &v145);
              if (!v93 && SHIDWORD(v149[2]) > v148)
              {
                HIDWORD(v149[2]) = v148;
                CFRelease(v152);
                at = 0.0;
                CFCalendarComposeAbsoluteTime(calendar, &at, "yMdHms", HIDWORD(v149[2]), LODWORD(v149[2]), HIDWORD(v149[1]), LODWORD(v149[1]), HIDWORD(v149[0]), LODWORD(v149[0]));
                v152 = CFDateCreate(*MEMORY[0x1E695E480], at);
              }

              if (v115)
              {
                v99 = v74;
                v25 = 1;
                v39 = v143;
              }

              else
              {
                if (SHIDWORD(v149[2]) <= v148)
                {
                  v25 = 1;
                }

                else
                {
                  v148 = HIDWORD(v149[2]);
                  CFRelease(*buf);
                  at = 0.0;
                  v25 = CFCalendarComposeAbsoluteTime(calendar, &at, "yMdHms", v148, HIDWORD(v147), v147, HIDWORD(v146), v146, v145);
                  *buf = CFDateCreate(*MEMORY[0x1E695E480], at);
                }

                v39 = v143;
                v99 = v74;
                if (!v93 && CFDateCompare(v152, *buf, 0) == kCFCompareGreaterThan)
                {
                  ++v148;
                  CFRelease(*buf);
                  at = 0.0;
                  v25 = CFCalendarComposeAbsoluteTime(calendar, &at, "yMdHms", v148, HIDWORD(v147), v147, HIDWORD(v146), v146, v145);
                  *buf = CFDateCreate(*MEMORY[0x1E695E480], at);
                }
              }
            }

            else
            {
              v99 = v74;
              v25 = 1;
            }

            v100 = v140;
            v101 = v138;
            if (CFDateCompare(v152, *buf, 0) == kCFCompareGreaterThan)
            {
              if (CFDateCompare(a8, *buf, 0) == kCFCompareLessThan)
              {
                v120 = a8;
              }

              else
              {
                v120 = *buf;
              }
            }

            else
            {
              v120 = v152;
            }

            v121 = CFRetain(v120);
            if (v78)
            {
              HIDWORD(v149[2]) = 0;
              v122 = v78[10];
              if (!v122)
              {
                v122 = v78[9];
              }

              if (extractHourFromApproxTimeValue(v122, &v149[2] + 1, v99))
              {
                *(&v149[1] + 4) = 0;
                LODWORD(v149[1]) = 0;
                at = MEMORY[0x1BFB34330](v121);
                CFCalendarDecomposeAbsoluteTime(calendar, at, "yMd", &v149[2], &v149[1] + 4, &v149[1]);
                CFCalendarComposeAbsoluteTime(calendar, &at, "yMdHms", LODWORD(v149[2]), HIDWORD(v149[1]), LODWORD(v149[1]), HIDWORD(v149[2]), 0, 0);
                CFRelease(v121);
                v121 = CFDateCreate(*MEMORY[0x1E695E480], at);
                HIBYTE(v150) = 0;
              }
            }

            v102 = v135;
            *v141 = v121;
          }

          else
          {
            v99 = v74;
            v25 = 1;
            v100 = v140;
            v101 = v138;
            v102 = v135;
          }

          if (v100)
          {
            if (!v102)
            {
              goto LABEL_231;
            }

            HIDWORD(v149[2]) = 0;
            v123 = v102[10];
            if (!v123)
            {
              v123 = v102[9];
            }

            if (!extractHourFromApproxTimeValue(v123, &v149[2] + 1, v99) || (*(&v149[1] + 4) = 0, LODWORD(v149[1]) = 0, at = MEMORY[0x1BFB34330](*buf), CFCalendarDecomposeAbsoluteTime(calendar, at, "yMd", &v149[2], &v149[1] + 4, &v149[1]), CFCalendarComposeAbsoluteTime(calendar, &at, "yMdHms", LODWORD(v149[2]), HIDWORD(v149[1]), LODWORD(v149[1]), HIDWORD(v149[2]), 0, 0), v124 = CFDateCreate(*MEMORY[0x1E695E480], at), LOBYTE(v150) = 0, !v124))
            {
LABEL_231:
              v124 = CFRetain(*buf);
            }

            *v100 = v124;
          }

          if (v101)
          {
            if (v150)
            {
              v125 = HIBYTE(v150) == 0;
            }

            else
            {
              v125 = 1;
            }

            v126 = !v125;
            *v101 = v126;
          }

          v92 = v152;
        }

        if (v92)
        {
          CFRelease(v92);
        }

        if (v151)
        {
          CFRelease(v151);
        }

        v114 = *buf;
        if (*buf)
        {
LABEL_247:
          CFRelease(v114);
        }

LABEL_248:
        if (v25)
        {
LABEL_254:
          CFRelease(v26);
          CFRelease(v39);
          CFRelease(v38);
          goto LABEL_255;
        }

LABEL_249:
        DetailedDescription = createDetailedDescription(v31);
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v128 = DDLogHandle_error_log_handle;
        if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = DetailedDescription;
          _os_log_error_impl(&dword_1BCFDD000, v128, OS_LOG_TYPE_ERROR, "Unknown result type, could not extract duration: %@", buf, 0xCu);
        }

        CFRelease(DetailedDescription);
        v25 = 0;
        goto LABEL_254;
      }

LABEL_79:
      v91 = v152;
      goto LABEL_83;
    }
  }

LABEL_26:
  if (!SubresultWithType)
  {
    v26 = v34;
    v38 = calendar;
    v39 = v143;
    if (!DDResultGetSubresultWithType(v31, @"DayInterval"))
    {
      goto LABEL_249;
    }

    v52 = DDResultGetSubresultWithType(v31, @"DayInterval");
    v53 = DDResultGetSubresultWithType(v52, @"MonthNumber");
    v54 = DDResultGetSubresultWithType(v52, @"BeginDay");
    v55 = DDResultGetSubresultWithType(v52, @"EndDay");
    GregorianYear = extractGregorianYear(v52);
    v25 = 0;
    LODWORD(v152) = -1;
    LODWORD(v151) = -1;
    LODWORD(at) = -1;
    HIDWORD(v149[2]) = -1;
    if (!v53 || !v54 || !v55)
    {
      goto LABEL_201;
    }

    v57 = GregorianYear;
    v58 = v53[10];
    if (!v58)
    {
      v58 = v53[9];
    }

    if (v53[4] <= v55[4])
    {
      v59 = &v152;
    }

    else
    {
      v59 = &v151;
    }

    Integer = extractInteger(v58, v59);
    data = DDResultGetSubresultWithType(v54, @"DayNumber");
    if (data)
    {
      v62 = data;
      data = data[2].data;
      v63 = calendar;
      v64 = v143;
      if (!data)
      {
        data = v62[2].info;
      }
    }

    else
    {
      v63 = calendar;
      v64 = v143;
    }

    v103 = Integer & extractInteger(data, &at);
    info = DDResultGetSubresultWithType(v55, @"DayNumber");
    if (info)
    {
      v105 = info;
      info = info[2].data;
      v106 = v140;
      if (!info)
      {
        info = v105[2].info;
      }
    }

    else
    {
      v106 = v140;
    }

    if ((v103 & extractInteger(info, &v149[2] + 1)) != 1)
    {
      v25 = 0;
      goto LABEL_201;
    }

    *buf = 0;
    LODWORD(v149[2]) = 0;
    MEMORY[0x1BFB34330](v64);
    CFCalendarDecomposeAbsoluteTime(v63, v107, "yM", buf, &v149[2]);
    v108 = v151;
    if (v57 == -1)
    {
      v109 = v152;
      if (v151 != -1)
      {
        v109 = v151;
      }

      v110 = v109 - LODWORD(v149[2]);
      if (v110 > -3)
      {
        v57 = *buf - (v110 > 10);
      }

      else
      {
        v57 = (*buf + 1);
      }
    }

    v116 = LODWORD(at);
    if (SLODWORD(at) <= SHIDWORD(v149[2]))
    {
      if (v151 == -1)
      {
        v108 = v152;
        LODWORD(v151) = v152;
      }

      else
      {
        LODWORD(v152) = v151;
      }
    }

    else if (v151 == -1)
    {
      v108 = v152;
      LODWORD(v151) = v152 + 1;
      if (v152 == 12)
      {
        LODWORD(v151) = 1;
        v117 = v57;
        v108 = 12;
        v57 = (v57 + 1);
        goto LABEL_192;
      }
    }

    else
    {
      v108 = (v151 - 1);
      LODWORD(v152) = v151 - 1;
      if (v151 == 1)
      {
        v108 = 12;
        LODWORD(v152) = 12;
        v117 = (v57 - 1);
LABEL_192:
        if (v138)
        {
          *v138 = 1;
        }

        *buf = 0;
        if (!v141)
        {
          v25 = 1;
          goto LABEL_198;
        }

        v25 = CFCalendarComposeAbsoluteTime(v63, buf, "yMdHms", v117, v108, v116, 12, 0, 0);
        if (v25)
        {
          *v141 = CFDateCreate(0, *buf);
LABEL_198:
          if (v106)
          {
            v25 = CFCalendarComposeAbsoluteTime(v63, buf, "yMdHms", v57, v151, HIDWORD(v149[2]), 12, 0, 0);
            if (v25)
            {
              *v106 = CFDateCreate(0, *buf);
            }
          }
        }

LABEL_201:
        v38 = calendar;
        v39 = v143;
        goto LABEL_248;
      }
    }

    v117 = v57;
    goto LABEL_192;
  }

  v149[2] = 0;
  HIDWORD(v149[1]) = 0;
  v39 = v143;
  MEMORY[0x1BFB34330](v143);
  v38 = calendar;
  CFCalendarDecomposeAbsoluteTime(calendar, v41, "yMd", &v149[1] + 4, &v149[2], &v149[2] + 4);
  v42 = DDResultGetSubresultWithType(v31, @"Date");
  v26 = v34;
  v43 = v29;
  if (!v42 || (v44 = v42, (DDResultExtractDayMonthYear(v42, v29, calendar, &v149[2] + 1, &v149[2], &v149[1] + 1, v143, v26) & 1) != 0))
  {
    *(v149 + 4) = 0;
    LODWORD(v149[0]) = 0;
    v148 = 0;
    v147 = 0;
    v151 = 0;
    v152 = 0;
    v45 = DDResultGetSubresultWithType(SubresultWithType, @"BeginTime");
    v46 = DDResultGetSubresultWithType(v45, @"Time");
    v47 = DDResultGetSubresultWithType(SubresultWithType, @"EndTime");
    v48 = DDResultGetSubresultWithType(v47, @"Time");
    if (v48 | v46)
    {
      v49 = v48;
      v50 = DDResultGetSubresultWithType(SubresultWithType, @"TimeZone");
      v134 = a4;
      v51 = v31;
      if (v50)
      {
        v137 = DDCreateTimeZoneWithResult(v50);
      }

      else
      {
        v137 = 0;
      }

      v80 = DDResultGetSubresultWithType(v49, @"Meridian");
      v81 = DDResultGetSubresultWithType(v46, @"Meridian");
      v82 = DDResultGetSubresultWithType(v46, @"Hours");
      v83 = -1;
      v133 = v80;
      if (v80 || !v46)
      {
        v31 = v51;
      }

      else
      {
        v31 = v51;
        if (v82)
        {
          v84 = DDResultGetSubresultWithType(v51, @"Minutes");
          *buf = 0;
          if (v84)
          {
            v85 = v84;
            v86 = v84[10];
            if (!v86)
            {
              v86 = v85[9];
            }

            if ((extractInteger(v86, buf) & 1) == 0)
            {
              if (v137)
              {
                CFRelease(v137);
              }

              v25 = 0;
              goto LABEL_248;
            }
          }

          v87 = DDResultGetSubresultWithType(v49, @"Hours");
          v83 = hourValueForHourAndMeridianResult(v82, v87, v43, v81, 0xFFFFFFFF, -1, -1, 0, *buf == 0);
        }
      }

      if (v49)
      {
        v94 = extractHourMinuteSecondWithRefCopyTimeZone(v49, v82, v43, &v148, &v147 + 1, &v147, &v151, 0xFFFFFFFF, v83, -1, v81);
        if (v46)
        {
          v95 = DDResultGetSubresultWithType(v49, @"Hours");
          if (v94)
          {
            if ((v147 + HIDWORD(v147) < 0) ^ __OFADD__(v147, HIDWORD(v147)) | (v147 + HIDWORD(v147) == 0))
            {
              v96 = v148;
            }

            else
            {
              v96 = v148 + 1;
            }

            v97 = extractHourMinuteSecondWithRefCopyTimeZone(v46, v95, v43, &v149[1], v149 + 1, v149, &v152, v96, -1, -1, v133);
            v94 = 1;
            v71 = v141;
            goto LABEL_103;
          }

LABEL_102:
          v71 = v141;
          v97 = extractHourMinuteSecondWithRefCopyTimeZone(v46, v95, v43, &v149[1], v149 + 1, v149, &v152, 0xFFFFFFFF, -1, -1, v81);
          v94 = 0;
LABEL_103:
          v98 = v97 != 0;
          goto LABEL_126;
        }
      }

      else
      {
        if (v46)
        {
          v95 = 0;
          goto LABEL_102;
        }

        v94 = 0;
      }

      MEMORY[0x1BFB34330](v143);
      CFCalendarDecomposeAbsoluteTime(calendar, v111, "Hm", &v149[1], v149 + 4);
      v98 = 0;
      LODWORD(v149[0]) = 0;
      v71 = v141;
LABEL_126:
      if (v137)
      {
        if (v152)
        {
          CFRelease(v152);
        }

        if (v151)
        {
          CFRelease(v151);
        }

        CFRetain(v137);
        v151 = v137;
        v152 = v137;
      }

      else
      {
        if (v152 || !v151)
        {
          a4 = v134;
          if (v152 && !v151)
          {
            v151 = CFRetain(v152);
          }

          goto LABEL_136;
        }

        v152 = CFRetain(v151);
      }

      a4 = v134;
LABEL_136:
      if (v94 != 0 || v98)
      {
        if (v98)
        {
          if (!v94)
          {
            v148 = (LODWORD(v149[1]) + 1) % 24;
            v147 = v149[0];
          }
        }

        else
        {
          LODWORD(v149[1]) = (v148 - 1) % 24;
          v149[0] = v147;
        }

LABEL_149:
        if (v152)
        {
          CFCalendarSetTimeZone(calendar, v152);
        }

        *buf = 0;
        v25 = CFCalendarComposeAbsoluteTime(calendar, buf, "yMdHms", HIDWORD(v149[1]), LODWORD(v149[2]), HIDWORD(v149[2]), LODWORD(v149[1]), HIDWORD(v149[0]), LODWORD(v149[0]));
        if (v25)
        {
          if (v71)
          {
            *v71 = CFDateCreate(0, *buf);
          }

          if (a4 && v152)
          {
            *a4 = CFRetain(v152);
          }

          if (!v140)
          {
            goto LABEL_164;
          }

          if (v151)
          {
            CFCalendarSetTimeZone(calendar, v151);
          }

          at = 0.0;
          v25 = CFCalendarComposeAbsoluteTime(calendar, &at, "yMdHms", HIDWORD(v149[1]), LODWORD(v149[2]), HIDWORD(v149[2]), v148, HIDWORD(v147), v147);
          if (v25)
          {
            v113 = at;
            if (*buf > at)
            {
              CFCalendarAddComponents(calendar, &at, 0, "d", at, *buf, 1);
              v113 = at;
            }

            *v140 = CFDateCreate(0, v113);
LABEL_164:
            if (v139 && v151)
            {
              *v139 = CFRetain(v151);
            }

            if (v138)
            {
              *v138 = 0;
            }
          }
        }

LABEL_169:
        if (v152)
        {
          CFRelease(v152);
        }

        v114 = v151;
        v39 = v143;
        if (v151)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v112 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
      {
        if (v49)
        {
          v132 = *(v49 + 72);
        }

        else
        {
          v132 = 0;
        }

        *buf = 138412290;
        *&buf[4] = v132;
        _os_log_error_impl(&dword_1BCFDD000, v112, OS_LOG_TYPE_ERROR, "Could not extract end time from %@", buf, 0xCu);
      }

      if (v152)
      {
        CFRelease(v152);
        v152 = 0;
      }

      if (v151)
      {
        CFRelease(v151);
        v25 = 0;
        v151 = 0;
        goto LABEL_169;
      }

LABEL_147:
      v25 = 0;
      goto LABEL_169;
    }

    v65 = DDResultGetSubresultWithType(SubresultWithType, @"BeginHour");
    v66 = DDResultGetSubresultWithType(SubresultWithType, @"EndHour");
    v25 = 0;
    if (!v65)
    {
      goto LABEL_169;
    }

    v67 = v66;
    if (!v66)
    {
      goto LABEL_169;
    }

    v68 = DDResultGetSubresultWithType(SubresultWithType, @"Meridian");
    if (!v68)
    {
      v68 = DDResultGetSubresultWithType(v31, @"ApproxTime");
    }

    LODWORD(v149[1]) = hourValueForHourAndMeridianResult(v65, v67, v29, 0, 0xFFFFFFFF, -1, -1, 0, 1);
    v69 = hourValueForHourAndMeridianResult(v67, v65, v29, v68, 0xFFFFFFFF, v149[1], -1, 0, 1);
    v148 = v69;
    v70 = LODWORD(v149[1]) | v69;
    if (v69 >= SLODWORD(v149[1]))
    {
      v71 = v141;
      if (v69 - LODWORD(v149[1]) < 13)
      {
        goto LABEL_122;
      }

      v72 = LODWORD(v149[1]) + 12;
    }

    else
    {
      v71 = v141;
      if (SLODWORD(v149[1]) < 13)
      {
        v148 = v69 + 12;
LABEL_122:
        if ((v70 & 0x80000000) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_147;
      }

      v72 = LODWORD(v149[1]) - 12;
    }

    LODWORD(v149[1]) = v72;
    goto LABEL_122;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v73 = DDLogHandle_error_log_handle;
  if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
  {
    v131 = v44[9];
    *buf = 138412290;
    *&buf[4] = v131;
    _os_log_error_impl(&dword_1BCFDD000, v73, OS_LOG_TYPE_ERROR, "Could not extract date from %@", buf, 0xCu);
  }

  CFRelease(v143);
  CFRelease(v26);
  CFRelease(calendar);
LABEL_12:
  v25 = 0;
LABEL_255:
  v129 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t _DDResultCopyImplicitDateFromReferenceDateWithLocale(uint64_t a1, int a2, const __CFLocale *a3, __CFCalendar *a4, const void *a5, const void *a6, const void *a7, const __CFTimeZone *a8, BOOL *a9, CFTypeRef *a10, void *a11, CFDateRef *a12, CFTypeRef *a13)
{
  if (a11)
  {
    *a11 = 0;
  }

  v36 = 0;
  if (a9)
  {
    v17 = a9;
  }

  else
  {
    v17 = &v36;
  }

  v34 = 0;
  v35 = 0;
  if (a12)
  {
    v18 = a12;
  }

  else
  {
    v18 = &v35;
  }

  if (a13)
  {
    v19 = a13;
  }

  else
  {
    v19 = &v34;
  }

  v20 = DDResultCopyExtractedDateFromReferenceDateWithLocale(a1, a3, a5, a6, v17, v18, a13);
  if (v20)
  {
    if (!a10 || !*v18)
    {
      goto LABEL_26;
    }

    *a10 = 0;
    if (a2)
    {
      if (*v19)
      {
        v21 = *v19;
      }

      else
      {
        v21 = a8;
      }

      CFCalendarSetTimeZone(a4, v21);
      at = MEMORY[0x1BFB34330](*v18);
      CFCalendarAddComponents(a4, &at, 0, "H", 1);
      v22 = *MEMORY[0x1E695E480];
      v23 = at;
    }

    else
    {
      if (!*v17)
      {
        v24 = CFRetain(a7);
LABEL_21:
        *a10 = v24;
        if (!v24)
        {
          goto LABEL_26;
        }

LABEL_22:
        v25 = CFDateCompare(v24, *v18, 0);
        v26 = 1;
        if (a2)
        {
          v26 = -1;
        }

        if (v25 == v26)
        {
          CFRelease(*a10);
          *a10 = 0;
        }

LABEL_26:
        if (v19 == a13)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      v32 = 0;
      v31 = 0;
      if (*v19)
      {
        v29 = *v19;
      }

      else
      {
        v29 = a8;
      }

      CFCalendarSetTimeZone(a4, v29);
      MEMORY[0x1BFB34330](a7);
      if (!CFCalendarDecomposeAbsoluteTime(a4, v30, "yMd", &v31, &v32, &v32 + 4))
      {
        v24 = *a10;
        if (!*a10)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      at = 0.0;
      CFCalendarComposeAbsoluteTime(a4, &at, "yMdHms", v31, v32, HIDWORD(v32), 12, 0, 0);
      v23 = at;
      v22 = 0;
    }

    v24 = CFDateCreate(v22, v23);
    goto LABEL_21;
  }

LABEL_27:
  if (*v19)
  {
    CFRelease(*v19);
    *v19 = 0;
  }

LABEL_29:
  v27 = v18 != a12 || v20 == 0;
  if (v27 && *v18)
  {
    CFRelease(*v18);
    *v18 = 0;
  }

  return v20;
}

BOOL resultIsPartial(const __CFString **a1)
{
  SubresultWithType = a1;
  if (a1 && _typesAreEqual(a1[8], @"DateTime"))
  {
    SubresultWithType = DDResultGetSubresultWithType(SubresultWithType, @"Date");
  }

  if (DDResultGetSubresultWithType(SubresultWithType, @"PartialDate") || DDResultGetSubresultWithType(SubresultWithType, @"RelativeDayOfWeek"))
  {
    return 1;
  }

  v3 = DDResultGetSubresultWithType(SubresultWithType, @"Date");
  return DDResultGetSubresultWithType(v3, @"RelativeDayOfWeek") != 0;
}

const __CFString *DDResultCopyCleanPhoneNumber(uint64_t a1)
{
  SubresultWithType = DDResultGetSubresultWithType(a1, @"Value");
  if (!SubresultWithType)
  {
    return 0;
  }

  v3 = SubresultWithType[9];
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    Length = CFStringGetLength(SubresultWithType[9]);
    MutableCopy = CFStringCreateMutableCopy(v4, Length, v3);
    v3 = DDResultCopyStrippedPhoneNumber(MutableCopy);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (CFStringGetLength(v3) >= 4 && (CFStringHasPrefix(v3, @"112") || CFStringHasPrefix(v3, @"911")))
    {
      v7 = 0;
      v8 = v3;
LABEL_9:
      CFRelease(v8);
      return v7;
    }

    v10 = DDResultGetSubresultWithType(a1, @"Extension");
    v11 = DDResultGetSubresultWithType(v10, @"Value");
    if (v11)
    {
      v12 = v11[9];
      if (v12)
      {
        v13 = CFStringGetLength(v11[9]);
        v8 = CFStringCreateMutableCopy(v4, v13, v12);
        CFStringTrimWhitespace(v8);
        v17.length = CFStringGetLength(v8);
        v17.location = 0;
        CFStringFindAndReplace(v8, @"p", @",", v17, 0x100uLL);
        if (CFStringGetLength(v8) < 1)
        {
          v7 = v3;
          goto LABEL_9;
        }

        CharacterAtIndex = CFStringGetCharacterAtIndex(v8, 0);
        if (CharacterAtIndex == 44 || CharacterAtIndex == 59)
        {
          v16 = CFStringCreateWithFormat(v4, 0, @"%@%@", v3, v8);
        }

        else
        {
          v16 = CFStringCreateWithFormat(v4, 0, @"%@;%@", v3, v8);
        }

        v7 = v16;
        CFRelease(v8);
        v8 = v3;
        if (v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return v3;
}

CFStringRef DDResultCopyStrippedPhoneNumber(__CFString *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!CFStringHasPrefix(a1, @"(0)"))
  {
    v18.length = CFStringGetLength(a1);
    v18.location = 0;
    CFStringFindAndReplace(a1, @"(0)", &stru_1F3B75AB8, v18, 0);
  }

  Length = CFStringGetLength(a1);
  v3 = Length;
  if (Length < 21)
  {
    v4 = v14;
    v17.location = 0;
    v17.length = Length;
    CFStringGetCharacters(a1, v17, v14);
    if (v3 <= 0)
    {
      v11 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v14, 0);
      goto LABEL_41;
    }
  }

  else
  {
    v4 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
    v16.location = 0;
    v16.length = v3;
    CFStringGetCharacters(a1, v16, v4);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v4[v5];
    if (v6)
    {
      v6 = 1;
      v10 = v8;
LABEL_32:
      v4[v7++] = v9;
      goto LABEL_33;
    }

    v10 = 0;
    if (v4[v5] > 0xFF07u)
    {
      v6 = 0;
      switch(v4[v5])
      {
        case 0xFF08u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 40;
          goto LABEL_31;
        case 0xFF09u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 41;
          goto LABEL_31;
        case 0xFF0Au:
        case 0xFF0Cu:
        case 0xFF0Du:
        case 0xFF0Eu:
        case 0xFF0Fu:
          goto LABEL_32;
        case 0xFF0Bu:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 43;
          goto LABEL_31;
        case 0xFF10u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 48;
          goto LABEL_31;
        case 0xFF11u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 49;
          goto LABEL_31;
        case 0xFF12u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 50;
          goto LABEL_31;
        case 0xFF13u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 51;
          goto LABEL_31;
        case 0xFF14u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 52;
          goto LABEL_31;
        case 0xFF15u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 53;
          goto LABEL_31;
        case 0xFF16u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 54;
          goto LABEL_31;
        case 0xFF17u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 55;
          goto LABEL_31;
        case 0xFF18u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 56;
          goto LABEL_31;
        case 0xFF19u:
          v10 = 0;
          v6 = 0;
          LOWORD(v9) = 57;
          goto LABEL_31;
        default:
          goto LABEL_37;
      }

      goto LABEL_32;
    }

    if (v4[v5] > 0x2011u)
    {
      v6 = 0;
      if ((v9 - 8210) < 3)
      {
        v10 = 0;
        v6 = 0;
        LOWORD(v9) = 45;
LABEL_31:
        v4[v5] = v9;
      }

      goto LABEL_32;
    }

    if (v9 != 32)
    {
      if (v9 == 38 || v9 == 63)
      {
        v10 = 0;
        v6 = 1;
      }

      else
      {
LABEL_37:
        v6 = 0;
      }

      goto LABEL_32;
    }

    v6 = 0;
    v10 = 1;
    if (!v8)
    {
      LOWORD(v9) = 32;
      goto LABEL_32;
    }

LABEL_33:
    ++v5;
    v8 = v10;
  }

  while (v3 != v5);
  v11 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v4, v7);
  if (v4 != v14)
  {
    free(v4);
  }

LABEL_41:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

CFCharacterSetRef __DDCreatePunycodedString_block_invoke()
{
  result = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @"/?#");
  DDCreatePunycodedString_componentSeparatorSet = result;
  return result;
}

const __CFString *DDCopyPunycodedWebURLString(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    result = DDCreatePunycodedString(result, 1, 1, 0);
    if (!result)
    {
      v2 = *MEMORY[0x1E695E480];

      return CFStringCreateCopy(v2, v1);
    }
  }

  return result;
}

uint64_t DDResultCopyValueLabelValue(uint64_t a1, CFTypeRef *a2, CFStringRef *a3, int a4)
{
  if (a2)
  {
    result = DDResultCopyCleanPhoneNumber(a1);
    if (!result)
    {
      return result;
    }

    v9 = result;
    if (!CFStringGetLength(result))
    {
      CFRelease(v9);
      return 0;
    }

    *a2 = v9;
  }

  if (a3)
  {
    SubresultWithType = DDResultGetSubresultWithType(a1, @"Label");
    if (SubresultWithType)
    {
      v11 = SubresultWithType[10];
      if (v11 || (v11 = SubresultWithType[9]) != 0)
      {
        if (CFStringGetLength(v11))
        {
          *a3 = CFStringCreateCopy(0, v11);
          return 1;
        }
      }
    }

    if (!a4)
    {
      *a3 = 0;
      return 1;
    }

    if (a2)
    {
      CFRelease(*a2);
      result = 0;
      *a2 = 0;
      return result;
    }

    return 0;
  }

  return 1;
}

BOOL DDResultIsValidPhoneNumberString(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (DDResultIsValidPhoneNumberString_onceToken != -1)
  {
    dispatch_once(&DDResultIsValidPhoneNumberString_onceToken, &__block_literal_global_21);
  }

  if (!DDResultIsValidPhoneNumberString_frameworkAvailable)
  {
    return 0;
  }

  if (getLocaleForExtraction_sOnce != -1)
  {
    dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
  }

  if (_sLocaleForExtraction)
  {
    CFLocaleGetValue(_sLocaleForExtraction, *MEMORY[0x1E695E6D0]);
  }

  v1 = CFPhoneNumberCreate();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFPhoneNumberCopyNumberForInternationalAssist();
  if (v3)
  {
    v4 = v3;
    v5 = CFStringGetLength(v3) < 6 || PNIsValidPhoneNumberForCountry();
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v2);
  return v5;
}

void __DDResultIsValidPhoneNumberString_block_invoke()
{
  if (MEMORY[0x1EEE865F8])
  {
    v0 = MEMORY[0x1EEE865F0] == 0;
  }

  else
  {
    v0 = 1;
  }

  v2 = !v0 && MEMORY[0x1EEE86608] != 0;
  DDResultIsValidPhoneNumberString_frameworkAvailable = v2;
}

BOOL DDResultIsValidPhoneNumber(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  DDResultCopyValueLabelValue(a1, &cf, 0, 0);
  if (!cf)
  {
    return 0;
  }

  IsValidPhoneNumberString = DDResultIsValidPhoneNumberString(cf);
  CFRelease(cf);
  return IsValidPhoneNumberString;
}

uint64_t DDResultCopyFullAddressComponents(uint64_t a1, const __CFString **a2, const __CFString **a3, const __CFString **a4, const __CFString **a5, const __CFString **a6)
{
  if (a2)
  {
    SubresultWithType = DDResultGetSubresultWithType(a1, @"Street");
    if (!SubresultWithType)
    {
      *a2 = 0;
      goto LABEL_8;
    }

    v13 = SubresultWithType;
    v14 = SubresultWithType[10];
    if (v14)
    {
      *a2 = v14;
    }

    else
    {
      v14 = v13[9];
      *a2 = v14;
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    CFRetain(v14);
  }

LABEL_8:
  if (!a3)
  {
    goto LABEL_15;
  }

  v15 = DDResultGetSubresultWithType(a1, @"City");
  if (!v15)
  {
    *a3 = 0;
    goto LABEL_15;
  }

  v16 = v15;
  v17 = v15[10];
  if (v17)
  {
    *a3 = v17;
  }

  else
  {
    v17 = v16[9];
    *a3 = v17;
    if (!v17)
    {
      goto LABEL_15;
    }
  }

  CFRetain(v17);
LABEL_15:
  if (!a5)
  {
    goto LABEL_22;
  }

  v18 = DDResultGetSubresultWithType(a1, @"ZipCode");
  if (!v18)
  {
    *a5 = 0;
    goto LABEL_22;
  }

  v19 = v18;
  v20 = v18[10];
  if (v20)
  {
    *a5 = v20;
  }

  else
  {
    v20 = v19[9];
    *a5 = v20;
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  CFRetain(v20);
LABEL_22:
  if (!a4)
  {
    goto LABEL_29;
  }

  v21 = DDResultGetSubresultWithType(a1, @"State");
  if (!v21)
  {
    *a4 = 0;
    goto LABEL_29;
  }

  v22 = v21;
  v23 = v21[10];
  if (v23)
  {
    *a4 = v23;
  }

  else
  {
    v23 = v22[9];
    *a4 = v23;
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  CFRetain(v23);
LABEL_29:
  if (a6)
  {
    v24 = DDResultGetSubresultWithType(a1, @"Country");
    if (v24)
    {
      v25 = v24;
      v26 = v24[10];
      if (v26)
      {
        *a6 = v26;
LABEL_35:
        CFRetain(v26);
        return 1;
      }

      v26 = v25[9];
      *a6 = v26;
      if (v26)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *a6 = 0;
    }
  }

  return 1;
}

BOOL DDResultIsPartialDateRangeOrTimeRange(uint64_t a1, BOOL *a2, const __CFString ***a3, const __CFString ***a4, const void *a5, const __CFTimeZone *a6)
{
  v12 = *(a1 + 64);
  if (!_typesAreEqual(v12, @"DateDuration"))
  {
    if (!_typesAreEqual(v12, @"TimeDuration"))
    {
      v30 = 0;
      v31 = 1;
      if (!a2)
      {
        v33 = 1;
        SubresultWithType = 0;
        goto LABEL_64;
      }

      IsPastDate = 0;
      SubresultWithType = 0;
      v33 = 1;
LABEL_37:
      *a2 = IsPastDate;
      goto LABEL_64;
    }

    SubresultWithType = DDResultGetSubresultWithType(a1, @"BeginTime");
    v14 = DDResultGetSubresultWithType(a1, @"EndTime");
    goto LABEL_26;
  }

  SubresultWithType = DDResultGetSubresultWithType(a1, @"BeginDate");
  v14 = DDResultGetSubresultWithType(a1, @"EndDate");
  if (SubresultWithType | v14)
  {
LABEL_26:
    v30 = v14;
    goto LABEL_27;
  }

  v15 = DDResultGetSubresultWithType(a1, @"Date");
  if (v15)
  {
    v16 = v15;
    v17 = DDResultGetSubresultWithType(a1, @"TimeDuration");
    v51 = 0;
    v52 = 0;
    v18 = DDResultGetSubresultWithType(a1, @"ApproxTime");
    DDResultIsPartialDateRangeOrTimeRange(v17, 0, &v52, &v51, 0, 0);
    if (v52)
    {
      v19 = v16[2];
      v20 = v16[3];
      v22 = v52[2];
      v21 = v52[3];
      v23 = v19 >> 16;
      v24 = v22 << 32;
      if (SHIDWORD(v19) >= SHIDWORD(v22))
      {
        v25 = v52[2];
      }

      else
      {
        v25 = v16[2];
      }

      if (v23 <= v22 >> 16)
      {
        v22 = v25;
      }

      if (v23 >= v24 >> 48)
      {
        v26 = v22;
      }

      else
      {
        v26 = v16[2];
      }

      v27 = v20 >> 16;
      if (SHIDWORD(v20) >= SHIDWORD(v21))
      {
        v28 = v16[3];
      }

      else
      {
        v28 = v52[3];
      }

      if (v27 <= v21 >> 16)
      {
        v20 = v28;
      }

      if (v27 >= v21 >> 16)
      {
        v29 = v20;
      }

      else
      {
        v29 = v52[3];
      }

      SubresultWithType = DDResultCreate(@"DateTime", v26, v29);
      DDResultAddSubresult(SubresultWithType, v16);
      DDResultAddSubresultSorted(SubresultWithType, v52);
      if (v18)
      {
        DDResultAddSubresultSorted(SubresultWithType, v18);
      }

      CFAutorelease(SubresultWithType);
    }

    else
    {
      SubresultWithType = 0;
    }

    if (v51)
    {
      v34 = v16[2];
      v35 = v16[3];
      v37 = v51[2];
      v36 = v51[3];
      v38 = v34 >> 16;
      v39 = v37 << 32;
      if (SHIDWORD(v34) >= SHIDWORD(v37))
      {
        v40 = v51[2];
      }

      else
      {
        v40 = v16[2];
      }

      if (v38 <= v37 >> 16)
      {
        v37 = v40;
      }

      if (v38 >= v39 >> 48)
      {
        v41 = v37;
      }

      else
      {
        v41 = v16[2];
      }

      v42 = v35 >> 16;
      if (SHIDWORD(v35) >= SHIDWORD(v36))
      {
        v43 = v16[3];
      }

      else
      {
        v43 = v51[3];
      }

      if (v42 <= v36 >> 16)
      {
        v35 = v43;
      }

      if (v42 >= v36 >> 16)
      {
        v44 = v35;
      }

      else
      {
        v44 = v51[3];
      }

      v30 = DDResultCreate(@"DateTime", v41, v44);
      DDResultAddSubresult(v30, v16);
      DDResultAddSubresultSorted(v30, v51);
      if (v18)
      {
        DDResultAddSubresultSorted(v30, v18);
      }

      CFAutorelease(v30);
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    if (!a2)
    {
      goto LABEL_63;
    }

    goto LABEL_28;
  }

  v30 = 0;
  SubresultWithType = 0;
LABEL_27:
  v31 = 1;
  if (a2)
  {
LABEL_28:
    if (!SubresultWithType || v30)
    {
      v33 = 0;
      if (SubresultWithType || !v30)
      {
        IsPastDate = 0;
      }

      else
      {
        SubresultWithType = 0;
        v33 = 0;
        IsPastDate = !DDResultIsPastDate(v30, a5, a6);
      }
    }

    else
    {
      IsPastDate = DDResultIsPastDate(SubresultWithType, a5, a6);
      v33 = 0;
    }

    goto LABEL_37;
  }

LABEL_63:
  v33 = 0;
LABEL_64:
  if (a3)
  {
    v45 = v31 ^ 1;
    if (!SubresultWithType)
    {
      v45 = 1;
    }

    v46 = SubresultWithType;
    if ((v45 & 1) == 0)
    {
      v46 = DDResultGetSubresultWithType(SubresultWithType, @"DateTime");
      if (!v46)
      {
        v46 = DDResultGetSubresultWithType(SubresultWithType, @"Date");
        if (!v46)
        {
          v46 = DDResultGetSubresultWithType(SubresultWithType, @"Time");
        }
      }
    }

    *a3 = v46;
  }

  if (a4)
  {
    v47 = v31 ^ 1;
    if (!v30)
    {
      v47 = 1;
    }

    v48 = v30;
    if ((v47 & 1) == 0)
    {
      v48 = DDResultGetSubresultWithType(v30, @"DateTime");
      if (!v48)
      {
        v48 = DDResultGetSubresultWithType(v30, @"Date");
        if (!v48)
        {
          v48 = DDResultGetSubresultWithType(v30, @"Time");
        }
      }
    }

    *a4 = v48;
  }

  if (v33)
  {
    return 0;
  }

  if (SubresultWithType && !v30)
  {
    return 1;
  }

  if (SubresultWithType)
  {
    v50 = 1;
  }

  else
  {
    v50 = v30 == 0;
  }

  return !v50;
}

BOOL DDResultIsPastDate(uint64_t a1, const void *a2, const __CFTimeZone *a3)
{
  if (getLocaleForExtraction_sOnce != -1)
  {
    dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
  }

  v6 = _sLocaleForExtraction;

  return DDResultIsPastDateWithLocale(a1, a2, v6, a3);
}

BOOL DDResultIsPastDateWithLocale(uint64_t a1, const void *a2, const __CFLocale *a3, const __CFTimeZone *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 64);
  v9 = _sDateForExtraction;
  if (_typesAreEqual(v8, @"Timestamp"))
  {
    IsPast = 1;
    goto LABEL_27;
  }

  if (_typesAreEqual(v8, @"DateTime") || _typesAreEqual(v8, @"Date") || _typesAreEqual(v8, @"TimeOffset") || _typesAreEqual(v8, @"BeginDate") || _typesAreEqual(v8, @"EndDate"))
  {
    cf = 0;
    v18 = 0;
    v11 = _copyDefaultCalendar();
    if (v11)
    {
      v12 = v11;
      if (DDResultCopyExtractedDateFromReferenceDateRec(a1, a3, v11, a2, a4, &v18, &cf, 0, 0))
      {
        if (cf)
        {
          IsPast = dateIsPast(cf, v9, v18, a3, a4);
          CFRelease(cf);
LABEL_25:
          v15 = v12;
LABEL_26:
          CFRelease(v15);
          goto LABEL_27;
        }

        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v14 = DDLogHandle_error_log_handle;
        if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
LABEL_24:
          IsPast = 0;
          goto LABEL_25;
        }

        *buf = 138412290;
        *&buf[4] = a1;
      }

      else
      {
        if (DDLogHandle_onceToken != -1)
        {
          dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
        }

        v14 = DDLogHandle_error_log_handle;
        if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 138412290;
        *&buf[4] = a1;
      }

      _os_log_error_impl(&dword_1BCFDD000, v14, OS_LOG_TYPE_ERROR, "Could not extract date from %@", buf, 0xCu);
      goto LABEL_24;
    }

    if (DDLogHandle_onceToken != -1)
    {
      dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
    }

    v13 = DDLogHandle_error_log_handle;
    if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "DDResultIsPastDateWithLocale";
      _os_log_error_impl(&dword_1BCFDD000, v13, OS_LOG_TYPE_ERROR, "Couldn't fetch the gregorian calendar in %s...", buf, 0xCu);
    }

LABEL_16:
    IsPast = 0;
    goto LABEL_27;
  }

  if (!_typesAreEqual(v8, @"DateDuration") && !_typesAreEqual(v8, @"DayInterval"))
  {
    goto LABEL_16;
  }

  cf = 0;
  *buf = 0;
  v18 = 0;
  if (DDResultCopyExtractedStartDateEndDateWithLocale(a1, a3, 0, 0, buf, &cf, &v18, a2, a4))
  {
    IsPast = dateIsPast(*buf, v9, v18, a3, cf);
  }

  else
  {
    IsPast = 0;
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  v15 = cf;
  if (cf)
  {
    goto LABEL_26;
  }

LABEL_27:
  v16 = *MEMORY[0x1E69E9840];
  return IsPast;
}

BOOL dateIsPast(uint64_t a1, uint64_t a2, int a3, const __CFLocale *a4, const __CFTimeZone *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1BFB34330]();
  if (a2)
  {
    MEMORY[0x1BFB34330](a2);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v11 = Current;
  v12 = Current - v9;
  if (!a3)
  {
    if (v12 >= 60.0)
    {
      goto LABEL_21;
    }

LABEL_11:
    result = 0;
    goto LABEL_22;
  }

  if (v12 <= -90000.0)
  {
    goto LABEL_11;
  }

  if (v12 >= 90000.0)
  {
LABEL_21:
    result = 1;
    goto LABEL_22;
  }

  v13 = _copyDefaultCalendar();
  if (v13)
  {
    v14 = v13;
    CFCalendarSetLocale(v13, a4);
    CFCalendarSetTimeZone(v14, a5);
    *buf = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    CFCalendarDecomposeAbsoluteTime(v14, v9, "yMd", buf, &v20 + 4, &v20);
    CFCalendarDecomposeAbsoluteTime(v14, v11, "yMd", &v19 + 4, &v19, &v18);
    if (*buf <= SHIDWORD(v19) && (*buf != HIDWORD(v19) || SHIDWORD(v20) <= v19 && (HIDWORD(v20) != v19 || v20 <= v18)))
    {
      CFRelease(v14);
      goto LABEL_21;
    }

    CFRelease(v14);
    goto LABEL_11;
  }

  if (DDLogHandle_onceToken != -1)
  {
    dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
  }

  v16 = DDLogHandle_error_log_handle;
  result = os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315138;
    v22 = "dateIsPast";
    _os_log_error_impl(&dword_1BCFDD000, v16, OS_LOG_TYPE_ERROR, "Couldn't fetch the gregorian calendar in %s...", buf, 0xCu);
    goto LABEL_11;
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DDResultTimeIsApprox(const __CFString **a1)
{
  while (1)
  {
    while (1)
    {
      v1 = a1;
      v2 = a1[8];
      if (_typesAreEqual(v2, @"DateTime"))
      {
        SubresultWithType = DDResultGetSubresultWithType(v1, @"Time");
        if (SubresultWithType)
        {
          goto LABEL_18;
        }

        return 1;
      }

      if (_typesAreEqual(v2, @"Time"))
      {
        goto LABEL_19;
      }

      if (!_typesAreEqual(v2, @"DateDuration"))
      {
        break;
      }

      v3 = @"BeginDate";
      v4 = @"EndDate";
LABEL_7:
      v5 = DDResultGetSubresultWithType(v1, v3);
      v6 = DDResultGetSubresultWithType(v1, v4);
      if (v5)
      {
        a1 = v5;
        if (!v6)
        {
          continue;
        }
      }

      if (!v5)
      {
        a1 = v6;
        if (v6)
        {
          continue;
        }
      }

      result = 0;
      if (v5)
      {
        if (v6)
        {
          result = DDResultTimeIsApprox(v5);
          if (result)
          {
            v8 = DDResultTimeIsApprox(v6) == 0;
            return !v8;
          }
        }
      }

      return result;
    }

    if (_typesAreEqual(v2, @"TimeDuration"))
    {
      v3 = @"BeginTime";
      v4 = @"EndTime";
      goto LABEL_7;
    }

    if (!_typesAreEqual(v2, @"BeginDate") && !_typesAreEqual(v2, @"EndDate"))
    {
      break;
    }

    a1 = DDResultGetSubresultWithType(v1, @"DateTime");
    if (!a1)
    {
      return DDResultGetSubresultWithType(v1, @"ApproxTime") != 0;
    }
  }

  if (!_typesAreEqual(v2, @"BeginTime") && !_typesAreEqual(v2, @"EndTime"))
  {
    return 0;
  }

  SubresultWithType = DDResultGetSubresultWithType(v1, @"Time");
  if (!SubresultWithType)
  {
    return 0;
  }

LABEL_18:
  v1 = SubresultWithType;
LABEL_19:
  v8 = DDResultGetSubresultWithType(v1, @"ApproxTime") == 0;
  return !v8;
}

void DDResultSetCurrentDateForExtraction(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __DDResultSetCurrentDateForExtraction_block_invoke;
  block[3] = &__block_descriptor_tmp_25;
  block[4] = a1;
  if (DDResultSetCurrentDateForExtraction_sOnce != -1)
  {
    dispatch_once(&DDResultSetCurrentDateForExtraction_sOnce, block);
  }
}

CFTypeRef __DDResultSetCurrentDateForExtraction_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = CFRetain(result);
    _sDateForExtraction = result;
  }

  return result;
}

CFLocaleRef DDResultSetLocaleForExtraction(const __CFLocale *cf)
{
  result = _sLocaleForExtraction;
  if (_sLocaleForExtraction != cf)
  {
    if (_sLocaleForExtraction)
    {
      CFRelease(_sLocaleForExtraction);
    }

    _sLocaleForExtraction = cf;
    if (cf)
    {
      System = cf;
    }

    else
    {
      result = CFLocaleCopyCurrent();
      _sLocaleForExtraction = result;
      if (result)
      {
        return result;
      }

      System = CFLocaleGetSystem();
      _sLocaleForExtraction = System;
    }

    return CFRetain(System);
  }

  return result;
}

uint64_t DDFastIntegerExtraction(const __CFString *a1, _DWORD *a2)
{
  v6 = 0;
  if (DDExtractSimpleInteger(a1, &v6))
  {
    v4 = v6;
    if (v6 == v6)
    {
      goto LABEL_5;
    }
  }

  result = DDExtractKanjiNumber(a1, &v6);
  if (!result)
  {
    return result;
  }

  v4 = v6;
  if (v6 != v6)
  {
    return 0;
  }

LABEL_5:
  if (a2)
  {
    *a2 = v4;
  }

  return 1;
}

uint64_t DDResultCurrencyExtraction(uint64_t result, double *a2, unint64_t a3)
{
  if (result)
  {
    v5 = result;
    result = _typesAreEqual(*(result + 64), @"Money");
    if (result)
    {
      return _DDResultValueUnitExtraction(v5, a2, a3, 0);
    }
  }

  return result;
}

uint64_t _DDResultValueUnitExtraction(uint64_t result, double *a2, unint64_t a3, CFTypeRef *a4)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = _typesAreEqual(*(result + 64), @"Money");
  if (!v8)
  {
    result = _typesAreEqual(*(v7 + 64), @"PhysicalAmount");
    if (!result)
    {
      return result;
    }
  }

  SubresultWithType = DDResultGetSubresultWithType(v7, @"IntegralValue");
  if (SubresultWithType)
  {
    v10 = SubresultWithType[10];
    if (!v10)
    {
      v10 = SubresultWithType[9];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = DDResultGetSubresultWithType(v7, @"Denominator");
  if (!v11)
  {
    v15 = 0;
    v12 = 0;
LABEL_15:
    v14 = 0;
    goto LABEL_18;
  }

  v12 = v11[10];
  if (!v12)
  {
    v12 = v11[9];
    if (!v12)
    {
      v15 = 0;
      goto LABEL_15;
    }
  }

  v13 = DDResultGetSubresultWithType(v7, @"Numerator");
  if (v13)
  {
    v14 = v13[10];
    if (!v14)
    {
      v14 = v13[9];
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = 1;
LABEL_18:
  if (v8)
  {
    v16 = @"Currency";
  }

  else
  {
    v16 = @"Unit";
  }

  result = DDResultGetSubresultWithType(v7, v16);
  if (result)
  {
    v17 = *(result + 80);
    if (!v17)
    {
      v17 = *(result + 72);
      if (!v17)
      {
        return 0;
      }
    }

    v18 = v15 ^ 1;
    if (v10)
    {
      v18 = 0;
    }

    if (v18)
    {
      return 0;
    }

    if (!a2)
    {
      goto LABEL_55;
    }

    v39 = 0;
    v40 = 0;
    v38 = 1;
    if (v15)
    {
      v37 = 1;
      if ((DDExtractSimpleInteger(v12, &v37) & 1) != 0 || DDExtractKanjiNumber(v12, &v37))
      {
        v19 = v37;
        if ((DDExtractSimpleInteger(v14, &v39) & 1) != 0 || DDExtractKanjiNumber(v14, &v39)) && (!v10 || (DDExtractSimpleInteger(v10, &v40) & 1) != 0 || (DDExtractKanjiNumber(v10, &v40)))
        {
          v20 = v19;
          v21 = 1.0;
LABEL_52:
          v27 = v39 / v20 + v40;
          v28 = DDResultGetSubresultWithType(v7, @"Negative");
          v29 = -(v27 * v21);
          if (!v28)
          {
            v29 = v27 * v21;
          }

          *a2 = v29;
LABEL_55:
          if (!(a3 | a4))
          {
            return 1;
          }

          if (!v8 || CFStringFind(v17, @"-", 0).location == -1)
          {
            if (a4)
            {
              result = CFStringCreateArrayBySeparatingStrings(0, v17, @"-");
              if (!result)
              {
                return result;
              }

              *a4 = CFAutorelease(result);
            }

            if (a3)
            {
              v33 = CFRetain(v17);
              *a3 = CFAutorelease(v33);
            }

            return 1;
          }

          result = CFStringCreateArrayBySeparatingStrings(0, v17, @"-");
          if (!result)
          {
            return result;
          }

          v30 = result;
          v31 = *(v7 + 96);
          if ((v31 & 0x20000) != 0)
          {
            Value = @"JPY";
          }

          else if ((v31 & 0x10000) != 0)
          {
            Value = @"CNY";
          }

          else
          {
            if (getLocaleForExtraction_sOnce != -1)
            {
              dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
            }

            if (!_sLocaleForExtraction)
            {
              if (!a3)
              {
                goto LABEL_81;
              }

              CFArrayGetCount(v30);
LABEL_79:
              ValueAtIndex = CFArrayGetValueAtIndex(v30, 0);
              v36 = CFRetain(ValueAtIndex);
              Value = CFAutorelease(v36);
LABEL_80:
              *a3 = Value;
LABEL_81:
              if (a4)
              {
                *a4 = CFAutorelease(v30);
              }

              else
              {
                CFRelease(v30);
              }

              return 1;
            }

            Value = CFLocaleGetValue(_sLocaleForExtraction, *MEMORY[0x1E695E6D8]);
          }

          if (!a3)
          {
            goto LABEL_81;
          }

          Count = CFArrayGetCount(v30);
          if (Value)
          {
            v41.length = Count;
            v41.location = 0;
            if (CFArrayContainsValue(v30, v41, Value))
            {
              goto LABEL_80;
            }
          }

          goto LABEL_79;
        }
      }
    }

    else
    {
      if ((DDExtractSimpleInteger(v10, &v40) & 1) == 0 && !DDExtractKanjiNumber(v10, &v40))
      {
        return 0;
      }

      v22 = DDResultGetSubresultWithType(v7, @"FractionalValue");
      v21 = 1.0;
      v20 = 1.0;
      if (v22)
      {
        v23 = v22[10];
        if (v23 || (v23 = v22[9]) != 0)
        {
          if ((DDExtractSimpleInteger(v23, &v39) & 1) == 0 && !DDExtractKanjiNumber(v23, &v39))
          {
            return 0;
          }

          Length = CFStringGetLength(v23);
          v20 = __exp10(Length);
        }
      }

      v25 = DDResultGetSubresultWithType(v7, @"Multiplier");
      if (!v25)
      {
        goto LABEL_52;
      }

      v26 = v25[10];
      if (!v26)
      {
        v26 = v25[9];
        if (!v26)
        {
          goto LABEL_52;
        }
      }

      if ((DDExtractSimpleInteger(v26, &v38) & 1) != 0 || DDExtractKanjiNumber(v26, &v38))
      {
        v21 = v38;
        goto LABEL_52;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DDResultPhysicalUnitExtraction(uint64_t result, double *a2, unint64_t a3)
{
  if (result)
  {
    v5 = result;
    result = _typesAreEqual(*(result + 64), @"PhysicalAmount");
    if (result)
    {
      return _DDResultValueUnitExtraction(v5, a2, a3, 0);
    }
  }

  return result;
}

uint64_t DDResultPhysicalUnitsExtraction(uint64_t result, double *a2, CFTypeRef *a3)
{
  if (result)
  {
    v5 = result;
    result = _typesAreEqual(*(result + 64), @"PhysicalAmount");
    if (result)
    {
      return _DDResultValueUnitExtraction(v5, a2, 0, a3);
    }
  }

  return result;
}

CFStringRef DDResultCopyAuthCode(CFStringRef result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (_typesAreEqual(result[2].isa, @"AuthCode"))
    {
      info = v1[2].info;
      Length = CFStringGetLength(info);
      v4 = Length;
      if (Length < 3)
      {
        if (Length < 1)
        {
          goto LABEL_17;
        }

        v5 = 1;
      }

      else
      {
        v5 = 1;
        if (CFStringGetCharacterAtIndex(info, 1) != 45)
        {
          v5 = CFStringGetCharacterAtIndex(info, 2) == 45;
        }
      }

      v6 = 0;
      v7 = 0;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(info, v6);
        if ((CharacterAtIndex - 48) < 0xA || !v5 && (CharacterAtIndex & 0xFFFFFFDF) - 65 <= 0x19)
        {
          if (v7 > 9)
          {
            goto LABEL_17;
          }

          chars[v7++] = CharacterAtIndex;
        }

        ++v6;
      }

      while (v4 != v6);
      if (v7 >= 1)
      {
        result = CFStringCreateWithCharacters(0, chars, v7);
        goto LABEL_18;
      }
    }

LABEL_17:
    result = 0;
  }

LABEL_18:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DDResultSelectBest(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!a1)
  {
    return v2;
  }

  v3 = a2;
  if (!a2)
  {
    return v2;
  }

  v5 = *(a2 + 64);
  if (!_typesAreEqual(*(a1 + 64), @"DateTime") || !_typesAreEqual(v5, @"DateTime") || DDResultGetSubresultWithTypePath(a1, @"Date.AbsoluteDate.DayNumber") || DDResultGetSubresultWithTypePath(a1, @"Date.AbsoluteDate.AmbiguousDate.DayNumber") || !DDResultGetSubresultWithTypePath(v3, @"Date.AbsoluteDate.DayNumber") && !DDResultGetSubresultWithTypePath(v3, @"Date.AbsoluteDate.AmbiguousDate.DayNumber"))
  {
    return v2;
  }

  return v3;
}

BOOL DDResultDateExtractionDependsOnContextTense(const __CFString **SubresultWithType)
{
  while (1)
  {
    v1 = SubresultWithType;
    v2 = SubresultWithType[8];
    if (_typesAreEqual(v2, @"RelativeDayOfWeek"))
    {
      break;
    }

    if (_typesAreEqual(v2, @"Date"))
    {
      v3 = v1;
      v4 = @"RelativeDayOfWeek";
      goto LABEL_9;
    }

    if (_typesAreEqual(v2, @"DateTime"))
    {
      goto LABEL_8;
    }

    if (_typesAreEqual(v2, @"BeginDate") || _typesAreEqual(v2, @"EndDate"))
    {
      SubresultWithType = DDResultGetSubresultWithType(v1, @"DateTime");
      if (!SubresultWithType)
      {
LABEL_8:
        v3 = v1;
        v4 = @"Date";
        goto LABEL_9;
      }
    }

    else
    {
      if (!_typesAreEqual(v2, @"DateDuration"))
      {
        return 0;
      }

      SubresultWithType = DDResultGetSubresultWithType(v1, @"Date");
      if (!SubresultWithType)
      {
        if (DDResultGetSubresultWithType(v1, @"BeginDate") && (DDResultDateExtractionDependsOnContextTense() & 1) != 0)
        {
          return 1;
        }

        v3 = v1;
        v4 = @"EndDate";
LABEL_9:
        SubresultWithType = DDResultGetSubresultWithType(v3, v4);
        if (!SubresultWithType)
        {
          return 0;
        }
      }
    }
  }

  return DDResultGetSubresultWithType(v1, @"DayOfWeek") != 0;
}

BOOL DDResultNeedsMeridianGuess(uint64_t a1, uint64_t a2)
{
  if (DDResultGetCategory(a1) != 4)
  {
    return 0;
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    if (getLocaleForExtraction_sOnce != -1)
    {
      dispatch_once(&getLocaleForExtraction_sOnce, &__block_literal_global_312);
    }

    v4 = _sLocaleForExtraction;
  }

  if (localeHasStrict24Hrs(v4))
  {
    return 0;
  }

  v7 = 0;
  _DDResultNeedsMeridianGuess(a1, &v7, &v7 + 1);
  return v7 && HIBYTE(v7) == 0;
}

BOOL _DDResultNeedsMeridianGuess(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v5 = *(a1 + 56);
  if (!v5)
  {
    return *a3 && *a2 != 0;
  }

  Count = CFArrayGetCount(*(a1 + 56));
  if (Count < 1)
  {
    return *a3 && *a2 != 0;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
    v10 = ValueAtIndex;
    if (*a2)
    {
      v11 = 1;
    }

    else
    {
      v11 = ValueAtIndex == 0;
    }

    if (v11 || !_typesAreEqual(ValueAtIndex[8], @"Hours"))
    {
      if (!*a3)
      {
        if (extractMeridianValue(v10, &v15, &v15, &v15, &v15))
        {
          *a3 = 1;
          if (*a2)
          {
            return 1;
          }
        }
      }

      goto LABEL_22;
    }

    v12 = *(v10 + 80);
    if (v12)
    {
      v16 = 0;
      v13 = v12;
    }

    else
    {
      v12 = *(v10 + 72);
      if (!v12)
      {
        goto LABEL_22;
      }

      v16 = 0;
      v13 = *(v10 + 72);
    }

    if (DDFastIntegerExtraction(v13, &v16) && v16 <= 11)
    {
      *a2 = 1;
      if (*a3)
      {
        return 1;
      }

      if (CFStringGetLength(v12) >= 1 && CFStringGetCharacterAtIndex(v12, 0) == 48)
      {
        break;
      }
    }

LABEL_22:
    if (_DDResultNeedsMeridianGuess(v10, a2, a3))
    {
      return 1;
    }

    if (v7 == ++v8)
    {
      return *a3 && *a2 != 0;
    }
  }

  *a3 = 1;
  return 1;
}

uint64_t DDResultCopyDomesticIdentifierValue(uint64_t result, CFMutableStringRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (result)
  {
    v7 = result;
    result = _typesAreEqual(*(result + 64), @"DomesticIdentifier");
    if (result)
    {
      v8 = *(v7 + 56);
      if (v8 && CFArrayGetCount(v8) == 2)
      {
        result = CFArrayGetValueAtIndex(v8, 1);
        if (result)
        {
          v9 = result;
          result = _typesAreEqual(*(result + 64), @"CountryCode");
          if (result)
          {
            if (a4)
            {
              *a4 = CFRetain(*(v9 + 80));
            }

            ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
            v11 = ValueAtIndex;
            if (a3)
            {
              *a3 = CFRetain(ValueAtIndex[8]);
            }

            if (a2)
            {
              if (v11)
              {
                v12 = v11[9];
              }

              else
              {
                v12 = 0;
              }

              MutableCopy = CFStringCreateMutableCopy(0, 30, v12);
              v14.length = CFStringGetLength(MutableCopy);
              v14.location = 0;
              CFStringFindAndReplace(MutableCopy, @" ", &stru_1F3B75AB8, v14, 0);
              v15.length = CFStringGetLength(MutableCopy);
              v15.location = 0;
              CFStringFindAndReplace(MutableCopy, @"-", &stru_1F3B75AB8, v15, 0);
              *a2 = MutableCopy;
            }

            return 1;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFTypeRef DDResultCopyUPIIdentifierValue(uint64_t a1)
{
  if (!a1 || !_typesAreEqual(*(a1 + 64), @"UPIIdentifier"))
  {
    return 0;
  }

  v2 = *(a1 + 72);

  return CFRetain(v2);
}

id DDDimensionFromUnitString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    if (DDDimensionFromUnitString_onceToken != -1)
    {
      dispatch_once(&DDDimensionFromUnitString_onceToken, &__block_literal_global_1742);
    }

    v3 = [v2 lowercaseString];

    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v4 objectForKey:*MEMORY[0x1E695D9B8]];

    if (![v5 isEqual:@"U.K."] || (v6 = DDDimensionFromUnitString__supportedUnits, objc_msgSend(v3, "stringByAppendingString:", @"-imperial"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
    {
      v8 = [DDDimensionFromUnitString__supportedUnits objectForKeyedSubscript:v3];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __DDDimensionFromUnitString_block_invoke()
{
  v76[72] = *MEMORY[0x1E69E9840];
  v75[0] = @"gram";
  v74 = [MEMORY[0x1E696B060] grams];
  v76[0] = v74;
  v75[1] = @"kilogram";
  v73 = [MEMORY[0x1E696B060] kilograms];
  v76[1] = v73;
  v75[2] = @"metric tonne";
  v72 = [MEMORY[0x1E696B060] metricTons];
  v76[2] = v72;
  v75[3] = @"ounce";
  v71 = [MEMORY[0x1E696B060] ounces];
  v76[3] = v71;
  v75[4] = @"pound";
  v70 = [MEMORY[0x1E696B060] poundsMass];
  v76[4] = v70;
  v75[5] = @"stone";
  v69 = [MEMORY[0x1E696B060] stones];
  v76[5] = v69;
  v75[6] = @"short ton";
  v68 = [MEMORY[0x1E696B060] shortTons];
  v76[6] = v68;
  v75[7] = @"watt";
  v67 = [MEMORY[0x1E696B068] watts];
  v76[7] = v67;
  v75[8] = @"kilowatt";
  v66 = [MEMORY[0x1E696B068] kilowatts];
  v76[8] = v66;
  v75[9] = @"horse power";
  v65 = [MEMORY[0x1E696B068] horsepower];
  v76[9] = v65;
  v75[10] = @"kilometer per hour";
  v64 = [MEMORY[0x1E696B078] kilometersPerHour];
  v76[10] = v64;
  v75[11] = @"mile per hour";
  v63 = [MEMORY[0x1E696B078] milesPerHour];
  v76[11] = v63;
  v75[12] = @"meter per second";
  v62 = [MEMORY[0x1E696B078] metersPerSecond];
  v76[12] = v62;
  v75[13] = @"celsius";
  v61 = [MEMORY[0x1E696B080] celsius];
  v76[13] = v61;
  v75[14] = @"fahrenheit";
  v60 = [MEMORY[0x1E696B080] fahrenheit];
  v76[14] = v60;
  v75[15] = @"kelvin";
  v59 = [MEMORY[0x1E696B080] kelvin];
  v76[15] = v59;
  v75[16] = @"liter per 100 kilometers";
  v58 = [MEMORY[0x1E696B040] litersPer100Kilometers];
  v76[16] = v58;
  v75[17] = @"mile per gallon";
  v57 = [MEMORY[0x1E696B040] milesPerGallon];
  v76[17] = v57;
  v75[18] = @"kilowatt hour";
  v56 = [MEMORY[0x1E696B030] kilowattHours];
  v76[18] = v56;
  v75[19] = @"kilocalorie";
  v55 = [MEMORY[0x1E696B030] kilocalories];
  v76[19] = v55;
  v75[20] = @"calorie";
  v54 = [MEMORY[0x1E696B030] calories];
  v76[20] = v54;
  v75[21] = @"joule";
  v53 = [MEMORY[0x1E696B030] joules];
  v76[21] = v53;
  v75[22] = @"kilojoule";
  v52 = [MEMORY[0x1E696B030] kilojoules];
  v76[22] = v52;
  v75[23] = @"kilometer";
  v51 = [MEMORY[0x1E696B058] kilometers];
  v76[23] = v51;
  v75[24] = @"meter";
  v50 = [MEMORY[0x1E696B058] meters];
  v76[24] = v50;
  v75[25] = @"centimeter";
  v49 = [MEMORY[0x1E696B058] centimeters];
  v76[25] = v49;
  v75[26] = @"millimeter";
  v48 = [MEMORY[0x1E696B058] millimeters];
  v76[26] = v48;
  v75[27] = @"mile";
  v47 = [MEMORY[0x1E696B058] miles];
  v76[27] = v47;
  v75[28] = @"yard";
  v46 = [MEMORY[0x1E696B058] yards];
  v76[28] = v46;
  v75[29] = @"foot";
  v45 = [MEMORY[0x1E696B058] feet];
  v76[29] = v45;
  v75[30] = @"inch";
  v44 = [MEMORY[0x1E696B058] inches];
  v76[30] = v44;
  v75[31] = @"hectare";
  v43 = [MEMORY[0x1E696AFE8] hectares];
  v76[31] = v43;
  v75[32] = @"square kilometer";
  v42 = [MEMORY[0x1E696AFE8] squareKilometers];
  v76[32] = v42;
  v75[33] = @"square meter";
  v41 = [MEMORY[0x1E696AFE8] squareMeters];
  v76[33] = v41;
  v75[34] = @"square centimeter";
  v40 = [MEMORY[0x1E696AFE8] squareCentimeters];
  v76[34] = v40;
  v75[35] = @"acre";
  v39 = [MEMORY[0x1E696AFE8] acres];
  v76[35] = v39;
  v75[36] = @"square mile";
  v38 = [MEMORY[0x1E696AFE8] squareMiles];
  v76[36] = v38;
  v75[37] = @"square yard";
  v37 = [MEMORY[0x1E696AFE8] squareYards];
  v76[37] = v37;
  v75[38] = @"square foot";
  v36 = [MEMORY[0x1E696AFE8] squareFeet];
  v76[38] = v36;
  v75[39] = @"square inch";
  v35 = [MEMORY[0x1E696AFE8] squareInches];
  v76[39] = v35;
  v75[40] = @"degree";
  v34 = [MEMORY[0x1E696AFE0] degrees];
  v76[40] = v34;
  v75[41] = @"radian";
  v33 = [MEMORY[0x1E696AFE0] radians];
  v76[41] = v33;
  v75[42] = @"turn";
  v32 = [MEMORY[0x1E696AFE0] revolutions];
  v76[42] = v32;
  v75[43] = @"liter";
  v31 = [MEMORY[0x1E696B088] liters];
  v76[43] = v31;
  v75[44] = @"centiliter";
  v30 = [MEMORY[0x1E696B088] centiliters];
  v76[44] = v30;
  v75[45] = @"milliliter";
  v29 = [MEMORY[0x1E696B088] milliliters];
  v76[45] = v29;
  v75[46] = @"cubic meter";
  v28 = [MEMORY[0x1E696B088] cubicMeters];
  v76[46] = v28;
  v75[47] = @"cubic centimeter";
  v27 = [MEMORY[0x1E696B088] cubicCentimeters];
  v76[47] = v27;
  v75[48] = @"gallon";
  v26 = [MEMORY[0x1E696B088] gallons];
  v76[48] = v26;
  v75[49] = @"gallon-imperial";
  v25 = [MEMORY[0x1E696B088] imperialGallons];
  v76[49] = v25;
  v75[50] = @"pint";
  v24 = [MEMORY[0x1E696B088] pints];
  v76[50] = v24;
  v75[51] = @"pint-imperial";
  v23 = [MEMORY[0x1E696B088] imperialPints];
  v76[51] = v23;
  v75[52] = @"quart";
  v22 = [MEMORY[0x1E696B088] quarts];
  v76[52] = v22;
  v75[53] = @"quart-imperial";
  v21 = [MEMORY[0x1E696B088] imperialQuarts];
  v76[53] = v21;
  v75[54] = @"cup";
  v20 = [MEMORY[0x1E696B088] cups];
  v76[54] = v20;
  v75[55] = @"fluid ounce";
  v19 = [MEMORY[0x1E696B088] fluidOunces];
  v76[55] = v19;
  v75[56] = @"fluid ounce-imperial";
  v18 = [MEMORY[0x1E696B088] imperialFluidOunces];
  v76[56] = v18;
  v75[57] = @"tablespoon";
  v17 = [MEMORY[0x1E696B088] tablespoons];
  v76[57] = v17;
  v75[58] = @"tablespoon-imperial";
  v16 = [MEMORY[0x1E696B088] imperialTablespoons];
  v76[58] = v16;
  v75[59] = @"teaspoon";
  v15 = [MEMORY[0x1E696B088] teaspoons];
  v76[59] = v15;
  v75[60] = @"teaspoon-imperial";
  v14 = [MEMORY[0x1E696B088] imperialTeaspoons];
  v76[60] = v14;
  v75[61] = @"cubic foot";
  v13 = [MEMORY[0x1E696B088] cubicFeet];
  v76[61] = v13;
  v75[62] = @"cubic inch";
  v0 = [MEMORY[0x1E696B088] cubicInches];
  v76[62] = v0;
  v75[63] = @"bar";
  v1 = [MEMORY[0x1E696B070] bars];
  v76[63] = v1;
  v75[64] = @"kilopascal";
  v2 = [MEMORY[0x1E696B070] kilopascals];
  v76[64] = v2;
  v75[65] = @"hectopascal";
  v3 = [MEMORY[0x1E696B070] hectopascals];
  v76[65] = v3;
  v75[66] = @"millimeter of mercury";
  v4 = [MEMORY[0x1E696B070] millimetersOfMercury];
  v76[66] = v4;
  v75[67] = @"psi";
  v5 = [MEMORY[0x1E696B070] poundsForcePerSquareInch];
  v76[67] = v5;
  v75[68] = @"hour";
  v6 = [MEMORY[0x1E696B008] hours];
  v76[68] = v6;
  v75[69] = @"minute";
  v7 = [MEMORY[0x1E696B008] minutes];
  v76[69] = v7;
  v75[70] = @"second";
  v8 = [MEMORY[0x1E696B008] seconds];
  v76[70] = v8;
  v75[71] = @"millisecond";
  v9 = [MEMORY[0x1E696B008] milliseconds];
  v76[71] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:72];
  v11 = DDDimensionFromUnitString__supportedUnits;
  DDDimensionFromUnitString__supportedUnits = v10;

  v12 = *MEMORY[0x1E69E9840];
}

id DDResultGetShipmentTrackingUrlWithCarrier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (DDResultGetShipmentTrackingUrlWithCarrier_onceToken != -1)
  {
    dispatch_once(&DDResultGetShipmentTrackingUrlWithCarrier_onceToken, &__block_literal_global_235);
  }

  v5 = 0;
  if (v3 && v4)
  {
    v6 = DDResultGetShipmentTrackingUrlWithCarrier_carrierLookupTable;
    v7 = [v3 lowercaseString];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      v10 = [v9 invertedSet];
      v11 = [v4 componentsSeparatedByCharactersInSet:v10];
      v12 = [v11 componentsJoinedByString:&stru_1F3B75AB8];

      v13 = getShipmentTrackingUrlString(v12, v8);
      if (v13)
      {
        v14 = v13;
        v5 = [MEMORY[0x1E695DFF8] URLWithString:v13];
      }

      else
      {
        v5 = 0;
      }

      v4 = v12;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = v3;
  }

  return v5;
}

id getShipmentTrackingUrlString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v3 length] && objc_msgSend(v5, "length"))
    {
      v7 = [MEMORY[0x1E695DF58] currentLocale];
      v8 = [v7 objectForKey:*MEMORY[0x1E695D978]];
      v9 = [v8 lowercaseString];

      if (!v9 || ![v5 isEqualToString:@"ebay"] || (objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", @"au", @"at", @"ca", @"fr", @"de", @"hk", @"in", @"ie", @"it", @"my", @"nl", @"ph", @"pl", @"sg", @"es", @"ch", @"gb", 0), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v9), v10, (v11 & 1) == 0))
      {

        v9 = &stru_1F3B75AB8;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://trackingshipment.apple.com/?Company=%@&Locale=%@&TrackingNumber=%@", v5, v9, v3];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void __DDResultGetShipmentTrackingUrlWithCarrier_block_invoke()
{
  v0 = DDResultGetShipmentTrackingUrlWithCarrier_carrierLookupTable;
  DDResultGetShipmentTrackingUrlWithCarrier_carrierLookupTable = &unk_1F3B7DDB0;
}

CFTypeRef DDResultGetShipmentTrackingUrlString(uint64_t a1)
{
  if (a1)
  {
    if (_typesAreEqual(*(a1 + 64), @"TrackingNumber"))
    {
      v2 = *(a1 + 56);
      if ([v2 count] == 1)
      {
        v3 = [v2 objectAtIndex:0];
        v4 = *(v3 + 64);
        v5 = *(v3 + 72);
        v6 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
        v7 = [v6 invertedSet];
        v8 = [v5 componentsSeparatedByCharactersInSet:v7];
        v9 = [v8 componentsJoinedByString:&stru_1F3B75AB8];

LABEL_17:
        v21 = getShipmentTrackingUrlString(v9, v4);
        if (v21)
        {
          v22 = v21;
          v23 = CFAutorelease(v22);
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        goto LABEL_23;
      }

LABEL_20:
      v23 = 0;
LABEL_23:

      return v23;
    }

    if (_typesAreEqual(*(a1 + 64), @"TrackingInformation"))
    {
      v2 = *(a1 + 56);
      if ([v2 count] != 2)
      {
        goto LABEL_20;
      }

      v10 = 0;
      v4 = 0;
      v9 = 0;
      v11 = 1;
      while (1)
      {
        v12 = v11;
        v13 = [v2 objectAtIndex:v10];
        if (v13)
        {
          v14 = v13;
          if (_typesAreEqual(*(v13 + 64), @"Carrier"))
          {
            v15 = *(v14 + 80);
            if (!v15)
            {
              v15 = *(v14 + 72);
            }

            v16 = v4;
            v4 = v15;
            goto LABEL_15;
          }

          if (_typesAreEqual(*(v14 + 64), @"TrackingNumber"))
          {
            v17 = *(v14 + 72);
            v16 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            v18 = [v16 invertedSet];
            v19 = [v17 componentsSeparatedByCharactersInSet:v18];
            v20 = [v19 componentsJoinedByString:&stru_1F3B75AB8];

            v9 = v20;
LABEL_15:
          }
        }

        v11 = 0;
        v10 = 1;
        if ((v12 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  return 0;
}

uint64_t ___dd_dispatch_get_queue_for_read_entitlements_block_invoke()
{
  v0 = dispatch_queue_create("dd_source_read_entitlements", 0);
  v1 = _dd_dispatch_get_queue_for_read_entitlements_sQueue;
  _dd_dispatch_get_queue_for_read_entitlements_sQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id _dd_dispatch_get_queue_for_writing()
{
  if (_dd_dispatch_get_queue_for_writing_onceToken != -1)
  {
    dispatch_once(&_dd_dispatch_get_queue_for_writing_onceToken, &__block_literal_global_2089);
  }

  v1 = _dd_dispatch_get_queue_for_writing_sQueue;

  return v1;
}

uint64_t ___dd_dispatch_get_queue_for_writing_block_invoke()
{
  v0 = dispatch_queue_create("dd_source_write", 0);
  v1 = _dd_dispatch_get_queue_for_writing_sQueue;
  _dd_dispatch_get_queue_for_writing_sQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1BD00BDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t __Block_byref_object_copy__2115(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL DDScannerScanStringFromConversation(_BOOL8 result, __CFString *theString, void *a3)
{
  if (result)
  {
    v4 = result;
    if (!theString)
    {
      DDScannerReset(result);
      return 0;
    }

    if (a3)
    {
      v14 = 0;
      Length = CFStringGetLength(theString);
      v6 = [MEMORY[0x1E695DF00] date];
      v7 = theString;
      v8 = v6;
      v9 = a3;
      if (v8)
      {
        if (_DDMessageCacheStringForMessage__onceToken != -1)
        {
          dispatch_once(&_DDMessageCacheStringForMessage__onceToken, &__block_literal_global_2145);
        }

        if ([(__CFString *)v7 length]<= 0x9C3)
        {
          v10 = objc_alloc_init(DDMessageCacheElement);
          [(DDMessageCacheElement *)v10 setDate:v8];
          [(DDMessageCacheElement *)v10 setText:v7];
          v11 = [_DDMessageCacheStringForMessage__cache stringWithElement:v10 conversationID:v9 range:&v14];

LABEL_15:
          v13 = v11;

          return DDScannerScanStringWithContextOffset(v4, v11, v14);
        }

        [_DDMessageCacheStringForMessage__cache removeConversation:v9];
      }

      v14 = 0;
      Length = [(__CFString *)v7 length];
      v11 = v7;
      goto LABEL_15;
    }

    v12 = CFStringGetLength(theString);

    return DDScannerScanStringWithRangeAndContextOffset(v4, theString, 0, v12, 0);
  }

  return result;
}

id DDExtractMessageBotReplies(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v8 = 0;
    goto LABEL_52;
  }

  v3 = [v1 length];
  if (v3 <= 0x3B)
  {
    v4 = v3;
  }

  else
  {
    v4 = 60;
  }

  if (v3 <= 0x3B)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 - 60;
  }

  v6 = [[DDScannerServiceConfiguration alloc] initWithScannerType:4 passiveIntent:0];
  v7 = [DDScannerService scanString:v2 range:v5 configuration:v4, v6];
  v8 = [v7 count];
  if (!v8)
  {
    goto LABEL_50;
  }

  v33 = v6;
  v34 = v2;
  v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v32 = v7;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (!v10)
  {
    goto LABEL_47;
  }

  v11 = v10;
  v12 = *v45;
  v36 = v9;
  v38 = *v45;
  do
  {
    v13 = 0;
    v37 = v11;
    do
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v44 + 1) + 8 * v13);
      v15 = [v14 coreResult];
      if (v15 && _typesAreEqual(*(v15 + 64), @"CannedReply"))
      {
        v39 = v13;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v16 = [v14 subResults];
        v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = *v41;
          while (1)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v41 != v22)
              {
                objc_enumerationMutation(v16);
              }

              v24 = [*(*(&v40 + 1) + 8 * i) coreResult];
              if (v24)
              {
                v25 = v24;
                if (_typesAreEqual(*(v24 + 64), @"CannedReplyType"))
                {
                  v26 = *(v25 + 80);
                  if (!v26)
                  {
                    v26 = *(v25 + 72);
                  }

                  v27 = v19;
                  v19 = v26;
                }

                else if (_typesAreEqual(*(v25 + 64), @"CannedReplyValue"))
                {
                  v26 = *(v25 + 80);
                  if (!v26)
                  {
                    v26 = *(v25 + 72);
                  }

                  v27 = v20;
                  v20 = v26;
                }

                else
                {
                  if (!_typesAreEqual(*(v25 + 64), @"CannedReplyTarget"))
                  {
                    continue;
                  }

                  v26 = *(v25 + 80);
                  if (!v26)
                  {
                    v26 = *(v25 + 72);
                  }

                  v27 = v21;
                  v21 = v26;
                }

                v28 = v26;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (!v18)
            {

              if (v19)
              {
                v9 = v36;
                v11 = v37;
                if (v20)
                {
                  v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v19, @"Type", v20, @"Value", v21, @"Target", 0}];
                  [v35 addObject:v16];
                  goto LABEL_41;
                }
              }

              else
              {
                v9 = v36;
                v11 = v37;
              }

              goto LABEL_42;
            }
          }
        }

        v21 = 0;
        v20 = 0;
        v19 = 0;
LABEL_41:

LABEL_42:
        v12 = v38;
        v13 = v39;
      }

      ++v13;
    }

    while (v13 != v11);
    v29 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
    v11 = v29;
  }

  while (v29);
LABEL_47:

  v8 = v35;
  if (![v35 count])
  {

    v8 = 0;
  }

  v6 = v33;
  v2 = v34;
  v7 = v32;
LABEL_50:

LABEL_52:
  v30 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_1BD00CDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _DDDFAScannerCFFinalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t DDDFAScannerCreateFromCache(const void *a1)
{
  v2 = DDTypeRegister(&DDDFAScannerGetTypeID_typeID);
  Instance = DDTypeCreateInstance_(0, v2, 0x20uLL);
  *(Instance + 24) = a1;
  CFRetain(a1);
  *(Instance + 32) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  return Instance;
}

void DDDFAScannerEmitResult(const __CFArray *a1, void *a2)
{
  v2 = a2;
  v4 = a2[2];
  v5 = a2[3];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    goto LABEL_51;
  }

  v7 = v4 >> 16;
  v26 = v2;
  v27 = v2[6];
  v8 = v5 >> 16;
  v9 = Count + 1;
  v10 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9 - 2);
    v12 = ValueAtIndex[2];
    v13 = ValueAtIndex[3];
    v14 = v13 >> 16;
    if (v7 >= v14 && (v7 > v14 || SHIDWORD(v4) >= SHIDWORD(v13)))
    {
      break;
    }

    if ((v12 ^ v4) >> 16 || (v13 ^ v5) >= 0x10000)
    {
      v16 = v12 >> 16;
      if (SHIDWORD(v4) >= SHIDWORD(v12))
      {
        v17 = ValueAtIndex[2];
      }

      else
      {
        v17 = v4;
      }

      if (v7 > v16)
      {
        v17 = ValueAtIndex[2];
      }

      if (v7 >= v12 >> 16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v4;
      }

      if (SHIDWORD(v5) >= SHIDWORD(v13))
      {
        v19 = v5;
      }

      else
      {
        v19 = ValueAtIndex[3];
      }

      if (v8 > v14)
      {
        v19 = v5;
      }

      if (v8 < v14)
      {
        v19 = ValueAtIndex[3];
      }

      if ((v18 ^ v4) >> 16 || (v19 ^ v5) >= 0x10000)
      {
        if (SHIDWORD(v4) >= SHIDWORD(v12))
        {
          v20 = ValueAtIndex[2];
        }

        else
        {
          v20 = v4;
        }

        v21 = v7 < v16;
        if (v7 <= v16)
        {
          v22 = v20;
        }

        else
        {
          v22 = ValueAtIndex[2];
        }

        if (v21)
        {
          v22 = v4;
        }

        if (SHIDWORD(v5) >= SHIDWORD(v13))
        {
          v23 = v5;
        }

        else
        {
          v23 = ValueAtIndex[3];
        }

        v24 = v8 < v14;
        if (v8 <= v14)
        {
          v25 = v23;
        }

        else
        {
          v25 = v5;
        }

        if (v24)
        {
          v25 = ValueAtIndex[3];
        }

        if (!((v22 ^ v12 | v25 ^ v13) >> 16))
        {
          v10 = 0;
        }

        goto LABEL_49;
      }

LABEL_30:
      CFArrayRemoveValueAtIndex(a1, v9 - 2);
      goto LABEL_49;
    }

    if (ValueAtIndex[6] < v27)
    {
      goto LABEL_30;
    }

    v10 = 0;
LABEL_49:
    --v9;
  }

  while (v9 > 1);
  v2 = v26;
  if (v10)
  {
LABEL_51:

    CFArrayAppendValue(a1, v2);
  }
}

uint64_t DDDFAScannerSimulateState(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 16);
LABEL_2:
  if (v2 >= v3 - 5 && *(a1 + 120))
  {
    *(a1 + 112) = DDDFAScannerSimulateState;
    return 1;
  }

  v4 = *(a1 + 104);
  v5 = *(a1 + 24);
  v6 = *(v5 + 56);
  v7 = (*(v5 + 48) + 8 * v4);
  v8 = *v7;
  v9 = v4 < *(v5 + 32) - 1;
  v10 = (v5 + 36);
  if (v9)
  {
    v10 = v7 + 4;
  }

  v11 = *v10;
  if (!v7[1])
  {
    v21 = v2;
    goto LABEL_31;
  }

  v12 = *(v7 + 1);
  v13 = *(*(v5 + 40) + 8 * (v7[1] - 1));
  v14 = *(a1 + 40) + v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  if (v14 >= 0)
  {
    v15 = *(v5 + 72);
    if (v15)
    {
      v16 = v2 == v3;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
LABEL_15:
      if (v13)
      {
        v18 = CFStringCompare(v13, @"PhoneNumber", 0);
        v20 = *(a1 + 48);
        v19 = *(a1 + 56);
        if (v18 == kCFCompareEqualTo && !DDResultBufferIsValidForPhoneNumber(*a1, *(a1 + 48), v19 - v20, 1, *(a1 + 73)))
        {
          goto LABEL_30;
        }
      }

      else
      {
        v20 = *(a1 + 48);
        v19 = *(a1 + 56);
      }

      v22 = *(a1 + 8) + v19;
      if (*(a1 + 72))
      {
        v23 = *(a1 + 40);
        if (*(a1 + 32))
        {
          v24 = *(a1 + 32);
        }

        else
        {
          v24 = &stru_1F3B75AB8;
        }

        v25 = DDRootResultCreate(v24, (v20 << 32) | (*(a1 + 64) << 16), (v22 << 32) | (*(a1 + 64) << 16));
        v25[6] = v23;
        DDDFAScannerEmitResult(*(a1 + 96), v25);
        CFRelease(v25);
      }

      else
      {
        v26 = v22 - v20;
        if (v22 - v20 > *(a1 + 88))
        {
          if (CFStringCompare(*(a1 + 32), @"NoResult", 0))
          {
            *(a1 + 80) = v20;
            *(a1 + 88) = v26;
          }

          else
          {
            *(a1 + 80) = xmmword_1BD018B60;
          }
        }
      }

      goto LABEL_30;
    }

    v17 = *(a1 + 8);
    v32[0] = *a1;
    v32[1] = v17;
    memset(&v32[3], 0, 24);
    v32[2] = v3;
    v32[6] = v2;
    v32[7] = v2;
    v33 = xmmword_1BD018B60;
    BYTE9(v33) = 0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    if (v15(v32))
    {
      v13 = *(a1 + 32);
      goto LABEL_15;
    }
  }

LABEL_30:
  *(a1 + 40) -= v12;
  v21 = *(a1 + 56);
  v3 = *(a1 + 16);
LABEL_31:
  if (v21 != v3)
  {
    v27 = v11 - v8;
    v28 = *a1;
    v2 = v21 + 1;
    *(a1 + 56) = v21 + 1;
    if (v11 - v8 >= 1)
    {
      v29 = *(v28 + 2 * v21);
      for (i = (v6 + 8 * v8); *i <= v29; i += 4)
      {
        if (i[1] > v29)
        {
          *(a1 + 40) += i[2];
          *(a1 + 104) = i[3];
          goto LABEL_2;
        }

        if (!--v27)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}