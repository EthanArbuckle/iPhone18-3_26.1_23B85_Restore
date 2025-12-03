@interface DKUtilities
+ (Class)diagnosticInputsClassAttribute;
+ (id)_fetchItemProviderFromItems:(id)items withError:(id *)error;
+ (id)_sharedParsingFailedError;
+ (id)acceptableDecoderClasses;
+ (id)extensionAttributes;
+ (id)inputsForDiagnostic:(id)diagnostic predicates:(id)predicates specifications:(id)specifications parameters:(id)parameters;
+ (id)inputsUsingClass:(Class)class diagnostic:(id)diagnostic predicates:(id)predicates specifications:(id)specifications parameters:(id)parameters;
+ (void)moveFilesToSharedContainerInMutableResult:(id)result;
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  if (!infoDictionary || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    goto LABEL_16;
  }

  v4 = @"NSExtension";
  v5 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];

  if (v5)
  {
    v6 = @"NSExtensionAttributes";
  }

  else
  {
    v4 = @"DKDiagnosticService";
    v8 = [infoDictionary objectForKeyedSubscript:@"DKDiagnosticService"];

    if (!v8)
    {
      v9 = 0;
LABEL_14:
      v7 = 0;
      goto LABEL_15;
    }

    v6 = @"DKDiagnosticServiceAttributes";
  }

  v9 = [infoDictionary objectForKeyedSubscript:v4];
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
  extensionAttributes = [self extensionAttributes];
  v3 = extensionAttributes;
  if (extensionAttributes)
  {
    v4 = [extensionAttributes objectForKeyedSubscript:@"DKDiagnosticInputsClass"];
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

+ (id)inputsForDiagnostic:(id)diagnostic predicates:(id)predicates specifications:(id)specifications parameters:(id)parameters
{
  parametersCopy = parameters;
  specificationsCopy = specifications;
  predicatesCopy = predicates;
  diagnosticCopy = diagnostic;
  v14 = [self inputsUsingClass:objc_msgSend(self diagnostic:"diagnosticInputsClassAttribute") predicates:diagnosticCopy specifications:predicatesCopy parameters:{specificationsCopy, parametersCopy}];

  return v14;
}

+ (id)inputsUsingClass:(Class)class diagnostic:(id)diagnostic predicates:(id)predicates specifications:(id)specifications parameters:(id)parameters
{
  diagnosticCopy = diagnostic;
  predicatesCopy = predicates;
  specificationsCopy = specifications;
  parametersCopy = parameters;
  if (class)
  {
    class = objc_opt_new();
    if (class)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![(objc_class *)class validateAndInitializePredicates:predicatesCopy])
      {
        v15 = &unk_285B928E8;
        goto LABEL_12;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && ![(objc_class *)class validateAndInitializeSpecifications:specificationsCopy])
      {
        v15 = &unk_285B92900;
        goto LABEL_12;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && ([(objc_class *)class validateAndInitializeParameters:parametersCopy]& 1) == 0)
      {
        v15 = &unk_285B92918;
LABEL_12:
        result = [diagnosticCopy result];
        [result setStatusCode:v15];

        [diagnosticCopy setFinished:1];
      }
    }
  }

  return class;
}

+ (void)moveFilesToSharedContainerInMutableResult:(id)result
{
  v52 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  files = [resultCopy files];
  if (files)
  {
    v5 = files;
    files2 = [resultCopy files];
    v7 = [files2 count];

    if (v7)
    {
      v38 = DKTemporaryDirectoryURL();
      files3 = [resultCopy files];
      v9 = [files3 copy];

      v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      files4 = [resultCopy files];
      v11 = [files4 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v11)
      {
        v12 = v11;
        v34 = v9;
        v35 = resultCopy;
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
              objc_enumerationMutation(files4);
            }

            v17 = *(*(&v41 + 1) + 8 * v16);
            path = [v17 path];
            path2 = [v38 path];
            v20 = [path hasPrefix:path2];

            if ((v20 & 1) == 0)
            {
              v21 = files4;
              lastPathComponent = [v17 lastPathComponent];
              v23 = [v38 URLByAppendingPathComponent:lastPathComponent];
              defaultManager = [*(v15 + 2560) defaultManager];
              v40 = 0;
              v25 = [defaultManager copyItemAtURL:v17 toURL:v23 error:&v40];
              v26 = v40;

              if (v25)
              {

                defaultManager2 = [*(v15 + 2560) defaultManager];
                v39 = 0;
                v28 = [defaultManager2 removeItemAtURL:v17 error:&v39];
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
              files4 = v21;
              v15 = 0x277CCA000;
              v12 = v37;
            }

            ++v16;
          }

          while (v12 != v16);
          v12 = [files4 countByEnumeratingWithState:&v41 objects:v51 count:16];
        }

        while (v12);

        v9 = v34;
        resultCopy = v35;
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

+ (id)_fetchItemProviderFromItems:(id)items withError:(id *)error
{
  itemsCopy = items;
  v7 = itemsCopy;
  if (!itemsCopy || ![itemsCopy count])
  {
    _sharedParsingFailedError = [self _sharedParsingFailedError];
    if (_sharedParsingFailedError)
    {
      v9 = _sharedParsingFailedError;
      firstObject = 0;
      goto LABEL_9;
    }
  }

  firstObject = [v7 firstObject];
  attachments = [firstObject attachments];
  if (!attachments || (v12 = attachments, [firstObject attachments], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, !v14))
  {
    _sharedParsingFailedError2 = [self _sharedParsingFailedError];
    if (_sharedParsingFailedError2)
    {
      v9 = _sharedParsingFailedError2;
LABEL_9:
      firstObject2 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  attachments2 = [firstObject attachments];
  firstObject2 = [attachments2 firstObject];

  v9 = 0;
  if (error)
  {
LABEL_10:
    v17 = v9;
    *error = v9;
  }

LABEL_11:

  return firstObject2;
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