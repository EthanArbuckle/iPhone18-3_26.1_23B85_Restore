@interface _FBSceneClientProcess
- (id)_initWithHandle:(id)handle;
@end

@implementation _FBSceneClientProcess

- (id)_initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = _FBSceneClientProcess;
  v6 = [(_FBSceneClientProcess *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

@end