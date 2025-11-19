mlir::ODIE::Compiler::_anonymous_namespace_::SegmenterOptions *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14[173] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v8 = llvm::errs(v7);
  if ((mlir::detail::PassOptions::parseFromString(v14, v5, v6, v8) & 1) == 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(*v9 + 48))(v9, a2, v14);
    v10 = 1;
LABEL_5:
    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }

  v13 = std::__throw_bad_function_call[abi:nn200100]();
}

mlir::ODIE::Compiler::_anonymous_namespace_::SegmenterOptions *mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions::SegmenterOptions(mlir::ODIE::Compiler::_anonymous_namespace_::SegmenterOptions *this)
{
  *&v4 = "An SoC identifier. E.g., h14g.";
  *(&v4 + 1) = 30;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v2 + 664), this, "target-soc", 10, &v4);
  *&v4 = "LLVM style target to compile for. E.g., arm64-macos-macos14.";
  *(&v4 + 1) = 60;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((this + 904), this, "target-triple", 13, &v4);
  *&v4 = "A string to store all delegate related options.";
  *(&v4 + 1) = 47;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((this + 1144), this, "target-delegate", 15, &v4);
  return this;
}

void mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions::~SegmenterOptions(mlir::ODIE::Compiler::_anonymous_namespace_::SegmenterOptions *this)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1144);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 904);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 664);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 424);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 184);
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(this + 128);
  v3 = *(this + 10);
  if (v3 != this + 96)
  {
    free(v3);
  }

  v4 = *(this + 4);
  if (v4 != this + 48)
  {
    free(v4);
  }
}

mlir::ODIE::Compiler::_anonymous_namespace_::ExternalRewriterOptions *mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions::ExternalRewriterOptions(mlir::ODIE::Compiler::_anonymous_namespace_::ExternalRewriterOptions *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = this + 48;
  *(this + 5) = 0x400000000;
  *(this + 10) = this + 96;
  *(this + 11) = 0x400000000;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x1000000000;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *&v4 = "The name of the external rewriter (to look up in the registry).";
  *(&v4 + 1) = 63;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((this + 184), this, "name", 4, &v4);
  v3 = &byte_25D0A27DF;
  *&v4 = "The arguments to the rewriter needed to perform the requested task.";
  *(&v4 + 1) = 67;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::initializer<char [1]>,llvm::cl::desc>(this + 424, this, &v3, &v4);
  return this;
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::initializer<char [1]>,llvm::cl::desc>(uint64_t a1, const void *a2, char **a3, _OWORD *a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = 0;
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 120) = 0;
  v9 = (v8 + 120);
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 176) = 0;
  *(v8 + 152) = 0;
  v10 = (v8 + 152);
  *(v8 + 144) = &unk_286E79070;
  *v8 = &unk_286E792E0;
  *(v8 + 184) = &unk_286E791E0;
  v11 = (v8 + 192);
  *(v8 + 192) = &unk_286E75EB0;
  *(v8 + 216) = v8 + 192;
  llvm::cl::Option::setArgStr(v8, "args", 4);
  llvm::cl::sub::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(v14, a1);
  std::string::basic_string[abi:nn200100]<0>(&__str, *a3);
  std::string::operator=(v9, &__str);
  *(a1 + 176) = 1;
  std::string::operator=(v10, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 232) = 0;
  *a1 = &unk_286E75DD0;
  *(a1 + 224) = &unk_286E75E50;
  __str.__r_.__value_.__r.__words[0] = a1 + 224;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &__str);
  v16[0] = &unk_286E75680;
  v16[1] = a1;
  v16[3] = v16;
  std::function<void ()(std::string const&)>::operator=(v11, v16);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v16);
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_11initializerIA1_cEENSD_4descEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E75680;
  a2[1] = v2;
  return result;
}

llvm::cl::Option *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(llvm::cl::Option *a1, const void *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  v10[0] = a2;
  v10[1] = 0;
  v7 = llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v11, v10, a5);
  *(v7 + 232) = 0;
  *v7 = &unk_286E75DD0;
  *(v7 + 28) = &unk_286E75E50;
  v10[0] = v7 + 224;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, v10);
  v12[0] = &unk_286E75EF8;
  v12[1] = a1;
  v12[3] = v12;
  std::function<void ()(std::string const&)>::operator=(a1 + 24, v12);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v12);
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

llvm::cl::Option *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(llvm::cl::Option *a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 176) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 152) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = &unk_286E79070;
  *v8 = &unk_286E792E0;
  *(v8 + 184) = &unk_286E791E0;
  *(v8 + 192) = &unk_286E75EB0;
  *(v8 + 216) = v8 + 192;
  llvm::cl::Option::setArgStr(v8, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(a3, a1);
  *(a1 + 2) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISR_EEFvRKSB_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E75EF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1}>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5[173] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = *(a2 + 8);
  bzero(v5, 0x568uLL);
  v3(v2, v5);
  v4 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<mlir::ODIE::Compiler::registerPassPipelines(void)::$_2,std::allocator<mlir::ODIE::Compiler::registerPassPipelines(void)::$_2>,void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>::operator()(uint64_t a1, mlir::ODIE::Compiler::_anonymous_namespace_ *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  RegisteredOptionsForPassManager = mlir::ODIE::Compiler::getRegisteredOptionsForPassManager(a2);
  mlir::ODIE::Compiler::Transforms::impl::createVerifyUniqueDebugInfoRecordOps(RegisteredOptionsForPassManager);
}

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E75758;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E75758;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286E75758;
  v3 = (a2 + 5);
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  if (*(a1 + 63) < 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    std::string::__init_copy_ctor_external(v3, v5, v6);
  }

  else
  {
    v4 = *(a1 + 40);
    v3->__r_.__value_.__r.__words[2] = *(a1 + 56);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{

  operator delete(a1);
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
  }

  v8 = *a4;
  v7 = a4[1];
  v9 = *a2;
  *a2 = 0;
  v18 = v9;
  std::__fs::filesystem::__absolute(&__p, &v17, 0);
  v12 = *(a1 + 40);
  v11 = a1 + 40;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v10 = v11;
  }

  if (v13 < 0)
  {
    v13 = *(v11 + 8);
  }

  v20 = v10;
  v21 = v13;
  v22 = v8;
  v23 = v7;
  v14 = *(v11 - 8);
  if (v14)
  {
    (*(*v14 + 48))(v14, &v18);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    v15 = v18;
    v18 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

uint64_t std::__function::__alloc_func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::destroy[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1);
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,0>(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>::function(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E757A0;
  return a1;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E757A0;

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{

  operator delete(a1);
}

mlir::ODIE::Compiler::_anonymous_namespace_::ToOdixPipelineOptions *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14[131] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v8 = llvm::errs(v7);
  if ((mlir::detail::PassOptions::parseFromString(v14, v5, v6, v8) & 1) == 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(*v9 + 48))(v9, a2, v14);
    v10 = 1;
LABEL_5:
    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }

  v13 = std::__throw_bad_function_call[abi:nn200100]();
}

mlir::ODIE::Compiler::_anonymous_namespace_::ToOdixPipelineOptions *mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions::ToOdixPipelineOptions(mlir::ODIE::Compiler::_anonymous_namespace_::ToOdixPipelineOptions *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = this + 48;
  *(this + 5) = 0x400000000;
  *(this + 10) = this + 96;
  *(this + 11) = 0x400000000;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x1000000000;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  v2 = (this + 184);
  v3 = llvm::cl::Option::Option(this + 184, 1, 0);
  *(this + 352) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 19) = 0u;
  *(this + 23) = &unk_286E758A8;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 48) = &unk_286E75958;
  *(this + 49) = &unk_286E75910;
  *(this + 52) = this + 392;
  llvm::cl::Option::setArgStr(v3, "compilers", 9);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((this + 272), this, &v7);
  *(this + 27) = "A list of compilers to use during delegate compilation.";
  *(this + 28) = 55;
  llvm::cl::Option::addArgument(v2);
  *(this + 432) = 0;
  *(this + 23) = &unk_286E757E8;
  *(this + 53) = &unk_286E75868;
  *(this + 55) = &unk_286E75958;
  if ((*(this + 352) & 1) == 0)
  {
    *(this + 352) = 1;
  }

  *&v7 = this + 424;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](this + 160, &v7);
  v5 = 1;
  v6 = &v5;
  *&v7 = "Erase all externalized graphs rather than writing them out.";
  *(&v7 + 1) = 59;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::initializer<BOOL>,llvm::cl::desc>(this + 448, this, "remove-externalized-graphs", 26, &v6, &v7);
  v5 = 0;
  v6 = &v5;
  *&v7 = "Const fold de-palletization op to speed up interpreter run";
  *(&v7 + 1) = 58;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::initializer<BOOL>,llvm::cl::desc>(this + 648, this, "fold-constexpr-ops", 18, &v6, &v7);
  v5 = 0;
  v6 = &v5;
  *&v7 = "Require full delegation, i.e. disallow any ops being interpreted using kernels";
  *(&v7 + 1) = 78;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::initializer<BOOL>,llvm::cl::desc>(this + 848, this, "require-full-delegation", 23, &v6, &v7);
  return this;
}

void mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions::~ToOdixPipelineOptions(mlir::ODIE::Compiler::_anonymous_namespace_::ToOdixPipelineOptions *this)
{
  v2 = (this + 848);
  *(this + 106) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1000);
  llvm::cl::Option::~Option(v2);
  *(this + 81) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 800);
  llvm::cl::Option::~Option(this + 81);
  *(this + 56) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 600);
  llvm::cl::Option::~Option(this + 56);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(this + 128);
  v4 = *(this + 10);
  if (v4 != this + 96)
  {
    free(v4);
  }

  v5 = *(this + 4);
  if (v5 != this + 48)
  {
    free(v5);
  }
}

BOOL mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    v12 = *(a1 + 120);
    {
      i -= 83;
    }

    *(a1 + 128) = v12;
    *(a1 + 168) = 0;
  }

  *(a1 + 248) = 1;
  v14 = a1;
  v15[0] = a1 + 256;
  v16[0] = a3;
  v16[1] = a4;
  v15[1] = a1;
  v15[2] = v16;
  v15[3] = &v14;
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::~ListOption(llvm::cl::Option *a1)
{

  JUMPOUT(0x25F891040);
}

void llvm::cl::list<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::setDefault(void *a1)
{
  a1[23] = a1[22];
  v3 = a1[15];
  {
    i -= 83;
  }

  a1[16] = v3;
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  if (*(a1 + 168) != 1 || (*(a1 + 128) == *(a1 + 120) ? (v4 = (*(a1 + 152) - *(a1 + 144)) >> 3 == 0xA3784A062B2E43DBLL * ((*(a1 + 128) - *(a1 + 120)) >> 3)) : (v4 = 0), !v4))
  {
    v5 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
    v6 = *(v5 + 4);
    if (*(v5 + 3) - v6 > 1uLL)
    {
      *v6 = 31549;
      *(v5 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v5, "={", 2uLL);
    }

    v7 = *(a1 + 120);
    v8 = *(a1 + 128);
    if (v7 != v8)
    {
      mlir::detail::PassOptions::print(*(a1 + 120), this);
      for (i = (v7 + 664); i != v8; i = (i + 664))
      {
        v10 = *(this + 4);
        if (*(this + 3) == v10)
        {
          llvm::raw_ostream::write(this, ",", 1uLL);
        }

        else
        {
          *v10 = 44;
          ++*(this + 4);
        }

        mlir::detail::PassOptions::print(i, this);
      }
    }

    v11 = *(this + 4);
    if (*(this + 3) == v11)
    {

      llvm::raw_ostream::write(this, "}", 1uLL);
    }

    else
    {
      *v11 = 125;
      ++*(this + 4);
    }
  }
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 120);
  v5 = *(a2 - 112);
  v6 = v5 - v4;
  v8 = a1 + 120;
  v7 = *(a1 + 120);
  v9 = *(a1 + 136);
  if (v9 - v7 < (v5 - v4))
  {
    v10 = 0xA3784A062B2E43DBLL * (v6 >> 3);
    if (v7)
    {
      v11 = *(a1 + 128);
      v12 = *(a1 + 120);
      if (v11 != v7)
      {
        do
        {
          v11 -= 83;
        }

        while (v11 != v7);
        v12 = *v8;
      }

      *(a1 + 128) = v7;
      operator delete(v12);
      v9 = 0;
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
    }

    if (v10 <= 0x62B2E43DAFCEA6)
    {
      v13 = 0xA3784A062B2E43DBLL * (v9 >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v10)
      {
        v14 = v10;
      }

      if (v13 >= 0x3159721ED7E753)
      {
        v15 = 0x62B2E43DAFCEA6;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x62B2E43DAFCEA6)
      {
      }
    }
  }

  v16 = *(a1 + 128);
  v17 = v16 - v7;
  if (v16 - v7 >= v6)
  {
    if (v5 != v4)
    {
      do
      {
        mlir::detail::PassOptions::copyOptionValuesFrom(v7, v4);
        v4 += 664;
        v7 += 664;
      }

      while (v4 != v5);
      v16 = *(a1 + 128);
    }

    while (v16 != v7)
    {
      v16 -= 83;
    }

    *(a1 + 128) = v7;
  }

  else
  {
    v18 = &v17[v4];
    if (v16 != v7)
    {
      do
      {
        mlir::detail::PassOptions::copyOptionValuesFrom(v7, v4);
        v4 += 664;
        v7 += 664;
        v17 -= 664;
      }

      while (v17);
      v16 = *(a1 + 128);
    }

    v19 = v16;
    do
    {
      v18 += 664;
      v16 += 83;
      v19 += 83;
    }

    while (v18 != v5);
    *(a1 + 128) = v19;
  }

  *(a1 + 248) = 1;
  *(a1 + 248) = *(a2 + 8);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::~ListOption(uint64_t a1)
{
}

{

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::list<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::handleOccurrence(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = a2;
  v29[30] = *MEMORY[0x277D85DE8];
  v19 = a2;
  bzero(v20, 0x298uLL);
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    v12 = *(a1 + 120);
    {
      i -= 83;
    }

    *(a1 + 128) = v12;
    *(a1 + 168) = 0;
  }

  v13 = llvm::errs(v10);
  v14 = mlir::detail::PassOptions::parseFromString(v20, a5, a6, v13);
  if (v14)
  {
    *(a1 + 12) = v8;
    std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 176), &v19);
    v15 = *(a1 + 232);
    if (!v15)
    {
      v18 = std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v15 + 48))(v15, v20);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v29);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(&v28);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(&v25);
  if (v23 != &v24)
  {
    free(v23);
  }

  if (v21 != &v22)
  {
    free(v21);
  }

  v16 = *MEMORY[0x277D85DE8];
  return (v14 & 1) == 0;
}

void llvm::cl::list<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::~list(llvm::cl::Option *a1)
{

  JUMPOUT(0x25F891040);
}

void llvm::cl::list_storage<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL>::addValue<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0xA3784A062B2E43DBLL * ((v3 - *a1) >> 3);
    if (v6 + 1 > 0x62B2E43DAFCEA6)
    {
    }

    v7 = 0xA3784A062B2E43DBLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x3159721ED7E753)
    {
      v9 = 0x62B2E43DAFCEA6;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
    }

    v10 = 664 * v6;
    v5 = (v10 + 664);
    v11 = *a1;
    v12 = a1[1];
    v13 = (v10 + *a1 - v12);
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v14 += 664;
        v15 = (v16 + 664);
      }

      while (v14 != v12);
      do
      {
        v11 += 83;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
  }

  a1[1] = v5;
}

void std::allocator_traits<std::allocator<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::destroy[abi:nn200100]<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,0>(void *a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option((a1 + 53));
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option((a1 + 23));
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap((a1 + 16));
  v3 = a1[10];
  if (v3 != a1 + 12)
  {
    free(v3);
  }

  v4 = a1[4];
  if (v4 != a1 + 6)
  {

    free(v4);
  }
}

_OWORD *mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions::ExternalRewriterOptions(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 4) = a1 + 3;
  *(a1 + 5) = 0x400000000;
  *(a1 + 10) = a1 + 6;
  *(a1 + 11) = 0x400000000;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0x1000000000;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *&v6 = "The name of the external rewriter (to look up in the registry).";
  *(&v6 + 1) = 63;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 184), a1, "name", 4, &v6);
  v5 = &byte_25D0A27DF;
  *&v6 = "The arguments to the rewriter needed to perform the requested task.";
  *(&v6 + 1) = 67;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::initializer<char [1]>,llvm::cl::desc>(a1 + 424, a1, &v5, &v6);
  mlir::detail::PassOptions::copyOptionValuesFrom(a1, a2);
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>(unint64_t a1)
{
  if (a1 < 0x62B2E43DAFCEA7)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void llvm::cl::list<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::~list(llvm::cl::Option *this)
{
  *this = &unk_286E758A8;
  v2 = this + 208;
  v3 = *(this + 29);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(this + 16);
    v8 = *(this + 15);
    if (v7 != v6)
    {
      do
      {
        v7 -= 83;
      }

      while (v7 != v6);
      v8 = *(this + 15);
    }

    *(this + 16) = v6;
    operator delete(v8);
  }

  llvm::cl::Option::~Option(this);
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>,mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions> &,mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20[30] = *MEMORY[0x277D85DE8];
  bzero(v11, 0x298uLL);
  v7 = llvm::errs(v6);
  if (mlir::detail::PassOptions::parseFromString(v11, a2, a3, v7))
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v20);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(&v19);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(&v16);
  if (v14 != &v15)
  {
    free(v14);
  }

  if (v12 != &v13)
  {
    free(v12);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _BYTE **a5, _OWORD *a6)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = a2;
  v17[1] = 0;
  v12 = llvm::cl::Option::Option(a1, 0, 0);
  *(v12 + 120) = 0;
  *(v12 + 128) = &unk_286E76000;
  *(v12 + 136) = 0;
  *v12 = &unk_286E79348;
  *(v12 + 144) = &unk_286E79090;
  v13 = (v12 + 152);
  *(v12 + 152) = &unk_286E76020;
  *(v12 + 176) = v12 + 152;
  llvm::cl::Option::setArgStr(v12, a3, a4);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(v17, a1);
  v14 = *a5;
  *(a1 + 120) = **a5;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v14;
  *(a1 + 32) = *a6;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 192) = 0;
  *a1 = &unk_286E75F40;
  *(a1 + 184) = &unk_286E75FC0;
  v17[0] = (a1 + 184);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, v17);
  v18[0] = &unk_286E75988;
  v18[1] = a1;
  v18[3] = v18;
  std::function<void ()(BOOL const&)>::operator=(v13, v18);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v18);
  v15 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_11initializerIbEENS7_4descEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKbEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E75988;
  a2[1] = v2;
  return result;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1}>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5[131] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = *(a2 + 8);
  bzero(v5, 0x418uLL);
  v3(v2, v5);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>::function(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E75A60;
  return a1;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E75A60;

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25[26] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  memset(v16, 0, sizeof(v16));
  v17 = v19;
  v18 = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = 0;
  v20[5] = 0;
  v20[6] = 0x1000000000;
  v21 = 0u;
  v22 = 0u;
  v15.n128_u64[0] = "Materialize the given enumerated shapes into the graph as static-shaped functions. Example: 'main:(3x3;4x3),main:(4x3;4x3)'";
  v15.n128_u64[1] = 123;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>(&v23, v16, "shapes", 6, &v15);
  v15.n128_u64[0] = "If true, create new entry points for each shape. If false, retain the existing entry point(s) and generate logic to dispatch based in the runtime shapes of the inputs.";
  v15.n128_u64[1] = 167;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc>(&v24, v16, &v15);
  v15.n128_u64[1] = 63;
  v13 = 1;
  v14 = &v13;
  v7 = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v25, v16, "remove-unused-externalized-graphs", 33, &v15, &v14);
  v8 = llvm::errs(v7);
  if (mlir::detail::PassOptions::parseFromString(v16, v5, v6, v8))
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      JUMPOUT(0x25C8A1438);
    }

    (*(*v9 + 48))(v9, a2, v16);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1}>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = *(a2 + 8);
  bzero(v8, 0x350uLL);
  v9 = v11;
  v10 = 4;
  v11[4] = v13;
  v12 = 4;
  v13[4] = 0;
  v13[5] = 0;
  v13[6] = 0x1000000000;
  v14 = 0u;
  v15 = 0u;
  v7.n128_u64[0] = "Materialize the given enumerated shapes into the graph as static-shaped functions. Example: 'main:(3x3;4x3),main:(4x3;4x3)'";
  v7.n128_u64[1] = 123;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>(&v16, v8, "shapes", 6, &v7);
  v7.n128_u64[0] = "If true, create new entry points for each shape. If false, retain the existing entry point(s) and generate logic to dispatch based in the runtime shapes of the inputs.";
  v7.n128_u64[1] = 167;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc>(&v17, v8, &v7);
  v7.n128_u64[1] = 63;
  v5 = 1;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v18, v8, "remove-unused-externalized-graphs", 33, &v7, &v6);
  v3(v2, v8);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(mlir::OpPassManager &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(mlir::OpPassManager &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<void (*)(mlir::OpPassManager &),std::allocator<void (*)(mlir::OpPassManager &)>,void ()(mlir::OpPassManager &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E760B0;
  a2[1] = v2;
  return result;
}

uint64_t mlir::ODIE::Compiler::FrontendRegistry::getInstance(mlir::ODIE::Compiler::FrontendRegistry *this)
{
  v1 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v1 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v3)
    {
      operator new();
    }
  }

  return v1[350];
}

unint64_t mlir::ODIE::Compiler::FrontendRegistry::registerExtension(mlir::ODIE::Compiler::FrontendRegistry *a1)
{
  Instance = mlir::ODIE::Compiler::FrontendRegistry::getInstance(a1);
  v3 = (*(**a1 + 24))();
  v5 = *Instance;
  v6 = Instance[2];
  if (v6)
  {
    v7 = v3;
    v8 = v4;
    v9 = 8 * v6;
    v10 = &v5[v6];
    while (1)
    {
      v11 = (*(**v5 + 24))();
      if (v12 == v8 && (!v8 || !memcmp(v11, v7, v8)))
      {
        break;
      }

      ++v5;
      v9 -= 8;
      if (!v9)
      {
        v5 = v10;
        break;
      }
    }

    v13 = v5;
    v5 = *Instance;
    v14 = Instance[2];
  }

  else
  {
    v14 = 0;
    v13 = *Instance;
  }

  if (v13 == &v5[v14])
  {
    result = llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>>(Instance, a1, 1);
    v18 = *Instance;
    v19 = Instance[2];
    v20 = *result;
    *result = 0;
    v18[v19] = v20;
    Instance[2] = v19 + 1;
  }

  else
  {
    v15 = *a1;
    *a1 = 0;
    result = *v13;
    *v13 = v15;
    if (result)
    {
      v17 = *(*result + 8);

      return v17();
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::FrontendRegistry::getExtensionForDialect(mlir::ODIE::Compiler::FrontendRegistry *a1, size_t a2)
{
  Instance = mlir::ODIE::Compiler::FrontendRegistry::getInstance(a1);
  v5 = *Instance;
  v6 = *(Instance + 8);
  if (v6)
  {
    v7 = Instance;
    v8 = 8 * v6;
    v9 = v5 + 8 * v6;
    while (1)
    {
      v10 = (*(**v5 + 24))();
      if (v11 == a2 && (!a2 || !memcmp(v10, a1, a2)))
      {
        break;
      }

      v5 += 8;
      v8 -= 8;
      if (!v8)
      {
        v5 = v9;
        break;
      }
    }

    v12 = v5;
    v5 = *v7;
    v13 = *(v7 + 8);
  }

  else
  {
    v13 = 0;
    v12 = *Instance;
  }

  if (v12 == v5 + 8 * v13)
  {
    return 0;
  }

  else
  {
    return *v12;
  }
}

uint64_t mlir::ODIE::Compiler::FrontendRegistry::registerAllDialects(mlir::ODIE::Compiler::FrontendRegistry *a1)
{
  result = mlir::ODIE::Compiler::FrontendRegistry::getInstance(a1);
  v3 = *(result + 8);
  if (v3)
  {
    v4 = *result;
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      result = (*(*v6 + 16))(v6, a1);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>>(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  v5 = v4 + a3;
  if (v4 + a3 > a1[3])
  {
    v7 = *a1 + 8 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::grow(unsigned int *a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 4;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 8, &v6);
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[3] = v5;
}

unsigned int *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::moveElementsForGrow(unsigned int *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    v4 = v2;
    v5 = 8 * v2;
    v6 = *result;
    do
    {
      v7 = *v6;
      *v6++ = 0;
      *a2++ = v7;
      v5 -= 8;
    }

    while (v5);
    v8 = v3 - 1;
    do
    {
      result = v8[v4];
      v8[v4] = 0;
      if (result)
      {
        result = (*(*result + 8))(result, a2);
      }

      --v4;
    }

    while (v4 * 8);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_bytecode_blob(uint64_t *a1)
{
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    if (!*a1)
    {
      llvm::report_fatal_error("cannot use null odiec_bytecode_blob_t", 1);
    }

    v5 = v4 & 0xFFFFFFFFFFFFFFF8;
    v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
    *(v4 & 0xFFFFFFFFFFFFFFF8) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    MEMORY[0x25F891040](v5, 0x20C4093837F09);
    *a1 = 0;
  }

  return v3 & 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((v6 & 1) == 0 || v5[4])
  {
    return 0;
  }

  v5[3] = a2;
  v5[4] = a3;
  v5[1] = a2;
  v5[2] = a2 + a3;
  return 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::get_buffer(uint64_t result, void *a2, void *a3)
{
  if (!result)
  {
    llvm::report_fatal_error("cannot use null odiec_bytecode_blob_t", 1);
  }

  *a2 = *(*(result & 0xFFFFFFFFFFFFFFF8) + 8);
  *a3 = *(*(result & 0xFFFFFFFFFFFFFFF8) + 16) - *(*(result & 0xFFFFFFFFFFFFFFF8) + 8);
  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_buffer_deleter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((v6 & 1) != 0 && !*(v5 + 64))
  {
    v9 = &unk_286E76130;
    *&v10 = a3;
    *(&v10 + 1) = a2;
    v11 = &v9;
    if ((v5 + 40) != &v9)
    {
      *(v5 + 40) = &unk_286E76130;
      *(v5 + 48) = v10;
      v11 = 0;
      *(v5 + 64) = v5 + 40;
    }

    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v9);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::odiec_wrapped_buffer::~odiec_wrapped_buffer(mlir::ODIE::Compiler::capi::detail::_anonymous_namespace_::odiec_wrapped_buffer *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 40);
}

{

  JUMPOUT(0x25F891040);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::odiec_wrapped_buffer::mutate(uint64_t a1)
{
  if (!a1)
  {
    llvm::report_fatal_error("cannot use null odiec_bytecode_blob_t", 1);
  }

  if ((a1 & 4) != 0)
  {
    return *(a1 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_buffer_deleter(odiec_bytecode_blob_t,void *,void (*)(void *))::$_0,std::allocator<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_buffer_deleter(odiec_bytecode_blob_t,void *,void (*)(void *))::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E76130;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_context(mlir::MLIRContextImpl ***a1)
{
  v2 = *a1;
  if (!v2)
  {
  }

  mlir::MLIRContext::~MLIRContext(v2);
  MEMORY[0x25F891040]();
  *a1 = 0;
  return 1;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::invoke(uint64_t a1, __int128 **a2, unint64_t a3, uint64_t a4)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v8 = v38;
  v36 = v38;
  v37 = 0x100000000;
  if (a3 < 2)
  {
    if (!a3)
    {
      v19 = 0;
      goto LABEL_33;
    }

    v18 = 0;
    v10 = v38;
  }

  else
  {
    buffer = 0;
    v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v36, v38, a3, 80, &buffer);
    v10 = v9;
    v11 = v36;
    if (v37)
    {
      v33 = a1;
      v34 = v38;
      v12 = 80 * v37;
      v13 = v9;
      do
      {
        *v13 = 0;
        *(v13 + 18) = -1;
        v14 = v11[18];
        if (v14 != -1)
        {
          v43[0] = v13;
          (off_286E76178[v14])(v43, v11);
          *(v13 + 18) = v14;
        }

        v13 += 80;
        v11 += 20;
        v12 -= 80;
      }

      while (v12);
      v11 = v36;
      if (v37)
      {
        v15 = v36 + 80 * v37 - 80;
        v16 = -80 * v37;
        a1 = v33;
        do
        {
          v17 = *(v15 + 18);
          if (v17 != -1)
          {
            (off_286E76168[v17])(v43, v15);
          }

          *(v15 + 18) = -1;
          v15 -= 80;
          v16 += 80;
        }

        while (v16);
        v11 = v36;
        v8 = v34;
      }

      else
      {
        a1 = v33;
        v8 = v34;
      }
    }

    v20 = buffer;
    if (v11 != v8)
    {
      free(v11);
    }

    v36 = v10;
    HIDWORD(v37) = v20;
    v18 = v37;
  }

  v21 = &v10[80 * v18 + 72];
  v22 = 8 * a3;
  while (1)
  {
    v23 = *a2;
    if (!*a2)
    {
      break;
    }

    v24 = (v21 - 18);
    if (*(v23 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v24, *v23, *(v23 + 1));
    }

    else
    {
      v25 = *v23;
      *(v21 - 7) = *(v23 + 2);
      *&v24->__r_.__value_.__l.__data_ = v25;
    }

    v26 = (v21 - 12);
    if (*(v23 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v26, *(v23 + 3), *(v23 + 4));
    }

    else
    {
      v27 = *(v23 + 24);
      *(v21 - 4) = *(v23 + 5);
      *&v26->__r_.__value_.__l.__data_ = v27;
    }

    v28 = (v21 - 6);
    if (*(v23 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(v28, *(v23 + 6), *(v23 + 7));
    }

    else
    {
      v29 = v23[3];
      *(v21 - 1) = *(v23 + 8);
      *&v28->__r_.__value_.__l.__data_ = v29;
    }

    *v21 = 0;
    v21 += 20;
    ++a2;
    v22 -= 8;
    if (!v22)
    {
      v19 = v37;
LABEL_33:
      LODWORD(v37) = v19 + a3;
      if (a4)
      {
        if (*(a4 + 80))
        {
          if (a1)
          {
            v30 = *(***(a1 + 24) + 32);
            std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](v35, a4 + 56);
            v31 = *v30;
            std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](v39, v35);
            std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](v43, v39);
            buffer = llvm::allocate_buffer(0x20, 8uLL);
            v41 = xmmword_25D0A0540;
            std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](buffer, v43);
            v42 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEE15CallbacksHolderIZNS3_16DiagnosticEngine15registerHandlerIZNS3_4ODIE8Compiler4capi6detail12_GLOBAL__N_16invokeE14odiec_module_tPK12odiec_pass_tx22odiec_global_options_tE3__1vEENSt3__19enable_ifIXsr3std7is_sameIT0_vEE5valueEyE4typeEOT_EUlS5_E_SS_vE9CallbacksE + 4;
            std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v43);
            mlir::DiagnosticEngine::registerHandler((v31 + 32), &buffer);
            llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(&buffer);
            std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v39);
            std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v35);
            goto LABEL_38;
          }
        }

        else if (a1)
        {
LABEL_38:
          mlir::ODIE::Compiler::applyPasses(a1);
        }
      }

      else
      {
      }

LABEL_40:
      llvm::report_fatal_error(v32, 1);
    }
  }

  goto LABEL_40;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir4ODIE8Compiler9PassEntryENS_8functionIFN4llvm13LogicalResultERNS8_13OpPassManagerEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSB_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir4ODIE8Compiler9PassEntryENS_8functionIFN4llvm13LogicalResultERNS8_13OpPassManagerEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSB_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  if (result == a2)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v4 = *(a2 + 24);
  *(v2 + 40) = *(a2 + 5);
  *(v2 + 24) = v4;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  result = a2[3];
  *(v2 + 64) = *(a2 + 8);
  *(v2 + 48) = result;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>> &&>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(v3 + 24) = v3;
      return (*(**(a2 + 24) + 24))();
    }

    else
    {
      *(v3 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v3 + 24) = 0;
  }

  return result;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEE8CallImplIZNS3_16DiagnosticEngine15registerHandlerIZNS3_4ODIE8Compiler4capi6detail12_GLOBAL__N_16invokeE14odiec_module_tPK12odiec_pass_tx22odiec_global_options_tE3__1vEENSt3__19enable_ifIXsr3std7is_sameIT0_vEE5valueEyE4typeEOT_EUlS5_E_EES2_PvS5_(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  v11 = 0;
  v15 = 0;
  v16 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = &unk_286E79D28;
  p_p = &__p;
  llvm::raw_ostream::SetUnbuffered(&v10);
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 16);
    v6 = 24 * v4;
    do
    {
      mlir::DiagnosticArgument::print(v5, &v10);
      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
  }

  if (v20 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if (v20 >= 0)
  {
    v8 = SHIBYTE(v20);
  }

  else
  {
    v8 = v19;
  }

  std::function<void ()(llvm::StringRef)>::operator()(a1, v7, v8);
  llvm::raw_ostream::~raw_ostream(&v10);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void *llvm::raw_ostream::SetUnbuffered(void *this)
{
  v1 = this;
  v3 = this + 2;
  v2 = this[2];
  v4 = this[4];
  v5 = v4 - v2;
  if (v4 != v2)
  {
    this[4] = v2;
    this = (*(*this + 72))(this);
  }

  if (*(v1 + 11) == 1)
  {
    this = *v3;
    if (*v3)
    {
      this = MEMORY[0x25F891010](this, 0x1000C8077774924, v5);
    }
  }

  *(v1 + 11) = 0;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  return this;
}

void *llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

uint64_t std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_external_rewriter(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    llvm::report_fatal_error("cannot use null odiec_external_rewriter_t", 1);
  }

  v3 = std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](v2);
  MEMORY[0x25F891040](v3, 0x1020C40A5B76CDFLL);
  *a1 = 0;
  return 1;
}

BOOL mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    llvm::report_fatal_error("cannot use null odiec_external_rewriter_t", 1);
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    v6 = &unk_286E76198;
    *&v7 = a3;
    *(&v7 + 1) = a2;
    v8 = &v6;
    if (&v6 != a1)
    {
      *a1 = &unk_286E76198;
      *(a1 + 8) = v7;
      v8 = 0;
      *(a1 + 24) = a1;
    }

    std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](&v6);
  }

  result = v3 == 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_callback(odiec_external_rewriter_t,void *,odiec_bytecode_blob_t (*)(void *,odiec_external_rewriter_payload_t))::$_0,std::allocator<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_callback(odiec_external_rewriter_t,void *,odiec_bytecode_blob_t (*)(void *,odiec_external_rewriter_payload_t))::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E76198;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_callback(odiec_external_rewriter_t,void *,odiec_bytecode_blob_t (*)(void *,odiec_external_rewriter_payload_t))::$_0,std::allocator<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_callback(odiec_external_rewriter_t,void *,odiec_bytecode_blob_t (*)(void *,odiec_external_rewriter_payload_t))::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  mlir::ODIE::Compiler::capi::odiec_from_cpp();
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::get_bytecode_blob(uint64_t a1)
{
  if (!a1)
  {
  }

  return a1 + 8;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::get_binary_directory(uint64_t *a1, void *a2, std::string::size_type *a3)
{
  if (!a1)
  {
  }

  v4 = *a1;
  v5 = (*a1 + 8);
  v6 = v5;
  if (*(*a1 + 31) < 0)
  {
    v6 = *v5;
  }

  *a2 = v6;
  if (*(v4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    v7 = *v5;
    v9.__r_.__value_.__r.__words[2] = v5[2];
    *&v9.__r_.__value_.__l.__data_ = v7;
  }

  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    *a3 = v9.__r_.__value_.__l.__size_;
    operator delete(v8);
  }

  else
  {
    *a3 = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
  }
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::report_error(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
  }

  v3 = *a1;
  v6 = 261;
  v5[0] = a2;
  v5[1] = a3;
  return (*(v3 + 48))(*(v3 + 56), v5);
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::odiec_rewriter_payload_wrapper::destroy(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v3(v1 + 8);
  }

  MEMORY[0x25F891040](v1, 0xA0C402214FCE6);
  *a1 = 0;
  return 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_global_options(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
  }

  std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v1 + 56);
  if (*(v1 + 36))
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = 0;
      v5 = 8 * v3;
      do
      {
        v6 = *(*(v1 + 24) + v4);
        if (v6 != -8 && v6 != 0)
        {
          std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](v6 + 8);
          MEMORY[0x25F891030](v6, 8);
        }

        v4 += 8;
      }

      while (v5 != v4);
    }
  }

  free(*(v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  MEMORY[0x25F891040](v1, 0x10B2C40790A4C40);
  *a1 = 0;
  return 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_output_directory(uint64_t a1, std::string *a2, uint64_t a3)
{
  if (!a1)
  {
  }

  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
      **a1 = 0;
      *(a1 + 8) = 0;
      goto LABEL_8;
    }

    return 0;
  }

  if (*(a1 + 23))
  {
    return 0;
  }

  *a1 = 0;
LABEL_8:
  std::string::append[abi:nn200100]<char const*,0>(a1, a2, (a2 + a3));
  return 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::add_external_rewriter(_DWORD *a1, unsigned __int8 *a2, const unsigned __int8 *a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!a4)
  {
    v17 = "cannot use null odiec_external_rewriter_t";
LABEL_12:
    llvm::report_fatal_error(v17, 1);
  }

  v8 = llvm::xxh3_64bits(a2, a3, a3);
  v9 = llvm::StringMapImpl::LookupBucketFor((a1 + 6), a2, a3, v8);
  v10 = *(a1 + 3);
  v11 = *(v10 + 8 * v9);
  if (v11)
  {
    if (v11 != -8)
    {
      return 0;
    }

    --a1[10];
  }

  v12 = v9;
  buffer = llvm::allocate_buffer((a3 + 41), 8uLL);
  v14 = buffer;
  v15 = (buffer + 5);
  if (a3)
  {
    memcpy(buffer + 5, a2, a3);
  }

  a3[v15] = 0;
  *v14 = a3;
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__value_func[abi:nn200100]((v14 + 1), a4);
  *(v10 + 8 * v12) = v14;
  ++a1[9];
  llvm::StringMapImpl::RehashTable((a1 + 6), v12);
  return 1;
}

BOOL mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_debug_printer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
    v6 = &unk_286E761E0;
    *&v7 = a3;
    *(&v7 + 1) = a2;
    v8 = &v6;
    if ((a1 + 56) != &v6)
    {
      *(a1 + 56) = &unk_286E761E0;
      *(a1 + 64) = v7;
      v8 = 0;
      *(a1 + 80) = a1 + 56;
    }

    std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](&v6);
  }

  result = v3 == 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_debug_option(uint64_t result, int a2)
{
  if (!result)
  {
  }

  if (a2)
  {
    abort();
  }

  *(result + 88) |= 1uLL;
  return result;
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size + v6 - v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v8 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    memmove(v13 + size, __src, v6);
    v14[v6] = 0;
    v15 = size + v6;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:nn200100]<char const*,char const*>(__p, __src, a3, v6);
    if ((v18 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(this, v11, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

_BYTE *std::string::__init_with_size[abi:nn200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

__n128 std::__function::__func<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_debug_printer(odiec_global_options_t,void *,void (*)(void *,char const*,long long))::$_0,std::allocator<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_debug_printer(odiec_global_options_t,void *,void (*)(void *,char const*,long long))::$_0>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E761E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::create_module_from_bytecode(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*a2)
    {
      v2 = (*a2 & 0xFFFFFFFFFFFFFFF8);
      v4 = *v2;
      *v2 = 0;
      off_281E38340(a2);
      mlir::ODIE::Compiler::Serialization::deserializeModule();
    }

    v3 = "cannot use null odiec_bytecode_blob_t";
  }

  else
  {
  }

  llvm::report_fatal_error(v3, 1);
}

uint64_t *mlir::ODIE::Compiler::capi::detail::anonymous namespace::create_module_from_asm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
  }

  v10 = a1;
  v11 = 1;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v14 = 0;
  v15[0] = &v16;
  v15[1] = 0x600000000;
  v17[0] = &v18;
  v17[1] = 0x600000000;
  v8 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = &v20;
  v21 = &v20;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v3 = 0;
  if (mlir::parseSourceString(a2, a3, v19, &v10, &byte_25D0A27DF, 0, &v8))
  {
    v3 = v21;
    if (v21 == &v20 || (v4 = v21[1], v4 != &v20) || *(v21[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v9[0] = v10;
      memset(&v9[1], 0, 24);
      mlir::OpBuilder::create<mlir::ModuleOp>(v9, v8);
    }

    if (v21[2])
    {
      v21[2] = 0;
      v7 = *v3;
      *v4 = *v3;
      *(v7 + 8) = v4;
      *v3 = 0;
      v3[1] = 0;
    }
  }

  mlir::Block::~Block(v19);
  llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Type>>,6u>::~SmallVector(v17);
  llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Attribute>>,6u>::~SmallVector(v15);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::destroyAll(v12);
  MEMORY[0x25F891030](v12[0], 8);
  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_module(mlir::Operation **a1)
{
  v2 = *a1;
  if (!v2)
  {
  }

  if (*(v2 + 2))
  {
    *(v2 + 2) = 0;
    v4 = *v2;
    v3 = *(v2 + 1);
    *v3 = *v2;
    *(v4 + 8) = v3;
    *v2 = 0;
    *(v2 + 1) = 0;
  }

  mlir::Operation::destroy(v2);
  *a1 = 0;
  return 1;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::combine_modules(void *a1, int64_t a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    v9 = "cannot combine fewer than 2 modules";
  }

  else
  {
    v12 = v14;
    v13 = 0x600000000;
    if (a2 < 7)
    {
      v4 = 0;
      v5 = v14;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, a2, 8);
      v4 = v13;
      v5 = v12;
    }

    v6 = 8 * a2;
    v7 = &v5[v4];
    while (*a1)
    {
      *v7++ = *a1++;
      v6 -= 8;
      if (!v6)
      {
        LODWORD(v13) = v13 + a2;
        v8 = *(*v12 + 24);
        v11[0] = *(**v8 + 32);
        memset(&v11[1], 0, 24);
        v10 = &unk_286E76228;
        mlir::OpBuilder::create<mlir::ModuleOp>(v11, v8);
      }
    }
  }

  llvm::report_fatal_error(v9, 1);
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::print(llvm *a1)
{
  if (a1)
  {
    v2 = llvm::outs(a1);
    mlir::OpPrintingFlags::OpPrintingFlags(v3);
    mlir::Operation::print(a1, v2, v3);
  }
}

BOOL mlir::ODIE::Compiler::capi::detail::anonymous namespace::serialize(unsigned int *a1, int a2, void *__src, size_t __len)
{
  v29 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 2:
      if (!a1)
      {
        goto LABEL_22;
      }

      std::string::basic_string[abi:nn200100](__p, __src, __len);
      *v24 = *__p;
      v25 = v18;
      __p[1] = 0;
      v18 = 0;
      __p[0] = 0;
      v4 = mlir::ODIE::Compiler::Serialization::serializeODIXIRToPackage(a1, v24);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[0]);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      break;
    case 1:
      std::string::basic_string[abi:nn200100](__p, __src, __len);
      v28 = 0;
      v10 = (MEMORY[0x277D82860] + 24);
      v11 = MEMORY[0x277D82860] + 64;
      v27 = MEMORY[0x277D82860] + 64;
      v12 = *(MEMORY[0x277D82810] + 16);
      v24[0] = *(MEMORY[0x277D82810] + 8);
      *(v24 + *(v24[0] - 3)) = v12;
      v13 = (v24 + *(v24[0] - 3));
      std::ios_base::init(v13, &v24[1]);
      v13[1].__vftable = 0;
      v13[1].__fmtflags_ = -1;
      v24[0] = v10;
      v27 = v11;
      MEMORY[0x25F890BD0](&v24[1]);
      if (!std::filebuf::open())
      {
        std::ios_base::clear((v24 + *(v24[0] - 3)), *&v26[*(v24[0] - 3)] | 4);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      LODWORD(__p[1]) = 0;
      v21 = 0;
      v22 = 1;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      __p[0] = &unk_286E79BB8;
      v23 = v24;
      if (a1)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v16);
        mlir::Operation::print(a1, __p, v16);
      }

LABEL_22:
    case 0:
      std::string::basic_string[abi:nn200100](__p, __src, __len);
      v28 = 0;
      v6 = (MEMORY[0x277D82860] + 24);
      v7 = MEMORY[0x277D82860] + 64;
      v27 = MEMORY[0x277D82860] + 64;
      v8 = *(MEMORY[0x277D82810] + 16);
      v24[0] = *(MEMORY[0x277D82810] + 8);
      *(v24 + *(v24[0] - 3)) = v8;
      v9 = (v24 + *(v24[0] - 3));
      std::ios_base::init(v9, &v24[1]);
      v9[1].__vftable = 0;
      v9[1].__fmtflags_ = -1;
      v24[0] = v6;
      v27 = v7;
      MEMORY[0x25F890BD0](&v24[1]);
      if (!std::filebuf::open())
      {
        std::ios_base::clear((v24 + *(v24[0] - 3)), *&v26[*(v24[0] - 3)] | 4);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      LODWORD(__p[1]) = 0;
      v21 = 0;
      v22 = 1;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      __p[0] = &unk_286E79BB8;
      v23 = v24;
      if (a1)
      {
        mlir::BytecodeWriterConfig::BytecodeWriterConfig();
      }

      goto LABEL_22;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

char **llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Type>>,6u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char **llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Attribute>>,6u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 24 * v1;
    v3 = (*result + 16);
    do
    {
      if (*(v3 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  return result;
}

void mlir::OpBuilder::create<mlir::ModuleOp>(uint64_t a1, uint64_t a2)
{
  v10[8] = *MEMORY[0x277D85DE8];
  v4 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ModuleOp>(a1, *(**a2 + 32));
  v5[0] = a2;
  v5[1] = v4;
  v5[2] = v6;
  v5[3] = 0x400000000;
  v6[4] = v7;
  v6[5] = 0x400000000;
  v7[4] = v8;
  v7[5] = 0x400000000;
  v8[8] = 4;
  v8[9] = v9;
  v8[10] = 0x100000000;
  v9[1] = v10;
  v9[2] = 0x100000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v10[4] = 0;
  v10[6] = 0;
  mlir::ModuleOp::build(a1, v5);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ModuleOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "builtin.module";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t *llvm::operator+@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (!*(result + 32) || (v4 = *(a2 + 32), !*(a2 + 32)))
  {
    *(a3 + 32) = 256;
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(a2 + 1);
    *a3 = *a2;
    *(a3 + 16) = v5;
    v6 = a2[4];
LABEL_8:
    *(a3 + 32) = v6;
    return result;
  }

  if (v4 == 1)
  {
    v7 = *(result + 1);
    *a3 = *result;
    *(a3 + 16) = v7;
    v6 = result[4];
    goto LABEL_8;
  }

  v8 = *result;
  v9 = result[1];
  if (*(result + 33) != 1)
  {
    LOBYTE(v3) = 2;
    v8 = result;
  }

  v10 = a2[1];
  if (*(a2 + 33) == 1)
  {
    v11 = *a2;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a2;
  }

  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v3;
  *(a3 + 33) = v4;
  return result;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 != a5)
  {
    *(result - 8) &= ~4uLL;
    if (result != a3 && a4 != a5)
    {
      v5 = a4;
      do
      {
        v5[2] = result - 32;
        v5 = v5[1];
      }

      while (v5 != a5);
    }

    if (a4 != a5)
    {
      v6 = *a5;
      v7 = *a4;
      *(v7 + 8) = a5;
      *a5 = v7;
      v8 = *a2;
      *(v6 + 8) = a2;
      *a4 = v8;
      *(v8 + 8) = a4;
      *a2 = v6;
    }
  }

  return result;
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

double odiec_initialize@<D0>(mlir::ODIE::Compiler *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::ODIE::Compiler::initialize(a1);
  v3 = *&off_281E38348;
  *a2 = mlir::ODIE::Compiler::capi::detail::bytecodeBlobApi;
  *(a2 + 16) = v3;
  *(a2 + 40) = mlir::ODIE::Compiler::capi::detail::rewriterPayloadApi;
  *(a2 + 64) = mlir::ODIE::Compiler::capi::detail::externalRewriterApi;
  v4 = xmmword_281E383D0;
  *(a2 + 120) = *&off_281E383E0;
  v5 = mlir::ODIE::Compiler::capi::detail::globalOptionsApi;
  *(a2 + 104) = v4;
  *(a2 + 88) = v5;
  v6 = xmmword_281E38400;
  *(a2 + 168) = *&off_281E38410;
  v7 = mlir::ODIE::Compiler::capi::detail::moduleApi;
  *(a2 + 152) = v6;
  *(a2 + 32) = off_281E38358;
  *(a2 + 56) = off_281E383B8;
  *(a2 + 80) = off_281E383A0;
  *(a2 + 136) = v7;
  *(a2 + 184) = mlir::ODIE::Compiler::capi::detail::passApi;
  *(a2 + 216) = off_281E38370;
  result = *&mlir::ODIE::Compiler::capi::detail::compilerApi;
  *(a2 + 200) = mlir::ODIE::Compiler::capi::detail::compilerApi;
  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_pass_descriptor(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  MEMORY[0x25F891040](v1, 0x1012C409633A12CLL);
  *a1 = 0;
  return 1;
}

void mlir::ODIE::Compiler::CoreML::createEnumeratedShapeEntryPoints(uint64_t a1)
{
  v2[9] = *MEMORY[0x277D85DE8];
  v1[0] = v2;
  v1[1] = 0x100000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::operator=(v1, a1);
  }

  mlir::ODIE::Compiler::CoreML::impl::createEnumeratedShapeEntryPoints();
}

uint64_t llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      v8 = *a1;
      if (v6)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *>(&v20, v4, (v4 + 72 * v6), v8);
        v10 = v9;
        v8 = *a1;
        LODWORD(v7) = *(a1 + 8);
      }

      else
      {
        v10 = *a1;
      }

      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(v10, (v8 + 72 * v7));
      *(a1 + 8) = v6;
      v11 = *a2;
      v18 = (*a2 + 72 * *(a2 + 8));
LABEL_19:
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(v11, v18);
      *(a2 + 8) = 0;
      return a1;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *>(&v21, v4, (v4 + 72 * v7), *a1);
LABEL_12:
        v11 = *a2;
        v12 = *(a2 + 8);
        if (v7 != v12)
        {
          v13 = &v11[9 * v12];
          v14 = *a1 + 72 * v7;
          v15 = &v11[9 * v7];
          do
          {
            v16 = *v15;
            *(v14 + 16) = v15[2];
            *v14 = v16;
            v15[1] = 0;
            v15[2] = 0;
            *v15 = 0;
            v17 = *(v15 + 3);
            *(v14 + 40) = v15[5];
            *(v14 + 24) = v17;
            v15[4] = 0;
            v15[5] = 0;
            v15[3] = 0;
            *(v14 + 48) = 0;
            *(v14 + 56) = 0;
            *(v14 + 64) = 0;
            *(v14 + 48) = *(v15 + 3);
            *(v14 + 64) = v15[8];
            v15[6] = 0;
            v15[7] = 0;
            v15[8] = 0;
            v14 += 72;
            v15 += 9;
          }

          while (v15 != v13);
          v11 = *a2;
        }

        *(a1 + 8) = v6;
        v18 = &v11[9 * *(a2 + 8)];
        goto LABEL_19;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(*a1, (*a1 + 72 * v7));
      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::grow(a1, v6);
    }

    v7 = 0;
    goto LABEL_12;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape*>(&v23, *a2, (*a2 + 72 * v4), *a1);
        v7 = v6;
        v8 = *a1;
        LODWORD(v5) = *(a1 + 8);
      }

      else
      {
        v8 = *a1;
        v7 = *a1;
      }

      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(&v7->__r_.__value_.__l.__data_, &v8[3 * v5].__r_.__value_.__l.__data_);
LABEL_22:
      *(a1 + 8) = v4;
      return a1;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape*>(&v24, *a2, (*a2 + 72 * v5), *a1);
        goto LABEL_10;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(*a1, (*a1 + 72 * v5));
      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_10:
    v9 = *(a2 + 8);
    if (v5 != v9)
    {
      v10 = *a2;
      v11 = *a1;
      v12 = 72 * v5;
      v13 = 72 * v9;
      do
      {
        v14 = &v11[v12 / 0x18];
        v15 = &v10[v12 / 0x18];
        if (SHIBYTE(v10[v12 / 0x18].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v14, v15->__r_.__value_.__l.__data_, v15->__r_.__value_.__l.__size_);
        }

        else
        {
          v16 = *&v15->__r_.__value_.__l.__data_;
          v14->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v14->__r_.__value_.__l.__data_ = v16;
        }

        v17 = &v11[v12 / 0x18];
        v18 = &v10[v12 / 0x18];
        if (SHIBYTE(v10[v12 / 0x18 + 1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v17 + 1, v18[1].__r_.__value_.__l.__data_, v18[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v19 = *&v18[1].__r_.__value_.__l.__data_;
          v17[1].__r_.__value_.__r.__words[2] = v18[1].__r_.__value_.__r.__words[2];
          *&v17[1].__r_.__value_.__l.__data_ = v19;
        }

        v20 = &v11[v12 / 0x18];
        v20[2].__r_.__value_.__r.__words[0] = 0;
        v20[2].__r_.__value_.__l.__size_ = 0;
        v21 = &v11[v12 / 0x18 + 2];
        *(v21 + 16) = 0;
        std::vector<mlir::ODIE::ArgShape>::__init_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(v21, v10[v12 / 0x18 + 2].__r_.__value_.__l.__data_, v10[v12 / 0x18 + 2].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v10[v12 / 0x18 + 2].__r_.__value_.__l.__size_ - v10[v12 / 0x18 + 2].__r_.__value_.__r.__words[0]) >> 3));
        v11 += 3;
        v13 -= 72;
        v10 += 3;
      }

      while (v12 != v13);
    }

    goto LABEL_22;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::assignRemote(uint64_t a1, uint64_t a2)
{
  llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(*a1, (*a1 + 72 * *(a1 + 8)));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      std::vector<mlir::ODIE::ArgShape>::__vdeallocate((a4 + 48));
      *(a4 + 48) = v5[3];
      *(a4 + 64) = *(v5 + 8);
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      *(v5 + 8) = 0;
      v5 = (v5 + 72);
      a4 += 72;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::CoreML::impl::EnumeratedShapeEntryPointsBase<mlir::ODIE::Compiler::CoreML::anonymous namespace::EnumeratedShapeEntryPointsPass>::EnumeratedShapeEntryPointsBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286E762F8;
  *&v5 = "Provide a predefined list of input shapes which will be used to generate static alternatives for a dynamic function";
  *(&v5 + 1) = 115;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>((a1 + 336), (a1 + 144), "shapes", 6, &v5);
  *(a1 + 336) = &unk_286E76368;
  *(a1 + 576) = &unk_286E763E8;
  std::vector<mlir::ODIE::FuncShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*>(a1 + 456, *a2, (*a2 + 72 * *(a2 + 8)), *(a2 + 8));
  *(a1 + 584) = 1;
  return a1;
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::EnumeratedShapeEntryPointsPass::~EnumeratedShapeEntryPointsPass(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::EnumeratedShapeEntryPointsPass *this)
{
  *this = &unk_286E762F8;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E762F8;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void *mlir::ODIE::Compiler::CoreML::anonymous namespace::EnumeratedShapeEntryPointsPass::runOnOperation(void *this)
{
  v155[8] = *MEMORY[0x277D85DE8];
  v1 = this[57];
  v2 = this[58];
  if (v2 == v1)
  {
    goto LABEL_131;
  }

  v135[0] = 0;
  v135[1] = 0;
  v136 = 0;
  v119 = this;
  v112 = (this[5] & 0xFFFFFFFFFFFFFFF8);
  v134[0] = *(***(v112 + 3) + 32);
  memset(&v134[1], 0, 24);
  v131 = 0;
  v130 = 0u;
  v132 = v134;
  v133 = 0;
  do
  {
    *&v146 = &p_dst;
    *(&v146 + 1) = 0x300000000;
    v3 = *(v1 + 23);
    v4 = *v1;
    if (v3 >= 0)
    {
      v4 = v1;
    }

    if (v3 < 0)
    {
      v3 = *(v1 + 8);
    }

    v142 = v4;
    v143 = v3;
    llvm::StringRef::split(&v142, &v146, 46, -1, 1);
    v142 = v144;
    v143 = 0x600000000;
    llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::resizeImpl<false>(&v142, DWORD2(v146) - 1);
    v6 = v146;
    v7 = v119[5] & 0xFFFFFFFFFFFFFFF8;
    if (DWORD2(v146) != 1)
    {
      v8 = (v146 + 16 * DWORD2(v146));
      v9 = *(***(v7 + 24) + 32);
      v10 = v142;
      v11 = (v146 + 16);
      do
      {
        v12 = *v11;
        v13 = v11[1];
        v11 += 2;
        v141 = 261;
        __dst.__r_.__value_.__r.__words[0] = v12;
        __dst.__r_.__value_.__l.__size_ = v13;
        v14 = mlir::StringAttr::get(v9, &__dst, v5);
        *v10++ = mlir::SymbolRefAttr::get(v14, 0, 0, v15);
      }

      while (v11 != v8);
      v6 = v146;
      v7 = v119[5] & 0xFFFFFFFFFFFFFFF8;
    }

    v16 = *(***(v7 + 24) + 32);
    v18 = *v6;
    v17 = v6[1];
    v19 = v142;
    v20 = v143;
    v141 = 261;
    __dst.__r_.__value_.__r.__words[0] = v18;
    __dst.__r_.__value_.__l.__size_ = v17;
    v21 = mlir::StringAttr::get(v16, &__dst, v5);
    v23 = mlir::SymbolRefAttr::get(v21, v19, v20, v22);
    v137 = v23;
    v24 = *(v1 + 47);
    if (v24 >= 0)
    {
      v25 = *(v1 + 47);
    }

    else
    {
      v25 = *(v1 + 32);
    }

    v26 = *(v1 + 23);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(v1 + 8);
    }

    if (v25 == v26)
    {
      v28 = (v1 + 24);
      v29 = v24 >= 0 ? (v1 + 24) : *(v1 + 24);
      v30 = v27 >= 0 ? v1 : *v1;
      if (!memcmp(v29, v30, v25))
      {
        v31 = v146 + 16 * DWORD2(v146);
        v32 = *(v31 - 16);
        if (v32)
        {
          v33 = *(v31 - 8);
          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (v33 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = *(v31 - 8);
          if (v33)
          {
            memmove(&__dst, v32, v33);
          }

          __dst.__r_.__value_.__s.__data_[v33] = 0;
          if ((*(v1 + 47) & 0x80) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          memset(&__dst, 0, sizeof(__dst));
          if ((v24 & 0x80) == 0)
          {
LABEL_35:
            *v28 = *&__dst.__r_.__value_.__l.__data_;
            *(v1 + 40) = *(&__dst.__r_.__value_.__l + 2);
            v23 = v137;
            goto LABEL_36;
          }
        }

        operator delete(*v28);
        goto LABEL_35;
      }
    }

LABEL_36:
    *&__dst.__r_.__value_.__l.__data_ = v23;
    __dst.__r_.__value_.__r.__words[2] = 0;
    v140 = 0;
    memset(v121, 0, 24);
    llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::try_emplace<std::vector<mlir::ODIE::FuncShape>>(&v130, &__dst, &__dst.__r_.__value_.__l.__size_);
    p_size = &__dst.__r_.__value_.__l.__size_;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&p_size);
    p_size = v121;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&p_size);
    v34 = llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::operator[](&v130, &v137);
    std::vector<mlir::ODIE::FuncShape>::push_back[abi:nn200100](v34, v1);
    if (v142 != v144)
    {
      free(v142);
    }

    if (v146 != &p_dst)
    {
      free(v146);
    }

    v1 += 72;
  }

  while (v1 != v2);
  if (!v133)
  {
    goto LABEL_130;
  }

  v35 = v132;
  v110 = &v132[4 * v133];
  while (1)
  {
    p_size = *v35;
    v128 = 0;
    v129 = 0;
    v127 = 0;
    std::vector<mlir::ODIE::FuncShape>::__init_with_size[abi:nn200100]<mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(&v127, *(v35 + 1), *(v35 + 2), 0x8E38E38E38E38E39 * ((*(v35 + 2) - *(v35 + 1)) >> 3));
    v36 = mlir::SymbolTableCollection::lookupSymbolIn(v135, v112, p_size);
    if (!v36)
    {
      v125 = 0;
LABEL_133:
      v145 = 257;
      mlir::Operation::emitError(&v146, v112, &v142);
      if (v146)
      {
        mlir::Diagnostic::operator<<<40ul>(&v146 + 8, "Shape specified for undefined function ");
        if (v146)
        {
          mlir::Diagnostic::operator<<<mlir::SymbolRefAttr &>(&v146 + 8, &p_size);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v146);
      v119[5] |= 4uLL;
      *&v146 = &v127;
      goto LABEL_129;
    }

    v37 = *(*(v36 + 48) + 16);
    v38 = v37 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
    if (v37 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    v125 = v39;
    if (!v38)
    {
      goto LABEL_133;
    }

    v111 = v35;
    v40 = (v36 + 16 * ((*(v36 + 44) >> 23) & 1));
    v41 = v40[15];
    v42 = *(v41 + 24);
    __s2 = *(v41 + 16);
    v116 = v40[8];
    v117 = v40[14];
    AttrDictionary = mlir::Operation::getAttrDictionary(v36);
    v45 = v127;
    if (v127 != v128)
    {
      break;
    }

    *&v146 = &v127;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v146);
    v35 = v111 + 32;
    if (v111 + 32 == v110)
    {
      if (v133)
      {
        v104 = v132;
        v105 = &v132[4 * v133];
        do
        {
          v146 = *v104;
          p_dst = 0;
          v148 = 0;
          std::vector<mlir::ODIE::FuncShape>::__init_with_size[abi:nn200100]<mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(&v146 + 8, *(v104 + 1), *(v104 + 2), 0x8E38E38E38E38E39 * ((*(v104 + 2) - *(v104 + 1)) >> 3));
          v106 = mlir::SymbolTable::lookupSymbolIn(v112, v146);
          if (v106 && *(*(v106 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
          {
            v106 = 0;
          }

          if (*(v106 + 2))
          {
            *(v106 + 2) = 0;
            v108 = *v106;
            v107 = *(v106 + 1);
            *v107 = *v106;
            *(v108 + 8) = v107;
            *v106 = 0;
            *(v106 + 1) = 0;
          }

          mlir::Operation::destroy(v106);
          v142 = &v146 + 8;
          std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v142);
          v104 += 32;
        }

        while (v104 != v105);
      }

      goto LABEL_130;
    }
  }

  v114 = *(AttrDictionary + 16);
  v115 = *(AttrDictionary + 8);
  v46 = *(***((v119[5] & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  LOWORD(v149) = 260;
  *&v146 = v127 + 24;
  v118 = mlir::StringAttr::get(v46, &v146, v44);
  if (*(v118 + 24) == v42 && (!v42 || !memcmp(*(v118 + 16), __s2, v42)))
  {
    v47 = *(***((v119[5] & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
    v145 = 773;
    v142 = __s2;
    v143 = v42;
    v144[0] = "_shape";
    std::to_string(&__dst, 0);
    v49 = v145;
    if (v145)
    {
      if (v145 == 1)
      {
        *&v146 = &__dst;
        v50 = 1;
        v49 = 4;
      }

      else
      {
        if (HIBYTE(v145) != 1)
        {
          v49 = 2;
        }

        v51 = &v142;
        if (HIBYTE(v145) == 1)
        {
          v51 = v142;
        }

        *&v146 = v51;
        *(&v146 + 1) = v143;
        p_dst = &__dst;
        v50 = 4;
      }
    }

    else
    {
      v50 = 1;
    }

    LOBYTE(v149) = v49;
    BYTE1(v149) = v50;
    v118 = mlir::StringAttr::get(v47, &v146, v48);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v142 = v144;
  v143 = 0x600000000;
  Arguments = mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(&v125);
  if (!v53)
  {
LABEL_114:
    v97 = *(*(v125 + 2 * ((*(v125 + 11) >> 23) & 1) + 10) + 8);
    v98 = *(v97 + 12);
    v99 = (*(v97 + 16) + 8 * *(v97 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2;
    v100 = *(**v97 + 32);
    *&v146 = v142 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v146 + 1) = v143;
    __dst.__r_.__value_.__r.__words[0] = v99;
    __dst.__r_.__value_.__l.__size_ = v98;
    v101 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v100, &v146, &__dst);
    v102 = *(v125 + 3);
    v103 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(v134, *(**v102 + 32));
    *&v146 = v102;
    *(&v146 + 1) = v103;
    p_dst = &v149;
    v148 = 0x400000000;
    v150 = v152;
    v151 = 0x400000000;
    v152[4] = v153;
    v152[5] = 0x400000000;
    v153[8] = 4;
    v153[9] = v154;
    v153[10] = 0x100000000;
    v154[1] = v155;
    v154[2] = 0x100000000;
    v155[1] = 0;
    v155[2] = 0;
    v155[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v155[4] = 0;
    v155[6] = 0;
    mlir::ODIE::Compiler::CoreML::GraphOp::build(v134, &v146, *(v118 + 16), *(v118 + 24), v101, 0, 0, 0, 0, 0, v116, v117);
  }

  v54 = Arguments;
  v55 = 0;
  v56 = Arguments + 8 * v53;
  while (2)
  {
    v124 = v55;
    v57 = *(v45 + 48);
    if (v57 == *(v45 + 56))
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v142, *(*v54 + 8) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_103;
    }

    std::vector<int>::vector[abi:nn200100](__p, (v57 + 24 * v55));
    if (__p[0] == __p[1])
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v142, *(*v54 + 8) & 0xFFFFFFFFFFFFFFF8);
      v71 = 9;
    }

    else
    {
      __dst.__r_.__value_.__r.__words[0] = &__dst.__r_.__value_.__r.__words[2];
      __dst.__r_.__value_.__l.__size_ = 0x600000000;
      llvm::SmallVectorImpl<long long>::append<std::__wrap_iter<int *>,void>(&__dst, __p[0], __p[1]);
      v58 = __dst.__r_.__value_.__r.__words[0];
      v59 = LODWORD(__dst.__r_.__value_.__r.__words[1]);
      v60 = (*(*v54 + 8) & 0xFFFFFFFFFFFFFFF8);
      v61 = *v60;
      v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v63 = mlir::detail::InterfaceMap::lookup(v61 + 8, v62);
      v64 = (*(v63 + 8))(v63, v60);
      *&v146 = v58;
      *(&v146 + 1) = v59;
      v121[0] = v64;
      v137 = 0;
      v65 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v64 + 32), &v146, v121, &v137);
      v66 = (*(*v54 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v66 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v122 = 257;
        mlir::Operation::emitError(&v146, v125, v121);
        if (v146)
        {
          mlir::Diagnostic::operator<<<14ul>(&v146 + 8, "For function ");
          if (v146)
          {
            LODWORD(v137) = 0;
            v138 = p_size;
            v67 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v148, &v137, 1);
            v68 = v148 + 24 * v149;
            v69 = *v67;
            *(v68 + 16) = *(v67 + 16);
            *v68 = v69;
            ++v149;
            if (v146)
            {
              mlir::Diagnostic::operator<<<37ul>(&v146 + 8, " new shape specified for argument # ");
            }
          }
        }

        v70 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v146, &v124);
        if (*v70)
        {
          mlir::Diagnostic::operator<<<36ul>((v70 + 1), " but it is not a ranked tensor type");
        }

        goto LABEL_96;
      }

      v72 = v65;
      v73 = v66[2];
      if (v73 != *(v65 + 16))
      {
        v122 = 257;
        mlir::Operation::emitError(&v146, v125, v121);
        if (v146)
        {
          mlir::Diagnostic::operator<<<14ul>(&v146 + 8, "For function ");
          if (v146)
          {
            LODWORD(v137) = 0;
            v138 = p_size;
            v79 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v148, &v137, 1);
            v80 = v148 + 24 * v149;
            v81 = *v79;
            *(v80 + 16) = *(v79 + 16);
            *v80 = v81;
            ++v149;
            if (v146)
            {
              mlir::Diagnostic::operator<<<17ul>(&v146 + 8, " for argument # ");
            }
          }
        }

        v82 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v146, &v124);
        v83 = v82;
        if (*v82)
        {
          mlir::Diagnostic::operator<<<49ul>((v82 + 1), "  new shape has a different rank. Original rank ");
        }

        v137 = v66[2];
        v84 = mlir::InFlightDiagnostic::operator<<<long long>(v83, &v137);
        v85 = v84;
        if (*v84)
        {
          mlir::Diagnostic::operator<<<11ul>((v84 + 1), " new rank ");
        }

        v120 = *(v72 + 16);
        mlir::InFlightDiagnostic::operator<<<long long>(v85, &v120);
        goto LABEL_96;
      }

      if (v73)
      {
        v74 = *(v65 + 8);
        v75 = v66[1];
        v76 = 8 * v73 - 8;
        while (1)
        {
          v77 = v76;
          if (*v75 != 0x8000000000000000 && *v75 != *v74)
          {
            break;
          }

          ++v75;
          ++v74;
          v76 -= 8;
          if (!v77)
          {
            goto LABEL_86;
          }
        }

        v122 = 257;
        mlir::Operation::emitError(&v146, v125, v121);
        if (v146)
        {
          mlir::Diagnostic::operator<<<14ul>(&v146 + 8, "For function ");
          if (v146)
          {
            LODWORD(v137) = 0;
            v138 = p_size;
            v86 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v148, &v137, 1);
            v87 = v148 + 24 * v149;
            v88 = *v86;
            *(v87 + 16) = *(v86 + 16);
            *v87 = v88;
            ++v149;
            if (v146)
            {
              mlir::Diagnostic::operator<<<17ul>(&v146 + 8, " for argument # ");
            }
          }
        }

        v89 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v146, &v124);
        if (*v89)
        {
          v90 = v89;
          mlir::Diagnostic::operator<<<12ul>((v89 + 1), "  new type ");
          if (*v90)
          {
            LODWORD(v137) = 4;
            v138 = v72;
            v91 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v90 + 3), &v137, 1);
            v92 = v90[3] + 24 * *(v90 + 8);
            v93 = *v91;
            *(v92 + 16) = *(v91 + 16);
            *v92 = v93;
            ++*(v90 + 8);
            if (*v90)
            {
              mlir::Diagnostic::operator<<<51ul>((v90 + 1), " is modifying a static dimension of original type ");
              if (*v90)
              {
                LODWORD(v137) = 4;
                v138 = v66;
                v94 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v90 + 3), &v137, 1);
                v95 = v90[3] + 24 * *(v90 + 8);
                v96 = *v94;
                *(v95 + 16) = *(v94 + 16);
                *v95 = v96;
                ++*(v90 + 8);
              }
            }
          }
        }

LABEL_96:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v146);
        v119[5] |= 4uLL;
        v71 = 1;
      }

      else
      {
LABEL_86:
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v142, v65);
        v71 = 0;
      }

      if (__dst.__r_.__value_.__l.__data_ != &__dst.__r_.__value_.__r.__words[2])
      {
        free(__dst.__r_.__value_.__l.__data_);
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v71 == 9 || !v71)
    {
LABEL_103:
      ++v55;
      v54 += 8;
      if (v54 == v56)
      {
        goto LABEL_114;
      }

      continue;
    }

    break;
  }

  if (v142 != v144)
  {
    free(v142);
  }

  *&v146 = &v127;
LABEL_129:
  std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v146);
LABEL_130:
  llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>::~SmallVector(&v132);
  MEMORY[0x25F891030](v130, 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v135);
  this = MEMORY[0x25F891030](v135[0], 8);
LABEL_131:
  v109 = *MEMORY[0x277D85DE8];
  return this;
}

BOOL mlir::OperationPass<mlir::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(v2 + 24);
  if (v3 != *(a1 + 24))
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(*(v2 + 16), *(a1 + 16), v3) == 0;
  }

  return 1;
}

void mlir::Pass::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::Pass::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

void mlir::Pass::~Pass(mlir::Pass *this)
{
  *this = &unk_286E84940;
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(this + 272);
  v3 = *(this + 28);
  if (v3 != this + 240)
  {
    free(v3);
  }

  v4 = *(this + 22);
  if (v4 != this + 192)
  {
    free(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  if (*(this + 112) == 1 && (*(this + 76) & 1) == 0)
  {
    free(*(this + 7));
  }
}

uint64_t llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::operator[](uint64_t a1, uint64_t *a2)
{
  v12 = *a2;
  v13 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::try_emplace<unsigned int const&>(a1, &v12, &v13, &v10);
  v4 = v10;
  if (v11)
  {
    v8 = *a2;
    memset(v9, 0, sizeof(v9));
    memset(v7, 0, sizeof(v7));
    llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::push_back(a1 + 24, &v8);
    v14 = v9;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v14);
    v14 = v7;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v14);
    v5 = *(a1 + 32) - 1;
    *(v4 + 8) = v5;
  }

  else
  {
    v5 = *(v10 + 8);
  }

  return *(a1 + 24) + 32 * v5 + 8;
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(uint64_t a1)
{
  v1 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (*v1 == v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  result = *(v3 + 48);
  v5 = (*(v3 + 56) - result) >> 3;
  return result;
}

void llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t mlir::InFlightDiagnostic::operator<<<unsigned long &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 5;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<long long>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 2;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v3)
    {
      break;
    }

    a1 = *(v3 + 16);
    if (a1)
    {
      v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
      if (!(*(**(a1 + 48) + 32))(*(a1 + 48), v4))
      {
        continue;
      }
    }

    return a1;
  }

  return 0;
}

void llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::try_emplace<std::vector<mlir::ODIE::FuncShape>>(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *a2;
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::try_emplace<unsigned int>(a1, &v8, &v9, &v10);
  if (v11 != 1)
  {
    return *(a1 + 24) + 32 * *(v10 + 8);
  }

  *(v10 + 8) = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  llvm::SmallVectorImpl<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::SymbolRefAttr&&>,std::tuple<std::vector<mlir::ODIE::FuncShape>&&>>(a1 + 24, &std::piecewise_construct, &v8, &v7);
  return *(a1 + 24) + 32 * *(a1 + 32) - 32;
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::SymbolRefAttr&&>,std::tuple<std::vector<mlir::ODIE::FuncShape>&&>>(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::SymbolRefAttr&&>,std::tuple<std::vector<mlir::ODIE::FuncShape>&&>>(a1, a2, a3, a4);
  }

  v5 = (*a1 + 32 * v4);
  v6 = *a4;
  *v5 = **a3;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  *(v5 + 1) = *v6;
  v5[3] = *(v6 + 16);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  return *a1 + 32 * v7 - 32;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::SymbolRefAttr&&>,std::tuple<std::vector<mlir::ODIE::FuncShape>&&>>(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v14 = 0;
  v7 = a1 + 16;
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v14);
  v9 = &v8[4 * *(a1 + 8)];
  v10 = *a4;
  *v9 = **a3;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
  *(v9 + 1) = *v10;
  v9[3] = *(v10 + 16);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::moveElementsForGrow(a1, v8);
  v11 = v14;
  if (*a1 != v7)
  {
    free(*a1);
  }

  *a1 = v8;
  v12 = (*(a1 + 8) + 1);
  *(a1 + 8) = v12;
  *(a1 + 12) = v11;
  return &v8[4 * v12 - 4];
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::moveElementsForGrow(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 32 * v2;
    do
    {
      *a2 = *v3;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      *(a2 + 1) = *(v3 + 8);
      a2[3] = *(v3 + 24);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      a2 += 4;
      v3 += 32;
    }

    while (v3 != v4);
    v5 = *(a1 + 2);
    if (v5)
    {
      v6 = (*a1 + 32 * v5 - 24);
      v7 = -32 * v5;
      do
      {
        v8 = v6;
        std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v8);
        v6 -= 4;
        v7 += 32;
      }

      while (v7);
    }
  }
}

__n128 llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>>(a1, a2, 1);
  v4 = (*a1 + 32 * *(a1 + 8));
  v5 = *v3;
  v4[2] = 0;
  v4[3] = 0;
  *v4 = v5;
  v4[1] = 0;
  result = *(v3 + 8);
  *(v4 + 1) = result;
  v4[3] = *(v3 + 24);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v6);
  llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t std::vector<mlir::ODIE::FuncShape>::__init_with_size[abi:nn200100]<mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlir::ODIE::FuncShape>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<mlir::ODIE::FuncShape>,mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v14 = a4 + v7;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      v15 = a4 + v7 + 48;
      *(v15 + 16) = 0;
      std::vector<mlir::ODIE::ArgShape>::__init_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(v15, *(a2 + v7 + 48), *(a2 + v7 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 56) - *(a2 + v7 + 48)) >> 3));
      v7 += 72;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

uint64_t mlir::Diagnostic::operator<<<40ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::SymbolRefAttr &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void llvm::SmallVectorImpl<long long>::append<std::__wrap_iter<int *>,void>(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + a3 - a2;
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 2);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ShapedType>();
      mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 824);
}

uint64_t llvm::getTypeName<mlir::ShapedType>()
{
  {
    llvm::getTypeName<mlir::ShapedType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ShapedType>();
    unk_27FC17350 = v1;
  }

  return llvm::getTypeName<mlir::ShapedType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ShapedType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedType]";
  v6 = 78;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::Diagnostic::operator<<<14ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<37ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<36ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<17ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<49ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<11ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<51ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.graph";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 864);
}

uint64_t llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>();
    *algn_27FC17378 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SymbolTable<Empty>]";
  v6 = 95;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransformCastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransformCastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.transform.cast";
    v6[3] = 21;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char **llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[32 * v3 - 24];
    v5 = -32 * v3;
    do
    {
      v7 = v4;
      std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v7);
      v4 -= 4;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *v3;
        *v3 = 0;
        if (v4)
        {
          MEMORY[0x25F891030](*(v4 + 8), 8);
          result = MEMORY[0x25F891040](v4, 0x1020C40F2E7009FLL);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::createMaterializeEnumeratedShapes(uint64_t a1)
{
  v2[9] = *MEMORY[0x277D85DE8];
  v1[0] = v2;
  v1[1] = 0x100000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::operator=(v1, a1);
  }

  mlir::ODIE::Compiler::CoreML::impl::createMaterializeEnumeratedShapes();
}

uint64_t mlir::ODIE::Compiler::CoreML::impl::MaterializeEnumeratedShapesBase<mlir::ODIE::Compiler::CoreML::anonymous namespace::MaterializeEnumeratedShapesPass>::MaterializeEnumeratedShapesBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286E76498;
  *&v5 = "Provide a predefined list of input shapes which will be used to generate static alternatives for a dynamic function";
  *(&v5 + 1) = 115;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>((a1 + 336), (a1 + 144), "shapes", 6, &v5);
  *(a1 + 336) = &unk_286E76368;
  *(a1 + 576) = &unk_286E763E8;
  std::vector<mlir::ODIE::FuncShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*>(a1 + 456, *a2, (*a2 + 72 * *(a2 + 8)), *(a2 + 8));
  *(a1 + 584) = 1;
  return a1;
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::MaterializeEnumeratedShapesPass::~MaterializeEnumeratedShapesPass(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::MaterializeEnumeratedShapesPass *this)
{
  *this = &unk_286E76498;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E76498;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void *mlir::ODIE::Compiler::CoreML::anonymous namespace::MaterializeEnumeratedShapesPass::runOnOperation(void *this)
{
  v117[8] = *MEMORY[0x277D85DE8];
  v1 = this[57];
  v76 = this[58];
  if (v76 != v1)
  {
    v2 = this;
    v93[0] = 0;
    v93[1] = 0;
    v94 = 0;
    v77 = (this[5] & 0xFFFFFFFFFFFFFFF8);
    v92[0] = *(***(v77 + 3) + 32);
    memset(&v92[1], 0, 24);
    v89 = 0;
    v88 = 0u;
    v90 = v92;
    v91 = 0;
    v86[0] = 0;
    v86[1] = 0;
    v87 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v78 = this;
    do
    {
      v105 = v107;
      v106 = 0x300000000;
      v3 = *(v1 + 23);
      v4 = *v1;
      if (v3 >= 0)
      {
        v4 = v1;
      }

      if (v3 < 0)
      {
        v3 = v1[1];
      }

      *&__src = v4;
      *(&__src + 1) = v3;
      llvm::StringRef::split(&__src, &v105, 46, -1, 1);
      v102 = v104;
      v103 = 0x600000000;
      llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::resizeImpl<false>(&v102, v106 - 1);
      v6 = v105;
      v7 = v2[5] & 0xFFFFFFFFFFFFFFF8;
      if (v106 != 1)
      {
        v8 = v105 + 16 * v106;
        v9 = *(***(v7 + 24) + 32);
        v10 = v102;
        v11 = v105 + 16;
        do
        {
          v12 = *v11;
          v13 = *(v11 + 1);
          v11 += 16;
          LOWORD(v111) = 261;
          *&__src = v12;
          *(&__src + 1) = v13;
          v14 = mlir::StringAttr::get(v9, &__src, v5);
          *v10++ = mlir::SymbolRefAttr::get(v14, 0, 0, v15);
        }

        while (v11 != v8);
        v2 = v78;
        v6 = v105;
        v7 = v78[5] & 0xFFFFFFFFFFFFFFF8;
      }

      v16 = *(***(v7 + 24) + 32);
      v18 = *v6;
      v17 = v6[1];
      v19 = v102;
      v20 = v103;
      LOWORD(v111) = 261;
      *&__src = v18;
      *(&__src + 1) = v17;
      v21 = mlir::StringAttr::get(v16, &__src, v5);
      v95[0] = mlir::SymbolRefAttr::get(v21, v19, v20, v22);
      __src = v95[0];
      v109 = 0;
      v110 = 0;
      v100[1] = 0;
      __p = 0;
      v100[0] = 0;
      llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::try_emplace<std::vector<mlir::ODIE::FuncShape>>(&v88, &__src, &__src + 8);
      p_p = &__src + 1;
      std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&p_p);
      p_p = &__p;
      std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&p_p);
      v23 = v95[0];
      *&__src = v95[0];
      BYTE8(__src) = 0;
      __p = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(v86[0], v87, v95[0], &__p) & 1) == 0)
      {
        v24 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(v86, &__src, __p);
        *v24 = v23;
        *(v24 + 8) = 0;
      }

      if (v1[7] == v1[6])
      {
        *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::operator[](v86, v95) = 1;
      }

      else
      {
        v25 = llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::operator[](&v88, v95);
        std::vector<mlir::ODIE::FuncShape>::push_back[abi:nn200100](v25, v1);
      }

      v26 = mlir::SymbolTableCollection::lookupSymbolIn(v93, v77, v95[0]);
      if (*(*(v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v79[0] = v27;
      if (0xAAAAAAAAAAAAAAABLL * ((v1[7] - v1[6]) >> 3) == *(*(*&v27[4 * ((v27[11] >> 23) & 1) + 20] + 8) + 8) || (*llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::operator[](v86, v95) & 1) != 0)
      {
        Arguments = mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(v79);
        v30 = 1;
        if (v29)
        {
          v31 = v1[6];
          v32 = v1[7];
          if (v31 != v32)
          {
            v33 = Arguments;
            v34 = v31 + 24;
            v35 = 8 * v29 - 8;
            while (1)
            {
              if (*(v34 - 24) != *(v34 - 16))
              {
                v37 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*v33 + 8) & 0xFFFFFFFFFFFFFFF8));
                if (!v37 && *(v34 - 24) != *(v34 - 16))
                {
                  break;
                }

                (*(v36 + 24))(v36, v37);
                if (v38 != (*(v34 - 16) - *(v34 - 24)) >> 2)
                {
                  break;
                }
              }

              v30 = 1;
              if (v35)
              {
                v33 += 8;
                v35 -= 8;
                v39 = v34 == v32;
                v34 += 24;
                if (!v39)
                {
                  continue;
                }
              }

              goto LABEL_50;
            }

            v48 = *(*v33 + 32);
            v98 = 257;
            emitDiag(v48, 2, &p_p, &__p);
            if (__p)
            {
              mlir::Diagnostic::operator<<<24ul>(v100, "provided invalid dims {");
            }

            mlir::InFlightDiagnostic::InFlightDiagnostic(&__src, &__p);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
            v49 = *(v34 - 24);
            v50 = *(v34 - 16);
            if (v49 != v50)
            {
LABEL_41:
              if (__src)
              {
                v51 = *v49;
                LODWORD(__p) = 2;
                v100[0] = v51;
                v52 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v110, &__p, 1);
                v53 = v110 + 24 * v111;
                v54 = *v52;
                *(v53 + 16) = *(v52 + 16);
                *v53 = v54;
                ++v111;
              }

              while (++v49 != v50)
              {
                if (__src)
                {
                  v101 = 261;
                  __p = ", ";
                  v100[0] = 2;
                  mlir::Diagnostic::operator<<(&__src + 8, &__p);
                  goto LABEL_41;
                }
              }
            }

            if (__src)
            {
              mlir::Diagnostic::operator<<<21ul>(&__src + 8, "} for arg with type ");
              if (__src)
              {
                v55 = *(*v33 + 8) & 0xFFFFFFFFFFFFFFF8;
                LODWORD(__p) = 4;
                v100[0] = v55;
                v56 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v110, &__p, 1);
                v57 = v110 + 24 * v111;
                v58 = *v56;
                *(v57 + 16) = *(v56 + 16);
                *v57 = v58;
                ++v111;
              }
            }

            v78[5] |= 4uLL;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
            v30 = 0;
          }
        }
      }

      else
      {
        v101 = 257;
        mlir::Operation::emitError(&__src, v79[0], &__p);
        if (__src)
        {
          v40 = 0xAAAAAAAAAAAAAAABLL * ((v1[7] - v1[6]) >> 3);
          LODWORD(p_p) = 5;
          v97 = v40;
          v41 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v110, &p_p, 1);
          v42 = v110 + 24 * v111;
          v43 = *v41;
          *(v42 + 16) = *(v41 + 16);
          *v42 = v43;
          ++v111;
          if (__src)
          {
            mlir::Diagnostic::operator<<<43ul>(&__src + 8, " arguments provided for a graph with only ");
            if (__src)
            {
              v44 = *(*(*(v79[0] + 2 * ((*(v79[0] + 11) >> 23) & 1) + 10) + 8) + 8);
              LODWORD(p_p) = 5;
              v97 = v44;
              v45 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v110, &p_p, 1);
              v46 = v110 + 24 * v111;
              v47 = *v45;
              *(v46 + 16) = *(v45 + 16);
              *v46 = v47;
              ++v111;
              if (__src)
              {
                mlir::Diagnostic::operator<<<13ul>(&__src + 8, " argument(s)");
              }
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v30 = 0;
        v2[5] |= 4uLL;
      }

LABEL_50:
      if (v102 != v104)
      {
        free(v102);
      }

      if (v105 != v107)
      {
        free(v105);
      }

      v2 = v78;
      if ((v30 & 1) == 0)
      {
        v70 = 0;
        v71 = 0;
        goto LABEL_66;
      }

      v1 += 9;
    }

    while (v1 != v76);
    v59 = mlir::IntegerType::get(v92[0], 1, 0);
    __src = 0uLL;
    __p = v59;
    v105 = 0;
    v79[4] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v59 + 32), &__src, &__p, &v105);
    if (v91)
    {
      v105 = *v90;
      v107[0] = 0;
      v107[1] = 0;
      v106 = 0;
      std::vector<mlir::ODIE::FuncShape>::__init_with_size[abi:nn200100]<mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(&v106, v90[1], v90[2], 0x8E38E38E38E38E39 * ((v90[2] - v90[1]) >> 3));
      v60 = mlir::SymbolTableCollection::lookupSymbolIn(v93, v77, v105);
      if (v60 && *(*(v60 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        v61 = (v60 + 64 + 16 * ((*(v60 + 44) >> 23) & 1));
        v63 = v61[6];
        v62 = v61[7];
        v64 = *(v62 + 16);
        v65 = *(v62 + 24);
        v66 = *v61;
        v67 = *(v60 + 24);
        v68 = *(v61[2] + 8);
        v69 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(v92, *(**v67 + 32));
        *&__src = v67;
        *(&__src + 1) = v69;
        v109 = &v111;
        v110 = 0x400000000;
        v112 = v114;
        v113 = 0x400000000;
        v114[4] = v115;
        v114[5] = 0x400000000;
        v115[8] = 4;
        v115[9] = v116;
        v115[10] = 0x100000000;
        v116[1] = v117;
        v116[2] = 0x100000000;
        v117[1] = 0;
        v117[2] = 0;
        v117[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v117[4] = 0;
        v117[6] = 0;
        mlir::ODIE::Compiler::CoreML::GraphOp::build(v92, &__src, v64, v65, v68, 0, 0, 0, 0, 0, v66, v63);
      }

      v101 = 257;
      mlir::Operation::emitError(&__src, v77, &__p);
      if (__src)
      {
        mlir::Diagnostic::operator<<<40ul>(&__src + 8, "Shape specified for undefined function ");
        if (__src)
        {
          LODWORD(v102) = 0;
          v103 = v105;
          v72 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v110, &v102, 1);
          v73 = v110 + 24 * v111;
          v74 = *v72;
          *(v73 + 16) = *(v72 + 16);
          *v73 = v74;
          ++v111;
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v78[5] |= 4uLL;
      *&__src = &v106;
      std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&__src);
    }

    v71 = v80;
    v70 = v83;
LABEL_66:
    MEMORY[0x25F891030](v71, 8);
    MEMORY[0x25F891030](v70, 8);
    MEMORY[0x25F891030](v86[0], 8);
    llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>::~SmallVector(&v90);
    MEMORY[0x25F891030](v88, 8);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v93);
    this = MEMORY[0x25F891030](v93[0], 8);
  }

  v75 = *MEMORY[0x277D85DE8];
  return this;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::operator[](uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 8) = 0;
  }

  return v5 + 1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::operator[](uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), *a2, &v10);
    v6 = *(a1 + 8);
    v5 = v10;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v6;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v8)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v14, v8, v9);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t *mlir::TensorType::operator mlir::ShapedType(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

void llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseIntElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v6;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v8)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v14, v8, v9);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AndOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AndOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::ODIE::Compiler::CoreML::AndOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AndOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::IfOp,llvm::ArrayRef<mlir::Type>,mlir::Value &>(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::IfOp>(a1, *(**a2 + 32));
  v9[0] = a2;
  v9[1] = v8;
  v9[2] = v10;
  v9[3] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[8] = 4;
  v12[9] = v13;
  v12[10] = 0x100000000;
  v13[1] = v14;
  v13[2] = 0x100000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v14[4] = 0;
  v14[6] = 0;
  mlir::ODIE::Compiler::CoreML::IfOp::build(a1, v9, *a3 & 0xFFFFFFFFFFFFFFF9 | 2, a3[1], *a4);
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::GraphOp &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::ODIE::Compiler::CoreML::InvokeOp::build(a1, v13, *a3, *a4 & 0xFFFFFFFFFFFFFFF9, *(a4 + 8));
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::ResultRange>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v6;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v7 = a3[1];
  v8 = *a3 & 0xFFFFFFFFFFFFFFF9;
  v19[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v14, v8 | 4, 0, v8 | 4, v7);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), *a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 8) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t mlir::Diagnostic::operator<<<43ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<13ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::Diagnostic::operator<<<24ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::InFlightDiagnostic::InFlightDiagnostic(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *a1 = v4;
  *(a1 + 200) = 0;
  v6 = a2 + 25;
  if (*(a2 + 200) == 1)
  {
    mlir::Diagnostic::Diagnostic(v5, a2 + 1);
    *(a1 + 200) = 1;
    if (a2[25])
    {
      v7 = a2[23];
      if (v7 != v6)
      {
        free(v7);
      }

      v10 = (a2 + 20);
      std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v10);
      v10 = (a2 + 17);
      std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v10);
      v8 = a2[3];
      if (v8 != a2 + 5)
      {
        free(v8);
      }

      *v6 = 0;
    }
  }

  *a2 = 0;
  return a1;
}

uint64_t mlir::Diagnostic::Diagnostic(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 16) = a1 + 32;
  v5 = a1 + 16;
  *(a1 + 24) = 0x400000000;
  if (*(a2 + 6))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v5, (a2 + 2));
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = *(a2 + 8);
  *(a1 + 144) = a2[18];
  a2[16] = 0;
  a2[17] = 0;
  a2[18] = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0;
  if (*(a2 + 46))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a1 + 176, (a2 + 22));
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 24 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 24 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 24);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 24 * v7), (*a2 + 24 * v7), 24 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::DiagnosticArgument>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<21ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::Type>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void llvm::SmallVectorImpl<mlir::Location>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v3 = *(a1 + 8);
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = *(a1 + 8);
    }

    if (v4)
    {
      v5 = 0;
      v6 = vdupq_n_s64(v4 - 1);
      v7 = (*a1 + 8);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v8.i8[0])
        {
          *(v7 - 1) = a3;
        }

        if (v8.i8[4])
        {
          *v7 = a3;
        }

        v5 += 2;
        v7 += 2;
      }

      while (((v4 + 1) & 0x1FFFFFFFELL) != v5);
      v3 = *(a1 + 8);
    }

    v9 = a2 - v3;
    if (a2 > v3)
    {
      v10 = 0;
      v11 = vdupq_n_s64(v9 - 1);
      v12 = (*a1 + 8 * v3 + 8);
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
        if (v13.i8[0])
        {
          *(v12 - 1) = a3;
        }

        if (v13.i8[4])
        {
          *v12 = a3;
        }

        v10 += 2;
        v12 += 2;
      }

      while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
    }

    *(a1 + 8) = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::Location,true>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<mlir::Location,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  *(a1 + 8) = a2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::SymbolRefAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

void llvm::SmallVectorImpl<BOOL>::append<BOOL const*,void>(void *a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = a1[1];
  v8 = v7 + a3 - __src;
  if (a1[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v8, 1);
    v7 = a1[1];
  }

  if (__src != a3)
  {
    memcpy((*a1 + v7), __src, v6);
    v7 = a1[1];
  }

  a1[1] = v7 + v6;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.constant";
    v6[3] = 15;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t *mlir::DenseElementsAttr::operator mlir::ElementsAttr(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ElementsAttr>();
      mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 904);
}

uint64_t llvm::getTypeName<mlir::ElementsAttr>()
{
  {
    llvm::getTypeName<mlir::ElementsAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ElementsAttr>();
    unk_27FC173A0 = v1;
  }

  return llvm::getTypeName<mlir::ElementsAttr>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ElementsAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ElementsAttr]";
  v6 = 80;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GetShapeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.get_shape";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::EqualOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::EqualOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.equal";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AndOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AndOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.and";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::IfOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IfOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.if";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.cast";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.invoke";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.yield";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ErrorOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ErrorOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.error";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OutputOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.output";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::OptimizePass::~OptimizePass(mlir::ODIE::Compiler::CoreML::OptimizePass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::impl::OptimizeBase<mlir::ODIE::Compiler::CoreML::OptimizePass>::getDependentDialects(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  v5[0] = &unk_286E765A8;
  v5[3] = v5;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, "arith", 5uLL, v5);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::OptimizePass::runOnOperation(mlir::ODIE::Compiler::CoreML::OptimizePass *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(this + 5);
  if ((v1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v1 & 0xFFFFFFFFFFFFFFF8);
    v3 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(***(v3 + 24) + 32);
  *__src = 0u;
  *v6 = 0u;
  v7 = v9;
  v8 = 0x600000000;
  v9[6] = 0;
  v9[7] = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0x2800000000;
  v14 = 0;
  v15 = 0;
  v16 = 0x2800000000;
  operator new();
}

uint64_t mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::FunctionOpInterface>();
      mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 952);
}

uint64_t llvm::getTypeName<mlir::FunctionOpInterface>()
{
  {
    llvm::getTypeName<mlir::FunctionOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::FunctionOpInterface>();
    unk_27FC173D0 = v1;
  }

  return llvm::getTypeName<mlir::FunctionOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::FunctionOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FunctionOpInterface]";
  v6 = 87;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp::~SingleInputStackOpToReshapeOp(mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(&v23, 1u);
  if (v4 != 1)
  {
    return 0;
  }

  v5 = *(mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(&v23, 1u) + 24);
  if ((*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = *(*(*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) : 0;
  }

  else
  {
    v6 = 0;
  }

  if ((*(v23 - 8) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(*(*(v23 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = (*(v23 - 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v8 = 0;
  }

  if (!v6 || !v8)
  {
    return result;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v9 = v6[2];
  if (v9)
  {
    v10 = v6[1];
    v11 = 8 * v9;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v12 = v8[1];
  v13 = v8[2];
  if (v13)
  {
    v14 = 8 * v13;
    v15 = v12;
    while (*v15 != 0x8000000000000000)
    {
      v15 += 2;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    return 0;
  }

LABEL_23:
  v16 = *(v23 + 24);
  v25 = v5;
  I32Constant = mlir::ODIE::Compiler::CoreML::createI32Constant(v12, v13, a3, v16);
  v17 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v17);
  v20 = v18;
  if (v18)
  {
    v18 = (*(v19 + 8))(v19, v18);
  }

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  *&v28 = v12;
  *(&v28 + 1) = v13;
  v26 = 0;
  v27 = v21;
  *&v28 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &v28, &v27, &v26);
  v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>((a3 + 8), v16, &v28, &v25, &I32Constant);
  mlir::RewriterBase::replaceAllUsesWith(a3, (v23 - 16), (v22 - 16));
  return 1;
}

void mlir::RewritePattern::~RewritePattern(mlir::RewritePattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

uint64_t mlir::RewriterBase::replaceAllUsesWith(uint64_t result, uint64_t **a2, uint64_t a3)
{
  v8 = a3;
  v3 = *a2;
  if (*a2)
  {
    v4 = result;
    do
    {
      v5 = *v3;
      v6 = v3[2];
      v7[0] = v3;
      v7[1] = &v8;
      result = mlir::RewriterBase::modifyOpInPlace<mlir::RewriterBase::replaceAllUsesWith(mlir::Value,mlir::Value)::{lambda(void)#1}>(v4, v6, v7);
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(mlir::ODIE::Compiler::CoreML::StackOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

uint64_t mlir::ODIE::Compiler::CoreML::createI32Constant(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v48[8] = *MEMORY[0x277D85DE8];
  Raw = a2;
  v6 = (a3 + 8);
  v7 = mlir::IntegerType::get(*(a3 + 8), 32, 1);
  *&v40 = &Raw;
  *(&v40 + 1) = 1;
  __src = v7;
  v38 = 0;
  v8 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v7 + 32), &v40, &__src, &v38);
  __src = 0;
  v36 = 0;
  v37 = 0;
  v9 = 0;
  if (a2)
  {
    v10 = 8 * a2;
    do
    {
      v11 = *a1;
      if (v9 >= v37)
      {
        v12 = __src;
        v13 = v9 - __src;
        v14 = (v9 - __src) >> 2;
        v15 = v14 + 1;
        if ((v14 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:nn200100]();
        }

        v16 = v37 - __src;
        if ((v37 - __src) >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(&__src, v17);
        }

        v18 = (v9 - __src) >> 2;
        v19 = (4 * v14);
        v20 = (4 * v14 - 4 * v18);
        *v19 = v11;
        v9 = (v19 + 1);
        memcpy(v20, v12, v13);
        v21 = __src;
        __src = v20;
        v36 = v9;
        v37 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = v11;
        v9 += 4;
      }

      v36 = v9;
      a1 += 2;
      v10 -= 8;
    }

    while (v10);
  }

  if (v8)
  {
    v22 = *v8;
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v24 = mlir::detail::InterfaceMap::lookup(v22 + 8, v23);
    v9 = v36;
  }

  else
  {
    v24 = 0;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v8, v24, __src, v9 - __src);
  v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(v6, *(**a4 + 32));
  *&v40 = a4;
  *(&v40 + 1) = v25;
  v41 = &v43;
  v42 = 0x400000000;
  v44[0] = v45;
  v44[1] = 0x400000000;
  v45[4] = v46;
  v45[5] = 0x400000000;
  v46[8] = 4;
  v46[9] = v47;
  v46[10] = 0x100000000;
  v47[1] = v48;
  v47[2] = 0x100000000;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v48[4] = 0;
  v48[6] = 0;
  v27 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&Raw);
  if (v27)
  {
    v28 = *(v26 + 24);
  }

  else
  {
    v28 = 0;
  }

  v38 = v8;
  v29 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(&v40);
  *v29 = v27;
  v29[1] = v28;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v44, &v38, &Raw);
  v30 = mlir::Operation::create(&v40);
  mlir::OpBuilder::insert(v6, v30);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(&v40);
  if (__src)
  {
    v36 = __src;
    operator delete(__src);
  }

  if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    result = (v30 - 16);
  }

  else
  {
    result = -16;
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v10;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t *llvm::cast<mlir::ShapedType,mlir::TensorType>(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.reshape";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::RewriterBase::modifyOpInPlace<mlir::RewriterBase::replaceAllUsesWith(mlir::Value,mlir::Value)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  (*(*a1 + 40))(a1);
  v6 = *a3;
  v7 = *a3[1];
  v8 = (*a3)[1];
  if (v8)
  {
    v9 = *v6;
    *v8 = *v6;
    if (v9)
    {
      *(v9 + 8) = v6[1];
    }
  }

  v6[3] = v7;
  v10 = *v7;
  *v6 = *v7;
  v6[1] = v7;
  if (v10)
  {
    *(v10 + 8) = v6;
  }

  *v7 = v6;
  v11 = *(*a1 + 48);

  return v11(a1, a2);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp]";
  v6 = 121;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::RewritePattern>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand::~RedundantShrinkToExpand(mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120 || *(*(v5 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v4;
    if (*(*(v7 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
    {
      return 0;
    }

    v6 = v7 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
  {
    v6 = 0;
  }

  v8 = *(*(v6 + 72) + 24);
  v9 = *(a2 + 36);
  v10 = (a2 - 16);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((v11[1] ^ *(v8 + 8)) <= 7)
  {
    mlir::RewriterBase::replaceAllUsesWith(a3, v10, v8);
    return 1;
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand]";
  v6 = 115;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink::~RedundantExpandToShrink(mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120 || *(*(v5 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v4;
    if (*(*(v7 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
    {
      return 0;
    }

    v6 = v7 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
  {
    v6 = 0;
  }

  v8 = *(*(v6 + 72) + 24);
  v9 = *(a2 + 36);
  v10 = (a2 - 16);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((v11[1] ^ *(v8 + 8)) <= 7)
  {
    mlir::RewriterBase::replaceAllUsesWith(a3, v10, v8);
    return 1;
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink]";
  v6 = 115;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RepeatedTranspose::~RepeatedTranspose(mlir::ODIE::Compiler::CoreML::RepeatedTranspose *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreML::RepeatedTranspose::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v65 = 0;
  v66 = 0;
  v62 = &v65;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_29;
  }

  v9 = *(v6 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v6 + 24 * *(v6 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v11 = v6 + 16 * v9 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v62, v11))
  {
    goto LABEL_29;
  }

  v12 = (~*(v4 + 8) & 7) != 0 ? v4 : 0;
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v14 = v12 + 24 * *(v12 + 16);
    v15 = v14 + 120;
    if (v14 == -120 || *(*(v14 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v16 = v12 + 16 * v13;
    if (*(*(v16 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
    {
LABEL_29:
      v23 = *MEMORY[0x277D85DE8];
      return;
    }

    v15 = v16 + 16;
  }

  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*(v17 + 72) + 56);
  v65 = 0;
  v66 = 0;
  v62 = &v65;
  if ((~*(v18 + 8) & 7) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    goto LABEL_29;
  }

  v20 = *(v19 + 8) & 7;
  if (v20 == 6)
  {
    v21 = v19 + 24 * *(v19 + 16);
    v22 = v21 + 120;
    if (v21 == -120)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v22 = v19 + 16 * v20 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v62, v22))
  {
    goto LABEL_29;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v65);
  if (v70)
  {
    v62 = v64;
    v63 = 0xC00000000;
    if (!v66 || (llvm::SmallVectorImpl<int>::operator=(&v62, &v65), (v70 & 1) != 0))
    {
      if (v65 != &v67)
      {
        free(v65);
      }
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v18, &v65);
    if (v70)
    {
      v60[0] = v61;
      v60[1] = 0xC00000000;
      if (!v66 || (llvm::SmallVectorImpl<int>::operator=(v60, &v65), (v70 & 1) != 0))
      {
        if (v65 != &v67)
        {
          free(v65);
        }
      }

      v57 = v59;
      v58 = 0xC00000000;
      llvm::SmallVectorImpl<int>::resizeImpl<false>(&v57, v63);
      if (v63)
      {
        v24 = v62;
        v25 = v60[0];
        v26 = 4 * v63;
        v27 = v57;
        do
        {
          v28 = *v24++;
          *v27++ = v25[v28];
          v26 -= 4;
        }

        while (v26);
      }

      v29 = *(a2 + 24);
      v30 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
        v31 = *v30;
        v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v33 = mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
      }

      else
      {
        v33 = 0;
      }

      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v30, v33, v57, 4 * v58);
      v34 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a3 + 8, *(**v29 + 32));
      v65 = v29;
      v66 = v34;
      v67 = v69;
      v68 = 0x400000000;
      v70 = v72;
      v71 = 0x400000000;
      v73 = v75;
      v74 = 0x400000000;
      v76 = 4;
      v77 = &v79;
      v78 = 0x100000000;
      v80 = &v82;
      v81 = 0x100000000;
      v83 = 0;
      v84 = 0;
      v85 = &mlir::detail::TypeIDResolver<void,void>::id;
      v86 = 0;
      v87 = 0;
      v36 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&Raw);
      if (v36)
      {
        v37 = *(v35 + 24);
      }

      else
      {
        v37 = 0;
      }

      __src = v30;
      v38 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(&v65);
      *v38 = v36;
      v38[1] = v37;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v70, &__src, &v57);
      v39 = mlir::Operation::create(&v65);
      mlir::OpBuilder::insert((a3 + 8), v39);
      v40 = *(*(v39 + 6) + 16);
      mlir::OperationState::~OperationState(&v65);
      if (v40 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0;
      }

      v42 = *(a2 + 24);
      v43 = *(a2 + 36);
      v44 = (a2 - 16);
      if (v43)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45[1];
      v47 = *(*(v17 + 72) + 24);
      v48 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(a3 + 8, *(**v42 + 32));
      v65 = v42;
      v66 = v48;
      v67 = v69;
      v68 = 0x400000000;
      v70 = v72;
      v71 = 0x400000000;
      v73 = v75;
      v74 = 0x400000000;
      v76 = 4;
      v77 = &v79;
      v78 = 0x100000000;
      v80 = &v82;
      v81 = 0x100000000;
      v83 = 0;
      v84 = 0;
      v85 = &mlir::detail::TypeIDResolver<void,void>::id;
      v86 = 0;
      v87 = 0;
      mlir::ODIE::Compiler::CoreML::TransposeOp::build(a3 + 8, &v65, v46 & 0xFFFFFFFFFFFFFFF8, v47, (v41 - 16));
      v49 = mlir::Operation::create(&v65);
      mlir::OpBuilder::insert((a3 + 8), v49);
      v50 = *(*(v49 + 6) + 16);
      v51 = v49 - 16;
      mlir::OperationState::~OperationState(&v65);
      if (v50 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
      {
        v52 = v51;
      }

      else
      {
        v52 = -16;
      }

      mlir::RewriterBase::replaceAllUsesWith(a3, v44, v52);
      if (v57 != v59)
      {
        free(v57);
      }

      if (v60[0] != v61)
      {
        free(v60[0]);
      }

      if (v62 != v64)
      {
        free(v62);
      }

      goto LABEL_29;
    }
  }

  v53 = std::__throw_bad_optional_access[abi:nn200100]();
  mlir::ODIE::Compiler::extract1DIntVector<int>(v53, v54);
}

void mlir::ODIE::Compiler::extract1DIntVector<int>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v3 + 16 * v4 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v9, v6))
  {
LABEL_14:
    *a2 = 0;
    *(a2 + 64) = 0;
    goto LABEL_15;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v8, &v9);
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  if (v10)
  {
    llvm::SmallVectorImpl<int>::operator=(a2, &v9);
  }

  *(a2 + 64) = 1;
  if (v9 != v11)
  {
    free(v9);
  }

LABEL_15:
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::cast<mlir::ShapedType,mlir::Type>(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

BOOL mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(uint64_t ***a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v11[0] = v12;
    v11[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v11);
    v5 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible((*v11[0] & 0xFFFFFFFFFFFFFFF8));
    v7 = v5 != 0;
    if (v5)
    {
      v8 = *a1;
      if (*a1)
      {
        *v8 = v5;
        v8[1] = v6;
      }
    }

    if (v11[0] != v12)
    {
      free(v11[0]);
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

void mlir::ODIE::Compiler::extract1DIntVector<int>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a2 + 2;
  a2[1] = 0xC00000000;
  v4 = *(a1 + 24);
  v19[0] = *(a1 + 32);
  v19[1] = v4;
  v20 = 0;
  v5 = *(a1 + 8);
  v6 = (*(*(a1 + 16) + 8))();
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v6);
  v7 = *(a1 + 8);
  v8 = (*(*(a1 + 16) + 24))();
  if (v9)
  {
    v10 = 8 * v9;
    v11 = 1;
    do
    {
      v12 = *v8++;
      v11 *= v12;
      v10 -= 8;
    }

    while (v10);
  }

  else
  {
    v11 = 1;
  }

  v13 = *(a1 + 8);
  v14 = (*(*(a1 + 16) + 8))();
  mlir::detail::getDenseElementBitWidth(v14);
  if (v11)
  {
    v15 = 1;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v19, &v17);
      LimitedValue = llvm::APInt::getLimitedValue(&v17, 0xFFFFFFFFFFFFFFFFLL);
      llvm::SmallVectorTemplateBase<int,true>::push_back(a2, LimitedValue);
      if (v18 >= 0x41)
      {
        if (v17)
        {
          MEMORY[0x25F891010](v17, 0x1000C8000313F17);
        }
      }

      v20 = v15++;
      --v11;
    }

    while (v11);
  }
}

BOOL mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(void **a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v10[0] = v11;
    v10[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v10);
    v5 = (*v10[0] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::DenseIntElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v10[0] != v11)
    {
      free(v10[0]);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void llvm::SmallVectorTemplateBase<int,true>::push_back(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 4);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 4 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t *llvm::APInt::getLimitedValue(uint64_t ***this, unint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= 0x41)
  {
    if (v4 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      return a2;
    }

    v5 = **this;
  }

  else
  {
    v5 = *this;
  }

  if (v5 <= a2)
  {
    return v5;
  }

  return a2;
}

uint64_t llvm::SmallVectorImpl<int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<int>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 4 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 4 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 4);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 4 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 4);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<int>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorImpl<int>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 4);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 4 * v2), 4 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.transpose";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RepeatedTranspose>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RepeatedTranspose]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantReshape::~RedundantReshape(mlir::ODIE::Compiler::CoreML::RedundantReshape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantReshape::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::TensorType const,llvm::CastInfo<mlir::ShapedType,mlir::TensorType const,void>>::doCastIfPossible((*(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    if ((*(v6 + 16))(v6, v5))
    {
      v9 = (*(v8 + 24))(v8, v7);
      if (v10)
      {
        v11 = 8 * v10;
        while (*v9 != 0x8000000000000000)
        {
          ++v9;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v12 = (*(v8 + 24))(v8, v7);
        v14 = v13;
        mlir::Operation::getUsers(a2, v33);
        v15 = v34;
        v16 = v35;
        v32 = v34;
        v31[0] = v33[0];
        for (v31[1] = v33[1]; v32 != v16; v15 = v32)
        {
          v17 = *(v15 + 16);
          if (v17)
          {
            v18 = *(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 - 8) & 0xFFFFFFFFFFFFFFF8));
            if (v19)
            {
              v21 = v19;
              v22 = v20;
              if ((*(v20 + 16))(v20, v19))
              {
                v23 = (*(v22 + 24))(v22, v21);
                if (v24)
                {
                  v25 = 8 * v24;
                  while (*v23 != 0x8000000000000000)
                  {
                    ++v23;
                    v25 -= 8;
                    if (!v25)
                    {
                      goto LABEL_19;
                    }
                  }
                }

                else
                {
LABEL_19:
                  v26 = (*(v22 + 24))(v22, v21);
                  if (v14 == v27 && !memcmp(v12, v26, 8 * v14))
                  {
                    v30 = *(*(a2 + 9) + 24);
                    v28 = 1;
                    mlir::RewriterBase::replaceAllOpUsesWith(a3, v17, &v30, 1);
                    return v28;
                  }
                }
              }
            }
          }

          mlir::ResultRange::UseIterator::operator++(v31);
        }
      }
    }
  }

  return 0;
}

BOOL mlir::ShapedType::hasStaticShape(mlir::ShapedType *this)
{
  v2 = *this;
  if (!(*(*(this + 1) + 16))())
  {
    return 0;
  }

  v3 = *this;
  v4 = (*(*(this + 1) + 24))();
  if (!v5)
  {
    return 1;
  }

  v6 = 8 * v5 - 8;
  do
  {
    v7 = *v4++;
    v8 = v7 != 0x8000000000000000;
    v9 = v7 == 0x8000000000000000 || v6 == 0;
    v6 -= 8;
  }

  while (!v9);
  return v8;
}

double mlir::Operation::getUsers@<D0>(mlir::Operation *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 9);
  v4 = this - 16;
  if (v3)
  {
    v5 = this - 16;
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;
  *&v11 = v5;
  *(&v11 + 1) = v3;
  v12 = 0;
  if (!v3)
  {
    v7 = 0;
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v10);
  v7 = *(this + 9);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(a2 + 48) = v7;
  *(a2 + 56) = v4;
  *(a2 + 64) = v7;
  *(a2 + 72) = 0;
  result = *&v10;
  v9 = v11;
  *a2 = v10;
  *(a2 + 16) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v4;
  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::TensorType const,llvm::CastInfo<mlir::ShapedType,mlir::TensorType const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantReshape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantReshape]";
  v6 = 108;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack::~RedundantSelectFromStack(mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = v3[3];
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_15:
      result = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v9 = v4 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id)
  {
    goto LABEL_15;
  }

  if (*(*(v9 + 72) + 24) != v3[7])
  {
    goto LABEL_15;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v3[11], &v12);
  if (v14 != 1)
  {
    goto LABEL_15;
  }

  mlir::RewriterBase::replaceAllUsesWith(a3, (a2 - 16), *(*(v9 + 72) + 32 * (*v12 + 1) + 24));
  if ((v14 & 1) != 0 && v12 != &v13)
  {
    free(v12);
  }

  result = 1;
LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack]";
  v6 = 116;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat::~RedundantSelectFromConcat(mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = v3[3];
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = v4 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    goto LABEL_17;
  }

  if (*(*(v9 + 72) + 24) != v3[7])
  {
    goto LABEL_17;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v3[11], &v21);
  if (v23 != 1)
  {
    goto LABEL_17;
  }

  v10 = *(*(v9 + 72) + 32 * (*v21 + 1) + 24);
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16) + 120;
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v12 = v10 + 16 * v11 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v16 = *(*(v12 + 72) + 24);
    v18 = *(a2 + 36);
    v19 = (a2 - 16);
    v20 = v18 ? v19 : 0;
    v17 = *(v16 + 8);
    if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) ^ v17) <= 7)
    {
      mlir::RewriterBase::replaceAllUsesWith(a3, v19, v16);
      v13 = 1;
      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

LABEL_27:
  v13 = 0;
LABEL_28:
  if (v21 != &v22)
  {
    free(v21);
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat]";
  v6 = 117;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::~SquashSliceUpdates(mlir::ODIE::Compiler::CoreML::SquashSliceUpdates *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73[5] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  v63 = v5;
  v64 = a2;
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::TensorType const,llvm::CastInfo<mlir::ShapedType,mlir::TensorType const,void>>::doCastIfPossible((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 72);
  v9 = v8[7];
  v10 = v8[11];
  v11 = v8[15];
  v62 = v11;
  v12 = v8[19];
  if ((~*(v12 + 8) & 7) == 0)
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v14 = v12 + 24 * *(v12 + 16);
    v15 = v14 + 120;
    if (v14 == -120)
    {
LABEL_10:
      v16 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = v12 + 16 * v13 + 16;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id)
  {
    goto LABEL_10;
  }

  v19 = *(v15 + 72);
  v20 = v19[3];
  if ((~*(v20 + 8) & 7) == 0)
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16) + 120;
    if (!v22)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = v20 + 16 * v21 + 16;
  }

  if (*(*(v22 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    goto LABEL_10;
  }

  v23 = *(v22 + 72);
  if (v23[3] != v5)
  {
    goto LABEL_10;
  }

  if (v23[7] != v9)
  {
    goto LABEL_10;
  }

  if (v23[11] != v10)
  {
    goto LABEL_10;
  }

  if (v23[15] != v11)
  {
    goto LABEL_10;
  }

  v60[0] = a3;
  v60[1] = &v64;
  v60[2] = &v61;
  if (v19[15] != v11)
  {
    goto LABEL_10;
  }

  v24 = v19[7];
  v25 = v19[11];
  (*(v7 + 24))(v7, v6);
  v72[0] = v73;
  v72[1] = 0x500000000;
  v70[0] = v71;
  v70[1] = 0x500000000;
  v57 = v26;
  if (v26 < 1)
  {
LABEL_44:
    v16 = 1;
    v48 = mlir::IntegerType::get(*(a3 + 8), 32, 1);
    v49 = *(v64 + 24);
    v58 = mlir::RankedTensorType::get(0, 0, v48, 0);
    v50 = llvm::cast<mlir::ShapedType,mlir::TensorType>(&v58);
    LODWORD(v69) = 0;
    *&v65 = mlir::DenseIntOrFPElementsAttr::getRaw(v50, v51, &v69, 4);
    v59 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 8), v49, &v65);
    v52 = *(v64 + 24);
    v69 = v57;
    *&v65 = mlir::RankedTensorType::get(&v69, 1, v48, 0);
    v58 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::SmallVector<mlir::Value,5u> &>((a3 + 8), v52, &v65, &v59, v72);
    v53 = *(v64 + 24);
    v68 = v57;
    *&v65 = mlir::RankedTensorType::get(&v68, 1, v48, 0);
    v54 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::SmallVector<mlir::Value,5u> &>((a3 + 8), v53, &v65, &v59, v70);
    v55 = *(v64 + 36);
    v56 = v64 - 16;
    if (!v55)
    {
      v56 = 0;
    }

    v65 = v56;
    v66 = v56;
    v67 = v55;
    v68 = *(*(v15 + 72) + 152);
    v69 = v54;
    mlir::RewriterBase::replaceOpWithNewOp<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConcatOp &,mlir::ODIE::Compiler::CoreML::ConcatOp &,mlir::detail::TypedValue<mlir::RankedTensorType> &,mlir::detail::TypedValue<mlir::TensorType>>(a3, v64, &v65, &v63, &v58, &v69, &v62, &v68);
  }

  else
  {
    v27 = 0;
    while (1)
    {
      v28 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(v9, v27);
      v30 = v29;
      v31 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(v10, v27);
      v33 = 0;
      if ((v30 & 1) != 0 && (v32 & 1) != 0 && !v28)
      {
        v33 = v31 == 0x7FFFFFFF;
      }

      v34 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(v24, v27);
      v36 = v35;
      v37 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(v25, v27);
      v39 = 0;
      if ((v36 & 1) != 0 && (v38 & 1) != 0 && !v34)
      {
        v39 = v37 == 0x7FFFFFFF;
      }

      if (!v33 && !v39)
      {
        break;
      }

      if (v33 && v39)
      {
        *&v65 = 0;
        I32Constant = mlir::ODIE::Compiler::CoreML::createI32Constant(&v65, 1, a3, *(v64 + 24));
        *&v65 = 0x7FFFFFFFLL;
        v41 = mlir::ODIE::Compiler::CoreML::createI32Constant(&v65, 1, a3, *(v64 + 24));
      }

      else
      {
        if (v33)
        {
          I32Constant = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#1}::operator()(v60, v24, v27);
          v43 = v42;
          v44 = v25;
        }

        else
        {
          I32Constant = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#1}::operator()(v60, v9, v27);
          v43 = v45;
          v44 = v10;
        }

        v41 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#1}::operator()(v60, v44, v27);
        if ((v43 & 1) == 0 || (v46 & 1) == 0)
        {
          break;
        }
      }

      v47 = v41;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v72, I32Constant);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v70, v47);
      if (v57 == ++v27)
      {
        goto LABEL_44;
      }
    }

    v16 = 0;
  }

  if (v70[0] != v71)
  {
    free(v70[0]);
  }

  if (v72[0] != v73)
  {
    free(v72[0]);
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

unint64_t mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#1}::operator()(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = &v38;
  v6 = *(a2 + 8) & 7;
  if (v6 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v39, v10))
  {
    mlir::DenseElementsAttr::tryGetValues<int,void>(&v38, &v39);
    if (v40)
    {
      v11 = 0;
    }

    else
    {
      v11 = v41 + a3;
    }

    v39 = *(v39 + v11);
    v12 = *a1;
    v13 = *(**(a1 + 8) + 24);
    goto LABEL_14;
  }

  v6 = *(a2 + 8) & 7;
LABEL_16:
  if (v6 == 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2;
  }

  if (!v16)
  {
    LOBYTE(v15) = 0;
    goto LABEL_50;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  v20 = *(*(v19 + 48) + 16);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v20 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    goto LABEL_48;
  }

  mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::ODIE::Compiler::CoreML::ConcatOp,unsigned long)#1}::operator()(v36, v19, a3);
  if (v37 != 1)
  {
    goto LABEL_48;
  }

  v15 = v36[0];
  v22 = v36[1];
  v35 = 0;
  v39 = &v35;
  v23 = *(v36[0] + 8);
  if ((~*(v36[0] + 8) & 7) != 0)
  {
    v24 = v36[0];
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    goto LABEL_44;
  }

  v25 = *(v24 + 8) & 7;
  if (v25 == 6)
  {
    v26 = v24 + 24 * *(v24 + 16);
    v27 = v26 + 120;
    if (v26 == -120)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v27 = v24 + 16 * v25 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v39, v27))
  {
    mlir::DenseElementsAttr::tryGetValues<int,void>(&v35, &v39);
    if (v40)
    {
      v28 = 0;
    }

    else
    {
      v28 = v41 + v22;
    }

    v39 = *(v39 + v28);
    v12 = *a1;
    v13 = *(v21 + 24);
LABEL_14:
    I32Constant = mlir::ODIE::Compiler::CoreML::createI32Constant(&v39, 1, v12, v13);
    LOBYTE(v15) = I32Constant;
    v16 = I32Constant & 0xFFFFFFFFFFFFFF00;
    goto LABEL_50;
  }

  v23 = *(v15 + 8);
LABEL_44:
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v23 & 0xFFFFFFFFFFFFFFF8));
  if (!v30)
  {
    LOBYTE(v15) = 0;
    goto LABEL_49;
  }

  v31 = v29;
  (*(v29 + 24))(v29, v30);
  if (v32 != 1 || *(*(v31 + 24))(v31, v30) != 1)
  {
LABEL_48:
    LOBYTE(v15) = 0;
LABEL_49:
    v16 = 0;
    goto LABEL_50;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFF00;
LABEL_50:
  v33 = *MEMORY[0x277D85DE8];
  return v16 | v15;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::SmallVector<mlir::Value,5u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v10;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v15, *a3, *a4 - 16, *a5 & 0xFFFFFFFFFFFFFFF9, *(a5 + 8));
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConcatOp &,mlir::ODIE::Compiler::CoreML::ConcatOp &,mlir::detail::TypedValue<mlir::RankedTensorType> &,mlir::detail::TypedValue<mlir::TensorType>>(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4, void *a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v16 = *(a2 + 24);
  updated = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(a1 + 8, *(**v16 + 32));
  v27[0] = v16;
  v27[1] = updated;
  v27[2] = v28;
  v27[3] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  v18 = a3[1];
  v25[0] = *a3;
  v25[1] = v18;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v26, v25);
  mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(a1 + 8, v27, v26[0], v26[1], *a4, *a5 - 16, *a6 - 16, *a7, *a8);
  v19 = mlir::Operation::create(v27);
  mlir::OpBuilder::insert((a1 + 8), v19);
  v20 = *(*(v19 + 6) + 16);
  mlir::OperationState::~OperationState(v27);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(*a1 + 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22(a1, a2, v21);
}

unint64_t mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(uint64_t a1, unint64_t a2)
{
  v24 = 0;
  v25 = &v24;
  v4 = *(a1 + 8) & 7;
  if (v4 == 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  if (v5)
  {
    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16);
      v8 = v7 + 120;
      if (v7 == -120)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = v5 + 16 * v6 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v25, v8))
    {
      v9 = &v24;
      goto LABEL_11;
    }

    v4 = *(a1 + 8) & 7;
  }

LABEL_16:
  if (v4 == 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1;
  }

  if (!v12)
  {
    LOBYTE(v11) = 0;
    return v11 | (v12 << 8);
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v14 = v12 + 24 * *(v12 + 16);
    v15 = v14 + 120;
    if (v14 == -120)
    {
      LOBYTE(v11) = 0;
LABEL_37:
      v12 = 0;
      return v11 | (v12 << 8);
    }
  }

  else
  {
    v15 = v12 + 16 * v13 + 16;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    goto LABEL_36;
  }

  mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::ODIE::Compiler::CoreML::ConcatOp,unsigned long)#1}::operator()(v22, v15, a2);
  if (v23 != 1)
  {
    goto LABEL_36;
  }

  v16 = v22[0];
  a2 = v22[1];
  v21 = 0;
  v25 = &v21;
  if ((~*(v22[0] + 8) & 7) == 0)
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v25, v19))
  {
LABEL_36:
    LOBYTE(v11) = 0;
    goto LABEL_37;
  }

  v9 = &v21;
LABEL_11:
  mlir::DenseElementsAttr::tryGetValues<int,void>(v9, &v25);
  if (v26)
  {
    v10 = 0;
  }

  else
  {
    v10 = v27 + a2;
  }

  v11 = *(v25 + v10);
  v12 = v11 >> 8;
  return v11 | (v12 << 8);
}

void mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::ODIE::Compiler::CoreML::ConcatOp,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a2;
  if (*((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 16) == 1)
  {
    ODSOperands = mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperands(&v18, 1u);
    v19 = v21;
    v20 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v19, ODSOperands, 0, ODSOperands, v6);
    if (v20)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(v19 + v8) + 8) & 0xFFFFFFFFFFFFFFF8));
        if (!v9 || (v11 = v9, v12 = v10, (*(v10 + 24))(v10, v9), v13 != 1))
        {
          *a1 = 0;
          *(a1 + 16) = 0;
          v16 = v19;
          goto LABEL_14;
        }

        v14 = (*(v12 + 24))(v12, v11);
        v15 = *v14 + v7;
        if (v15 > a3)
        {
          break;
        }

        ++v8;
        v7 += *v14;
        if (v8 >= v20)
        {
          goto LABEL_13;
        }
      }

      v15 = v7;
    }

    else
    {
      v8 = 0;
      v15 = 0;
    }

LABEL_13:
    v16 = v19;
    *a1 = *(v19 + v8);
    *(a1 + 8) = a3 - v15;
    *(a1 + 16) = 1;
LABEL_14:
    if (v16 != v21)
    {
      free(v16);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}