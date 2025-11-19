@interface SFSearchResult(VisualCat)
- (uint64_t)processVisualCATResultSynchronously;
- (void)processVisualCATResultSynchronouslyUsingPatternClass:()VisualCat;
@end

@implementation SFSearchResult(VisualCat)

- (void)processVisualCATResultSynchronouslyUsingPatternClass:()VisualCat
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a1 card];
    v5 = [v4 cardSections];
    if ([v5 count])
    {
    }

    else
    {
      v7 = [a1 inlineCard];
      v8 = [v7 cardSections];
      v9 = [v8 count];

      if (!v9)
      {
        goto LABEL_77;
      }
    }

    v10 = [a1 card];
    v11 = [v10 cardSections];
    v12 = v11;
    if (!v11)
    {
      v12 = [MEMORY[0x1E695DEC8] array];
    }

    v13 = [a1 inlineCard];
    v14 = [v13 cardSections];
    if (v14)
    {
      v15 = [v12 arrayByAddingObjectsFromArray:v14];
    }

    else
    {
      v16 = [MEMORY[0x1E695DEC8] array];
      v15 = [v12 arrayByAddingObjectsFromArray:v16];
    }

    if (!v11)
    {
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v15;
    v55 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v55)
    {
      v54 = *v64;
      do
      {
        v17 = 0;
        do
        {
          if (*v64 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v63 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v56 = v18;
            ptr = [v56 pattern_model];
            v19 = [ptr pattern_template_directory];
            if (v19)
            {
              goto LABEL_31;
            }

            v67 = 0;
            v68 = &v67;
            v69 = 0x2050000000;
            v20 = getDEExecutorClass_softClass;
            v70 = getDEExecutorClass_softClass;
            if (!getDEExecutorClass_softClass)
            {
              *&buf = MEMORY[0x1E69E9820];
              *(&buf + 1) = 3221225472;
              v75 = __getDEExecutorClass_block_invoke;
              v76 = &unk_1E7AC5EA0;
              v77 = &v67;
              __getDEExecutorClass_block_invoke(&buf);
              v20 = v68[3];
            }

            v21 = v20;
            _Block_object_dispose(&v67, 8);
            v22 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Assistant/FlowDelegatePlugins/InformationFlowPlugin.bundle"];
            if (PARLogHandleForCategory_onceToken_23 != -1)
            {
              dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
            }

            v23 = PARLogHandleForCategory_logHandles_4_25;
            if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v22;
              _os_log_debug_impl(&dword_1B1064000, v23, OS_LOG_TYPE_DEBUG, "Falling back to default template path from bundle %@.", &buf, 0xCu);
            }

            v19 = [v20 bundleTemplateDir:v22];
            if (v19)
            {

LABEL_31:
              v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19 isDirectory:1];
              v25 = v24;
              if (v24)
              {
                v52 = v24;
                if (PARLogHandleForCategory_onceToken_23 != -1)
                {
                  dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                }

                v26 = PARLogHandleForCategory_logHandles_4_25;
                if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v19;
                  _os_log_debug_impl(&dword_1B1064000, v26, OS_LOG_TYPE_DEBUG, "Processing response wrapper section with template path %@.", &buf, 0xCu);
                }

                v53 = [ptr pattern_parameters];
                if (v53)
                {
                  v62 = 0;
                  v27 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v53 options:0 error:&v62];
                  v28 = v62;
                  if (!v28 && v27)
                  {
                    v51 = v27;
                    goto LABEL_45;
                  }

                  if (PARLogHandleForCategory_onceToken_23 != -1)
                  {
                    dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                  }

                  v43 = PARLogHandleForCategory_logHandles_4_25;
                  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
                  {
                    v45 = v43;
                    v46 = [v28 localizedDescription];
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v46;
                    _os_log_error_impl(&dword_1B1064000, v45, OS_LOG_TYPE_ERROR, "Error decoding JSON params: %@", &buf, 0xCu);
                  }

                  v51 = MEMORY[0x1E695E0F8];
                }

                else
                {
                  v51 = MEMORY[0x1E695E0F8];
LABEL_45:
                  v30 = dispatch_group_create();
                  dispatch_group_enter(v30);
                  if (PARLogHandleForCategory_onceToken_23 != -1)
                  {
                    dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                  }

                  v31 = os_signpost_id_make_with_pointer(PARLogHandleForCategory_logHandles_4_25, ptr);
                  if (PARLogHandleForCategory_onceToken_23 != -1)
                  {
                    dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                  }

                  v32 = PARLogHandleForCategory_logHandles_4_25;
                  v33 = v32;
                  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
                  {
                    LOWORD(buf) = 0;
                    _os_signpost_emit_with_name_impl(&dword_1B1064000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "execute", "", &buf, 2u);
                  }

                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __82__SFSearchResult_VisualCat__processVisualCATResultSynchronouslyUsingPatternClass___block_invoke;
                  aBlock[3] = &unk_1E7AC5E78;
                  v61 = v31;
                  v28 = v30;
                  v59 = v28;
                  v60 = v56;
                  v34 = _Block_copy(aBlock);
                  v35 = [ptr pattern_id];
                  v36 = v35;
                  if (v35)
                  {
                    v37 = v35;
                  }

                  else
                  {
                    v37 = &stru_1F277AB70;
                  }

                  v71 = @"locale";
                  v38 = [MEMORY[0x1E695DF58] currentLocale];
                  v39 = [v38 languageCode];
                  v72 = v39;
                  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
                  [a3 execute:0 templateDir:v52 patternId:v37 parameters:v51 globals:v40 options:0 completion:v34];

                  v41 = dispatch_time(0, 1000000000);
                  if (dispatch_group_wait(v28, v41))
                  {
                    if (PARLogHandleForCategory_onceToken_23 != -1)
                    {
                      dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                    }

                    v42 = PARLogHandleForCategory_logHandles_4_25;
                    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(buf) = 0;
                      _os_log_error_impl(&dword_1B1064000, v42, OS_LOG_TYPE_ERROR, "Timed out waiting for VisualCAT rendering to complete.", &buf, 2u);
                    }
                  }

                  v27 = v59;
                }
              }

              else
              {
                if (PARLogHandleForCategory_onceToken_23 != -1)
                {
                  dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
                }

                v29 = PARLogHandleForCategory_logHandles_4_25;
                if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_error_impl(&dword_1B1064000, v29, OS_LOG_TYPE_ERROR, "Unable to locate template path.", &buf, 2u);
                }
              }

              v22 = v19;
            }

            else
            {
              if (PARLogHandleForCategory_onceToken_23 != -1)
              {
                dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
              }

              v44 = PARLogHandleForCategory_logHandles_4_25;
              if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf) = 0;
                _os_log_error_impl(&dword_1B1064000, v44, OS_LOG_TYPE_ERROR, "Couldn't find path to fallback template.", &buf, 2u);
              }
            }
          }

          ++v17;
        }

        while (v55 != v17);
        v47 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
        v55 = v47;
      }

      while (v47);
    }
  }

  else
  {
    if (PARLogHandleForCategory_onceToken_23 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
    }

    v6 = PARLogHandleForCategory_logHandles_4_25;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1B1064000, v6, OS_LOG_TYPE_ERROR, "Failed to dynamically load the DialogEngine framework.", &buf, 2u);
    }
  }

LABEL_77:
  v48 = *MEMORY[0x1E69E9840];
}

- (uint64_t)processVisualCATResultSynchronously
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2050000000;
    v3 = getCATPatternClass_softClass;
    v9 = getCATPatternClass_softClass;
    if (!getCATPatternClass_softClass)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __getCATPatternClass_block_invoke;
      v5[3] = &unk_1E7AC5EA0;
      v5[4] = &v6;
      __getCATPatternClass_block_invoke(v5);
      v3 = v7[3];
    }

    v4 = v3;
    _Block_object_dispose(&v6, 8);
    return [a1 processVisualCATResultSynchronouslyUsingPatternClass:v3];
  }

  return result;
}

@end