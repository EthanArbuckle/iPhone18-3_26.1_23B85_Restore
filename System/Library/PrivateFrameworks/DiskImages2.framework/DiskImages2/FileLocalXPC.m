@interface FileLocalXPC
- (FileLocalXPC)initWithBackend:(const void *)a3;
- (FileLocalXPC)initWithCoder:(id)a3;
- (FileLocalXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FileLocalXPC

- (FileLocalXPC)initWithURL:(id)a3 fileOpenFlags:(int)a4
{
  v6 = a3;
  v9 = a4;
  v8.receiver = self;
  v8.super_class = FileLocalXPC;
  if ([(FileLocalXPC *)&v8 init])
  {
    [v6 fileSystemRepresentation];
    std::allocate_shared[abi:ne200100]<FileLocal,std::allocator<FileLocal>,char const*,int &,0>();
  }

  return 0;
}

- (FileLocalXPC)initWithBackend:(const void *)a3
{
  v12.receiver = self;
  v12.super_class = FileLocalXPC;
  v4 = [(FileLocalXPC *)&v12 init];
  if (v4)
  {
    get_backend_from_graph<FileLocal>(a3, &v10);
    v5 = v10;
    FileDescriptor::update_info(*(v10 + 40));
    atomic_store(*(*(v5 + 40) + 16), (*(v5 + 40) + 64));
    v6 = *(a3 + 1);
    v8 = *a3;
    v9 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(BackendXPC *)v4 setBackend:&v8];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  return v4;
}

- (FileLocalXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FileLocalXPC;
  if ([(BackendXPC *)&v10 initWithCoder:v4])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file_handle"];
    v9 = [v4 decodeBoolForKey:@"is_writable"];
    v8 = [v4 decodeBoolForKey:@"is_locked"];
    v7 = dup([v5 fileDescriptor]);
    std::allocate_shared[abi:ne200100]<FileLocal,std::allocator<FileLocal>,int &,BOOL &,BOOL &,0>();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(BackendXPC *)self backend];
  get_backend_from_graph<FileLocal>(&v9, &v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v8.receiver = self;
  v8.super_class = FileLocalXPC;
  [(BackendXPC *)&v8 encodeWithCoder:v4];
  v5 = objc_alloc(MEMORY[0x277CCA9F8]);
  v6 = v11;
  v7 = [v5 initWithFileDescriptor:(*(*v11 + 192))(v11)];
  [v4 encodeObject:v7 forKey:@"file_handle"];
  [(BackendXPC *)self backend];
  [v4 encodeBool:(*(*v9 + 48))(v9) forKey:@"is_writable"];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  [v4 encodeBool:FileLocal::remove_lock_ownership(v6) forKey:@"is_locked"];

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

@end