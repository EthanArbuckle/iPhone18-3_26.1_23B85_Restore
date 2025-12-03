@interface NMSKeepLocalRequestProxy
- (NMSKeepLocalRequestProxy)initWithModelObject:(id)object enableState:(int64_t)state;
- (void)performWithOptions:(id)options completion:(id)completion;
@end

@implementation NMSKeepLocalRequestProxy

- (NMSKeepLocalRequestProxy)initWithModelObject:(id)object enableState:(int64_t)state
{
  v8.receiver = self;
  v8.super_class = NMSKeepLocalRequestProxy;
  v4 = [(NMSKeepLocalRequest *)&v8 initWithModelObject:object enableState:state];
  if (v4)
  {
    v5 = objc_alloc_init(NMSMediaSyncService);
    mediaSyncService = v4->_mediaSyncService;
    v4->_mediaSyncService = v5;
  }

  return v4;
}

- (void)performWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if ([(NMSKeepLocalRequest *)self enableState]== 1)
  {
    if ([optionsCopy requiresValidation])
    {
      cellularBundleIdentifier = [optionsCopy cellularBundleIdentifier];

      if (!cellularBundleIdentifier)
      {
        v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Required cellular bundle identifier missing during KeepLocalRequest validation." userInfo:0];
        objc_exception_throw(v11);
      }
    }
  }

  mediaSyncService = self->_mediaSyncService;
  enableState = [(NMSKeepLocalRequest *)self enableState];
  modelObject = [(NMSKeepLocalRequest *)self modelObject];
  [(NMSMediaSyncService *)mediaSyncService performKeepLocalRequestWithEnableState:enableState modelObject:modelObject options:optionsCopy completion:completionCopy];
}

@end