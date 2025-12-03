@interface ReadSynchronizerBackendXPC
- (ReadSynchronizerBackendXPC)initWithBackend:(id)backend;
- (ReadSynchronizerBackendXPC)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ReadSynchronizerBackendXPC

- (ReadSynchronizerBackendXPC)initWithBackend:(id)backend
{
  backendCopy = backend;
  v10.receiver = self;
  v10.super_class = ReadSynchronizerBackendXPC;
  v6 = [(ReadSynchronizerBackendXPC *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseBackendXPC, backend);
    baseBackendXPC = v7->_baseBackendXPC;
    if (baseBackendXPC)
    {
      [baseBackendXPC backend];
    }

    std::allocate_shared[abi:ne200100]<readSynchronizer,std::allocator<readSynchronizer>,std::shared_ptr<Backend> &,0>();
  }

  return 0;
}

- (ReadSynchronizerBackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ReadSynchronizerBackendXPC;
  v5 = [(BackendXPC *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseBackend"];
    baseBackendXPC = v5->_baseBackendXPC;
    v5->_baseBackendXPC = v6;

    v8 = v5->_baseBackendXPC;
    if (v8)
    {
      [(BackendXPC *)v8 backend];
    }

    std::allocate_shared[abi:ne200100]<readSynchronizer,std::allocator<readSynchronizer>,std::shared_ptr<Backend>,0>();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = ReadSynchronizerBackendXPC;
  [(BackendXPC *)&v6 encodeWithCoder:coderCopy];
  baseBackendXPC = [(ReadSynchronizerBackendXPC *)self baseBackendXPC];
  [coderCopy encodeObject:baseBackendXPC forKey:@"baseBackend"];
}

@end