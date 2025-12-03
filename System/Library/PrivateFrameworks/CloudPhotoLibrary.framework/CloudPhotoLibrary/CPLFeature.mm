@interface CPLFeature
+ (id)featureWithName:(id)name;
- (BOOL)disableFeatureInStore:(id)store error:(id *)error;
- (BOOL)enableFeatureInStore:(id)store error:(id *)error;
@end

@implementation CPLFeature

- (BOOL)enableFeatureInStore:(id)store error:(id *)error
{
  storeCopy = store;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLFeature.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:45 description:{@"%@ should be implemented by subclasses", v9}];

  abort();
}

- (BOOL)disableFeatureInStore:(id)store error:(id *)error
{
  storeCopy = store;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLFeature.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:40 description:{@"%@ should be implemented by subclasses", v9}];

  abort();
}

+ (id)featureWithName:(id)name
{
  v3 = featureWithName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    dispatch_once(&featureWithName__onceToken, &__block_literal_global_18433);
  }

  v5 = [featureWithName__features objectForKeyedSubscript:nameCopy];

  return v5;
}

void __30__CPLFeature_featureWithName___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"MomentShare";
  v0 = objc_alloc_init(CPLMomentShareFeature);
  v5[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = featureWithName__features;
  featureWithName__features = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end