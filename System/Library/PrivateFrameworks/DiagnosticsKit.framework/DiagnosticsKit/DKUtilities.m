@interface DKUtilities
+ (Class)diagnosticInputsClassAttribute;
+ (id)_fetchItemProviderFromItems:(id)a3 withError:(id *)a4;
+ (id)_sharedParsingFailedError;
+ (id)acceptableDecoderClasses;
+ (id)extensionAttributes;
+ (id)inputsForDiagnostic:(id)a3 predicates:(id)a4 specifications:(id)a5 parameters:(id)a6;
+ (id)inputsUsingClass:(Class)a3 diagnostic:(id)a4 predicates:(id)a5 specifications:(id)a6 parameters:(id)a7;
+ (void)moveFilesToSharedContainerInMutableResult:(id)a3;
@end

@implementation DKUtilities

+ (id)acceptableDecoderClasses
{
  if (acceptableDecoderClasses_onceToken != -1)
  {
    +[DKUtilities acceptableDecoderClasses];
  }

  v3 = acceptableDecoderClasses_singleton;

  return v3;
}

uint64_t __39__DKUtilities_acceptableDecoderClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  acceptableDecoderClasses_singleton = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)extensionAttributes
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 infoDictionary];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    goto LABEL_16;
  }

  v4 = @"NSExtension";
  v5 = [v3 objectForKeyedSubscript:@"NSExtension"];

  if (v5)
  {
    v6 = @"NSExtensionAttributes";
  }

  else
  {
    v4 = @"DKDiagnosticService";
    v8 = [v3 objectForKeyedSubscript:@"DKDiagnosticService"];

    if (!v8)
    {
      v9 = 0;
LABEL_14:
      v7 = 0;
      goto LABEL_15;
    }

    v6 = @"DKDiagnosticServiceAttributes";
  }

  v9 = [v3 objectForKeyedSubscript:v4];
  v8 = [v9 objectForKeyedSubscript:v6];
  if (!v9)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  v7 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v8)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = v8;
  v7 = v8;
LABEL_15:

LABEL_16:

  return v7;
}

+ (Class)diagnosticInputsClassAttribute
{
  v2 = [a1 extensionAttributes];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"DKDiagnosticInputsClass"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = NSClassFromString(v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)inputsForDiagnostic:(id)a3 predicates:(id)a4 specifications:(id)a5 parameters:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 inputsUsingClass:objc_msgSend(a1 diagnostic:"diagnosticInputsClassAttribute") predicates:v13 specifications:v12 parameters:{v11, v10}];

  return v14;
}

+ (id)inputsUsingClass:(Class)a3 diagnostic:(id)a4 predicates:(id)a5 specifications:(id)a6 parameters:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (a3)
  {
    a3 = objc_opt_new();
    if (a3)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![(objc_class *)a3 validateAndInitializePredicates:v12])
      {
        v15 = &unk_285B928E8;
        goto LABEL_12;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && ![(objc_class *)a3 validateAndInitializeSpecifications:v13])
      {
        v15 = &unk_285B92900;
        goto LABEL_12;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && ([(objc_class *)a3 validateAndInitializeParameters:v14]& 1) == 0)
      {
        v15 = &unk_285B92918;
LABEL_12:
        v16 = [v11 result];
        [v16 setStatusCode:v15];

        [v11 setFinished:1];
      }
    }
  }

  return a3;
}

+ (void)moveFilesToSharedContainerInMutableResult:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 files];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 files];
    v7 = [v6 count];

    if (v7)
    {
      v38 = DKTemporaryDirectoryURL();
      v8 = [v3 files];
      v9 = [v8 copy];

      v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v10 = [v3 files];
      v11 = [v10 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v11)
      {
        v12 = v11;
        v34 = v9;
        v35 = v3;
        v13 = 0;
        v14 = *v42;
        v15 = 0x277CCA000uLL;
        do
        {
          v16 = 0;
          v37 = v12;
          do
          {
            if (*v42 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v41 + 1) + 8 * v16);
            v18 = [v17 path];
            v19 = [v38 path];
            v20 = [v18 hasPrefix:v19];

            if ((v20 & 1) == 0)
            {
              v21 = v10;
              v22 = [v17 lastPathComponent];
              v23 = [v38 URLByAppendingPathComponent:v22];
              v24 = [*(v15 + 2560) defaultManager];
              v40 = 0;
              v25 = [v24 copyItemAtURL:v17 toURL:v23 error:&v40];
              v26 = v40;

              if (v25)
              {

                v27 = [*(v15 + 2560) defaultManager];
                v39 = 0;
                v28 = [v27 removeItemAtURL:v17 error:&v39];
                v26 = v39;

                if ((v28 & 1) == 0)
                {
                  v29 = DiagnosticsKitLogHandleForCategory(2);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v46 = v17;
                    v47 = 2112;
                    v48 = v26;
                    _os_log_error_impl(&dword_248B9D000, v29, OS_LOG_TYPE_ERROR, "Could not delete file at [%@]: %@", buf, 0x16u);
                  }
                }

                v30 = DiagnosticsKitLogHandleForCategory(2);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v46 = v17;
                  v47 = 2112;
                  v48 = v23;
                  _os_log_impl(&dword_248B9D000, v30, OS_LOG_TYPE_DEFAULT, "Moved file at [%@] to [%@].", buf, 0x16u);
                }

                [v36 addObject:v23];
              }

              else
              {
                v31 = DiagnosticsKitLogHandleForCategory(2);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  v46 = v17;
                  v47 = 2112;
                  v48 = v23;
                  v49 = 2112;
                  v50 = v26;
                  _os_log_error_impl(&dword_248B9D000, v31, OS_LOG_TYPE_ERROR, "Could not copy file from [%@] to [%@]: %@", buf, 0x20u);
                }
              }

              v13 = 1;
              v10 = v21;
              v15 = 0x277CCA000;
              v12 = v37;
            }

            ++v16;
          }

          while (v12 != v16);
          v12 = [v10 countByEnumeratingWithState:&v41 objects:v51 count:16];
        }

        while (v12);

        v9 = v34;
        v3 = v35;
        if (v13)
        {
          v32 = [v36 copy];
          [v35 setFiles:v32];
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
      }

      v32 = DiagnosticsKitLogHandleForCategory(2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248B9D000, v32, OS_LOG_TYPE_DEFAULT, "Files already in shared container. Leaving unchanged.", buf, 2u);
      }

      goto LABEL_28;
    }
  }

LABEL_29:

  v33 = *MEMORY[0x277D85DE8];
}

+ (id)_fetchItemProviderFromItems:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v8 = [a1 _sharedParsingFailedError];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      goto LABEL_9;
    }
  }

  v10 = [v7 firstObject];
  v11 = [v10 attachments];
  if (!v11 || (v12 = v11, [v10 attachments], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, !v14))
  {
    v15 = [a1 _sharedParsingFailedError];
    if (v15)
    {
      v9 = v15;
LABEL_9:
      v16 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v19 = [v10 attachments];
  v16 = [v19 firstObject];

  v9 = 0;
  if (a4)
  {
LABEL_10:
    v17 = v9;
    *a4 = v9;
  }

LABEL_11:

  return v16;
}

+ (id)_sharedParsingFailedError
{
  if (_sharedParsingFailedError_onceToken != -1)
  {
    +[DKUtilities _sharedParsingFailedError];
  }

  v3 = _sharedParsingFailedError_singleton;

  return v3;
}

void __40__DKUtilities__sharedParsingFailedError__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v1 = DKErrorLocalizedDescriptionForCode(-1004);
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 errorWithDomain:@"DKErrorDomain" code:-1004 userInfo:v2];
  v4 = _sharedParsingFailedError_singleton;
  _sharedParsingFailedError_singleton = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end