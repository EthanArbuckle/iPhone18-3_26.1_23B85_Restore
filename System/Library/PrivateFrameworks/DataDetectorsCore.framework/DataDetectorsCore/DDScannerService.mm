@interface DDScannerService
+ (id)scanQuery:(__DDScanQuery *)a3 configuration:(id)a4;
+ (id)scanString:(id)a3 range:(_NSRange)a4 configuration:(id)a5;
+ (int64_t)scanQuery:(__DDScanQuery *)a3 configuration:(id)a4 completionBlock:(id)a5;
+ (int64_t)scanString:(id)a3 range:(_NSRange)a4 configuration:(id)a5 completionBlock:(id)a6;
+ (void)appendWatchOSLinksToString:(id)a3;
+ (void)cancelJob:(int64_t)a3;
@end

@implementation DDScannerService

+ (void)cancelJob:(int64_t)a3
{
  if (a3 >= 1)
  {
    block[8] = v3;
    v11 = v4;
    v6 = _getSharedDispatcher();
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__DDScanServerDispatcher_cancelJob___block_invoke;
      block[3] = &unk_1E8001BA8;
      block[4] = v7;
      block[5] = a3;
      v9 = v7;
      dispatch_async(v8, block);
      v7 = v9;
    }

    MEMORY[0x1EEE66BB8](v6, v7);
  }
}

+ (int64_t)scanQuery:(__DDScanQuery *)a3 configuration:(id)a4 completionBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _getSharedDispatcher();
  v10 = [v7 completionQueue];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(DDScanServerDispatcher *)v9 reportQueue];
  }

  v13 = v12;

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__DDScannerService_scanQuery_configuration_completionBlock___block_invoke;
  v18[3] = &unk_1E8001D10;
  v20 = v8;
  v21 = a3;
  v19 = v13;
  v14 = v8;
  v15 = v13;
  v16 = [(DDScanServerDispatcher *)v9 scannerConf:v7 sync:0 string:0 runTask:v18];

  return v16;
}

void __60__DDScannerService_scanQuery_configuration_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v6 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__DDScannerService_scanQuery_configuration_completionBlock___block_invoke_2;
    v12[3] = &unk_1E8001CC0;
    v7 = &v13;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v8 = [(DDScannerObject *)a2 scanString:0 range:0 query:v6 configuration:a3 completionBlock:v12];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__DDScannerService_scanQuery_configuration_completionBlock___block_invoke_4;
    block[3] = &unk_1E80023A8;
    v7 = &v11;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    dispatch_async(v9, block);
  }
}

void __60__DDScannerService_scanQuery_configuration_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__DDScannerService_scanQuery_configuration_completionBlock___block_invoke_3;
  v7[3] = &unk_1E8001C98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (int64_t)scanString:(id)a3 range:(_NSRange)a4 configuration:(id)a5 completionBlock:(id)a6
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = _getSharedDispatcher();
  v14 = [v11 completionQueue];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [(DDScanServerDispatcher *)v13 reportQueue];
  }

  v17 = v16;

  v18 = [v10 length];
  if (v18)
  {
    v19 = v18;
    v20 = [v10 copy];

    v43.location = location;
    v43.length = length;
    v21 = validateRangeOfString(v19, v43);
    v23 = v22;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __67__DDScannerService_scanString_range_configuration_completionBlock___block_invoke_2;
    v30[3] = &unk_1E8001CE8;
    v24 = &v31;
    v10 = v20;
    v31 = v10;
    v34 = v21;
    v35 = v23;
    v32 = v17;
    v33 = v12;
    v25 = v12;
    v26 = [(DDScanServerDispatcher *)v13 scannerConf:v11 sync:0 string:v10 runTask:v30];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__DDScannerService_scanString_range_configuration_completionBlock___block_invoke;
    block[3] = &unk_1E80023A8;
    v24 = &v37;
    v37 = v12;
    v27 = v12;
    dispatch_async(v17, block);
    if (v13)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v28 = *(v13 + 8);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __41__DDScanServerDispatcher_emptyIdentifier__block_invoke;
      v38[3] = &unk_1E8002338;
      v38[4] = v13;
      v38[5] = &v39;
      dispatch_sync(v28, v38);
      v26 = v40[3];
      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

void __67__DDScannerService_scanString_range_configuration_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__DDScannerService_scanString_range_configuration_completionBlock___block_invoke_3;
    v12[3] = &unk_1E8001CC0;
    v6 = &v13;
    v7 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v8 = [(DDScannerObject *)a2 scanString:v7 range:*(a1 + 56) query:*(a1 + 64) configuration:0 completionBlock:a3, v12];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__DDScannerService_scanString_range_configuration_completionBlock___block_invoke_5;
    block[3] = &unk_1E80023A8;
    v6 = &v11;
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

void __67__DDScannerService_scanString_range_configuration_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__DDScannerService_scanString_range_configuration_completionBlock___block_invoke_4;
  v7[3] = &unk_1E8001C98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (id)scanQuery:(__DDScanQuery *)a3 configuration:(id)a4
{
  v5 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v6 = _getSharedDispatcher();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__DDScannerService_scanQuery_configuration___block_invoke;
  v9[3] = &unk_1E8001C70;
  v9[4] = &v10;
  v9[5] = a3;
  [(DDScanServerDispatcher *)v6 scannerConf:v5 sync:1 string:0 runTask:v9];
  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __44__DDScannerService_scanQuery_configuration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = [(DDScannerObject *)a2 scanString:0 range:0 query:*(a1 + 40) configuration:a3 completionBlock:0];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8](v4, v6);
}

+ (id)scanString:(id)a3 range:(_NSRange)a4 configuration:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [v8 length];
  if (v10)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    v29.location = location;
    v29.length = length;
    v11 = validateRangeOfString(v10, v29);
    v13 = v12;
    v14 = _getSharedDispatcher();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__DDScannerService_scanString_range_configuration___block_invoke;
    v17[3] = &unk_1E8001C48;
    v19 = &v22;
    v18 = v8;
    v20 = v11;
    v21 = v13;
    [(DDScanServerDispatcher *)v14 scannerConf:v9 sync:1 string:v18 runTask:v17];
    v15 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

uint64_t __51__DDScannerService_scanString_range_configuration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = [(DDScannerObject *)a2 scanString:*(a1 + 48) range:*(a1 + 56) query:0 configuration:a3 completionBlock:0];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8](v4, v6);
}

+ (void)appendWatchOSLinksToString:(id)a3
{
  v3 = a3;
  v4 = [v3 string];
  if ([v4 length])
  {
    v5 = _getSharedDispatcher();
    v6 = [v3 string];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__DDScannerService_appendWatchOSLinksToString___block_invoke;
    v7[3] = &unk_1E8001C20;
    v8 = v4;
    v9 = v3;
    [(DDScanServerDispatcher *)v5 scannerConf:1 sync:v6 string:v7 runTask:?];
  }
}

void __47__DDScannerService_appendWatchOSLinksToString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [v6 setNoObjC:1];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = v5;
  v23 = v6;
  v7 = -[DDScannerObject scanString:range:query:configuration:completionBlock:](v5, *(a1 + 32), 0, [*(a1 + 32) length], 0, v6, 0);
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if (DDResultGetCategory(v11) - 1 <= 2)
        {
          v12 = DDResultCopyExtractedURLWithOptions(v11, 2);
          if (v12)
          {
            v13 = v12;
            v14 = [MEMORY[0x1E695DFF8] URLWithString:v12];

            if (v14)
            {
              v15 = [v14 scheme];
              v16 = [v15 lowercaseString];

              if ([v16 isEqualToString:@"maps"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"tel"))
              {

                RangeForURLification = DDResultGetRangeForURLification(v11);
                v19 = v18;
                v25 = 0;
                v26 = &v25;
                v27 = 0x2020000000;
                v28 = 0;
                v20 = *(a1 + 40);
                v24[0] = MEMORY[0x1E69E9820];
                v24[1] = 3221225472;
                v24[2] = __47__DDScannerService_appendWatchOSLinksToString___block_invoke_2;
                v24[3] = &unk_1E8001BF8;
                v24[4] = &v25;
                [v20 enumerateAttribute:@"NSLink" inRange:RangeForURLification options:v18 usingBlock:{0x100000, v24}];
                if ((v26[3] & 1) == 0)
                {
                  [*(a1 + 40) addAttribute:@"NSLink" value:v14 range:{RangeForURLification, v19}];
                }

                _Block_object_dispose(&v25, 8);
              }

              else
              {

                v14 = v16;
              }
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __47__DDScannerService_appendWatchOSLinksToString___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    if (a4)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

@end