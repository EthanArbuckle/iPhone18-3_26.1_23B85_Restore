@interface MSURemoteableBlock
- (MSURemoteableBlock)initWithProgressBlock:(id)a3;
- (void)_nsxpcInvoke:(id)a3 args:(id)a4 options:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)progress:(id)a3;
@end

@implementation MSURemoteableBlock

- (MSURemoteableBlock)initWithProgressBlock:(id)a3
{
  v4 = [(MSURemoteableBlock *)self init];
  result = 0;
  if (a3)
  {
    if (v4)
    {
      v4->_progressBlock = a3;
      v4->_progressBlock = _Block_copy(a3);
      return v4;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSURemoteableBlock;
  [(MSURemoteableBlock *)&v3 dealloc];
}

- (void)_nsxpcInvoke:(id)a3 args:(id)a4 options:(id)a5 completion:(id)a6
{
  if (a6)
  {
    v8 = [NSString stringWithFormat:@"%s not implemented", a4, a5, "[MSURemoteableBlock _nsxpcInvoke:args:options:completion:]", NSDebugDescriptionErrorKey];
    (*(a6 + 2))(a6, [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:1300 userInfo:[NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1]], 0);
  }
}

- (void)progress:(id)a3
{
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    progressBlock[2](progressBlock, a3);
  }
}

@end