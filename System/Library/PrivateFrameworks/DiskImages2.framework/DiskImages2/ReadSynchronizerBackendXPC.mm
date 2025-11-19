@interface ReadSynchronizerBackendXPC
- (ReadSynchronizerBackendXPC)initWithBackend:(id)a3;
- (ReadSynchronizerBackendXPC)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ReadSynchronizerBackendXPC

- (ReadSynchronizerBackendXPC)initWithBackend:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ReadSynchronizerBackendXPC;
  v6 = [(ReadSynchronizerBackendXPC *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseBackendXPC, a3);
    baseBackendXPC = v7->_baseBackendXPC;
    if (baseBackendXPC)
    {
      [baseBackendXPC backend];
    }

    std::allocate_shared[abi:ne200100]<readSynchronizer,std::allocator<readSynchronizer>,std::shared_ptr<Backend> &,0>();
  }

  return 0;
}

- (ReadSynchronizerBackendXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ReadSynchronizerBackendXPC;
  v5 = [(BackendXPC *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseBackend"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = ReadSynchronizerBackendXPC;
  [(BackendXPC *)&v6 encodeWithCoder:v4];
  v5 = [(ReadSynchronizerBackendXPC *)self baseBackendXPC];
  [v4 encodeObject:v5 forKey:@"baseBackend"];
}

@end