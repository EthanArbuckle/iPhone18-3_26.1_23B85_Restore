@interface DDScanServerDispatcher
- (DDScanServerDispatcher)init;
- (id)reportQueue;
- (uint64_t)scannerConf:(int)a3 sync:(void *)a4 string:(void *)a5 runTask:;
- (void)dealloc;
- (void)recycleScanner:(void *)a3 fromList:(int)a4 sameQueue:;
@end

@implementation DDScanServerDispatcher

- (DDScanServerDispatcher)init
{
  v19.receiver = self;
  v19.super_class = DDScanServerDispatcher;
  v2 = [(DDScanServerDispatcher *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("com.apple.datadetectors.scanner.server", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = MEMORY[0x1E69E96A8];
    v7 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_DEFAULT, 0);
    v8 = dispatch_queue_create("com.apple.datadetectors.scanner.work", v7);
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    v10 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_DEFAULT, 0);
    v11 = dispatch_queue_create("com.apple.datadetectors.scanner.server", v10);
    v12 = *(v2 + 3);
    *(v2 + 3) = v11;

    v13 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 3uLL, *(v2 + 1));
    v14 = *(v2 + 4);
    *(v2 + 4) = v13;

    v15 = *(v2 + 4);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __30__DDScanServerDispatcher_init__block_invoke;
    handler[3] = &unk_1E80026C0;
    v18 = v2;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_resume(*(v2 + 4));
  }

  return v2;
}

uintptr_t __30__DDScanServerDispatcher_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = dispatch_source_get_data(*(v1 + 32));
  v3 = result != 1;
  if (*(v1 + 40) != v3)
  {
    *(v1 + 40) = v3;
  }

  return result;
}

- (void)dealloc
{
  scannerQueue = self->_scannerQueue;
  if (scannerQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__DDScanServerDispatcher_dealloc__block_invoke;
    block[3] = &unk_1E80026C0;
    block[4] = self;
    dispatch_sync(scannerQueue, block);
  }

  v4.receiver = self;
  v4.super_class = DDScanServerDispatcher;
  [(DDScanServerDispatcher *)&v4 dealloc];
}

void __33__DDScanServerDispatcher_dealloc__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 1;
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

void __36__DDScanServerDispatcher_cancelJob___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [*(*(a1 + 32) + 48) allValues];
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v24 = *v26;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        if (v7)
        {
          v8 = *(a1 + 40);
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v9 = *(v7 + 64);
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
            do
            {
              v13 = 0;
              do
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v29 + 1) + 8 * v13);
                if (v14)
                {
                  if (*(v14 + 24) == v8)
                  {
                    *(*(v14 + 8) + 232) |= 1u;
LABEL_31:

                    goto LABEL_32;
                  }
                }

                else if (!v8)
                {
                  goto LABEL_31;
                }

                ++v13;
              }

              while (v11 != v13);
              v15 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
              v11 = v15;
            }

            while (v15);
          }

          v16 = [*(v7 + 48) count];
          if (v16)
          {
            v17 = v16;
            v18 = 0;
            while (1)
            {
              v19 = [*(v7 + 48) objectAtIndexedSubscript:v18];
              v20 = v19 ? v19[2] : 0;

              if (v20 == v8)
              {
                break;
              }

              if (v17 == ++v18)
              {
                goto LABEL_27;
              }
            }

            v22 = [*(v7 + 48) objectAtIndexedSubscript:v18];
            v23 = v22;
            if (v22)
            {
              v22 = *(v22 + 8);
            }

            (*(v22 + 16))(v22, 0);

            [*(v7 + 48) removeObjectAtIndex:v18];
            goto LABEL_32;
          }
        }

LABEL_27:
        v5 = v24;
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

  v21 = *MEMORY[0x1E69E9840];
}

- (id)reportQueue
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)scannerConf:(int)a3 sync:(void *)a4 string:(void *)a5 runTask:
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy_;
    v64 = __Block_byref_object_dispose_;
    v65 = 0;
    if (v9)
    {
      v12 = [v9 copy];
    }

    else
    {
      v12 = [[DDScannerServiceConfiguration alloc] initWithScannerType:0 passiveIntent:a3 ^ 1u];
    }

    v13 = v61[5];
    v61[5] = v12;

    v14 = [v61[5] language];
    if (v14 || ![(__CFString *)v10 length])
    {
      if ([v14 isEqualToString:@"inconclusive"])
      {
        [v61[5] setLanguage:0];
      }

      else if ([v14 length])
      {
        [v61[5] setLanguageHighConfidence:1];
        v15 = v14;
        if (_scriptForEmbeddingFromLanguage__onceToken != -1)
        {
          dispatch_once(&_scriptForEmbeddingFromLanguage__onceToken, &__block_literal_global);
        }

        v16 = [_scriptForEmbeddingFromLanguage__latinLanguages containsObject:v15];

        if (v16)
        {
          v17 = 30;
        }

        else
        {
          v17 = 31;
        }

        [v61[5] setScript:v17];
      }
    }

    else if (([0 isEqualToString:@"inconclusive"] & 1) == 0)
    {
      v18 = DDComputeDominantScriptOrLanguage(v10);
      [v61[5] setScript:v18];
      v19 = 0;
      v20 = 0;
      switch(v18)
      {
        case 1:
          v19 = @"ar";
          goto LABEL_29;
        case 2:
          v19 = @"he";
          goto LABEL_29;
        case 3:
          v19 = @"el";
          goto LABEL_29;
        case 4:
          v19 = @"th";
          goto LABEL_29;
        case 5:
          v19 = @"ko";
          goto LABEL_29;
        case 6:
          v19 = @"ja";
LABEL_29:
          v20 = 1;
          break;
        case 7:
          v20 = 0;
          v19 = @"tr";
          break;
        case 8:
        case 14:
          v20 = 0;
          v19 = @"ru";
          break;
        case 9:
        case 10:
          v20 = 0;
          v19 = @"en";
          break;
        case 11:
        case 13:
          v20 = 0;
          v19 = @"zh-Hans";
          break;
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 26:
        case 29:
          v20 = 0;
          v19 = @"hi";
          break;
        case 25:
          v20 = 0;
          v19 = @"th";
          break;
        case 28:
          v20 = 0;
          v19 = @"my";
          break;
        default:
          break;
      }

      [v61[5] setLanguage:v19];
      [v61[5] setLanguageHighConfidence:v20];
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy_;
    v58 = __Block_byref_object_dispose_;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy_;
    v52 = __Block_byref_object_dispose_;
    v53 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v21 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__DDScanServerDispatcher_scannerConf_sync_string_runTask___block_invoke;
    block[3] = &unk_1E8001B58;
    v38 = sel_scannerConf_sync_string_runTask_;
    block[4] = a1;
    v33 = &v44;
    v34 = &v48;
    v35 = &v60;
    v39 = a3;
    v22 = v11;
    v32 = v22;
    v36 = &v40;
    v37 = &v54;
    dispatch_sync(v21, block);
    if (v41[3])
    {
      goto LABEL_40;
    }

    if (a3)
    {
      if (v9)
      {
        v23 = v9[3];
        if (v23)
        {
          *v23 = v45[3];
          v9[3] = 0;
        }
      }
    }

    else if (!v10 || [(__CFString *)v10 length]>= 0xA0)
    {
      v24 = *(a1 + 16);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __58__DDScanServerDispatcher_scannerConf_sync_string_runTask___block_invoke_3;
      v26[3] = &unk_1E8001B80;
      v28 = &v54;
      v29 = &v60;
      v26[4] = a1;
      v27 = v22;
      v30 = &v48;
      dispatch_async(v24, v26);

      goto LABEL_40;
    }

    (*(v22 + 2))(v22, v55[5], v61[5]);
    [(DDScanServerDispatcher *)a1 recycleScanner:v49[5] fromList:0 sameQueue:?];
LABEL_40:
    a1 = v45[3];

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);

    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v60, 8);
  }

  return a1;
}

void __58__DDScanServerDispatcher_scannerConf_sync_string_runTask___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 56) == 1)
  {
    v73 = [MEMORY[0x1E696AAA8] currentHandler];
    [v73 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"DDScannerServer.m" lineNumber:881 description:@"Scan operation requested after tear down"];

    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 64) + 1;
  *(v2 + 64) = v3;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 64) + 8) + 40);
  v6 = v5;
  if (v4)
  {
    v7 = [(DDScannerServiceConfiguration *)v5 recyclingIdentifier];
    v8 = *(v4 + 48);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = *(v4 + 48);
      *(v4 + 48) = v9;

      v8 = *(v4 + 48);
    }

    v11 = [v8 objectForKeyedSubscript:v7];
    if (!v11)
    {
      v11 = [DDScannerList alloc];
      v12 = v6;
      if (v11)
      {
        v83.receiver = v11;
        v83.super_class = DDScannerList;
        v11 = objc_msgSendSuper2(&v83, sel_init);
        if (v11)
        {
          v13 = [(DDScannerServiceConfiguration *)v12 recyclingIdentifier];
          hash = v11->_hash;
          v11->_hash = v13;

          v11->_type = [(__CFString *)v12 scannerType];
          v11->_spotlightSuggestionsEnabled = [(__CFString *)v12 spotlightSuggestionsEnabled];
          v15 = [(__CFString *)v12 language];
          language = v11->_language;
          v11->_language = v15;

          v17 = [(__CFString *)v12 country];
          country = v11->_country;
          v11->_country = v17;

          v11->_languageHighConfidence = [(__CFString *)v12 languageHighConfidence];
        }
      }

      [*(v4 + 48) setObject:v11 forKeyedSubscript:v7];
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v11;

  if ((*(a1 + 96) & 1) == 0)
  {
    v21 = *(*(*(a1 + 56) + 8) + 40);
    if (v21)
    {
      if ([*(v21 + 64) count])
      {
        v22 = *(a1 + 32);
        if (*(v22 + 40) != 1)
        {
          goto LABEL_18;
        }

        v23 = qos_class_self();
        if (v23 != qos_class_main())
        {
LABEL_47:
          v58 = *(*(*(a1 + 56) + 8) + 40);
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __58__DDScanServerDispatcher_scannerConf_sync_string_runTask___block_invoke_2;
          v76[3] = &unk_1E8001B30;
          v59 = *(a1 + 40);
          v60 = *(a1 + 64);
          v77 = v59;
          v78 = v60;
          if (v58)
          {
            v61 = *(*(*(a1 + 48) + 8) + 24);
            v62 = v76;
            v63 = [DDScanStepBlockContainer alloc];
            v64 = v62;
            if (v63)
            {
              v83.receiver = v63;
              v83.super_class = DDScanStepBlockContainer;
              v63 = objc_msgSendSuper2(&v83, sel_init);
              if (v63)
              {
                v65 = _Block_copy(v64);
                block = v63->_block;
                v63->_block = v65;

                v63->_identifier = v61;
              }
            }

            v67 = *(v58 + 48);
            if (v67)
            {
              [v67 insertObject:v63 atIndex:0];
            }

            else
            {
              v68 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v63, 0}];
              v69 = *(v58 + 48);
              *(v58 + 48) = v68;
            }
          }

          *(*(*(a1 + 72) + 8) + 24) = 1;

          goto LABEL_68;
        }

        v22 = *(a1 + 32);
        if ((*(v22 + 40) & 1) == 0)
        {
LABEL_18:
          v24 = [MEMORY[0x1E696AE30] processInfo];
          v25 = [v24 activeProcessorCount];

          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v26 = [*(v22 + 48) allValues];
          v27 = [v26 countByEnumeratingWithState:&v79 objects:&v83 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = 0;
            v30 = *v80;
            do
            {
              v31 = 0;
              do
              {
                if (*v80 != v30)
                {
                  objc_enumerationMutation(v26);
                }

                v32 = *(*(&v79 + 1) + 8 * v31);
                if (v32)
                {
                  v33 = [*(v32 + 64) count];
                }

                else
                {
                  v33 = 0;
                }

                v29 += v33;
                if (v29 >= v25)
                {

                  goto LABEL_47;
                }

                ++v31;
              }

              while (v28 != v31);
              v34 = [v26 countByEnumeratingWithState:&v79 objects:&v83 count:16];
              v28 = v34;
            }

            while (v34);
          }
        }
      }
    }
  }

  v35 = *(*(*(a1 + 56) + 8) + 40);
  if (v35 && [*(v35 + 56) count])
  {
    v36 = [*(v35 + 56) lastObject];
    if (v36)
    {
      [(DDScannerList *)v35 activateScanner:v36];
      [*(v35 + 56) removeLastObject];
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = *(*(a1 + 80) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v36;

  v39 = *(*(a1 + 80) + 8);
  v40 = *(v39 + 40);
  if (v40)
  {
    goto LABEL_67;
  }

  v41 = *(*(*(a1 + 56) + 8) + 40);
  if (v41)
  {
    v42 = [DDScannerObject alloc];
    v43 = *(v41 + 12);
    v44 = *(v41 + 8);
    v45 = *(v41 + 40);
    v46 = *(v41 + 32);
    v47 = *(v41 + 24);
    v48 = v46;
    if (!v42 || (v83.receiver = v42, v83.super_class = DDScannerObject, (v42 = objc_msgSendSuper2(&v83, sel_init)) == 0))
    {
LABEL_65:

      [(DDScannerList *)v41 activateScanner:v42];
      v39 = *(*(a1 + 80) + 8);
      v71 = *(v39 + 40);
      goto LABEL_66;
    }

    if (v47)
    {
      v74 = v45;
      v75 = v44;
      v49 = MEMORY[0x1E695DF58];
      v50 = [MEMORY[0x1E695DF58] currentLocale];
      v51 = [v50 localeIdentifier];
      v52 = [v49 componentsFromLocaleIdentifier:v51];
      v53 = [v52 mutableCopy];

      [v53 setObject:v47 forKeyedSubscript:*MEMORY[0x1E695D9B0]];
      if (v48)
      {
        [v53 setObject:v48 forKeyedSubscript:*MEMORY[0x1E695D978]];
      }

      v54 = MEMORY[0x1E695DF58];
      v55 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v53];
      v56 = [v54 localeWithLocaleIdentifier:v55];

      if (v56)
      {
        v44 = v75;
        if ((v74 & 1) == 0)
        {
          v57 = DDScannerCreateWithLocaleHint(v43, 0, v56, 0);
LABEL_59:
          v42->_scanner = v57;
          if (v57)
          {
            v42->_type = v43;
            v42->_hasBasicType = v43 < 2;
            if (v44)
            {
              v42->_hasBasicType = 0;
              v70 = *(v57 + 200);
              if ((v70 | 2) != v70)
              {
                *(v57 + 200) = v70 | 2;
                *(v57 + 136) = 0;
              }
            }
          }

          else
          {

            v56 = v42;
            v42 = 0;
          }

          goto LABEL_65;
        }
      }

      else
      {
        v44 = v75;
      }
    }

    else
    {
      v56 = 0;
    }

    v57 = DDScannerCreateWithLocale(v43, 0, v56, 0);
    goto LABEL_59;
  }

  v71 = 0;
  v42 = 0;
LABEL_66:
  *(v39 + 40) = v42;

  v40 = *(*(*(a1 + 80) + 8) + 40);
  if (v40)
  {
LABEL_67:
    *(v40 + 24) = *(*(*(a1 + 48) + 8) + 24);
  }

LABEL_68:
  v72 = *MEMORY[0x1E69E9840];
}

- (void)recycleScanner:(void *)a3 fromList:(int)a4 sameQueue:
{
  v6 = a2;
  v16 = a3;
  if (a1 && v6)
  {
    v7 = MEMORY[0x1E69E9820];
    while (1)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy_;
      v30 = __Block_byref_object_dispose_;
      v31 = 0;
      v8 = *(a1 + 8);
      block[0] = v7;
      block[1] = 3221225472;
      block[2] = __60__DDScanServerDispatcher_recycleScanner_fromList_sameQueue___block_invoke;
      block[3] = &unk_1E8001BD0;
      block[4] = a1;
      v9 = v16;
      v23 = v9;
      v25 = &v26;
      v10 = v6;
      v11 = v6;
      v24 = v11;
      dispatch_sync(v8, block);
      v12 = v27[5];
      if (!v12)
      {
        break;
      }

      if (!a4)
      {
        v14 = *(a1 + 16);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __60__DDScanServerDispatcher_recycleScanner_fromList_sameQueue___block_invoke_2;
        v17[3] = &unk_1E8001BD0;
        v21 = &v26;
        v18 = v11;
        v19 = a1;
        v20 = v9;
        dispatch_async(v14, v17);

        break;
      }

      v13 = *(v12 + 8);
      v13[2](v13, v11);

      _Block_object_dispose(&v26, 8);
      v6 = v10;
    }

    _Block_object_dispose(&v26, 8);
    v6 = v10;
  }
}

void __58__DDScanServerDispatcher_scannerConf_sync_string_runTask___block_invoke_3(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  v3 = *(*(a1[7] + 8) + 40);
  (*(a1[5] + 16))();
  v4 = a1[4];
  v5 = *(*(a1[6] + 8) + 40);
  v6 = *(*(a1[8] + 8) + 40);

  [(DDScanServerDispatcher *)v4 recycleScanner:v5 fromList:v6 sameQueue:1];
}

void __60__DDScanServerDispatcher_recycleScanner_fromList_sameQueue___block_invoke(void *a1)
{
  v1 = a1;
  if (*(a1[4] + 40) != 1 || (v2 = a1[5]) != 0 && (a1 = [*(v2 + 64) count], a1 == 1))
  {
    v3 = v1[5];
    if (v3)
    {
      v4 = [*(v3 + 48) lastObject];
      if (v4)
      {
        [*(v3 + 48) removeLastObject];
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(*(v1[7] + 8) + 40);
    if (v7)
    {
      v8 = v1[6];
      if (v8)
      {
        *(v8 + 24) = *(v7 + 16);
      }
    }
  }

  if (!*(*(v1[7] + 8) + 40))
  {
    v9 = v1[6];
    if (v9)
    {
      *(v9 + 24) = 0;
      v10 = v1[5];
      a1 = v1[6];
      v11 = a1;
      if (v10 && a1)
      {
        v22 = a1;
        v12 = [*(v10 + 56) count];
        if (!v12)
        {
          goto LABEL_22;
        }

        if (*(v22 + 20) == 1)
        {
          v13 = v12;
          v14 = [MEMORY[0x1E696AE30] processInfo];
          v15 = [v14 activeProcessorCount];

          v16 = [MEMORY[0x1E696AE30] processInfo];
          v17 = [v16 physicalMemory] >> 30;

          if (v15 >= v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v15;
          }

          if (v18 <= 1)
          {
            v18 = 1;
          }

          if (v13 < v18)
          {
LABEL_22:
            v19 = *(v10 + 56);
            if (v19)
            {
              [v19 addObject:v22];
            }

            else
            {
              v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v22, 0}];
              v21 = *(v10 + 56);
              *(v10 + 56) = v20;
            }
          }
        }

        a1 = [*(v10 + 64) removeObject:v22];
        v11 = v22;
      }
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1EEE66BB8](a1, v11);
  }
}

uint64_t __60__DDScanServerDispatcher_recycleScanner_fromList_sameQueue___block_invoke_2(void *a1)
{
  v2 = *(*(a1[7] + 8) + 40);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  (*(v3 + 16))(v3, a1[4]);
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];

  return [(DDScanServerDispatcher *)v4 recycleScanner:v5 fromList:v6 sameQueue:1];
}

void __58__DDScanServerDispatcher__scriptForEmbeddingFromLanguage___block_invoke()
{
  v0 = _scriptForEmbeddingFromLanguage__latinLanguages;
  _scriptForEmbeddingFromLanguage__latinLanguages = &unk_1F3B7DCA8;
}

uint64_t __41__DDScanServerDispatcher_emptyIdentifier__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 64) + 1;
  *(v1 + 64) = v2;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

@end