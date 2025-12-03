@interface PKDiagnostics
+ (id)_allPasses;
+ (id)_flightSubscriptions;
+ (id)_metadataForCardAtURL:(id)l;
+ (id)_recentFlights;
+ (id)_secureElementData;
+ (id)generateUbiquityDiagnosticsFile:(BOOL)file;
+ (void)_createDiagnosticJsonWithDictionary:(id)dictionary hasLibrary:(BOOL)library completion:(id)completion;
+ (void)generateDiagnosticsPackageWithPassLibrary:(BOOL)library completion:(id)completion;
+ (void)generateZippedDiagnosticsPackageWithPassLibrary:(BOOL)library completion:(id)completion;
+ (void)saveTransitState:(id)state forPaymentApplication:(id)application;
@end

@implementation PKDiagnostics

+ (void)generateDiagnosticsPackageWithPassLibrary:(BOOL)library completion:(id)completion
{
  completionCopy = completion;
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke;
  v8[3] = &unk_1E79C4748;
  libraryCopy = library;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:&unk_1F23B5228 forKey:@"diagnosticsVersion"];
  if (*(a1 + 40) == 1)
  {
    v3 = +[PKDiagnostics _allPasses];
    [v2 setObject:v3 forKey:@"passes"];
  }

  if (PKSecureElementIsAvailable())
  {
    v4 = +[PKDiagnostics _secureElementData];
    [v2 setObject:v4 forKey:@"secureElement"];
  }

  v5 = PKCurrentRegion();
  [v2 setObject:v5 forKey:@"PKCurrentRegion"];

  v6 = +[PKDiagnostics _recentFlights];
  if ([v6 count])
  {
    [v2 setObject:v6 forKey:@"flights"];
  }

  v7 = +[PKDiagnostics _flightSubscriptions];
  if ([v7 count])
  {
    [v2 setObject:v7 forKey:@"flightSubscriptions"];
  }

  v8 = +[PKPaymentService paymentService];
  v9 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_53;
  v34[3] = &unk_1E79D5CF0;
  v10 = v2;
  v35 = v10;
  [(PKAsyncUnaryOperationComposer *)v9 addOperation:v34];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_3;
  v31[3] = &unk_1E79D6768;
  v11 = v8;
  v32 = v11;
  v12 = v10;
  v33 = v12;
  [(PKAsyncUnaryOperationComposer *)v9 addOperation:v31];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_5;
  v29[3] = &unk_1E79D5CF0;
  v13 = v12;
  v30 = v13;
  [(PKAsyncUnaryOperationComposer *)v9 addOperation:v29];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_7;
  v26[3] = &unk_1E79D6768;
  v27 = v11;
  v14 = v13;
  v28 = v14;
  v15 = v11;
  [(PKAsyncUnaryOperationComposer *)v9 addOperation:v26];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_9;
  v24[3] = &unk_1E79D5CF0;
  v16 = v14;
  v25 = v16;
  [(PKAsyncUnaryOperationComposer *)v9 addOperation:v24];
  v17 = [MEMORY[0x1E695DFB0] null];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_12;
  v20[3] = &unk_1E79DA528;
  v21 = v16;
  v23 = *(a1 + 40);
  v22 = *(a1 + 32);
  v18 = v16;
  v19 = [(PKAsyncUnaryOperationComposer *)v9 evaluateWithInput:v17 completion:v20];
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_53(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = +[PKAccountService sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_2;
  v14[3] = &unk_1E79DA438;
  v15 = v8;
  v10 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  v16 = v10;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v9 accountsWithCompletion:v14];
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = [v7 accountIdentifier];
        if (v9)
        {
          [v8 setObject:v9 forKeyedSubscript:@"identifier"];
        }

        else
        {
          v10 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v10 forKeyedSubscript:@"identifier"];
        }

        v11 = PKFeatureIdentifierToString([v7 feature]);
        if (v11)
        {
          [v8 setObject:v11 forKeyedSubscript:@"feature"];
        }

        else
        {
          v12 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v12 forKeyedSubscript:@"feature"];
        }

        v13 = PKAccountTypeToString([v7 type]);
        if (v13)
        {
          [v8 setObject:v13 forKeyedSubscript:@"type"];
        }

        else
        {
          v14 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v14 forKeyedSubscript:@"type"];
        }

        v15 = PKAccountStateToString([v7 state]);
        if (v15)
        {
          [v8 setObject:v15 forKeyedSubscript:@"state"];
        }

        else
        {
          v16 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v16 forKeyedSubscript:@"state"];
        }

        v17 = [v7 accountBaseURL];
        v18 = [v17 absoluteString];
        if (v18)
        {
          [v8 setObject:v18 forKeyedSubscript:@"accountBaseURL"];
        }

        else
        {
          v19 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v19 forKeyedSubscript:@"accountBaseURL"];
        }

        [*(a1 + 32) addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) setObject:*(a1 + 32) forKey:@"accounts"];
  (*(*(a1 + 56) + 16))();
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_4;
  v14[3] = &unk_1E79DA460;
  v15 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v17 = v6;
  v18 = v7;
  v16 = v10;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v9 featureApplicationsWithCompletion:v14];
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = [v7 applicationIdentifier];
        if (v9)
        {
          [v8 setObject:v9 forKeyedSubscript:@"identifier"];
        }

        else
        {
          v10 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v10 forKeyedSubscript:@"identifier"];
        }

        v11 = PKFeatureIdentifierToString([v7 feature]);
        if (v11)
        {
          [v8 setObject:v11 forKeyedSubscript:@"feature"];
        }

        else
        {
          v12 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v12 forKeyedSubscript:@"feature"];
        }

        v13 = PKFeatureApplicationStateToString([v7 applicationState]);
        if (v13)
        {
          [v8 setObject:v13 forKeyedSubscript:@"state"];
        }

        else
        {
          v14 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v14 forKeyedSubscript:@"state"];
        }

        v15 = PKFeatureApplicationStateReasonToString([v7 applicationStateReason]);
        if (v15)
        {
          [v8 setObject:v15 forKeyedSubscript:@"stateReason"];
        }

        else
        {
          v16 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v16 forKeyedSubscript:@"stateReason"];
        }

        if ([v7 applicationStateReason])
        {
          v17 = MEMORY[0x1E695E118];
        }

        else
        {
          v17 = MEMORY[0x1E695E110];
        }

        [v8 setObject:v17 forKeyedSubscript:@"stateDirty"];
        v18 = [v7 coreIDVServiceProviderName];
        if (v18)
        {
          [v8 setObject:v18 forKeyedSubscript:@"coreIDVServiceProviderName"];
        }

        else
        {
          v19 = [MEMORY[0x1E695DFB0] null];
          [v8 setObject:v19 forKeyedSubscript:@"coreIDVServiceProviderName"];
        }

        [*(a1 + 32) addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) setObject:*(a1 + 32) forKey:@"applications"];
  (*(*(a1 + 56) + 16))();
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[PKPassLibrary sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_6;
  v12[3] = &unk_1E79DA488;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v7;
  [v8 spotlightStatusWithCompletion:v12];
}

uint64_t __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_6(uint64_t a1, __CFString *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = @"Error retrieving diagnostics";
  }

  [v3 setObject:v4 forKey:@"spotlight"];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_8;
  v12[3] = &unk_1E79DA4B0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v7;
  [v8 generateUnderlyingKeyReportWithCompletion:v12];
}

uint64_t __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_8(uint64_t a1, __CFString *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = @"Error retrieving diagnostics";
  }

  [v3 setObject:v4 forKey:@"underlyingKeys"];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_9(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PKSearchService);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_10;
  v13[3] = &unk_1E79DA500;
  v14 = v8;
  v9 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  v15 = v9;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  [(PKSearchService *)v12 transactionsMissingRegionsWithCompletion:v13];
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_11;
    v7[3] = &unk_1E79DA4D8;
    v8 = v5;
    v6 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    [*(a1 + 40) setObject:v6 forKey:@"transactionsMissingRegions"];
  }

  (*(*(a1 + 56) + 16))();
}

void __70__PKDiagnostics_generateDiagnosticsPackageWithPassLibrary_completion___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 description];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

+ (void)generateZippedDiagnosticsPackageWithPassLibrary:(BOOL)library completion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PKDiagnostics_generateZippedDiagnosticsPackageWithPassLibrary_completion___block_invoke;
  v7[3] = &unk_1E79DA550;
  v8 = completionCopy;
  v6 = completionCopy;
  [PKDiagnostics generateDiagnosticsPackageWithPassLibrary:libraryCopy completion:v7];
}

void __76__PKDiagnostics_generateZippedDiagnosticsPackageWithPassLibrary_completion___block_invoke(uint64_t a1, NSURL *a2)
{
  if (a2)
  {
    v14 = PKArchiverZipData(a2);
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSince1970];
    v6 = [v3 stringWithFormat:@"WalletDiagnostics-%f.zip", v5];

    v7 = PKLibraryDirectoryPath();
    v8 = [v7 stringByAppendingPathComponent:@"Logs/CrashReporter/DiagnosticLogs/Wallet"];

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

    v10 = [v8 stringByAppendingPathComponent:v6];
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    [v11 createFileAtPath:v10 contents:v14 attributes:0];

    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
    (*(v12 + 16))(v12, v13);
  }
}

+ (id)generateUbiquityDiagnosticsFile:(BOOL)file
{
  v36 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager URLForUbiquityContainerIdentifier:@"com.apple.shoebox"];
  if (!v5)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Could not resolve ubiquity container. This may be a bug.", buf, 2u);
    }
  }

  v7 = [v5 URLByAppendingPathComponent:@"UbiquitousCards"];

  if (v7)
  {
    path = [v7 path];
    v9 = [defaultManager contentsOfDirectoryAtPath:path error:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if ([v16 hasSuffix:@".pkpass"])
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  v17 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v10 count])
  {
    [v17 appendString:@"\n-------\n\n"];
    [v17 appendFormat:@"Passes count: %lu \n", objc_msgSend(v10, "count")];
    path2 = [v7 path];
    [v17 appendFormat:@"Passes path: %@ \n", path2];

    [v17 appendString:@"\n-------\n\n"];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__PKDiagnostics_generateUbiquityDiagnosticsFile___block_invoke;
    v25[3] = &unk_1E79DA578;
    v26 = v17;
    v27 = v7;
    selfCopy = self;
    fileCopy = file;
    [v10 enumerateObjectsUsingBlock:v25];
  }

  else
  {
    [v17 appendString:@"No passes"];
  }

  v19 = NSTemporaryDirectory();
  v20 = [v19 stringByAppendingPathComponent:@"wallet_ubiquity.txt"];

  v21 = [v17 dataUsingEncoding:4];
  [defaultManager createFileAtPath:v20 contents:v21 attributes:0];

  v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20];

  return v22;
}

void __49__PKDiagnostics_generateUbiquityDiagnosticsFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 appendFormat:@"%@ \n", v4];
  v17 = [*(a1 + 40) URLByAppendingPathComponent:v4];

  v5 = [*(a1 + 48) _metadataForCardAtURL:v17];
  v6 = v5;
  v7 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v8 = [v5 debugDescription];
    [v7 appendFormat:@"\t %@ \n", v8];
  }

  else
  {
    v9 = [v5 objectForKey:@"serialNumber"];
    [v7 appendFormat:@"\t Serial Number: %@ \n", v9];

    v10 = *(a1 + 32);
    v11 = [v6 objectForKey:@"passTypeIdentifier"];
    [v10 appendFormat:@"\t Path Type Identifier: %@ \n", v11];

    v12 = *(a1 + 32);
    v13 = [v6 objectForKey:@"description"];
    [v12 appendFormat:@"\t Description: %@ \n", v13];

    v14 = *(a1 + 32);
    v15 = [v6 objectForKey:@"organizationName"];
    [v14 appendFormat:@"\t Organization Name: %@ \n", v15];

    v16 = *(a1 + 32);
    v8 = [v6 objectForKey:@"expirationDate"];
    [v16 appendFormat:@"\t Expiration Date: %@ \n", v8];
  }

  [*(a1 + 32) appendString:@"\n"];
}

+ (id)_secureElementData
{
  v36 = *MEMORY[0x1E69E9840];
  v19 = +[PKSecureElement sharedSecureElement];
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  secureElementIdentifiers = [v19 secureElementIdentifiers];
  [v18 setObject:secureElementIdentifiers forKey:@"seid"];

  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v19, "isProductionSigned")}];
  [v18 setObject:v3 forKey:@"prodSigned"];

  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v19, "isInRestrictedMode")}];
  [v18 setObject:v4 forKey:@"restrictedMode"];

  primaryRegionTopic = [v19 primaryRegionTopic];
  [v18 setObject:primaryRegionTopic forKey:@"primaryRegionTopic"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__50;
  v31 = __Block_byref_object_dispose__50;
  v32 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __35__PKDiagnostics__secureElementData__block_invoke;
  v24[3] = &unk_1E79C9C40;
  v26 = &v27;
  dsema = v7;
  v25 = dsema;
  [v19 allAppletsWithCompletion:v24];
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v28[5];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v35 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v33 = @"state";
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "lifecycleState")}];
        v34 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        identifier = [v12 identifier];
        [v6 setObject:v14 forKey:identifier];
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v35 count:16];
    }

    while (v9);
  }

  [v18 setObject:v6 forKey:@"applets"];
  _Block_object_dispose(&v27, 8);

  return v18;
}

void __35__PKDiagnostics__secureElementData__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_allPasses
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = PKHomeDirectoryPath();
  v4 = [v3 stringByAppendingPathComponent:@"Cards"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager contentsOfDirectoryAtPath:v4 error:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        pathExtension = [v12 pathExtension];
        v14 = [pathExtension isEqualToString:@"pkpass"];

        if (v14)
        {
          v15 = [v4 stringByAppendingPathComponent:v12];
          v16 = [v15 stringByAppendingPathComponent:@"pass.json"];

          v17 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v16];
          v18 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v17 options:0 error:0];
          [v2 addObject:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v2;
}

+ (id)_recentFlights
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = [v2 dateByAddingTimeInterval:-172800.0];

  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [v4 dateByAddingTimeInterval:172800.0];

  v6 = +[PKPassLibrary sharedInstance];
  v7 = [v6 flightsWithScheduledDepartureFromStartDate:v3 endDate:v5];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        asDictionary = [*(*(&v16 + 1) + 8 * i) asDictionary];
        [v8 addObject:asDictionary];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)_flightSubscriptions
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[PKPassLibrary sharedInstance];
  flightSubscriptions = [v2 flightSubscriptions];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = flightSubscriptions;
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

        asDictionary = [*(*(&v12 + 1) + 8 * i) asDictionary];
        [v4 addObject:asDictionary];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)_metadataForCardAtURL:(id)l
{
  v3 = MEMORY[0x1E696AC08];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  v6 = [lCopy URLByAppendingPathComponent:@"pass.json" isDirectory:0];

  path = [v6 path];

  if ([defaultManager fileExistsAtPath:path isDirectory:0] && (v8 = objc_msgSend(objc_alloc(MEMORY[0x1E695DEF0]), "initWithContentsOfFile:", path)) != 0)
  {
    v9 = v8;
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:4 error:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)saveTransitState:(id)state forPaymentApplication:(id)application
{
  stateCopy = state;
  applicationCopy = application;
  date = [MEMORY[0x1E695DF00] date];
  v8 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKDiagnostics_saveTransitState_forPaymentApplication___block_invoke;
  block[3] = &unk_1E79C4E00;
  v13 = stateCopy;
  v14 = applicationCopy;
  v15 = date;
  v9 = date;
  v10 = applicationCopy;
  v11 = stateCopy;
  dispatch_async(v8, block);
}

void __56__PKDiagnostics_saveTransitState_forPaymentApplication___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v15 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v15];
  v4 = v15;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v5 setLocale:v6];

    [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    v7 = PKPaymentNetworkNameForPaymentCredentialType([*(a1 + 40) paymentNetworkIdentifier]);
    v8 = v7;
    if (v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__PKDiagnostics_saveTransitState_forPaymentApplication___block_invoke_2;
      v9[3] = &unk_1E79DA5A0;
      v10 = v7;
      v11 = *(a1 + 40);
      v12 = v5;
      v13 = *(a1 + 48);
      v14 = v3;
      PKSharedCacheCreateDirectory(&unk_1F23B4040, v9);
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Unable to archive transit state. Error %@", buf, 0xCu);
    }
  }
}

void __56__PKDiagnostics_saveTransitState_forPaymentApplication___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) applicationIdentifier];
    v6 = [*(a1 + 48) stringFromDate:*(a1 + 56)];
    v7 = [v3 stringWithFormat:@"%@_%@_%@.state", v4, v5, v6];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PKDiagnostics_saveTransitState_forPaymentApplication___block_invoke_3;
    v8[3] = &unk_1E79C8898;
    v9 = *(a1 + 64);
    PKSharedCacheCreateFileURLForWriting(&unk_1F23B4058, v7, v8);
  }
}

void __56__PKDiagnostics_saveTransitState_forPaymentApplication___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  [v4 createFileAtPath:v5 contents:*(a1 + 32) attributes:0];

  v6 = PKLogFacilityTypeGetObject(0xDuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Saved transit state to %@", &v7, 0xCu);
  }
}

+ (void)_createDiagnosticJsonWithDictionary:(id)dictionary hasLibrary:(BOOL)library completion:(id)completion
{
  libraryCopy = library;
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E695DF00];
  completionCopy = completion;
  dictionaryCopy = dictionary;
  date = [v8 date];
  [date timeIntervalSince1970];
  v24 = [v7 stringWithFormat:@"WalletDiagnostics-%f", v12];

  v13 = NSTemporaryDirectory();
  v14 = [v13 stringByAppendingPathComponent:v24];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:0];

  v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryCopy options:1 error:0];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = [v14 stringByAppendingPathComponent:@"diagnostics.json"];
  [defaultManager2 createFileAtPath:v18 contents:v16 attributes:0];

  if (libraryCopy)
  {
    v19 = PKHomeDirectoryPath();
    v20 = [v19 stringByAppendingPathComponent:@"passes23.sqlite"];

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v22 = [v14 stringByAppendingPathComponent:@"passes.sqlite"];
    [defaultManager3 copyItemAtPath:v20 toPath:v22 error:0];
  }

  v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
  completionCopy[2](completionCopy, v23);
}

@end