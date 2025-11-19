char *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(uint64_t *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(a1, *(**a2 + 32));
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
  mlir::affine::AffineApplyOp::build(a1, v13, *a3, *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1]);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>]";
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

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::~DeduplicateAffineMinMaxExpressions(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v21 = v23;
  v22 = 0x400000000;
  v4 = *(v3 + 8);
  if (v4)
  {
    v7 = (v3 + 24);
    v8 = v3 + 24 + 8 * v4;
    do
    {
      v9 = *v7;
      if (v22)
      {
        v10 = 8 * v22;
        v11 = v21;
        while (*v11 != v9)
        {
          ++v11;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v11 = v21;
      }

      if (v11 == (v21 + 8 * v22))
      {
LABEL_10:
        llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v21, v9);
      }

      ++v7;
    }

    while (v7 != v8);
    v12 = v21;
    if (v22 == *(v3 + 8))
    {
      v13 = 0;
    }

    else
    {
      Impl = mlir::AffineMap::getImpl(*v3, *(v3 + 4), v21, v22, a3[1]);
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v14 = *(a2 + 68);
        v15 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
      }

      else
      {
        v14 = 0;
        v15 = 2;
      }

      v20[0] = v15;
      v20[1] = v14;
      v16 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Impl, v20);
      (*(*a3 + 8))(a3, a2, v16);
      v13 = 1;
      v12 = v21;
    }

    if (v12 != v23)
    {
      free(v12);
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

char *mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMinOp>(*(**a2 + 32));
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
  mlir::affine::AffineMinOp::build(a1, v13, *a3, *a4, a4[1]);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>]";
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

void MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::~MergeAffineMinMaxOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v82[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    if (v7 >= *v6)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v7;
    }

    *&v73 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v73 + 1) = v9;
    v10 = *(a2 + 68);
    v11 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    v74 = v11;
    v75 = v10;
    v12 = v6[1];
    if (v10 <= v12)
    {
      v12 = v10;
    }

    else
    {
      v11 = mlir::ValueRange::offset_base(&v74, v10 - v12);
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v73 = xmmword_25D0A0640;
    v8 = 2;
    v11 = 2;
  }

  v72[0] = v11;
  v72[1] = v12;
  v69 = v71;
  v70 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v69, v8, 0, v8, v9);
  v66 = v68;
  v67 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v66, v11, 0, v11, v12);
  v63 = v65;
  v64 = 0x400000000;
  v60 = v62;
  v61 = 0x400000000;
  v13 = v6[2];
  if (!v13)
  {
    v51 = 0;
    goto LABEL_59;
  }

  v54 = a3;
  v55 = a2;
  v14 = 8 * v13;
  v15 = 6;
  do
  {
    v16 = *&v6[v15];
    v17 = *(v16 + 8);
    if (v16)
    {
      v18 = v17 == 7;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v20 = *(v16 + 16);
      v21 = v72;
    }

    else
    {
      if (v16)
      {
        v19 = v17 == 6;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = *(v16 + 16);
      v21 = &v73;
    }

    v22 = mlir::ValueRange::dereference_iterator(v21, v20);
    if ((~*(v22 + 8) & 7) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16);
      v26 = v25 + 120;
      if (v25 == -120)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = v23 + 16 * v24 + 16;
    }

    if (*(*(v26 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
    {
LABEL_30:
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v63, v16);
      goto LABEL_31;
    }

    llvm::SmallVectorTemplateBase<mlir::affine::AffineMinOp,true>::push_back(&v60, v26);
LABEL_31:
    v15 += 2;
    v14 -= 8;
  }

  while (v14);
  v27 = v60;
  if (v61)
  {
    v28 = *v6;
    v29 = v6[1];
    v56 = v60 + 8 * v61;
    do
    {
      v30 = *v27;
      v31 = *(*v27 + 44);
      v32 = *(*(*v27 + 16 * ((v31 >> 23) & 1) + 64) + 8);
      v34 = *v32;
      v33 = v32[1];
      if ((v31 & 0x800000) != 0)
      {
        v35 = *(v30 + 68);
        v36 = *(v30 + 72) & 0xFFFFFFFFFFFFFFF9;
        v37 = v36 | 2;
        if (v35 >= v34)
        {
          v38 = v34;
        }

        else
        {
          v38 = v35;
        }

        v74 = (v36 | 2);
        v75 = v35;
        if (v35 <= v33)
        {
          v39 = v36 | 2;
        }

        else
        {
          v39 = mlir::ValueRange::offset_base(&v74, v35 - v33);
          v35 = v33;
        }
      }

      else
      {
        v38 = 0;
        v35 = 0;
        v37 = 2;
        v39 = 2;
      }

      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v69, v37, 0, v37, v38);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v66, v39, 0, v39, v35);
      v40 = v32[2];
      if (v40)
      {
        v41 = (v32 + 6);
        v42 = 8 * v40;
        do
        {
          v43 = *v41++;
          v74 = v43;
          v57 = mlir::AffineExpr::shiftDims(&v74, v34, v28, 0);
          v44 = mlir::AffineExpr::shiftSymbols(&v57, v33, v29, 0);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v63, v44);
          v42 -= 8;
        }

        while (v42);
      }

      v28 += v34;
      v29 += v33;
      v27 += 8;
    }

    while (v27 != v56);
    Impl = mlir::AffineMap::getImpl(v28, v29, v63, v64, v54[1]);
    llvm::to_vector<8u,llvm::detail::concat_range<mlir::Value,llvm::SmallVector<mlir::Value,8u> &,llvm::SmallVector<mlir::Value,8u> &>>(&v57, v69, v70, v66, v67);
    v46 = *(v55 + 24);
    v47 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMinOp>(*(**v46 + 32));
    v74 = v46;
    v75 = v47;
    v76 = v78;
    v77 = 0x400000000;
    v78[4] = v79;
    v78[5] = 0x400000000;
    v79[4] = v80;
    v79[5] = 0x400000000;
    v80[8] = 4;
    v80[9] = v81;
    v80[10] = 0x100000000;
    v81[1] = v82;
    v81[2] = 0x100000000;
    v82[2] = 0;
    v82[1] = 0;
    v82[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v82[4] = 0;
    v82[6] = 0;
    mlir::affine::AffineMinOp::build(v54 + 1, &v74, Impl, v57 & 0xFFFFFFFFFFFFFFF9, v58);
    v48 = mlir::Operation::create(&v74);
    mlir::OpBuilder::insert((v54 + 1), v48);
    v49 = *(*(v48 + 6) + 16);
    mlir::OperationState::~OperationState(&v74);
    if (v49 == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    (*(*v54 + 8))(v54, v55, v50);
    if (v57 != &v59)
    {
      free(v57);
    }

    v51 = 1;
    v27 = v60;
  }

  else
  {
    v51 = 0;
  }

  if (v27 != v62)
  {
    free(v27);
  }

LABEL_59:
  if (v63 != v65)
  {
    free(v63);
  }

  if (v66 != v68)
  {
    free(v66);
  }

  if (v69 != v71)
  {
    free(v69);
  }

  v52 = *MEMORY[0x277D85DE8];
  return v51;
}

void llvm::SmallVectorTemplateBase<mlir::affine::AffineMinOp,true>::push_back(uint64_t a1, uint64_t a2)
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

void llvm::to_vector<8u,llvm::detail::concat_range<mlir::Value,llvm::SmallVector<mlir::Value,8u> &,llvm::SmallVector<mlir::Value,8u> &>>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v5 = a4;
  v6 = a2;
  v8 = 0;
  v9 = a2 + 8 * a3;
  v31 = (a1 + 16);
  v32 = a2;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  v10 = a4 + 8 * a5;
  v33 = a4;
  v34 = v9;
  v35 = v10;
  v11 = a4;
  v12 = a2;
  while (v12 != v9 || v11 != v10 || v34 != v9 || v35 != v10)
  {
    v14 = &unk_286E9E110;
    v15 = 16;
    do
    {
      v16 = v15;
      v17 = *(v14 - 1);
      v18 = (&v32 + (*v14 >> 1));
      if (*v14)
      {
        v17 = *(*v18 + v17);
      }

      if (v17(v18))
      {
        break;
      }

      v14 += 2;
      v15 = v16 - 16;
    }

    while (v16);
    ++v8;
    v12 = v32;
    v11 = v33;
  }

  v19 = *(a1 + 8);
  if (v8 + v19 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v31, v8 + v19, 8);
    v19 = *(a1 + 8);
  }

  v32 = v6;
  v33 = v5;
  v34 = v9;
  v35 = v10;
  for (i = (*a1 + 8 * v19); v6 != v9 || v5 != v10 || v34 != v9 || v35 != v10; ++i)
  {
    v22 = &unk_286E9E130;
    do
    {
      v23 = *(v22 - 1);
      v24 = (&v32 + (*v22 >> 1));
      if (*v22)
      {
        v23 = *(*v24 + v23);
      }

      v22 += 2;
      v25 = v23(v24);
    }

    while (!v25);
    *i = *v25;
    v26 = &unk_286E9E110;
    v27 = 16;
    do
    {
      v28 = v27;
      v29 = *(v26 - 1);
      v30 = (&v32 + (*v26 >> 1));
      if (*v26)
      {
        v29 = *(*v30 + v29);
      }

      if (v29(v30))
      {
        break;
      }

      v26 += 2;
      v27 = v28 - 16;
    }

    while (v28);
    v6 = v32;
    v5 = v33;
  }

  *(a1 + 8) += v8;
}

const char *llvm::detail::getTypeNameImpl<MergeAffineMinMaxOp<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = MergeAffineMinMaxOp<mlir::affine::AffineMinOp>]";
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v34[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v22 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v7 = 0;
    v8 = 2;
  }

  v23 = v25;
  v24 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v23, v8, 0, v8, v7);
  composeAffineMapAndOperands(&v22, &v23);
  mlir::affine::canonicalizeMapAndOperands(&v22, &v23);
  simplifyMapWithOperands(&v22, v23, v24);
  v9 = v22;
  if (v22 != v6)
  {
LABEL_4:
    v10 = v23;
    v11 = v24;
    v12 = *(a2 + 24);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMinOp>(*(**v12 + 32));
    v26 = v12;
    v27 = v13;
    v28 = v30;
    v29 = 0x400000000;
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
    mlir::affine::AffineMinOp::build(a3 + 1, &v26, v9, v10 & 0xFFFFFFFFFFFFFFF9, v11);
    v14 = mlir::Operation::create(&v26);
    mlir::OpBuilder::insert((a3 + 1), v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(&v26);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    (*(*a3 + 8))(a3, a2, v16);
    v17 = 1;
    goto LABEL_13;
  }

  v18 = v23;
  v26 = v8;
  v27 = 0;
  if (v7)
  {
    v19 = 0;
    while (v18[v19] == mlir::ValueRange::dereference_iterator(&v26, v19))
    {
      v27 = ++v19;
      if (v7 == v19)
      {
        goto LABEL_12;
      }
    }

    v9 = v22;
    goto LABEL_4;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineMinOp>]";
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

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  if (canonicalizeMapExprAndTermOrder(&v10))
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 68);
      v6 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v5 = 0;
      v6 = 2;
    }

    v11[0] = v6;
    v11[1] = v5;
    v7 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v10, v11);
    (*(*a3 + 8))(a3, a2, v7);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t canonicalizeMapExprAndTermOrder(int **a1)
{
  v46[8] = *MEMORY[0x277D85DE8];
  v44 = v46;
  v45 = 0x100000000;
  v1 = (*a1)[2];
  if (v1)
  {
    v3 = (*a1 + 6);
    v4 = 8 * v1;
    while (mlir::AffineExpr::isPureAffine(v3))
    {
      v5 = *a1;
      v37 = &unk_286E771A8;
      v6 = *v5;
      v39[0] = 0;
      v39[1] = 0;
      v38 = 0;
      v39[2] = v6;
      v40 = 0;
      v41 = &v43;
      v42 = 0x400000000;
      std::vector<llvm::SmallVector<long long,8u>>::reserve(&v38, 8uLL);
      if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v37, *v3) & 1) == 0 || (v7 = *(v39[0] - 72), v7 != **a1 + (*a1)[1] + 1))
      {
        mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(&v37);
        break;
      }

      v8 = *(v39[0] - 80);
      v33 = &v8[8 * v7];
      v34 = v8;
      if (v45 >= HIDWORD(v45))
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long *,long long *>(&v44, &v34, &v33);
      }

      else
      {
        v9 = &v44[64 * v45];
        *v9 = v9 + 16;
        *(v9 + 1) = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long *,void>(v9, v8, &v8[8 * v7]);
        LODWORD(v45) = v45 + 1;
      }

      mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(&v37);
      ++v3;
      v4 -= 8;
      if (!v4)
      {
        v13 = v44;
        v14 = &v44[64 * v45];
        if (v45)
        {
          if (v45 == 1)
          {
            break;
          }

          v16 = v44 + 64;
          v15 = *v44;
          while (1)
          {
            v17 = *(v13 + 8);
            v18 = *(v13 + 18);
            v19 = *(v13 + 2);
            v13 = v16;
            if (v19 >= v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = v19;
            }

            v21 = v15;
            v22 = v17;
            if (v20)
            {
              v23 = 8 * v20;
              v21 = v15;
              v22 = v17;
              v24 = &v17[v20];
              while (*v22 == *v21)
              {
                ++v22;
                ++v21;
                v23 -= 8;
                if (!v23)
                {
                  v22 = v24;
                  break;
                }
              }
            }

            if (v21 != &v15[v19] && (v22 == &v17[v18] || *v22 < *v21))
            {
              break;
            }

            v10 = 0;
            v16 = v13 + 64;
            v15 = v17;
            if (v13 + 64 == v14)
            {
              goto LABEL_13;
            }
          }
        }

        if (v13 != v14)
        {
          v25 = (*a1)[2];
          v37 = v39;
          v38 = 0xC00000000;
          llvm::SmallVectorImpl<unsigned int>::append<llvm::detail::SafeIntIterator<unsigned int,false>,void>(&v37, 0, v25);
          v34 = &v44;
          v26 = 126 - 2 * __clz(v38);
          if (v38)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v37, v37 + v38, &v34, v27, 1);
          v34 = v36;
          v35 = 0x600000000;
          if (v38)
          {
            v28 = v37;
            v29 = 4 * v38;
            do
            {
              v30 = *v28++;
              llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v34, *&(*a1)[2 * v30 + 6]);
              v29 -= 4;
            }

            while (v29);
            v31 = v34;
            v32 = v35;
          }

          else
          {
            v32 = 0;
            v31 = v36;
          }

          *a1 = mlir::AffineMap::getImpl(**a1, (*a1)[1], v31, v32, *(*a1 + 2));
          if (v34 != v36)
          {
            free(v34);
          }

          if (v37 != v39)
          {
            free(v37);
          }

          v10 = 1;
          goto LABEL_13;
        }

        break;
      }
    }
  }

  v10 = 0;
LABEL_13:
  llvm::SmallVector<llvm::SmallVector<long long,6u>,1u>::~SmallVector(&v44);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long *,long long *>(uint64_t a1, _BYTE **a2, _BYTE **a3)
{
  v12 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v12);
  v8 = &v7[8 * *(a1 + 8)];
  v9 = *a2;
  v10 = *a3;
  *v8 = v8 + 2;
  v8[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long *,void>(v8, v9, v10);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::moveElementsForGrow(a1, v7);
  v11 = v12;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v11;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            if (v11 != 3)
            {
              if (v11 == 4)
              {
                v404 = **a3;

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v10, v10 + 1, v10 + 2, a2 - 1, v404);
              }

              if (v11 == 5)
              {

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
              }

              goto LABEL_10;
            }

            v373 = *v10;
            v374 = v10[1];
            v375 = **a3;
            v376 = v375 + (v374 << 6);
            v377 = v375 + (v373 << 6);
            v378 = *v376;
            v379 = *(v376 + 8);
            v380 = *v377;
            v381 = *(v377 + 8);
            v382 = *v377 + 8 * v381;
            if (v381 >= v379)
            {
              v383 = v379;
            }

            else
            {
              v383 = *(v377 + 8);
            }

            v384 = *v377;
            v385 = v378;
            if (v383)
            {
              v386 = 8 * v383;
              v384 = *v377;
              v385 = v378;
              v387 = &v378[v383];
              while (*v385 == *v384)
              {
                ++v385;
                ++v384;
                v386 -= 8;
                if (!v386)
                {
                  v385 = v387;
                  break;
                }
              }
            }

            v388 = &v378[v379];
            v389 = v384 != v382 && (v385 == v388 || *v385 < *v384);
            v564 = *(a2 - 1);
            v565 = v375 + (v564 << 6);
            result = *v565;
            v566 = *(v565 + 8);
            if (v379 >= v566)
            {
              v567 = v566;
            }

            else
            {
              v567 = v379;
            }

            if (v567)
            {
              v568 = 8 * v567;
              v569 = result;
              v570 = (result + 8 * v567);
              while (*v569 == *v378)
              {
                ++v569;
                ++v378;
                v568 -= 8;
                if (!v568)
                {
                  v569 = v570;
                  break;
                }
              }
            }

            else
            {
              v569 = result;
            }

            if (v378 != v388)
            {
              if (v569 == (result + 8 * v566))
              {
                if (v389)
                {
LABEL_725:
                  *v10 = v564;
                  goto LABEL_740;
                }
              }

              else
              {
                v571 = *v569;
                v572 = *v378;
                if (v389)
                {
                  if (v571 < v572)
                  {
                    goto LABEL_725;
                  }

LABEL_716:
                  *v10 = v374;
                  v10[1] = v373;
                  v573 = *(a2 - 1);
                  v574 = v375 + (v573 << 6);
                  v575 = *v574;
                  v576 = *(v574 + 8);
                  v577 = *(v377 + 8);
                  v578 = &v380[v577];
                  if (v577 >= v576)
                  {
                    v579 = v576;
                  }

                  else
                  {
                    v579 = v577;
                  }

                  if (v579)
                  {
                    v580 = 8 * v579;
                    v581 = v575;
                    v582 = &v575[v579];
                    while (1)
                    {
                      result = *v380;
                      if (*v581 != *v380)
                      {
                        break;
                      }

                      ++v581;
                      ++v380;
                      v580 -= 8;
                      if (!v580)
                      {
                        v581 = v582;
                        break;
                      }
                    }
                  }

                  else
                  {
                    v581 = v575;
                  }

                  if (v380 == v578 || v581 != &v575[v576] && *v581 >= *v380)
                  {
                    return result;
                  }

                  v10[1] = v573;
LABEL_740:
                  *(a2 - 1) = v373;
                  return result;
                }

                if (v571 >= v572)
                {
                  return result;
                }
              }

              v10[1] = v564;
              *(a2 - 1) = v374;
              v584 = *v10;
              v583 = v10[1];
              v585 = v375 + (v583 << 6);
              v586 = v375 + (v584 << 6);
              v587 = *v585;
              v588 = *(v585 + 8);
              v589 = *v586;
              v590 = *(v586 + 8);
              v591 = *v586 + 8 * v590;
              if (v590 >= v588)
              {
                v592 = v588;
              }

              else
              {
                v592 = v590;
              }

              if (v592)
              {
                v593 = 8 * v592;
                v594 = v587;
                v595 = &v587[v592];
                while (1)
                {
                  result = *v589;
                  if (*v594 != *v589)
                  {
                    break;
                  }

                  ++v594;
                  ++v589;
                  v593 -= 8;
                  if (!v593)
                  {
                    v594 = v595;
                    break;
                  }
                }
              }

              else
              {
                v594 = v587;
              }

              if (v589 != v591 && (v594 == &v587[v588] || *v594 < *v589))
              {
                *v10 = v583;
                v10[1] = v584;
              }

              return result;
            }

            if (!v389)
            {
              return result;
            }

            goto LABEL_716;
          }

          if (v11 < 2)
          {
            return result;
          }

          if (v11 == 2)
          {
            v390 = *(a2 - 1);
            v391 = *v10;
            v392 = **a3;
            v393 = v392 + (v390 << 6);
            v394 = v392 + (v391 << 6);
            v395 = *v393;
            v396 = *(v393 + 8);
            v397 = *v394;
            v398 = *(v394 + 8);
            v399 = *v394 + 8 * v398;
            if (v398 >= v396)
            {
              v400 = v396;
            }

            else
            {
              v400 = v398;
            }

            if (v400)
            {
              v401 = 8 * v400;
              v402 = v395;
              v403 = &v395[v400];
              while (1)
              {
                result = *v397;
                if (*v402 != *v397)
                {
                  break;
                }

                ++v402;
                ++v397;
                v401 -= 8;
                if (!v401)
                {
                  v402 = v403;
                  break;
                }
              }
            }

            else
            {
              v402 = v395;
            }

            if (v397 != v399 && (v402 == &v395[v396] || *v402 < *v397))
            {
              *v10 = v390;
              *(a2 - 1) = v391;
            }

            return result;
          }

LABEL_10:
          if (v11 <= 23)
          {
            v405 = v10 + 1;
            v407 = v10 == a2 || v405 == a2;
            if (a5)
            {
              if (!v407)
              {
                v408 = **a3;
                v409 = v10;
                do
                {
                  v410 = v409;
                  v409 = v405;
                  v412 = *v410;
                  v411 = v410[1];
                  v413 = v408 + (v411 << 6);
                  v414 = v408 + (v412 << 6);
                  v415 = *v413;
                  v416 = *(v413 + 8);
                  v417 = *v414;
                  v418 = *(v414 + 8);
                  if (v418 >= v416)
                  {
                    v419 = *(v413 + 8);
                  }

                  else
                  {
                    v419 = v418;
                  }

                  if (v419)
                  {
                    v420 = 8 * v419;
                    result = v417;
                    v421 = *v413;
                    v422 = &v415[v419];
                    while (*v421 == *result)
                    {
                      ++v421;
                      result += 8;
                      v420 -= 8;
                      if (!v420)
                      {
                        v421 = v422;
                        break;
                      }
                    }
                  }

                  else
                  {
                    result = v417;
                    v421 = *v413;
                  }

                  if (result != v417 + 8 * v418 && (v421 == &v415[v416] || *v421 < *result))
                  {
                    v410[1] = v412;
                    v423 = v10;
                    if (v410 != v10)
                    {
                      v424 = v410;
                      while (1)
                      {
                        v426 = *--v424;
                        v425 = v426;
                        v427 = v408 + (v426 << 6);
                        v428 = *(v413 + 8);
                        v429 = *v427;
                        result = *(v427 + 8);
                        v430 = result >= v428 ? *(v413 + 8) : result;
                        if (v430)
                        {
                          v431 = 8 * v430;
                          v432 = v429;
                          v433 = v415;
                          v434 = &v415[v430];
                          while (*v433 == *v432)
                          {
                            ++v433;
                            ++v432;
                            v431 -= 8;
                            if (!v431)
                            {
                              v433 = v434;
                              break;
                            }
                          }
                        }

                        else
                        {
                          v432 = v429;
                          v433 = v415;
                        }

                        if (v432 == &v429[result] || v433 != &v415[v428] && *v433 >= *v432)
                        {
                          break;
                        }

                        *v410 = v425;
                        v410 = v424;
                        if (v424 == v10)
                        {
                          v423 = v10;
                          goto LABEL_549;
                        }
                      }

                      v423 = v410;
                    }

LABEL_549:
                    *v423 = v411;
                  }

                  v405 = v409 + 1;
                }

                while (v409 + 1 != a2);
              }
            }

            else if (!v407)
            {
              v540 = **a3;
              do
              {
                v541 = v9;
                v9 = v405;
                v543 = *v541;
                v542 = v541[1];
                v544 = v540 + (v542 << 6);
                v545 = v540 + (v543 << 6);
                v546 = *v544;
                v547 = *(v544 + 8);
                v548 = *v545;
                v549 = *(v545 + 8);
                if (v549 >= v547)
                {
                  v550 = *(v544 + 8);
                }

                else
                {
                  v550 = v549;
                }

                if (v550)
                {
                  v551 = 8 * v550;
                  v552 = v548;
                  result = *v544;
                  v553 = &v546[v550];
                  while (*result == *v552)
                  {
                    result += 8;
                    ++v552;
                    v551 -= 8;
                    if (!v551)
                    {
                      result = v553;
                      break;
                    }
                  }
                }

                else
                {
                  v552 = v548;
                  result = *v544;
                }

                if (v552 != &v548[v549] && (result == &v546[v547] || *result < *v552))
                {
                  v554 = v9;
                  do
                  {
                    *v554 = v543;
                    v554 = v541;
                    v555 = *--v541;
                    LODWORD(v543) = v555;
                    v556 = v540 + (v555 << 6);
                    v557 = *(v544 + 8);
                    v558 = *v556;
                    result = *(v556 + 8);
                    if (result >= v557)
                    {
                      v559 = *(v544 + 8);
                    }

                    else
                    {
                      v559 = *(v556 + 8);
                    }

                    if (v559)
                    {
                      v560 = 8 * v559;
                      v561 = *v556;
                      v562 = v546;
                      v563 = &v546[v559];
                      while (*v562 == *v561)
                      {
                        ++v562;
                        ++v561;
                        v560 -= 8;
                        if (!v560)
                        {
                          v562 = v563;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v561 = *v556;
                      v562 = v546;
                    }
                  }

                  while (v561 != &v558[result] && (v562 == &v546[v557] || *v562 < *v561));
                  *v554 = v542;
                }

                v405 = v9 + 1;
              }

              while (v9 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v435 = (v11 - 2) >> 1;
              v436 = *a3;
              v437 = v435;
              do
              {
                v438 = v437;
                if (v435 >= v437)
                {
                  v439 = (2 * v437) | 1;
                  v440 = &v9[v439];
                  v441 = *v436;
                  if (2 * v438 + 2 < v11)
                  {
                    v442 = v441 + (*v440 << 6);
                    v443 = v441 + (v440[1] << 6);
                    v444 = *v442;
                    v445 = *(v442 + 8);
                    v446 = *v443;
                    v447 = *(v443 + 8);
                    if (v447 >= v445)
                    {
                      v448 = v445;
                    }

                    else
                    {
                      v448 = v447;
                    }

                    if (v448)
                    {
                      v449 = 8 * v448;
                      v450 = v446;
                      v451 = v444;
                      v452 = &v444[v448];
                      while (*v451 == *v450)
                      {
                        ++v451;
                        ++v450;
                        v449 -= 8;
                        if (!v449)
                        {
                          v451 = v452;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v450 = v446;
                      v451 = v444;
                    }

                    if (v450 != &v446[v447] && (v451 == &v444[v445] || *v451 < *v450))
                    {
                      ++v440;
                      v439 = 2 * v438 + 2;
                    }
                  }

                  v453 = *v440;
                  v454 = v9[v438];
                  v455 = v441 + (v453 << 6);
                  v456 = v441 + (v454 << 6);
                  v457 = *v455;
                  v458 = *(v455 + 8);
                  v459 = *v456;
                  v460 = *(v456 + 8);
                  if (v460 >= v458)
                  {
                    v461 = v458;
                  }

                  else
                  {
                    v461 = *(v456 + 8);
                  }

                  if (v461)
                  {
                    v462 = 8 * v461;
                    v463 = *v456;
                    v464 = v457;
                    v465 = &v457[v461];
                    while (*v464 == *v463)
                    {
                      ++v464;
                      ++v463;
                      v462 -= 8;
                      if (!v462)
                      {
                        v464 = v465;
                        break;
                      }
                    }
                  }

                  else
                  {
                    v463 = *v456;
                    v464 = v457;
                  }

                  if (v463 == &v459[v460] || v464 != &v457[v458] && *v464 >= *v463)
                  {
                    v9[v438] = v453;
                    if (v435 >= v439)
                    {
                      while (1)
                      {
                        v467 = 2 * v439;
                        v439 = (2 * v439) | 1;
                        v466 = &v9[v439];
                        v468 = v467 + 2;
                        if (v468 < v11)
                        {
                          v469 = v441 + (*v466 << 6);
                          v470 = v441 + (v466[1] << 6);
                          v471 = *v469;
                          v472 = *(v469 + 8);
                          v473 = *v470;
                          v474 = *(v470 + 8);
                          if (v474 >= v472)
                          {
                            v475 = v472;
                          }

                          else
                          {
                            v475 = v474;
                          }

                          if (v475)
                          {
                            v476 = 8 * v475;
                            v477 = v473;
                            v478 = v471;
                            v479 = &v471[v475];
                            while (*v478 == *v477)
                            {
                              ++v478;
                              ++v477;
                              v476 -= 8;
                              if (!v476)
                              {
                                v478 = v479;
                                break;
                              }
                            }
                          }

                          else
                          {
                            v477 = v473;
                            v478 = v471;
                          }

                          if (v477 != &v473[v474] && (v478 == &v471[v472] || *v478 < *v477))
                          {
                            ++v466;
                            v439 = v468;
                          }
                        }

                        v480 = *v466;
                        v481 = v441 + (v480 << 6);
                        v482 = *v481;
                        v483 = *(v481 + 8);
                        v484 = *(v456 + 8);
                        v485 = v484 >= v483 ? v483 : *(v456 + 8);
                        if (v485)
                        {
                          v486 = 8 * v485;
                          v487 = v459;
                          v488 = v482;
                          v489 = &v482[v485];
                          while (*v488 == *v487)
                          {
                            ++v488;
                            ++v487;
                            v486 -= 8;
                            if (!v486)
                            {
                              v488 = v489;
                              break;
                            }
                          }
                        }

                        else
                        {
                          v487 = v459;
                          v488 = v482;
                        }

                        if (v487 != &v459[v484] && (v488 == &v482[v483] || *v488 < *v487))
                        {
                          break;
                        }

                        *v440 = v480;
                        v440 = v466;
                        if (v435 < v439)
                        {
                          goto LABEL_610;
                        }
                      }
                    }

                    v466 = v440;
LABEL_610:
                    *v466 = v454;
                  }
                }

                v437 = v438 - 1;
              }

              while (v438);
              v490 = *a3;
              do
              {
                v491 = 0;
                v492 = *v9;
                v493 = *a3;
                v494 = v9;
                do
                {
                  v495 = v494;
                  v496 = &v494[v491];
                  v494 = v496 + 1;
                  v497 = 2 * v491;
                  result = (2 * v491) | 1;
                  v491 = result;
                  v498 = v497 + 2;
                  if (v498 < v11)
                  {
                    v500 = v496[2];
                    v499 = v496 + 2;
                    v501 = *v493 + (*(v499 - 1) << 6);
                    v502 = *v493 + (v500 << 6);
                    result = *v501;
                    v503 = *(v501 + 8);
                    v504 = *v502;
                    v505 = *(v502 + 8);
                    if (v505 >= v503)
                    {
                      v506 = v503;
                    }

                    else
                    {
                      v506 = v505;
                    }

                    if (v506)
                    {
                      v507 = 8 * v506;
                      v508 = v504;
                      v509 = result;
                      v510 = (result + 8 * v506);
                      while (*v509 == *v508)
                      {
                        ++v509;
                        ++v508;
                        v507 -= 8;
                        if (!v507)
                        {
                          v509 = v510;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v508 = v504;
                      v509 = result;
                    }

                    if (v508 != &v504[v505])
                    {
                      result += 8 * v503;
                      if (v509 == result || (result = *v509, *v509 < *v508))
                      {
                        v494 = v499;
                        v491 = v498;
                      }
                    }
                  }

                  *v495 = *v494;
                }

                while (v491 <= ((v11 - 2) >> 1));
                if (v494 == --a2)
                {
                  *v494 = v492;
                }

                else
                {
                  *v494 = *a2;
                  *a2 = v492;
                  v511 = (v494 - v9 + 4) >> 2;
                  v512 = v511 - 2;
                  if (v511 >= 2)
                  {
                    v513 = v512 >> 1;
                    v514 = &v9[v512 >> 1];
                    result = *v514;
                    v515 = *v494;
                    v516 = *v490;
                    v517 = *v490 + (result << 6);
                    v518 = *v490 + (v515 << 6);
                    v519 = *v517;
                    v520 = *(v517 + 8);
                    v521 = *v518;
                    v522 = *(v518 + 8);
                    if (v522 >= v520)
                    {
                      v523 = v520;
                    }

                    else
                    {
                      v523 = *(v518 + 8);
                    }

                    if (v523)
                    {
                      v524 = 8 * v523;
                      v525 = *v518;
                      v526 = v519;
                      v527 = &v519[v523];
                      while (*v526 == *v525)
                      {
                        ++v526;
                        ++v525;
                        v524 -= 8;
                        if (!v524)
                        {
                          v526 = v527;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v525 = *v518;
                      v526 = v519;
                    }

                    if (v525 != &v521[v522] && (v526 == &v519[v520] || *v526 < *v525))
                    {
                      *v494 = result;
                      if (v512 >= 2)
                      {
                        while (1)
                        {
                          v530 = v513 - 1;
                          v513 = (v513 - 1) >> 1;
                          v528 = &v9[v513];
                          result = *v528;
                          v531 = v516 + (result << 6);
                          v532 = *v531;
                          v533 = *(v531 + 8);
                          v534 = *(v518 + 8);
                          v535 = v534 >= v533 ? v533 : *(v518 + 8);
                          if (v535)
                          {
                            v536 = 8 * v535;
                            v537 = v521;
                            v538 = v532;
                            v539 = &v532[v535];
                            while (*v538 == *v537)
                            {
                              ++v538;
                              ++v537;
                              v536 -= 8;
                              if (!v536)
                              {
                                v538 = v539;
                                break;
                              }
                            }
                          }

                          else
                          {
                            v537 = v521;
                            v538 = v532;
                          }

                          if (v537 == &v521[v534] || v538 != &v532[v533] && *v538 >= *v537)
                          {
                            break;
                          }

                          *v514 = result;
                          v514 = &v9[v513];
                          if (v530 <= 1)
                          {
                            goto LABEL_646;
                          }
                        }
                      }

                      v528 = v514;
LABEL_646:
                      *v528 = v515;
                    }
                  }
                }
              }

              while (v11-- > 2);
            }

            return result;
          }

          v12 = &v10[v11 >> 1];
          v13 = v12;
          v14 = **a3;
          if (v11 >= 0x81)
          {
            v15 = *v12;
            v16 = *v10;
            v17 = v14 + (v15 << 6);
            v18 = v14 + (v16 << 6);
            v19 = *v17;
            v20 = *(v17 + 8);
            v21 = *v18;
            v22 = *(v18 + 8);
            if (v22 >= v20)
            {
              v23 = v20;
            }

            else
            {
              v23 = *(v18 + 8);
            }

            v24 = *v18;
            v25 = v19;
            if (v23)
            {
              v26 = 8 * v23;
              v24 = *v18;
              v25 = v19;
              v27 = &v19[v23];
              while (*v25 == *v24)
              {
                ++v25;
                ++v24;
                v26 -= 8;
                if (!v26)
                {
                  v25 = v27;
                  break;
                }
              }
            }

            v28 = &v19[v20];
            v29 = v24 != &v21[v22] && (v25 == v28 || *v25 < *v24);
            v45 = *(a2 - 1);
            v46 = v14 + (v45 << 6);
            v47 = *v46;
            v48 = *(v46 + 8);
            if (v20 >= v48)
            {
              v49 = v48;
            }

            else
            {
              v49 = v20;
            }

            if (v49)
            {
              v50 = 8 * v49;
              v51 = v47;
              v52 = &v47[v49];
              while (*v51 == *v19)
              {
                ++v51;
                ++v19;
                v50 -= 8;
                if (!v50)
                {
                  v51 = v52;
                  break;
                }
              }
            }

            else
            {
              v51 = v47;
            }

            if (v19 == v28)
            {
              if (v29)
              {
                goto LABEL_53;
              }

              goto LABEL_124;
            }

            if (v51 == &v47[v48])
            {
              if (v29)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v53 = *v51;
              v54 = *v19;
              if (v29)
              {
                if (v53 < v54)
                {
LABEL_86:
                  *v10 = v45;
                  goto LABEL_112;
                }

LABEL_53:
                *v10 = v15;
                *v12 = v16;
                v55 = *(a2 - 1);
                v56 = v14 + (v55 << 6);
                v57 = *v56;
                v58 = *(v56 + 8);
                v59 = *(v18 + 8);
                if (v59 >= v58)
                {
                  v60 = v58;
                }

                else
                {
                  v60 = v59;
                }

                if (v60)
                {
                  v61 = 8 * v60;
                  v62 = v21;
                  v63 = v57;
                  v64 = &v57[v60];
                  while (*v63 == *v62)
                  {
                    ++v63;
                    ++v62;
                    v61 -= 8;
                    if (!v61)
                    {
                      v63 = v64;
                      break;
                    }
                  }
                }

                else
                {
                  v62 = v21;
                  v63 = v57;
                }

                if (v62 != &v21[v59] && (v63 == &v57[v58] || *v63 < *v62))
                {
                  *v12 = v55;
LABEL_112:
                  *(a2 - 1) = v16;
                }

LABEL_124:
                v111 = v12 - 1;
                v112 = *(v12 - 1);
                v113 = v10[1];
                v114 = v14 + (v112 << 6);
                v115 = v14 + (v113 << 6);
                v116 = *v114;
                v117 = *(v114 + 8);
                v118 = *v115;
                v119 = *(v115 + 8);
                if (v119 >= v117)
                {
                  v120 = v117;
                }

                else
                {
                  v120 = *(v115 + 8);
                }

                v121 = *v115;
                v122 = v116;
                if (v120)
                {
                  v123 = 8 * v120;
                  v121 = *v115;
                  v122 = v116;
                  v124 = &v116[v120];
                  while (*v122 == *v121)
                  {
                    ++v122;
                    ++v121;
                    v123 -= 8;
                    if (!v123)
                    {
                      v122 = v124;
                      break;
                    }
                  }
                }

                v125 = &v116[v117];
                v126 = v121 != &v118[v119] && (v122 == v125 || *v122 < *v121);
                v127 = *(a2 - 2);
                v128 = v14 + (v127 << 6);
                v129 = *v128;
                v130 = *(v128 + 8);
                if (v117 >= v130)
                {
                  v131 = v130;
                }

                else
                {
                  v131 = v117;
                }

                if (v131)
                {
                  v132 = 8 * v131;
                  v133 = v129;
                  v134 = &v129[v131];
                  while (*v133 == *v116)
                  {
                    ++v133;
                    ++v116;
                    v132 -= 8;
                    if (!v132)
                    {
                      v133 = v134;
                      break;
                    }
                  }
                }

                else
                {
                  v133 = v129;
                }

                if (v116 == v125)
                {
                  if (v126)
                  {
                    goto LABEL_152;
                  }

                  goto LABEL_187;
                }

                if (v133 == &v129[v130])
                {
                  if (v126)
                  {
                    goto LABEL_161;
                  }
                }

                else
                {
                  v135 = *v133;
                  v136 = *v116;
                  if (v126)
                  {
                    if (v135 < v136)
                    {
LABEL_161:
                      v10[1] = v127;
                      goto LABEL_176;
                    }

LABEL_152:
                    v10[1] = v112;
                    *v111 = v113;
                    v137 = *(a2 - 2);
                    v138 = v14 + (v137 << 6);
                    v139 = *v138;
                    v140 = *(v138 + 8);
                    v141 = *(v115 + 8);
                    if (v141 >= v140)
                    {
                      v142 = v140;
                    }

                    else
                    {
                      v142 = v141;
                    }

                    if (v142)
                    {
                      v143 = 8 * v142;
                      v144 = v118;
                      v145 = v139;
                      v146 = &v139[v142];
                      while (*v145 == *v144)
                      {
                        ++v145;
                        ++v144;
                        v143 -= 8;
                        if (!v143)
                        {
                          v145 = v146;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v144 = v118;
                      v145 = v139;
                    }

                    if (v144 != &v118[v141] && (v145 == &v139[v140] || *v145 < *v144))
                    {
                      *v111 = v137;
LABEL_176:
                      *(a2 - 2) = v113;
                    }

LABEL_187:
                    v162 = v12[1];
                    v160 = v12 + 1;
                    v161 = v162;
                    v163 = v10[2];
                    v164 = v14 + (v162 << 6);
                    v165 = v14 + (v163 << 6);
                    v166 = *v164;
                    v167 = *(v164 + 8);
                    v168 = *v165;
                    v169 = *(v165 + 8);
                    if (v169 >= v167)
                    {
                      v170 = v167;
                    }

                    else
                    {
                      v170 = *(v165 + 8);
                    }

                    v171 = *v165;
                    v172 = v166;
                    if (v170)
                    {
                      v173 = 8 * v170;
                      v171 = *v165;
                      v172 = v166;
                      v174 = &v166[v170];
                      while (*v172 == *v171)
                      {
                        ++v172;
                        ++v171;
                        v173 -= 8;
                        if (!v173)
                        {
                          v172 = v174;
                          break;
                        }
                      }
                    }

                    v175 = &v166[v167];
                    v176 = v171 != &v168[v169] && (v172 == v175 || *v172 < *v171);
                    v177 = *(a2 - 3);
                    v178 = v14 + (v177 << 6);
                    v179 = *v178;
                    v180 = *(v178 + 8);
                    if (v167 >= v180)
                    {
                      v181 = v180;
                    }

                    else
                    {
                      v181 = v167;
                    }

                    if (v181)
                    {
                      v182 = 8 * v181;
                      v183 = v179;
                      v184 = &v179[v181];
                      while (*v183 == *v166)
                      {
                        ++v183;
                        ++v166;
                        v182 -= 8;
                        if (!v182)
                        {
                          v183 = v184;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v183 = v179;
                    }

                    if (v166 == v175)
                    {
                      if (v176)
                      {
                        goto LABEL_215;
                      }

                      goto LABEL_245;
                    }

                    if (v183 == &v179[v180])
                    {
                      if (v176)
                      {
                        goto LABEL_224;
                      }
                    }

                    else
                    {
                      v185 = *v183;
                      v186 = *v166;
                      if (v176)
                      {
                        if (v185 < v186)
                        {
LABEL_224:
                          v10[2] = v177;
                          goto LABEL_239;
                        }

LABEL_215:
                        v10[2] = v161;
                        *v160 = v163;
                        v187 = *(a2 - 3);
                        v188 = v14 + (v187 << 6);
                        v189 = *v188;
                        v190 = *(v188 + 8);
                        v191 = *(v165 + 8);
                        if (v191 >= v190)
                        {
                          v192 = v190;
                        }

                        else
                        {
                          v192 = v191;
                        }

                        if (v192)
                        {
                          v193 = 8 * v192;
                          v194 = v168;
                          v195 = v189;
                          v196 = &v189[v192];
                          while (*v195 == *v194)
                          {
                            ++v195;
                            ++v194;
                            v193 -= 8;
                            if (!v193)
                            {
                              v195 = v196;
                              break;
                            }
                          }
                        }

                        else
                        {
                          v194 = v168;
                          v195 = v189;
                        }

                        if (v194 != &v168[v191] && (v195 == &v189[v190] || *v195 < *v194))
                        {
                          *v160 = v187;
LABEL_239:
                          *(a2 - 3) = v163;
                        }

LABEL_245:
                        v210 = *v13;
                        v211 = *v111;
                        v212 = v14 + (v210 << 6);
                        v213 = v14 + (v211 << 6);
                        v214 = *v212;
                        v215 = *(v212 + 8);
                        v216 = *v213;
                        v217 = *(v213 + 8);
                        if (v217 >= v215)
                        {
                          v218 = v215;
                        }

                        else
                        {
                          v218 = *(v213 + 8);
                        }

                        v219 = *v213;
                        v220 = v214;
                        if (v218)
                        {
                          v221 = 8 * v218;
                          v219 = *v213;
                          v220 = v214;
                          v222 = &v214[v218];
                          while (*v220 == *v219)
                          {
                            ++v220;
                            ++v219;
                            v221 -= 8;
                            if (!v221)
                            {
                              v220 = v222;
                              break;
                            }
                          }
                        }

                        v223 = &v214[v215];
                        v224 = v219 != &v216[v217] && (v220 == v223 || *v220 < *v219);
                        v225 = *v160;
                        v226 = v14 + (v225 << 6);
                        v227 = *v226;
                        v228 = *(v226 + 8);
                        if (v215 >= v228)
                        {
                          v229 = *(v226 + 8);
                        }

                        else
                        {
                          v229 = v215;
                        }

                        if (v229)
                        {
                          v230 = 8 * v229;
                          v231 = *v226;
                          v232 = &v227[v229];
                          while (*v231 == *v214)
                          {
                            ++v231;
                            ++v214;
                            v230 -= 8;
                            if (!v230)
                            {
                              v231 = v232;
                              break;
                            }
                          }
                        }

                        else
                        {
                          v231 = *v226;
                        }

                        if (v214 != v223)
                        {
                          if (v231 == &v227[v228])
                          {
                            if (v224)
                            {
LABEL_304:
                              *v111 = v225;
                              *v160 = v211;
                              goto LABEL_305;
                            }
                          }

                          else
                          {
                            v233 = *v231;
                            v234 = *v214;
                            if (v224)
                            {
                              if (v233 < v234)
                              {
                                goto LABEL_304;
                              }

LABEL_273:
                              *v111 = v210;
                              *v13 = v211;
                              v235 = *(v226 + 8);
                              v236 = *(v213 + 8);
                              if (v236 >= v235)
                              {
                                v237 = *(v226 + 8);
                              }

                              else
                              {
                                v237 = *(v213 + 8);
                              }

                              if (v237)
                              {
                                v238 = 8 * v237;
                                v239 = v216;
                                v240 = v227;
                                v241 = &v227[v237];
                                while (*v240 == *v239)
                                {
                                  ++v240;
                                  ++v239;
                                  v238 -= 8;
                                  if (!v238)
                                  {
                                    v240 = v241;
                                    break;
                                  }
                                }
                              }

                              else
                              {
                                v239 = v216;
                                v240 = v227;
                              }

                              if (v239 != &v216[v236])
                              {
                                if (v240 == &v227[v235])
                                {
                                  v111 = v13;
                                  LODWORD(v210) = v225;
                                  goto LABEL_304;
                                }

                                v111 = v13;
                                LODWORD(v210) = v225;
                                if (*v240 < *v239)
                                {
                                  goto LABEL_304;
                                }
                              }

                              LODWORD(v210) = v211;
LABEL_305:
                              v249 = *v10;
                              *v10 = v210;
                              *v13 = v249;
                              goto LABEL_306;
                            }

                            if (v233 >= v234)
                            {
                              goto LABEL_305;
                            }
                          }

                          *v13 = v225;
                          *v160 = v210;
                          v242 = *(v226 + 8);
                          v243 = *(v213 + 8);
                          if (v243 >= v242)
                          {
                            v244 = *(v226 + 8);
                          }

                          else
                          {
                            v244 = *(v213 + 8);
                          }

                          if (v244)
                          {
                            v245 = 8 * v244;
                            v246 = v216;
                            v247 = v227;
                            v248 = &v227[v244];
                            while (*v247 == *v246)
                            {
                              ++v247;
                              ++v246;
                              v245 -= 8;
                              if (!v245)
                              {
                                v247 = v248;
                                break;
                              }
                            }
                          }

                          else
                          {
                            v246 = v216;
                            v247 = v227;
                          }

                          if (v246 != &v216[v243])
                          {
                            if (v247 == &v227[v242])
                            {
                              v160 = v13;
                              LODWORD(v210) = v211;
                              goto LABEL_304;
                            }

                            v160 = v13;
                            LODWORD(v210) = v211;
                            if (*v247 < *v246)
                            {
                              goto LABEL_304;
                            }
                          }

                          LODWORD(v210) = v225;
                          goto LABEL_305;
                        }

                        if (v224)
                        {
                          goto LABEL_273;
                        }

                        goto LABEL_305;
                      }

                      if (v185 >= v186)
                      {
                        goto LABEL_245;
                      }
                    }

                    *v160 = v177;
                    *(a2 - 3) = v161;
                    v197 = *v160;
                    v198 = v10[2];
                    v199 = v14 + (v197 << 6);
                    v200 = v14 + (v198 << 6);
                    v201 = *v199;
                    v202 = *(v199 + 8);
                    v203 = *v200;
                    v204 = *(v200 + 8);
                    if (v204 >= v202)
                    {
                      v205 = v202;
                    }

                    else
                    {
                      v205 = v204;
                    }

                    if (v205)
                    {
                      v206 = 8 * v205;
                      v207 = v203;
                      v208 = v201;
                      v209 = &v201[v205];
                      while (*v208 == *v207)
                      {
                        ++v208;
                        ++v207;
                        v206 -= 8;
                        if (!v206)
                        {
                          v208 = v209;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v207 = v203;
                      v208 = v201;
                    }

                    if (v207 != &v203[v204] && (v208 == &v201[v202] || *v208 < *v207))
                    {
                      v10[2] = v197;
                      *v160 = v198;
                    }

                    goto LABEL_245;
                  }

                  if (v135 >= v136)
                  {
                    goto LABEL_187;
                  }
                }

                *v111 = v127;
                *(a2 - 2) = v112;
                v147 = *v111;
                v148 = v10[1];
                v149 = v14 + (v147 << 6);
                v150 = v14 + (v148 << 6);
                v151 = *v149;
                v152 = *(v149 + 8);
                v153 = *v150;
                v154 = *(v150 + 8);
                if (v154 >= v152)
                {
                  v155 = v152;
                }

                else
                {
                  v155 = v154;
                }

                if (v155)
                {
                  v156 = 8 * v155;
                  v157 = v153;
                  v158 = v151;
                  v159 = &v151[v155];
                  while (*v158 == *v157)
                  {
                    ++v158;
                    ++v157;
                    v156 -= 8;
                    if (!v156)
                    {
                      v158 = v159;
                      break;
                    }
                  }
                }

                else
                {
                  v157 = v153;
                  v158 = v151;
                }

                if (v157 != &v153[v154] && (v158 == &v151[v152] || *v158 < *v157))
                {
                  v10[1] = v147;
                  *v111 = v148;
                }

                goto LABEL_187;
              }

              if (v53 >= v54)
              {
                goto LABEL_124;
              }
            }

            *v12 = v45;
            *(a2 - 1) = v15;
            v85 = *v12;
            v86 = *v10;
            v87 = v14 + (v85 << 6);
            v88 = v14 + (v86 << 6);
            v89 = *v87;
            v90 = *(v87 + 8);
            v91 = *v88;
            v92 = *(v88 + 8);
            if (v92 >= v90)
            {
              v93 = v90;
            }

            else
            {
              v93 = v92;
            }

            if (v93)
            {
              v94 = 8 * v93;
              v95 = v91;
              v96 = v89;
              v97 = &v89[v93];
              while (*v96 == *v95)
              {
                ++v96;
                ++v95;
                v94 -= 8;
                if (!v94)
                {
                  v96 = v97;
                  break;
                }
              }
            }

            else
            {
              v95 = v91;
              v96 = v89;
            }

            if (v95 != &v91[v92] && (v96 == &v89[v90] || *v96 < *v95))
            {
              *v10 = v85;
              *v12 = v86;
            }

            goto LABEL_124;
          }

          v30 = *v10;
          v31 = *v12;
          v32 = v14 + (v30 << 6);
          v33 = v14 + (v31 << 6);
          v34 = *v32;
          v35 = *(v32 + 8);
          v36 = *v33;
          v37 = *(v33 + 8);
          if (v37 >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = *(v33 + 8);
          }

          v39 = *v33;
          v40 = v34;
          if (v38)
          {
            v41 = 8 * v38;
            v39 = *v33;
            v40 = v34;
            v42 = &v34[v38];
            while (*v40 == *v39)
            {
              ++v40;
              ++v39;
              v41 -= 8;
              if (!v41)
              {
                v40 = v42;
                break;
              }
            }
          }

          v43 = &v34[v35];
          v44 = v39 != &v36[v37] && (v40 == v43 || *v40 < *v39);
          v65 = *(a2 - 1);
          v66 = v14 + (v65 << 6);
          v67 = *v66;
          v68 = *(v66 + 8);
          if (v35 >= v68)
          {
            v69 = v68;
          }

          else
          {
            v69 = v35;
          }

          if (v69)
          {
            v70 = 8 * v69;
            v71 = v67;
            v72 = &v67[v69];
            while (*v71 == *v34)
            {
              ++v71;
              ++v34;
              v70 -= 8;
              if (!v70)
              {
                v71 = v72;
                break;
              }
            }
          }

          else
          {
            v71 = v67;
          }

          if (v34 == v43)
          {
            if (!v44)
            {
              goto LABEL_306;
            }

            goto LABEL_77;
          }

          if (v71 == &v67[v68])
          {
            if (v44)
            {
LABEL_88:
              *v13 = v65;
LABEL_118:
              *(a2 - 1) = v31;
              goto LABEL_306;
            }

            goto LABEL_99;
          }

          v73 = *v71;
          v74 = *v34;
          if (!v44)
          {
            if (v73 >= v74)
            {
              goto LABEL_306;
            }

LABEL_99:
            *v10 = v65;
            *(a2 - 1) = v30;
            v98 = *v10;
            v99 = *v13;
            v100 = v14 + (v98 << 6);
            v101 = v14 + (v99 << 6);
            v102 = *v100;
            v103 = *(v100 + 8);
            v104 = *v101;
            v105 = *(v101 + 8);
            if (v105 >= v103)
            {
              v106 = v103;
            }

            else
            {
              v106 = v105;
            }

            if (v106)
            {
              v107 = 8 * v106;
              v108 = v104;
              v109 = v102;
              v110 = &v102[v106];
              while (*v109 == *v108)
              {
                ++v109;
                ++v108;
                v107 -= 8;
                if (!v107)
                {
                  v109 = v110;
                  break;
                }
              }
            }

            else
            {
              v108 = v104;
              v109 = v102;
            }

            if (v108 != &v104[v105] && (v109 == &v102[v103] || *v109 < *v108))
            {
              *v13 = v98;
              *v10 = v99;
            }

            goto LABEL_306;
          }

          if (v73 < v74)
          {
            goto LABEL_88;
          }

LABEL_77:
          *v13 = v30;
          *v10 = v31;
          v75 = *(a2 - 1);
          v76 = v14 + (v75 << 6);
          v77 = *v76;
          v78 = *(v76 + 8);
          v79 = *(v33 + 8);
          if (v79 >= v78)
          {
            v80 = v78;
          }

          else
          {
            v80 = v79;
          }

          if (v80)
          {
            v81 = 8 * v80;
            v82 = v36;
            v83 = v77;
            v84 = &v77[v80];
            while (*v83 == *v82)
            {
              ++v83;
              ++v82;
              v81 -= 8;
              if (!v81)
              {
                v83 = v84;
                break;
              }
            }
          }

          else
          {
            v82 = v36;
            v83 = v77;
          }

          if (v82 != &v36[v79] && (v83 == &v77[v78] || *v83 < *v82))
          {
            *v10 = v75;
            goto LABEL_118;
          }

LABEL_306:
          --a4;
          v250 = *v10;
          v251 = v14 + (v250 << 6);
          if (a5)
          {
            v252 = *v251;
            v253 = *(v251 + 8);
            break;
          }

          v254 = v14 + (*(v10 - 1) << 6);
          v255 = *v254;
          v256 = *(v254 + 8);
          v252 = *v251;
          v253 = *(v251 + 8);
          v257 = v253 >= v256 ? v256 : *(v251 + 8);
          if (v257)
          {
            v258 = 8 * v257;
            v259 = *v251;
            v260 = v255;
            v261 = &v255[v257];
            while (*v260 == *v259)
            {
              ++v260;
              ++v259;
              v258 -= 8;
              if (!v258)
              {
                v260 = v261;
                break;
              }
            }
          }

          else
          {
            v259 = *v251;
            v260 = v255;
          }

          v262 = &v252[v253];
          if (v259 != v262 && (v260 == &v255[v256] || *v260 < *v259))
          {
            break;
          }

          v321 = v14 + (*(a2 - 1) << 6);
          v322 = *v321;
          v323 = *(v321 + 8);
          if (v323 >= v253)
          {
            v324 = *(v251 + 8);
          }

          else
          {
            v324 = v323;
          }

          v325 = v322;
          v326 = *v251;
          if (v324)
          {
            v327 = 8 * v324;
            v325 = v322;
            v326 = *v251;
            v328 = &v252[v324];
            while (*v326 == *v325)
            {
              ++v326;
              ++v325;
              v327 -= 8;
              if (!v327)
              {
                v326 = v328;
                break;
              }
            }
          }

          result = &v322[v323];
          if (v325 == result || v326 != v262 && *v326 >= *v325)
          {
            for (++v10; v10 < a2; ++v10)
            {
              v366 = v14 + (*v10 << 6);
              v367 = *v366;
              v368 = *(v366 + 8);
              v369 = v368 >= v253 ? *(v251 + 8) : v368;
              if (v369)
              {
                v370 = 8 * v369;
                result = v367;
                v371 = *v251;
                v372 = &v252[v369];
                while (*v371 == *result)
                {
                  ++v371;
                  result += 8;
                  v370 -= 8;
                  if (!v370)
                  {
                    v371 = v372;
                    break;
                  }
                }
              }

              else
              {
                result = v367;
                v371 = *v251;
              }

              if (result != v367 + 8 * v368 && (v371 == v262 || *v371 < *result))
              {
                break;
              }
            }
          }

          else
          {
            do
            {
              v329 = v10[1];
              ++v10;
              v330 = v14 + (v329 << 6);
              v331 = *v330;
              v332 = *(v330 + 8);
              if (v332 >= v253)
              {
                v333 = *(v251 + 8);
              }

              else
              {
                v333 = v332;
              }

              if (v333)
              {
                v334 = 8 * v333;
                result = v331;
                v335 = *v251;
                v336 = &v252[v333];
                while (*v335 == *result)
                {
                  ++v335;
                  result += 8;
                  v334 -= 8;
                  if (!v334)
                  {
                    v335 = v336;
                    break;
                  }
                }
              }

              else
              {
                result = v331;
                v335 = *v251;
              }
            }

            while (result == v331 + 8 * v332 || v335 != v262 && *v335 >= *result);
          }

          v337 = a2;
          if (v10 < a2)
          {
            for (i = a2; ; --i)
            {
              if (v323 >= v253)
              {
                v339 = *(v251 + 8);
              }

              else
              {
                v339 = v323;
              }

              result = v322;
              v340 = *v251;
              if (v339)
              {
                v341 = 8 * v339;
                result = v322;
                v340 = *v251;
                v342 = &v252[v339];
                while (*v340 == *result)
                {
                  ++v340;
                  result += 8;
                  v341 -= 8;
                  if (!v341)
                  {
                    v340 = v342;
                    break;
                  }
                }
              }

              v337 = i - 1;
              if (result == &v322[v323] || v340 != v262 && *v340 >= *result)
              {
                break;
              }

              v343 = v14 + (*(i - 2) << 6);
              v322 = *v343;
              v323 = *(v343 + 8);
            }
          }

          if (v10 < v337)
          {
            v344 = *v10;
            v345 = *v337;
            do
            {
              *v10 = v345;
              *v337 = v344;
              v346 = *(v251 + 8);
              v347 = &v252[v346];
              do
              {
                v348 = v10[1];
                ++v10;
                v344 = v348;
                v349 = v14 + (v348 << 6);
                v350 = *v349;
                v351 = *(v349 + 8);
                if (v351 >= v346)
                {
                  v352 = *(v251 + 8);
                }

                else
                {
                  v352 = v351;
                }

                if (v352)
                {
                  v353 = 8 * v352;
                  v354 = v350;
                  v355 = v252;
                  v356 = &v252[v352];
                  while (*v355 == *v354)
                  {
                    ++v355;
                    ++v354;
                    v353 -= 8;
                    if (!v353)
                    {
                      v355 = v356;
                      break;
                    }
                  }
                }

                else
                {
                  v354 = v350;
                  v355 = v252;
                }
              }

              while (v354 == &v350[v351] || v355 != v347 && *v355 >= *v354);
              while (1)
              {
                v357 = *--v337;
                v345 = v357;
                v358 = v14 + (v357 << 6);
                v359 = *v358;
                result = *(v358 + 8);
                if (result >= v346)
                {
                  v360 = *(v251 + 8);
                }

                else
                {
                  v360 = result;
                }

                if (v360)
                {
                  v361 = 8 * v360;
                  v362 = v359;
                  v363 = v252;
                  v364 = &v252[v360];
                  while (*v363 == *v362)
                  {
                    ++v363;
                    ++v362;
                    v361 -= 8;
                    if (!v361)
                    {
                      v363 = v364;
                      break;
                    }
                  }
                }

                else
                {
                  v362 = v359;
                  v363 = v252;
                }

                if (v362 == &v359[result])
                {
                  break;
                }

                if (v363 != v347)
                {
                  result = *v362;
                  if (*v363 >= *v362)
                  {
                    break;
                  }
                }
              }
            }

            while (v10 < v337);
          }

          v365 = v10 - 1;
          if (v10 - 1 != v9)
          {
            *v9 = *v365;
          }

          a5 = 0;
          *v365 = v250;
        }

        v263 = &v252[v253];
        v264 = v10;
        do
        {
          v265 = v264;
          v267 = v264[1];
          ++v264;
          v266 = v267;
          v268 = v14 + (v267 << 6);
          v269 = *v268;
          v270 = *(v268 + 8);
          if (v253 >= v270)
          {
            v271 = v270;
          }

          else
          {
            v271 = v253;
          }

          if (v271)
          {
            v272 = 8 * v271;
            v273 = v252;
            v274 = v269;
            v275 = &v269[v271];
            while (*v274 == *v273)
            {
              ++v274;
              ++v273;
              v272 -= 8;
              if (!v272)
              {
                v274 = v275;
                break;
              }
            }
          }

          else
          {
            v273 = v252;
            v274 = v269;
          }
        }

        while (v273 != v263 && (v274 == &v269[v270] || *v274 < *v273));
        v276 = a2;
        if (v265 == v10)
        {
          v276 = a2;
          if (v264 < a2)
          {
            v276 = a2;
            do
            {
              while (1)
              {
                v286 = *--v276;
                v287 = v14 + (v286 << 6);
                v288 = *v287;
                v289 = *(v287 + 8);
                v290 = v253 >= v289 ? v289 : v253;
                if (v290)
                {
                  v291 = 8 * v290;
                  v292 = v252;
                  v293 = v288;
                  v294 = &v288[v290];
                  while (*v293 == *v292)
                  {
                    ++v293;
                    ++v292;
                    v291 -= 8;
                    if (!v291)
                    {
                      v293 = v294;
                      break;
                    }
                  }
                }

                else
                {
                  v292 = v252;
                  v293 = v288;
                }

                if (v292 != v263)
                {
                  break;
                }

                if (v264 >= v276)
                {
                  goto LABEL_367;
                }
              }

              if (v293 == &v288[v289])
              {
                break;
              }
            }

            while (*v293 >= *v292 && v264 < v276);
          }
        }

        else
        {
          do
          {
            v277 = *--v276;
            v278 = v14 + (v277 << 6);
            v279 = *v278;
            v280 = *(v278 + 8);
            if (v253 >= v280)
            {
              v281 = v280;
            }

            else
            {
              v281 = v253;
            }

            if (v281)
            {
              v282 = 8 * v281;
              v283 = v252;
              v284 = v279;
              v285 = &v279[v281];
              while (*v284 == *v283)
              {
                ++v284;
                ++v283;
                v282 -= 8;
                if (!v282)
                {
                  v284 = v285;
                  break;
                }
              }
            }

            else
            {
              v283 = v252;
              v284 = v279;
            }
          }

          while (v283 == v263 || v284 != &v279[v280] && *v284 >= *v283);
        }

LABEL_367:
        if (v264 < v276)
        {
          v296 = *v276;
          v297 = v266;
          v298 = v264;
          v299 = v276;
          do
          {
            *v298 = v296;
            *v299 = v297;
            v300 = *(v251 + 8);
            v301 = &v252[v300];
            do
            {
              v265 = v298;
              v302 = v298[1];
              ++v298;
              v297 = v302;
              v303 = v14 + (v302 << 6);
              v304 = *v303;
              v305 = *(v303 + 8);
              if (v300 >= v305)
              {
                v306 = v305;
              }

              else
              {
                v306 = *(v251 + 8);
              }

              if (v306)
              {
                v307 = 8 * v306;
                v308 = v252;
                v309 = v304;
                v310 = &v304[v306];
                while (*v309 == *v308)
                {
                  ++v309;
                  ++v308;
                  v307 -= 8;
                  if (!v307)
                  {
                    v309 = v310;
                    break;
                  }
                }
              }

              else
              {
                v308 = v252;
                v309 = v304;
              }
            }

            while (v308 != v301 && (v309 == &v304[v305] || *v309 < *v308));
            do
            {
              v311 = *--v299;
              v296 = v311;
              v312 = v14 + (v311 << 6);
              v313 = *v312;
              v314 = *(v312 + 8);
              if (v300 >= v314)
              {
                v315 = v314;
              }

              else
              {
                v315 = *(v251 + 8);
              }

              if (v315)
              {
                v316 = 8 * v315;
                v317 = v252;
                v318 = v313;
                v319 = &v313[v315];
                while (*v318 == *v317)
                {
                  ++v318;
                  ++v317;
                  v316 -= 8;
                  if (!v316)
                  {
                    v318 = v319;
                    break;
                  }
                }
              }

              else
              {
                v317 = v252;
                v318 = v313;
              }
            }

            while (v317 == v301 || v318 != &v313[v314] && *v318 >= *v317);
          }

          while (v298 < v299);
        }

        if (v265 != v10)
        {
          *v10 = *v265;
        }

        *v265 = v250;
        if (v264 >= v276)
        {
          break;
        }

LABEL_400:
        result = std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v9, v265, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v265 + 1;
      }

      v320 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v10, v265, a3);
      v10 = v265 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v265 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v320)
      {
        goto LABEL_400;
      }
    }

    a2 = v265;
    if (!v320)
    {
      continue;
    }

    return result;
  }
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = a5 + (v5 << 6);
  v8 = a5 + (v6 << 6);
  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = *v8 + 8 * v12;
  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v8 + 8);
  }

  v15 = *v8;
  v16 = v9;
  if (v14)
  {
    v17 = 8 * v14;
    v15 = *v8;
    v16 = v9;
    v18 = &v9[v14];
    while (*v16 == *v15)
    {
      ++v16;
      ++v15;
      v17 -= 8;
      if (!v17)
      {
        v16 = v18;
        break;
      }
    }
  }

  v19 = &v9[v10];
  v20 = v15 != v13 && (v16 == v19 || *v16 < *v15);
  v21 = *a3;
  v22 = a5 + (v21 << 6);
  v23 = *v22;
  v24 = *(v22 + 8);
  if (v10 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v10;
  }

  if (v25)
  {
    v26 = 8 * v25;
    v27 = v23;
    v28 = &v23[v25];
    while (*v27 == *v9)
    {
      ++v27;
      ++v9;
      v26 -= 8;
      if (!v26)
      {
        v27 = v28;
        break;
      }
    }
  }

  else
  {
    v27 = v23;
  }

  if (v9 == v19)
  {
    v31 = *a3;
    if (!v20)
    {
      goto LABEL_60;
    }

LABEL_29:
    *result = v5;
    *a2 = v6;
    v21 = *a3;
    v32 = a5 + (v21 << 6);
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *(v8 + 8);
    v36 = &v11[v35];
    if (v35 >= v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      v38 = 8 * v37;
      v39 = v33;
      v40 = &v33[v37];
      while (*v39 == *v11)
      {
        ++v39;
        ++v11;
        v38 -= 8;
        if (!v38)
        {
          v39 = v40;
          break;
        }
      }
    }

    else
    {
      v39 = v33;
    }

    if (v11 != v36 && (v39 == &v33[v34] || *v39 < *v11))
    {
      *a2 = v21;
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  if (v27 == &v23[v24])
  {
    if (v20)
    {
LABEL_38:
      *result = v21;
LABEL_53:
      *a3 = v6;
      v21 = v6;
      v31 = v6;
      goto LABEL_60;
    }
  }

  else
  {
    v29 = *v27;
    v30 = *v9;
    if (v20)
    {
      if (v29 < v30)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (v29 >= v30)
    {
LABEL_59:
      v31 = v21;
      goto LABEL_60;
    }
  }

  *a2 = v21;
  *a3 = v5;
  v41 = *a2;
  v42 = *result;
  v43 = a5 + (v41 << 6);
  v44 = a5 + (v42 << 6);
  v45 = *v43;
  v46 = *(v43 + 8);
  v47 = *v44;
  v48 = *(v44 + 8);
  v49 = *v44 + 8 * v48;
  if (v48 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v48;
  }

  if (v50)
  {
    v51 = 8 * v50;
    v52 = v45;
    v53 = &v45[v50];
    while (*v52 == *v47)
    {
      ++v52;
      ++v47;
      v51 -= 8;
      if (!v51)
      {
        v52 = v53;
        break;
      }
    }
  }

  else
  {
    v52 = v45;
  }

  if (v47 != v49)
  {
    if (v52 != &v45[v46])
    {
      v54 = *v47;
      v21 = v5;
      v31 = v5;
      if (*v52 >= v54)
      {
        goto LABEL_60;
      }
    }

    *result = v41;
    *a2 = v42;
    v21 = *a3;
    goto LABEL_59;
  }

  v21 = v5;
  v31 = v5;
LABEL_60:
  v55 = *a4;
  v56 = a5 + (v55 << 6);
  v57 = a5 + (v21 << 6);
  v58 = *v56;
  v59 = *(v56 + 8);
  v60 = *v57;
  v61 = *(v57 + 8);
  v62 = *v57 + 8 * v61;
  if (v61 >= v59)
  {
    v63 = v59;
  }

  else
  {
    v63 = v61;
  }

  if (v63)
  {
    v64 = 8 * v63;
    v65 = v58;
    v66 = &v58[v63];
    while (*v65 == *v60)
    {
      ++v65;
      ++v60;
      v64 -= 8;
      if (!v64)
      {
        v65 = v66;
        break;
      }
    }
  }

  else
  {
    v65 = v58;
  }

  if (v60 != v62 && (v65 == &v58[v59] || *v65 < *v60))
  {
    *a3 = v55;
    *a4 = v31;
    v67 = *a3;
    v68 = *a2;
    v69 = a5 + (v67 << 6);
    v70 = a5 + (v68 << 6);
    v71 = *v69;
    v72 = *(v69 + 8);
    v73 = *v70;
    v74 = *(v70 + 8);
    v75 = *v70 + 8 * v74;
    if (v74 >= v72)
    {
      v76 = v72;
    }

    else
    {
      v76 = v74;
    }

    if (v76)
    {
      v77 = 8 * v76;
      v78 = v71;
      v79 = &v71[v76];
      while (*v78 == *v73)
      {
        ++v78;
        ++v73;
        v77 -= 8;
        if (!v77)
        {
          v78 = v79;
          break;
        }
      }
    }

    else
    {
      v78 = v71;
    }

    if (v73 != v75 && (v78 == &v71[v72] || *v78 < *v73))
    {
      *a2 = v67;
      *a3 = v68;
      v80 = *a2;
      v81 = *result;
      v82 = a5 + (v80 << 6);
      v83 = a5 + (v81 << 6);
      v84 = *v82;
      v85 = *(v82 + 8);
      v86 = *v83;
      v87 = *(v83 + 8);
      v88 = *v83 + 8 * v87;
      if (v87 >= v85)
      {
        v89 = v85;
      }

      else
      {
        v89 = v87;
      }

      if (v89)
      {
        v90 = 8 * v89;
        v91 = v84;
        v92 = &v84[v89];
        while (*v91 == *v86)
        {
          ++v91;
          ++v86;
          v90 -= 8;
          if (!v90)
          {
            v91 = v92;
            break;
          }
        }
      }

      else
      {
        v91 = v84;
      }

      if (v86 != v88 && (v91 == &v84[v85] || *v91 < *v86))
      {
        *result = v80;
        *a2 = v81;
      }
    }
  }

  return result;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, uint64_t **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a2, a3, a4, **a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = v15 + (v13 << 6);
  v17 = v15 + (v14 << 6);
  v18 = *v16;
  v19 = *(v16 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  v22 = *v17 + 8 * v21;
  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  if (v23)
  {
    v24 = 8 * v23;
    v25 = v18;
    v26 = &v18[v23];
    while (1)
    {
      result = *v25;
      if (*v25 != *v20)
      {
        break;
      }

      ++v25;
      ++v20;
      v24 -= 8;
      if (!v24)
      {
        v25 = v26;
        break;
      }
    }
  }

  else
  {
    v25 = v18;
  }

  if (v20 != v22 && (v25 == &v18[v19] || *v25 < *v20))
  {
    *a4 = v13;
    *a5 = v14;
    v27 = *a4;
    v28 = *a3;
    v29 = v15 + (v27 << 6);
    v30 = v15 + (v28 << 6);
    v31 = *v29;
    v32 = *(v29 + 8);
    v33 = *v30;
    v34 = *(v30 + 8);
    v35 = *v30 + 8 * v34;
    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      v37 = 8 * v36;
      v38 = v31;
      v39 = &v31[v36];
      while (1)
      {
        result = *v38;
        if (*v38 != *v33)
        {
          break;
        }

        ++v38;
        ++v33;
        v37 -= 8;
        if (!v37)
        {
          v38 = v39;
          break;
        }
      }
    }

    else
    {
      v38 = v31;
    }

    if (v33 != v35 && (v38 == &v31[v32] || *v38 < *v33))
    {
      *a3 = v27;
      *a4 = v28;
      v40 = *a3;
      v41 = *a2;
      v42 = v15 + (v40 << 6);
      v43 = v15 + (v41 << 6);
      v44 = *v42;
      v45 = *(v42 + 8);
      v46 = *v43;
      v47 = *(v43 + 8);
      v48 = *v43 + 8 * v47;
      if (v47 >= v45)
      {
        v49 = v45;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        v50 = 8 * v49;
        v51 = v44;
        v52 = &v44[v49];
        while (1)
        {
          result = *v51;
          if (*v51 != *v46)
          {
            break;
          }

          ++v51;
          ++v46;
          v50 -= 8;
          if (!v50)
          {
            v51 = v52;
            break;
          }
        }
      }

      else
      {
        v51 = v44;
      }

      if (v46 != v48 && (v51 == &v44[v45] || *v51 < *v46))
      {
        *a2 = v40;
        *a3 = v41;
        v53 = *a2;
        v54 = *a1;
        v55 = v15 + (v53 << 6);
        v56 = v15 + (v54 << 6);
        v57 = *v55;
        v58 = *(v55 + 8);
        v59 = *v56;
        v60 = *(v56 + 8);
        v61 = *v56 + 8 * v60;
        if (v60 >= v58)
        {
          v62 = v58;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          v63 = 8 * v62;
          v64 = v57;
          v65 = &v57[v62];
          while (1)
          {
            result = *v59;
            if (*v64 != *v59)
            {
              break;
            }

            ++v64;
            ++v59;
            v63 -= 8;
            if (!v63)
            {
              v64 = v65;
              break;
            }
          }
        }

        else
        {
          v64 = v57;
        }

        if (v59 != v61 && (v64 == &v57[v58] || *v64 < *v59))
        {
          *a1 = v53;
          *a2 = v54;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, **a3);
      }

      else
      {
        if (v3 != 5)
        {
          goto LABEL_27;
        }

        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      }

      return 1;
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = **a3;
    v21 = v20 + (v19 << 6);
    v22 = v20 + (v18 << 6);
    v23 = *v21;
    v24 = *(v21 + 8);
    v25 = *v22;
    v26 = *(v22 + 8);
    v27 = *v22 + 8 * v26;
    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = *(v22 + 8);
    }

    v29 = *v22;
    v30 = v23;
    if (v28)
    {
      v31 = 8 * v28;
      v29 = *v22;
      v30 = v23;
      v32 = &v23[v28];
      while (*v30 == *v29)
      {
        ++v30;
        ++v29;
        v31 -= 8;
        if (!v31)
        {
          v30 = v32;
          break;
        }
      }
    }

    v33 = &v23[v24];
    v34 = v29 != v27 && (v30 == v33 || *v30 < *v29);
    v53 = *(a2 - 1);
    v54 = v20 + (v53 << 6);
    v55 = *v54;
    v56 = *(v54 + 8);
    if (v24 >= v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v24;
    }

    if (v57)
    {
      v58 = 8 * v57;
      v59 = v55;
      v60 = &v55[v57];
      while (*v59 == *v23)
      {
        ++v59;
        ++v23;
        v58 -= 8;
        if (!v58)
        {
          v59 = v60;
          break;
        }
      }
    }

    else
    {
      v59 = v55;
    }

    if (v23 != v33)
    {
      if (v59 == &v55[v56])
      {
        if (v34)
        {
LABEL_71:
          *a1 = v53;
LABEL_121:
          *(a2 - 1) = v18;
          return 1;
        }
      }

      else
      {
        v61 = *v59;
        v62 = *v23;
        if (v34)
        {
          if (v61 < v62)
          {
            goto LABEL_71;
          }

LABEL_62:
          *a1 = v19;
          a1[1] = v18;
          v63 = *(a2 - 1);
          v64 = v20 + (v63 << 6);
          v65 = *v64;
          v66 = *(v64 + 8);
          v67 = *(v22 + 8);
          v68 = &v25[v67];
          if (v67 >= v66)
          {
            v69 = v66;
          }

          else
          {
            v69 = v67;
          }

          if (v69)
          {
            v70 = 8 * v69;
            v71 = v65;
            v72 = &v65[v69];
            while (*v71 == *v25)
            {
              ++v71;
              ++v25;
              v70 -= 8;
              if (!v70)
              {
                v71 = v72;
                break;
              }
            }
          }

          else
          {
            v71 = v65;
          }

          if (v25 == v68 || v71 != &v65[v66] && *v71 >= *v25)
          {
            return 1;
          }

          a1[1] = v63;
          goto LABEL_121;
        }

        if (v61 >= v62)
        {
          return 1;
        }
      }

      a1[1] = v53;
      *(a2 - 1) = v19;
      v93 = *a1;
      v92 = a1[1];
      v94 = v20 + (v92 << 6);
      v95 = v20 + (v93 << 6);
      v96 = *v94;
      v97 = *(v94 + 8);
      v98 = *v95;
      v99 = *(v95 + 8);
      v100 = *v95 + 8 * v99;
      if (v99 >= v97)
      {
        v101 = v97;
      }

      else
      {
        v101 = v99;
      }

      if (v101)
      {
        v102 = 8 * v101;
        v103 = v96;
        v104 = &v96[v101];
        while (*v103 == *v98)
        {
          ++v103;
          ++v98;
          v102 -= 8;
          if (!v102)
          {
            v103 = v104;
            break;
          }
        }
      }

      else
      {
        v103 = v96;
      }

      if (v98 != v100 && (v103 == &v96[v97] || *v103 < *v98))
      {
        *a1 = v92;
        a1[1] = v93;
      }

      return 1;
    }

    if (!v34)
    {
      return 1;
    }

    goto LABEL_62;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    v6 = **a3;
    v7 = v6 + (v4 << 6);
    v8 = v6 + (v5 << 6);
    v9 = *v7;
    v10 = *(v7 + 8);
    v11 = *v8;
    v12 = *(v8 + 8);
    v13 = *v8 + 8 * v12;
    if (v12 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 8 * v14;
      v16 = v9;
      v17 = &v9[v14];
      while (*v16 == *v11)
      {
        ++v16;
        ++v11;
        v15 -= 8;
        if (!v15)
        {
          v16 = v17;
          break;
        }
      }
    }

    else
    {
      v16 = v9;
    }

    if (v11 != v13 && (v16 == &v9[v10] || *v16 < *v11))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_27:
  v35 = a1 + 2;
  v36 = *a1;
  v37 = a1[1];
  v38 = **a3;
  v39 = v38 + (v37 << 6);
  v40 = v38 + (v36 << 6);
  v41 = *v39;
  v42 = *(v39 + 8);
  v43 = *v40;
  v44 = *(v40 + 8);
  v45 = *v40 + 8 * v44;
  if (v44 >= v42)
  {
    v46 = v42;
  }

  else
  {
    v46 = *(v40 + 8);
  }

  v47 = *v40;
  v48 = v41;
  if (v46)
  {
    v49 = 8 * v46;
    v47 = *v40;
    v48 = v41;
    v50 = &v41[v46];
    while (*v48 == *v47)
    {
      ++v48;
      ++v47;
      v49 -= 8;
      if (!v49)
      {
        v48 = v50;
        break;
      }
    }
  }

  v51 = &v41[v42];
  v52 = v47 != v45 && (v48 == v51 || *v48 < *v47);
  v73 = *v35;
  v74 = v38 + (v73 << 6);
  v75 = *v74;
  v76 = *(v74 + 8);
  if (v42 >= v76)
  {
    v77 = *(v74 + 8);
  }

  else
  {
    v77 = v42;
  }

  if (v77)
  {
    v78 = 8 * v77;
    v79 = *v74;
    v80 = &v75[v77];
    while (*v79 == *v41)
    {
      ++v79;
      ++v41;
      v78 -= 8;
      if (!v78)
      {
        v79 = v80;
        break;
      }
    }
  }

  else
  {
    v79 = *v74;
  }

  if (v41 == v51)
  {
    if (!v52)
    {
      goto LABEL_140;
    }

    goto LABEL_88;
  }

  if (v79 == &v75[v76])
  {
    v83 = a1;
    v84 = a1 + 2;
    if (v52)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v81 = *v79;
    v82 = *v41;
    if (v52)
    {
      v83 = a1;
      v84 = a1 + 2;
      if (v81 < v82)
      {
        goto LABEL_139;
      }

LABEL_88:
      *a1 = v37;
      a1[1] = v36;
      v85 = *(v74 + 8);
      v86 = *(v40 + 8);
      v87 = &v43[v86];
      if (v86 >= v85)
      {
        v88 = *(v74 + 8);
      }

      else
      {
        v88 = v86;
      }

      if (v88)
      {
        v89 = 8 * v88;
        v90 = v75;
        v91 = &v75[v88];
        while (*v90 == *v43)
        {
          ++v90;
          ++v43;
          v89 -= 8;
          if (!v89)
          {
            v90 = v91;
            break;
          }
        }
      }

      else
      {
        v90 = v75;
      }

      if (v43 != v87)
      {
        if (v90 == &v75[v85])
        {
          v83 = a1 + 1;
          v84 = a1 + 2;
          goto LABEL_139;
        }

        v112 = *v90;
        v113 = *v43;
        v83 = a1 + 1;
        v84 = a1 + 2;
LABEL_135:
        if (v112 >= v113)
        {
          goto LABEL_140;
        }

LABEL_139:
        *v83 = v73;
        *v84 = v36;
        goto LABEL_140;
      }

      goto LABEL_140;
    }

    if (v81 >= v82)
    {
      goto LABEL_140;
    }
  }

  a1[1] = v73;
  *v35 = v37;
  v105 = *(v74 + 8);
  v106 = *(v40 + 8);
  v107 = &v43[v106];
  if (v106 >= v105)
  {
    v108 = *(v74 + 8);
  }

  else
  {
    v108 = v106;
  }

  if (v108)
  {
    v109 = 8 * v108;
    v110 = v75;
    v111 = &v75[v108];
    while (*v110 == *v43)
    {
      ++v110;
      ++v43;
      v109 -= 8;
      if (!v109)
      {
        v110 = v111;
        break;
      }
    }
  }

  else
  {
    v110 = v75;
  }

  if (v43 != v107)
  {
    if (v110 == &v75[v105])
    {
      v83 = a1;
      v84 = a1 + 1;
      goto LABEL_139;
    }

    v112 = *v110;
    v113 = *v43;
    v83 = a1;
    v84 = a1 + 1;
    goto LABEL_135;
  }

LABEL_140:
  v114 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v115 = 0;
  while (1)
  {
    v116 = *v114;
    v117 = *v35;
    v118 = v38 + (v116 << 6);
    v119 = v38 + (v117 << 6);
    v120 = *v118;
    v121 = *(v118 + 8);
    v122 = *v119;
    v123 = *(v119 + 8);
    v124 = v123 >= v121 ? *(v118 + 8) : v123;
    if (v124)
    {
      v125 = 8 * v124;
      v126 = v122;
      v127 = *v118;
      v128 = &v120[v124];
      while (*v127 == *v126)
      {
        ++v127;
        ++v126;
        v125 -= 8;
        if (!v125)
        {
          v127 = v128;
          break;
        }
      }
    }

    else
    {
      v126 = v122;
      v127 = *v118;
    }

    if (v126 != &v122[v123] && (v127 == &v120[v121] || *v127 < *v126))
    {
      *v114 = v117;
      v129 = v35;
      while (1)
      {
        v131 = *--v129;
        v130 = v131;
        v132 = v38 + (v131 << 6);
        v133 = *(v118 + 8);
        v134 = *v132;
        v135 = *(v132 + 8);
        v136 = v135 >= v133 ? *(v118 + 8) : v135;
        if (v136)
        {
          v137 = 8 * v136;
          v138 = v134;
          v139 = v120;
          v140 = &v120[v136];
          while (*v139 == *v138)
          {
            ++v139;
            ++v138;
            v137 -= 8;
            if (!v137)
            {
              v139 = v140;
              break;
            }
          }
        }

        else
        {
          v138 = v134;
          v139 = v120;
        }

        if (v138 == &v134[v135] || v139 != &v120[v133] && *v139 >= *v138)
        {
          break;
        }

        *v35 = v130;
        v35 = v129;
        if (v129 == a1)
        {
          v35 = a1;
          break;
        }
      }

      *v35 = v116;
      if (++v115 == 8)
      {
        return v114 + 1 == a2;
      }
    }

    v35 = v114++;
    if (v114 == a2)
    {
      return 1;
    }
  }
}

char **llvm::SmallVector<llvm::SmallVector<long long,6u>,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[64 * v3 - 64];
    v5 = -64 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 8;
      v5 += 64;
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

const char *llvm::detail::getTypeNameImpl<CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>]";
  v6 = 131;
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

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::~CanonicalizeSingleResultAffineMinMaxOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  if (*(v6 + 8) != 1)
  {
    return 0;
  }

  v14[3] = v3;
  v14[4] = v4;
  v14[0] = v6;
  if ((v5 & 0x800000) != 0)
  {
    v9 = *(a2 + 68);
    v10 = *(a2 + 72);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13[0] = v10;
  v13[1] = v9;
  v11 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), v14, v13);
  (*(*a3 + 8))(a3, a2, v11);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>]";
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

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::~DeduplicateAffineMinMaxExpressions(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v21 = v23;
  v22 = 0x400000000;
  v4 = *(v3 + 8);
  if (v4)
  {
    v7 = (v3 + 24);
    v8 = v3 + 24 + 8 * v4;
    do
    {
      v9 = *v7;
      if (v22)
      {
        v10 = 8 * v22;
        v11 = v21;
        while (*v11 != v9)
        {
          ++v11;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v11 = v21;
      }

      if (v11 == (v21 + 8 * v22))
      {
LABEL_10:
        llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v21, v9);
      }

      ++v7;
    }

    while (v7 != v8);
    v12 = v21;
    if (v22 == *(v3 + 8))
    {
      v13 = 0;
    }

    else
    {
      Impl = mlir::AffineMap::getImpl(*v3, *(v3 + 4), v21, v22, a3[1]);
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v14 = *(a2 + 68);
        v15 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
      }

      else
      {
        v14 = 0;
        v15 = 2;
      }

      v20[0] = v15;
      v20[1] = v14;
      v16 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Impl, v20);
      (*(*a3 + 8))(a3, a2, v16);
      v13 = 1;
      v12 = v21;
    }

    if (v12 != v23)
    {
      free(v12);
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

char *mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMaxOp>(*(**a2 + 32));
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
  mlir::affine::AffineMaxOp::build(a1, v13, *a3, *a4, a4[1]);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>]";
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

void MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::~MergeAffineMinMaxOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v82[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    if (v7 >= *v6)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v7;
    }

    *&v73 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v73 + 1) = v9;
    v10 = *(a2 + 68);
    v11 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    v74 = v11;
    v75 = v10;
    v12 = v6[1];
    if (v10 <= v12)
    {
      v12 = v10;
    }

    else
    {
      v11 = mlir::ValueRange::offset_base(&v74, v10 - v12);
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v73 = xmmword_25D0A0640;
    v8 = 2;
    v11 = 2;
  }

  v72[0] = v11;
  v72[1] = v12;
  v69 = v71;
  v70 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v69, v8, 0, v8, v9);
  v66 = v68;
  v67 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v66, v11, 0, v11, v12);
  v63 = v65;
  v64 = 0x400000000;
  v60 = v62;
  v61 = 0x400000000;
  v13 = v6[2];
  if (!v13)
  {
    v51 = 0;
    goto LABEL_59;
  }

  v54 = a3;
  v55 = a2;
  v14 = 8 * v13;
  v15 = 6;
  do
  {
    v16 = *&v6[v15];
    v17 = *(v16 + 8);
    if (v16)
    {
      v18 = v17 == 7;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v20 = *(v16 + 16);
      v21 = v72;
    }

    else
    {
      if (v16)
      {
        v19 = v17 == 6;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = *(v16 + 16);
      v21 = &v73;
    }

    v22 = mlir::ValueRange::dereference_iterator(v21, v20);
    if ((~*(v22 + 8) & 7) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16);
      v26 = v25 + 120;
      if (v25 == -120)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = v23 + 16 * v24 + 16;
    }

    if (*(*(v26 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
    {
LABEL_30:
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v63, v16);
      goto LABEL_31;
    }

    llvm::SmallVectorTemplateBase<mlir::affine::AffineMaxOp,true>::push_back(&v60, v26);
LABEL_31:
    v15 += 2;
    v14 -= 8;
  }

  while (v14);
  v27 = v60;
  if (v61)
  {
    v28 = *v6;
    v29 = v6[1];
    v56 = v60 + 8 * v61;
    do
    {
      v30 = *v27;
      v31 = *(*v27 + 44);
      v32 = *(*(*v27 + 16 * ((v31 >> 23) & 1) + 64) + 8);
      v34 = *v32;
      v33 = v32[1];
      if ((v31 & 0x800000) != 0)
      {
        v35 = *(v30 + 68);
        v36 = *(v30 + 72) & 0xFFFFFFFFFFFFFFF9;
        v37 = v36 | 2;
        if (v35 >= v34)
        {
          v38 = v34;
        }

        else
        {
          v38 = v35;
        }

        v74 = (v36 | 2);
        v75 = v35;
        if (v35 <= v33)
        {
          v39 = v36 | 2;
        }

        else
        {
          v39 = mlir::ValueRange::offset_base(&v74, v35 - v33);
          v35 = v33;
        }
      }

      else
      {
        v38 = 0;
        v35 = 0;
        v37 = 2;
        v39 = 2;
      }

      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v69, v37, 0, v37, v38);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v66, v39, 0, v39, v35);
      v40 = v32[2];
      if (v40)
      {
        v41 = (v32 + 6);
        v42 = 8 * v40;
        do
        {
          v43 = *v41++;
          v74 = v43;
          v57 = mlir::AffineExpr::shiftDims(&v74, v34, v28, 0);
          v44 = mlir::AffineExpr::shiftSymbols(&v57, v33, v29, 0);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v63, v44);
          v42 -= 8;
        }

        while (v42);
      }

      v28 += v34;
      v29 += v33;
      v27 += 8;
    }

    while (v27 != v56);
    Impl = mlir::AffineMap::getImpl(v28, v29, v63, v64, v54[1]);
    llvm::to_vector<8u,llvm::detail::concat_range<mlir::Value,llvm::SmallVector<mlir::Value,8u> &,llvm::SmallVector<mlir::Value,8u> &>>(&v57, v69, v70, v66, v67);
    v46 = *(v55 + 24);
    v47 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMaxOp>(*(**v46 + 32));
    v74 = v46;
    v75 = v47;
    v76 = v78;
    v77 = 0x400000000;
    v78[4] = v79;
    v78[5] = 0x400000000;
    v79[4] = v80;
    v79[5] = 0x400000000;
    v80[8] = 4;
    v80[9] = v81;
    v80[10] = 0x100000000;
    v81[1] = v82;
    v81[2] = 0x100000000;
    v82[2] = 0;
    v82[1] = 0;
    v82[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v82[4] = 0;
    v82[6] = 0;
    mlir::affine::AffineMaxOp::build(v54 + 1, &v74, Impl, v57 & 0xFFFFFFFFFFFFFFF9, v58);
    v48 = mlir::Operation::create(&v74);
    mlir::OpBuilder::insert((v54 + 1), v48);
    v49 = *(*(v48 + 6) + 16);
    mlir::OperationState::~OperationState(&v74);
    if (v49 == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    (*(*v54 + 8))(v54, v55, v50);
    if (v57 != &v59)
    {
      free(v57);
    }

    v51 = 1;
    v27 = v60;
  }

  else
  {
    v51 = 0;
  }

  if (v27 != v62)
  {
    free(v27);
  }

LABEL_59:
  if (v63 != v65)
  {
    free(v63);
  }

  if (v66 != v68)
  {
    free(v66);
  }

  if (v69 != v71)
  {
    free(v69);
  }

  v52 = *MEMORY[0x277D85DE8];
  return v51;
}

void llvm::SmallVectorTemplateBase<mlir::affine::AffineMaxOp,true>::push_back(uint64_t a1, uint64_t a2)
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

const char *llvm::detail::getTypeNameImpl<MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>]";
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v34[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v22 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v7 = 0;
    v8 = 2;
  }

  v23 = v25;
  v24 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v23, v8, 0, v8, v7);
  composeAffineMapAndOperands(&v22, &v23);
  mlir::affine::canonicalizeMapAndOperands(&v22, &v23);
  simplifyMapWithOperands(&v22, v23, v24);
  v9 = v22;
  if (v22 != v6)
  {
LABEL_4:
    v10 = v23;
    v11 = v24;
    v12 = *(a2 + 24);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMaxOp>(*(**v12 + 32));
    v26 = v12;
    v27 = v13;
    v28 = v30;
    v29 = 0x400000000;
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
    mlir::affine::AffineMaxOp::build(a3 + 1, &v26, v9, v10 & 0xFFFFFFFFFFFFFFF9, v11);
    v14 = mlir::Operation::create(&v26);
    mlir::OpBuilder::insert((a3 + 1), v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(&v26);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    (*(*a3 + 8))(a3, a2, v16);
    v17 = 1;
    goto LABEL_13;
  }

  v18 = v23;
  v26 = v8;
  v27 = 0;
  if (v7)
  {
    v19 = 0;
    while (v18[v19] == mlir::ValueRange::dereference_iterator(&v26, v19))
    {
      v27 = ++v19;
      if (v7 == v19)
      {
        goto LABEL_12;
      }
    }

    v9 = v22;
    goto LABEL_4;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineMaxOp>]";
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

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  if (canonicalizeMapExprAndTermOrder(&v10))
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 68);
      v6 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v5 = 0;
      v6 = 2;
    }

    v11[0] = v6;
    v11[1] = v5;
    v7 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v10, v11);
    (*(*a3 + 8))(a3, a2, v7);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>]";
  v6 = 131;
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56[8] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(a2 + 44);
  v7 = *(*(a2 + 64 + 16 * ((v6 >> 23) & 1) + 24) + 8);
  v42 = v7;
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(a2 + 72);
    v9 = *(a2 + 68) - 1;
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v47 = v49;
  v48 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v47, v8 + 32, 0, v8 + 32, v9);
  composeAffineMapAndOperands(&v42, &v47);
  mlir::affine::canonicalizeMapAndOperands(&v42, &v47);
  simplifyMapWithOperands(&v42, v47, v48);
  v10 = v42;
  v11 = v47;
  if (v42 == v7)
  {
    if (!v9)
    {
LABEL_10:
      v18 = 0;
      goto LABEL_31;
    }

    v16 = 0;
    v17 = (v8 + 56);
    while (*v17 == *(v47 + v16))
    {
      ++v16;
      v17 += 4;
      if (v9 == v16)
      {
        goto LABEL_10;
      }
    }
  }

  v41 = v48;
  v12 = *(mlir::affine::AffinePrefetchOp::getODSOperands(a2, 0) + 24);
  v13 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v14 = *(v13 + 24);
  if (v14 > 0x40)
  {
    v15 = llvm::APInt::countLeadingZerosSlowCase((v13 + 16)) == v14;
  }

  else
  {
    v15 = *(v13 + 16) == 0;
  }

  v19 = v15;
  LocalityHint = mlir::affine::AffinePrefetchOp::getLocalityHint(a2);
  v21 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  v22 = *(v21 + 24);
  if (v22 > 0x40)
  {
    v23 = llvm::APInt::countLeadingZerosSlowCase((v21 + 16)) == v22;
  }

  else
  {
    v23 = *(v21 + 16) == 0;
  }

  v24 = v23;
  v25 = *(a2 + 24);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id, *(**v25 + 32));
  if ((v27 & 1) == 0)
  {
    v46 = 1283;
    v45[2] = "affine.prefetch";
    v45[3] = 15;
    v44 = 259;
    llvm::operator+(v45, &v43, v50);
    llvm::report_fatal_error(v50, 1);
  }

  v50[0] = v25;
  v50[1] = v26;
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
  v56[1] = 0;
  v56[2] = 0;
  v56[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v56[4] = 0;
  v56[6] = 0;
  v45[0] = v12;
  I32IntegerAttr = mlir::Builder::getI32IntegerAttr((a3 + 8), LocalityHint);
  v29 = **(a3 + 8);
  v30 = 600;
  if (v19)
  {
    v31 = 592;
  }

  else
  {
    v31 = 600;
  }

  v32 = *(v29 + v31);
  if (v24)
  {
    v30 = 592;
  }

  v33 = *(v29 + v30);
  v18 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v51, v45, 0, v45, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v51, v11 & 0xFFFFFFFFFFFFFFF9, 0, v11 & 0xFFFFFFFFFFFFFFF9, v41);
  v34 = mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(v50);
  v35 = mlir::AffineMapAttr::get(v10);
  v34[2] = I32IntegerAttr;
  v34[3] = v35;
  *v34 = v33;
  v34[1] = v32;
  v36 = mlir::Operation::create(v50);
  mlir::OpBuilder::insert((a3 + 8), v36);
  v37 = *(*(v36 + 6) + 16);
  mlir::OperationState::~OperationState(v50);
  if (v37 == &mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  (*(*a3 + 8))(a3, a2, v38);
  v11 = v47;
LABEL_31:
  if (v11 != v49)
  {
    free(v11);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v18;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>]";
  v6 = 133;
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[36] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 0xC);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v6, 0, 0, 0, 0);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t *a1)
{
  v22[9] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v21[0] = v22;
  v21[1] = 0x400000000;
  v22[8] = 4;
  (*(**a1 + 40))(*a1);
  v2 = *a1;
  NoneType = mlir::Builder::getNoneType(a1[1]);
  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(v2, &v14, NoneType, "reduce", 6, v21))
  {
    v4 = mlir::arith::symbolizeAtomicRMWKind(*(v14 + 16), *(v14 + 24));
    if (v5)
    {
      v6 = a1[2];
      I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1[1], v4);
      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(v6, I64IntegerAttr);
      v8 = 1;
    }

    else
    {
      (*(**a1 + 24))(v17);
      if (v17[0])
      {
        v15 = 0;
        v16 = v14;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v15, 1);
        v10 = v18 + 24 * v19;
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++v19;
      }

      v8 = (v20 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v27 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68) - 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  v32 = v34;
  v33 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v32, v7 + 32, 0, v7 + 32, v8);
  composeAffineMapAndOperands(&v27, &v32);
  mlir::affine::canonicalizeMapAndOperands(&v27, &v32);
  simplifyMapWithOperands(&v27, v32, v33);
  v9 = v27;
  v10 = v32;
  if (v27 == v6)
  {
    if (!v8)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_17;
    }

    v23 = 0;
    v24 = (v7 + 56);
    while (*v24 == *(v32 + v23))
    {
      ++v23;
      v24 += 4;
      if (v8 == v23)
      {
        goto LABEL_16;
      }
    }
  }

  v11 = v33;
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 8);
  v14 = *(*(a2 + 72) + 24);
  v15 = *(a2 + 24);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id, *(**v15 + 32));
  if ((v17 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "affine.vector_load";
    v30[3] = 18;
    v29 = 259;
    llvm::operator+(v30, &v28, v35);
    llvm::report_fatal_error(v35, 1);
  }

  v35[0] = v15;
  v35[1] = v16;
  v36[0] = &v37;
  v36[1] = 0x400000000;
  v38[0] = v39;
  v38[1] = 0x400000000;
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
  v30[0] = v14;
  v18 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v36, v30, 0, v30, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v36, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v19 = mlir::AffineMapAttr::get(v9);
  mlir::OperationState::addAttribute(v35, "map", 3, v19);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v38, v13 & 0xFFFFFFFFFFFFFFF8);
  v20 = mlir::Operation::create(v35);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(v35);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 8))(a3, a2, v22);
  v10 = v32;
LABEL_17:
  if (v10 != v34)
  {
    free(v10);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>]";
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v27 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68) - 2;
  }

  else
  {
    v7 = 0;
    v8 = -2;
  }

  v32 = v34;
  v33 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v32, v7 + 64, 0, v7 + 64, v8);
  composeAffineMapAndOperands(&v27, &v32);
  mlir::affine::canonicalizeMapAndOperands(&v27, &v32);
  simplifyMapWithOperands(&v27, v32, v33);
  v9 = v27;
  v10 = v32;
  if (v27 == v6)
  {
    if (!v8)
    {
LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    v23 = 0;
    v24 = (v7 + 88);
    while (*v24 == *(v32 + v23))
    {
      ++v23;
      v24 += 4;
      if (v8 == v23)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = v33;
  v12 = *(a2 + 72);
  v13 = *(v12 + 24);
  v14 = *(v12 + 56);
  v15 = *(a2 + 24);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id, *(**v15 + 32));
  if ((v17 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "affine.vector_store";
    v30[3] = 19;
    v29 = 259;
    llvm::operator+(v30, v28, v35);
    llvm::report_fatal_error(v35, 1);
  }

  v35[0] = v15;
  v35[1] = v16;
  v36[0] = v37;
  v36[1] = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[4] = v39;
  v38[5] = 0x400000000;
  v39[8] = 4;
  v39[9] = v40;
  v39[10] = 0x100000000;
  v40[1] = v41;
  v40[2] = 0x100000000;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v41[4] = 0;
  v41[6] = 0;
  v30[0] = v13;
  v28[0] = v14;
  v18 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v36, v30, 0, v30, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v36, v28, 0, v28, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v36, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v19 = mlir::AffineMapAttr::get(v9);
  mlir::OperationState::addAttribute(v35, "map", 3, v19);
  v20 = mlir::Operation::create(v35);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(v35);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 8))(a3, a2, v22);
  v10 = v32;
LABEL_14:
  if (v10 != v34)
  {
    free(v10);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>]";
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

void llvm::SmallVectorImpl<mlir::OpFoldResult>::insert_one_impl<mlir::OpFoldResult>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 + 8 * v6 == a2)
  {
    v11 = *a3;

    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a1, v11);
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 8);
      v5 = *a1;
      v6 = *(a1 + 8);
    }

    v8 = (v5 + v7);
    *(v5 + 8 * v6) = *(v5 + 8 * v6 - 8);
    v9 = *(a1 + 8);
    v10 = *a1 + 8 * v9 - 8;
    if (v10 != v8)
    {
      memmove(v8 + 1, v8, v10 - v8);
      LODWORD(v9) = *(a1 + 8);
    }

    *(a1 + 8) = v9 + 1;
    *v8 = *a3;
  }
}

void anonymous namespace::CancelDelinearizeOfLinearizeDisjointExactTail::~CancelDelinearizeOfLinearizeDisjointExactTail(_anonymous_namespace_::CancelDelinearizeOfLinearizeDisjointExactTail *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CancelDelinearizeOfLinearizeDisjointExactTail::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0) + 24);
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
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_12:
      v64 = "index doesn't come from linearize";
      v68[0] = 259;
      v60 = &v64;
      v11 = *(a3 + 16);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_16;
      }

      v12 = *(a2 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_15:
      (*(*v11 + 88))(v11, v12, v13, &v60);
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  v9 = *(*(v8 + 48) + 16);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
  {
    goto LABEL_12;
  }

  v17 = *(v8 + 44);
  v18 = v8 + 64 + 16 * ((v17 >> 23) & 1);
  if ((*(v18 + 8) & 1) == 0)
  {
    v64 = "not disjoint";
    v68[0] = 259;
    v60 = &v64;
    v11 = *(a3 + 16);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_16;
    }

    v12 = *(v8 + 24);
    v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineLinearizeIndexOp &>(mlir::affine::AffineLinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
    goto LABEL_15;
  }

  v19 = *(v18 + 12);
  if ((v17 & 0x800000) != 0)
  {
    v20 = *(v8 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v20 = 2;
  }

  v63[0] = v20;
  v63[1] = v19;
  mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v60, v8);
  mlir::affine::AffineDelinearizeIndexOp::getMixedBasis(&v57, a2);
  v21 = v60;
  if (v58 >= v61)
  {
    v22 = v61;
  }

  else
  {
    v22 = v58;
  }

  v23 = (v60 + 8 * v61 - 8);
  v24 = (v57 + 8 * v58 - 8);
  v25 = -1;
  while (v25 - v22 != -1)
  {
    v27 = *v23--;
    v26 = v27;
    v28 = *v24--;
    ++v25;
    if (v26 != v28)
    {
      if (v25)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  v25 = v22;
  if (v22)
  {
LABEL_28:
    if (v61 == v25 && v25 == v58 && v19 == *(a2 + 36))
    {
      v29 = *(v10 + 44);
      if ((v29 & 0x800000) != 0)
      {
        v30 = *(v10 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
      }

      else
      {
        v30 = 2;
      }

      (**a3)(a3, a2, v30, *(v10 + 16 * ((v29 >> 23) & 1) + 76));
    }

    else
    {
      v32 = *(v10 + 24);
      v55 = v19;
      v54 = v19 - v25;
      v33 = *(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 72);
      v34 = v61 - v25;
      v35 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(*(**v32 + 32));
      v64 = v32;
      v65 = v35;
      v66 = v68;
      v67 = 0x400000000;
      v69 = v71;
      v70 = 0x400000000;
      v72 = v74;
      v73 = 0x400000000;
      v75 = 4;
      v76 = &v78;
      v77 = 0x100000000;
      v79 = &v81;
      v80 = 0x100000000;
      v82 = 0;
      v83 = 0;
      v84 = &mlir::detail::TypeIDResolver<void,void>::id;
      v85 = 0;
      v86 = 0;
      v53 = v20;
      mlir::affine::AffineLinearizeIndexOp::build((a3 + 8), &v64, v20, v54, v21, v34, v33);
      v36 = mlir::Operation::create(&v64);
      mlir::OpBuilder::insert((a3 + 8), v36);
      v37 = *(*(v36 + 6) + 16);
      mlir::OperationState::~OperationState(&v64);
      if (v37 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      v39 = (v38 - 16);
      v40 = *(a2 + 24);
      v41 = v57;
      v42 = v58 - v25;
      v43 = *(a2 + 36) == *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 32) >> 3;
      v44 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**v40 + 32));
      v64 = v40;
      v65 = v44;
      v66 = v68;
      v67 = 0x400000000;
      v69 = v71;
      v70 = 0x400000000;
      v72 = v74;
      v73 = 0x400000000;
      v75 = 4;
      v76 = &v78;
      v77 = 0x100000000;
      v79 = &v81;
      v80 = 0x100000000;
      v82 = 0;
      v83 = 0;
      v84 = &mlir::detail::TypeIDResolver<void,void>::id;
      v85 = 0;
      v86 = 0;
      mlir::affine::AffineDelinearizeIndexOp::build((a3 + 8), &v64, v39, v41, v42, v43);
      v45 = mlir::Operation::create(&v64);
      mlir::OpBuilder::insert((a3 + 8), v45);
      v46 = *(*(v45 + 6) + 16);
      mlir::OperationState::~OperationState(&v64);
      if (v46 == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0;
      }

      v48 = *(v47 + 9);
      v49 = (v47 - 16);
      if (v48)
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      v64 = &v66;
      v65 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v64, v50, 0, v50, v48);
      if (v55 <= v25)
      {
        v52 = v63[0];
        v25 = v55;
        v51 = v53;
      }

      else
      {
        v51 = mlir::ValueRange::offset_base(v63, v55 - v25);
        v52 = mlir::ValueRange::offset_base(v63, v55 - v25);
      }

      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v64, v51, 0, v52, v25);
      (**a3)(a3, a2, v64 & 0xFFFFFFFFFFFFFFF9, v65);
      if (v64 != &v66)
      {
        free(v64);
      }
    }

    v14 = 1;
    goto LABEL_57;
  }

LABEL_38:
  v64 = "final basis element doesn't match linearize";
  v68[0] = 259;
  v56 = &v64;
  v31 = *(a3 + 16);
  if (v31 && v31[2] == 1)
  {
    (*(*v31 + 88))(v31, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v56);
  }

  v14 = 0;
LABEL_57:
  if (v57 != &v59)
  {
    free(v57);
  }

  if (v60 != &v62)
  {
    free(v60);
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

_DWORD *mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(_DWORD *result, uint64_t a2)
{
  v2 = "need at least two elements to form the basis product";
  v3 = 259;
  v4 = &v2;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 88))(result, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v4);
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "affine.linearize_index";
    v5[3] = 22;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "affine.delinearize_index";
    v5[3] = 24;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CancelDelinearizeOfLinearizeDisjointExactTail>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CancelDelinearizeOfLinearizeDisjointExactTail]";
  v6 = 130;
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

void anonymous namespace::DropUnitExtentBasis::~DropUnitExtentBasis(_anonymous_namespace_::DropUnitExtentBasis *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DropUnitExtentBasis::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[6] = *MEMORY[0x277D85DE8];
  v27 = a2;
  v5 = *(a2 + 36);
  v37 = v39;
  v38 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::assign(&v37, v5, 0);
  v6 = *(a2 + 24);
  v34 = v36;
  v35 = 0x600000000;
  mlir::affine::AffineDelinearizeIndexOp::getPaddedBasis(&v28, &v27);
  v31 = v33;
  v32 = 0x600000000;
  if (v29)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v31, &v28);
  }

  if (v28 != &v30)
  {
    free(v28);
  }

  v7 = v31;
  if (v32)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 8 * v32;
    while (1)
    {
      v12 = *&v7[v8];
      if (v12 >= 8)
      {
        ConstantIntValue = mlir::getConstantIntValue(*&v7[v8]);
        if ((v14 & 1) != 0 && ConstantIntValue == 1)
        {
          if ((v9 & 1) == 0)
          {
            LODWORD(v28) = 0;
            v10 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>((a3 + 8), v6, &v28) - 16;
          }

          *(v37 + v8) = v10;
          v9 = 1;
          goto LABEL_15;
        }

        v12 = *&v7[v8];
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v34, v12);
LABEL_15:
      v8 += 8;
      if (v11 == v8)
      {
        v7 = v31;
        break;
      }
    }
  }

  if (v7 != v33)
  {
    free(v7);
  }

  if (v35 == *(a2 + 36))
  {
    v31 = "no unit basis elements";
    v33[8] = 259;
    v28 = &v31;
    v15 = *(a3 + 16);
    if (v15 && v15[2] == 1)
    {
      (*(*v15 + 88))(v15, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v28);
    }

    v16 = 0;
  }

  else
  {
    if (v35)
    {
      v31 = *(mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0) + 24);
      v17 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::OpFoldResult,6u> &>((a3 + 8), v6, &v31, &v34);
      v18 = v38;
      if (v38)
      {
        v19 = 0;
        v20 = v37;
        v21 = 8 * v38;
        do
        {
          if (!*v20)
          {
            v22 = v19 - 5;
            v23 = v19++ >= 6;
            v24 = &v17[-24 * v22 - 96];
            if (!v23)
            {
              v24 = &v17[-16 * v19];
            }

            *v20 = v24;
          }

          ++v20;
          v21 -= 8;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v38;
    }

    (**a3)(a3, a2, v37 & 0xFFFFFFFFFFFFFFF9, v18);
    v16 = 1;
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

char *mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**a2 + 32));
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
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v13, *a3, *a4, *(a4 + 8), 1);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
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

void llvm::SmallVectorImpl<mlir::Value>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
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
    llvm::SmallVectorTemplateBase<mlir::Value,true>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<mlir::Value,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
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

char *mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, int *a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIndexOp>(a1, *(**a2 + 32));
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
  mlir::arith::ConstantIndexOp::build(a1, v11, *a3);
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (v7 && *(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    if (*(*(*(v7 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DropUnitExtentBasis>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DropUnitExtentBasis]";
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

void anonymous namespace::SplitDelinearizeSpanningLastLinearizeArg::~SplitDelinearizeSpanningLastLinearizeArg(_anonymous_namespace_::SplitDelinearizeSpanningLastLinearizeArg *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SplitDelinearizeSpanningLastLinearizeArg::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0) + 24);
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
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  v9 = *(*(v8 + 48) + 16);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id ? v8 : 0;
  if (v9 != &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
  {
LABEL_12:
    v11 = "index doesn't come from linearize";
LABEL_13:
    ODSOperands = v11;
    v57 = 259;
    v47 = &ODSOperands;
    v12 = *(a3 + 16);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_17;
    }

    v13 = *(a2 + 24);
    v14 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
    goto LABEL_16;
  }

  v17 = *(v8 + 44);
  v18 = v8 + 64 + 16 * ((v17 >> 23) & 1);
  if ((*(v18 + 8) & 1) == 0)
  {
    v20 = "linearize isn't disjoint";
LABEL_23:
    ODSOperands = v20;
    v57 = 259;
    v47 = &ODSOperands;
    v12 = *(a3 + 16);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_17;
    }

    v13 = *(v8 + 24);
    v14 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineLinearizeIndexOp &>(mlir::affine::AffineLinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_16:
    (*(*v12 + 88))(v12, v13, v14, &v47);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v19 = *(*(*v18 + 24) + (*(*v18 + 32) & 0xFFFFFFFFFFFFFFF8) - 8);
  if (v19 == 0x8000000000000000)
  {
    v20 = "linearize ends with dynamic basis value";
    goto LABEL_23;
  }

  v21 = 0;
  v22 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v23 = *(v22 + 24);
  v24 = *(v22 + 32) >> 3;
  v25 = v24;
  v26 = 1;
  while (v25 * 8)
  {
    v27 = v23[v25 - 1];
    if (v27 == 0x8000000000000000)
    {
      v11 = "dynamic basis element while scanning for split";
      goto LABEL_13;
    }

    v26 *= v27;
    if (v26 > v19)
    {
      v11 = "overshot last argument size";
      goto LABEL_13;
    }

    ++v21;
    --v25;
    if (v26 == v19)
    {
      goto LABEL_34;
    }
  }

  v21 = *(v22 + 32) >> 3;
  if (v26 < v19)
  {
    v11 = "product of known basis elements doesn't exceed last linearize argument";
    goto LABEL_13;
  }

LABEL_34:
  if (v21 <= 1)
  {
    mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(*(a3 + 16), a2);
    goto LABEL_17;
  }

  v28 = *(v10 + 24);
  v29 = *(v18 + 12);
  if ((v17 & 0x800000) != 0)
  {
    v30 = *(v10 + 72);
  }

  else
  {
    v30 = 0;
  }

  ODSOperands = v30;
  v55 = v29 - 1;
  v31 = *(v10 + 44);
  v32 = (v10 + 64 + 16 * ((v31 >> 23) & 1));
  v33 = v32[3];
  v34 = v32[4];
  if ((v31 & 0x800000) != 0)
  {
    v35 = *(v10 + 72);
  }

  else
  {
    v35 = 0;
  }

  v47 = (v35 + 32 * v33);
  v48 = v34 + v33 - v33;
  v36 = (*(*v32 + 32) >> 3) - 1;
  v52[0] = *(*v32 + 24);
  v52[1] = v36;
  v51 = *(v32 + 8);
  v53 = mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,BOOL>((a3 + 8), v28, &ODSOperands, &v47, v52, &v51) - 16;
  v37 = *(a2 + 24);
  ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 1u);
  v55 = v38;
  v47 = v23;
  v48 = v24 - v21;
  if (v24 <= v21)
  {
    v39 = v23;
  }

  else
  {
    v39 = &v23[v24 - v21];
  }

  if (v24 < v21)
  {
    v21 = v24;
  }

  LOBYTE(v52[0]) = *(a2 + 36) == *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) + 32) >> 3;
  v40 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::Value &,mlir::OperandRange,llvm::ArrayRef<long long>,BOOL>((a3 + 8), v37, &v53, &ODSOperands, &v47, v52);
  v41 = *(a2 + 24);
  v47 = *(*(v10 + 72) + 32 * *(v10 + 92) - 8);
  ODSOperands = v39;
  v55 = v21;
  LOBYTE(v52[0]) = 1;
  v42 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::Value,llvm::ArrayRef<long long>,BOOL>((a3 + 8), v41, &v47, &ODSOperands, v52);
  v43 = *(v40 + 9);
  v44 = (v40 - 16);
  if (!v43)
  {
    v44 = 0;
  }

  v45 = *(v42 + 9);
  v46 = v42 - 16;
  if (!v45)
  {
    v46 = 0;
  }

  v47 = v44;
  v48 = v43;
  v49 = v46;
  v50 = v45;
  llvm::to_vector<llvm::detail::concat_range<mlir::Value,mlir::ResultRange,mlir::ResultRange>>(&ODSOperands, &v47);
  (**a3)(a3, a2, ODSOperands & 0xFFFFFFFFFFFFFFF9, v55);
  if (ODSOperands != &v56)
  {
    free(ODSOperands);
  }

  result = 1;
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,BOOL>(uint64_t **a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, char *a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
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
  mlir::affine::AffineLinearizeIndexOp::build(a1, v17, *a3 & 0xFFFFFFFFFFFFFFF9 | 2, a3[1], *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1], *a5, a5[1], *a6);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::Value &,mlir::OperandRange,llvm::ArrayRef<long long>,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
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
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v17, *a3, *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1], *a5, a5[1], *a6);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::Value,llvm::ArrayRef<long long>,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**a2 + 32));
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
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v15, *a3, 0, 0, *a4, a4[1], *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
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

void llvm::to_vector<llvm::detail::concat_range<mlir::Value,mlir::ResultRange,mlir::ResultRange>>(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v32 = (a1 + 16);
  v33 = *a2;
  v7 = v33;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  v34 = 0;
  v35 = v9;
  v36 = 0;
  v37 = v7;
  v38 = v6;
  v39 = v9;
  v40 = v8;
  while (v4 != v6 || v3 != v8 || v38 != v6 || v40 != v8)
  {
    v11 = &unk_286E9E8E0;
    v12 = 16;
    do
    {
      v13 = v12;
      v14 = *(v11 - 1);
      v15 = (&v33 + (*v11 >> 1));
      if (*v11)
      {
        v14 = *(*v15 + v14);
      }

      if (v14(v15))
      {
        break;
      }

      v11 += 2;
      v12 = v13 - 16;
    }

    while (v13);
    ++v5;
    v4 = v34;
    v3 = v36;
  }

  v16 = *(a1 + 8);
  if (v5 + v16 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v32, v5 + v16, 8);
    v16 = *(a1 + 8);
  }

  v17 = 0;
  v18 = 0;
  v33 = v7;
  v34 = 0;
  v35 = v9;
  v36 = 0;
  v37 = v7;
  v38 = v6;
  v39 = v9;
  v40 = v8;
  for (i = (*a1 + 8 * v16); v18 != v6 || v17 != v8 || v38 != v6 || v40 != v8; ++i)
  {
    v21 = &unk_286E9E900;
    v22 = 32;
    do
    {
      v23 = *(v21 - 1);
      v24 = (&v33 + (*v21 >> 1));
      if (*v21)
      {
        v23 = *(*v24 + v23);
      }

      v25 = v23(v24);
      if (v26)
      {
        break;
      }

      v21 += 2;
      v22 -= 16;
    }

    while (v22);
    *i = v25;
    v27 = &unk_286E9E8E0;
    v28 = 16;
    do
    {
      v29 = v28;
      v30 = *(v27 - 1);
      v31 = (&v33 + (*v27 >> 1));
      if (*v27)
      {
        v30 = *(*v31 + v30);
      }

      if (v30(v31))
      {
        break;
      }

      v27 += 2;
      v28 = v29 - 16;
    }

    while (v29);
    v18 = v34;
    v17 = v36;
  }

  *(a1 + 8) += v5;
}

BOOL llvm::concat_iterator<mlir::Value,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::incrementHelper<0ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 1;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::Value,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (v1 != v2)
  {
    *(a1 + 24) = v1 + 1;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::Value,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::getHelper<0ul>(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  result = *a1;
  if (v1)
  {
    v3 = *(result + 8) & 7;
    if (result)
    {
      v4 = v3 == 6;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_10;
    }

    v5 = (5 - v3);
    if (v1 > v5)
    {
      result -= 16 * v5;
      v1 -= v5;
LABEL_10:
      result -= 24 * v1;
      return result;
    }

    result -= 16 * v1;
  }

  return result;
}

uint64_t llvm::concat_iterator<mlir::Value,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::getHelper<1ul>(void *a1)
{
  v1 = a1[3];
  if (v1 == a1[7])
  {
    return 0;
  }

  result = a1[2];
  if (v1)
  {
    v3 = *(result + 8) & 7;
    if (result)
    {
      v4 = v3 == 6;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_10;
    }

    v5 = (5 - v3);
    if (v1 > v5)
    {
      result -= 16 * v5;
      v1 -= v5;
LABEL_10:
      result -= 24 * v1;
      return result;
    }

    result -= 16 * v1;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SplitDelinearizeSpanningLastLinearizeArg>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SplitDelinearizeSpanningLastLinearizeArg]";
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

void anonymous namespace::CancelLinearizeOfDelinearizePortion::~CancelLinearizeOfDelinearizePortion(_anonymous_namespace_::CancelLinearizeOfDelinearizePortion *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CancelLinearizeOfDelinearizePortion::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v159[8] = *MEMORY[0x277D85DE8];
  v147 = v149;
  v148 = 0x200000000;
  mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v144, a2);
  v5 = *(v4 + 44);
  v6 = (v5 >> 23) & 1;
  v109 = v4 + 64;
  if (*(v4 + 64 + 16 * v6 + 12) != *(*(v4 + 64 + 16 * v6) + 32) >> 3)
  {
    v150 = 0;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::insert_one_impl<mlir::OpFoldResult>(&v144, v144, &v150);
    v5 = *(v4 + 44);
    v6 = (v5 >> 23) & 1;
  }

  v7 = *(v109 + 16 * v6 + 12);
  v107 = a3;
  if ((v5 & 0x800000) != 0)
  {
    v8 = *(v4 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v8 = 2;
  }

  v106 = v145;
  v114 = v144;
  v108 = v8;
  v142 = v8;
  v143 = v7;
  v123[0] = &v126;
  v123[1] = 2;
  v124 = 0;
  v125 = 1;
  v116 = v4;
  if (v7)
  {
    v9 = 0;
    v110 = -v7;
    v112 = v7;
    while (1)
    {
      v10 = mlir::ValueRange::dereference_iterator(&v142, v9);
      v11 = (~*(v10 + 8) & 7) != 0 ? v10 : 0;
      if (v11)
      {
        break;
      }

      ++v9;
LABEL_51:
      if (v9 >= v7)
      {
        goto LABEL_57;
      }
    }

    v12 = *(v11 + 8);
    if ((v12 & 7) == 6)
    {
      v13 = *(v11 + 16);
      v14 = v11 + 24 * v13;
      v15 = v14 + 120;
      if (*(*(v14 + 168) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
      {
        v16 = (v14 + 120);
      }

      else
      {
        v16 = 0;
      }

      v136 = v16;
      if (v16)
      {
        v17 = v13 + 6;
LABEL_24:
        mlir::affine::AffineDelinearizeIndexOp::getPaddedBasis(&v150, &v136);
        v23 = *(v150 + v17);
        v24 = (v17 == 0) & *(v109 + 16 * ((*(v4 + 44) >> 23) & 1) + 8);
        if (v23 >= 8)
        {
          v24 = 0;
        }

        v25 = v23 == *(v144 + v9) || (v9 | v17) == 0;
        if (v25 || (v24 & 1) != 0)
        {
          v22 = v9 + 1;
          if (v9 + 1 < v7)
          {
            v119 = v17;
            v26 = 0;
            v117 = *(v15 + 36);
            v115 = v15 - 96;
            v27 = 1;
            v28 = v9 + 1;
            while (1)
            {
              v29 = v15;
              v30 = v119 + v26;
              v31 = v119 + v26 + 1;
              if (v31 >= v117)
              {
                break;
              }

              v32 = mlir::ValueRange::dereference_iterator(&v142, v22 + v26);
              v33 = v115 - 24 * (v30 - 4);
              v34 = v30 + 2;
              v15 = v29;
              v35 = v29 - 16 * v34;
              if (v31 <= 5)
              {
                v33 = v35;
              }

              if (v33 != v32 || *(v144 + v22 + v26) != *(v150 + v31))
              {
                v4 = v116;
                v7 = v112;
                goto LABEL_43;
              }

              v28 = ++v27 + v9;
              ++v26;
              if (!(v110 + v22 + v26))
              {
                v27 = v7 - v9;
                v7 = v112;
                v28 = v112;
                v4 = v116;
                goto LABEL_43;
              }
            }

            v27 = v26 + 1;
            v28 = v22 + v26;
            v4 = v116;
            v7 = v112;
            v15 = v29;
LABEL_43:
            if (v27 >= 2)
            {
              llvm::SmallPtrSetImpl<mlir::Operation *>::insert(v123, v15, &v139);
              if (v141)
              {
                v139 = v15;
                v140 = __PAIR64__(v119, v9);
                v141 = v27;
                v36 = v147;
                if (v148 >= HIDWORD(v148))
                {
                  if (v147 <= &v139 && v147 + 24 * v148 > &v139)
                  {
                    v40 = &v139 - v147;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v149, v148 + 1, 24);
                    v36 = v147;
                    v37 = (v147 + v40);
                    v7 = v112;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v147, v149, v148 + 1, 24);
                    v37 = &v139;
                    v36 = v147;
                  }
                }

                else
                {
                  v37 = &v139;
                }

                v38 = &v36[24 * v148];
                v39 = *v37;
                *(v38 + 2) = v37[2];
                *v38 = v39;
                LODWORD(v148) = v148 + 1;
                v22 = v28;
              }
            }
          }
        }

        else
        {
          v22 = v9 + 1;
        }

        if (v150 != v152)
        {
          free(v150);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v18 = v11 + 16 * (v12 & 7);
      v15 = v18 + 16;
      v19 = *(*(v18 + 64) + 16);
      v20 = v19 == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id;
      if (v19 == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
      {
        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      v136 = v21;
      if (v20)
      {
        v17 = v12 & 7;
        goto LABEL_24;
      }
    }

    v22 = v9 + 1;
LABEL_50:
    v9 = v22;
    goto LABEL_51;
  }

LABEL_57:
  v41 = v148;
  if (!v148)
  {
    v150 = "no run of delinearize outputs to deal with";
    v153 = 259;
    v139 = &v150;
    v45 = *(v107 + 16);
    if (v45 && v45[2] == 1)
    {
      (*(*v45 + 88))(v45, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineLinearizeIndexOp &>(mlir::affine::AffineLinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v139);
    }

    v46 = 0;
    goto LABEL_146;
  }

  v139 = &v141;
  v140 = 0x100000000;
  v42 = v7;
  v136 = v138;
  v137 = 0x600000000;
  if (v7 <= 6)
  {
    v133 = v135;
    v134 = 0x600000000;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v138, v7, 8);
    v133 = v135;
    v134 = 0x600000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v7, 8);
    v41 = v148;
    if (!v148)
    {
      v43 = 0;
      v44 = v108;
      goto LABEL_136;
    }
  }

  v47 = v147;
  LODWORD(v43) = 0;
  v113 = v147 + 24 * v41;
  do
  {
    *v121 = *v47;
    v122 = *(v47 + 2);
    v120 = LODWORD(v121[1]);
    if (v43)
    {
      v48 = mlir::ValueRange::offset_base(&v142, v43);
    }

    else
    {
      v48 = v142;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v136, v136 + 8 * v137, v48, 0, v48, (v120 - v43));
    llvm::SmallVectorImpl<mlir::OpFoldResult>::insert<mlir::OpFoldResult const*,void>(&v133, v133 + 8 * v134, &v114[v43], &v114[v43 + (v120 - v43)]);
    v49 = v122;
    v118 = *(v107 + 24);
    v50 = v121[0];
    *(v107 + 24) = *(v121[0] + 2);
    *(v107 + 32) = v50;
    v51 = *(v116 + 24);
    v150 = v152;
    v151 = 0x600000000;
    AffineConstantExpr = mlir::getAffineConstantExpr(1, *(v107 + 8), v52);
    v130 = AffineConstantExpr;
    if (v49)
    {
      v54 = 0;
      v55 = 8 * v49;
      v56 = &v114[v120];
      while (1)
      {
        v57 = *v56;
        if (*v56 < 8)
        {
          break;
        }

        ConstantIntValue = mlir::getConstantIntValue(*v56);
        if (v60)
        {
          AffineDimOrSymbol = mlir::getAffineConstantExpr(ConstantIntValue, *(v107 + 8), v59);
        }

        else
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v150, v57 & 0xFFFFFFFFFFFFFFF8);
          AffineDimOrSymbol = getAffineDimOrSymbol(7u, v54, *(v107 + 8));
          v54 = (v54 + 1);
        }

        AffineConstantExpr = mlir::AffineExpr::operator*(&v130, AffineDimOrSymbol, v62);
        v130 = AffineConstantExpr;
        ++v56;
        v55 -= 8;
        if (!v55)
        {
          goto LABEL_77;
        }
      }
    }

    else
    {
LABEL_77:
      if (AffineConstantExpr && *(AffineConstantExpr + 8) == 5)
      {
        v57 = mlir::IntegerAttr::get(*(**(v107 + 8) + 472), *(AffineConstantExpr + 16)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v57 = (mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>((v107 + 8), v51, &v130, &v150) | 4) - 16;
      }
    }

    if (v150 != v152)
    {
      free(v150);
    }

    if (v49 == *(v50 + 9))
    {
      ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(v50, 0);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v136, *(ODSOperands + 24));
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v133, v57);
      v150 = v152;
      v151 = 0x600000000;
      v64 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::Value,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>>(&v139, &v150);
      v65 = &v139[8 * v140];
      *v65 = v65 + 16;
      *(v65 + 1) = 0x600000000;
      if (*(v64 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v65, v64);
      }

      LODWORD(v140) = v140 + 1;
      v66 = v150;
      if (v150 != v152)
      {
        goto LABEL_127;
      }

      goto LABEL_128;
    }

    v130 = v132;
    v131 = 0x600000000;
    mlir::affine::AffineDelinearizeIndexOp::getPaddedBasis(&v127, v121);
    v67 = v127;
    v68 = HIDWORD(v121[1]);
    v69 = v127 + 8 * HIDWORD(v121[1]);
    v70 = &v69[8 * v49];
    v71 = v127 + 8 * v128;
    v72 = v71 - v70;
    if (v71 != v70)
    {
      memmove(v127 + 8 * HIDWORD(v121[1]), v70, v71 - v70);
      v67 = v127;
    }

    v128 = (&v69[v72] - v67) >> 3;
    v150 = v57;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::insert_one_impl<mlir::OpFoldResult>(&v127, &v67[8 * v68], &v150);
    v73 = v121[0];
    v74 = *(v121[0] + 3);
    v150 = *(mlir::affine::AffineDelinearizeIndexOp::getODSOperands(v121[0], 0) + 24);
    v75 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::OpFoldResult,6u> &>((v107 + 8), v74, &v150, &v127);
    v76 = v75;
    v77 = HIDWORD(v121[1]);
    if (HIDWORD(v121[1]) <= 5)
    {
      v78 = HIDWORD(v121[1]) + 1;
    }

    else
    {
      v78 = (HIDWORD(v121[1]) + 1);
    }

    v79 = HIDWORD(v121[1]) > 5 && HIDWORD(v121[1]) == -1;
    v111 = v79;
    if (HIDWORD(v121[1]) <= 5)
    {
      v80 = &v75[-16 * HIDWORD(v121[1]) - 16];
    }

    else
    {
      v80 = &v75[-24 * (HIDWORD(v121[1]) - 5) - 96];
    }

    v81 = *(v73 + 3);
    v82 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**v81 + 32));
    v150 = v81;
    v151 = v82;
    v152[0] = &v153;
    v152[1] = 0x400000000;
    v154 = v156;
    v155 = 0x400000000;
    v156[4] = v157;
    v156[5] = 0x400000000;
    v157[8] = 4;
    v157[9] = v158;
    v157[10] = 0x100000000;
    v158[1] = v159;
    v158[2] = 0x100000000;
    v159[1] = 0;
    v159[2] = 0;
    v159[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v159[4] = 0;
    v159[6] = 0;
    v83 = v80;
    mlir::affine::AffineDelinearizeIndexOp::build((v107 + 8), &v150, v80, &v114[v120], v49, 1);
    v84 = mlir::Operation::create(&v150);
    mlir::OpBuilder::insert((v107 + 8), v84);
    v85 = *(*(v84 + 6) + 16);
    mlir::OperationState::~OperationState(&v150);
    if (v85 == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
    {
      v86 = v84;
    }

    else
    {
      v86 = 0;
    }

    v87 = *(v76 + 9);
    v88 = v76 - 16;
    if (v87)
    {
      v89 = (v76 - 16);
    }

    else
    {
      v89 = 0;
    }

    if (v87 >= v77)
    {
      v90 = v77;
    }

    else
    {
      v90 = v87;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v130, v130 + 8 * v131, v89, 0, v89, v90);
    v91 = *(v86 + 9);
    if (v91)
    {
      v92 = (v86 - 16);
    }

    else
    {
      v92 = 0;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v130, v130 + 8 * v131, v92, 0, v92, v91);
    v93 = *(v76 + 9);
    if (v93)
    {
      v94 = (v76 - 16);
    }

    else
    {
      v94 = 0;
    }

    if (!v111)
    {
      if (!v93)
      {
        v96 = v78;
        goto LABEL_120;
      }

      v95 = *(v94 + 8) & 7;
      v96 = v78;
      if (v95 == 6)
      {
        goto LABEL_120;
      }

      v97 = (5 - v95);
      v96 = v78 - v97;
      if (v78 > v97)
      {
        v88 -= 16 * v97;
LABEL_120:
        v94 = &v88[-24 * v96];
        goto LABEL_122;
      }

      v94 = &v88[-16 * v78];
    }

LABEL_122:
    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v130, v130 + 8 * v131, v94, 0, v94, v93 - v78);
    v98 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::Value,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>>(&v139, &v130);
    v99 = &v139[8 * v140];
    *v99 = v99 + 16;
    *(v99 + 1) = 0x600000000;
    if (*(v98 + 8))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(v99, v98);
    }

    LODWORD(v140) = v140 + 1;
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v136, v83);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v133, v57);
    if (v127 != &v129)
    {
      free(v127);
    }

    v66 = v130;
    if (v130 != v132)
    {
LABEL_127:
      free(v66);
    }

LABEL_128:
    if (v118)
    {
      *(v107 + 24) = v118;
    }

    else
    {
      *(v107 + 24) = 0;
      *(v107 + 32) = 0;
    }

    v43 = (v49 + v120);
    v47 += 24;
  }

  while (v47 != v113);
  v42 = v143;
  if (v43)
  {
    v44 = mlir::ValueRange::offset_base(&v142, (v49 + v120));
  }

  else
  {
    v43 = 0;
    v44 = v142;
  }

  v4 = v116;
LABEL_136:
  llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v136, v136 + 8 * v137, v44, 0, v44, v42 - v43);
  llvm::SmallVectorImpl<mlir::OpFoldResult>::insert<mlir::OpFoldResult const*,void>(&v133, v133 + 8 * v134, &v114[v43], &v114[v106]);
  LOBYTE(v150) = *(v109 + 16 * ((*(v4 + 44) >> 23) & 1) + 8);
  v100 = mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL>((v107 + 8), *(v4 + 24), &v136, &v133, &v150);
  (*(*v107 + 8))(v107, v4, v100);
  if (v148)
  {
    v101 = v147;
    v102 = (v139 + 1);
    v103 = 24 * v148;
    do
    {
      if (*v102)
      {
        (**v107)(v107, *v101, *(v102 - 1) & 0xFFFFFFFFFFFFFFF9);
      }

      v101 += 3;
      v102 += 64;
      v103 -= 24;
    }

    while (v103);
  }

  if (v133 != v135)
  {
    free(v133);
  }

  if (v136 != v138)
  {
    free(v136);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Value,6u>,1u>::~SmallVector(&v139);
  v46 = 1;
LABEL_146:
  if ((v125 & 1) == 0)
  {
    free(v123[0]);
  }

  if (v144 != &v146)
  {
    free(v144);
  }

  if (v147 != v149)
  {
    free(v147);
  }

  v104 = *MEMORY[0x277D85DE8];
  return v46;
}

void llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = a4;
  v10 = *a1;
  v11 = *(a1 + 8);
  if (*a1 + 8 * v11 == a2)
  {
    v22 = *MEMORY[0x277D85DE8];

    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1, a3, a4, a5, a6);
  }

  else
  {
    v12 = a2 - v10;
    v13 = a6 - a4;
    v14 = a6 - a4 + v11;
    if (v14 > *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v14, 8);
      v10 = *a1;
      v11 = *(a1 + 8);
    }

    v15 = (v10 + v12);
    v16 = 8 * v11;
    v17 = (v10 + 8 * v11);
    v18 = 8 * v11 - v12;
    v19 = v18 >> 3;
    if (v18 >> 3 >= v13)
    {
      llvm::SmallVectorImpl<mlir::Value>::append<std::move_iterator<mlir::Value*>,void>(a1, &v17[-v13], (v10 + 8 * v11));
      if (&v17[-v13] != v15)
      {
        memmove(&v15[v13], v15, &v17[-v13] - v15);
      }

      for (i = v8; ; *v15++ = mlir::ValueRange::dereference_iterator(&i, v7++))
      {
        j = v7;
        if (a6 == v7)
        {
          break;
        }
      }
    }

    else
    {
      v20 = v11 + v13;
      *(a1 + 8) = v20;
      if (v16 != v12)
      {
        memcpy((v10 + 8 * v20 - 8 * v19), v15, v18);
        do
        {
          *v15++ = mlir::ValueRange::dereference_iterator(&v23, v7);
          v24 = ++v7;
          --v19;
        }

        while (v19);
        v8 = v23;
      }

      i = v8;
      for (j = v7; a6 != v7; j = v7)
      {
        *v17++ = mlir::ValueRange::dereference_iterator(&i, v7++);
      }
    }

    v21 = *MEMORY[0x277D85DE8];
  }
}

void llvm::SmallVectorImpl<mlir::OpFoldResult>::insert<mlir::OpFoldResult const*,void>(uint64_t a1, uint64_t a2, uint64_t *__src, uint64_t *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (*a1 + 8 * v8 == a2)
  {

    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(a1, __src, a4);
  }

  else
  {
    v9 = a2 - v7;
    v10 = a4 - __src;
    v11 = a4 - __src;
    if (v8 + v11 > *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + v11, 8);
      v7 = *a1;
      v8 = *(a1 + 8);
    }

    v12 = (v7 + v9);
    v13 = 8 * v8;
    v14 = (v7 + 8 * v8);
    v15 = 8 * v8 - v9;
    v16 = v15 >> 3;
    if (v15 >> 3 >= v11)
    {
      v19 = v11 + v8;
      if (v19 > *(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v19, 8);
        LODWORD(v8) = *(a1 + 8);
      }

      if (a4 != v5)
      {
        v20 = (*a1 + 8 * v8);
        v21 = -8 * v11;
        do
        {
          *v20++ = *&v14[v21];
          v21 += 8;
        }

        while (v21);
        LODWORD(v8) = *(a1 + 8);
      }

      *(a1 + 8) = v8 + v11;
      if (&v14[-8 * v11] != v12)
      {
        memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
      }

      if (a4 != v5)
      {

        memmove(v12, v5, a4 - v5);
      }
    }

    else
    {
      v17 = v8 + (v10 >> 3);
      *(a1 + 8) = v17;
      if (v13 != v9)
      {
        memcpy((v7 + 8 * v17 - 8 * v16), (v7 + v9), v15);
        do
        {
          v18 = *v5++;
          *v12 = v18;
          v12 += 8;
          --v16;
        }

        while (v16);
      }

      if (v5 != a4)
      {

        memcpy(v14, v5, a4 - v5);
      }
    }
  }
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::Value,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + (v3 << 6) > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::grow(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::grow(a1, v3 + 1);
    }
  }

  return v2;
}

char *mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(*(**a2 + 32));
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
  mlir::affine::AffineLinearizeIndexOp::build(a1, v15, *a3 & 0xFFFFFFFFFFFFFFF9, *(a3 + 8), *a4, *(a4 + 8), *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CancelLinearizeOfDelinearizePortion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CancelLinearizeOfDelinearizePortion]";
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

void anonymous namespace::DropLinearizeLeadingZero::~DropLinearizeLeadingZero(_anonymous_namespace_::DropLinearizeLeadingZero *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DropLinearizeLeadingZero::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v35[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  v26 = v3;
  v30[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = (v7 + 120);
    if (v7 == -120)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = (v3 + 16 * v6 + 16);
  }

  if (!mlir::detail::constant_int_predicate_matcher::match(v30, v8))
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 12) == 1)
  {
    v9 = 1;
    (**a3)(a3, a2, &v26, 1);
  }

  else
  {
    mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v27, a2);
    v12 = *(a2 + 44);
    v13 = a2 + 64 + 16 * ((v12 >> 23) & 1);
    v14 = *(v13 + 12);
    v15 = (v27 + 8 * (v14 == *(*v13 + 32) >> 3));
    v16 = v28 - (v14 == *(*v13 + 32) >> 3);
    if ((v12 & 0x800000) != 0)
    {
      v17 = *(a2 + 72);
    }

    else
    {
      v17 = 0;
    }

    v18 = v14 - 1;
    v19 = v17 + 32;
    v20 = *(v13 + 8);
    v21 = *(a2 + 24);
    v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(*(**v21 + 32));
    v30[0] = v21;
    v30[1] = v22;
    v30[2] = v31;
    v30[3] = 0x400000000;
    v31[4] = v32;
    v31[5] = 0x400000000;
    v32[4] = v33;
    v32[5] = 0x400000000;
    v33[8] = 4;
    v33[9] = v34;
    v33[10] = 0x100000000;
    v34[1] = v35;
    v34[2] = 0x100000000;
    v35[1] = 0;
    v35[2] = 0;
    v35[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v35[4] = 0;
    v35[6] = 0;
    mlir::affine::AffineLinearizeIndexOp::build(a3 + 1, v30, v19 & 0xFFFFFFFFFFFFFFF9 | 2, v18, v15, v16, v20);
    v23 = mlir::Operation::create(v30);
    mlir::OpBuilder::insert((a3 + 1), v23);
    v24 = *(*(v23 + 6) + 16);
    mlir::OperationState::~OperationState(v30);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    ((*a3)[1])(a3, a2, v25);
    if (v27 != &v29)
    {
      free(v27);
    }

    v9 = 1;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DropLinearizeLeadingZero>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DropLinearizeLeadingZero]";
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

void anonymous namespace::DropLinearizeUnitComponentsIfDisjointOrZero::~DropLinearizeUnitComponentsIfDisjointOrZero(_anonymous_namespace_::DropLinearizeUnitComponentsIfDisjointOrZero *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DropLinearizeUnitComponentsIfDisjointOrZero::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(a2 + 44);
  v7 = (v6 >> 23) & 1;
  v8 = *(a2 + 64 + 16 * v7 + 12);
  if ((v6 & 0x800000) != 0)
  {
    v9 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v9 = 2;
  }

  v34[0] = v9;
  v34[1] = v8;
  v31 = v33;
  v32 = 0x600000000;
  if (v8 <= 6)
  {
    v28 = v30;
    v29 = 0x600000000;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v8, 8);
    v28 = v30;
    v29 = 0x600000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v8, 8);
    v7 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v5 + 16 * v7 + 12) == *(*(v5 + 16 * v7) + 32) >> 3)
  {
    v10 = v8;
  }

  else
  {
    if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFFF8) + 24);
    }

    else
    {
      v11 = 0;
    }

    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v31, v11);
    v9 = mlir::ValueRange::offset_base(v34, 1);
    v10 = v8 - 1;
  }

  mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v26, a2);
  v35 = v9;
  v36 = 0;
  v37 = v26;
  if (v10)
  {
    v12 = -v10;
    v13 = v26 + 8;
    v14 = 1;
    do
    {
      v15 = mlir::ValueRange::dereference_iterator(&v35, v14 - 1);
      ConstantIntValue = mlir::getConstantIntValue(*(v13 - 1));
      if ((v17 & 1) == 0 || ConstantIntValue != 1 || (v19 = mlir::getConstantIntValue(v15 | 4) == 0, (*(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) & 1) == 0) && (v18 & v19 & 1) == 0)
      {
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v31, v15);
        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v28, *(v13 - 1));
      }

      v36 = v14;
      v37 = v13;
      ++v14;
      v13 += 8;
    }

    while (v12 + v14 != 1);
  }

  if (v8 == v32)
  {
    v35 = "no unit basis entries to replace";
    v38 = 259;
    v25 = &v35;
    v20 = *(a3 + 16);
    if (v20 && v20[2] == 1)
    {
      (*(*v20 + 88))(v20, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineLinearizeIndexOp &>(mlir::affine::AffineLinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v25);
    }

    v21 = 0;
  }

  else
  {
    if (v32)
    {
      LOBYTE(v35) = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v22 = mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL>((a3 + 8), *(a2 + 24), &v31, &v28, &v35);
    }

    else
    {
      LODWORD(v35) = 0;
      v22 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>((a3 + 8), *(a2 + 24), &v35);
    }

    (*(*a3 + 8))(a3, a2, v22);
    v21 = 1;
  }

  if (v26 != &v27)
  {
    free(v26);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DropLinearizeUnitComponentsIfDisjointOrZero>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DropLinearizeUnitComponentsIfDisjointOrZero]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23FC0))
  {
    qword_27FC23FB0 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>();
    *algn_27FC23FB8 = v1;
    __cxa_guard_release(&qword_27FC23FC0);
  }

  return qword_27FC23FB0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::AffineMapAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::AffineMapAttr]";
  v6 = 81;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23FE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23FE8))
  {
    qword_27FC23FD8 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>();
    unk_27FC23FE0 = v1;
    __cxa_guard_release(&qword_27FC23FE8);
  }

  return qword_27FC23FD8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::AffineDelinearizeIndexOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24010))
  {
    qword_27FC24000 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>();
    *algn_27FC24008 = v1;
    __cxa_guard_release(&qword_27FC24010);
  }

  return qword_27FC24000;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24038))
  {
    qword_27FC24028 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties>();
    unk_27FC24030 = v1;
    __cxa_guard_release(&qword_27FC24038);
  }

  return qword_27FC24028;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::IntegerSetAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::IntegerSetAttr]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u32[0] = a3[1].n128_u32[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24078))
  {
    qword_27FC24068 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>();
    unk_27FC24070 = v1;
    __cxa_guard_release(&qword_27FC24078);
  }

  return qword_27FC24068;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::AffineLinearizeIndexOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseType<mlir::IndexType>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 536))(a1, &v11))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC240A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC240A0))
  {
    qword_27FC24090 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>();
    *algn_27FC24098 = v1;
    __cxa_guard_release(&qword_27FC240A0);
  }

  return qword_27FC24090;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC240C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC240C8))
  {
    qword_27FC240B8 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>();
    unk_27FC240C0 = v1;
    __cxa_guard_release(&qword_27FC240C8);
  }

  return qword_27FC240B8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC240F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC240F0))
  {
    qword_27FC240E0 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>();
    *algn_27FC240E8 = v1;
    __cxa_guard_release(&qword_27FC240F0);
  }

  return qword_27FC240E0;
}