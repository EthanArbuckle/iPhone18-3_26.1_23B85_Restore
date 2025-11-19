@interface FCIdentityAssetTransformer
+ (id)sharedInstance;
- (BOOL)transformAssetDataFromFilePath:(id)a3 toFilePath:(id)a4 error:(id *)a5;
@end

@implementation FCIdentityAssetTransformer

+ (id)sharedInstance
{
  if (qword_1EDB27200 != -1)
  {
    dispatch_once(&qword_1EDB27200, &__block_literal_global_56);
  }

  v3 = _MergedGlobals_155;

  return v3;
}

uint64_t __44__FCIdentityAssetTransformer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(FCIdentityAssetTransformer);
  v1 = _MergedGlobals_155;
  _MergedGlobals_155 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)transformAssetDataFromFilePath:(id)a3 toFilePath:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E696AC08];
  v8 = a4;
  v9 = a3;
  v10 = [v7 defaultManager];
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];

  LOBYTE(a5) = [v10 copyItemAtURL:v11 toURL:v12 error:a5];
  return a5;
}

@end