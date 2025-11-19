@interface CPLBackgroundActivity
- (id)addDeferHandler:(id)a3;
- (void)removeDeferHandler:(id)a3;
@end

@implementation CPLBackgroundActivity

- (void)removeDeferHandler:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBackgroundActivity.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:23 description:{@"%@ be implemented by subclasses", v8}];

  abort();
}

- (id)addDeferHandler:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBackgroundActivity.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:19 description:{@"%@ be implemented by subclasses", v8}];

  abort();
}

@end