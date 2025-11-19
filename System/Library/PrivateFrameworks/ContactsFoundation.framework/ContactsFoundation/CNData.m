@interface CNData
+ (id)dataWithContentsOfFileURL:(id)a3;
+ (id)dataWithContentsOfURL:(id)a3;
+ (id)dataWithContentsOfURL:(id)a3 sessionFactory:(id)a4;
+ (id)observableWithContentsOfURL:(id)a3;
+ (id)observableWithContentsOfURL:(id)a3 sessionFactory:(id)a4;
+ (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5;
+ (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5 fileManager:(id)a6;
+ (unint64_t)NSDataWritingOptionsFromCNDataWritingOptions:(unint64_t)a3;
- (CNData)dataWithContentsOfURL:(id)a3;
- (CNData)init;
- (CNData)initWithFileManager:(id)a3;
- (CNData)initWithFileManager:(id)a3 urlSessionFactory:(id)a4;
- (id)observableWithContentsOfURL:(id)a3;
- (id)synchronousDataWithContentsOfURL:(id)a3;
- (id)synchronousDataWithContentsOfURL:(id)a3 timeout:(double)a4;
- (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5;
@end

@implementation CNData

- (CNData)init
{
  v3 = objc_alloc_init(CNFileManager);
  v4 = [(CNData *)self initWithFileManager:v3];

  return v4;
}

- (CNData)initWithFileManager:(id)a3
{
  v4 = a3;
  v5 = +[CNURLSessionFactory defaultFactory];
  v6 = [(CNData *)self initWithFileManager:v4 urlSessionFactory:v5];

  return v6;
}

- (CNData)initWithFileManager:(id)a3 urlSessionFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNData;
  v9 = [(CNData *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileManager, a3);
    objc_storeStrong(&v10->_sessionFactory, a4);
    v11 = v10;
  }

  return v10;
}

+ (id)dataWithContentsOfURL:(id)a3
{
  v4 = a3;
  v5 = +[CNURLSessionFactory defaultFactory];
  v6 = [a1 dataWithContentsOfURL:v4 sessionFactory:v5];

  return v6;
}

+ (id)dataWithContentsOfFileURL:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CNData_dataWithContentsOfFileURL___block_invoke;
  v7[3] = &unk_1E6ED5990;
  v8 = v3;
  v4 = v3;
  v5 = [CNFuture futureWithBlock:v7];

  return v5;
}

+ (id)dataWithContentsOfURL:(id)a3 sessionFactory:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFileURL])
  {
    v8 = [a1 dataWithContentsOfFileURL:v6];
  }

  else
  {
    v9 = objc_alloc_init(CNPromise);
    v10 = [v7 defaultSessionConfiguration];
    v11 = [v7 sessionWithConfiguration:v10 delegate:0 delegateQueue:0];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __47__CNData_dataWithContentsOfURL_sessionFactory___block_invoke;
    v28[3] = &unk_1E6ED59B8;
    v29 = v9;
    v12 = v9;
    v13 = [v11 dataTaskWithURL:v6 completionHandler:v28];
    [v13 resume];
    v14 = [(CNPromise *)v12 future];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __47__CNData_dataWithContentsOfURL_sessionFactory___block_invoke_2;
    v25[3] = &unk_1E6ED59E0;
    v26 = v13;
    v15 = v11;
    v27 = v15;
    v16 = v13;
    [v14 addFailureBlock:v25];

    v17 = [(CNPromise *)v12 future];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __47__CNData_dataWithContentsOfURL_sessionFactory___block_invoke_3;
    v23 = &unk_1E6ED5A08;
    v24 = v15;
    v18 = v15;
    [v17 addSuccessBlock:&v20];

    v8 = [(CNPromise *)v12 future:v20];
  }

  return v8;
}

void __47__CNData_dataWithContentsOfURL_sessionFactory___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    [*(a1 + 32) finishWithError:a4];
  }

  else
  {
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11 && (v12 = [v11 statusCode], v12 >= 400))
    {
      v13 = v12;
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A250];
      v21[0] = @"status code";
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      v21[1] = @"description";
      v22[0] = v16;
      v17 = [MEMORY[0x1E696AC68] localizedStringForStatusCode:v13];
      v22[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v19 = [v14 errorWithDomain:v15 code:256 userInfo:v18];

      [*(a1 + 32) finishWithError:v19];
    }

    else
    {
      [*(a1 + 32) finishWithResult:v7];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __47__CNData_dataWithContentsOfURL_sessionFactory___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([CNFoundationError isCanceledError:a2])
  {
    [*(a1 + 32) cancel];
  }

  v3 = *(a1 + 40);

  return [v3 invalidateAndCancel];
}

- (id)synchronousDataWithContentsOfURL:(id)a3
{
  v3 = [(CNData *)self dataWithContentsOfURL:a3];
  v4 = [CNResult resultWithFuture:v3];

  return v4;
}

- (id)synchronousDataWithContentsOfURL:(id)a3 timeout:(double)a4
{
  v5 = [(CNData *)self dataWithContentsOfURL:a3];
  v6 = [CNResult resultWithFuture:v5 timeout:a4];

  return v6;
}

- (CNData)dataWithContentsOfURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CNData *)self sessionFactory];
  v7 = [v5 dataWithContentsOfURL:v4 sessionFactory:v6];

  return v7;
}

+ (id)observableWithContentsOfURL:(id)a3
{
  v4 = a3;
  v5 = +[CNURLSessionFactory defaultFactory];
  v6 = [a1 observableWithContentsOfURL:v4 sessionFactory:v5];

  return v6;
}

+ (id)observableWithContentsOfURL:(id)a3 sessionFactory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__2;
  v17[4] = __Block_byref_object_dispose__2;
  v18 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__CNData_observableWithContentsOfURL_sessionFactory___block_invoke;
  v13[3] = &unk_1E6ED5A58;
  v7 = v6;
  v14 = v7;
  v16 = v17;
  v8 = v5;
  v15 = v8;
  v9 = [CNObservable observableWithBlock:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__CNData_observableWithContentsOfURL_sessionFactory___block_invoke_5;
  v12[3] = &unk_1E6ED5A80;
  v12[4] = v17;
  v10 = [v9 doOnTerminate:v12];

  _Block_object_dispose(v17, 8);

  return v10;
}

id __53__CNData_observableWithContentsOfURL_sessionFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(_CNDataURLSessionTaskAdapter);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__CNData_observableWithContentsOfURL_sessionFactory___block_invoke_2;
  v19[3] = &unk_1E6ED5A08;
  v5 = v3;
  v20 = v5;
  [(_CNDataURLSessionTaskAdapter *)v4 setOnDataReceived:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__CNData_observableWithContentsOfURL_sessionFactory___block_invoke_3;
  v17[3] = &unk_1E6ED5A30;
  v18 = v5;
  v6 = v5;
  [(_CNDataURLSessionTaskAdapter *)v4 setOnCompletion:v17];
  v7 = [*(a1 + 32) defaultSessionConfiguration];
  v8 = [*(a1 + 32) sessionWithConfiguration:v7 delegate:v4 delegateQueue:0];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(*(*(a1 + 48) + 8) + 40) dataTaskWithURL:*(a1 + 40)];
  [v11 resume];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__CNData_observableWithContentsOfURL_sessionFactory___block_invoke_4;
  v15[3] = &unk_1E6ED5830;
  v16 = v11;
  v12 = v11;
  v13 = [CNCancelationToken tokenWithCancelationBlock:v15];

  return v13;
}

uint64_t __53__CNData_observableWithContentsOfURL_sessionFactory___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 observerDidFailWithError:a2];
  }

  else
  {
    return [v2 observerDidComplete];
  }
}

- (id)observableWithContentsOfURL:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CNData *)self sessionFactory];
  v7 = [v5 observableWithContentsOfURL:v4 sessionFactory:v6];

  return v7;
}

+ (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(CNFileManager);
  v11 = [a1 writeData:v9 toURL:v8 options:a5 fileManager:v10];

  return v11;
}

+ (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5 fileManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (a5)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __46__CNData_writeData_toURL_options_fileManager___block_invoke;
    v24[3] = &unk_1E6ED5AA8;
    v25 = v12;
    v26 = v11;
    v14 = [CNFuture futureWithBlock:v24];
  }

  else
  {
    v14 = [CNFuture futureWithResult:v11];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__CNData_writeData_toURL_options_fileManager___block_invoke_2;
  v19[3] = &unk_1E6ED5AF8;
  v22 = a1;
  v23 = a5;
  v20 = v10;
  v21 = v11;
  v15 = v11;
  v16 = v10;
  v17 = [v14 flatMap:v19];

  return v17;
}

id __46__CNData_writeData_toURL_options_fileManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) URLByDeletingLastPathComponent];
  v5 = [v3 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0];

  v6 = [v5 value];
  v7 = [v5 error];
  v8 = v6;
  v9 = v8;
  if (a2 && !v8)
  {
    v10 = v7;
    *a2 = v7;
  }

  return v9;
}

id __46__CNData_writeData_toURL_options_fileManager___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__CNData_writeData_toURL_options_fileManager___block_invoke_3;
  v5[3] = &unk_1E6ED5AD0;
  v2 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = v2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [CNFuture futureWithBlock:v5];

  return v3;
}

id __46__CNData_writeData_toURL_options_fileManager___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) writeToURL:*(a1 + 40) options:objc_msgSend(*(a1 + 48) error:{"NSDataWritingOptionsFromCNDataWritingOptions:", *(a1 + 56)), a2}])
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (unint64_t)NSDataWritingOptionsFromCNDataWritingOptions:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CNData_NSDataWritingOptionsFromCNDataWritingOptions___block_invoke;
  v6[3] = &unk_1E6ED5B20;
  v6[4] = &v7;
  v6[5] = a3;
  v3 = _Block_copy(v6);
  v3[2](v3, 1024, 1);
  v3[2](v3, 2048, 2);
  v3[2](v3, 4096, 0x10000000);
  v3[2](v3, 0x2000, 0x20000000);
  v3[2](v3, 0x4000, 805306368);
  v3[2](v3, 0x8000, 0x40000000);
  v4 = v8[3];

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __55__CNData_NSDataWritingOptionsFromCNDataWritingOptions___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 & ~*(result + 40)) == 0)
  {
    *(*(*(result + 32) + 8) + 24) |= a3;
  }

  return result;
}

- (id)writeData:(id)a3 toURL:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = [(CNData *)self fileManager];
  v12 = [v10 writeData:v9 toURL:v8 options:a5 fileManager:v11];

  return v12;
}

@end