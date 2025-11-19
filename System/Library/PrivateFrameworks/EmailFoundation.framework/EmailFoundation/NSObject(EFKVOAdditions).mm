@interface NSObject(EFKVOAdditions)
- (id)ef_observeKeyPath:()EFKVOAdditions options:autoCancelToken:usingBlock:;
- (id)ef_observeKeyPath:()EFKVOAdditions options:usingBlock:;
@end

@implementation NSObject(EFKVOAdditions)

- (id)ef_observeKeyPath:()EFKVOAdditions options:autoCancelToken:usingBlock:
{
  v10 = a3;
  v11 = a6;
  v12 = [[_EFKeyValueObserverHandler alloc] initWithObject:a1 keyPath:v10 usingBlock:v11];
  [(_EFKeyValueObserverHandler *)v12 startObservingWithOptions:a4];
  if (a5)
  {
    v13 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__NSObject_EFKVOAdditions__ef_observeKeyPath_options_autoCancelToken_usingBlock___block_invoke;
    v18[3] = &unk_1E8248580;
    v18[4] = v12;
    v14 = [(EFManualCancelationToken *)EFCancelationToken tokenWithCancelationBlock:v18];
  }

  else
  {
    v13 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__NSObject_EFKVOAdditions__ef_observeKeyPath_options_autoCancelToken_usingBlock___block_invoke_2;
    v17[3] = &unk_1E8248580;
    v17[4] = v12;
    v14 = [EFManualCancelationToken tokenWithCancelationBlock:v17];
  }

  v15 = v14;

  return v15;
}

- (id)ef_observeKeyPath:()EFKVOAdditions options:usingBlock:
{
  v5 = [a1 ef_observeKeyPath:a3 options:a4 autoCancelToken:0 usingBlock:a5];

  return v5;
}

@end