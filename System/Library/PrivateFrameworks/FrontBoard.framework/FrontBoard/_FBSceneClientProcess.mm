@interface _FBSceneClientProcess
- (id)_initWithHandle:(id)a3;
@end

@implementation _FBSceneClientProcess

- (id)_initWithHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _FBSceneClientProcess;
  v6 = [(_FBSceneClientProcess *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, a3);
  }

  return v7;
}

@end