@interface CUTPromise
+ (id)all:(id)all;
+ (id)allWithPartialSuccesses:(id)successes;
+ (id)failedPromiseWithError:(id)error;
+ (id)fulfilledPromiseWithValue:(id)value;
- (void)registerResultBlock:(id)block;
@end

@implementation CUTPromise

- (void)registerResultBlock:(id)block
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CUTPromise.m" lineNumber:168 description:@"CUTPromise is abstract and should never be created"];
}

+ (id)failedPromiseWithError:(id)error
{
  errorCopy = error;
  v4 = [_CUTStaticPromise alloc];
  v5 = [[CUTResult alloc] initWithError:errorCopy];

  v6 = [(_CUTStaticPromise *)v4 initWithResult:v5 safe:1];

  return v6;
}

+ (id)fulfilledPromiseWithValue:(id)value
{
  valueCopy = value;
  v4 = [_CUTStaticPromise alloc];
  v5 = [[CUTResult alloc] initWithSuccess:valueCopy];

  v6 = [(_CUTStaticPromise *)v4 initWithResult:v5 safe:1];

  return v6;
}

+ (id)all:(id)all
{
  allCopy = all;
  v4 = objc_alloc_init(_CUTLockingPromise);
  lock = [(_CUTLockingPromise *)v4 lock];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allCopy, "count")}];
  if ([allCopy count])
  {
    v7 = 0;
    do
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v6 addObject:null];

      ++v7;
    }

    while ([allCopy count] > v7);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  if (![allCopy count])
  {
    v9 = [[CUTResult alloc] initWithSuccess:v6];
    [(_CUTLockingPromise *)v4 _fulfillWithResult:v9];

    *(v27 + 24) = 1;
  }

  for (i = 0; [allCopy count] > i; ++i)
  {
    v11 = [allCopy objectAtIndexedSubscript:i];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CUTPromise.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"[promise isKindOfClass:[CUTPromise class]]"}];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B232EFB0;
    v17[3] = &unk_1E7B21150;
    v18 = lock;
    v21 = &v26;
    v19 = v4;
    v12 = v6;
    v23 = i;
    v20 = v12;
    v22 = v24;
    [v11 registerResultBlock:v17];
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  return v4;
}

+ (id)allWithPartialSuccesses:(id)successes
{
  successesCopy = successes;
  v4 = objc_alloc_init(_CUTLockingPromise);
  lock = [(_CUTLockingPromise *)v4 lock];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(successesCopy, "count")}];
  if ([successesCopy count])
  {
    v7 = 0;
    do
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v6 addObject:null];

      ++v7;
    }

    while ([successesCopy count] > v7);
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  if (![successesCopy count])
  {
    v9 = [[CUTResult alloc] initWithSuccess:v6];
    [(_CUTLockingPromise *)v4 _fulfillWithResult:v9];
  }

  for (i = 0; [successesCopy count] > i; ++i)
  {
    v11 = [successesCopy objectAtIndexedSubscript:i];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CUTPromise.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"[promise isKindOfClass:[CUTPromise class]]"}];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B232F3B0;
    v17[3] = &unk_1E7B21178;
    v18 = lock;
    v12 = v6;
    v22 = i;
    v19 = v12;
    v21 = v23;
    v20 = v4;
    [v11 registerResultBlock:v17];
  }

  _Block_object_dispose(v23, 8);

  return v4;
}

@end