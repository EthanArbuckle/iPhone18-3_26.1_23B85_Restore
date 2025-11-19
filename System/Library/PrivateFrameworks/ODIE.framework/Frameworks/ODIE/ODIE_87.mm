BOOL llvm::any_of<mlir::ValueRange,anonymous namespace::SimplifyTrivialLoops::matchAndRewrite(mlir::scf::ForOp,mlir::PatternRewriter &)::{lambda(mlir::Value)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = 0;
  if (a2)
  {
    for (i = 0; i != a2; v11 = i)
    {
      v6 = mlir::ValueRange::dereference_iterator(&v10, i);
      isDefinedOutsideOfLoop = mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::isDefinedOutsideOfLoop(*a3, v6);
      if (!isDefinedOutsideOfLoop)
      {
        break;
      }

      ++i;
    }

    result = !isDefinedOutsideOfLoop;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyTrivialLoops>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyTrivialLoops]";
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

void anonymous namespace::ForOpTensorCastFolder::~ForOpTensorCastFolder(_anonymous_namespace_::ForOpTensorCastFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ForOpTensorCastFolder::matchAndRewrite(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v40[5] = *MEMORY[0x277D85DE8];
  v35 = a2;
  ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(&v35, 3u);
  v36[0] = a2;
  v36[1] = ODSOperandIndexAndLength;
  v6 = a2[9];
  v37 = *v36;
  v38 = v40;
  v39 = 0x100000000;
  if (v6)
  {
    v7 = a2 - 4;
  }

  else
  {
    v7 = 0;
  }

  v40[3] = v7;
  v40[4] = v6;
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v8 = *(v37 + 72);
  }

  else
  {
    v8 = 0;
  }

  if (HIDWORD(v37))
  {
    v30 = a3;
    v31 = a2;
    if (v6)
    {
      v9 = 0;
      v10 = 0;
      v11 = v8 + 32 * DWORD2(v37);
      v12 = 32 * v6 - 32;
      v13 = 32 * HIDWORD(v37) - 32;
      v14 = v7;
      while (1)
      {
        if (v9)
        {
          v15 = *(v7 + 1) & 7;
          v16 = v7;
          v17 = v10;
          if (v15 != 6)
          {
            v18 = (5 - v15);
            v19 = v14;
            v17 = v10 - v18;
            if (v10 <= v18)
            {
              goto LABEL_15;
            }

            v16 = &v7[-4 * v18];
          }

          v19 = &v16[-6 * v17];
        }

        else
        {
          v19 = v7;
        }

LABEL_15:
        v20 = *(v11 + v9 + 24);
        if ((~*(v20 + 8) & 7) == 0)
        {
          v20 = 0;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        v21 = *(v20 + 8) & 7;
        if (v21 != 6)
        {
          v23 = v20 + 16 * v21 + 16;
LABEL_22:
          if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
          {
            v24 = *(*(*(v23 + 72) + 24) + 8);
            if ((*(v23 - 8) ^ v24) >= 8)
            {
              v25 = *(v23 + 36) ? v23 - 16 : 0;
              if (mlir::tensor::preservesStaticInformation((*(v25 + 8) & 0xFFFFFFFFFFFFFFF8), (v24 & 0xFFFFFFFFFFFFFFF8)) && *v19 && !**v19)
              {
                v29 = *(*(v23 + 72) + 24);
                v34 = &v32;
                mlir::scf::replaceAndCastForOpIterArg(v36, v30, v31, v11 + v9, v29);
              }
            }
          }

          goto LABEL_30;
        }

        v22 = v20 + 24 * *(v20 + 16);
        v23 = v22 + 120;
        if (v22 != -120)
        {
          goto LABEL_22;
        }

LABEL_30:
        if (v13 != v9)
        {
          ++v10;
          v14 -= 4;
          v26 = v12 == v9;
          v9 += 32;
          if (!v26)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  if (v38 != v40)
  {
    free(v38);
  }

  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

char *llvm::function_ref<mlir::Value ()(mlir::OpBuilder &,mlir::Location,mlir::Type,mlir::Value)>::callback_fn<anonymous namespace::ForOpTensorCastFolder::matchAndRewrite(mlir::scf::ForOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::Type,mlir::Value)#1}>(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  return mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
}

char *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
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
  mlir::tensor::CastOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "tensor.cast";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForOpTensorCastFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForOpTensorCastFolder]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23168))
  {
    v1 = llvm::getTypeName<mlir::DeviceMappingAttrInterface>();
    qword_27FC23160 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23168);
  }

  return qword_27FC23160;
}

uint64_t llvm::getTypeName<mlir::DeviceMappingAttrInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23180))
  {
    qword_27FC23170 = llvm::detail::getTypeNameImpl<mlir::DeviceMappingAttrInterface>();
    *algn_27FC23178 = v1;
    __cxa_guard_release(&qword_27FC23180);
  }

  return qword_27FC23170;
}

const char *llvm::detail::getTypeNameImpl<mlir::DeviceMappingAttrInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DeviceMappingAttrInterface]";
  v6 = 94;
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

void llvm::SmallVectorImpl<mlir::Type>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
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
      v6 = (v4 + 1) & 0x1FFFFFFFELL;
      v7 = vdupq_n_s64(v4 - 1);
      v8 = (*a1 + 8);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v9.i8[0])
        {
          *(v8 - 1) = a3;
        }

        if (v9.i8[4])
        {
          *v8 = a3;
        }

        v5 += 2;
        v8 += 2;
      }

      while (v6 != v5);
    }

    v10 = a2 - v3;
    if (a2 > v3)
    {
      v11 = 0;
      v12 = vdupq_n_s64(v10 - 1);
      v13 = (*a1 + 8 * v3 + 8);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *(v13 - 1) = a3;
        }

        if (v14.i8[4])
        {
          *v13 = a3;
        }

        v11 += 2;
        v13 += 2;
      }

      while (((v10 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
    }

    *(a1 + 8) = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::Type,true>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<mlir::Type,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
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

void llvm::SmallVectorImpl<mlir::OpFoldResult>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
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
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
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

void mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::scf::ForallOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v4[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "scf.forall.in_parallel", 0x16);
  v3 = *(a1 + 16);
  mlir::OperationState::addRegion(v4);
}

void anonymous namespace::DimOfForallOp::~DimOfForallOp(_anonymous_namespace_::DimOfForallOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DimOfForallOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 + 72) + 24);
  if ((~*(v4 + 8) & 7) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *(v5 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v5 + 24 * *(v5 + 16);
    result = v8 + 120;
    if (v8 == -120)
    {
      return result;
    }
  }

  else
  {
    result = v5 + 16 * v7 + 16;
  }

  if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id)
  {
    return 0;
  }

  v10 = *(mlir::scf::ForallOp::getTiedOpOperand(result, v4) + 24);
  (*(*a3 + 40))(a3, a2);
  v11 = *(a2 + 72);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    *v12 = *v11;
    if (v13)
    {
      *(v13 + 8) = v11[1];
    }
  }

  v11[3] = v10;
  v14 = *v10;
  *v11 = *v10;
  v11[1] = v10;
  if (v14)
  {
    *(v14 + 8) = v11;
  }

  *v10 = v11;
  (*(*a3 + 48))(a3, a2);
  return 1;
}

uint64_t mlir::scf::ForallOp::getTiedOpOperand(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16 * ((*(a1 + 44) >> 23) & 1));
  v3 = v2[24];
  v4 = v2[25];
  v5 = v2[26];
  if (a2 && (*(a2 + 8) & 7) == 6)
  {
    v6 = *(a2 + 16) + 6;
  }

  else
  {
    v6 = *(a2 + 8) & 7;
  }

  return *(a1 + 72) + 32 * (v4 + v3 + v5 + v6);
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DimOfForallOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DimOfForallOp]";
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

void anonymous namespace::FoldTensorCastOfOutputIntoForallOp::~FoldTensorCastOfOutputIntoForallOp(_anonymous_namespace_::FoldTensorCastOfOutputIntoForallOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldTensorCastOfOutputIntoForallOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62[8] = *MEMORY[0x277D85DE8];
  v38 = a2;
  v48 = 1;
  LODWORD(v49) = -1;
  v50 = -1;
  v51 = v53;
  v52 = 0x200000000;
  v4 = *(a2 + 44);
  v5 = (a2 + 16 * ((v4 >> 23) & 1));
  v6 = v5[27];
  v7 = (v5[25] + v5[24] + v5[26]);
  if ((v4 & 0x800000) != 0)
  {
    v8 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v45 = v47;
  v46 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v45, v8 + 32 * v7, 0, v8 + 32 * v7, (v6 + v7) - v7);
  if (v46)
  {
    v9 = 0;
    v10 = v45;
    v11 = 8 * v46;
    while (1)
    {
      v12 = v10[v9];
      if ((~*(v12 + 8) & 7) == 0)
      {
        v12 = 0;
      }

      if (!v12)
      {
        goto LABEL_30;
      }

      v13 = *(v12 + 8) & 7;
      if (v13 == 6)
      {
        v14 = v12 + 24 * *(v12 + 16);
        v15 = v14 + 120;
        if (v14 == -120)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v15 = v12 + 16 * v13 + 16;
      }

      if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
      {
        goto LABEL_30;
      }

      v16 = *(v15 + 36) ? v15 - 16 : 0;
      if (!mlir::tensor::preservesStaticInformation((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8), (*(*(*(v15 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)))
      {
        goto LABEL_30;
      }

      v17 = *(*(*(v15 + 72) + 24) + 8);
      v18 = *(v15 - 8);
      v43 = 0;
      v19 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(&v48, v9, &v43);
      v20 = v43;
      if (!v19)
      {
        break;
      }

      v21 = *(v43 + 1);
LABEL_29:
      v30 = v51 + 24 * v21;
      *(v30 + 1) = v17 & 0xFFFFFFFFFFFFFFF8;
      *(v30 + 2) = v18 & 0xFFFFFFFFFFFFFFF8;
      *(v45 + v9) = *(*(v15 + 72) + 24);
LABEL_30:
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_38;
      }
    }

    v54 = v43;
    v22 = v48;
    v23 = v48 >> 1;
    v24 = v48 & 1;
    if (v48)
    {
      v25 = 2;
    }

    else
    {
      v25 = v50;
    }

    if (4 * v23 + 4 >= 3 * v25)
    {
      v25 *= 2;
    }

    else if (v25 + ~v23 - HIDWORD(v48) > v25 >> 3)
    {
LABEL_24:
      LODWORD(v48) = (v22 & 0xFFFFFFFE) + v24 + 2;
      if (*v20 != -1)
      {
        --HIDWORD(v48);
      }

      *v20 = v9;
      v20[1] = 0;
      v55 = 0;
      v56 = 0;
      LODWORD(v54) = v9;
      v26 = v51;
      if (v52 >= HIDWORD(v52))
      {
        if (v51 <= &v54 && v51 + 24 * v52 > &v54)
        {
          v36 = &v54 - v51;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v52 + 1, 24);
          v26 = v51;
          v27 = (v51 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v52 + 1, 24);
          v27 = &v54;
          v26 = v51;
        }
      }

      else
      {
        v27 = &v54;
      }

      v28 = &v26[24 * v52];
      v29 = *v27;
      *(v28 + 2) = v27[2];
      *v28 = v29;
      v21 = v52;
      LODWORD(v52) = v52 + 1;
      v20[1] = v21;
      goto LABEL_29;
    }

    llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(&v48, v25);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(&v48, v9, &v54);
    v22 = v48;
    v20 = v54;
    v24 = v48 & 1;
    goto LABEL_24;
  }

LABEL_38:
  if (v52)
  {
    v31 = *(a2 + 24);
    mlir::scf::ForallOp::getMixedLowerBound(&v38, &v43);
    mlir::scf::ForallOp::getMixedUpperBound(&v38, &v41);
    mlir::scf::ForallOp::getMixedStep(&v38, &v39);
    v32 = *(v38 + 16 * ((*(v38 + 44) >> 23) & 1) + 64);
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForallOp>(*(**v31 + 32));
    v54 = v31;
    v55 = v33;
    v56 = v58;
    v57 = 0x400000000;
    v58[4] = v59;
    v58[5] = 0x400000000;
    v59[4] = v60;
    v59[5] = 0x400000000;
    v60[8] = 4;
    v60[9] = v61;
    v60[10] = 0x100000000;
    v61[1] = v62;
    v61[2] = 0x100000000;
    v62[2] = 0;
    v62[1] = 0;
    v62[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v62[4] = 0;
    v62[6] = 0;
    mlir::scf::ForallOp::build((a3 + 8), &v54, v43, v44, v41, v42, v39, v40, v45 & 0xFFFFFFFFFFFFFFF9, v46, v32, v32 != 0);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  if ((v48 & 1) == 0)
  {
    MEMORY[0x25F891030](v49, 4);
  }

  v34 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
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
  v6 = (v4 - 1) & (37 * a2);
  v7 = (v3 + 8 * v6);
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
    while (v8 != -1)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 8 * (v13 & v5));
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

uint64_t llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 3)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 2)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((8 * a2), 4uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(a1, v6, &v6[2 * v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = *(a1 + v8 + 8);
    if (v10 <= 0xFFFFFFFD)
    {
      *v9 = v10;
      v9[1] = *(a1 + v8 + 12);
      v9 += 2;
    }

    v8 += 8;
  }

  while (v8 != 16);
  if (a2 > 2)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 4uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(uint64_t result, int *a2, int *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 24;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = *(result + 8);
    v9 = v8 + 8 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 16);
  do
  {
    v14 = vdupq_n_s64(v10);
    v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_25D0A0500)));
    if (vuzp1_s16(v15, *v12.i8).u8[0])
    {
      *(v13 - 4) = -1;
    }

    if (vuzp1_s16(v15, *&v12).i8[2])
    {
      *(v13 - 2) = -1;
    }

    if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_25D0A04F0)))).i32[1])
    {
      *v13 = -1;
      v13[2] = -1;
    }

    v10 += 4;
    v13 += 8;
  }

  while (((v11 + 4) & 0x3FFFFFFFFFFFFFFCLL) != v10);
LABEL_17:
  while (a2 != a3)
  {
    v16 = *a2;
    if (*a2 <= 0xFFFFFFFD)
    {
      v18 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v5, v16, &v18);
      v17 = v18;
      *v18 = *a2;
      v17[1] = a2[1];
      *v5 += 2;
    }

    a2 += 2;
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForallOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "scf.forall";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>::callback_fn<anonymous namespace::FoldTensorCastOfOutputIntoForallOp::matchAndRewrite(mlir::scf::ForallOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder,mlir::Location,mlir::ValueRange)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v32[0] = a4;
  v32[1] = a5;
  v10 = *(**a1 + 36);
  if (a5 <= v10)
  {
    v11 = a4;
    v10 = a5;
  }

  else
  {
    v11 = mlir::ValueRange::offset_base(v32, a5 - v10);
  }

  __src = v31;
  v30 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&__src, v11, 0, v11, v10);
  v12 = *(a1 + 8);
  v13 = *(v12 + 32);
  if (v13)
  {
    v14 = *(v12 + 24);
    v15 = 24 * v13;
    do
    {
      *v27 = *v14;
      v28[0] = *(v14 + 16);
      v16 = (__src + 8 * LODWORD(v27[0]));
      *v16 = (mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v26, a3, v28, v16) - 16);
      v14 += 24;
      v15 -= 24;
    }

    while (v15);
  }

  v17 = *(*(**a1 + 16 * ((*(**a1 + 44) >> 23) & 1) + 72) + 32);
  if (a5 >= v17 >> 3)
  {
    v18 = v17 >> 3;
  }

  else
  {
    v18 = a5;
  }

  v27[0] = v28;
  v27[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v27, a4, 0, a4, v18);
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(v27, __src, __src + 8 * v30);
  v19 = *(((**a1 + 16 * ((*(**a1 + 44) >> 23) & 1) + ((*(**a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(**a1 + 40) + 8);
  if (v19)
  {
    v20 = v19 - 8;
  }

  else
  {
    v20 = 0;
  }

  v21 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 6) != 0 || !v21)
  {
    if ((a4 & 6) == 2 && v21)
    {
      v21 = *(v21 + 24);
    }
  }

  else
  {
    v21 = *v21;
  }

  if ((~*(v21 + 8) & 7) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = *(v22 + 8) & 7;
    if (v23 == 6)
    {
      v24 = v22 + 24 * *(v22 + 16) + 120;
      if (v24)
      {
        v21 = v24;
      }
    }

    else
    {
      v21 = v22 + 16 * v23 + 16;
    }
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v20, *(v21 + 16), *(v21 + 16) + 32, v27[0] & 0xFFFFFFFFFFFFFFF9, LODWORD(v27[1]));
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (__src != v31)
  {
    free(__src);
  }

  v25 = *MEMORY[0x277D85DE8];
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldTensorCastOfOutputIntoForallOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldTensorCastOfOutputIntoForallOp]";
  v6 = 119;
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

void anonymous namespace::ForallOpControlOperandsFolder::~ForallOpControlOperandsFolder(_anonymous_namespace_::ForallOpControlOperandsFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ForallOpControlOperandsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v75[6] = *MEMORY[0x277D85DE8];
  v40 = a2;
  mlir::scf::ForallOp::getMixedLowerBound(&v40, &v50);
  mlir::scf::ForallOp::getMixedUpperBound(&v40, &v47);
  mlir::scf::ForallOp::getMixedStep(&v40, &v44);
  if (mlir::foldDynamicIndexList(&v50, 0, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v47, 0, 0) & 1) != 0 || (v4 = 0, (mlir::foldDynamicIndexList(&v44, 0, 0)))
  {
    v39 = v40;
    ((*a3)[5])(a3);
    v73 = v75;
    v74 = 0x600000000;
    v70 = v72;
    v71 = 0x600000000;
    v67 = v69;
    *v68 = 0x600000000;
    v64 = v66;
    v65 = 0x600000000;
    v61 = v63;
    v62 = 0x600000000;
    v58 = v60;
    v59 = 0x600000000;
    if (v51)
    {
      v5 = v50;
      v6 = 8 * v51;
      do
      {
        v7 = *v5++;
        mlir::dispatchIndexOpFoldResult(v7, &v73, &v64);
        v6 -= 8;
      }

      while (v6);
    }

    v8 = v40;
    v9 = v40 + 16 * ((*(v40 + 44) >> 23) & 1);
    v10 = *(v9 + 96);
    v11 = *(*(*(v40 + 48) + 96) + 8 * *(*(v40 + 48) + 104) - 8);
    v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(v40 + 24) + 32), v9 + 96, 4);
    __src = 0;
    v42 = v11;
    v43 = v12;
    v53 = v8;
    LODWORD(v54) = 0;
    HIDWORD(v54) = v10;
    v55 = v57;
    v56 = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v55, &__src, &v44);
    mlir::MutableOperandRange::assign(&v53, v73 & 0xFFFFFFFFFFFFFFF9, v74);
    if (v55 != v57)
    {
      free(v55);
    }

    v13 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(v40 + 24) + 32), v64, v65);
    *(v40 + 16 * ((*(v40 + 44) >> 23) & 1) + 72) = v13;
    if (v48)
    {
      v14 = v47;
      v15 = 8 * v48;
      do
      {
        v16 = *v14++;
        mlir::dispatchIndexOpFoldResult(v16, &v70, &v61);
        v15 -= 8;
      }

      while (v15);
    }

    v17 = v40;
    v18 = v40 + 16 * ((*(v40 + 44) >> 23) & 1);
    v19 = *(v18 + 96);
    v20 = *(*(*(v40 + 48) + 96) + 8 * *(*(v40 + 48) + 104) - 8);
    v21 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(v40 + 24) + 32), v18 + 96, 4);
    __src = 1;
    v42 = v20;
    v43 = v21;
    v53 = v17;
    v54 = v19;
    v55 = v57;
    v56 = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v55, &__src, &v44);
    mlir::MutableOperandRange::assign(&v53, v70 & 0xFFFFFFFFFFFFFFF9, v71);
    if (v55 != v57)
    {
      free(v55);
    }

    v22 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(v40 + 24) + 32), v61, v62);
    *(v40 + 16 * ((*(v40 + 44) >> 23) & 1) + 88) = v22;
    if (v45)
    {
      v23 = v44;
      v24 = 8 * v45;
      do
      {
        v25 = *v23++;
        mlir::dispatchIndexOpFoldResult(v25, &v67, &v58);
        v24 -= 8;
      }

      while (v24);
    }

    v26 = v40;
    v27 = (v40 + 16 * ((*(v40 + 44) >> 23) & 1));
    v28 = v27[24];
    v29 = v27[25];
    v27 += 24;
    v30 = v27[2];
    v31 = v29 + v28;
    v32 = *(*(*(v40 + 48) + 96) + 8 * *(*(v40 + 48) + 104) - 8);
    v33 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(v40 + 24) + 32), v27, 4);
    __src = 2;
    v42 = v32;
    v43 = v33;
    v53 = v26;
    v54 = __PAIR64__(v30, v31);
    v55 = v57;
    v56 = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v55, &__src, &v44);
    mlir::MutableOperandRange::assign(&v53, v67 & 0xFFFFFFFFFFFFFFF9, v68[0]);
    if (v55 != v57)
    {
      free(v55);
    }

    v34 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(v40 + 24) + 32), v58, v59);
    *(v40 + 16 * ((*(v40 + 44) >> 23) & 1) + 80) = v34;
    v35 = v40;
    v53 = __PAIR64__(v71, v74);
    v54 = __PAIR64__(*(v40 + 36), v68[0]);
    v36 = mlir::detail::DenseArrayAttrImpl<int>::get(a3[1], &v53, 4);
    mlir::Operation::setAttr(v35, "operandSegmentSizes", 0x13, v36);
    if (v58 != v60)
    {
      free(v58);
    }

    if (v61 != v63)
    {
      free(v61);
    }

    if (v64 != v66)
    {
      free(v64);
    }

    if (v67 != v69)
    {
      free(v67);
    }

    if (v70 != v72)
    {
      free(v70);
    }

    if (v73 != v75)
    {
      free(v73);
    }

    ((*a3)[6])(a3, v39);
    v4 = 1;
  }

  if (v44 != &v46)
  {
    free(v44);
  }

  if (v47 != &v49)
  {
    free(v47);
  }

  if (v50 != &v52)
  {
    free(v50);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v4;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForallOpControlOperandsFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForallOpControlOperandsFolder]";
  v6 = 114;
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

void anonymous namespace::ForallOpIterArgsFolder::~ForallOpIterArgsFolder(_anonymous_namespace_::ForallOpIterArgsFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ForallOpIterArgsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v58[8] = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = a2;
  v36 = 0;
  v35 = 0u;
  v37 = &v39;
  v49[0] = v50;
  v49[1] = 0x600000000;
  v46 = v48;
  v47 = 0x600000000;
  v3 = *(a2 + 36);
  v4 = a2 - 16;
  if (v3)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  if (!v3)
  {
    goto LABEL_36;
  }

  v8 = 0;
  v9 = v5;
  do
  {
    v10 = v5;
    if (v8)
    {
      v11 = *(a2 - 8) & 7;
      v12 = v4;
      v13 = v8;
      if (v11 == 6)
      {
        goto LABEL_10;
      }

      v14 = (5 - v11);
      v10 = v9;
      v13 = v8 - v14;
      if (v8 > v14)
      {
        v12 = &v5[-2 * v14];
LABEL_10:
        v10 = &v12[-3 * v13];
      }
    }

    v15 = v39;
    TiedOpOperand = mlir::scf::ForallOp::getTiedOpOperand(v39, v10);
    TiedBlockArgument = mlir::scf::ForallOp::getTiedBlockArgument(v15, TiedOpOperand);
    if (*v10)
    {
      mlir::scf::ForallOp::getCombiningOps(&v51, v15, TiedBlockArgument);
      v18 = v52;
      if (v51 != v53)
      {
        free(v51);
      }

      if (v18)
      {
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v49, v10);
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v46, *(TiedOpOperand + 24));
        goto LABEL_22;
      }
    }

    v44 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::LookupBucketFor<mlir::OpResult>(v35, v36, v10, &v44) & 1) == 0)
    {
      v19 = v44;
      v51 = v44;
      v20 = DWORD2(v35);
      v21 = v36;
      if (4 * DWORD2(v35) + 4 >= 3 * v36)
      {
        v21 = 2 * v36;
      }

      else if (v36 + ~DWORD2(v35) - HIDWORD(v35) > v36 >> 3)
      {
LABEL_19:
        DWORD2(v35) = v20 + 1;
        if (*v19 != -4096)
        {
          --HIDWORD(v35);
        }

        *v19 = v10;
        llvm::SmallVectorTemplateBase<mlir::OpResult,true>::push_back(&v37, v10);
        goto LABEL_22;
      }

      llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::grow(&v35, v21);
      llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::LookupBucketFor<mlir::OpResult>(v35, v36, v10, &v51);
      v20 = DWORD2(v35);
      v19 = v51;
      goto LABEL_19;
    }

LABEL_22:
    ++v8;
    v9 -= 2;
  }

  while (v3 != v8);
  if (v38)
  {
    v22 = v37;
    v23 = (v37 + 8 * v38);
    while (1)
    {
      v24 = v39;
      v25 = mlir::scf::ForallOp::getTiedOpOperand(v39, *v22);
      v26 = mlir::scf::ForallOp::getTiedBlockArgument(v24, v25);
      mlir::scf::ForallOp::getCombiningOps(&v51, v24, v26);
      v27 = v51;
      if (v52)
      {
        v28 = 8 * v52;
        do
        {
          v29 = *v27++;
          ((*a3)[2])(a3, v29);
          v28 -= 8;
        }

        while (v28);
        v27 = v51;
      }

      if (v27 != v53)
      {
        free(v27);
      }

      if (++v22 == v23)
      {
        v30 = *(v39 + 24);
        mlir::scf::ForallOp::getMixedLowerBound(&v39, &v44);
        mlir::scf::ForallOp::getMixedUpperBound(&v39, &v42);
        mlir::scf::ForallOp::getMixedStep(&v39, &v40);
        v31 = *(v39 + 16 * ((*(v39 + 44) >> 23) & 1) + 64);
        v32 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForallOp>(*(**v30 + 32));
        v51 = v30;
        v52 = v32;
        v53[0] = v54;
        v53[1] = 0x400000000;
        v54[4] = v55;
        v54[5] = 0x400000000;
        v55[4] = v56;
        v55[5] = 0x400000000;
        v56[8] = 4;
        v56[9] = v57;
        v56[10] = 0x100000000;
        v57[1] = v58;
        v57[2] = 0x100000000;
        v58[1] = 0;
        v58[2] = 0;
        v58[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v58[4] = 0;
        v58[6] = 0;
        mlir::scf::ForallOp::build(a3 + 1, &v51, v44, v45, v42, v43, v40, v41, v46 & 0xFFFFFFFFFFFFFFF9, v47, v31, v31 != 0);
      }
    }
  }

LABEL_36:
  if (v46 != v48)
  {
    free(v46);
  }

  if (v49[0] != v50)
  {
    free(v49[0]);
  }

  if (v37 != &v39)
  {
    free(v37);
  }

  MEMORY[0x25F891030](v35, 8);
  v33 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::scf::ForallOp::getTiedBlockArgument(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  v3 = a1 + 64 + 16 * ((v2 >> 23) & 1);
  v4 = *(((v3 + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  v5 = *(a2 + 16);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 72);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4 - 8;
  }

  else
  {
    v7 = 0;
  }

  return *(*(v7 + 48) + 8 * (((a2 - v6) >> 5) - *(v3 + 40) - (*(v3 + 36) + *(v3 + 32)) + (*(*(v3 + 8) + 32) >> 3)));
}

void llvm::SmallVectorTemplateBase<mlir::OpResult,true>::push_back(uint64_t a1, uint64_t a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::LookupBucketFor<mlir::OpResult>(uint64_t a1, int a2, unint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::LookupBucketFor<mlir::OpResult>(*a1, *(a1 + 16), v20, &v29);
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForallOpIterArgsFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForallOpIterArgsFolder]";
  v6 = 107;
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

void anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::~ForallOpSingleOrZeroIterationDimsFolder(_anonymous_namespace_::ForallOpSingleOrZeroIterationDimsFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78[8] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v4 && *(v4 + 16))
  {
    v5 = 0;
    goto LABEL_53;
  }

  v36 = *(a2 + 24);
  v61 = v63;
  v62 = 0x600000000;
  v58 = v60;
  v59 = 0x600000000;
  v55 = v57;
  v56 = 0x600000000;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  mlir::scf::ForallOp::getMixedLowerBound(&v46, v53);
  mlir::scf::ForallOp::getMixedUpperBound(&v46, v51);
  mlir::scf::ForallOp::getMixedStep(&v46, v49);
  mlir::scf::ForallOp::getInductionVars(v47, v46);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES7_S7_NS4_INS5_5ValueELj6EEEEEC2B8nn200100IJLm0ELm1ELm2ELm3EEJS7_S7_S7_S9_EJEJEJS7_S7_S7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(&v64, v53, v51, v49, v47);
  if (v47[0] != &v48)
  {
    free(v47[0]);
  }

  if (v49[0] != &v50)
  {
    free(v49[0]);
  }

  if (v51[0] != &v52)
  {
    free(v51[0]);
  }

  v37 = a3;
  if (v53[0] != &v54)
  {
    free(v53[0]);
  }

  v6 = 0;
  if (v65 && v69 && v72)
  {
    v7 = v64;
    v8 = v68;
    v9 = v71;
    v10 = v74;
    v11 = 8 * v75;
    v12 = 8 * v72 - 8;
    v13 = 8 * v69 - 8;
    v14 = 8 * v65 - 8;
    while (1)
    {
      if (!v11)
      {
        v6 = 0;
        goto LABEL_27;
      }

      v15 = mlir::constantTripCount(*v7, *v8, *v9);
      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

      if (v15 != 1)
      {
        break;
      }

      v17 = *v10;
      ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp((v37 + 8), v36, *v7);
      v53[0] = v17;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v38, v53) = ConstantIndexOp;
LABEL_22:
      v6 = 0;
      if (v14)
      {
        if (v13)
        {
          ++v7;
          ++v8;
          ++v9;
          ++v10;
          v11 -= 8;
          v19 = v12;
          v12 -= 8;
          v13 -= 8;
          v14 -= 8;
          if (v19)
          {
            continue;
          }
        }
      }

      goto LABEL_27;
    }

    if (!v15)
    {
      v31 = *(v46 + 11);
      v32 = (v46 + 16 * ((v31 >> 23) & 1));
      v33 = v32[27];
      v34 = (v32[25] + v32[24] + v32[26]);
      if ((v31 & 0x800000) != 0)
      {
        v35 = *(v46 + 9);
      }

      (**v37)(v37);
      v6 = 1;
      goto LABEL_27;
    }

LABEL_20:
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v61, *v7);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v58, *v8);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v55, *v9);
    goto LABEL_22;
  }

LABEL_27:
  if (v74 != &v76)
  {
    free(v74);
  }

  if (v71 != &v73)
  {
    free(v71);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  if (v64 != v66)
  {
    free(v64);
  }

  if ((v6 & 1) == 0)
  {
    if (v62)
    {
      v20 = *(v46 + 11);
      v21 = v46 + 16 * ((v20 >> 23) & 1) + 64;
      if (v62 != (*(*(v21 + 1) + 32) >> 3))
      {
        v23 = *(v21 + 11);
        v24 = (*(v21 + 9) + *(v21 + 8) + *(v21 + 10));
        if ((v20 & 0x800000) != 0)
        {
          v25 = *(v46 + 9);
        }

        else
        {
          v25 = 0;
        }

        v26 = v25 + 32 * v24;
        v27 = (v23 + v24) - v24;
        v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForallOp>(*(**v36 + 32));
        v64 = v36;
        v65 = v28;
        v66[0] = &v67;
        v66[1] = 0x400000000;
        v68 = v70;
        v69 = 0x400000000;
        v70[4] = &v71;
        v70[5] = 0x400000000;
        v74 = 4;
        v75 = v77;
        v76 = 0x100000000;
        v77[1] = v78;
        v77[2] = 0x100000000;
        v78[2] = 0;
        v78[1] = 0;
        v78[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v78[4] = 0;
        v78[6] = 0;
        mlir::scf::ForallOp::build((v37 + 8), &v64, v61, v62, v58, v59, v55, v56, v26 & 0xFFFFFFFFFFFFFFF9 | 2, v27, 0, 0);
      }

      v64 = "no dimensions have 0 or 1 iterations";
      LOWORD(v67) = 259;
      v53[0] = &v64;
      v22 = *(v37 + 16);
      if (v22 && v22[2] == 1)
      {
        (*(*v22 + 88))(v22, *(v46 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::ForallOp &>(mlir::scf::ForallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v53);
      }

      v5 = 0;
      goto LABEL_47;
    }

    mlir::scf::promote(v37, v46);
  }

  v5 = 1;
LABEL_47:
  MEMORY[0x25F891030](v43, 8);
  MEMORY[0x25F891030](v40, 8);
  MEMORY[0x25F891030](v38[0], 8);
  if (v55 != v57)
  {
    free(v55);
  }

  if (v58 != v60)
  {
    free(v58);
  }

  if (v61 != v63)
  {
    free(v61);
  }

LABEL_53:
  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES7_S7_NS4_INS5_5ValueELj6EEEEEC2B8nn200100IJLm0ELm1ELm2ELm3EEJS7_S7_S7_S9_EJEJEJS7_S7_S7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a1, a2);
  }

  a1[8] = a1 + 10;
  a1[9] = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=((a1 + 8), a3);
  }

  a1[16] = a1 + 18;
  a1[17] = 0x600000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=((a1 + 16), a4);
  }

  a1[24] = a1 + 26;
  a1[25] = 0x600000000;
  if (*(a5 + 8))
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=((a1 + 24), a5);
  }

  return a1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForallOpSingleOrZeroIterationDimsFolder]";
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

void anonymous namespace::ForallOpReplaceConstantInductionVar::~ForallOpReplaceConstantInductionVar(_anonymous_namespace_::ForallOpReplaceConstantInductionVar *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ForallOpReplaceConstantInductionVar::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[6] = *MEMORY[0x277D85DE8];
  v20 = *(a2 + 24);
  v21 = a2;
  mlir::scf::ForallOp::getMixedLowerBound(&v21, v28);
  mlir::scf::ForallOp::getMixedUpperBound(&v21, v26);
  mlir::scf::ForallOp::getMixedStep(&v21, v24);
  mlir::scf::ForallOp::getInductionVars(v22, v21);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES7_S7_NS4_INS5_5ValueELj6EEEEEC2B8nn200100IJLm0ELm1ELm2ELm3EEJS7_S7_S7_S9_EJEJEJS7_S7_S7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(&v30, v28, v26, v24, v22);
  if (v22[0] != &v23)
  {
    free(v22[0]);
  }

  if (v24[0] != &v25)
  {
    free(v24[0]);
  }

  if (v26[0] != &v27)
  {
    free(v26[0]);
  }

  if (v28[0] != &v29)
  {
    free(v28[0]);
  }

  v4 = 0;
  v5 = v39;
  if (v31 && v34 && v37 && v40)
  {
    v4 = 0;
    v6 = v30;
    v7 = v33;
    v8 = v36;
    v9 = 8 * v40 - 8;
    v10 = 8 * v37 - 8;
    v11 = 8 * v34 - 8;
    v12 = 8 * v31 - 8;
    do
    {
      if (**v5)
      {
        v13 = mlir::constantTripCount(*v6, *v7, *v8);
        if ((v14 & 1) != 0 && v13 == 1)
        {
          v15 = *v5;
          ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp((a3 + 8), v20, *v6);
          mlir::RewriterBase::replaceAllUsesWith(a3, v15, ConstantIndexOp);
          v4 = 1;
        }
      }

      if (!v12)
      {
        break;
      }

      if (!v11)
      {
        break;
      }

      if (!v10)
      {
        break;
      }

      ++v6;
      ++v7;
      ++v8;
      ++v5;
      v17 = v9;
      v9 -= 8;
      v10 -= 8;
      v11 -= 8;
      v12 -= 8;
    }

    while (v17);
    v5 = v39;
  }

  if (v5 != v41)
  {
    free(v5);
  }

  if (v36 != &v38)
  {
    free(v36);
  }

  if (v33 != &v35)
  {
    free(v33);
  }

  if (v30 != &v32)
  {
    free(v30);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForallOpReplaceConstantInductionVar>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForallOpReplaceConstantInductionVar]";
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::push_back(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 12);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = *a1 + 12 * v6;
  *v7 = a2;
  *(v7 + 8) = a3;
  ++*(a1 + 8);
}

void anonymous namespace::CombineIfs::~CombineIfs(_anonymous_namespace_::CombineIfs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CombineIfs::matchAndRewrite(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v107[8] = *MEMORY[0x277D85DE8];
  if (*(a2[2] + 40) == a2)
  {
    goto LABEL_103;
  }

  v4 = *a2;
  v5 = *(*(*a2 + 48) + 16);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? *a2 : 0;
  if (v5 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    goto LABEL_103;
  }

  v8 = *(a2[9] + 24);
  v9 = *(*(v4 + 72) + 24);
  if (v8 == v9)
  {
    v12 = (((a2 + ((*(a2 + 11) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v13 = *v12 - 8;
    v32 = *v12 == 0;
    v16 = v12[3];
    v15 = v12 + 3;
    v14 = v16;
    if (v32)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13;
    }

    v17 = (v14 - 1);
    if (!v14)
    {
      v17 = 0;
    }

    if (v14 == v15)
    {
      v10 = 0;
    }

    else
    {
      v10 = v17;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_25;
  }

  v18 = *(v8 + 8) & 7;
  if (v18 != 6)
  {
    v19 = v8 + 16 * v18 + 16;
LABEL_23:
    if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      goto LABEL_25;
    }

    v20 = *(v19 + 72);
    if (*(v20 + 24) != v9)
    {
      goto LABEL_25;
    }

    v71 = *(v20 + 56);
    v100 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if ((~*(v71 + 8) & 7) == 0)
    {
      v71 = 0;
    }

    if (!v71)
    {
      goto LABEL_25;
    }

    v72 = *(v71 + 8) & 7;
    if (v72 == 6)
    {
      v73 = v71 + 24 * *(v71 + 16);
      v74 = (v73 + 120);
      if (v73 == -120)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v74 = (v71 + 16 * v72 + 16);
    }

    if (mlir::detail::constant_int_predicate_matcher::match(&v100, v74))
    {
      v79 = (((&a2[2 * ((*(a2 + 11) >> 23) & 1) + 8] + ((*(a2 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
      v80 = *v79 - 8;
      v32 = *v79 == 0;
      v83 = v79[3];
      v82 = v79 + 3;
      v81 = v83;
      if (v32)
      {
        v10 = 0;
      }

      else
      {
        v10 = v80;
      }

      v84 = (v81 - 1);
      if (!v81)
      {
        v84 = 0;
      }

      if (v81 != v82)
      {
        v11 = v84;
      }
    }

    goto LABEL_25;
  }

  v19 = v8 + 24 * *(v8 + 16) + 120;
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_25:
  v21 = *(*(v4 + 72) + 24);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (v21)
  {
    v22 = *(v21 + 8) & 7;
    if (v22 == 6)
    {
      v23 = v21 + 24 * *(v21 + 16) + 120;
      if (!v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = v21 + 16 * v22 + 16;
    }

    if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v24 = *(v23 + 72);
      if (*(v24 + 24) == *(a2[9] + 24))
      {
        v75 = *(v24 + 56);
        v100 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
        if ((~*(v75 + 8) & 7) == 0)
        {
          v75 = 0;
        }

        if (v75)
        {
          v76 = *(v75 + 8) & 7;
          if (v76 == 6)
          {
            v77 = v75 + 24 * *(v75 + 16);
            v78 = (v77 + 120);
            if (v77 == -120)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v78 = (v75 + 16 * v76 + 16);
          }

          if (mlir::detail::constant_int_predicate_matcher::match(&v100, v78))
          {
            v85 = (((&a2[2 * ((*(a2 + 11) >> 23) & 1) + 8] + ((*(a2 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
            v10 = *v85 ? *v85 - 8 : 0;
            v86 = v85[3];
            if (v86 != v85 + 3)
            {
              if (v86)
              {
                v11 = (v86 - 1);
              }

              else
              {
                v11 = 0;
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v11 | v10)
  {
    v97 = &v99;
    v98 = 0x600000000;
    v25 = *(v4 + 44);
    v26 = (v25 >> 23) & 1;
    v27 = (v25 >> 21) & 0x7F8;
    v28 = v4 + 64 + 16 * v26 + v27;
    v29 = 32 * *(v4 + 40);
    if (*(v28 + v29 + 24) != v28 + v29 + 24)
    {
      v30 = ((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + v29;
      v31 = *(v30 + 24);
      v32 = v31 == v30 + 24 || v31 == 0;
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31 - 8;
      }

      v34 = *(v33 + 32);
      if ((*(v34 + 46) & 0x80) != 0)
      {
        v35 = *(v34 + 72);
        v36 = *(v34 + 68);
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      v100 = v102;
      v101 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v100, v35, 0, v35, v36);
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v97, &v100);
      if (v100 != v102)
      {
        free(v100);
      }

      v37 = *(v4 + 44);
      v26 = (v37 >> 23) & 1;
      v27 = (v37 >> 21) & 0x7F8;
      v29 = 32 * *(v4 + 40);
    }

    v38 = *(v4 + 36);
    v39 = *(((v4 + 64 + 16 * v26 + v27) & 0xFFFFFFFFFFFFFFF8) + v29);
    v92 = v4 - 16;
    v93 = v6;
    if (v39)
    {
      v40 = v39 - 8;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v40 + 32);
    if ((*(v41 + 46) & 0x80) != 0)
    {
      v87 = *(v41 + 72);
      v91 = *(v41 + 68);
    }

    else
    {
      v87 = 0;
      v91 = 0;
    }

    v42 = (v4 - 16);
    if (!v38)
    {
      v42 = 0;
    }

    v90 = v42;
    if (!v38 || !v91 || !v98)
    {
LABEL_96:
      if (v38)
      {
        v63 = v92;
      }

      else
      {
        v63 = 0;
      }

      v94 = &v96;
      v95 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v94, v63, 0, v63, v38);
      v64 = *(a2 + 9);
      if (v64)
      {
        v65 = (a2 - 2);
      }

      else
      {
        v65 = 0;
      }

      llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v94, v65, 0, v65, v64);
      v66 = a2[3];
      v67 = *(*(v4 + 72) + 24);
      v68 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(a3 + 8, *(**v66 + 32));
      v100 = v66;
      v101 = v68;
      v102[0] = v103;
      v102[1] = 0x400000000;
      v103[4] = v104;
      v103[5] = 0x400000000;
      v104[4] = v105;
      v104[5] = 0x400000000;
      v105[8] = 4;
      v105[9] = v106;
      v105[10] = 0x100000000;
      v106[1] = v107;
      v106[2] = 0x100000000;
      v107[2] = 0;
      v107[1] = 0;
      v107[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v107[4] = 0;
      v107[6] = 0;
      mlir::scf::IfOp::build(a3 + 8, &v100, v94 & 0xFFFFFFFFFFFFFFF9 | 2, v95, v67);
    }

    v43 = 0;
    v44 = v97;
    v88 = v4;
    v89 = (v97 + 8 * v98);
    while (1)
    {
      v45 = v90;
      if (!v43)
      {
        goto LABEL_64;
      }

      v46 = *(v88 - 8) & 7;
      v47 = v92;
      v48 = v43;
      if (v46 == 6)
      {
        goto LABEL_62;
      }

      v49 = (5 - v46);
      v48 = v43 - v49;
      if (v43 > v49)
      {
        break;
      }

      v45 = (v92 - 16 * v43);
LABEL_64:
      v50 = *v45;
      if (*v45)
      {
        v51 = *(v87 + 32 * v43 + 24);
        while (1)
        {
          v52 = v50;
          v50 = *v50;
          if (v11)
          {
            break;
          }

LABEL_72:
          if (v10)
          {
            v55 = *(v52[2] + 16);
            if (v55)
            {
              v55 = *(v55 + 24) & 0xFFFFFFFFFFFFFFF8;
            }

            while (v55 != (*(v10 + 24) & 0xFFFFFFFFFFFFFFF8))
            {
              v56 = *(*(v55 + 16) + 16);
              if (v56)
              {
                v55 = *(v56 + 24) & 0xFFFFFFFFFFFFFFF8;
                if (v55)
                {
                  continue;
                }
              }

              goto LABEL_85;
            }

            (*(*a3 + 40))(a3);
            v60 = *v44;
            v61 = v52[1];
            if (v61)
            {
              v62 = *v52;
              *v61 = *v52;
              if (v62)
              {
                *(v62 + 8) = v52[1];
              }
            }

            v52[3] = v60;
            v52[1] = v60;
            v59 = *v60;
            *v52 = *v60;
            if (!v59)
            {
              goto LABEL_84;
            }

            goto LABEL_83;
          }

LABEL_85:
          if (!v50)
          {
            goto LABEL_92;
          }
        }

        v53 = *(v52[2] + 16);
        if (v53)
        {
          v53 = *(v53 + 24) & 0xFFFFFFFFFFFFFFF8;
        }

        while (v53 != (*(v11 + 24) & 0xFFFFFFFFFFFFFFF8))
        {
          v54 = *(*(v53 + 16) + 16);
          if (v54)
          {
            v53 = *(v54 + 24) & 0xFFFFFFFFFFFFFFF8;
            if (v53)
            {
              continue;
            }
          }

          goto LABEL_72;
        }

        (*(*a3 + 40))(a3);
        v57 = v52[1];
        if (v57)
        {
          v58 = *v52;
          *v57 = *v52;
          if (v58)
          {
            *(v58 + 8) = v52[1];
          }
        }

        v52[3] = v51;
        v52[1] = v51;
        v59 = *v51;
        *v52 = *v51;
        v60 = v51;
        if (!v59)
        {
          goto LABEL_84;
        }

LABEL_83:
        *(v59 + 8) = v52;
LABEL_84:
        *v60 = v52;
        (*(*a3 + 48))(a3, v52[2]);
        goto LABEL_85;
      }

LABEL_92:
      if (++v43 != v38 && v43 != v91 && ++v44 != v89)
      {
        continue;
      }

      v38 = *(v93 + 36);
      v4 = v88;
      goto LABEL_96;
    }

    v47 = v92 - 16 * v49;
LABEL_62:
    v45 = (v47 - 24 * v48);
    goto LABEL_64;
  }

LABEL_103:
  result = 0;
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.if";
    v6[3] = 6;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CombineIfs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CombineIfs]";
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

void anonymous namespace::CombineNestedIfs::~CombineNestedIfs(_anonymous_namespace_::CombineNestedIfs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CombineNestedIfs::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2 + 64;
  v4 = (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v4)
  {
    v5 = *v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  v7 = (v5 + 32);
  if (v6 == v7)
  {
    goto LABEL_7;
  }

  v8 = *v7;
  if (v6 == v8 || *(v6 + 8) != v8)
  {
    goto LABEL_7;
  }

  v15 = v4[3];
  v13 = v4 + 3;
  v14 = v15;
  if (v15 && v14 != v13)
  {
    v52 = v14[4];
    v53 = v14 + 3;
    if (v52 == v53 || *(v52 + 8) != v53)
    {
      goto LABEL_7;
    }
  }

  v17 = *(*(v6 + 48) + 16);
  v18 = v17 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? v6 : 0;
  if (v17 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    goto LABEL_7;
  }

  v19 = v6 + 64 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 32 * *(v6 + 40);
  v22 = *(v19 + 24);
  v21 = v19 + 24;
  v20 = v22;
  if (v22 && v20 != v21)
  {
    v54 = *(v20 + 32);
    v55 = v20 + 24;
    if (v54 == v55 || *(v54 + 8) != v55)
    {
      goto LABEL_7;
    }
  }

  if ((*(v8 + 46) & 0x80) != 0)
  {
    v24 = *(v8 + 72);
    v25 = *(v8 + 68);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v62 = v64;
  v63 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v62, v24, 0, v24, v25);
  v26 = *(a2 + 40);
  v27 = v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
  v60[0] = v61;
  v60[1] = 0x600000000;
  v28 = ((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v26;
  v31 = *(v28 + 24);
  v29 = v28 + 24;
  v30 = v31;
  if (v31 && v30 != v29)
  {
    v32 = mlir::scf::IfOp::elseYield(a2);
    if ((*(v32 + 46) & 0x80) != 0)
    {
      v33 = *(v32 + 72);
      v34 = *(v32 + 68);
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v60, v61, v33, 0, v33, v34);
  }

  v58[0] = v59;
  v58[1] = 0xC00000000;
  if (!v63)
  {
LABEL_55:
    v49 = *(a2 + 24);
    *&v65 = *(*(a2 + 72) + 24);
    v57 = *(*(v18 + 72) + 24);
    v56 = mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>((a3 + 8), v49, &v65, &v57) - 16;
    v50 = *(a2 + 36);
    v51 = a2 - 16;
    if (!v50)
    {
      v51 = 0;
    }

    v65 = v51;
    v66 = v51;
    v67 = v50;
    mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>(a3 + 8, v49, &v65, &v56);
  }

  v35 = 0;
  v36 = v62;
  v37 = 8 * v63;
  while (1)
  {
    v38 = *(*v36 + 8) & 7;
    if (v38 == 7)
    {
      v39 = 0;
    }

    else
    {
      v39 = *v36;
    }

    if (v39)
    {
      v40 = *(v39 + 8) & 7;
      if (v40 == 6)
      {
        v39 += 24 * *(v39 + 16) + 120;
      }

      else
      {
        v39 += 16 * v40 + 16;
      }
    }

    if (v39 != v18)
    {
      if (mlir::Value::getParentRegion(v36) == ((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40))
      {
        break;
      }

      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v58, v35);
      goto LABEL_54;
    }

    if (v38 == 6)
    {
      v38 = (*(*v36 + 16) + 6);
    }

    v41 = *(v6 + 40);
    v42 = v6 + 64 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8);
    v43 = ((v42 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v41;
    v44 = *(v43 + 24);
    v45 = v44 == v43 + 24 || v44 == 0;
    v46 = v45 ? 0 : v44 - 8;
    if (*(*(*(v46 + 32) + 72) + 32 * v38 + 24) != *(v60[0] + v35))
    {
      break;
    }

    v47 = *(32 * v41 + v42);
    if (v47)
    {
      v48 = v47 - 8;
    }

    else
    {
      v48 = 0;
    }

    *(v62 + v35) = *(*(*(v48 + 32) + 72) + 32 * v38 + 24);
LABEL_54:
    ++v35;
    v36 = (v36 + 8);
    v37 -= 8;
    if (!v37)
    {
      goto LABEL_55;
    }
  }

  if (v58[0] != v59)
  {
    free(v58[0]);
  }

  if (v60[0] != v61)
  {
    free(v60[0]);
  }

  if (v62 != v64)
  {
    free(v62);
  }

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

char *mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AndIOp>(a1, *(**a2 + 32));
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
  mlir::arith::AndIOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
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

void mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  v9 = a3[1];
  v10[0] = *a3;
  v10[1] = v9;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v11, v10);
  mlir::scf::IfOp::build(a1, v12, v11[0], v11[1], *a4);
}

char *llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 8);
  if (*a1 + 8 * v12 == a2)
  {
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a1, a3, a4, a5, a6);
    return (*a1 + v11);
  }

  v13 = a6 - a4;
  v14 = a6 - a4 + v12;
  if (v14 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v14, 8);
    v10 = *a1;
    v12 = *(a1 + 8);
  }

  v15 = (v10 + v11);
  v16 = 8 * v12;
  v17 = (v10 + 8 * v12);
  v18 = 8 * v12 - v11;
  v19 = v18 >> 3;
  if (v18 >> 3 >= v13)
  {
    llvm::SmallVectorImpl<mlir::Value>::append<std::move_iterator<mlir::Value*>,void>(a1, &v17[-v13], (v10 + 8 * v12));
    if (&v17[-v13] != v15)
    {
      memmove(&v15[8 * v13], v15, &v17[-v13] - v15);
    }

    if (a6 == v7)
    {
      return v15;
    }

    v34 = v15;
    for (i = a3 - 16 * v7; ; i -= 16)
    {
      if (v7)
      {
        if (!a3)
        {
          v37 = 0;
          v38 = v7;
          goto LABEL_40;
        }

        v36 = *(a3 + 8) & 7;
        v37 = a3;
        v38 = v7;
        if (v36 == 6)
        {
          goto LABEL_40;
        }

        v39 = (5 - v36);
        v40 = i;
        v38 = v7 - v39;
        if (v7 > v39)
        {
          v37 = a3 - 16 * v39;
LABEL_40:
          v40 = v37 - 24 * v38;
        }
      }

      else
      {
        v40 = a3;
      }

      *v34++ = v40;
      if (a6 == ++v7)
      {
        return v15;
      }
    }
  }

  v20 = v12 + v13;
  *(a1 + 8) = v20;
  if (v16 != v11)
  {
    memcpy((v10 + 8 * v20 - 8 * v19), v15, v18);
    v21 = v15;
    v22 = a3 - 16 * v7;
    do
    {
      if (v7)
      {
        if (!a3)
        {
          v24 = 0;
          v25 = v7;
          goto LABEL_14;
        }

        v23 = *(a3 + 8) & 7;
        v24 = a3;
        v25 = v7;
        if (v23 == 6)
        {
          goto LABEL_14;
        }

        v26 = (5 - v23);
        v27 = v22;
        v25 = v7 - v26;
        if (v7 > v26)
        {
          v24 = a3 - 16 * v26;
LABEL_14:
          v27 = v24 - 24 * v25;
        }
      }

      else
      {
        v27 = a3;
      }

      *v21++ = v27;
      ++v7;
      v22 -= 16;
      --v19;
    }

    while (v19);
  }

  if (v7 != a6)
  {
    v28 = a3 - 16 * v7;
    do
    {
      if (v7)
      {
        if (!a3)
        {
          v30 = 0;
          v31 = v7;
          goto LABEL_25;
        }

        v29 = *(a3 + 8) & 7;
        v30 = a3;
        v31 = v7;
        if (v29 == 6)
        {
          goto LABEL_25;
        }

        v32 = (5 - v29);
        v33 = v28;
        v31 = v7 - v32;
        if (v7 > v32)
        {
          v30 = a3 - 16 * v32;
LABEL_25:
          v33 = v30 - 24 * v31;
        }
      }

      else
      {
        v33 = a3;
      }

      *v17++ = v33;
      ++v7;
      v28 -= 16;
    }

    while (a6 != v7);
  }

  return v15;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CombineNestedIfs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CombineNestedIfs]";
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

void anonymous namespace::ConditionPropagation::~ConditionPropagation(_anonymous_namespace_::ConditionPropagation *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ConditionPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 != 6)
  {
    v8 = v5 + 16 * v6 + 16;
LABEL_8:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(v8 + 48) + 32))(*(v8 + 48), v9))
    {
      return 0;
    }

    goto LABEL_10;
  }

  v7 = v5 + 24 * *(v5 + 16);
  v8 = v7 + 120;
  if (v7 != -120)
  {
    goto LABEL_8;
  }

LABEL_10:
  v31 = (a3 + 1);
  v33 = mlir::IntegerType::get(a3[1], 1, 0);
  v11 = **(*(a2 + 72) + 24);
  if (!v11)
  {
    v12 = 0;
    return v12 & 1;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = v11;
    v16 = v11[2];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v17 + 24) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = 0;
    }

    v11 = *v11;
    v19 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    do
    {
      if (v18 == v19)
      {
        if (!v13)
        {
          v23 = *(a2 + 24);
          IntegerAttr = mlir::Builder::getIntegerAttr(v31, v33, 1uLL);
          v13 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(v31, v23, &v33, &IntegerAttr) - 16;
          v16 = v15[2];
        }

        v24 = v13;
        ((*a3)[5])(a3, v16);
        v25 = v15[1];
        if (v25)
        {
          v26 = *v15;
          *v25 = *v15;
          if (v26)
          {
            *(v26 + 8) = v15[1];
          }
        }

        v15[3] = v13;
        v15[1] = v13;
        v27 = *v13;
        *v15 = *v13;
        if (!v27)
        {
          goto LABEL_31;
        }

LABEL_30:
        *(v27 + 8) = v15;
        goto LABEL_31;
      }

      v20 = *(*(v18 + 16) + 16);
      if (!v20)
      {
        break;
      }

      v18 = *(v20 + 24) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v18);
    v21 = *(v17 + 24) & 0xFFFFFFFFFFFFFFF8;
    while (v19 + 24 != v21)
    {
      v22 = *(*(v21 + 16) + 16);
      if (v22)
      {
        v21 = *(v22 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    if (!v14)
    {
      v28 = *(a2 + 24);
      IntegerAttr = mlir::Builder::getIntegerAttr(v31, v33, 0);
      v14 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(v31, v28, &v33, &IntegerAttr) - 16;
      v16 = v15[2];
    }

    v24 = v14;
    ((*a3)[5])(a3, v16);
    v29 = v15[1];
    if (v29)
    {
      v30 = *v15;
      *v29 = *v15;
      if (v30)
      {
        *(v30 + 8) = v15[1];
      }
    }

    v15[3] = v14;
    v15[1] = v14;
    v27 = *v14;
    *v15 = *v14;
    if (v27)
    {
      goto LABEL_30;
    }

LABEL_31:
    *v24 = v15;
    ((*a3)[6])(a3, v16);
    v12 = 1;
LABEL_32:
    ;
  }

  while (v11);
  return v12 & 1;
}

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v20[0] = a2;
  v20[1] = v8;
  v20[2] = &v21;
  v20[3] = 0x400000000;
  v22[0] = v23;
  v22[1] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[8] = 4;
  v24[9] = v25;
  v24[10] = 0x100000000;
  v25[1] = v26;
  v25[2] = 0x100000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v26[4] = 0;
  v26[6] = 0;
  v9 = *a3;
  v10 = *a4;
  if (*a4)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v19 = v9;
  v14 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v20);
  *v14 = v10;
  v14[1] = v13;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v22, &v19, v20);
  v15 = mlir::Operation::create(v20);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ConditionPropagation>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ConditionPropagation]";
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

void anonymous namespace::ConvertTrivialIfToSelect::~ConvertTrivialIfToSelect(_anonymous_namespace_::ConvertTrivialIfToSelect *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ConvertTrivialIfToSelect::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = a3;
    v6 = (((a2 + 8 * *(a2 + 47) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    if (*v6)
    {
      v7 = *v6 - 8;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v7 + 32);
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v9 = *(v8 + 72);
      v10 = *(v8 + 68);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v32 = *(*(a2 + 72) + 24);
    v11 = a2 + 64;
    v12 = v6[3];
    if (v12 == v6 + 3 || v12 == 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 - 1;
    }

    v15 = v14[4];
    if ((*(v15 + 46) & 0x80) != 0)
    {
      v16 = *(v15 + 72);
      v17 = *(v15 + 68);
      v34 = v36;
      v35 = 0x600000000;
      if (v10 && v17)
      {
        v18 = v17 - 1;
        v19 = v10 - 1;
        v20 = 24;
        do
        {
          v21 = *(v9 + v20);
          v22 = *(v16 + v20);
          v37 = v21;
          v38[0] = v22;
          v23 = ((v11 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
          if (mlir::Value::getParentRegion(&v37) == v23 || (v24 = ((v11 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24, v24 == mlir::Value::getParentRegion(v38)))
          {
            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v34, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
          }

          v25 = v18-- != 0;
          v26 = v25;
          v25 = v19-- != 0;
          if (!v25)
          {
            break;
          }

          v20 += 32;
        }

        while ((v26 & 1) != 0);
        v27 = v35;
        v3 = *(a2 + 36);
        v4 = a3;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v34 = v36;
      v35 = 0x600000000;
    }

    if (v27 != v3)
    {
      v28 = *(a2 + 24);
      v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(v4 + 8, *(**v28 + 32));
      v37 = v28;
      v38[0] = v29;
      v38[1] = v39;
      v38[2] = 0x400000000;
      v39[4] = v40;
      v39[5] = 0x400000000;
      v40[4] = v41;
      v40[5] = 0x400000000;
      v41[8] = 4;
      v41[9] = v42;
      v41[10] = 0x100000000;
      v42[1] = v43;
      v42[2] = 0x100000000;
      v43[2] = 0;
      v43[1] = 0;
      v43[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v43[4] = 0;
      v43[6] = 0;
      mlir::scf::IfOp::build(v4 + 8, &v37, v34 & 0xFFFFFFFFFFFFFFF9 | 2, v35, v32);
    }

    if (v34 != v36)
    {
      free(v34);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ConvertTrivialIfToSelect>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ConvertTrivialIfToSelect]";
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

void anonymous namespace::RemoveEmptyElseBranch::~RemoveEmptyElseBranch(_anonymous_namespace_::RemoveEmptyElseBranch *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveEmptyElseBranch::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  if (*(a2 + 9))
  {
    return 0;
  }

  v4 = (a2 + 64);
  v5 = ((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  v8 = *(v5 + 24);
  v7 = v5 + 24;
  v6 = v8;
  if (!v8 || v6 == v7)
  {
    return 0;
  }

  v10 = *(v6 + 32);
  v11 = v6 + 24;
  if (v10 == v11 || *(v10 + 8) != v11)
  {
    return 0;
  }

  v14 = mlir::Operation::cloneWithoutRegions(a2);
  mlir::OpBuilder::insert((a3 + 8), v14);
  v15 = ((&v14[4 * ((v14[11] >> 23) & 1) + 17] + ((v14[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v14[10];
  mlir::RewriterBase::inlineRegionBefore(a3, (((&v4[4 * ((*(a2 + 11) >> 23) & 1) + 1] + ((*(a2 + 11) >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10)), v15, *(v15 + 8));
  (*(*a3 + 16))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveEmptyElseBranch>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveEmptyElseBranch]";
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

void anonymous namespace::RemoveStaticCondition::~RemoveStaticCondition(_anonymous_namespace_::RemoveStaticCondition *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveStaticCondition::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  v15 = &v16;
  v16 = 0;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v15, v8);
  if (result)
  {
    v10 = *(v16 + 24);
    if (v10 > 0x40)
    {
      v11 = llvm::APInt::countLeadingZerosSlowCase((v16 + 16)) == v10;
    }

    else
    {
      v11 = *(v16 + 16) == 0;
    }

    v12 = v11;
    v13 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    if (v12)
    {
      if (v13[3] == v13 + 3)
      {
        (*(*a3 + 16))(a3, a2);
        return 1;
      }

      v14 = v13[4];
    }

    else
    {
      v14 = v13[1];
    }

    replaceOpWithRegion(a3, a2, v14);
    return 1;
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::BoolAttr>::match(void **a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v12[0] = v13;
    v12[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v12);
    v5 = v12[0];
    v6 = (*v12[0] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && (v8 = v6[1], *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v8[2] == 1)
    {
      if (*a1)
      {
        **a1 = v6;
        v9 = 1;
        v5 = v12[0];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    if (v5 != v13)
    {
      free(v5);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveStaticCondition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveStaticCondition]";
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

void anonymous namespace::RemoveUnusedResults::~RemoveUnusedResults(_anonymous_namespace_::RemoveUnusedResults *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveUnusedResults::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[8] = *MEMORY[0x277D85DE8];
  v26 = v28;
  v27 = 0x400000000;
  v3 = *(a2 + 36);
  if (!v3)
  {
    goto LABEL_27;
  }

  v6 = 0;
  v7 = (a2 - 16);
  v8 = (a2 - 16);
  v9 = (a2 - 16);
  do
  {
    if (v6)
    {
      v10 = *(a2 - 8) & 7;
      if (v10 == 6)
      {
        v11 = v7;
        v12 = v6;
        if (*v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = (5 - v10);
        if (v6 <= v14)
        {
          if (!*v8)
          {
            goto LABEL_17;
          }

LABEL_13:
          v13 = v8;
          v12 = v6 - v14;
          if (v6 > v14)
          {
            v11 = &v7[-2 * v14];
LABEL_15:
            v13 = &v11[-3 * v12];
          }

LABEL_16:
          llvm::SmallVectorTemplateBase<mlir::OpResult,true>::push_back(&v26, v13);
          goto LABEL_17;
        }

        if (v9[v14])
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v13 = v7;
      if (*v7)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    ++v6;
    v9 -= 3;
    v8 -= 2;
  }

  while (v3 != v6);
  v15 = v26;
  if (v27 != *(a2 + 36))
  {
    v23 = &v25;
    v24 = 0x400000000;
    if (v27)
    {
      v16 = 8 * v27;
      do
      {
        v17 = *v15++;
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v23, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
        v16 -= 8;
      }

      while (v16);
    }

    v18 = *(a2 + 24);
    v19 = *(*(a2 + 72) + 24);
    v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(a3 + 8, *(**v18 + 32));
    v29[0] = v18;
    v29[1] = v20;
    v29[2] = v30;
    v29[3] = 0x400000000;
    v30[4] = v31;
    v30[5] = 0x400000000;
    v31[4] = v32;
    v31[5] = 0x400000000;
    v32[8] = 4;
    v32[9] = v33;
    v32[10] = 0x100000000;
    v33[1] = v34;
    v33[2] = 0x100000000;
    v34[1] = 0;
    v34[2] = 0;
    v34[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v34[4] = 0;
    v34[6] = 0;
    mlir::scf::IfOp::build(a3 + 8, v29, v23 & 0xFFFFFFFFFFFFFFF9 | 2, v24, v19);
  }

  if (v26 != v28)
  {
    free(v26);
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

void anonymous namespace::RemoveUnusedResults::transferBody(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  (*(*a5 + 32))(a5, a1, a2, a2 + 32, 0, 0);
  v9 = *(a2 + 32);
  v14 = v16;
  *v15 = 0x400000000;
  if (a4)
  {
    v10 = 8 * a4;
    do
    {
      v11 = *(*a3 + 8) & 7;
      if (*a3)
      {
        v12 = v11 == 6;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v11 = (*(*a3 + 16) + 6);
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v14, *(*(v9 + 72) + 32 * v11 + 24));
      a3 += 8;
      v10 -= 8;
    }

    while (v10);
  }

  (*(*a5 + 40))(a5, v9);
  if ((*(v9 + 46) & 0x80) != 0)
  {
    mlir::detail::OperandStorage::setOperands((v9 + 64), v9, v14 & 0xFFFFFFFFFFFFFFF9, v15[0]);
  }

  (*(*a5 + 48))(a5, v9);
  if (v14 != v16)
  {
    free(v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveUnusedResults>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveUnusedResults]";
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

void anonymous namespace::ReplaceIfYieldWithConditionOrValue::~ReplaceIfYieldWithConditionOrValue(_anonymous_namespace_::ReplaceIfYieldWithConditionOrValue *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ReplaceIfYieldWithConditionOrValue::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v81[8] = *MEMORY[0x277D85DE8];
  if (*(a2 + 36))
  {
    v4 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    if (*v4)
    {
      v5 = *v4 - 8;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v5 + 32);
    v7 = v4[3];
    if (v7)
    {
      v8 = v7 - 8;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v8 + 32);
    v11 = (a3 + 1);
    v10 = a3[1];
    a3[3] = *(a2 + 16);
    a3[4] = a2;
    v12 = mlir::IntegerType::get(v10, 1, 0);
    if ((*(v6 + 46) & 0x80) != 0)
    {
      v13 = *(v6 + 68);
      v14 = *(v6 + 72);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    if ((*(v9 + 46) & 0x80) != 0)
    {
      v15 = *(v9 + 68);
      v16 = *(v9 + 72);
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    v17 = *(a2 + 36);
    v18 = (a2 - 16);
    v69 = 0;
    if (!v17)
    {
      v18 = 0;
    }

    v72 = v18;
    if (v13)
    {
      if (v15)
      {
        v65 = v12;
        v66 = v11;
        if (v17)
        {
          v19 = 0;
          v69 = 0;
          v20 = 0;
          v70 = 32 * v17 - 32;
          v71 = 32 * v15 - 32;
          v21 = 32 * v13 - 32;
          v22 = v16 + 24;
          v23 = v14 + 24;
          v24 = (a2 - 16);
          while (1)
          {
            v25 = v72;
            if (!v19)
            {
              goto LABEL_23;
            }

            v26 = *(a2 - 8) & 7;
            v27 = a2 - 16;
            v28 = v20;
            if (v26 != 6)
            {
              v29 = (5 - v26);
              v25 = v24;
              v28 = v20 - v29;
              if (v20 <= v29)
              {
                goto LABEL_23;
              }

              v27 = a2 - 16 - 16 * v29;
            }

            v25 = (v27 - 24 * v28);
LABEL_23:
            v30 = *(v23 + v19);
            v31 = *(v22 + v19);
            if (v30 == v31)
            {
              if (!*v25)
              {
                goto LABEL_75;
              }

              v76[0] = *(v23 + v19);
              goto LABEL_33;
            }

            v74 = 0;
            v75 = 0;
            v76[0] = &v75;
            if ((~*(v30 + 8) & 7) != 0)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            if (!v32)
            {
              goto LABEL_75;
            }

            v33 = *(v32 + 8) & 7;
            if (v33 == 6)
            {
              v34 = v32 + 24 * *(v32 + 16);
              v35 = v34 + 120;
              if (v34 == -120)
              {
                goto LABEL_75;
              }
            }

            else
            {
              v35 = v32 + 16 * v33 + 16;
            }

            if (!mlir::detail::constant_op_binder<mlir::BoolAttr>::match(v76, v35))
            {
              goto LABEL_75;
            }

            v73 = &v74;
            v36 = (~*(v31 + 8) & 7) != 0 ? v31 : 0;
            if (!v36)
            {
              goto LABEL_75;
            }

            v37 = *(v36 + 8) & 7;
            if (v37 != 6)
            {
              v39 = v36 + 16 * v37 + 16;
LABEL_44:
              if ((mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v73, v39) & 1) == 0)
              {
                goto LABEL_75;
              }

              v40 = *(v75 + 24);
              if (v40 > 0x40)
              {
                v41 = llvm::APInt::countLeadingZerosSlowCase((v75 + 16)) == v40;
              }

              else
              {
                v41 = *(v75 + 16) == 0;
              }

              v42 = v41;
              v43 = *(v74 + 24);
              if (v43 > 0x40)
              {
                v67 = v42;
                v45 = llvm::APInt::countLeadingZerosSlowCase((v74 + 16));
                v42 = v67;
                v44 = v45 == v43;
              }

              else
              {
                v44 = *(v74 + 16) == 0;
              }

              v46 = v44;
              if (((v42 ^ 1 | v46) & 1) == 0 && *v25)
              {
                v68 = v42;
                if ((~*(v30 + 8) & 7) != 0)
                {
                  v47 = v30;
                }

                else
                {
                  v47 = 0;
                }

                v48 = *(v47 + 8) & 7;
                v64 = v46;
                if (v48 == 6)
                {
                  v49 = v47 + 24 * *(v47 + 16) + 120;
                }

                else
                {
                  v49 = v47 + 16 * v48 + 16;
                }

                v50 = *(v49 + 48);
                if (*(v50 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
                {
                  v51 = (*(v50 + 8) + 32);
                }

                else
                {
                  v51 = (v50 + 24);
                }

                v60 = *(a2 + 24);
                v61 = *v51;
                v63 = *(*(a2 + 72) + 24);
                v69 = 1;
                IntegerAttr = mlir::Builder::getIntegerAttr(v66, v65, 1uLL);
                v62 = (*(*v61 + 24))(v61, v66, IntegerAttr, v65, *(a2 + 24)) - 16;
                v53 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::XOrIOp>(v66, *(**v60 + 32));
                v76[0] = v60;
                v76[1] = v53;
                v76[2] = v77;
                v76[3] = 0x400000000;
                v77[4] = v78;
                v77[5] = 0x400000000;
                v78[4] = v79;
                v78[5] = 0x400000000;
                v79[8] = 4;
                v79[9] = v80;
                v79[10] = 0x100000000;
                v80[1] = v81;
                v80[2] = 0x100000000;
                v81[1] = 0;
                v81[2] = 0;
                v81[3] = &mlir::detail::TypeIDResolver<void,void>::id;
                v81[4] = 0;
                v81[6] = 0;
                mlir::arith::XOrIOp::build(v66, v76, v63, v62);
                v54 = mlir::Operation::create(v76);
                mlir::OpBuilder::insert(v66, v54);
                v55 = v54;
                v56 = *(*(v54 + 6) + 16);
                mlir::OperationState::~OperationState(v76);
                if (v56 == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
                {
                  v57 = v55;
                }

                else
                {
                  v57 = 0;
                }

                v76[0] = (v57 - 16);
                mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v25, v76);
                v42 = v68;
                v46 = v64;
              }

              if (((v42 | v46 ^ 1) & 1) != 0 || !*v25)
              {
                goto LABEL_75;
              }

              v76[0] = *(*(a2 + 72) + 24);
LABEL_33:
              mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v25, v76);
              v69 = 1;
              goto LABEL_75;
            }

            v38 = v36 + 24 * *(v36 + 16);
            v39 = v38 + 120;
            if (v38 != -120)
            {
              goto LABEL_44;
            }

LABEL_75:
            if (v21 != v19 && v71 != v19)
            {
              ++v20;
              v24 -= 2;
              v41 = v70 == v19;
              v19 += 32;
              if (!v41)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

    result = v69 & 1;
  }

  else
  {
    result = 0;
  }

  v59 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ReplaceIfYieldWithConditionOrValue>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ReplaceIfYieldWithConditionOrValue]";
  v6 = 119;
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "scf.reduce", 0xA);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder::~ParallelOpSingleOrZeroIterationDimsFolder(_anonymous_namespace_::ParallelOpSingleOrZeroIterationDimsFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void))
{
  v118[8] = *MEMORY[0x277D85DE8];
  v93 = a2;
  v81 = *(a2 + 24);
  v103 = v105;
  v104 = 0x600000000;
  v100 = v102;
  v101 = 0x600000000;
  v97 = v99;
  v98 = 0x600000000;
  v85[0] = 0;
  v85[1] = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v3 = *(a2 + 44);
  v4 = a2 + 16 * ((v3 >> 23) & 1);
  v7 = *(v4 + 64);
  v5 = v4 + 64;
  v6 = v7;
  if ((v3 & 0x800000) != 0)
  {
    v8 = *(a2 + 72);
    v9 = (*(v5 + 4) + v6);
    v10 = v9 - v6;
    v11 = &v8[32 * v6];
    v12 = v8;
  }

  else
  {
    v8 = 0;
    v12 = 0;
    v9 = (*(v5 + 4) + v6);
    v10 = v9 - v6;
    v11 = 32 * v6;
  }

  v13 = &v12[32 * v9];
  v14 = (*(v5 + 8) + v9) - v9;
  mlir::scf::ParallelOp::getInductionVars(&v93, &v94);
  v106 = v8;
  v107 = v6;
  v108 = v11;
  v109 = v10;
  v110 = v13;
  v111 = v14;
  v112 = v114;
  v113 = 0x600000000;
  if (v95)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v112, &v94);
  }

  if (v94 != &v96)
  {
    free(v94);
  }

  v15 = 0;
  if (v107 && v109 && v111)
  {
    v16 = 0;
    v17 = v111 - 1;
    v18 = v109 - 1;
    v19 = v112;
    v20 = v107 - 1;
    v83 = v110 + 24;
    v84 = 32 * v113;
    v21 = v108 + 3;
    v22 = v106 + 24;
    while (1)
    {
      v23 = v17;
      if (v84 == v16)
      {
        v15 = 0;
        goto LABEL_22;
      }

      v24 = *&v22[v16];
      v25 = v21[v16 / 8];
      v26 = *&v83[v16];
      v27 = mlir::constantTripCount(v24 | 4, v25 | 4, v26 | 4);
      if ((v28 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v27 != 1)
      {
        break;
      }

      v29 = *v19;
      ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp((a3 + 1), v81, v24 | 4);
      v94 = v29;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v85, &v94) = ConstantIndexOp;
LABEL_17:
      v15 = 0;
      if (v20)
      {
        if (v18)
        {
          ++v19;
          v16 += 32;
          v17 = v23 - 1;
          --v18;
          --v20;
          if (v23)
          {
            continue;
          }
        }
      }

      goto LABEL_22;
    }

    if (!v27)
    {
      v76 = *(v93 + 44);
      v77 = (v93 + 16 * ((v76 >> 23) & 1));
      v78 = v77[19];
      v79 = (v77[17] + v77[16] + v77[18]);
      if ((v76 & 0x800000) != 0)
      {
        v80 = *(v93 + 72);
      }

      (**a3)(a3);
      v15 = 1;
      goto LABEL_22;
    }

LABEL_15:
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v103, v24);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v100, v25);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v97, v26);
    goto LABEL_17;
  }

LABEL_22:
  if (v112 != v114)
  {
    free(v112);
  }

  if ((v15 & 1) == 0)
  {
    v31 = v93;
    v32 = *(v93 + 44);
    v33 = (v32 >> 23) & 1;
    v34 = v93 + 16 * v33;
    v37 = *(v34 + 64);
    v35 = (v34 + 64);
    v36 = v37;
    if (v104 == v37)
    {
      v38 = 0;
      goto LABEL_65;
    }

    if (v104)
    {
      v39 = *(v93 + 24);
      v40 = (v35[1] + v36 + v35[2]);
      v41 = v35[3];
      if ((v32 & 0x800000) != 0)
      {
        v42 = *(v93 + 72);
      }

      else
      {
        v42 = 0;
      }

      v43 = v42 + 32 * v40;
      v44 = (v41 + v40) - v40;
      v45 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ParallelOp>((a3 + 1), *(**v39 + 32));
      v106 = v39;
      v107 = v45;
      v108 = &v110;
      v109 = 0x400000000;
      v114[0] = v115;
      v114[1] = 0x400000000;
      v115[4] = v116;
      v115[5] = 0x400000000;
      v116[8] = 4;
      v116[9] = v117;
      v116[10] = 0x100000000;
      v117[1] = v118;
      v117[2] = 0x100000000;
      v118[2] = 0;
      v118[1] = 0;
      v118[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v118[4] = 0;
      v118[6] = 0;
      mlir::scf::ParallelOp::build((a3 + 1), &v106, v103 & 0xFFFFFFFFFFFFFFF9, v104, v100 & 0xFFFFFFFFFFFFFFF9, v101, v97 & 0xFFFFFFFFFFFFFFF9, v98, v43 & 0xFFFFFFFFFFFFFFF9 | 2, v44);
    }

    v106 = &v108;
    v107 = 0x600000000;
    v46 = (v35[1] + v36 + v35[2]);
    v47 = (v35[3] + v46) - v46;
    if (v47 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, &v108, v47, 8);
      v31 = v93;
      v32 = *(v93 + 44);
      v33 = (v32 >> 23) & 1;
    }

    v48 = (v32 >> 21) & 0x7F8;
    v49 = 32 * *(v31 + 40);
    v50 = *(((v31 + 16 * v33 + v48 + 71) & 0xFFFFFFFFFFFFFFF8) + v49 + 8);
    if (v50)
    {
      v51 = v50 - 8;
    }

    else
    {
      v51 = 0;
    }

    v52 = *(v51 + 40);
    v53 = (v51 + 32);
    if (v52 != v53)
    {
      v54 = *v53;
      if (v52 != *v53)
      {
        do
        {
          mlir::OpBuilder::clone((a3 + 1), v52, v85);
          v52 = *(v52 + 8);
        }

        while (v52 != v54);
        v31 = v93;
        v55 = *(v93 + 44);
        v33 = (v55 >> 23) & 1;
        v48 = (v55 >> 21) & 0x7F8;
        v49 = 32 * *(v93 + 40);
      }
    }

    v56 = *(((v31 + 16 * v33 + v48 + 71) & 0xFFFFFFFFFFFFFFF8) + v49 + 8);
    if (v56)
    {
      v57 = v56 - 8;
    }

    else
    {
      v57 = 0;
    }

    v58 = *(v57 + 32);
    v59 = *(v58 + 44);
    v60 = *&v59 & 0x7FFFFFLL;
    if ((v59 & 0x7FFFFF) != 0)
    {
      v61 = 0;
      do
      {
        v62 = *(((v58 + 64 + 16 * ((*(v58 + 44) >> 23) & 1) + ((*(v58 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v58 + 40) + 24 * v61 + 8);
        if (v62)
        {
          v63 = v62 - 8;
        }

        else
        {
          v63 = 0;
        }

        v64 = *(*(v93 + 72) + 32 * (*(v93 + 84) + *(v93 + 80) + *(v93 + 88)) + 32 * v107 + 24);
        v94 = **(v63 + 48);
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v85, &v94) = v64;
        v65 = *(*(v63 + 48) + 8);
        v66 = *(*(v58 + 72) + 32 * v61 + 24);
        v94 = v66;
        v67 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v85, &v94);
        if (v67 && v67 != v85[0] + 16 * v86)
        {
          v66 = *(v67 + 8);
        }

        v94 = v65;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v85, &v94) = v66;
        v70 = *(v63 + 32);
        v69 = *(v63 + 40);
        v68 = (v63 + 32);
        if (v69 != v68 && v69 != v70)
        {
          do
          {
            mlir::OpBuilder::clone((a3 + 1), v69, v85);
            v69 = *(v69 + 8);
          }

          while (v69 != v70);
          v70 = *v68;
        }

        v72 = *(*(v70 + 72) + 24);
        v94 = v72;
        v73 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v85, &v94);
        if (v73 && v73 != v85[0] + 16 * v86)
        {
          v72 = *(v73 + 8);
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v106, v72);
        ++v61;
      }

      while (v61 != v60);
      v31 = v93;
    }

    (**a3)(a3, v31, v106 & 0xFFFFFFFFFFFFFFF9, v107);
    if (v106 != &v108)
    {
      free(v106);
    }
  }

  v38 = 1;
LABEL_65:
  MEMORY[0x25F891030](v90, 8);
  MEMORY[0x25F891030](v87, 8);
  MEMORY[0x25F891030](v85[0], 8);
  if (v97 != v99)
  {
    free(v97);
  }

  if (v100 != v102)
  {
    free(v100);
  }

  if (v103 != v105)
  {
    free(v103);
  }

  v74 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ParallelOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.parallel";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ParallelOpSingleOrZeroIterationDimsFolder]";
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

void anonymous namespace::MergeNestedParallelLoops::~MergeNestedParallelLoops(_anonymous_namespace_::MergeNestedParallelLoops *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MergeNestedParallelLoops::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93[8] = *MEMORY[0x277D85DE8];
  v3 = a2 + 64;
  v4 = *(a2 + 44);
  v5 = (a2 + 64 + 16 * ((v4 >> 23) & 1));
  v6 = *(((v5 + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7[5];
  if (v8 != v7 + 4)
  {
    v9 = v7[4];
    if (v8 != v9 && *(v8 + 8) == v9)
    {
      v10 = *(*(v8 + 48) + 16);
      v11 = v10 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id;
      v12 = v10 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id ? v7[5] : 0;
      v76 = v12;
      if (v11)
      {
        v17 = v7[6];
        v18 = v7[7];
        if (v17 == v18)
        {
LABEL_45:
          if (!v5[3])
          {
            v40 = *(v12 + 44);
            v41 = v12 + 16 * ((v40 >> 23) & 1);
            if (!*(v41 + 76))
            {
              v42 = *v5;
              if ((v4 & 0x800000) != 0)
              {
                v43 = *(a2 + 72);
              }

              else
              {
                v43 = 0;
              }

              v44 = *(v41 + 64);
              if ((v40 & 0x800000) != 0)
              {
                v45 = *(v12 + 72);
              }

              else
              {
                v45 = 0;
              }

              v86 = v88;
              v87 = 0x600000000;
              if ((v44 + v42) >= 7)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v44 + v42, 8);
              }

              LODWORD(v87) = 0;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v43, 0, v43, v42);
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v45, 0, v45, v44);
              v83 = &v85;
              v84 = 0x600000000;
              if (v87)
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(&v83, &v86);
              }

              if (v86 != v88)
              {
                free(v86);
              }

              v46 = *(a2 + 44);
              v47 = (v3 + 16 * ((v46 >> 23) & 1));
              v48 = *v47;
              v49 = v47[1];
              if ((v46 & 0x800000) != 0)
              {
                v50 = *(a2 + 72);
              }

              else
              {
                v50 = 0;
              }

              v51 = v50 + 32 * v48;
              v52 = v49 + v48 - v48;
              v53 = *(v76 + 44);
              v54 = v76 + 16 * ((v53 >> 23) & 1);
              v55 = *(v54 + 64);
              v56 = *(v54 + 68);
              if ((v53 & 0x800000) != 0)
              {
                v57 = *(v76 + 72);
              }

              else
              {
                v57 = 0;
              }

              v58 = v57 + 32 * v55;
              v59 = (v56 + v55) - v55;
              v86 = v88;
              v87 = 0x600000000;
              if ((v59 + v52) >= 7)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v59 + v52, 8);
              }

              LODWORD(v87) = 0;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v51, 0, v51, v52);
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v58, 0, v58, v59);
              v80 = &v82;
              v81 = 0x600000000;
              if (v87)
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(&v80, &v86);
              }

              if (v86 != v88)
              {
                free(v86);
              }

              v60 = *(a2 + 44);
              v61 = (v3 + 16 * ((v60 >> 23) & 1));
              v62 = (v61[1] + *v61);
              v63 = v61[2];
              if ((v60 & 0x800000) != 0)
              {
                v64 = *(a2 + 72);
              }

              else
              {
                v64 = 0;
              }

              v65 = (v63 + v62);
              v66 = v64 + 32 * v62;
              v67 = *(v76 + 44);
              v68 = (v76 + 16 * ((v67 >> 23) & 1));
              v69 = (v68[17] + v68[16]);
              v70 = v65 - v62;
              if ((v67 & 0x800000) != 0)
              {
                v71 = *(v76 + 72);
              }

              else
              {
                v71 = 0;
              }

              v72 = v71 + 32 * v69;
              v73 = (v68[18] + v69) - v69;
              v86 = v88;
              v87 = 0x600000000;
              if ((v73 + v70) >= 7)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v73 + v70, 8);
              }

              LODWORD(v87) = 0;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v66, 0, v66, v70);
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v72, 0, v72, v73);
              v77 = &v79;
              v78 = 0x600000000;
              if (v87)
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(&v77, &v86);
              }

              if (v86 != v88)
              {
                free(v86);
              }

              v74 = *(a2 + 24);
              v75 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ParallelOp>(a3 + 8, *(**v74 + 32));
              v86 = v74;
              v87 = v75;
              v88[0] = v89;
              v88[1] = 0x400000000;
              v89[4] = v90;
              v89[5] = 0x400000000;
              v90[4] = v91;
              v90[5] = 0x400000000;
              v91[8] = 4;
              v91[9] = v92;
              v91[10] = 0x100000000;
              v92[1] = v93;
              v92[2] = 0x100000000;
              v93[1] = 0;
              v93[2] = 0;
              v93[3] = &mlir::detail::TypeIDResolver<void,void>::id;
              v93[4] = 0;
              v93[6] = 0;
              mlir::scf::ParallelOp::build(a3 + 8, &v86, v83 & 0xFFFFFFFFFFFFFFF9, v84, v80 & 0xFFFFFFFFFFFFFFF9, v81, v77 & 0xFFFFFFFFFFFFFFF9, v78, 0, 0);
            }
          }
        }

        else
        {
          v19 = *(v8 + 44);
          v20 = v8 + 16 * ((v19 >> 23) & 1);
          v23 = *(v20 + 64);
          v21 = v20 + 64;
          v22 = v23;
          v24 = (32 * v23) | 0x18;
          while (1)
          {
            if ((v19 & 0x800000) != 0)
            {
              v25 = *(v8 + 72);
            }

            else
            {
              v25 = 0;
            }

            v26 = *v17;
            v27 = 0;
            if (v22)
            {
              v28 = (v25 + 24);
              while (*v28 != v26)
              {
                ++v27;
                v28 += 4;
                if (v22 == v27)
                {
                  goto LABEL_22;
                }
              }
            }

            if (v27 != v22)
            {
              break;
            }

LABEL_22:
            if ((v19 & 0x800000) != 0)
            {
              v29 = *(v8 + 72);
            }

            else
            {
              v29 = 0;
            }

            v30 = *(v21 + 4);
            v31 = (v30 + v22);
            v32 = v31 - v22;
            if (v30)
            {
              v33 = 0;
              v34 = (v29 + v24);
              while (*v34 != v26)
              {
                ++v33;
                v34 += 4;
                if (v32 == v33)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
              v33 = 0;
            }

            if (v33 != v32)
            {
              break;
            }

LABEL_31:
            if ((v19 & 0x800000) != 0)
            {
              v35 = *(v8 + 72);
            }

            else
            {
              v35 = 0;
            }

            v36 = *(v21 + 8);
            v37 = (v36 + v31) - v31;
            if (v36)
            {
              v38 = 0;
              v39 = (v35 + 32 * v31 + 24);
              while (*v39 != v26)
              {
                ++v38;
                v39 += 4;
                if (v37 == v38)
                {
                  goto LABEL_40;
                }
              }
            }

            else
            {
              v38 = 0;
            }

            if (v38 != v37)
            {
              break;
            }

LABEL_40:
            if (++v17 == v18)
            {
              goto LABEL_45;
            }
          }
        }
      }
    }
  }

  result = 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>::callback_fn<anonymous namespace::MergeNestedParallelLoops::matchAndRewrite(mlir::scf::ParallelOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)#1}>(void *a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v32[2] = *MEMORY[0x277D85DE8];
  v32[0] = a4;
  v32[1] = a5;
  v8 = *(((**a1 + 16 * ((*(**a1 + 44) >> 23) & 1) + ((*(**a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(**a1 + 40) + 8);
  if (v8)
  {
    v9 = (v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v25 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v10 = a1[1];
  v11 = *(v10 + 48);
  v12 = *(v10 + 56) - v11;
  v13 = v12 >> 3;
  v14 = v12 >> 3;
  v15 = (v12 >> 3);
  if (a5 >= v14)
  {
    a5 = v15;
  }

  mlir::IRMapping::map<llvm::MutableArrayRef<mlir::BlockArgument>,mlir::ValueRange,(void *)0>(v24, v11, v13, a4, a5);
  v16 = v9[6];
  v17 = v9[7] - v16;
  v18 = v17 >> 3;
  if (v5 > (v17 >> 3))
  {
    v19 = (v17 >> 3);
    v6 = mlir::ValueRange::offset_base(v32, v5 - v19);
    v5 = v19;
  }

  mlir::IRMapping::map<llvm::MutableArrayRef<mlir::BlockArgument>,mlir::ValueRange,(void *)0>(v24, v16, v18, v6, v5);
  v20 = v9[5];
  if (v20 != v9 + 4)
  {
    v21 = v9[4];
    while (v20 != v21)
    {
      mlir::OpBuilder::clone(a2, v20, v24);
      v20 = *(v20 + 8);
    }
  }

  MEMORY[0x25F891030](v29, 8);
  MEMORY[0x25F891030](v26, 8);
  result = MEMORY[0x25F891030](v24[0], 8);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *mlir::IRMapping::map<llvm::MutableArrayRef<mlir::BlockArgument>,mlir::ValueRange,(void *)0>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a4;
  v16 = 0;
  if (a3 && a5)
  {
    v6 = result;
    v7 = a2 + 8;
    v8 = 8 * a3 - 8;
    v9 = 1;
    do
    {
      v10 = mlir::ValueRange::dereference_iterator(&v15, v9 - 1);
      v13 = *(v7 - 8);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v6, &v13);
      *result = v10;
      v14 = v7;
      v16 = v9;
      if (!v8)
      {
        break;
      }

      v7 += 8;
      v8 -= 8;
    }

    while (a5 != v9++);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MergeNestedParallelLoops>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MergeNestedParallelLoops]";
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

void anonymous namespace::RemoveLoopInvariantArgsFromBeforeBlock::~RemoveLoopInvariantArgsFromBeforeBlock(_anonymous_namespace_::RemoveLoopInvariantArgsFromBeforeBlock *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveLoopInvariantArgsFromBeforeBlock::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70[8] = *MEMORY[0x277D85DE8];
  v5 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v9 + 48);
  v51 = *(v9 + 32);
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v51, 1u);
  v11 = *(v7 + 32);
  if ((*(v11 + 46) & 0x80) != 0)
  {
    v12 = *(v11 + 68);
    v13 = *(v11 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v12 = 0;
    v13 = 2;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v43 = a3;
    v14 = *(a2 + 72);
    v44 = a2;
    v15 = *(a2 + 68);
    v62 = 0;
    v63 = v14;
    v64 = 0;
    v65 = v13;
    v66[0] = 0;
    if (v15)
    {
      v16 = 0;
      v17 = (v14 + 24);
      do
      {
        if (v12 == v16)
        {
          break;
        }

        v18 = *v17;
        v19 = mlir::ValueRange::dereference_iterator(&v65, v16);
        if (v18 != v19)
        {
          v20 = (~*(v19 + 8) & 7) != 0 ? 0 : v19;
          if (!v20 || *(v20 + 16) != v7)
          {
            continue;
          }

          v21 = *(ODSOperands + 32 * *(v20 + 24) + 24);
          v22 = v21 == *(v10 + 8 * v16) || v21 == v18;
          if (!v22)
          {
            continue;
          }
        }

        v56 = &v58;
        v57 = 0x600000000;
        v54[0] = &v55;
        v54[1] = 0x600000000;
        v49[0] = 0;
        v49[1] = 0;
        v50 = 0;
        v52[0] = &v53;
        v52[1] = 0x600000000;
        if ((*(v44 + 46) & 0x80) != 0)
        {
          v24 = *(v44 + 72);
          v25 = *(v44 + 68);
          v62 = 0;
          v63 = v24;
          v64 = 0;
          v65 = v13;
          v66[0] = 0;
          if (v25)
          {
            v26 = 0;
            v27 = v12 - 1;
            v28 = (v24 + 24);
            v29 = v25 - 1;
            do
            {
              v30 = *v28;
              v31 = mlir::ValueRange::dereference_iterator(&v65, v26);
              v60 = v30;
              v61 = v31;
              if (v30 == v31 || ((~*(v31 + 8) & 7) != 0 ? (v32 = 0) : (v32 = v31), v32 && *(v32 + 16) == v7 && ((v33 = *(ODSOperands + 32 * *(v32 + 24) + 24), v33 != v30) ? (v34 = v33 == *(v10 + 8 * v26)) : (v34 = 1), v34)))
              {
                v47 = v26;
                v48 = v30;
                llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>(v59, v49, &v47, &v48);
              }

              else
              {
                llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(&v56, &v60);
                llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(v54, &v61);
                v59[0] = *(*(v10 + 8 * v26) + 32);
                llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(v52, v59);
              }

              v62 = (v26 + 1);
              v64 = (v26 + 1);
              v66[0] = v26 + 1;
              if (v29 == v26)
              {
                break;
              }

              v28 += 4;
              v22 = v27 == v26++;
            }

            while (!v22);
          }
        }

        v35 = (v43 + 24);
        v46 = *(v43 + 24);
        *(v43 + 24) = *(v11 + 16);
        *(v43 + 32) = v11;
        v36 = mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((v43 + 8), *(v11 + 24), v54);
        (*(*v43 + 8))(v43, v11, v36);
        if (v46)
        {
          *v35 = v46;
        }

        else
        {
          *v35 = 0;
          *(v43 + 32) = 0;
        }

        v37 = *(v44 + 24);
        v38 = *(v44 + 36);
        if (v38)
        {
          v39 = v44 - 16;
        }

        else
        {
          v39 = 0;
        }

        v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(v43 + 8, *(**v37 + 32));
        v62 = v37;
        v63 = v40;
        v64 = v66;
        v65 = 0x400000000;
        v66[4] = v67;
        v66[5] = 0x400000000;
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
        v59[0] = v39;
        v59[1] = 0;
        v59[2] = v39;
        v59[3] = v38;
        v41 = mlir::TypeRange::TypeRange<mlir::ResultRange>(&v60, v59);
        mlir::scf::WhileOp::build(v41, &v62, v60, v61, v56 & 0xFFFFFFFFFFFFFFF9, v57, 0, 0);
        v62 = ++v16;
        v64 = v16;
        v66[0] = v16;
        v17 += 4;
      }

      while (v15 != v16);
    }
  }

  result = 0;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](uint64_t a1, int *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), *a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::InsertIntoBucketImpl<unsigned int>(a1, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = 0;
  }

  return inserted + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(*a2, *(a2 + 16), *a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::InsertIntoBucketImpl<unsigned int>(a2, a3, v12);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v10 = 1;
  }

  v11 = *a2 + 16 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, int *a2, _DWORD *a3)
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

  llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), *a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::grow(uint64_t a1, int a2)
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
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25D0A0500)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25D0A04F0)))).i32[1])
        {
          *v16 = -1;
          v16[4] = -1;
        }

        v11 += 4;
        v16 += 16;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if (*v20 <= 0xFFFFFFFD)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v21, &v32);
          v22 = v32;
          *v32 = *v20;
          *(v22 + 1) = *(v20 + 8);
          ++*(a1 + 8);
        }

        v20 += 16;
        v19 -= 16;
      }

      while (v19);
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
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 3) + 4;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vdupq_n_s64(v24);
      v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_25D0A0500)));
      if (vuzp1_s16(v31, *v28.i8).u8[0])
      {
        *(v29 - 8) = -1;
      }

      if (vuzp1_s16(v31, *&v28).i8[2])
      {
        *(v29 - 4) = -1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_25D0A04F0)))).i32[1])
      {
        *v29 = -1;
        v29[4] = -1;
      }

      v24 += 4;
      v29 += 16;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.while";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveLoopInvariantArgsFromBeforeBlock>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveLoopInvariantArgsFromBeforeBlock]";
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

void anonymous namespace::RemoveLoopInvariantValueYielded::~RemoveLoopInvariantValueYielded(_anonymous_namespace_::RemoveLoopInvariantValueYielded *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveLoopInvariantValueYielded::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47[6] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v38 = *(v7 + 32);
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v38, 1u);
  if (v9)
  {
    v10 = v9;
    v11 = (ODSOperands + 24);
    v12 = v9;
    while (1)
    {
      v13 = *v11;
      if ((~*(*v11 + 8) & 7) != 0)
      {
        v14 = *v11;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v15 = *(v14 + 8) & 7;
        if (v15 == 6)
        {
          v16 = v14 + 24 * *(v14 + 16) + 120;
          if (v16)
          {
            v13 = v16;
          }
        }

        else
        {
          v13 = v14 + 16 * v15 + 16;
        }
      }

      if (*(v13 + 16) != v7)
      {
        break;
      }

      v11 += 4;
      if (!--v12)
      {
        goto LABEL_16;
      }
    }

    v18 = 0;
    v19 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 48);
    v46[0] = v47;
    v46[1] = 0x600000000;
    v44[0] = &v45;
    v44[1] = 0x600000000;
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    v42[0] = &v43;
    v42[1] = 0x600000000;
    for (i = (ODSOperands + 24); ; i += 4)
    {
      v23 = *i;
      v35 = v23;
      if ((~*(v23 + 8) & 7) != 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        goto LABEL_27;
      }

      v25 = *(v24 + 8) & 7;
      if (v25 != 6)
      {
        v26 = v24 + 16 * v25 + 16;
        goto LABEL_29;
      }

      v26 = v24 + 24 * *(v24 + 16) + 120;
      if (!v26)
      {
LABEL_27:
        v26 = v23;
      }

LABEL_29:
      if (*(v26 + 16) == v7)
      {
        llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(v46, &v35);
        v41[0] = (*(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
        llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(v44, v41);
        v41[0] = *(*(v21 + 8 * v18) + 32);
        llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(v42, v41);
      }

      else
      {
        LODWORD(v39) = v18;
        v40[0] = v23;
        llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>(v41, v36, &v39, v40);
      }

      if (v10 == ++v18)
      {
        v27 = (a3 + 24);
        v34 = *(a3 + 24);
        v28 = v38;
        *(a3 + 24) = *(v38 + 16);
        *(a3 + 32) = v28;
        v41[0] = *(mlir::scf::ConditionOp::getODSOperands(&v38, 0) + 24);
        v29 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>((a3 + 8), *(v28 + 24), v41, v46);
        (*(*a3 + 8))(a3, v28, v29);
        if (v34)
        {
          *v27 = v34;
        }

        else
        {
          *v27 = 0;
          *(a3 + 32) = 0;
        }

        v30 = *(a2 + 24);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v31 = *(a2 + 72);
          v32 = *(a2 + 68);
        }

        else
        {
          v31 = 0;
          v32 = 0;
        }

        v41[0] = v31;
        v41[1] = v32;
        mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>(a3 + 8, v30, v44, v41);
      }
    }
  }

LABEL_16:
  result = 0;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v7 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a1, *(**a2 + 32));
  v8[0] = a2;
  v8[1] = v7;
  v8[2] = v9;
  v8[3] = 0x400000000;
  v9[4] = v10;
  v9[5] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[8] = 4;
  v11[9] = v12;
  v11[10] = 0x100000000;
  v12[1] = v13;
  v12[2] = 0x100000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v13[4] = 0;
  v13[6] = 0;
  mlir::scf::WhileOp::build(v7, v8, *a3 & 0xFFFFFFFFFFFFFFF9 | 2, *(a3 + 8), *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1], 0, 0);
}

char *mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>(a1, *(**a2 + 32));
  v17[0] = a2;
  v17[1] = v8;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a3;
  v10 = *a4;
  v11 = *(a4 + 2);
  v16 = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v18, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v18, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v12 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.condition";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveLoopInvariantValueYielded>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveLoopInvariantValueYielded]";
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

void anonymous namespace::WhileConditionTruth::~WhileConditionTruth(_anonymous_namespace_::WhileConditionTruth *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileConditionTruth::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[8] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v36 = *(v7 + 32);
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v36, 1u);
  v10 = 0;
  v11 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
  v12 = v11 - 8;
  if (!v11)
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = *(v12 + 48);
    v14 = *(v12 + 56);
    if (v13 != v14)
    {
      v10 = 0;
      v15 = 0;
      v16 = v13 + 8;
      v17 = v9 - 1;
      v18 = (ODSOperands + 24);
      do
      {
        v19 = *v18;
        if (v19 == *(mlir::scf::ConditionOp::getODSOperands(&v36, 0) + 24))
        {
          v20 = *(v16 - 8);
          if (*v20)
          {
            if (!v15)
            {
              v21 = *(a2 + 24);
              v22 = *(*(mlir::scf::ConditionOp::getODSOperands(&v36, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
              v35 = *(**(a3 + 8) + 600);
              v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a3 + 8, *(**v21 + 32));
              v38[0] = v21;
              v38[1] = v23;
              v38[2] = &v39;
              v38[3] = 0x400000000;
              v40[0] = v41;
              v40[1] = 0x400000000;
              v41[4] = v42;
              v41[5] = 0x400000000;
              v42[8] = 4;
              v42[9] = v43;
              v42[10] = 0x100000000;
              v43[1] = v44;
              v43[2] = 0x100000000;
              v44[1] = 0;
              v44[2] = 0;
              v44[3] = &mlir::detail::TypeIDResolver<void,void>::id;
              v44[4] = 0;
              v44[6] = 0;
              v24 = mlir::BoolAttr::operator mlir::TypedAttr(&v35);
              v26 = v25;
              __src = v22;
              v27 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v38);
              *v27 = v24;
              v27[1] = v26;
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v40, &__src, v38);
              v28 = mlir::Operation::create(v38);
              mlir::OpBuilder::insert((a3 + 8), v28);
              v29 = *(*(v28 + 6) + 16);
              mlir::OperationState::~OperationState(v38);
              if (v29 == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
              {
                v30 = v28;
              }

              else
              {
                v30 = 0;
              }

              v15 = (v30 - 16);
              v20 = *(v16 - 8);
            }

            mlir::RewriterBase::replaceAllUsesWith(a3, v20, v15);
            v10 = 1;
          }
        }

        if (v17-- == 0)
        {
          break;
        }

        v18 += 4;
        v32 = v16 == v14;
        v16 += 8;
      }

      while (!v32);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileConditionTruth>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileConditionTruth]";
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

void anonymous namespace::WhileCmpCond::~WhileCmpCond(_anonymous_namespace_::WhileCmpCond *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileCmpCond::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48[8] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v42 = *(v7 + 32);
  v8 = *(mlir::scf::ConditionOp::getODSOperands(&v42, 0) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v42, 1u);
    v36 = v15;
    v37 = ODSOperands;
    v41 = 0;
    v16 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
    if (v16)
    {
      v17 = v16 - 8;
    }

    else
    {
      v17 = 0;
    }

    if (!v15 || (v39 = *(v17 + 48), v35 = *(v17 + 56), v39 == v35))
    {
LABEL_48:
      result = v41 & 1;
      goto LABEL_13;
    }

    v41 = 0;
    v18 = 0;
    v19 = v11 + 64;
LABEL_20:
    v20 = 0;
    v38 = v18;
    v40 = *(v37 + 32 * v18 + 24);
    v21 = 1;
    while (1)
    {
      v22 = v21;
      if (v40 == *(*(v11 + 72) + 32 * v20 + 24))
      {
        v23 = **v39;
        if (v23)
        {
          break;
        }
      }

LABEL_22:
      v21 = 0;
      v20 = 1;
      if ((v22 & 1) == 0)
      {
        v18 = v38 + 1;
        if (v38 + 1 == v36)
        {
          goto LABEL_48;
        }

        if (++v39 == v35)
        {
          goto LABEL_48;
        }

        goto LABEL_20;
      }
    }

    v24 = v20 ^ 1;
    while (1)
    {
      v25 = v23[2];
      v23 = *v23;
      if (v25)
      {
        v26 = *(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id;
      }

      else
      {
        v26 = 0;
      }

      if (v26 && *(*(v25 + 72) + 32 * v24 + 24) == *(*(v11 + 72) + 32 * v24 + 24))
      {
        v43[0] = *(v25 + 64 + 16 * ((*(v25 + 44) >> 23) & 1));
        Int = mlir::IntegerAttr::getInt(v43);
        v43[0] = *(v19 + 16 * ((*(v11 + 44) >> 23) & 1));
        if (Int == mlir::IntegerAttr::getInt(v43))
        {
          v28 = 1;
LABEL_36:
          v31 = *(v25 + 24);
          v32 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIntOp>(a3 + 8, *(**v31 + 32));
          v43[0] = v31;
          v43[1] = v32;
          v43[2] = v44;
          v43[3] = 0x400000000;
          v44[4] = v45;
          v44[5] = 0x400000000;
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
          mlir::arith::ConstantIntOp::build((a3 + 8), v43, v28, 1);
          v33 = mlir::Operation::create(v43);
          mlir::OpBuilder::insert((a3 + 8), v33);
          if (v33)
          {
            if (*(*(v33 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && (v34 = (*(v33 - 1) & 0xFFFFFFFFFFFFFFF8), *(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
            {
              if (v34[2] >> 30)
              {
                v33 = 0;
              }
            }

            else
            {
              v33 = 0;
            }
          }

          mlir::OperationState::~OperationState(v43);
          (*(*a3 + 8))(a3, v25, v33);
          v41 = 1;
          goto LABEL_41;
        }

        v43[0] = *(v25 + 64 + 16 * ((*(v25 + 44) >> 23) & 1));
        v29 = mlir::IntegerAttr::getInt(v43);
        v43[0] = *(v19 + 16 * ((*(v11 + 44) >> 23) & 1));
        v30 = mlir::IntegerAttr::getInt(v43);
        if (v29 == mlir::arith::invertPredicate(v30))
        {
          v28 = 0;
          goto LABEL_36;
        }
      }

LABEL_41:
      if (!v23)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_12:
  result = 0;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileCmpCond>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileCmpCond]";
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

void anonymous namespace::WhileUnusedResult::~WhileUnusedResult(_anonymous_namespace_::WhileUnusedResult *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileUnusedResult::matchAndRewrite(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v60[6] = *MEMORY[0x277D85DE8];
  v5 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v50 = *(v7 + 32);
  v8 = *(v5 + 32);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v50, 1u);
  v59[0] = v60;
  v59[1] = 0xC00000000;
  v57[0] = v58;
  v57[1] = 0x600000000;
  v55[0] = v56;
  v55[1] = 0x600000000;
  v53[0] = v54;
  v53[1] = 0x600000000;
  v14 = a2[9];
  v47 = a2 - 4;
  if (v14)
  {
    v15 = a2 - 4;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    goto LABEL_49;
  }

  v16 = v10 == v11 || v13 == 0;
  if (v16)
  {
    goto LABEL_49;
  }

  v44 = a3;
  v46 = a2;
  v45 = 0;
  v17 = 0;
  v18 = v13 - 1;
  v19 = v14 - 1;
  v20 = (ODSOperands + 24);
  v21 = v10 + 8;
  v22 = a2 - 4;
  do
  {
    v23 = v15;
    if (v17)
    {
      v24 = v47;
      v25 = *(v46 - 1) & 7;
      v26 = v17;
      if (v25 == 6)
      {
        goto LABEL_20;
      }

      v27 = (5 - v25);
      v23 = v22;
      v26 = v17 - v27;
      if (v17 > v27)
      {
        v24 = &v47[-4 * v27];
LABEL_20:
        v23 = &v24[-6 * v26];
      }
    }

    v28 = *v20;
    v49 = v17;
    v29 = *(v10 + 8 * v17);
    v52[0] = v28;
    if (!*v23 && !*v29)
    {
      v45 = 1;
      goto LABEL_35;
    }

    llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(v59, &v49);
    llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(v55, v52);
    v51 = (*(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
    llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(v57, &v51);
    v30 = *(v23 + 1) & 7;
    v31 = v30 == 7;
    if (v30 == 7)
    {
      v32 = 0;
    }

    else
    {
      v32 = v23;
    }

    if (!v31)
    {
      v34 = *(v32 + 1) & 7;
      if (v34 != 6)
      {
        v35 = &v32[4 * v34 + 4];
LABEL_33:
        v33 = (v35 + 24);
        goto LABEL_34;
      }

      v35 = &v32[6 * *(v32 + 2) + 30];
      if (v35)
      {
        goto LABEL_33;
      }
    }

    v33 = (v23 + 8);
LABEL_34:
    v51 = *v33;
    llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(v53, &v51);
LABEL_35:
    if (v19 == v17)
    {
      break;
    }

    if (v21 == v11)
    {
      break;
    }

    v22 -= 4;
    v20 += 4;
    v21 += 8;
    v16 = v18 == v17++;
  }

  while (!v16);
  if (v45)
  {
    v36 = (v44 + 24);
    v48 = *(v44 + 24);
    v37 = v50;
    *(v44 + 24) = *(v50 + 16);
    *(v44 + 32) = v37;
    v52[0] = *(mlir::scf::ConditionOp::getODSOperands(&v50, 0) + 24);
    v38 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>((v44 + 8), *(v37 + 24), v52, v55);
    (*(*v44 + 8))(v44, v37, v38);
    if (v48)
    {
      *v36 = v48;
    }

    else
    {
      *v36 = 0;
      *(v44 + 32) = 0;
    }

    v39 = *(v46 + 3);
    if ((*(v46 + 46) & 0x80) != 0)
    {
      v40 = v46[17];
      v41 = *(v46 + 9);
    }

    else
    {
      v41 = 0;
      v40 = 0;
    }

    v52[0] = v41;
    v52[1] = v40;
    mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>(v44 + 8, v39, v57, v52);
  }

LABEL_49:
  if (v53[0] != v54)
  {
    free(v53[0]);
  }

  if (v55[0] != v56)
  {
    free(v55[0]);
  }

  if (v57[0] != v58)
  {
    free(v57[0]);
  }

  if (v59[0] != v60)
  {
    free(v59[0]);
  }

  v42 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileUnusedResult>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileUnusedResult]";
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

void anonymous namespace::WhileRemoveDuplicatedResults::~WhileRemoveDuplicatedResults(_anonymous_namespace_::WhileRemoveDuplicatedResults *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileRemoveDuplicatedResults::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61[8] = *MEMORY[0x277D85DE8];
  v5 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v38 = *(v6 + 32);
  v33 = &v37;
  v34 = 8;
  v8 = (mlir::scf::ConditionOp::getODSOperands(&v38, 1u) & 0xFFFFFFFFFFFFFFF9 | 2);
  v35 = 0;
  v36 = 1;
  v45 = v8;
  v46 = 0;
  if (v7)
  {
    v9 = v7;
    for (i = 0; i != v9; v46 = i)
    {
      v11 = mlir::ValueRange::dereference_iterator(&v45, i);
      llvm::SmallPtrSetImpl<mlir::Value>::insert(&v33, v11, &v51);
      ++i;
    }

    if (v9 != HIDWORD(v34) - v35)
    {
      v45 = 1;
      v46 = -4096;
      v48 = -4096;
      v49 = -4096;
      v50 = -4096;
      v42 = v44;
      v43 = 0x600000000;
      if (v9 && (v13 = (4 * v9 / 3u + 1) | ((4 * v9 / 3u + 1) >> 1), v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4), v15 = v14 | (v14 >> 8) | ((v14 | (v14 >> 8)) >> 16), v15 >= 4))
      {
        llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v45, v15 + 1);
        v16 = HIDWORD(v43);
      }

      else
      {
        v16 = 6;
      }

      if (v9 > v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v9, 8);
      }

      v17 = 0;
      v51 = v8;
      v52 = 0;
      while (1)
      {
        v18 = mlir::ValueRange::dereference_iterator(&v51, v17);
        v41[0] = v18;
        if (!llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(&v45, v18))
        {
          break;
        }

LABEL_30:
        v52 = ++v17;
        if (v9 == v17)
        {
          v25 = v43;
          v26 = (v42 & 0xFFFFFFFFFFFFFFF9);
          v41[0] = v42 & 0xFFFFFFFFFFFFFFF9;
          v41[1] = v43;
          v27 = *(a2 + 24);
          if ((*(a2 + 46) & 0x80) != 0)
          {
            v28 = *(a2 + 68);
            v29 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
          }

          else
          {
            v28 = 0;
            v29 = 2;
          }

          v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a3 + 8, *(**v27 + 32));
          v51 = v27;
          v52 = v30;
          v53 = &v55;
          v54 = 0x400000000;
          v56 = v58;
          v57 = 0x400000000;
          v58[4] = v59;
          v58[5] = 0x400000000;
          v59[8] = 4;
          v59[9] = v60;
          v59[10] = 0x100000000;
          v60[1] = v61;
          v60[2] = 0x100000000;
          v61[2] = 0;
          v61[1] = 0;
          v61[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v61[4] = 0;
          v61[6] = 0;
          v40[0] = v26;
          v40[1] = 0;
          v40[2] = v26;
          v40[3] = v25;
          mlir::TypeRange::TypeRange<mlir::ValueRange>(v39, v40);
          mlir::scf::WhileOp::build(a3 + 8, &v51, v39[0], v39[1], v29, v28);
        }
      }

      v19 = v45;
      v39[0] = 0;
      if (llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(&v45, v18, v39))
      {
LABEL_29:
        llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(&v42, v41);
        goto LABEL_30;
      }

      v20 = v39[0];
      v40[0] = v39[0];
      v21 = v45;
      v22 = v45 >> 1;
      v23 = v45 & 1;
      if (v45)
      {
        v24 = 4;
      }

      else
      {
        v24 = v47;
      }

      if (4 * v22 + 4 >= 3 * v24)
      {
        v24 *= 2;
      }

      else if (v24 + ~v22 - HIDWORD(v45) > v24 >> 3)
      {
LABEL_26:
        LODWORD(v45) = (v21 & 0xFFFFFFFE) + v23 + 2;
        if (*v20 != -4096)
        {
          --HIDWORD(v45);
        }

        *v20 = v18;
        v20[2] = v19 >> 1;
        goto LABEL_29;
      }

      llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v45, v24);
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(&v45, v18, v40);
      v21 = v45;
      v20 = v40[0];
      v23 = v45 & 1;
      goto LABEL_26;
    }
  }

  v51 = "No results to remove";
  v55 = 259;
  v45 = &v51;
  v12 = *(a3 + 16);
  if (v12 && v12[2] == 1)
  {
    (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v45);
  }

  if ((v36 & 1) == 0)
  {
    free(v33);
  }

  v31 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::OpResult>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, *a2);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v3) = *a2;
    v4 = v3 + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 8 * v4 - 8;
}

uint64_t llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(a1, v6, v6 + 16 * v7);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      *(v9 + 2) = *(a1 + v8 + 16);
      v9 += 16;
    }

    v8 += 16;
  }

  while (v8 != 64);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 72;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 16 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 16);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      *(v16 + 2) = *(a2 + 8);
      *v5 += 2;
    }

    a2 += 16;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(uint64_t a1, unint64_t a2, void *a3)
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
      v9 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
  LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
  v7 = v4 - 1;
  v8 = (v4 - 1) & v5;
  v9 = (v3 + 16 * v8);
  v10 = *v9;
  if (*v9 == a2)
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
      v9 = (v3 + 16 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v9 = v12;
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 0;
    }

    v2 = *(a1 + 8);
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
  v6 = v3 - 1;
  v7 = (v3 - 1) & v4;
  v8 = *(v2 + 16 * v7);
  if (v8 == a2)
  {
    return v2 + 16 * v7;
  }

  v10 = 1;
  while (v8 != -4096)
  {
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return v2 + 16 * v7;
    }
  }

  return 0;
}

char *mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>(a1, *(**a2 + 32));
  v17[0] = a2;
  v17[1] = v8;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a3;
  v11 = *a4;
  v10 = a4[1];
  v16 = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v18, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v18, v11, 0, v11, v10);
  v12 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileRemoveDuplicatedResults>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileRemoveDuplicatedResults]";
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

void anonymous namespace::WhileRemoveUnusedArgs::~WhileRemoveUnusedArgs(_anonymous_namespace_::WhileRemoveUnusedArgs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileRemoveUnusedArgs::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v72[8] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v7 = *(v6 + 8);
  v8 = v7 - 8;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(v8 + 48);
  v10 = *(v8 + 56);
  for (i = v10 - v9; v9 != v10; v9 += 8)
  {
    if (!**v9)
    {
      v14 = *(v6 + 32);
      if (v14)
      {
        v15 = v14 - 8;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v15 + 32);
      v60[0] = v61;
      v60[1] = 0x600000000;
      v57 = v59;
      v58 = 0x600000000;
      v53 = v55;
      v54 = 0x600000000;
      v56 = 0;
      if ((i >> 3) >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v60, v61, i >> 3, 8);
        if (i >> 3 > HIDWORD(v58))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, i >> 3, 8);
        }
      }

      v17 = (i >> 3) + 63;
      if (HIDWORD(v54) < v17 >> 6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, v17 >> 6, 8);
      }

      v18 = *(v4 + 44);
      v19 = (v18 >> 23) & 1;
      v20 = (v18 >> 21) & 0x7F8;
      v21 = 32 * *(v4 + 40);
      v22 = *(((v5 + 16 * v19 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v21 + 8);
      if (v22)
      {
        v23 = v22 - 8;
      }

      else
      {
        v23 = 0;
      }

      if ((*(v16 + 46) & 0x80) != 0)
      {
        v24 = *(v16 + 72);
        v25 = *(v16 + 68);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      if ((v18 & 0x800000) != 0)
      {
        v26 = *(v23 + 48);
        v27 = *(v23 + 56);
        v28 = *(v4 + 68);
        v29 = v26 == v27 || v25 == 0;
        if (!v29 && v28 != 0)
        {
          v50 = v5;
          v51 = v4;
          v31 = 0;
          v32 = 8 * v28 - 8;
          v33 = 8 * v25 - 8;
          v34 = (*(v4 + 72) + 24);
          v35 = (v24 + 24);
          do
          {
            v36 = *v35;
            v37 = *v34;
            v63 = (v26 + v31);
            v64 = v36;
            v65[0] = v37;
            v38 = v56;
            v39 = v56 + 1;
            v40 = v54 << 6;
            if (**(v26 + v31))
            {
              if (v39 > v40)
              {
                llvm::BitVector::resize(&v53, v39, 0);
              }

              else
              {
                ++v56;
              }

              llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(v60, &v64);
              llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(&v57, v65);
            }

            else
            {
              if (v39 > v40)
              {
                llvm::BitVector::resize(&v53, v39, 0);
              }

              else
              {
                ++v56;
              }

              *(v53 + (v38 >> 6)) |= 1 << v38;
            }

            if (v31 + 8 + v26 == v27)
            {
              break;
            }

            if (v33 == v31)
            {
              break;
            }

            v34 += 4;
            v35 += 4;
            v29 = v32 == v31;
            v31 += 8;
          }

          while (!v29);
          v5 = v50;
          v4 = v51;
          v41 = *(v51 + 44);
          v19 = (v41 >> 23) & 1;
          v20 = (v41 >> 21) & 0x7F8;
          v21 = 32 * *(v51 + 40);
        }
      }

      v42 = ((v5 + 16 * v19 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v21;
      v43 = *(v42 + 8);
      if (v43)
      {
        v44 = (v43 - 8);
      }

      else
      {
        v44 = 0;
      }

      *(v42 + 32);
      mlir::Block::eraseArguments(v44, &v53);
      v45 = *(v4 + 24);
      v46 = *(v4 + 36);
      if (v46)
      {
        v47 = v4 - 16;
      }

      else
      {
        v47 = 0;
      }

      v48 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a3 + 8, *(**v45 + 32));
      v63 = v45;
      v64 = v48;
      v65[0] = &v66;
      v65[1] = 0x400000000;
      v67 = v69;
      v68 = 0x400000000;
      v69[4] = v70;
      v69[5] = 0x400000000;
      v70[8] = 4;
      v70[9] = v71;
      v70[10] = 0x100000000;
      v71[1] = v72;
      v71[2] = 0x100000000;
      v72[2] = 0;
      v72[1] = 0;
      v72[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v72[4] = 0;
      v72[6] = 0;
      v52[0] = v47;
      v52[1] = 0;
      v52[2] = v47;
      v52[3] = v46;
      mlir::TypeRange::TypeRange<mlir::ResultRange>(v62, v52);
      mlir::scf::WhileOp::build(a3 + 8, &v63, v62[0], v62[1], (v57 & 0xFFFFFFFFFFFFFFF9), v58);
    }
  }

  v63 = "No args to remove";
  v66 = 259;
  v53 = &v63;
  v12 = *(a3 + 16);
  if (v12 && v12[2] == 1)
  {
    (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v53);
  }

  result = 0;
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileRemoveUnusedArgs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileRemoveUnusedArgs]";
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

void anonymous namespace::WhileOpAlignBeforeArgs::~WhileOpAlignBeforeArgs(_anonymous_namespace_::WhileOpAlignBeforeArgs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileOpAlignBeforeArgs::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v4 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  v5 = (v4 - 8);
  if (!v4)
  {
    v5 = 0;
  }

  v47 = v5[4];
  v7 = v5[6];
  v6 = v5[7];
  v45 = a2 + 64;
  v8 = (v6 - v7) >> 3;
  v57[0] = v7 & 0xFFFFFFFFFFFFFFF9;
  v57[1] = v8;
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v47, 1u);
  v11 = v10;
  v12 = (ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2);
  if (v8 == v10)
  {
    v58 = (v7 & 0xFFFFFFFFFFFFFFF9);
    v59 = 0;
    v53 = (ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2);
    v54 = 0;
    if (v6 == v7)
    {
      goto LABEL_42;
    }

    v13 = 0;
    while (1)
    {
      v14 = mlir::ValueRange::dereference_iterator(&v58, v13);
      if (v14 != mlir::ValueRange::dereference_iterator(&v53, v13))
      {
        break;
      }

      v15 = v13 + 1;
      v59 = v13 + 1;
      v54 = v13 + 1;
      if (v8 - 1 == v13++)
      {
        if (v8 == v15)
        {
          goto LABEL_42;
        }

        break;
      }
    }
  }

  v58 = 1;
  v59 = -4096;
  v60 = -4096;
  v61 = -4096;
  v62[0] = -4096;
  v53 = v12;
  v54 = 0;
  if (!v11)
  {
LABEL_24:
    v24 = 0;
    goto LABEL_26;
  }

  v17 = 0;
  while (1)
  {
    v18 = mlir::ValueRange::dereference_iterator(&v53, v17);
    v48 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(&v58, v18, &v48))
    {
      break;
    }

    v19 = v48;
    v50 = v48;
    v20 = v58;
    v21 = v58 >> 1;
    v22 = v58 & 1;
    if (v58)
    {
      v23 = 4;
    }

    else
    {
      v23 = v60;
    }

    if (4 * v21 + 4 >= 3 * v23)
    {
      v23 *= 2;
LABEL_23:
      llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(&v58, v23);
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(&v58, v18, &v50);
      v20 = v58;
      v19 = v50;
      v22 = v58 & 1;
      goto LABEL_18;
    }

    if (v23 + ~v21 - HIDWORD(v58) <= v23 >> 3)
    {
      goto LABEL_23;
    }

LABEL_18:
    LODWORD(v58) = (v20 & 0xFFFFFFFE) + v22 + 2;
    if (*v19 != -4096)
    {
      --HIDWORD(v58);
    }

    *v19 = v18;
    v54 = ++v17;
    if (v11 == v17)
    {
      goto LABEL_24;
    }
  }

  v24 = 1;
LABEL_26:
  if ((v58 & 1) == 0)
  {
    MEMORY[0x25F891030](v59, 8);
  }

  if ((v24 & 1) == 0 && v8 == v11)
  {
    v58 = &v60;
    v59 = 0xC00000000;
    llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(&v58, (v6 - v7) >> 3);
    v50 = 0;
    v51 = v7 & 0xFFFFFFFFFFFFFFF9;
    v52 = 0;
    if (v6 == v7)
    {
LABEL_34:
      v53 = &v55;
      v54 = 0xC00000000;
      if (v59)
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&v53, &v58);
      }

      v56 = 1;
      v28 = v58;
      if (v58 != &v60)
      {
        goto LABEL_39;
      }

LABEL_40:
      v29 = (a3 + 24);
      v44 = *(a3 + 24);
      v30 = v47;
      *(a3 + 24) = *(v47 + 16);
      *(a3 + 32) = v30;
      v58 = *(mlir::scf::ConditionOp::getODSOperands(&v47, 0) + 24);
      v31 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::ValueRange &>((a3 + 8), *(v30 + 24), &v58, v57);
      (*(*a3 + 8))(a3, v30, v31);
      if (v44)
      {
        *v29 = v44;
      }

      else
      {
        *v29 = 0;
        *(a3 + 32) = 0;
      }

      *(((v45 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
      v50 = &v52;
      v51 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v50, v8);
      if (v54)
      {
        v34 = 0;
        v35 = v53;
        v36 = 4 * v54;
        v37 = a2 - 16;
        do
        {
          v38 = v37;
          if (v34 >= 6)
          {
            v38 = a2 - 96 - 24 * (v34 - 5);
          }

          v39 = v35[v34++];
          *(v50 + v39) = *(v38 + 8) & 0xFFFFFFFFFFFFFFF8;
          v37 -= 16;
          v36 -= 4;
        }

        while (v36);
      }

      v40 = *(a2 + 24);
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v41 = *(a2 + 68);
        v42 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
      }

      else
      {
        v41 = 0;
        v42 = 2;
      }

      v43 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a3 + 8, *(**v40 + 32));
      v58 = v40;
      v59 = v43;
      v60 = v62;
      v61 = 0x400000000;
      v62[4] = v63;
      v62[5] = 0x400000000;
      v63[4] = v64;
      v63[5] = 0x400000000;
      v64[8] = 4;
      v64[9] = v65;
      v64[10] = 0x100000000;
      v65[1] = v66;
      v65[2] = 0x100000000;
      v66[2] = 0;
      v66[1] = 0;
      v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v66[4] = 0;
      v66[6] = 0;
      mlir::scf::WhileOp::build(a3 + 8, &v58, v50 & 0xFFFFFFFFFFFFFFF9 | 2, v51, v42, v41);
    }

    v25 = 0;
    while (1)
    {
      v26 = mlir::ValueRange::dereference_iterator(&v51, v25);
      v48 = v25;
      v49[0] = v26;
      std::__find[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::Value,std::__identity>(v12, 0, v12, v11, v49);
      if (v27 == v8)
      {
        break;
      }

      *(v58 + v27) = v25++;
      v50 = v25;
      v52 = v25;
      if (v8 == v25)
      {
        goto LABEL_34;
      }
    }

    LOBYTE(v53) = 0;
    v56 = 0;
    v28 = v58;
    if (v58 != &v60)
    {
LABEL_39:
      free(v28);
      if (v56)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_42:
  result = 0;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t a1, unint64_t a2, void *a3)
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
      v9 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
  LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
  v7 = v4 - 1;
  v8 = (v4 - 1) & v5;
  v9 = (v3 + 8 * v8);
  v10 = *v9;
  if (*v9 == a2)
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
      v9 = (v3 + 8 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v9 = v12;
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

uint64_t llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, unsigned int a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v6, &v6[v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = v16;
  for (i = 8; i != 40; i += 8)
  {
    v10 = *(a1 + i);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v16, v8);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 40;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 8 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 8);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 1) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v5, v15, &v16);
      *v16 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileOpAlignBeforeArgs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileOpAlignBeforeArgs]";
  v6 = 107;
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

unint64_t std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = result;
  v20[3] = *MEMORY[0x277D85DE8];
  v9 = a5 - a3;
  if (a5 != a3)
  {
    v10 = a2 & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 2;
    v12 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 4;
    v13 = (v10 + 8 * a3);
    v14 = v10 + 24 * a3;
    do
    {
      if (!v11 || (v15 = v14, !v12))
      {
        v15 = *v13;
      }

      v20[0] = v15;
      v20[1] = 0;
      v20[2] = 0;
      result = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a6, v20, 1);
      v16 = *a6 + 24 * *(a6 + 8);
      v17 = *result;
      *(v16 + 16) = *(result + 16);
      *v16 = v17;
      ++*(a6 + 8);
      ++v13;
      v14 += 24;
      --v9;
    }

    while (v9);
    a3 = a5;
  }

  *v8 = a2;
  v8[1] = a3;
  v8[2] = a6;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,BOOL>(uint64_t a1, int a2, unsigned __int8 a3)
{
  LODWORD(v3) = a2;
  HIDWORD(v3) = a3;
  llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::push_back(a1, v3, 1);
}

void FoldConstantCase::~FoldConstantCase(FoldConstantCase *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t FoldConstantCase::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[6] = *MEMORY[0x277D85DE8];
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 24) | 4);
  if (v6)
  {
    v7 = *(a2 + 44);
    v8 = a2 + 16 * ((v7 >> 23) & 1);
    v11 = *(v8 + 64);
    v9 = v8 + 64;
    v10 = v11;
    v12 = *(v11 + 32);
    v13 = (v12 >> 3);
    if ((v12 >> 3))
    {
      v14 = 0;
      v15 = *(v10 + 24);
      while (ConstantIntValue != *(v15 + 8 * v14))
      {
        if (v13 == ++v14)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if (v14 >= v13)
    {
LABEL_12:
      v18 = ((v9 + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    }

    else
    {
      if ((v7 & 0x7FFFFF) != 0)
      {
        v17 = ((v9 + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 + 24 * v14 + 24;
    }

    v19 = *(v18 + 8);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 32);
    if ((*(v21 + 46) & 0x80) != 0)
    {
      v22 = *(v21 + 72);
      v23 = *(v21 + 68);
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v25 = v27;
    v26 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v25, v22, 0, v22, v23);
    (*(*a3 + 32))(a3, v20, *(a2 + 16), a2, 0, 0);
    (*(*a3 + 16))(a3, v21);
    (**a3)(a3, a2, v25 & 0xFFFFFFFFFFFFFFF9, v26);
    if (v25 != v27)
    {
      free(v25);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<FoldConstantCase>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = FoldConstantCase]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23400))
  {
    qword_27FC233F0 = llvm::detail::getTypeNameImpl<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>();
    *algn_27FC233F8 = v1;
    __cxa_guard_release(&qword_27FC23400);
  }

  return qword_27FC233F0;
}

const char *llvm::detail::getTypeNameImpl<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::scf::detail::ForallOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23428))
  {
    qword_27FC23418 = llvm::detail::getTypeNameImpl<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>();
    unk_27FC23420 = v1;
    __cxa_guard_release(&qword_27FC23428);
  }

  return qword_27FC23418;
}

const char *llvm::detail::getTypeNameImpl<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::IndexSwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IndexSwitchOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23450))
  {
    qword_27FC23440 = llvm::detail::getTypeNameImpl<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>();
    *algn_27FC23448 = v1;
    __cxa_guard_release(&qword_27FC23450);
  }

  return qword_27FC23440;
}

const char *llvm::detail::getTypeNameImpl<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties]";
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

void mlir::invertPermutationVector(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = (a3 + 2);
  a3[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(a3, a2);
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = 8 * a2;
    do
    {
      *(v7 + 8 * *(a1 + 8 * v6)) = v6;
      ++v6;
      v8 -= 8;
    }

    while (v8);
  }
}

void mlir::applyPermutationToVector<long long,6u>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x277D85DE8];
  mlir::applyPermutation<long long>(*a1, *(a1 + 8), a2, a3, v5);
  llvm::SmallVectorImpl<long long>::operator=(a1, v5);
  if (v5[0] != v6)
  {
    free(v5[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(uint64_t a1, unint64_t a2)
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

      if (a2 != v2)
      {
        bzero((*a1 + 8 * v2), 8 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

void mlir::applyPermutation<long long>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  v9[0] = 0;
  v9[1] = v6;
  v9[2] = v5;
  v10 = 1;
  v7[0] = a2;
  v7[1] = v6;
  v7[2] = v5;
  v8 = 1;
  *a5 = a5 + 2;
  a5[1] = 0x600000000;
  _ZN4llvm15SmallVectorImplIxE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN4mlir16applyPermutationIxEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEENS_8ArrayRefISA_EENSC_IxEEEUlxE_xEEvEEvSA_SA_(a5, v9, v7);
}

void _ZN4llvm15SmallVectorImplIxE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN4mlir16applyPermutationIxEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEENS_8ArrayRefISA_EENSC_IxEEEUlxE_xEEvEEvSA_SA_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a3 - *a2;
  v9 = *(a1 + 8);
  if (v8 + v9 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + v9, 8);
    v6 = *a2;
    v7 = *a3;
    LODWORD(v9) = *(a1 + 8);
  }

  if (v6 != v7)
  {
    v10 = (*a1 + 8 * v9);
    v11 = *a2[2];
    v12 = *a2[1];
    do
    {
      *v10++ = *(v12 + 8 * *(v11 + 8 * v6++));
    }

    while (v7 != v6);
  }

  *(a1 + 8) = v9 + v8;
}

uint64_t mlir::getReassociationIndicesForCollapse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49[4] = *MEMORY[0x277D85DE8];
  if (a2 <= a4)
  {
    *a5 = 0;
    *(a5 + 48) = 0;
  }

  else
  {
    v7 = result;
    v47 = v49;
    v48 = 0x100000000;
    if (a4 >= 2)
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v47, a4);
    }

    LODWORD(v8) = 0;
    v44 = v46;
    v45 = 0x200000000;
    v9 = a2 - 1;
    do
    {
      v10 = v48;
      if (a4 == v48)
      {
        goto LABEL_52;
      }

      v11 = *(a3 + 8 * v48);
      v12 = v8;
      if (v9 <= v8)
      {
        v15 = 1;
      }

      else
      {
        v13 = 1;
        while (1)
        {
          v14 = *(v7 + 8 * v12);
          v15 = v14 * v13;
          v16 = v14 != 0x8000000000000000 && v15 < v11;
          if (!v16)
          {
            break;
          }

          v8 = (v8 + 1);
          llvm::SmallVectorTemplateBase<long long,true>::push_back(&v44, v12);
          v12 = v8;
          v13 = v15;
          if (v9 <= v8)
          {
            goto LABEL_16;
          }
        }

        v15 = v13;
      }

LABEL_16:
      v17 = *(v7 + 8 * v12);
      if (v17 == 0x8000000000000000)
      {
        if (v11 != 0x8000000000000000 || v15 != 1)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 0x8000000000000000)
      {
        goto LABEL_66;
      }

      if (v17 * v15 != v11)
      {
        goto LABEL_66;
      }

      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v44, v12);
      v41 = v43;
      v42 = 0x200000000;
      if (v48 >= HIDWORD(v48))
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>(&v47, &v41);
      }

      else
      {
        v18 = &v47[4 * v48];
        *v18 = v18 + 2;
        v18[1] = 0x200000000;
        if (v42)
        {
          llvm::SmallVectorImpl<long long>::operator=(v18, &v41);
        }

        LODWORD(v48) = v48 + 1;
      }

      if (v41 != v43)
      {
        free(v41);
      }

      v19 = &v47[4 * v48];
      if (v19 - 4 != &v44)
      {
        v20 = *(v19 - 4);
        if (v20 == v19 - 2 || v44 == v46)
        {
          if (*(v19 - 5) < v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod((v19 - 4), v19 - 2, v45, 8);
          }

          v23 = *(v19 - 6);
          if (HIDWORD(v45) < v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v23, 8);
            LODWORD(v23) = *(v19 - 6);
          }

          v24 = v45;
          if (v23 >= v45)
          {
            v25 = v45;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            v26 = *(v19 - 4);
            v27 = v44;
            v28 = v25;
            do
            {
              v29 = *v26;
              *v26++ = *v27;
              *v27++ = v29;
              --v28;
            }

            while (v28);
          }

          if (v24 >= v23)
          {
            if (v24 > v23)
            {
              v31 = v24 - v23;
              memcpy((*(v19 - 4) + 8 * v23), v44 + 8 * v25, 8 * (v24 - v25));
              *(v19 - 6) += v31;
              LODWORD(v45) = v25;
            }
          }

          else
          {
            v30 = v23 - v24;
            memcpy(v44 + 8 * v24, (*(v19 - 4) + 8 * v25), 8 * (v23 - v25));
            LODWORD(v45) = v30 + v45;
            *(v19 - 6) = v25;
          }
        }

        else
        {
          *(v19 - 4) = v44;
          v44 = v20;
          v21 = *(v19 - 6);
          *(v19 - 6) = v45;
          LODWORD(v45) = v21;
          v22 = *(v19 - 5);
          *(v19 - 5) = HIDWORD(v45);
          HIDWORD(v45) = v22;
        }
      }

      LODWORD(v8) = v8 + 1;
    }

    while (a2 > v8);
    v10 = v48;
    if (a4 != v48)
    {
LABEL_66:
      v37 = 0;
      v36 = a5;
      *a5 = 0;
      goto LABEL_67;
    }

LABEL_52:
    if (a2 > v8)
    {
      v32 = v8;
      v33 = v8 + 1;
      while (1)
      {
        v34 = *(v7 + 8 * v32);
        if (v34 != 0x8000000000000000 && v34 != 1)
        {
          goto LABEL_66;
        }

        if (v48)
        {
          llvm::SmallVectorTemplateBase<long long,true>::push_back(&v47[4 * v48 - 4], v32);
        }

        v32 = v33;
        v16 = a2 > v33++;
        if (!v16)
        {
          v10 = v48;
          break;
        }
      }
    }

    v36 = a5;
    *a5 = a5 + 16;
    *(a5 + 8) = 0x100000000;
    if (v10)
    {
      llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v47);
    }

    v37 = 1;
LABEL_67:
    *(v36 + 48) = v37;
    if (v44 != v46)
    {
      free(v44);
    }

    result = llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(&v47);
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::composeReassociationIndices@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v26 = v28;
  v27 = 0x100000000;
  if (a2 != a4)
  {
    if (a2 < a4)
    {
      v6 = a2;
    }

    else
    {
      v6 = a4;
    }

    if (a2 < a4)
    {
      v7 = a1;
    }

    else
    {
      v7 = a3;
    }

    if (a2 < a4)
    {
      v8 = a3;
    }

    else
    {
      v8 = a1;
    }

    if (a2 < a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a2;
    }

    if (!v6)
    {
      *a5 = a5 + 16;
      *(a5 + 8) = 0x100000000;
LABEL_28:
      v20 = 1;
      goto LABEL_29;
    }

    v10 = 0;
    v11 = 32 * v6;
    v12 = (v7 + 8);
    v13 = v7 + 32 * v6;
    do
    {
      v14 = *v12;
      v12 += 8;
      v10 += v14;
      v11 -= 32;
    }

    while (v11);
    if (v9 == v10)
    {
      do
      {
        v15 = *v7;
        v16 = *(v7 + 8);
        v23 = v25;
        v24 = 0x200000000;
        if (v16)
        {
          v17 = 8 * v16;
          do
          {
            v18 = *v15++;
            llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v23, v23 + 8 * v24, *(v8 + 32 * v18), (*(v8 + 32 * v18) + 8 * *(v8 + 32 * v18 + 8)));
            v17 -= 8;
          }

          while (v17);
        }

        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v26, &v23);
        if (v23 != v25)
        {
          free(v23);
        }

        v7 += 32;
      }

      while (v7 != v13);
      v19 = v27;
      *a5 = a5 + 16;
      *(a5 + 8) = 0x100000000;
      if (v19)
      {
        llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v26);
      }

      goto LABEL_28;
    }
  }

  v20 = 0;
  *a5 = 0;
LABEL_29:
  *(a5 + 48) = v20;
  result = llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(&v26);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<long long,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>>(a1, a2, 1);
  result = (*a1 + 32 * *(a1 + 8));
  *result = result + 2;
  result[1] = 0x200000000;
  if (*(v3 + 8))
  {
    result = llvm::SmallVectorImpl<long long>::operator=(result, v3);
  }

  ++*(a1 + 8);
  return result;
}

{
  v3 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<long long,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>>(a1, a2, 1);
  result = (*a1 + 32 * *(a1 + 8));
  *result = result + 2;
  result[1] = 0x200000000;
  if (*(v3 + 8))
  {
    result = llvm::SmallVectorImpl<long long>::operator=(result, v3);
  }

  ++*(a1 + 8);
  return result;
}

void mlir::convertReassociationIndicesToExprs(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v15[2] = *MEMORY[0x277D85DE8];
  *a4 = a4 + 2;
  a4[1] = 0x200000000;
  if (a3)
  {
    v5 = a2;
    v7 = a2 + 32 * a3;
    do
    {
      v14[0] = v15;
      v14[1] = 0x200000000;
      v8 = *(v5 + 8);
      if (v8 >= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v15, v8, 8);
        v8 = *(v5 + 8);
      }

      if (v8)
      {
        v9 = *v5;
        v10 = 8 * v8;
        do
        {
          v11 = *v9;
          v9 += 2;
          AffineDimOrSymbol = getAffineDimOrSymbol(6u, v11, a1);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(v14, AffineDimOrSymbol);
          v10 -= 8;
        }

        while (v10);
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::push_back(a4, v14);
      if (v14[0] != v15)
      {
        free(v14[0]);
      }

      v5 += 32;
    }

    while (v5 != v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::AffineExpr,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>>(a1, a2, 1);
  result = (*a1 + 32 * *(a1 + 8));
  *result = result + 2;
  result[1] = 0x200000000;
  if (*(v3 + 8))
  {
    result = llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(result, v3);
  }

  ++*(a1 + 8);
  return result;
}

uint64_t mlir::getReassociationIndicesAttribute(mlir::Builder *a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x400000000;
  v6 = (32 * a3) >> 5;
  if (v6 < 5)
  {
    v7 = 0;
    v9 = 0;
    v8 = v18;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v6, 8);
    v7 = v17;
    v8 = v16;
    v9 = v17;
  }

  v10 = 32 * a3;
  if (a3)
  {
    v11 = a2 + 32 * a3;
    v12 = &v8[v7];
    do
    {
      *v12++ = mlir::Builder::getI64ArrayAttr(a1, *a2, *(a2 + 8));
      a2 += 32;
    }

    while (a2 != v11);
    v9 = v17;
    v8 = v16;
  }

  LODWORD(v17) = v9 + (v10 >> 5);
  v13 = mlir::ArrayAttr::get(*a1, v8, v17);
  if (v16 != v18)
  {
    free(v16);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void mlir::getSymbolLessAffineMaps(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v6 = getMaxPosOfType<mlir::AffineDimExpr>(a1, a2);
  *a3 = a3 + 2;
  a3[1] = 0x400000000;
  if (a2 < 5)
  {
    if (!a2)
    {
      return;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, a2, 8);
  }

  v7 = &v4[4 * a2];
  do
  {
    Impl = mlir::AffineMap::getImpl(v6 + 1, 0, *v4, *(v4 + 2), ***v4);
    llvm::SmallVectorTemplateBase<mlir::AffineMap,true>::push_back(a3, Impl);
    v4 += 4;
  }

  while (v4 != v7);
}

uint64_t getMaxPosOfType<mlir::AffineDimExpr>(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = a1 + 32 * a2;
  do
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = *v2;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        v9 = &v10;
        mlir::AffineExpr::walk<void>(v7, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>, &v9);
        v6 -= 8;
      }

      while (v6);
    }

    v2 += 32;
  }

  while (v2 != v3);
  return v10;
}

uint64_t mlir::isReassociationValid(int **a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = **a1;
  v6 = &a1[a2];
  do
  {
    v7 = *a1;
    if (**a1 != v5 || v7[1])
    {
      goto LABEL_17;
    }

    v8 = v7[2];
    if (v8)
    {
      v9 = v7 + 6;
      v10 = 8 * v8;
      while (1)
      {
        v11 = *v9 && *(*v9 + 8) == 6;
        if (!v11 || v3 != *(*v9 + 16))
        {
          break;
        }

        ++v3;
        v9 += 2;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_14;
        }
      }

LABEL_17:
      if (a3)
      {
LABEL_18:
        result = 0;
        *a3 = v4;
        return result;
      }

      return 0;
    }

LABEL_14:
    ++v4;
    ++a1;
  }

  while (a1 != v6);
  if (v3 == v5)
  {
    return 1;
  }

  if (a3)
  {
    v4 = a2 - 1;
    goto LABEL_18;
  }

  return 0;
}

uint64_t mlir::reshapeLikeShapesAreCompatible(uint64_t (*a1)(uint64_t, void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  v12 = a7 + 32 * a8;
  while (1)
  {
    v29 = 1;
    v13 = *(a7 + 8);
    v14 = 1;
    if (!v13)
    {
      break;
    }

    v15 = 0;
    v16 = (a5 + 8 * v10);
    v17 = &v16[v13];
    v14 = 1;
    do
    {
      while (*v16 == 0x8000000000000000)
      {
        ++v16;
        v15 = 1;
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }

      v14 *= *v16;
      v29 = v14;
      ++v16;
    }

    while (v16 != v17);
    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_11:
    if (*(a3 + 8 * v11) != 0x8000000000000000)
    {
      v21[0] = v11;
      v23[0] = "expected dimension ";
      v24 = v21;
      v25 = 2819;
      v26 = v23;
      v27 = " of collapsed type to be dynamic since one or more of the corresponding dimensions in the expanded type is dynamic";
      v19 = 770;
      goto LABEL_18;
    }

LABEL_14:
    v10 += v13;
    ++v11;
    a7 += 32;
    if (a7 == v12)
    {
      return 1;
    }
  }

  if (*(a3 + 8 * v11) == v14)
  {
    goto LABEL_14;
  }

  v20 = v11;
  v21[0] = "expected dimension ";
  v21[2] = &v20;
  v22 = 2819;
  v23[0] = v21;
  v24 = " of collapsed type to be static value of ";
  v25 = 770;
  v26 = v23;
  v27 = &v29;
  v19 = 3586;
LABEL_18:
  v28 = v19;
  return a1(a2, &v26);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      v7 = *a1;
      if (v5)
      {
        v8 = 32 * v5;
        do
        {
          llvm::SmallVectorImpl<long long>::operator=(v7, v4);
          v4 += 32;
          v7 += 32;
          v8 -= 32;
        }

        while (v8);
        v9 = *a1;
        v6 = *(a1 + 8);
      }

      else
      {
        v9 = *a1;
      }

      v18 = v9 + 32 * v6;
      if (v18 != v7)
      {
        v19 = (v18 - 16);
        do
        {
          v20 = *(v19 - 2);
          if (v19 != v20)
          {
            free(v20);
          }

          v21 = v19 - 16;
          v19 -= 32;
        }

        while (v21 != v7);
      }

      goto LABEL_28;
    }

    if (*(a1 + 12) >= v5)
    {
      if (v6)
      {
        v10 = *a1;
        v11 = 32 * v6;
        do
        {
          llvm::SmallVectorImpl<long long>::operator=(v10, v4);
          v4 += 32;
          v10 += 32;
          v11 -= 32;
        }

        while (v11);
LABEL_16:
        v12 = *(a2 + 8);
        if (v6 != v12)
        {
          v13 = *a2;
          v14 = *a1;
          v15 = 32 * v6;
          v16 = 32 * v12;
          do
          {
            v17 = (v14 + v15);
            *v17 = v14 + v15 + 16;
            v17[1] = 0x200000000;
            if (*(v13 + v15 + 8))
            {
              llvm::SmallVectorImpl<long long>::operator=(v17, v13 + v15);
            }

            v14 += 32;
            v16 -= 32;
            v13 += 32;
          }

          while (v15 != v16);
        }

LABEL_28:
        *(a1 + 8) = v5;
        llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::clear(a2);
        return a1;
      }
    }

    else
    {
      llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::clear(a1);
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v5);
    }

    v6 = 0;
    goto LABEL_16;
  }

  return a1;
}