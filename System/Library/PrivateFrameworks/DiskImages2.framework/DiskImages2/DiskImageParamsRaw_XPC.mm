@interface DiskImageParamsRaw_XPC
- (BOOL)isWritableFormat;
- (unint64_t)numBlocks;
- (unique_ptr<DiskImage,)createSinkDiskImage;
@end

@implementation DiskImageParamsRaw_XPC

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v4 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  get_sink_backend(&v9, &v11);
  std::dynamic_pointer_cast[abi:ne200100]<Knoxbackend,Backend>(&v11, &v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v13)
  {
    [(DiskImageParamsXPC *)self setBlockSize:*(*(v13 + 3) + 64)];
    backendXPC2 = [(DiskImageParamsXPC *)self backendXPC];
    if (backendXPC2)
    {
      [backendXPC2 backend];
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    [(DiskImageParamsXPC *)self blockSize];
    operator new();
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  backendXPC3 = [(DiskImageParamsXPC *)self backendXPC];
  v7 = backendXPC3;
  if (backendXPC3)
  {
    [backendXPC3 backend];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  std::dynamic_pointer_cast[abi:ne200100]<AEA_backend,Backend>(&v11, &v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v13)
  {
    AEA_backend::get_compressed_blk_size(v13);
    AEAwrapper::Context::getAEAIdentifier((*(v13 + 7) + 8));
    operator new();
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  backendXPC4 = [(DiskImageParamsXPC *)self backendXPC];
  if (backendXPC4)
  {
    [backendXPC4 backend];
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  [(DiskImageParamsXPC *)self blockSize];
  operator new();
}

- (BOOL)isWritableFormat
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v3 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  get_sink_backend(&v6, &v8);
  std::dynamic_pointer_cast[abi:ne200100]<Knoxbackend,Backend>(&v8, &v10);
  v4 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4 == 0;
}

- (unint64_t)numBlocks
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v4 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
    backendXPC = v8;
  }

  else
  {
    v9 = 0;
  }

  v5 = (*(*backendXPC + 40))(backendXPC);
  blockSize = [(DiskImageParamsXPC *)self blockSize];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v5 / blockSize;
}

@end