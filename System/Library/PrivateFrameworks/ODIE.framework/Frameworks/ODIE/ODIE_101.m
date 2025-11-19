void mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::~ReplaceWithOperandsPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[15] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v12, a2);
  v12[13] = v9;
  v12[14] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[15] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v12, a2);
  v12[13] = a3;
  v12[14] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[15] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v12, a2);
  v12[13] = v9;
  v12[14] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[15] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v12, a2);
  v12[13] = a3;
  v12[14] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::FuncOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::FuncOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::FuncOp>]";
  v6 = 148;
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

void mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::~ReplaceWithOperandsPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(v12, a2);
  v12[7] = v9;
  v12[8] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(v12, a2);
  v12[7] = a3;
  v12[8] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(v12, a2);
  v12[7] = v9;
  v12[8] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(v12, a2);
  v12[7] = a3;
  v12[8] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ClassOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ClassOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ClassOp>]";
  v6 = 149;
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

void mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::~ReplaceWithOperandsPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(v12, a2);
  v12[7] = v9;
  v12[8] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(v12, a2);
  v12[7] = a3;
  v12[8] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(v12, a2);
  v12[7] = v9;
  v12[8] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(v12, a2);
  v12[7] = a3;
  v12[8] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ReplaceWithOperandsPattern<mlir::ODIE::Compiler::CoreML::ModuleOp>]";
  v6 = 150;
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

void mlir::ODIE::Compiler::IsolatedGroupToChainPattern::~IsolatedGroupToChainPattern(mlir::ODIE::Compiler::IsolatedGroupToChainPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v13);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::IsolatedGroupToChainPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[14] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v25, *(a1 + 104), a2, *(a3 + 48), *(a3 + 56), a4);
  v6 = a2;
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
    if (!v6 || *(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  mlir::ODIE::Compiler::ODIX::RegionTable::RegionTable(&v20, v6);
  v22 = &v24;
  v23 = xmmword_25D0A05C0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v22, "__c", "");
  v9 = 0;
  v10 = v23;
  while (1)
  {
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&v22, v10);
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v22, 95);
    std::to_string(&v26, v9);
    size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v26;
    }

    else
    {
      v12 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    llvm::SmallVectorImpl<char>::append<char const*,void>(&v22, v12, v12 + size);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v13 = llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::find(&v20, v22, v23);
    if (v20 + 8 * v21 != v13)
    {
      ++v9;
      if (*(*v13 + 8))
      {
        continue;
      }
    }

    v14 = a2;
    do
    {
      v14 = *((*(v14[2] + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    while (*(v14[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id);
    v15 = *(a4 + 24);
    v16 = v14[2];
    if ((v16 + 32) != v14)
    {
      do
      {
        if (*(v14[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
        {
          break;
        }

        v14 = v14[1];
      }

      while (v14 != (v16 + 32));
    }

    v19 = *(a4 + 24);
    *(a4 + 24) = v16;
    *(a4 + 32) = v14;
    v17 = *(a2 + 24);
    v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::RegionOp>(*(**v17 + 32));
    v26.__r_.__value_.__r.__words[0] = v17;
    v26.__r_.__value_.__l.__size_ = v18;
    v26.__r_.__value_.__r.__words[2] = v28;
    v27 = 0x400000000;
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
    mlir::ODIE::Compiler::ODIX::RegionOp::build((a4 + 8), &v26, v22, v23);
  }
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v15);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v12[2] = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v32[2] = *MEMORY[0x277D85DE8];
  v32[0] = a4;
  v32[1] = a5;
  v29 = v31;
  v30 = 0x600000000;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits>::getInterfaceFor(a3) || (!a3 ? (InterfaceFor = 0) : (InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits>::getInterfaceFor(a3)), !a3))
  {
    v12 = *(a3 + 36);
    v13 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(a6 + 8), 2uLL);
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v29, v12, v13);
    goto LABEL_15;
  }

  v14 = (*InterfaceFor)(InterfaceFor, a3);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  LODWORD(v30) = 0;
  if (v15 > HIDWORD(v30))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v15, 8);
    v17 = v30;
    goto LABEL_11;
  }

  if (v15)
  {
    v17 = 0;
LABEL_11:
    v18 = &v16[v15];
    v19 = v29 + 8 * v17;
    do
    {
      v20 = *v16++;
      *v19++ = v20;
    }

    while (v16 != v18);
    v21 = v30;
    goto LABEL_14;
  }

  v21 = 0;
LABEL_14:
  LODWORD(v30) = v21 + v15;
LABEL_15:
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  v22 = (a6 + 24);
  v28 = *(a6 + 24);
  mlir::ODIE::Compiler::ODIXBuilderContext::setOpInsertionPoint<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::ODIE::Compiler::ODIX::FunctionOp>(a2, a6);
  if (v30)
  {
    v23 = v29;
    v24 = (v7 - *(a3 + 36));
    v25 = 8 * v30;
    do
    {
      if (*(*v23 + 8) == 2)
      {
        v26 = mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::ValueOp>((a6 + 8), *(a3 + 24)) - 16;
      }

      else
      {
        v26 = mlir::ValueRange::dereference_iterator(v32, v24);
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, v26);
      v23 += 8;
      ++v24;
      v25 -= 8;
    }

    while (v25);
  }

  if (v28)
  {
    *v22 = v28;
  }

  else
  {
    *v22 = 0;
    *(a6 + 32) = 0;
  }

  if (v29 != v31)
  {
    free(v29);
  }

  v27 = *MEMORY[0x277D85DE8];
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::ValueOp>(mlir::ODIE::Compiler::ODIX::ValueOp *a1, uint64_t a2)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v4 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::ValueOp>(*(**a2 + 32));
  v9[0] = a2;
  v9[1] = v4;
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
  mlir::ODIE::Compiler::ODIX::ValueOp::build(a1, v9, v5);
  v6 = mlir::Operation::create(v9);
  mlir::OpBuilder::insert(a1, v6);
  if (*(*(v6 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ValueOp,void>::id)
  {
    v6 = 0;
  }

  mlir::OperationState::~OperationState(v9);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t *mlir::ODIE::Compiler::ODIXBuilderContext::setOpInsertionPoint<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::ODIE::Compiler::ODIX::FunctionOp>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  while (1)
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v5)
    {
      break;
    }

    v3 = *(v5 + 16);
    if (!v3 || *(*(v3 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v3 = 0;
LABEL_8:
  v13 = v3;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::operator[](a1 + 8, &v13);
  v7 = *result;
  if (!*result)
  {
    v8 = *(((v3 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40) + 8);
    v9 = v8 - 8;
    if (!v8)
    {
      v9 = 0;
    }

    v7 = v9 + 32;
    v10 = *(v9 + 40);
    if (v10 != v7)
    {
      while (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ValueOp,void>::id)
      {
        v10 = *(v10 + 8);
        if (v10 == v7)
        {
          goto LABEL_16;
        }
      }

      v7 = v10;
    }

LABEL_16:
    *result = v7;
  }

  v11 = *(((v3 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40) + 8);
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 24) = v12;
  *(a2 + 32) = v7;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), *a2, &v9);
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
    llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), *a2, &v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v20, &v30);
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::ValueOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ValueOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "odix.value";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::RegionOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "odix.region";
    v5[3] = 11;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::ODIXBuilderContext::populateYieldDestinationsInRegion(mlir::ODIE::Compiler::ODIX::RegionOp,mlir::ValueRange)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, unint64_t a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v2 = *(*(a2 + 48) + 16);
  if (!a2 || v2 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id)
  {
    goto LABEL_12;
  }

  v5 = *a1;
  v4 = a1[1];
  v6 = *v4;
  v7 = v4[1];
  v17[0] = v18;
  v17[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, v6, 0, v6, v7);
  v8 = *(v5 + 104);
  v15 = 0;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>,mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::YieldOp>(v8, *(v5 + 120), a2, &v15);
  v10 = v15;
  if ((v9 & 1) == 0)
  {
    v16 = v15;
    v11 = *(v5 + 112);
    v12 = *(v5 + 120);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(v5 + 116) > v12 >> 3)
    {
LABEL_6:
      *(v5 + 112) = v11 + 1;
      if (*v10 != -4096)
      {
        --*(v5 + 116);
      }

      *v10 = a2;
      v10[1] = (v10 + 3);
      v10[2] = 0x600000000;
      goto LABEL_9;
    }

    llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::grow(v5 + 104, v12);
    llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>,mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::YieldOp>(*(v5 + 104), *(v5 + 120), a2, &v16);
    v11 = *(v5 + 112);
    v10 = v16;
    goto LABEL_6;
  }

LABEL_9:
  llvm::SmallVectorImpl<mlir::Value>::operator=((v10 + 1), v17);
  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  v2 = *(*(a2 + 48) + 16);
LABEL_12:
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
  {
    result = 2;
  }

  else
  {
    result = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>,mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::YieldOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 72 * v7);
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
        v8 = (a1 + 72 * (v15 & v6));
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

void *llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>,mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::YieldOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::YieldOp,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::YieldOp>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x600000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<mlir::Value>::operator=(v19, (v15 - 2));
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

uint64_t llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::Destroy<llvm::MallocAllocator>(v5);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != (a1 + 24))
  {
    free(v2);
  }

  JUMPOUT(0x25F891030);
}

uint64_t llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::IsolatedGroupToChainPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::IsolatedGroupToChainPattern]";
  v6 = 111;
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

void mlir::ODIE::Compiler::OdixFunctionPattern::~OdixFunctionPattern(mlir::ODIE::Compiler::OdixFunctionPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::OdixFunctionPattern::matchAndRewrite(uint64_t a1, mlir::Operation *a2, int a3, mlir::StringAttr **this)
{
  v43[8] = *MEMORY[0x277D85DE8];
  v6 = a2 + 64;
  v7 = *(a2 + 11);
  v8 = a2 + 16 * ((v7 >> 23) & 1) + 64;
  v9 = ((&v8[((v7 >> 21) & 0x7F8) + 7] & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
  if (*v9 == v9)
  {
    mlir::ConversionPatternRewriter::eraseOp(this, a2);
  }

  v11 = *(*(v8 + 1) + 8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 12);
  v27 = v29;
  v28 = 0x600000000;
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), *(v11 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, v12, &v27))
  {
    v14 = *(a2 + 3);
    v15 = *&v6[16 * ((*(a2 + 11) >> 23) & 1) + 32];
    v16 = *(v15 + 24);
    v24 = *(v15 + 16);
    v17 = *(a1 + 24);
    *&v34 = v27 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v34 + 1) = v28;
    v30 = xmmword_25D0A0640;
    v18 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>((v17 & 0xFFFFFFFFFFFFFFF8), &v34, &v30);
    v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id, *(**v14 + 32));
    if (v20)
    {
      *&v34 = v14;
      *(&v34 + 1) = v19;
      v35 = &v37;
      v36 = 0x400000000;
      v38 = v40;
      v39 = 0x400000000;
      v40[4] = v41;
      v40[5] = 0x400000000;
      v41[8] = 4;
      v41[9] = v42;
      v41[10] = 0x100000000;
      v42[1] = v43;
      v42[2] = 0x100000000;
      v43[1] = 0;
      v43[2] = 0;
      v43[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v43[4] = 0;
      v43[6] = 0;
      mlir::ODIE::Compiler::ODIX::FunctionOp::build(this + 1, &v34, v24, v16, v18, (v12 - v13));
    }

    v33 = 1283;
    v31 = "odix.function";
    v32 = 13;
    v26 = 259;
    llvm::operator+(&v30, &v25, &v34);
    llvm::report_fatal_error(&v34, 1);
  }

  *&v34 = "Failed to convert input types";
  v37 = 259;
  *&v30 = &v34;
  v21 = this[2];
  if (v21 && *(v21 + 2) == 1)
  {
    (*(*v21 + 88))(v21, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::func::FuncOp &>(mlir::func::FuncOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v30);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::OdixFunctionPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::OdixFunctionPattern]";
  v6 = 103;
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

void mlir::ODIE::Compiler::GlobalConstPattern::~GlobalConstPattern(mlir::ODIE::Compiler::GlobalConstPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ConstOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(v12, a2);
  v12[9] = v9;
  v12[10] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(v12, a2);
  v12[9] = a3;
  v12[10] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ConstOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(v12, a2);
  v12[9] = v9;
  v12[10] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(v12, a2);
  v12[9] = a3;
  v12[10] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ConstOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::GlobalConstPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v39 = a2;
  v5 = *(a1 + 104);
  v6 = *(a2 + 24);
  v7 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  ValueAttr = mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(&v39);
  v9 = *(v39 + 2 * ((*(v39 + 11) >> 23) & 1) + 8);
  v10 = *(v5 + 216);
  if (v10)
  {
    v37 = *(a4 + 24);
    v25 = *(((v10 + 16 * ((*(v10 + 44) >> 23) & 1) + ((*(v10 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v10 + 40) + 8);
    if (v25)
    {
      v26 = v25 - 8;
    }

    else
    {
      v26 = 0;
    }

    *(a4 + 24) = v26;
    v27 = (a4 + 24);
    *(a4 + 32) = v26 + 32;
    v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRecordOp,void>::id, *(**v6 + 32));
    if (v29)
    {
      v46 = v6;
      v47 = v28;
      v48 = v50;
      v49 = 0x400000000;
      v51 = v53;
      v52 = 0x400000000;
      v54 = v56;
      v55 = 0x400000000;
      v57 = 4;
      v58 = &v60;
      v59 = 0x100000000;
      v61 = &v63;
      v62 = 0x100000000;
      v64 = 0;
      v65 = 0;
      v66 = &mlir::detail::TypeIDResolver<void,void>::id;
      v67 = 0;
      v68 = 0;
      *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(&v46) + 8) = ValueAttr;
      *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(&v46) = v9;
      v30 = mlir::Operation::create(&v46);
      mlir::OpBuilder::insert((a4 + 8), v30);
      mlir::OperationState::~OperationState(&v46);
      v31 = *(v5 + 236);
      v32 = *(v7 + 16);
      v33 = *(v7 + 24);
      v35 = llvm::xxh3_64bits(v32, v33, v34);
      *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((v5 + 224), v32, v33, v35) + 8) = v31;
      if (v37)
      {
        *v27 = v37;
      }

      else
      {
        *v27 = 0;
        *(a4 + 32) = 0;
      }

      mlir::ConversionPatternRewriter::eraseOp(a4, v39);
    }

    v45 = 1283;
    v43 = "odix.data_record";
    v36 = 16;
  }

  else
  {
    v11 = *(a4 + 24);
    v12 = *(a4 + 32);
    while (1)
    {
      v13 = *(v12 + 16);
      if (!v13)
      {
        break;
      }

      v14 = *(v13 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v14)
      {
        break;
      }

      v12 = *(v14 + 16);
      if (!v12 || *(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_10;
      }
    }

    v12 = 0;
LABEL_10:
    v38 = *(a4 + 24);
    v46 = v12;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::operator[](v5 + 32, &v46);
    v16 = *v15;
    if (!*v15)
    {
      v17 = *(((v12 + 16 * ((*(v12 + 44) >> 23) & 1) + ((*(v12 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40) + 8);
      v18 = v17 - 8;
      if (!v17)
      {
        v18 = 0;
      }

      v16 = v18 + 32;
      v19 = *(v18 + 40);
      if (v19 != v16)
      {
        while (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataSegmentOp,void>::id)
        {
          v19 = *(v19 + 8);
          if (v19 == v16)
          {
            goto LABEL_18;
          }
        }

        v16 = v19;
      }

LABEL_18:
      *v15 = v16;
    }

    v20 = *(((v12 + 16 * ((*(v12 + 44) >> 23) & 1) + ((*(v12 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40) + 8);
    if (v20)
    {
      v21 = v20 - 8;
    }

    else
    {
      v21 = 0;
    }

    *(a4 + 24) = v21;
    *(a4 + 32) = v16;
    v22 = *(*v5 + 24);
    v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataSegmentOp,void>::id, *(**v22 + 32));
    if (v24)
    {
      v46 = v22;
      v47 = v23;
      v48 = v50;
      v49 = 0x400000000;
      v51 = v53;
      v52 = 0x400000000;
      v54 = v56;
      v55 = 0x400000000;
      v57 = 4;
      v58 = &v60;
      v59 = 0x100000000;
      v61 = &v63;
      v62 = 0x100000000;
      v64 = 0;
      v65 = 0;
      v66 = &mlir::detail::TypeIDResolver<void,void>::id;
      v67 = 0;
      v68 = 0;
      mlir::OperationState::addRegion(&v46);
    }

    v45 = 1283;
    v43 = "odix.data_segment";
    v36 = 17;
  }

  v44 = v36;
  v41 = 259;
  llvm::operator+(&v42, &v40, &v46);
  llvm::report_fatal_error(&v46, 1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ConstOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::GlobalConstPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::GlobalConstPattern]";
  v6 = 102;
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

void mlir::ODIE::Compiler::ExecAllocPattern::~ExecAllocPattern(mlir::ODIE::Compiler::ExecAllocPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::ExecAllocPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v8, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(*(a1 + 104), *(a2 + 24), *(a3 + 40), *(a3 + 48), v8, 1, a2, a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v8 & 0xFFFFFFFFFFFFFFF9, v9);
}

void mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v40[8] = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a7, "symbol", 6uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
    {
      v16 = Attr;
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

  Symbol = mlir::ODIE::Compiler::ODIXBuilderContext::getOrCreateSymbol(a1, a2, v16, a8);
  mlir::SymbolTable::insert(a1 + 152, Symbol, 0);
  v19 = a8[1];
  v18 = (a8 + 1);
  v20 = *&Symbol[16 * ((*(Symbol + 11) >> 23) & 1) + 64];
  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  v34 = 261;
  v30 = v22;
  v31 = v21;
  v24 = mlir::StringAttr::get(v19, &v30, v23);
  v26 = mlir::SymbolRefAttr::get(v24, 0, 0, v25);
  v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::CallOp>(*(**a2 + 32));
  v30 = a2;
  v31 = v27;
  v32 = &v34;
  v33 = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[8] = 4;
  v38[9] = v39;
  v38[10] = 0x100000000;
  v39[1] = v40;
  v39[2] = 0x100000000;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v40[4] = 0;
  v40[6] = 0;
  mlir::ODIE::Compiler::ODIX::CallOp::build(v18, &v30, v26, a3, a4, a5, a6, 0, 0, 0);
  v28 = mlir::Operation::create(&v30);
  mlir::OpBuilder::insert(v18, v28);
  mlir::OperationState::~OperationState(&v30);
  v29 = *MEMORY[0x277D85DE8];
}

char *mlir::ODIE::Compiler::ODIXBuilderContext::getOrCreateSymbol(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v9 = a1 + 128;
  v8 = *(a1 + 128);
  v35[0] = 0;
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>,mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::LookupBucketFor<mlir::ODIE::Compiler::ODIX::SymbolAttr>(v8, *(v9 + 16), a3, v35);
  v11 = v35[0];
  if (v10)
  {
    result = *(v35[0] + 8);
    if (result)
    {
      goto LABEL_35;
    }

    goto LABEL_9;
  }

  v37[0] = v35[0];
  v13 = *(a1 + 136);
  v14 = *(a1 + 144);
  if (4 * v13 + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_38;
  }

  if (v14 + ~v13 - *(a1 + 140) <= v14 >> 3)
  {
LABEL_38:
    llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::grow(v9, v14);
    llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>,mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::LookupBucketFor<mlir::ODIE::Compiler::ODIX::SymbolAttr>(*(a1 + 128), *(a1 + 144), a3, v37);
    v13 = *(a1 + 136);
    v11 = v37[0];
  }

  *(a1 + 136) = v13 + 1;
  if (*v11 != -4096)
  {
    --*(a1 + 140);
  }

  *v11 = a3;
  v11[1] = 0;
LABEL_9:
  v15 = a4[3];
  v16 = a4[4];
  v17 = v16;
  while (1)
  {
    v18 = *(v17 + 16);
    if (!v18)
    {
      break;
    }

    v19 = *(v18 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v19)
    {
      break;
    }

    v17 = *(v19 + 16);
    if (!v17 || *(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_16;
    }
  }

  v17 = 0;
LABEL_16:
  v37[0] = v17;
  v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>,mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>>::operator[](a1 + 56, v37);
  v21 = *v20;
  if (!*v20)
  {
    v22 = *(((v17 + 16 * ((*(v17 + 44) >> 23) & 1) + ((*(v17 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40) + 8);
    v23 = v22 - 8;
    if (!v22)
    {
      v23 = 0;
    }

    v21 = v23 + 32;
    v24 = *(v23 + 40);
    if (v24 != v21)
    {
      while (*(*(v24 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id)
      {
        v24 = *(v24 + 8);
        if (v24 == v21)
        {
          goto LABEL_24;
        }
      }

      v21 = v24;
    }

LABEL_24:
    *v20 = v21;
  }

  v25 = *(((v17 + 16 * ((*(v17 + 44) >> 23) & 1) + ((*(v17 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40) + 8);
  if (v25)
  {
    v26 = v25 - 8;
  }

  else
  {
    v26 = 0;
  }

  a4[3] = v26;
  a4[4] = v21;
  v27 = *(a3 + 16);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id, *(**a2 + 32));
  if ((v29 & 1) == 0)
  {
    v36 = 1283;
    v35[2] = "odix.symbol";
    v35[3] = 11;
    v34 = 259;
    llvm::operator+(v35, &v33, v37);
    llvm::report_fatal_error(v37, 1);
  }

  v37[0] = a2;
  v37[1] = v28;
  v37[2] = v38;
  v37[3] = 0x400000000;
  v38[4] = v39;
  v38[5] = 0x400000000;
  v39[4] = v40;
  v39[5] = 0x400000000;
  v40[8] = 4;
  v40[9] = v41;
  v40[10] = 0x100000000;
  v41[1] = v42;
  v41[2] = 0x100000000;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v42[4] = 0;
  v42[6] = 0;
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(v37) = v27;
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(v37) + 8) = a3;
  v30 = mlir::Operation::create(v37);
  mlir::OpBuilder::insert((a4 + 1), v30);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(v37);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id)
  {
    result = v30;
  }

  else
  {
    result = 0;
  }

  v11[1] = result;
  if (v15)
  {
    a4[3] = v15;
    a4[4] = v16;
  }

  else
  {
    a4[3] = 0;
    a4[4] = 0;
  }

LABEL_35:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>,mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::LookupBucketFor<mlir::ODIE::Compiler::ODIX::SymbolAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>,mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp,llvm::DenseMapInfo<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::ODIE::Compiler::ODIX::SymbolOp>>::LookupBucketFor<mlir::ODIE::Compiler::ODIX::SymbolAttr>(*a1, *(a1 + 16), v20, &v30);
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::CallOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::CallOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "odix.call";
    v5[3] = 9;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecAllocPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecAllocPattern]";
  v6 = 100;
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

void mlir::ODIE::Compiler::ExecAllocConstPattern::~ExecAllocConstPattern(mlir::ODIE::Compiler::ExecAllocConstPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocConstOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocConstOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::AllocConstOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocConstOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v13);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::ExecAllocConstPattern::matchAndRewrite(uint64_t a1, unint64_t a2, const unsigned __int8 *a3, void *a4)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 104);
  v8 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = llvm::xxh3_64bits(v9, v10, a3);
  v12 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((v7 + 224), v9, v10, v11) + 8);
  v13 = mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXValue(*(a1 + 104), *(a2 + 24), a4);
  v19 = v13;
  v14 = *(a2 + 24);
  v15 = mlir::ODIE::Compiler::ODIX::DataRefAttr::get((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8), 0, v12, 0);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LoadDsOp,void>::id, *(**v14 + 32));
  if (v17)
  {
    v24 = v14;
    v25 = v16;
    v26[0] = v27;
    v26[1] = 0x400000000;
    v27[4] = v28;
    v27[5] = 0x400000000;
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
    v22[0] = v13;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v26, v22, 0, v22, 1);
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>(&v24) = v15;
    v18 = mlir::Operation::create(&v24);
    mlir::OpBuilder::insert((a4 + 1), v18);
    mlir::OperationState::~OperationState(&v24);
    mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v24, *(a1 + 104), a2, &v19, 1, a4);
    mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(*(a1 + 104), *(a2 + 24), &v19, 1, v24, 1, a2, a4);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v24 & 0xFFFFFFFFFFFFFFF9, v25);
  }

  v23 = 1283;
  v22[2] = "odix.load_ds";
  v22[3] = 12;
  v21 = 259;
  llvm::operator+(v22, &v20, &v24);
  llvm::report_fatal_error(&v24, 1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocConstOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v15);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v12[2] = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

char *mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 24;
  v8 = *(a3 + 24);
  mlir::ODIE::Compiler::ODIXBuilderContext::setOpInsertionPoint<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::ODIE::Compiler::ODIX::FunctionOp>(a1, a3);
  v6 = mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::ValueOp>((a3 + 8), a2);
  if (v8)
  {
    *v5 = v8;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
  }

  return v6 - 16;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecAllocConstPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecAllocConstPattern]";
  v6 = 105;
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

void mlir::ODIE::Compiler::ExecAllocViewPattern::~ExecAllocViewPattern(mlir::ODIE::Compiler::ExecAllocViewPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocViewOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(v12, a2);
  v12[7] = v9;
  v12[8] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(v12, a2);
  v12[7] = a3;
  v12[8] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocViewOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(v12, a2);
  v12[7] = v9;
  v12[8] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(v12, a2);
  v12[7] = a3;
  v12[8] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocViewOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::ExecAllocViewPattern::matchAndRewrite(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v36[8] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v27, *(a1 + 104), a2, a3[7], a3[8], a4);
  v8 = *(a2 + 24);
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    v9 = a3[7] & 6;
    v10 = (a3[7] & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 == 0;
    }

    if (v11)
    {
      if (v9 == 2 && v10 != 0)
      {
        v10 = v10[3];
      }
    }

    else
    {
      v10 = *v10;
    }

    v29 = v10;
    mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::Value,mlir::Value&>((a4 + 1), v8, &v29, v27);
  }

  else
  {
    v13 = mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXValue(*(a1 + 104), v8, a4);
    v14 = *(a2 + 24);
    v15 = a3[4];
    v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LoadImmOp,void>::id, *(**v14 + 32));
    if ((v17 & 1) == 0)
    {
      v26 = 1283;
      v25[2] = "odix.load_imm";
      v25[3] = 13;
      v24 = 259;
      llvm::operator+(v25, &v23, &v29);
      llvm::report_fatal_error(&v29, 1);
    }

    v29 = v14;
    v30 = v16;
    v31[0] = v32;
    v31[1] = 0x400000000;
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
    v25[0] = v13;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v31, v25, 0, v25, 1);
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>(&v29) = v15;
    v18 = mlir::Operation::create(&v29);
    mlir::OpBuilder::insert((a4 + 1), v18);
    mlir::OperationState::~OperationState(&v29);
    v19 = *(a1 + 104);
    v20 = *(a2 + 24);
    v21 = (a3[7] & 0xFFFFFFFFFFFFFFF8);
    v22 = a3[7] & 6;
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

    v29 = v21;
    v30 = v13;
    mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(v19, v20, &v29, 2, v27, 1, a2, a4);
  }

  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v27 & 0xFFFFFFFFFFFFFFF9, v28);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::AllocViewOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::Value,mlir::Value&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(*(**a2 + 32));
  v11[0] = a2;
  v11[1] = v8;
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
  mlir::ODIE::Compiler::ODIX::MoveOp::build(a1, v11, *a3, *a4);
  v9 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v9);
  mlir::OperationState::~OperationState(v11);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::MoveOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "odix.move";
    v5[3] = 9;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecAllocViewPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecAllocViewPattern]";
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

void mlir::ODIE::Compiler::ExecCallPattern::~ExecCallPattern(mlir::ODIE::Compiler::ExecCallPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CallOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v12, a2);
  v12[9] = v9;
  v12[10] = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v12, a2);
  v12[9] = a3;
  v12[10] = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CallOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v12, a2);
  v12[9] = v9;
  v12[10] = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v12, a2);
  v12[9] = a3;
  v12[10] = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CallOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::ExecCallPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[8] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v26, *(a1 + 104), a2, *(a3 + 72), *(a3 + 80), a4);
  v8 = mlir::SymbolTable::lookup((*(a1 + 104) + 152), *(*(*(a3 + 24) + 8) + 16), *(*(*(a3 + 24) + 8) + 24));
  if (v8 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v16 = (v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 96);
  }

  else
  {
    Attr = mlir::Operation::getAttr(a2, "symbol", 6uLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
      {
        v11 = Attr;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 104);
    v13 = *(v12 + 128);
    v14 = *(v12 + 144) - 1;
    v15 = ((v11 >> 4) ^ (v11 >> 9)) & v14;
    if (*(v13 + 16 * v15) != v11)
    {
      v24 = 1;
      do
      {
        v25 = v15 + v24++;
        v15 = v25 & v14;
      }

      while (*(v13 + 16 * v15) != v11);
    }

    v16 = (*(v13 + 16 * v15 + 8) + 16 * ((*(*(v13 + 16 * v15 + 8) + 44) >> 23) & 1) + 64);
  }

  v17 = mlir::SymbolRefAttr::get(*v16, 0, 0, v9);
  v18 = *(a2 + 24);
  v19 = *(a3 + 48);
  v20 = *(a3 + 72);
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72))
  {
    v21 = *(**(a4 + 8) + 608);
  }

  else
  {
    v21 = 0;
  }

  v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::CallOp>(*(**v18 + 32));
  v28[0] = v18;
  v28[1] = v22;
  v28[2] = v29;
  v28[3] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
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
  mlir::ODIE::Compiler::ODIX::CallOp::build(a4 + 8, v28, v17, v20, v19, v26 & 0xFFFFFFFFFFFFFFF9, v27, 0, 0, v21);
  v23 = mlir::Operation::create(v28);
  mlir::OpBuilder::insert((a4 + 8), v23);
  mlir::OperationState::~OperationState(v28);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v26 & 0xFFFFFFFFFFFFFFF9, v27);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CallOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecCallPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecCallPattern]";
  v6 = 99;
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

void mlir::ODIE::Compiler::ExecCopyPattern::~ExecCopyPattern(mlir::ODIE::Compiler::ExecCopyPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CopyOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CopyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::CopyOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::ExecCopyPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 104);
  v8 = *(a2 + 24);
  v9 = *(a3 + 40);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 6) != 0 || v10 == 0)
  {
    if ((*(a3 + 40) & 6) == 2 && v10 != 0)
    {
      v10 = v10[3];
    }
  }

  else
  {
    v10 = *v10;
  }

  v14 = v10;
  Dst = mlir::ODIE::Compiler::Exec::CopyOpGenericAdaptor<mlir::ValueRange>::getDst(v9);
  mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(v7, v8, &v14, 1, &Dst, 1, a2, a4);
  v14 = mlir::ODIE::Compiler::Exec::CopyOpGenericAdaptor<mlir::ValueRange>::getDst(*(a3 + 40));
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v14, 1);
}

void *mlir::ODIE::Compiler::Exec::CopyOpGenericAdaptor<mlir::ValueRange>::getDst(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = 1;
  v1 = mlir::ValueRange::offset_base(v7, 1);
  v2 = v1 & 6;
  result = (v1 & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = result == 0;
  }

  if (v4)
  {
    if (v2 == 2 && result != 0)
    {
      result = result[3];
    }
  }

  else
  {
    result = *result;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecCopyPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecCopyPattern]";
  v6 = 99;
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

void mlir::ODIE::Compiler::TypeInferencePattern::~TypeInferencePattern(mlir::ODIE::Compiler::TypeInferencePattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InferTypeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InferTypeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InferTypeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v13);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::TypeInferencePattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v6, *(a1 + 104), a2, *(a3 + 48), *(a3 + 56), a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v6 & 0xFFFFFFFFFFFFFFF9, v7);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InferTypeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v15);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v12[2] = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::TypeInferencePattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::TypeInferencePattern]";
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

void mlir::ODIE::Compiler::ReturnPattern::~ReturnPattern(mlir::ODIE::Compiler::ReturnPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::ReturnPattern::matchAndRewrite(int a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *this, uint64_t a5, uint64_t a6)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v8 = a2;
  while (1)
  {
    v9 = *(v8 + 2);
    if (!v9)
    {
      break;
    }

    v10 = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v10)
    {
      break;
    }

    v8 = *(v10 + 16);
    if (!v8 || *(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:
  v23 = v8;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 17);
    if (v11)
    {
      v12 = 0;
      v13 = (*(a2 + 9) + 24);
      do
      {
        v14 = *v13;
        v13 += 4;
        v15 = *(a2 + 3);
        RemappedValue = mlir::ConversionPatternRewriter::getRemappedValue(this, v14, a3, this, a5, a6);
        NumInputs = mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(&v23);
        v18 = *(((v8 + 16 * ((*(v8 + 11) >> 23) & 1) + ((*(v8 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 10) + 8);
        if (v18)
        {
          v19 = v18 - 8;
        }

        else
        {
          v19 = 0;
        }

        v20 = *(*(v19 + 48) + 8 * (v12 + NumInputs));
        v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(*(**v15 + 32));
        v24[0] = v15;
        v24[1] = v21;
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
        mlir::ODIE::Compiler::ODIX::MoveOp::build(this + 8, v24, RemappedValue, v20);
        v22 = mlir::Operation::create(v24);
        mlir::OpBuilder::insert((this + 8), v22);
        mlir::OperationState::~OperationState(v24);
        ++v12;
      }

      while (v11 != v12);
    }
  }

  mlir::ConversionPatternRewriter::eraseOp(this, a2);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ReturnPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ReturnPattern]";
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

void mlir::ODIE::Compiler::YieldPattern::~YieldPattern(mlir::ODIE::Compiler::YieldPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::YieldPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, mlir::ConversionPatternRewriter *this)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v33 = *(a3 + 48);
  v6 = *(a1 + 104);
  v7 = *(v6 + 104);
  v8 = *(v6 + 120);
  if (v8)
  {
    v9 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v9 >> 47) ^ v9);
    v11 = (v8 - 1) & (-348639895 * ((v10 >> 47) ^ v10));
    v12 = (v7 + 72 * v11);
    v13 = *v12;
    if (*v12 == a2)
    {
      goto LABEL_8;
    }

    v14 = 1;
    while (v13 != -4096)
    {
      v15 = v11 + v14++;
      v11 = v15 & (v8 - 1);
      v12 = (v7 + 72 * v11);
      v13 = *v12;
      if (*v12 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = 0;
LABEL_8:
  v16 = (v7 + 72 * v8);
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17[1];
  v34 = *(a3 + 40);
  v35 = 0;
  v36 = v18;
  if (v33)
  {
    v19 = *(v17 + 4);
    if (v19)
    {
      v20 = (v18 + 8);
      v21 = 8 * v19 - 8;
      v22 = 1;
      do
      {
        v23 = mlir::ValueRange::dereference_iterator(&v34, v22 - 1);
        v24 = *(a2 + 24);
        RemappedValue = mlir::ConversionPatternRewriter::getRemappedValue(this, v23, v25, v26, v27, v28);
        v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(*(**v24 + 32));
        v37[0] = v24;
        v37[1] = v30;
        v37[2] = v38;
        v37[3] = 0x400000000;
        v38[4] = v39;
        v38[5] = 0x400000000;
        v39[4] = v40;
        v39[5] = 0x400000000;
        v40[8] = 4;
        v40[9] = v41;
        v40[10] = 0x100000000;
        v41[1] = v42;
        v41[2] = 0x100000000;
        v42[1] = 0;
        v42[2] = 0;
        v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v42[4] = 0;
        v42[6] = 0;
        mlir::ODIE::Compiler::ODIX::MoveOp::build(this + 8, v37, RemappedValue, *(v20 - 1));
        v31 = mlir::Operation::create(v37);
        mlir::OpBuilder::insert((this + 8), v31);
        mlir::OperationState::~OperationState(v37);
        v35 = v22;
        v36 = v20;
        if (v33 == v22)
        {
          break;
        }

        ++v22;
        v20 = (v20 + 8);
        v32 = v21;
        v21 -= 8;
      }

      while (v32);
    }
  }

  mlir::ConversionPatternRewriter::eraseOp(this, a2);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::YieldPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::YieldPattern]";
  v6 = 96;
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

void mlir::ODIE::Compiler::LoadPattern::~LoadPattern(mlir::ODIE::Compiler::LoadPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::LoadOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::LoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::LoadOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::LoadPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v8, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ODIE::Compiler::ODIXBuilderContext::createCallKernelOp(*(a1 + 104), *(a2 + 24), *(a3 + 40), *(a3 + 48), v8, 1, a2, a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v8 & 0xFFFFFFFFFFFFFFF9, v9);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::LoadPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::LoadPattern]";
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

void mlir::ODIE::Compiler::ExecUndefPattern::~ExecUndefPattern(mlir::ODIE::Compiler::ExecUndefPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::UndefOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::UndefOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::UndefOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::ExecUndefPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v6, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v6 & 0xFFFFFFFFFFFFFFF9, v7);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ExecUndefPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ExecUndefPattern]";
  v6 = 100;
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

void mlir::ODIE::Compiler::ContextInsertPattern::~ContextInsertPattern(mlir::ODIE::Compiler::ContextInsertPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextInsertOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextInsertOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextInsertOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v13);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::ContextInsertPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  v8 = *(a3 + 48);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 6) != 0 || v9 == 0)
  {
    if ((*(a3 + 48) & 6) == 2 && v9 != 0)
    {
      v9 = v9[3];
    }
  }

  else
  {
    v9 = *v9;
  }

  v12 = *(a3 + 24);
  v24 = *(a3 + 48);
  v25 = 1;
  v13 = mlir::ValueRange::offset_base(&v24, 1);
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 6) != 0 || !v14)
  {
    if ((v13 & 6) == 2 && v14)
    {
      v14 = v14[3];
    }
  }

  else
  {
    v14 = *v14;
  }

  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SetContextOp,void>::id, *(**v7 + 32));
  if (v16)
  {
    v24 = v7;
    v25 = v15;
    v26 = v28;
    v27 = 0x400000000;
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
    mlir::ODIE::Compiler::ODIX::SetContextOp::build(a4 + 8, &v24, v9, v12, v14);
    v17 = mlir::Operation::create(&v24);
    mlir::OpBuilder::insert((a4 + 8), v17);
    mlir::OperationState::~OperationState(&v24);
    v18 = (*(a3 + 48) & 0xFFFFFFFFFFFFFFF8);
    v19 = *(a3 + 48) & 6;
    if (v19 || !v18)
    {
      if (v19 == 2)
      {
        if (v18)
        {
          v18 = v18[3];
        }
      }
    }

    else
    {
      v18 = *v18;
    }

    v24 = v18;
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v24, 1);
  }

  v23 = 1283;
  v22[2] = "odix.set_context";
  v22[3] = 16;
  v21 = 259;
  llvm::operator+(v22, &v20, &v24);
  llvm::report_fatal_error(&v24, 1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextInsertOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v15);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v12[2] = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ContextInsertPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ContextInsertPattern]";
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

void mlir::ODIE::Compiler::ContextExtractPattern::~ContextExtractPattern(mlir::ODIE::Compiler::ContextExtractPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v13);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::ContextExtractPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 104);
  v8 = *(a3 + 48) & 6;
  v9 = (*(a3 + 48) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    if (v8 == 2 && v9 != 0)
    {
      v9 = v9[3];
    }
  }

  else
  {
    v9 = *v9;
  }

  v28[0] = v9;
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v26, v7, a2, v28, 1, a4);
  v12 = *(a2 + 24);
  v13 = *(a3 + 48);
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 6) != 0 || v14 == 0)
  {
    if ((*(a3 + 48) & 6) == 2 && v14 != 0)
    {
      v14 = v14[3];
    }
  }

  else
  {
    v14 = *v14;
  }

  v17 = *(a3 + 24);
  v18 = v26;
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::GetContextOp,void>::id, *(**v12 + 32));
  if (v20)
  {
    v28[0] = v12;
    v28[1] = v19;
    v28[2] = v29;
    v28[3] = 0x400000000;
    v29[4] = v30;
    v29[5] = 0x400000000;
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
    mlir::ODIE::Compiler::ODIX::GetContextOp::build(a4 + 8, v28, v14, v17, *v18);
    v21 = mlir::Operation::create(v28);
    mlir::OpBuilder::insert((a4 + 8), v21);
    mlir::OperationState::~OperationState(v28);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v26 & 0xFFFFFFFFFFFFFFF9, v27);
  }

  v25 = 1283;
  v24[2] = "odix.get_context";
  v24[3] = 16;
  v23 = 259;
  llvm::operator+(v24, &v22, v28);
  llvm::report_fatal_error(v28, 1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::ContextExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v15);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v12[2] = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ContextExtractPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ContextExtractPattern]";
  v6 = 105;
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

void mlir::ODIE::Compiler::InitPattern::~InitPattern(mlir::ODIE::Compiler::InitPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v13);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::InitPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 24);
  v7 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::UndefOp>(a4 + 8, *(**v6 + 32));
  v25 = v6;
  v26 = v8;
  v27 = v29;
  v28 = 0x400000000;
  v30 = v32;
  v31 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  v36 = 4;
  v37 = &v39;
  v38 = 0x100000000;
  v40 = &v42;
  v41 = 0x100000000;
  v43 = 0;
  v44 = 0;
  v45 = &mlir::detail::TypeIDResolver<void,void>::id;
  v46 = 0;
  __src = v7;
  v47 = 0;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v30, &__src, &v24);
  v9 = mlir::Operation::create(&v25);
  mlir::OpBuilder::insert((a4 + 8), v9);
  v10 = *(*(v9 + 6) + 16);
  mlir::OperationState::~OperationState(&v25);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::UndefOp,void>::id)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  __src = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v24 = v11 - 16;
  v22 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(a4 + 8), 2uLL);
  v13 = mlir::ArrayAttr::get(*(a4 + 8), &v22, 1);
  v14 = *(a2 + 24);
  v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CallOp>(a4 + 8, *(**v14 + 32));
  v25 = v14;
  v26 = v15;
  v27 = v29;
  v28 = 0x400000000;
  v30 = v32;
  v31 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  v36 = 4;
  v37 = &v39;
  v38 = 0x100000000;
  v40 = &v42;
  v41 = 0x100000000;
  v43 = 0;
  v44 = 0;
  v45 = &mlir::detail::TypeIDResolver<void,void>::id;
  v46 = 0;
  v47 = 0;
  mlir::ODIE::Compiler::Exec::CallOp::build(a4 + 8, &v25, &__src + 2, 1, v12, 0, 0, v16, &v24, 1, v13, 0);
  v17 = mlir::Operation::create(&v25);
  mlir::OpBuilder::insert((a4 + 8), v17);
  v18 = *(*(v17 + 6) + 16);
  mlir::OperationState::~OperationState(&v25);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  (*(*a4 + 8))(a4, a2, v19);
  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::InitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v15);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v12[2] = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::InitPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::InitPattern]";
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

void mlir::ODIE::Compiler::GetTypePattern::~GetTypePattern(mlir::ODIE::Compiler::GetTypePattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::GetTypeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::GetTypeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::GetTypeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::GetTypePattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v6, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v6 & 0xFFFFFFFFFFFFFFF9, v7);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::GetTypePattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::GetTypePattern]";
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

void mlir::ODIE::Compiler::IsDefinedPattern::~IsDefinedPattern(mlir::ODIE::Compiler::IsDefinedPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsDefinedOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsDefinedOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpConversionPattern<mlir::ODIE::Compiler::Exec::IsDefinedOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::IsDefinedPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 40) & 6;
  v7 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    if (v6 == 2 && v7 != 0)
    {
      v7 = v7[3];
    }
  }

  else
  {
    v7 = *v7;
  }

  v10[1] = v4;
  v10[2] = v5;
  v10[0] = v7;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v10, 1);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::IsDefinedPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::IsDefinedPattern]";
  v6 = 100;
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

void mlir::ODIE::Compiler::ConversionCastPattern::~ConversionCastPattern(mlir::ODIE::Compiler::ConversionCastPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::UnrealizedConversionCastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::OpConversionPattern<mlir::UnrealizedConversionCastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::OpConversionPattern<mlir::UnrealizedConversionCastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::ConversionCastPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v6, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v6 & 0xFFFFFFFFFFFFFFF9, v7);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConversionCastPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConversionCastPattern]";
  v6 = 105;
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

void mlir::ODIE::Compiler::FlattenCFGPattern::~FlattenCFGPattern(mlir::ODIE::Compiler::FlattenCFGPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::ODIX::RegionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 88))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 96))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::ODIX::RegionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(v12, a2);
  v13 = v9;
  v14 = a4;
  result = (*(*a1 + 104))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  result = (*(*a1 + 112))(a1, a2, v12, a5);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::ODIX::RegionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v13);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::FlattenCFGPattern::matchAndRewrite(int a1, unsigned int *a2, int a3, mlir::ConversionPatternRewriter *this)
{
  v4 = *MEMORY[0x277D85DE8];
  *(((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 8);
  mlir::ConversionPatternRewriter::startOpModification(this, a2);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::ODIX::RegionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v15);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v12[2] = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), *a2, &v9);
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
    llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), *a2, &v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

void *llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x600000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<mlir::Value>::operator=(v19, (v15 - 2));
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

void mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(*(**a2 + 32));
  v11[0] = a2;
  v11[1] = v8;
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
  mlir::ODIE::Compiler::ODIX::MoveOp::build(a1, v11, *a3, *a4);
  v9 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v9);
  mlir::OperationState::~OperationState(v11);
  v10 = *MEMORY[0x277D85DE8];
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::StringAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::JumpOp,void>::id, *(**a2 + 32));
  if ((v7 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "odix.jump";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  v17[0] = a2;
  v17[1] = v6;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v8 = *a3;
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>(v17) = v8;
  v9 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::JumpOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::FlattenCFGPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::FlattenCFGPattern]";
  v6 = 101;
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

void mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern::~KernelBackedOpSymbolAttrPattern(mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 48);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(*a1 + 56);

  return v5(a1, a2, InterfaceFor);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 64);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern::matchAndRewrite(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "symbol", 6uLL);
  if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
  {
    v22 = "Already has a symbol";
  }

  else
  {
    v9 = *(a1 + 96);
    (*a3)(&v37, a3, a2);
    v10 = mlir::SymbolTable::lookup((v9 + 152), v37, v38);
    if (v10)
    {
      v11 = *(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
    }

    else
    {
      v11 = 1;
    }

    if (v37 != v40)
    {
      free(v37);
    }

    if (v11)
    {
      v12 = *(a1 + 96);
      v13 = (*(a3 + 8))(a3, a2);
      InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v15 = (*InterfaceFor)(InterfaceFor, a2);
      v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(a2[7] + 8), *(a2[7] + 8) + 16 * *(a2[7] + 16), "delegate", 8uLL);
      if ((v17 & 1) != 0 && *(v16 + 8))
      {
        v19 = *(**a2[3] + 32);
        v36 = 261;
        v34 = "delegate";
        v35 = 8;
        v20 = mlir::StringAttr::get(v19, &v34, v18);
        mlir::NamedAttrList::NamedAttrList(&v37, a2[7]);
        if (mlir::NamedAttrList::erase(&v37, v20))
        {
          a2[7] = mlir::NamedAttrList::getDictionary(&v37, *(**a2[3] + 32));
        }

        if (v37 != &v39)
        {
          free(v37);
        }

        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      OpAttrs = mlir::ODIE::Compiler::getOpAttrs(a2, v17);
      if (v24)
      {
        v25 = OpAttrs;
        v26 = *(***(*v12 + 24) + 32);
        (*a3)(&v37, a3, a2);
        v36 = 261;
        v34 = v37;
        v35 = v38;
        v28 = mlir::StringAttr::get(v26, &v34, v27);
        SymbolAttr = mlir::ODIE::Compiler::ODIXBuilderContext::getSymbolAttr(v12, *(v28 + 16), *(v28 + 24), v21, *(v13 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v13 + 8), (*(v13 + 16) + 8 * *(v13 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2, *(v13 + 12), v15, v25);
        if (v37 != v40)
        {
          free(v37);
        }
      }

      else
      {
        SymbolAttr = 0;
      }

      Symbol = mlir::ODIE::Compiler::ODIXBuilderContext::getOrCreateSymbol(*(a1 + 96), a2[3], SymbolAttr, a4);
      mlir::SymbolTable::insert(*(a1 + 96) + 152, Symbol, 0);
      (*(*a4 + 40))(a4, a2);
      mlir::Operation::setAttr(a2, "symbol", 6, SymbolAttr);
      (*(*a4 + 48))(a4, a2);
      result = 1;
      goto LABEL_28;
    }

    v22 = "Function calls are handled elsewhere";
  }

  v37 = v22;
  v40[4] = 259;
  v34 = &v37;
  v30 = a4[2];
  if (v30 && v30[2] == 1)
  {
    (*(*v30 + 88))(v30, a2[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface &>(mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v34);
  }

  result = 0;
LABEL_28:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[275];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>();
    unk_27FC1B8B0 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface]";
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

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::ODIE::Compiler::ODIXBuilderContext::getSymbolAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a4;
  v16 = a9;
  v17 = a10;
  v49 = *MEMORY[0x277D85DE8];
  v38 = *(***(*a1 + 24) + 32);
  v44 = v46;
  v45 = 0x600000000;
  if (a6 < 7)
  {
    if (!a6)
    {
      v24 = 0;
      goto LABEL_8;
    }

    v35 = a9;
    v18 = a10;
    v19 = a4;
    v20 = 0;
  }

  else
  {
    v35 = a9;
    v18 = a10;
    v19 = a4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, a6, 8);
    v20 = v45;
  }

  v21 = 0;
  v22 = v44 + 8 * v20;
  do
  {
    v23 = mlir::TypeRange::dereference_iterator(a5, v21);
    *&v22[8 * v21++] = mlir::ODIE::Compiler::ODIXBuilderContext::convertSymbolType(a1, v23);
  }

  while (a6 != v21);
  v24 = v45;
  v14 = v19;
  v17 = v18;
  v16 = v35;
LABEL_8:
  LODWORD(v45) = v24 + a6;
  v41 = v43;
  v42 = 0x600000000;
  if (a8 < 7)
  {
    if (!a8)
    {
      v29 = 0;
      goto LABEL_15;
    }

    v25 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, a8, 8);
    v25 = v42;
  }

  v26 = 0;
  v27 = v41 + 8 * v25;
  do
  {
    v28 = mlir::TypeRange::dereference_iterator(a7, v26);
    *&v27[8 * v26++] = mlir::ODIE::Compiler::ODIXBuilderContext::convertSymbolType(a1, v28);
  }

  while (a8 != v26);
  v29 = v42;
LABEL_15:
  LODWORD(v42) = v29 + a8;
  v40 = 261;
  v39[0] = a2;
  v39[1] = a3;
  v30 = mlir::StringAttr::get(v38, v39, a3);
  *&v48 = v44 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v48 + 1) = v45;
  *&v47 = v41 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v47 + 1) = v42;
  v31 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v38, &v48, &v47);
  v32 = mlir::ODIE::Compiler::ODIX::SymbolAttr::get(v38, v14, v30, v31, v16, v17);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t *mlir::ODIE::Compiler::ODIXBuilderContext::convertSymbolType(uint64_t a1, uint64_t *a2)
{
  v8 = a2;
  v9 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::LookupBucketFor<mlir::Type>((a1 + 192), &v8, &v9);
  v4 = v9;
  if (v3)
  {
    result = v9[1];
    if (result)
    {
      return result;
    }
  }

  else
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::InsertIntoBucketImpl<mlir::Type>(a1 + 192, &v8, v9);
    *v4 = v8;
    v4[1] = 0;
  }

  v6 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v8);
  if (v6)
  {
    result = (*v7)(v7, v6);
  }

  else
  {
    result = v8;
  }

  v4[1] = result;
  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[280];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>();
    *algn_27FC1B8D8 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::ODIXSerializableType]";
  v6 = 110;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern]";
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

void mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern::~FunctionOpSymbolAttrPattern(mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "symbol", 6uLL);
  if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
  {
    v37[8] = 259;
    v34 = &v35;
    v35 = "Already has a symbol";
    v30 = a3[2];
    if (v30 && v30[2] == 1)
    {
      (*(*v30 + 88))(v30, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::func::FuncOp &>(mlir::func::FuncOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v34);
    }

    result = 0;
  }

  else
  {
    v8 = *(a1 + 96);
    v34 = a2;
    v9 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) + 8);
    v10 = *(v9 + 8);
    v11 = *(v9 + 12);
    v12 = v10 - v11;
    v35 = v37;
    v36 = 0x600000000;
    v13 = a2;
    if (v12 < v10)
    {
      v14 = v10 - v11;
      do
      {
        ArgAttr = mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::getArgAttr(&v34, v14, "coreml.intent", 0xDuLL);
        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v35, ArgAttr);
        ++v14;
        --v11;
      }

      while (v11);
      v13 = v34;
    }

    OpAttrs = mlir::ODIE::Compiler::getOpAttrs(v13, v7);
    if (v17)
    {
      v18 = OpAttrs;
      v19 = *(v34 + 2 * ((*(v34 + 11) >> 23) & 1) + 12);
      v32 = *(v19 + 24);
      v33 = *(v19 + 16);
      v20 = *(v9 + 16);
      v21 = *(v9 + 8);
      v22 = v21 - v12;
      v23 = v8;
      if (v21 >= v12)
      {
        v24 = v12;
      }

      else
      {
        v24 = v21;
      }

      v25 = v20 & 0xFFFFFFFFFFFFFFF9;
      v26 = (v20 + 8 * v12) & 0xFFFFFFFFFFFFFFF9;
      v27 = mlir::ArrayAttr::get(*(***(v34 + 3) + 32), v35, v36);
      SymbolAttr = mlir::ODIE::Compiler::ODIXBuilderContext::getSymbolAttr(v23, v33, v32, 0, v25 | 2, v24, v26 | 2, v22, v27, v18);
    }

    else
    {
      SymbolAttr = 0;
    }

    if (v35 != v37)
    {
      free(v35);
    }

    mlir::ODIE::Compiler::ODIXBuilderContext::getOrCreateSymbol(*(a1 + 96), *(a2 + 24), SymbolAttr, a3);
    (*(*a3 + 40))(a3, a2);
    mlir::Operation::setAttr(a2, "symbol", 6, SymbolAttr);
    (*(*a3 + 48))(a3, a2);
    result = 1;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern]";
  v6 = 111;
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

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4ODIE8Compiler4ODIX8RegionOpEZNS6_17ConvertExecToODIX14runOnOperationEvE3__0EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSC_EUlSE_E_NS_9allocatorISI_EEFNS_8optionalIbEESE_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA21D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4ODIE8Compiler4ODIX8RegionOpEZNS6_17ConvertExecToODIX14runOnOperationEvE3__0EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSC_EUlSE_E_NS_9allocatorISI_EEFNS_8optionalIbEESE_EEclEOSE_(uint64_t a1, uint64_t a2)
{
  v2 = (((*a2 + 16 * ((*(*a2 + 44) >> 23) & 1) + ((*(*a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a2 + 40));
  v3 = *v2 != v2 && *(v2[1] + 8) == v2;
  return v3 | 0x100u;
}

void mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v79 = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = *v3;
  v5 = v3[17];
  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v5;
  v80 = v6;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v4 + 72, &v79);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v3 + 1), v8, v7);
  v79 = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = *v10;
  v12 = v10[17];
  v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v12;
  v80 = v13;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v11 + 72, &v79);
  v14 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v15 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v10 + 1), v15, v14);
  v79 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *v17;
  v19 = v17[17];
  v20 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v19;
  v80 = v20;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v18 + 72, &v79);
  v21 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v17 + 1), v22, v21);
  v79 = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v23 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = *(v23 + 8);
  if (!v24)
  {
    goto LABEL_26;
  }

  v25 = *v24;
  v26 = v24[17];
  v27 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v26;
  v80 = v27;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v25 + 72, &v79);
  v28 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v29 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v24 + 1), v29, v28);
  v79 = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v30 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = *(v30 + 8);
  if (!v31)
  {
    goto LABEL_26;
  }

  v32 = *v31;
  v33 = v31[17];
  v34 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v33;
  v80 = v34;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v32 + 72, &v79);
  v35 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v36 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v31 + 1), v36, v35);
  v79 = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v37 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v37)
  {
    goto LABEL_26;
  }

  v38 = *(v37 + 8);
  if (!v38)
  {
    goto LABEL_26;
  }

  v39 = *v38;
  v40 = v38[17];
  v41 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v40;
  v80 = v41;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v39 + 72, &v79);
  v42 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v43 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v38 + 1), v43, v42);
  v79 = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v44 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v44)
  {
    goto LABEL_26;
  }

  v45 = *(v44 + 8);
  if (!v45)
  {
    goto LABEL_26;
  }

  v46 = *v45;
  v47 = v45[17];
  v48 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v47;
  v80 = v48;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v46 + 72, &v79);
  v49 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v50 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v45 + 1), v50, v49);
  v79 = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  v51 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v51)
  {
    goto LABEL_26;
  }

  v52 = *(v51 + 8);
  if (!v52)
  {
    goto LABEL_26;
  }

  v53 = *v52;
  v54 = v52[17];
  v55 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v54;
  v80 = v55;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v53 + 72, &v79);
  v56 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v57 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v52 + 1), v57, v56);
  v79 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v58 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v58)
  {
    goto LABEL_26;
  }

  v59 = *(v58 + 8);
  if (!v59)
  {
    goto LABEL_26;
  }

  v60 = *v59;
  v61 = v59[17];
  v62 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v61;
  v80 = v62;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v60 + 72, &v79);
  v63 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v64 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v59 + 1), v64, v63);
  v79 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v65 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v65)
  {
    goto LABEL_26;
  }

  v66 = *(v65 + 8);
  if (!v66)
  {
    goto LABEL_26;
  }

  v67 = *v66;
  v68 = v66[17];
  v69 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v68;
  v80 = v69;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v67 + 72, &v79);
  v70 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v71 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v66 + 1), v71, v70);
  v79 = &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  v72 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v79);
  if (!v72 || (v73 = *(v72 + 8)) == 0)
  {
LABEL_26:
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1);
  }

  v74 = *v73;
  v75 = v73[17];
  v76 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v79 = v75;
  v80 = v76;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v74 + 72, &v79);
  v77 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v78 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert((v73 + 1), v78, v77);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::NDArrayODIXSerializationModel<mlir::RankedTensorType>>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v57[6] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(**a2 + 32);
  if (a2)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v3 + 8, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v6 + 8))(v6, a2);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*v9)(v9, v8);
  }

  if (!v10)
  {
    v8 = v7;
  }

  __src = mlir::TypeAttr::get(v8);
  v55 = v57;
  v56 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v55, &__src, &v53);
  v12 = (*(v6 + 24))(v6, a2);
  v13 = v11;
  __src = v54;
  v53 = 0xC00000000;
  if (v11 < 0xD)
  {
    if (!v11)
    {
      v20 = 0;
      v15 = v54;
      goto LABEL_17;
    }

    v14 = 0;
    v15 = v54;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v54, v11, 4);
    v14 = v53;
    v15 = __src;
  }

  v16 = 4 * v14;
  v17 = 8 * v13;
  do
  {
    v19 = *v12++;
    v18 = v19;
    if (v19 == 0x8000000000000000)
    {
      v18 = -1;
    }

    *&v15[v16] = v18;
    v16 += 4;
    v17 -= 8;
  }

  while (v17);
  v20 = v53;
LABEL_17:
  LODWORD(v53) = v20 + v13;
  v21 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v15, (v20 + v13));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v21);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (v30 = a2[4]) == 0 || *(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
  {
    (*(v6 + 24))(v6, a2);
    *&v50 = v51;
    *(&v50 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<llvm::detail::SafeIntIterator<int,false>,void>(&v50, 0, v22);
    v23 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v50, DWORD2(v50));
    llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v23);
    v24 = v50;
    if (v50 == v51)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v31 = v30[1];
  v32 = v30[2];
  *&v50 = v51;
  *(&v50 + 1) = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<int const*,void>(&v50, v31, &v31[4 * v32]);
  v33 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v50, DWORD2(v50));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v33);
  v34 = v30[3];
  v35 = v30[4];
  v47 = v49;
  v48 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v47, v34, &v34[8 * v35]);
  v36 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v47, v48);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v36);
  v37 = v30[5];
  v38 = v30[6];
  v44 = v46;
  v45 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v44, v37, &v37[8 * v38]);
  v39 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v44, v45);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v39);
  v41 = a2[6];
  if (!v41 || *(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v42 = "Heap";
    v43 = 259;
    v41 = mlir::StringAttr::get(v4, &v42, v40);
  }

  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v41);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  v24 = v50;
  if (v50 != v51)
  {
LABEL_19:
    free(v24);
  }

LABEL_20:
  v25 = mlir::ArrayAttr::get(v4, v55, v56);
  *&v50 = "NDArray";
  *(&v50 + 1) = 7;
  v47 = v25;
  v27 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v4, &v50, &v47, v26);
  if (__src != v54)
  {
    free(__src);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::NDArrayODIXSerializationModel<mlir::MemRefType>>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v57[6] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(**a2 + 32);
  if (a2)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v3 + 8, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v6 + 8))(v6, a2);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*v9)(v9, v8);
  }

  if (!v10)
  {
    v8 = v7;
  }

  __src = mlir::TypeAttr::get(v8);
  v55 = v57;
  v56 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v55, &__src, &v53);
  v12 = (*(v6 + 24))(v6, a2);
  v13 = v11;
  __src = v54;
  v53 = 0xC00000000;
  if (v11 < 0xD)
  {
    if (!v11)
    {
      v20 = 0;
      v15 = v54;
      goto LABEL_17;
    }

    v14 = 0;
    v15 = v54;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v54, v11, 4);
    v14 = v53;
    v15 = __src;
  }

  v16 = 4 * v14;
  v17 = 8 * v13;
  do
  {
    v19 = *v12++;
    v18 = v19;
    if (v19 == 0x8000000000000000)
    {
      v18 = -1;
    }

    *&v15[v16] = v18;
    v16 += 4;
    v17 -= 8;
  }

  while (v17);
  v20 = v53;
LABEL_17:
  LODWORD(v53) = v20 + v13;
  v21 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v15, (v20 + v13));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v21);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (v30 = a2[4]) == 0 || *(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
  {
    (*(v6 + 24))(v6, a2);
    *&v50 = v51;
    *(&v50 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<llvm::detail::SafeIntIterator<int,false>,void>(&v50, 0, v22);
    v23 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v50, DWORD2(v50));
    llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v23);
    v24 = v50;
    if (v50 == v51)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v31 = v30[1];
  v32 = v30[2];
  *&v50 = v51;
  *(&v50 + 1) = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<int const*,void>(&v50, v31, &v31[4 * v32]);
  v33 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v50, DWORD2(v50));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v33);
  v34 = v30[3];
  v35 = v30[4];
  v47 = v49;
  v48 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v47, v34, &v34[8 * v35]);
  v36 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v47, v48);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v36);
  v37 = v30[5];
  v38 = v30[6];
  v44 = v46;
  v45 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v44, v37, &v37[8 * v38]);
  v39 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v44, v45);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v39);
  v41 = a2[6];
  if (!v41 || *(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v42 = "Heap";
    v43 = 259;
    v41 = mlir::StringAttr::get(v4, &v42, v40);
  }

  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v55, v41);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  v24 = v50;
  if (v50 != v51)
  {
LABEL_19:
    free(v24);
  }

LABEL_20:
  v25 = mlir::ArrayAttr::get(v4, v55, v56);
  *&v50 = "NDArray";
  *(&v50 + 1) = 7;
  v47 = v25;
  v27 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v4, &v50, &v47, v26);
  if (__src != v54)
  {
    free(__src);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t anonymous namespace::getSerializeScalarType(unsigned int *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 32);
  v17 = v2;
  v3 = *(v1 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    v4 = 68;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    v4 = 69;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    v4 = 70;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    v4 = 80;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
  {
    v4 = 66;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    v4 = 67;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = *(**(a1 + 1) + 136);
    v6 = 0xFFFFLL;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
    {
      v6 = 98;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v7 = 97;
    }

    else
    {
      v7 = v6;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v4 = 96;
    }

    else
    {
      v4 = v7;
    }
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v4 = 42;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v8 = a1[2];
    v9 = v8 & 0x3FFFFFFF;
    v4 = 0xFFFFLL;
    if ((v8 & 0x3FFFFFFF) <= 5)
    {
      if ((v8 & 0x3FFFFFFF) <= 2)
      {
        if (v9 == 1)
        {
          v10 = v8 >> 30 == 0;
          v11 = 32;
          v12 = 16;
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_54;
          }

          v10 = v8 >> 30 == 2;
          v11 = 17;
          v12 = 33;
        }
      }

      else
      {
        switch(v9)
        {
          case 3:
            v10 = v8 >> 30 == 2;
            v11 = 18;
            v12 = 34;
            break;
          case 4:
            v10 = v8 >> 30 == 2;
            v11 = 19;
            v12 = 35;
            break;
          case 5:
            v10 = v8 >> 30 == 2;
            v11 = 20;
            v12 = 36;
            break;
          default:
            goto LABEL_54;
        }
      }
    }

    else if ((v8 & 0x3FFFFFFF) > 0xF)
    {
      switch(v9)
      {
        case 16:
          v10 = v8 >> 30 == 2;
          v11 = 24;
          v12 = 40;
          break;
        case 32:
          v10 = v8 >> 30 == 2;
          v11 = 25;
          v12 = 41;
          break;
        case 64:
          v10 = v8 >> 30 == 2;
          v11 = 26;
          v12 = 42;
          break;
        default:
          goto LABEL_54;
      }
    }

    else
    {
      switch(v9)
      {
        case 6:
          v10 = v8 >> 30 == 2;
          v11 = 21;
          v12 = 37;
          break;
        case 7:
          v10 = v8 >> 30 == 2;
          v11 = 22;
          v12 = 38;
          break;
        case 8:
          v10 = v8 >> 30 == 2;
          v11 = 23;
          v12 = 39;
          break;
        default:
          goto LABEL_54;
      }
    }

    if (v10)
    {
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  else
  {
    v4 = 0xFFFFLL;
  }

LABEL_54:
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(&v17, v4);
  v13 = mlir::ArrayAttr::get(v2, &I64IntegerAttr, 1);
  *&v19 = "Scalar";
  *(&v19 + 1) = 6;
  v18 = v13;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v2, &v19, &v18, v14);
}

void mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(mlir::DialectRegistry &)::$_1::__invoke(uint64_t a1)
{
  v44 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v44);
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = *v3;
  v5 = v3[17];
  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v44 = v5;
  v45 = v6;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v4 + 72, &v44);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v3 + 1), v8, v7);
  v44 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::doFind<mlir::TypeID>((*a1 + 536), &v44);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = *v10;
  v12 = v10[17];
  v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  v44 = v12;
  v45 = v13;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v11 + 72, &v44);
  v14 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v15 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v10 + 1), v15, v14);
  v44 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id;
  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::doFind<mlir::TypeID>((*a1 + 536), &v44);
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = *v17;
  v19 = v17[17];
  v20 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  v44 = v19;
  v45 = v20;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v18 + 72, &v44);
  v21 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v17 + 1), v22, v21);
  v44 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id;
  v23 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::doFind<mlir::TypeID>((*a1 + 536), &v44);
  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = *(v23 + 8);
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = *v24;
  v26 = v24[17];
  v27 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  v44 = v26;
  v45 = v27;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v25 + 72, &v44);
  v28 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v29 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v24 + 1), v29, v28);
  v44 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id;
  v30 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::doFind<mlir::TypeID>((*a1 + 536), &v44);
  if (!v30)
  {
    goto LABEL_16;
  }

  v31 = *(v30 + 8);
  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = *v31;
  v33 = v31[17];
  v34 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  v44 = v33;
  v45 = v34;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v32 + 72, &v44);
  v35 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v36 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v31 + 1), v36, v35);
  v44 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id;
  v37 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::doFind<mlir::TypeID>((*a1 + 536), &v44);
  if (!v37 || (v38 = *(v37 + 8)) == 0)
  {
LABEL_16:
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1);
  }

  v39 = *v38;
  v40 = v38[17];
  v41 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  v44 = v40;
  v45 = v41;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v39 + 72, &v44);
  v42 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v43 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert((v38 + 1), v43, v42);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::SymbolRefTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v4 = *(**a2 + 32);
  v23 = v25;
  v24 = 0x600000000;
  v5 = a2[1];
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v6 = v5[4];
    if (v6)
    {
      v7 = v5[3];
      v8 = 16 * v6;
      do
      {
        v9 = *v7;
        v10 = *(**v7 + 136);
        if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
        {
          v9 = v9[1];
          v10 = *(*v9 + 136);
        }

        if (v10 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v2 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(v9);
        }

        else
        {
          v2 &= 0xFFFFFFFFFFFFFF00;
        }

        if (v10 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v11 = v2;
        }

        else
        {
          v11 = v9;
        }

        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v23, v11);
        v7 += 16;
        v8 -= 16;
      }

      while (v8);
    }
  }

  *&v22 = a2;
  Symbol = mlir::ODIE::Compiler::CoreML::SymbolRefType::getSymbol(&v22);
  v13 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(Symbol);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = mlir::ArrayAttr::get(v4, v23, v24);
  *&v22 = v14;
  *(&v22 + 1) = v15;
  v21 = v16;
  v18 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v4, &v22, &v21, v17);
  if (v23 != v25)
  {
    free(v23);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::SymbolRefTypeODIXSerializationModel>::getId(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  Symbol = mlir::ODIE::Compiler::CoreML::SymbolRefType::getSymbol(&v6);
  v3 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(Symbol);
  v4 = *(v3 + 24);
  return *(v3 + 16);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::StringODIXSerializationModel<mlir::ODIE::Compiler::CoreML::ApproximateAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2, const llvm::Twine *a3)
{
  v5 = *(**a2 + 32);
  v6 = a2[2];
  if (v6 > 2)
  {
    v7 = 0;
    v8 = &str_56;
  }

  else
  {
    v7 = qword_25D0A02D8[v6];
    v8 = (&off_2799BECB8)[v6];
  }

  v12 = v3;
  v13 = v4;
  v11 = 261;
  v10[0] = v8;
  v10[1] = v7;
  return mlir::StringAttr::get(v5, v10, a3);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::EnumODIXSerializationModel<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2, const llvm::Twine *a3)
{
  v3 = a2[2];
  if (v3 > 4)
  {
    v4 = 0;
    v5 = &str_56;
  }

  else
  {
    v4 = qword_25D0A02F0[v3];
    v5 = (&off_2799BECD0)[v3];
  }

  v6 = *(**a2 + 32);
  v10 = 261;
  v9[0] = v5;
  v9[1] = v4;
  v7 = mlir::StringAttr::get(v6, v9, a3);
  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(v6, v3, v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::EnumODIXSerializationModel<mlir::ODIE::Compiler::CoreML::ScatterModeAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2)
{
  v3 = a2[2];
  v4 = mlir::ODIE::Compiler::CoreML::stringifyScatterMode(a2[2]);
  v5 = *(**a2 + 32);
  v11 = 261;
  v10[0] = v4;
  v10[1] = v6;
  v8 = mlir::StringAttr::get(v5, v10, v7);
  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(v5, v3, v8);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::EnumODIXSerializationModel<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2, const llvm::Twine *a3)
{
  v3 = a2[2];
  v4 = "half_pixel";
  v5 = 10;
  v6 = &str_56;
  v7 = 13;
  if (v3 == 1)
  {
    v6 = "align_corners";
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v5 = v7;
  }

  v8 = *(**a2 + 32);
  v12 = 261;
  if (v3)
  {
    v4 = v6;
  }

  v11[0] = v4;
  v11[1] = v5;
  v9 = mlir::StringAttr::get(v8, v11, a3);
  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(v8, v3, v9);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::EnumODIXSerializationModel<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2, const llvm::Twine *a3)
{
  v3 = a2[2];
  v4 = "linear";
  v5 = 6;
  v6 = &str_56;
  v7 = 16;
  if (v3 == 1)
  {
    v6 = "nearest_neighbor";
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v5 = v7;
  }

  v8 = *(**a2 + 32);
  v12 = 261;
  if (v3)
  {
    v4 = v6;
  }

  v11[0] = v4;
  v11[1] = v5;
  v9 = mlir::StringAttr::get(v8, v11, a3);
  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(v8, v3, v9);
}

void mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(mlir::DialectRegistry &)::$_2::__invoke(uint64_t a1)
{
  v37 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v37);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  v5 = v3[17];
  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v37 = v5;
  v38 = v6;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v4 + 72, &v37);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v3 + 1), v8, v7);
  v37 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v37);
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = *v10;
  v12 = v10[17];
  v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v37 = v12;
  v38 = v13;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v11 + 72, &v37);
  v14 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v15 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v10 + 1), v15, v14);
  v37 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id;
  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v37);
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = *v17;
  v19 = v17[17];
  v20 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v37 = v19;
  v38 = v20;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v18 + 72, &v37);
  v21 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v17 + 1), v22, v21);
  v37 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id;
  v23 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v37);
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = *(v23 + 8);
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = *v24;
  v26 = v24[17];
  v27 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v37 = v26;
  v38 = v27;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v25 + 72, &v37);
  v28 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v29 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert((v24 + 1), v29, v28);
  v37 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id;
  v30 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v37);
  if (!v30 || (v31 = *(v30 + 8)) == 0)
  {
LABEL_14:
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1);
  }

  v32 = *v31;
  v33 = v31[17];
  v34 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v37 = v33;
  v38 = v34;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v32 + 72, &v37);
  v35 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v36 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert((v31 + 1), v36, v35);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::ContextTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, uint64_t a2)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 32);
  v19 = v2;
  v3 = *(a2 + 16);
  if (!v3)
  {
    LODWORD(v5) = 0;
    v22 = v24;
    HIDWORD(v23) = 6;
LABEL_13:
    v13 = v24;
    goto LABEL_14;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v22 = v24;
  v23 = 0x600000000;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v5, 8);
    v6 = v23;
    v7 = v22;
    goto LABEL_7;
  }

  if (!v5)
  {
    LODWORD(v3) = 0;
    goto LABEL_13;
  }

  v6 = 0;
  v7 = v24;
LABEL_7:
  v8 = 8 * v5;
  v9 = &v7[v6];
  do
  {
    v10 = *v4;
    v11 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(*v4);
    if (v11)
    {
      v10 = (*v12)(v12, v11);
    }

    *v9++ = v10;
    ++v4;
    v8 -= 8;
  }

  while (v8);
  LODWORD(v3) = v23;
  v13 = v22;
  v2 = v19;
LABEL_14:
  LODWORD(v23) = v3 + v5;
  TypeArrayAttr = mlir::Builder::getTypeArrayAttr(&v19, v13 & 0xFFFFFFFFFFFFFFF9 | 2, (v3 + v5));
  *&v21 = "Context";
  *(&v21 + 1) = 7;
  v20 = TypeArrayAttr;
  v16 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v2, &v21, &v20, v15);
  if (v22 != v24)
  {
    free(v22);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::MetaTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = *(**a2 + 32);
  v10 = v3;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v2);
  if (v4)
  {
    v2 = (*v5)(v5, v4);
  }

  v9 = v2;
  TypeArrayAttr = mlir::Builder::getTypeArrayAttr(&v10, &v9 + 2, 1uLL);
  *&v12 = "Meta";
  *(&v12 + 1) = 4;
  v11 = TypeArrayAttr;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v3, &v12, &v11, v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::TaskTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = *(**a2 + 32);
  v19 = v3;
  v4 = a2[2];
  v22 = v24;
  v23 = 0x600000000;
  if (v4 < 7)
  {
    if (!v4)
    {
      v12 = 0;
      v13 = v24;
      goto LABEL_10;
    }

    v5 = 0;
    v6 = v24;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v4, 8);
    v5 = v23;
    v6 = v22;
  }

  v7 = 8 * v4;
  v8 = &v6[v5];
  do
  {
    v9 = *v2;
    v10 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(*v2);
    if (v10)
    {
      v9 = (*v11)(v11, v10);
    }

    *v8++ = v9;
    ++v2;
    v7 -= 8;
  }

  while (v7);
  v12 = v23;
  v13 = v22;
  v3 = v19;
LABEL_10:
  LODWORD(v23) = v12 + v4;
  TypeArrayAttr = mlir::Builder::getTypeArrayAttr(&v19, v13 & 0xFFFFFFFFFFFFFFF9 | 2, (v12 + v4));
  *&v21 = "Task";
  *(&v21 + 1) = 4;
  v20 = TypeArrayAttr;
  v16 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v3, &v21, &v20, v15);
  if (v22 != v24)
  {
    free(v22);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::TaskResultTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = *(**a2 + 32);
  v10 = v3;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v2);
  if (v4)
  {
    v2 = (*v5)(v5, v4);
  }

  v9 = v2;
  TypeArrayAttr = mlir::Builder::getTypeArrayAttr(&v10, &v9 + 2, 1uLL);
  *&v12 = "TaskResult";
  *(&v12 + 1) = 10;
  v11 = TypeArrayAttr;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v3, &v12, &v11, v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::AsyncMemRefTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v3 = *(**a2 + 32);
  v4 = a2[3];
  v5 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v4);
  if (v5)
  {
    v4 = (*v6)(v6, v5);
  }

  __src = mlir::TypeAttr::get(v4);
  v26 = v28;
  v27 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v26, &__src, &v24);
  v8 = a2[1];
  v7 = a2[2];
  __src = v25;
  v24 = 0xC00000000;
  if (v7 < 0xD)
  {
    if (!v7)
    {
      v15 = 0;
      v10 = v25;
      goto LABEL_12;
    }

    v9 = 0;
    v10 = v25;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v25, v7, 4);
    v9 = v24;
    v10 = __src;
  }

  v11 = 4 * v9;
  v12 = 8 * v7;
  do
  {
    v14 = *v8++;
    v13 = v14;
    if (v14 == 0x8000000000000000)
    {
      v13 = -1;
    }

    *&v10[v11] = v13;
    v11 += 4;
    v12 -= 8;
  }

  while (v12);
  v15 = v24;
LABEL_12:
  LODWORD(v24) = v15 + v7;
  v16 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v10, (v15 + v7));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v26, v16);
  *&v22 = "AsyncTensor";
  *(&v22 + 1) = 11;
  v21 = mlir::ArrayAttr::get(v3, v26, v27);
  v18 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v3, &v22, &v21, v17);
  if (__src != v25)
  {
    free(__src);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(mlir::DialectRegistry &)::$_3::__invoke(uint64_t a1)
{
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id;
  v1 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), v8);
  if (!v1 || (v2 = *(v1 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1);
  }

  v3 = *v2;
  v4 = v2[17];
  v5 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v8[0] = v4;
  v8[1] = v5;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v3 + 72, v8);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert((v2 + 1), v7, v6);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::OperandTypeSerializationModel>::getId(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

void *mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::ODIX::ODIXDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::ODIX::ODIXDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::ODIX::ODIXDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::ODIX::ODIXDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::registerODIXOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t *a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v80 = 1283;
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = "exec.alloc";
    v72 = 10;
    goto LABEL_44;
  }

  v4 = v2;
  if (*(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v5 = (*(v2 + 8) + 32);
  }

  else
  {
    v5 = (v2 + 24);
  }

  v6 = *v5;
  v81 = *(v2 + 16);
  v82 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v6 + 72, &v81);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v4 + 32, v8, v7);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InferTypeOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v80 = 1283;
    v73 = "exec.infer_type";
LABEL_39:
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = v73;
    v72 = 15;
    goto LABEL_44;
  }

  v11 = v9;
  v12 = *(v9 + 16);
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v13 = (*(v9 + 8) + 32);
  }

  else
  {
    v13 = (v9 + 24);
  }

  v14 = *v13;
  v15 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v12;
  v82 = v15;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v14 + 72, &v81);
  v16 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v17 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11 + 32, v17, v16);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id, a1);
  if ((v19 & 1) == 0)
  {
    v80 = 1283;
    v74 = "exec.call";
LABEL_42:
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = v74;
    v72 = 9;
    goto LABEL_44;
  }

  v20 = v18;
  v21 = *(v18 + 16);
  if (v21 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v22 = (*(v18 + 8) + 32);
  }

  else
  {
    v22 = (v18 + 24);
  }

  v23 = *v22;
  v24 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v21;
  v82 = v24;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v23 + 72, &v81);
  v25 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v26 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v20 + 32, v26, v25);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocConstOp,void>::id, a1);
  if ((v28 & 1) == 0)
  {
    v80 = 1283;
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = "exec.alloc_const";
    v72 = 16;
    goto LABEL_44;
  }

  v29 = v27;
  v30 = *(v27 + 16);
  if (v30 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v31 = (*(v27 + 8) + 32);
  }

  else
  {
    v31 = (v27 + 24);
  }

  v32 = *v31;
  v33 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v30;
  v82 = v33;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v32 + 72, &v81);
  v34 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v35 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v29 + 32, v35, v34);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id, a1);
  if ((v37 & 1) == 0)
  {
    v80 = 1283;
    v73 = "exec.alloc_view";
    goto LABEL_39;
  }

  v38 = v36;
  v39 = *(v36 + 16);
  if (v39 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v40 = (*(v36 + 8) + 32);
  }

  else
  {
    v40 = (v36 + 24);
  }

  v41 = *v40;
  v42 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v39;
  v82 = v42;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v41 + 72, &v81);
  v43 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v44 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v38 + 32, v44, v43);
  v45 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id, a1);
  if ((v46 & 1) == 0)
  {
    v80 = 1283;
    v74 = "exec.copy";
    goto LABEL_42;
  }

  v47 = v45;
  v48 = *(v45 + 16);
  if (v48 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v49 = (*(v45 + 8) + 32);
  }

  else
  {
    v49 = (v45 + 24);
  }

  v50 = *v49;
  v51 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v48;
  v82 = v51;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v50 + 72, &v81);
  v52 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v53 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v47 + 32, v53, v52);
  v54 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::LoadOp,void>::id, a1);
  if ((v55 & 1) == 0)
  {
    v80 = 1283;
    v74 = "exec.load";
    goto LABEL_42;
  }

  v56 = v54;
  v57 = *(v54 + 16);
  if (v57 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v58 = (*(v54 + 8) + 32);
  }

  else
  {
    v58 = (v54 + 24);
  }

  v59 = *v58;
  v60 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v57;
  v82 = v60;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v59 + 72, &v81);
  v61 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v62 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v56 + 32, v62, v61);
  v63 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::GetTypeOp,void>::id, a1);
  if ((v64 & 1) == 0)
  {
    v80 = 1283;
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = "exec.get_type";
    v72 = 13;
LABEL_44:
    v79 = v72;
    v75 = ".";
    v76 = 259;
    llvm::operator+(&v77, &v75, &v81);
    llvm::report_fatal_error(&v81, 1);
  }

  v65 = v63;
  v66 = *(v63 + 16);
  if (v66 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v67 = (*(v63 + 8) + 32);
  }

  else
  {
    v67 = (v63 + 24);
  }

  v68 = *v67;
  v69 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v66;
  v82 = v69;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v68 + 72, &v81);
  v70 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v71 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v65 + 32, v71, v70);
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocOpModel>::getKernelName(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 - 8);
  v7 = *(a1 + 48);
  v5 = mlir::OperationName::stripDialect(&v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 68), v3))
  {
    if ((*(a2 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v4 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v6;
  v11 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v12, &v9);
  *&v9 = v4;
  *(&v9 + 1) = v3;
  v13 = v12;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v2, &v9, &v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::getTypeSpecificKernelName(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(a3);
  if (v10)
  {
    v21[0] = (*(v11 + 8))(v11, v10);
    v21[1] = v12;
    v21[2] = ".";
    v22 = 1;
    v23 = a4;
    v24 = a5;
    *a1 = a1 + 24;
    *(a1 + 8) = xmmword_25D0A05C0;
    llvm::SmallString<32u>::append(a1, v21, 3);
  }

  else
  {
    v17 = "Type does not provide kernel id: ";
    v18 = 259;
    emitDiag(a2, 2, &v17, v21);
    if (v21[0])
    {
      v19 = 4;
      v20 = a3;
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v19, 1);
      v14 = v22 + 24 * v23;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      LODWORD(v23) = v23 + 1;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a1 + 24;
    *(a1 + 8) = xmmword_25D0A05C0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void llvm::SmallString<32u>::append(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  if (a3)
  {
    v6 = 16 * a3;
    v7 = (a2 + 8);
    v8 = 16 * a3;
    v9 = a1[1];
    do
    {
      v10 = *v7;
      v7 += 2;
      v9 += v10;
      v8 -= 16;
    }

    while (v8);
    llvm::SmallVectorImpl<char>::resizeImpl<true>(a1, v9);
    v11 = (a2 + 8);
    do
    {
      if (*v11)
      {
        memmove((*a1 + v4), *(v11 - 1), *v11);
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      v4 += v12;
      v11 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  else
  {
    v13 = a1[1];

    llvm::SmallVectorImpl<char>::resizeImpl<true>(a1, v13);
  }
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::InferTypeOpModel>::getKernelName(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = "#";
  v3[1] = 1;
  v4 = *(*(*(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64) + 8) + 16);
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_25D0A05C0;
  llvm::SmallString<32u>::append(a2, v3, 2);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::InferTypeOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 68), v3))
  {
    if ((*(a2 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v4 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v6;
  v11 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v12, &v9);
  *&v9 = v4;
  *(&v9 + 1) = v3;
  v13 = v12;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v2, &v9, &v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::CallOpModel>::getKernelName(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64) + 8);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_25D0A05C0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(a2, v4, &v4[v5]);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::CallOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v10[1] = InterfaceFor;
  v4 = *(***(a2 + 24) + 32);
  mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInputs(&v12, v10);
  *&v15 = v12 & 0xFFFFFFFFFFFFFFF9;
  *(&v15 + 1) = 0;
  v16 = v12 & 0xFFFFFFFFFFFFFFF9;
  v17 = v13;
  mlir::TypeRange::TypeRange<mlir::ValueRange>(&v18, &v15);
  v5 = *(v10[0] + 36);
  v6 = v10[0] - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v15 = v6;
  v16 = v6;
  v17 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v11, &v15);
  v15 = v18;
  v19 = v11;
  v7 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v4, &v15, &v19);
  if (v12 != &v14)
  {
    free(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInputs(mlir::ODIE::Compiler::Exec::DPSOpInterface *this, mlir::ODIE::Compiler::Exec::DPSOpInterface *a2)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x600000000;
  if ((*(*a2 + 46) & 0x80) != 0)
  {
    v4 = *(*a2 + 68);
  }

  else
  {
    v4 = 0;
  }

  DpsInits = mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(a2);
  if (v6)
  {
    v7 = v6;
    v8 = *(DpsInits + 16);
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 0;
    }

    v10 = DpsInits - v9;
    if (v4 - v6 > HIDWORD(v25))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v4 - v6, 8);
    }

    v11 = (v10 >> 5);
    if ((v10 & 0x1FFFFFFFE0) != 0)
    {
      v12 = 0;
      v13 = v11;
      do
      {
        llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(&v24, *(*a2 + 72) + v12);
        v12 += 32;
        --v13;
      }

      while (v13);
    }

    for (i = v11 + v7; i < v4; ++i)
    {
      llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(&v24, *(*a2 + 72) + 32 * i);
    }
  }

  else
  {
    if (v4 <= HIDWORD(v25))
    {
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v4, 8);
    }

    v15 = 0;
    do
    {
      llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(&v24, *(*a2 + 72) + v15);
      v15 += 32;
      --v4;
    }

    while (v4);
  }

LABEL_19:
  v16 = v24;
  v17 = v25;
  *this = this + 16;
  *(this + 1) = 0x600000000;
  if (v17 < 7)
  {
    if (!v17)
    {
      v22 = 0;
      goto LABEL_26;
    }

    v18 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(this, this + 16, v17, 8);
    v18 = *(this + 2);
  }

  v19 = (*this + 8 * v18);
  v20 = 8 * v17;
  do
  {
    v21 = *v16++;
    *v19++ = *(v21 + 24);
    v20 -= 8;
  }

  while (v20);
  v22 = *(this + 2);
LABEL_26:
  *(this + 2) = v22 + v17;
  if (v24 != v26)
  {
    free(v24);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocConstOpModel>::getKernelName(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 - 8);
  v7 = *(a1 + 48);
  v5 = mlir::OperationName::stripDialect(&v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocConstOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v12 = mlir::IntegerType::get(v3, 64, 0);
  v4 = *(a2 + 36);
  v5 = a2 - 16;
  if (!v4)
  {
    v5 = 0;
  }

  v8 = v5;
  v9 = v5;
  v10 = v4;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v11, &v8);
  *&v8 = &v12 + 2;
  *(&v8 + 1) = 1;
  v13 = v11;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v3, &v8, &v13);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocViewOpModel>::getKernelName(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = *(*(a1[9] + 24) + 8);
  v7 = a1[6];
  v5 = mlir::OperationName::stripDialect(&v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocViewOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v12[0] = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12[1] = mlir::IntegerType::get(v3, 64, 0);
  v4 = *(a2 + 36);
  v5 = a2 - 16;
  if (!v4)
  {
    v5 = 0;
  }

  v8 = v5;
  v9 = v5;
  v10 = v4;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v11, &v8);
  *&v8 = v12 + 2;
  *(&v8 + 1) = 2;
  v13 = v11;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v3, &v8, &v13);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::CopyOpModel>::getKernelName(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = *(*(a1[9] + 24) + 8);
  v7 = a1[6];
  v5 = mlir::OperationName::stripDialect(&v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::CopyOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v10[1] = InterfaceFor;
  v4 = *(***(a2 + 24) + 32);
  mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInputs(&v12, v10);
  *&v15 = v12 & 0xFFFFFFFFFFFFFFF9;
  *(&v15 + 1) = 0;
  v16 = v12 & 0xFFFFFFFFFFFFFFF9;
  v17 = v13;
  mlir::TypeRange::TypeRange<mlir::ValueRange>(&v18, &v15);
  v5 = *(v10[0] + 36);
  v6 = v10[0] - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v15 = v6;
  v16 = v6;
  v17 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v11, &v15);
  v15 = v18;
  v19 = v11;
  v7 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v4, &v15, &v19);
  if (v12 != &v14)
  {
    free(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::LoadOpModel>::getKernelName(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = *(*(a1[9] + 24) + 8);
  v7 = a1[6];
  v5 = mlir::OperationName::stripDialect(&v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::LoadOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 68), v3))
  {
    if ((*(a2 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v4 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v6;
  v11 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v12, &v9);
  *&v9 = v4;
  *(&v9 + 1) = v3;
  v13 = v12;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v2, &v9, &v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::GetTypeOpModel>::getKernelName(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = *(*(a1[9] + 24) + 8);
  v7 = a1[6];
  v5 = mlir::OperationName::stripDialect(&v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::GetTypeOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 68), v3))
  {
    if ((*(a2 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v4 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v6;
  v11 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v12, &v9);
  *&v9 = v4;
  *(&v9 + 1) = v3;
  v13 = v12;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v2, &v9, &v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::ODIX::ODIXDialect::ODIXDialect(mlir::ODIE::Compiler::ODIX::ODIXDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "odix";
  *(this + 2) = 4;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286EA2250;
  mlir::MLIRContext::loadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2, a2, a3, a4);
  mlir::ODIE::Compiler::ODIX::ODIXDialect::initialize(this);
}

void mlir::ODIE::Compiler::ODIX::ODIXDialect::~ODIXDialect(mlir::ODIE::Compiler::ODIX::ODIXDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::FieldParser<mlir::ArrayAttr,mlir::ArrayAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::ODIX::ODIXDialect::parseType(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v26, a2, 0);
  __p.n128_u64[0] = "reg";
  __p.n128_u64[1] = 3;
  if (v29[2])
  {
    goto LABEL_2;
  }

  v6 = v28;
  if (v28 == 3)
  {
    if (*v27 == 25970 && v27[2] == 103)
    {
      v13 = *(**(*(*a2 + 32))(a2) + 384);
      v32 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
      v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v13 + 232), &v32);
LABEL_47:
      v29[0] = v5 != 0;
      *&v29[1] = 257;
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  if (v28)
  {
LABEL_14:
    v30 = "type";
    v31 = 4;
    goto LABEL_15;
  }

  (*(*v26[0] + 648))(v26[0], &__p, 1);
  v30 = "type";
  v31 = 4;
  if (v29[2])
  {
LABEL_2:
    v5 = 0;
LABEL_3:
    v6 = 0;
    v7 = 0;
    goto LABEL_18;
  }

  v6 = v28;
  if (v28)
  {
LABEL_15:
    if (v6 != 4 || *v27 != 1701869940)
    {
      goto LABEL_17;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(v35[0]) = 0;
    v37 = 0;
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_43;
    }

    mlir::FieldParser<std::string,std::string>::parse(a2, &__p);
    v14 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v35, &__p);
    if (v40 == 1 && v39 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v15 = *a2;
    if (v37)
    {
      if (((*(v15 + 104))(a2, v14) & 1) == 0)
      {
        goto LABEL_43;
      }

      v16 = mlir::FieldParser<mlir::ArrayAttr,mlir::ArrayAttr>::parse(a2);
      v17 = *a2;
      if (v18)
      {
        v19 = v16;
        if ((*(v17 + 168))(a2))
        {
          v20 = *(*(*a2 + 32))(a2);
          v22 = v36;
          v23 = v35;
          if (v36 < 0)
          {
            v23 = v35[0];
          }

          if (v36 < 0)
          {
            v22 = v35[1];
          }

          __p.n128_u64[0] = v23;
          __p.n128_u64[1] = v22;
          v32 = v19;
          v5 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v20, &__p, &v32, v21);
          goto LABEL_44;
        }

LABEL_43:
        v5 = 0;
LABEL_44:
        if (v37 == 1 && v36 < 0)
        {
          operator delete(v35[0]);
        }

        goto LABEL_47;
      }

      v24 = (*(v17 + 40))(a2);
    }

    else
    {
      v24 = (*(v15 + 40))(a2, v14);
    }

    v32 = v25;
    v34 = 259;
    (*(*a2 + 24))(&__p, a2, v24, &v32);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    goto LABEL_43;
  }

  (*(*v26[0] + 648))(v26[0], &v30, 1);
  if (v29[2])
  {
    goto LABEL_2;
  }

  v6 = v28;
LABEL_17:
  v5 = 0;
  v7 = v27;
  *v29 = 0;
  v29[2] = 1;
LABEL_18:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v26) & 0x100) == 0)
  {
    *v29 = 257;
    (*(*a2 + 24))(&__p, a2, v4, v26);
    if (__p.n128_u64[0])
    {
      if (__p.n128_u64[0])
      {
        v34 = 261;
        v32 = v7;
        v33 = v6;
        mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v32);
        if (__p.n128_u64[0])
        {
          if (__p.n128_u64[0])
          {
            v9 = *(a1 + 8);
            v10 = *(a1 + 16);
            v34 = 261;
            v32 = v9;
            v33 = v10;
            mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v32);
            if (__p.n128_u64[0])
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::ODIE::Compiler::ODIX::ODIXDialect::printType(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 2)
    {
      *(v9 + 2) = 103;
      *v9 = 25970;
      v12 = *(v8 + 4) + 3;
LABEL_23:
      *(v8 + 4) = v12;
      return;
    }

    v10 = "reg";
    v11 = 3;
  }

  else
  {
    if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id)
    {
      return;
    }

    v6 = (*(*a3 + 16))(a3);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 3uLL)
    {
      *v7 = 1701869940;
      *(v6 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v6, "type", 4uLL);
    }

    v13 = (*(*a3 + 16))(a3);
    v14 = *(v13 + 4);
    if (*(v13 + 3) == v14)
    {
      llvm::raw_ostream::write(v13, "<", 1uLL);
    }

    else
    {
      *v14 = 60;
      ++*(v13 + 4);
    }

    (*(*a3 + 80))(a3, a2[1], a2[2]);
    v15 = (*(*a3 + 16))(a3);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, 32);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 32;
    }

    v17 = (*(*a3 + 16))(a3);
    v18 = *(v17 + 4);
    if (*(v17 + 3) == v18)
    {
      llvm::raw_ostream::write(v17, ":", 1uLL);
    }

    else
    {
      *v18 = 58;
      ++*(v17 + 4);
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 32);
    }

    else
    {
      *(v19 + 4) = v20 + 1;
      *v20 = 32;
    }

    (*(*a3 + 40))(a3, a2[3]);
    v8 = (*(*a3 + 16))(a3);
    v21 = *(v8 + 4);
    if (*(v8 + 3) != v21)
    {
      *v21 = 62;
      v12 = *(v8 + 4) + 1;
      goto LABEL_23;
    }

    v10 = ">";
    v11 = 1;
  }

  llvm::raw_ostream::write(v8, v10, v11);
}

uint64_t mlir::ODIE::Compiler::ODIX::EnumAttr::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id;
  v7[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail15EnumAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_8EnumAttrEJxNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v9 = a2;
  v10 = a3;
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12 = a2;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(&v12, 0, v13, &v13[3] + 8, &v10);
  v8 = &v9;
  v12 = &v9;
  *&v13[0] = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage,long long,mlir::StringAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage *)>,mlir::TypeID,long long,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage,long long,mlir::StringAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage *)>,mlir::TypeID,long long,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRefAttr::get(mlir::ODIE::Compiler::ODIX::DataRefAttr *this, mlir::MLIRContext *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id;
  v8[1] = this;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail18DataRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_11DataRefAttrEJiixEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS7_;
  v11[1] = v8;
  v10[0] = a2 | (a3 << 32);
  v10[1] = a4;
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v12 = __PAIR64__(a3, a2);
  v13 = a4;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v12, 0, v14, v15);
  v9 = v10;
  v12 = v10;
  v13 = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage,int,int,long long>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage *)>,mlir::TypeID,int,int,long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage,int,int,long long>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage *)>,mlir::TypeID,int,int,long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::SymbolAttr::get(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v23 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id;
  v13[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail17SymbolAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10SymbolAttrEJNS4_10SymbolKindENS1_10StringAttrENS1_12FunctionTypeENS1_9ArrayAttrENS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v15[1] = v13;
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  memset(v21, 0, sizeof(v21));
  v22 = 0xFF51AFD7ED558CCDLL;
  v18 = a2;
  v19 = ((a3 >> 4) ^ (a3 >> 9));
  v20 = (a4 >> 4) ^ (a4 >> 9);
  v16 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v18, &v16, v21, &v21[2] + 8, (a5 >> 4) ^ (a5 >> 9));
  v17 = v16;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v18, &v17, v8, &v21[2] + 8, (v6 >> 4) ^ (v6 >> 9));
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v18, v17, v9, &v21[2] + 8);
  v17 = v14;
  v18 = v14;
  v19 = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v7 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id, v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::SymbolAttr::parse(mlir::AsmParser *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_85:
    result = 0;
    goto LABEL_86;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v41 = 0;
  v42 = 0;
  v5 = 0;
  v6 = 0;
  v43 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v44 = 0;
    v45 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v44))
    {
      v22 = (*(*a1 + 40))(a1);
      v58 = "expected a parameter name in struct";
      v60 = 259;
      (*(*a1 + 24))(v51, a1, v22, &v58);
      v23 = v51;
      goto LABEL_84;
    }

    v9 = v44;
    v10 = v45;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_85;
    }

    if (!(v7 & 1 | (v10 != 4)) && *v9 == 1684957547)
    {
      v14 = (*(*a1 + 40))(a1);
      v46 = 0;
      v47 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v46))
      {
        goto LABEL_72;
      }

      if (v47 == 6)
      {
        if (*v46 != 1852990827 || *(v46 + 2) != 27749)
        {
LABEL_62:
          v50 = 257;
          (*(*a1 + 24))(&v58, a1, v14, v49);
          if (v58)
          {
            mlir::Diagnostic::operator<<<10ul>(v59, "expected ");
            if (v58)
            {
              mlir::Diagnostic::operator<<<39ul>(v59, "mlir::ODIE::Compiler::ODIX::SymbolKind");
              if (v58)
              {
                mlir::Diagnostic::operator<<<16ul>(v59, " to be one of: ");
                if (v58)
                {
                  mlir::Diagnostic::operator<<<9ul>(v59, "function");
                  if (v58)
                  {
                    mlir::Diagnostic::operator<<<3ul>(v59, ", ");
                    if (v58)
                    {
                      mlir::Diagnostic::operator<<<7ul>(v59, "kernel");
                      if (v58)
                      {
                        mlir::Diagnostic::operator<<<3ul>(v59, ", ");
                        if (v58)
                        {
                          mlir::Diagnostic::operator<<<9ul>(v59, "delegate");
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
LABEL_72:
          v32 = (*(*a1 + 40))(a1);
          v60 = 259;
          (*(*a1 + 24))(v56, a1, v32, &v58);
          v23 = v56;
LABEL_84:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
          goto LABEL_85;
        }

        v15 = 1;
      }

      else
      {
        if (v47 != 8)
        {
          goto LABEL_62;
        }

        if (*v46 == 0x6E6F6974636E7566)
        {
          v41 = 0;
          goto LABEL_44;
        }

        if (*v46 != 0x65746167656C6564)
        {
          goto LABEL_62;
        }

        v15 = 2;
      }

      v41 = v15;
LABEL_44:
      v7 = 1;
      continue;
    }

    if (!(v2 & 1 | (v10 != 4)) && *v9 == 1701667182)
    {
      v19 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v20 & 1) == 0)
      {
        v37 = (*(*a1 + 40))(a1);
        v60 = 259;
        (*(*a1 + 24))(v55, a1, v37, &v58);
        v23 = v55;
        goto LABEL_84;
      }

      v3 = v19;
      v2 = 1;
    }

    else if (v4 & 1 | (v10 != 4))
    {
      if (v5 & 1 | (v10 != 14))
      {
        if (v43 & 1 | (v10 != 10))
        {
          goto LABEL_76;
        }

        if (*v9 != 0x7475626972747461 || *(v9 + 8) != 29541)
        {
          v10 = 10;
LABEL_76:
          v35 = (*(*a1 + 40))(a1);
          v46 = "duplicate or unknown struct parameter name: ";
          v48 = 259;
          (*(*a1 + 24))(&v58, a1, v35, &v46);
          if (v58)
          {
            v50 = 261;
            v49[0] = v9;
            v49[1] = v10;
            mlir::Diagnostic::operator<<(v59, v49);
          }

LABEL_83:
          v23 = &v58;
          goto LABEL_84;
        }

        v12 = mlir::FieldParser<mlir::DictionaryAttr,mlir::DictionaryAttr>::parse(a1);
        if ((v13 & 1) == 0)
        {
          v36 = (*(*a1 + 40))(a1);
          v60 = 259;
          (*(*a1 + 24))(v52, a1, v36, &v58);
          v23 = v52;
          goto LABEL_84;
        }

        v8 = v12;
        v43 = 1;
      }

      else
      {
        if (*v9 != 0x695F74757074756FLL || *(v9 + 6) != 0x73746E65746E695FLL)
        {
          v10 = 14;
          goto LABEL_76;
        }

        v17 = mlir::FieldParser<mlir::ArrayAttr,mlir::ArrayAttr>::parse(a1);
        if ((v18 & 1) == 0)
        {
          v34 = (*(*a1 + 40))(a1);
          v60 = 259;
          (*(*a1 + 24))(v53, a1, v34, &v58);
          v23 = v53;
          goto LABEL_84;
        }

        v6 = v17;
        v5 = 1;
      }
    }

    else
    {
      if (*v9 != 1701869940)
      {
        v10 = 4;
        goto LABEL_76;
      }

      v58 = 0;
      if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v58))
      {
        v31 = (*(*a1 + 40))(a1);
        v60 = 259;
        (*(*a1 + 24))(v54, a1, v31, &v58);
        v23 = v54;
        goto LABEL_84;
      }

      v42 = v58;
      v4 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v29 = (*(*a1 + 40))(a1);
    v56[0] = "struct is missing required parameter: ";
    v57 = 259;
    (*(*a1 + 24))(&v58, a1, v29, v56);
    if (!v58)
    {
      goto LABEL_83;
    }

    v30 = "kind";
LABEL_82:
    mlir::Diagnostic::operator<<<5ul>(v59, v30);
    goto LABEL_83;
  }

  if ((v2 & 1) == 0)
  {
    v33 = (*(*a1 + 40))(a1);
    v56[0] = "struct is missing required parameter: ";
    v57 = 259;
    (*(*a1 + 24))(&v58, a1, v33, v56);
    if (!v58)
    {
      goto LABEL_83;
    }

    v30 = "name";
    goto LABEL_82;
  }

  if ((v4 & 1) == 0)
  {
    v38 = (*(*a1 + 40))(a1);
    v56[0] = "struct is missing required parameter: ";
    v57 = 259;
    (*(*a1 + 24))(&v58, a1, v38, v56);
    if (!v58)
    {
      goto LABEL_83;
    }

    v30 = "type";
    goto LABEL_82;
  }

  if ((v5 & 1) == 0)
  {
    v40 = (*(*a1 + 40))(a1);
    v56[0] = "struct is missing required parameter: ";
    v57 = 259;
    (*(*a1 + 24))(&v58, a1, v40, v56);
    if (v58)
    {
      mlir::Diagnostic::operator<<<15ul>(v59, "output_intents");
    }

    goto LABEL_83;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_85;
  }

  v24 = *(*(*a1 + 32))(a1);
  v25 = (*(*a1 + 32))(a1);
  v26 = mlir::DictionaryAttr::get(*v25, 0, 0);
  if (v43)
  {
    v27 = v8;
  }

  else
  {
    v27 = v26;
  }

  result = mlir::ODIE::Compiler::ODIX::SymbolAttr::get(v24, v41, v3, v42, v6, v27);
LABEL_86:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::ODIX::SymbolAttr::print(mlir::ODIE::Compiler::ODIX::SymbolAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 6uLL)
  {
    *(v7 + 3) = 540876900;
    *v7 = 1684957547;
    *(v6 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v6, "kind = ", 7uLL);
  }

  v8 = *(*this + 8);
  if (v8 > 2)
  {
    v9 = 0;
    v10 = &byte_25D0A27DF;
  }

  else
  {
    v9 = qword_25D0A0318[v8];
    v10 = (&off_2799BECF8)[v8];
  }

  v11 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v11, v10, v9);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 1uLL)
  {
    *v13 = 8236;
    *(v12 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, ", ", 2uLL);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 6uLL)
  {
    *(v15 + 3) = 540876901;
    *v15 = 1701667182;
    *(v14 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v14, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 6uLL)
  {
    *(v19 + 3) = 540876901;
    *v19 = 1701869940;
    *(v18 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v18, "type = ", 7uLL);
  }

  (*(*a2 + 32))(a2, *(*this + 24));
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 1uLL)
  {
    *v21 = 8236;
    *(v20 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, ", ", 2uLL);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) > 0x10)
  {
    *(v23 + 16) = 32;
    *v23 = *"output_intents = ";
    *(v22 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v22, "output_intents = ", 0x11uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 32));
  v24 = *(*this + 40);
  if (v24 != mlir::DictionaryAttr::get(*(***this + 32), 0, 0))
  {
    v25 = (*(*a2 + 16))(a2);
    v26 = *(v25 + 4);
    if (*(v25 + 3) - v26 > 1uLL)
    {
      *v26 = 8236;
      *(v25 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v25, ", ", 2uLL);
    }

    v27 = (*(*a2 + 16))(a2);
    v28 = *(v27 + 4);
    if (*(v27 + 3) - v28 > 0xCuLL)
    {
      qmemcpy(v28, "attributes = ", 13);
      *(v27 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v27, "attributes = ", 0xDuLL);
    }

    v29 = *(*this + 40);
    if (v29 != mlir::DictionaryAttr::get(*(***this + 32), 0, 0))
    {
      (*(*a2 + 40))(a2, *(*this + 40));
    }
  }

  result = (*(*a2 + 16))(a2);
  v31 = *(result + 4);
  if (*(result + 3) == v31)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v31 = 62;
    ++*(result + 4);
  }

  return result;
}