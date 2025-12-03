@interface MSURemoteableBlock
- (MSURemoteableBlock)initWithProgressBlock:(id)block;
- (void)_nsxpcInvoke:(id)invoke args:(id)args options:(id)options completion:(id)completion;
- (void)dealloc;
- (void)progress:(id)progress;
@end

@implementation MSURemoteableBlock

- (MSURemoteableBlock)initWithProgressBlock:(id)block
{
  v4 = [(MSURemoteableBlock *)self init];
  result = 0;
  if (block)
  {
    if (v4)
    {
      v4->_progressBlock = block;
      v4->_progressBlock = _Block_copy(block);
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

- (void)_nsxpcInvoke:(id)invoke args:(id)args options:(id)options completion:(id)completion
{
  if (completion)
  {
    nSDebugDescriptionErrorKey = [NSString stringWithFormat:@"%s not implemented", args, options, "[MSURemoteableBlock _nsxpcInvoke:args:options:completion:]", NSDebugDescriptionErrorKey];
    (*(completion + 2))(completion, [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:1300 userInfo:[NSDictionary dictionaryWithObjects:&nSDebugDescriptionErrorKey forKeys:&v7 count:1]], 0);
  }
}

- (void)progress:(id)progress
{
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    progressBlock[2](progressBlock, progress);
  }
}

@end