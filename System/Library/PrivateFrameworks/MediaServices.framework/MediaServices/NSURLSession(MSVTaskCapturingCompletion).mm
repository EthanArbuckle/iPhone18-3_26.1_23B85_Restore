@interface NSURLSession(MSVTaskCapturingCompletion)
- (id)msv_dataTaskWithRequest:()MSVTaskCapturingCompletion completionHandler:;
- (id)msv_downloadTaskWithRequest:()MSVTaskCapturingCompletion completionHandler:;
- (id)msv_uploadTaskWithRequest:()MSVTaskCapturingCompletion fromData:completionHandler:;
@end

@implementation NSURLSession(MSVTaskCapturingCompletion)

- (id)msv_downloadTaskWithRequest:()MSVTaskCapturingCompletion completionHandler:
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3014;
  v20 = __Block_byref_object_dispose__3015;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__NSURLSession_MSVTaskCapturingCompletion__msv_downloadTaskWithRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7982008;
  v15 = &v16;
  v8 = v7;
  v14 = v8;
  v9 = [self downloadTaskWithRequest:v6 completionHandler:v13];
  v10 = v17[5];
  v17[5] = v9;

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)msv_uploadTaskWithRequest:()MSVTaskCapturingCompletion fromData:completionHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3014;
  v23 = __Block_byref_object_dispose__3015;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__NSURLSession_MSVTaskCapturingCompletion__msv_uploadTaskWithRequest_fromData_completionHandler___block_invoke;
  v16[3] = &unk_1E7981FE0;
  v18 = &v19;
  v11 = v10;
  v17 = v11;
  v12 = [self uploadTaskWithRequest:v8 fromData:v9 completionHandler:v16];
  v13 = v20[5];
  v20[5] = v12;

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)msv_dataTaskWithRequest:()MSVTaskCapturingCompletion completionHandler:
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3014;
  v20 = __Block_byref_object_dispose__3015;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__NSURLSession_MSVTaskCapturingCompletion__msv_dataTaskWithRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7981FE0;
  v15 = &v16;
  v8 = v7;
  v14 = v8;
  v9 = [self dataTaskWithRequest:v6 completionHandler:v13];
  v10 = v17[5];
  v17[5] = v9;

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

@end