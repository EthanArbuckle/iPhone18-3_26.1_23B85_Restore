@interface MSUBrainDelegateImpl_softwareupdated
+ (id)sharedInstance;
- (MSUBrainDelegateImpl_softwareupdated)init;
- (void)_nsxpcInvoke:(id)invoke args:(id)args options:(id)options completion:(id)completion;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
@end

@implementation MSUBrainDelegateImpl_softwareupdated

- (MSUBrainDelegateImpl_softwareupdated)init
{
  v3.receiver = self;
  v3.super_class = MSUBrainDelegateImpl_softwareupdated;
  result = [(MSUBrainDelegateImpl_softwareupdated *)&v3 init];
  if (result)
  {
    result->_brainProtocol = &OBJC_PROTOCOL___MSUBrainNSXPCInterface;
    result->_delegateProtocol = &OBJC_PROTOCOL___MSUBrainDelegateNSXPCInterface;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[MSUBrainDelegateImpl_softwareupdated sharedInstance];
  }

  return sharedInstance___instance_0;
}

- (void)connectionInterrupted
{
  v2 = msuSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(MSUBrainDelegateImpl_softwareupdated *)v2 connectionInterrupted];
  }
}

- (void)connectionInvalidated
{
  v2 = msuSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(MSUBrainDelegateImpl_softwareupdated *)v2 connectionInvalidated];
  }
}

- (void)_nsxpcInvoke:(id)invoke args:(id)args options:(id)options completion:(id)completion
{
  if (completion)
  {
    nSDebugDescriptionErrorKey = [NSString stringWithFormat:@"%s not implemented", args, options, "[MSUBrainDelegateImpl_softwareupdated _nsxpcInvoke:args:options:completion:]", NSDebugDescriptionErrorKey];
    (*(completion + 2))(completion, [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:1300 userInfo:[NSDictionary dictionaryWithObjects:&nSDebugDescriptionErrorKey forKeys:&v7 count:1]], 0);
  }
}

@end