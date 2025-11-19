mlir::BytecodeReader::Impl *std::unique_ptr<mlir::BytecodeReader::Impl>::reset[abi:nn200100](mlir::BytecodeReader::Impl **a1, mlir::BytecodeReader::Impl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    mlir::BytecodeReader::Impl::~Impl(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::~ConvertCoreToExec(mlir::ODIE::Compiler::_anonymous_namespace_::ConvertCoreToExec *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::impl::ConvertCoreToExecBase<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec>::getDependentDialects(uint64_t a1, uint64_t a2)
{
  mlir::DialectRegistry::insert<mlir::func::FuncDialect>(a2);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::Exec::ExecDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(a2);
}

void mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(mlir::ODIE::Compiler::_anonymous_namespace_::ConvertCoreToExec *this, uint64_t a2, const llvm::Twine *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(***(v4 + 24) + 32);
  v68 = "3500.27.2";
  LOWORD(v72) = 259;
  v6 = mlir::StringAttr::get(v5, &v68, a3);
  if (*(v6 + 24))
  {
    mlir::Operation::setAttr(v4, "coreml.odie-version", 0x13, v6);
  }

  LOWORD(v72) = 257;
  v8 = mlir::StringAttr::get(v5, &v68, v7);
  if (*(v8 + 24))
  {
    mlir::Operation::setAttr(v4, "coreml.odie-build", 0x11, v8);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0x800000000;
  v29 = &v33;
  v30 = 4;
  v31 = 0;
  v32 = 1;
  v9 = *(this + 5);
  v68 = &v34;
  if (HIDWORD(v35))
  {
    __p = 0;
    v53 = 0;
    v54 = 0;
    v69 = 0;
    v73 = 0;
    v74 = 1;
    v72 = 0;
    v70 = 0;
    v71 = 0;
    v68 = &unk_286E79D28;
    p_p = &__p;
    llvm::raw_ostream::SetUnbuffered(&v68);
    if (v35)
    {
        ;
      }
    }

    else
    {
      i = v34;
    }

    v12 = &v34[v35];
    if (i != v12)
    {
      v14 = *i;
      v13 = i + 1;
      llvm::raw_ostream::operator<<(&v68, v14 + 1, *v14);
      while (!*v13 || *v13 + 1 == 0)
      {
        ++v13;
      }

      while (v13 != v12)
      {
        if ((v71 - v72) > 1)
        {
          *v72++ = 8236;
        }

        else
        {
          llvm::raw_ostream::write(&v68, ", ", 2uLL);
        }

        v16 = *v13++;
        llvm::raw_ostream::operator<<(&v68, v16 + 1, *v16);
        while (!*v13 || *v13 + 1 == 0)
        {
          ++v13;
        }
      }
    }

    v18 = *((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24);
    std::operator+<char>();
    WORD4(v39) = 260;
    v37 = &v82;
    emitDiag(v18, 1, &v37, v81);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v81);
    if ((v84[7] & 0x80000000) != 0)
    {
      operator delete(v82);
    }

    llvm::raw_ostream::~raw_ostream(&v68);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }
  }

  mlir::TypeConverter::TypeConverter(&v68);
  v37 = &unk_286EA0418;
  *&__src = &v68;
  *&v39 = &v37;
  llvm::SmallVectorImpl<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>::emplace_back<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(&v69, &v37);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v79);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v80);
  std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::~__value_func[abi:nn200100](&v37);
  v37 = &unk_286EA0460;
  *&__src = &v68;
  *&v39 = &v37;
  llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(v78, &v37);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v79);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v80);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](&v37);
  v37 = &unk_286EA04A8;
  *&__src = &v68;
  *&v39 = &v37;
  llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(v78, &v37);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v79);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v80);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](&v37);
  v37 = &unk_286EA04F0;
  *&__src = &v68;
  *&v39 = &v37;
  llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(v78, &v37);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v79);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v80);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](&v37);
  v37 = &unk_286EA0538;
  *&__src = &v68;
  *&v39 = &v37;
  llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(v78, &v37);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v79);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v80);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](&v37);
  v37 = &unk_286EA0580;
  LOBYTE(__src) = 0;
  *&v39 = &v37;
  llvm::SmallVectorImpl<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::emplace_back<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(&v76, &v37);
  std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](&v37);
  v37 = &unk_286EA0580;
  LOBYTE(__src) = 0;
  *&v39 = &v37;
  llvm::SmallVectorImpl<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::emplace_back<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(&v77, &v37);
  std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](&v37);
  v53 = 0;
  v54 = 0;
  __p = &unk_286E99B78;
  v55 = 0;
  v61 = 0;
  v60 = 0;
  v56 = v58;
  v57 = 0;
  v58[0] = 0;
  v58[1] = 0;
  v59 = 0;
  v62 = 0x1000000000;
  v63 = 0;
  v64 = 0;
  v65 = 0x2800000000;
  v66 = 0;
  v67 = v5;
  v82 = "builtin";
  v83 = 7;
  v37 = &__src + 8;
  *&__src = 0x200000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v37, &v82, v84);
  mlir::ConversionTarget::setDialectAction(&__p, v37, __src, 0);
  if (v37 != &__src + 8)
  {
    free(v37);
  }

  v82 = "exec";
  v83 = 4;
  v37 = &__src + 8;
  *&__src = 0x200000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v37, &v82, v84);
  mlir::ConversionTarget::setDialectAction(&__p, v37, __src, 0);
  if (v37 != &__src + 8)
  {
    free(v37);
  }

  v51[0] = &unk_286EA05C8;
  v51[1] = &v68;
  v51[3] = v51;
  mlir::ConversionTarget::addDynamicallyLegalDialect<>(&__p, v51, "scf", 3);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v51);
  v50[0] = &unk_286EA0610;
  v50[1] = &v68;
  v50[3] = v50;
  mlir::ConversionTarget::addDynamicallyLegalDialect<>(&__p, v50, "func", 4);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v50);
  mlir::OperationName::OperationName(&v82, "builtin.unrealized_conversion_cast", 0x22, v67);
  v37 = v82;
  *llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](&v53, &v37) = 0;
  v82 = "coreml";
  v83 = 6;
  v37 = &__src + 8;
  *&__src = 0x200000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v37, &v82, v84);
  mlir::ConversionTarget::setDialectAction(&__p, v37, __src, 2);
  if (v37 != &__src + 8)
  {
    free(v37);
  }

  mlir::OperationName::OperationName(&v82, "coreml.llo.class", 0x10, v67);
  v37 = v82;
  *llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](&v53, &v37) = 0;
  mlir::OperationName::OperationName(&v82, "coreml.llo.func", 0xF, v67);
  v37 = v82;
  *llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](&v53, &v37) = 0;
  mlir::OperationName::OperationName(&v82, "coreml.module", 0xD, v67);
  v37 = v82;
  *llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](&v53, &v37) = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v19 = *(this + 5);
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v37 = v21;
  v37 = *(this + 6);
  v20 = *(mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(&v37) + 24);
  __src = 0u;
  v39 = 0u;
  v37 = v5;
  v40 = v42;
  v41 = 0x600000000;
  v42[6] = 0;
  v42[7] = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0x2800000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x2800000000;
  operator new();
}

size_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_2>(llvm::StringMapImpl **a1, uint64_t a2)
{
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>(void)::Empty>,void>::resolveTypeID();
  result = (*(**(a2 + 48) + 32))(*(a2 + 48), v4);
  if (result)
  {
    v6 = *a1;
    v12 = *(a2 + 48);
    v7 = mlir::OperationName::stripDialect(&v12);
    v9 = v8;
    v11 = llvm::xxh3_64bits(v7, v8, v10);
    return llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v6, v7, v9, v11);
  }

  return result;
}

uint64_t mlir::OperationName::stripDialect(mlir::OperationName *this)
{
  *v2 = *(*(*this + 8) + 16);
  v5 = 46;
  llvm::StringRef::split(v2, &v5, 1uLL, v3);
  return v4;
}

mlir::TypeConverter *mlir::TypeConverter::TypeConverter(mlir::TypeConverter *this)
{
  *this = &unk_286EA03F8;
  *(this + 1) = this + 24;
  *(this + 2) = 0x400000000;
  *(this + 19) = this + 168;
  *(this + 20) = 0x200000000;
  *(this + 29) = this + 248;
  *(this + 30) = 0x200000000;
  *(this + 39) = this + 328;
  *(this + 40) = 0x200000000;
  *(this + 49) = this + 408;
  *(this + 50) = 0x200000000;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 520));
  *(this + 66) = 0;
  return this;
}

void mlir::TypeConverter::~TypeConverter(mlir::TypeConverter *this)
{
  mlir::TypeConverter::~TypeConverter(this);

  JUMPOUT(0x25F891040);
}

{
  *this = &unk_286EA03F8;
  v2 = *(this + 65);
  pthread_rwlock_destroy(v2);
  free(v2);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::destroyAll(this + 496);
  MEMORY[0x25F891030](*(this + 62), 8);
  MEMORY[0x25F891030](*(this + 59), 8);
  llvm::SmallVector<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,2u>::~SmallVector(this + 392);
  llvm::SmallVector<std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::TypeRange,mlir::ValueRange,mlir::Location,mlir::Type)>,2u>::~SmallVector(this + 312);
  llvm::SmallVector<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,2u>::~SmallVector(this + 232);
  llvm::SmallVector<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,2u>::~SmallVector(this + 152);
  llvm::SmallVector<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,4u>::~SmallVector(this + 8);
}

char *llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::init(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = llvm::allocate_buffer((16 * v4), 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 16;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

_DWORD *llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::init(_DWORD *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    result[4] = v4;
    result = llvm::allocate_buffer((40 * v4), 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = v2[4];
    if (v5)
    {
      v6 = 0;
      v7 = 40 * v5 - 40;
      v8 = vdupq_n_s64(v7 / 0x28);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v9.i8[0])
        {
          *result = -4096;
        }

        if (v9.i8[4])
        {
          *(result + 5) = -4096;
        }

        v6 += 2;
        result += 20;
      }

      while (((v7 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    result[4] = 0;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>::emplace_back<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::growAndEmplaceBack<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(a1, a2);
  }

  else
  {
    std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::__value_func[abi:nn200100](*a1 + 32 * v3, a2);
    v4 = (*(a1 + 8) + 1);
    *(a1 + 8) = v4;
    return *a1 + 32 * v4 - 32;
  }
}

char *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(char *result)
{
  if (*(result + 1))
  {
    v1 = *(result + 4);
    if (v1 <= 4 * *(result + 2) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0xFFFFFFFFFFFFFFFLL;
        v4 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 16);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_25D0A0500)));
          if (v8.i8[0])
          {
            *(v7 - 2) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 4;
        }

        while (v5 != v2);
      }

      *(result + 1) = 0;
    }

    else
    {
      return llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::shrink_and_clear(result);
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(_DWORD *a1)
{
  v2 = a1[2];
  if (!v2 && !a1[3])
  {
    return;
  }

  v3 = a1[4];
  if (v3 <= 4 * v2 || v3 < 0x41)
  {
    if (!v3)
    {
LABEL_16:
      *(a1 + 1) = 0;
      return;
    }

    v4 = 40 * v3;
    v5 = *a1 + 24;
    while (1)
    {
      v6 = *(v5 - 24);
      if (v6 == -8192)
      {
        goto LABEL_14;
      }

      if (v6 != -4096)
      {
        break;
      }

LABEL_15:
      v5 += 40;
      v4 -= 40;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    v7 = *(v5 - 16);
    if (v5 != v7)
    {
      free(v7);
    }

LABEL_14:
    *(v5 - 24) = -4096;
    goto LABEL_15;
  }

  llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear(a1);
}

uint64_t llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::growAndEmplaceBack<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v9);
  std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::__value_func[abi:nn200100](v5 + 32 * *(a1 + 8), a2);
  llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::moveElementsForGrow(a1, v5);
  v6 = v9;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  *(a1 + 12) = v6;
  return v5 + 32 * v7 - 32;
}

uint64_t llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::moveElementsForGrow(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = 32 * v2;
    do
    {
      result = std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::__value_func[abi:nn200100](a2, v5);
      a2 += 32;
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    v7 = *(v4 + 8);
    if (v7)
    {
      v8 = *v4;
      v9 = -32 * v7;
      result = v8 + 32 * v7 - 32;
      do
      {
        result = std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::~__value_func[abi:nn200100](result) - 32;
        v9 += 32;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

char *llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::shrink_and_clear(char *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    *(result + 1) = 0;
    if (v2)
    {
      v6 = 0;
      v7 = v2 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 16);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    MEMORY[0x25F891030](*result, 8);

    return llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::init(v1, v5);
  }

  return result;
}

void llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear(_DWORD *a1)
{
  v2 = a1[2];
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::destroyAll(a1);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a1[4])
  {
    *(a1 + 1) = 0;
    if (v4)
    {
      v5 = 0;
      v6 = *a1;
      v7 = (40 * v4 - 40) / 0x28;
      v8 = vdupq_n_s64(v7);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v9.i8[0])
        {
          *v6 = -4096;
        }

        if (v9.i8[4])
        {
          v6[5] = -4096;
        }

        v5 += 2;
        v6 += 10;
      }

      while (((v7 + 2) & 0xFFFFFFFFFFFFFFELL) != v5);
    }
  }

  else
  {
    MEMORY[0x25F891030](*a1, 8);

    llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::init(a1, v4);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 40 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 40;
      v2 -= 40;
    }

    while (v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_4ODIE8Compiler12_GLOBAL__N_117ConvertCoreToExec14runOnOperationEvE3__5EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSH_15SmallVectorImplIS5_EEEEEE4typeEOSD_EUlS5_SM_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SM_EESO_E4typeESR_EUlS5_SM_E_NS_9allocatorISV_EESN_E7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA0418;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_4ODIE8Compiler12_GLOBAL__N_117ConvertCoreToExec14runOnOperationEvE3__5EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSH_15SmallVectorImplIS5_EEEEEE4typeEOSD_EUlS5_SM_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SM_EESO_E4typeESR_EUlS5_SM_E_NS_9allocatorISV_EESN_EclEOS5_SM_(uint64_t a1, void ***a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    v19 = 0;
    v20 = 0;
    return v19 | (v20 << 8);
  }

  v5 = *v3;
  v6 = *(*v3 + 17);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id)
  {
    goto LABEL_14;
  }

  v8 = v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  if (v8 || v6 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    goto LABEL_14;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v5 + 8, v11))
  {
    goto LABEL_14;
  }

  v22 = *(*v3 + 17);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    goto LABEL_14;
  }

  if (v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v24 = v3;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_27;
    }

    v25 = v24[4];
    if (!v25)
    {
      goto LABEL_28;
    }

    v36 = *(*v25 + 136);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
    {
      goto LABEL_28;
    }

    if (v36 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
LABEL_27:
      v25 = 0;
LABEL_28:
      v26 = 0;
      goto LABEL_29;
    }

    v37 = v25[10];
    if (v37 == 3)
    {
      v26 = 0;
LABEL_63:
LABEL_29:
      v28 = v24[1];
      v27 = v24[2];
      v29 = *(*v24 + 136);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v38 = 3;
      }

      else
      {
        if (v29 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          v30 = 0;
LABEL_48:
          if (v25)
          {
            v39 = *v25;
            v40 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
            v41 = mlir::detail::InterfaceMap::lookup(v39 + 8, v40);
          }

          else
          {
            v41 = 0;
          }

          v35 = mlir::MemRefType::get(v28, v27, v30, v25, v41, v26);
          goto LABEL_52;
        }

        v38 = 1;
      }

      v30 = v24[v38];
      goto LABEL_48;
    }

    v42 = *(**v25 + 32);
    if (v37 == 1)
    {
      v43 = "IOSurface";
    }

    else
    {
      if (v37 != 2)
      {
        v44 = 0;
        v43 = "";
        goto LABEL_62;
      }

      v43 = "MTLBuffer";
    }

    v44 = 9;
LABEL_62:
    v46 = 261;
    v45[0] = v43;
    v45[1] = v44;
    v26 = mlir::StringAttr::get(v42, v45, v13);
    goto LABEL_63;
  }

  if (v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
  {
    v35 = mlir::TypeConverter::convertType(*(a1 + 8), v3[1]);
  }

  else
  {
    if (v22 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
    {
      goto LABEL_14;
    }

    v31 = v3[1];
    v32 = *(*v31 + 136);
    if (v32 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_14;
    }

    v34 = mlir::TypeConverter::convertType(*(a1 + 8), v31);
    v35 = mlir::ODIE::Compiler::Exec::AsyncMemRefType::get(*(**v34 + 32), v34[1], v34[2], v34[3], v34[4], v34[5], v34[6]);
  }

LABEL_52:
  v3 = v35;
  if (!v35)
  {
    v19 = 0;
    goto LABEL_15;
  }

LABEL_14:
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, v3);
  v19 = 1;
LABEL_15:
  v20 = 1;
  return v19 | (v20 << 8);
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::convertTensorEncoding(uint64_t a1, int a2, void *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v23 = v25;
  v24 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<llvm::detail::SafeIntIterator<int,false>,void>(&v23, 0, a2);
  v5 = a3[6];
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = &v6[4 * *(v5 + 16)];
    v20 = v22;
    v21 = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<int const*,void>(&v20, v6, v7);
    llvm::SmallVectorImpl<int>::operator=(&v23, &v20);
    if (v20 != v22)
    {
      free(v20);
    }
  }

  v8 = a3[1];
  v9 = *(**a3 + 32);
  v10 = v23;
  v11 = v24;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[4];
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v19, a1, &v20);
  v16 = mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::get(v9, v10, v11, v8, v12, v13, v14, v15, v20, v21);
  if (v20 != v22)
  {
    free(v20);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void llvm::SmallVectorImpl<int>::append<llvm::detail::SafeIntIterator<int,false>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = a3 - a2 + v7;
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    v7 = *(a1 + 8);
  }

  v9 = a3 - v4;
  if (a3 != v4)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v9 - 1);
    v12 = (*a1 + 4 * v7 + 8);
    do
    {
      v13 = vdupq_n_s64(v10);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A0500)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 2) = v4;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A04F0)))).i32[1])
      {
        *v12 = v4 + 2;
        v12[1] = v4 + 3;
      }

      v10 += 4;
      LODWORD(v4) = v4 + 4;
      v12 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + v6;
}

uint64_t std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,false>::growAndEmplaceBack<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(a1, a2);
  }

  else
  {
    result = std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__value_func[abi:nn200100](*a1 + 32 * v3, a2);
    ++*(a1 + 8);
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,false>::growAndEmplaceBack<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v16);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__value_func[abi:nn200100](v5 + 32 * *(a1 + 8), a2);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v5;
    do
    {
      v9 = std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__value_func[abi:nn200100](v9, v6) + 32;
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = -32 * v10;
      v12 = &v6[32 * v10 - 32];
      do
      {
        v12 = std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](v12) - 32;
        v11 += 32;
      }

      while (v11);
      v6 = *a1;
    }
  }

  v13 = v16;
  if (v6 != v4)
  {
    free(v6);
  }

  *a1 = v5;
  v14 = (*(a1 + 8) + 1);
  *(a1 + 8) = v14;
  *(a1 + 12) = v13;
  return v5 + 32 * v14 - 32;
}

uint64_t std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::DenseResourceElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA0460;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::DenseResourceElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(**a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || *(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    return 0;
  }

  v9 = mlir::TypeConverter::convertType(*(a1 + 8), v6);
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v3 + 24);
  v15 = *(v3 + 40);
  return mlir::DenseResourceElementsAttr::get(v10, v13, &v14) & 0xFFFFFFFFFFFFFFF9 | 2;
}

uint64_t std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::DenseElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA04A8;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::DenseElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(**a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v8 = *(*v3 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    return 0;
  }

  v10 = mlir::TypeConverter::convertType(*(a1 + 8), v6);
  v11 = v10;
  if (v10)
  {
    v12 = *v10;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  }

  else
  {
    v14 = 0;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v11, v14, *(v3 + 32), *(v3 + 40)) & 0xFFFFFFFFFFFFFFF9 | 2;
}

uint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::StringAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA04F0;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::StringAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(**a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || *(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 0;
  }

  v9 = mlir::TypeConverter::convertType(*(a1 + 8), v6);
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v13, *(v3 + 16), *(v3 + 24)) & 0xFFFFFFFFFFFFFFF9 | 2;
}

uint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::RankedTensorType,mlir::ElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA0538;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::RankedTensorType,mlir::ElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  if (!*a3)
  {
    return 0;
  }

  v6 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(*a3);
  v7 = v6;
  v9 = v8;
  if (!v6)
  {
    return 0;
  }

  v10 = v3[4];
  if (!v10 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    return 0;
  }

  v11 = *(**(**v6 + 32) + 616);
  v17 = mlir::TypeConverter::convertType(*(a1 + 8), v3);
  v12 = mlir::BaseMemRefType::operator mlir::ShapedType(&v17);
  v14 = v13;
  v15 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(*(**v7 + 32), v3[1], v3[2]);
  v16 = mlir::ODIE::Compiler::materializeSourceConversion(v11, v7, v9, v12, v14, v15, v10);
  if (v16)
  {
    return v16 & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    return 4;
  }
}

uint64_t llvm::SmallVectorImpl<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::emplace_back<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(a1, a2);
  }

  else
  {
    result = std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__value_func[abi:nn200100](*a1 + 32 * v3, a2);
    ++*(a1 + 8);
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v16);
  std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__value_func[abi:nn200100](v5 + 32 * *(a1 + 8), a2);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v5;
    do
    {
      v9 = std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__value_func[abi:nn200100](v9, v6) + 32;
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = -32 * v10;
      v12 = &v6[32 * v10 - 32];
      do
      {
        v12 = std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](v12) - 32;
        v11 += 32;
      }

      while (v11);
      v6 = *a1;
    }
  }

  v13 = v16;
  if (v6 != v4)
  {
    free(v6);
  }

  *a1 = v5;
  v14 = (*(a1 + 8) + 1);
  *(a1 + 8) = v14;
  *(a1 + 12) = v13;
  return v5 + 32 * v14 - 32;
}

uint64_t std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_10 const&>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_10 const&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::allocator>,mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA0580;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_10 const&>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_10 const&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::allocator>,mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::operator()(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v21[8] = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    v6 = *a5;
    v8 = *a4;
    v7 = a4[1];
    v15 = *a3;
    v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::UnrealizedConversionCastOp>(a2, *(**v6 + 32));
    v16[0] = v6;
    v16[1] = v9;
    v16[2] = v17;
    v16[3] = 0x400000000;
    v17[4] = v18;
    v17[5] = 0x400000000;
    v18[4] = v19;
    v18[5] = 0x400000000;
    v19[8] = 4;
    v19[9] = v20;
    v19[10] = 0x100000000;
    v20[1] = v21;
    v20[2] = 0x100000000;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v21[4] = 0;
    v21[6] = 0;
    mlir::UnrealizedConversionCastOp::build(a2, v16, &v15 + 2, 1, v8, v7, 0, 0);
    v10 = mlir::Operation::create(v16);
    mlir::OpBuilder::insert(a2, v10);
    v11 = *(*(v10 + 6) + 16);
    v12 = v10 - 16;
    mlir::OperationState::~OperationState(v16);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
    {
      result = v12;
    }

    else
    {
      result = -16;
    }
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](uint64_t a1)
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

void mlir::ConversionTarget::addDynamicallyLegalDialect<>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x277D85DE8];
  __src[0] = a3;
  __src[1] = a4;
  v8 = v10;
  v9 = 0x200000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v8, __src, &v8);
  mlir::ConversionTarget::setDialectAction(a1, v8, v9, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v8, v9, a2);
  if (v8 != v10)
  {
    free(v8);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA05C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_1,std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_1>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA0610;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_1,std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_1>,std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v2)
  {
    v4 = *(*(v2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v6 = *(*(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 72) + 8);
    v7 = *(v6 + 16);
    v9 = *(v6 + 8);
    v8 = *(v6 + 12);
    v11[0] = v7;
    v11[1] = v9;
    v11[2] = v7 + 8 * v9;
    v11[3] = v8;
    isLegal = _ZN4llvm6all_ofIRNS_6detail12concat_rangeIKN4mlir4TypeEJNS_8ArrayRefIS4_EES7_EEEZNKS3_13TypeConverter7isLegalIS8_EENSt3__19enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISE_PNS3_9OperationEEE5valueEbE4typeEOSE_EUlS4_E_EEbSJ_T0_(v11, v3);
  }

  else
  {
    isLegal = mlir::TypeConverter::isLegal(*(a1 + 8), v2);
  }

  return isLegal | 0x100u;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::anonymous namespace::OutputIntentsCache::OutputIntentsCache(mlir::Operation *)::{lambda(mlir::Operation *)#1}>(mlir::Operation **a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (v4[48] == 1 && v3 != v4)
  {
    free(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::anonymous namespace::OutputIntentsCache::getIntents(mlir::ODIE::Compiler::_anonymous_namespace_::OutputIntentsCache *this, mlir::Operation *a2, uint64_t a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = a3;
  v7 = a2 + 24;
  v6 = *(a2 + 3);
  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = (v8 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v10 = (v6 + 72 * v9);
    v11 = *v10;
    if (*v10 == a3)
    {
LABEL_3:
      if (v10 != (v6 + 72 * v8))
      {
        *this = this + 16;
        *(this + 1) = 0x600000000;
        if (*(v10 + 4))
        {
          llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(this, (v10 + 1));
        }

        *(this + 64) = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v12 = 1;
      while (v11 != -4096)
      {
        v13 = v9 + v12++;
        v9 = v13 & (v8 - 1);
        v10 = (v6 + 72 * v9);
        v11 = *v10;
        if (*v10 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,void>>::doCastIfPossible(a3);
  if (!v14)
  {
    v18 = *(a3 + 36);
    v19 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a3 + 24) + 32), 0);
    v24[0] = v25;
    v24[1] = 0x600000000;
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(v24, v18, v19);
    v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::operator[](v7, &v23);
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v20, v24);
    v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::operator[](v7, &v23);
    *this = this + 16;
    *(this + 1) = 0x600000000;
    if (*(v21 + 2))
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(this, v21);
    }

    *(this + 64) = 1;
    if (v24[0] != v25)
    {
      free(v24[0]);
    }

    goto LABEL_20;
  }

  (*(v15 + 8))(v15, v14, a2);
  if (*(this + 64) != 1)
  {
LABEL_20:
    v22 = *MEMORY[0x277D85DE8];
    return;
  }

  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::operator[](v7, &v23);
  v17 = *MEMORY[0x277D85DE8];

  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v16, this);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), *a2, &v9);
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
    llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), *a2, &v10);
    v6 = *(a1 + 8);
    v5 = v10;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = (v5 + 3);
  v5[2] = 0x600000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
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

void *llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::grow(uint64_t a1, int a2)
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
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 72 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x600000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v19, (v15 - 2));
          }

          ++*(a1 + 8);
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 9;
        v16 -= 72;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 72 * v21 - 72;
    v24 = vdupq_n_s64(v23 / 0x48);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[9] = -4096;
      }

      v22 += 2;
      result += 18;
    }

    while (((v23 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

void mlir::ODIE::Compiler::anonymous namespace::FuncReturnPattern::~FuncReturnPattern(mlir::ODIE::Compiler::_anonymous_namespace_::FuncReturnPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::func::ReturnOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::func::ReturnOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::func::ReturnOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::FuncReturnPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::ReturnOp>(a4 + 8, *(**v8 + 32));
  v15[0] = v8;
  v15[1] = v9;
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, v6, 0, v6, v7);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert((a4 + 8), v10);
  v11 = *(*(v10 + 6) + 16);
  mlir::OperationState::~OperationState(v15);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  (*(*a4 + 8))(a4, a2, v12);
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::FuncReturnPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::FuncReturnPattern]";
  v6 = 124;
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

void mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::YieldOp,mlir::scf::YieldOp>::~DefaultConversionPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::scf::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::scf::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::YieldOp,mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x600000000;
  v7 = *(a1 + 96);
  v8 = *(a2 + 36);
  v9 = (a2 - 16);
  if (!v8)
  {
    v9 = 0;
  }

  v28 = v9;
  v29 = 0;
  v30 = v9;
  v31 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v24, &v28);
  if (mlir::TypeConverter::convertTypes(v7, v24[0], v24[1], &v25))
  {
    v10 = *(a3 + 40);
    v11 = *(a3 + 48);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v13 = *(AttrDictionary + 8);
    v14 = *(AttrDictionary + 16);
    v15 = *(a2 + 24);
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::YieldOp>((a4 + 1), *(**v15 + 32));
    v28 = v15;
    v29 = v16;
    v30 = &v32;
    v31 = 0x400000000;
    v33 = v35;
    v34 = 0x400000000;
    v35[4] = v36;
    v35[5] = 0x400000000;
    v36[8] = 4;
    v36[9] = v37;
    v36[10] = 0x100000000;
    v37[1] = v38;
    v37[2] = 0x100000000;
    v38[1] = 0;
    v38[2] = 0;
    v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v38[4] = 0;
    v38[6] = 0;
    mlir::scf::YieldOp::build((a4 + 1), &v28, v25 & 0xFFFFFFFFFFFFFFF9 | 2, v26, v10, v11, v13, v14);
    v17 = mlir::Operation::create(&v28);
    mlir::OpBuilder::insert((a4 + 1), v17);
    v18 = *(*(v17 + 6) + 16);
    mlir::OperationState::~OperationState(&v28);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    (*(*a4 + 8))(a4, a2, v19);
    v20 = 1;
  }

  else
  {
    v28 = "Failed to convert output types";
    v32 = 259;
    v24[0] = &v28;
    v21 = a4[2];
    if (v21 && v21[2] == 1)
    {
      (*(*v21 + 88))(v21, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::YieldOp &>(mlir::scf::YieldOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v24);
    }

    v20 = 0;
  }

  if (v25 != v27)
  {
    free(v25);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::YieldOp,mlir::scf::YieldOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::DefaultConversionPattern<mlir::scf::YieldOp, mlir::scf::YieldOp>]";
  v6 = 171;
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

void mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::ConditionOp,mlir::scf::ConditionOp>::~DefaultConversionPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::scf::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::scf::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::scf::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::ConditionOp,mlir::scf::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x600000000;
  v7 = *(a1 + 96);
  v8 = *(a2 + 36);
  v9 = (a2 - 16);
  if (!v8)
  {
    v9 = 0;
  }

  v28 = v9;
  v29 = 0;
  v30 = v9;
  v31 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v24, &v28);
  if (mlir::TypeConverter::convertTypes(v7, v24[0], v24[1], &v25))
  {
    v10 = *(a3 + 40);
    v11 = *(a3 + 48);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v13 = *(AttrDictionary + 8);
    v14 = *(AttrDictionary + 16);
    v15 = *(a2 + 24);
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>((a4 + 1), *(**v15 + 32));
    v28 = v15;
    v29 = v16;
    v30 = &v32;
    v31 = 0x400000000;
    v33 = v35;
    v34 = 0x400000000;
    v35[4] = v36;
    v35[5] = 0x400000000;
    v36[8] = 4;
    v36[9] = v37;
    v36[10] = 0x100000000;
    v37[1] = v38;
    v37[2] = 0x100000000;
    v38[1] = 0;
    v38[2] = 0;
    v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v38[4] = 0;
    v38[6] = 0;
    mlir::scf::ConditionOp::build((a4 + 1), &v28, v25 & 0xFFFFFFFFFFFFFFF9 | 2, v26, v10, v11, v13, v14);
    v17 = mlir::Operation::create(&v28);
    mlir::OpBuilder::insert((a4 + 1), v17);
    v18 = *(*(v17 + 6) + 16);
    mlir::OperationState::~OperationState(&v28);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    (*(*a4 + 8))(a4, a2, v19);
    v20 = 1;
  }

  else
  {
    v28 = "Failed to convert output types";
    v32 = 259;
    v24[0] = &v28;
    v21 = a4[2];
    if (v21 && v21[2] == 1)
    {
      (*(*v21 + 88))(v21, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::ConditionOp &>(mlir::scf::ConditionOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v24);
    }

    v20 = 0;
  }

  if (v25 != v27)
  {
    free(v25);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::ConditionOp,mlir::scf::ConditionOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::DefaultConversionPattern<mlir::scf::ConditionOp, mlir::scf::ConditionOp>]";
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

void mlir::ODIE::Compiler::anonymous namespace::IfOpPattern::~IfOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::IfOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::scf::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::scf::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::scf::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::IfOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x600000000;
  v7 = *(a1 + 96);
  v8 = *(a2 + 36);
  v9 = (a2 - 16);
  if (!v8)
  {
    v9 = 0;
  }

  v23 = v9;
  v24 = 0;
  v25 = v9;
  v26 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v19, &v23);
  if (mlir::TypeConverter::convertTypes(v7, v19[0], v19[1], &v20))
  {
    v10 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24);
    v11 = *(a2 + 24);
    v12 = *(a3 + 40);
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    v14 = v12 & 6;
    if (v14 || !v13)
    {
      if (v14 == 2)
      {
        if (v13)
        {
          v13 = v13[3];
        }
      }
    }

    else
    {
      v13 = *v13;
    }

    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(a4 + 8, *(**v11 + 32));
    v23 = v11;
    v24 = v16;
    v25 = &v27;
    v26 = 0x400000000;
    v28 = v30;
    v29 = 0x400000000;
    v30[4] = v31;
    v30[5] = 0x400000000;
    v31[8] = 4;
    v31[9] = v32;
    v31[10] = 0x100000000;
    v32[1] = v33;
    v32[2] = 0x100000000;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v33[4] = 0;
    v33[6] = 0;
    mlir::scf::IfOp::build(a4 + 8, &v23, v20 & 0xFFFFFFFFFFFFFFF9 | 2, v21, v13);
  }

  v23 = "Failed to convert output types";
  v27 = 259;
  v19[0] = &v23;
  v15 = *(a4 + 16);
  if (v15 && v15[2] == 1)
  {
    (*(*v15 + 88))(v15, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::IfOp &>(mlir::scf::IfOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v19);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::IfOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::IfOpPattern]";
  v6 = 118;
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

void mlir::ODIE::Compiler::anonymous namespace::WhileOpPattern::~WhileOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::WhileOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::scf::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::scf::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::scf::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::WhileOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x600000000;
  v7 = *(a1 + 96);
  v8 = *(a2 + 36);
  v9 = (a2 - 16);
  if (!v8)
  {
    v9 = 0;
  }

  v21 = v9;
  v22 = 0;
  v23 = v9;
  v24 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v17, &v21);
  if (mlir::TypeConverter::convertTypes(v7, v17[0], v17[1], &v18))
  {
    v10 = *(a2 + 24);
    v12 = *(a3 + 40);
    v11 = *(a3 + 48);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a4 + 8, *(**v10 + 32));
    v21 = v10;
    v22 = v13;
    v23 = &v25;
    v24 = 0x400000000;
    v26 = v28;
    v27 = 0x400000000;
    v28[4] = v29;
    v28[5] = 0x400000000;
    v29[8] = 4;
    v29[9] = v30;
    v29[10] = 0x100000000;
    v30[1] = v31;
    v30[2] = 0x100000000;
    v31[1] = 0;
    v31[2] = 0;
    v31[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v31[4] = 0;
    v31[6] = 0;
    mlir::scf::WhileOp::build(a4 + 8, &v21, v18 & 0xFFFFFFFFFFFFFFF9 | 2, v19, v12, v11, 0, 0);
  }

  v21 = "Failed to convert output types";
  v25 = 259;
  v17[0] = &v21;
  v14 = *(a4 + 16);
  if (v14 && v14[2] == 1)
  {
    (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v17);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::WhileOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::WhileOpPattern]";
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

void mlir::ODIE::Compiler::anonymous namespace::ExtractPattern::~ExtractPattern(mlir::ODIE::Compiler::_anonymous_namespace_::ExtractPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::tensor::ExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::tensor::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::tensor::ExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::ExtractPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v17 = mlir::TypeConverter::convertType(*(a1 + 96), (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v9 = *(a2 + 24);
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::LoadOp,void>::id, *(**v9 + 32));
  if ((v11 & 1) == 0)
  {
    v21 = 1283;
    v20[2] = "exec.load";
    v20[3] = 9;
    v19 = 259;
    llvm::operator+(v20, &v18, v22);
    llvm::report_fatal_error(v22, 1);
  }

  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v23;
  v22[3] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[8] = 4;
  v25[9] = v26;
  v25[10] = 0x100000000;
  v26[1] = v27;
  v26[2] = 0x100000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v27[4] = 0;
  v27[6] = 0;
  mlir::ODIE::Compiler::Exec::LoadOp::build(a4 + 8, v22, &v17 + 2, 1, v7, v8, 0, 0);
  v12 = mlir::Operation::create(v22);
  mlir::OpBuilder::insert((a4 + 8), v12);
  v13 = *(*(v12 + 6) + 16);
  mlir::OperationState::~OperationState(v22);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::LoadOp,void>::id)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  (*(*a4 + 8))(a4, a2, v14);
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::ExtractPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::ExtractPattern]";
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

void mlir::ODIE::Compiler::anonymous namespace::CreateTokenPattern::~CreateTokenPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CreateTokenPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateTokenOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateTokenOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateTokenOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CreateTokenPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CreateTokenPattern]";
  v6 = 125;
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

void mlir::ODIE::Compiler::anonymous namespace::CallOpPattern::~CallOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CallOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CallOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CallOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CallOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 80), *(a3 + 88), &v14);
  v8 = *(a3 + 48);
  v11[2] = *(a3 + 32);
  v11[3] = v8;
  v11[4] = *(a3 + 64);
  v9 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v9;
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CallOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54[6] = *MEMORY[0x277D85DE8];
  v39 = a2;
  v52 = v54;
  v53 = 0x600000000;
  v8 = *(a2 + 36);
  if (v8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v8, 8);
    LODWORD(v8) = *(a2 + 36);
  }

  v9 = *(a1 + 96);
  v10 = (a2 - 16);
  if (!v8)
  {
    v10 = 0;
  }

  v43 = v10;
  v44 = 0;
  v45[0] = v10;
  v45[1] = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v48, &v43);
  if (mlir::TypeConverter::convertTypes(v9, v48, v49, &v52))
  {
    if (v51)
    {
      AttrDictionary = mlir::Operation::getAttrDictionary(a2);
      v13 = *(AttrDictionary + 8);
      v12 = *(AttrDictionary + 16);
      v43 = v45;
      v44 = 0x400000000;
      v47 = 0;
      dictionaryAttrSort<false>(v13, v12, &v43);
      v47 = 4;
      v14 = &unk_27FC18158;
      v15 = 64;
      do
      {
        mlir::NamedAttrList::erase(&v43, *(v14 - 1), *v14);
        v14 += 2;
        v15 -= 16;
      }

      while (v15);
      ResolvedCallee = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(&v39);
      v17 = v39;
      if (ResolvedCallee)
      {
        v18 = ResolvedCallee;
        if (*(*(v39 + 16 * ((*(v39 + 44) >> 23) & 1) + 88) + 8))
        {
          v19 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(ResolvedCallee);
          mlir::NamedAttrList::set(&v43, "callee", 6, v19);
          v17 = v39;
          if (*(*(v39 + 16 * ((*(v39 + 44) >> 23) & 1) + 88) + 8) == 1)
          {
            v21 = *(a4 + 8);
            v42 = 261;
            v41[0] = "coreml.cpu_launch";
            v41[1] = 17;
            v22 = mlir::StringAttr::get(v21, v41, v20);
            v18 = mlir::SymbolRefAttr::get(v22, 0, 0, v23);
            v17 = v39;
          }
        }

        v24 = v17;
        while (1)
        {
          v25 = *(v24 + 16);
          if (!v25)
          {
            break;
          }

          v26 = *(v25 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (!v26)
          {
            break;
          }

          v24 = *(v26 + 16);
          if (!v24 || *(*(v24 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
          {
            goto LABEL_32;
          }
        }

        v24 = 0;
LABEL_32:
        v32 = *(v17 + 24);
        v33 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(v18);
        v35 = *(v34 + 36);
        if (v35)
        {
          v36 = (v34 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
        }

        else
        {
          v36 = 4;
        }

        mlir::ConversionPatternRewriter::replaceOp(a4, v39, v36, v35);
      }

      v30 = *(v39 + 24);
      v42 = 259;
      v40 = v41;
      v41[0] = "failed to convert parametric call";
      v31 = *(a4 + 16);
      if (v31 && v31[2] == 1)
      {
        (*(*v31 + 88))(v31, v30, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v40);
      }

      if (v43 != v45)
      {
        free(v43);
      }
    }

    else
    {
      v43 = "failed to calculate output intents";
      v46 = 259;
      v41[0] = &v43;
      v29 = *(a4 + 16);
      if (v29 && v29[2] == 1)
      {
        (*(*v29 + 88))(v29, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::CallOp &>(mlir::ODIE::Compiler::CoreML::CallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v41);
      }
    }

    if (v51 == 1 && v48 != &v50)
    {
      free(v48);
    }
  }

  else
  {
    v27 = *(a2 + 24);
    v43 = "failed to convert result types";
    v46 = 259;
    v48 = &v43;
    v28 = *(a4 + 16);
    if (v28 && v28[2] == 1)
    {
      (*(*v28 + 88))(v28, v27, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v48);
    }
  }

  if (v52 != v54)
  {
    free(v52);
  }

  v37 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CallOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 80), *(a3 + 88), &v16);
  v8 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v8;
  v13[4] = *(a3 + 64);
  v9 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v9;
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v10 = (*(*a1 + 104))(a1, a2, v13, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::emitCallOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, __int128 *a13, unint64_t a14, uint64_t a15)
{
  v36[8] = *MEMORY[0x277D85DE8];
  v22 = mlir::ArrayAttr::get(*(a15 + 8), a11, a12);
  v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CallOp>(a15 + 8, *(**a2 + 32));
  v31[0] = a2;
  v31[1] = v23;
  v31[2] = v32;
  v31[3] = 0x400000000;
  v32[4] = v33;
  v32[5] = 0x400000000;
  v33[4] = v34;
  v33[5] = 0x400000000;
  v34[8] = 4;
  v34[9] = v35;
  v34[10] = 0x100000000;
  v35[1] = v36;
  v35[2] = 0x100000000;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v36[4] = 0;
  v36[6] = 0;
  mlir::ODIE::Compiler::Exec::CallOp::build((a15 + 8), v31, a5, a6, a3, a4, a7, a8, v28 & 0xFFFFFFFFFFFFFFF9, v29, v22, 0);
  v24 = mlir::Operation::create(v31);
  mlir::OpBuilder::insert((a15 + 8), v24);
  if (*(*(v24 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  mlir::Operation::setAttrs(v25, a13, a14);
  if (v28 != &v30)
  {
    free(v28);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void mlir::ODIE::Compiler::anonymous namespace::getOutParams(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, __int128 *a15, unint64_t a16, uint64_t a17)
{
  v21 = a17;
  v91[8] = *MEMORY[0x277D85DE8];
  v82[0] = a11;
  v82[1] = a12;
  if (a14)
  {
    v24 = a13;
    v25 = 8 * a14;
    v26 = 8 * a14;
    while (*(*v24 + 8) == 2)
    {
      v24 += 8;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    v79 = v81;
    v80 = 0x600000000;
    if (a7)
    {
      v29 = 0;
      while (1)
      {
        v30 = mlir::TypeRange::dereference_iterator(a6, v29);
        {
          break;
        }

        if (a7 == ++v29)
        {
          goto LABEL_15;
        }
      }

      if (a7 > HIDWORD(v80))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, a7, 8);
      }

      v76 = v78;
      v77 = 0x600000000;
      if (a7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, a7, 8);
      }

      v31 = 0;
      do
      {
        v32 = mlir::TypeRange::dereference_iterator(a6, v31);
        v33 = *(***(a2 + 24) + 32);
        v83 = v32;
        v34 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(v33, &v83);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v76, v34);
        ++v31;
      }

      while (a7 != v31);
      v35 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InferTypeOp,void>::id, *(**a3 + 32));
      if ((v36 & 1) == 0)
      {
        v75 = 1283;
        v74[2] = "exec.infer_type";
        v74[3] = 15;
        v73 = 259;
        llvm::operator+(v74, &v72, &v83);
        llvm::report_fatal_error(&v83, 1);
      }

      v68 = a3;
      v83 = a3;
      v84 = v35;
      v85 = v87;
      v86 = 0x400000000;
      v87[4] = v88;
      v87[5] = 0x400000000;
      v88[4] = v89;
      v88[5] = 0x400000000;
      v89[8] = 4;
      v89[9] = v90;
      v89[10] = 0x100000000;
      v90[1] = v91;
      v90[2] = 0x100000000;
      v91[2] = 0;
      v91[1] = 0;
      v91[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v91[4] = 0;
      v91[6] = 0;
      mlir::ODIE::Compiler::Exec::InferTypeOp::build((a17 + 8), &v83, v76 & 0xFFFFFFFFFFFFFFF9 | 2, v77, a9, a10, a4, a5);
      v37 = mlir::Operation::create(&v83);
      mlir::OpBuilder::insert((a17 + 8), v37);
      v38 = *(*(v37 + 6) + 16);
      mlir::OperationState::~OperationState(&v83);
      if (v38 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InferTypeOp,void>::id)
      {
        v37 = 0;
      }

      mlir::Operation::setAttrs(v37, a15, a16);
      v39 = *(v37 + 9);
      if (v39)
      {
        v40 = v37 - 16;
      }

      else
      {
        v40 = 0;
      }

      if (v39)
      {
        v41 = 0;
        v42 = v39 - 1;
        if (a7 - 1 < v42)
        {
          v42 = a7 - 1;
        }

        v43 = v42 + 1;
        v44 = v40;
        while (1)
        {
          v45 = mlir::TypeRange::dereference_iterator(a6, v41);
          v46 = v40;
          if (v41)
          {
            v47 = *(v37 - 1) & 7;
            v48 = v37 - 16;
            v49 = v41;
            if (v47 == 6)
            {
              goto LABEL_36;
            }

            v50 = (5 - v47);
            v46 = v44;
            v49 = v41 - v50;
            if (v41 > v50)
            {
              break;
            }
          }

LABEL_37:
          {
            v51 = v46;
          }

          else
          {
            v51 = 0;
          }

          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v79, v51);
          ++v41;
          v44 -= 16;
          if (v43 == v41)
          {
            goto LABEL_41;
          }
        }

        v48 = &v40[-16 * v50];
LABEL_36:
        v46 = &v48[-24 * v49];
        goto LABEL_37;
      }

LABEL_41:
      if (v76 != v78)
      {
        free(v76);
      }

      v21 = a17;
      a3 = v68;
      v25 = 8 * a14;
    }

    else
    {
LABEL_15:
      llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v79, a7);
    }

    *a1 = (a1 + 2);
    a1[1] = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(a1, a14);
    v52 = v79;
    if (a7)
    {
      v53 = *(a1 + 2);
      if (v53)
      {
        if (v80)
        {
          v65 = 0;
          v67 = v21;
          v54 = 0;
          v55 = 0;
          v69 = 8 * v80 - 8;
          v70 = 8 * v53 - 8;
          v71 = *a1;
          v56 = a7 - 1;
          do
          {
            v57 = v52;
            v58 = &v52[v54];
            v59 = mlir::TypeRange::dereference_iterator(a6, v55);
            v83 = a13 + v54;
            v84 = v59;
            v85 = (v71 + v54);
            v86 = v58;
            v60 = *(*(a13 + v54) + 8);
            if (v60 == 1)
            {
              v62 = mlir::ValueRange::dereference_iterator(v82, v65++);
            }

            else
            {
              if (v60 == 2)
              {
                v61 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::UndefOp,mlir::Type &>((v67 + 8), a3, &v84);
              }

              else
              {
                v61 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type &,mlir::Value &>((v67 + 8), a3, &v84, v58);
              }

              v62 = (v61 - 16);
            }

            v52 = v57;
            *(v71 + v54) = v62;
            if (v25 - 8 == v54)
            {
              break;
            }

            if (v56 == v55)
            {
              break;
            }

            if (v70 == v54)
            {
              break;
            }

            ++v55;
            v63 = v69 == v54;
            v54 += 8;
          }

          while (!v63);
          v52 = v79;
        }
      }
    }

    if (v52 != v81)
    {
      free(v52);
    }
  }

  else
  {
LABEL_5:
    *a1 = (a1 + 2);
    a1[1] = 0x600000000;
    if (a7 < 7)
    {
      if (!a7)
      {
        goto LABEL_62;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, a7, 8);
    }

    v27 = 0;
    do
    {
      v83 = mlir::TypeRange::dereference_iterator(a6, v27);
      v28 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::UndefOp,mlir::Type &>((a17 + 8), a3, &v83);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, (v28 - 16));
      ++v27;
    }

    while (a7 != v27);
  }

LABEL_62:
  v64 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::isTypeDynamic(uint64_t *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
  {
    return 0;
  }

  v1 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (!v1)
  {
    return 1;
  }

  v3 = v1;
  v4 = v2;
  if (!(*(v2 + 16))(v2, v1))
  {
    return 1;
  }

  v5 = (*(v4 + 24))(v4, v3);
  if (!v6)
  {
    return 0;
  }

  v7 = 8 * v6 - 8;
  do
  {
    v8 = *v5++;
    v9 = v8 == 0x8000000000000000;
    v10 = v8 == 0x8000000000000000 || v7 == 0;
    v7 -= 8;
  }

  while (!v10);
  return v9;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::Exec::AllocOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CallOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CallOpPattern]";
  v6 = 120;
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

void mlir::ODIE::Compiler::anonymous namespace::CoreGraphPattern::~CoreGraphPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CoreGraphPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[15] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(v12, a2);
  v12[13] = v9;
  v12[14] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[15] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(v12, a2);
  v12[13] = a3;
  v12[14] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[15] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(v12, a2);
  v12[13] = v9;
  v12[14] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[15] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(v12, a2);
  v12[13] = a3;
  v12[14] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 104), *(a3 + 112), &v17);
  v8 = *(a3 + 96);
  v9 = *(a3 + 80);
  v13[4] = *(a3 + 64);
  v13[5] = v9;
  v10 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v10;
  v11 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v11;
  v14 = v8;
  v15 = v17 & 0xFFFFFFFFFFFFFFF9;
  v16 = v18;
  (*(*a1 + 88))(a1, a2, v13, a4);
  if (v17 != v19)
  {
    free(v17);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreGraphPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v74[8] = *MEMORY[0x277D85DE8];
  if (v55)
  {
    if (*(*(*((*(*(a2 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      mlir::SymbolTable::remove(*(a1 + 120), a2);
    }

    v6 = a2;
    do
    {
      v7 = v6;
      v8 = *(v6 + 16);
      v6 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v6 = *(v6 + 16);
        v9 = *(v6 + 48);
      }

      else
      {
        v9 = MEMORY[0x30];
      }
    }

    while (*(v9 + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v51 = a4;
    v52 = a2;
    *(a4 + 3) = v8;
    v10 = (a4 + 24);
    v11 = (v10 - 2);
    v10[1] = v7;
    v12 = *(a1 + 120);
    v13 = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16) + 8);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v16 = *(AttrDictionary + 8);
    v15 = *(AttrDictionary + 16);
    v56[0] = v57;
    v56[1] = 0x400000000;
    v58 = 0;
    dictionaryAttrSort<false>(v16, v15, v56);
    v58 = 4;
    v20 = v52;
    v21 = *(v52 + 48);
    v22 = *(v21 + 104);
    if (v22)
    {
      v23 = *(v21 + 96);
      v24 = 8 * v22;
      do
      {
        v17 = *v23;
        v25 = *(*(v52 + 48) + 96);
        if (*v23 != *v25 && v17 != v25[6])
        {
          mlir::NamedAttrList::erase(v56, v17);
        }

        ++v23;
        v24 -= 8;
      }

      while (v24);
      v20 = v52;
    }

    v48 = *(v20 + 24);
    ModuleSymbolRef = mlir::ODIE::Compiler::CoreML::GraphOp::getModuleSymbolRef(&v52, v17, v18, v19);
    v27 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(ModuleSymbolRef);
    v28 = *(v13 + 16);
    v29 = *(v13 + 8);
    v47 = *(v13 + 12);
    v49 = v27;
    v67[0] = v27;
    v30 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>((v12 + 8), v67);
    if (!v30 || (v31 = *(v30 + 8)) == 0 || *(*(v31 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v32 = (v28 + 8 * v29) & 0xFFFFFFFFFFFFFFF9;
      v63 = &v65;
      v64 = 0x600000000;
      v33 = v62;
      v61[0] = v62;
      v61[1] = 0x600000000;
      if (v29)
      {
        v34 = 0;
        v35 = v28 & 0xFFFFFFFFFFFFFFF9;
        do
        {
          v36 = mlir::TypeRange::dereference_iterator(v35 | 2, v34);
          v37 = *(*v36 + 136);
          if (v37 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
          {
            v38 = v36;
            if (v37 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v36 == 0)
            {
              v40 = &v63;
            }

            else
            {
              v40 = v61;
            }

            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v40, v38);
          }

          ++v34;
        }

        while (v29 != v34);
        v33 = v61[0];
      }

      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(&v63, __src, __src + 8 * v60);
      v42 = *v11;
      v67[0] = (v63 & 0xFFFFFFFFFFFFFFF9 | 2);
      v67[1] = v64;
      *&v66 = __src & 0xFFFFFFFFFFFFFFF9 | 2;
      *(&v66 + 1) = v60;
      v43 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v42, v67, &v66);
      v44 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::FuncOp>(v11, *(**v48 + 32));
      v67[0] = v48;
      v67[1] = v44;
      v67[2] = &v68;
      v67[3] = 0x400000000;
      *v69 = v71;
      v70 = 0x400000000;
      v71[4] = v72;
      v71[5] = 0x400000000;
      v72[8] = 4;
      v72[9] = v73;
      v72[10] = 0x100000000;
      v73[1] = v74;
      v73[2] = 0x100000000;
      v74[2] = 0;
      v74[1] = 0;
      v74[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v74[4] = 0;
      v74[6] = 0;
      mlir::func::FuncOp::build(v11, v67, *(v49 + 2), *(v49 + 3), v43, 0, 0);
    }

    if (v56[0] != v57)
    {
      free(v56[0]);
    }

    mlir::Operation::setAttr(v31, "exec.coreml_model", 0x11, *(**(v51 + 1) + 608));
    mlir::Region::takeBody((((v31 + 64 + 16 * ((*(v31 + 44) >> 23) & 1) + ((*(v31 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31 + 40)), (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
    mlir::ConversionPatternRewriter::eraseOp(v51, a2);
  }

  v67[0] = "failed to generate output intents";
  v68 = 259;
  v56[0] = v67;
  v41 = *(a4 + 2);
  if (v41 && v41[2] == 1)
  {
    (*(*v41 + 88))(v41, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::GraphOp &>(mlir::ODIE::Compiler::CoreML::GraphOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v56);
  }

  if (v55 == 1 && v53 != &v54)
  {
    free(v53);
  }

  v45 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 104), *(a3 + 112), &v19);
  v8 = *(a3 + 80);
  v15[4] = *(a3 + 64);
  v15[5] = v8;
  v9 = *(a3 + 96);
  v10 = *(a3 + 16);
  v15[0] = *a3;
  v15[1] = v10;
  v11 = *(a3 + 48);
  v15[2] = *(a3 + 32);
  v15[3] = v11;
  v16 = v9;
  v17 = v19 & 0xFFFFFFFFFFFFFFF9;
  v18 = v20;
  v12 = (*(*a1 + 104))(a1, a2, v15, a4);
  if (v19 != v21)
  {
    free(v19);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v11[0] = a2;
  v11[1] = v6;
  v11[2] = v12;
  v11[3] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v14[9] = v15;
  v14[10] = 0x100000000;
  v15[1] = v16;
  v15[2] = 0x100000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v16[4] = 0;
  v16[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v11, *a3, *(a3 + 8));
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::ODIE::Compiler::anonymous namespace::convertTokenResultTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a1, a2, 0, a2, a3);
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = *a1;
    v9 = 8 * v6;
    do
    {
      if (*(**v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        v10 = v7 + 1;
        *v8 = mlir::TypeRange::dereference_iterator(a4, v7);
        v7 = v10;
      }

      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateTokenOp>(mlir::ODIE::Compiler::CoreML::CreateTokenOp *a1, uint64_t a2)
{
  v14[8] = *MEMORY[0x277D85DE8];
  Token = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateTokenOp>(a1, *(**a2 + 32));
  v9[0] = a2;
  v9[1] = Token;
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
  mlir::ODIE::Compiler::CoreML::CreateTokenOp::build(a1, v9, v5);
  v6 = mlir::Operation::create(v9);
  mlir::OpBuilder::insert(a1, v6);
  if (*(*(v6 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateTokenOp,void>::id)
  {
    v6 = 0;
  }

  mlir::OperationState::~OperationState(v9);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateTokenOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateTokenOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.create_token";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>,unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>::LookupBucketFor<unsigned long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (a2 - 1) & (((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3));
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
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
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

char *llvm::DenseMap<unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -1;
        }

        if (v17.i8[4])
        {
          *v16 = -1;
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
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>,unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>::LookupBucketFor<unsigned long>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
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
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0xFFFFFFFFFFFFFFFLL;
    v24 = v23 & 0xFFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0xFFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 16;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 2) = -1;
      }

      if (v28.i8[4])
      {
        *v27 = -1;
      }

      v22 += 2;
      v27 += 4;
    }

    while (v25 != v22);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CoreGraphPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CoreGraphPattern]";
  v6 = 123;
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

void mlir::ODIE::Compiler::anonymous namespace::ConstantConversion::~ConstantConversion(mlir::ODIE::Compiler::_anonymous_namespace_::ConstantConversion *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v12, a2);
  v12[7] = v9;
  v12[8] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v12, a2);
  v12[7] = a3;
  v12[8] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v12, a2);
  v12[7] = v9;
  v12[8] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v12, a2);
  v12[7] = a3;
  v12[8] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = *(a3 + 48);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::ConstantConversion::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v93 = *MEMORY[0x277D85DE8];
  v62 = a2;
  do
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        v5 = *(v8 + 16);
        if (v5)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  while (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr((a4 + 1), 64);
  v10 = *(a1 + 96);
  ValueAttr = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v62);
  v13 = (*v12)(v12, ValueAttr);
  v14 = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v62);
  v15 = mlir::TypeConverter::convertTypeAttribute(v10, v13, v14);
  if (v16)
  {
    v17 = v15;
    v18 = (((v5 + 64 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40));
    v19 = v18[1];
    if (*v18 == v18)
    {
      goto LABEL_22;
    }

    while (v19 != v18)
    {
      v20 = v19 - 1;
      if (!v19)
      {
        v20 = 0;
      }

      if (v20[4] != v20 + 4)
      {
        break;
      }

      v19 = v19[1];
    }

    if (v19 == v18)
    {
LABEL_22:
      v25 = 0;
    }

    else
    {
      v24 = v19 - 1;
      if (!v19)
      {
        v24 = 0;
      }

      v25 = v24[5];
    }

    v72 = ((v5 + 64 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
    *v71 = v18;
    *&v71[8] = v19;
    *&v71[16] = v25;
    *&v71[24] = v18;
    v73 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::ConstOp,mlir::Region::OpIterator>::filter;
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(v71);
    *v68 = *v71;
    *&v68[16] = *&v71[16];
    v69 = v72;
    v70 = v73;
    *v71 = v18;
    *&v71[8] = v18;
    *&v71[16] = 0;
    *&v71[24] = v18;
    v72 = v18;
    v73 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::ConstOp,mlir::Region::OpIterator>::filter;
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(v71);
    v26 = *&v71[16];
    *v71 = *v68;
    *&v71[16] = *&v68[16];
    v72 = v69;
    v73 = v70;
    v74 = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::ConstOp,mlir::Region::OpIterator>::unwrap;
    while (1)
    {
      if (*&v71[16] == v26)
      {
        v27 = 0;
        v28 = 0;
        goto LABEL_29;
      }

      v65.__r_.__value_.__r.__words[0] = v74();
      if (*(v65.__r_.__value_.__r.__words[0] + 16 * ((*(v65.__r_.__value_.__r.__words[0] + 44) >> 23) & 1) + 64) == I64IntegerAttr && v17 == mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(&v65))
      {
        break;
      }

      mlir::Region::OpIterator::operator++(v71);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(v71);
    }

    v42 = *(v65.__r_.__value_.__r.__words[0] + 16 * ((*(v65.__r_.__value_.__r.__words[0] + 44) >> 23) & 1) + 72);
    v28 = *(v42 + 16);
    v27 = *(v42 + 24);
LABEL_29:
    *v68 = &v68[24];
    *&v68[8] = xmmword_25D0A05A0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(v68, v28, &v28[v27]);
    v29 = qword_25D09FFC0 + 64;
    if (!*&v68[8])
    {
      v30 = a4 + 3;
      v61 = *(a4 + 3);
      v31 = *(((v5 + 64 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40) + 8);
      if (v31)
      {
        v32 = v31 - 8;
      }

      else
      {
        v32 = 0;
      }

      v33 = *(v32 + 40);
      *v30 = v32;
      a4[4] = v33;
      *v71 = &v71[24];
      *&v71[8] = xmmword_25D0A05A0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(v71, "__const_", "");
      v34 = 0;
      v35 = *&v71[8];
      do
      {
        llvm::SmallVectorImpl<char>::resizeImpl<false>(v71, v35);
        llvm::SmallVectorTemplateBase<char,true>::push_back(v71, 95);
        std::to_string(&v65, v34);
        size = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v65;
        }

        else
        {
          v37 = v65.__r_.__value_.__r.__words[0];
        }

        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v65.__r_.__value_.__l.__size_;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v71, v37, v37 + size);
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        ++v34;
      }

      while (mlir::SymbolTable::lookup(*(a1 + 120), *v71, *&v71[8]));
      llvm::SmallVectorImpl<char>::operator=(v68, v71);
      if (*v71 != &v71[24])
      {
        free(*v71);
      }

      v38 = *(v62 + 24);
      if (v17)
      {
        v39 = *v17;
        v40 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v41 = mlir::detail::InterfaceMap::lookup(v39 + 8, v40);
      }

      else
      {
        v41 = 0;
      }

      v43 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id, *(**v38 + 32));
      if ((v44 & 1) == 0)
      {
        v67 = 1283;
        v65.__r_.__value_.__r.__words[2] = "exec.const";
        v60 = 10;
        goto LABEL_65;
      }

      *v71 = v38;
      *&v71[8] = v43;
      *&v71[16] = &v72;
      *&v71[24] = 0x400000000;
      v75 = v77;
      v76 = 0x400000000;
      v78 = v80;
      v79 = 0x400000000;
      v81 = 4;
      v82 = &v84;
      v83 = 0x100000000;
      v85 = &v87;
      v86 = 0x100000000;
      v89 = 0;
      v88 = 0;
      v90 = &mlir::detail::TypeIDResolver<void,void>::id;
      v91 = 0;
      v92 = 0;
      mlir::ODIE::Compiler::Exec::ConstOp::build(a4 + 1, v71, *v68, *&v68[8], v17, v41, I64IntegerAttr);
      v45 = mlir::Operation::create(v71);
      mlir::OpBuilder::insert((a4 + 1), v45);
      v46 = *(*(v45 + 6) + 16);
      mlir::OperationState::~OperationState(v71);
      if (v46 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0;
      }

      mlir::SymbolTable::insert(*(a1 + 120), v47, 0);
      if (v61)
      {
        *v30 = v61;
      }

      else
      {
        *v30 = 0;
        a4[4] = 0;
      }

      v29 = &qword_25D09FFC0[8];
    }

    v48 = v62;
    v49 = *(a1 + 96);
    v50 = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v62);
    v52 = (*v51)(v51, v50);
    v53 = mlir::TypeConverter::convertType(v49, v52);
    v54 = *(v48 + 24);
    v55 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocConstOp,void>::id, *(**v54 + 32));
    if (v56)
    {
      *v71 = v54;
      *&v71[8] = v55;
      *&v71[16] = &v72;
      *&v71[24] = 0x400000000;
      v75 = v77;
      v76 = 0x400000000;
      v78 = v80;
      v79 = 0x400000000;
      v81 = 4;
      v82 = &v84;
      v83 = v29[118];
      v85 = &v87;
      v86 = v83;
      v89 = 0;
      v88 = 0;
      v90 = &mlir::detail::TypeIDResolver<void,void>::id;
      v91 = 0;
      v92 = 0;
      mlir::ODIE::Compiler::Exec::AllocConstOp::build(a4 + 1, v71, v53, *v68, *&v68[8]);
      v57 = mlir::Operation::create(v71);
      mlir::OpBuilder::insert((a4 + 1), v57);
      v58 = *(*(v57 + 6) + 16);
      mlir::OperationState::~OperationState(v71);
      if (v58 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocConstOp,void>::id)
      {
        v59 = v57;
      }

      else
      {
        v59 = 0;
      }

      (*(*a4 + 8))(a4, v48, v59);
      if (*v68 != &v68[24])
      {
        free(*v68);
      }

      result = 1;
      goto LABEL_17;
    }

    v67 = 1283;
    v65.__r_.__value_.__r.__words[2] = "exec.alloc_const";
    v60 = 16;
LABEL_65:
    v66 = v60;
    v64 = 259;
    llvm::operator+(&v65, &v63, v71);
    llvm::report_fatal_error(v71, 1);
  }

  *v71 = "Failure to convert an attribute";
  LOWORD(v72) = 259;
  *v68 = v71;
  v21 = a4[2];
  if (v21 && v21[2] == 1)
  {
    (*(*v21 + 88))(v21, *(v62 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v68);
  }

LABEL_16:
  result = 0;
LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v12[2] = *(a3 + 32);
  v13 = *(a3 + 48);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::ConstantConversion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::ConstantConversion]";
  v6 = 125;
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

void mlir::ODIE::Compiler::anonymous namespace::ShapeCastPattern::~ShapeCastPattern(mlir::ODIE::Compiler::_anonymous_namespace_::ShapeCastPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::ShapeCastPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48[8] = *MEMORY[0x277D85DE8];
  v7 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*v7 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = 24;
  }

  else
  {
    if (v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v10 = 8;
  }

  v9 = *(v7 + v10);
LABEL_7:
  v11 = *(a2 + 36);
  v12 = (a2 - 16);
  if (v11)
  {
    v13 = a2 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(*v14 + 136);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v17 = 24;
  }

  else
  {
    if (v15 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v16 = 0;
      goto LABEL_16;
    }

    v17 = 8;
  }

  v16 = *(v14 + v17);
LABEL_16:
  if (v9 == v16)
  {
    v36[0] = v37;
    v36[1] = 0x600000000;
    v18 = *(a1 + 96);
    if (!v11)
    {
      v12 = 0;
    }

    v38 = v12;
    v39 = 0;
    v40 = v12;
    v41 = v11;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v35, &v38);
    if (mlir::TypeConverter::convertTypes(v18, v35[0], v35[1], v36))
    {
      v19 = v36[0];
      v20 = *(a3 + 40);
      v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
      v22 = v20 & 6;
      if (v22 || !v21)
      {
        if (v22 == 2 && v21)
        {
          v21 = v21[3];
        }
      }

      else
      {
        v21 = *v21;
      }

      IndexAttr = mlir::Builder::getIndexAttr((a4 + 1), 0);
      v27 = *(*a4[1] + 608);
      v28 = *(a2 + 24);
      v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocViewOp>((a4 + 1), *(**v28 + 32));
      v38 = v28;
      v39 = v29;
      v40 = &v42;
      v41 = 0x400000000;
      v43 = v45;
      v44 = 0x400000000;
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
      mlir::ODIE::Compiler::Exec::AllocViewOp::build((a4 + 1), &v38, *v19, v21, IndexAttr, v27);
      v30 = mlir::Operation::create(&v38);
      mlir::OpBuilder::insert((a4 + 1), v30);
      v31 = *(*(v30 + 6) + 16);
      mlir::OperationState::~OperationState(&v38);
      if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      (*(*a4 + 8))(a4, a2, v32);
      v24 = 1;
    }

    else
    {
      v38 = "Failed to convert output types";
      v42 = 259;
      v35[0] = &v38;
      v25 = a4[2];
      if (v25 && v25[2] == 1)
      {
        (*(*v25 + 88))(v25, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::CastOp &>(mlir::ODIE::Compiler::CoreML::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v35);
      }

      v24 = 0;
    }

    if (v36[0] != v37)
    {
      free(v36[0]);
    }
  }

  else
  {
    v38 = "Only shape casts can be bufferized as views";
    v42 = 259;
    v36[0] = &v38;
    v23 = a4[2];
    if (v23 && v23[2] == 1)
    {
      (*(*v23 + 88))(v23, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::CastOp &>(mlir::ODIE::Compiler::CoreML::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v36);
    }

    v24 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v24;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::ShapeCastPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::ShapeCastPattern]";
  v6 = 123;
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

void mlir::ODIE::Compiler::anonymous namespace::GenericConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::ODIE::Compiler::CoreML::DelegateOp>::~GenericConversionPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::GenericConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::ODIE::Compiler::CoreML::DelegateOp>::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, mlir::ConversionPatternRewriter *this)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 6);
  v8 = v7[2];
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id)
  {
    v46 = "expected to be replaced by a specific pattern";
    v49 = 259;
    v51 = &v46;
    v14 = *(this + 2);
    if (v14 && v14[2] == 1)
    {
      (*(*v14 + 88))(v14, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v51);
    }
  }

  else
  {
    if (v8 == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = (v7[1] + 32);
    }

    else
    {
      v20 = v7 + 3;
    }

    v21 = *v20;
    if (!v21 || *(v21 + 24) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ExecDialect,void>::id)
    {
      v22 = a2;
      do
      {
        v23 = *(v22 + 2);
        if (v23)
        {
          v24 = *(v23 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v24)
          {
            v22 = *(v24 + 16);
            if (v22)
            {
              continue;
            }
          }
        }

        mlir::ConversionPatternRewriter::eraseOp(this, a2);
      }

      while (*(*(v22 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id);
      v51 = v53;
      v52 = 0x600000000;
      v25 = *(a1 + 96);
      v26 = *(a2 + 9);
      v27 = a2 - 16;
      if (!v26)
      {
        v27 = 0;
      }

      v46 = v27;
      v47 = 0;
      v48[0] = v27;
      v48[1] = v26;
      mlir::TypeRange::TypeRange<mlir::ResultRange>(v54, &v46);
      if (mlir::TypeConverter::convertTypes(v25, v54[0], v54[1], &v51))
      {
        if (v50 == 1)
        {
          v28 = a2;
          while (1)
          {
            v29 = *(v28 + 2);
            if (!v29)
            {
              break;
            }

            v30 = *(v29 + 24) & 0xFFFFFFFFFFFFFFF8;
            if (!v30)
            {
              break;
            }

            v28 = *(v30 + 16);
            if (!v28 || *(*(v28 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
            {
              goto LABEL_52;
            }
          }

          v28 = 0;
LABEL_52:
          v33 = *(*(a2 + 6) + 8);
          v43 = *(v33 + 16);
          v44 = *(a2 + 3);
          v42 = *(v33 + 24);
          v34 = v52;
          v35 = v51 & 0xFFFFFFFFFFFFFFF9;
          v36 = v46;
          v37 = v47;
          AttrDictionary = mlir::Operation::getAttrDictionary(a2);
          v40 = *(v39 + 36);
          if (v40)
          {
            v41 = (v39 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
          }

          else
          {
            v41 = 4;
          }

          mlir::ConversionPatternRewriter::replaceOp(this, a2, v41, v40);
        }

        v54[0] = "failed to get output intents";
        v55 = 259;
        v45 = v54;
        v32 = *(this + 2);
        if (v32 && v32[2] == 1)
        {
          (*(*v32 + 88))(v32, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v45);
        }

        if (v50 == 1 && v46 != v48)
        {
          free(v46);
        }
      }

      else
      {
        v46 = "Failed to convert output types";
        v49 = 259;
        v54[0] = &v46;
        v31 = *(this + 2);
        if (v31 && v31[2] == 1)
        {
          (*(*v31 + 88))(v31, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v54);
        }
      }

      if (v51 != v53)
      {
        free(v51);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::GenericConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::ODIE::Compiler::CoreML::DelegateOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::GenericConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp, mlir::ODIE::Compiler::CoreML::GraphOp, mlir::ODIE::Compiler::CoreML::OutputOp, mlir::ODIE::Compiler::CoreML::InvokeOp, mlir::ODIE::Compiler::CoreML::IsolatedGroupOp, mlir::ODIE::Compiler::CoreML::DelegateOp>]";
  v6 = 381;
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

void mlir::ODIE::Compiler::anonymous namespace::CoreInvokePattern::~CoreInvokePattern(mlir::ODIE::Compiler::_anonymous_namespace_::CoreInvokePattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(v12, a2);
  v12[9] = v9;
  v12[10] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(v12, a2);
  v12[9] = a3;
  v12[10] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(v12, a2);
  v12[9] = v9;
  v12[10] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(v12, a2);
  v12[9] = a3;
  v12[10] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v16);
  v8 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = v9;
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  (*(*a1 + 88))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreInvokePattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70[6] = *MEMORY[0x277D85DE8];
  v43 = a2;
  v7 = *(a3 + 72);
  v8 = *(a3 + 80);
  v68 = v70;
  v69 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v68, v7, 0, v7, v8);
  v65 = v67;
  v66 = 0x600000000;
  v62 = v64;
  v63 = 0x600000000;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(a2 + 68);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = 0;
  v11 = *(a2 + 72) + 24;
  do
  {
    v12 = *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(*v12 + 136);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      goto LABEL_11;
    }

    v14 = *(*v11 + 8) < 0;
    if (v12)
    {
      v15 = v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v62, *(v68 + 8 * v10));
LABEL_11:
      llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(&v65, v10);
    }

    ++v10;
    v11 += 32;
  }

  while (v9 != v10);
  if (v66)
  {
    v16 = v69;
    v17 = 8 * v66;
    v18 = v65 - 8;
    do
    {
      v19 = (v68 + 8 * *&v18[v17]);
      v20 = (v68 + 8 * v16);
      if (v20 != v19 + 8)
      {
        memmove(v19, v19 + 8, v20 - (v19 + 8));
        v16 = v69;
      }

      LODWORD(v69) = --v16;
      v17 -= 8;
    }

    while (v17);
  }

LABEL_18:
  v21 = v63;
  v22 = (v62 & 0xFFFFFFFFFFFFFFF9);
  v23 = *(v43 + 9);
  v24 = v43 - 16;
  if (!v23)
  {
    v24 = 0;
  }

  v50 = v24;
  v51 = 0;
  v52 = v24;
  v53 = v23;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v47, &v50);
  v50 = v22;
  v51 = 0;
  v52 = v22;
  v53 = v21;
  mlir::TypeRange::TypeRange<mlir::ValueRange>(&v56, &v50);
  v56 = v58;
  v57 = 0x600000000;
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), v59 & 0xFFFFFFFFFFFFFFF9 | 2, v60, &v56))
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(v43);
    v27 = *(AttrDictionary + 8);
    v26 = *(AttrDictionary + 16);
    v50 = &v52;
    v51 = 0x400000000;
    v55 = 0;
    dictionaryAttrSort<false>(v27, v26, &v50);
    v55 = 4;
    v28 = &unk_27FC18528;
    v29 = 48;
    do
    {
      mlir::NamedAttrList::erase(&v50, *(v28 - 1), *v28);
      v28 += 2;
      v29 -= 16;
    }

    while (v29);
    ResolvedCallee = mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(&v43);
    if (ResolvedCallee)
    {
      v31 = v43;
      while (1)
      {
        v32 = *(v31 + 2);
        if (!v32)
        {
          break;
        }

        v33 = *(v32 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v33)
        {
          break;
        }

        v31 = *(v33 + 16);
        if (!v31 || *(*(v31 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
        {
          goto LABEL_39;
        }
      }

      v31 = 0;
LABEL_39:
      v36 = *(v43 + 3);
      v37 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(ResolvedCallee);
      v39 = *(v38 + 36);
      if (v39)
      {
        v40 = (v38 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v40 = 4;
      }

      mlir::ConversionPatternRewriter::replaceOp(a4, v43, v40, v39);
    }

    v44 = "failed to resolve the callee to a concrete symbol";
    v45 = 259;
    v46 = &v44;
    v35 = *(a4 + 16);
    if (v35 && v35[2] == 1)
    {
      (*(*v35 + 88))(v35, *(v43 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::InvokeOp &>(mlir::ODIE::Compiler::CoreML::InvokeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v46);
    }

    if (v49[48] == 1 && v47 != v49)
    {
      free(v47);
    }

    if (v50 != &v52)
    {
      free(v50);
    }
  }

  else
  {
    v50 = "Failed to convert output types";
    v54 = 259;
    v47 = &v50;
    v34 = *(a4 + 16);
    if (v34 && v34[2] == 1)
    {
      (*(*v34 + 88))(v34, *(v43 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::InvokeOp &>(mlir::ODIE::Compiler::CoreML::InvokeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v47);
    }
  }

  if (v56 != v58)
  {
    free(v56);
  }

  if (v59 != &v61)
  {
    free(v59);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  v41 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v18);
  v8 = *(a3 + 48);
  v14[2] = *(a3 + 32);
  v14[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v10;
  v15 = v9;
  v16 = v18 & 0xFFFFFFFFFFFFFFF9;
  v17 = v19;
  v11 = (*(*a1 + 104))(a1, a2, v14, a4);
  if (v18 != v20)
  {
    free(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void *mlir::ODIE::Compiler::anonymous namespace::TokenToHandleStateMap::setHandleStateAtToken(uint64_t *a1, void *a2, uint64_t *a3)
{
  v12 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a1, &v12);
  *result = a3;
  if (*(*(a3[1] & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
  {
    v5 = *v12;
    if (*v12)
    {
      do
      {
        v6 = v5[2];
        if (v6)
        {
          v7 = *(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id;
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          v8 = *(v6 + 72);
          v9 = v8[1];
          if (v9)
          {
            v10 = *v8;
            *v9 = *v8;
            if (v10)
            {
              *(v10 + 8) = v8[1];
            }
          }

          v8[3] = a3;
          v11 = *a3;
          *v8 = *a3;
          v8[1] = a3;
          if (v11)
          {
            *(v11 + 8) = v8;
          }

          *a3 = v8;
        }

        v5 = *v5;
      }

      while (v5);
    }
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CoreInvokePattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CoreInvokePattern]";
  v6 = 124;
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

void mlir::ODIE::Compiler::anonymous namespace::WriteHandleOpPattern::~WriteHandleOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::WriteHandleOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WriteHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WriteHandleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WriteHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::anonymous namespace::WriteHandleOpPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 40);
  v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 6) != 0 || v8 == 0)
  {
    if ((*(a3 + 40) & 6) == 2 && v8 != 0)
    {
      v8 = v8[3];
    }
  }

  else
  {
    v8 = *v8;
  }

  v11 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 1;
  v12 = mlir::ValueRange::offset_base(&v19, 1);
  v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 6) != 0 || !v13)
  {
    if ((v12 & 6) == 2 && v13)
    {
      v13 = v13[3];
    }
  }

  else
  {
    v13 = *v13;
  }

  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CopyOp>(a4 + 8, *(**v11 + 32));
  v19 = v11;
  v20 = v14;
  v21 = v23;
  v22 = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[8] = 4;
  v25[9] = v26;
  v25[10] = 0x100000000;
  v26[1] = v27;
  v26[2] = 0x100000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v27[4] = 0;
  v27[6] = 0;
  mlir::ODIE::Compiler::Exec::CopyOp::build(a4 + 8, &v19, v13, v8);
  v15 = mlir::Operation::create(&v19);
  mlir::OpBuilder::insert((a4 + 8), v15);
  v16 = *(*(v15 + 6) + 16);
  mlir::OperationState::~OperationState(&v19);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id)
  {
    v15 = 0;
  }

  v17 = *(v15 + 9);
  if (v17)
  {
    v18 = (v15 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v18 = 4;
  }

  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v18, v17);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::WriteHandleOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::WriteHandleOpPattern]";
  v6 = 127;
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

void mlir::ODIE::Compiler::anonymous namespace::ReadHandleOpPattern::~ReadHandleOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::ReadHandleOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReadHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReadHandleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReadHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::anonymous namespace::ReadHandleOpPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 40);
  v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 6) != 0 || v8 == 0)
  {
    if ((*(a3 + 40) & 6) == 2 && v8 != 0)
    {
      v8 = v8[3];
    }
  }

  else
  {
    v8 = *v8;
  }

  v42 = *(a3 + 40);
  v43 = 1;
  v11 = mlir::ValueRange::offset_base(&v42, 1);
  v12 = v11 & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 6) != 0 || !v12)
  {
    if ((v11 & 6) == 2 && v12)
    {
      v12 = *(v12 + 24);
    }
  }

  else
  {
    v12 = *v12;
  }

  if ((~*(v12 + 8) & 7) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  HandleStateAtToken = v8;
  if (v13)
  {
    v15 = *(v13 + 8) & 7;
    if (v15 == 6)
    {
      HandleStateAtToken = v8;
      v16 = v13 + 24 * *(v13 + 16) + 120;
      if (!v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = v13 + 16 * v15 + 16;
    }

    v17 = *(*(v16 + 48) + 16);
    v18 = v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateTokenOp,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id;
    HandleStateAtToken = v8;
    if (!v18)
    {
      v19 = *(a1 + 104);
      v42 = v12;
      if (llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v19, &v42))
      {
      }

      else
      {
        HandleStateAtToken = v12;
      }
    }
  }

LABEL_32:
  v20 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
  v34 = 0;
  v35 = v20;
  {
    v21 = *(a2 + 24);
    v22 = *(**v21 + 32);
    v42 = v20;
    v36 = HandleStateAtToken;
    v37 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(v22, &v42);
    v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::GetTypeOp,void>::id, *(**v21 + 32));
    if ((v24 & 1) == 0)
    {
      v41 = 1283;
      v40[2] = "exec.get_type";
      v40[3] = 13;
      v39 = 259;
      llvm::operator+(v40, v38, &v42);
      llvm::report_fatal_error(&v42, 1);
    }

    v42 = v21;
    v43 = v23;
    v44 = v46;
    v45 = 0x400000000;
    v47 = v49;
    v48 = 0x400000000;
    v50 = v52;
    v51 = 0x400000000;
    v53 = 4;
    v54 = &v56;
    v55 = 0x100000000;
    v57 = &v59;
    v58 = 0x100000000;
    v60 = 0;
    v61 = 0;
    v62 = &mlir::detail::TypeIDResolver<void,void>::id;
    v63 = 0;
    v64 = 0;
    mlir::ODIE::Compiler::Exec::GetTypeOp::build(a4 + 8, &v42, &v37 + 2, 1, &v36, 1, 0, 0);
    v25 = mlir::Operation::create(&v42);
    mlir::OpBuilder::insert((a4 + 8), v25);
    v26 = *(*(v25 + 6) + 16);
    mlir::OperationState::~OperationState(&v42);
    if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::GetTypeOp,void>::id)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v34 = v27 - 16;
  }

  v28 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type &,mlir::Value &>((a4 + 8), *(a2 + 24), &v35, &v34);
  v29 = *(a2 + 24);
  v38[0] = v20;
  v40[0] = HandleStateAtToken;
  v40[1] = (v28 - 16);
  v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CopyOp>(a4 + 8, *(**v29 + 32));
  v42 = v29;
  v43 = v30;
  v44 = v46;
  v45 = 0x400000000;
  v47 = v49;
  v48 = 0x400000000;
  v50 = v52;
  v51 = 0x400000000;
  v53 = 4;
  v54 = &v56;
  v55 = 0x100000000;
  v57 = &v59;
  v58 = 0x100000000;
  v60 = 0;
  v61 = 0;
  v62 = &mlir::detail::TypeIDResolver<void,void>::id;
  v63 = 0;
  v64 = 0;
  mlir::ODIE::Compiler::Exec::CopyOp::build(a4 + 8, &v42, v38 + 2, 1, v40, 2, 0, 0);
  v31 = mlir::Operation::create(&v42);
  mlir::OpBuilder::insert((a4 + 8), v31);
  v32 = *(*(v31 + 6) + 16);
  mlir::OperationState::~OperationState(&v42);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v42 = (v33 - 16);
  v43 = (v33 - 16);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v42, 2);
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::TokenToHandleStateMap::getHandleStateAtToken(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(a1, &v9);
  v4 = *a1 + 16 * *(a1 + 16);
  if (v3)
  {
    v4 = v3;
  }

  result = *(v4 + 8);
  v10 = result;
  for (i = *(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136); i == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id; i = *(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136))
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(a1, &v10);
    v8 = *a1 + 16 * *(a1 + 16);
    if (v7)
    {
      v8 = v7;
    }

    result = *(v8 + 8);
    v10 = result;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::ReadHandleOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::ReadHandleOpPattern]";
  v6 = 126;
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

void mlir::ODIE::Compiler::anonymous namespace::CoreOutputPattern::~CoreOutputPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CoreOutputPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OutputOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OutputOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OutputOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreOutputPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a2;
  do
  {
    v6 = *((*(*(v6 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  while (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id);
  v46 = v6;
  v7 = *(*(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 72) + 8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 12);
  v47 = v49;
  v48 = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v10 = *(a2 + 68);
    v11 = v9;
    if (v10 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v49, v10, 8);
      v11 = *(v7 + 12);
    }
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    v12 = 0;
    v13 = v11;
    v14 = v8 - v9;
    while (1)
    {
      ArgAttr = mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::getArgAttr(&v46, v14 + v12, "coreml.intent", 0xDuLL);
      if (ArgAttr)
      {
        if (*(*ArgAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
        {
          v16 = ArgAttr;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a3 + 48);
      v50 = *(a3 + 40);
      v51 = v17;
      v18 = mlir::ValueRange::dereference_iterator(&v50, v12);
      HandleStateAtToken = v18;
      if (v16 && *(v16 + 8) == 2)
      {
        goto LABEL_43;
      }

      v20 = *(((v46 + 16 * ((*(v46 + 44) >> 23) & 1) + ((*(v46 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v46 + 40) + 8);
      v21 = v20 - 8;
      if (!v20)
      {
        v21 = 0;
      }

      if (*(*(*(v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        break;
      }

LABEL_43:
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v47, HandleStateAtToken);
      if (v13 == ++v12)
      {
        goto LABEL_44;
      }
    }

    v22 = *(*(v21 + 48) + 8 * (v14 + v12));
    v23 = *(a4 + 24);
    v24 = *(v18 + 8) & 7;
    if (v24 == 7)
    {
      v25 = 0;
    }

    else
    {
      v25 = v18;
    }

    if (v25)
    {
      v26 = *(v25 + 8) & 7;
      if (v26 == 6)
      {
        v27 = v25 + 24 * *(v25 + 16) + 120;
        if (!v27)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = v25 + 16 * v26 + 16;
      }

      *(a4 + 24) = vextq_s8(*(v27 + 8), *(v27 + 8), 8uLL);
      v24 = *(v18 + 8) & 7;
    }

LABEL_28:
    if (v24 == 7)
    {
      v28 = 0;
    }

    else
    {
      v28 = v18;
    }

    v45 = v23;
    if (!v28)
    {
      goto LABEL_34;
    }

    v29 = *(v28 + 8) & 7;
    if (v29 == 6)
    {
      v30 = v28 + 24 * *(v28 + 16) + 120;
      if (!v30)
      {
LABEL_34:
        v31 = v18 + 32;
LABEL_37:
        v32 = *v31;
        v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CopyOp>(a4 + 8, *(***v31 + 32));
        v50 = v32;
        v51 = v33;
        v52 = v54;
        v53 = 0x400000000;
        v55 = v57;
        v56 = 0x400000000;
        v58 = v60;
        v59 = 0x400000000;
        v61 = 4;
        v62 = &v64;
        v63 = 0x100000000;
        v65 = &v67;
        v66 = 0x100000000;
        v68 = 0;
        v69 = 0;
        v70 = &mlir::detail::TypeIDResolver<void,void>::id;
        v71 = 0;
        v72 = 0;
        mlir::ODIE::Compiler::Exec::CopyOp::build(a4 + 8, &v50, HandleStateAtToken, v22);
        v34 = mlir::Operation::create(&v50);
        mlir::OpBuilder::insert((a4 + 8), v34);
        v35 = *(*(v34 + 6) + 16);
        mlir::OperationState::~OperationState(&v50);
        if (v45)
        {
          *(a4 + 24) = v45;
        }

        else
        {
          *(a4 + 24) = 0;
          *(a4 + 32) = 0;
        }

        if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id)
        {
          HandleStateAtToken = (v34 - 16);
        }

        else
        {
          HandleStateAtToken = -16;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v30 = v28 + 16 * v29 + 16;
    }

    v31 = v30 + 24;
    goto LABEL_37;
  }

LABEL_44:
  v36 = *(a2 + 24);
  v37 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::ReturnOp>(a4 + 8, *(**v36 + 32));
  v50 = v36;
  v51 = v37;
  v52 = v54;
  v53 = 0x400000000;
  v55 = v57;
  v56 = 0x400000000;
  v58 = v60;
  v59 = 0x400000000;
  v61 = 4;
  v62 = &v64;
  v63 = 0x100000000;
  v65 = &v67;
  v66 = 0x100000000;
  v68 = 0;
  v69 = 0;
  v70 = &mlir::detail::TypeIDResolver<void,void>::id;
  v71 = 0;
  v72 = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v52, v47 & 0xFFFFFFFFFFFFFFF9, 0, v47 & 0xFFFFFFFFFFFFFFF9, v48);
  v38 = mlir::Operation::create(&v50);
  mlir::OpBuilder::insert((a4 + 8), v38);
  v39 = *(*(v38 + 6) + 16);
  mlir::OperationState::~OperationState(&v50);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  (*(*a4 + 8))(a4, a2, v40);
  if (v47 != v49)
  {
    free(v47);
  }

  v41 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::getArgAttr(uint64_t *a1, unsigned int a2, const void *a3, size_t a4)
{
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  result = (*(*(InterfaceFor + 48) + 24))();
  if (result)
  {
    v9 = *(*(result + 8) + 8 * a2);
    if (v9 && (v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v9 + 8), *(v9 + 8) + 16 * *(v9 + 16), a3, a4), (v11 & 1) != 0))
    {
      return *(v10 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CoreOutputPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CoreOutputPattern]";
  v6 = 124;
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

void mlir::ODIE::Compiler::anonymous namespace::IsolatedGroupOpPattern::~IsolatedGroupOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::IsolatedGroupOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 64), *(a3 + 72), &v14);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v9 = *(a3 + 48);
  v11[2] = *(a3 + 32);
  v11[3] = v9;
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::IsolatedGroupOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64[8] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 64);
  v7 = *(a3 + 72);
  v51 = v53;
  v52 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v51, v6, 0, v6, v7);
  v48 = v50;
  v49 = 0x600000000;
  v46[0] = v47;
  v46[1] = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v8 = *(a2 + 68);
    if (v8)
    {
      v9 = 0;
      v10 = a2 + 64;
      v11 = 24;
      do
      {
        v12 = *(*(*(a2 + 72) + v11) + 8) & 0xFFFFFFFFFFFFFFF8;
        v13 = *(*v12 + 136);
        if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
        {
          llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(&v48, v9);
          v16 = *(((v10 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
          if (v16)
          {
            v17 = v16 - 8;
          }

          else
          {
            v17 = 0;
          }

          v18 = *(*(v17 + 48) + 8 * v9);
          Token = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateTokenOp>((a4 + 8), *(v18 + 32));
          mlir::RewriterBase::replaceAllUsesWith(a4, v18, (Token - 16));
        }

        else
        {
          v14 = *(*(*(a2 + 72) + v11) + 8) < 0;
          if (v12)
          {
            v15 = v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
          }

          else
          {
            v15 = 0;
          }

          if (v15)
          {
            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v46, v12);
          }
        }

        ++v9;
        v11 += 32;
      }

      while (v8 != v9);
      if (v49)
      {
        v20 = 8 * v49;
        v21 = v48 - 8;
        do
        {
          v22 = *&v21[v20];
          v23 = v51 + 8 * v22;
          v24 = v52;
          v25 = v51 + 8 * v52;
          if (v25 != v23 + 8)
          {
            memmove(v23, v23 + 8, v25 - (v23 + 8));
            v24 = v52;
          }

          LODWORD(v52) = v24 - 1;
          v26 = *(((v10 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
          if (v26)
          {
            v27 = (v26 - 8);
          }

          else
          {
            v27 = 0;
          }

          mlir::Block::eraseArgument(v27, v22);
          v20 -= 8;
        }

        while (v20);
      }
    }
  }

  v28 = *(a2 + 36);
  if (v28)
  {
    v29 = (a2 - 16);
  }

  else
  {
    v29 = 0;
  }

  v54 = v29;
  v55 = 0;
  v56 = v29;
  v57 = v28;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v40, &v54);
  v40 = v42;
  v41 = 0x600000000;
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), v43 & 0xFFFFFFFFFFFFFFF9 | 2, v44, &v40))
  {
    v30 = *(a2 + 24);
    v31 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);
    v34 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(a4 + 8, *(**v30 + 32));
    v54 = v30;
    v55 = v34;
    v56 = &v58;
    v57 = 0x400000000;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
    v62[8] = 4;
    v62[9] = v63;
    v62[10] = 0x100000000;
    v63[1] = v64;
    v63[2] = 0x100000000;
    v64[2] = 0;
    v64[1] = 0;
    v64[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v64[4] = 0;
    v64[6] = 0;
    mlir::ODIE::Compiler::Exec::IsolatedGroupOp::build((a4 + 8), &v54, v40 & 0xFFFFFFFFFFFFFFF9 | 2, v41, v51 & 0xFFFFFFFFFFFFFFF9, v52, v32, v33);
  }

  v54 = "Failed to convert output types";
  v58 = 259;
  v39 = &v54;
  v35 = *(a4 + 16);
  if (v35 && v35[2] == 1)
  {
    (*(*v35 + 88))(v35, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp &>(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v39);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != &v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  v36 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 64), *(a3 + 72), &v16);
  v8 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v8;
  v9 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v9;
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v10 = (*(*a1 + 104))(a1, a2, v13, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::IsolatedGroupOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::IsolatedGroupOpPattern]";
  v6 = 129;
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

void mlir::ODIE::Compiler::anonymous namespace::CoreYieldPattern::~CoreYieldPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CoreYieldPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreYieldPattern::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v21 = v23;
  v22 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v21, v7, 0, v7, v8);
  if (v22)
  {
    v9 = v21;
    v10 = 8 * v22;
    do
    {
      if (*(*(*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v12 = *(AttrDictionary + 8);
  v13 = *(AttrDictionary + 16);
  v14 = *(a2 + 3);
  v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::YieldOp>(a4 + 8, *(**v14 + 32));
  v24[0] = v14;
  v24[1] = v15;
  v24[2] = v25;
  v24[3] = 0x400000000;
  v25[4] = v26;
  v25[5] = 0x400000000;
  v26[4] = v27;
  v26[5] = 0x400000000;
  v27[8] = 4;
  v27[9] = v28;
  v27[10] = 0x100000000;
  v28[1] = v29;
  v28[2] = 0x100000000;
  v29[1] = 0;
  v29[2] = 0;
  v29[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v29[4] = 0;
  v29[6] = 0;
  mlir::ODIE::Compiler::Exec::YieldOp::build(a4 + 8, v24, 2, 0, v21 & 0xFFFFFFFFFFFFFFF9, v22, v12, v13);
  v16 = mlir::Operation::create(v24);
  mlir::OpBuilder::insert((a4 + 8), v16);
  v17 = *(*(v16 + 6) + 16);
  mlir::OperationState::~OperationState(v24);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  (*(*a4 + 8))(a4, a2, v18);
  if (v21 != v23)
  {
    free(v21);
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CoreYieldPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CoreYieldPattern]";
  v6 = 123;
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

void mlir::ODIE::Compiler::anonymous namespace::CallDelegatePattern::~CallDelegatePattern(mlir::ODIE::Compiler::_anonymous_namespace_::CallDelegatePattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DelegateOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(v12, a2);
  v12[9] = v9;
  v12[10] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(v12, a2);
  v12[9] = a3;
  v12[10] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DelegateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(v12, a2);
  v12[9] = v9;
  v12[10] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(v12, a2);
  v12[9] = a3;
  v12[10] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DelegateOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v16);
  v8 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = v9;
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  (*(*a1 + 88))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CallDelegatePattern::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v90[8] = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 3);
  v57 = a2;
  v79 = v81;
  v80 = 0x600000000;
  v76 = v78;
  v77 = 0x600000000;
  mlir::ODIE::Compiler::CoreML::DelegateOp::getInputIntents(&v57, v82);
  v74[0] = v75;
  v74[1] = 0x600000000;
  if (LODWORD(v82[1]))
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v74, v82);
  }

  if (v85 == 1 && v82[0] != v83)
  {
    free(v82[0]);
  }

  v8 = 0;
  for (i = 24; ; i += 32)
  {
    v10 = (*(v57 + 46) & 0x80) != 0 ? *(v57 + 17) : 0;
    if (v8 >= v10)
    {
      break;
    }

    if (*(*(*(*(*(v57 + 9) + i) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      *v82 = *(a3 + 72);
      v11 = mlir::ValueRange::dereference_iterator(v82, v8);
      if (*(*(v74[0] + v8) + 8) == 1)
      {
        v12 = &v76;
      }

      else
      {
        v12 = &v79;
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v12, v11);
    }

    ++v8;
  }

  v13 = *(v57 + 9);
  if (v13)
  {
    v14 = v57 - 16;
  }

  else
  {
    v14 = 0;
  }

  v71 = v73;
  v72 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v71, v14, 0, v14, v13);
  v15 = v72;
  if (v72)
  {
    v16 = 0;
    v17 = 0;
    v18 = 8 * v72;
    do
    {
      if (*(**(v71 + v16) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        v19 = *(v76 + v17++);
        *(v71 + v16) = *(v19 + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      v16 += 8;
    }

    while (v18 != v16);
  }

  v68 = v70;
  v69 = 0x600000000;
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), v71 & 0xFFFFFFFFFFFFFFF9 | 2, v15, &v68))
  {
    v65 = v67;
    v66 = 0x600000000;
    if (LODWORD(v82[1]))
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(&v65, v82);
    }

    if (v85 == 1 && v82[0] != v83)
    {
      free(v82[0]);
    }

    AttrDictionary = mlir::Operation::getAttrDictionary(v57);
    v22 = *(AttrDictionary + 8);
    v21 = *(AttrDictionary + 16);
    v61 = v63;
    v62 = 0x400000000;
    v64 = 0;
    dictionaryAttrSort<false>(v22, v21, &v61);
    v64 = 4;
    v23 = &unk_27FC18240;
    v24 = 64;
    do
    {
      mlir::NamedAttrList::erase(&v61, *(v23 - 1), *v23);
      v23 += 2;
      v24 -= 16;
    }

    while (v24);
    v26 = v57;
    while (1)
    {
      v27 = *(v26 + 2);
      if (!v27)
      {
        break;
      }

      v28 = *(v27 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v28)
      {
        break;
      }

      v26 = *(v28 + 16);
      if (!v26 || *(*(v26 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_44;
      }
    }

    v26 = 0;
LABEL_44:
    v31 = *(v57 + 2 * ((*(v57 + 11) >> 23) & 1) + 9);
    v32 = v57;
    v33 = *(v57 + 2 * ((*(v57 + 11) >> 23) & 1) + 9);
    v34 = *(v33 + 16);
    v35 = *(v33 + 24);
    v36 = mlir::ArrayAttr::get(*(a4 + 8), v65, v66);
    v37 = *(v32 + 3);
    v38 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CallOp>(a4 + 8, *(**v37 + 32));
    v82[0] = v37;
    v82[1] = v38;
    v83[0] = &v84;
    v83[1] = 0x400000000;
    v85 = v87;
    v86 = 0x400000000;
    v87[4] = v88;
    v87[5] = 0x400000000;
    v88[8] = 4;
    v88[9] = v89;
    v88[10] = 0x100000000;
    v89[1] = v90;
    v89[2] = 0x100000000;
    v90[2] = 0;
    v90[1] = 0;
    v90[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v90[4] = 0;
    v90[6] = 0;
    mlir::ODIE::Compiler::Exec::CallOp::build((a4 + 8), v82, v68 & 0xFFFFFFFFFFFFFFF9 | 2, v69, v34, v35, v79 & 0xFFFFFFFFFFFFFFF9, v80, v58 & 0xFFFFFFFFFFFFFFF9, v59, v36, 0);
    v39 = mlir::Operation::create(v82);
    mlir::OpBuilder::insert((a4 + 8), v39);
    v40 = *(*(v39 + 6) + 16);
    mlir::OperationState::~OperationState(v82);
    if (v40 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
    {
      v39 = 0;
    }

    (*(*a4 + 8))(a4, v32, v39);
    *(v39 + 7) = mlir::Operation::getDiscardableAttrDictionary(v57);
    v41 = *(v57 + 2 * ((*(v57 + 11) >> 23) & 1) + 11);
    v42 = mlir::detail::DenseArrayAttrImpl<signed char>::get((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8), *(v41 + 24), *(v41 + 32));
    mlir::Operation::setAttr(v39, "resource", 8, v42);
    mlir::Operation::setAttr(v39, "delegate", 8, *(**(a4 + 8) + 608));
    v43 = v72;
    if (v72)
    {
      v44 = 0;
      v45 = -16;
      do
      {
        v46 = *(v57 + 9);
        v47 = v57 - 16;
        if (v46)
        {
          v48 = v57 - 16;
        }

        else
        {
          v48 = 0;
        }

        if (v45 == -16)
        {
          goto LABEL_60;
        }

        v49 = *(v48 + 1) & 7;
        if (v46)
        {
          v50 = v49 == 6;
        }

        else
        {
          v50 = 1;
        }

        v51 = v44;
        if (!v50)
        {
          v52 = (5 - v49);
          v51 = v44 - v52;
          if (v44 <= v52)
          {
            v48 = v57 + v45;
            goto LABEL_60;
          }

          v47 -= 16 * v52;
        }

        v48 = &v47[-24 * v51];
LABEL_60:
        if (*(*(*(v48 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
        {
          if (v44 <= 5)
          {
            v53 = v57 + v45;
          }

          else
          {
            v53 = v57 - 24 * (v44 - 5) - 96;
          }

          if (v44 <= 5)
          {
            v54 = &v39[v45];
          }

          else
          {
            v54 = &v39[-24 * (v44 - 5) - 96];
          }

          v43 = v72;
        }

        ++v44;
        v45 -= 16;
      }

      while (v44 < v43);
    }

    if (v58 != &v60)
    {
      free(v58);
    }

    if (v61 != v63)
    {
      free(v61);
    }

    if (v65 != v67)
    {
      free(v65);
    }

    v30 = 1;
  }

  else
  {
    v82[0] = "Failed to convert output types";
    v84 = 259;
    v61 = v82;
    v29 = *(a4 + 16);
    if (v29 && v29[2] == 1)
    {
      (*(*v29 + 88))(v29, *(v57 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::DelegateOp &>(mlir::ODIE::Compiler::CoreML::DelegateOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v61);
    }

    v30 = 0;
  }

  if (v68 != v70)
  {
    free(v68);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  if (v74[0] != v75)
  {
    free(v74[0]);
  }

  if (v76 != v78)
  {
    free(v76);
  }

  if (v79 != v81)
  {
    free(v79);
  }

  v55 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DelegateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v18);
  v8 = *(a3 + 48);
  v14[2] = *(a3 + 32);
  v14[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v10;
  v15 = v9;
  v16 = v18 & 0xFFFFFFFFFFFFFFF9;
  v17 = v19;
  v11 = (*(*a1 + 104))(a1, a2, v14, a4);
  if (v18 != v20)
  {
    free(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CallDelegatePattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CallDelegatePattern]";
  v6 = 126;
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

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 72 * a2;
    v3 = (a1 + 24);
    do
    {
      if ((*(v3 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 2);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 9;
      v2 -= 72;
    }

    while (v2);
  }
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler12_GLOBAL__N_117ConvertCoreToExec14runOnOperationEvE4__11NSC_6CoreML8ModuleOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(int a1, mlir::Operation *this)
{
  if (this && *(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
  {
    v2 = *(((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
    v3 = v2 ? v2 - 8 : 0;
    if (*(v3 + 32) == v3 + 32)
    {
      if (*(this + 2))
      {
        *(this + 2) = 0;
        v5 = *this;
        v4 = *(this + 1);
        *v4 = *this;
        *(v5 + 8) = v4;
        *this = 0;
        *(this + 1) = 0;
      }

      mlir::Operation::destroy(this);
    }
  }
}

uint64_t llvm::SmallVector<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -32 * v3;
    v5 = v2 + 32 * v3 - 32;
    do
    {
      v5 = std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](v5) - 32;
      v4 += 32;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVector<std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::TypeRange,mlir::ValueRange,mlir::Location,mlir::Type)>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -32 * v3;
    v5 = v2 + 32 * v3 - 32;
    do
    {
      v5 = std::__function::__value_func<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::TypeRange,mlir::ValueRange,mlir::Location,mlir::Type)>::~__value_func[abi:nn200100](v5) - 32;
      v4 += 32;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::TypeRange,mlir::ValueRange,mlir::Location,mlir::Type)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::SmallVector<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -32 * v3;
    v5 = v2 + 32 * v3 - 32;
    do
    {
      v5 = std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](v5) - 32;
      v4 += 32;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVector<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -32 * v3;
    v5 = v2 + 32 * v3 - 32;
    do
    {
      v5 = std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::~__value_func[abi:nn200100](v5) - 32;
      v4 += 32;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void *mlir::ODIE::Compiler::materializeSourceConversion(uint64_t a1, size_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v110[6] = *MEMORY[0x277D85DE8];
  v84 = a6;
  v85 = a1;
  v83 = a7;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    v13 = a2[4];
    v14 = a2 + 5;
  }

  else
  {
    if (v11 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      goto LABEL_10;
    }

    v12 = a2[3];
    if (*(v12 + 80) != 1)
    {
      goto LABEL_10;
    }

    v13 = *(v12 + 16);
    v14 = (v12 + 24);
  }

  v15 = *v14;
  if (!*v14)
  {
LABEL_10:
    ElementsAttr = 0;
    goto LABEL_82;
  }

  v16 = (*(a3 + 16))(a3, a2);
  v18 = (*(v17 + 24))(v17, v16);
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v84, v18, &v90);
  v19 = (*(a3 + 16))(a3, a2);
  v21 = (*(v20 + 24))(v20, v19);
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v83, v21, &v88);
  v22 = (*(a3 + 16))(a3, a2);
  v24 = (*(v23 + 8))(v23, v22);
  if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v27 = *(v24 + 8) & 0x3FFFFFFF;
  }

  else
  {
    v25 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible(v24);
    if (v25)
    {
      v27 = *((*v26)(v26, v25) + 12);
    }

    else
    {
      v27 = -1;
    }
  }

  v81 = 0;
  v82 = std::system_category();
  v29 = *v88 * v27 + 7;
  v30 = v29 >> 3;
  llvm::sys::Memory::allocateMappedMemory(v29 >> 3, 0, 50331648, &v81, &v79);
  v31 = v79;
  if ((*(a3 + 8))(a3, a2))
  {
    if (v29 >= 8)
    {
      v32 = &v31[v30];
      do
      {
        memmove(v31, v13, v15);
        v31 += v15;
      }

      while (v31 < v32);
    }

LABEL_75:
    v92 = v79;
    v93 = v80;
    llvm::sys::Memory::protectMappedMemory(&v92, 0x1000000);
    *&v92 = &v85;
    ElementsAttr = mlir::ODIE::Compiler::CoreML::createElementsAttr(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::materializeSourceConversion(mlir::Location,mlir::ElementsAttr,mlir::ShapedType,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::$_1>, &v92, a4, a5, &v79, v30);
    v31 = v79;
    goto LABEL_76;
  }

  v78 = v29 >> 3;
  v33 = __ROR8__(v27 - 8, 3);
  if (v33 > 2)
  {
    if (v33 == 3)
    {
      v60 = (*(a3 + 16))(a3, a2);
      v62 = (*(v61 + 24))(v61, v60);
      v64 = v63;
      v86 = v83;
      v87 = v84;
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v87, v62, &v108);
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v86, v62, &v105);
      if (v64)
      {
        v65 = 8 * v64;
        v40 = 1;
        v66 = v62;
        do
        {
          v67 = *v66++;
          v40 *= v67;
          v65 -= 8;
        }

        while (v65);
      }

      else
      {
        v40 = 1;
      }

      *&v92 = v62;
      *(&v92 + 1) = v64;
      v93 = v95;
      v94 = 0x600000000;
      if (v109)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v93, &v108);
      }

      v74 = v29 >> 5;
      v75 = v15 >> 2;
      v96 = v87;
      v97 = v99;
      v98 = 0x600000000;
      if (v106)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v97, &v105);
      }

      v100 = v86;
      v101 = v31;
      v102 = v74;
      v103 = v13;
      v104 = v75;
    }

    else
    {
      if (v33 != 7)
      {
        goto LABEL_31;
      }

      v43 = (*(a3 + 16))(a3, a2);
      v45 = (*(v44 + 24))(v44, v43);
      v47 = v46;
      v86 = v83;
      v87 = v84;
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v87, v45, &v108);
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v86, v45, &v105);
      if (v47)
      {
        v48 = 8 * v47;
        v40 = 1;
        v49 = v45;
        do
        {
          v50 = *v49++;
          v40 *= v50;
          v48 -= 8;
        }

        while (v48);
      }

      else
      {
        v40 = 1;
      }

      *&v92 = v45;
      *(&v92 + 1) = v47;
      v93 = v95;
      v94 = 0x600000000;
      if (v109)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v93, &v108);
      }

      v71 = v29 >> 6;
      v72 = v15 >> 3;
      v96 = v87;
      v97 = v99;
      v98 = 0x600000000;
      if (v106)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v97, &v105);
      }

      v100 = v86;
      v101 = v31;
      v102 = v71;
      v103 = v13;
      v104 = v72;
    }

LABEL_67:
    llvm::parallelFor(0, v40, v70, &v92);
    if (v97 != v99)
    {
      free(v97);
    }

    v73 = v93;
    v30 = v78;
    if (v93 == v95)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (!v33)
  {
    v51 = (*(a3 + 16))(a3, a2);
    v53 = (*(v52 + 24))(v52, v51);
    v55 = v54;
    v86 = v83;
    v87 = v84;
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v87, v53, &v108);
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v86, v53, &v105);
    if (v55)
    {
      v56 = 8 * v55;
      v57 = 1;
      v58 = v53;
      do
      {
        v59 = *v58++;
        v57 *= v59;
        v56 -= 8;
      }

      while (v56);
    }

    else
    {
      v57 = 1;
    }

    *&v92 = v53;
    *(&v92 + 1) = v55;
    v93 = v95;
    v94 = 0x600000000;
    if (v109)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v93, &v108);
    }

    v96 = v87;
    v97 = v99;
    v98 = 0x600000000;
    if (v106)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v97, &v105);
    }

    v100 = v86;
    v101 = v31;
    v30 = v29 >> 3;
    v102 = v29 >> 3;
    v103 = v13;
    v104 = v15;
    if (v97 != v99)
    {
      free(v97);
    }

    v73 = v93;
    if (v93 == v95)
    {
      goto LABEL_71;
    }

LABEL_70:
    free(v73);
LABEL_71:
    if (v105 != &v107)
    {
      free(v105);
    }

    if (v108 != v110)
    {
      free(v108);
    }

    goto LABEL_75;
  }

  if (v33 == 1)
  {
    v34 = (*(a3 + 16))(a3, a2);
    v36 = (*(v35 + 24))(v35, v34);
    v38 = v37;
    v86 = v83;
    v87 = v84;
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v87, v36, &v108);
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v86, v36, &v105);
    if (v38)
    {
      v39 = 8 * v38;
      v40 = 1;
      v41 = v36;
      do
      {
        v42 = *v41++;
        v40 *= v42;
        v39 -= 8;
      }

      while (v39);
    }

    else
    {
      v40 = 1;
    }

    *&v92 = v36;
    *(&v92 + 1) = v38;
    v93 = v95;
    v94 = 0x600000000;
    if (v109)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v93, &v108);
    }

    v68 = v29 >> 4;
    v69 = v15 >> 1;
    v96 = v87;
    v97 = v99;
    v98 = 0x600000000;
    if (v106)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v97, &v105);
    }

    v100 = v86;
    v101 = v31;
    v102 = v68;
    v103 = v13;
    v104 = v69;
    goto LABEL_67;
  }

LABEL_31:
  ElementsAttr = 0;
LABEL_76:
  if (v31)
  {
    llvm::sys::Memory::releaseMappedMemory(&v79);
  }

  if (v88 != &v89)
  {
    free(v88);
  }

  if (v90 != &v91)
  {
    free(v90);
  }

LABEL_82:
  v76 = *MEMORY[0x277D85DE8];
  return ElementsAttr;
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void mlir::ODIE::Compiler::anonymous namespace::reLayout<unsigned long long>(llvm::MutableArrayRef<char>,llvm::ArrayRef<char>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::{lambda(unsigned long)#1}>(uint64_t *a1, unint64_t a2)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v26[0] = v27;
  v26[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(v26, a1[1]);
  v4 = a1[1];
  v5 = v26[0];
  if (v4 - 1 >= 0)
  {
    v6 = *a1;
    v7 = (v4 - 1);
    do
    {
      v5[v7] = a2 % *(v6 + v7 * 8);
      a2 /= *(v6 + v7 * 8);
      --v7;
    }

    while (v7 != -1);
  }

  v8 = 0;
  if (v4)
  {
    v9 = *(a1[10] + 24);
    v10 = (a1[2] + 8);
    v11 = v5;
    v12 = v4;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      if (v13 == 1)
      {
        v8 += *v10 * v15;
      }

      else
      {
        v8 += v15 % v13 + *v10 * (v15 / v13);
      }

      ++v10;
      --v12;
    }

    while (v12);
    v17 = 0;
    v18 = *(a1[19] + 24);
    v19 = (a1[11] + 8);
    v20 = v5;
    do
    {
      v22 = *v18++;
      v21 = v22;
      v24 = *v20++;
      v23 = v24;
      if (v21 == 1)
      {
        v17 += *v19 * v23;
      }

      else
      {
        v17 += v23 % v21 + *v19 * (v23 / v21);
      }

      ++v19;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

  *(a1[20] + 8 * v17) = *(a1[22] + 8 * v8);
  if (v5 != v27)
  {
    free(v5);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void mlir::ODIE::Compiler::anonymous namespace::reLayout<unsigned int>(llvm::MutableArrayRef<char>,llvm::ArrayRef<char>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::{lambda(unsigned long)#1}>(uint64_t *a1, unint64_t a2)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v26[0] = v27;
  v26[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(v26, a1[1]);
  v4 = a1[1];
  v5 = v26[0];
  if (v4 - 1 >= 0)
  {
    v6 = *a1;
    v7 = (v4 - 1);
    do
    {
      v5[v7] = a2 % *(v6 + v7 * 8);
      a2 /= *(v6 + v7 * 8);
      --v7;
    }

    while (v7 != -1);
  }

  v8 = 0;
  if (v4)
  {
    v9 = *(a1[10] + 24);
    v10 = (a1[2] + 8);
    v11 = v5;
    v12 = v4;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      if (v13 == 1)
      {
        v8 += *v10 * v15;
      }

      else
      {
        v8 += v15 % v13 + *v10 * (v15 / v13);
      }

      ++v10;
      --v12;
    }

    while (v12);
    v17 = 0;
    v18 = *(a1[19] + 24);
    v19 = (a1[11] + 8);
    v20 = v5;
    do
    {
      v22 = *v18++;
      v21 = v22;
      v24 = *v20++;
      v23 = v24;
      if (v21 == 1)
      {
        v17 += *v19 * v23;
      }

      else
      {
        v17 += v23 % v21 + *v19 * (v23 / v21);
      }

      ++v19;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

  *(a1[20] + 4 * v17) = *(a1[22] + 4 * v8);
  if (v5 != v27)
  {
    free(v5);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void mlir::ODIE::Compiler::anonymous namespace::reLayout<unsigned short>(llvm::MutableArrayRef<char>,llvm::ArrayRef<char>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::{lambda(unsigned long)#1}>(uint64_t *a1, unint64_t a2)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v26[0] = v27;
  v26[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(v26, a1[1]);
  v4 = a1[1];
  v5 = v26[0];
  if (v4 - 1 >= 0)
  {
    v6 = *a1;
    v7 = (v4 - 1);
    do
    {
      v5[v7] = a2 % *(v6 + v7 * 8);
      a2 /= *(v6 + v7 * 8);
      --v7;
    }

    while (v7 != -1);
  }

  v8 = 0;
  if (v4)
  {
    v9 = *(a1[10] + 24);
    v10 = (a1[2] + 8);
    v11 = v5;
    v12 = v4;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      if (v13 == 1)
      {
        v8 += *v10 * v15;
      }

      else
      {
        v8 += v15 % v13 + *v10 * (v15 / v13);
      }

      ++v10;
      --v12;
    }

    while (v12);
    v17 = 0;
    v18 = *(a1[19] + 24);
    v19 = (a1[11] + 8);
    v20 = v5;
    do
    {
      v22 = *v18++;
      v21 = v22;
      v24 = *v20++;
      v23 = v24;
      if (v21 == 1)
      {
        v17 += *v19 * v23;
      }

      else
      {
        v17 += v23 % v21 + *v19 * (v23 / v21);
      }

      ++v19;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

  *(a1[20] + 2 * v17) = *(a1[22] + 2 * v8);
  if (v5 != v27)
  {
    free(v5);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void mlir::ODIE::Compiler::anonymous namespace::reLayout<unsigned char>(llvm::MutableArrayRef<char>,llvm::ArrayRef<char>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::{lambda(unsigned long)#1}>(uint64_t *a1, unint64_t a2)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = v26;
  v25[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(v25, a1[1]);
  v4 = a1[1];
  v5 = v25[0];
  if (v4 - 1 >= 0)
  {
    v6 = *a1;
    v7 = (v4 - 1);
    do
    {
      v5[v7] = a2 % *(v6 + v7 * 8);
      a2 /= *(v6 + v7 * 8);
      --v7;
    }

    while (v7 != -1);
  }

  v8 = 0;
  if (v4)
  {
    v9 = *(a1[10] + 24);
    v10 = (a1[2] + 8);
    v11 = v5;
    v12 = v4;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      if (v13 == 1)
      {
        v8 += *v10 * v15;
      }

      else
      {
        v8 += v15 % v13 + *v10 * (v15 / v13);
      }

      ++v10;
      --v12;
    }

    while (v12);
    v17 = 0;
    v18 = *(a1[19] + 24);
    v19 = (a1[11] + 8);
    do
    {
      v21 = *v18++;
      v20 = v21;
      v23 = *v5++;
      v22 = v23;
      if (v20 == 1)
      {
        v17 += *v19 * v22;
      }

      else
      {
        v17 += v22 % v20 + *v19 * (v22 / v20);
      }

      ++v19;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

  *(a1[20] + v17) = *(a1[22] + v8);
  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::materializeSourceConversion(mlir::Location,mlir::ElementsAttr,mlir::ShapedType,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::$_1>(void ***a1@<X0>, uint64_t a2@<X8>)
{
  v2 = **a1;
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

void anonymous namespace::FuncOpPattern::~FuncOpPattern(_anonymous_namespace_::FuncOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::func::FuncOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[13] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v12, a2);
  v12[11] = v9;
  v12[12] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[13] = *MEMORY[0x277D85DE8];
  mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v12, a2);
  v12[11] = a3;
  v12[12] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::func::FuncOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[13] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v12, a2);
  v12[11] = v9;
  v12[12] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[13] = *MEMORY[0x277D85DE8];
  mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v12, a2);
  v12[11] = a3;
  v12[12] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::func::FuncOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 88), *(a3 + 96), &v16);
  v8 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v8;
  v12[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = v9;
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  (*(*a1 + 88))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::FuncOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x600000000;
  v7 = a2 + 64;
  v8 = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 8);
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), *(v8 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v8 + 8), &v21))
  {
    v18 = v20;
    v19 = 0x600000000;
    v9 = *(*(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 8);
    if (mlir::TypeConverter::convertTypes(*(a1 + 96), (*(v9 + 16) + 8 * *(v9 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2, *(v9 + 12), &v18))
    {
      (*(*a4 + 40))(a4, a2);
      v10 = *(a1 + 24);
      *&v24[0] = v21 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(&v24[0] + 1) = v22;
      *&v26 = v18 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(&v26 + 1) = v19;
      v11 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>((v10 & 0xFFFFFFFFFFFFFFF8), v24, &v26);
      *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) = mlir::TypeAttr::get(v11);
      (*(*a4 + 48))(a4, a2);
      mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(a4[5], a4, (((v7 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)), *(a1 + 96), 0);
      if (v12)
      {
        v13 = 1;
LABEL_15:
        if (v18 != v20)
        {
          free(v18);
        }

        goto LABEL_17;
      }

      *&v24[0] = "Failed to convert region types";
      v25 = 259;
      *&v26 = v24;
    }

    else
    {
      *&v24[0] = "Failed to convert result types";
      v25 = 259;
      *&v26 = v24;
    }

    v15 = a4[2];
    if (v15 && v15[2] == 1)
    {
      (*(*v15 + 88))(v15, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::func::FuncOp &>(mlir::func::FuncOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v26);
    }

    v13 = 0;
    goto LABEL_15;
  }

  v18 = "Failed to convert input types";
  v20[8] = 259;
  *&v24[0] = &v18;
  v14 = a4[2];
  if (v14 && v14[2] == 1)
  {
    (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::func::FuncOp &>(mlir::func::FuncOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v24);
  }

  v13 = 0;
LABEL_17:
  if (v21 != v23)
  {
    free(v21);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::OpConversionPattern<mlir::func::FuncOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 88), *(a3 + 96), &v18);
  v8 = *(a3 + 48);
  v14[2] = *(a3 + 32);
  v14[3] = v8;
  v14[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v10 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v10;
  v15 = v9;
  v16 = v18 & 0xFFFFFFFFFFFFFFF9;
  v17 = v19;
  v11 = (*(*a1 + 104))(a1, a2, v14, a4);
  if (v18 != v20)
  {
    free(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FuncOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FuncOpPattern]";
  v6 = 98;
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

char *mlir::ODIE::Compiler::reshapeWithOnesForBroadcast(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v44[6] = *MEMORY[0x277D85DE8];
  v31 = a2;
  v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = *v7;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  }

  else
  {
    v10 = 0;
  }

  v42 = v44;
  v43 = 0x600000000;
  llvm::SmallVectorImpl<long long>::assign(&v42, a4, 1);
  v11 = (*(v10 + 24))(v10, v7);
  v39 = v41;
  v40 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v39, v11, &v11[8 * v12]);
  if (a4 < v40)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = *(v13 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v13 + 24 * *(v13 + 16) + 120;
      if (!v15)
      {
LABEL_11:
        v16 = (a2 + 32);
LABEL_20:
        v25 = *v16;
        v33 = 257;
        emitDiag(v25, 2, v32, &v36);
        if (v36)
        {
          mlir::Diagnostic::operator<<<63ul>(&v37, "incompatible broadcast - current value rank is > target rank: ");
        }

        *&v32[0] = v40;
        v26 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v36, v32);
        v27 = v26;
        if (*v26)
        {
          mlir::Diagnostic::operator<<<5ul>((v26 + 1), " vs ");
        }

        v35 = a4;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v27, &v35);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
        v24 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v15 = v13 + 16 * v14 + 16;
    }

    v16 = (v15 + 24);
    goto LABEL_20;
  }

  if (v40 >= 1)
  {
    v17 = v40 + 1;
    v18 = &v39[8 * v40 - 8];
    v19 = &v42[8 * a4 - 8];
    do
    {
      v20 = *v18;
      v18 -= 8;
      *v19 = v20;
      v19 -= 8;
      --v17;
    }

    while (v17 > 1);
  }

  v36 = v38;
  v37 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long *,void>(&v36, v42, &v42[8 * v43]);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v36, v37, 1);
  v21 = v42;
  v22 = v43;
  v23 = (*(v10 + 8))(v10, v7);
  *&v32[0] = v21;
  *(&v32[0] + 1) = v22;
  v34 = 0;
  v35 = v23;
  *&v32[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v23 + 32), v32, &v35, &v34);
  v24 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], v32, &v31, &Tensor) - 16;
  if (v36 != v38)
  {
    free(v36);
  }

LABEL_25:
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

char *mlir::ODIE::Compiler::createTensorConstant<int>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a3 != 1 || a4)
  {
    v18[0] = a3;
    v8 = v18;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = mlir::IntegerType::get(*a1, 32, 1);
  *&v17 = v8;
  *(&v17 + 1) = v7;
  v15 = 0;
  v16 = v9;
  v16 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), &v17, &v16, &v15);
  v10 = mlir::TensorType::operator mlir::ShapedType(&v16);
  *&v17 = mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, a2, 4 * a3);
  v12 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v17);
  v13 = *MEMORY[0x277D85DE8];
  return v12 - 16;
}

{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a3 != 1 || a4)
  {
    v18[0] = a3;
    v8 = v18;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = mlir::IntegerType::get(*a1, 32, 1);
  *&v17 = v8;
  *(&v17 + 1) = v7;
  v15 = 0;
  v16 = v9;
  v16 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), &v17, &v16, &v15);
  v10 = mlir::TensorType::operator mlir::ShapedType(&v16);
  *&v17 = mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, a2, 4 * a3);
  v12 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v17);
  v13 = *MEMORY[0x277D85DE8];
  return v12 - 16;
}