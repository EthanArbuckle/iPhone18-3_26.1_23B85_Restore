uint64_t mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::Option<llvm::cl::desc>(uint64_t a1, char *a2, _OWORD *a3)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v6 = llvm::cl::Option::Option(a1, 0, 0);
  *(v6 + 128) = 0u;
  *(v6 + 120) = v6 + 128;
  *(v6 + 144) = &unk_286EA3B10;
  *v6 = &unk_286EA3AA8;
  *(v6 + 160) = v6;
  *(v6 + 168) = v6 + 184;
  *(v6 + 176) = 0x800000000;
  *(v6 + 152) = &unk_286EA3B30;
  v7 = (v6 + 504);
  *(v6 + 504) = &unk_286EA3BD0;
  *(v6 + 528) = v6 + 504;
  llvm::cl::Option::setArgStr(v6, "compilers", 9);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a1 + 88), a2, v12);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 544) = 0;
  *a1 = &unk_286EA39E8;
  *(a1 + 536) = &unk_286EA3A68;
  v12[0] = a1 + 536;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), v12);
  v11[0] = &unk_286EA3C18;
  v11[1] = a1;
  v13 = v12;
  v11[3] = v11;
  v12[0] = &unk_286EA3C18;
  v12[1] = a1;
  if (v12 != v7)
  {
    v8 = *(a1 + 528);
    if (v8 == v7)
    {
      v14[0] = &unk_286EA3C18;
      v14[1] = a1;
      v13 = 0;
      (*(*v8 + 24))(v8, v12);
      (*(**(a1 + 528) + 32))(*(a1 + 528));
      *(a1 + 528) = 0;
      v13 = v12;
      (*(v14[0] + 24))(v14, v7);
      (*(v14[0] + 32))(v14);
    }

    else
    {
      *(a1 + 504) = &unk_286EA3C18;
      *(a1 + 512) = a1;
      v13 = v8;
    }

    *(a1 + 528) = v7;
  }

  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](v12);
  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](v11);
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v8 = *(*(a1 + 160) + 24);
  v9 = v8 == 0;
  if (v8)
  {
    a4 = a6;
  }

  v20 = 1283;
  if (!v9)
  {
    a3 = a5;
  }

  v19[0] = "Cannot find option named '";
  v19[2] = a3;
  v19[3] = a4;
  v21[0] = v19;
  v21[2] = "'!";
  v22 = 770;
  v12 = llvm::errs(a1);
  v13 = llvm::cl::Option::error(a1, v21, 0, 0, v12);
  if (v13)
  {
    goto LABEL_12;
  }

  if ((a1 + 120) != &v17)
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>((a1 + 120), v17, v18);
  }

  *(a1 + 12) = a2;
  v14 = *(a1 + 528);
  if (v14)
  {
    (*(*v14 + 48))(v14, &v17);
LABEL_12:
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(&v17, v18[0]);
    return v13;
  }

  v16 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::getValueExpectedFlagDefault(v16);
}

uint64_t llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::setDefault(uint64_t a1)
{
  v1 = (a1 + 120);
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  if (v1 == &v3)
  {
    v2 = 0;
  }

  else
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>(v1, v4, v4);
    v2 = v4[0];
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(&v3, v2);
}

void mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v2 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  llvm::raw_ostream::write(v2, 61);
  __break(1u);
}

void mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 120);
  if (v4 != (a2 - 416))
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>(v4, *(a2 - 416), (a2 - 408));
  }

  *(a1 + 544) = *(a2 + 8);
}

void non-virtual thunk tomlir::Pass::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1 - 536);
}

{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1 - 536);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v2 = llvm::raw_ostream::operator<<(this, *(a1 - 520), *(a1 - 512));
  llvm::raw_ostream::write(v2, 61);
  __break(1u);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>((a1 - 416), *(a2 - 416), (a2 - 408));
  }

  *(a1 + 8) = *(a2 + 8);
}

void mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286EA3AA8;
  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3B80;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1 + 120, *(a1 + 128));

  llvm::cl::Option::~Option(a1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1 - 536);
}

{
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(a1 - 536);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~opt(uint64_t a1)
{
  *a1 = &unk_286EA3AA8;
  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3B80;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1 + 120, *(a1 + 128));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286EA3AA8;
  std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3B80;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1 + 120, *(a1 + 128));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void *mlir::detail::PassOptions::GenericOptionParser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286EA3B80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void mlir::detail::PassOptions::GenericOptionParser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286EA3B80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::parser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 40 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 40 * a2;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void *llvm::cl::parser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~parser(void *a1)
{
  *a1 = &unk_286EA3B80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~parser(void *a1)
{
  *a1 = &unk_286EA3B80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_3mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_8functionIFNS_10unique_ptrIN4llvm12MemoryBufferENS_14default_deleteISG_EEEEOSJ_RKNS_4__fs10filesystem4pathENSF_12function_refIFvRKNSF_5TwineEEEEEEENS_4lessISC_EENSA_INS_4pairIKSC_SX_EEEEEENS4_19GenericOptionParserIS14_EEEC1IJNSF_2cl4descEEEERS4_NSF_9StringRefEDpOT_EUlRKT_E_NSA_IS1J_EEFvRKS14_EE7__cloneEPNS0_6__baseIS1N_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA3C18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>(uint64_t **a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_23;
  }

  v6 = *a1;
  v7 = a1[1];
  *a1 = (a1 + 1);
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v8 = v6[1];
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    v16 = 0;
LABEL_22:
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1, v16);
    goto LABEL_23;
  }

  v9 = std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::_DetachedTreeCache::__detach_next(v8);
  if (a2 != a3)
  {
    v10 = a2;
    do
    {
      v11 = v8;
      v8 = v9;
      std::string::operator=((v11 + 4), (v10 + 4));
      std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::operator=(v11 + 7, (v10 + 7));
      leaf_high = std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__find_leaf_high(v5, &v17, v11 + 4);
      std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__insert_node_at(v5, v17, leaf_high, v11);
      if (v9)
      {
        v9 = std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::_DetachedTreeCache::__detach_next(v9);
      }

      v13 = v10[1];
      if (v13)
      {
        do
        {
          a2 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          a2 = v10[2];
          v14 = *a2 == v10;
          v10 = a2;
        }

        while (!v14);
      }

      if (!v8)
      {
        break;
      }

      v10 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(v5, v8);
  if (v9)
  {
    for (i = v9[2]; i; i = i[2])
    {
      v9 = i;
    }

    a1 = v5;
    v16 = v9;
    goto LABEL_22;
  }

LABEL_23:
  if (a2 != a3)
  {
    operator new();
  }
}

void *std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v11 = v4[4];
        v9 = v4 + 4;
        v10 = v11;
        v12 = *(v9 + 23);
        v13 = v12 >= 0 ? *(v9 + 23) : v9[1];
        v14 = v12 >= 0 ? v9 : v10;
        v15 = (v13 >= v7 ? v7 : v13);
        v16 = memcmp(v8, v14, v15);
        v17 = v7 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_25;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_25:
  *a2 = v5;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

llvm::cl::Option *mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::Option<llvm::cl::desc>(llvm::cl::Option *a1, const void *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  v10[0] = a2;
  v10[1] = 0;
  v7 = llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v11, v10, a5);
  *(v7 + 544) = 0;
  *v7 = &unk_286EA3D20;
  *(v7 + 67) = &unk_286EA3DA0;
  v10[0] = v7 + 536;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, v10);
  v12[0] = &unk_286EA3F50;
  v12[1] = a1;
  v12[3] = v12;
  std::function<void ()(std::__fs::filesystem::path const&)>::operator=(a1 + 63, v12);
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](v12);
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(&__str, 0, sizeof(__str));
  v8 = llvm::cl::parser<std::__fs::filesystem::path>::parse((a1 + 152), a1, a3, a4, a5, a6);
  if ((v8 & 1) == 0)
  {
    std::string::operator=((a1 + 120), &__str);
    *(a1 + 12) = a2;
    v9 = *(a1 + 528);
    if (!v9)
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::getValueExpectedFlagDefault(v11);
    }

    (*(*v9 + 48))(v9, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

void mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v2 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  llvm::raw_ostream::write(v2, 61);
  __break(1u);
}

std::string *mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::copyValueFrom(std::string *a1, uint64_t a2)
{
  result = std::string::operator=(a1 + 5, (a2 - 416));
  a1[22].__r_.__value_.__s.__data_[16] = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1 - 536);
}

{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1 - 536);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v2 = llvm::raw_ostream::operator<<(this, *(a1 - 520), *(a1 - 512));
  llvm::raw_ostream::write(v2, 61);
  __break(1u);
}

std::string *non-virtual thunk tomlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a1 - 416), (a2 - 416));
  *(a1 + 8) = *(a2 + 8);
  return result;
}

llvm::cl::Option *llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(llvm::cl::Option *a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  *(v8 + 144) = &unk_286EA3E48;
  *v8 = &unk_286EA3DE0;
  *(v8 + 160) = v8;
  *(v8 + 168) = v8 + 184;
  *(v8 + 176) = 0x800000000;
  *(v8 + 152) = &unk_286EA3E68;
  *(v8 + 504) = &unk_286EA3F08;
  *(v8 + 528) = v8 + 504;
  llvm::cl::Option::setArgStr(v8, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>>(a3, a1);
  *(a1 + 2) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286EA3DE0;
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3EB8;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1 - 536);
}

{
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(a1 - 536);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~opt(uint64_t a1)
{
  *a1 = &unk_286EA3DE0;
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3EB8;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286EA3DE0;
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](a1 + 504);
  *(a1 + 152) = &unk_286EA3EB8;
  v2 = *(a1 + 168);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void *mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286EA3EB8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286EA3EB8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::parser<std::__fs::filesystem::path>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 40 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<std::__fs::filesystem::path>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 40 * a2;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void *llvm::cl::parser<std::__fs::filesystem::path>::~parser(void *a1)
{
  *a1 = &unk_286EA3EB8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<std::__fs::filesystem::path>::~parser(void *a1)
{
  *a1 = &unk_286EA3EB8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

const void **llvm::cl::sub::apply<llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>>(const void **result, uint64_t a2)
{
  if (*result)
  {
    return llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), *result, v8);
  }

  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = *v3;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        result = llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), v7, v8);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

void *std::function<void ()(std::__fs::filesystem::path const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_4__fs10filesystem4pathENS4_19GenericOptionParserIS8_EEEC1IJN4llvm2cl4descEEEERS4_NSD_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKS8_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA3F50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::__fs::filesystem::path const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::cl::parser<std::__fs::filesystem::path>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(a1 + 1) + 24);
  v14 = 1283;
  v8 = v7 == 0;
  if (v7)
  {
    a4 = a6;
  }

  if (!v8)
  {
    a3 = a5;
  }

  v13[0] = "Cannot find option named '";
  v13[2] = a3;
  v13[3] = a4;
  v15[0] = v13;
  v15[2] = "'!";
  v16 = 770;
  v11 = llvm::errs(a1);
  return llvm::cl::Option::error(a2, v15, 0, 0, v11);
}

void llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::setDefaultImpl<std::__fs::filesystem::path,void>(std::string *a1)
{
  memset(&__str, 0, sizeof(__str));
  std::string::operator=(a1 + 5, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

double mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::GraphOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 24 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 24 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_25D0A05E0;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v21 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 16), v13, &v21);
          v14 = v21;
          *v21 = *v13;
          v15 = *(v13 + 16);
          *(v13 + 16) = 0;
          *(v14 + 2) = v15;
          ++*(a1 + 8);
          v16 = *(v13 + 16);
          if (v16)
          {
            if (*(v16 + 2))
            {
              *(v16 + 2) = 0;
              v18 = *v16;
              v17 = *(v16 + 1);
              *v17 = *v16;
              *(v18 + 8) = v17;
              *v16 = 0;
              *(v16 + 1) = 0;
            }

            mlir::Operation::destroy(v16);
          }
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 24 * v19;
    do
    {
      *result = xmmword_25D0A05E0;
      result = (result + 24);
      v20 -= 24;
    }

    while (v20);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__0NSD_6CoreML15IsolatedGroupOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void **a1, uint64_t a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
  {
    v5 = *a1;
    {
      result = 1;
    }

    else
    {
      v7 = *v5;
      v47 = a2 + 64;
      v52[0] = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 16);
      v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(*v7, *(v7 + 4), v52, v6);
      v9 = *v7 + 24 * *(v7 + 4);
      if (v8)
      {
        v9 = v8;
      }

      if (v9 != **v5 + 24 * *(*v5 + 16))
      {
        v10 = v5[1];
        v12 = *(v10 + 24);
        v11 = (v10 + 24);
        v13 = *(((*(v9 + 16) + 16 * ((*(*(v9 + 16) + 44) >> 23) & 1) + ((*(*(v9 + 16) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v9 + 16) + 40) + 8);
        if (v13)
        {
          v14 = v13 - 8;
        }

        else
        {
          v14 = 0;
        }

        *v11 = v14;
        v11[1] = v14 + 32;
        v15 = *(v5[1] + 8);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v16 = *(a2 + 68);
          v17 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 4;
        }

        else
        {
          v16 = 0;
          v17 = 4;
        }

        v18 = *(a2 + 36);
        v19 = (a2 - 16) | 6;
        if (!v18)
        {
          v19 = 6;
        }

        *&v52[0] = v17;
        *(&v52[0] + 1) = v16;
        __p = v19;
        *&__len = v18;
        v20 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v15, v52, &__p);
        v52[0] = IV;
        v52[1] = unk_25D09EB5C;
        v52[2] = IV;
        v52[3] = unk_25D09EB5C;
        v53 = 0;
        memset(&v52[4], 0, 75);
        v22 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(a2, v21);
        v24 = v23;
        v25 = v5[2];
        v54.__r_.__value_.__r.__words[0] = 0;
        v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>,mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::LookupBucketFor<mlir::Operation *>(*v25, *(v25 + 16), v22, &v54);
        v27 = v54.__r_.__value_.__r.__words[0];
        if (v26)
        {
          v28 = *(v54.__r_.__value_.__r.__words[0] + 8);
          goto LABEL_24;
        }

        v31 = *(v25 + 16);
        __p = v54.__r_.__value_.__r.__words[0];
        v32 = *(v25 + 8);
        if (4 * v32 + 4 >= 3 * v31)
        {
          v31 *= 2;
        }

        else if (v31 + ~v32 - *(v25 + 12) > v31 >> 3)
        {
LABEL_21:
          *(v25 + 8) = v32 + 1;
          if (*v27 != -4096)
          {
            --*(v25 + 12);
          }

          v28 = 0;
          *v27 = v22;
          v27[1] = 0;
LABEL_24:
          v27[1] = v28 + 1;
          __src = v28;
          llvm_blake3_hasher_update(v52, &__src, 8uLL);
          for (; v22; v24 = v35)
          {
            v33 = (*v24)(v24, v22);
            llvm_blake3_hasher_update(v52, *(v33 + 16), *(v33 + 24));
            v22 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(v22, v34);
          }

          llvm_blake3_hasher_finalize_seek(v52, 0, &v54, 0x20uLL);
          __p = &v58;
          __len = xmmword_25D0A05B0;
          llvm::SmallVectorImpl<char>::resizeImpl<true>(&__p, 0x40uLL);
          v36 = 0;
          for (i = 0; i != 32; ++i)
          {
            v38 = v54.__r_.__value_.__s.__data_[i];
            *(__p + v36) = llvm::hexdigit(unsigned int,BOOL)::LUT[v38 >> 4] | 0x20;
            *(__p + v36 + 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v38 & 0xF] | 0x20;
            v36 += 2;
          }

          std::string::basic_string[abi:nn200100](&__dst, __p, __len);
          if (__p != &v58)
          {
            free(__p);
          }

          v39 = std::string::insert(&__dst, 0, "graph_");
          v40 = v39->__r_.__value_.__r.__words[2];
          *v49 = *&v39->__r_.__value_.__l.__data_;
          v50 = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v41 = v5[1];
          v42 = *(a2 + 24);
          v43 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(v41 + 8, *(**v42 + 32));
          __p = v42;
          *&__len = v43;
          *(&__len + 1) = &v59;
          v58 = 0x400000000;
          v60 = v62;
          v61 = 0x400000000;
          v62[4] = v63;
          v62[5] = 0x400000000;
          v63[8] = 4;
          v63[9] = v64;
          v63[10] = 0x100000000;
          v64[1] = v65;
          v64[2] = 0x100000000;
          if (v50 >= 0)
          {
            v44 = v49;
          }

          else
          {
            v44 = v49[0];
          }

          v65[2] = 0;
          v65[1] = 0;
          v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v65[4] = 0;
          if (v50 >= 0)
          {
            v45 = SHIBYTE(v50);
          }

          else
          {
            v45 = v49[1];
          }

          v65[6] = 0;
          mlir::ODIE::Compiler::CoreML::GraphOp::build((v41 + 8), &__p, v44, v45, v20, 0, 0, 0, 0, 0, 0, 0);
        }

        llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v25, v31);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>,mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::LookupBucketFor<mlir::Operation *>(*v25, *(v25 + 16), v22, &__p);
        v32 = *(v25 + 8);
        v27 = __p;
        goto LABEL_21;
      }

      v54.__r_.__value_.__r.__words[0] = "compiler not registered for delegate: ";
      v55 = 259;
      mlir::Operation::emitError(v52, a2, &v54);
      if (*&v52[0])
      {
        v29 = *(*(v47 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 16);
        v30 = *(*(v47 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 24);
        v59 = 261;
        __p = v29;
        *&__len = v30;
        mlir::Diagnostic::operator<<(v52 + 8, &__p);
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(v52);
      result = 0;
    }
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::ODIE::Compiler::Transforms::anonymous namespace::shouldSkipCompilation(uint64_t a1)
{
  v1 = *(a1 + 44);
  v2 = a1 + 64 + 16 * ((v1 >> 23) & 1);
  v3 = *(v2 + 8);
  if (*(v3 + 24) == 11)
  {
    v4 = *(v3 + 16);
    v5 = *v4;
    v6 = *(v4 + 3);
    v8 = v5 == 0x6572707265746E49 && v6 == 0x7265746572707265;
  }

  else
  {
    v8 = 0;
  }

  v9 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  v12 = *v9 != v9 && ((v10 = v9[1]) != 0 ? (v11 = v10 - 8) : (v11 = 0), *(v11 + 32) != v11 + 32) && *(*(*(v11 + 40) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id;
  return v8 || v12;
}

_BYTE *mlir::StringAttr::str@<X0>(_BYTE *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*this + 16);
  if (v2)
  {
    return std::string::basic_string[abi:nn200100](a2, v2, *(*this + 24));
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2 - 1;
  v7 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
  v8 = a1 + 24 * v7;
  if (!llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v8, *(v8 + 8)))
  {
    v9 = 1;
    while (*v8 != -1)
    {
      v10 = v9 + 1;
      v7 = (v7 + v9) & v6;
      v8 = a1 + 24 * v7;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v8, *(v8 + 8));
      v9 = v10;
      if (isEqual)
      {
        return v8;
      }
    }

    return 0;
  }

  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>,mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(uint64_t a1, int a2)
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
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>,mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = v19[1];
          *v31 = *v19;
          v21[1] = v22;
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
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 16;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t std::__find[abi:nn200100]<llvm::StringRef const*,llvm::StringRef const*,std::string,std::__identity>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    if (v5 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    do
    {
      if (*(v3 + 8) == v7 && (!v7 || !memcmp(*v3, v6, v7)))
      {
        break;
      }

      v3 += 16;
    }

    while (v3 != a2);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__1NSD_6CoreML6CallOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_(char ****a1, mlir::Operation *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
  {
    v3 = (*a1)[1];
    v4 = ***a1;
    v21 = a2;
    ResolvedCallee = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(&v21);
    if (ResolvedCallee)
    {
      if (v19)
      {
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        std::deque<mlir::SymbolOpInterface>::push_back(&v22, &v18);
        for (i = v18; i.n128_u64[0]; std::deque<mlir::SymbolOpInterface>::push_back(&v22, &i))
        {
          v7 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(i.n128_i64[0], v6);
          i.n128_u64[0] = v7;
          i.n128_u64[1] = v8;
          if (!v7 || v7 == *v3 || !*((*v8)(v8, v7) + 24))
          {
            break;
          }
        }

        do
        {
          if (!*(&v24 + 1))
          {
            v2 = 1;
            goto LABEL_21;
          }

          v9 = 32 * (v23 - *(&v22 + 1)) - 1;
          if (v23 == *(&v22 + 1))
          {
            v9 = 0;
          }

          v10 = v24 + *(&v24 + 1) - 1;
          v11 = *(*(&v22 + 1) + ((v10 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v10;
          v12 = *v11;
          v13 = *(v11 + 8);
          --*(&v24 + 1);
          if (v9 - v10 >= 0x200)
          {
            operator delete(*(v23 - 8));
            *&v23 = v23 - 8;
          }
        }

        while ((v14 & 1) != 0);
        v2 = 0;
LABEL_21:
        std::deque<mlir::SymbolOpInterface>::~deque[abi:nn200100](&v22);
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v18.n128_u64[0] = "callee was not yet resolved";
      v20 = 259;
      mlir::Operation::emitError(&v22, v21, &v18);
      v2 = v25 ^ 1u;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::anonymous namespace::DelegatedModuleUpdater::lookupCalleeInOriginalModule(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v10 = 0uLL;
  v15 = &v10;
  v16[0] = a2;
  v16[1] = &v11;
  if (v10)
  {
    *a1 = v10;
    *(a1 + 16) = 1;
  }

  else
  {
    v14 = 257;
    emitDiag(a3, 2, &v12, &v15);
    if (v15)
    {
      mlir::Diagnostic::operator<<<30ul>(v16, "could not resolve the callee ");
      if (v15)
      {
        v12 = 0;
        v13 = v11;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v17, &v12, 1);
        v7 = v17 + 24 * v18;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v18;
      }
    }

    *a1 = 0;
    *(a1 + 16) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  }

  v9 = *MEMORY[0x277D85DE8];
}

char *mlir::ODIE::Compiler::Transforms::anonymous namespace::anonymous namespace::DelegatedModuleUpdater::lookupOrClone(uint64_t a1, uint64_t a2, mlir::Operation *a3, uint64_t (**a4)(void, mlir::Operation *), int a5)
{
  v32[25] = *MEMORY[0x277D85DE8];
  v10 = (*a4)(a4, a3);
  v11 = mlir::SymbolTableCollection::lookupSymbolIn((a1 + 8), a2, v10);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    if (!a5)
    {
      v13 = mlir::Operation::cloneWithoutRegions(a3);
      v14 = (&v13[16 * ((*(v13 + 11) >> 23) & 1) + 71 + ((*(v13 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v13 + 10);
      operator new();
    }

    v12 = mlir::Operation::clone(a3, 3);
    SymbolTable = mlir::SymbolTableCollection::getSymbolTable((a1 + 8), a2);
    v16 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
    if (v16)
    {
      v17 = v16 - 8;
    }

    else
    {
      v17 = 0;
    }

    v18 = mlir::SymbolTable::insert(SymbolTable, v12, *(v17 + 40));
    if (v18 != (*a4)(a4, a3))
    {
      v25 = "symbol ";
      v26 = 259;
      mlir::Operation::emitError(&v27, a3, &v25);
      v21 = (*a4)(a4, a3);
      if (v27)
      {
        v31 = 0;
        v32[0] = v21;
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v31, 1);
        v23 = v29 + 24 * v30;
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++v30;
        if (v27)
        {
          mlir::Diagnostic::operator<<<16ul>(&v28, "already defined");
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v31, &v27);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
      mlir::Diagnostic::attachNote(v32, *(a2 + 24), 1);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::anonymous namespace::anonymous namespace::DelegatedModuleUpdater::lookupCalleeInOriginalModule(mlir::Location,mlir::SymbolRefAttr)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), v5))
  {
    return 2;
  }

  v6 = mlir::SymbolTableCollection::lookupSymbolIn(v4 + 8, a2, **(a1 + 16));
  if (v6)
  {
    v6 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = *a1;
  *v10 = v6;
  v10[1] = v8;
  return **a1 == 0;
}

__n128 std::deque<mlir::SymbolOpInterface>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<mlir::SymbolOpInterface>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

void *std::deque<mlir::SymbolOpInterface>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<mlir::SymbolOpInterface *>::emplace_back<mlir::SymbolOpInterface *&>(a1, &v10);
}

void *std::__split_buffer<mlir::SymbolOpInterface *>::emplace_back<mlir::SymbolOpInterface *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *std::__split_buffer<mlir::SymbolOpInterface *>::emplace_back<mlir::SymbolOpInterface *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<mlir::SymbolOpInterface *>::emplace_front<mlir::SymbolOpInterface *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

const void **std::__split_buffer<mlir::SymbolOpInterface *>::emplace_front<mlir::SymbolOpInterface *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::SymbolOpInterface *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::deque<mlir::SymbolOpInterface>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<mlir::SymbolOpInterface *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<mlir::SymbolOpInterface *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__2NSD_6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void *****a1, mlir::Operation *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    v4 = (*a1)[1];
    v5 = ***a1;
    v28 = a2;
    ResolvedCallee = mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(&v28);
    if (ResolvedCallee)
    {
      if (v27 == 1)
      {
        v7 = v26;
        v8 = v26 + 16;
        v9 = (((&v26[4 * ((v26[11] >> 23) & 1) + 17] + ((v26[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v26[10]);
        if (*v9 == v9)
        {
          InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v26);
          v14 = v16;
        }

        else
        {
          mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>(v9, &v22);
          if (llvm::hasSingleElement<llvm::iterator_range<mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>> &>(&v22))
          {
            v10 = v25(v23);
            Attr = mlir::Operation::getAttr(v10, "coreml.delegate_mapped_name", 0x1BuLL);
            if (Attr && (v13 = Attr, *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id))
            {
              v18 = mlir::SymbolTable::lookupSymbolIn(v5, Attr, v12);
              if (v18)
              {
                v19 = *(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? v18 : 0;
                if (v19)
                {
                  mlir::ODIE::Compiler::CoreML::InvokeOp::setCalleeFromCallable(&v28, v19);
                  if (*&v8[4 * ((v7[11] >> 23) & 1) + 2])
                  {
                    *(v19 + 16 * ((*(v19 + 44) >> 23) & 1) + 72) = *(**(***(v19 + 24) + 32) + 608);
                  }

                  v14 = 1;
                  goto LABEL_17;
                }
              }

              v29[0] = "missing symbol of name ";
              v30 = 259;
              mlir::Operation::emitError(&v31, v5, v29);
              if (v31)
              {
                mlir::Diagnostic::operator<<(v32, v13);
              }
            }

            else
            {
              v20 = "missing ";
              v21 = 259;
              mlir::Operation::emitOpError(v10, &v20, &v31);
              if (v31)
              {
                v30 = 261;
                v29[0] = "coreml.delegate_mapped_name";
                v29[1] = 27;
                mlir::Diagnostic::operator<<(v32, v29);
                if (v31)
                {
                  mlir::Diagnostic::operator<<<12ul>(v32, " attribute.");
                }
              }
            }
          }

          else
          {
            v29[0] = "expect graph to only contain one isolated group as a callee graph";
            v30 = 259;
            mlir::Operation::emitError(&v31, v7, v29);
          }

          v14 = v33 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      *&v22 = "callee was not yet resolved";
      v24 = 259;
      mlir::Operation::emitError(&v31, v28, &v22);
      v14 = v33 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    }

LABEL_17:
    result = v14 & 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::hasSingleElement<llvm::iterator_range<mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>> &>(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 10);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = *(a1 + 7);
  mlir::Region::OpIterator::operator++(&v4);
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v4);
  return v5 == v2;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 24 * a2;
    v3 = (a1 + 16);
    do
    {
      if (*(v3 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v4 = *v3;
        if (*v3)
        {
          if (*(v4 + 2))
          {
            *(v4 + 2) = 0;
            v6 = *v4;
            v5 = *(v4 + 1);
            *v5 = *v4;
            *(v6 + 8) = v5;
            *v4 = 0;
            *(v4 + 1) = 0;
          }

          mlir::Operation::destroy(v4);
        }
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }
}

void std::__assoc_state<llvm::LogicalResult>::set_value<llvm::LogicalResult>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:nn200100]();
    std::__throw_future_error[abi:nn200100]();
  }

  else
  {
    *(a1 + 140) = *a2;
    *(a1 + 136) |= 5u;
    std::condition_variable::notify_all((a1 + 88));
    std::mutex::unlock((a1 + 24));
  }
}

void std::__deferred_assoc_state<llvm::LogicalResult,std::__async_func<std::function<llvm::LogicalResult ()(void)>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_286EA3F98;
  v2 = (a1 + 24);
  std::__function::__value_func<llvm::LogicalResult ()(void)>::~__value_func[abi:nn200100](a1 + 144);
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_286EA3F98;
  v2 = (a1 + 24);
  std::__function::__value_func<llvm::LogicalResult ()(void)>::~__value_func[abi:nn200100](a1 + 144);
  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex(v2);
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__deferred_assoc_state<llvm::LogicalResult,std::__async_func<std::function<llvm::LogicalResult ()(void)>>>::__execute(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    v4 = (*(*v2 + 48))(v2);
    std::__assoc_state<llvm::LogicalResult>::set_value<llvm::LogicalResult>(a1, &v4);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(v3);
  }
}

void *std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286EA3FC8;
  v2 = a1[1];
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286EA3FC8;
  v1 = a1[1];
  if (v1 && !atomic_fetch_add(v1 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x25F891040);
}

uint64_t std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA3FC8;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

atomic_ullong *std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

void std::__function::__func<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<llvm::LogicalResult> llvm::ThreadPoolInterface::asyncImpl<llvm::LogicalResult>(std::function<llvm::LogicalResult ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286EA4010;
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286EA4010;
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891040);
}

std::string *std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EA4010;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,mlir::ModuleOp>::__tuple_impl((a2 + 32), (a1 + 32));
}

void std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::destroy(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__function::__func<std::__bind<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1} const&,std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&&>,llvm::LogicalResult ()(void)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete(a1);
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,mlir::ModuleOp>::__tuple_impl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](&this[1], a2 + 24);
  this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
  return this;
}

BOOL mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::generateCompilationTask(void)const::{lambda(std::string const&,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)> const&,mlir::ModuleOp)#1}::operator()(uint64_t a1, std::string *a2, uint64_t a3, void **a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    memset(__p, 0, 24);
    v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    size = a2->__r_.__value_.__l.__size_;
    if (v6 < 0)
    {
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    if (v6 < 0)
    {
      v6 = size;
    }

    std::string::append[abi:nn200100]<char const*,0>(__p, a2, (a2 + v6));
    std::__fs::filesystem::operator/[abi:nn200100](__p, a1, &v15);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v14.__val_ = 0;
    v14.__cat_ = std::system_category();
    std::__fs::filesystem::__create_directories(&v15, &v14);
    if (!v14.__val_)
    {
      mlir::ODIE::Compiler::Serialization::rewriteModuleWithFxn(a4);
    }

    v12 = "Failed to create directory: ";
    v13 = 259;
    mlir::Operation::emitError(__p, a4, &v12);
    if (__p[0].__r_.__value_.__r.__words[0])
    {
      mlir::Diagnostic::operator<<<std::__fs::filesystem::path const&,std::__fs::filesystem::path>(&__p[0].__r_.__value_.__l.__size_, &v15);
      if (__p[0].__r_.__value_.__r.__words[0])
      {
        mlir::Diagnostic::operator<<<7ul>(&__p[0].__r_.__value_.__l.__size_, "; ec: ");
      }
    }

    std::error_code::message(&v11, &v14);
    if (__p[0].__r_.__value_.__r.__words[0])
    {
      v17 = 260;
      v16 = &v11;
      mlir::Diagnostic::operator<<(&__p[0].__r_.__value_.__l.__size_, &v16);
    }

    v8 = (v19 & 1) == 0;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
    if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:nn200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:nn200100](a3, this);
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:nn200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

uint64_t mlir::Diagnostic::operator<<<std::__fs::filesystem::path const&,std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path *this)
{
  v5 = ", ";
  std::__fs::filesystem::path::begin(&v7, this);
  std::__fs::filesystem::path::end(&v6, this);
  llvm::interleave<std::__fs::filesystem::path::iterator,mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(std::__fs::filesystem::path const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(void)#1},void>(&v7, &v6, a1, a1, &v5);
  if (SHIBYTE(v6.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  return a1;
}

std::__fs::filesystem::path::iterator *llvm::interleave<std::__fs::filesystem::path::iterator,mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(std::__fs::filesystem::path const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(void)#1},void>(std::__fs::filesystem::path::iterator *result, uint64_t a2, int a3, uint64_t a4, _BYTE **a5)
{
  if (result->__path_ptr_ != *(a2 + 24) || result->__entry_.__data_ != *(a2 + 32))
  {
    v18 = v5;
    v19 = v6;
    v12 = result;
    while (1)
    {
      if (*(v12 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v12, *(v12 + 8));
      }

      else
      {
        __p = *v12;
      }

      mlir::Diagnostic::operator<<<std::__fs::filesystem::path const&,std::__fs::filesystem::path>(a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      result = std::__fs::filesystem::path::iterator::__increment(v12);
      if (*(v12 + 24) == *(a2 + 24) && *(v12 + 32) == *(a2 + 32))
      {
        break;
      }

      v13 = *a5;
      v14 = 1;
      v17 = 1;
      if (*v13)
      {
        __p.__r_.__value_.__r.__words[0] = v13;
        v14 = 3;
      }

      v16 = v14;
      mlir::Diagnostic::operator<<(a4, &__p);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<llvm::LogicalResult ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>,llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 40 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 40 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 24 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 24 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates14runOnOperationEvE3__0NSD_6CoreML15IsolatedGroupOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  v70[8] = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
  {
    v5 = *a1;
    {
LABEL_4:
      result = 1;
      goto LABEL_42;
    }

    v8 = *v5;
    v9 = *(*v5 + 16);
    v59 = a2 + 64;
    if (v9)
    {
      v10 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *v8;
      v14 = (v9 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(v11, v11 + v12, v6, v7);
      v15 = v13 + 40 * v14;
      if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v11, v12, *v15, *(v15 + 8)))
      {
        goto LABEL_12;
      }

      v16 = 1;
      while (*v15 != -1)
      {
        v57 = v16 + 1;
        v14 = (v14 + v16) & (v9 - 1);
        v15 = v13 + 40 * v14;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v11, v12, *v15, *(v15 + 8));
        v16 = v57;
        if (isEqual)
        {
          goto LABEL_12;
        }
      }
    }

    v15 = 0;
LABEL_12:
    v18 = *(v8 + 16);
    v19 = *v8 + 40 * v18;
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = *v8 + 40 * v18;
    }

    Attr = mlir::Operation::getAttr(a2, "coreml.delegate_mapped_name", 0x1BuLL);
    v24 = *(v20 + 32);
    if (v24)
    {
      v25 = *(Attr + 16);
      v26 = *(Attr + 24);
      v27 = *(v20 + 16);
      v28 = v24 - 1;
      v29 = (v24 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(v25, v25 + v26, v22, v23);
      v30 = v27 + 24 * v29;
      if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v25, v26, *v30, *(v30 + 8)))
      {
LABEL_17:
        if (v30 != *(v20 + 16) + 24 * *(v20 + 32))
        {
          v32 = *(((*(v30 + 16) + 16 * ((*(*(v30 + 16) + 44) >> 23) & 1) + ((*(*(v30 + 16) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v30 + 16) + 40) + 8);
          v33 = v32 == 0;
          v34 = (v32 - 8);
          if (v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = v34;
          }

          v31 = v59 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
          mlir::RewriterBase::moveBlockBefore(v5[1], v35, ((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), (((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
          v36 = *(((v59 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
          if (v36)
          {
            v37 = v36 - 8;
          }

          else
          {
            v37 = 0;
          }

          v38 = *(v37 + 32);
          v39 = v5[1];
          *(v39 + 24) = v38[2];
          *(v39 + 32) = v38;
          v40 = v5[1];
          v41 = v38[3];
          if ((*(v38 + 46) & 0x80) != 0)
          {
            v42 = *(v38 + 17);
            v43 = v38[9] & 0xFFFFFFFFFFFFFFF9 | 2;
          }

          else
          {
            v42 = 0;
            v43 = 2;
          }

          v44 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(v40 + 8, *(**v41 + 32));
          v62[0] = v41;
          v62[1] = v44;
          v63[0] = &v64;
          v63[1] = 0x400000000;
          v65 = v67;
          v66 = 0x400000000;
          v67[4] = v68;
          v67[5] = 0x400000000;
          v68[8] = 4;
          v68[9] = v69;
          v68[10] = 0x100000000;
          v69[1] = v70;
          v69[2] = 0x100000000;
          v70[2] = 0;
          v70[1] = 0;
          v70[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v70[4] = 0;
          v70[6] = 0;
          llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v63, v43, 0, v43, v42);
          v45 = mlir::Operation::create(v62);
          mlir::OpBuilder::insert((v40 + 8), v45);
          mlir::OperationState::~OperationState(v62);
          if (v38[2])
          {
            v38[2] = 0;
            v47 = *v38;
            v46 = v38[1];
            *v46 = *v38;
            *(v47 + 8) = v46;
            *v38 = 0;
            v38[1] = 0;
          }

          mlir::Operation::destroy(v38);
          mlir::Operation::removeAttr(a2, "coreml.delegate_mapped_name", 0x1B);
          v48 = *(((v59 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
          v49 = v48 - 8;
          if (!v48)
          {
            v49 = 0;
          }

          v50 = *(v49 + 40);
          v51 = (v49 + 32);
          if (v50 == v51)
          {
            goto LABEL_4;
          }

          v52 = *v51;
          if (v50 == v52)
          {
            goto LABEL_4;
          }

          while (*(v50[6] + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id)
          {
            v50 = v50[1];
            if (v50 == v52)
            {
              goto LABEL_4;
            }
          }

          v62[0] = "Expected ops to be replaced with a compiled binary.";
          v64 = 259;
          mlir::Operation::emitOpError(a2, v62, v60);
          v53 = v60;
LABEL_41:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v53);
          result = 0;
          goto LABEL_42;
        }
      }

      else
      {
        v54 = 1;
        while (*v30 != -1)
        {
          v58 = v54 + 1;
          v29 = (v29 + v54) & v28;
          v30 = v27 + 24 * v29;
          v55 = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v25, v26, *v30, *(v30 + 8));
          v54 = v58;
          if (v55)
          {
            goto LABEL_17;
          }
        }
      }
    }

    v62[0] = "Failed to find corresponding compiled Graph";
    v64 = 259;
    mlir::Operation::emitOpError(a2, v62, v61);
    v53 = v61;
    goto LABEL_41;
  }

LABEL_42:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::cl::opt<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,false,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::operator=<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 120;
  if (a1 + 120 != a2)
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::__assign_multi<std::__tree_const_iterator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::__tree_node<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,void *> *,long>>((a1 + 120), *a2, (a2 + 8));
  }

  v5 = *(a1 + 528);
  if (v5)
  {
    (*(*v5 + 48))(v5, a2);
    return v4;
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::operator=<std::__fs::filesystem::path>(v7, v8);
  }
}

uint64_t llvm::cl::opt<std::__fs::filesystem::path,false,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::operator=<std::__fs::filesystem::path>(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 5, a2);
  data = a1[22].__r_.__value_.__l.__data_;
  if (data)
  {
    (*(*data + 48))(data, a2);
    return &a1[5];
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    return mlir::ODIE::Compiler::Transforms::impl::createConstantPropagation(v6);
  }
}

uint64_t mlir::ODIE::Compiler::Transforms::ConstantPropagationPass::runOnOperation(mlir::ODIE::Compiler::Transforms::ConstantPropagationPass *this)
{
  v108 = *MEMORY[0x277D85DE8];
  v82 = this;
  v1 = *(this + 5);
  v91[0] = 0;
  v91[1] = 0;
  v92 = 0;
  v89[0] = 0;
  v89[1] = 0;
  v90 = 0;
  v2 = v98;
  v96 = v98;
  v97 = 0x600000000;
  v99 = &v96;
  v100 = v89;
  v101[0] = v91;
  mlir::detail::walk<mlir::ForwardIterator>(v1 & 0xFFFFFFFFFFFFFFF8, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::ConstantPropagationPass::runOnOperation(void)::$_0>, &v99, 1);
  v87[0] = 0;
  v87[1] = 0;
  v88 = 0;
  *&v104 = v87;
  v99 = &v104;
  mlir::detail::walk<mlir::ForwardIterator>(v1 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms23ConstantPropagationPass14runOnOperationEvE3__1NSC_6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v99, 1);
  v84 = 0;
  v83 = 0u;
  v85 = v87;
  v86 = 0;
  if (!v97)
  {
    goto LABEL_92;
  }

  v80 = v87;
  v81 = v98;
  v3 = v96;
  v4 = (v96 + 8 * v97);
  do
  {
    v5 = *v3;
    v99 = v101;
    v100 = 0x300000000;
    v6 = *(v5 + 36);
    v7 = v5 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    v104 = v7;
    *&v105 = v7;
    *(&v105 + 1) = v6;
    v106 = 0;
    if (v6)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v104);
    }

    v94[0] = v104;
    v94[1] = v105;
    v8 = v106;
    for (i = v106; i; v8 = i)
    {
      v11 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v8 + 16));
      if (v11)
      {
        v13 = (*(v12 + 32))(v12, v11, v91);
        if (v13)
        {
          if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
          {
            v14 = *(v8 + 16);
            v9 = (*(v14 + 46) & 0x80) != 0 ? *(v14 + 72) : 0;
            {
              v15 = *(v8 + 16);
              if ((*(v15 + 46) & 0x80) != 0)
              {
                v10 = *(v15 + 72);
              }

              else
              {
                v10 = 0;
              }

              v1 = v1 & 0xFFFFFFFF00000000 | ((v8 - v10) >> 5);
              llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(&v99, v15, v1);
            }
          }
        }
      }

      mlir::ResultRange::UseIterator::operator++(v94);
    }

    while (v100)
    {
      v16 = v99 + 16 * v100;
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      LODWORD(v100) = v100 - 1;
      *&v94[0] = v17;
      DWORD2(v94[0]) = v18;
      v19 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(v17);
      if (v19)
      {
        v21 = v19;
        v22 = (*(v20 + 32))(v20, v19, v91);
        if (v22)
        {
          v23 = *(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? v22 : 0;
          if (v23)
          {
            *&v104 = v23;
            v24 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v87, &v104);
            if (!v24 || v24 == v87[0] + 8 * v88)
            {
              v25 = *(*(v21 + 72) + 32 * v18 + 24);
              if ((~*(v25 + 8) & 7) == 0)
              {
                v25 = 0;
              }

              if (v25)
              {
                v26 = *(v25 + 8) & 7;
                if (v26 == 6)
                {
                  v27 = (v25 + 24 * *(v25 + 16) + 120);
                }

                else
                {
                  v27 = (v25 + 16 * v26 + 16);
                }
              }

              else
              {
                v27 = 0;
              }

              {
                *&v104 = v23;
                v28 = llvm::MapVector<mlir::Operation *,llvm::SmallVector<int,12u>,llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,0u>>::operator[](&v83, &v104);
                llvm::SmallVectorTemplateBase<int,true>::push_back(v28, v18);
                v29 = llvm::MapVector<mlir::Operation *,llvm::SmallVector<int,12u>,llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,0u>>::operator[](&v83, v94);
                llvm::SmallVectorTemplateBase<int,true>::push_back(v29, v18);
                v30 = ((v23 + 16 * ((*(v23 + 44) >> 23) & 1) + ((*(v23 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v23 + 40);
                v31 = *(v30 + 8);
                v32 = v31 ? v31 - 8 : 0;
                v33 = *(*(v32 + 48) + 8 * v18);
                v104 = *(***(v23 + 24) + 32);
                v34 = *(v30 + 8);
                v35 = v34 ? v34 - 8 : 0;
                v36 = *(v35 + 40);
                *&v105 = v35;
                *(&v105 + 1) = v36;
                v37 = mlir::OpBuilder::clone(&v104, v27);
                v38 = v37;
                v39 = v37[9] ? (v37 - 4) : 0;
                *&v107 = v39;
                mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v33, &v107);
                for (j = *(v38 - 2); j; j = *j)
                {
                  v41 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(j[2]);
                  if (v41)
                  {
                    v42 = j[2];
                    if ((*(v42 + 46) & 0x80) != 0)
                    {
                      v43 = *(v42 + 72);
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v33 = v33 & 0xFFFFFFFF00000000 | ((j - v43) >> 5);
                    llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(&v99, v41, v33);
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v99 != v101)
    {
      free(v99);
    }

    ++v3;
  }

  while (v3 != v4);
  v44 = v85;
  if (!v86)
  {
    v2 = v81;
    goto LABEL_90;
  }

  v45 = (v85 + 72 * v86);
  do
  {
    v46 = *v44;
    if (*v44)
    {
      v47 = *(*(*v44 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
      v56 = v46 + 64;
      v57 = *(*(*(v46 + 64 + 16 * ((*(v46 + 44) >> 23) & 1) + 16) + 8) + 8);
      v99 = v101;
      v100 = 0x600000000;
      llvm::SmallVectorImpl<unsigned long>::assign(&v99, (v57 + 63) >> 6, 0);
      v103 = v57;
      v58 = *(v44 + 4);
      if (v58)
      {
        v59 = v44[1];
        v60 = v99;
        v61 = 4 * v58;
        do
        {
          v62 = *v59++;
          *&v60[(v62 >> 3) & 0x1FFFFFF8] |= 1 << v62;
          v61 -= 4;
        }

        while (v61);
      }

      *&v104 = &v105;
      *(&v104 + 1) = 0x600000000;
      v63 = *(*(v56 + 16 * ((*(v46 + 44) >> 23) & 1) + 16) + 8);
      v64 = mlir::filterTypesOut(*(v63 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v63 + 8), &v99, &v104);
      v65 = *(*(v56 + 16 * ((*(v46 + 44) >> 23) & 1) + 16) + 8);
      v66 = *(v65 + 12);
      v67 = (*(v65 + 16) + 8 * *(v65 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2;
      v68 = *(**v65 + 32);
      *&v94[0] = v64;
      *(&v94[0] + 1) = v69;
      *&v107 = v67;
      *(&v107 + 1) = v66;
      v70 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v68, v94, &v107);
      if (v104 != &v105)
      {
        free(v104);
      }

      InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v46);
      mlir::function_interface_impl::eraseFunctionArguments(v46, InterfaceFor, &v99, v70);
    }

    else
    {
      v48 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(*v44);
      if (!v48)
      {
        v72 = *v44;
        v99 = "invalid operation to remove operands from";
        v102 = 259;
        mlir::Operation::emitError(v93, v72, &v99);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v93);
        *(v82 + 5) |= 4uLL;
        goto LABEL_80;
      }

      v49 = v48;
      if ((*(v48 + 46) & 0x80) != 0)
      {
        v50 = *(v48 + 68);
      }

      else
      {
        v50 = 0;
      }

      v99 = v101;
      v100 = 0x600000000;
      llvm::SmallVectorImpl<unsigned long>::assign(&v99, (v50 + 63) >> 6, 0);
      v103 = v50;
      v51 = *(v44 + 4);
      if (v51)
      {
        v52 = v44[1];
        v53 = v99;
        v54 = 4 * v51;
        do
        {
          v55 = *v52++;
          *&v53[(v55 >> 3) & 0x1FFFFFF8] |= 1 << v55;
          v54 -= 4;
        }

        while (v54);
      }

      mlir::detail::OperandStorage::eraseOperands((v49 + 64), &v99);
    }

    if (v99 != v101)
    {
      free(v99);
    }

LABEL_80:
    v44 += 9;
  }

  while (v44 != v45);
  v44 = v85;
  v2 = v81;
  if (v86)
  {
    v73 = (v85 + 72 * v86 - 64);
    v74 = -72 * v86;
    do
    {
      if (v73 + 2 != *v73)
      {
        free(*v73);
      }

      v73 -= 9;
      v74 += 72;
    }

    while (v74);
    v44 = v85;
  }

LABEL_90:
  if (v44 != v80)
  {
    free(v44);
  }

LABEL_92:
  MEMORY[0x25F891030](v83, 8);
  MEMORY[0x25F891030](v87[0], 8);
  if (v96 != v2)
  {
    free(v96);
  }

  v75 = v89[0];
  if (v90)
  {
    v76 = (v89[0] + 8);
    v77 = 32 * v90;
    do
    {
      if ((*(v76 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::destroyAll(v76);
        MEMORY[0x25F891030](*v76, 8);
      }

      v76 += 4;
      v77 -= 32;
    }

    while (v77);
    v75 = v89[0];
  }

  MEMORY[0x25F891030](v75, 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v91);
  result = MEMORY[0x25F891030](v91[0], 8);
  v79 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::shouldPropagate(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v31[0] = 0;
  v31[1] = 0;
  v30[0] = v31;
  result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v30, a3);
  if (!result)
  {
    return result;
  }

  v8 = *(a4 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
  v10 = v8 - 1;
  v11 = ((v9 >> 4) ^ (v9 >> 9)) & v10;
  v12 = *(*a4 + 32 * v11);
  if (v12 != v9)
  {
    v25 = 1;
    while (v12 != -4096)
    {
      v26 = v11 + v25++;
      v11 = v26 & v10;
      v12 = *(*a4 + 32 * (v26 & v10));
      if (v12 == v9)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  v30[0] = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
  v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::operator[](a4, v30);
  v14 = *(v13 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = v14 - 1;
  v16 = v15 & (37 * a2);
  v17 = *(*v13 + 72 * v16);
  if (v17 != a2)
  {
    v27 = 1;
    while (v17 != 0x7FFFFFFF)
    {
      v28 = v16 + v27++;
      v16 = v28 & v15;
      v17 = *(*v13 + 72 * v16);
      if (v17 == a2)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v30[0] = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 56);
  v18 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::operator[](a4, v30);
  v19 = llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::operator[](v18, &v32);
  v20 = *(v19 + 8);
  if (!v20)
  {
    return 0;
  }

  v21 = *v19;
  v22 = 8 * v20;
  while (1)
  {
    v23 = *v21;
    v24 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    result = (*(**(v23 + 48) + 32))(*(v23 + 48), v24);
    if (!result)
    {
      break;
    }

    v30[0] = 0;
    v30[1] = 0;
    v29 = v30;
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v29, v23);
    if (!result)
    {
      break;
    }

    if (v30[0] != v31[0])
    {
      return 0;
    }

    ++v21;
    v22 -= 8;
    if (!v22)
    {
      return 1;
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t llvm::MapVector<mlir::Operation *,llvm::SmallVector<int,12u>,llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,0u>>::operator[](uint64_t a1, void *a2)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = 0;
  v19 = 0;
  v4 = &v19;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a1, &v14, &v19))
  {
    v5 = *(v19 + 2);
  }

  else
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(a1, &v14, v19);
    *v6 = v14;
    *(v6 + 2) = v15;
    v7 = *(a1 + 24);
    v16 = v18;
    v17 = 0xC00000000;
    v19 = *a2;
    v20 = v22;
    v21 = 0xC00000000;
    v8 = *(a1 + 32);
    if (v8 >= *(a1 + 36))
    {
      if (v7 <= &v19 && v7 + 72 * v8 > &v19)
      {
        v13 = &v19 - v7;
        llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,false>::grow(a1 + 24, v8 + 1);
        v7 = *(a1 + 24);
        v4 = &v13[v7];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,false>::grow(a1 + 24, v8 + 1);
        v7 = *(a1 + 24);
        v4 = &v19;
      }
    }

    v9 = (v7 + 72 * *(a1 + 32));
    *v9 = *v4;
    v9[2] = 0xC00000000;
    v9[1] = v9 + 3;
    v10 = (v9 + 1);
    if (*(v4 + 4))
    {
      llvm::SmallVectorImpl<int>::operator=(v10, (v4 + 8));
    }

    ++*(a1 + 32);
    if (v20 != v22)
    {
      free(v20);
    }

    if (v16 != v18)
    {
      free(v16);
    }

    v5 = *(a1 + 32) - 1;
    *(v6 + 2) = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return *(a1 + 24) + 72 * v5 + 8;
}

void mlir::ODIE::Compiler::Transforms::ConstantPropagationPass::~ConstantPropagationPass(mlir::ODIE::Compiler::Transforms::ConstantPropagationPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::LookupBucketFor<mlir::StringAttr>(*a1, *(a1 + 16), *a2, &v10);
  v5 = v10;
  if (v4)
  {
    return v5 + 8;
  }

  v11 = v10;
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
    llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::LookupBucketFor<mlir::StringAttr>(*a1, *(a1 + 16), *a2, &v11);
    v6 = *(a1 + 8);
    v5 = v11;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  v8 = *a2;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = v8;
  *(v5 + 24) = 0;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::operator[](uint64_t a1, int *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<int>(*a1, *(a1 + 16), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 8;
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
    llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<int>(*a1, *(a1 + 16), *a2, &v10);
    v6 = *(a1 + 8);
    v5 = v10;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != 0x7FFFFFFF)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x600000000;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::LookupBucketFor<mlir::StringAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

char *llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 32 * v3;
      v19 = (v4 + 16);
      do
      {
        v20 = *(v19 - 2);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::LookupBucketFor<mlir::StringAttr>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = *(v19 - 2);
          *(v31 + 24) = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = v22;
          *(v21 + 8) = *(v19 - 1);
          *(v19 - 1) = 0;
          *(v21 + 16) = *v19;
          *v19 = 0;
          LODWORD(v22) = *(v21 + 20);
          *(v21 + 20) = v19[1];
          v19[1] = v22;
          LODWORD(v22) = *(v21 + 24);
          *(v21 + 24) = v19[2];
          v19[2] = v22;
          ++*(a1 + 8);
          llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::destroyAll((v19 - 2));
          MEMORY[0x25F891030](*(v19 - 1), 8);
        }

        v19 += 8;
        v18 -= 32;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0x7FFFFFFFFFFFFFFLL;
    v26 = v25 & 0x7FFFFFFFFFFFFFFLL;
    v27 = (v25 & 0x7FFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 4) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 8;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 72 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) - 0x7FFFFFFF) >= 2)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 72;
      v2 -= 72;
    }

    while (v2);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 72 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != 0x7FFFFFFF)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == 0x80000000;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 72 * (v13 & v4));
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

char *llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      v14 = result + 144;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A0500)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 36) = 0x7FFFFFFF;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 18) = 0x7FFFFFFF;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A04F0)))).i32[1])
        {
          *v14 = 0x7FFFFFFF;
          v14[18] = 0x7FFFFFFF;
        }

        v11 += 4;
        v14 += 72;
      }

      while (((v12 / 0x48 + 4) & 0x7FFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 72 * v3;
      v18 = (v4 + 24);
      do
      {
        v19 = *(v18 - 6);
        if ((v19 - 0x7FFFFFFF) >= 2)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<int>(*a1, *(a1 + 16), v19, &v30);
          v20 = v30;
          *v30 = *(v18 - 6);
          *(v20 + 2) = 0x600000000;
          *(v20 + 1) = v20 + 6;
          v21 = (v20 + 2);
          if (*(v18 - 2))
          {
            llvm::SmallVectorImpl<mlir::Operation *>::operator=(v21, (v18 - 4));
          }

          ++*(a1 + 8);
          v22 = *(v18 - 2);
          if (v18 != v22)
          {
            free(v22);
          }
        }

        v18 += 18;
        v17 -= 72;
      }

      while (v17);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = 72 * v23 - 72;
    v26 = vdupq_n_s64(v25 / 0x48);
    v27 = result + 144;
    do
    {
      v28 = vdupq_n_s64(v24);
      v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_25D0A0500)));
      if (vuzp1_s16(v29, *v26.i8).u8[0])
      {
        *(v27 - 36) = 0x7FFFFFFF;
      }

      if (vuzp1_s16(v29, *&v26).i8[2])
      {
        *(v27 - 18) = 0x7FFFFFFF;
      }

      if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_25D0A04F0)))).i32[1])
      {
        *v27 = 0x7FFFFFFF;
        v27[18] = 0x7FFFFFFF;
      }

      v24 += 4;
      v27 += 72;
    }

    while (((v25 / 0x48 + 4) & 0x7FFFFFFFFFFFFFCLL) != v24);
  }

  return result;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::ConstantPropagationPass>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::ConstantPropagationPass::runOnOperation(void)::$_0>(uint64_t *a1, uint64_t a2)
{
  v48[6] = *MEMORY[0x277D85DE8];
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v5))
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(*a1, a2);
    v8 = a1 + 1;
    v7 = a1[1];
    v6 = v8[1];
    v45 = 0;
    v46 = v48;
    v47 = 0x300000000;
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v43 = v10;
    *&v44 = v10;
    *(&v44 + 1) = v9;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v43);
    }

    v41[0] = v43;
    v41[1] = v44;
    v11 = v45;
    for (i = v45; i; v11 = i)
    {
      v12 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
      if (v12 && *(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
      {
        v14 = (*(v13 + 32))(v13, v12, v6);
        v15 = *(v11 + 16);
        if ((*(v15 + 46) & 0x80) != 0)
        {
          v16 = *(v15 + 72);
        }

        else
        {
          v16 = 0;
        }

        v2 = v2 & 0xFFFFFFFF00000000 | ((v11 - v16) >> 5);
        llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(&v46, v14, v2);
      }

      mlir::ResultRange::UseIterator::operator++(v41);
    }

    v39[0] = 0;
    v39[1] = 0;
    v40 = 0;
    v17 = v47;
    if (v47)
    {
      do
      {
        v18 = v46 + 16 * v17;
        v20 = *(v18 - 2);
        v19 = *(v18 - 1);
        LODWORD(v47) = v17 - 1;
        v37 = v20;
        v38 = v19;
        if (v20)
        {
          v21 = *(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v39, &v37, v41);
          *&v41[0] = *(v20 + 64 + 16 * ((*(v20 + 44) >> 23) & 1) + 56);
          v22 = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>,mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>>>::operator[](v7, v41);
          v23 = llvm::DenseMapBase<llvm::DenseMap<int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>,int,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<int,void>,llvm::detail::DenseMapPair<int,llvm::SmallVector<mlir::Operation *,6u>>>::operator[](v22, &v38);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v23, a2);
          v24 = *(((v20 + 64 + 16 * ((*(v20 + 44) >> 23) & 1) + ((*(v20 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v20 + 40) + 8);
          v25 = v24 ? v24 - 8 : 0;
          for (j = **(*(v25 + 48) + 8 * v38); j; j = *j)
          {
            v28 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(j[2]);
            if (v28)
            {
              v30 = v28;
              v31 = v29;
              *&v41[0] = (*(v29 + 32))(v29, v28, v6);
              v32 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v39, v41);
              if ((!v32 || v32 == v39[0] + 8 * v40) && *(*(v30 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
              {
                v33 = (*(v31 + 32))(v31, v30, v6);
                v34 = j[2];
                if ((*(v34 + 46) & 0x80) != 0)
                {
                  v27 = *(v34 + 72);
                }

                else
                {
                  v27 = 0;
                }

                v2 = v2 & 0xFFFFFFFF00000000 | ((j - v27) >> 5);
                llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,int>,true>::push_back(&v46, v33, v2);
              }
            }
          }
        }

        v17 = v47;
      }

      while (v47);
      v35 = v39[0];
    }

    else
    {
      v35 = 0;
    }

    MEMORY[0x25F891030](v35, 8);
    if (v46 != v48)
    {
      free(v46);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms23ConstantPropagationPass14runOnOperationEvE3__1NSC_6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, mlir::SymbolTable *this)
{
  if (this)
  {
    if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      v3 = *a1;
      mlir::SymbolTable::getSymbolUses(this, &v8);
      if (v10 == 1)
      {
        v4 = v8;
        v5 = v9;
        if (v8 == v9)
        {
          goto LABEL_10;
        }

        do
        {
          if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(*v4))
          {
            v6 = *v3;
            v7 = this;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v6, &v7, v11);
          }

          v4 += 2;
        }

        while (v4 != v5);
        if (v10)
        {
          v4 = v8;
LABEL_10:
          if (v4)
          {
            v9 = v4;
            operator delete(v4);
          }
        }
      }
    }
  }
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,llvm::SmallVector<int,12u>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 72, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[72 * v6];
    v8 = v4 + 24;
    v9 = (v5 + 8);
    do
    {
      v10 = v9 - 8;
      *(v8 - 3) = *(v9 - 8);
      *(v8 - 2) = v8;
      *(v8 - 1) = 0xC00000000;
      if (*(v9 + 8))
      {
        llvm::SmallVectorImpl<int>::operator=((v8 - 16), v9);
      }

      v8 += 72;
      v9 += 72;
    }

    while ((v10 + 72) != v7);
    v11 = *(a1 + 8);
    v5 = *a1;
    if (v11)
    {
      v12 = &v5[72 * v11 - 64];
      v13 = -72 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 9;
        v13 += 72;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::DecomposeComplex>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::DecomposeComplex::~DecomposeComplex(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DecomposeComplex *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::DecomposeComplex::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DecomposeComplex *this)
{
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v5[0] = *(***(v2 + 24) + 32);
  memset(&v5[1], 0, 24);
  v4 = v5;
  v6 = &v4;
  result = mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_116DecomposeComplex14runOnOperationEvE3__0NSD_6CoreML31ComplexDecompositionOpInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v6, 1);
  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_116DecomposeComplex14runOnOperationEvE3__0NSD_6CoreML31ComplexDecompositionOpInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void *a1, uint64_t a2)
{
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,mlir::ODIE::Compiler::CoreML::detail::ComplexDecompositionOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,mlir::ODIE::Compiler::CoreML::detail::ComplexDecompositionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v6 = *a1;
  if (mlir::ODIE::Compiler::isOperationDelegated(a2, v4))
  {
    return 1;
  }

  v8 = *v6;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = a2;
  return (*InterfaceFor)(InterfaceFor, a2, *v6) & 1;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,mlir::ODIE::Compiler::CoreML::detail::ComplexDecompositionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::DeduplicateConstantsAttrsPass>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::DeduplicateConstantsAttrsPass::~DeduplicateConstantsAttrsPass(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DeduplicateConstantsAttrsPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::DisallowInterpretedOpsPass::~DisallowInterpretedOpsPass(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DisallowInterpretedOpsPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::DisallowInterpretedOpsPass::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::DisallowInterpretedOpsPass *this)
{
  v1 = *(this + 5);
  v3 = this;
  v4 = &v3;
  return mlir::detail::walk<mlir::ForwardIterator>(v1 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_126DisallowInterpretedOpsPass14runOnOperationEvE3__0NSC_6CoreML15IsolatedGroupOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v4, 1);
}

BOOL mlir::OperationPass<mlir::ODIE::Compiler::CoreML::GraphOp>::canScheduleOn(uint64_t a1, uint64_t a2)
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

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_126DisallowInterpretedOpsPass14runOnOperationEvE3__0NSC_6CoreML15IsolatedGroupOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, mlir::Operation *this)
{
  v11[25] = *MEMORY[0x277D85DE8];
  if (this)
  {
    if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
    {
      v2 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
      if (*(v2 + 24) == 11)
      {
        v3 = *(v2 + 16);
        v4 = *v3;
        v5 = *(v3 + 3);
        if (v4 == 0x6572707265746E49 && v5 == 0x7265746572707265)
        {
          v7 = **a1;
          v9[16] = 257;
          mlir::Operation::emitError(&v10, this, v9);
          if (v10)
          {
            mlir::Diagnostic::operator<<<63ul>(v11, "Detected an isolated group to run on interpreter using kernels");
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
          *(v7 + 40) |= 4uLL;
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::ElideLogicalCopies>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::ElideLogicalCopies::~ElideLogicalCopies(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::ElideLogicalCopies *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::ElideLogicalCopiesBase<mlir::ODIE::Compiler::Transforms::anonymous namespace::ElideLogicalCopies>::getDependentDialects(uint64_t a1, uint64_t a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect>(a2);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::ElideLogicalCopies::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::ElideLogicalCopies *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  *__src = 0u;
  *v3 = 0u;
  v4 = v6;
  v5 = 0x600000000;
  v6[6] = 0;
  v6[7] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 40;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 40;
  operator new();
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::~FuseCopyIntoConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
LABEL_12:
      *&v38 = "source op is not a valid ConstantOp";
      v40 = 259;
      v41 = &v38;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v37 = v10;
  if (!v9)
  {
    goto LABEL_12;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (v15)
  {
    *&v38 = (*(v16 + 8))(v16, v15);
    if (mlir::Type::getIntOrFloatBitWidth(&v38) <= 7)
    {
      *&v38 = "cannot optimize subbyte copies";
      v40 = 259;
      v41 = &v38;
LABEL_13:
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(a2 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_16:
      (*(*v11 + 88))(v11, v12, v13, &v41);
      return 0;
    }
  }

  ValueAttr = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v37);
  if (!ValueAttr || (v18 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::ElementsAttr,mlir::TypedAttr const,void>>::doCastIfPossible(ValueAttr)) == 0)
  {
    v26 = "source op does not have a valid constant";
    goto LABEL_33;
  }

  v19 = v18;
  v20 = *(*v18 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    if (*(a2 + 36))
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    *&v38 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    v23 = mlir::TensorType::operator mlir::ShapedType(&v38);
    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v23, v24, v19[4], v19[5]);
  }

  else
  {
    if (v20 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      v26 = "failed to extract ElementsAttr from constant";
LABEL_33:
      *&v38 = v26;
      v40 = 259;
      v41 = &v38;
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(v37 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
      goto LABEL_16;
    }

    if (*(a2 + 36))
    {
      v27 = a2 - 16;
    }

    else
    {
      v27 = 0;
    }

    v41 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    v28 = mlir::TensorType::operator mlir::ShapedType(&v41);
    v38 = *(v19 + 3);
    v39 = v19[5];
    Raw = mlir::DenseResourceElementsAttr::get(v28, v29, &v38);
  }

  v30 = Raw;
  if (Raw)
  {
    v31 = *Raw;
    v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
  }

  if (v30)
  {
    v33 = *v30;
    v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v35 = mlir::detail::InterfaceMap::lookup(v33 + 8, v34);
  }

  else
  {
    v35 = 0;
  }

  *&v38 = v30;
  *(&v38 + 1) = v35;
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>((a3 + 1), *(a2 + 24), &v38);
  (*(*a3 + 8))(a3, a2, v36);
  return 1;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::ElementsAttr,mlir::TypedAttr const,void>>::doCastIfPossible(uint64_t *a1)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>]";
  v6 = 194;
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

void mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::~FuseCopyIntoConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
LABEL_12:
      *&v38 = "source op is not a valid ConstantOp";
      v40 = 259;
      v41 = &v38;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v37 = v10;
  if (!v9)
  {
    goto LABEL_12;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (v15)
  {
    *&v38 = (*(v16 + 8))(v16, v15);
    if (mlir::Type::getIntOrFloatBitWidth(&v38) <= 7)
    {
      *&v38 = "cannot optimize subbyte copies";
      v40 = 259;
      v41 = &v38;
LABEL_13:
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(a2 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_16:
      (*(*v11 + 88))(v11, v12, v13, &v41);
      return 0;
    }
  }

  ValueAttr = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v37);
  if (!ValueAttr || (v18 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::ElementsAttr,mlir::TypedAttr const,void>>::doCastIfPossible(ValueAttr)) == 0)
  {
    v26 = "source op does not have a valid constant";
    goto LABEL_33;
  }

  v19 = v18;
  v20 = *(*v18 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    if (*(a2 + 36))
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    *&v38 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    v23 = mlir::TensorType::operator mlir::ShapedType(&v38);
    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v23, v24, v19[4], v19[5]);
  }

  else
  {
    if (v20 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      v26 = "failed to extract ElementsAttr from constant";
LABEL_33:
      *&v38 = v26;
      v40 = 259;
      v41 = &v38;
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(v37 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
      goto LABEL_16;
    }

    if (*(a2 + 36))
    {
      v27 = a2 - 16;
    }

    else
    {
      v27 = 0;
    }

    v41 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    v28 = mlir::TensorType::operator mlir::ShapedType(&v41);
    v38 = *(v19 + 3);
    v39 = v19[5];
    Raw = mlir::DenseResourceElementsAttr::get(v28, v29, &v38);
  }

  v30 = Raw;
  if (Raw)
  {
    v31 = *Raw;
    v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
  }

  if (v30)
  {
    v33 = *v30;
    v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v35 = mlir::detail::InterfaceMap::lookup(v33 + 8, v34);
  }

  else
  {
    v35 = 0;
  }

  *&v38 = v30;
  *(&v38 + 1) = v35;
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>((a3 + 1), *(a2 + 24), &v38);
  (*(*a3 + 8))(a3, a2, v36);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>]";
  v6 = 200;
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

void mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CastOp>::~FuseCopyIntoConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
LABEL_12:
      *&v38 = "source op is not a valid ConstantOp";
      v40 = 259;
      v41 = &v38;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v37 = v10;
  if (!v9)
  {
    goto LABEL_12;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (v15)
  {
    *&v38 = (*(v16 + 8))(v16, v15);
    if (mlir::Type::getIntOrFloatBitWidth(&v38) <= 7)
    {
      *&v38 = "cannot optimize subbyte copies";
      v40 = 259;
      v41 = &v38;
LABEL_13:
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(a2 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_16:
      (*(*v11 + 88))(v11, v12, v13, &v41);
      return 0;
    }
  }

  ValueAttr = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v37);
  if (!ValueAttr || (v18 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::ElementsAttr,mlir::TypedAttr const,void>>::doCastIfPossible(ValueAttr)) == 0)
  {
    v26 = "source op does not have a valid constant";
    goto LABEL_33;
  }

  v19 = v18;
  v20 = *(*v18 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    if (*(a2 + 36))
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    *&v38 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    v23 = mlir::TensorType::operator mlir::ShapedType(&v38);
    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v23, v24, v19[4], v19[5]);
  }

  else
  {
    if (v20 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      v26 = "failed to extract ElementsAttr from constant";
LABEL_33:
      *&v38 = v26;
      v40 = 259;
      v41 = &v38;
      v11 = a3[2];
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(v37 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
      goto LABEL_16;
    }

    if (*(a2 + 36))
    {
      v27 = a2 - 16;
    }

    else
    {
      v27 = 0;
    }

    v41 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    v28 = mlir::TensorType::operator mlir::ShapedType(&v41);
    v38 = *(v19 + 3);
    v39 = v19[5];
    Raw = mlir::DenseResourceElementsAttr::get(v28, v29, &v38);
  }

  v30 = Raw;
  if (Raw)
  {
    v31 = *Raw;
    v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
  }

  if (v30)
  {
    v33 = *v30;
    v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v35 = mlir::detail::InterfaceMap::lookup(v33 + 8, v34);
  }

  else
  {
    v35 = 0;
  }

  *&v38 = v30;
  *(&v38 + 1) = v35;
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>((a3 + 1), *(a2 + 24), &v38);
  (*(*a3 + 8))(a3, a2, v36);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CastOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::FuseCopyIntoConstant<mlir::ODIE::Compiler::CoreMLAX::CastOp>]";
  v6 = 179;
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

void mlir::ODIE::Compiler::Transforms::createExternalizeGraphs(uint64_t a1)
{
  *v2 = *a1;
  v3 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a1 + 48);
  mlir::ODIE::Compiler::Transforms::impl::createExternalizeGraphs();
}

void llvm::SetVector<mlir::SymbolOpInterface,llvm::SmallVector<mlir::SymbolOpInterface,0u>,llvm::DenseSet<mlir::SymbolOpInterface,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>>,0u>::insert(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>,mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::LookupBucketFor<mlir::SymbolOpInterface>(*a1, *(a1 + 16), *a2, &v9))
  {
    return;
  }

  v4 = v9;
  v10 = v9;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_10;
  }

  if (v6 + ~v5 - *(a1 + 12) <= v6 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::grow(a1, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>,mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::LookupBucketFor<mlir::SymbolOpInterface>(*a1, *(a1 + 16), *a2, &v10);
    v5 = *(a1 + 8);
    v4 = v10;
  }

  *(a1 + 8) = v5 + 1;
  if (*v4 != -4096)
  {
    --*(a1 + 12);
  }

  *v4 = *a2;
  v7 = *a2;
  v8 = a2[1];

  llvm::SmallVectorTemplateBase<mlir::SymbolOpInterface,true>::push_back(a1 + 24, v7, v8);
}

void llvm::SmallVectorTemplateBase<mlir::SymbolOpInterface,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>,mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::LookupBucketFor<mlir::SymbolOpInterface>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

_OWORD *llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::grow(uint64_t a1, int a2)
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
      v11 = 16 * v10;
      do
      {
        *result++ = xmmword_25D0A0570;
        v11 -= 16;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 16 * v3;
      v13 = v4;
      do
      {
        v14 = *v13;
        if ((*v13 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v17 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>,mlir::SymbolOpInterface,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseSetPair<mlir::SymbolOpInterface>>::LookupBucketFor<mlir::SymbolOpInterface>(*a1, *(a1 + 16), v14, &v17);
          *v17 = *v13;
          ++*(a1 + 8);
        }

        v13 += 2;
        v12 -= 16;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 16 * v15;
    do
    {
      *result++ = xmmword_25D0A0570;
      v16 -= 16;
    }

    while (v16);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::ExternalizeGraphsBase<anonymous namespace::ExternalizeGraphsPass>::ExternalizeGraphsBase(uint64_t a1)
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
  *a1 = &unk_286EA4400;
  v5.n128_u64[0] = "Where to place the externalized graphs.";
  v5.n128_u64[1] = 39;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 336), (a1 + 144), "output-dir", 10, &v5);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  v5.n128_u64[1] = 101;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 576), (a1 + 144), "single-file", 11, &v5);
  *(a1 + 576) = &unk_286E98FD0;
  *(a1 + 800) = &unk_286E99050;
  v5.n128_u64[0] = "If set, externalize the bodies and simply do not save them";
  v5.n128_u64[1] = 58;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 816), (a1 + 144), "remove", 6, &v5, &v4);
  *(a1 + 816) = &unk_286E76DD0;
  *(a1 + 1000) = &unk_286E76E50;
  return a1;
}

void anonymous namespace::ExternalizeGraphsPass::~ExternalizeGraphsPass(_anonymous_namespace_::ExternalizeGraphsPass *this)
{
  *this = &unk_286EA4400;
  v2 = (this + 816);
  *(this + 102) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 968);
  llvm::cl::Option::~Option(v2);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA4400;
  v2 = (this + 816);
  *(this + 102) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 968);
  llvm::cl::Option::~Option(v2);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::ExternalizeGraphsPass::runOnOperation(_anonymous_namespace_::ExternalizeGraphsPass *this)
{
  v1 = this;
  v133[4] = *MEMORY[0x277D85DE8];
  v92 = 0;
  v93 = 0;
  v94 = 0x1000000000;
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(***(v2 + 3) + 32);
  mlir::CallGraph::CallGraph(&v122, v2);
  LODWORD(v104.__pn_.__r_.__value_.__l.__data_) = 0;
  *&v104.__pn_.__r_.__value_.__r.__words[1] = 0uLL;
  LODWORD(v105) = 0;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0;
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(&v104, &v125);
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v104);
  v103 = 0;
  v101 = 0u;
  __p = 0u;
  v99 = 0u;
  v100 = 0u;
  memset(v98, 0, sizeof(v98));
  if (!llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(&v104, v98))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  while (v108 - *(&v107 + 1) <= 8uLL)
  {
    v9 = **(&v107 + 1);
    v10 = *(**(&v107 + 1) + 56);
    if (v10)
    {
      v11 = *(v9 + 48);
      v12 = 8 * v10;
      while (v9 != (*v11 & 0xFFFFFFFFFFFFFFF8))
      {
        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      break;
    }

LABEL_20:
    llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v104);
    if (!llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(&v104, v98))
    {
      goto LABEL_21;
    }
  }

  if (*(&v107 + 1) == v108)
  {
    goto LABEL_20;
  }

  v4 = *(&v107 + 1);
  do
  {
    for (i = **v4; ; i = *(*(v6 + 16) + 24) & 0xFFFFFFFFFFFFFFF8)
    {
      v6 = *(i + 16);
      if (v6)
      {
        if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
        {
          break;
        }
      }
    }

    v7 = *(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 72);
    ++v4;
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 == v108;
    }
  }

  while (!v8);
  if (!v7)
  {
    goto LABEL_20;
  }

  v73 = ***(&v107 + 1);
  while (1)
  {
    v74 = *(v73 + 16);
    if (v74)
    {
      if (*(*(v74 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        break;
      }
    }

    v75 = *(v74 + 16);
    if (v75)
    {
      v73 = *(v75 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v73)
      {
        continue;
      }
    }

    v74 = 0;
    break;
  }

  v97 = 257;
  mlir::Operation::emitError(&v114, v74, &v96);
  if (v114.__pn_.__r_.__value_.__r.__words[0])
  {
    mlir::Diagnostic::operator<<<33ul>(&v114.__pn_.__r_.__value_.__l.__size_, "root of illegal call cycle found");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(&__s, &v114);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v114);
  for (j = (*(&v107 + 1) + 8); j != v108; ++j)
  {
    v77 = **j;
    do
    {
      v77 = *(v77 + 16);
      if (v77 && *(*(v77 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        break;
      }

      v77 = *(v77 + 16);
      if (!v77)
      {
        break;
      }

      v77 = *(v77 + 24) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v77);
    if (*(v77 + 16 * ((*(v77 + 44) >> 23) & 1) + 72))
    {
      mlir::Diagnostic::attachNote(&__s.__pn_.__r_.__value_.__l.__size_, *(v77 + 24), 1);
    }
  }

  v13 = v121;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__s);
LABEL_22:
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (*(&v100 + 1))
  {
    *&v101 = *(&v100 + 1);
    operator delete(*(&v100 + 1));
  }

  if (v99)
  {
    *(&v99 + 1) = v99;
    operator delete(v99);
  }

  MEMORY[0x25F891030](*&v98[8], 8);
  if (v109)
  {
    *(&v109 + 1) = v109;
    operator delete(v109);
  }

  if (*(&v107 + 1))
  {
    *&v108 = *(&v107 + 1);
    operator delete(*(&v107 + 1));
  }

  if (v106)
  {
    *(&v106 + 1) = v106;
    operator delete(v106);
  }

  MEMORY[0x25F891030](v104.__pn_.__r_.__value_.__l.__size_, 8);
  if (v132 != v133)
  {
    free(v132);
  }

  if ((v130[40] & 1) == 0)
  {
    MEMORY[0x25F891030](v131, 8);
  }

  if (v129 != v130)
  {
    free(v129);
  }

  if ((v126 & 1) == 0)
  {
    MEMORY[0x25F891030](v127, 8);
  }

  llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>::~SmallVector(&v123);
  MEMORY[0x25F891030](v122.__r_.__value_.__r.__words[0], 8);
  if (v13)
  {
    goto LABEL_122;
  }

  memset(v98, 0, 24);
  memset(&v96, 0, 20);
  v122.__r_.__value_.__r.__words[0] = v98;
  v122.__r_.__value_.__l.__size_ = &v96;
  __s.__pn_.__r_.__value_.__r.__words[0] = &v122;
  v14 = mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN4ODIE8Compiler17externalizeGraphsENS1_8ModuleOpERNS_9StringMapINS1_11OwningOpRefISE_EENS_15MallocAllocatorEEEE3__0NS1_4ODIE8Compiler6CoreML7GraphOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESX_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &__s, 1);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_109;
  }

  v16 = *&v98[8];
  v17 = *v98;
  if (*v98 == *&v98[8])
  {
    goto LABEL_109;
  }

  v90 = v1;
  v89 = v14;
  while (2)
  {
    v18 = v17 + 48;
    if (v16 != v17 + 48)
    {
      v19 = v17 + 48;
      while (1)
      {
        v20 = *(v17 + 40);
        do
        {
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = *(v21 + 24) & 0xFFFFFFFFFFFFFFF8;
            if (v22)
            {
              v20 = *(v22 + 16);
              if (v20)
              {
                continue;
              }
            }
          }

          goto LABEL_89;
        }

        while (*(*(v20 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id);
LABEL_53:
        if (*(v19 + 40) == v20)
        {
          break;
        }

        v23 = *(v19 + 40);
        while (1)
        {
          v24 = *(v23 + 16);
          if (!v24)
          {
            break;
          }

          v25 = *(v24 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (!v25)
          {
            break;
          }

          v23 = *(v25 + 16);
          if (v23 == v20 || v23 == 0)
          {
            if (!v23)
            {
              break;
            }

            goto LABEL_68;
          }
        }

        while (1)
        {
          v27 = *(v20 + 16);
          if (!v27)
          {
            break;
          }

          v28 = *(v27 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (!v28)
          {
            break;
          }

          v20 = *(v28 + 16);
          if (!v20)
          {
            break;
          }

          if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
          {
            goto LABEL_53;
          }
        }

LABEL_89:
        v19 += 48;
        if (v19 == v16)
        {
          goto LABEL_97;
        }
      }

LABEL_68:
      v29 = *(v19 + 32);
      if (v29)
      {
        v30 = *(v19 + 24);
        v31 = 16 * v29;
        do
        {
          llvm::SetVector<mlir::SymbolOpInterface,llvm::SmallVector<mlir::SymbolOpInterface,0u>,llvm::DenseSet<mlir::SymbolOpInterface,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>>,0u>::insert(v17, v30);
          v30 += 2;
          v31 -= 16;
        }

        while (v31);
      }

      v32 = *(v19 + 8);
      if (v32)
      {
        v33 = *(v19 + 16);
        v34 = xmmword_25D0A0570;
        if (v33 > 4 * v32 && v33 >= 0x41)
        {
          v35 = 1 << (33 - __clz(v32 - 1));
          if (v35 <= 64)
          {
            v36 = 64;
          }

          else
          {
            v36 = v35;
          }

          goto LABEL_80;
        }

LABEL_84:
        if (v33)
        {
          v39 = *v19;
          v40 = 16 * v33;
          do
          {
            *v39++ = v34;
            v40 -= 16;
          }

          while (v40);
        }

        *(v19 + 8) = 0;
      }

      else
      {
        v34 = xmmword_25D0A0570;
        if (*(v19 + 12))
        {
          v33 = *(v19 + 16);
          if (v33 <= 0x40)
          {
            goto LABEL_84;
          }

          v36 = 0;
LABEL_80:
          if (v36 == v33)
          {
            *(v19 + 8) = 0;
            v37 = 16 * v33;
            v38 = *v19;
            do
            {
              *v38++ = v34;
              v37 -= 16;
            }

            while (v37);
          }

          else
          {
            MEMORY[0x25F891030](*v19, 8, v34);
            if (v36)
            {
              v41 = (4 * v36 / 3u + 1) | ((4 * v36 / 3u + 1) >> 1);
              v42 = v41 | (v41 >> 2) | ((v41 | (v41 >> 2)) >> 4);
              LODWORD(v42) = (((v42 | (v42 >> 8)) >> 16) | v42 | (v42 >> 8)) + 1;
              *(v19 + 16) = v42;
              buffer = llvm::allocate_buffer((16 * v42), 8uLL);
              *v19 = buffer;
              *(v19 + 8) = 0;
              v44 = *(v19 + 16);
              if (v44)
              {
                v45 = 16 * v44;
                do
                {
                  *buffer++ = xmmword_25D0A0570;
                  v45 -= 16;
                }

                while (v45);
              }
            }

            else
            {
              *v19 = 0;
              *(v19 + 8) = 0;
              *(v19 + 16) = 0;
            }
          }
        }
      }

      *(v19 + 32) = 0;
      goto LABEL_89;
    }

LABEL_97:
    v17 += 48;
    if (v18 != v16)
    {
      continue;
    }

    break;
  }

  *&v104.__pn_.__r_.__value_.__l.__data_ = v3;
  v104.__pn_.__r_.__value_.__r.__words[2] = 0;
  v105 = 0;
  memset(&v122, 0, 20);
  v124 = 0;
  v123 = 0;
  v125 = 0;
  v127 = 0;
  v126 = 0;
  v128 = 0;
  v46 = *&v98[8];
  for (k = *v98; k != v46; k += 48)
  {
    memset(&__s, 0, 20);
    MEMORY[0x25F891030](0, 8);
    v48 = *(k + 16);
    LODWORD(__s.__pn_.__r_.__value_.__r.__words[2]) = v48;
    if (v48)
    {
      __s.__pn_.__r_.__value_.__r.__words[0] = llvm::allocate_buffer((16 * v48), 8uLL);
      __s.__pn_.__r_.__value_.__l.__size_ = *(k + 8);
      memcpy(__s.__pn_.__r_.__value_.__l.__data_, *k, 16 * LODWORD(__s.__pn_.__r_.__value_.__r.__words[2]));
    }

    else
    {
      *&__s.__pn_.__r_.__value_.__l.__data_ = 0uLL;
    }

    __dst = v120;
    v119 = 0;
    v49 = *(k + 32);
    if (v49 && &__s != k)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v120, *(k + 32), 16);
      v50 = *(k + 32);
      if (v50)
      {
        memcpy(__dst, *(k + 24), 16 * v50);
      }

      LODWORD(v119) = v49;
      v120[0] = *(k + 40);
      v51 = *(v120[0] + 24);
      pn.__r_.__value_.__s.__data_[0] = 0;
      pn.__r_.__value_.__s.__data_[16] = 0;
      *&v114.__pn_.__r_.__value_.__l.__data_ = *(**v51 + 32);
      v114.__pn_.__r_.__value_.__r.__words[2] = 0;
      v115 = 0;
      mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(&v114, v51, &pn);
    }

    v120[0] = *(k + 40);
    MEMORY[0x25F891030](__s.__pn_.__r_.__value_.__r.__words[0], 8);
  }

  MEMORY[0x25F891030](v126, 8);
  MEMORY[0x25F891030](v123, 8);
  MEMORY[0x25F891030](v122.__r_.__value_.__r.__words[0], 8);
  v1 = v90;
  v15 = v89;
LABEL_109:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(&v96);
  MEMORY[0x25F891030](v96.__pn_.__r_.__value_.__r.__words[0], 8);
  v52 = *v98;
  if (*v98)
  {
    v53 = *&v98[8];
    v54 = *v98;
    if (*&v98[8] != *v98)
    {
      do
      {
        v53 -= 6;
      }

      while (v53 != v52);
      v54 = *v98;
    }

    *&v98[8] = v52;
    operator delete(v54);
  }

  if (!v15)
  {
LABEL_122:
    *(v1 + 5) |= 4uLL;
    goto LABEL_123;
  }

  if (*(v1 + 936) == 1)
  {
    v55 = *(v1 + 719);
    if (v55 < 0)
    {
      v55 = *(v1 + 88);
    }

    if (v55)
    {
      v56 = *((*(v1 + 5) & 0xFFFFFFFFFFFFFFF8) + 24);
      LOWORD(v119) = 257;
      emitDiag(v56, 1, &__s, &v122);
      if (v122.__r_.__value_.__r.__words[0])
      {
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v122);
    }
  }

  else if (HIDWORD(v93))
  {
    memset(&v104, 0, sizeof(v104));
    v62 = *(v1 + 479);
    if (v62 >= 0)
    {
      v63 = (v1 + 456);
    }

    else
    {
      v63 = *(v1 + 57);
    }

    if (v62 >= 0)
    {
      v64 = *(v1 + 479);
    }

    else
    {
      v64 = *(v1 + 58);
    }

    std::string::append[abi:nn200100]<char const*,0>(&v104.__pn_, v63, (v63 + v64));
    size = HIBYTE(v104.__pn_.__r_.__value_.__r.__words[2]);
    if ((v104.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v104.__pn_.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      __ec.__val_ = 0;
      v66 = std::system_category();
      __ec.__cat_ = v66;
      std::__fs::filesystem::__create_directories(&v104, &__ec);
      if (__ec.__val_)
      {
        v67 = *(v1 + 5);
        v114.__pn_.__r_.__value_.__r.__words[0] = "failed to create directory ";
        v116 = 259;
        mlir::Operation::emitError(&v122, (v67 & 0xFFFFFFFFFFFFFFF8), &v114);
        if (v122.__r_.__value_.__r.__words[0])
        {
          mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(&v122.__r_.__value_.__l.__size_, &v104, ", ");
          if (v122.__r_.__value_.__r.__words[0])
          {
            mlir::Diagnostic::operator<<<3ul>(&v122.__r_.__value_.__l.__size_, ": ");
          }
        }

        std::error_code::message(v98, &__ec);
        if (v122.__r_.__value_.__r.__words[0])
        {
          LOWORD(v119) = 260;
          __s.__pn_.__r_.__value_.__r.__words[0] = v98;
          mlir::Diagnostic::operator<<(&v122.__r_.__value_.__l.__size_, &__s);
        }

        if ((v98[23] & 0x80000000) != 0)
        {
          operator delete(*v98);
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v122);
      }

      memset(v98, 0, 24);
      v68 = *(v1 + 719);
      if (v68 >= 0)
      {
        v69 = (v1 + 696);
      }

      else
      {
        v69 = *(v1 + 87);
      }

      v70 = *(v1 + 88);
      if (v68 >= 0)
      {
        v70 = *(v1 + 719);
      }

      std::string::append[abi:nn200100]<char const*,0>(v98, v69, (v69 + v70));
      v71 = v98[23];
      if (v98[23] < 0)
      {
        v71 = *&v98[8];
      }

      if (v71)
      {
        v72 = *((*(v1 + 5) & 0xFFFFFFFFFFFFFFF8) + 24);
        __s.__pn_.__r_.__value_.__s.__data_[0] = 0;
        __s.__pn_.__r_.__value_.__s.__data_[16] = 0;
        *&v122.__r_.__value_.__l.__data_ = *(**v72 + 32);
        v123 = 0;
        v122.__r_.__value_.__r.__words[2] = 0;
        mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(&v122, v72, &__s);
      }

      if (v93)
      {
          ;
        }
      }

      else
      {
        m = v92;
      }

      v81 = v92 + 8 * v93;
      if (m != v81)
      {
        v82 = *m;
        while (mlir::ModuleOp::verify((v82 + 8)))
        {
          v83 = *v82;
          LOWORD(v124) = 773;
          v122.__r_.__value_.__r.__words[0] = v82 + 16;
          v122.__r_.__value_.__l.__size_ = v83;
          v122.__r_.__value_.__r.__words[2] = ".mlir.bc";
          llvm::Twine::str(&v122, &v114);
          __s = v114;
          memset(&v114, 0, sizeof(v114));
          std::__fs::filesystem::operator/[abi:nn200100](&__s, &v104, &v96);
          if (SHIBYTE(__s.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v114.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v114.__pn_.__r_.__value_.__l.__data_);
          }

          std::__fs::filesystem::__status(&v96, &__ec);
          if (v122.__r_.__value_.__s.__data_[0])
          {
            __ec.__val_ = 0;
            __ec.__cat_ = v66;
            if (v122.__r_.__value_.__s.__data_[0] != 255)
            {
              v114.__pn_.__r_.__value_.__r.__words[0] = "file at ";
              v116 = 259;
              mlir::Operation::emitWarning(*(v82 + 8), &v114, &v122);
              if (SHIBYTE(v96.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&pn, v96.__pn_.__r_.__value_.__l.__data_, v96.__pn_.__r_.__value_.__l.__size_);
              }

              else
              {
                pn = v96.__pn_;
              }

              if (v122.__r_.__value_.__r.__words[0])
              {
                LOWORD(v119) = 260;
                __s.__pn_.__r_.__value_.__r.__words[0] = &pn;
                mlir::Diagnostic::operator<<(&v122.__r_.__value_.__l.__size_, &__s);
                if (v122.__r_.__value_.__r.__words[0])
                {
                  mlir::Diagnostic::operator<<<21ul>(&v122.__r_.__value_.__l.__size_, " will be overwritten");
                }
              }

              if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(pn.__r_.__value_.__l.__data_);
              }

              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v122);
            }
          }

          if (SHIBYTE(v96.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v122, v96.__pn_.__r_.__value_.__l.__data_, v96.__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v122 = v96.__pn_;
          }

          if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = &v122;
          }

          else
          {
            v84 = v122.__r_.__value_.__r.__words[0];
          }

          if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = SHIBYTE(v122.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v85 = v122.__r_.__value_.__l.__size_;
          }

          v111[0] = &unk_286EA4470;
          v111[1] = v82;
          v112 = v111;
          llvm::writeToOutput(v84, v85, v111, &__s);
          if (v112 == v111)
          {
            (*(*v112 + 32))(v112);
          }

          else if (v112)
          {
            (*(*v112 + 40))();
          }

          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v122.__r_.__value_.__l.__data_);
          }

          v86 = __s.__pn_.__r_.__value_.__r.__words[0];
          if (__s.__pn_.__r_.__value_.__r.__words[0])
          {
            *(v1 + 5) |= 4uLL;
            (*(*v86 + 8))(v86);
          }

          if (SHIBYTE(v96.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__pn_.__r_.__value_.__l.__data_);
          }

          if (!v86)
          {
            do
            {
              v87 = *(m + 1);
              m += 8;
              v82 = v87;
              if (v87)
              {
                v88 = v82 == -8;
              }

              else
              {
                v88 = 1;
              }
            }

            while (v88);
            if (m != v81)
            {
              continue;
            }
          }

          goto LABEL_233;
        }

        *(v1 + 5) |= 4uLL;
      }

LABEL_233:
      if ((v98[23] & 0x80000000) != 0)
      {
        operator delete(*v98);
      }
    }

    else
    {
      v78 = *(v1 + 5);
      v122.__r_.__value_.__r.__words[0] = "no output path provided for externalized graphs";
      LOWORD(v124) = 259;
      mlir::Operation::emitError(v113, (v78 & 0xFFFFFFFFFFFFFFF8), &v122);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v113);
      *(v1 + 5) |= 4uLL;
    }

    if (SHIBYTE(v104.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__pn_.__r_.__value_.__l.__data_);
    }
  }

LABEL_123:
  if (HIDWORD(v93))
  {
    v57 = v93;
    if (v93)
    {
      v58 = v92;
      do
      {
        v59 = *v58;
        if (*v58 != -8 && v59 != 0)
        {
          llvm::StringMapEntry<mlir::OwningOpRef<mlir::ModuleOp>>::Destroy<llvm::MallocAllocator>(v59);
        }

        ++v58;
        --v57;
      }

      while (v57);
    }
  }

  free(v92);
  v61 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path *this, _BYTE *a3)
{
  v6 = a3;
  std::__fs::filesystem::path::begin(&v8, this);
  std::__fs::filesystem::path::end(&v7, this);
  llvm::interleave<std::__fs::filesystem::path::iterator,mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(std::__fs::filesystem::path const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(std::__fs::filesystem::path const&,char const*)::{lambda(void)#1},void>(&v8, &v7, a1, a1, &v6);
  if (SHIBYTE(v7.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  return a1;
}

void llvm::StringMapEntry<mlir::OwningOpRef<mlir::ModuleOp>>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (*(v1 + 2))
    {
      *(v1 + 2) = 0;
      v3 = *v1;
      v2 = *(v1 + 1);
      *v2 = *v1;
      *(v3 + 8) = v2;
      *v1 = 0;
      *(v1 + 1) = 0;
    }

    mlir::Operation::destroy(v1);
  }

  JUMPOUT(0x25F891030);
}

uint64_t std::__function::__func<anonymous namespace::ExternalizeGraphsPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::ExternalizeGraphsPass::runOnOperation(void)::$_0>,llvm::Error ()(llvm::raw_ostream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA4470;
  a2[1] = v2;
  return result;
}

void std::allocator_traits<std::allocator<anonymous namespace::ExternalModulePlan>>::destroy[abi:nn200100]<anonymous namespace::ExternalModulePlan,0>(uint64_t *a1)
{
  v2 = a1[3];
  if (v2 != a1 + 5)
  {
    free(v2);
  }

  v3 = *a1;

  JUMPOUT(0x25F891030);
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN4ODIE8Compiler17externalizeGraphsENS1_8ModuleOpERNS_9StringMapINS1_11OwningOpRefISE_EENS_15MallocAllocatorEEEE3__0NS1_4ODIE8Compiler6CoreML7GraphOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESX_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  result = 1;
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id && *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72))
  {
    v5 = *a1;
    v6 = **a1;
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    if (v8 >= v7)
    {
      v10 = *v6;
      v11 = v8 - *v6;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4) + 1;
      if (v12 > 0x555555555555555)
      {
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x2AAAAAAAAAAAAAALL)
      {
        v14 = 0x555555555555555;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v15 = 16 * (v11 >> 4);
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *v15 = 0u;
      *(v15 + 24) = v15 + 40;
      v9 = v15 + 48;
      v16 = v15 - v11;
      if (v10 != v8)
      {
        v28 = v15 - v11;
        v29 = v15 + 48;
        v17 = 0;
        do
        {
          v18 = &v10[v17 / 8];
          *(v17 + 16) = 0;
          *(v17 + 8) = 0;
          *v17 = v10[v17 / 8];
          *v18 = 0;
          *(v17 + 8) = v10[v17 / 8 + 1];
          *(v18 + 2) = 0;
          v19 = *(v17 + 12);
          *(v17 + 12) = HIDWORD(v10[v17 / 8 + 1]);
          *(v18 + 3) = v19;
          v20 = *(v17 + 16);
          *(v17 + 16) = v10[v17 / 8 + 2];
          *(v18 + 4) = v20;
          *(v17 + 24) = v17 + 40;
          v21 = (v17 + 24);
          *(v17 + 32) = 0;
          v22 = v10[v17 / 8 + 4];
          if (v22 && v17 != v18)
          {
            v23 = v18[3];
            v24 = &v10[v17 / 8];
            v25 = &v10[v17 / 8 + 5];
            if (v25 == v23)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), LODWORD(v10[v17 / 8 + 4]), 16);
              v27 = *(v18 + 8);
              if (v27)
              {
                memcpy(*v21, v18[3], 16 * v27);
              }

              *(v17 + 32) = v22;
            }

            else
            {
              *v21 = v23;
              v26 = *(v24 + 9);
              *(v17 + 32) = v22;
              *(v17 + 36) = v26;
              v18[3] = v25;
              *(v24 + 9) = 0;
            }

            *(v18 + 8) = 0;
          }

          *(v17 + 40) = v18[5];
          v17 += 48;
        }

        while (&v10[v17 / 8] != v8);
        do
        {
          v10 += 6;
        }

        while (v10 != v8);
        v10 = *v6;
        v9 = v29;
        v16 = v28;
      }

      *v6 = v16;
      *(v6 + 8) = v9;
      *(v6 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *v8 = 0u;
      *(v8 + 24) = v8 + 40;
      v9 = v8 + 48;
    }

    *(v6 + 8) = v9;
    *(v9 - 8) = a2;
    return addGraphToList(a2, v5[1], v9 - 48);
  }

  return result;
}

uint64_t addGraphToList(uint64_t InterfaceFor, uint64_t a2, uint64_t a3)
{
  v5 = InterfaceFor;
  v22[6] = *MEMORY[0x277D85DE8];
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v20 = v22;
  v22[0] = v5;
  v22[1] = InterfaceFor;
  v21 = 0x300000001;
  v6 = v5;
  while (1)
  {
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v8)
    {
      break;
    }

    v6 = *(v8 + 16);
    if (!v6)
    {
      break;
    }

    if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
    {
      v9 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
      llvm::SmallVectorTemplateBase<mlir::SymbolOpInterface,true>::push_back(&v20, v6, v9);
    }
  }

  *&v17 = a2;
  *(&v17 + 1) = &v20;
  v18 = a3;
  v19 = &v17;
  v10 = mlir::detail::walk<mlir::ForwardIterator>(v5, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZL14addGraphToListNS1_4ODIE8Compiler6CoreML7GraphOpERNS1_21SymbolTableCollectionERN12_GLOBAL__N_118ExternalModulePlanEE3__0NSE_8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v19, 1);
  v11 = v20;
  if (v10)
  {
    if (v21)
    {
      v12 = 16 * v21;
      v13 = v20 - 16;
      do
      {
        v17 = *&v13[v12];
        llvm::SetVector<mlir::SymbolOpInterface,llvm::SmallVector<mlir::SymbolOpInterface,0u>,llvm::DenseSet<mlir::SymbolOpInterface,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>>,0u>::insert(a3, &v17);
        v12 -= 16;
      }

      while (v12);
      v14 = 1;
      v11 = v20;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v11 != v22)
  {
    free(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZL14addGraphToListNS1_4ODIE8Compiler6CoreML7GraphOpERNS1_21SymbolTableCollectionERN12_GLOBAL__N_118ExternalModulePlanEE3__0NSE_8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void **a1, mlir::Operation *a2)
{
  v14[26] = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    v4 = *a1;
    v13 = a2;
    v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(&v13, *v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(v5[6] + 2);
      if (v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
      {
        v8 = v4[1];
        InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
        llvm::SmallVectorTemplateBase<mlir::SymbolOpInterface,true>::push_back(v8, v6, InterfaceFor);
        result = 1;
        goto LABEL_11;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        result = addGraphToList(v5, *v4, v4[2]);
        goto LABEL_11;
      }

      v11 = "unknown callee kind, found while externalizing graphs";
      v12 = 259;
    }

    else
    {
      v5 = v13;
      v11 = "could not resolve the callee";
      v12 = 259;
    }

    mlir::Operation::emitError(v14, v5, &v11);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    result = 0;
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

size_t **llvm::StringMap<mlir::OwningOpRef<mlir::ModuleOp>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v13 = buffer;
  v14 = (buffer + 2);
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  v13[1] = 0;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void anonymous namespace::FoldConstexprOpsPass::~FoldConstexprOpsPass(_anonymous_namespace_::FoldConstexprOpsPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::FoldConstexprOpsPass::runOnOperation(_anonymous_namespace_::FoldConstexprOpsPass *this)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v18 = v20;
  v19 = 0x600000000;
  v15[0] = &v18;
  v13 = v15;
  mlir::detail::walk<mlir::ForwardIterator>(v2 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120FoldConstexprOpsPass14runOnOperationEvE3__0NS1_4ODIE8Compiler8CoreMLAX21ConstexprLutToDenseOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v13, 1);
  v12 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  memset(v17.__m_.__opaque, 0, sizeof(v17.__m_.__opaque));
  v17.__m_.__sig = 850045863;
  v13 = &v12;
  v14[0] = v15;
  v5[0] = v18;
  v7 = &v13;
  v8 = v5;
  v3 = atomic_load(&v12);
  if (v3)
  {
    LOWORD(v11) = 257;
    mlir::Operation::emitError(&v13, (v2 & 0xFFFFFFFFFFFFFFF8), &v7);
    if (v13)
    {
      mlir::Diagnostic::operator<<<44ul>(v14, " Failed to perform folding of constexpr ops");
    }
  }

  else
  {
    v8 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v7 = &unk_286E76228;
    v13 = v15;
    v14[0] = &v7;
    v5[0] = &v13;
    if (mlir::detail::walk<mlir::ForwardIterator>(v2 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120FoldConstexprOpsPass14runOnOperationEvE3__2NS1_4ODIE8Compiler8CoreMLAX21ConstexprLutToDenseOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v5, 1))
    {
      goto LABEL_8;
    }

    v6 = 257;
    mlir::Operation::emitError(&v13, (v2 & 0xFFFFFFFFFFFFFFF8), v5);
    if (v13)
    {
      mlir::Diagnostic::operator<<<37ul>(v14, " Failed to fold constexpr operations");
    }
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  *(this + 5) |= 4uLL;
LABEL_8:
  std::mutex::~mutex(&v17);
  MEMORY[0x25F891030](v15[0], 8);
  if (v18 != v20)
  {
    free(v18);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120FoldConstexprOpsPass14runOnOperationEvE3__0NS1_4ODIE8Compiler8CoreMLAX21ConstexprLutToDenseOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id)
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(**a1, a2);
  }

  return 1;
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void llvm::parallelForEach<mlir::Operation **,anonymous namespace::FoldConstexprOpsPass::runOnOperation(void)::$_1>(mlir::Operation **,mlir::Operation **,anonymous namespace::FoldConstexprOpsPass::runOnOperation(void)::$_1)::{lambda(unsigned long)#1}>(uint64_t *a1, uint64_t a2)
{
  v32[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1[1] + 8 * a2);
  v30 = v32;
  v31 = 0x600000000;
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 68);
    if (v4)
    {
      v5 = (*(v3 + 72) + 24);
      while (1)
      {
        v6 = *v5;
        v26[0] = 0;
        v26[1] = 0;
        v27 = v26;
        if ((~*(v6 + 8) & 7) == 0)
        {
          v6 = 0;
        }

        if (v6)
        {
          v7 = *(v6 + 8) & 7;
          if (v7 != 6)
          {
            v9 = v6 + 16 * v7 + 16;
LABEL_11:
            if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v27, v9))
            {
              v10 = v26[0];
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_14;
          }

          v8 = v6 + 24 * *(v6 + 16);
          v9 = v8 + 120;
          if (v8 != -120)
          {
            goto LABEL_11;
          }
        }

        v10 = 0;
LABEL_14:
        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v30, v10);
        v5 += 4;
        if (!--v4)
        {
          v11 = v30;
          v12 = v31;
          goto LABEL_17;
        }
      }
    }
  }

  v12 = 0;
  v11 = v32;
LABEL_17:
  v27 = v29;
  v28 = 0x600000000;
  if (mlir::ODIE::Compiler::CoreML::tryFoldOperation(v3, v11, v12, &v27, 0x7FFFFFFFFFFFFFFFLL))
  {
    if (v28 != 1 || (v13 = *v27, *v27 <= 7))
    {
      v24[0] = "Constant folding of this op succeeded but the result is unexpected";
      v25 = 259;
      mlir::Operation::emitError(v26, v3, v24);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
      atomic_store(1u, *v2);
      goto LABEL_31;
    }

    v14 = *(v2 + 8);
    v15 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v16 = *v15;
      v17 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
    }

    else
    {
      v18 = 0;
    }

    std::mutex::lock((v14 + 24));
    v24[0] = 0;
    v19 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>,mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::LookupBucketFor<mlir::Operation *>(*v14, *(v14 + 16), v3, v24);
    v20 = v24[0];
    if (v19)
    {
      goto LABEL_30;
    }

    v26[0] = v24[0];
    v21 = *(v14 + 8);
    v22 = *(v14 + 16);
    if (4 * v21 + 4 >= 3 * v22)
    {
      v22 *= 2;
    }

    else if (v22 + ~v21 - *(v14 + 12) > v22 >> 3)
    {
LABEL_27:
      *(v14 + 8) = v21 + 1;
      if (*v20 != -4096)
      {
        --*(v14 + 12);
      }

      v20[1] = 0;
      v20[2] = 0;
      *v20 = v3;
LABEL_30:
      v20[1] = v15;
      v20[2] = v18;
      std::mutex::unlock((v14 + 24));
      goto LABEL_31;
    }

    llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::grow(v14, v22);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>,mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::LookupBucketFor<mlir::Operation *>(*v14, *(v14 + 16), v3, v26);
    v21 = *(v14 + 8);
    v20 = v26[0];
    goto LABEL_27;
  }

LABEL_31:
  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>,mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 24 * v5);
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
        v6 = (a1 + 24 * (v13 & v4));
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

void *llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[3] = -4096;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>,mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_25D0A0500)));
      if (v23.i8[0])
      {
        *result = -4096;
      }

      if (v23.i8[4])
      {
        result[3] = -4096;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120FoldConstexprOpsPass14runOnOperationEvE3__2NS1_4ODIE8Compiler8CoreMLAX21ConstexprLutToDenseOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t ***a1, mlir::Operation *this)
{
  v19[26] = *MEMORY[0x277D85DE8];
  result = 1;
  if (this && *(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id)
  {
    v5 = *a1;
    v6 = *(*v5 + 4);
    if (v6)
    {
      v7 = **v5;
      v8 = v6 - 1;
      v9 = (v6 - 1) & ((this >> 4) ^ (this >> 9));
      v10 = *(v7 + 24 * v9);
      if (v10 == this)
      {
LABEL_5:
        v18 = *(v7 + 24 * v9 + 8);
        if (v18)
        {
          *(v5[1] + 3) = vextq_s8(*(this + 8), *(this + 8), 8uLL);
          v11 = v5[1];
          v12 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr &>((v11 + 1), *(this + 3), &v18);
          (*(*v11 + 8))(v11, this, v12);
          result = 1;
          goto LABEL_12;
        }
      }

      else
      {
        v13 = 1;
        while (v10 != -4096)
        {
          v14 = v9 + v13++;
          v9 = v14 & v8;
          v10 = *(v7 + 24 * v9);
          if (v10 == this)
          {
            goto LABEL_5;
          }
        }
      }
    }

    v16 = "Constant folding of this op succeeded but the result is unexpected";
    v17 = 259;
    mlir::Operation::emitError(v19, this, &v16);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    result = 0;
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

mlir::Pass **std::unique_ptr<anonymous namespace::ExternalizeToBundlePass>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_286EA4598;
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 336);
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::ExternalizeToBundleBase<anonymous namespace::ExternalizeToBundlePass>::ExternalizeToBundleBase(uint64_t a1)
{
  *(a1 + 16) = "coreml.module";
  *(a1 + 24) = 13;
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
  *a1 = &unk_286EA4598;
  *&v3 = "The name of the output bundle";
  *(&v3 + 1) = 29;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 336), (a1 + 144), "out-dir", 7, &v3);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  return a1;
}

void anonymous namespace::ExternalizeToBundlePass::~ExternalizeToBundlePass(_anonymous_namespace_::ExternalizeToBundlePass *this)
{
  *this = &unk_286EA4598;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA4598;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::ExternalizeToBundlePass::runOnOperation(_anonymous_namespace_::ExternalizeToBundlePass *this)
{
  v6[25] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v4[16] = 257;
  mlir::Operation::emitError(&v5, (v2 & 0xFFFFFFFFFFFFFFF8), v4);
  if (v5)
  {
    mlir::Diagnostic::operator<<<60ul>(v6, "cannot externalize to native bundle, not built with codegen");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v5);
  *(this + 5) |= 4uLL;
  v3 = *MEMORY[0x277D85DE8];
}

BOOL mlir::OperationPass<mlir::ODIE::Compiler::CoreML::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::Transforms::impl::ExternalizeToBundleBase<anonymous namespace::ExternalizeToBundlePass>::getDependentDialects(uint64_t a1, uint64_t a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  mlir::DialectRegistry::insert<mlir::LLVM::LLVMDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::ub::UBDialect>(a2);
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::InsertTargetSpec>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_286EA4678;
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 816);
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 576);
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 336);
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::InsertTargetSpecBase<mlir::ODIE::Compiler::Transforms::anonymous namespace::InsertTargetSpec>::InsertTargetSpecBase(uint64_t a1)
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
  *a1 = &unk_286EA4678;
  *&v3 = "LLVM style target to compile for. E.g., arm64-macos-macos14";
  *(&v3 + 1) = 59;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 336), (a1 + 144), "target-triple", 13, &v3);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  *&v3 = "An SOC identifier. E.g., h14g";
  *(&v3 + 1) = 29;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 576), (a1 + 144), "target-soc", 10, &v3);
  *(a1 + 576) = &unk_286E98FD0;
  *(a1 + 800) = &unk_286E99050;
  *&v3 = "A dictionary to store delegate related infomation";
  *(&v3 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 816), (a1 + 144), "target-delegate", 15, &v3);
  *(a1 + 816) = &unk_286E98FD0;
  *(a1 + 1040) = &unk_286E99050;
  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::InsertTargetSpec::~InsertTargetSpec(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::InsertTargetSpec *this)
{
  *this = &unk_286EA4678;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 816);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA4678;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 816);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::InsertTargetSpec::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::InsertTargetSpec *this)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v29 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v32[0] = &v29;
  v35[0] = v32;
  mlir::detail::walk<mlir::ForwardIterator>(v29, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_116InsertTargetSpec14runOnOperationEvE3__0NSC_6CoreML12TargetSpecOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_, v35, 1);
  v2 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v3 = mlir::DictionaryAttr::get(v2, 0, 0);
  if (*(this + 1048) == 1)
  {
    v4 = *(this + 959);
    if (v4 < 0)
    {
      if (!*(this + 118))
      {
        goto LABEL_15;
      }
    }

    else if (!*(this + 959))
    {
      goto LABEL_15;
    }

    if (v4 >= 0)
    {
      v5 = (this + 936);
    }

    else
    {
      v5 = *(this + 117);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 959);
    }

    else
    {
      v6 = *(this + 118);
    }

    v7 = mlir::parseAttribute(v5, v6, v2, 0, 0, 0);
    if (!v7 || (v3 = v7, *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id))
    {
      v35[0] = "fail to parse delegate-target in target spec";
      v36 = 259;
      mlir::Operation::emitError(v34, v29, v35);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
      goto LABEL_32;
    }
  }

LABEL_15:
  v26[0] = *(***(v29 + 3) + 32);
  v26[1] = 0;
  v27 = *(v29 + 2);
  v28 = v29;
  v8 = *(this + 479);
  if (v8 >= 0)
  {
    v9 = (this + 456);
  }

  else
  {
    v9 = *(this + 57);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 479);
  }

  else
  {
    v10 = *(this + 58);
  }

  v11 = *(this + 719);
  if (v11 >= 0)
  {
    v12 = this + 696;
  }

  else
  {
    v12 = *(this + 87);
  }

  v13 = *(this + 88);
  if (v11 >= 0)
  {
    v14 = *(this + 719);
  }

  else
  {
    v14 = *(this + 88);
  }

  v15 = mlir::DictionaryAttr::get(v2, 0, 0);
  v17 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(v2, v9, v10, v12, v14, v15, v3, v16, &byte_25D0A27DF, 0);
  v18 = *(((v29 + 16 * ((*(v29 + 11) >> 23) & 1) + ((*(v29 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v29 + 10) + 8);
  if (v18)
  {
    v19 = v18 - 8;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v19 + 40);
  v27 = v19;
  v28 = v20;
  v21 = *(v29 + 3);
  v22 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecOp,void>::id, *(**v21 + 32));
  if ((v23 & 1) == 0)
  {
    v33 = 1283;
    v32[2] = "coreml.target_spec";
    v32[3] = 18;
    v31 = 259;
    llvm::operator+(v32, &v30, v35);
    llvm::report_fatal_error(v35, 1);
  }

  v35[0] = v21;
  v35[1] = v22;
  v35[2] = &v36;
  v35[3] = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v39[4] = v40;
  v39[5] = 0x400000000;
  v40[8] = 4;
  v40[9] = v41;
  v40[10] = 0x100000000;
  v41[1] = v42;
  v41[2] = 0x100000000;
  v42[2] = 0;
  v42[1] = 0;
  v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v42[4] = 0;
  v42[6] = 0;
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(v35) = v17;
  v24 = mlir::Operation::create(v35);
  mlir::OpBuilder::insert(v26, v24);
  mlir::OperationState::~OperationState(v35);
LABEL_32:
  v25 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_116InsertTargetSpec14runOnOperationEvE3__0NSC_6CoreML12TargetSpecOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(void *****a1, uint64_t a2)
{
  v6[26] = *MEMORY[0x277D85DE8];
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecOp,void>::id)
  {
    v2 = ***a1;
    v4 = "target_spec op already exists in module.";
    v5 = 259;
    mlir::Operation::emitError(v6, v2, &v4);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v6);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::MarkCompositeOpsForInliningPass::~MarkCompositeOpsForInliningPass(_anonymous_namespace_::MarkCompositeOpsForInliningPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MarkCompositeOpsForInliningPass::runOnOperation(_anonymous_namespace_::MarkCompositeOpsForInliningPass *this)
{
  v55[8] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v39[0] = *(***(v2 + 24) + 32);
  v39[1] = 0;
  v40 = 0uLL;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v47 = v37;
  v48 = &v41;
  v49 = &v44;
  v35[0] = &v47;
  if (!mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_131MarkCompositeOpsForInliningPass14runOnOperationEvE3__0NS1_4ODIE8Compiler6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v35, 1))
  {
    v36 = 257;
    mlir::Operation::emitError(&v47, v2, v35);
    if (v47)
    {
      mlir::Diagnostic::operator<<<68ul>(&v48, "unable to walk over all graphs and mark composite ops as inlineable");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
    *(this + 5) |= 4uLL;
  }

  if (v42)
  {
    if (v43)
    {
      v3 = 8 * v43;
      v4 = v41;
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v4;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v4 = v41;
    }

    v5 = &v41[v43];
    while (v4 != v5)
    {
      v6 = v4;
      v7 = v4 + 1;
      v4 = v5;
      if (v7 != v5)
      {
        v4 = v7;
        while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          if (++v4 == v5)
          {
            v4 = v5;
            break;
          }
        }
      }

      v34 = *v6;
      v8 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(&v34, v37);
      if (v8)
      {
        if (*(v8[6] + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v33 = v9;
      v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::doFind<mlir::ODIE::Compiler::CoreML::GraphOp>(&v44, &v33);
      if (v10 && v10 != &v44[v46])
      {
        v11 = mlir::Operation::clone(v33, 3);
        SymbolTable = mlir::SymbolTableCollection::getSymbolTable(v37, v2);
        mlir::SymbolTable::insert(SymbolTable, v11, v33);
        v40 = vextq_s8(*(v34 + 8), *(v34 + 8), 8uLL);
        if ((*(v34 + 46) & 0x80) != 0)
        {
          v13 = *(v34 + 17);
          v14 = *(v34 + 9) & 0xFFFFFFFFFFFFFFF9 | 2;
        }

        else
        {
          v13 = 0;
          v14 = 2;
        }

        v15 = *(v34 + 3);
        v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(v39, *(**v15 + 32));
        v47 = v15;
        v48 = v16;
        v49 = v51;
        v50 = 0x400000000;
        v51[4] = v52;
        v51[5] = 0x400000000;
        v52[4] = v53;
        v52[5] = 0x400000000;
        v53[8] = 4;
        v53[9] = v54;
        v53[10] = 0x100000000;
        v54[1] = v55;
        v54[2] = 0x100000000;
        v55[1] = 0;
        v55[2] = 0;
        v55[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v55[4] = 0;
        v55[6] = 0;
        mlir::ODIE::Compiler::CoreML::InvokeOp::build(v39, &v47, v11, v14, v13);
        v17 = mlir::Operation::create(&v47);
        mlir::OpBuilder::insert(v39, v17);
        v18 = *(*(v17 + 6) + 16);
        mlir::OperationState::~OperationState(&v47);
        if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        v20 = *(v34 + 9);
        v21 = (v34 - 16);
        if (!v20)
        {
          v21 = 0;
        }

        v35[0] = v21;
        v35[1] = v20;
        v22 = *(v19 + 9);
        v23 = (v19 - 16);
        if (!v22)
        {
          v23 = 0;
        }

        v47 = v23;
        v48 = v22;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v35, &v47);
        v24 = v34;
        if (*(v34 + 2))
        {
          *(v34 + 2) = 0;
          v26 = *v24;
          v25 = *(v24 + 1);
          *v25 = *v24;
          *(v26 + 8) = v25;
          *v24 = 0;
          *(v24 + 1) = 0;
        }

        mlir::Operation::destroy(v24);
      }
    }
  }

LABEL_40:
  if (v45)
  {
    if (v46)
    {
      v27 = 8 * v46;
      v28 = v44;
      while ((*v28 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v28;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v28 = v44;
    }

    v29 = &v44[v46];
    if (v28 != v29)
    {
LABEL_48:
      v30 = *v28++;
      *(v30 + 16 * ((*(v30 + 44) >> 23) & 1) + 88) = 0;
      mlir::Operation::removeAttr(v30, "composite_op", 0xC);
      while (v28 != v29)
      {
        if ((*v28 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v28 != v29)
          {
            goto LABEL_48;
          }

          break;
        }

        ++v28;
      }
    }
  }

LABEL_53:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v37);
  MEMORY[0x25F891030](v37[0], 8);
  MEMORY[0x25F891030](v41, 8);
  result = MEMORY[0x25F891030](v44, 8);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_131MarkCompositeOpsForInliningPass14runOnOperationEvE3__0NS1_4ODIE8Compiler6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t *a1, mlir::ODIE::Compiler *a2)
{
  v19[25] = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    v4 = *a1;
    v17 = a2;
    v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(&v17, *v4);
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = *(v5[6] + 16);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
    v9 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? v5 : 0;
    v16 = v9;
    if (!v8)
    {
      goto LABEL_8;
    }

    Attr = mlir::Operation::getAttr(v5, "composite_op", 0xCuLL);
    if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      goto LABEL_8;
    }

    if (mlir::ODIE::Compiler::isOperationDelegated(v17, v12))
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v18, *(v4 + 8), &v17);
LABEL_8:
      result = 1;
      goto LABEL_9;
    }

    if (*(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 88))
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(v4 + 16), &v16, &v18);
      goto LABEL_8;
    }

    v15[16] = 257;
    mlir::Operation::emitError(&v18, v6, v15);
    if (v18)
    {
      mlir::Diagnostic::operator<<<14ul>(v19, "composite op ");
    }

    v13 = mlir::Operation::getAttr(v6, "composite_op", 0xCuLL);
    if (v13)
    {
      if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    if (v18)
    {
      mlir::Diagnostic::operator<<(v19, v14);
      if (v18)
      {
        mlir::Diagnostic::operator<<<35ul>(v19, " does not have noinline attribute.");
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    result = 0;
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::InvokeOp>(*a2, *(a2 + 16), *a3, &v12);
  v7 = v12;
  if (result)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (4 * v9 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_10;
  }

  if (v10 + ~v9 - *(a2 + 12) <= v10 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::InvokeOp>(*a2, *(a2 + 16), *a3, &v13);
    v9 = *(a2 + 8);
    v7 = v13;
  }

  *(a2 + 8) = v9 + 1;
  if (*v7 != -4096)
  {
    --*(a2 + 12);
  }

  *v7 = *a3;
  v8 = 1;
LABEL_8:
  v11 = *a2 + 8 * *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::InvokeOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 8 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 8 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

char *llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 8;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::InvokeOp>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::GraphOp>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::InsertIntoBucketImpl<mlir::ODIE::Compiler::CoreML::GraphOp>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::InsertIntoBucketImpl<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::GraphOp>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::GraphOp>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::doFind<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = v4 & (v2 - 1);
    v8 = *(*a1 + 8 * v7);
    if (*a2 == v8)
    {
      return v3 + 8 * v7;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v3 + 8 * v7);
      if (*a2 == v8)
      {
        return v3 + 8 * v7;
      }
    }
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::MarkMutableConstantsBase<anonymous namespace::MarkMutableConstantsPass>::MarkMutableConstantsBase(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
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
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *a1 = &unk_286EA47C8;
  v2 = a1 + 336;
  *&v7 = "The action to take when we encounter a graph with constants marked as 'mutable'";
  *(&v7 + 1) = 79;
  v5 = 1;
  v6 = &v5;
  __src[0] = "hoistToArg";
  __src[1] = 10;
  v12 = "hoist mutable weights to graph arguments";
  v13 = 40;
  v14 = "insertOptimizationBarrier";
  v15 = 25;
  v11 = 0;
  v16 = 1;
  v17 = "insert an optimization barrier after each mutable weight";
  v18 = 56;
  v8[0] = v9;
  v8[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(v8, __src, &v19);
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::ODIE::Compiler::Action>,llvm::cl::ValuesClass>(v2, (a1 + 144), "action", 6, &v7, &v6, v8);
  *(a1 + 336) = &unk_286EA4838;
  *(a1 + 928) = &unk_286EA48B8;
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void anonymous namespace::MarkMutableConstantsPass::~MarkMutableConstantsPass(_anonymous_namespace_::MarkMutableConstantsPass *this)
{
  *this = &unk_286EA47C8;
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA47C8;
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MarkMutableConstantsPass::runOnOperation(_anonymous_namespace_::MarkMutableConstantsPass *this)
{
  v84[8] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  mlir::CallGraph::CallGraph(v67, v2);
  if (*(this + 114))
  {
    goto LABEL_22;
  }

  LODWORD(v55) = 0;
  v56 = 0;
  v57 = 0;
  LODWORD(v58) = 0;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(&v55, v69);
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v55);
  v54 = 0;
  v52 = 0u;
  *__p = 0u;
  *v50 = 0u;
  *v51 = 0u;
  memset(v49, 0, sizeof(v49));
  if (!llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(&v55, v49))
  {
LABEL_9:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v51[1])
    {
      *&v52 = v51[1];
      operator delete(v51[1]);
    }

    if (v50[0])
    {
      v50[1] = v50[0];
      operator delete(v50[0]);
    }

    MEMORY[0x25F891030](*(&v49[0] + 1), 8);
    if (v62)
    {
      *(&v62 + 1) = v62;
      operator delete(v62);
    }

    if (*(&v60 + 1))
    {
      *&v61 = *(&v60 + 1);
      operator delete(*(&v60 + 1));
    }

    if (v59)
    {
      *(&v59 + 1) = v59;
      operator delete(v59);
    }

    MEMORY[0x25F891030](v56, 8);
LABEL_22:
    v43[0] = 0;
    v43[1] = 0;
    v44 = 0;
    v41 = xmmword_2799BED20;
    v42 = xmmword_2799BED10;
    v65 = 0u;
    v66 = 0u;
    *v64 = 0u;
    v76 = &v42;
    v77 = v64;
    v55 = &v76;
    mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_124MarkMutableConstantsPass14runOnOperationEvE3__0NS1_4ODIE8Compiler6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v55, 1);
    v38[0] = *(***(v2 + 24) + 32);
    v38[1] = 0;
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v36[0] = this;
    v36[1] = &v37;
    v36[2] = v38;
    v36[3] = &v41;
    v34[1] = 0;
    v34[0] = 0;
    v35 = 0;
    for (i = *(&v66 + 1); *(&v66 + 1); i = *(&v66 + 1))
    {
      *&v49[0] = *(*(v64[1] + ((v66 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v66 & 0x1FF));
      *&v66 = v66 + 1;
      *(&v66 + 1) = i - 1;
      if (v66 >= 0x400)
      {
        operator delete(*v64[1]);
        v64[1] = v64[1] + 8;
        *&v66 = v66 - 512;
      }

      v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::doFind<mlir::ODIE::Compiler::CoreML::GraphOp>(v34, v49);
      if (!v8 || v8 == v34[0] + 8 * v35)
      {
        Attr = mlir::Operation::getAttr(*&v49[0], v41, *(&v41 + 1));
        if (Attr)
        {
          v10 = Attr;
          if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id && *(this + 114) != 1)
          {
            v11 = *(*&v49[0] + 24);
            LOWORD(v59) = 257;
            emitDiag(v11, 1, &v55, &v76);
            if (v76)
            {
              mlir::Diagnostic::operator<<<22ul>(&v77, "user-specified scope ");
              if (v76)
              {
                LODWORD(v55) = 0;
                v56 = v10;
                v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v79, &v55, 1);
                v13 = v79 + 24 * LODWORD(v80[0]);
                v14 = *v12;
                *(v13 + 16) = *(v12 + 16);
                *v13 = v14;
                ++LODWORD(v80[0]);
                if (v76)
                {
                  mlir::Diagnostic::operator<<<58ul>(&v77, " is unused when hoisting mutable 'constants' to arguments");
                }
              }
            }

            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
          }
        }

        v76 = v36;
        v77 = v49;
        v78 = v67;
        v79 = v43;
        v80[0] = &v41;
        v80[1] = v64;
        mlir::Operation::removeAttr(*&v49[0], v42, *(&v42 + 1));
        mlir::Operation::removeAttr(*&v49[0], v41, *(&v41 + 1));
        llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(v34, v49, &v76);
      }
    }

    SymbolTable = mlir::SymbolTableCollection::getSymbolTable(v43, v2);
    v16 = *SymbolTable;
    v47 = 0;
    v45 = v16;
    v46[0] = 0;
    v46[1] = 0;
    llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::copyFrom(v46, SymbolTable + 8);
    v48 = *(SymbolTable + 32);
    if (v37 == 1 && !mlir::SymbolTable::lookup(&v45, "ANESupport", 0xA))
    {
      v17 = *(((v2 + 16 * ((*(v2 + 44) >> 23) & 1) + ((*(v2 + 44) >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40) + 8);
      if (v17)
      {
        v18 = v17 - 8;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v18 + 40);
      v39 = v18;
      v40 = v19;
      v20 = *(v2 + 24);
      v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id, *(**v20 + 32));
      if ((v22 & 1) == 0)
      {
        LOWORD(v59) = 1283;
        v57 = "coreml.import";
        v58 = 13;
        LOWORD(v50[0]) = 259;
        llvm::operator+(&v55, v49, &v76);
        llvm::report_fatal_error(&v76, 1);
      }

      v76 = v20;
      v77 = v21;
      v78 = v80;
      v79 = 0x400000000;
      v80[4] = v81;
      v80[5] = 0x400000000;
      v81[4] = v82;
      v81[5] = 0x400000000;
      v82[8] = 4;
      v82[9] = v83;
      v82[10] = 0x100000000;
      v83[1] = v84;
      v83[2] = 0x100000000;
      v84[2] = 0;
      v84[1] = 0;
      v84[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v84[4] = 0;
      v84[6] = 0;
      mlir::ODIE::Compiler::CoreML::ImportOp::build(v38, &v76, "ANESupport", 10);
      v23 = mlir::Operation::create(&v76);
      mlir::OpBuilder::insert(v38, v23);
      mlir::OperationState::~OperationState(&v76);
    }

    MEMORY[0x25F891030](v46[0], 8);
    MEMORY[0x25F891030](v34[0], 8);
    v24 = v64[1];
    v25 = v65;
    *(&v66 + 1) = 0;
    v26 = (v65 - v64[1]) >> 3;
    if (v26 >= 3)
    {
      do
      {
        operator delete(*v24);
        v25 = v65;
        v24 = (v64[1] + 8);
        v64[1] = v24;
        v26 = (v65 - v24) >> 3;
      }

      while (v26 > 2);
    }

    if (v26 == 1)
    {
      v27 = 256;
    }

    else
    {
      if (v26 != 2)
      {
        goto LABEL_51;
      }

      v27 = 512;
    }

    *&v66 = v27;
LABEL_51:
    if (v24 != v25)
    {
      do
      {
        v28 = *v24++;
        operator delete(v28);
      }

      while (v24 != v25);
      if (v65 != v64[1])
      {
        *&v65 = v65 + ((v64[1] - v65 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (v64[0])
    {
      operator delete(v64[0]);
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v43);
    v29 = v43[0];
    goto LABEL_58;
  }

  while (1)
  {
    v3 = **(&v60 + 1);
    if (v61 - *(&v60 + 1) > 8uLL)
    {
      break;
    }

    v4 = *(v3 + 14);
    if (v4)
    {
      v5 = v3[6];
      v6 = 8 * v4;
      while (v3 != (*v5 & 0xFFFFFFFFFFFFFFF8))
      {
        ++v5;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      break;
    }

LABEL_8:
    llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v55);
    if (!llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(&v55, v49))
    {
      goto LABEL_9;
    }
  }

  if (v3 && (v32 = *v3) != 0 && (v33 = *(v32 + 16)) != 0)
  {
    LOWORD(v48) = 257;
    mlir::Operation::emitError(v64, v33, &v45);
    if (v64[0])
    {
      mlir::Diagnostic::operator<<<65ul>(&v64[1], "found cyclic call graph unsuitable for hoistToArg beginning here");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v76, v64);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v64);
    if (v61 != *(&v60 + 1) + 8)
    {
      mlir::Diagnostic::attachNote(&v77, *(*(**(*(&v60 + 1) + 8) + 16) + 24), 1);
    }

    *(this + 5) |= 4uLL;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  }

  else
  {
    LOWORD(v66) = 257;
    mlir::Operation::emitError(&v76, v2, v64);
    if (v76)
    {
      mlir::Diagnostic::operator<<<50ul>(&v77, "found cyclic call graph unsuitable for hoistToArg");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
    *(this + 5) |= 4uLL;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v51[1])
  {
    *&v52 = v51[1];
    operator delete(v51[1]);
  }

  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }

  MEMORY[0x25F891030](*(&v49[0] + 1), 8);
  if (v62)
  {
    *(&v62 + 1) = v62;
    operator delete(v62);
  }

  if (*(&v60 + 1))
  {
    *&v61 = *(&v60 + 1);
    operator delete(*(&v60 + 1));
  }

  if (v59)
  {
    *(&v59 + 1) = v59;
    operator delete(v59);
  }

  v29 = v56;
LABEL_58:
  MEMORY[0x25F891030](v29, 8);
  if (v74 != &v75)
  {
    free(v74);
  }

  if ((v72[40] & 1) == 0)
  {
    MEMORY[0x25F891030](v73, 8);
  }

  if (v71 != v72)
  {
    free(v71);
  }

  if ((v69[8] & 1) == 0)
  {
    MEMORY[0x25F891030](v70, 8);
  }

  llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>::~SmallVector(&v68);
  result = MEMORY[0x25F891030](v67[0], 8);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Pass::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::Pass::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1 - 592);
}

{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1 - 592);

  JUMPOUT(0x25F891040);
}

uint64_t *_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_124MarkMutableConstantsPass14runOnOperationEvE3__0NS1_4ODIE8Compiler6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *result, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = *result;
    v5[0] = a2;
    result = mlir::Operation::hasAttr(a2, **v4, *(*v4 + 8));
    if (result)
    {
      return std::deque<mlir::ODIE::Compiler::CoreML::GraphOp>::push_back(*(v4 + 8), v5);
    }
  }

  return result;
}

void *std::deque<mlir::ODIE::Compiler::CoreML::GraphOp>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v7 = result[4];
  v8 = result[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x200)
    {
      v9 = result[3];
      v10 = v9 - *result;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *result)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::GraphOp *>>(v12);
    }

    result[4] = v7 - 512;
    v13 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<mlir::ODIE::Compiler::CoreML::GraphOp *>::emplace_back<mlir::ODIE::Compiler::CoreML::GraphOp *&>(result, &v13);
    v4 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*&v4[(v8 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::__split_buffer<mlir::ODIE::Compiler::CoreML::GraphOp *>::emplace_back<mlir::ODIE::Compiler::CoreML::GraphOp *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::GraphOp *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::GraphOp *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::MarkMutableConstantsPass::runOnOperation(void)::$_1>(uint64_t **a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v5 = *a1;
    v6 = *a1[1];
    v7 = **a1;
    v62 = 0;
    v63 = 0;
    *&v67 = &v62;
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v67, a2))
    {
      v8 = (*(v63 + 16))(v63, v62);
      v10 = (*(v9 + 8))(v9, v8);
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v23 = v10[2], v23 != 1) && (v23 != 32 ? (v24 = v23 == 1073741856) : (v24 = 1), !v24))
      {
        if (*(v7 + 456) == 1)
        {
          *v5[1] = 1;
          v11 = v5[2];
          Attr = mlir::Operation::getAttr(v6, *v5[3], *(v5[3] + 8));
          if (Attr)
          {
            if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v14 = Attr;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          *(v11 + 16) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
          *&v67 = "ANESupport";
          v70 = 259;
          v26 = mlir::StringAttr::get(*v11, &v67, v13);
          v64[0] = "markMutable";
          v65 = 259;
          v28 = mlir::StringAttr::get(*v11, v64, v27);
          v66[0] = mlir::SymbolRefAttr::get(v28, 0, 0, v29);
          v31 = mlir::SymbolRefAttr::get(v26, v66, 1, v30);
          v32 = *(**v11 + 384);
          *&v67 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
          v33 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v32 + 232), &v67);
          v34 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
          *&v67 = v34;
          if (v34)
          {
            v35 = *v34;
            v36 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
            v34 = mlir::detail::InterfaceMap::lookup(v35 + 8, v36);
          }

          *(&v67 + 1) = v34;
          v64[0] = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(*(**v31 + 32), v31, v33, &v67, 1);
          v64[1] = v37;
          v38 = *(a2 + 24);
          v39 = *(a2 + 36);
          v40 = a2 - 16;
          if (!v39)
          {
            v40 = 0;
          }

          v67 = v40;
          v68 = v40;
          v69 = v39;
          v66[0] = v40;
          v66[1] = v39;
          v41 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CallOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::TypedAttr &,mlir::ResultRange>(v11, v38, &v67, v64, v66);
          v42 = v41;
          if (v14)
          {
            mlir::Operation::setAttr(v41, "scope", 5, v14);
          }

          v43 = *(a2 + 36);
          v44 = *(v42 + 36);
          if (v43)
          {
            v45 = a2 - 16;
          }

          else
          {
            v45 = 0;
          }

          if (v44)
          {
            v46 = (v42 - 16);
          }

          else
          {
            v46 = 0;
          }

          if (v43 && v44)
          {
            v47 = 0;
            v48 = v44 - 1;
            v49 = v43 - 1;
            v50 = a2 - 16;
            v51 = (v42 - 16);
            while (1)
            {
              v52 = v45;
              v53 = v46;
              if (!v47)
              {
                goto LABEL_56;
              }

              v54 = *(a2 - 8) & 7;
              v55 = a2 - 16;
              v56 = v47;
              if (v54 != 6)
              {
                v57 = (5 - v54);
                v52 = v50;
                v56 = v47 - v57;
                if (v47 <= v57)
                {
                  goto LABEL_51;
                }

                v55 = a2 - 16 - 16 * v57;
              }

              v52 = v55 - 24 * v56;
LABEL_51:
              v58 = *(v42 - 8) & 7;
              v59 = v42 - 16;
              v60 = v47;
              if (v58 == 6)
              {
                goto LABEL_54;
              }

              v61 = (5 - v58);
              v60 = v47 - v61;
              if (v47 > v61)
              {
                v59 = v42 - 16 - 16 * v61;
LABEL_54:
                v53 = (v59 - 24 * v60);
                goto LABEL_56;
              }

              v53 = v51;
LABEL_56:
              *&v67 = v52;
              *(&v67 + 1) = v53;
              mlir::Value::replaceAllUsesExcept(&v67, v53, v42);
              if (v49 != v47)
              {
                v51 -= 2;
                v50 -= 16;
                v20 = v48 == v47++;
                if (!v20)
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        else
        {
          raiseToArg(a2);
        }
      }
    }
  }

  else
  {
    v15 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
    if (v15)
    {
      v17 = mlir::CallGraph::resolveCallable(a1[2], v15, v16, a1[3]);
      if (v17)
      {
        if (*v17)
        {
          v18 = *(*v17 + 16);
          if (v18)
          {
            v19 = *(*(v18 + 48) + 16);
            v20 = v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
            v21 = v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? *(*v17 + 16) : 0;
            *&v67 = v21;
            if (v20)
            {
              v22 = mlir::Operation::getAttr(*a1[1], *a1[4], a1[4][1]);
              if (v22 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
              {
                mlir::Operation::setAttr(v18, *a1[4], a1[4][1], v22);
              }

              std::deque<mlir::ODIE::Compiler::CoreML::GraphOp>::push_back(a1[5], &v67);
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void raiseToArg(mlir::Operation *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = a1;
  while (1)
  {
    v3 = *(v2 + 2);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v4)
    {
      break;
    }

    v2 = *(v4 + 16);
    if (!v2 || *(*(v2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v2 = 0;
LABEL_8:
  v5 = *(v2 + 2);
  v6 = *(***(v2 + 3) + 32);
  v43[0] = v6;
  v43[1] = 0;
  v44 = v5;
  v45 = v2;
  Attr = mlir::Operation::getAttr(a1, "coreml.constant_uid", 0x13uLL);
  if (!Attr || (IntegerAttr = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id))
  {
    v9 = mlir::IntegerType::get(v6, 64, 2);
    IntegerAttr = mlir::Builder::getIntegerAttr(v43, v9, a1);
    mlir::Operation::setAttr(a1, "coreml.constant_uid", 0x13, IntegerAttr);
  }

  v10 = v2 + 64;
  v11 = *(v2 + 11);
  v12 = (v11 >> 23) & 1;
  v13 = *(v2 + 2 * v12 + 8);
  if (!v13 || (v14 = *(v13 + 16)) == 0)
  {
LABEL_24:
    v21 = (&v10[16 * v12 + 7 + ((v11 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10);
    v22 = *(a1 - 1);
    if ((v22 & 7) == 7)
    {
      v23 = 0;
    }

    else
    {
      v23 = a1 - 16;
    }

    if ((v22 & 7) == 7)
    {
      goto LABEL_28;
    }

    v25 = *(v23 + 1) & 7;
    if (v25 == 6)
    {
      v26 = &v23[24 * *(v23 + 2) + 120];
      if (!v26)
      {
LABEL_28:
        v24 = (a1 + 16);
        goto LABEL_34;
      }
    }

    else
    {
      v26 = &v23[16 * v25 + 16];
    }

    v24 = (v26 + 24);
LABEL_34:
    v27 = *(***(v2 + 3) + 32);
    v28 = *v24;
    v29 = *(v21 + 8);
    if (v29)
    {
      v30 = v29 - 8;
    }

    else
    {
      v30 = 0;
    }

    mlir::Block::addArgument(v30);
  }

  v15 = 0;
  v16 = *(v13 + 8);
  v17 = v16 + 8 * v14;
  while (1)
  {
    if (*v16)
    {
      v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*v16 + 8), *(*v16 + 8) + 16 * *(*v16 + 16), "coreml.constant_uid", 0x13uLL);
      if (v19)
      {
        v20 = *(v18 + 8);
        if (v20 && *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      if (IntegerAttr == v20)
      {
        break;
      }
    }

    ++v15;
    v16 += 8;
    if (v16 == v17)
    {
      v11 = *(v2 + 11);
      v12 = (v11 >> 23) & 1;
      goto LABEL_24;
    }
  }

  v41 = *((&v10[16 * ((*(v2 + 11) >> 23) & 1) + 7 + ((*(v2 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10) + 8);
  if (v41)
  {
    v42 = v41 - 8;
  }

  else
  {
    v42 = 0;
  }

  v47 = *(*(v42 + 48) + 8 * v15);
  mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(a1 - 2, &v47);
  v33 = v2;
  while (1)
  {
    v31 = *(v33 + 2);
    if (!v31)
    {
      break;
    }

    v32 = *(v31 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v32)
    {
      break;
    }

    v33 = *(v32 + 16);
    if (!v33 || *(*(v33 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_44;
    }
  }

  v33 = 0;
LABEL_44:
  mlir::SymbolTable::getSymbolUses(v2, v33, &v47);
  if (v49 == 1)
  {
    v34 = v47;
    v35 = v48;
    if (v47 == v48)
    {
      goto LABEL_51;
    }

    do
    {
      v36 = *v34;
      v44 = *(*v34 + 16);
      v45 = v36;
      v37 = mlir::OpBuilder::clone(v43, a1);
      v38 = v37;
      if ((*(v36 + 46) & 0x80) != 0)
      {
        v39 = *(v36 + 68);
        v46 = v37 - 4;
        mlir::detail::OperandStorage::setOperands((v36 + 64), v36, v39, 0, &v46, 1);
      }

      raiseToArg(v38);
      v34 += 2;
    }

    while (v34 != v35);
    if (v49)
    {
      v34 = v47;
LABEL_51:
      if (v34)
      {
        v48 = v34;
        operator delete(v34);
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}