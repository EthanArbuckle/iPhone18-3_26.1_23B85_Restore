@interface CPLBackgroundActivity
- (id)addDeferHandler:(id)handler;
- (void)removeDeferHandler:(id)handler;
@end

@implementation CPLBackgroundActivity

- (void)removeDeferHandler:(id)handler
{
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBackgroundActivity.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:23 description:{@"%@ be implemented by subclasses", v8}];

  abort();
}

- (id)addDeferHandler:(id)handler
{
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBackgroundActivity.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:19 description:{@"%@ be implemented by subclasses", v8}];

  abort();
}

@end