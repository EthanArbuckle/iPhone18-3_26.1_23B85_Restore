@interface DDScannerObject
- (id)scanString:(uint64_t)a3 range:(uint64_t)a4 query:(void *)a5 configuration:(void *)a6 completionBlock:(void *)a7;
- (void)dealloc;
@end

@implementation DDScannerObject

- (void)dealloc
{
  scanner = self->_scanner;
  if (scanner)
  {
    CFRelease(scanner);
  }

  v4.receiver = self;
  v4.super_class = DDScannerObject;
  [(DDScannerObject *)&v4 dealloc];
}

- (id)scanString:(uint64_t)a3 range:(uint64_t)a4 query:(void *)a5 configuration:(void *)a6 completionBlock:(void *)a7
{
  v13 = a2;
  v14 = a6;
  v15 = a7;
  if (!a1)
  {
    v37 = 0;
    goto LABEL_22;
  }

  v16 = [v14 remoteScannerEnabled];
  if (!a5 && v16)
  {
    v42 = a4;
    v17 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3B81BA8];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    [v17 setClasses:v20 forSelector:sel_scanString_range_configuration_withReply_ argumentIndex:0 ofReply:1];

    v21 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.internal.DataDetectorsRemoteScanner"];
    objc_storeStrong((a1 + 32), v21);
    [*(a1 + 32) setRemoteObjectInterface:v17];
    [*(a1 + 32) resume];
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy_;
    v56 = __Block_byref_object_dispose_;
    v57 = MEMORY[0x1E695E0F0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__DDScannerObject_scanString_range_query_configuration_completionBlock___block_invoke;
    aBlock[3] = &unk_1E8001AE0;
    v51 = v15 != 0;
    v22 = v15;
    v50 = v22;
    v23 = v21;
    v49 = v23;
    v24 = _Block_copy(aBlock);
    v25 = *(a1 + 32);
    if (v15)
    {
      [v25 remoteObjectProxyWithErrorHandler:v24];
    }

    else
    {
      [v25 synchronousRemoteObjectProxyWithErrorHandler:v24];
    }
    v38 = ;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __72__DDScannerObject_scanString_range_query_configuration_completionBlock___block_invoke_2;
    v43[3] = &unk_1E8001B08;
    v47 = v15 != 0;
    v45 = v22;
    v46 = &v52;
    v39 = v23;
    v44 = v39;
    [v38 scanString:v13 range:a3 configuration:v42 withReply:{v14, v43}];
    v37 = v53[5];

    _Block_object_dispose(&v52, 8);
    goto LABEL_22;
  }

  DDScannerSetOptions(*(a1 + 8), [v14 scannerOptions]);
  v26 = *(a1 + 8);
  [v14 timeout];
  *(v26 + 224) = v27;
  v28 = *(a1 + 8);
  v29 = [v14 mockMLResults];
  DDScannerSetMockMLResults(v28, v29);

  v30 = *(a1 + 8);
  v31 = [v14 supportedMLResults];
  DDScannerSetMLSupportedTypes(v30, v31);

  v32 = *(a1 + 8);
  v33 = [v14 qos];
  if (DDScannerSetQOS_onceToken != -1)
  {
    dispatch_once(&DDScannerSetQOS_onceToken, &__block_literal_global_327);
  }

  if (!DDScannerSetQOS_inWebProcess)
  {
    *(v32 + 248) = v33;
  }

  v34 = *(a1 + 8);
  *(v34 + 252) = [v14 script];
  v35 = *(a1 + 8);
  if (v13)
  {
    if (!DDScannerScanStringWithRangeAndContextOffset(v35, v13, a3, a4, 0))
    {
LABEL_18:
      v37 = MEMORY[0x1E695E0F0];
      if (v15)
      {
        (*(v15 + 2))(v15, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_22;
    }
  }

  else if (!DDScannerScanQuery(v35, a5))
  {
    goto LABEL_18;
  }

  v36 = DDScannerCopyResultsWithOptions(*(a1 + 8), [v14 resultsOptions]);
  if (!v36)
  {
    goto LABEL_18;
  }

  v37 = v36;
  if ([v14 noObjC])
  {
    if (v15)
    {
      (*(v15 + 2))(v15, v37);
    }
  }

  else
  {
    v41 = [DDScannerResult resultsFromCoreResults:v37];
    CFRelease(v37);
    if (v15)
    {
      (*(v15 + 2))(v15, v41);
    }

    v37 = v41;
  }

LABEL_22:

  return v37;
}

uint64_t __72__DDScannerObject_scanString_range_query_configuration_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  DDError(@"error getting remote handler: %@", a2);
  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void __72__DDScannerObject_scanString_range_query_configuration_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 56) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 32) invalidate];
}

@end