@interface EMTCompiler
- (EMTCompiler)initWithModelURLs:(id)ls;
- (id).cxx_construct;
@end

@implementation EMTCompiler

- (EMTCompiler)initWithModelURLs:(id)ls
{
  v20 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v18.receiver = self;
  v18.super_class = EMTCompiler;
  v5 = [(EMTCompiler *)&v18 init];
  if (v5)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x4812000000;
    v16[3] = __Block_byref_object_copy__0;
    v16[4] = __Block_byref_object_dispose__0;
    v16[5] = &unk_1B5CADD23;
    memset(v17, 0, sizeof(v17));
    memset(v15, 0, sizeof(v15));
    v6 = lsCopy;
    if ([v6 countByEnumeratingWithState:v15 objects:v19 count:{16, v3}])
    {
      [**(&v15[0] + 1) URLByAppendingPathComponent:@"mt-quasar-config.json"];
      objc_claimAutoreleasedReturnValue();
      quasar::SystemConfig::SystemConfig(v14);
    }

    v7 = +[EMTTranslationQueue globalTranslationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__EMTCompiler_initWithModelURLs___block_invoke;
    block[3] = &unk_1E7C1A240;
    v12 = v5;
    v13 = v16;
    dispatch_sync(v7, block);

    _Block_object_dispose(v16, 8);
    v14[0] = v17;
    std::vector<quasar::SystemConfig>::__destroy_vector::operator()[abi:ne200100](v14);
  }

  v8 = v5;

  return v8;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end