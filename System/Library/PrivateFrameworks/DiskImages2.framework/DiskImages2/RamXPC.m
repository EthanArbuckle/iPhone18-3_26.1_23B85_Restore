@interface RamXPC
- (RamXPC)initWithCoder:(id)a3;
- (RamXPC)initWithSize:(unint64_t)a3;
- (id)description;
- (void)createRamBackend;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RamXPC

- (RamXPC)initWithSize:(unint64_t)a3
{
  v5 = a3;
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

- (RamXPC)initWithCoder:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RamXPC;
  if ([(BackendXPC *)&v8 initWithCoder:v4])
  {
    v7 = [v4 decodeInt64ForKey:@"size"];
    [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [objc_claimAutoreleasedReturnValue() getUUIDBytes:v9];
    std::allocate_shared[abi:ne200100]<BackendNull,std::allocator<BackendNull>,unsigned long long &,boost::uuids::uuid &,0>();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RamXPC;
  [(BackendXPC *)&v8 encodeWithCoder:v4];
  [(BackendXPC *)self backend];
  [v4 encodeInt64:(*(*v6 + 40))() forKey:@"size"];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v5 = [(BackendXPC *)self instanceID];
  [v4 encodeObject:v5 forKey:@"identifier"];
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