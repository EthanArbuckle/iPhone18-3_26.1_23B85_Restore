@interface NMSKeepLocalRequest
- (NMSKeepLocalRequest)initWithModelObject:(id)object enableState:(int64_t)state;
- (void)performWithOptions:(id)options completion:(id)completion;
@end

@implementation NMSKeepLocalRequest

- (NMSKeepLocalRequest)initWithModelObject:(id)object enableState:(int64_t)state
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = NMSKeepLocalRequest;
  v8 = [(NMSKeepLocalRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_modelObject, object);
    v9->_enableState = state;
  }

  return v9;
}

- (void)performWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Sub-classes should implement this method." userInfo:0];
  objc_exception_throw(v7);
}

@end