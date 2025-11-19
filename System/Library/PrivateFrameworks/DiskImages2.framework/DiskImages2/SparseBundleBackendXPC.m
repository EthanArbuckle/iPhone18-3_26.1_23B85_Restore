@interface SparseBundleBackendXPC
+ (BOOL)isSparseBundleWithURL:(id)a3;
- (BOOL)isUnlocked;
- (SparseBundleBackendXPC)initWithCoder:(id)a3;
- (SparseBundleBackendXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4;
- (SparseBundleBackendXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4 bandSize:(unint64_t)a5;
- (id)newWithCryptoFormat:(const void *)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)replaceWithBackendXPC:(id)a3;
@end

@implementation SparseBundleBackendXPC

- (SparseBundleBackendXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SparseBundleBackendXPC;
  v5 = [(BackendXPC *)&v13 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle_handle"];
    v6 = [objc_claimAutoreleasedReturnValue() fileDescriptor];
    v12 = dup(v6);
    v11 = [v4 decodeBoolForKey:@"is_writable"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lock_backend"];
    v10 = 0uLL;
    if (v7)
    {
      [v7 backend];
      v10 = v9;
    }

    [(BackendXPC *)v5 cryptoHeader];
    crypto::format_serializer::decode(v4, &v9);
    std::allocate_shared[abi:ne200100]<SparseBundleBackend,std::allocator<SparseBundleBackend>,int &,BOOL &,std::shared_ptr<FileLocal> &,std::shared_ptr<crypto::format> &,0>();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(BackendXPC *)self backend];
  v6 = v17;
  v5 = v18;
  v16.receiver = self;
  v16.super_class = SparseBundleBackendXPC;
  [(BackendXPC *)&v16 encodeWithCoder:v4];
  v7 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:(**(v6 + 24))()];
  [v4 encodeObject:v7 forKey:@"bundle_handle"];
  [v4 encodeBool:(*(*v6 + 48))(v6) forKey:@"is_writable"];
  v9 = *(v6 + 88);
  if (v9)
  {
    crypto::format_serializer::encode(v4, v9, v8);
  }

  if ((*(*v6 + 208))(v6))
  {
    v10 = objc_alloc_init(FileLocalXPC);
    v11 = v10;
    v13 = *(v6 + 104);
    v12 = *(v6 + 112);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v13;
    v15 = v12;
    [(BackendXPC *)v10 setBackend:&v14];
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    [v4 encodeObject:v11 forKey:@"lock_backend"];
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (SparseBundleBackendXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4 bandSize:(unint64_t)a5
{
  v8 = a3;
  v12 = a4;
  v11 = a5;
  v10.receiver = self;
  v10.super_class = SparseBundleBackendXPC;
  if ([(SparseBundleBackendXPC *)&v10 init])
  {
    [v8 fileSystemRepresentation];
    std::allocate_shared[abi:ne200100]<SparseBundleBackend,std::allocator<SparseBundleBackend>,char const*,int &,unsigned long &,0>();
  }

  return 0;
}

- (SparseBundleBackendXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4
{
  v6 = a3;
  v9 = a4;
  v8.receiver = self;
  v8.super_class = SparseBundleBackendXPC;
  if ([(SparseBundleBackendXPC *)&v8 init])
  {
    [v6 fileSystemRepresentation];
    std::allocate_shared[abi:ne200100]<SparseBundleBackend,std::allocator<SparseBundleBackend>,char const*,int &,0>();
  }

  return 0;
}

- (void)replaceWithBackendXPC:(id)a3
{
  v4 = a3;
  [(BackendXPC *)self backend];
  v5 = v13;
  v7 = *(v12 + 88);
  v6 = *(v12 + 96);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11.receiver = self;
  v11.super_class = SparseBundleBackendXPC;
  [(BackendXPC *)&v11 replaceWithBackendXPC:v4];
  [(BackendXPC *)self backend];
  v8 = v12;
  v9 = v13;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(v8 + 96);
  *(v8 + 88) = v7;
  *(v8 + 96) = v6;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (BOOL)isUnlocked
{
  [(BackendXPC *)self backend];
  v2 = *(v4 + 88);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 != 0;
}

- (id)newWithCryptoFormat:(const void *)a3 error:(id *)a4
{
  v6 = objc_alloc_init(SparseBundleBackendXPC);
  [(BackendXPC *)self backend];
  v8 = v19;
  v7 = v20;
  v10 = *a3;
  v9 = *(a3 + 1);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v19 + 96);
  *(v19 + 88) = v10;
  *(v8 + 96) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v17 = v8;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(BackendXPC *)v6 setBackend:&v17];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v13 = **a3;
  v12 = *(*a3 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = [(BackendXPC *)v6 cryptoHeader];
  v15 = v14[1];
  *v14 = v13;
  v14[1] = v12;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v6;
}

+ (BOOL)isSparseBundleWithURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"Info.plist" relativeToURL:v3];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"token" relativeToURL:v3];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v4 path];
  if ([v6 fileExistsAtPath:v7])
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v5 path];
    v10 = [v8 fileExistsAtPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end