void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::~InsertSliceOpSourceCastInserter(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56[8] = *MEMORY[0x277D85DE8];
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v33 = v3;
  v34 = a2;
  v4 = v3[2];
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4 != *((*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    v15 = 0;
    goto LABEL_45;
  }

  v7 = v3[1];
  v47 = v49;
  v48 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v47, v7, &v7[8 * v4]);
  if (v3[2] >= 1)
  {
    v8 = 0;
    do
    {
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v34, &v50);
      ConstantIntValue = mlir::getConstantIntValue(*(v50 + 8 * v8));
      v11 = v10;
      if (v50 != v51)
      {
        free(v50);
      }

      if (v11)
      {
        if ((ConstantIntValue & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        *(v47 + v8) = ConstantIntValue;
      }

      ++v8;
    }

    while (v8 < v3[2]);
  }

  v44 = v46;
  v45 = 0x600000000;
  if (v48)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v44, &v47);
    if (v45)
    {
      v12 = 0;
      do
      {
        v13 = *(v44 + v12);
        v14 = v13 > 0x8000000000000000 || 8 * v45 - 8 == v12;
        v12 += 8;
      }

      while (!v14);
      if (v44 != v46)
      {
        free(v44);
      }

      if (v13 > 0x8000000000000000)
      {
        goto LABEL_42;
      }
    }

    else if (v44 != v46)
    {
      free(v44);
    }
  }

  v16 = v3[3];
  v17 = v3[4];
  *&v50 = v47;
  *(&v50 + 1) = v48;
  v41 = v16;
  v38 = v17;
  v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v50, &v41, &v38);
  v32 = v18;
  if (v3 != v18 && mlir::tensor::preservesStaticInformation(v3, v18) && mlir::tensor::CastOp::areCastCompatible(&v33 + 2, 1, &v32 + 2, 1))
  {
    v19 = (a3 + 24);
    v31 = *(a3 + 24);
    v20 = *(v34 + 24);
    *&v50 = *(*(v34 + 72) + 24);
    v21 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v20, &v32, &v50);
    v22 = v34;
    v23 = *(*(v34 + 72) + 32 * *(v34 + 104) + 24);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v34, &v41);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v34, &v38);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v34, &v35);
    v24 = *(v22 + 24);
    inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::InsertSliceOp>(a3 + 8, *(**v24 + 32));
    *&v50 = v24;
    *(&v50 + 1) = inserted;
    v51[0] = v52;
    v51[1] = 0x400000000;
    v52[4] = v53;
    v52[5] = 0x400000000;
    v53[4] = v54;
    v53[5] = 0x400000000;
    v54[8] = 4;
    v54[9] = v55;
    v54[10] = 0x100000000;
    v55[1] = v56;
    v55[2] = 0x100000000;
    v56[2] = 0;
    v56[1] = 0;
    v56[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v56[4] = 0;
    v56[6] = 0;
    mlir::tensor::InsertSliceOp::build((a3 + 8), &v50, (v21 - 16), v23, v41, v42, v38, v39, v35, v36);
    v26 = mlir::Operation::create(&v50);
    mlir::OpBuilder::insert((a3 + 8), v26);
    v27 = *(*(v26 + 6) + 16);
    mlir::OperationState::~OperationState(&v50);
    if (v27 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    (*(*a3 + 8))(a3, v22, v28);
    if (v35 != &v37)
    {
      free(v35);
    }

    if (v38 != &v40)
    {
      free(v38);
    }

    if (v41 != &v43)
    {
      free(v41);
    }

    if (v31)
    {
      *v19 = v31;
    }

    else
    {
      *v19 = 0;
      *(a3 + 32) = 0;
    }

    v15 = 1;
    goto LABEL_43;
  }

LABEL_42:
  v15 = 0;
LABEL_43:
  if (v47 != v49)
  {
    free(v47);
  }

LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return v15;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>]";
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

void anonymous namespace::FoldStaticZeroPadding::~FoldStaticZeroPadding(_anonymous_namespace_::FoldStaticZeroPadding *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldStaticZeroPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[8] = *MEMORY[0x277D85DE8];
  if (!mlir::tensor::PadOp::hasZeroLowPad(a2))
  {
    goto LABEL_15;
  }

  mlir::tensor::PadOp::getMixedHighPad(&v25, a2);
  v5 = v25;
  if (v26)
  {
    v6 = 8 * v26 - 8;
    do
    {
      v7 = *v5++;
      v8 = mlir::getConstantIntValue(v7) == 0;
      v10 = v9 & v8;
      v11 = (v9 & v8) != 1 || v6 == 0;
      v6 -= 8;
    }

    while (!v11);
    v5 = v25;
  }

  else
  {
    v10 = 1;
  }

  if (v5 != v27)
  {
    free(v5);
  }

  if (v10 && !*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    if (*(a2 + 36))
    {
      v15 = a2 - 16;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(*(a2 + 72) + 24);
    v18 = *(a2 + 24);
    v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v18 + 32));
    v25 = v18;
    v26 = v19;
    v27[0] = &v28;
    v27[1] = 0x400000000;
    v29[0] = v30;
    v29[1] = 0x400000000;
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
    v23 = v17;
    __src = v16;
    v12 = 1;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v27, &v23, 0, &v23, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v29, &__src, &v25);
    v20 = mlir::Operation::create(&v25);
    mlir::OpBuilder::insert((a3 + 8), v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(&v25);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    (*(*a3 + 8))(a3, a2, v22);
  }

  else
  {
LABEL_15:
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::tensor::PadOp::hasZeroLowPad(mlir::tensor::PadOp *this)
{
  v12[6] = *MEMORY[0x277D85DE8];
  mlir::tensor::PadOp::getMixedLowPad(&v10, this);
  v1 = v10;
  if (v11)
  {
    v2 = 8 * v11 - 8;
    do
    {
      v3 = *v1++;
      v4 = mlir::getConstantIntValue(v3) == 0;
      v6 = v5 & v4;
      v7 = v6 != 1 || v2 == 0;
      v2 -= 8;
    }

    while (!v7);
    v1 = v10;
  }

  else
  {
    v6 = 1;
  }

  if (v1 != v12)
  {
    free(v1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldStaticZeroPadding>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldStaticZeroPadding]";
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

void anonymous namespace::FoldSourceTensorCast::~FoldSourceTensorCast(_anonymous_namespace_::FoldSourceTensorCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldSourceTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v49[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_23;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_23:
      v21 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    goto LABEL_23;
  }

  v9 = *(*(*(v8 + 72) + 24) + 8);
  if (!mlir::tensor::preservesStaticInformation((*(v8 - 8) & 0xFFFFFFFFFFFFFFF8), (v9 & 0xFFFFFFFFFFFFFFF8)))
  {
    goto LABEL_23;
  }

  v10 = *(a2 + 96);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32) >> 3;
  if (*(a2 + 36))
  {
    v13 = a2 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = mlir::tensor::PadOp::inferResultType(v9 & 0xFFFFFFFFFFFFFFF8, v11, v12, *(*(a2 + 88) + 24), *(*(a2 + 88) + 32) >> 3, *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 8), *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 16));
  if (*(a2 + 36))
  {
    v15 = a2 - 16;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v24 = v14;
    v25 = *(a2 + 24);
    v26 = *(a2 + 72);
    v41 = *(v26 + 24);
    v28 = *(a2 + 88);
    v27 = *(a2 + 96);
    v39 = *(v27 + 32) >> 3;
    v40 = *(v27 + 24);
    v29 = *(a2 + 104);
    v30 = (*(a2 + 108) + v29);
    v31 = v26 + 32 * v29;
    v36 = v30 - v29;
    v32 = v26 + 32 * v30;
    v33 = (*(a2 + 112) + v30) - v30;
    v37 = *(v28 + 32) >> 3;
    v38 = *(v28 + 24);
    v34 = *(a2 + 80) != 0;
    mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, &v42);
    v35 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**v25 + 32));
    v44[0] = v25;
    v44[1] = v35;
    v44[2] = v45;
    v44[3] = 0x400000000;
    v45[4] = v46;
    v45[5] = 0x400000000;
    v46[4] = v47;
    v46[5] = 0x400000000;
    v47[8] = 4;
    v47[9] = v48;
    v47[10] = 0x100000000;
    v48[1] = v49;
    v48[2] = 0x100000000;
    v49[1] = 0;
    v49[2] = 0;
    v49[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v49[4] = 0;
    v49[6] = 0;
    mlir::tensor::PadOp::build(a3 + 1, v44, v24, v41, v40, v39, v38, v37, v31 & 0xFFFFFFFFFFFFFFF9 | 2, v36, v32 & 0xFFFFFFFFFFFFFFF9 | 2, v33, v34, v42, v43);
  }

  ((*a3)[5])(a3, a2);
  v16 = *(a2 + 72);
  v17 = *(*(v8 + 72) + 24);
  v18 = v16[1];
  if (v18)
  {
    v19 = *v16;
    *v18 = *v16;
    if (v19)
    {
      *(v19 + 8) = v16[1];
    }
  }

  v16[3] = v17;
  v16[1] = v17;
  v20 = *v17;
  *v16 = *v17;
  if (v20)
  {
    *(v20 + 8) = v16;
  }

  *v17 = v16;
  ((*a3)[6])(a3, a2);
  v21 = 1;
LABEL_24:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.pad";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldSourceTensorCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldSourceTensorCast]";
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

void anonymous namespace::FoldTargetTensorCast::~FoldTargetTensorCast(_anonymous_namespace_::FoldTargetTensorCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldTargetTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v4 = a2 - 16;
  v3 = *(a2 - 16);
  if (v3 && !*v3)
  {
    mlir::Operation::getUsers(a2, v34);
    v7 = *(v35[0] + 16);
    if (v7 && *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      if (*(a2 + 36))
      {
        v9 = v4;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v9 + 8);
      if (*(v7 + 36))
      {
        v11 = v7 - 16;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v11 + 8);
      if (mlir::tensor::preservesStaticInformation((v10 & 0xFFFFFFFFFFFFFFF8), (v12 & 0xFFFFFFFFFFFFFFF8)))
      {
        v13 = *(a2 + 24);
        v14 = *(a2 + 72);
        v31 = *(v14 + 24);
        v16 = *(a2 + 88);
        v15 = *(a2 + 96);
        v29 = *(v15 + 32) >> 3;
        v30 = *(v15 + 24);
        v17 = *(a2 + 104);
        v18 = (*(a2 + 108) + v17);
        v19 = v14 + 32 * v17;
        v27 = v18 - v17;
        v20 = v14 + 32 * v18;
        v21 = (*(a2 + 112) + v18) - v18;
        v28 = *(v16 + 24);
        v22 = *(v16 + 32) >> 3;
        v23 = *(a2 + 80) != 0;
        mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, &v32);
        v24 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**v13 + 32));
        v34[0] = v13;
        v34[1] = v24;
        v34[2] = v35;
        v34[3] = 0x400000000;
        v35[4] = v36;
        v35[5] = 0x400000000;
        v36[4] = v37;
        v36[5] = 0x400000000;
        v37[8] = 4;
        v37[9] = v38;
        v37[10] = 0x100000000;
        v38[1] = v39;
        v38[2] = 0x100000000;
        v39[1] = 0;
        v39[2] = 0;
        v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v39[4] = 0;
        v39[6] = 0;
        mlir::tensor::PadOp::build((a3 + 8), v34, v12 & 0xFFFFFFFFFFFFFFF8, v31, v30, v29, v28, v22, v19 & 0xFFFFFFFFFFFFFFF9 | 2, v27, v20 & 0xFFFFFFFFFFFFFFF9 | 2, v21, v23, v32, v33);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldTargetTensorCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldTargetTensorCast]";
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

void anonymous namespace::FoldOrthogonalPaddings::~FoldOrthogonalPaddings(_anonymous_namespace_::FoldOrthogonalPaddings *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldOrthogonalPaddings::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v70 = a2;
  v3 = *(*(a2 + 72) + 24);
  v4 = *(v3 + 8);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v7 = *(v3 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v3 + 24 * *(v3 + 16);
      v9 = v8 + 120;
      if (v8 == -120)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = v3 + 16 * v7 + 16;
    }

    v10 = *(*(v9 + 48) + 16);
    v11 = v10 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    v12 = v10 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v9 : 0;
    v69 = v12;
    if (v11)
    {
      v15 = *(*(v9 + 72) + 24);
      if ((~*(v15 + 8) & 7) == 0)
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = *(v15 + 8) & 7;
        if (v16 == 6)
        {
          v17 = v15 + 24 * *(v15 + 16);
          v18 = v17 + 120;
          if (v17 == -120)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v18 = v15 + 16 * v16 + 16;
        }

        v19 = *(*(v18 + 48) + 16);
        v20 = v19 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id ? v18 : 0;
        v68 = v20;
        if (v19 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id && !*(v18 + 16 * ((*(v18 + 44) >> 23) & 1) + 64))
        {
          v21 = *(*(v18 + 72) + 24);
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
                goto LABEL_12;
              }
            }

            else
            {
              v23 = v21 + 16 * v22 + 16;
            }

            v24 = *(*(v23 + 48) + 16);
            v25 = v24 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v23 : 0;
            v67 = v25;
            if (v24 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
            {
              v26 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 16);
              if (*((*(*(*(v23 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16) == v26)
              {
                if (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::hasUnitStride(&v69) && (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::hasUnitStride(&v67) & 1) != 0)
                {
                  if (mlir::tensor::PadOp::hasZeroLowPad(a2) && (mlir::tensor::PadOp::hasZeroLowPad(v18) & 1) != 0)
                  {
                    v65 = 0;
                    v66 = 0;
                    ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v70);
                    v28 = mlir::tensor::PadOp::getConstantPaddingValue(&v68);
                    if (ConstantPaddingValue)
                    {
                      v29 = v28;
                      if (v28)
                      {
                        v80 = &v66;
                        if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(ConstantPaddingValue, &v80))
                        {
                          v77 = &v65;
                          if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(v29, &v77) && v66 == v65)
                          {
                            mlir::tensor::PadOp::getPaddedDims(&v64, &v70);
                            mlir::tensor::PadOp::getPaddedDims(&v63, &v68);
                            if (llvm::SmallBitVector::anyCommon(&v64, &v63))
                            {
                              mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(*(a3 + 16), a2, "cannot fold PadOps with common padding dimensions");
                              goto LABEL_108;
                            }

                            IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), 0);
                            v80 = v82;
                            v81 = 0x600000000;
                            llvm::SmallVectorImpl<mlir::OpFoldResult>::assign(&v80, v26, IndexAttr & 0xFFFFFFFFFFFFFFFBLL);
                            if (v81)
                            {
                              v35 = 0;
                              v58 = v80;
                              v36 = 8 * v81;
                              do
                              {
                                mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v69, &v77);
                                v37 = v77[v35];
                                if (v77 != v79)
                                {
                                  free(v77);
                                }

                                mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v67, &v77);
                                v38 = v77[v35];
                                if (v77 != v79)
                                {
                                  free(v77);
                                }

                                if (llvm::SmallBitVector::operator[](&v64, v35) || (v41 = mlir::getConstantIntValue(v37), (v42 & 1) == 0) || v41)
                                {
                                  if (llvm::SmallBitVector::operator[](&v63, v35) || (ConstantIntValue = mlir::getConstantIntValue(v38), (v40 & 1) == 0) || ConstantIntValue)
                                  {
                                    mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(*(a3 + 16), a2, "cannot find zero-offset and zero-padding pair");
                                    goto LABEL_106;
                                  }
                                }

                                else
                                {
                                  v37 = v38;
                                }

                                v58[v35++] = v37;
                                v36 -= 8;
                              }

                              while (v36);
                            }

                            mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v69, &v74);
                            v77 = v79;
                            v78 = 0x600000000;
                            if (v75)
                            {
                              llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v77, &v74);
                            }

                            if (v74 != v76)
                            {
                              free(v74);
                            }

                            if (!v78)
                            {
LABEL_85:
                              v49 = mlir::Builder::getIndexAttr((a3 + 8), 0);
                              v74 = v76;
                              v75 = 0x600000000;
                              llvm::SmallVectorImpl<mlir::OpFoldResult>::assign(&v74, v26, v49 & 0xFFFFFFFFFFFFFFFBLL);
                              if (v75)
                              {
                                v50 = 0;
                                v51 = 8 * v75;
                                do
                                {
                                  if (llvm::SmallBitVector::operator[](&v64, v50))
                                  {
                                    mlir::tensor::PadOp::getMixedHighPad(v72, a2);
                                    *&v74[8 * v50] = *(v72[0] + v50);
                                    if (v72[0] != v73)
                                    {
                                      free(v72[0]);
                                    }
                                  }

                                  if (llvm::SmallBitVector::operator[](&v63, v50))
                                  {
                                    mlir::tensor::PadOp::getMixedHighPad(v72, v20);
                                    *&v74[8 * v50] = *(v72[0] + v50);
                                    if (v72[0] != v73)
                                    {
                                      free(v72[0]);
                                    }
                                  }

                                  ++v50;
                                  v51 -= 8;
                                }

                                while (v51);
                              }

                              v52 = *(a2 + 24);
                              v71[0] = *(*(v67 + 72) + 24);
                              mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(&v69, v72);
                              v53 = mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>((a3 + 8), v52, v71, &v80, &v77, v72);
                              if (v72[0] != v73)
                              {
                                free(v72[0]);
                              }

                              v54 = *(a2 + 24);
                              if (*(a2 + 36))
                              {
                                v55 = a2 - 16;
                              }

                              else
                              {
                                v55 = 0;
                              }

                              v56 = *(v55 + 8) & 0xFFFFFFFFFFFFFFF8;
                              if (*(v53 + 9))
                              {
                                v57 = (v53 - 16);
                              }

                              else
                              {
                                v57 = 0;
                              }

                              v61 = v57;
                              v62 = v56;
                              mlir::tensor::PadOp::getMixedLowPad(v72, a2);
                              v60 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) != 0;
                              mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v71);
                              mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v54, &v62, &v61, v72, &v74, &v60, v71);
                            }

                            v43 = 0;
                            v59 = v77;
                            v44 = 8 * v78;
                            while (1)
                            {
                              if (llvm::SmallBitVector::operator[](&v63, v43))
                              {
                                mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v69, &v74);
                                v45 = *&v74[8 * v43];
                                if (v74 != v76)
                                {
                                  free(v74);
                                }

                                v46 = *(*((*(*(*(v69 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8 * v43);
                                v47 = mlir::getConstantIntValue(v45);
                                if ((v48 & 1) == 0 || v47 != v46)
                                {
                                  mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(*(a3 + 16), a2, "cannot fold since the inner ExtractSliceOp size does not match the size of the outer padding");
                                  if (v77 != v79)
                                  {
                                    free(v77);
                                  }

LABEL_106:
                                  if (v80 != v82)
                                  {
                                    free(v80);
                                  }

LABEL_108:
                                  llvm::SmallBitVector::~SmallBitVector(&v63);
                                  llvm::SmallBitVector::~SmallBitVector(&v64);
                                  goto LABEL_12;
                                }

                                mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v67, &v74);
                                v59[v43] = *&v74[8 * v43];
                                if (v74 != v76)
                                {
                                  free(v74);
                                }
                              }

                              ++v43;
                              v44 -= 8;
                              if (!v44)
                              {
                                goto LABEL_85;
                              }
                            }
                          }
                        }
                      }
                    }

                    v30 = *(a3 + 16);
                    v31 = "cannot fold PadOps with different padding values";
                  }

                  else
                  {
                    v30 = *(a3 + 16);
                    v31 = "cannot fold PadOps with low padding";
                  }

                  mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(v30, a2, v31);
                  goto LABEL_12;
                }

                v32 = "cannot fold non-unit stride ExtractSliceOps";
              }

              else
              {
                v32 = "cannot fold rank-reducing chain";
              }

              v80 = v32;
              v82[8] = 259;
              v77 = &v80;
              v33 = *(a3 + 16);
              if (v33 && v33[2] == 1)
              {
                (*(*v33 + 88))(v33, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v77);
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

_DWORD *mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(_DWORD *result, uint64_t a2, _BYTE *a3)
{
  v3 = 1;
  v6 = 1;
  if (*a3)
  {
    v4 = a3;
    v3 = 3;
  }

  v5 = v3;
  v7 = &v4;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 88))(result, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v7);
    }
  }

  return result;
}

BOOL mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(uint64_t a1, unint64_t **a2)
{
  if ((~*(a1 + 8) & 7) != 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v2 + 24 * *(v2 + 16) + 120;
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = v2 + 16 * v3 + 16;
  }

  return mlir::detail::constant_op_binder<mlir::Attribute>::match(a2, v4);
}

BOOL llvm::SmallBitVector::anyCommon(llvm::SmallBitVector *this, const llvm::SmallBitVector *a2)
{
  v4 = *this;
  v5 = *a2;
  if (*this)
  {
    v17 = v4 >> 58;
    if (v5)
    {
      return (~((-1 << (v5 >> 58)) | (-1 << v17)) & ((v5 & v4) >> 1)) != 0;
    }

    v18 = *(v5 + 64);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      LODWORD(v6) = *(v4 + 8);
      v7 = *(v5 + 8);
      if (v7 >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v7;
      }

      if (v6)
      {
        v8 = *v4;
        v9 = *v5;
        v10 = v6 - 1;
        do
        {
          v12 = *v8++;
          v11 = v12;
          v13 = *v9++;
          v14 = v13 & v11;
          result = v14 != 0;
          if (v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = v10 == 0;
          }

          --v10;
        }

        while (!v16);
        return result;
      }

      return 0;
    }

    v17 = *(v4 + 64);
    v18 = v5 >> 58;
  }

  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
    return 0;
  }

  v20 = 0;
  while (!llvm::SmallBitVector::operator[](this, v20) || !llvm::SmallBitVector::operator[](a2, v20))
  {
    if (v19 == ++v20)
    {
      return 0;
    }
  }

  return 1;
}

char *mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  Slice = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = Slice;
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
  mlir::tensor::ExtractSliceOp::build(a1, v17, 0, *a3, *a4, *(a4 + 8), *a5, *(a5 + 8), *a6, *(a6 + 8));
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = v16;
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
  mlir::tensor::PadOp::build(a1, v17, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *a8, *(a8 + 8));
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldOrthogonalPaddings>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldOrthogonalPaddings]";
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

void anonymous namespace::FoldStaticPadding::~FoldStaticPadding(_anonymous_namespace_::FoldStaticPadding *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldStaticPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  v5 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = *(a2 + 36) ? a2 - 16 : 0;
    v10 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v10)
    {
      v11 = *(a2 + 44);
      v12 = v5[1];
      v80 = v5[2];
      v77 = *(v10 + 8);
      v78 = *(v10 + 16);
      v101[0] = v102;
      v101[1] = 0x600000000;
      v98 = v100;
      v99 = 0x600000000;
      v13 = a2 + 64;
      v14 = (v11 >> 23) & 1;
      v16 = a2 + 64 + 16 * v14;
      v15 = *(v16 + 24);
      LODWORD(v16) = *(v16 + 28);
      v79 = a2 + 64;
      if (v16)
      {
        v17 = (v16 + v15) - v15;
        v18 = (v3 + 32 * v15 + 24);
        while (1)
        {
          v19 = *v18;
          DWORD2(__s1) = 1;
          *&__s1 = 0;
          BYTE12(__s1) = 0;
          p_s1 = &__s1;
          if ((~*(v19 + 8) & 7) != 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          if (!v20)
          {
            goto LABEL_22;
          }

          v21 = *(v20 + 8) & 7;
          if (v21 == 6)
          {
            v22 = v20 + 24 * *(v20 + 16);
            v23 = (v22 + 120);
            if (v22 == -120)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v23 = (v20 + 16 * v21 + 16);
          }

          if (!mlir::detail::constant_int_value_binder::match(&p_s1, v23))
          {
LABEL_22:
            llvm::SmallVectorTemplateBase<long long,true>::push_back(v101, 0x8000000000000000);
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v98, v19);
            goto LABEL_30;
          }

          if (BYTE12(__s1))
          {
            if (DWORD2(__s1) >= 0x41)
            {
              v24 = __s1;
            }

            else
            {
              v24 = &__s1;
            }
          }

          else
          {
            if (DWORD2(__s1) <= 0x40)
            {
              if (DWORD2(__s1))
              {
                v25 = (__s1 << -BYTE8(__s1)) >> -BYTE8(__s1);
              }

              else
              {
                v25 = 0;
              }

              goto LABEL_29;
            }

            v24 = __s1;
          }

          v25 = *v24;
LABEL_29:
          llvm::SmallVectorTemplateBase<long long,true>::push_back(v101, v25);
LABEL_30:
          if (DWORD2(__s1) >= 0x41 && __s1)
          {
            MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
          }

          v18 += 4;
          if (!--v17)
          {
            v16 = *(a2 + 44);
            v14 = (v16 >> 23) & 1;
            v13 = v79;
            v26 = v79 + 16 * v14;
            LODWORD(v15) = *(v26 + 24);
            v27 = *(v26 + 28);
            LOBYTE(v16) = (v16 & 0x800000) == 0;
            goto LABEL_36;
          }
        }
      }

      v27 = 0;
LABEL_36:
      v96[0] = v97;
      v96[1] = 0x600000000;
      v93 = v95;
      v94 = 0x600000000;
      v28 = *(v13 + 16 * v14 + 32);
      if (v16)
      {
        v29 = 0;
        if (!v28)
        {
          goto LABEL_65;
        }

        goto LABEL_38;
      }

      v29 = *(a2 + 72);
      if (v28)
      {
LABEL_38:
        v30 = (v27 + v15);
        v31 = (v28 + v30) - v30;
        v32 = (v29 + 32 * v30 + 24);
        while (1)
        {
          v33 = *v32;
          DWORD2(__s1) = 1;
          *&__s1 = 0;
          BYTE12(__s1) = 0;
          p_s1 = &__s1;
          if ((~*(v33 + 8) & 7) != 0)
          {
            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          if (!v34)
          {
            goto LABEL_52;
          }

          v35 = *(v34 + 8) & 7;
          if (v35 == 6)
          {
            v36 = v34 + 24 * *(v34 + 16);
            v37 = (v36 + 120);
            if (v36 == -120)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v37 = (v34 + 16 * v35 + 16);
          }

          if (!mlir::detail::constant_int_value_binder::match(&p_s1, v37))
          {
LABEL_52:
            llvm::SmallVectorTemplateBase<long long,true>::push_back(v96, 0x8000000000000000);
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v93, v33);
            goto LABEL_60;
          }

          if (BYTE12(__s1))
          {
            if (DWORD2(__s1) >= 0x41)
            {
              v38 = __s1;
            }

            else
            {
              v38 = &__s1;
            }
          }

          else
          {
            if (DWORD2(__s1) <= 0x40)
            {
              if (DWORD2(__s1))
              {
                v39 = (__s1 << -BYTE8(__s1)) >> -BYTE8(__s1);
              }

              else
              {
                v39 = 0;
              }

              goto LABEL_59;
            }

            v38 = __s1;
          }

          v39 = *v38;
LABEL_59:
          llvm::SmallVectorTemplateBase<long long,true>::push_back(v96, v39);
LABEL_60:
          if (DWORD2(__s1) >= 0x41 && __s1)
          {
            MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
          }

          v32 += 4;
          if (!--v31)
          {
            v14 = (*(a2 + 44) >> 23) & 1;
            v13 = v79;
            break;
          }
        }
      }

LABEL_65:
      v40 = *(v13 + 16 * v14 + 16);
      v41 = *(v40 + 24);
      v42 = *(v40 + 32);
      v90 = v92;
      v91 = 0x600000000;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v90, v41, &v41[v42 & 0xFFFFFFFFFFFFFFF8]);
      v43 = *(v13 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v44 = *(v43 + 24);
      v45 = *(v43 + 32);
      v87 = v89;
      v88 = 0x600000000;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v87, v44, &v44[v45 & 0xFFFFFFFFFFFFFFF8]);
      v46 = v80;
      if (v80 == v78 && v80 == v91 && v80 == v88)
      {
        v47 = v90;
        v48 = v87;
        v76 = v90;
        v74 = v87;
        if (v80)
        {
          v49 = 0;
          v50 = 0;
          v51 = v101[0];
          v52 = v96[0];
          v53 = v90;
          v54 = v87;
          do
          {
            if (*v53 == 0x8000000000000000)
            {
              v55 = v51[v49++];
              *v53 = v55;
            }

            if (*v54 == 0x8000000000000000)
            {
              v56 = v52[v50++];
              *v54 = v56;
            }

            ++v54;
            ++v53;
            --v46;
          }

          while (v46);
          __s2 = v86;
          v85 = 0x600000000;
          v57 = v77;
          v58 = v48;
          v59 = v80;
          do
          {
            v61 = *v57++;
            v60 = v61;
            if (v61 == 0x8000000000000000)
            {
              v60 = 0x8000000000000000;
              if (*v47 != 0x8000000000000000 && *v58 != 0x8000000000000000)
              {
                if (*v12 == 0x8000000000000000)
                {
                  v60 = 0x8000000000000000;
                }

                else
                {
                  v60 = *v58 + *v47 + *v12;
                }
              }
            }

            llvm::SmallVectorTemplateBase<long long,true>::push_back(&__s2, v60);
            ++v12;
            ++v58;
            ++v47;
            --v59;
          }

          while (v59);
        }

        else
        {
          __s2 = v86;
          v85 = 0x600000000;
        }

        *&__s1 = v104;
        *(&__s1 + 1) = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&__s1, v77, &v77[v80]);
        v62 = v85;
        v63 = __s2;
        if (DWORD2(__s1) == v85 && (v64 = __s1, !memcmp(__s1, __s2, 8 * DWORD2(__s1))))
        {
          if (v64 != v104)
          {
            free(v64);
          }
        }

        else
        {
          if (v62)
          {
            v65 = 8 * v62 - 8;
            do
            {
              v66 = *v63++;
              v67 = v66 == 0x8000000000000000;
              v68 = v66 != 0x8000000000000000 || v65 == 0;
              v65 -= 8;
            }

            while (!v68);
          }

          else
          {
            v67 = 1;
          }

          if (__s1 != v104)
          {
            free(__s1);
          }

          if (!v67)
          {
            v69 = *((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 24);
            *&__s1 = __s2;
            *(&__s1 + 1) = v85;
            __src = 0;
            p_s1 = v69;
            v70 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v69 + 32), &__s1, &p_s1, &__src);
            v71 = *(a2 + 24);
            v72 = *(v79 + 16 * ((*(a2 + 44) >> 23) & 1)) != 0;
            mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, &p_s1);
            v73 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**v71 + 32));
            *&__s1 = v71;
            *(&__s1 + 1) = v73;
            v104[0] = v105;
            v104[1] = 0x400000000;
            v105[4] = v106;
            v105[5] = 0x400000000;
            v106[4] = v107;
            v106[5] = 0x400000000;
            v107[8] = 4;
            v107[9] = v108;
            v107[10] = 0x100000000;
            v108[1] = v109;
            v108[2] = 0x100000000;
            v109[2] = 0;
            v109[1] = 0;
            v109[3] = &mlir::detail::TypeIDResolver<void,void>::id;
            v109[4] = 0;
            v109[6] = 0;
            mlir::tensor::PadOp::build((a3 + 8), &__s1, v70, v4, v76, v80, v74, v80, v98 & 0xFFFFFFFFFFFFFFF9, v99, v93 & 0xFFFFFFFFFFFFFFF9, v94, v72, p_s1, v83);
          }
        }

        if (__s2 != v86)
        {
          free(__s2);
        }
      }

      if (v87 != v89)
      {
        free(v87);
      }

      if (v90 != v92)
      {
        free(v90);
      }

      if (v93 != v95)
      {
        free(v93);
      }

      if (v96[0] != v97)
      {
        free(v96[0]);
      }

      if (v98 != v100)
      {
        free(v98);
      }

      if (v101[0] != v102)
      {
        free(v101[0]);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldStaticPadding>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldStaticPadding]";
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

void anonymous namespace::FoldConsecutiveConstantPadding::~FoldConsecutiveConstantPadding(_anonymous_namespace_::FoldConsecutiveConstantPadding *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v5 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)))
  {
    v6 = "skipping unfoldable pad";
    goto LABEL_17;
  }

  v7 = *(*(a2 + 72) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
LABEL_16:
    v6 = "producer is not a foldable tensor.pad op";
    goto LABEL_17;
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

  v11 = *(*(v10 + 48) + 16);
  v12 = v11 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id;
  if (v11 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v32 = v13;
  if (!v12 || *(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 64))
  {
    goto LABEL_16;
  }

  ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v33);
  v18 = mlir::tensor::PadOp::getConstantPaddingValue(&v32);
  if (ConstantPaddingValue && v18 && ConstantPaddingValue == v18)
  {
    v31 = *(a2 + 24);
    v19 = *(a3 + 8);
    AffineDimOrSymbol = getAffineDimOrSymbol(6u, 0, v19);
    v28[0] = a3;
    v28[1] = &v31;
    v28[2] = &AffineDimOrSymbol;
    v28[3] = &v29;
    v29 = getAffineDimOrSymbol(6u, 1, v19);
    mlir::tensor::PadOp::getMixedHighPad(&v39, a2);
    v20 = v39;
    v21 = v40;
    mlir::tensor::PadOp::getMixedHighPad(&v36, v10);
    if (v36 != v38)
    {
      free(v36);
    }

    if (v39 != &v41)
    {
      free(v39);
    }

    mlir::tensor::PadOp::getMixedLowPad(&v36, a2);
    v22 = v36;
    v23 = v37;
    mlir::tensor::PadOp::getMixedLowPad(&v34, v10);
    if (v34 != &v35)
    {
      free(v34);
    }

    if (v36 != v38)
    {
      free(v36);
    }

    v24 = *(a2 + 24);
    if (*(a2 + 36))
    {
      v25 = a2 - 16;
    }

    else
    {
      v25 = 0;
    }

    v34 = (*(v25 + 8) & 0xFFFFFFFFFFFFFFF8);
    v27 = *(*(v10 + 72) + 24);
    v26 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1)) != 0;
    mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, &v36);
    mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v24, &v34, &v27, &v39, v42, &v26, &v36);
  }

  v6 = "cannot fold PadOps with different or non-constant padding values";
LABEL_17:
  v42[0] = v6;
  v43 = 259;
  v39 = v42;
  v14 = *(a3 + 16);
  if (v14 && v14[2] == 1)
  {
    (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v39);
  }

  result = 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(mlir::tensor::PadOp,mlir::PatternRewriter &)const::{lambda(llvm::ArrayRef<mlir::OpFoldResult>,llvm::ArrayRef<mlir::OpFoldResult>)#1}::operator()(void *a1, uint64_t *a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t *a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (a4)
  {
    v6 = a3;
    v9 = 8 * a4;
    do
    {
      v10 = *a2;
      v11 = *a2[1];
      v12 = mlir::AffineExpr::operator+(a2[2], *a2[3], a3);
      v13 = *v6;
      v6 = (v6 + 8);
      v17[0] = v13;
      v14 = *a5++;
      v17[1] = v14;
      ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply((v10 + 8), v11, v12, v17, 2);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a1, ComposedFoldedAffineApply);
      v9 -= 8;
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = v16;
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
  mlir::tensor::PadOp::build(a1, v17, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *a8, *(a8 + 8));
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldConsecutiveConstantPadding>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldConsecutiveConstantPadding]";
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

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpConstantArgumentFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v22 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(&v22, &v32);
  v29 = v31;
  v30 = 0x600000000;
  if (v33)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v29, &v32);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(&v22, &v32);
  v26 = v28;
  v27 = 0x600000000;
  if (v33)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v26, &v32);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(&v22, &v32);
  v23 = v25;
  v24 = 0x600000000;
  if (v33)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v23, &v32);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (mlir::foldDynamicIndexList(&v29, 1, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v26, 1, 0) & 1) != 0 || (v4 = 0, (mlir::foldDynamicIndexList(&v23, 0, 1)))
  {
    v5 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(*((*(*(*(v22 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16), *(*(*(v22 + 72) + 32 * *(v22 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v29, v30, v26, v27, v23, v24);
    v6 = v22;
    v7 = *(*(v22 + 72) + 24);
    v20 = v7;
    v21 = v5;
    if (v5 != (*(v7 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v8 = (a3 + 24);
      v9 = *(v22 + 16);
      v19 = *(a3 + 24);
      if (v9)
      {
        v9 = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v9)
        {
          v9 = *(v9 + 16);
        }
      }

      *(a3 + 24) = *(v9 + 16);
      *(a3 + 32) = v9;
      v7 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::Value &>((a3 + 8), *(v6 + 24), &v21, &v20) - 16;
      if (v19)
      {
        *v8 = v19;
      }

      else
      {
        *v8 = 0;
        *(a3 + 32) = 0;
      }
    }

    v10 = v22;
    v11 = *(*(v22 + 72) + 32 * *(v22 + 104) + 24);
    v12 = *(v22 + 24);
    inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ParallelInsertSliceOp>(*(**v12 + 32));
    v32 = v12;
    v33 = inserted;
    v34[0] = v35;
    v34[1] = 0x400000000;
    v35[4] = v36;
    v35[5] = 0x400000000;
    v36[4] = v37;
    v36[5] = 0x400000000;
    v37[8] = 4;
    v37[9] = v38;
    v37[10] = 0x100000000;
    v38[1] = v39;
    v38[2] = 0x100000000;
    v39[1] = 0;
    v39[2] = 0;
    v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v39[4] = 0;
    v39[6] = 0;
    mlir::tensor::ParallelInsertSliceOp::build((a3 + 8), &v32, v7, v11, v29, v30, v26, v27, v23, v24);
    v14 = mlir::Operation::create(&v32);
    mlir::OpBuilder::insert((a3 + 8), v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(&v32);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    (*(*a3 + 8))(a3, v10, v16);
    v4 = 1;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ParallelInsertSliceOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.parallel_insert_slice";
    v5[3] = 28;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>]";
  v6 = 157;
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

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpCastFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79[8] = *MEMORY[0x277D85DE8];
  v55 = a2;
  v5 = *(a2 + 72);
  v6 = *(a2 + 68);
  if (v6)
  {
    v7 = (v5 + 24);
    do
    {
      v8 = *v7;
      if ((~*(*v7 + 8) & 7) == 0)
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
        v10 = v8 + 24 * *(v8 + 16) + 120;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = v8 + 16 * v9 + 16;
      }

      if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_51;
      }

LABEL_12:
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v11 = *(v5 + 24);
  if ((~*(v11 + 8) & 7) != 0)
  {
    v12 = *(v5 + 24);
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v12 += 24 * *(v12 + 16) + 120;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 += 16 * v13 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v14 = *(*(v12 + 72) + 24);
    if (mlir::tensor::preservesStaticInformation((*(v12 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8)))
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF00;
      v12 = v14;
      v16 = 1;
      goto LABEL_26;
    }
  }

  v12 = 0;
LABEL_25:
  v16 = 0;
  v15 = 0;
LABEL_26:
  v17 = v15 | v12;
  v18 = *(v5 + 32 * *(a2 + 104) + 24);
  v19 = *(v18 + 8);
  if ((~*(v18 + 8) & 7) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_39;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16) + 120;
    if (!v22)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v22 = v20 + 16 * v21 + 16;
  }

  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v23 = *(*(v22 + 72) + 24);
    v24 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::tensor::preservesStaticInformation((*(v22 - 8) & 0xFFFFFFFFFFFFFFF8), v24))
    {
      if (!v16)
      {
        v17 = v11;
      }

      goto LABEL_41;
    }
  }

LABEL_39:
  if ((v16 & 1) == 0)
  {
LABEL_51:
    v27 = 0;
    goto LABEL_52;
  }

  v24 = (v19 & 0xFFFFFFFFFFFFFFF8);
  v23 = v18;
LABEL_41:
  if (*(*(*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v25 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v25 = 0;
  }

  if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v24 = 0;
  }

  if (v25)
  {
    v26 = v24 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    goto LABEL_51;
  }

  v30 = *(a2 + 88);
  v31 = *(v30 + 24);
  v32 = *(v30 + 32);
  v69 = v71;
  v70 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v69, v31, &v31[v32 & 0xFFFFFFFFFFFFFFF8]);
  mlir::computeRankReductionMask(v69, v70, *(v25 + 8), *(v25 + 16), 1, v65);
  if (v68 == 1)
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(&v55, &v72);
    v62 = v64;
    v63 = 0x600000000;
    if (v73)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v62, &v72);
    }

    if (v72 != v74)
    {
      free(v72);
    }

    v37 = v69;
    if (v70)
    {
      v53 = v23;
      v54 = v17;
      v38 = a3;
      v39 = 0;
      v40 = 0;
      v41 = 8 * v70;
      do
      {
        if ((v68 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        LODWORD(v72) = v40;
        v42 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::find(v65, &v72);
        v43 = (v66 + 4 * v67);
        if (v65[0])
        {
          v43 = &v68;
        }

        if (v43 == v42)
        {
          v44 = *(*(v25 + 8) + 8 * v39);
          if (v44 != 0x8000000000000000)
          {
            v45 = v39;
            v46 = mlir::IntegerAttr::get(*(**(v38 + 8) + 472), v44);
            *(v62 + v40) = v46 & 0xFFFFFFFFFFFFFFFBLL;
            ++v39;
            v37[v40] = *(*(v25 + 8) + 8 * v45);
          }
        }

        ++v40;
        v41 -= 8;
      }

      while (v41);
      v37 = v69;
      v47 = v70;
      a3 = v38;
      v17 = v54;
      v23 = v53;
    }

    else
    {
      v47 = 0;
    }

    if (verifyInsertSliceOp(v25, v24, v33, v34, v37, v47, v35, v36, 0))
    {
      v27 = 0;
    }

    else
    {
      v48 = *(v55 + 24);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(&v55, &v59);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(&v55, &v56);
      inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ParallelInsertSliceOp>(*(**v48 + 32));
      v72 = v48;
      v73 = inserted;
      v74[0] = v75;
      v74[1] = 0x400000000;
      v75[4] = v76;
      v75[5] = 0x400000000;
      v76[4] = v77;
      v76[5] = 0x400000000;
      v77[8] = 4;
      v77[9] = v78;
      v77[10] = 0x100000000;
      v78[1] = v79;
      v78[2] = 0x100000000;
      v79[2] = 0;
      v79[1] = 0;
      v79[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v79[4] = 0;
      v79[6] = 0;
      mlir::tensor::ParallelInsertSliceOp::build((a3 + 8), &v72, v17, v23, v59, v60, v62, v63, v56, v57);
      v50 = mlir::Operation::create(&v72);
      mlir::OpBuilder::insert((a3 + 8), v50);
      v51 = *(*(v50 + 6) + 16);
      mlir::OperationState::~OperationState(&v72);
      if (v51 != &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
      {
        v50 = 0;
      }

      if (v56 != &v58)
      {
        free(v56);
      }

      if (v59 != &v61)
      {
        free(v59);
      }

      if (*(v50 + 9))
      {
        v52 = (v50 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v52 = 4;
      }

      (**a3)(a3, v55, v52);
      v27 = 1;
    }

    if (v62 != v64)
    {
      free(v62);
    }

    if ((v68 & 1) != 0 && (v65[0] & 1) == 0)
    {
      MEMORY[0x25F891030](v66, 4);
    }
  }

  else
  {
    v27 = 0;
  }

  if (v69 != v71)
  {
    free(v69);
  }

LABEL_52:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>]";
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

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpSourceCastInserter(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = (*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v4;
  v36 = a2;
  v5 = v4[2];
  if (v5 != *((*(*(v3 + 32 * *(a2 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    v15 = 0;
    goto LABEL_45;
  }

  v7 = v4[1];
  v49 = v51;
  v50 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v49, v7, &v7[8 * v5]);
  if (v4[2] >= 1)
  {
    v8 = 0;
    do
    {
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(&v36, &v52);
      ConstantIntValue = mlir::getConstantIntValue(*(v52 + 8 * v8));
      v11 = v10;
      if (v52 != v53)
      {
        free(v52);
      }

      if (v11)
      {
        if ((ConstantIntValue & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        *(v49 + v8) = ConstantIntValue;
      }

      ++v8;
    }

    while (v8 < v4[2]);
  }

  v46 = v48;
  v47 = 0x600000000;
  if (v50)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v46, &v49);
    if (v47)
    {
      v12 = 0;
      do
      {
        v13 = *(v46 + v12);
        v14 = v13 > 0x8000000000000000 || 8 * v47 - 8 == v12;
        v12 += 8;
      }

      while (!v14);
      if (v46 != v48)
      {
        free(v46);
      }

      if (v13 > 0x8000000000000000)
      {
        goto LABEL_42;
      }
    }

    else if (v46 != v48)
    {
      free(v46);
    }
  }

  v16 = v4[3];
  v17 = v4[4];
  *&v52 = v49;
  *(&v52 + 1) = v50;
  v43 = v16;
  v40 = v17;
  v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v52, &v43, &v40);
  v34 = v18;
  if (v4 != v18 && mlir::tensor::preservesStaticInformation(v4, v18) && mlir::tensor::CastOp::areCastCompatible(&v35 + 2, 1, &v34 + 2, 1))
  {
    v19 = (a3 + 24);
    v20 = v36;
    v21 = *(v36 + 16);
    v33 = *(a3 + 24);
    if (v21)
    {
      v21 = *(v21 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v21)
      {
        v21 = *(v21 + 16);
      }
    }

    *(a3 + 24) = *(v21 + 16);
    *(a3 + 32) = v21;
    v22 = *(v20 + 24);
    *&v52 = *(*(v20 + 72) + 24);
    v23 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v22, &v34, &v52);
    v24 = v36;
    v25 = *(*(v36 + 72) + 32 * *(v36 + 104) + 24);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(&v36, &v43);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(&v36, &v40);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(&v36, &v37);
    v26 = *(v24 + 24);
    inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ParallelInsertSliceOp>(*(**v26 + 32));
    *&v52 = v26;
    *(&v52 + 1) = inserted;
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
    v58[2] = 0;
    v58[1] = 0;
    v58[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v58[4] = 0;
    v58[6] = 0;
    mlir::tensor::ParallelInsertSliceOp::build((a3 + 8), &v52, (v23 - 16), v25, v43, v44, v40, v41, v37, v38);
    v28 = mlir::Operation::create(&v52);
    mlir::OpBuilder::insert((a3 + 8), v28);
    v29 = *(*(v28 + 6) + 16);
    mlir::OperationState::~OperationState(&v52);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    (*(*a3 + 8))(a3, v24, v30);
    if (v37 != &v39)
    {
      free(v37);
    }

    if (v40 != &v42)
    {
      free(v40);
    }

    if (v43 != &v45)
    {
      free(v43);
    }

    if (v33)
    {
      *v19 = v33;
    }

    else
    {
      *v19 = 0;
      *(a3 + 32) = 0;
    }

    v15 = 1;
    goto LABEL_43;
  }

LABEL_42:
  v15 = 0;
LABEL_43:
  if (v49 != v51)
  {
    free(v49);
  }

LABEL_45:
  v31 = *MEMORY[0x277D85DE8];
  return v15;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>]";
  v6 = 153;
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

uint64_t isInvalidPackingPosSpecification(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return 1;
  }

  v3 = a2;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (a2)
  {
    v5 = a1;
    v6 = 8 * a2;
    v7 = a1;
    do
    {
      v8 = *v7++;
      v15 = v8;
      llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v16, &v15, v19);
      v6 -= 8;
    }

    while (v6);
    if (v3 == v17)
    {
      v9 = 8 * v3 - 8;
      do
      {
        v11 = *v5++;
        v10 = v11;
        v12 = v11 >= 0 && v10 < a3;
        v3 = !v12;
        if (!v12)
        {
          break;
        }

        v13 = v9;
        v9 -= 8;
      }

      while (v13);
    }

    else
    {
      v3 = 1;
    }
  }

  MEMORY[0x25F891030](v16, 8);
  return v3;
}

uint64_t llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::PackOp>(mlir::tensor::PackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (v1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 1;
  }

  v6 = *a1;
  v7 = *v2;
  v8 = 8 * v3 - 8;
  v9 = 8 * v1 - 8;
  while (1)
  {
    v10 = *v6;
    if ((*v7 & 4) == 0)
    {
      v11 = *v7 & 0xFFFFFFFFFFFFFFF8;
      if (v11)
      {
        break;
      }
    }

    if (v10 != 0x8000000000000000)
    {
      return 0;
    }

LABEL_20:
    result = 1;
    if (v9)
    {
      ++v6;
      ++v7;
      v15 = v8;
      v8 -= 8;
      v9 -= 8;
      if (v15)
      {
        continue;
      }
    }

    return result;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v12 = *v7 & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 24);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  if (v13)
  {
    v14 = (*(v12 + 16) << -v13) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 == v14)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::UnPackOp>(mlir::tensor::UnPackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (v1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 1;
  }

  v6 = *a1;
  v7 = *v2;
  v8 = 8 * v3 - 8;
  v9 = 8 * v1 - 8;
  while (1)
  {
    v10 = *v6;
    if ((*v7 & 4) == 0)
    {
      v11 = *v7 & 0xFFFFFFFFFFFFFFF8;
      if (v11)
      {
        break;
      }
    }

    if (v10 != 0x8000000000000000)
    {
      return 0;
    }

LABEL_20:
    result = 1;
    if (v9)
    {
      ++v6;
      ++v7;
      v15 = v8;
      v8 -= 8;
      v9 -= 8;
      if (v15)
      {
        continue;
      }
    }

    return result;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v12 = *v7 & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 24);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  if (v13)
  {
    v14 = (*(v12 + 16) << -v13) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 == v14)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::UnPackOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.unpack";
    v5[3] = 13;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

void FoldTensorCastPackOp::~FoldTensorCastPackOp(FoldTensorCastPackOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t FoldTensorCastPackOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  result = foldTensorCastPrecondition(a2);
  if (result)
  {
    v6 = *(a2 + 36);
    if (v6)
    {
      v7 = a2 - 16;
    }

    else
    {
      v7 = 0;
    }

    v58[0] = v59;
    v58[1] = 0x600000000;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(v58, v7, 0, v7, v6);
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    }

    else
    {
      InterfaceFor = 0;
    }

    mlir::tensor::getUpdatedOperandsAfterCastOpFolding(&v56, a2, InterfaceFor, v58);
    v9 = *v58[0];
    mlir::tensor::PackOp::getMixedTiles(v51, a2);
    getNewMixedTileSizes(&v53, a3, v9, v51);
    if (v51[0] != &v52)
    {
      free(v51[0]);
    }

    v10 = *(a2 + 24);
    v11 = *(a2 + 44);
    v12 = a2 + 16 * ((v11 >> 23) & 1);
    if ((v11 & 0x800000) != 0)
    {
      v13 = *(a2 + 72);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v12 + 64);
    if (*(v12 + 96))
    {
      v15 = *(v13 + 32 * (*(v12 + 92) + *(v12 + 88)) + 24);
    }

    else
    {
      v15 = 0;
    }

    v16 = v56;
    v17 = *(v14 + 32);
    v45 = *(v14 + 24);
    OuterDimsPerm = mlir::tensor::PackOp::getOuterDimsPerm(a2);
    v20 = v19;
    v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id, *(**v10 + 32));
    if ((v22 & 1) == 0)
    {
      v74 = 1283;
      v73[0] = "tensor.pack";
      v73[1] = 11;
      v70[8] = 259;
      llvm::operator+(&v71, &v68, v60);
      llvm::report_fatal_error(v60, 1);
    }

    v23 = v17 >> 3;
    v60[0] = v10;
    v60[1] = v21;
    v61[0] = &v62;
    v61[1] = 0x400000000;
    v63[0] = v64;
    v63[1] = 0x400000000;
    v64[4] = v65;
    v64[5] = 0x400000000;
    v65[8] = 4;
    v65[9] = v66;
    v65[10] = 0x100000000;
    v66[1] = v67;
    v66[2] = 0x100000000;
    v67[2] = 0;
    v67[1] = 0;
    v67[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v67[4] = 0;
    v67[6] = 0;
    v25 = *v16;
    v24 = v16[1];
    v26 = v53;
    v71 = v73;
    v72 = 0x600000000;
    v68 = v70;
    v69 = 0x600000000;
    if (v54)
    {
      v27 = 8 * v54;
      do
      {
        v28 = *v26++;
        mlir::dispatchIndexOpFoldResult(v28, &v68, &v71);
        v27 -= 8;
      }

      while (v27);
    }

    v29 = *(v24 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v30 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), OuterDimsPerm, v20);
    }

    else
    {
      v30 = 0;
    }

    v46 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v45, v23);
    v31 = v68;
    v32 = v69;
    v33 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v71, v72);
    v49 = v25;
    __src = v29;
    v48 = v24;
    v47 = v15;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v61, &v49, 0, &v49, 1);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v61, &v48, 0, &v48, 1);
    if (v15)
    {
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v61, &v47, 0, &v47, 1);
    }

    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v61, v31 & 0xFFFFFFFFFFFFFFF9, 0, v31 & 0xFFFFFFFFFFFFFFF9, v32);
    v34 = v47 != 0;
    v35 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(v60);
    *(v35 + 24) = 0x100000001;
    *(v35 + 32) = v34;
    *(v35 + 36) = v32;
    if (v30)
    {
      *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(v60) + 8) = v30;
    }

    *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(v60) = v46;
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(v60) + 16) = v33;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v63, &__src, v51);
    if (v68 != v70)
    {
      free(v68);
    }

    if (v71 != v73)
    {
      free(v71);
    }

    v36 = mlir::Operation::create(v60);
    mlir::OpBuilder::insert((a3 + 8), v36);
    v37 = *(*(v36 + 6) + 16);
    mlir::OperationState::~OperationState(v60);
    if (v37 == &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    *(v38 + 7) = mlir::Operation::getDiscardableAttrDictionary(a2);
    if (*(a2 + 36))
    {
      v39 = a2 - 16;
    }

    else
    {
      v39 = 0;
    }

    v40 = v38 - 16;
    if (*(v38 + 9))
    {
      v41 = (v38 - 16);
    }

    else
    {
      v41 = 0;
    }

    v60[0] = v41;
    v42 = (*(v39 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v41 + 8) & 0xFFFFFFFFFFFFFFF8) != v42)
    {
      v43 = *(a2 + 24);
      v71 = v42;
      v40 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type,mlir::Value &>((a3 + 8), v43, &v71, v60) - 16;
    }

    v71 = v40;
    (**a3)(a3, a2, &v71, 1);
    if (v53 != &v55)
    {
      free(v53);
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    if (v58[0] != v59)
    {
      free(v58[0]);
    }

    result = 1;
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void getNewMixedTileSizes(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  v8 = *a3;
  v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  v11 = (*(v10 + 24))(v10, a3);
  v13 = *(a4 + 8);
  if (v12 <= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 8 * (v12 - v13);
  }

  if (v12 >= v13)
  {
    v15 = *(a4 + 8);
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = (v14 + v11);
    v17 = *a4;
    v18 = 8 * v13 - 8;
    v19 = 8 * v15 - 8;
    do
    {
      v20 = *v17;
      if (*v16 != 0x8000000000000000 && (v20 < 8 || (*v17 & 4) != 0))
      {
        v20 = mlir::Builder::getIntegerAttr(a2 + 8, *(**(a2 + 8) + 472), *v16) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a1, v20);
      if (!v19)
      {
        break;
      }

      ++v16;
      ++v17;
      v22 = v18;
      v18 -= 8;
      v19 -= 8;
    }

    while (v22);
  }
}

char *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = &v18;
  v17[1] = 0x400000000;
  v19[0] = v20;
  v19[1] = 0x400000000;
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
  v14 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v19, &__src, v16);
  v10 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

const char *llvm::detail::getTypeNameImpl<FoldTensorCastPackOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = FoldTensorCastPackOp]";
  v6 = 82;
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

void FoldTensorCastUnPackOp::~FoldTensorCastUnPackOp(FoldTensorCastUnPackOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t FoldTensorCastUnPackOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[8] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  result = foldTensorCastPrecondition(a2);
  if (result)
  {
    v6 = *(a2 + 36);
    if (v6)
    {
      v7 = a2 - 16;
    }

    else
    {
      v7 = 0;
    }

    v36[0] = v37;
    v36[1] = 0x600000000;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(v36, v7, 0, v7, v6);
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    }

    else
    {
      InterfaceFor = 0;
    }

    mlir::tensor::getUpdatedOperandsAfterCastOpFolding(&v34, a2, InterfaceFor, v36);
    v9 = *v34;
    v10 = *(*v34 + 8);
    mlir::tensor::UnPackOp::getMixedTiles(v29, a2);
    getNewMixedTileSizes(&v31, a3, (v10 & 0xFFFFFFFFFFFFFFF8), v29);
    if (v29[0] != &v30)
    {
      free(v29[0]);
    }

    v11 = *(a2 + 24);
    v12 = v34;
    v13 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v14 = *(v13 + 24);
    v15 = *(v13 + 32) >> 3;
    OuterDimsPerm = mlir::tensor::UnPackOp::getOuterDimsPerm(a2);
    v18 = v17;
    v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::UnPackOp>(*(**v11 + 32));
    v38[0] = v11;
    v38[1] = v19;
    v38[2] = v39;
    v38[3] = 0x400000000;
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
    mlir::tensor::UnPackOp::build((a3 + 8), v38, v9, v12[1], v14, v15, v31, v32, OuterDimsPerm, v18);
    v20 = mlir::Operation::create(v38);
    mlir::OpBuilder::insert((a3 + 8), v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(v38);
    if (v21 != &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
    {
      v20 = 0;
    }

    *(v20 + 7) = mlir::Operation::getDiscardableAttrDictionary(a2);
    if (*(a2 + 36))
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    v23 = v20 - 16;
    if (*(v20 + 9))
    {
      v24 = (v20 - 16);
    }

    else
    {
      v24 = 0;
    }

    v38[0] = v24;
    v25 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v24 + 8) & 0xFFFFFFFFFFFFFFF8) != v25)
    {
      v26 = *(a2 + 24);
      v28 = v25;
      v23 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type,mlir::Value &>((a3 + 8), v26, &v28, v38) - 16;
    }

    v28 = v23;
    (**a3)(a3, a2, &v28, 1);
    if (v31 != &v33)
    {
      free(v31);
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    if (v36[0] != v37)
    {
      free(v36[0]);
    }

    result = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<FoldTensorCastUnPackOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = FoldTensorCastUnPackOp]";
  v6 = 84;
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

void FoldTensorCastProducerOp::~FoldTensorCastProducerOp(FoldTensorCastProducerOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 48);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(*a1 + 56);

  return v5(a1, a2, InterfaceFor);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 64);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t FoldTensorCastProducerOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(void, uint64_t, unint64_t, void))
{
  v68[8] = *MEMORY[0x277D85DE8];
  result = foldTensorCastPrecondition(a2);
  if (!result)
  {
    goto LABEL_48;
  }

  v7 = *(a2 + 48);
  if (*(v7 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v7 + 32, v8))
    {
LABEL_8:
      result = 0;
      goto LABEL_48;
    }

    v9 = *(v7 + 24);
    v10 = *(a2 + 48);
    v11 = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID();
    v12 = (*(*v9 + 104))(v9, v11, v10);
    goto LABEL_7;
  }

  v13 = *(*(v7 + 8) + 32);
  if (v13)
  {
    v14 = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID();
    v12 = (*(*v13 + 104))(v13, v14, v7);
LABEL_7:
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  v58 = v60;
  v59 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v58, v16, 0, v16, v15);
  mlir::tensor::getUpdatedOperandsAfterCastOpFolding(&v55, a2, a3, &v58);
  v17 = mlir::clone((a4 + 1), a2, v58 & 0xFFFFFFFFFFFFFFF9 | 2, v59, v55 & 0xFFFFFFFFFFFFFFF9, v56);
  v18 = v17;
  if (v17)
  {
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v17);
  }

  v52 = v54;
  v53 = 0x400000000;
  v19 = *(v18 + 9);
  if (v19 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v19, 8);
    LODWORD(v19) = *(v18 + 9);
  }

  v20 = *(a2 + 36);
  if (v20)
  {
    v21 = a2 - 16;
  }

  else
  {
    v21 = 0;
  }

  v47 = v18 - 16;
  if (v19)
  {
    v22 = (v18 - 16);
  }

  else
  {
    v22 = 0;
  }

  if (v20 && v19)
  {
    v23 = 0;
    v24 = v19 - 1;
    v49 = v20 - 1;
    v25 = (v18 - 16);
    v26 = a2 - 16;
    v46 = v22;
    v45 = v21;
    while (1)
    {
      v27 = v21;
      v28 = v22;
      if (!v23)
      {
        goto LABEL_35;
      }

      v29 = *(a2 - 8) & 7;
      v30 = a2 - 16;
      v31 = v23;
      if (v29 != 6)
      {
        v32 = (5 - v29);
        v27 = v26;
        v31 = v23 - v32;
        if (v23 <= v32)
        {
          goto LABEL_30;
        }

        v30 = a2 - 16 - 16 * v32;
      }

      v27 = v30 - 24 * v31;
LABEL_30:
      v33 = *(v18 - 1) & 7;
      v34 = v47;
      v35 = v23;
      if (v33 == 6)
      {
        goto LABEL_33;
      }

      v36 = (5 - v33);
      v35 = v23 - v36;
      if (v23 > v36)
      {
        v34 = &v47[-16 * v36];
LABEL_33:
        v28 = &v34[-24 * v35];
        goto LABEL_35;
      }

      v28 = v25;
LABEL_35:
      v37 = *(v27 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) != v37)
      {
        v38 = v18;
        v39 = *(a2 + 24);
        v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>((a4 + 1), *(**v39 + 32));
        v61[0] = v39;
        v61[1] = v40;
        v62[0] = &v63;
        v62[1] = 0x400000000;
        v64[0] = v65;
        v64[1] = 0x400000000;
        v65[4] = v66;
        v65[5] = 0x400000000;
        v66[8] = 4;
        v66[9] = v67;
        v66[10] = 0x100000000;
        v67[1] = v68;
        v67[2] = 0x100000000;
        v68[1] = 0;
        v68[2] = 0;
        v68[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v68[4] = 0;
        v68[6] = 0;
        v50 = v28;
        __src = v37;
        llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v62, &v50, 0, &v50, 1);
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v64, &__src, &v52);
        v41 = mlir::Operation::create(v61);
        mlir::OpBuilder::insert((a4 + 1), v41);
        v42 = *(*(v41 + 6) + 16);
        v28 = (v41 - 16);
        mlir::OperationState::~OperationState(v61);
        v43 = v42 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id;
        v18 = v38;
        v21 = v45;
        v22 = v46;
        if (!v43)
        {
          v28 = -16;
        }
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v52, v28);
      if (v49 != v23)
      {
        v25 -= 16;
        v26 -= 16;
        v43 = v24 == v23++;
        if (!v43)
        {
          continue;
        }
      }

      break;
    }
  }

  (**a4)(a4, a2, v52 & 0xFFFFFFFFFFFFFFF9, v53);
  if (v52 != v54)
  {
    free(v52);
  }

  if (v55 != &v57)
  {
    free(v55);
  }

  if (v58 != v60)
  {
    free(v58);
  }

  result = 1;
LABEL_48:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<FoldTensorCastProducerOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = FoldTensorCastProducerOp]";
  v6 = 86;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC239F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC239F0))
  {
    qword_27FC239E0 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>();
    *algn_27FC239E8 = v1;
    __cxa_guard_release(&qword_27FC239F0);
  }

  return qword_27FC239E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23A18))
  {
    qword_27FC23A08 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>();
    unk_27FC23A10 = v1;
    __cxa_guard_release(&qword_27FC23A18);
  }

  return qword_27FC23A08;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23A40))
  {
    qword_27FC23A30 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>();
    *algn_27FC23A38 = v1;
    __cxa_guard_release(&qword_27FC23A40);
  }

  return qword_27FC23A30;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23A68))
  {
    qword_27FC23A58 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>();
    unk_27FC23A60 = v1;
    __cxa_guard_release(&qword_27FC23A68);
  }

  return qword_27FC23A58;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties]";
  v6 = 128;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExtractSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23A90))
  {
    qword_27FC23A80 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>();
    *algn_27FC23A88 = v1;
    __cxa_guard_release(&qword_27FC23A90);
  }

  return qword_27FC23A80;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::GenerateOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "tensor.yield", 0xC);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23AB8))
  {
    qword_27FC23AA8 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>();
    unk_27FC23AB0 = v1;
    __cxa_guard_release(&qword_27FC23AB8);
  }

  return qword_27FC23AA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::InsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23AE0))
  {
    qword_27FC23AD0 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>();
    *algn_27FC23AD8 = v1;
    __cxa_guard_release(&qword_27FC23AE0);
  }

  return qword_27FC23AD0;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::PackOpGenericAdaptorBase::Properties]";
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

void mlir::RewritePatternSet::add<mlir::tensor::PackOp>(llvm::LogicalResult (*)(mlir::tensor::PackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B08))
  {
    qword_27FC23AF8 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>();
    unk_27FC23B00 = v1;
    __cxa_guard_release(&qword_27FC23B08);
  }

  return qword_27FC23AF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::PadOpGenericAdaptorBase::Properties]";
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::PadOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "tensor.yield", 0xC);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B30))
  {
    qword_27FC23B20 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>();
    *algn_27FC23B28 = v1;
    __cxa_guard_release(&qword_27FC23B30);
  }

  return qword_27FC23B20;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ParallelInsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23B58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B58))
  {
    qword_27FC23B48 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>();
    unk_27FC23B50 = v1;
    __cxa_guard_release(&qword_27FC23B58);
  }

  return qword_27FC23B48;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B80))
  {
    qword_27FC23B70 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>();
    *algn_27FC23B78 = v1;
    __cxa_guard_release(&qword_27FC23B80);
  }

  return qword_27FC23B70;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties]";
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

void mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(llvm::LogicalResult (*)(mlir::tensor::UnPackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::UnPackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void mlir::affine::AffineDialect::AffineDialect(mlir::affine::AffineDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "affine";
  *(this + 2) = 6;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::affine::AffineDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E9D3A0;
  mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(a2, a2, a3, a4);
  mlir::MLIRContext::loadDialect<mlir::ub::UBDialect>(*(this + 4), v5, v6, v7);
  mlir::affine::AffineDialect::initialize(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::ub::UBDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "ub", 2, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "ub", 2uLL, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ub::UBDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ub::UBDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::affine::AffineDialect::~AffineDialect(mlir::affine::AffineDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

BOOL mlir::affine::isTopLevelValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) & 7;
  if (v3 == 7)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v11 = v4;
  if (v4)
  {
    ParentRegion = mlir::Value::getParentRegion(&v11);
  }

  else
  {
    if (v3 == 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = a1;
    }

    v7 = *(v6 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v6 + 24 * *(v6 + 16) + 120;
    }

    else
    {
      v8 = v6 + 16 * v7 + 16;
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      ParentRegion = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      ParentRegion = 0;
    }
  }

  return ParentRegion == a2;
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>(uint64_t a1)
{
  v5 = &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id;
  v6 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v2 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id;
  v6 = v2;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v3 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id;
  v6 = v3;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
}

char *mlir::affine::AffineDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, _DWORD *a4, uint64_t **a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  }
}

uint64_t mlir::affine::isTopLevelValue(uint64_t a1)
{
  v1 = *(a1 + 8) & 7;
  if (a1 && (v2 = (*(a1 + 8) & 7) == 7, v1 == 7))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v2 = (*(a1 + 8) & 7) == 7;
    if (v1 == 7)
    {
      v4 = 0;
    }

    else
    {
      v4 = a1;
    }

    v5 = *(v4 + 8) & 7;
    if (v5 == 6)
    {
      v6 = v4 + 24 * *(v4 + 16) + 120;
    }

    else
    {
      v6 = v4 + 16 * v5 + 16;
    }

    v3 = *(v6 + 16);
    if (!v3)
    {
      return 0;
    }
  }

  v7 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
  v9 = *(**(v8 + 48) + 32);

  return v9();
}

unint64_t mlir::affine::getAffineScope(mlir::affine *this, mlir::Operation *a2)
{
  while (1)
  {
    v3 = *(this + 2);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v4)
    {
      break;
    }

    v5 = this;
    this = *(v4 + 16);
    if (!this)
    {
      break;
    }

    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(this + 6) + 32))(*(this + 6), v6))
    {
      v7 = *(v5 + 2);
      if (v7)
      {
        return *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t mlir::affine::isValidDim(uint64_t a1, unint64_t a2)
{
  if (*(*(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 0;
  }

  if (mlir::affine::isValidSymbol(a1, a2))
  {
    return 1;
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_11:
      v9 = *(*(*((*(*(a1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16) + 48) + 16);
      return v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    if ((*(v8 + 46) & 0x80) == 0)
    {
      return 1;
    }

    v13 = *(v8 + 68);
    if (!v13)
    {
      return 1;
    }

    v14 = v13 - 1;
    v15 = (*(v8 + 72) + 24);
    do
    {
      v16 = *v15;
      v15 += 4;
      result = mlir::affine::isValidDim(v16, a2);
      v18 = v14-- != 0;
    }

    while (result && v18);
  }

  else
  {
    result = llvm::DefaultDoCastIfPossible<mlir::ShapedDimOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ShapedDimOpInterface,mlir::Operation *,void>>::doCastIfPossible(v8);
    if (result)
    {
      v12 = (*v11)(v11, result);

      return mlir::affine::isTopLevelValue(v12);
    }
  }

  return result;
}

uint64_t mlir::affine::isValidSymbol(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_2;
  }

  v5 = a2;
  v7 = a2 == 0;
  if (a2)
  {
    while (1)
    {
      LOBYTE(v3) = mlir::affine::isTopLevelValue(a1, v5);
      if (v3)
      {
        return v3 & 1;
      }

      if ((~*(a1 + 8) & 7) != 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v9 = *(v8 + 8) & 7;
        if (v9 != 6)
        {
          goto LABEL_25;
        }

        v10 = v8 + 24 * *(v8 + 16);
        v11 = v10 + 120;
        if (v10 != -120)
        {
          goto LABEL_26;
        }
      }

      v12 = *(v5 + 16);
      if (!v12)
      {
        return v3 & 1;
      }

      v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
      if ((*(**(v12 + 48) + 32))(*(v12 + 48), v13))
      {
        return v3 & 1;
      }

      v14 = *(*(v5 + 16) + 16);
      if (!v14)
      {
        return v3 & 1;
      }

      v5 = *(v14 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v5 || *(*(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        return v3 & 1;
      }

      v7 = 0;
    }
  }

  if ((~v2 & 7) != 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_2;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v15 = v8 + 24 * *(v8 + 16);
    v11 = v15 + 120;
    if (v15 == -120)
    {
LABEL_2:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }
  }

  else
  {
LABEL_25:
    v11 = v8 + 16 * v9 + 16;
  }

LABEL_26:
  v39 = 0;
  v41 = &v39;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v41, v11))
  {
LABEL_27:
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  if (mlir::isSpeculatable(v11, v16) && mlir::isMemoryEffectFree(v11, v17))
  {
    if ((*(v11 + 46) & 0x80) == 0)
    {
      goto LABEL_27;
    }

    v18 = *(v11 + 68);
    if (!v18)
    {
      goto LABEL_27;
    }

    v19 = (*(v11 + 72) + 24);
    while ((mlir::affine::isValidSymbol(*v19, v5) & 1) != 0)
    {
      v19 += 4;
      if (!--v18)
      {
        goto LABEL_27;
      }
    }
  }

  v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedDimOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ShapedDimOpInterface,mlir::Operation *,void>>::doCastIfPossible(v11);
  if (!v20)
  {
    if (!v7)
    {
      v3 = *(v5 + 16);
      if (!v3)
      {
        return v3 & 1;
      }

      v33 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
      if (((*(**(v3 + 48) + 32))(*(v3 + 48), v33) & 1) == 0)
      {
        v34 = *(*(v5 + 16) + 16);
        if (v34)
        {
          v35 = *(v34 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v35)
          {
            LOBYTE(v3) = mlir::affine::isValidSymbol(a1, v35);
            return v3 & 1;
          }
        }
      }
    }

    goto LABEL_2;
  }

  v22 = v20;
  v23 = v21;
  v44 = v5;
  v24 = (*v21)(v21, v20);
  LOBYTE(v3) = mlir::affine::isTopLevelValue(v24);
  if ((v3 & 1) == 0 && (~*((*v23)(v23, v22) + 8) & 7) != 0)
  {
    v25 = v23[1](v23, v22);
    ConstantIntValue = mlir::getConstantIntValue(v25);
    if (v27)
    {
      v28 = ConstantIntValue;
      v29 = (*v23)(v23, v22);
      if ((~*(v29 + 8) & 7) != 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v30)
      {
        v31 = *(v30 + 8) & 7;
        if (v31 == 6)
        {
          v32 = (v30 + 24 * *(v30 + 16) + 120);
        }

        else
        {
          v32 = (v30 + 16 * v31 + 16);
        }
      }

      else
      {
        v32 = 0;
      }

      while (v32 && *(v32[6] + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
      {
        v36 = *(v32[9] + 24);
        v37 = *(v36 + 8);
        if (*(*(v37 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
        {
          if ((~v37 & 7) == 0)
          {
            v36 = 0;
          }

          if (v36)
          {
            v38 = *(v36 + 8) & 7;
            v32 = (v38 == 6 ? v36 + 24 * *(v36 + 16) + 120 : v36 + 16 * v38 + 16);
            if (v32)
            {
              continue;
            }
          }
        }

        goto LABEL_2;
      }

      v43 = v28;
      v42 = 0;
      v40[0] = &v43;
      v40[1] = &v44;
      v41 = v32;
      llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v41, v40);
      llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v41, v40);
      llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v41, v40);
      LOBYTE(v3) = HIBYTE(v42) & v42;
    }
  }

  return v3 & 1;
}

uint64_t mlir::affine::isValidSymbol(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 0;
    }

    if (mlir::affine::isTopLevelValue(result))
    {
      return 1;
    }

    v3 = *(v1 + 8) & 7;
    v4 = v3 == 7;
    if (v3 == 7)
    {
      v5 = 0;
    }

    else
    {
      v5 = v1;
    }

    if (v4)
    {
      return 0;
    }

    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16);
      result = v7 + 120;
      if (v7 == -120)
      {
        return result;
      }
    }

    else
    {
      result = v5 + 16 * v6 + 16;
    }

    AffineScope = mlir::affine::getAffineScope(result, v2);

    return mlir::affine::isValidSymbol(v1, AffineScope);
  }

  return result;
}

uint64_t mlir::affine::parseDimAndSymbolList(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v16[32] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x800000000;
  if ((*(*a1 + 720))(a1, &v14, 1, 1, 0xFFFFFFFFLL))
  {
    *a3 = v15;
    v6 = *(**(*(*a1 + 32))(a1) + 472);
    if ((*(*a1 + 720))(a1, &v14, 6, 1, 0xFFFFFFFFLL))
    {
      if (v15)
      {
        v7 = v14;
        v8 = 32 * v15 - 32;
        do
        {
          v9 = (*(*a1 + 728))(a1, v7, v6, a2);
          if ((v9 & 1) == 0)
          {
            break;
          }

          v7 += 32;
          v10 = v8;
          v8 -= 32;
        }

        while (v10);
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

    v11 = v9 & 1;
  }

  else
  {
    v11 = 0;
  }

  if (v14 != v16)
  {
    free(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::affine::AffineApplyOp::parse(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v19 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v19, a2 + 112) || (v18 = 0, !mlir::affine::parseDimAndSymbolList(a1, a2 + 16, &v18)) || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v5 = *(v19 + 8);
  if (*v5 != v18 || *(a2 + 24) != v5[1] + *v5)
  {
    v15 = (*(*a1 + 16))(a1);
    v16 = "dimension or symbol index mismatch";
    v17 = 259;
    (*(*a1 + 24))(v20, a1, v15, &v16);
    v12 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    goto LABEL_16;
  }

  v6 = v5[2];
  v7 = *(a2 + 72);
  if (v7 + v6 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + v6, 8);
    v7 = *(a2 + 72);
    if (v6)
    {
LABEL_8:
      v8 = 0;
      v9 = vdupq_n_s64(v6 - 1);
      v10 = (*(a2 + 64) + 8 * v7 + 8);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v8), xmmword_25D0A0500)));
        if (v11.i8[0])
        {
          *(v10 - 1) = v4;
        }

        if (v11.i8[4])
        {
          *v10 = v4;
        }

        v8 += 2;
        v10 += 2;
      }

      while (((v6 + 1) & 0x1FFFFFFFELL) != v8);
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  *(a2 + 72) = v7 + v6;
  v12 = 1;
LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

llvm::raw_ostream *printDimAndSymbolList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v10 = a4 - a2;
  v11 = (*(*a6 + 16))(a6);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 40);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 40;
  }

  v34 = a1;
  v13 = a1 + 32 * a2;
  v14 = a5;
  if (v10 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v10;
  }

  v16 = (*(*a6 + 16))(a6);
  if (v15)
  {
    v17 = v16;
    (*(*a6 + 160))(a6, *(v13 + 24));
    v18 = v15 - 1;
    if (v15 != 1)
    {
      v19 = (v13 + 56);
      do
      {
        v20 = *(v17 + 4);
        if (*(v17 + 3) - v20 > 1uLL)
        {
          *v20 = 8236;
          *(v17 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v17, ", ", 2uLL);
        }

        v21 = *v19;
        v19 += 4;
        (*(*a6 + 160))(a6, v21);
        --v18;
      }

      while (v18);
    }
  }

  result = (*(*a6 + 16))(a6);
  v23 = *(result + 4);
  if (v23 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
  }

  else
  {
    *(result + 4) = v23 + 1;
    *v23 = 41;
  }

  if (v10 > v14)
  {
    v24 = (*(*a6 + 16))(a6);
    v25 = *(v24 + 4);
    if (v25 >= *(v24 + 3))
    {
      llvm::raw_ostream::write(v24, 91);
    }

    else
    {
      *(v24 + 4) = v25 + 1;
      *v25 = 91;
    }

    v26 = (*(*a6 + 16))(a6);
    (*(*a6 + 160))(a6, *(v13 + 32 * v14 + 24));
    if (v10 - v14 != 1)
    {
      v27 = a2 + v14 - a4 + 1;
      v28 = (32 * a2 + 32 * v14 + v34 + 56);
      do
      {
        v29 = *(v26 + 4);
        if (*(v26 + 3) - v29 > 1uLL)
        {
          *v29 = 8236;
          *(v26 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v26, ", ", 2uLL);
        }

        v30 = *v28;
        v28 += 4;
        (*(*a6 + 160))(a6, v30);
      }

      while (!__CFADD__(v27++, 1));
    }

    result = (*(*a6 + 16))(a6);
    v32 = *(result + 4);
    if (v32 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 93);
    }

    else
    {
      *(result + 4) = v32 + 1;
      *v32 = 93;
    }
  }

  return result;
}

void composeAffineMapAndOperands(uint64_t *a1, void *a2)
{
  v2 = a2;
  v62[6] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!*(*a1 + 8))
  {
    mlir::affine::canonicalizeMapAndOperands(a1, a2);
    *a1 = mlir::simplifyAffineMap(*a1);
    goto LABEL_63;
  }

  v5 = *a2;
  v6 = (*v2 + 8 * *v4);
  v49 = *(v4 + 2);
  v57 = v59;
  *v58 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(&v57, v5, v6);
  v7 = (*v2 + 8 * **a1);
  v8 = (*v2 + 8 * *(v2 + 8));
  v54 = v56;
  *v55 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(&v54, v7, v8);
  v10 = v58[0];
  v11 = v55[0];
  if (!(v55[0] | v58[0]))
  {
    goto LABEL_35;
  }

  v12 = v62;
  do
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = v57 + 8 * v13;
      if (v10 <= v14)
      {
        v15 = v54 + 8 * (v14 - v10);
      }

      v16 = *v15;
      if (!*v15 || (*(v16 + 8) & 7) == 7)
      {
        goto LABEL_14;
      }

      v17 = *(v16 + 8) & 7;
      if (v17 == 6)
      {
        v18 = v16 + 24 * *(v16 + 16) + 120;
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v18 = v16 + 16 * v17 + 16;
      }

      if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
      {
        break;
      }

LABEL_14:
      v13 = (v14 + 1);
      v14 = v13;
      if (v11 + v10 == v13)
      {
        goto LABEL_35;
      }
    }

    v47 = *(*a1 + 16);
    *v15 = 0;
    v19 = *(v18 + 44);
    v51 = *(*(v18 + 16 * ((v19 >> 23) & 1) + 64) + 8);
    v45 = v2;
    if ((v19 & 0x800000) != 0)
    {
      v20 = *(v18 + 72);
      v21 = *(v18 + 68);
      v22 = v20;
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v21 = 0;
    }

    v23 = v12;
    v60 = v12;
    v61 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v60, v20, 0, v22, v21);
    mlir::affine::canonicalizeMapAndOperands(&v51, &v60);
    v50[0] = mlir::AffineMap::shiftDims(&v51, v58[0], 0);
    v46 = *(mlir::AffineMap::shiftSymbols(v50, v55[0], 0) + 24);
    v24 = v60;
    v25 = *(v51 + 1);
    if (v61 >= *v51)
    {
      v26 = *v51;
    }

    else
    {
      v26 = v61;
    }

    if (v61 <= v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = v61 - v25;
    }

    if (v61 >= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v61;
    }

    if (v10 <= v14)
    {
      v30 = v14 - v10;
      v29 = 7;
    }

    else
    {
      v29 = 6;
      v30 = v14;
    }

    AffineDimOrSymbol = getAffineDimOrSymbol(v29, v30, v47);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v57, v24 & 0xFFFFFFFFFFFFFFF9, 0, v24 & 0xFFFFFFFFFFFFFFF9, v26);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v54, (v24 + 8 * v27) & 0xFFFFFFFFFFFFFFF9, 0, (v24 + 8 * v27) & 0xFFFFFFFFFFFFFFF9, v28);
    *a1 = mlir::AffineMap::replace(a1, AffineDimOrSymbol, v46, v58[0], v55[0]);
    v12 = v23;
    if (v60 != v23)
    {
      free(v60);
    }

    v10 = v58[0];
    v11 = v55[0];
    v2 = v45;
  }

  while (v55[0] | v58[0]);
LABEL_35:
  *(v2 + 8) = 0;
  v60 = v62;
  v61 = 0x400000000;
  v51 = v53;
  v52 = 0x400000000;
  if (v10 < 5)
  {
    v32 = 4;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v10, 8);
    v11 = v55[0];
    v32 = HIDWORD(v52);
  }

  v48 = a1;
  if (v32 < v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v11, 8);
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v50[0] = &v57;
  v50[1] = &v54;
  do
  {
    v36 = v50[v35];
    if (v36 == &v57)
    {
      v37 = &v60;
    }

    else
    {
      v37 = &v51;
    }

    v38 = *(v36 + 2);
    if (v38)
    {
      v39 = *v36;
      v40 = 8 * v38;
      do
      {
        v41 = *v39;
        if (*v39)
        {
          if (v36 == &v57)
          {
            v42 = getAffineDimOrSymbol(6u, v33, v49);
            v33 = (v33 + 1);
          }

          else
          {
            v42 = getAffineDimOrSymbol(7u, v34, v49);
            v34 = (v34 + 1);
          }

          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(v37, v42);
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v2, v41);
        }

        else
        {
          AffineConstantExpr = mlir::getAffineConstantExpr(0, v49, v9);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(v37, AffineConstantExpr);
        }

        ++v39;
        v40 -= 8;
      }

      while (v40);
    }

    ++v35;
  }

  while (v35 != 2);
  *v48 = mlir::AffineMap::replaceDimsAndSymbols(v48, v60, v61, v51, v52, v33, v34);
  mlir::affine::canonicalizeMapAndOperands(v48, v2);
  *v48 = mlir::simplifyAffineMap(*v48);
  if (v51 != v53)
  {
    free(v51);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  if (v54 != v56)
  {
    free(v54);
  }

  if (v57 != v59)
  {
    free(v57);
  }

LABEL_63:
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v26[0] = *a1;
  v26[1] = 0;
  v27 = *(a1 + 16);
  v29 = v31;
  v30 = 0x600000000;
  v28 = mlir::foldAttributesIntoMap(v26, a3, a4, a5, &v29);
  composeAffineMapAndOperands(&v28, &v29);
  v7 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(v26, *(**a2 + 32));
  v32 = a2;
  v33 = v7;
  v34[0] = v35;
  v34[1] = 0x400000000;
  v35[4] = v36;
  v35[5] = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[8] = 4;
  v37[9] = v38;
  v37[10] = 0x100000000;
  v38[1] = v39;
  v38[2] = 0x100000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v39[4] = 0;
  v39[6] = 0;
  mlir::affine::AffineApplyOp::build(v26, &v32, v28, v29 & 0xFFFFFFFFFFFFFFF9, v30);
  v8 = mlir::Operation::create(&v32);
  mlir::OpBuilder::insert(v26, v8);
  v9 = *(*(v8 + 6) + 16);
  mlir::OperationState::~OperationState(&v32);
  if (v29 != v31)
  {
    free(v29);
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v8 = 0;
  }

  if (v8[46] < 0)
  {
    v10 = *(v8 + 17);
  }

  else
  {
    v10 = 0;
  }

  v32 = v34;
  v33 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(&v32, v10);
  if (!v33)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v11 = 0;
  v12 = 8 * v33;
  v13 = 24;
  do
  {
    v14 = *(*(v8 + 9) + v13);
    v29 = v32 + v11;
    if ((~*(v14 + 8) & 7) == 0)
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = *(v14 + 8) & 7;
      if (v15 != 6)
      {
        v17 = v14 + 16 * v15 + 16;
LABEL_16:
        mlir::detail::constant_op_binder<mlir::Attribute>::match(&v29, v17);
        goto LABEL_17;
      }

      v16 = v14 + 24 * *(v14 + 16);
      v17 = v16 + 120;
      if (v16 != -120)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v11 += 8;
    v13 += 32;
  }

  while (v12 != v11);
  v18 = v33;
LABEL_20:
  v29 = v31;
  v30 = 0x600000000;
  if ((mlir::Operation::fold(v8, v32, v18, &v29) & 1) != 0 && v30)
  {
    if (*(v8 + 2))
    {
      *(v8 + 2) = 0;
      v20 = *v8;
      v19 = *(v8 + 1);
      *v19 = *v8;
      *(v20 + 8) = v19;
      *v8 = 0;
      *(v8 + 1) = 0;
    }

    mlir::Operation::destroy(v8);
    v21 = v29;
    v22 = *v29;
  }

  else
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      (*(*v23 + 16))(v23, v8, 0, 0);
    }

    v22 = (v8 - 16) | 4;
    v21 = v29;
  }

  if (v21 != v31)
  {
    free(v21);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v12[0] = &v13;
  v12[1] = 1;
  v13 = a3;
  mlir::AffineMap::inferFromExprList(v12, 1uLL, *a1, &v14);
  ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply(a1, a2, *v14, a4, a5);
  if (v14 != v15)
  {
    free(v14);
  }

  v10 = *MEMORY[0x277D85DE8];
  return ComposedFoldedAffineApply;
}

void mlir::affine::canonicalizeMapAndOperands(uint64_t *a1, uint64_t a2)
{
  v73[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v5 = *(*a1 + 16);
      v68 = v70;
      v69 = 0x800000000;
      if (v3 <= 8)
      {
        __src = v64;
        v63 = 0x800000000;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v3, 8);
        v6 = *(a2 + 8);
        __src = v64;
        v63 = 0x800000000;
        if (v6 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v64, v6, 8);
        }
      }

      v7 = **a1;
      v8 = *(*a1 + 4);
      v71 = v73;
      v72 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v71, v7);
      v10 = **a1;
      v9 = *(*a1 + 4);
      v11 = (v9 + v10);
      if (v9 + v10)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        do
        {
          if (v12 >= **a1)
          {
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v68, *(*a2 + 8 * v12));
          }

          else if (mlir::affine::isValidSymbol(*(*a2 + 8 * v12)))
          {
            AffineDimOrSymbol = getAffineDimOrSymbol(7u, (v14 + v8), v5);
            v71[v12] = AffineDimOrSymbol;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&__src, *(*a2 + 8 * v12));
            ++v14;
          }

          else
          {
            v16 = getAffineDimOrSymbol(6u, v13, v5);
            v71[v12] = v16;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v68, *(*a2 + 8 * v12));
            v13 = (v13 + 1);
          }

          ++v12;
        }

        while (v11 != v12);
      }

      else
      {
        v14 = 0;
        LODWORD(v13) = 0;
      }

      llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(&v68, __src, __src + 8 * v63);
      llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v68);
      *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v71, v72, 0, 0, v13, v14 + v8);
      if (v71 != v73)
      {
        free(v71);
      }

      if (__src != v64)
      {
        free(__src);
      }

      if (v68 != v70)
      {
        free(v68);
      }

      llvm::SmallBitVector::SmallBitVector(&v58, **a1, 0);
      llvm::SmallBitVector::SmallBitVector(&v57, *(*a1 + 4), 0);
      v68 = &v58;
      v69 = &v57;
      v17 = *a1;
      v18 = *(*a1 + 8);
      if (v18)
      {
        v19 = 8 * v18;
        v20 = (v17 + 24);
        do
        {
          v21 = *v20++;
          mlir::AffineExpr::walk<void>(v21, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::AffineMap>(mlir::AffineMap *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>, &v68);
          v19 -= 8;
        }

        while (v19);
        v17 = *a1;
      }

      v52 = *(v17 + 16);
      v71 = v73;
      v72 = 0x800000000;
      v22 = *(a2 + 8);
      if (v22 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v22, 8);
      }

      v68 = 1;
      for (i = 8; i != 136; i += 16)
      {
        *(&v68 + i) = -4096;
      }

      v24 = **a1;
      v65 = v67;
      v66 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v65, v24);
      v25 = **a1;
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        while (1)
        {
          if (v58)
          {
            if (((1 << v26) & (v58 >> 1) & ~(-1 << (v58 >> 58))) != 0)
            {
LABEL_37:
              v28 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(&v68, *(*a2 + 8 * v26));
              v29 = (v69 + 16 * v70[0]);
              if (v68)
              {
                v29 = &v71;
              }

              if (v29 == v28)
              {
                v30 = getAffineDimOrSymbol(6u, v27, v52);
                *(v65 + v26) = v30;
                llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v71, *(*a2 + 8 * v26));
                v31 = *(v65 + v26);
                v59 = *(*a2 + 8 * v26);
                v60 = v31;
                llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &v68, &v59, &v60);
                v27 = (v27 + 1);
              }

              else
              {
                *(v65 + v26) = *(v28 + 8);
              }
            }
          }

          else if ((*(*v58 + 8 * (v26 >> 6)) & (1 << v26)) != 0)
          {
            goto LABEL_37;
          }

          if (v25 == ++v26)
          {
            goto LABEL_45;
          }
        }
      }

      LODWORD(v27) = 0;
LABEL_45:
      __src = 1;
      for (j = 8; j != 136; j += 16)
      {
        *(&__src + j) = -4096;
      }

      v33 = *(*a1 + 4);
      v59 = v61;
      v60 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v59, v33);
      v34 = *(*a1 + 4);
      if (v34)
      {
        v35 = 0;
        v51 = 0;
        while (1)
        {
          if (v57)
          {
            if (((1 << v35) & (v57 >> 1) & ~(-1 << (v57 >> 58))) != 0)
            {
LABEL_53:
              v56 = 0;
              v36 = *a1;
              v37 = *a2;
              v38 = *(*a2 + 8 * (v35 + **a1));
              v53[0] = &v56;
              if ((~*(v38 + 8) & 7) == 0)
              {
                v38 = 0;
              }

              if (!v38)
              {
                goto LABEL_66;
              }

              v39 = *(v38 + 8) & 7;
              if (v39 == 6)
              {
                v40 = v38 + 24 * *(v38 + 16);
                v41 = v40 + 120;
                if (v40 == -120)
                {
LABEL_66:
                  v45 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(&__src, *(v37 + 8 * (v35 + *v36)));
                  v46 = (v63 + 16 * v64[0]);
                  if (__src)
                  {
                    v46 = &v65;
                  }

                  if (v46 == v45)
                  {
                    v47 = getAffineDimOrSymbol(7u, v51, v52);
                    *(v59 + v35) = v47;
                    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v71, *(*a2 + 8 * (v35 + **a1)));
                    v48 = *(v59 + v35);
                    v54 = *(*a2 + 8 * (v35 + **a1));
                    v55 = v48;
                    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v53, &__src, &v54, &v55);
                    ++v51;
                  }

                  else
                  {
                    *(v59 + v35) = *(v45 + 8);
                  }

                  goto LABEL_73;
                }
              }

              else
              {
                v41 = v38 + 16 * v39 + 16;
              }

              if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(v53, v41))
              {
                v43 = *(v56 + 24);
                if (v43 > 0x40)
                {
                  operator new[]();
                }

                if (v43)
                {
                  v44 = (*(v56 + 16) << -v43) >> -v43;
                }

                else
                {
                  v44 = 0;
                }

                AffineConstantExpr = mlir::getAffineConstantExpr(v44, v52, v42);
                *(v59 + v35) = AffineConstantExpr;
                goto LABEL_73;
              }

              v36 = *a1;
              v37 = *a2;
              goto LABEL_66;
            }
          }

          else if ((*(*v57 + 8 * (v35 >> 6)) & (1 << v35)) != 0)
          {
            goto LABEL_53;
          }

LABEL_73:
          if (v34 == ++v35)
          {
            goto LABEL_76;
          }
        }
      }

      v51 = 0;
LABEL_76:
      *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v65, v66, v59, v60, v27, v51);
      llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v71);
      if (v59 != v61)
      {
        free(v59);
      }

      if ((__src & 1) == 0)
      {
        MEMORY[0x25F891030](v63, 8);
      }

      if (v65 != v67)
      {
        free(v65);
      }

      if ((v68 & 1) == 0)
      {
        MEMORY[0x25F891030](v69, 8);
      }

      if (v71 != v73)
      {
        free(v71);
      }

      llvm::SmallBitVector::~SmallBitVector(&v57);
      llvm::SmallBitVector::~SmallBitVector(&v58);
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::affine::AffineDmaStartOp::getSrcIndices(mlir::affine::AffineDmaStartOp *this)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v1 = *(this + 9);
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(**(this + 6) + 80))(*(this + 6), this, "src_map", 7);
  v3 = (*(*(v2 + 8) + 4) + **(v2 + 8));
  return v1 + 32;
}

uint64_t mlir::affine::AffineDmaStartOp::getDstIndices(mlir::affine::AffineDmaStartOp *this)
{
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(**(v2 + 48) + 80))(*(v2 + 48), v2, "src_map", 7);
  v5 = (**(v4 + 8) + *(*(v4 + 8) + 4) + 1);
  v6 = (*(**(*this + 48) + 80))(*(*this + 48), *this, "src_map", 7);
  v7 = (**(v6 + 8) + *(*(v6 + 8) + 4) + 1);
  v8 = (*(**(*this + 48) + 80))(*(*this + 48), *this, "dst_map", 7);
  v9 = (*(*(v8 + 8) + 4) + **(v8 + 8));
  return v3 + 32 * v5 + 32;
}

uint64_t mlir::affine::AffineDmaStartOp::getTagIndices(mlir::affine::AffineDmaStartOp *this)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 72);
  }

  else
  {
    v2 = 0;
  }

  TagMemRefOperandIndex = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(this);
  mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(this);
  v4 = (*(**(*this + 48) + 80))(*(*this + 48), *this, "tag_map", 7);
  v5 = (*(*(v4 + 8) + 4) + **(v4 + 8));
  return v2 + 32 * TagMemRefOperandIndex + 32;
}

BOOL mlir::affine::AffineDmaStartOp::isStrided(mlir::affine::AffineDmaStartOp *this)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  TagMemRefOperandIndex = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(this);
  v4 = (*(**(*this + 48) + 80))(*(*this + 48), *this, "tag_map", 7);
  return v2 != TagMemRefOperandIndex + **(v4 + 8) + *(*(v4 + 8) + 4) + 2;
}

uint64_t mlir::affine::AffineDmaStartOp::parse(uint64_t a1, uint64_t a2)
{
  v45[16] = *MEMORY[0x277D85DE8];
  memset(v28, 0, 24);
  v27 = 0;
  v43 = v45;
  v44 = 0x400000000;
  memset(v26, 0, 24);
  v25 = 0;
  v40 = v42;
  v41 = 0x400000000;
  memset(v24, 0, 24);
  v23 = 0;
  v37 = v39;
  v38 = 0x400000000;
  memset(v22, 0, 24);
  v34 = v36;
  v35 = 0x200000000;
  v31 = v33;
  v32 = 0x300000000;
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  if (((*(*a1 + 704))(a1, v28, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v43, &v27, "src_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v26, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v40, &v25, "dst_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v24, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v37, &v23, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v22, 1) & 1) == 0 || (mlir::OpAsmParser::parseTrailingOperandList(a1, &v34, 0) & 1) == 0)
  {
    goto LABEL_42;
  }

  if ((v35 & 0xFFFFFFFD) != 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = "expected two stride related operands";
LABEL_14:
    v20[0] = v6;
    v21 = 259;
    (*(*a1 + 24))(v29, a1, v5, v20);
    v7 = v30 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
    goto LABEL_43;
  }

  v19 = v35;
  if (((*(*a1 + 584))(a1, &v31) & 1) == 0)
  {
LABEL_42:
    v7 = 0;
    goto LABEL_43;
  }

  if (v32 != 3)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = "expected three types";
    goto LABEL_14;
  }

  if (((*(*a1 + 728))(a1, v28, *v31, a2 + 16) & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v44)
  {
    v8 = v43;
    v9 = 32 * v44;
    while (((*(*a1 + 728))(a1, v8, v4, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_55;
  }

LABEL_22:
  if (((*(*a1 + 728))(a1, v26, *(v31 + 1), a2 + 16) & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v41)
  {
    v10 = v40;
    v11 = 32 * v41;
    while (((*(*a1 + 728))(a1, v10, v4, a2 + 16) & 1) != 0)
    {
      v10 += 32;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_55;
  }

LABEL_27:
  if (((*(*a1 + 728))(a1, v24, *(v31 + 2), a2 + 16) & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v38)
  {
    v12 = v37;
    v13 = 32 * v38;
    while (((*(*a1 + 728))(a1, v12, v4, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_55;
  }

LABEL_32:
  if (((*(*a1 + 728))(a1, v22, v4, a2 + 16) & 1) == 0)
  {
LABEL_55:
    v7 = 0;
    goto LABEL_43;
  }

  if (v19 == 2 && v35)
  {
    v14 = v34;
    v15 = 32 * v35;
    while (((*(*a1 + 728))(a1, v14, v4, a2 + 16) & 1) != 0)
    {
      v14 += 32;
      v15 -= 32;
      if (!v15)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_55;
  }

LABEL_38:
  if (v44 == *(*(v27 + 8) + 4) + **(v27 + 8) && v41 == *(*(v25 + 8) + 4) + **(v25 + 8) && v38 == *(*(v23 + 8) + 4) + **(v23 + 8))
  {
    v7 = 1;
  }

  else
  {
    v18 = (*(*a1 + 16))(a1);
    v20[0] = "memref operand count not equal to map.numInputs";
    v21 = 259;
    (*(*a1 + 24))(v29, a1, v18, v20);
    v7 = v30 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
  }

LABEL_43:
  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t mlir::OpAsmParser::parseTrailingOperandList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    return 1;
  }

  v6 = *(*a1 + 720);

  return v6(a1, a2, a3, 1, 0xFFFFFFFFLL);
}

uint64_t mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(mlir::affine::AffineDmaStartOp *this)
{
  v4 = **((*(**(*this + 48) + 80))(*(*this + 48), *this, "src_map", 7) + 8);
  v2.i64[0] = **((*(**(*this + 48) + 80))(*(*this + 48), *this, "dst_map", 7) + 8);
  v2.i64[1] = v4;
  return (vaddvq_s32(v2) + 2);
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4);
  }

  v5 = *a1 + 40 * v4;
  *v5 = a2;
  *(v5 + 8) = a4;
  *(v5 + 16) = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  ++*(a1 + 8);
  return a1;
}

uint64_t mlir::affine::AffineDmaWaitOp::getTagIndices(mlir::affine::AffineDmaWaitOp *this)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v1 = *(this + 9);
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(**(this + 6) + 80))(*(this + 6), this, "tag_map", 7);
  v3 = (*(*(v2 + 8) + 4) + **(v2 + 8));
  return v1 + 32;
}

uint64_t mlir::affine::AffineDmaWaitOp::parse(uint64_t a1, uint64_t a2)
{
  v22[8] = *MEMORY[0x277D85DE8];
  memset(v17, 0, 24);
  v15 = 0;
  v16 = 0;
  v20 = v22;
  v21 = 0x200000000;
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  memset(v14, 0, 24);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v20, &v16, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v14, 1) & 1) == 0 || ((*(*a1 + 576))(a1, &v15) & 1) == 0 || ((*(*a1 + 728))(a1, v17, v15, a2 + 16) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v21)
  {
    v5 = v20;
    v6 = 32 * v21;
    while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
    {
      v5 += 32;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

LABEL_11:
  if (((*(*a1 + 728))(a1, v14, v4, a2 + 16) & 1) == 0)
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    if (v21 == *(*(v16 + 8) + 4) + **(v16 + 8))
    {
      v9 = 1;
      goto LABEL_15;
    }

    v7 = (*(*a1 + 16))(a1);
    v8 = "tag memref operand count != to map.numInputs";
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = "expected tag to be of memref type";
  }

  v12 = v8;
  v13 = 259;
  (*(*a1 + 24))(v18, a1, v7, &v12);
  v9 = v19 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
LABEL_15:
  if (v20 != v22)
  {
    free(v20);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(mlir::affine **a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = (a2 + 24);
  while (1)
  {
    v9 = *v8;
    AffineScope = mlir::affine::getAffineScope(*a1, a2);
    if (v7 >= a4)
    {
      break;
    }

    if ((mlir::affine::isValidDim(v9, AffineScope) & 1) == 0)
    {
      v12 = "operand cannot be used as a dimension id";
      goto LABEL_10;
    }

LABEL_7:
    ++v7;
    v8 += 4;
    if (a3 == v7)
    {
      goto LABEL_8;
    }
  }

  if (mlir::affine::isValidSymbol(v9, AffineScope))
  {
    goto LABEL_7;
  }

  v12 = "operand cannot be used as a symbol";
LABEL_10:
  v15 = v12;
  v16 = 259;
  mlir::Operation::emitOpError(*a1, &v15, v17);
  v11 = v17[200] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t mlir::affine::AffineForOp::getNumIterOperands(mlir::affine::AffineForOp *this)
{
  v1 = *(this + 11);
  v2 = this + 16 * ((v1 >> 23) & 1);
  v3 = *(*(v2 + 8) + 8);
  v4 = *(*(v2 + 10) + 8);
  if ((v1 & 0x800000) != 0)
  {
    v5 = *(this + 17);
  }

  else
  {
    v5 = 0;
  }

  v6.i64[0] = *v4;
  v6.i64[1] = *v3;
  return (v5 - vaddvq_s32(v6));
}

BOOL mlir::affine::AffineForOp::parse(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 32))(a1);
  memset(v37, 0, 24);
  v39 = 0;
  v37[5] = 0;
  v38 = 0;
  v37[4] = *(**v4 + 472);
  if (((*(*a1 + 752))(a1, v37, 0, 0) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_29;
  }

  v5 = *(a2 + 24);
  if ((parseBound(1, a2, a1) & 1) == 0)
  {
    goto LABEL_29;
  }

  v6 = *(a2 + 24);
  v46 = " between bounds";
  v48[8] = 259;
  if (((*(*a1 + 400))(a1, "to", 2, &v46) & 1) == 0)
  {
    goto LABEL_29;
  }

  v7 = *(a2 + 24);
  if ((parseBound(0, a2, a1) & 1) == 0)
  {
    goto LABEL_29;
  }

  v8 = *(a2 + 24);
  if (((*(*a1 + 408))(a1, "step", 4) & 1) == 0)
  {
    v35 = v8;
    v36 = v7;
    v13 = *(*(*(a2 + 8) + 96) + 8);
    IntegerAttr = mlir::Builder::getIntegerAttr(v4, *(**v4 + 472), 1uLL);
    mlir::NamedAttrList::push_back(a2 + 112, v13, IntegerAttr);
    goto LABEL_10;
  }

  v9 = (*(*a1 + 40))(a1);
  v43 = 0;
  v10 = *(*(*(a2 + 8) + 96) + 8);
  v11 = *(v10 + 16);
  v12 = v11 ? strlen(*(v10 + 16)) : 0;
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v43, *(**v4 + 472), v11, v12, a2 + 112))
  {
LABEL_29:
    v28 = 0;
    goto LABEL_30;
  }

  mlir::IntegerAttr::getValue(&v43, &v46);
  v29 = v47 - 1;
  if (v47 > 0x40)
  {
    v32 = *(v46 + (v29 >> 6));
    MEMORY[0x25F891010]();
    if ((v32 >> v29))
    {
      goto LABEL_28;
    }
  }

  else if ((v46 >> v29))
  {
LABEL_28:
    v40 = "expected step to be representable as a positive signed integer";
    v42 = 259;
    (*(*a1 + 24))(&v46, a1, v9, &v40);
    v28 = (v49 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    goto LABEL_30;
  }

  v35 = v8;
  v36 = v7;
LABEL_10:
  v46 = v48;
  v47 = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  v15 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(&v46, v37, 1);
  v16 = v46 + 64 * v47;
  v17 = *v15;
  v18 = v15[1];
  v19 = v15[3];
  v16[2] = v15[2];
  v16[3] = v19;
  *v16 = v17;
  v16[1] = v18;
  LODWORD(v47) = v47 + 1;
  if (((*(*a1 + 408))(a1, "iter_args", 9) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (mlir::OpAsmParser::parseAssignmentList(a1) & 1) != 0 && ((*(*a1 + 560))(a1, a2 + 64))
  {
    if (v47 != 1)
    {
      if (v44)
      {
        v20 = *(a2 + 72);
        if (v20)
        {
          v21 = 0;
          v22 = v43;
          v23 = *(a2 + 64);
          v34 = (v47 << 6) - 128;
          v24 = v46 + 96;
          v33 = (v20 << 6) - 64;
          v25 = (v44 << 6) - 64;
          while (1)
          {
            *&v24[v21] = *v23;
            if (((*(*a1 + 728))(a1, v22) & 1) == 0)
            {
              goto LABEL_23;
            }

            if (v34 != v21 && v25 != v21)
            {
              v22 += 32;
              ++v23;
              v26 = v33 == v21;
              v21 += 64;
              if (!v26)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

LABEL_22:
    LODWORD(v40) = v6 - v5;
    HIDWORD(v40) = v35 - v36;
    LODWORD(v41) = v44;
    v27 = mlir::detail::DenseArrayAttrImpl<int>::get(*v4, &v40, 3);
    mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13, v27);
    mlir::OperationState::addRegion(a2);
  }

LABEL_23:
  v28 = 0;
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

LABEL_30:
  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t parseBound(int a1, uint64_t a2, uint64_t a3)
{
  v36[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = "max";
  }

  else
  {
    v6 = "min";
  }

  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16;
  }

  v8 = (*(*a3 + 408))(a3, v6, 3);
  v9 = (*(*a3 + 32))(a3);
  v10 = *(*(*(a2 + 8) + 96) + v7);
  v34 = v36;
  v35 = 0x100000000;
  if (((*(*a3 + 720))(a3, &v34, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      if ((*(*a3 + 728))(a3, v34, *(**v9 + 472), a2 + 16))
      {
        SymbolIdentityMap = mlir::Builder::getSymbolIdentityMap(v9);
LABEL_12:
        v12 = mlir::AffineMapAttr::get(SymbolIdentityMap);
        mlir::NamedAttrList::push_back(a2 + 112, v10, v12);
        v13 = 1;
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = "expected only one loop bound operand";
    goto LABEL_22;
  }

  v14 = (*(*a3 + 40))(a3);
  v29 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::Attribute>(a3, &v29, *(**v9 + 472), *(v10 + 16), *(v10 + 24), a2 + 112))
  {
LABEL_20:
    v13 = 0;
    goto LABEL_24;
  }

  v15 = v29;
  v16 = *(*v29 + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v17 = v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    if (v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v18 = v29;
    }

    else
    {
      v18 = 0;
    }

    v32[0] = v18;
    if (v17)
    {
      --*(a2 + 120);
      Int = mlir::IntegerAttr::getInt(v32);
      SymbolIdentityMap = mlir::Builder::getConstantAffineMap(v9, Int, v27);
      goto LABEL_12;
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = "expected valid affine map representation for loop bounds";
    goto LABEL_22;
  }

  v23 = *(a2 + 24);
  v28 = 0;
  v13 = 0;
  if (mlir::affine::parseDimAndSymbolList(a3, a2 + 16, &v28))
  {
    v24 = *(v15 + 8);
    if (*v24 == v28)
    {
      if (v24[1] + *v24 == *(a2 + 24) - v23)
      {
        v13 = 1;
        if (v24[2] >= 2u && (v8 & 1) == 0)
        {
          if (a1)
          {
            v25 = "lower loop bound affine map with multiple results requires 'max' prefix";
          }

          else
          {
            v25 = "upper loop bound affine map with multiple results requires 'min' prefix";
          }

          v30[0] = v25;
          v31 = 259;
          (*(*a3 + 24))(v32, a3, v14, v30);
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v19 = (*(*a3 + 16))(a3);
      v20 = "symbol operand count and affine map symbol count must match";
    }

    else
    {
      v19 = (*(*a3 + 16))(a3);
      v20 = "dim operand count and affine map dim count must match";
    }

LABEL_22:
    v30[0] = v20;
    v31 = 259;
    (*(*a3 + 24))(v32, a3, v19, v30);
LABEL_23:
    v13 = v33 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v32);
  }

LABEL_24:
  if (v34 != v36)
  {
    free(v34);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

BOOL mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v22 = 0;
  if ((*(*a1 + 440))(a1, &v22, a3))
  {
    if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v14 = v22;
    }

    else
    {
      v14 = 0;
    }

    *a2 = v14;
    if (v14)
    {
      v15 = *(**v14 + 32);
      v24 = 261;
      v23[0] = a4;
      v23[1] = a5;
      v16 = mlir::StringAttr::get(v15, v23, v13);
      mlir::NamedAttrList::push_back(a6, v16, v14);
      v17 = 1;
    }

    else
    {
      v20 = "invalid kind of attribute specified";
      v21 = 259;
      (*(*a1 + 24))(v23, a1, v12, &v20);
      v17 = (v25 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

llvm::raw_ostream *printBound(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  if (*(v9 + 8) != 1)
  {
    v17 = (*(*a5 + 16))(a5);
    llvm::raw_ostream::operator<<(v17, a4);
    v18 = (*(*a5 + 16))(a5);
    v19 = *(v18 + 4);
    if (v19 >= *(v18 + 3))
    {
      llvm::raw_ostream::write(v18, 32);
    }

    else
    {
      *(v18 + 4) = v19 + 1;
      *v19 = 32;
    }

    goto LABEL_15;
  }

  if (*v9)
  {
    goto LABEL_15;
  }

  v10 = *(v9 + 24);
  v11 = *(v9 + 4);
  if (v11 != 1)
  {
    if (!v11 && *(v10 + 8) == 5 && v10 != 0)
    {
      v13 = *(v10 + 16);
      v14 = (*(*a5 + 16))(a5);

      return llvm::write_integer(v14, v13, 0, 0);
    }

    goto LABEL_15;
  }

  if (*(v10 + 8) != 7 || v10 == 0)
  {
LABEL_15:
    (*(*a5 + 40))(a5, a1);
    v20 = *v9;

    return printDimAndSymbolList(a2, 0, a2, a3, v20, a5);
  }

  v22 = *(a2 + 24);
  v23 = *(*a5 + 160);

  return v23(a5, v22);
}

uint64_t mlir::affine::AffineForOp::getStepAsInt(mlir::affine::AffineForOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
  v2 = *(v1 + 24);
  if (v2 > 0x40)
  {
    operator new[]();
  }

  if (v2)
  {
    return (*(v1 + 16) << -v2) >> -v2;
  }

  else
  {
    return 0;
  }
}

__n128 mlir::affine::AffineForOp::getSuccessorRegions(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if ((v7 & (TrivialConstantTripCount == 1)) == 1)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    if (TrivialConstantTripCount)
    {
      v10 = *(((&(*a1)[4 * (((*a1)[11] >> 23) & 1) + 17] + (((*a1)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*a1)[10] + 8);
      if (v10)
      {
        v11 = v10 - 8;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v11 + 48);
      v8 = ((*(v11 + 56) - v12) >> 3) - 1;
      v26 = ((&(*a1)[4 * (((*a1)[11] >> 23) & 1) + 17] + (((*a1)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*a1)[10];
      v27 = (v12 + 8) & 0xFFFFFFFFFFFFFFF9;
LABEL_12:
      v28 = v8;
      v13 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v26, 1);
      v14 = (*a3 + 24 * *(a3 + 8));
      goto LABEL_19;
    }

LABEL_3:
    v8 = (*a1)[9];
    v9 = (*a1 - 4) & 0xFFFFFFFFFFFFFFF9 | 4;
    if (!v8)
    {
      v9 = 4;
    }

    v26 = 0;
    v27 = v9;
    goto LABEL_12;
  }

  v15 = *(((&(*a1)[4 * (((*a1)[11] >> 23) & 1) + 17] + (((*a1)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*a1)[10] + 8);
  if (v15)
  {
    v16 = v15 - 8;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v16 + 48);
  v18 = ((*(v16 + 56) - v17) >> 3) - 1;
  v26 = ((&(*a1)[4 * (((*a1)[11] >> 23) & 1) + 17] + (((*a1)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*a1)[10];
  v27 = (v17 + 8) & 0xFFFFFFFFFFFFFFF9;
  v28 = v18;
  v19 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v26, 1);
  v20 = *a3 + 24 * *(a3 + 8);
  v21 = *v19;
  *(v20 + 16) = *(v19 + 16);
  *v20 = v21;
  ++*(a3 + 8);
  v22 = (*a1)[9];
  v23 = (*a1 - 4) & 0xFFFFFFFFFFFFFFF9 | 4;
  if (!v22)
  {
    v23 = 4;
  }

  v26 = 0;
  v27 = v23;
  v28 = v22;
  v13 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v26, 1);
  v14 = (*a3 + 24 * *(a3 + 8));
LABEL_19:
  result = *v13;
  v14[1].n128_u64[0] = v13[1].n128_u64[0];
  *v14 = result;
  ++*(a3 + 8);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t anonymous namespace::getTrivialConstantTripCount(unsigned int *a1)
{
  StepAsInt = mlir::affine::AffineForOp::getStepAsInt(a1);
  v3 = &a1[4 * ((a1[11] >> 23) & 1)];
  v5 = *(v3 + 8);
  v4 = v3 + 16;
  v6 = *(v5 + 8);
  if (*(v6 + 8) == 1 && (v7 = *(v6 + 24), *(v7 + 8) == 5) && (v8 = *(*(v4 + 2) + 8), *(v8 + 8) == 1) && ((v9 = *(v8 + 24), *(v9 + 8) == 5) ? (v10 = StepAsInt < 1) : (v10 = 1), !v10))
  {
    v14 = *(v9 + 16) - *(v7 + 16);
    if (v14 < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = (StepAsInt + v14 - 1) / StepAsInt;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFF00;
    v11 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

uint64_t mlir::affine::AffineForOp::setLowerBound(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v10 = *(v9 + 88);
  v11 = *(*(*(*a1 + 48) + 96) + 8 * *(*(*a1 + 48) + 104) - 8);
  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v9 + 88, 3);
  __src = 0;
  v16 = v11;
  v17 = v12;
  v18 = v8;
  v19 = 0;
  v20 = v10;
  v21[0] = v22;
  v21[1] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v21, &__src, &v18);
  mlir::MutableOperandRange::assign(&v18, a2, a3);
  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  result = mlir::AffineMapAttr::get(a4);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::affine::AffineForOp::setUpperBound(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v10 = *(v9 + 88);
  v11 = *(*(*(*a1 + 48) + 96) + 8 * *(*(*a1 + 48) + 104) - 8);
  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v9 + 88, 3);
  __src = 1;
  v16 = v11;
  v17 = v12;
  v18[0] = v8;
  v18[1] = v10;
  v19[0] = v20;
  v19[1] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v19, &__src, v18);
  mlir::MutableOperandRange::assign(v18, a2, a3);
  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  result = mlir::AffineMapAttr::get(a4);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::affine::getForInductionVarOwner(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      v1 = *(a1 + 16);
      if (v1)
      {
        v1 = *(v1 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v1)
        {
          while (1)
          {
            v1 = *(v1 + 16);
            if (v1)
            {
              if (*(*(v1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
              {
                break;
              }
            }

            v1 = *(v1 + 16);
            if (v1)
            {
              v1 = *(v1 + 24) & 0xFFFFFFFFFFFFFFF8;
              if (v1)
              {
                continue;
              }
            }

            return v1;
          }

          v2 = *(((v1 + 16 * ((*(v1 + 44) >> 23) & 1) + ((*(v1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40) + 8);
          if (v2)
          {
            v3 = v2 - 8;
          }

          else
          {
            v3 = 0;
          }

          if (**(v3 + 48) != a1)
          {
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

__n128 mlir::affine::AffineIfOp::getSuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    if (*(a3 + 12) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 2uLL, 24);
    }

    v8 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (*v8 == v8)
    {
      v13 = 0;
      v12 = 0;
    }

    else
    {
      v9 = v8[1];
      if (v9)
      {
        v10 = v9 - 8;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v10 + 48);
      v12 = (*(v10 + 56) - v11) >> 3;
      v13 = v11 & 0xFFFFFFFFFFFFFFF9;
    }

    v28 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v29 = v13;
    v30 = v12;
    v14 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v28, 1);
    v15 = *a3 + 24 * *(a3 + 8);
    v16 = *v14;
    *(v15 + 16) = *(v14 + 16);
    *v15 = v16;
    ++*(a3 + 8);
    v5 = *a1;
    v17 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v19 = *(v17 + 24);
    v18 = v17 + 24;
    if (v19 != v18)
    {
      v20 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 32);
      if (v20)
      {
        v21 = v20 - 8;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v21 + 48);
      v23 = (*(v21 + 56) - v22) >> 3;
      v28 = v18;
      v29 = v22 & 0xFFFFFFFFFFFFFFF9;
      v30 = v23;
      goto LABEL_19;
    }
  }

  v6 = *(v5 + 36);
  v7 = (v5 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  if (!v6)
  {
    v7 = 4;
  }

  v28 = 0;
  v29 = v7;
  v30 = v6;
LABEL_19:
  v24 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v28, 1);
  v25 = (*a3 + 24 * *(a3 + 8));
  result = *v24;
  v25[1].n128_u64[0] = v24[1].n128_u64[0];
  *v25 = result;
  ++*(a3 + 8);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::affine::AffineIfOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 440))(a1, &v18, 0) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v6 = v18;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(**v6 + 32);
    v20 = 261;
    v19[0] = "condition";
    v19[1] = 9;
    v8 = mlir::StringAttr::get(v7, v19, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v8, v6);
  }

  else
  {
    v16[0] = "invalid kind of attribute specified";
    v17 = 259;
    (*(*a1 + 24))(v19, a1, v4, v16);
    v9 = v21;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  LODWORD(v18) = 0;
  if (mlir::affine::parseDimAndSymbolList(a1, a2 + 16, &v18))
  {
    v10 = v6[1];
    if (*v10 == v18)
    {
      if (*(a2 + 6) == v10[1] + *v10)
      {
        if ((*(*a1 + 568))(a1, a2 + 16))
        {
          if (*(a2 + 59) <= 1u)
          {
            llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a2 + 224, 2uLL);
          }

          mlir::OperationState::addRegion(a2);
        }

        goto LABEL_15;
      }

      v14 = (*(*a1 + 16))(a1);
      v15 = "symbol operand count and integer set symbol count must match";
    }

    else
    {
      v14 = (*(*a1 + 16))(a1);
      v15 = "dim operand count and integer set dim count must match";
    }

    v16[0] = v15;
    v17 = 259;
    (*(*a1 + 24))(v19, a1, v14, v16);
    v11 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    goto LABEL_16;
  }

LABEL_15:
  v11 = 0;
LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::affine::AffineLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  memset(v11, 0, 24);
  v10 = 0;
  v12 = 0;
  v13 = v15;
  v14 = 0x100000000;
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v13, &v10, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v12) && ((*(*a1 + 728))(a1, v11, v12, a2 + 16))
  {
    if (!v14)
    {
LABEL_10:
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2 + 64, *(v12 + 24));
      v7 = 1;
      goto LABEL_12;
    }

    v5 = v13;
    v6 = 32 * v14;
    while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
    {
      v5 += 32;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = 0;
LABEL_12:
  if (v13 != v15)
  {
    free(v13);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::AsmParser::parseColonType<mlir::MemRefType>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 576))(a1, &v11))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of type specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t verifyMemoryOpIndexing(mlir::affine *this, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 1);
  if (*(a5 + 16) != v7[2])
  {
    v15 = "affine map num results must equal memref rank";
LABEL_14:
    v18 = v15;
    v19 = 259;
    mlir::Operation::emitOpError(this, &v18, v20);
    v14 = v20[200] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    goto LABEL_15;
  }

  if (v7[1] + *v7 != a6)
  {
    v15 = "expects as many subscripts as affine map inputs";
    goto LABEL_14;
  }

  AffineScope = mlir::affine::getAffineScope(this, a2);
  if (a4)
  {
    v11 = AffineScope;
    v12 = (a3 + 24);
    while (1)
    {
      v13 = *v12;
      if (*(*(*(*v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        v15 = "index to load must have 'index' type";
        goto LABEL_14;
      }

      if ((mlir::affine::isValidDim(*v12, v11) & 1) == 0 && (mlir::affine::isValidSymbol(v13, v11) & 1) == 0)
      {
        break;
      }

      v12 += 4;
      if (!--a4)
      {
        goto LABEL_9;
      }
    }

    v15 = "index must be a valid dimension or symbol identifier";
    goto LABEL_14;
  }

LABEL_9:
  v14 = 1;
LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(uint64_t a1)
{
  v2 = *(a1 + 8);
  (*(*(a1 + 16) + 24))();
  v4[0] = a1;
  v4[1] = 0;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v4);
}

void llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(void *a1, char *a2, char *a3)
{
  v4 = a2;
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v6 = a3 - a2;
  v7 = (a3 - a2) >> 3;
  if (v7 < 5)
  {
    v8 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v7, 8);
    v8 = *(a1 + 2);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v8);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 2) = v8 + (v6 >> 3);
}

uint64_t mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + mlir::ElementsAttr::getFlattenedIndex(*(a1 + 32), a2);
  v5[0] = *a1;
  v5[1] = v3;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v5);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::affine::AffineStoreOp::parse(uint64_t a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  memset(v13, 0, 24);
  memset(v12, 0, 24);
  v11 = 0;
  v14 = 0;
  v15 = v17;
  v16 = 0x100000000;
  if ((*(*a1 + 704))(a1, v13, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v15, &v11, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v14) && ((*(*a1 + 728))(a1, v13, *(v14 + 24), a2 + 16) & 1) != 0 && ((*(*a1 + 728))(a1, v12, v14, a2 + 16))
  {
    if (v16)
    {
      v5 = v15;
      v6 = 32 * v16 - 32;
      do
      {
        v7 = (*(*a1 + 728))(a1, v5, v4, a2 + 16);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 32;
        v8 = v6;
        v6 -= 32;
      }

      while (v8);
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

  if (v15 != v17)
  {
    free(v15);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t mlir::affine::AffineMinOp::parse(uint64_t a1, uint64_t a2)
{
  v18[32] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v16 = v18;
  v17 = 0x800000000;
  v13 = v15;
  v14 = 0x800000000;
  if (mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v12, a2 + 112) && ((*(*a1 + 720))(a1, &v16, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 720))(a1, &v13, 6, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0)
  {
    if (v17)
    {
      v5 = v16;
      v6 = 32 * v17;
      while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
      {
        v5 += 32;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (!v14)
      {
LABEL_13:
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2 + 64, v4);
        v9 = 1;
        goto LABEL_15;
      }

      v7 = v13;
      v8 = 32 * v14;
      while (((*(*a1 + 728))(a1, v7, v4, a2 + 16) & 1) != 0)
      {
        v7 += 32;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v9 = 0;
LABEL_15:
  if (v13 != v15)
  {
    free(v13);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::affine::AffineMaxOp::parse(uint64_t a1, uint64_t a2)
{
  v18[32] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v16 = v18;
  v17 = 0x800000000;
  v13 = v15;
  v14 = 0x800000000;
  if (mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v12, a2 + 112) && ((*(*a1 + 720))(a1, &v16, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 720))(a1, &v13, 6, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0)
  {
    if (v17)
    {
      v5 = v16;
      v6 = 32 * v17;
      while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
      {
        v5 += 32;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (!v14)
      {
LABEL_13:
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2 + 64, v4);
        v9 = 1;
        goto LABEL_15;
      }

      v7 = v13;
      v8 = 32 * v14;
      while (((*(*a1 + 728))(a1, v7, v4, a2 + 16) & 1) != 0)
      {
        v7 += 32;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v9 = 0;
LABEL_15:
  if (v13 != v15)
  {
    free(v13);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::affine::AffinePrefetchOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v36 = 0;
  memset(v35, 0, 24);
  v34 = 0;
  v5 = (*(*a1 + 32))(a1);
  v6 = mlir::IntegerType::get(*v5, 32, 0);
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v40 = v42;
  v41 = 0x100000000;
  if (((*(*a1 + 704))(a1, v35, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v40, &v29, "map", 3, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v32) || ((*(*a1 + 120))(a1) & 1) == 0 || (v38 = 257, ((*(*a1 + 400))(a1, "locality", 8, v37) & 1) == 0) || ((*(*a1 + 152))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v34, v6, "localityHint", 12, a2 + 112) || ((*(*a1 + 168))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v30) || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || !mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v36) || ((*(*a1 + 728))(a1, v35, v36, a2 + 16) & 1) == 0)
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  if (v41)
  {
    v7 = v40;
    v8 = 32 * v41;
    while (((*(*a1 + 728))(a1, v7, v4, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_24;
  }

LABEL_19:
  if (v33 == 5)
  {
    v14 = *v32 == 1953067639 && *(v32 + 4) == 101;
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  else if (v33 != 4 || *v32 != 1684104562)
  {
LABEL_22:
    v9 = (*(*a1 + 16))(a1);
    v10 = "rw specifier has to be 'read' or 'write'";
LABEL_23:
    v27 = v10;
    v28 = 259;
    (*(*a1 + 24))(v37, a1, v9, &v27);
    v11 = v39 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v37);
    goto LABEL_25;
  }

  v15 = (*(*a1 + 32))(a1);
  if (v33 == 5)
  {
    v16 = bswap64(*v32 | (*(v32 + 4) << 32));
    v17 = v16 >= 0x7772697465000000;
    v18 = v16 > 0x7772697465000000;
    v19 = !v17;
    v14 = v18 == v19;
    v20 = 592;
    if (v14)
    {
      v20 = 600;
    }
  }

  else
  {
    v20 = 592;
  }

  mlir::OperationState::addAttribute(a2, "isWrite", 7, *(**v15 + v20));
  if (v31 == 5)
  {
    if (*v30 != 1953721961 || *(v30 + 4) != 114)
    {
      goto LABEL_44;
    }
  }

  else if (v31 != 4 || *v30 != 1635017060)
  {
LABEL_44:
    v9 = (*(*a1 + 16))(a1);
    v10 = "cache type has to be 'data' or 'instr'";
    goto LABEL_23;
  }

  v22 = (*(*a1 + 32))(a1);
  if (v31 == 4)
  {
    v23 = bswap32(*v30);
    v17 = v23 >= 0x64617461;
    v24 = v23 > 0x64617461;
    v25 = !v17;
    v14 = v24 == v25;
    v26 = 592;
    if (v14)
    {
      v26 = 600;
    }
  }

  else
  {
    v26 = 592;
  }

  mlir::OperationState::addAttribute(a2, "isDataCache", 0xB, *(**v22 + v26));
  v11 = 1;
LABEL_25:
  if (v40 != v42)
  {
    free(v40);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t mlir::affine::AffinePrefetchOp::getLocalityHint(mlir::affine::AffinePrefetchOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 10);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::affine::AffineParallelOp::getSteps(mlir::affine::AffineParallelOp *this, uint64_t a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v13 = v15;
  v14 = 0x400000000;
  if (v4 < 5)
  {
    if (!v4)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v6 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, v4, 8);
    v6 = v14;
  }

  v7 = &v5[v4];
  v8 = v13 + 8 * v6;
  do
  {
    v9 = *v5++;
    v12 = v9;
    *v8++ = mlir::IntegerAttr::getInt(&v12);
  }

  while (v5 != v7);
  v10 = v14;
LABEL_8:
  *this = this + 16;
  *(this + 1) = 0x800000000;
  LODWORD(v14) = v10 + v4;
  if (v10 + v4)
  {
    llvm::SmallVectorImpl<long long>::operator=(this, &v13);
  }

  if (v13 != v15)
  {
    free(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::affine::AffineParallelOp::getLowerBoundsOperands(mlir::affine::AffineParallelOp *this)
{
  v1 = *(this + 11);
  if ((v1 & 0x800000) != 0)
  {
    v2 = *(this + 9);
    v3 = *(this + 17);
  }

  else
  {
    v2 = 0;
  }

  v4 = *(*(this + 2 * ((v1 >> 23) & 1) + 9) + 8);
  v4[1];
  *v4;
  return v2;
}

uint64_t mlir::affine::AffineParallelOp::getUpperBoundsOperands(mlir::affine::AffineParallelOp *this)
{
  v1 = *(this + 11);
  if ((v1 & 0x800000) != 0)
  {
    v2 = *(this + 9);
    v3 = *(this + 17);
  }

  else
  {
    v2 = 0;
  }

  v4 = *(*(this + 2 * ((v1 >> 23) & 1) + 9) + 8);
  return v2 + 32 * (v4[1] + *v4);
}

uint64_t verifyDimAndSymbolIdentifiers<mlir::affine::AffineParallelOp>(mlir::affine **a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = (a2 + 24);
  while (1)
  {
    v9 = *v8;
    AffineScope = mlir::affine::getAffineScope(*a1, a2);
    if (v7 >= a4)
    {
      break;
    }

    if ((mlir::affine::isValidDim(v9, AffineScope) & 1) == 0)
    {
      v12 = "operand cannot be used as a dimension id";
      goto LABEL_10;
    }

LABEL_7:
    ++v7;
    v8 += 4;
    if (a3 == v7)
    {
      goto LABEL_8;
    }
  }

  if (mlir::affine::isValidSymbol(v9, AffineScope))
  {
    goto LABEL_7;
  }

  v12 = "operand cannot be used as a symbol";
LABEL_10:
  v15 = v12;
  v16 = 259;
  mlir::Operation::emitOpError(*a1, &v15, v17);
  v11 = v17[200] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t mlir::affine::AffineValueMap::canonicalize(mlir::affine::AffineValueMap *this)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0x400000000;
  if (*(this + 26))
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v10, this + 96);
  }

  Impl = mlir::AffineMap::getImpl(*(this + 20), *(this + 21), *this, *(this + 2), *(this + 11));
  composeAffineMapAndOperands(&Impl, &v10);
  v2 = mlir::AffineMap::getImpl(*(this + 20), *(this + 21), *this, *(this + 2), *(this + 11));
  if (Impl == v2)
  {
    v4 = v11;
    v3 = v10;
    if (v11 == *(this + 26))
    {
      if (!v11)
      {
LABEL_10:
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 0;
      while (*(v10 + v5) == *(*(this + 12) + v5))
      {
        v5 += 8;
        if (8 * v11 == v5)
        {
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v3 = v10;
    v4 = v11;
  }

  mlir::affine::AffineValueMap::reset(this, Impl, v3 & 0xFFFFFFFFFFFFFFF9, v4, 0, 0);
  v6 = 1;
  v3 = v10;
LABEL_12:
  if (v3 != v12)
  {
    free(v3);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

llvm::raw_ostream *printMinMaxBound(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const void *a6, size_t a7)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v50[0] = a4;
  v50[1] = a5;
  v11 = *(a2 + 8);
  v12 = *v11;
  v42 = a5 - v12;
  if (a5 >= v12)
  {
    v13 = *v11;
  }

  else
  {
    v13 = a5;
  }

  v41 = v13;
  if (v12)
  {
    v40 = mlir::ValueRange::offset_base(v50, v12);
  }

  else
  {
    v40 = a4;
  }

  v14 = *(a3 + 24);
  v47[0] = *(a3 + 32);
  v47[1] = v14;
  v48 = 0;
  v15 = *(a3 + 8);
  v16 = (*(*(a3 + 16) + 8))();
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v16);
  v17 = *(a3 + 8);
  v18 = (*(*(a3 + 16) + 24))();
  if (v19)
  {
    v20 = 8 * v19;
    v21 = 1;
    do
    {
      v22 = *v18++;
      v21 *= v22;
      v20 -= 8;
    }

    while (v20);
  }

  else
  {
    v21 = 1;
  }

  v23 = *(a3 + 8);
  v24 = (*(*(a3 + 16) + 8))();
  result = mlir::detail::getDenseElementBitWidth(v24);
  if (v21)
  {
    v26 = 0;
    v27 = (v11 + 6);
    v28 = 1;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v47, &v45);
      if (v26)
      {
        v29 = (*(*a1 + 16))(a1);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 > 1uLL)
        {
          *v30 = 8236;
          *(v29 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v29, ", ", 2uLL);
        }
      }

      if (v46 >= 0x41)
      {
        v31 = v45;
      }

      else
      {
        v31 = &v45;
      }

      v32 = *v31;
      if (*v31 == 1)
      {
        result = (*(*a1 + 248))(a1, *&v27[2 * v26], a4, v41, v40, v42);
      }

      else
      {
        v33 = (*(*a1 + 16))(a1);
        llvm::raw_ostream::operator<<(v33, a6, a7);
        v34 = (*(*a1 + 16))(a1);
        v35 = *(v34 + 4);
        if (v35 >= *(v34 + 3))
        {
          llvm::raw_ostream::write(v34, 40);
        }

        else
        {
          *(v34 + 4) = v35 + 1;
          *v35 = 40;
        }

        Impl = mlir::AffineMap::getImpl(*v11, v11[1], &v27[2 * v26], v32, *(v11 + 2));
        v37 = mlir::AffineMapAttr::get(Impl);
        (*(*a1 + 240))(a1, v37, a4, a5);
        result = (*(*a1 + 16))(a1);
        v38 = *(result + 4);
        if (v38 >= *(result + 3))
        {
          result = llvm::raw_ostream::write(result, 41);
        }

        else
        {
          *(result + 4) = v38 + 1;
          *v38 = 41;
        }
      }

      if (v46 >= 0x41)
      {
        result = v45;
        if (v45)
        {
          result = MEMORY[0x25F891010](v45, 0x1000C8000313F17);
        }
      }

      v26 += v32;
      v48 = v28++;
      --v21;
    }

    while (v21);
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::affine::AffineParallelOp::parse(void *a1, mlir::OperationState *a2)
{
  v39[32] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 32))(a1);
  v5 = *(**v4 + 472);
  v37 = v39;
  v38 = 0x400000000;
  if (((*(*a1 + 768))(a1, &v37, 1, 0, 0) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !parseAffineMapWithMinMax(a1, a2, 1) || (v28[8] = 257, ((*(*a1 + 400))(a1, "to", 2, &v26) & 1) == 0) || !parseAffineMapWithMinMax(a1, a2, 0))
  {
    v22 = 0;
    goto LABEL_18;
  }

  v25 = 0;
  v35[0] = v36;
  v35[1] = 0x400000000;
  v36[8] = 4;
  v33[0] = v34;
  v33[1] = 0x400000000;
  if (((*(*a1 + 408))(a1, "step", 4) & 1) == 0)
  {
    v6 = v28;
    v26 = v28;
    v27 = 0x400000000;
    llvm::SmallVectorImpl<long long>::assign(&v26, v38, 1);
    I64ArrayAttr = mlir::Builder::getI64ArrayAttr(v4, v26, v27);
    mlir::OperationState::addAttribute(a2, "steps", 5, I64ArrayAttr);
    v17 = v26;
    goto LABEL_25;
  }

  if ((*(*a1 + 736))(a1, v33, &v25, "steps", 5, v35, 1))
  {
    v6 = &v32;
    v30 = &v32;
    v31 = 0x400000000;
    v7 = *(v25 + 8);
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = v7 + 24;
      v10 = 8 * v8;
      while (*v9 && *(*v9 + 8) == 5)
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v30, *(*v9 + 16));
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          v12 = v30;
          v13 = v31;
          goto LABEL_24;
        }
      }

      v21 = (*(*a1 + 16))(a1);
      v23 = "steps must be constant integers";
      v24 = 259;
      (*(*a1 + 24))(&v26, a1, v21, &v23);
      v22 = (v29 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
      v20 = v30;
      if (v30 == &v32)
      {
        goto LABEL_35;
      }

LABEL_34:
      free(v20);
      goto LABEL_35;
    }

    v13 = 0;
    v12 = &v32;
LABEL_24:
    v18 = mlir::Builder::getI64ArrayAttr(v4, v12, v13);
    mlir::OperationState::addAttribute(a2, "steps", 5, v18);
    v17 = v30;
LABEL_25:
    if (v17 != v6)
    {
      free(v17);
    }

    v26 = v28;
    v27 = 0x400000000;
    if ((*(*a1 + 408))(a1, "reduce", 6) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) != 0 && (v30 = a1, v31 = v4, v32 = &v26, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30, 0, 0)) && ((*(*a1 + 296))(a1))
    {
      v19 = mlir::ArrayAttr::get(*v4, v26, v27);
      mlir::OperationState::addAttribute(a2, "reductions", 0xA, v19);
      if ((*(*a1 + 568))(a1, a2 + 64))
      {
        mlir::OperationState::addRegion(a2);
      }
    }

    v22 = 0;
    v20 = v26;
    if (v26 == v28)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v22 = 0;
LABEL_35:
  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  if (v35[0] != v36)
  {
    free(v35[0]);
  }

LABEL_18:
  if (v37 != v39)
  {
    free(v37);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t parseAffineMapWithMinMax(uint64_t a1, uint64_t a2, int a3)
{
  v61[6] = *MEMORY[0x277D85DE8];
  v35 = a3;
  v34[0] = "__pseudo_bound_map";
  v34[1] = 18;
  if (a3)
  {
    v5 = "lowerBoundsMap";
  }

  else
  {
    v5 = "upperBoundsMap";
  }

  if (a3)
  {
    v6 = "lowerBoundsGroups";
  }

  else
  {
    v6 = "upperBoundsGroups";
  }

  if ((*(*a1 + 280))(a1))
  {
    if ((*(*a1 + 304))(a1))
    {
      v7 = (*(*a1 + 32))(a1);
      Impl = mlir::AffineMap::getImpl(0, 0, 0, 0, *v7);
      v9 = mlir::AffineMapAttr::get(Impl);
      mlir::OperationState::addAttribute(a2, v5, 0xE, v9);
      v10 = (*(*a1 + 32))(a1);
      I32TensorAttr = mlir::Builder::getI32TensorAttr(v10, 0, 0);
      mlir::OperationState::addAttribute(a2, v6, 0x11, I32TensorAttr);
      v12 = 1;
    }

    else
    {
      v59 = v61;
      v60 = 0x600000000;
      v56 = &v58;
      v57 = 0x100000000;
      v53 = &v55;
      v54 = 0x100000000;
      v50 = v52;
      v51 = 0xC00000000;
      v48[0] = v49;
      v48[1] = 0x100000000;
      v33[0] = a1;
      v33[1] = &v35;
      v33[2] = v48;
      v33[3] = v34;
      v33[4] = a2;
      v33[5] = &v59;
      v33[6] = &v56;
      v33[7] = &v53;
      v33[8] = &v50;
      {
        v31 = v6;
        if (v60)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 8 * v60;
          v17 = 8;
          do
          {
            v18 = *&v56[v17];
            v19 = *&v53[v17];
            __src = mlir::AffineExpr::shiftDims(&v59[v13 / 8], v18, v14, 0);
            v20 = mlir::AffineExpr::shiftSymbols(&__src, v19, v15, 0);
            v59[v13 / 8] = v20;
            v14 += v18;
            v15 += v19;
            v13 += 8;
            v17 += 48;
          }

          while (v16 != v13);
        }

        else
        {
          v15 = 0;
          v14 = 0;
        }

        __src = v47;
        v46 = 0x600000000;
        v42 = v44;
        v43 = 0x600000000;
        v39 = v41;
        v40 = 0x600000000;
        v36 = v38;
        v37 = 0x600000000;
        if (deduplicateAndResolveOperands(a1, v56, v57, &__src, &v39, 6))
        {
          if (deduplicateAndResolveOperands(a1, v53, v54, &v42, &v36, 7))
          {
            llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(a2 + 16, __src, __src + 8 * v46);
            llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(a2 + 16, v42, v42 + 8 * v43);
            v23 = (*(*a1 + 32))(a1);
            v29 = v59;
            v30 = v23;
            v28 = v60;
            v24 = (*(*a1 + 32))(a1);
            v32 = mlir::AffineMap::getImpl(v14, v15, v29, v28, *v24);
            v25 = mlir::AffineMap::replaceDimsAndSymbols(&v32, v39, v40, v36, v37, v46, v43);
            v26 = mlir::AffineMapAttr::get(v25);
            mlir::OperationState::addAttribute(a2, v5, 0xE, v26);
            v27 = mlir::Builder::getI32TensorAttr(v30, v50, v51);
            mlir::OperationState::addAttribute(a2, v31, 0x11, v27);
            v12 = 1;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        if (v36 != v38)
        {
          free(v36);
        }

        if (v39 != v41)
        {
          free(v39);
        }

        if (v42 != v44)
        {
          free(v42);
        }

        if (__src != v47)
        {
          free(__src);
        }
      }

      else
      {
        v12 = 0;
      }

      if (v48[0] != v49)
      {
        free(v48[0]);
      }

      if (v50 != v52)
      {
        free(v50);
      }

      llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v53);
      llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v56);
      if (v59 != v61)
      {
        free(v59);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::affine::AffineVectorLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v12 = 0;
  v13 = 0;
  memset(v11, 0, 24);
  v10 = 0;
  v14 = v16;
  v15 = 0x100000000;
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v14, &v10, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v13) && ((*(*a1 + 120))(a1) & 1) != 0 && mlir::AsmParser::parseType<mlir::VectorType>(a1, &v12) && ((*(*a1 + 728))(a1, v11, v13, a2 + 16))
  {
    if (!v15)
    {
LABEL_12:
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2 + 64, v12);
      v7 = 1;
      goto LABEL_14;
    }

    v5 = v14;
    v6 = 32 * v15;
    while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
    {
      v5 += 32;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = 0;
LABEL_14:
  if (v14 != v16)
  {
    free(v14);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::AsmParser::parseType<mlir::VectorType>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 536))(a1, &v11))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of type specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL verifyVectorMemoryOp(mlir::Operation *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 1;
  if (*(a2 + 24) != *(a3 + 24))
  {
    v6 = "requires memref and vector types of the same elemental type";
    v7 = 259;
    mlir::Operation::emitOpError(a1, &v6, v8);
    v3 = (v8[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::affine::AffineVectorStoreOp::parse(uint64_t a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v14 = 0;
  v15 = 0;
  memset(v13, 0, 24);
  memset(v12, 0, 24);
  v11 = 0;
  v16 = v18;
  v17 = 0x100000000;
  if ((*(*a1 + 704))(a1, v13, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v16, &v11, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v15) && ((*(*a1 + 120))(a1) & 1) != 0 && mlir::AsmParser::parseType<mlir::VectorType>(a1, &v14) && ((*(*a1 + 728))(a1, v13, v14, a2 + 16) & 1) != 0 && ((*(*a1 + 728))(a1, v12, v15, a2 + 16))
  {
    if (v17)
    {
      v5 = v16;
      v6 = 32 * v17 - 32;
      do
      {
        v7 = (*(*a1 + 728))(a1, v5, v4, a2 + 16);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 32;
        v8 = v6;
        v6 -= 32;
      }

      while (v8);
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

  if (v16 != v18)
  {
    free(v16);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void mlir::affine::AffineDelinearizeIndexOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v15 = *(a3 + 8);
  v21 = v23;
  v22 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::assign(&v21, a7 + (a8 ^ 1u), v15 & 0xFFFFFFFFFFFFFFF8);
  v16 = v22;
  v17 = v21 & 0xFFFFFFFFFFFFFFF9;
  v20 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v20, 0, &v20, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a4, 0, a4, a5);
  v18 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a6, a7);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>(a2) = v18;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, v17 | 2, 0, v17 | 2, v16);
  if (v21 != v23)
  {
    free(v21);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void mlir::affine::AffineDelinearizeIndexOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  v6 = a4;
  v22[6] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    if (a5)
    {
      if (*a4)
      {
        v10 = 1;
      }

      else
      {
        v6 = a4 + 1;
        --a5;
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = v22;
  v21 = 0x600000000;
  v17 = v19;
  v18 = 0x600000000;
  if (a5)
  {
    v11 = 8 * a5;
    do
    {
      v12 = *v6++;
      mlir::dispatchIndexOpFoldResult(v12, &v20, &v17);
      v11 -= 8;
    }

    while (v11);
    v13 = v20;
    a5 = v21;
    v14 = v17;
    v15 = v18;
  }

  else
  {
    v15 = 0;
    v14 = v19;
    v13 = v22;
  }

  mlir::affine::AffineDelinearizeIndexOp::build(a1, a2, a3, v13 & 0xFFFFFFFFFFFFFFF9, a5, v14, v15, v10);
  if (v17 != v19)
  {
    free(v17);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void foldCstValueToCstAttrBasis(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::MutableOperandRange *this, void *a5, uint64_t a6)
{
  v23[6] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v12 = 0;
    v13 = 8 * a6;
    do
    {
      if (*a5 < 8uLL)
      {
        ++v12;
      }

      else
      {
        mlir::MutableOperandRange::erase(this, v12, 1u);
      }

      ++a5;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == a6)
  {
    *a1 = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    v21 = v23;
    v22 = 0x600000000;
    if (a3)
    {
      v14 = 8 * a3;
      do
      {
        v15 = *a2++;
        ConstantIntValue = mlir::getConstantIntValue(v15);
        if (v17)
        {
          v18 = ConstantIntValue;
        }

        else
        {
          v18 = 0x8000000000000000;
        }

        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v21, v18);
        v14 -= 8;
      }

      while (v14);
      v19 = v22;
      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
      if (v19)
      {
        llvm::SmallVectorImpl<long long>::operator=(a1, &v21);
      }
    }

    else
    {
      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
    }

    *(a1 + 64) = 1;
    if (v21 != v23)
    {
      free(v21);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void mlir::affine::AffineDelinearizeIndexOp::getMixedBasis(mlir::affine::AffineDelinearizeIndexOp *this, uint64_t a2)
{
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 1u);

  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, this);
}

void mlir::affine::AffineDelinearizeIndexOp::getPaddedBasis(mlir::affine::AffineDelinearizeIndexOp *this, uint64_t *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  mlir::affine::AffineDelinearizeIndexOp::getMixedBasis(this, *a2);
  if (*(*a2 + 36) != *(*(*a2 + 16 * ((*(*a2 + 44) >> 23) & 1) + 64) + 32) >> 3)
  {
    v4 = *this;
    v6[0] = 0;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::insert_one_impl<mlir::OpFoldResult>(this, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void mlir::affine::AffineLinearizeIndexOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = a4;
  v21[2] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a3, 0, a3, a4);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) + 12) = v13 | (a6 << 32);
  *(mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) + 8) = a9;
  v16 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a7, a8);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) = v16;
  __src = v21;
  v20 = 0x200000000;
  v17 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v17 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v20);
  if (__src != v21)
  {
    free(__src);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void mlir::affine::AffineLinearizeIndexOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7)
{
  v8 = a5;
  v26[6] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    if (*a5)
    {
      v13 = a6;
    }

    else
    {
      v8 = a5 + 1;
      v13 = a6 - 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v24 = v26;
  v25 = 0x600000000;
  v21 = v23;
  v22 = 0x600000000;
  if (v13)
  {
    v14 = 8 * v13;
    do
    {
      v15 = *v8++;
      mlir::dispatchIndexOpFoldResult(v15, &v24, &v21);
      v14 -= 8;
    }

    while (v14);
    v16 = v24;
    v17 = v25;
    v18 = v21;
    v19 = v22;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = v23;
    v16 = v26;
  }

  mlir::affine::AffineLinearizeIndexOp::build(a1, a2, a3, a4, v16 & 0xFFFFFFFFFFFFFFF9, v17, v18, v19, a7);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void mlir::affine::AffineLinearizeIndexOp::getMixedBasis(mlir::affine::AffineLinearizeIndexOp *this, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v3 + 76);
  v8 = *(v3 + 80);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  mlir::getMixedValues(v5, v6 >> 3, (v9 + 32 * v7) & 0xFFFFFFFFFFFFFFF9 | 2, (v8 + v7) - v7, *(***(a2 + 24) + 32), this);
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<52ul>(v13, "' failed to satisfy constraint: AffineMap attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v9 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      {
        llvm::getTypeName<mlir::AffineMapAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::AffineMapAttr>();
        unk_27FC1B6D0 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::AffineMapAttr>(void)::Name;
        v16 = unk_27FC1B6D0;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v7 = v20 + 24 * v21;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v21;
          }
        }
      }

      v9 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::affine::AffineApplyOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = a4;
  v9 = *(**a1 + 472);
  mlir::AffineMap::inferFromExprList(v12, 1uLL, *a1, &v13);
  mlir::affine::AffineApplyOp::build(v10, a2, v9, *v13, a5, a6);
  if (v13 != v14)
  {
    free(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void mlir::affine::AffineApplyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  v8 = mlir::AffineMapAttr::get(a4);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(a2) = v8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v10);
}

void mlir::affine::AffineApplyOp::build(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a4, 0, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(a2) = v8;
  __src = v13;
  v12 = 0x200000000;
  v9 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v9 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v12);
  if (__src != v13)
  {
    free(__src);
  }

  v10 = *MEMORY[0x277D85DE8];
}

BOOL mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      mlir::Diagnostic::operator<<<37ul>((v6 + 1), " must be variadic of index, but got ");
      if (*v7)
      {
        v17 = 4;
        v18 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v11 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}