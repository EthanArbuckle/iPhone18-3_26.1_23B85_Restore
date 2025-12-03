@interface RamXPC
- (RamXPC)initWithCoder:(id)coder;
- (RamXPC)initWithSize:(unint64_t)size;
- (id)description;
- (void)createRamBackend;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RamXPC

- (RamXPC)initWithSize:(unint64_t)size
{
  sizeCopy = size;
  v4.receiver = self;
  v4.super_class = RamXPC;
  if ([(RamXPC *)&v4 init])
  {
    std::allocate_shared[abi:ne200100]<BackendNull,std::allocator<BackendNull>,unsigned long long &,0>();
  }

  return 0;
}

- (void)createRamBackend
{
  v9 = *MEMORY[0x277D85DE8];
  [(BackendXPC *)self backend];
  v5 = (*(*v6 + 40))(v6);
  [(BackendXPC *)self backend];
  v7 = (*(*v4 + 168))(v4);
  v8 = v3;
  std::allocate_shared[abi:ne200100]<Ram,std::allocator<Ram>,unsigned long long,boost::uuids::uuid,0>();
}

- (RamXPC)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RamXPC;
  if ([(BackendXPC *)&v8 initWithCoder:coderCopy])
  {
    v7 = [coderCopy decodeInt64ForKey:@"size"];
    [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [objc_claimAutoreleasedReturnValue() getUUIDBytes:v9];
    std::allocate_shared[abi:ne200100]<BackendNull,std::allocator<BackendNull>,unsigned long long &,boost::uuids::uuid &,0>();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RamXPC;
  [(BackendXPC *)&v8 encodeWithCoder:coderCopy];
  [(BackendXPC *)self backend];
  [coderCopy encodeInt64:(*(*v6 + 40))() forKey:@"size"];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  instanceID = [(BackendXPC *)self instanceID];
  [coderCopy encodeObject:instanceID forKey:@"identifier"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = RamXPC;
  v4 = [(BackendXPC *)&v9 description];
  [(BackendXPC *)self backend];
  v5 = [v3 stringWithFormat:@"%@[ramsize=%llu]", v4, (*(*v7 + 40))()];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

@end