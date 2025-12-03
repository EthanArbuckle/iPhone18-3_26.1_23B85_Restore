@interface FastFolderCopierWrapper
- (BOOL)copyWithDstFolder:(id)folder error:(id *)error;
- (BOOL)traverseSrcFolderWithError:(id *)error;
- (FastFolderCopierWrapper)initWithSrcFolder:(id)folder parallelMode:(BOOL)mode progress:(id)progress;
- (id).cxx_construct;
- (id)copyWithDstFolder:error:;
- (shared_ptr<BaseFolderCopier>)copier;
- (uint64_t)copyWithDstFolder:error:;
- (unint64_t)folderSize;
- (unint64_t)numFiles;
- (void)copyWithDstFolder:error:;
- (void)setCopier:(shared_ptr<BaseFolderCopier>)copier;
@end

@implementation FastFolderCopierWrapper

- (FastFolderCopierWrapper)initWithSrcFolder:(id)folder parallelMode:(BOOL)mode progress:(id)progress
{
  modeCopy = mode;
  v17 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  progressCopy = progress;
  v16.receiver = self;
  v16.super_class = FastFolderCopierWrapper;
  v10 = [(FastFolderCopierWrapper *)&v16 init];
  if (v10)
  {
    objc_storeStrong(&v10->_progress, progress);
    if (modeCopy)
    {
      v11 = folderCopy;
      [folderCopy fileSystemRepresentation];
      std::allocate_shared[abi:ne200100]<ParallelFolderCopier,std::allocator<ParallelFolderCopier>,char const*,0>();
    }

    v12 = folderCopy;
    [folderCopy fileSystemRepresentation];
    std::allocate_shared[abi:ne200100]<SerialFolderCopier,std::allocator<SerialFolderCopier>,char const*,0>();
  }

  v13 = 0;

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __67__FastFolderCopierWrapper_initWithSrcFolder_parallelMode_progress___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *__error();
  if (DIForwardLogs())
  {
    v3 = getDIOSLog();
    os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    *&buf[4] = 80;
    LOWORD(v10[0]) = 2080;
    *(v10 + 2) = "[FastFolderCopierWrapper initWithSrcFolder:parallelMode:progress:]_block_invoke";
    v4 = _os_log_send_and_compose_impl();

    if (v4)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v4);
      free(v4);
    }
  }

  else
  {
    v5 = getDIOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      *&buf[4] = 80;
      LOWORD(v10[0]) = 2080;
      *(v10 + 2) = "[FastFolderCopierWrapper initWithSrcFolder:parallelMode:progress:]_block_invoke";
      _os_log_impl(&dword_248DE0000, v5, OS_LOG_TYPE_ERROR, "%.*s: Cancelling copy (NSProgress cancel requested)", buf, 0x12u);
    }
  }

  *__error() = v2;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 copier];
    v7 = v10[0];
    *(*buf + 88) = 1;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    MEMORY[0x58] = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)folderSize
{
  [(FastFolderCopierWrapper *)self copier];
  v2 = *(v4 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

- (unint64_t)numFiles
{
  [(FastFolderCopierWrapper *)self copier];
  v3 = *(v5 + 64);
  v2 = *(v5 + 72);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3);
}

- (BOOL)traverseSrcFolderWithError:(id *)error
{
  [(FastFolderCopierWrapper *)self copier];
  BaseFolderCopier::traverseSrcFolder(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)copyWithDstFolder:(id)folder error:(id *)error
{
  v19[4] = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  progress = [(FastFolderCopierWrapper *)self progress];
  [progress setCompletedUnitCount:6];

  v7 = MEMORY[0x277CCAC48];
  progress2 = [(FastFolderCopierWrapper *)self progress];
  v9 = [v7 progressWithTotalUnitCount:100 parent:progress2 pendingUnitCount:94];

  [(FastFolderCopierWrapper *)self copier];
  v10 = v17;
  v11 = folderCopy;
  fileSystemRepresentation = [folderCopy fileSystemRepresentation];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &fileSystemRepresentation);
  v12 = v9;
  v19[0] = &unk_285BF4B28;
  v19[1] = v12;
  v19[3] = v19;
  BaseFolderCopier::copy(v10, &__p, v19);
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (shared_ptr<BaseFolderCopier>)copier
{
  cntrl = self->_copier.__cntrl_;
  *v2 = self->_copier.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setCopier:(shared_ptr<BaseFolderCopier>)copier
{
  v4 = *copier.__ptr_;
  v3 = *(copier.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_copier.__cntrl_;
  self->_copier.__ptr_ = v4;
  self->_copier.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)copyWithDstFolder:error:
{

  operator delete(self);
}

- (id)copyWithDstFolder:error:
{
  *a2 = &unk_285BF4B28;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (uint64_t)copyWithDstFolder:error:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end