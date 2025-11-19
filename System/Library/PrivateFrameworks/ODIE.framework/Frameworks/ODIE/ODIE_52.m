uint64_t mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>();
      mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[226];
}

uint64_t llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>()
{
  {
    llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ConvertToLLVMPatternInterface>();
    *algn_27FC19728 = v1;
  }

  return llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ConvertToLLVMPatternInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ConvertToLLVMPatternInterface]";
  v6 = 97;
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

uint64_t mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>();
      mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[231];
}

uint64_t llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>()
{
  {
    llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::bufferization::BufferizableOpInterface>();
    unk_27FC19750 = v1;
  }

  return llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::bufferization::BufferizableOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::bufferization::BufferizableOpInterface]";
  v6 = 106;
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

__n128 llvm::interleave<mlir::ValueTypeRange<mlir::ResultRange>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE **a4)
{
  v4 = a1[1];
  v5 = a1[3];
  if (v4 == v5)
  {
    return result;
  }

  v9 = *a1;
  if (v4)
  {
    v10 = *(v9 + 8) & 7;
    if (v9)
    {
      v11 = v10 == 6;
    }

    else
    {
      v11 = 1;
    }

    v12 = *a1;
    v13 = a1[1];
    if (v11)
    {
      goto LABEL_9;
    }

    v14 = (5 - v10);
    v13 = v4 - v14;
    if (v4 > v14)
    {
      v12 = v9 - 16 * v14;
LABEL_9:
      v15 = v12 - 24 * v13;
      goto LABEL_12;
    }

    v15 = v9 - 16 * v4;
  }

  else
  {
    v15 = *a1;
  }

LABEL_12:
  v16 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v32) = 4;
  v33 = v16;
  v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a2 + 16, &v32, 1);
  v18 = (*(a2 + 16) + 24 * *(a2 + 24));
  result = *v17;
  v18[1].n128_u64[0] = v17[1].n128_u64[0];
  *v18 = result;
  ++*(a2 + 24);
  v20 = v4 + 1;
  if (v4 + 1 != v5)
  {
    v21 = v9 - 16 * v4 - 16;
    do
    {
      v22 = *a4;
      v35 = 1;
      if (*v22)
      {
        v32 = v22;
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      v34 = v23;
      mlir::Diagnostic::operator<<(a3, &v32);
      if (v20)
      {
        if (!v9)
        {
          v25 = 0;
          v26 = v20;
          goto LABEL_24;
        }

        v24 = *(v9 + 8) & 7;
        v25 = v9;
        v26 = v20;
        if (v24 == 6)
        {
          goto LABEL_24;
        }

        v27 = (5 - v24);
        v28 = v21;
        v26 = v20 - v27;
        if (v20 > v27)
        {
          v25 = v9 - 16 * v27;
LABEL_24:
          v28 = v25 - 24 * v26;
        }
      }

      else
      {
        v28 = v9;
      }

      v29 = *(v28 + 8) & 0xFFFFFFFFFFFFFFF8;
      LODWORD(v32) = 4;
      v33 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a2 + 16, &v32, 1);
      v31 = (*(a2 + 16) + 24 * *(a2 + 24));
      result = *v30;
      v31[1].n128_u64[0] = v30[1].n128_u64[0];
      *v31 = result;
      ++*(a2 + 24);
      ++v20;
      v21 -= 16;
    }

    while (v5 != v20);
  }

  return result;
}

__n128 llvm::interleave<llvm::ArrayRef<mlir::Type>,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<mlir::Type>>(llvm::ArrayRef<mlir::Type> const&,char const*)::{lambda(llvm::ArrayRef<mlir::Type> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<mlir::Type>>(llvm::ArrayRef<mlir::Type> const&,char const*)::{lambda(void)#1},void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE **a5)
{
  if (a2)
  {
    v10 = *a1;
    LODWORD(v21) = 4;
    v22 = v10;
    v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a3 + 16, &v21, 1);
    v12 = (*(a3 + 16) + 24 * *(a3 + 24));
    result = *v11;
    v12[1].n128_u64[0] = v11[1].n128_u64[0];
    *v12 = result;
    ++*(a3 + 24);
    if (a2 != 1)
    {
      v14 = a1 + 1;
      v15 = 8 * a2 - 8;
      do
      {
        v16 = *a5;
        v24 = 1;
        if (*v16)
        {
          v21 = v16;
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }

        v23 = v17;
        mlir::Diagnostic::operator<<(a4, &v21);
        v18 = *v14++;
        LODWORD(v21) = 4;
        v22 = v18;
        v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a3 + 16, &v21, 1);
        v20 = (*(a3 + 16) + 24 * *(a3 + 24));
        result = *v19;
        v20[1].n128_u64[0] = v19[1].n128_u64[0];
        *v20 = result;
        ++*(a3 + 24);
        v15 -= 8;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::func::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  *&v10 = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v10 + 1) = a4;
  *&v9 = a5 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v9 + 1) = a6;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v6, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::LookupBucketFor<mlir::StringAttr>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::InsertIntoBucketImpl<mlir::StringAttr>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::LookupBucketFor<mlir::StringAttr>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::LookupBucketFor<mlir::StringAttr>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F030))
  {
    qword_27FC1F020 = llvm::detail::getTypeNameImpl<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>();
    *algn_27FC1F028 = v1;
    __cxa_guard_release(&qword_27FC1F030);
  }

  return qword_27FC1F020;
}

const char *llvm::detail::getTypeNameImpl<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties]";
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

void mlir::RewritePatternSet::add<mlir::func::CallIndirectOp>(llvm::LogicalResult (*)(mlir::func::CallIndirectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallIndirectOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::func::detail::CallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F058))
  {
    qword_27FC1F048 = llvm::detail::getTypeNameImpl<mlir::func::detail::CallOpGenericAdaptorBase::Properties>();
    unk_27FC1F050 = v1;
    __cxa_guard_release(&qword_27FC1F058);
  }

  return qword_27FC1F048;
}

const char *llvm::detail::getTypeNameImpl<mlir::func::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::func::detail::CallOpGenericAdaptorBase::Properties]";
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

BOOL mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v12 = 0;
  if ((*(*a1 + 440))(a1, &v12, a3))
  {
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !v12[3])
    {
      *a2 = v12;
      v7 = 1;
    }

    else
    {
      *a2 = 0;
      v10 = "invalid kind of attribute specified";
      v11 = 259;
      (*(*a1 + 24))(v13, a1, v6, &v10);
      v7 = (v14 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F080))
  {
    qword_27FC1F070 = llvm::detail::getTypeNameImpl<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>();
    *algn_27FC1F078 = v1;
    __cxa_guard_release(&qword_27FC1F080);
  }

  return qword_27FC1F070;
}

const char *llvm::detail::getTypeNameImpl<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::func::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F0A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0A8))
  {
    qword_27FC1F098 = llvm::detail::getTypeNameImpl<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>();
    unk_27FC1F0A0 = v1;
    __cxa_guard_release(&qword_27FC1F0A8);
  }

  return qword_27FC1F098;
}

const char *llvm::detail::getTypeNameImpl<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::func::detail::FuncOpGenericAdaptorBase::Properties]";
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

uint64_t mlir::ODIE::Compiler::Analysis::MemoryReuse::MemoryReuse(uint64_t a1, unsigned int *a2, int a3)
{
  v168 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v153[0] = 0;
  v153[1] = 0;
  v152 = a2;
  v154 = 0;
  mlir::Liveness::build(&v152);
  mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ExecAliasAnalysis(v163, a2);
  v157 = 1;
  v5 = &v158;
  v6 = -4096;
  v158 = -4096;
  v160 = -4096;
  v161 = -4096;
  v162 = -4096;
  v7 = a2[11];
  if ((v7 & 0x7FFFFF) == 0)
  {
    v60 = 1;
LABEL_77:
    v61 = v159;
    if (v60)
    {
      v62 = v163;
    }

    else
    {
      v62 = (v6 + 80 * v159);
    }

    if (v60)
    {
      v63 = &v158;
    }

    else
    {
      v63 = v6;
    }

    v64 = 4;
    if (!v60)
    {
      v64 = v159;
    }

    v65 = &v63[10 * v64];
    if (!v60)
    {
      goto LABEL_95;
    }

    goto LABEL_86;
  }

  v8 = (((&a2[4 * ((v7 >> 23) & 1) + 17] + ((v7 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10]);
  v137 = &v8[3 * (v7 & 0x7FFFFF)];
  do
  {
    v9 = v8[1];
    if (*v8 == v8)
    {
      goto LABEL_13;
    }

    while (v9 != v8)
    {
      v10 = v9 - 1;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10[4] != v10 + 4)
      {
        break;
      }

      v9 = v9[1];
    }

    if (v9 == v8)
    {
LABEL_13:
      v12 = 0;
    }

    else
    {
      v11 = v9 - 1;
      if (!v9)
      {
        v11 = 0;
      }

      v12 = v11[5];
    }

    v166 = v8;
    *&v164 = v8;
    *(&v164 + 1) = v9;
    *(&v165 + 1) = v8;
    *&v165 = v12;
    v167 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Region::OpIterator>::filter;
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v164);
    v148 = v164;
    v149 = v165;
    v150 = v166;
    v151 = v167;
    *&v164 = v8;
    *(&v164 + 1) = v8;
    *&v165 = 0;
    *(&v165 + 1) = v8;
    v139 = v8;
    v166 = v8;
    v167 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Region::OpIterator>::filter;
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v164);
    v13 = v165;
    v143 = v148;
    v144 = v149;
    v145 = v150;
    v146 = v151;
    v147 = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Region::OpIterator>::unwrap;
    while (v144 != v13)
    {
      v14 = v147();
      v15 = (*(v14 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        goto LABEL_17;
      }

      v16 = v14;
      v17 = v15[2];
      if (v17)
      {
        v18 = v15[1];
        v19 = 8 * v17;
        while (*v18 != 0x8000000000000000)
        {
          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        *&v164 = v15[3];
        if (!mlir::Type::isIntOrFloat(&v164))
        {
          goto LABEL_17;
        }

        v20 = v15[2];
        if (v20)
        {
          v21 = v15[1];
          v22 = 8 * v20;
          v23 = 1;
          do
          {
            v24 = *v21++;
            v23 *= v24;
            v22 -= 8;
          }

          while (v22);
        }

        else
        {
          v23 = 1;
        }

        v25 = v15[4];
        if (v25 && (*v25)[17] == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
        {
          v23 = *v25[7];
        }

        *&v164 = v15[3];
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v164);
        if (!a3)
        {
          v27 = v23 * ((IntOrFloatBitWidth - (IntOrFloatBitWidth != 0) + 8 * (IntOrFloatBitWidth != 0)) & 0xFFFFFFF8);
          v8 = (((v27 - (v27 != 0) + ((v27 != 0) << 7)) >> 3) & 0x1FFFFFFFFFFFFFF0);
        }

        v28 = v15[6];
        v155 = 0;
        v30 = v155;
        if ((v29 & 1) == 0)
        {
          v156 = v155;
          v36 = v157;
          v37 = v159;
          v38 = v157 >> 1;
          v39 = v157 & 1;
          if (v157)
          {
            v40 = 4;
          }

          else
          {
            v40 = v159;
          }

          if (4 * v38 + 4 >= 3 * v40)
          {
            v40 *= 2;
          }

          else if (v40 + ~v38 - HIDWORD(v157) > v40 >> 3)
          {
LABEL_44:
            LODWORD(v157) = (v36 & 0xFFFFFFFE) + v39 + 2;
            if (*v30 != -4096)
            {
              --HIDWORD(v157);
            }

            *v30 = v28;
            *(v30 + 8) = v30 + 24;
            v31 = (v30 + 8);
            *(v30 + 16) = 0x100000000;
            v34 = (v30 + 16);
LABEL_47:
            *(&v164 + 1) = 0;
            v165 = 0uLL;
            *&v166 = 0;
            DWORD2(v166) = 0;
            *&v164 = &v164 + 8;
            v167 = 0;
            {
              if (*v34 >= *(v30 + 20))
              {
              }

              else
              {
                v41 = *v31 + 56 * *v34;
                *v41 = v164;
                v42 = *(&v164 + 1);
                *(v41 + 8) = *(&v164 + 1);
                v43 = v41 + 8;
                v44 = v165;
                *(v41 + 16) = v165;
                if (v44)
                {
                  *(v42 + 16) = v43;
                  *&v164 = &v164 + 8;
                  *(&v164 + 1) = 0;
                  *&v165 = 0;
                }

                else
                {
                  *v41 = v43;
                }

                *(v41 + 24) = 0;
                *(v41 + 32) = 0;
                *(v41 + 40) = 0;
                *(v41 + 24) = *(&v165 + 1);
                *(&v165 + 1) = 0;
                *(v41 + 32) = v166;
                LODWORD(v166) = 0;
                v45 = *(v41 + 36);
                *(v41 + 36) = DWORD1(v166);
                DWORD1(v166) = v45;
                v46 = *(v41 + 40);
                *(v41 + 40) = DWORD2(v166);
                DWORD2(v166) = v46;
                *(v41 + 48) = v167;
                ++*v34;
              }
            }

            MEMORY[0x25F891030](*(&v165 + 1), 8);
            goto LABEL_17;
          }

          if (v40 >= 5)
          {
            v47 = (v40 - 1) | ((v40 - 1) >> 1);
            v48 = v47 | (v47 >> 2) | ((v47 | (v47 >> 2)) >> 4);
            v49 = ((v48 | (v48 >> 8)) >> 16) | v48 | (v48 >> 8);
            if ((v49 + 1) > 0x40)
            {
              v40 = v49 + 1;
            }

            else
            {
              v40 = 64;
            }
          }

          if (v157)
          {
            v51 = 0;
            v52 = &v164;
            do
            {
              v53 = &v157 + v51;
              v54 = *(&v157 + v51 + 8);
              if ((v54 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                *v52 = v54;
                v55 = v52 + 10;
                v52 = v55;
              }

              v51 += 80;
            }

            while (v51 != 320);
            if (v40 > 4)
            {
              LODWORD(v157) = v157 & 0xFFFFFFFE;
              v56 = v40;
              v57 = (80 * v40);
              v58 = v52;
              buffer = llvm::allocate_buffer(v57, 8uLL);
              v52 = v58;
              v158 = buffer;
              v159 = v56;
            }
          }

          else
          {
            v50 = v158;
            if (v40 > 4)
            {
              v158 = llvm::allocate_buffer((80 * v40), 8uLL);
              v159 = v40;
            }

            else
            {
              LODWORD(v157) = v157 | 1;
            }

            MEMORY[0x25F891030](v50, 8);
          }

          v36 = v157;
          v30 = v156;
          v39 = v157 & 1;
          goto LABEL_44;
        }

        v31 = (v155 + 8);
        v32 = *(v155 + 8);
        v34 = (v155 + 16);
        v33 = *(v155 + 16);
        if (!v33)
        {
          goto LABEL_47;
        }

        v35 = 56 * v33;
        {
          v32 += 7;
          v35 -= 56;
          if (!v35)
          {
            goto LABEL_47;
          }
        }
      }

LABEL_17:
      mlir::Region::OpIterator::operator++(&v143);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v143);
    }

    v8 = v139 + 3;
  }

  while (v139 + 3 != v137);
  v60 = v157;
  if (v157 <= 1)
  {
    v6 = v158;
    v5 = &v158;
    goto LABEL_77;
  }

  v5 = &v158;
  if (v157)
  {
    v65 = v163;
    v66 = &v158;
LABEL_91:
    while ((*v66 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v66 += 10;
      if (v66 == v65)
      {
        v66 = v65;
        break;
      }
    }

    v6 = v158;
    v61 = v159;
    v62 = v66;
    if ((v157 & 1) == 0)
    {
LABEL_95:
      v66 = (v6 + 80 * v61);
      goto LABEL_96;
    }

LABEL_86:
    v66 = v163;
    goto LABEL_96;
  }

  v66 = v158;
  v65 = (v158 + 80 * v159);
  if (v159)
  {
    goto LABEL_91;
  }

  v62 = v158;
LABEL_96:
  if (v62 == v66)
  {
    goto LABEL_191;
  }

  v142 = v66;
  while (2)
  {
    v67 = *(v62 + 4);
    if (v67)
    {
      v68 = 0;
      v69 = v62[1];
      v70 = v69 + 56 * v67;
      while (1)
      {
          ;
        }

        if (*(v69 + 32))
        {
          v71 = *(v69 + 40);
          if (v71)
          {
            v72 = 16 * v71;
            v73 = *(v69 + 24);
            while ((*v73 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v73 += 2;
              v72 -= 16;
              if (!v72)
              {
                goto LABEL_107;
              }
            }
          }

          else
          {
            v73 = *(v69 + 24);
          }

          v79 = *(v69 + 24) + 16 * v71;
LABEL_117:
          if (v73 != v79)
          {
            break;
          }
        }

LABEL_107:
        *&v148 = 0;
        v74 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::LookupBucketFor<mlir::Attribute>(*(a1 + 24), *(a1 + 40), *v62, &v148);
        v75 = v148;
        if ((v74 & 1) == 0)
        {
          *&v143 = v148;
          v76 = *(a1 + 32);
          v77 = *(a1 + 40);
          if (4 * v76 + 4 >= (3 * v77))
          {
            v78 = 2 * v77;
          }

          else
          {
            v78 = *(a1 + 40);
            if (v77 + ~v76 - *(a1 + 36) > v77 >> 3)
            {
LABEL_110:
              *(a1 + 32) = v76 + 1;
              if (*v75 != -4096)
              {
                --*(a1 + 36);
              }

              *v75 = *v62;
              v75[1] = (v75 + 3);
              v75[2] = 0x600000000;
              goto LABEL_113;
            }
          }

          v107 = *(a1 + 24);
          v108 = (v78 - 1) | ((v78 - 1) >> 1);
          v109 = v108 | (v108 >> 2) | ((v108 | (v108 >> 2)) >> 4);
          v110 = ((v109 | (v109 >> 8)) >> 16) | v109 | (v109 >> 8);
          if ((v110 + 1) > 0x40)
          {
            v111 = v110 + 1;
          }

          else
          {
            v111 = 64;
          }

          *(a1 + 40) = v111;
          v112 = llvm::allocate_buffer((72 * v111), 8uLL);
          *(a1 + 24) = v112;
          if (v107)
          {
            *(a1 + 32) = 0;
            v113 = *(a1 + 40);
            if (v113)
            {
              v114 = 0;
              v115 = (72 * v113 - 72) / 0x48;
              v116 = vdupq_n_s64(v115);
              do
              {
                v117 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(vdupq_n_s64(v114), xmmword_25D0A0500)));
                if (v117.i8[0])
                {
                  *v112 = -4096;
                }

                if (v117.i8[4])
                {
                  v112[9] = -4096;
                }

                v114 += 2;
                v112 += 18;
              }

              while (((v115 + 2) & 0x7FFFFFFFFFFFFFELL) != v114);
            }

            if (v77)
            {
              v118 = (v107 + 24);
              v119 = 72 * v77;
              do
              {
                v120 = *(v118 - 3);
                if ((v120 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  *&v164 = 0;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::LookupBucketFor<mlir::Attribute>(*(a1 + 24), *(a1 + 40), v120, &v164);
                  v121 = v164;
                  *v164 = *(v118 - 3);
                  *(v121 + 16) = 0x600000000;
                  *(v121 + 8) = v121 + 24;
                  v122 = v121 + 8;
                  if (*(v118 - 2))
                  {
                    llvm::SmallVectorImpl<long long>::operator=(v122, (v118 - 2));
                  }

                  ++*(a1 + 32);
                  v123 = *(v118 - 2);
                  if (v118 != v123)
                  {
                    free(v123);
                  }
                }

                v118 += 9;
                v119 -= 72;
              }

              while (v119);
            }

            MEMORY[0x25F891030](v107, 8);
            v112 = *(a1 + 24);
            v124 = *(a1 + 40);
          }

          else
          {
            *(a1 + 32) = 0;
            v124 = *(a1 + 40);
            if (v124)
            {
              v125 = 0;
              v126 = (72 * v124 - 72) / 0x48;
              v127 = (v126 + 2) & 0x7FFFFFFFFFFFFFELL;
              v128 = vdupq_n_s64(v126);
              v129 = v112;
              do
              {
                v130 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(vdupq_n_s64(v125), xmmword_25D0A0500)));
                if (v130.i8[0])
                {
                  *v129 = -4096;
                }

                if (v130.i8[4])
                {
                  v129[9] = -4096;
                }

                v125 += 2;
                v129 += 18;
              }

              while (v127 != v125);
            }
          }

          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::LookupBucketFor<mlir::Attribute>(v112, v124, *v62, &v143);
          v76 = *(a1 + 32);
          v75 = v143;
          goto LABEL_110;
        }

LABEL_113:
        llvm::SmallVectorTemplateBase<long long,true>::push_back((v75 + 1), *(v69 + 48));
        ++v68;
        v69 += 56;
        if (v69 == v70)
        {
          goto LABEL_183;
        }
      }

      *&v148 = 0;
      v80 = v73[1];
      v81 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), *v73, &v148);
      v82 = v148;
      if (v81)
      {
LABEL_124:
        *(v82 + 8) = v68;
        *(v82 + 16) = v80;
        while (1)
        {
          v73 += 2;
          if (v73 == v79)
          {
            goto LABEL_107;
          }

          if ((*v73 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            goto LABEL_117;
          }
        }
      }

      *&v143 = v148;
      v83 = *(a1 + 8);
      v84 = *(a1 + 16);
      if (4 * v83 + 4 >= (3 * v84))
      {
        v85 = 2 * v84;
      }

      else
      {
        v85 = *(a1 + 16);
        if (v84 + ~v83 - *(a1 + 12) > v84 >> 3)
        {
LABEL_121:
          *(a1 + 8) = v83 + 1;
          if (*v82 != -4096)
          {
            --*(a1 + 12);
          }

          *v82 = *v73;
          *(v82 + 8) = 0;
          *(v82 + 16) = 0;
          goto LABEL_124;
        }
      }

      v138 = *a1;
      v86 = (v85 - 1) | ((v85 - 1) >> 1);
      v87 = v86 | (v86 >> 2) | ((v86 | (v86 >> 2)) >> 4);
      v88 = ((v87 | (v87 >> 8)) >> 16) | v87 | (v87 >> 8);
      if ((v88 + 1) > 0x40)
      {
        v89 = v88 + 1;
      }

      else
      {
        v89 = 64;
      }

      *(a1 + 16) = v89;
      v90 = llvm::allocate_buffer((24 * v89), 8uLL);
      *a1 = v90;
      if (v138)
      {
        *(a1 + 8) = 0;
        v91 = *(a1 + 16);
        if (v91)
        {
          v92 = 0;
          v93 = (24 * v91 - 24) / 0x18;
          v94 = vdupq_n_s64(v93);
          do
          {
            v95 = vmovn_s64(vcgeq_u64(v94, vorrq_s8(vdupq_n_s64(v92), xmmword_25D0A0500)));
            if (v95.i8[0])
            {
              *v90 = -4096;
            }

            if (v95.i8[4])
            {
              v90[3] = -4096;
            }

            v92 += 2;
            v90 += 6;
          }

          while (((v93 + 2) & 0x1FFFFFFFFFFFFFFELL) != v92);
        }

        if (v84)
        {
          v96 = 24 * v84;
          v97 = v138;
          do
          {
            v98 = *v97;
            if ((*v97 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              *&v164 = 0;
              v140 = v96;
              llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v98, &v164);
              v99 = v164;
              *v164 = *v97;
              *(v99 + 8) = *(v97 + 8);
              v96 = v140;
              ++*(a1 + 8);
            }

            v97 += 24;
            v96 -= 24;
          }

          while (v96);
        }

        MEMORY[0x25F891030](v138, 8);
        v90 = *a1;
        v100 = *(a1 + 16);
      }

      else
      {
        *(a1 + 8) = 0;
        v100 = *(a1 + 16);
        if (v100)
        {
          v101 = 0;
          v102 = (24 * v100 - 24) / 0x18;
          v103 = (v102 + 2) & 0x1FFFFFFFFFFFFFFELL;
          v104 = vdupq_n_s64(v102);
          v105 = v90;
          do
          {
            v106 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(vdupq_n_s64(v101), xmmword_25D0A0500)));
            if (v106.i8[0])
            {
              *v105 = -4096;
            }

            if (v106.i8[4])
            {
              v105[3] = -4096;
            }

            v101 += 2;
            v105 += 6;
          }

          while (v103 != v101);
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::LookupBucketFor<mlir::Operation *>(v90, v100, *v73, &v143);
      v83 = *(a1 + 8);
      v82 = v143;
      goto LABEL_121;
    }

LABEL_183:
    v62 += 10;
    if (v62 == v65)
    {
      v5 = &v158;
      v131 = v142;
    }

    else
    {
      v5 = &v158;
      v131 = v142;
      do
      {
        if ((*v62 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          break;
        }

        v62 += 10;
      }

      while (v62 != v65);
    }

    if (v62 != v131)
    {
      continue;
    }

    break;
  }

  LOBYTE(v60) = v157;
LABEL_191:
  if (v60)
  {
    v132 = 4;
    goto LABEL_195;
  }

  v132 = v159;
  if (v159)
  {
    v5 = v158;
LABEL_195:
    v133 = 80 * v132;
    v134 = (v5 + 1);
    do
    {
      if ((*(v134 - 8) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v134 += 80;
      v133 -= 80;
    }

    while (v133);
    LOBYTE(v60) = v157;
  }

  if ((v60 & 1) == 0)
  {
    MEMORY[0x25F891030](v158, 8);
  }

  mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::~ExecAliasAnalysis(v163);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::destroyAll(v153);
  MEMORY[0x25F891030](v153[0], 8);
  v135 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::createAllocation(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x80000000)
  {
    v7 = *(a2 + 24);
    v49 = 257;
    emitDiag(v7, 2, v48, &v50);
    if (v50)
    {
      mlir::Diagnostic::operator<<<22ul>(v51, "Single tensor (size: ");
      if (v50)
      {
        LODWORD(v48[0]) = 2;
        v48[1] = a3;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v53, v48, 1);
        v9 = v53 + 24 * v54;
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++v54;
        if (v50)
        {
          mlir::Diagnostic::operator<<<56ul>(v51, ") would be too large for a contiguous memory allocation");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
LABEL_66:
    result = 0;
    goto LABEL_77;
  }

  v12 = a1 + 1;
  v13 = *a1;
  v48[0] = v13;
  if (v13 != a1 + 1)
  {
    while (1)
    {
      v16 = v13[5] - 16;
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v17 = *(a2 + 68);
        if (v17)
        {
          break;
        }
      }

LABEL_13:
      if (mlir::Liveness::isDeadAfter(a4, (v13[5] - 16), a2))
      {
        mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::getAliasSet(a5, v16, &v50);
        v19 = 8;
        if (v52)
        {
          v19 = 12;
        }

        v20 = *&v51[v19 - 8];
        if (v20)
        {
          v21 = 8 * v20;
          v22 = v50;
          while (*v22 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v22 += 8;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v22 = v50;
        }

        v23 = v50 + 8 * v20;
        if (v22 == v23)
        {
LABEL_32:
          v26 = 0;
        }

        else
        {
          v24 = *v22;
          while (1)
          {
            isDeadAfter = mlir::Liveness::isDeadAfter(a4, v24, a2);
            if (!isDeadAfter)
            {
              break;
            }

            v22 += 8;
            if (v22 == v23)
            {
              break;
            }

            while (1)
            {
              v24 = *v22;
              if (*v22 < 0xFFFFFFFFFFFFFFFELL)
              {
                break;
              }

              v22 += 8;
              if (v22 == v23)
              {
                goto LABEL_32;
              }
            }

            if (v22 == v23)
            {
              LOBYTE(isDeadAfter) = 1;
              break;
            }
          }

          v26 = !isDeadAfter;
        }

        if ((v52 & 1) == 0)
        {
          free(v50);
        }

        if (!v26)
        {
          goto LABEL_42;
        }
      }

      if (v13 == *a1)
      {
        v31 = 0;
        v32 = v13[4];
      }

      else
      {
        v27 = *v13;
        v28 = v13;
        if (*v13)
        {
          do
          {
            v29 = v27;
            v27 = *(v27 + 8);
          }

          while (v27);
        }

        else
        {
          do
          {
            v29 = v28[2];
            v30 = *v29 == v28;
            v28 = v29;
          }

          while (v30);
        }

        v31 = v29[6] + v29[4];
        v32 = v13[4] - v31;
      }

      if (v32 >= a3)
      {
        goto LABEL_65;
      }

      v34 = v13[1];
      if (v34)
      {
        do
        {
          v33 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v33 = v13[2];
          v30 = *v33 == v13;
          v13 = v33;
        }

        while (!v30);
      }

LABEL_50:
      v48[0] = v33;
      v13 = v33;
      if (v33 == v12)
      {
        goto LABEL_51;
      }
    }

    v18 = (*(a2 + 72) + 24);
    while (*v18 != v16)
    {
      v18 += 4;
      if (!--v17)
      {
        goto LABEL_13;
      }
    }

LABEL_42:
    goto LABEL_50;
  }

LABEL_51:
  if (a1[2])
  {
    v35 = *v12;
    if (*v12)
    {
      v36 = *v12;
      do
      {
        v37 = v36;
        v36 = v36[1];
      }

      while (v36);
    }

    else
    {
      v38 = v12;
      do
      {
        v37 = v38[2];
        v30 = *v37 == v38;
        v38 = v37;
      }

      while (v30);
    }

    v39 = v37[4];
    if (v35)
    {
      do
      {
        v40 = v35;
        v35 = v35[1];
      }

      while (v35);
    }

    else
    {
      v41 = v12;
      do
      {
        v40 = v41[2];
        v30 = *v40 == v41;
        v41 = v40;
      }

      while (v30);
    }

    v31 = v40[6] + v39;
  }

  else
  {
    v31 = 0;
  }

LABEL_65:
  if (a3 + v31 > 0x20000000)
  {
    goto LABEL_66;
  }

  v43 = *v12;
  if (!*v12)
  {
LABEL_73:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v44 = v43;
      v45 = v43[4];
      if (v31 >= v45)
      {
        break;
      }

      v43 = *v44;
      if (!*v44)
      {
        goto LABEL_73;
      }
    }

    if (v45 >= v31)
    {
      break;
    }

    v43 = v44[1];
    if (!v43)
    {
      goto LABEL_73;
    }
  }

  v44[5] = a2;
  v44[6] = a3;
  v46 = a1[6];
  if (v46 <= (a3 + v31))
  {
    v46 = a3 + v31;
  }

  a1[6] = v46;
  result = 1;
LABEL_77:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation@<X0>(mlir::ODIE::Compiler::Analysis::MemoryReuse *this@<X0>, mlir::Operation *a2@<X1>, _BYTE *a3@<X8>)
{
  v13[25] = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
  {
    v6 = *(a2 + 3);
    v11 = 257;
    emitDiag(v6, 2, v10, &v12);
    if (v12)
    {
      if (v12)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v10);
        mlir::Diagnostic::appendOp(v13, a2, v10);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v12 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::doFind<mlir::Operation const*>(this, &v12);
  if (!result || result == (*this + 24 * *(this + 4)))
  {
    v8 = 0;
    *a3 = 0;
  }

  else
  {
    *a3 = *(result + 1);
    v8 = 1;
  }

  a3[16] = v8;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *mlir::ODIE::Compiler::Analysis::MemoryReuse::getTotalAllocationSize@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::doFind<mlir::Attribute>((a1 + 24), &v7);
  v6 = *(a1 + 24) + 72 * *(a1 + 40);
  if (result)
  {
    v6 = result;
  }

  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (*(v6 + 16))
  {
    return llvm::SmallVectorImpl<long long>::operator=(a3, v6 + 8);
  }

  return result;
}

void mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(mlir::ODIE::Compiler::Analysis::MemoryReuse *this@<X0>, void *a2@<X8>)
{
  v4 = std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>>(this + 24);
  v6 = v5;
  v7 = *(this + 3) + 72 * *(this + 10);
  v8 = (a2 + 2);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  if (v7 == v4)
  {
    v14 = 0;
  }

  else
  {
    v9 = v4;
    v10 = 0;
    v11 = v4;
    do
    {
      v12 = v10;
      do
      {
        v11 += 9;
      }

      while (v11 != v6 && (*v11 | 0x1000) == 0xFFFFFFFFFFFFF000);
      ++v10;
    }

    while (v11 != v7);
    if (v12 < 6)
    {
      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v8, v12 + 1, 8);
      v13 = *(a2 + 2);
      v8 = *a2;
    }

    v15 = &v8[8 * v13];
    do
    {
      v16 = *v9;
      v9 += 9;
      *v15 = v16;
      while (v9 != v6 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 9;
      }

      v15 += 8;
    }

    while (v9 != v7);
    v14 = *(a2 + 2) + v10;
  }

  *(a2 + 2) = v14;
}

uint64_t *mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::finalizeRecord(uint64_t a1, uint64_t **a2)
{
  v4 = *a2;
  v6 = a1 + 24;
  v5 = *(a1 + 24);
  v18 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>,mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::LookupBucketFor<mlir::Operation *>(v5, *(v6 + 16), v4[5], &v18))
  {
    goto LABEL_7;
  }

  v7 = v18;
  v8 = *(v6 + 16);
  v19 = v18;
  v9 = *(a1 + 32);
  if (4 * v9 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_17;
  }

  if (v8 + ~v9 - *(a1 + 36) <= v8 >> 3)
  {
LABEL_17:
    llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::grow(v6, v8);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>,mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::LookupBucketFor<mlir::Operation *>(*(a1 + 24), *(a1 + 40), v4[5], &v19);
    v9 = *(a1 + 32);
    v7 = v19;
  }

  *(a1 + 32) = v9 + 1;
  if (*v7 != -4096)
  {
    --*(a1 + 36);
  }

  v10 = v4[4];
  *v7 = v4[5];
  v7[1] = v10;
LABEL_7:
  v11 = *a2;
  v12 = v11[1];
  if (v12)
  {
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v14 = v11;
    do
    {
      v13 = v14[2];
      v15 = *v13 == v14;
      v14 = v13;
    }

    while (!v15);
  }

  if (*a1 == v11)
  {
    *a1 = v13;
  }

  v16 = *(a1 + 8);
  --*(a1 + 16);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v16, v11);
  operator delete(v11);
  return v13;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>,mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>,mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v20, &v31);
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

void std::__tree<std::__value_type<long long,mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::Entry>,std::__map_value_compare<long long,std::__value_type<long long,mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::Entry>,std::less<long long>,true>,std::allocator<std::__value_type<long long,mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::Entry>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

void mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::~ExecAliasAnalysis(mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis *this)
{
  *this = &unk_286E86360;
  std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(this + 72, *(this + 10));
  std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(this + 40, *(this + 6));
  std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(this + 8, *(this + 2));
}

{
  mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::~ExecAliasAnalysis(this);

  JUMPOUT(0x25F891040);
}

void std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(a1, *a2);
    std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[9 * v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 72 * v4;
    while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      result += 9;
      v6 -= 72;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 56 * v3 - 48;
    v5 = -56 * v3;
    do
    {
      MEMORY[0x25F891030](*(v4 + 16), 8);
      v6 = *v4;
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 80 * v6);
  v8 = *v7;
  if (*v7 == a2)
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
      v7 = (v3 + 80 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>::SmallVector(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  if (a1 != a2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v6 = *a2;
      if (*a2 == a2 + 16)
      {
        if (v5 < 2)
        {
          v10 = 1;
          v8 = v3;
        }

        else
        {
          v16 = 0;
          v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, v3, v5, 56, &v16);
          v9 = v16;
          if (*a1 != v3)
          {
            free(*a1);
          }

          *a1 = v8;
          *(a1 + 12) = v9;
          v6 = *a2;
          v10 = *(a2 + 8);
        }

        *(a1 + 8) = v5;
        v11 = *(a2 + 8);
        if (v11)
        {
          v12 = *a2 + 56 * v11 - 48;
          v13 = -56 * v11;
          do
          {
            MEMORY[0x25F891030](*(v12 + 16), 8);
            v14 = *v12;
            v12 -= 56;
            v13 += 56;
          }

          while (v13);
        }
      }

      else
      {
        *a1 = v6;
        v7 = *(a2 + 12);
        *(a1 + 8) = v5;
        *(a1 + 12) = v7;
        *a2 = a2 + 16;
        *(a2 + 12) = 0;
      }

      *(a2 + 8) = 0;
    }
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = (result + 8);
    v9 = (result + 328);
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = &v8[80 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 80;
  v12 = vdupq_n_s64(v11 / 0x50);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 10) = -4096;
    }

    v10 += 2;
    v8 += 160;
  }

  while (((v11 / 0x50 + 2) & 0x7FFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v14 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      v15 = v16;
      *v16 = *a2;
      *v5 += 2;
    }

    a2 += 10;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,false>::uninitialized_move<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion*,mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = 0;
    do
    {
      v4 = (a3 + v3);
      *v4 = *(result + v3);
      v5 = (result + v3 + 8);
      v6 = *v5;
      v4[1] = *v5;
      v7 = a3 + v3 + 8;
      v8 = *(result + v3 + 16);
      *(a3 + v3 + 16) = v8;
      if (v8)
      {
        *(v6 + 16) = v7;
        *(result + v3) = v5;
        *v5 = 0;
        *(result + v3 + 16) = 0;
      }

      else
      {
        *(a3 + v3) = v7;
      }

      v9 = a3 + v3;
      v10 = result + v3;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(result + v3 + 24);
      *(v10 + 24) = 0;
      *(v9 + 32) = *(result + v3 + 32);
      *(v10 + 32) = 0;
      v11 = *(a3 + v3 + 36);
      *(v9 + 36) = *(result + v3 + 36);
      *(v10 + 36) = v11;
      v12 = *(a3 + v3 + 40);
      *(v9 + 40) = *(result + v3 + 40);
      *(v10 + 40) = v12;
      *(v9 + 48) = *(result + v3 + 48);
      v3 += 56;
    }

    while (result + v3 != a2);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1 + 56 * v3 - 48;
    v5 = -56 * v3;
    do
    {
      MEMORY[0x25F891030](*(v4 + 16), 8);
      v6 = *v4;
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,false>::growAndEmplaceBack<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion>(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 56, &v14);
  v6 = &v5[56 * *(a1 + 8)];
  *v6 = *a2;
  v7 = (a2 + 8);
  v8 = *(a2 + 8);
  *(v6 + 1) = v8;
  v9 = v6 + 8;
  v10 = *(a2 + 16);
  *(v6 + 2) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    *a2 = v7;
    *v7 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *v6 = v9;
  }

  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  *(v6 + 10) = 0;
  *(v6 + 3) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v6 + 8) = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = *(v6 + 9);
  *(v6 + 9) = *(a2 + 36);
  *(a2 + 36) = v11;
  v12 = *(v6 + 10);
  *(v6 + 10) = *(a2 + 40);
  *(a2 + 40) = v12;
  *(v6 + 6) = *(a2 + 48);
  v13 = v14;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v13;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 24 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 24 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::doFind<mlir::Attribute>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 72 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 72 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis *mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ExecAliasAnalysis(mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis *this, mlir::Operation *a2)
{
  *(this + 3) = 0;
  *(this + 2) = 0;
  *this = &unk_286E86360;
  *(this + 1) = this + 16;
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 11) = 0;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  v4[1] = this;
  v5 = this;
  v4[0] = &v5;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ExecAliasAnalysis(mlir::Operation *)::$_1>, v4, 1);
  return this;
}

uint64_t mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::getAliasSet@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2;
  *a3 = a3 + 24;
  *(a3 + 8) = 16;
  *(a3 + 16) = 0;
  *(a3 + 20) = 1;
  result = llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::findLeader(a1 + 72, &v7);
  if (result)
  {
    v5 = result;
    do
    {
      result = llvm::SmallPtrSetImpl<mlir::Value>::insert(a3, *(v5 + 16), &v6);
      v5 = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL;
    }

    while (v5);
  }

  return result;
}

uint64_t llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::findLeader(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 48);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 48))
  {
    return 0;
  }

  else
  {
    return llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader(v6 + 32);
  }
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[236];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::DPSOpInterface>();
    *algn_27FC19778 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::DPSOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::DPSOpInterface]";
  v6 = 104;
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

uint64_t mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(mlir::ODIE::Compiler::Exec::DPSOpInterface *this)
{
  v8[3] = *MEMORY[0x277D85DE8];
  (**(this + 1))(&v5, *(this + 1), *this);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v1 = *(v5 + 72);
  }

  else
  {
    v1 = 0;
  }

  v2 = v6;
  if (v7 != v8)
  {
    free(v7);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1 + 32 * v2;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ExecAliasAnalysis(mlir::Operation *)::$_1>(uint64_t a1, uint64_t a2)
{
  v81[6] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v66 = *a1;
  if (mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && (!a2 ? (v5 = 0) : (v5 = mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(a2)), a2))
  {
    v79 = a2;
    v80 = v5;
    v11 = a2 - 16;
    v65 = a2;
    v12 = *(a2 + 36);
    DpsInits = mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(&v79);
    if (v12)
    {
      v15 = a2 - 16;
    }

    else
    {
      v15 = 0;
    }

    if (v12 && v14)
    {
      v16 = 0;
      v17 = v4 + 8;
      v18 = v14 - 1;
      v19 = v12 - 1;
      v20 = (DpsInits + 24);
      v21 = a2 - 16;
      while (1)
      {
        v22 = v15;
        if (v16)
        {
          v23 = *(v65 - 8) & 7;
          v24 = v11;
          v25 = v16;
          if (v23 == 6)
          {
            goto LABEL_24;
          }

          v26 = (5 - v23);
          v22 = v21;
          v25 = v16 - v26;
          if (v16 > v26)
          {
            break;
          }
        }

LABEL_25:
        v75 = *v20;
        v27 = *v66 + 72;
        if (v27 != v17)
        {
          llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v17, v22, &v75);
        }

        llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v27, v22, &v75);
        if (v19 != v16)
        {
          v21 -= 16;
          v20 += 4;
          v52 = v18 == v16++;
          if (!v52)
          {
            continue;
          }
        }

        goto LABEL_75;
      }

      v24 = v11 - 16 * v26;
LABEL_24:
      v22 = v24 - 24 * v25;
      goto LABEL_25;
    }
  }

  else
  {
    v6 = *a1;
    if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id)
    {
      v7 = v4 + 40;
      v8 = *(a2 + 36);
      v79 = *(*(a2 + 72) + 24);
      v9 = *v6 + 72;
      if (v8)
      {
        v10 = a2 - 16;
      }

      else
      {
        v10 = 0;
      }

      if (v9 != v7)
      {
        llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v7, v10, &v79);
      }

      llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v9, v10, &v79);
    }

    else
    {
      v28 = llvm::DefaultDoCastIfPossible<mlir::RegionBranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionBranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
      if (v28)
      {
        v30 = v28;
        v79 = v81;
        v80 = 0x200000000;
        (*(v29 + 16))(v29, v28, 0, &v79);
        v31 = v79;
        if (v80)
        {
          v59 = &v79[3 * v80];
          v32 = v4 + 8;
          v62 = v4;
          v60 = v30;
          do
          {
            if ((*(v30 + 46) & 0x80) != 0)
            {
              v33 = *(v30 + 72);
              v34 = *(v30 + 68);
            }

            else
            {
              v33 = 0;
              v34 = 0;
            }

            v35 = v31[1];
            v36 = v31[2];
            v61 = v31;
            v75 = v33;
            v76 = 0;
            v77 = v35;
            v78 = 0;
            if (v34 && v36)
            {
              v37 = v33 + 3;
              v38 = 1;
              do
              {
                v39 = *v37;
                v71 = mlir::ValueRange::dereference_iterator(&v77, v38 - 1);
                v40 = *v6;
                if (*v6 != v4)
                {
                  llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v4 + 72, v39, &v71);
                }

                llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v40 + 72, v39, &v71);
                v76 = v38;
                v78 = v38;
                if (v34 == v38)
                {
                  break;
                }

                v37 += 4;
                v52 = v36 == v38++;
              }

              while (!v52);
            }

            v41 = *v61;
            v42 = *(*v61 + 8);
            v63 = *v61;
            while (v42 != v41)
            {
              v43 = v42 - 8;
              if (!v42)
              {
                v43 = 0;
              }

              v44 = *(v43 + 32);
              InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v44);
              v68 = v44;
              v69 = InterfaceFor;
              v75 = &v77;
              v76 = 0x200000000;
              if ((*(v44 + 46) & 0x80) != 0)
              {
                v46 = *(v44 + 68);
              }

              else
              {
                v46 = 0;
              }

              v71 = &v73;
              v72 = 0x600000000;
              llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(&v71, v46);
              (*(v69 + 8))(v69, v68, v71, v72, &v75);
              if (v71 != &v73)
              {
                free(v71);
              }

              v47 = v75;
              if (v76)
              {
                v64 = v42;
                v67 = (v75 + 24 * v76);
                do
                {
                  v48 = v47[1];
                  v49 = v47[2];
                  SuccessorOperands = mlir::RegionBranchTerminatorOpInterface::getSuccessorOperands(&v68, *v47);
                  v71 = SuccessorOperands;
                  v72 = 0;
                  v73 = v48;
                  v74 = 0;
                  if (v51)
                  {
                    v52 = v49 == 0;
                  }

                  else
                  {
                    v52 = 1;
                  }

                  if (!v52)
                  {
                    v53 = v51;
                    v54 = SuccessorOperands + 3;
                    v55 = 1;
                    do
                    {
                      v56 = *v54;
                      v70 = mlir::ValueRange::dereference_iterator(&v73, v55 - 1);
                      v57 = *v6 + 72;
                      if (v57 != v32)
                      {
                        llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v32, v56, &v70);
                      }

                      llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(v57, v56, &v70);
                      v72 = v55;
                      v74 = v55;
                      if (v53 == v55)
                      {
                        break;
                      }

                      v54 += 4;
                      v52 = v49 == v55++;
                    }

                    while (!v52);
                  }

                  v47 += 3;
                }

                while (v47 != v67);
                v47 = v75;
                v4 = v62;
                v42 = v64;
              }

              if (v47 != &v77)
              {
                free(v47);
              }

              v42 = *(v42 + 8);
              v41 = v63;
            }

            v30 = v60;
            v31 = v61 + 3;
          }

          while (v61 + 3 != v59);
          v31 = v79;
        }

        if (v31 != v81)
        {
          free(v31);
        }
      }
    }
  }

LABEL_75:
  v58 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::unionSets(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v11 = &v11;
  v12 = 1;
  v13 = a2;
  v5 = std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::__emplace_unique_key_args<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>(a1, a2);
  v11 = &v11;
  v12 = 1;
  v13 = *a3;
  v6 = std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::__emplace_unique_key_args<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>(a1, v13);
  v7 = (a1 + 8);
  if (v7 == v5)
  {
    Leader = 0;
  }

  else
  {
    Leader = llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader((v5 + 4));
  }

  if (v7 == v6)
  {
    result = 0;
  }

  else
  {
    result = llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader((v6 + 4));
  }

  if (Leader != result)
  {
    *(*Leader + 8) = *(*Leader + 8) & 1 | result;
    *Leader = *result;
    v10 = *(result + 8) & 0xFFFFFFFFFFFFFFFELL;
    *result = Leader;
    *(result + 8) = v10;
  }

  return result;
}

void *std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::__emplace_unique_key_args<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[6];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    Leader = *a1;
    if ((*(*v1 + 8) & 1) == 0)
    {
      Leader = llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue::getLeader();
      *v1 = Leader;
    }

    return Leader;
  }

  return v1;
}

void mlir::ODIE::Compiler::Exec::ExecDialect::ExecDialect(mlir::ODIE::Compiler::Exec::ExecDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "exec";
  *(this + 2) = 4;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ExecDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E86380;
  mlir::MLIRContext::loadDialect<mlir::func::FuncDialect>(a2, a2, a3, a4);
  mlir::MLIRContext::loadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(*(this + 4), v5, v6, v7);
  mlir::ODIE::Compiler::Exec::ExecDialect::initialize(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::func::FuncDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "func", 4, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "func", 4uLL, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::func::FuncDialect * mlir::MLIRContext::getOrLoadDialect<mlir::func::FuncDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "coreml", 6, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "coreml", 6uLL, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::CoreMLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ExecDialect::~ExecDialect(mlir::ODIE::Compiler::Exec::ExecDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::getAffineMap(mlir::ODIE::Compiler::Exec::MemoryLayoutAttr *this, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *(this + 8);
  if (v3 == *(this + 2) + 1)
  {
    return mlir::makeStridedLinearLayoutMap(*(this + 7) + 8, v3 - 1, 0, *(**this + 32));
  }

  else
  {
    return mlir::AffineMap::getMultiDimIdentityMap(*(this + 2), *(**this + 32), a3);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::ExecOpAsmDialectInterface::getAlias(int a1, uint64_t a2, llvm::raw_ostream *this)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4 || !*(a2 + 32))
  {
    return 0;
  }

  v5 = llvm::raw_ostream::operator<<(this, *(a2 + 8), v4);
  v6 = *(v5 + 4);
  if (*(v5 + 3) - v6 > 7uLL)
  {
    *v6 = 0x747865746E6F635FLL;
    *(v5 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v5, "_context", 8uLL);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::Exec::CallingConventionsAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail29CallingConventionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_22CallingConventionsAttrEJNS4_18CallingConventionsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage,mlir::ODIE::Compiler::Exec::CallingConventions>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::Exec::CallingConventions &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage,mlir::ODIE::Compiler::Exec::CallingConventions>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::Exec::CallingConventions &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::get(uint64_t *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4, uint64_t a5, llvm::hashing::detail::hash_state *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v14 = *a1;
  v24[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id;
  v24[1] = a1;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail23MemoryLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16MemoryLayoutAttrEJNS_8ArrayRefIiEENSF_IxEESH_SH_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v27[1] = v24;
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v25[5] = a7;
  v26[0] = a9;
  v26[1] = a10;
  memset(v32, 0, 56);
  memset(v31, 0, sizeof(v31));
  v32[7] = 0xFF51AFD7ED558CCDLL;
  v29 = llvm::hashing::detail::hash_combine_range_impl<int const>(a2, a2 + 4 * a3, a3, a4);
  v30 = llvm::hashing::detail::hash_combine_range_impl<long long const>(a4, &a4[a5], v15, v16);
  v28 = 0;
  v19 = llvm::hashing::detail::hash_combine_range_impl<long long const>(a6, a6 + 8 * a7, v17, v18);
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v29, &v28, v31, v32, v19);
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>>(&v29, v28, v20, v32, v26);
  v28 = v25;
  v29 = v25;
  v30 = v27;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v14 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id, v21, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v29);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5[1] = &v6;
  v6 = v8;
  v7 = 0x600000000;
  v5[0] = a2;
  if ((*(*a2 + 392))(a2, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v5, 0, 0))
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a1, &v6);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v3;
  if (v6 != v8)
  {
    free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void *std::optional<llvm::SmallVector<long long,6u>>::value_or[abi:nn200100]<llvm::SmallVector<long long,6u>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 64);
  *result = result + 2;
  result[1] = 0x600000000;
  if (v3 == 1)
  {
    if (*(a2 + 8))
    {
      return llvm::SmallVectorImpl<long long>::operator=(result, a2);
    }
  }

  else if (*(a3 + 8))
  {
    return llvm::SmallVectorImpl<long long>::operator=(result, a3);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ExecDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v33, a2, 0);
  v58 = "calling_conventions";
  v59 = 19;
  if (v36[2])
  {
    goto LABEL_2;
  }

  v6 = v35;
  if (v35 == 19)
  {
    if (*v34 != 0x5F676E696C6C6163 || v34[1] != 0x69746E65766E6F63 || *(v34 + 11) != 0x736E6F69746E6576)
    {
      goto LABEL_17;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_102;
    }

    v19 = (*(*a2 + 40))(a2);
    v62 = 0;
    v63 = 0;
    if (!mlir::AsmParser::parseKeyword(a2, &v62))
    {
      goto LABEL_101;
    }

    if (v63 == 11)
    {
      if (*v62 != 0x7465725F79706F63 || *(v62 + 3) != 0x6E72757465725F79)
      {
        goto LABEL_93;
      }

      v21 = 1;
    }

    else
    {
      if (v63 != 12 || (*v62 == 0x65725F636F6C6C61 ? (v20 = *(v62 + 2) == 1852994932) : (v20 = 0), !v20))
      {
LABEL_93:
        v69 = 257;
        (*(*a2 + 24))(&v51, a2, v19, &v66);
        if (v51)
        {
          mlir::Diagnostic::operator<<<10ul>(&v52, "expected ");
          if (v51)
          {
            mlir::Diagnostic::operator<<<49ul>(&v52, "::mlir::ODIE::Compiler::Exec::CallingConventions");
            if (v51)
            {
              mlir::Diagnostic::operator<<<16ul>(&v52, " to be one of: ");
              if (v51)
              {
                mlir::Diagnostic::operator<<<13ul>(&v52, "alloc_return");
                if (v51)
                {
                  mlir::Diagnostic::operator<<<3ul>(&v52, ", ");
                  if (v51)
                  {
                    mlir::Diagnostic::operator<<<12ul>(&v52, "copy_return");
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
LABEL_101:
        v27 = (*(*a2 + 40))(a2);
        v69 = 259;
        (*(*a2 + 24))(&v51, a2, v27, &v66);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
        goto LABEL_102;
      }

      v21 = 0;
    }

    if ((*(*a2 + 168))(a2))
    {
      v30 = (*(*a2 + 32))(a2);
      v5 = mlir::ODIE::Compiler::Exec::CallingConventionsAttr::get(*v30, v21);
      goto LABEL_118;
    }

LABEL_102:
    v5 = 0;
LABEL_118:
    v36[0] = v5 != 0;
    *&v36[1] = 257;
    goto LABEL_3;
  }

  if (v35)
  {
LABEL_17:
    v37 = "memory_layout";
    v38 = 13;
    goto LABEL_18;
  }

  (*(*v33[0] + 648))(v33[0], &v58, 1);
  v37 = "memory_layout";
  v38 = 13;
  if (v36[2])
  {
LABEL_2:
    v5 = 0;
LABEL_3:
    v6 = 0;
    v7 = 0;
    goto LABEL_80;
  }

  v6 = v35;
  if (v35)
  {
LABEL_18:
    if (v6 != 13)
    {
      goto LABEL_79;
    }

    if (*v34 != 0x6C5F79726F6D656DLL || *(v34 + 5) != 0x74756F79616C5F79)
    {
      goto LABEL_79;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(v66) = 0;
    v70 = 0;
    LOBYTE(v62) = 0;
    v65 = 0;
    LOBYTE(v58) = 0;
    v61 = 0;
    LOBYTE(v55[0]) = 0;
    v57 = 0;
    v53[8] = 257;
    if (((*(*a2 + 400))(a2, "ordering", 8, &v51) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 280))(a2) & 1) == 0)
    {
      goto LABEL_105;
    }

    mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(a2, &v51);
    std::__optional_storage_base<llvm::SmallVector<int,12u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<int,12u>,false>>(&v66, &v51);
    if (v54 == 1 && v51 != v53)
    {
      free(v51);
    }

    v11 = *a2;
    if (v70)
    {
      if (((*(v11 + 296))(a2) & 1) == 0)
      {
        goto LABEL_105;
      }

      if (((*(*a2 + 408))(a2, "alignments", 10) & 1) == 0)
      {
LABEL_40:
        if (((*(*a2 + 408))(a2, "interleave", 10) & 1) == 0)
        {
          goto LABEL_55;
        }

        if ((*(*a2 + 104))(a2) & 1) != 0 && ((*(*a2 + 280))(a2))
        {
          (*(*a2 + 40))(a2);
          if (v61 == 1 && v58 != v60)
          {
            free(v58);
          }

          v58 = v60;
          v59 = 0x600000000;
          v61 = 1;
          if ((*(*a2 + 600))(a2, &v58, 1, 0) & 1) != 0 && ((*(*a2 + 296))(a2))
          {
LABEL_55:
            if (((*(*a2 + 408))(a2, "strides", 7) & 1) == 0)
            {
              goto LABEL_56;
            }

            if ((*(*a2 + 104))(a2) & 1) != 0 && ((*(*a2 + 280))(a2))
            {
              (*(*a2 + 40))(a2);
              if (v57 == 1 && v55[0] != v56)
              {
                free(v55[0]);
              }

              v55[0] = v56;
              v55[1] = 0x600000000;
              v57 = 1;
              if ((*(*a2 + 600))(a2, v55, 1, 0) & 1) != 0 && ((*(*a2 + 296))(a2))
              {
LABEL_56:
                v13 = *(*(*a2 + 32))(a2);
                v31 = v67;
                v32 = v66;
                v49[0] = v50;
                v49[1] = 0x600000000;
                std::optional<llvm::SmallVector<long long,6u>>::value_or[abi:nn200100]<llvm::SmallVector<long long,6u>>(&v51, &v62, v49);
                v14 = v51;
                v15 = v52;
                v44[0] = v45;
                v44[1] = 0x600000000;
                std::optional<llvm::SmallVector<long long,6u>>::value_or[abi:nn200100]<llvm::SmallVector<long long,6u>>(&v46, &v58, v44);
                v16 = v46;
                v17 = v47;
                v39[0] = v40;
                v39[1] = 0x600000000;
                std::optional<llvm::SmallVector<long long,6u>>::value_or[abi:nn200100]<llvm::SmallVector<long long,6u>>(&v41, v55, v39);
                v5 = mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::get(v13, v32, v31, v14, v15, v16, v17, v18, v41, v42);
                if (v41 != &v43)
                {
                  free(v41);
                }

                if (v39[0] != v40)
                {
                  free(v39[0]);
                }

                if (v46 != &v48)
                {
                  free(v46);
                }

                if (v44[0] != v45)
                {
                  free(v44[0]);
                }

                if (v51 != v53)
                {
                  free(v51);
                }

                if (v49[0] != v50)
                {
                  free(v49[0]);
                }

                goto LABEL_106;
              }
            }
          }
        }

LABEL_105:
        v5 = 0;
LABEL_106:
        if (v57 == 1 && v55[0] != v56)
        {
          free(v55[0]);
        }

        if (v61 == 1 && v58 != v60)
        {
          free(v58);
        }

        if (v65 == 1 && v62 != v64)
        {
          free(v62);
        }

        if (v70 == 1 && v66 != &v68)
        {
          free(v66);
        }

        goto LABEL_118;
      }

      if (((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 280))(a2) & 1) == 0)
      {
        goto LABEL_105;
      }

      mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(&v51, a2);
      std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(&v62, &v51);
      if (v54 == 1 && v51 != v53)
      {
        free(v51);
      }

      v12 = *a2;
      if (v65)
      {
        if (((*(v12 + 296))(a2) & 1) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_40;
      }

      v28 = (*(v12 + 40))(a2);
    }

    else
    {
      v28 = (*(v11 + 40))(a2);
    }

    v49[0] = v29;
    v50[8] = 259;
    (*(*a2 + 24))(&v51, a2, v28, v49);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    goto LABEL_105;
  }

  (*(*v33[0] + 648))(v33[0], &v37, 1);
  if (v36[2])
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_80;
  }

  v6 = v35;
LABEL_79:
  v5 = 0;
  v7 = v34;
  *v36 = 0;
  v36[2] = 1;
LABEL_80:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v33) & 0x100) == 0)
  {
    v64[8] = 257;
    (*(*a2 + 24))(&v51, a2, v4, &v62);
    if (v51)
    {
      if (v51)
      {
        v69 = 261;
        v66 = v7;
        v67 = v6;
        mlir::Diagnostic::operator<<(&v52, &v66);
        if (v51)
        {
          if (v51)
          {
            v22 = *(a1 + 8);
            v23 = *(a1 + 16);
            v69 = 261;
            v66 = v22;
            v67 = v23;
            mlir::Diagnostic::operator<<(&v52, &v66);
            if (v51)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    v5 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::ODIE::Compiler::Exec::ExecDialect::printAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 0x12)
    {
      *(v9 + 15) = 1936617321;
      *v9 = *"calling_conventions";
      *(v8 + 4) += 19;
    }

    else
    {
      llvm::raw_ostream::write(v8, "calling_conventions", 0x13uLL);
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, "<", 1uLL);
    }

    else
    {
      *v11 = 60;
      ++*(v10 + 4);
    }

    v12 = *(a2 + 8);
    v13 = &byte_25D0A27DF;
    v14 = 11;
    if (v12 == 1)
    {
      v13 = "copy_return";
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = 12;
    }

    if (v12)
    {
      v16 = v13;
    }

    else
    {
      v16 = "alloc_return";
    }

    v17 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v17, v16, v15);
    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) != v19)
    {
      v20 = 62;
LABEL_114:
      *v19 = v20;
      ++*(v18 + 4);
      return;
    }

    llvm::raw_ostream::write(v18, ">", 1uLL);
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
  {
    v6 = (*(*a3 + 16))(a3);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 0xCuLL)
    {
      qmemcpy(v7, "memory_layout", 13);
      *(v6 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v6, "memory_layout", 0xDuLL);
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (v22 >= *(v21 + 3))
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      *(v21 + 4) = v22 + 1;
      *v22 = 32;
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) - v24 > 7uLL)
    {
      *v24 = 0x676E69726564726FLL;
      *(v23 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v23, "ordering", 8uLL);
    }

    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (*(v25 + 3) == v26)
    {
      llvm::raw_ostream::write(v25, ":", 1uLL);
    }

    else
    {
      *v26 = 58;
      ++*(v25 + 4);
    }

    v27 = (*(*a3 + 16))(a3);
    v28 = *(v27 + 4);
    if (v28 >= *(v27 + 3))
    {
      llvm::raw_ostream::write(v27, 32);
    }

    else
    {
      *(v27 + 4) = v28 + 1;
      *v28 = 32;
    }

    v29 = (*(*a3 + 16))(a3);
    v30 = *(v29 + 4);
    if (*(v29 + 3) == v30)
    {
      llvm::raw_ostream::write(v29, "(", 1uLL);
    }

    else
    {
      *v30 = 40;
      ++*(v29 + 4);
    }

    v31 = *(a2 + 16);
    if (v31)
    {
      v32 = *(a2 + 8);
      v33 = (*(*a3 + 16))(a3);
      llvm::write_integer(v33, *v32, 0, 0);
      if (v31 != 1)
      {
        v34 = v32 + 1;
        v35 = 4 * v31 - 4;
        do
        {
          v36 = (*(*a3 + 16))(a3);
          v37 = *(v36 + 4);
          if (*(v36 + 3) - v37 > 1uLL)
          {
            *v37 = 8236;
            *(v36 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v36, ", ", 2uLL);
          }

          v38 = (*(*a3 + 16))(a3);
          v39 = *v34++;
          llvm::write_integer(v38, v39, 0, 0);
          v35 -= 4;
        }

        while (v35);
      }
    }

    v40 = (*(*a3 + 16))(a3);
    v41 = *(v40 + 4);
    if (*(v40 + 3) == v41)
    {
      llvm::raw_ostream::write(v40, ")", 1uLL);
    }

    else
    {
      *v41 = 41;
      ++*(v40 + 4);
    }

    if (*(a2 + 32))
    {
      v42 = (*(*a3 + 16))(a3);
      v43 = *(v42 + 4);
      if (v43 >= *(v42 + 3))
      {
        llvm::raw_ostream::write(v42, 32);
      }

      else
      {
        *(v42 + 4) = v43 + 1;
        *v43 = 32;
      }

      v44 = (*(*a3 + 16))(a3);
      v45 = *(v44 + 4);
      if ((*(v44 + 3) - v45) > 9)
      {
        *(v45 + 8) = 29556;
        *v45 = *"alignments";
        *(v44 + 4) += 10;
      }

      else
      {
        llvm::raw_ostream::write(v44, "alignments", 0xAuLL);
      }

      v46 = (*(*a3 + 16))(a3);
      v47 = *(v46 + 4);
      if (*(v46 + 3) == v47)
      {
        llvm::raw_ostream::write(v46, ":", 1uLL);
      }

      else
      {
        *v47 = 58;
        ++*(v46 + 4);
      }

      v48 = (*(*a3 + 16))(a3);
      v49 = *(v48 + 4);
      if (v49 >= *(v48 + 3))
      {
        llvm::raw_ostream::write(v48, 32);
      }

      else
      {
        *(v48 + 4) = v49 + 1;
        *v49 = 32;
      }

      v50 = (*(*a3 + 16))(a3);
      v51 = *(v50 + 4);
      if (*(v50 + 3) == v51)
      {
        llvm::raw_ostream::write(v50, "(", 1uLL);
      }

      else
      {
        *v51 = 40;
        ++*(v50 + 4);
      }

      v52 = *(a2 + 32);
      if (v52)
      {
        v53 = *(a2 + 24);
        v54 = (*(*a3 + 16))(a3);
        llvm::write_integer(v54, *v53, 0, 0);
        if (v52 != 1)
        {
          v55 = v53 + 1;
          v56 = 8 * v52 - 8;
          do
          {
            v57 = (*(*a3 + 16))(a3);
            v58 = *(v57 + 4);
            if (*(v57 + 3) - v58 > 1uLL)
            {
              *v58 = 8236;
              *(v57 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v57, ", ", 2uLL);
            }

            v59 = (*(*a3 + 16))(a3);
            v60 = *v55++;
            llvm::write_integer(v59, v60, 0, 0);
            v56 -= 8;
          }

          while (v56);
        }
      }

      v61 = (*(*a3 + 16))(a3);
      v62 = *(v61 + 4);
      if (*(v61 + 3) == v62)
      {
        llvm::raw_ostream::write(v61, ")", 1uLL);
      }

      else
      {
        *v62 = 41;
        ++*(v61 + 4);
      }
    }

    if (*(a2 + 48))
    {
      v63 = (*(*a3 + 16))(a3);
      v64 = *(v63 + 4);
      if (v64 >= *(v63 + 3))
      {
        llvm::raw_ostream::write(v63, 32);
      }

      else
      {
        *(v63 + 4) = v64 + 1;
        *v64 = 32;
      }

      v65 = (*(*a3 + 16))(a3);
      v66 = *(v65 + 4);
      if ((*(v65 + 3) - v66) > 9)
      {
        *(v66 + 8) = 25974;
        *v66 = *"interleave";
        *(v65 + 4) += 10;
      }

      else
      {
        llvm::raw_ostream::write(v65, "interleave", 0xAuLL);
      }

      v67 = (*(*a3 + 16))(a3);
      v68 = *(v67 + 4);
      if (*(v67 + 3) == v68)
      {
        llvm::raw_ostream::write(v67, ":", 1uLL);
      }

      else
      {
        *v68 = 58;
        ++*(v67 + 4);
      }

      v69 = (*(*a3 + 16))(a3);
      v70 = *(v69 + 4);
      if (v70 >= *(v69 + 3))
      {
        llvm::raw_ostream::write(v69, 32);
      }

      else
      {
        *(v69 + 4) = v70 + 1;
        *v70 = 32;
      }

      v71 = (*(*a3 + 16))(a3);
      v72 = *(v71 + 4);
      if (*(v71 + 3) == v72)
      {
        llvm::raw_ostream::write(v71, "(", 1uLL);
      }

      else
      {
        *v72 = 40;
        ++*(v71 + 4);
      }

      v87 = *(a2 + 40);
      v73 = (*(*a3 + 16))(a3);
      mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(v73, &v87);
      v74 = (*(*a3 + 16))(a3);
      v75 = *(v74 + 4);
      if (*(v74 + 3) == v75)
      {
        llvm::raw_ostream::write(v74, ")", 1uLL);
      }

      else
      {
        *v75 = 41;
        ++*(v74 + 4);
      }
    }

    if (*(a2 + 64))
    {
      v76 = (*(*a3 + 16))(a3);
      v77 = *(v76 + 4);
      if (v77 >= *(v76 + 3))
      {
        llvm::raw_ostream::write(v76, 32);
      }

      else
      {
        *(v76 + 4) = v77 + 1;
        *v77 = 32;
      }

      v78 = (*(*a3 + 16))(a3);
      v79 = *(v78 + 4);
      if (*(v78 + 3) - v79 > 6uLL)
      {
        *(v79 + 3) = 1936024681;
        *v79 = 1769108595;
        *(v78 + 4) += 7;
      }

      else
      {
        llvm::raw_ostream::write(v78, "strides", 7uLL);
      }

      v80 = (*(*a3 + 16))(a3);
      v81 = *(v80 + 4);
      if (*(v80 + 3) == v81)
      {
        llvm::raw_ostream::write(v80, ":", 1uLL);
      }

      else
      {
        *v81 = 58;
        ++*(v80 + 4);
      }

      v82 = (*(*a3 + 16))(a3);
      v83 = *(v82 + 4);
      if (v83 >= *(v82 + 3))
      {
        llvm::raw_ostream::write(v82, 32);
      }

      else
      {
        *(v82 + 4) = v83 + 1;
        *v83 = 32;
      }

      v84 = (*(*a3 + 16))(a3);
      v85 = *(v84 + 4);
      if (*(v84 + 3) == v85)
      {
        llvm::raw_ostream::write(v84, "(", 1uLL);
      }

      else
      {
        *v85 = 40;
        ++*(v84 + 4);
      }

      v87 = *(a2 + 56);
      v86 = (*(*a3 + 16))(a3);
      mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(v86, &v87);
      v18 = (*(*a3 + 16))(a3);
      v19 = *(v18 + 4);
      if (*(v18 + 3) == v19)
      {
        llvm::raw_ostream::write(v18, ")", 1uLL);
        return;
      }

      v20 = 41;
      goto LABEL_114;
    }
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.alloc_const", 0x10, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocConstOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86450;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocConstOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::verifySymbolUses;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[241];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>();
    unk_27FC197A0 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::OutputIntentOpInterface]";
  v6 = 113;
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

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::isInferenceInvariant;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocConstOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0B8))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface>();
    _MergedGlobals_32 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F0B8);
  }

  return _MergedGlobals_32;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC1F0D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0D0))
  {
    qword_27FC1F0C0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface>();
    *algn_27FC1F0C8 = v1;
    __cxa_guard_release(&qword_27FC1F0D0);
  }

  return qword_27FC1F0C0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface]";
  v6 = 122;
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0E0))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>>();
    qword_27FC1F0D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F0E0);
  }

  return qword_27FC1F0D8;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F0F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0F8))
  {
    qword_27FC1F0E8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>>();
    unk_27FC1F0F0 = v1;
    __cxa_guard_release(&qword_27FC1F0F8);
  }

  return qword_27FC1F0E8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F108))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>>();
    qword_27FC1F100 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F108);
  }

  return qword_27FC1F100;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F120))
  {
    qword_27FC1F110 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>>();
    *algn_27FC1F118 = v1;
    __cxa_guard_release(&qword_27FC1F120);
  }

  return qword_27FC1F110;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<Empty>]";
  v6 = 146;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::AllocConstOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::AllocConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::Exec::AllocConstOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.alloc", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86518;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>::isInferenceInvariant;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[9] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[8] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::AllocOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::Exec::AllocOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.alloc_view", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E865E0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::AllocViewOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v3, v2);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::getSpeculatability;
  v5 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::getEffects;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v7, v6);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::getOutputIntents;
  v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v9, v8);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::isInferenceInvariant;
  v11 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AllocViewOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::AllocViewOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, mlir::ODIE::Compiler::Exec::AllocViewOp::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    v6 = mlir::ODIE::Compiler::Exec::AllocViewOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::RegionBranchOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.async.await", 0x10, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E866A8;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>,mlir::RegionBranchOpInterface::Trait<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v3, v2);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getSpeculatability;
  v5 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getEffects;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v7, v6);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getOutputIntents;
  v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v9, v8);
  v10 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v10 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getEntrySuccessorOperands;
  v10[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getEntrySuccessorRegions;
  v10[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getSuccessorRegions;
  v10[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getRegionInvocationBounds;
  v10[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::areTypesCompatible;
  v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 44);
  v4 = *(a2 + 16 * ((v3 >> 23) & 1) + 64);
  if ((v3 & 0x800000) != 0)
  {
    return *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::AsyncAwaitOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && ((*(a1 + 46) & 0x80) == 0 ? (v4 = 0) : (v4 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4)))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::Exec::AsyncAwaitOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.call", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86770;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

double mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CallOp>::copyProperties(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::Exec::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::ODIE::Compiler::Exec::CallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyEscapingOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::isEscaping;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CallOp>::getDpsInitsMutable;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v11[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1F130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F130))
  {
    v9 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait>(void)::Empty>>();
    qword_27FC1F128 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC1F130);
  }

  v11[8] = qword_27FC1F128;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[9] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F148))
  {
    qword_27FC1F138 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait>(void)::Empty>>();
    unk_27FC1F140 = v1;
    __cxa_guard_release(&qword_27FC1F148);
  }

  return qword_27FC1F138;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait<Empty>]";
  v6 = 136;
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

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F158))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>>();
    qword_27FC1F150 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F158);
  }

  return qword_27FC1F150;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F170))
  {
    qword_27FC1F160 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>>();
    *algn_27FC1F168 = v1;
    __cxa_guard_release(&qword_27FC1F170);
  }

  return qword_27FC1F160;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::CallOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface::Trait,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && ((*(a1 + 46) & 0x80) == 0 ? (v4 = 0) : (v4 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4) && (v7 = a1, (mlir::ODIE::Compiler::Exec::CallOp::verifyInvariantsImpl(&v7) & 1) != 0)))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::Exec::CallOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.const", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86838;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

double mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ConstOp>::copyProperties(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::Exec::ConstOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::isDeclaration;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ConstOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1F180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F180))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl>(void)::Empty>>();
    qword_27FC1F178 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC1F180);
  }

  v11[4] = qword_27FC1F178;
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[10] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F198))
  {
    qword_27FC1F188 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl>(void)::Empty>>();
    unk_27FC1F190 = v1;
    __cxa_guard_release(&qword_27FC1F198);
  }

  return qword_27FC1F188;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::ConstOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::ConstOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ModuleOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 2);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    v20 = 257;
    mlir::Operation::emitOpError(a1, v19, &v22);
    if (v22)
    {
      mlir::Diagnostic::operator<<<19ul>(v23, "expects parent op ");
    }

    v18 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v22, &v18);
    v21[0] = "builtin.module";
    v21[1] = 14;
    v17[0] = v21;
    v17[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v17);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    if (v12)
    {
      goto LABEL_16;
    }
  }

  v22 = a1;
  if (mlir::ODIE::Compiler::Exec::ConstOp::verifyInvariantsImpl(&v22))
  {
    v14 = mlir::detail::SymbolOpInterfaceTrait<mlir::ODIE::Compiler::Exec::ConstOp>::verifyTrait(a1, v13);
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::ODIE::Compiler::Exec::ConstOp>::verifyTrait(mlir::Operation *a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (mlir::detail::verifySymbol(a1, a2))
  {
    v3 = *(a1 + 2);
    if (v3 && (v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8) != 0 && (v5 = *(v4 + 16)) != 0 && (v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(), ((*(**(v5 + 48) + 32))(*(v5 + 48), v6) & 1) == 0))
    {
      v10 = *(*(v5 + 48) + 16);
      v7 = 1;
      if (v10 != &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v11 = "symbol's parent must have the SymbolTable trait";
        v12 = 259;
        mlir::Operation::emitOpError(a1, &v11, v13);
        v7 = (v13[200] & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.context_extract", 0x14, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextExtractOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86900;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextExtractOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::ContextExtractOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::ContextExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::Exec::ContextExtractOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.context_insert", 0x13, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextInsertOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E869C8;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::ContextInsertOp>::getOutputIntents(uint64_t a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 36);
  v3 = *(***(a2 + 24) + 32);
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v3, 0);
  v8 = v10;
  v9 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::assign(&v8, v2, v4);
  v5 = mlir::ArrayAttr::get(v3, v8, v9);
  if (v8 != v10)
  {
    free(v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1F1A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1A8))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>>();
    qword_27FC1F1A0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1F1A8);
  }

  return qword_27FC1F1A0;
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F1C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1C0))
  {
    qword_27FC1F1B0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>>();
    *algn_27FC1F1B8 = v1;
    __cxa_guard_release(&qword_27FC1F1C0);
  }

  return qword_27FC1F1B0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<Empty>]";
  v6 = 145;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::ContextInsertOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::ContextInsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::Exec::ContextInsertOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.copy", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86A90;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::CopyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::Exec::CopyOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v3, v2);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getEffects;
  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getDpsInitsMutable;
  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v7, v6);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getOutputIntents;
  v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v9, v8);
  v10 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::isCompatibleReturnTypes;
  v11 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

double mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 48);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = (v2 - v4 + 32) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::getOutputIntents(uint64_t a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 36);
  v3 = *(***(a2 + 24) + 32);
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v3, 0);
  v8 = v10;
  v9 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::assign(&v8, v2, v4);
  v5 = mlir::ArrayAttr::get(v3, v8, v9);
  if (v8 != v10)
  {
    free(v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::ODIE::Compiler::Exec::CopyOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "exec.copy";
      v23 = 9;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::CopyOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[12] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::CopyOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, mlir::ODIE::Compiler::Exec::CopyOp::verifyInvariantsImpl(&v8)))
  {
    v6 = mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::Exec::DPSOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::ODIE::Compiler::Exec::verifyDPSOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.get_type", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::GetTypeOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86B58;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::GetTypeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::isInferenceInvariant;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::GetTypeOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1F1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1D0))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl>(void)::Empty>>();
    qword_27FC1F1C8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC1F1D0);
  }

  v11[2] = qword_27FC1F1C8;
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[10] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1E8))
  {
    qword_27FC1F1D8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl>(void)::Empty>>();
    unk_27FC1F1E0 = v1;
    __cxa_guard_release(&qword_27FC1F1E8);
  }

  return qword_27FC1F1D8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl<Empty>]";
  v6 = 142;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::GetTypeOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::GetTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::MetaType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::Exec::GetTypeOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.infer_type", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InferTypeOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86C20;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::InferTypeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InferTypeOp>::isInferenceInvariant;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[7] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::InferTypeOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::InferTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    v6 = a1;
    return mlir::ODIE::Compiler::Exec::InferTypeOp::verifyInvariantsImpl(&v6);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::InitOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.init", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InitOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86CE8;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::InitOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::InitOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::ODIE::Compiler::Exec::InitOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v3, v2);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::getSpeculatability;
  v5 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::getEffects;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v7, v6);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::getOutputIntents;
  v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(a1, v9, v8);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::isInferenceInvariant;
  v11 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::InitOp>::isInferenceInvariant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 46) & 0x80) != 0 && (v4 = *(a2 + 68), v4))
  {
    v6 = (*(a2 + 72) + 24);
    while (1)
    {
      *&v16 = *v6;
      v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v16);
      result = 0;
      if (!v7 || v7 == *a3 + 8 * *(a3 + 16))
      {
        break;
      }

      v6 += 4;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = *(a2 + 36);
    v10 = a2 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 0;
    if (v9)
    {
      mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v16);
    }

    v14[0] = v16;
    v14[1] = v17;
    v11 = v18;
    v15 = v18;
    if (v18)
    {
      while (1)
      {
        v12 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::Exec::ConditionallyEscapingOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v11 + 16));
        if (v12)
        {
          if ((*v13)(v13, v12))
          {
            break;
          }
        }

        mlir::ResultRange::UseIterator::operator++(v14);
        v11 = v15;
        if (!v15)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::InitOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::InitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::Exec::ContextType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait,mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::Exec::InitOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.is_defined", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsDefinedOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86DB0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::inferReturnTypes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = mlir::IntegerType::get(a1, 1, 0);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::refineReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v20, 1uLL);
  v15 = mlir::IntegerType::get(a1, 1, 0);
  *v20 = v15;
  v16 = *(a11 + 8);
  v17 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v24 = (v20 & 0xFFFFFFFFFFFFFFF9 | 2);
  v25 = v21;
  v23[0] = v17;
  v23[1] = v16;
  if ((llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v24, v23) & 1) == 0)
  {
    v24 = "exec.is_defined";
    v25 = 15;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v24, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsDefinedOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[9] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[276];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>();
    *algn_27FC198B8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::IsDefinedOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::IsDefinedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    v6 = mlir::ODIE::Compiler::Exec::IsDefinedOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::readProperties;
  v4[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::writeProperties;
  v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  v6 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v6 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getEntrySuccessorOperands;
  v6[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getEntrySuccessorRegions;
  v6[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getSuccessorRegions;
  v6[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getRegionInvocationBounds;
  v6[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::areTypesCompatible;
  v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v7, v6);
  mlir::OperationName::Impl::Impl(a1, "exec.isolated_group", 0x13, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id, v10);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
  *a1 = &unk_286E86E78;
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  result = *(a2 + 72);
  v3 = *(a2 + 68);
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[9] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[8] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::IsolatedGroupOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    v6 = a1;
    return mlir::ODIE::Compiler::Exec::IsolatedGroupOp::verifyInvariantsImpl(&v6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::Op<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(a1, a2))
  {
    v4 = mlir::detail::verifyTypesAlongControlFlowEdges(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::LoadOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.load", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::LoadOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86F40;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::LoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::LoadOp>,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::ODIE::Compiler::Exec::LoadOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::LoadOp>::getOutputIntents;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::LoadOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::Exec::OutputIntentOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::ODIE::Compiler::Exec::LoadOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::Model(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::OperationName::Impl::Impl(a1, "exec.undef", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::UndefOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E87008;
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::UndefOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[5] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::UndefOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::UndefOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    if (*(a1 + 9))
    {
      v6 = (a1 - 16);
    }

    else
    {
      v6 = 0;
    }

    return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(a1, *(v6 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::IsTerminator<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ReturnLike<mlir::ODIE::Compiler::Exec::YieldOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "exec.yield", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E870D0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::Exec::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::IsTerminator<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::ODIE::Compiler::Exec::YieldOp>,mlir::OpTrait::ReturnLike<mlir::ODIE::Compiler::Exec::YieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getSuccessorRegions;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3 && *(v3 + 16))
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(v3 + 16));
      v6 = *(a2 + 16);
      if (v6)
      {
        v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    InterfaceFor = 0;
  }

  v8 = *(InterfaceFor + 16);

  return v8();
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[12] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1F1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F1F8))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl>(void)::Empty>>();
    qword_27FC1F1F0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC1F1F8);
  }

  v11[4] = qword_27FC1F1F0;
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v11[10] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[11] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F210))
  {
    qword_27FC1F200 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl>(void)::Empty>>();
    *algn_27FC1F208 = v1;
    __cxa_guard_release(&qword_27FC1F210);
  }

  return qword_27FC1F200;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp, mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl<Empty>]";
  v6 = 186;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::Exec::YieldOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::Exec::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::ODIE::Compiler::Exec::AsyncAwaitOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v24[25] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_18;
  }

  if ((v5 = *(a1 + 2)) == 0 || (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v7 = *(v6 + 16)) == 0 || ((v8 = *(*(v7 + 48) + 16), v8 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id) ? (v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncAwaitOp,void>::id) : (v9 = 1), !v9))
  {
    v21 = 257;
    mlir::Operation::emitOpError(a1, v20, &v23);
    if (v23)
    {
      mlir::Diagnostic::operator<<<19ul>(v24, "expects parent op ");
    }

    v19 = "to be one of '";
    v10 = mlir::InFlightDiagnostic::operator<<<char const*>(&v23, &v19);
    v22[0] = xmmword_2799BDE08;
    v22[1] = *&off_2799BDE18;
    v18[0] = v22;
    v18[1] = 2;
    v11 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v10, v18);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<2ul>((v11 + 1), "'");
    }

    v13 = *(v12 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
    if (v13)
    {
      goto LABEL_18;
    }
  }

  v23 = a1;
  if (mlir::ODIE::Compiler::Exec::YieldOp::verifyInvariantsImpl(&v23))
  {
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v14);
  }

  else
  {
LABEL_18:
    IsTerminator = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

void mlir::Dialect::addAttribute<mlir::ODIE::Compiler::Exec::CallingConventionsAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ODIE::Compiler::Exec::CallingConventionsAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::Exec::CallingConventionsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,mlir::Attribute,mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec22CallingConventionsAttrES2_NSF_6detail29CallingConventionsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec22CallingConventionsAttrES2_NSE_6detail29CallingConventionsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallingConventionsAttr,void>::id, "exec.calling_conventions", 24);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v4 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::getAffineMap;
  v4[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::isIdentity;
  v4[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::verifyLayout;
  v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,mlir::Attribute,mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec16MemoryLayoutAttrES2_NSF_6detail23MemoryLayoutAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec16MemoryLayoutAttrES2_NSE_6detail23MemoryLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id, "exec.memory_layout", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::isIdentity(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v3 = 0;
    v4 = 4 * v2;
    while (v3 == *(a2[1] + 4 * v3))
    {
      ++v3;
      v4 -= 4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  if (a2[4] == v2 || a2[8] == v2 + 1)
  {
    return 0;
  }

  return a2[6] != v2;
}

BOOL mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr>::verifyLayout(int a1, mlir::ODIE::Compiler::Exec::MemoryLayoutAttr *this, mlir::MLIRContext *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  AffineMap = mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::getAffineMap(this, this, a3);

  return mlir::detail::verifyAffineMapAsLayout(AffineMap, a3, a4, a5, a6);
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,mlir::Attribute,mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec16MemoryLayoutAttrES2_NSE_6detail23MemoryLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v48[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<int>,void>::replace(*(a2 + 8), *(a2 + 16), &v16);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v3, v4, &v46);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v5, v6, &v43);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v7, v8, &v40);
  v28 = v30;
  v29 = 0xC00000000;
  if (v17[0])
  {
    llvm::SmallVectorImpl<int>::operator=(&v28, &v16);
  }

  v31 = v33;
  v32 = 0x600000000;
  if (v47)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v31, &v46);
  }

  v34 = v36;
  v35 = 0x600000000;
  if (v44)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v34, &v43);
  }

  v37 = v39;
  v38 = 0x600000000;
  if (v41)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v37, &v40);
  }

  if (v40 != &v42)
  {
    free(v40);
  }

  if (v43 != &v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *(**a2 + 32);
  v16 = v18;
  *v17 = 0xC00000000;
  if (v29)
  {
    llvm::SmallVectorImpl<int>::operator=(&v16, &v28);
  }

  v19 = v21;
  *v20 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v19, &v31);
  }

  v22 = v24;
  *v23 = 0x600000000;
  if (v35)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v22, &v34);
  }

  v25 = v27;
  v26 = 0x600000000;
  if (v38)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v25, &v37);
    v11 = v25;
    v12 = v26;
  }

  else
  {
    v12 = 0;
    v11 = v27;
  }

  v13 = mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::get(v10, v16, v17[0], v19, v20[0], v22, v23[0], v9, v11, v12);
  if (v25 != v27)
  {
    free(v25);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage,mlir::ODIE::Compiler::Exec::CallingConventions>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::CallingConventionsAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::Exec::CallingConventions &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail29CallingConventionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_22CallingConventionsAttrEJNS4_18CallingConventionsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 4 * v3) && (v5 = *(a2 + 32), v5 == *(v2 + 24)) && !memcmp(*(a2 + 24), *(v2 + 16), 8 * v5) && (v6 = *(a2 + 48), v6 == *(v2 + 40)) && !memcmp(*(a2 + 40), *(v2 + 32), 8 * v6) && (v7 = *(a2 + 64), v7 == *(v2 + 56)))
  {
    return memcmp(*(a2 + 56), *(v2 + 48), 8 * v7) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MemoryLayoutAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  v8 = *(*a1 + 48);
  v9 = *(*a1 + 56);
  v10 = mlir::StorageUniquer::StorageAllocator::copyInto<int>(a2, **a1, *(*a1 + 8));
  v12 = v11;
  v13 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, v4, v5);
  v15 = v14;
  v16 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, v6, v7);
  v18 = v17;
  v19 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, v8, v9);
  v21 = v20;
  v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 72, 3);
  *v22 = 0;
  v22[1] = v10;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v15;
  v22[5] = v16;
  v22[6] = v18;
  v22[7] = v19;
  v22[8] = v21;
  v23 = *(a1 + 8);
  if (*v23)
  {
    (*v23)(*(v23 + 8), v22);
  }

  return v22;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail23MemoryLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16MemoryLayoutAttrEJNS_8ArrayRefIiEENSF_IxEESH_SH_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v4 = 0;
  if ((mlir::AsmParser::parseInteger<long long>(v2, &v4) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<long long,true>::push_back(a1[1], v4);
  return 1;
}

uint64_t mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "name", 4uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v10[3])
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_14;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}