@interface CUTUnsafePromise
+ (id)all:(id)all;
+ (id)allWithPartialSuccesses:(id)successes;
+ (id)failedPromiseWithError:(id)error;
+ (id)fulfilledPromiseWithValue:(id)value;
- (id)_init;
- (void)registerResultBlock:(id)block;
@end

@implementation CUTUnsafePromise

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CUTUnsafePromise;
  return [(CUTUnsafePromise *)&v3 init];
}

- (void)registerResultBlock:(id)block
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CUTPromise.m" lineNumber:60 description:@"CUTUnsafePromise is abstract and should never be created"];
}

+ (id)failedPromiseWithError:(id)error
{
  errorCopy = error;
  v4 = [_CUTStaticPromise alloc];
  v5 = [[CUTResult alloc] initWithError:errorCopy];

  v6 = [(_CUTStaticPromise *)v4 initWithResult:v5 safe:0];

  return v6;
}

+ (id)fulfilledPromiseWithValue:(id)value
{
  valueCopy = value;
  v4 = [_CUTStaticPromise alloc];
  v5 = [[CUTResult alloc] initWithSuccess:valueCopy];

  v6 = [(_CUTStaticPromise *)v4 initWithResult:v5 safe:0];

  return v6;
}

+ (id)all:(id)all
{
  allCopy = all;
  v4 = objc_alloc_init(CUTUnsafePromiseSeal);
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allCopy, "count")}];
  if ([allCopy count])
  {
    v6 = 0;
    do
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v5 addObject:null];

      ++v6;
    }

    while ([allCopy count] > v6);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  if (![allCopy count])
  {
    [(CUTUnsafePromiseSeal *)v4 fulfillWithValue:v5];
    *(v22 + 24) = 1;
  }

  for (i = 0; [allCopy count] > i; ++i)
  {
    v9 = [allCopy objectAtIndexedSubscript:i];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B232E628;
    v13[3] = &unk_1E7B21100;
    v16 = &v21;
    v14 = v4;
    v10 = v5;
    v18 = i;
    v15 = v10;
    v17 = v19;
    [v9 registerResultBlock:v13];
  }

  promise = [(CUTUnsafePromiseSeal *)v4 promise];
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);

  return promise;
}

+ (id)allWithPartialSuccesses:(id)successes
{
  successesCopy = successes;
  v4 = objc_alloc_init(CUTUnsafePromiseSeal);
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(successesCopy, "count")}];
  if ([successesCopy count])
  {
    v6 = 0;
    do
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v5 addObject:null];

      ++v6;
    }

    while ([successesCopy count] > v6);
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  if (![successesCopy count])
  {
    [(CUTUnsafePromiseSeal *)v4 fulfillWithValue:v5];
  }

  for (i = 0; [successesCopy count] > i; ++i)
  {
    v9 = [successesCopy objectAtIndexedSubscript:i];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B232E940;
    v13[3] = &unk_1E7B21128;
    v10 = v5;
    v17 = i;
    v14 = v10;
    v16 = v18;
    v15 = v4;
    [v9 registerResultBlock:v13];
  }

  promise = [(CUTUnsafePromiseSeal *)v4 promise];
  _Block_object_dispose(v18, 8);

  return promise;
}

@end