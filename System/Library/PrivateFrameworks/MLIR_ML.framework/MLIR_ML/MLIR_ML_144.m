BOOL mlir::memref::ReinterpretCastOp::verify(mlir::Operation **this)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v41 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v40 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  MemorySpace = mlir::BaseMemRefType::getMemorySpace(&v41);
  if (MemorySpace == mlir::MemRefType::getMemorySpace(&v40))
  {
    ElementType = mlir::BaseMemRefType::getElementType(&v41);
    if (ElementType == mlir::MemRefType::getElementType(&v40))
    {
      mlir::MemRefType::getShape(&v40);
      v44[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }

    v42 = "different element types specified for source type ";
    v43 = 259;
    mlir::OpState::emitError(this, &v42, v44);
    if (v44[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v38, v41);
      if (v46 >= v47)
      {
        if (v45 > &v38 || v45 + 24 * v46 <= &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v45 + 24 * v46;
      v25 = v38;
      *(v24 + 2) = v39;
      *v24 = v25;
      v26 = ++v46;
      if (v44[0])
      {
        LODWORD(v38) = 3;
        *(&v38 + 1) = " and result memref type ";
        v39 = 24;
        if (v26 >= v47)
        {
          if (v45 > &v38 || v45 + 24 * v26 <= &v38)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v45 + 24 * v46;
        v28 = v38;
        *(v27 + 2) = v39;
        *v27 = v28;
        ++v46;
        if (v44[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v38, v40);
          if (v46 >= v47)
          {
            if (v45 > &v38 || v45 + 24 * v46 <= &v38)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v29 = v45 + 24 * v46;
          v30 = v38;
          *(v29 + 2) = v39;
          *v29 = v30;
          ++v46;
        }
      }
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v52;
        v33 = __p;
        if (v52 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v52 = v31;
        operator delete(v33);
      }

      v19 = v49;
      if (!v49)
      {
        goto LABEL_55;
      }

      v34 = v50;
      v21 = v49;
      if (v50 == v49)
      {
LABEL_54:
        v50 = v19;
        operator delete(v21);
LABEL_55:
        if (v45 != &v48)
        {
          free(v45);
        }

        return v15;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          MEMORY[0x259C63150](v35, 0x1000C8077774924);
        }
      }

      while (v34 != v19);
LABEL_53:
      v21 = v49;
      goto LABEL_54;
    }
  }

  else
  {
    v42 = "different memory spaces specified for source type ";
    v43 = 259;
    mlir::OpState::emitError(this, &v42, v44);
    if (v44[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v38, v41);
      if (v46 >= v47)
      {
        if (v45 > &v38 || v45 + 24 * v46 <= &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v45 + 24 * v46;
      v9 = v38;
      *(v8 + 2) = v39;
      *v8 = v9;
      v10 = ++v46;
      if (v44[0])
      {
        LODWORD(v38) = 3;
        *(&v38 + 1) = " and result memref type ";
        v39 = 24;
        if (v10 >= v47)
        {
          if (v45 > &v38 || v45 + 24 * v10 <= &v38)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v45 + 24 * v46;
        v12 = v38;
        *(v11 + 2) = v39;
        *v11 = v12;
        ++v46;
        if (v44[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v38, v40);
          if (v46 >= v47)
          {
            if (v45 > &v38 || v45 + 24 * v46 <= &v38)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v45 + 24 * v46;
          v14 = v38;
          *(v13 + 2) = v39;
          *v13 = v14;
          ++v46;
        }
      }
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v52;
        v18 = __p;
        if (v52 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v52 = v16;
        operator delete(v18);
      }

      v19 = v49;
      if (!v49)
      {
        goto LABEL_55;
      }

      v20 = v50;
      v21 = v49;
      if (v50 == v49)
      {
        goto LABEL_54;
      }

      do
      {
        v23 = *--v20;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          MEMORY[0x259C63150](v22, 0x1000C8077774924);
        }
      }

      while (v20 != v19);
      goto LABEL_53;
    }
  }

  return v15;
}

uint64_t mlir::memref::ReinterpretCastOp::fold(uint64_t *a1)
{
  v24[7] = *MEMORY[0x277D85DE8];
  v23 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v23);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ReinterpretCastOp,void>::id || (DefiningOp = mlir::Value::getDefiningOp(&v23)) != 0 && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    v7 = *(*(DefiningOp + 72) + 24);
    if (v7)
    {
      v8 = *a1;
      v9 = *(*a1 + 72);
      v10 = v9[1];
      if (v10)
      {
        v11 = *v9;
        *v10 = *v9;
        if (v11)
        {
          *(v11 + 8) = v10;
        }
      }

      v9[3] = v7;
      v9[1] = v7;
      v12 = *v7;
      *v9 = *v7;
      if (v12)
      {
        *(v12 + 8) = v9;
      }

      *v7 = v9;
      v13 = *(v8 + 36);
      v14 = v8 - 16;
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      return mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) | 4;
    }
  }

  else
  {
    v3 = mlir::Value::getDefiningOp(&v23);
    if (v3)
    {
      v4 = *(*(v3 + 48) + 16);
      v5 = v4 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
      v6 = v4 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id ? v3 : 0;
      v24[0] = v6;
      if (v5)
      {
        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getMixedOffsets(v24);
      }
    }
  }

  if (*(*a1 + 36))
  {
    v17 = *a1 - 16;
  }

  else
  {
    v17 = 0;
  }

  v24[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::MemRefType::getShape(v24);
  if (v19)
  {
    v20 = 8 * v19;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    if (*(*a1 + 36))
    {
      v22 = *a1 - 16;
    }

    else
    {
      v22 = 0;
    }

    v21 = *(v23 + 8);
    if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) ^ v21) <= 7)
    {
      v24[1] = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }
  }

  return 0;
}

uint64_t mlir::memref::CollapseShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "collapse_shape", 14);
}

uint64_t mlir::memref::ExpandShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "expand_shape", 12);
}

void mlir::memref::CollapseShapeOp::getReassociationMaps(mlir::memref::CollapseShapeOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[16] = *MEMORY[0x277D85DE8];
  mlir::memref::CollapseShapeOp::getReassociationExprs(this, &v7);
  mlir::getSymbolLessAffineMaps(v7, v8, a2);
  v3 = v7;
  if (v8)
  {
    v4 = v7 + 32 * v8 - 16;
    v5 = -32 * v8;
    do
    {
      v6 = *(v4 - 2);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v3 = v7;
  }

  if (v3 != v9)
  {
    free(v3);
  }
}

void mlir::memref::CollapseShapeOp::getReassociationExprs(mlir::memref::CollapseShapeOp *this@<X0>, void *a2@<X8>)
{
  v18[8] = *MEMORY[0x277D85DE8];
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &v13);
  mlir::convertReassociationIndicesToExprs(Context, v13, v14, &v16);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v17)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(a2, &v16);
    v5 = v16;
    if (!v17)
    {
      goto LABEL_8;
    }

    v6 = &v16[4 * v17 - 2];
    v7 = -32 * v17;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
  }

  v5 = v16;
LABEL_8:
  if (v5 != v18)
  {
    free(v5);
  }

  v9 = v13;
  if (v14)
  {
    v10 = v13 + 32 * v14 - 16;
    v11 = -32 * v14;
    do
    {
      v12 = *(v10 - 2);
      if (v10 != v12)
      {
        free(v12);
      }

      v10 -= 32;
      v11 += 32;
    }

    while (v11);
    v9 = v13;
  }

  if (v9 != &v15)
  {
    free(v9);
  }
}

void mlir::memref::ExpandShapeOp::getReassociationMaps(mlir::memref::ExpandShapeOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[16] = *MEMORY[0x277D85DE8];
  mlir::memref::ExpandShapeOp::getReassociationExprs(this, &v7);
  mlir::getSymbolLessAffineMaps(v7, v8, a2);
  v3 = v7;
  if (v8)
  {
    v4 = v7 + 32 * v8 - 16;
    v5 = -32 * v8;
    do
    {
      v6 = *(v4 - 2);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v3 = v7;
  }

  if (v3 != v9)
  {
    free(v3);
  }
}

void mlir::memref::ExpandShapeOp::getReassociationExprs(mlir::memref::ExpandShapeOp *this@<X0>, void *a2@<X8>)
{
  v18[8] = *MEMORY[0x277D85DE8];
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &v13);
  mlir::convertReassociationIndicesToExprs(Context, v13, v14, &v16);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v17)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(a2, &v16);
    v5 = v16;
    if (!v17)
    {
      goto LABEL_8;
    }

    v6 = &v16[4 * v17 - 2];
    v7 = -32 * v17;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
  }

  v5 = v16;
LABEL_8:
  if (v5 != v18)
  {
    free(v5);
  }

  v9 = v13;
  if (v14)
  {
    v10 = v13 + 32 * v14 - 16;
    v11 = -32 * v14;
    do
    {
      v12 = *(v10 - 2);
      if (v10 != v12)
      {
        free(v12);
      }

      v10 -= 32;
      v11 += 32;
    }

    while (v11);
    v9 = v13;
  }

  if (v9 != &v15)
  {
    free(v9);
  }
}

unint64_t mlir::memref::ExpandShapeOp::computeExpandedType(uint64_t a1, uint64_t *a2, unint64_t a3, const void **a4, uint64_t a5)
{
  v77[6] = *MEMORY[0x277D85DE8];
  v65 = a1;
  __dst = mlir::MemRefType::getLayout(&v65);
  v69 = v9;
  if (mlir::MemRefLayoutAttrInterface::isIdentity(&__dst))
  {
    ElementType = mlir::MemRefType::getElementType(&v65);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v65);
    v12 = a2;
    v13 = a3;
    v14 = ElementType;
    v15 = 0;
    v16 = 0;
    goto LABEL_69;
  }

  v66 = 0;
  v67 = v65;
  v75 = v77;
  v76 = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(v65, &v75, &v66);
  v18 = StridesAndOffset;
  v19 = 0;
  v20 = 0;
  if ((StridesAndOffset & 1) == 0)
  {
    goto LABEL_49;
  }

  v63 = StridesAndOffset;
  v72 = v74;
  v73 = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v64 = a3;
  if (!a5 || !v76)
  {
    goto LABEL_28;
  }

  v21 = v75;
  v22 = &v75[v76];
  v23 = &a4[4 * a5];
  v24 = a3 - 1;
  do
  {
    v25 = v23 - 4;
    --v22;
    __dst = v70;
    v69 = 0x200000000;
    if (&__dst == (v23 - 4))
    {
      goto LABEL_26;
    }

    v26 = *(v23 - 6);
    if (!v26)
    {
      goto LABEL_26;
    }

    if (v26 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v70, *v25, 8 * *(v23 - 6));
    LODWORD(v69) = v26;
    v27 = *v22;
    v28 = v73;
    do
    {
      if (v28 >= HIDWORD(v73))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v72 + v28) = v27;
      v28 = v73 + 1;
      LODWORD(v73) = v73 + 1;
      v30 = a2[v24];
      if (!v30)
      {
        v27 = 0;
LABEL_15:
        v29 = v27;
        goto LABEL_16;
      }

      if (v27 == 0x8000000000000000 || !v27)
      {
        goto LABEL_15;
      }

      v29 = 0x8000000000000000;
      if (v30 != 0x8000000000000000)
      {
        v27 *= v30;
        goto LABEL_15;
      }

LABEL_16:
      --v24;
      v27 = v29;
      --v26;
    }

    while (v26);
    if (__dst != v70)
    {
      free(__dst);
    }

LABEL_26:
    if (v25 == a4)
    {
      break;
    }

    v23 = v25;
  }

  while (v22 != v21);
LABEL_28:
  v31 = v72;
  v32 = v73;
  __dst = v70;
  v69 = 0x800000000;
  if (v73 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  a3 = v64;
  if (v73)
  {
    v33 = v72 + 8 * v73;
    v34 = v70;
    v35 = (v73 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v35 < 0x17 || v70 < v33 && v72 < &v70[8 * v73])
    {
      goto LABEL_74;
    }

    v36 = v35 + 1;
    v37 = 8 * (v36 & 0x3FFFFFFFFFFFFFFCLL);
    v34 = &v70[v37];
    v38 = &v33[-v37];
    v39 = &v71;
    v40 = (v33 - 16);
    v41 = v36 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v42 = vextq_s8(v40[-1], v40[-1], 8uLL);
      v39[-1] = vextq_s8(*v40, *v40, 8uLL);
      *v39 = v42;
      v39 += 2;
      v40 -= 2;
      v41 -= 4;
    }

    while (v41);
    v33 = v38;
    if (v36 != (v36 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_74:
      do
      {
        v43 = *(v33 - 1);
        v33 -= 8;
        *v34 = v43;
        v34 += 8;
      }

      while (v33 != v31);
    }
  }

  LODWORD(v69) = v32;
  v18 = v63;
  if (v64 != v32)
  {
    if (v64 >= v32)
    {
      if (v64 > HIDWORD(v69))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16(&v70[8 * v32], &unk_257369660, 8 * (v64 - v32));
      v44 = v64;
    }

    else
    {
      v44 = v64;
    }

    LODWORD(v69) = v44;
  }

  Context = mlir::Type::getContext(&v67);
  v46 = mlir::StridedLayoutAttr::get(Context, v66, __dst, v69);
  if (__dst != v70)
  {
    free(__dst);
  }

  v20 = v46 & 0xFFFFFFFFFFFFFF00;
  if (v72 != v74)
  {
    free(v72);
  }

  v19 = v46;
LABEL_49:
  if (v75 != v77)
  {
    free(v75);
  }

  if (v18)
  {
    v47 = (v20 | v19);
    v48 = mlir::MemRefType::getElementType(&v65);
    if (!v47)
    {
      goto LABEL_67;
    }

    v49 = *v47;
    {
      mlir::memref::ReinterpretCastOp::build();
      v50 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v51 = *(v49 + 8);
      v52 = *(v49 + 16);
      if (v52)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    }

    v50 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v51 = *(v49 + 8);
    v52 = *(v49 + 16);
    if (!v52)
    {
      goto LABEL_67;
    }

LABEL_55:
    v53 = v51;
    v54 = v52;
    do
    {
      v55 = v54 >> 1;
      v56 = &v53[2 * (v54 >> 1)];
      v58 = *v56;
      v57 = v56 + 2;
      v54 += ~(v54 >> 1);
      if (v58 < v50)
      {
        v53 = v57;
      }

      else
      {
        v54 = v55;
      }
    }

    while (v54);
    if (v53 != &v51[2 * v52] && *v53 == v50)
    {
      v61 = v53[1];
    }

    else
    {
LABEL_67:
      v61 = 0;
    }

    MemorySpace = mlir::MemRefType::getMemorySpace(&v65);
    v12 = a2;
    v13 = a3;
    v14 = v48;
    v15 = v47;
    v16 = v61;
LABEL_69:
    v59 = mlir::MemRefType::get(v12, v13, v14, v15, v16, MemorySpace);
    v60 = v59 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    LOBYTE(v59) = 0;
    v60 = 0;
  }

  return v60 | v59;
}

void mlir::memref::ExpandShapeOp::inferOutputShape(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v15 = llvm::cast<mlir::ShapedType,mlir::Type>(&v19);
  mlir::inferExpandShapeOutputShape(a1, a2, v15, v16, a4, a5, a6, a7, &__src);
  if (v23 != 1)
  {
    *a8 = 0;
    *(a8 + 64) = 0;
    return;
  }

  *a8 = a8 + 16;
  *(a8 + 8) = 0x600000000;
  if (&__src == a8 || (v17 = v21) == 0)
  {
    *(a8 + 64) = 1;
LABEL_9:
    if (__src != &v22)
    {
      free(__src);
    }

    return;
  }

  if (v21 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  memcpy((a8 + 16), __src, 8 * v21);
  *(a8 + 8) = v17;
  v18 = v23;
  *(a8 + 64) = 1;
  if (v18)
  {
    goto LABEL_9;
  }
}

void mlir::memref::ExpandShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x600000000;
  if (((8 * a8) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v14 = 0;
  v15 = 8 * a8;
  if (a8)
  {
    memcpy(v17, a7, v15);
    v14 = v18;
  }

  LODWORD(v18) = v14 + (v15 >> 3);
  mlir::decomposeMixedValues(&v17, v20);
  if (v17 != v19)
  {
    free(v17);
  }

  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  mlir::ValueRange::ValueRange(&v17, v20[8], v21);
  mlir::memref::ExpandShapeOp::build(a1, a2, a3, a4, ReassociationIndicesAttribute, v17, v18);
}

{
  v16 = *MEMORY[0x277D85DE8];
  mlir::convertReassociationMapsToIndices(a5, a6, &v14);
  mlir::memref::ExpandShapeOp::build(a1, a2, a3, a4, v14, v15, a7, a8);
}

void mlir::memref::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = a4;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a5;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::memref::ExpandShapeOp::build(mlir::IndexType **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v17 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = v21;
  v20 = 0x600000000;
  mlir::MemRefType::getShape(&v17);
  if (v13 >= 1)
  {
    for (i = 0; i < v16; i = (i + 1))
    {
      MixedSize = mlir::memref::getMixedSize(a1, v12, a4, i);
      if (v20 >= HIDWORD(v20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v19 + v20) = MixedSize;
      LODWORD(v20) = v20 + 1;
      mlir::MemRefType::getShape(&v17);
    }
  }

  mlir::memref::ExpandShapeOp::inferOutputShape(a1, *a2, a3, a5, a6, v19, v20, &v17);
  mlir::memref::ExpandShapeOp::build(a1, a2, a3, a4, a5, a6, v17, v18);
}

{
  v12 = *MEMORY[0x277D85DE8];
  mlir::convertReassociationMapsToIndices(a5, a6, &v10);
  mlir::memref::ExpandShapeOp::build(a1, a2, a3, a4, v10, v11);
}

void mlir::memref::ExpandShapeOp::build(mlir::IndexType **a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5, const void **a6, uint64_t a7)
{
  v12 = mlir::memref::ExpandShapeOp::computeExpandedType(*(a5 + 8) & 0xFFFFFFFFFFFFFFF8, a3, a4, a6, a7);

  mlir::memref::ExpandShapeOp::build(a1, a2, v12, a5, a6, a7);
}

void mlir::memref::ExpandShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, const void **a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10)
{
  v15 = mlir::memref::ExpandShapeOp::computeExpandedType(*(a5 + 8) & 0xFFFFFFFFFFFFFFF8, a3, a4, a6, a7);

  mlir::memref::ExpandShapeOp::build(a1, a2, v15, a5, a6, a7, a9, a10);
}

BOOL mlir::memref::ExpandShapeOp::verify(mlir::Operation **this)
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v91 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v90 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v91);
  v7 = v6;
  mlir::MemRefType::getShape(&v90);
  if (v7 <= v8)
  {
    v45 = *this;
    Shape = mlir::MemRefType::getShape(&v91);
    v48 = v47;
    v49 = mlir::MemRefType::getShape(&v90);
    v51 = v50;
    mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &v94);
    v52 = verifyCollapsedShape(v45, Shape, v48, v49, v51, v94, v95);
    v53 = v94;
    if (v95)
    {
      v54 = v94 + 32 * v95 - 16;
      v55 = -32 * v95;
      do
      {
        v56 = *(v54 - 2);
        if (v54 != v56)
        {
          free(v56);
        }

        v54 -= 32;
        v55 += 32;
      }

      while (v55);
      v53 = v94;
    }

    if (v53 != &v96)
    {
      free(v53);
    }

    if ((v52 & 1) == 0)
    {
      return 0;
    }

    v57 = v91;
    v58 = mlir::MemRefType::getShape(&v90);
    v60 = v59;
    mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &v94);
    v61 = mlir::memref::ExpandShapeOp::computeExpandedType(v57, v58, v60, v94, v95);
    v63 = v62;
    v64 = v94;
    if (v95)
    {
      v65 = v94 + 32 * v95 - 16;
      v66 = -32 * v95;
      do
      {
        v67 = *(v65 - 2);
        if (v65 != v67)
        {
          free(v67);
        }

        v65 -= 32;
        v66 += 32;
      }

      while (v66);
      v64 = v94;
    }

    if (v64 != &v96)
    {
      free(v64);
    }

    if (v63)
    {
      if (v90 == v61)
      {
        v94 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
      }

      v88[0] = "expected expanded type to be ";
      v89 = 259;
      mlir::OpState::emitOpError(this, v88, &v94);
      if (v94)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v92, v61);
        if (v98 >= v99)
        {
          if (v97 > &v92 || v97 + 24 * v98 <= &v92)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v68 = v97 + 24 * v98;
        v69 = v92;
        *(v68 + 2) = v93;
        *v68 = v69;
        v70 = ++v98;
        if (v94)
        {
          LODWORD(v92) = 3;
          *(&v92 + 1) = " but found ";
          v93 = 11;
          if (v70 >= v99)
          {
            if (v97 > &v92 || v97 + 24 * v70 <= &v92)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v71 = v97 + 24 * v98;
          v72 = v92;
          *(v71 + 2) = v93;
          *v71 = v72;
          ++v98;
          if (v94)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v92, v90);
            if (v98 >= v99)
            {
              if (v97 > &v92 || v97 + 24 * v98 <= &v92)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v73 = v97 + 24 * v98;
            v74 = v92;
            *(v73 + 2) = v93;
            *v73 = v74;
            ++v98;
          }
        }
      }

      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
      if (v94)
      {
        mlir::InFlightDiagnostic::report(&v94);
      }

      if (v106 == 1)
      {
        if (v105 != &v106)
        {
          free(v105);
        }

        v75 = __p;
        if (__p)
        {
          v76 = v104;
          v77 = __p;
          if (v104 != __p)
          {
            do
            {
              v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
            }

            while (v76 != v75);
            v77 = __p;
          }

          v104 = v75;
          operator delete(v77);
        }

        v40 = v101;
        if (!v101)
        {
          goto LABEL_100;
        }

        v78 = v102;
        v42 = v101;
        if (v102 == v101)
        {
          goto LABEL_99;
        }

        do
        {
          v80 = *--v78;
          v79 = v80;
          *v78 = 0;
          if (v80)
          {
            MEMORY[0x259C63150](v79, 0x1000C8077774924);
          }
        }

        while (v78 != v40);
        goto LABEL_98;
      }
    }

    else
    {
      v88[0] = "invalid source layout map";
      v89 = 259;
      mlir::OpState::emitOpError(this, v88, &v94);
      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
      if (v94)
      {
        mlir::InFlightDiagnostic::report(&v94);
      }

      if (v106 == 1)
      {
        if (v105 != &v106)
        {
          free(v105);
        }

        v81 = __p;
        if (__p)
        {
          v82 = v104;
          v83 = __p;
          if (v104 != __p)
          {
            do
            {
              v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
            }

            while (v82 != v81);
            v83 = __p;
          }

          v104 = v81;
          operator delete(v83);
        }

        v40 = v101;
        if (!v101)
        {
          goto LABEL_100;
        }

        v84 = v102;
        v42 = v101;
        if (v102 == v101)
        {
          goto LABEL_99;
        }

        do
        {
          v86 = *--v84;
          v85 = v86;
          *v84 = 0;
          if (v86)
          {
            MEMORY[0x259C63150](v85, 0x1000C8077774924);
          }
        }

        while (v84 != v40);
        goto LABEL_98;
      }
    }
  }

  else
  {
    mlir::MemRefType::getShape(&v91);
    v10 = v9;
    mlir::MemRefType::getShape(&v90);
    v12 = v11;
    v88[0] = "has source rank ";
    v89 = 259;
    mlir::OpState::emitOpError(this, v88, &v94);
    if (v94)
    {
      LODWORD(v92) = 2;
      *(&v92 + 1) = v10;
      if (v98 >= v99)
      {
        if (v97 > &v92 || v97 + 24 * v98 <= &v92)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v97 + 24 * v98;
      v14 = v92;
      *(v13 + 2) = v93;
      *v13 = v14;
      v15 = ++v98;
      if (v94)
      {
        LODWORD(v92) = 3;
        *(&v92 + 1) = " and result rank ";
        v93 = 17;
        if (v15 >= v99)
        {
          if (v97 > &v92 || v97 + 24 * v15 <= &v92)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v97 + 24 * v98;
        v17 = v92;
        *(v16 + 2) = v93;
        *v16 = v17;
        v18 = ++v98;
        if (v94)
        {
          LODWORD(v92) = 2;
          *(&v92 + 1) = v12;
          if (v18 >= v99)
          {
            if (v97 > &v92 || v97 + 24 * v18 <= &v92)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v97 + 24 * v98;
          v20 = v92;
          *(v19 + 2) = v93;
          *v19 = v20;
          v21 = ++v98;
          if (v94)
          {
            LODWORD(v92) = 3;
            *(&v92 + 1) = ". This is not an expansion (";
            v93 = 28;
            if (v21 >= v99)
            {
              if (v97 > &v92 || v97 + 24 * v21 <= &v92)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v22 = v97 + 24 * v98;
            v23 = v92;
            *(v22 + 2) = v93;
            *v22 = v23;
            v24 = ++v98;
            if (v94)
            {
              LODWORD(v92) = 2;
              *(&v92 + 1) = v10;
              if (v24 >= v99)
              {
                if (v97 > &v92 || v97 + 24 * v24 <= &v92)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v25 = v97 + 24 * v98;
              v26 = v92;
              *(v25 + 2) = v93;
              *v25 = v26;
              v27 = ++v98;
              if (v94)
              {
                LODWORD(v92) = 3;
                *(&v92 + 1) = " > ";
                v93 = 3;
                if (v27 >= v99)
                {
                  if (v97 > &v92 || v97 + 24 * v27 <= &v92)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v28 = v97 + 24 * v98;
                v29 = v92;
                *(v28 + 2) = v93;
                *v28 = v29;
                v30 = ++v98;
                if (v94)
                {
                  LODWORD(v92) = 2;
                  *(&v92 + 1) = v12;
                  if (v30 >= v99)
                  {
                    if (v97 > &v92 || v97 + 24 * v30 <= &v92)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v31 = v97 + 24 * v98;
                  v32 = v92;
                  *(v31 + 2) = v93;
                  *v31 = v32;
                  v33 = ++v98;
                  if (v94)
                  {
                    LODWORD(v92) = 3;
                    *(&v92 + 1) = ").";
                    v93 = 2;
                    if (v33 >= v99)
                    {
                      if (v97 > &v92 || v97 + 24 * v33 <= &v92)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v34 = v97 + 24 * v98;
                    v35 = v92;
                    *(v34 + 2) = v93;
                    *v34 = v35;
                    ++v98;
                  }
                }
              }
            }
          }
        }
      }
    }

    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
    if (v94)
    {
      mlir::InFlightDiagnostic::report(&v94);
    }

    if (v106 == 1)
    {
      if (v105 != &v106)
      {
        free(v105);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v104;
        v39 = __p;
        if (v104 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v104 = v37;
        operator delete(v39);
      }

      v40 = v101;
      if (!v101)
      {
        goto LABEL_100;
      }

      v41 = v102;
      v42 = v101;
      if (v102 == v101)
      {
LABEL_99:
        v102 = v40;
        operator delete(v42);
LABEL_100:
        if (v97 != &v100)
        {
          free(v97);
        }

        return v36;
      }

      do
      {
        v44 = *--v41;
        v43 = v44;
        *v41 = 0;
        if (v44)
        {
          MEMORY[0x259C63150](v43, 0x1000C8077774924);
        }
      }

      while (v41 != v40);
LABEL_98:
      v42 = v101;
      goto LABEL_99;
    }
  }

  return v36;
}

uint64_t verifyCollapsedShape(mlir::Operation *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v149 = *MEMORY[0x277D85DE8];
  if (a3 != a7)
  {
    v132[0] = "invalid number of reassociation groups: found ";
    v133 = 259;
    mlir::Operation::emitOpError(v138, a1, v132);
    if (v138[0])
    {
      LODWORD(__dst) = 5;
      *(&__dst + 1) = a7;
      if (v140 >= v141)
      {
        if (v139 > &__dst || v139 + 24 * v140 <= &__dst)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v84 = v139 + 24 * v140;
      v85 = __dst;
      *(v84 + 2) = v137[0];
      *v84 = v85;
      v86 = ++v140;
      if (v138[0])
      {
        LODWORD(__dst) = 3;
        *(&__dst + 1) = ", expected ";
        v137[0] = 11;
        if (v86 >= v141)
        {
          if (v139 > &__dst || v139 + 24 * v86 <= &__dst)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v87 = v139 + 24 * v140;
        v88 = __dst;
        *(v87 + 2) = v137[0];
        *v87 = v88;
        v89 = ++v140;
        if (v138[0])
        {
          LODWORD(__dst) = 5;
          *(&__dst + 1) = a3;
          if (v89 >= v141)
          {
            if (v139 > &__dst || v139 + 24 * v89 <= &__dst)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v90 = v139 + 24 * v140;
          v91 = __dst;
          *(v90 + 2) = v137[0];
          *v90 = v91;
          ++v140;
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v138);
    if (v138[0])
    {
      mlir::InFlightDiagnostic::report(v138);
    }

    if (v148 != 1)
    {
      return v7;
    }

    if (v147 != &v148)
    {
      free(v147);
    }

    v92 = __p;
    if (__p)
    {
      v93 = v146;
      v94 = __p;
      if (v146 != __p)
      {
        do
        {
          v93 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v93 - 1);
        }

        while (v93 != v92);
        v94 = __p;
      }

      v146 = v92;
      operator delete(v94);
    }

    v95 = v143;
    if (v143)
    {
      v96 = v144;
      v97 = v143;
      if (v144 != v143)
      {
        do
        {
          v99 = *--v96;
          v98 = v99;
          *v96 = 0;
          if (v99)
          {
            MEMORY[0x259C63150](v98, 0x1000C8077774924);
          }
        }

        while (v96 != v95);
        v97 = v143;
      }

      v144 = v95;
LABEL_186:
      operator delete(v97);
    }

LABEL_187:
    v101 = v139;
    if (v139 == v142)
    {
      return v7;
    }

LABEL_188:
    free(v101);
    return v7;
  }

  if (a3)
  {
    v11 = a6;
    v12 = 0;
    v13 = 0;
    v131 = a6 + 32 * a3;
    while (1)
    {
      *&__dst = v137;
      *(&__dst + 1) = 0x200000000;
      v14 = *(v11 + 8);
      if (&__dst != v11 && v14 != 0)
      {
        if (v14 >= 3)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v137, *v11, 8 * *(v11 + 8));
        v38 = 0;
        v39 = 0;
        DWORD2(__dst) = v14;
        v40 = __dst + 8 * v14;
        v41 = v12 + 1;
        v42 = &a4[v12];
        while (1)
        {
          v12 = v41;
          v43 = v41 - 1;
          if (v41 - 1 != *(__dst + v38 * 8))
          {
            break;
          }

          if (v43 >= a5)
          {
            v132[0] = "reassociation index ";
            v133 = 259;
            mlir::Operation::emitOpError(v138, a1, v132);
            if (v138[0])
            {
              LODWORD(v134) = 2;
              *(&v134 + 1) = v43;
              if (v140 >= v141)
              {
                if (v139 > &v134 || v139 + 24 * v140 <= &v134)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v61 = v139 + 24 * v140;
              v62 = v134;
              *(v61 + 2) = v135;
              *v61 = v62;
              v63 = ++v140;
              if (v138[0])
              {
                LODWORD(v134) = 3;
                *(&v134 + 1) = " is out of bounds";
                v135 = 17;
                if (v63 >= v141)
                {
                  if (v139 > &v134 || v139 + 24 * v63 <= &v134)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v64 = v139 + 24 * v140;
                v65 = v134;
                *(v64 + 2) = v135;
                *v64 = v65;
                ++v140;
              }
            }

            v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v138);
            if (v138[0])
            {
              mlir::InFlightDiagnostic::report(v138);
            }

            if (v148 != 1)
            {
              goto LABEL_106;
            }

            if (v147 != &v148)
            {
              free(v147);
            }

            v66 = __p;
            if (__p)
            {
              v67 = v146;
              v68 = __p;
              if (v146 != __p)
              {
                do
                {
                  v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
                }

                while (v67 != v66);
                v68 = __p;
              }

              v146 = v66;
              operator delete(v68);
            }

            v33 = v143;
            if (!v143)
            {
              goto LABEL_104;
            }

            v69 = v144;
            v35 = v143;
            if (v144 == v143)
            {
              goto LABEL_103;
            }

            do
            {
              v71 = *--v69;
              v70 = v71;
              *v69 = 0;
              if (v71)
              {
                MEMORY[0x259C63150](v70, 0x1000C8077774924);
              }
            }

            while (v69 != v33);
            goto LABEL_102;
          }

          v39 |= v42[v38++] == 0x8000000000000000;
          ++v41;
          if (v14 == v38)
          {
            v16 = (a2 + 8 * v13);
            if ((v39 & 1) != (*v16 == 0x8000000000000000))
            {
              v12 = v41 - 1;
              goto LABEL_44;
            }

            if (v39)
            {
              goto LABEL_120;
            }

            v74 = (v14 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            if (v74)
            {
              v75 = v74 + 1;
              v76 = (v74 + 1) & 0x3FFFFFFFFFFFFFFELL;
              v77 = (__dst + 8 * v76);
              v78 = (__dst + 8);
              v79 = v76;
              v80 = 1;
              v81 = 1;
              do
              {
                v80 *= a4[*(v78 - 1)];
                v81 *= a4[*v78];
                v78 += 2;
                v79 -= 2;
              }

              while (v79);
              v17 = v81 * v80;
              if (v75 == v76)
              {
LABEL_119:
                if (v17 != *v16)
                {
                  goto LABEL_11;
                }

                goto LABEL_120;
              }
            }

            else
            {
              v77 = __dst;
              v17 = 1;
            }

            do
            {
              v82 = *v77++;
              v17 *= a4[v82];
            }

            while (v77 != v40);
            goto LABEL_119;
          }
        }

        v132[0] = "reassociation indices must be contiguous";
        v133 = 259;
        mlir::Operation::emitOpError(v138, a1, v132);
        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v138);
        if (v138[0])
        {
          mlir::InFlightDiagnostic::report(v138);
        }

        if (v148 != 1)
        {
          goto LABEL_106;
        }

        if (v147 != &v148)
        {
          free(v147);
        }

        v55 = __p;
        if (__p)
        {
          v56 = v146;
          v57 = __p;
          if (v146 != __p)
          {
            do
            {
              v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
            }

            while (v56 != v55);
            v57 = __p;
          }

          v146 = v55;
          operator delete(v57);
        }

        v33 = v143;
        if (!v143)
        {
          goto LABEL_104;
        }

        v58 = v144;
        v35 = v143;
        if (v144 == v143)
        {
          goto LABEL_103;
        }

        do
        {
          v60 = *--v58;
          v59 = v60;
          *v58 = 0;
          if (v60)
          {
            MEMORY[0x259C63150](v59, 0x1000C8077774924);
          }
        }

        while (v58 != v33);
        goto LABEL_102;
      }

      v16 = (a2 + 8 * v13);
      if (*v16 == 0x8000000000000000)
      {
LABEL_44:
        v132[0] = "collapsed dim (";
        v133 = 259;
        mlir::Operation::emitOpError(v138, a1, v132);
        if (v138[0])
        {
          LODWORD(v134) = 2;
          *(&v134 + 1) = v13;
          if (v140 >= v141)
          {
            if (v139 > &v134 || v139 + 24 * v140 <= &v134)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v44 = v139 + 24 * v140;
          v45 = v134;
          *(v44 + 2) = v135;
          *v44 = v45;
          v46 = ++v140;
          if (v138[0])
          {
            LODWORD(v134) = 3;
            *(&v134 + 1) = ") must be dynamic if and only if reassociation group is dynamic";
            v135 = 63;
            if (v46 >= v141)
            {
              if (v139 > &v134 || v139 + 24 * v46 <= &v134)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v47 = v139 + 24 * v140;
            v48 = v134;
            *(v47 + 2) = v135;
            *v47 = v48;
            ++v140;
          }
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v138);
        if (v138[0])
        {
          mlir::InFlightDiagnostic::report(v138);
        }

        if (v148 == 1)
        {
          if (v147 != &v148)
          {
            free(v147);
          }

          v49 = __p;
          if (__p)
          {
            v50 = v146;
            v51 = __p;
            if (v146 != __p)
            {
              do
              {
                v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
              }

              while (v50 != v49);
              v51 = __p;
            }

            v146 = v49;
            operator delete(v51);
          }

          v33 = v143;
          if (v143)
          {
            v52 = v144;
            v35 = v143;
            if (v144 != v143)
            {
              do
              {
                v54 = *--v52;
                v53 = v54;
                *v52 = 0;
                if (v54)
                {
                  MEMORY[0x259C63150](v53, 0x1000C8077774924);
                }
              }

              while (v52 != v33);
              goto LABEL_102;
            }

LABEL_103:
            v144 = v33;
            operator delete(v35);
          }

LABEL_104:
          if (v139 != v142)
          {
            free(v139);
          }
        }
      }

      else
      {
        v17 = 1;
        if (*v16 == 1)
        {
LABEL_120:
          v72 = 1;
          v73 = __dst;
          if (__dst == v137)
          {
            goto LABEL_108;
          }

LABEL_107:
          free(v73);
          goto LABEL_108;
        }

LABEL_11:
        v132[0] = "collapsed dim size (";
        v133 = 259;
        mlir::Operation::emitOpError(v138, a1, v132);
        if (v138[0])
        {
          v18 = *v16;
          LODWORD(v134) = 2;
          *(&v134 + 1) = v18;
          if (v140 >= v141)
          {
            if (v139 > &v134 || v139 + 24 * v140 <= &v134)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v139 + 24 * v140;
          v20 = v134;
          *(v19 + 2) = v135;
          *v19 = v20;
          v21 = ++v140;
          if (v138[0])
          {
            LODWORD(v134) = 3;
            *(&v134 + 1) = ") must equal reassociation group size (";
            v135 = 39;
            if (v21 >= v141)
            {
              if (v139 > &v134 || v139 + 24 * v21 <= &v134)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v22 = v139 + 24 * v140;
            v23 = v134;
            *(v22 + 2) = v135;
            *v22 = v23;
            v24 = ++v140;
            if (v138[0])
            {
              LODWORD(v134) = 2;
              *(&v134 + 1) = v17;
              if (v24 >= v141)
              {
                if (v139 > &v134 || v139 + 24 * v24 <= &v134)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v25 = v139 + 24 * v140;
              v26 = v134;
              *(v25 + 2) = v135;
              *v25 = v26;
              v27 = ++v140;
              if (v138[0])
              {
                LODWORD(v134) = 3;
                *(&v134 + 1) = ")";
                v135 = 1;
                if (v27 >= v141)
                {
                  if (v139 > &v134 || v139 + 24 * v27 <= &v134)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v28 = v139 + 24 * v140;
                v29 = v134;
                *(v28 + 2) = v135;
                *v28 = v29;
                ++v140;
              }
            }
          }
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v138);
        if (v138[0])
        {
          mlir::InFlightDiagnostic::report(v138);
        }

        if (v148)
        {
          if (v147 != &v148)
          {
            free(v147);
          }

          v30 = __p;
          if (__p)
          {
            v31 = v146;
            v32 = __p;
            if (v146 != __p)
            {
              do
              {
                v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
              }

              while (v31 != v30);
              v32 = __p;
            }

            v146 = v30;
            operator delete(v32);
          }

          v33 = v143;
          if (v143)
          {
            v34 = v144;
            v35 = v143;
            if (v144 == v143)
            {
              goto LABEL_103;
            }

            do
            {
              v37 = *--v34;
              v36 = v37;
              *v34 = 0;
              if (v37)
              {
                MEMORY[0x259C63150](v36, 0x1000C8077774924);
              }
            }

            while (v34 != v33);
LABEL_102:
            v35 = v143;
            goto LABEL_103;
          }

          goto LABEL_104;
        }
      }

LABEL_106:
      v72 = 0;
      v73 = __dst;
      if (__dst != v137)
      {
        goto LABEL_107;
      }

LABEL_108:
      if (!v72)
      {
        return v7;
      }

      ++v13;
      v11 += 32;
      if (v11 == v131)
      {
        if (v12 == a5)
        {
          return 1;
        }

        v132[0] = "expanded rank (";
        v133 = 259;
        mlir::Operation::emitOpError(v138, a1, v132);
        if (v138[0])
        {
          LODWORD(__dst) = 5;
          *(&__dst + 1) = a5;
          if (v140 >= v141)
          {
            if (v139 > &__dst || v139 + 24 * v140 <= &__dst)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v103 = v139 + 24 * v140;
          v104 = __dst;
          *(v103 + 2) = v137[0];
          *v103 = v104;
          v105 = ++v140;
          if (v138[0])
          {
            LODWORD(__dst) = 3;
            *(&__dst + 1) = ") inconsistent with number of reassociation indices (";
            v137[0] = 53;
            if (v105 >= v141)
            {
              if (v139 > &__dst || v139 + 24 * v105 <= &__dst)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v106 = v139 + 24 * v140;
            v107 = __dst;
            *(v106 + 2) = v137[0];
            *v106 = v107;
            v108 = ++v140;
            if (v138[0])
            {
              LODWORD(__dst) = 2;
              *(&__dst + 1) = v12;
              if (v108 >= v141)
              {
                if (v139 > &__dst || v139 + 24 * v108 <= &__dst)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v109 = v139 + 24 * v140;
              v110 = __dst;
              *(v109 + 2) = v137[0];
              *v109 = v110;
              v111 = ++v140;
              if (v138[0])
              {
                LODWORD(__dst) = 3;
                *(&__dst + 1) = ")";
                v137[0] = 1;
                if (v111 >= v141)
                {
                  if (v139 > &__dst || v139 + 24 * v111 <= &__dst)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v112 = v139 + 24 * v140;
                v113 = __dst;
                *(v112 + 2) = v137[0];
                *v112 = v113;
                ++v140;
              }
            }
          }
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v138);
        if (v138[0])
        {
          mlir::InFlightDiagnostic::report(v138);
        }

        if (v148 == 1)
        {
          if (v147 != &v148)
          {
            free(v147);
          }

          v114 = __p;
          if (__p)
          {
            v115 = v146;
            v116 = __p;
            if (v146 != __p)
            {
              do
              {
                v115 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v115 - 1);
              }

              while (v115 != v114);
              v116 = __p;
            }

            v146 = v114;
            operator delete(v116);
          }

          v117 = v143;
          if (v143)
          {
            v118 = v144;
            v97 = v143;
            if (v144 != v143)
            {
              do
              {
                v120 = *--v118;
                v119 = v120;
                *v118 = 0;
                if (v120)
                {
                  MEMORY[0x259C63150](v119, 0x1000C8077774924);
                }
              }

              while (v118 != v117);
              v97 = v143;
            }

            v144 = v117;
            goto LABEL_186;
          }

          goto LABEL_187;
        }

        return v7;
      }
    }
  }

  if (!a5)
  {
    return 1;
  }

  v100 = 8 * a5;
  while (*a4 == 1)
  {
    ++a4;
    v100 -= 8;
    if (!v100)
    {
      return 1;
    }
  }

  v132[0] = "rank 0 memrefs can only be extended/collapsed with/from ones";
  v133 = 259;
  mlir::Operation::emitOpError(v138, a1, v132);
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v138);
  if (v138[0])
  {
    mlir::InFlightDiagnostic::report(v138);
  }

  if (v148)
  {
    if (v147 != &v148)
    {
      free(v147);
    }

    v121 = __p;
    if (__p)
    {
      v122 = v146;
      v123 = __p;
      if (v146 != __p)
      {
        do
        {
          v122 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v122 - 1);
        }

        while (v122 != v121);
        v123 = __p;
      }

      v146 = v121;
      operator delete(v123);
    }

    v124 = v143;
    if (v143)
    {
      v125 = v144;
      v126 = v143;
      if (v144 != v143)
      {
        do
        {
          v128 = *--v125;
          v127 = v128;
          *v125 = 0;
          if (v128)
          {
            MEMORY[0x259C63150](v127, 0x1000C8077774924);
          }
        }

        while (v125 != v124);
        v126 = v143;
      }

      v144 = v124;
      operator delete(v126);
    }

    v101 = v139;
    if (v139 != v142)
    {
      goto LABEL_188;
    }
  }

  return v7;
}

uint64_t mlir::memref::CollapseShapeOp::isGuaranteedCollapsible(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = a1;
  v8[0] = mlir::MemRefType::getLayout(&v9);
  v8[1] = v5;
  if (mlir::MemRefLayoutAttrInterface::isIdentity(v8))
  {
    return 1;
  }

  computeCollapsedLayoutMap(v9, a2, a3, 1);
  return v7 & 1;
}

unint64_t computeCollapsedLayoutMap(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v61[6] = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = a1;
  v60[0] = v61;
  v60[1] = 0x600000000;
  Shape = mlir::MemRefType::getShape(&v56);
  v8 = 0;
  v9 = 0;
  if ((mlir::getStridesAndOffset(v56, v60, &v55) & 1) == 0)
  {
    goto LABEL_50;
  }

  v57 = v59;
  v58 = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!a3)
  {
    goto LABEL_80;
  }

  v10 = a2 + 32 * a3;
  v11 = a2;
  do
  {
    v12 = *(v11 + 8);
    v13 = *v11 - 8;
    v14 = *(v13 + 8 * v12);
    v15 = *(Shape + 8 * v14);
    if (v15 == 1)
    {
      while (v12 >= 2)
      {
        --v12;
        v14 = *(v13 + 8 * v12);
        v15 = *(Shape + 8 * v14);
        if (v15 != 1)
        {
          goto LABEL_9;
        }
      }

LABEL_12:
      v16 = v58;
      v17 = HIDWORD(v58);
      goto LABEL_13;
    }

LABEL_9:
    if (v15 != 0x8000000000000000)
    {
      goto LABEL_12;
    }

    v16 = v58;
    v17 = HIDWORD(v58);
    if (v12 != 1)
    {
      v18 = 0x8000000000000000;
      goto LABEL_14;
    }

LABEL_13:
    v18 = *(v60[0] + v14);
LABEL_14:
    if (v16 >= v17)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v57 + v16) = v18;
    v19 = v58;
    LODWORD(v58) = v58 + 1;
    v11 += 32;
  }

  while (v11 != v10);
  v20 = v57;
  if (a4)
  {
    do
    {
      v40 = *(v10 - 32);
      v10 -= 32;
      v39 = v40;
      v41 = *(v10 + 8);
      if (v41 != 1)
      {
        v42 = 8 * v41;
        v43 = *(v57 + v19);
        v44 = v43 == 0x8000000000000000;
        if (v43 == 0x8000000000000000)
        {
          v43 = 0;
        }

        for (i = v42 - 8; i; i -= 8)
        {
          v46 = *(v39 + i);
          v47 = *(Shape + 8 * v46);
          v48 = v47 == 0x8000000000000000;
          if (v47)
          {
            if (v44)
            {
              goto LABEL_48;
            }

            v49 = v47 == 0x8000000000000000 ? 0 : v47 * v43;
            v44 = v43 && v48;
            v43 = v43 ? v49 : 0;
            if (v44)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v44 = 0;
            v43 = 0;
          }

          v50 = v46 - 1;
          v51 = *(v60[0] + v46 - 1);
          if (v51 == 0x8000000000000000)
          {
            goto LABEL_48;
          }

          if (*(Shape + 8 * v50) != 1 && v43 != v51)
          {
            goto LABEL_48;
          }
        }
      }

      --v19;
    }

    while (v10 != a2);
LABEL_80:
    Context = mlir::Type::getContext(&v56);
    v54 = mlir::StridedLayoutAttr::get(Context, v55, v57, v58);
    v9 = v54 & 0xFFFFFFFFFFFFFF00;
    v8 = v54;
    v20 = v57;
    if (v57 != v59)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  while (1)
  {
    v22 = *(v10 - 32);
    v10 -= 32;
    v21 = v22;
    v23 = *(v10 + 8);
    if (v23 != 1)
    {
      break;
    }

LABEL_20:
    --v19;
    if (v10 == a2)
    {
      goto LABEL_80;
    }
  }

  v24 = 8 * v23;
  v25 = *(v57 + v19);
  v26 = v25 == 0x8000000000000000;
  if (v25 == 0x8000000000000000)
  {
    v25 = 0;
  }

  v27 = v24 - 8;
  while (1)
  {
    v28 = *(v21 + v27);
    v29 = *(Shape + 8 * v28);
    v30 = v29 * v25;
    if (v29 == 0x8000000000000000)
    {
      v30 = 0;
    }

    v31 = v25 == 0;
    if (v25)
    {
      v32 = v29 == 0x8000000000000000;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30;
    }

    v34 = !v26;
    v26 = v26 || v32;
    if (v34)
    {
      v25 = v33;
    }

    else
    {
      v25 = 0;
    }

    if (!v29)
    {
      v26 = 0;
      v25 = 0;
    }

    v35 = v28 - 1;
    if (*(Shape + 8 * v35) != 1 && !v26)
    {
      v36 = *(v60[0] + v35);
      if (v36 != 0x8000000000000000 && v25 != v36)
      {
        break;
      }
    }

    v27 -= 8;
    if (!v27)
    {
      goto LABEL_20;
    }
  }

LABEL_48:
  v8 = 0;
  v9 = 0;
  if (v57 != v59)
  {
LABEL_49:
    free(v20);
  }

LABEL_50:
  if (v60[0] != v61)
  {
    free(v60[0]);
  }

  return v9 | v8;
}

uint64_t mlir::memref::CollapseShapeOp::computeCollapsedType(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v44[6] = *MEMORY[0x277D85DE8];
  v41 = a1;
  v42 = v44;
  v43 = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v5 = a2 + 32 * a3;
    for (i = a2; i != v5; i += 4)
    {
      v9 = *(i + 2);
      if (v9)
      {
        LOBYTE(v10) = 0;
        v11 = *i;
        v12 = 8 * v9;
        v13 = 1;
        do
        {
          v14 = *v11;
          v15 = *(mlir::MemRefType::getShape(&v41) + 8 * v14);
          if (v15)
          {
            if (v10)
            {
              v13 = 0;
              v10 = 1;
            }

            else if (v13)
            {
              if (v15 == 0x8000000000000000)
              {
                v13 = 0;
              }

              else
              {
                v13 *= v15;
              }

              v10 = v15 == 0x8000000000000000;
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
            v13 = 0;
          }

          v11 += 2;
          v12 -= 8;
        }

        while (v12);
        if (v10)
        {
          v7 = 0x8000000000000000;
        }

        else
        {
          v7 = v13;
        }

        v8 = v43;
        if (v43 >= HIDWORD(v43))
        {
LABEL_24:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      else
      {
        v7 = 1;
        v8 = v43;
        if (v43 >= HIDWORD(v43))
        {
          goto LABEL_24;
        }
      }

      *(v42 + v8) = v7;
      LODWORD(v43) = v43 + 1;
    }
  }

  v40[0] = mlir::MemRefType::getLayout(&v41);
  v40[1] = v16;
  if ((mlir::MemRefLayoutAttrInterface::isIdentity(v40) & 1) == 0)
  {
    v23 = computeCollapsedLayoutMap(v41, a2, a3, 0);
    v24 = v42;
    v25 = v43;
    ElementType = mlir::MemRefType::getElementType(&v41);
    if (v23)
    {
      v27 = *v23;
      {
        v28 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        if (!v30)
        {
          goto LABEL_41;
        }
      }

      else
      {
        mlir::memref::ReinterpretCastOp::build();
        v28 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
        v29 = *(v27 + 8);
        v30 = *(v27 + 16);
        if (!v30)
        {
          goto LABEL_41;
        }
      }

      v31 = v29;
      v32 = v30;
      do
      {
        v33 = v32 >> 1;
        v34 = &v31[2 * (v32 >> 1)];
        v36 = *v34;
        v35 = v34 + 2;
        v32 += ~(v32 >> 1);
        if (v36 < v28)
        {
          v31 = v35;
        }

        else
        {
          v32 = v33;
        }
      }

      while (v32);
      if (v31 != &v29[2 * v30] && *v31 == v28)
      {
        v37 = v31[1];
LABEL_42:
        MemorySpace = mlir::MemRefType::getMemorySpace(&v41);
        result = mlir::MemRefType::get(v24, v25, ElementType, v23, v37, MemorySpace);
        v22 = v42;
        if (v42 == v44)
        {
          return result;
        }

        goto LABEL_43;
      }
    }

LABEL_41:
    v37 = 0;
    goto LABEL_42;
  }

  v17 = v42;
  v18 = v43;
  v19 = mlir::MemRefType::getElementType(&v41);
  v20 = mlir::MemRefType::getMemorySpace(&v41);
  result = mlir::MemRefType::get(v17, v18, v19, 0, 0, v20);
  v22 = v42;
  if (v42 == v44)
  {
    return result;
  }

LABEL_43:
  v39 = result;
  free(v22);
  return v39;
}

uint64_t mlir::memref::CollapseShapeOp::build(uint64_t **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, unint64_t a5, const void *a6, uint64_t a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v19 = mlir::memref::CollapseShapeOp::computeCollapsedType(*(a3 + 8) & 0xFFFFFFFFFFFFFFF8, a4, a5);
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a4, a5);
  Context = mlir::Attribute::getContext(a2);
  v24 = 261;
  v22 = "reassociation";
  v23 = 13;
  v16 = mlir::StringAttr::get(Context, &v22, v15);
  mlir::NamedAttribute::NamedAttribute(v21, v16, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(a2 + 112, v21[0], v21[1]);
  v17 = mlir::TypeRange::TypeRange(&v22, &v19, 1uLL);
  return mlir::memref::CollapseShapeOp::build(v17, a2, v22, v23, &v20, 1uLL, a6, a7);
}

uint64_t mlir::memref::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

uint64_t mlir::memref::CollapseShapeOp::verify(mlir::Operation **this)
{
  v128 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v112 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v111 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v112);
  v7 = v6;
  mlir::MemRefType::getShape(&v111);
  if (v7 < v8)
  {
    mlir::MemRefType::getShape(&v112);
    v10 = v9;
    mlir::MemRefType::getShape(&v111);
    v12 = v11;
    v109[0] = "has source rank ";
    v110 = 259;
    mlir::OpState::emitOpError(this, v109, &Layout);
    if (Layout)
    {
      LODWORD(v113) = 2;
      *(&v113 + 1) = v10;
      if (v119 >= v120)
      {
        if (v118 > &v113 || v118 + 24 * v119 <= &v113)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v118 + 24 * v119;
      v14 = v113;
      *(v13 + 2) = v114;
      *v13 = v14;
      v15 = ++v119;
      if (Layout)
      {
        LODWORD(v113) = 3;
        *(&v113 + 1) = " and result rank ";
        v114 = 17;
        if (v15 >= v120)
        {
          if (v118 > &v113 || v118 + 24 * v15 <= &v113)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v118 + 24 * v119;
        v17 = v113;
        *(v16 + 2) = v114;
        *v16 = v17;
        v18 = ++v119;
        if (Layout)
        {
          LODWORD(v113) = 2;
          *(&v113 + 1) = v12;
          if (v18 >= v120)
          {
            if (v118 > &v113 || v118 + 24 * v18 <= &v113)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v118 + 24 * v119;
          v20 = v113;
          *(v19 + 2) = v114;
          *v19 = v20;
          v21 = ++v119;
          if (Layout)
          {
            LODWORD(v113) = 3;
            *(&v113 + 1) = ". This is not a collapse (";
            v114 = 26;
            if (v21 >= v120)
            {
              if (v118 > &v113 || v118 + 24 * v21 <= &v113)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v22 = v118 + 24 * v119;
            v23 = v113;
            *(v22 + 2) = v114;
            *v22 = v23;
            v24 = ++v119;
            if (Layout)
            {
              LODWORD(v113) = 2;
              *(&v113 + 1) = v10;
              if (v24 >= v120)
              {
                if (v118 > &v113 || v118 + 24 * v24 <= &v113)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v25 = v118 + 24 * v119;
              v26 = v113;
              *(v25 + 2) = v114;
              *v25 = v26;
              v27 = ++v119;
              if (Layout)
              {
                LODWORD(v113) = 3;
                *(&v113 + 1) = " < ";
                v114 = 3;
                if (v27 >= v120)
                {
                  if (v118 > &v113 || v118 + 24 * v27 <= &v113)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v28 = v118 + 24 * v119;
                v29 = v113;
                *(v28 + 2) = v114;
                *v28 = v29;
                v30 = ++v119;
                if (Layout)
                {
                  LODWORD(v113) = 2;
                  *(&v113 + 1) = v12;
                  if (v30 >= v120)
                  {
                    if (v118 > &v113 || v118 + 24 * v30 <= &v113)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v31 = v118 + 24 * v119;
                  v32 = v113;
                  *(v31 + 2) = v114;
                  *v31 = v32;
                  v33 = ++v119;
                  if (Layout)
                  {
                    LODWORD(v113) = 3;
                    *(&v113 + 1) = ").";
                    v114 = 2;
                    if (v33 >= v120)
                    {
                      if (v118 > &v113 || v118 + 24 * v33 <= &v113)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v34 = v118 + 24 * v119;
                    v35 = v113;
                    *(v34 + 2) = v114;
                    *v34 = v35;
                    ++v119;
                  }
                }
              }
            }
          }
        }
      }
    }

    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v127 == 1)
    {
      if (v126 != &v127)
      {
        free(v126);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v125;
        v39 = __p;
        if (v125 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v125 = v37;
        operator delete(v39);
      }

      v40 = v122;
      if (!v122)
      {
        goto LABEL_81;
      }

      v41 = v123;
      v42 = v122;
      if (v123 == v122)
      {
LABEL_80:
        v123 = v40;
        operator delete(v42);
LABEL_81:
        if (v118 != v121)
        {
          free(v118);
        }

        return v36;
      }

      do
      {
        v44 = *--v41;
        v43 = v44;
        *v41 = 0;
        if (v44)
        {
          MEMORY[0x259C63150](v43, 0x1000C8077774924);
        }
      }

      while (v41 != v40);
LABEL_79:
      v42 = v122;
      goto LABEL_80;
    }

    return v36;
  }

  v45 = *this;
  Shape = mlir::MemRefType::getShape(&v111);
  v48 = v47;
  v49 = mlir::MemRefType::getShape(&v112);
  v51 = v50;
  mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &Layout);
  v52 = verifyCollapsedShape(v45, Shape, v48, v49, v51, Layout, v116);
  v53 = Layout;
  if (v116)
  {
    v54 = Layout + 32 * v116 - 16;
    v55 = -32 * v116;
    do
    {
      v56 = *(v54 - 2);
      if (v54 != v56)
      {
        free(v56);
      }

      v54 -= 32;
      v55 += 32;
    }

    while (v55);
    v53 = Layout;
  }

  if (v53 != &v117)
  {
    free(v53);
  }

  if ((v52 & 1) == 0)
  {
    return 0;
  }

  Layout = mlir::MemRefType::getLayout(&v112);
  v116 = v57;
  if (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout))
  {
    v58 = mlir::MemRefType::getShape(&v111);
    v60 = v59;
    ElementType = mlir::MemRefType::getElementType(&v112);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v112);
    v63 = mlir::MemRefType::get(v58, v60, ElementType, 0, 0, MemorySpace);
    goto LABEL_49;
  }

  v77 = v112;
  mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &Layout);
  v36 = computeCollapsedLayoutMap(v77, Layout, v116, 0);
  v79 = v78;
  v80 = Layout;
  if (v116)
  {
    v81 = Layout + 32 * v116 - 16;
    v82 = -32 * v116;
    do
    {
      v83 = *(v81 - 2);
      if (v81 != v83)
      {
        free(v83);
      }

      v81 -= 32;
      v82 += 32;
    }

    while (v82);
    v80 = Layout;
  }

  if (v80 != &v117)
  {
    free(v80);
  }

  if ((v79 & 1) == 0)
  {
    v109[0] = "invalid source layout map or collapsing non-contiguous dims";
    v110 = 259;
    mlir::OpState::emitOpError(this, v109, &Layout);
    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v127 == 1)
    {
      if (v126 != &v127)
      {
        free(v126);
      }

      v99 = __p;
      if (__p)
      {
        v100 = v125;
        v101 = __p;
        if (v125 != __p)
        {
          do
          {
            v100 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v100 - 1);
          }

          while (v100 != v99);
          v101 = __p;
        }

        v125 = v99;
        operator delete(v101);
      }

      v102 = v122;
      if (v122)
      {
        v103 = v123;
        v104 = v122;
        if (v123 != v122)
        {
          do
          {
            v106 = *--v103;
            v105 = v106;
            *v103 = 0;
            if (v106)
            {
              MEMORY[0x259C63150](v105, 0x1000C8077774924);
            }
          }

          while (v103 != v102);
          v104 = v122;
        }

        v123 = v102;
        operator delete(v104);
      }

      if (v118 != v121)
      {
        free(v118);
      }
    }

    v63 = 0;
    if ((v79 & 1) == 0)
    {
      return v36;
    }

    goto LABEL_49;
  }

  v85 = mlir::MemRefType::getShape(&v111);
  v87 = v86;
  v88 = mlir::MemRefType::getElementType(&v112);
  if (!v36)
  {
    goto LABEL_159;
  }

  v89 = *v36;
  {
    mlir::memref::ReinterpretCastOp::build();
    v90 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v91 = *(v89 + 8);
    v92 = *(v89 + 16);
    if (v92)
    {
      goto LABEL_91;
    }

LABEL_159:
    v107 = 0;
    goto LABEL_160;
  }

  v90 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v91 = *(v89 + 8);
  v92 = *(v89 + 16);
  if (!v92)
  {
    goto LABEL_159;
  }

LABEL_91:
  v93 = v91;
  v94 = v92;
  do
  {
    v95 = v94 >> 1;
    v96 = &v93[2 * (v94 >> 1)];
    v98 = *v96;
    v97 = v96 + 2;
    v94 += ~(v94 >> 1);
    if (v98 < v90)
    {
      v93 = v97;
    }

    else
    {
      v94 = v95;
    }
  }

  while (v94);
  if (v93 == &v91[2 * v92] || *v93 != v90)
  {
    goto LABEL_159;
  }

  v107 = v93[1];
LABEL_160:
  v108 = mlir::MemRefType::getMemorySpace(&v112);
  v63 = mlir::MemRefType::get(v85, v87, v88, v36, v107, v108);
  if ((v79 & 1) == 0)
  {
    return v36;
  }

LABEL_49:
  if (v63 == v111)
  {
    return 1;
  }

  v109[0] = "expected collapsed type to be ";
  v110 = 259;
  mlir::OpState::emitOpError(this, v109, &Layout);
  if (Layout)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v113, v63);
    if (v119 >= v120)
    {
      if (v118 > &v113 || v118 + 24 * v119 <= &v113)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v64 = v118 + 24 * v119;
    v65 = v113;
    *(v64 + 2) = v114;
    *v64 = v65;
    v66 = ++v119;
    if (Layout)
    {
      LODWORD(v113) = 3;
      *(&v113 + 1) = " but found ";
      v114 = 11;
      if (v66 >= v120)
      {
        if (v118 > &v113 || v118 + 24 * v66 <= &v113)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v67 = v118 + 24 * v119;
      v68 = v113;
      *(v67 + 2) = v114;
      *v67 = v68;
      ++v119;
      if (Layout)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v113, v111);
        if (v119 >= v120)
        {
          if (v118 > &v113 || v118 + 24 * v119 <= &v113)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v69 = v118 + 24 * v119;
        v70 = v113;
        *(v69 + 2) = v114;
        *v69 = v70;
        ++v119;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
  if (Layout)
  {
    mlir::InFlightDiagnostic::report(&Layout);
  }

  if (v127 == 1)
  {
    if (v126 != &v127)
    {
      free(v126);
    }

    v71 = __p;
    if (__p)
    {
      v72 = v125;
      v73 = __p;
      if (v125 != __p)
      {
        do
        {
          v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
        }

        while (v72 != v71);
        v73 = __p;
      }

      v125 = v71;
      operator delete(v73);
    }

    v40 = v122;
    if (!v122)
    {
      goto LABEL_81;
    }

    v74 = v123;
    v42 = v122;
    if (v123 == v122)
    {
      goto LABEL_80;
    }

    do
    {
      v76 = *--v74;
      v75 = v76;
      *v74 = 0;
      if (v76)
      {
        MEMORY[0x259C63150](v75, 0x1000C8077774924);
      }
    }

    while (v74 != v40);
    goto LABEL_79;
  }

  return v36;
}

uint64_t mlir::memref::ExpandShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v68[16] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 56);
  v62 = v2;
  v4 = *(*(v2 + 72) + 24);
  if ((*(v2 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  v6 = *v3;
  if (*v3)
  {
    v7 = mlir::DenseElementsAttr::classof(*v3);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v66 = v8;
    if (v7)
    {
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v10)
      {
        goto LABEL_79;
      }

      v11 = *v10;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = v10;
        mlir::tensor::ExpandShapeOp::fold();
        v10 = v58;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      v15 = v13;
      v16 = v14;
      do
      {
        v17 = v16 >> 1;
        v18 = &v15[2 * (v16 >> 1)];
        v20 = *v18;
        v19 = v18 + 2;
        v16 += ~(v16 >> 1);
        if (v20 < v12)
        {
          v15 = v19;
        }

        else
        {
          v16 = v17;
        }
      }

      while (v16);
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_79:
      v59 = 0;
      return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v4 = *(*(v2 + 72) + 24);
  }

  v66 = v4;
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v21 = result;
  result = 0;
  v22 = *(*(v21 + 48) + 16);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id ? v21 : 0;
  v61 = v24;
  if (!v23)
  {
    return result;
  }

  v60 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v62 + 36) ? v62 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  result = 0;
  if (v60 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return result;
  }

  Shape = mlir::MemRefType::getShape(&v60);
  if (!v28)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  v29 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v29 < 3)
  {
    v30 = 0;
    v31 = Shape;
    goto LABEL_38;
  }

  v32 = v29 + 1;
  v33 = (v29 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v31 = (Shape + 8 * v33);
  v34 = (Shape + 16);
  v35 = 0uLL;
  v36 = vnegq_f64(0);
  v37 = v33;
  v38 = 0uLL;
  do
  {
    v35 = vsubq_s64(v35, vceqq_s64(v34[-1], v36));
    v38 = vsubq_s64(v38, vceqq_s64(*v34, v36));
    v34 += 2;
    v37 -= 4;
  }

  while (v37);
  v30 = vaddvq_s64(vaddq_s64(v38, v35));
  if (v32 != v33)
  {
    do
    {
LABEL_38:
      v39 = *v31++;
      if (v39 == 0x8000000000000000)
      {
        ++v30;
      }
    }

    while (v31 != (Shape + 8 * v28));
  }

  if (v30 <= 1)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v62, &v66);
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v61, &v63);
  v40 = v64;
  if (v67 == v64)
  {
    v41 = v63;
    if (v67)
    {
      v42 = (v63 + 8);
      v43 = 32 * v67;
      v44 = (v66 + 8);
      while (1)
      {
        v45 = *v44;
        if (v45 != *v42 || memcmp(*(v44 - 1), *(v42 - 1), 8 * v45))
        {
          break;
        }

        v42 += 4;
        v44 += 4;
        v43 -= 32;
        if (!v43)
        {
          goto LABEL_49;
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_49:
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
    v41 = v63;
  }

  if (v40)
  {
    v47 = &v41[4 * v40 - 2];
    v48 = -32 * v40;
    do
    {
      v49 = *(v47 - 16);
      if (v47 != v49)
      {
        free(v49);
      }

      v47 -= 32;
      v48 += 32;
    }

    while (v48);
    v41 = v63;
  }

  if (v41 != &v65)
  {
    free(v41);
  }

  if ((v46 & 1) != 0 || ((mlir::MemRefType::getShape(&v60), v51 = v50, *(v61 + 36)) ? (v52 = v61 - 16) : (v52 = 0), (v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8), mlir::MemRefType::getShape(&v63), v51 >= v53) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>(mlir::memref::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::memref::ExpandShapeOp)#1}>(v66, v67, &v60)))
  {
    result = 0;
  }

  else
  {
    result = *(*(v61 + 72) + 24) | 4;
  }

  v54 = v66;
  v55 = result;
  if (v67)
  {
    v56 = (v66 + 32 * v67 - 16);
    v57 = -32 * v67;
    do
    {
      if (v56 != *(v56 - 2))
      {
        free(*(v56 - 2));
        result = v55;
      }

      v56 -= 4;
      v57 += 32;
    }

    while (v57);
    v54 = v66;
  }

  if (v54 != v68)
  {
    free(v54);
    return v55;
  }

  return result;
}

uint64_t mlir::memref::CollapseShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v68[16] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 48);
  v62 = v2;
  v4 = *(*(v2 + 72) + 24);
  if ((*(v2 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  v6 = *v3;
  if (*v3)
  {
    v7 = mlir::DenseElementsAttr::classof(*v3);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v66 = v8;
    if (v7)
    {
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v10)
      {
        goto LABEL_79;
      }

      v11 = *v10;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = v10;
        mlir::tensor::ExpandShapeOp::fold();
        v10 = v58;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      v15 = v13;
      v16 = v14;
      do
      {
        v17 = v16 >> 1;
        v18 = &v15[2 * (v16 >> 1)];
        v20 = *v18;
        v19 = v18 + 2;
        v16 += ~(v16 >> 1);
        if (v20 < v12)
        {
          v15 = v19;
        }

        else
        {
          v16 = v17;
        }
      }

      while (v16);
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_79:
      v59 = 0;
      return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v4 = *(*(v2 + 72) + 24);
  }

  v66 = v4;
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v21 = result;
  result = 0;
  v22 = *(*(v21 + 48) + 16);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id ? v21 : 0;
  v61 = v24;
  if (!v23)
  {
    return result;
  }

  v60 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v62 + 36) ? v62 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  result = 0;
  if (v60 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return result;
  }

  Shape = mlir::MemRefType::getShape(&v60);
  if (!v28)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  v29 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v29 < 3)
  {
    v30 = 0;
    v31 = Shape;
    goto LABEL_38;
  }

  v32 = v29 + 1;
  v33 = (v29 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v31 = (Shape + 8 * v33);
  v34 = (Shape + 16);
  v35 = 0uLL;
  v36 = vnegq_f64(0);
  v37 = v33;
  v38 = 0uLL;
  do
  {
    v35 = vsubq_s64(v35, vceqq_s64(v34[-1], v36));
    v38 = vsubq_s64(v38, vceqq_s64(*v34, v36));
    v34 += 2;
    v37 -= 4;
  }

  while (v37);
  v30 = vaddvq_s64(vaddq_s64(v38, v35));
  if (v32 != v33)
  {
    do
    {
LABEL_38:
      v39 = *v31++;
      if (v39 == 0x8000000000000000)
      {
        ++v30;
      }
    }

    while (v31 != (Shape + 8 * v28));
  }

  if (v30 <= 1)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v62, &v66);
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v61, &v63);
  v40 = v64;
  if (v67 == v64)
  {
    v41 = v63;
    if (v67)
    {
      v42 = (v63 + 8);
      v43 = 32 * v67;
      v44 = (v66 + 8);
      while (1)
      {
        v45 = *v44;
        if (v45 != *v42 || memcmp(*(v44 - 1), *(v42 - 1), 8 * v45))
        {
          break;
        }

        v42 += 4;
        v44 += 4;
        v43 -= 32;
        if (!v43)
        {
          goto LABEL_49;
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_49:
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
    v41 = v63;
  }

  if (v40)
  {
    v47 = &v41[4 * v40 - 2];
    v48 = -32 * v40;
    do
    {
      v49 = *(v47 - 16);
      if (v47 != v49)
      {
        free(v49);
      }

      v47 -= 32;
      v48 += 32;
    }

    while (v48);
    v41 = v63;
  }

  if (v41 != &v65)
  {
    free(v41);
  }

  if ((v46 & 1) != 0 || ((mlir::MemRefType::getShape(&v60), v51 = v50, *(v61 + 36)) ? (v52 = v61 - 16) : (v52 = 0), (v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8), mlir::MemRefType::getShape(&v63), v51 >= v53) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>(mlir::memref::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::memref::ExpandShapeOp)#1}>(v66, v67, &v60)))
  {
    result = 0;
  }

  else
  {
    result = *(*(v61 + 72) + 24) | 4;
  }

  v54 = v66;
  v55 = result;
  if (v67)
  {
    v56 = (v66 + 32 * v67 - 16);
    v57 = -32 * v67;
    do
    {
      if (v56 != *(v56 - 2))
      {
        free(*(v56 - 2));
        result = v55;
      }

      v56 -= 4;
      v57 += 32;
    }

    while (v57);
    v54 = v66;
  }

  if (v54 != v68)
  {
    free(v54);
    return v55;
  }

  return result;
}

uint64_t mlir::memref::ReshapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "reshape", 7);
}

BOOL mlir::memref::ReshapeOp::verify(mlir::Operation **this)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v2)
  {
    goto LABEL_17;
  }

  v5 = *v2;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    mlir::tensor::ExpandShapeOp::fold();
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
LABEL_17:
    Layout = v2;
    v61 = 0;
    ElementType = mlir::ShapedType::getElementType(&Layout);
    if (!v4)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  v26 = v9[1];
  Layout = v2;
  v61 = v26;
  ElementType = mlir::ShapedType::getElementType(&Layout);
  if (!v4)
  {
    goto LABEL_32;
  }

LABEL_18:
  v16 = *v4;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = v16;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v27 + 8);
    v19 = *(v27 + 16);
    if (!v19)
    {
      goto LABEL_32;
    }
  }

  v20 = v18;
  v21 = v19;
  do
  {
    v22 = v21 >> 1;
    v23 = &v20[2 * (v21 >> 1)];
    v25 = *v23;
    v24 = v23 + 2;
    v21 += ~(v21 >> 1);
    if (v25 < v17)
    {
      v20 = v24;
    }

    else
    {
      v21 = v22;
    }
  }

  while (v21);
  if (v20 == &v18[2 * v19] || *v20 != v17)
  {
LABEL_32:
    Layout = v4;
    v61 = 0;
    if (ElementType == mlir::ShapedType::getElementType(&Layout))
    {
      goto LABEL_33;
    }

LABEL_65:
    v58[0] = "element types of source and destination memref types should be the same";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &Layout);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v67;
        v45 = __p;
        if (v67 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v67 = v43;
        operator delete(v45);
      }

      v37 = v64;
      if (!v64)
      {
        goto LABEL_99;
      }

      v46 = v65;
      v39 = v64;
      if (v65 == v64)
      {
        goto LABEL_98;
      }

      do
      {
        v48 = *--v46;
        v47 = v48;
        *v46 = 0;
        if (v48)
        {
          MEMORY[0x259C63150](v47, 0x1000C8077774924);
        }
      }

      while (v46 != v37);
      goto LABEL_97;
    }

    return v33;
  }

  v42 = v20[1];
  Layout = v4;
  v61 = v42;
  if (ElementType != mlir::ShapedType::getElementType(&Layout))
  {
    goto LABEL_65;
  }

LABEL_33:
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v28 = v2;
  }

  else
  {
    v28 = 0;
  }

  v57 = v28;
  if (v28 && (Layout = mlir::MemRefType::getLayout(&v57), v61 = v29, (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout) & 1) == 0))
  {
    v58[0] = "source memref type should have identity affine map";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &Layout);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v67;
        v36 = __p;
        if (v67 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v67 = v34;
        operator delete(v36);
      }

      v37 = v64;
      if (!v64)
      {
        goto LABEL_99;
      }

      v38 = v65;
      v39 = v64;
      if (v65 == v64)
      {
        goto LABEL_98;
      }

      do
      {
        v41 = *--v38;
        v40 = v41;
        *v38 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v38 != v37);
      goto LABEL_97;
    }
  }

  else
  {
    Layout = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = *mlir::MemRefType::getShape(&Layout);
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v31 = v4;
    }

    else
    {
      v31 = 0;
    }

    v57 = v31;
    if (!v31)
    {
      return 1;
    }

    Layout = mlir::MemRefType::getLayout(&v57);
    v61 = v32;
    if (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout))
    {
      if (v30 == 0x8000000000000000)
      {
        v58[0] = "cannot use shape operand with dynamic length to reshape to statically-ranked memref type";
        v59 = 259;
        mlir::OpState::emitOpError(this, v58, &Layout);
        v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
        if (Layout)
        {
          mlir::InFlightDiagnostic::report(&Layout);
        }

        if (v69 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v61);
        }

        return v33;
      }

      mlir::MemRefType::getShape(&v57);
      if (v30 != v55)
      {
        v58[0] = "length of shape operand differs from the result's memref rank";
        v59 = 259;
        mlir::OpState::emitOpError(this, v58, &Layout);
        v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&Layout);
        return v33;
      }

      return 1;
    }

    v58[0] = "result memref type should have identity affine map";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &Layout);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v49 = __p;
      if (__p)
      {
        v50 = v67;
        v51 = __p;
        if (v67 != __p)
        {
          do
          {
            v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
          }

          while (v50 != v49);
          v51 = __p;
        }

        v67 = v49;
        operator delete(v51);
      }

      v37 = v64;
      if (!v64)
      {
        goto LABEL_99;
      }

      v52 = v65;
      v39 = v64;
      if (v65 == v64)
      {
LABEL_98:
        v65 = v37;
        operator delete(v39);
LABEL_99:
        if (v62 != &v63)
        {
          free(v62);
        }

        return v33;
      }

      do
      {
        v54 = *--v52;
        v53 = v54;
        *v52 = 0;
        if (v54)
        {
          MEMORY[0x259C63150](v53, 0x1000C8077774924);
        }
      }

      while (v52 != v37);
LABEL_97:
      v39 = v64;
      goto LABEL_98;
    }
  }

  return v33;
}

uint64_t mlir::memref::SubViewOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "subview", 7);
}

uint64_t mlir::memref::SubViewOp::inferResultType(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, mlir::AffineMap *a5, uint64_t *a6, uint64_t a7)
{
  v60[7] = *MEMORY[0x277D85DE8];
  v54 = a1;
  mlir::MemRefType::getShape(&v54);
  mlir::getStridesAndOffset(v54, &v58);
  v13 = a3;
  v14 = v60[6];
  v15 = v58;
  if (v13 && v59)
  {
    v16 = 8 * v59 - 8;
    v17 = 8 * v13 - 8;
    v18 = v58;
    do
    {
      v19 = *a2;
      v20 = *v18;
      if (v14 == 0x8000000000000000)
      {
        v21 = 0;
      }

      else
      {
        v21 = v14;
      }

      v22 = v20 == 0x8000000000000000;
      v23 = v19 * v20;
      if (v20 == 0x8000000000000000)
      {
        v23 = 0;
      }

      if (!v19)
      {
        v22 = 0;
        v23 = 0;
      }

      if (v20)
      {
        v24 = v19 == 0x8000000000000000;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v25 = v20 != 0;
      }

      else
      {
        v25 = v22;
      }

      if (v24)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23;
      }

      v27 = v26 + v21;
      if (v14 == 0x8000000000000000)
      {
        v25 = 1;
      }

      if (v25)
      {
        v14 = 0x8000000000000000;
      }

      else
      {
        v14 = v27;
      }

      if (!v17)
      {
        break;
      }

      ++a2;
      ++v18;
      v28 = v16;
      v16 -= 8;
      v17 -= 8;
    }

    while (v28);
  }

  v55 = v57;
  v56 = 0x400000000;
  if (v13 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v59 && a7)
  {
    v29 = 8 * a7 - 8;
    v30 = 8 * v59 - 8;
    while (1)
    {
      v31 = *a6;
      if (*a6)
      {
        v32 = *v15;
        if (*v15 != 0x8000000000000000 && v32)
        {
          v33 = 0x8000000000000000;
          if (v31 == 0x8000000000000000)
          {
            v34 = v56;
            if (v56 >= HIDWORD(v56))
            {
              goto LABEL_42;
            }
          }

          else
          {
            v33 = v32 * v31;
            v34 = v56;
            if (v56 >= HIDWORD(v56))
            {
LABEL_42:
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }
          }

          goto LABEL_37;
        }
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      v34 = v56;
      if (v56 >= HIDWORD(v56))
      {
        goto LABEL_42;
      }

LABEL_37:
      *(v55 + v34) = v33;
      LODWORD(v56) = v56 + 1;
      if (v30)
      {
        ++v15;
        ++a6;
        v35 = v29;
        v29 -= 8;
        v30 -= 8;
        if (v35)
        {
          continue;
        }
      }

      break;
    }
  }

  ElementType = mlir::MemRefType::getElementType(&v54);
  Context = mlir::Type::getContext(&v54);
  v38 = mlir::StridedLayoutAttr::get(Context, v14, v55, v56);
  v39 = v38;
  if (!v38)
  {
    goto LABEL_58;
  }

  v40 = *v38;
  {
    mlir::memref::ReinterpretCastOp::build();
    v41 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (v43)
    {
      goto LABEL_48;
    }

LABEL_58:
    v50 = 0;
    goto LABEL_59;
  }

  v41 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v42 = *(v40 + 8);
  v43 = *(v40 + 16);
  if (!v43)
  {
    goto LABEL_58;
  }

LABEL_48:
  v44 = v42;
  v45 = v43;
  do
  {
    v46 = v45 >> 1;
    v47 = &v44[2 * (v45 >> 1)];
    v49 = *v47;
    v48 = v47 + 2;
    v45 += ~(v45 >> 1);
    if (v49 < v41)
    {
      v44 = v48;
    }

    else
    {
      v45 = v46;
    }
  }

  while (v45);
  if (v44 == &v42[2 * v43] || *v44 != v41)
  {
    goto LABEL_58;
  }

  v50 = v44[1];
LABEL_59:
  MemorySpace = mlir::MemRefType::getMemorySpace(&v54);
  v52 = mlir::MemRefType::get(a4, a5, ElementType, v39, v50, MemorySpace);
  if (v55 != v57)
  {
    free(v55);
  }

  if (v58 != v60)
  {
    free(v58);
  }

  return v52;
}

uint64_t mlir::memref::SubViewOp::inferResultType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v44[6] = *MEMORY[0x277D85DE8];
  v42 = v44;
  v43 = 0x600000000;
  v39 = v41;
  v40 = 0x600000000;
  __src = v38;
  v37 = 0x600000000;
  v34[0] = v35;
  v34[1] = 0x600000000;
  v32[0] = v33;
  v32[1] = 0x600000000;
  v30[0] = v31;
  v30[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a2, a3, v34, &v42);
  mlir::dispatchIndexOpFoldResults(a4, a5, v32, &v39);
  mlir::dispatchIndexOpFoldResults(a6, a7, v30, &__src);
  v27 = v29;
  v28 = 0x600000000;
  v12 = v43;
  if (v43)
  {
    if (v43 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v29, v42, 8 * v43);
    LODWORD(v28) = v12;
  }

  hasValidSizesOffsets = mlir::hasValidSizesOffsets(&v27);
  if (v27 != v29)
  {
    free(v27);
  }

  if (!hasValidSizesOffsets)
  {
    goto LABEL_24;
  }

  v24 = v26;
  v25 = 0x600000000;
  v14 = v40;
  if (v40)
  {
    if (v40 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v26, v39, 8 * v40);
    LODWORD(v25) = v14;
  }

  v15 = mlir::hasValidSizesOffsets(&v24);
  if (v24 != v26)
  {
    free(v24);
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v21 = v23;
  v22 = 0x600000000;
  v16 = v37;
  if (v37)
  {
    if (v37 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v23, __src, 8 * v37);
    LODWORD(v22) = v16;
  }

  hasValidStrides = mlir::hasValidStrides(&v21);
  if (v21 != v23)
  {
    free(v21);
  }

  if (!hasValidStrides)
  {
LABEL_24:
    v18 = 0;
    v19 = v30[0];
    if (v30[0] == v31)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v18 = mlir::memref::SubViewOp::inferResultType(a1, v42, v43, v39, v40, __src, v37);
  v19 = v30[0];
  if (v30[0] != v31)
  {
LABEL_25:
    free(v19);
  }

LABEL_26:
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  if (__src != v38)
  {
    free(__src);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  return v18;
}

uint64_t mlir::memref::SubViewOp::inferRankReducedResultType(uint64_t *a1, mlir::AffineMap *a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t *a6, mlir::AffineMap *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v55 = *MEMORY[0x277D85DE8];
  v47 = mlir::memref::SubViewOp::inferResultType(a3, a4, a5, a6, a7, a9, a10);
  mlir::MemRefType::getShape(&v47);
  if (v12 == a2)
  {
    return v47;
  }

  Shape = mlir::MemRefType::getShape(&v47);
  mlir::computeRankReductionMask(Shape, v15, a1, a2, 0, &v51);
  Layout = mlir::MemRefType::getLayout(&v47);
  v48 = v50;
  v49 = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  Strides = mlir::StridedLayoutAttr::getStrides(&Layout);
  if (v17)
  {
    v18 = 0;
    v19 = &Strides[v17];
    while (1)
    {
      if (v51)
      {
        v21 = 4;
        v20 = &v52;
      }

      else
      {
        v20 = v52;
        v21 = v53;
        if (!v53)
        {
          goto LABEL_16;
        }
      }

      v22 = v21 - 1;
      v23 = (v21 - 1) & (37 * v18);
      v24 = v20[v23];
      if (v24 != v18)
      {
        v26 = 1;
        while (v24 != -1)
        {
          v27 = v23 + v26++;
          v23 = v27 & v22;
          v24 = v20[v23];
          if (v24 == v18)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_16;
      }

LABEL_14:
      v25 = &v20[v23];
      if (v51)
      {
        if (v25 != &v54)
        {
          goto LABEL_8;
        }

LABEL_16:
        if (v49 >= HIDWORD(v49))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v48 + v49) = *Strides;
        LODWORD(v49) = v49 + 1;
        ++v18;
        if (++Strides == v19)
        {
          break;
        }
      }

      else
      {
        if (v25 == v52 + 4 * v53)
        {
          goto LABEL_16;
        }

LABEL_8:
        ++v18;
        if (++Strides == v19)
        {
          break;
        }
      }
    }
  }

  ElementType = mlir::MemRefType::getElementType(&v47);
  Context = mlir::Attribute::getContext(&Layout);
  Offset = mlir::StridedLayoutAttr::getOffset(&Layout);
  v31 = mlir::StridedLayoutAttr::get(Context, Offset, v48, v49);
  v32 = v31;
  if (!v31)
  {
    goto LABEL_38;
  }

  v33 = *v31;
  {
    v34 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (!v36)
    {
      goto LABEL_38;
    }
  }

  else
  {
    mlir::memref::ReinterpretCastOp::build();
    v34 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (!v36)
    {
      goto LABEL_38;
    }
  }

  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 != &v35[2 * v36] && *v37 == v34)
  {
    v43 = v37[1];
    goto LABEL_39;
  }

LABEL_38:
  v43 = 0;
LABEL_39:
  MemorySpace = mlir::MemRefType::getMemorySpace(&v47);
  result = mlir::MemRefType::get(a1, a2, ElementType, v32, v43, MemorySpace);
  if (v48 != v50)
  {
    v45 = result;
    free(v48);
    result = v45;
  }

  if (v54 == 1 && (v51 & 1) == 0)
  {
    llvm::deallocate_buffer(v52, (4 * v53));
  }

  return result;
}

uint64_t mlir::memref::SubViewOp::inferRankReducedResultType(uint64_t *a1, mlir::AffineMap *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v32[6] = *MEMORY[0x277D85DE8];
  v30 = v32;
  v31 = 0x600000000;
  v27 = v29;
  v28 = 0x600000000;
  v24 = v26;
  v25 = 0x600000000;
  v22[0] = v23;
  v22[1] = 0x600000000;
  v20[0] = v21;
  v20[1] = 0x600000000;
  v18[0] = v19;
  v18[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a4, a5, v22, &v30);
  mlir::dispatchIndexOpFoldResults(a6, a7, v20, &v27);
  mlir::dispatchIndexOpFoldResults(a9, a10, v18, &v24);
  v14 = mlir::memref::SubViewOp::inferRankReducedResultType(a1, a2, a3, v30, v31, v27, v28, v13, v24, v25);
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  return v14;
}

void mlir::memref::SubViewOp::build(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v36 = v38;
  v37 = 0x600000000;
  v33 = &v35;
  v34 = 0x600000000;
  v30 = &v32;
  v31 = 0x600000000;
  v27 = &v29;
  v28 = 0x600000000;
  v24 = &v26;
  v25 = 0x600000000;
  v21 = &v23;
  v22 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v27, &v36);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v24, &v33);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v21, &v30);
  if (a3)
  {
    *(a2 + 192) = 0;
    v16 = *(a2 + 120);
    if (a12 + v16 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::memref::SubViewOp::inferResultType(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8, v36, v37, v33, v34, v30, v31);
    *(a2 + 192) = 0;
    v16 = *(a2 + 120);
    if (a12 + v16 <= *(a2 + 124))
    {
LABEL_3:
      if (a12)
      {
        memcpy((*(a2 + 112) + 16 * v16), __src, 16 * a12);
        LODWORD(v16) = *(a2 + 120);
      }

      *(a2 + 120) = v16 + a12;
      mlir::ValueRange::ValueRange(&v20, v27, v28);
      mlir::ValueRange::ValueRange(&v19, v24, v25);
      mlir::ValueRange::ValueRange(&v18, v21, v22);
      mlir::Builder::getDenseI64ArrayAttr();
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::memref::SubViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a4;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::OperationState::addOperands(a2, a9, a10);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  v20[6] = 1;
  v20[7] = a6;
  v20[8] = a8;
  v20[9] = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a11;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = a12;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 16) = a13;
  v24 = *(a2 + 72);
  if (v24 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v24) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::memref::SubViewOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *a11, uint64_t a12)
{
  v47[6] = *MEMORY[0x277D85DE8];
  __src = v44;
  *v43 = 0x400000000;
  if (((8 * a5) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = 0;
  v19 = v44;
  v20 = 8 * a5;
  if (a5)
  {
    v21 = v44;
    v22 = 8 * a5;
    do
    {
      v23 = *a4++;
      *v21++ = mlir::Builder::getI64IntegerAttr(a1, v23) & 0xFFFFFFFFFFFFFFFBLL;
      v22 -= 8;
    }

    while (v22);
    v18 = v43[0];
    v19 = __src;
  }

  v45 = v47;
  v46 = 0x600000000;
  v24 = v18 + (v20 >> 3);
  v43[0] = v24;
  if (v24)
  {
    if (v19 == v44)
    {
      v25 = v18 + (v20 >> 3);
      if (v24 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v45, v19, 8 * v25);
      v19 = __src;
      LODWORD(v46) = v24;
    }

    else
    {
      v45 = v19;
      LODWORD(v46) = v18 + (v20 >> 3);
      HIDWORD(v46) = v43[1];
      __src = v44;
      v43[1] = 0;
      v19 = v44;
    }

    v43[0] = 0;
  }

  if (v19 != v44)
  {
    free(v19);
  }

  __dst = v41;
  v40 = 0x400000000;
  if (((8 * a7) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v26 = 0;
  v27 = v41;
  v28 = 8 * a7;
  if (a7)
  {
    v29 = v41;
    v30 = v28;
    do
    {
      v31 = *a6++;
      *v29++ = mlir::Builder::getI64IntegerAttr(a1, v31) & 0xFFFFFFFFFFFFFFFBLL;
      v30 -= 8;
    }

    while (v30);
    v26 = v40;
    v27 = __dst;
  }

  __src = v44;
  *v43 = 0x600000000;
  v32 = v26 + (v28 >> 3);
  LODWORD(v40) = v32;
  if (v32)
  {
    if (v27 == v41)
    {
      v33 = v26 + (v28 >> 3);
      if (v32 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__src, v27, 8 * v33);
      v27 = __dst;
      v43[0] = v32;
    }

    else
    {
      __src = v27;
      v43[0] = v26 + (v28 >> 3);
      v43[1] = HIDWORD(v40);
      __dst = v41;
      HIDWORD(v40) = 0;
      v27 = v41;
    }

    LODWORD(v40) = 0;
  }

  if (v27 != v41)
  {
    free(v27);
  }

  if (((8 * a10) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a10)
  {
    v35 = v38;
    v36 = 8 * a10;
    do
    {
      v37 = *a9++;
      *v35++ = mlir::Builder::getI64IntegerAttr(a1, v37) & 0xFFFFFFFFFFFFFFFBLL;
      v36 -= 8;
    }

    while (v36);
  }

  __dst = v41;
  v40 = 0x600000000;
  if (a10)
  {
    if (a10 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(__dst, v38, 8 * a10);
    LODWORD(v40) = a10;
  }

  mlir::memref::SubViewOp::build(a1, a2, 0, a3, v45, v46, __src, v43[0], __dst, a10, a11, a12);
}

void mlir::memref::SubViewOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *a11, uint64_t a12)
{
  v48[6] = *MEMORY[0x277D85DE8];
  __src = v45;
  *v44 = 0x400000000;
  if (((8 * a6) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = 0;
  v19 = v45;
  v20 = 8 * a6;
  if (a6)
  {
    v21 = v45;
    v22 = 8 * a6;
    do
    {
      v23 = *a5++;
      *v21++ = mlir::Builder::getI64IntegerAttr(a1, v23) & 0xFFFFFFFFFFFFFFFBLL;
      v22 -= 8;
    }

    while (v22);
    v18 = v44[0];
    v19 = __src;
  }

  v46 = v48;
  v47 = 0x600000000;
  v24 = v18 + (v20 >> 3);
  v44[0] = v24;
  if (v24)
  {
    if (v19 == v45)
    {
      v25 = v18 + (v20 >> 3);
      if (v24 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v46, v19, 8 * v25);
      v19 = __src;
      LODWORD(v47) = v24;
    }

    else
    {
      v46 = v19;
      LODWORD(v47) = v18 + (v20 >> 3);
      HIDWORD(v47) = v44[1];
      __src = v45;
      v44[1] = 0;
      v19 = v45;
    }

    v44[0] = 0;
  }

  if (v19 != v45)
  {
    free(v19);
  }

  __dst = v42;
  v41 = 0x400000000;
  if (((8 * a8) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v26 = 0;
  v27 = v42;
  v28 = 8 * a8;
  if (a8)
  {
    v29 = v42;
    v30 = v28;
    do
    {
      v31 = *a7++;
      *v29++ = mlir::Builder::getI64IntegerAttr(a1, v31) & 0xFFFFFFFFFFFFFFFBLL;
      v30 -= 8;
    }

    while (v30);
    v26 = v41;
    v27 = __dst;
  }

  __src = v45;
  *v44 = 0x600000000;
  v32 = v26 + (v28 >> 3);
  LODWORD(v41) = v32;
  if (v32)
  {
    if (v27 == v42)
    {
      v33 = v26 + (v28 >> 3);
      if (v32 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__src, v27, 8 * v33);
      v27 = __dst;
      v44[0] = v32;
    }

    else
    {
      __src = v27;
      v44[0] = v26 + (v28 >> 3);
      v44[1] = HIDWORD(v41);
      __dst = v42;
      HIDWORD(v41) = 0;
      v27 = v42;
    }

    LODWORD(v41) = 0;
  }

  if (v27 != v42)
  {
    free(v27);
  }

  if (((8 * a10) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a10)
  {
    v35 = v39;
    v36 = 8 * a10;
    do
    {
      v37 = *a9++;
      *v35++ = mlir::Builder::getI64IntegerAttr(a1, v37) & 0xFFFFFFFFFFFFFFFBLL;
      v36 -= 8;
    }

    while (v36);
  }

  __dst = v42;
  v41 = 0x600000000;
  if (a10)
  {
    if (a10 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(__dst, v39, 8 * a10);
    LODWORD(v41) = a10;
  }

  mlir::memref::SubViewOp::build(a1, a2, a3, a4, v46, v47, __src, v44[0], __dst, a10, a11, a12);
}

void mlir::memref::SubViewOp::build(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10)
{
  v36 = *MEMORY[0x277D85DE8];
  __src = &v33[2];
  *v33 = 0x400000000;
  if (a6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v34 = a5;
  v35 = xmmword_25736B790;
  if (a6)
  {
    v16 = 0;
    v17 = &v33[2];
    do
    {
      *v17 = mlir::ValueRange::dereference_iterator(&v34, v16) | 4;
      v17 += 2;
      v16 = v35 + 1;
      *&v35 = v16;
    }

    while (v16 != a6);
    v18 = v33[0];
    v19 = __src;
  }

  else
  {
    v18 = 0;
    v19 = &v33[2];
  }

  v34 = &v35 + 2;
  *&v35 = 0x600000000;
  v20 = v18 + a6;
  v33[0] = v20;
  if (v20)
  {
    if (v19 == &v33[2])
    {
      if (v20 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v34, v19, 8 * v20);
      v19 = __src;
      LODWORD(v35) = v20;
    }

    else
    {
      v34 = v19;
      *&v35 = __PAIR64__(v33[1], v20);
      __src = &v33[2];
      v33[1] = 0;
      v19 = &v33[2];
    }

    v33[0] = 0;
  }

  if (v19 != &v33[2])
  {
    free(v19);
  }

  __dst = v31 + 8;
  *&v31[0] = 0x400000000;
  if (a8 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __src = a7;
  *v33 = xmmword_25736B790;
  if (a8)
  {
    v21 = 0;
    v22 = v31 + 1;
    do
    {
      *v22++ = mlir::ValueRange::dereference_iterator(&__src, v21) | 4;
      v21 = *v33 + 1;
      *v33 = v21;
    }

    while (v21 != a8);
    v23 = v31[0];
    v24 = __dst;
  }

  else
  {
    v23 = 0;
    v24 = v31 + 8;
  }

  __src = &v33[2];
  *v33 = 0x600000000;
  v25 = v23 + a8;
  LODWORD(v31[0]) = v25;
  if (v25)
  {
    if (v24 == v31 + 8)
    {
      if (v25 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__src, v24, 8 * v25);
      v24 = __dst;
      v33[0] = v25;
    }

    else
    {
      __src = v24;
      v33[0] = v25;
      v33[1] = DWORD1(v31[0]);
      __dst = v31 + 8;
      DWORD1(v31[0]) = 0;
      v24 = v31 + 8;
    }

    LODWORD(v31[0]) = 0;
  }

  if (v24 != v31 + 8)
  {
    free(v24);
  }

  if (a10 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __dst = a9;
  v31[0] = xmmword_25736B790;
  if (a10)
  {
    v26 = 0;
    v27 = v29;
    do
    {
      *v27++ = mlir::ValueRange::dereference_iterator(&__dst, v26) | 4;
      v26 = *&v31[0] + 1;
      *&v31[0] = v26;
    }

    while (v26 != a10);
  }

  __dst = v31 + 8;
  *&v31[0] = 0x600000000;
  if (a10)
  {
    memcpy(__dst, v29, 8 * a10);
    LODWORD(v31[0]) = a10;
  }

  mlir::memref::SubViewOp::build(a1, a2, a3, a4, v34, v35, __src, v33[0], __dst, a10, 0, 0);
}

BOOL mlir::memref::SubViewOp::verify(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v36 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v35 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  MemorySpace = mlir::MemRefType::getMemorySpace(&v36);
  if (MemorySpace == mlir::MemRefType::getMemorySpace(&v35))
  {
    if (mlir::isStrided(v36))
    {
      v39 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }

    v50 = "base type ";
    v51 = 259;
    mlir::OpState::emitError(this, &v50, &v39);
    if (v39)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
      if (v41 >= v42)
      {
        if (v40 > &v37 || v40 + 24 * v41 <= &v37)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v23 = v40 + 24 * v41;
      v24 = v37;
      *(v23 + 2) = v38;
      *v23 = v24;
      v25 = ++v41;
      if (v39)
      {
        LODWORD(v37) = 3;
        *(&v37 + 1) = " is not strided";
        v38 = 15;
        if (v25 >= v42)
        {
          if (v40 > &v37 || v40 + 24 * v25 <= &v37)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v26 = v40 + 24 * v41;
        v27 = v37;
        *(v26 + 2) = v38;
        *v26 = v27;
        ++v41;
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v47;
        v30 = __p;
        if (v47 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v47 = v28;
        operator delete(v30);
      }

      v18 = v44;
      if (!v44)
      {
        goto LABEL_53;
      }

      v31 = v45;
      v20 = v44;
      if (v45 == v44)
      {
LABEL_52:
        v45 = v18;
        operator delete(v20);
LABEL_53:
        if (v40 != &v43)
        {
          free(v40);
        }

        return v14;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          MEMORY[0x259C63150](v32, 0x1000C8077774924);
        }
      }

      while (v31 != v18);
LABEL_51:
      v20 = v44;
      goto LABEL_52;
    }
  }

  else
  {
    v50 = "different memory spaces specified for base memref type ";
    v51 = 259;
    mlir::OpState::emitError(this, &v50, &v39);
    if (v39)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
      if (v41 >= v42)
      {
        if (v40 > &v37 || v40 + 24 * v41 <= &v37)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v40 + 24 * v41;
      v8 = v37;
      *(v7 + 2) = v38;
      *v7 = v8;
      v9 = ++v41;
      if (v39)
      {
        LODWORD(v37) = 3;
        *(&v37 + 1) = " and subview memref type ";
        v38 = 25;
        if (v9 >= v42)
        {
          if (v40 > &v37 || v40 + 24 * v9 <= &v37)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v40 + 24 * v41;
        v11 = v37;
        *(v10 + 2) = v38;
        *v10 = v11;
        ++v41;
        if (v39)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v37, v35);
          if (v41 >= v42)
          {
            if (v40 > &v37 || v40 + 24 * v41 <= &v37)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v40 + 24 * v41;
          v13 = v37;
          *(v12 + 2) = v38;
          *v12 = v13;
          ++v41;
        }
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v47;
        v17 = __p;
        if (v47 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v47 = v15;
        operator delete(v17);
      }

      v18 = v44;
      if (!v44)
      {
        goto LABEL_53;
      }

      v19 = v45;
      v20 = v44;
      if (v45 == v44)
      {
        goto LABEL_52;
      }

      do
      {
        v22 = *--v19;
        v21 = v22;
        *v19 = 0;
        if (v22)
        {
          MEMORY[0x259C63150](v21, 0x1000C8077774924);
        }
      }

      while (v19 != v18);
      goto LABEL_51;
    }
  }

  return v14;
}

BOOL produceSubViewErrorMsg(int a1, mlir::Operation *a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_14;
  }

  v4 = *a3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = a3;
    v15 = a1;
    mlir::tensor::ExpandShapeOp::fold();
    a1 = v15;
    a3 = v14;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
LABEL_14:
    v70 = a3;
    v71 = 0;
    if (a1 > 2)
    {
      goto LABEL_15;
    }

LABEL_74:
    if (a1 == 1)
    {
      v68[0] = "expected result rank to be smaller or equal to ";
      v69 = 259;
      mlir::Operation::emitError(v74, a2, v68);
      if (v74[0])
      {
        LODWORD(v72) = 3;
        *(&v72 + 1) = "the source rank. ";
        v73 = 17;
        if (v76 >= v77)
        {
          if (v75 > &v72 || v75 + 24 * v76 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v47 = v75 + 24 * v76;
        v48 = v72;
        *(v47 + 2) = v73;
        *v47 = v48;
        ++v76;
      }

      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
      if (v74[0])
      {
        mlir::InFlightDiagnostic::report(v74);
      }

      if (v84 == 1)
      {
        if (v83 != &v84)
        {
          free(v83);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v82;
          v51 = __p;
          if (v82 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v82 = v49;
          operator delete(v51);
        }

        v20 = v79;
        if (!v79)
        {
          goto LABEL_117;
        }

        v52 = v80;
        v22 = v79;
        if (v80 == v79)
        {
          goto LABEL_116;
        }

        do
        {
          v54 = *--v52;
          v53 = v54;
          *v52 = 0;
          if (v54)
          {
            MEMORY[0x259C63150](v53, 0x1000C8077774924);
          }
        }

        while (v52 != v20);
        goto LABEL_115;
      }
    }

    else
    {
      v55 = a3;
      v68[0] = "expected result type to be ";
      v69 = 259;
      mlir::Operation::emitError(v74, a2, v68);
      if (v74[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v55);
        if (v76 >= v77)
        {
          if (v75 > &v72 || v75 + 24 * v76 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v56 = v75 + 24 * v76;
        v57 = v72;
        *(v56 + 2) = v73;
        *v56 = v57;
        v58 = ++v76;
        if (v74[0])
        {
          LODWORD(v72) = 3;
          *(&v72 + 1) = " or a rank-reduced version. (mismatch of result sizes) ";
          v73 = 55;
          if (v58 >= v77)
          {
            if (v75 > &v72 || v75 + 24 * v58 <= &v72)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v59 = v75 + 24 * v76;
          v60 = v72;
          *(v59 + 2) = v73;
          *v59 = v60;
          ++v76;
        }
      }

      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
      if (v74[0])
      {
        mlir::InFlightDiagnostic::report(v74);
      }

      if (v84 == 1)
      {
        if (v83 != &v84)
        {
          free(v83);
        }

        v61 = __p;
        if (__p)
        {
          v62 = v82;
          v63 = __p;
          if (v82 != __p)
          {
            do
            {
              v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
            }

            while (v62 != v61);
            v63 = __p;
          }

          v82 = v61;
          operator delete(v63);
        }

        v20 = v79;
        if (!v79)
        {
          goto LABEL_117;
        }

        v64 = v80;
        v22 = v79;
        if (v80 == v79)
        {
          goto LABEL_116;
        }

        do
        {
          v66 = *--v64;
          v65 = v66;
          *v64 = 0;
          if (v66)
          {
            MEMORY[0x259C63150](v65, 0x1000C8077774924);
          }
        }

        while (v64 != v20);
        goto LABEL_115;
      }
    }

    return v16;
  }

  v46 = v8[1];
  v70 = a3;
  v71 = v46;
  if (a1 <= 2)
  {
    goto LABEL_74;
  }

LABEL_15:
  if (a1 == 3)
  {
    v68[0] = "expected result element type to be ";
    v69 = 259;
    mlir::Operation::emitError(v74, a2, v68);
    ElementType = mlir::ShapedType::getElementType(&v70);
    if (v74[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v72, ElementType);
      if (v76 >= v77)
      {
        if (v75 > &v72 || v75 + 24 * v76 <= &v72)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = v75 + 24 * v76;
      v27 = v72;
      *(v26 + 2) = v73;
      *v26 = v27;
      ++v76;
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
    if (v74[0])
    {
      mlir::InFlightDiagnostic::report(v74);
    }

    if (v84 == 1)
    {
      if (v83 != &v84)
      {
        free(v83);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v82;
        v30 = __p;
        if (v82 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v82 = v28;
        operator delete(v30);
      }

      v20 = v79;
      if (!v79)
      {
        goto LABEL_117;
      }

      v31 = v80;
      v22 = v79;
      if (v80 == v79)
      {
        goto LABEL_116;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          MEMORY[0x259C63150](v32, 0x1000C8077774924);
        }
      }

      while (v31 != v20);
      goto LABEL_115;
    }
  }

  else if (a1 == 4)
  {
    v68[0] = "expected result and source memory spaces to match.";
    v69 = 259;
    mlir::Operation::emitError(v74, a2, v68);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
    if (v74[0])
    {
      mlir::InFlightDiagnostic::report(v74);
    }

    if (v84 == 1)
    {
      if (v83 != &v84)
      {
        free(v83);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v82;
        v19 = __p;
        if (v82 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v82 = v17;
        operator delete(v19);
      }

      v20 = v79;
      if (!v79)
      {
        goto LABEL_117;
      }

      v21 = v80;
      v22 = v79;
      if (v80 == v79)
      {
LABEL_116:
        v80 = v20;
        operator delete(v22);
LABEL_117:
        if (v75 != &v78)
        {
          free(v75);
        }

        return v16;
      }

      do
      {
        v24 = *--v21;
        v23 = v24;
        *v21 = 0;
        if (v24)
        {
          MEMORY[0x259C63150](v23, 0x1000C8077774924);
        }
      }

      while (v21 != v20);
LABEL_115:
      v22 = v79;
      goto LABEL_116;
    }
  }

  else
  {
    v34 = a3;
    v68[0] = "expected result type to be ";
    v69 = 259;
    mlir::Operation::emitError(v74, a2, v68);
    if (v74[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v72, v34);
      if (v76 >= v77)
      {
        if (v75 > &v72 || v75 + 24 * v76 <= &v72)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = v75 + 24 * v76;
      v36 = v72;
      *(v35 + 2) = v73;
      *v35 = v36;
      v37 = ++v76;
      if (v74[0])
      {
        LODWORD(v72) = 3;
        *(&v72 + 1) = " or a rank-reduced version. (mismatch of result layout) ";
        v73 = 56;
        if (v37 >= v77)
        {
          if (v75 > &v72 || v75 + 24 * v37 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v75 + 24 * v76;
        v39 = v72;
        *(v38 + 2) = v73;
        *v38 = v39;
        ++v76;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
    if (v74[0])
    {
      mlir::InFlightDiagnostic::report(v74);
    }

    if (v84 == 1)
    {
      if (v83 != &v84)
      {
        free(v83);
      }

      v40 = __p;
      if (__p)
      {
        v41 = v82;
        v42 = __p;
        if (v82 != __p)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = __p;
        }

        v82 = v40;
        operator delete(v42);
      }

      v20 = v79;
      if (!v79)
      {
        goto LABEL_117;
      }

      v43 = v80;
      v22 = v79;
      if (v80 == v79)
      {
        goto LABEL_116;
      }

      do
      {
        v45 = *--v43;
        v44 = v45;
        *v43 = 0;
        if (v45)
        {
          MEMORY[0x259C63150](v44, 0x1000C8077774924);
        }
      }

      while (v43 != v20);
      goto LABEL_115;
    }
  }

  return v16;
}

uint64_t haveCompatibleStrides(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = a1;
  v15 = 0;
  v20[0] = v21;
  v20[1] = 0x600000000;
  v18[0] = v19;
  v18[1] = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, v20, &v16);
  v6 = mlir::getStridesAndOffset(a2, v18, &v15);
  if ((StridesAndOffset & 1) == 0 || (v6 & 1) == 0)
  {
    v13 = 0;
    v8 = v18[0];
    if (v18[0] == v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  mlir::MemRefType::getShape(&v17);
  v8 = v18[0];
  if (v7 < 1)
  {
LABEL_17:
    v13 = 1;
    if (v18[0] == v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = *a3;
  v10 = 0;
  v11 = 0;
  if ((*a3 & 1) == 0)
  {
    v12 = *v9;
    while (1)
    {
      if (((*(v12 + 8 * (v11 >> 6)) >> v11) & 1) == 0)
      {
        if (*(v20[0] + v11) != *(v18[0] + v10))
        {
          goto LABEL_22;
        }

        ++v10;
      }

      if (v7 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }

  while (((v9 >> 1) & ~(-1 << (v9 >> 58)) & (1 << v11)) != 0)
  {
LABEL_13:
    if (v7 == ++v11)
    {
      goto LABEL_17;
    }
  }

  if (*(v20[0] + v11) == *(v18[0] + v10))
  {
    ++v10;
    goto LABEL_13;
  }

LABEL_22:
  v13 = 0;
  if (v18[0] != v19)
  {
LABEL_18:
    free(v8);
  }

LABEL_19:
  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  return v13;
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 5)
  {
    *(v4 + 4) = 8293;
    *v4 = 1735287154;
    *(this + 4) += 6;
    v5 = *a2;
    v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
    v18 = v6 & (*a2 << 61 >> 63);
    if (v18)
    {
LABEL_3:
      mlir::Value::print(&v18, v3);
      v7 = *(v3 + 4);
      if (*(v3 + 3) != v7)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = llvm::raw_ostream::write(this, "range ", 6uLL);
    v5 = *a2;
    v6 = *a2 & 0xFFFFFFFFFFFFFFF8;
    v18 = v6 & (*a2 << 61 >> 63);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  if ((v5 & 4) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v6;
  }

  v17 = v14;
  mlir::Attribute::print(&v17, v3);
  v7 = *(v3 + 4);
  if (*(v3 + 3) != v7)
  {
LABEL_4:
    *v7 = 58;
    ++*(v3 + 4);
    v8 = a2[1];
    v9 = v8 & 0xFFFFFFFFFFFFFFF8;
    v18 = v8 & 0xFFFFFFFFFFFFFFF8 & (v8 << 61 >> 63);
    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v3 = llvm::raw_ostream::write(v3, ":", 1uLL);
  v8 = a2[1];
  v9 = v8 & 0xFFFFFFFFFFFFFFF8;
  v18 = v8 & 0xFFFFFFFFFFFFFFF8 & (v8 << 61 >> 63);
  if (v18)
  {
LABEL_5:
    mlir::Value::print(&v18, v3);
    v10 = *(v3 + 4);
    if (*(v3 + 3) != v10)
    {
      goto LABEL_6;
    }

LABEL_18:
    v3 = llvm::raw_ostream::write(v3, ":", 1uLL);
    v11 = a2[2];
    v12 = v11 & 0xFFFFFFFFFFFFFFF8;
    v18 = v11 & 0xFFFFFFFFFFFFFFF8 & (v11 << 61 >> 63);
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_14:
  if ((v8 & 4) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  v17 = v15;
  mlir::Attribute::print(&v17, v3);
  v10 = *(v3 + 4);
  if (*(v3 + 3) == v10)
  {
    goto LABEL_18;
  }

LABEL_6:
  *v10 = 58;
  ++*(v3 + 4);
  v11 = a2[2];
  v12 = v11 & 0xFFFFFFFFFFFFFFF8;
  v18 = v11 & 0xFFFFFFFFFFFFFFF8 & (v11 << 61 >> 63);
  if (v18)
  {
LABEL_7:
    mlir::Value::print(&v18, v3);
    return v3;
  }

LABEL_19:
  if ((v11 & 4) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16;
  mlir::Attribute::print(&v17, v3);
  return v3;
}

uint64_t mlir::getOrCreateRanges@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, mlir::IndexType **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v16[0] = a1;
  v16[1] = a2;
  result = mlir::OffsetSizeAndStrideOpInterface::getArrayAttrMaxRanks(v16);
  v9 = result;
  *a5 = a5 + 16;
  *(a5 + 8) = 0x800000000;
  if (result >= 9uLL)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (result)
  {
    v10 = 0;
    while (1)
    {
      if (mlir::OffsetSizeAndStrideOpInterface::isDynamicOffset(v16, v10))
      {
        DynamicOffset = mlir::OffsetSizeAndStrideOpInterface::getDynamicOffset(v16, v10);
        if (mlir::OffsetSizeAndStrideOpInterface::isDynamicSize(v16, v10))
        {
          goto LABEL_7;
        }
      }

      else
      {
        *&v17 = mlir::OffsetSizeAndStrideOpInterface::getStaticOffset(v16, v10);
        DynamicOffset = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a3, a4, &v17) - 16;
        if (mlir::OffsetSizeAndStrideOpInterface::isDynamicSize(v16, v10))
        {
LABEL_7:
          DynamicSize = mlir::OffsetSizeAndStrideOpInterface::getDynamicSize(v16, v10);
          if (!mlir::OffsetSizeAndStrideOpInterface::isDynamicStride(v16, v10))
          {
            goto LABEL_11;
          }

          goto LABEL_8;
        }
      }

      *&v17 = mlir::OffsetSizeAndStrideOpInterface::getStaticSize(v16, v10);
      DynamicSize = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a3, a4, &v17) - 16;
      if (!mlir::OffsetSizeAndStrideOpInterface::isDynamicStride(v16, v10))
      {
LABEL_11:
        *&v17 = mlir::OffsetSizeAndStrideOpInterface::getStaticStride(v16, v10);
        result = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a3, a4, &v17) - 16;
        goto LABEL_12;
      }

LABEL_8:
      result = mlir::OffsetSizeAndStrideOpInterface::getDynamicStride(v16, v10);
LABEL_12:
      *&v17 = DynamicOffset | 4;
      *(&v17 + 1) = DynamicSize | 4;
      v18 = result | 4;
      v13 = *(a5 + 8);
      if (v13 >= *(a5 + 12))
      {
        result = llvm::SmallVectorTemplateBase<mlir::Range,true>::growAndEmplaceBack<mlir::Range>(a5, &v17);
        v10 = (v10 + 1);
        if (v9 == v10)
        {
          return result;
        }
      }

      else
      {
        v14 = *a5 + 24 * v13;
        v15 = v17;
        *(v14 + 16) = v18;
        *v14 = v15;
        ++*(a5 + 8);
        v10 = (v10 + 1);
        if (v9 == v10)
        {
          return result;
        }
      }
    }
  }

  return result;
}

void mlir::memref::createCanonicalRankReducingSubViewOp(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t *a4, mlir::AffineMap *a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v29 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v30 = a3;
  mlir::MemRefType::getShape(&v29);
  v9 = v8;
  v10 = v8;
  v11 = mlir::Builder::getIndexAttr(a1, 0) & 0xFFFFFFFFFFFFFFFBLL;
  v38 = &v40;
  v39 = 0x600000000;
  if (v10 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v10)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v10 - 1);
    v14 = &v41;
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_2573686A0)));
      if (v15.i8[0])
      {
        *(v14 - 1) = v11;
        if (v15.i8[4])
        {
LABEL_10:
          *v14 = v11;
        }
      }

      else if (v15.i8[4])
      {
        goto LABEL_10;
      }

      v12 += 2;
      v14 += 2;
    }

    while (((v9 + 1) & 0xE) != v12);
  }

  LODWORD(v39) = v9;
  v31 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = &v37;
  v36 = 0x600000000;
  mlir::MemRefType::getShape(&v31);
  if (v16 >= 1)
  {
    for (i = 0; i < v19; i = (i + 1))
    {
      MixedSize = mlir::memref::getMixedSize(a1, a2, a3, i);
      if (v36 >= HIDWORD(v36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v35 + v36) = MixedSize;
      LODWORD(v36) = v36 + 1;
      mlir::MemRefType::getShape(&v31);
    }
  }

  v21 = mlir::Builder::getIndexAttr(a1, 1) & 0xFFFFFFFFFFFFFFFBLL;
  v31 = &v33;
  v32 = 0x600000000;
  if (!v10)
  {
LABEL_25:
    LODWORD(v32) = v9;
    v28 = mlir::memref::SubViewOp::inferRankReducedResultType(a4, a5, v29, v38, v39, v35, v36, v20, v31, v10);
    v42[0] = v43;
    v42[1] = 0x100000000;
    mlir::OpBuilder::createOrFold<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1, v42, a2, &v28, &v30, &v38, &v35, &v31);
  }

  v22 = 0;
  v23 = vdupq_n_s64(v10 - 1);
  v24 = &v34;
  while (1)
  {
    v25 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v22), xmmword_2573686A0)));
    if (v25.i8[0])
    {
      *(v24 - 1) = v21;
      if (v25.i8[4])
      {
LABEL_24:
        *v24 = v21;
      }
    }

    else if (v25.i8[4])
    {
      goto LABEL_24;
    }

    v22 += 2;
    v24 += 2;
    if (((v9 + 1) & 0xE) == v22)
    {
      goto LABEL_25;
    }
  }
}

unint64_t mlir::memref::SubViewOp::rankReduceIfNeeded(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t *a4, mlir::AffineMap *a5)
{
  v7 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v10 = 0;
  }

  v19 = v10;
  Shape = mlir::MemRefType::getShape(&v19);
  if (v12 == a5 && (v13 = Shape, v14 = v12, v15 = memcmp(Shape, a4, 8 * v12), v12 = v14, v16 = v15, Shape = v13, !v16))
  {
    v17 = v7 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    mlir::computeRankReductionMask(Shape, v12, a4, a5, 0, v20);
    if (v21 == 1)
    {
      mlir::memref::createCanonicalRankReducingSubViewOp(a1, a2, v7, a4, a5);
    }

    v17 = 0;
    LOBYTE(v7) = 0;
  }

  return v17 | v7;
}

uint64_t mlir::memref::SubViewOp::fold(uint64_t a1)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v2 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*a1 + 36))
  {
    v3 = *a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v16 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Layout = mlir::MemRefType::getLayout(&v16);
  if (Layout)
  {
    if (*(*Layout + 136) == &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id)
    {
      v5 = Layout;
    }

    else
    {
      v5 = 0;
    }

    v15 = v5;
    if (v16 != v2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
    if (v16 != v2)
    {
      goto LABEL_19;
    }
  }

  if (mlir::BaseMemRefType::hasRank(&v16))
  {
    Shape = mlir::MemRefType::getShape(&v16);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      if (!v15 || mlir::StridedLayoutAttr::hasStaticLayout(&v15))
      {
        return *(*(*a1 + 72) + 24) | 4;
      }
    }
  }

LABEL_19:
  v17[0] = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (DefiningOp)
  {
    v11 = *(*(DefiningOp + 48) + 16);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
    if (v11 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id)
    {
      v13 = DefiningOp;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (v12)
    {
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getMixedSizes(&v14);
    }
  }

  return 0;
}

uint64_t mlir::memref::TransposeOp::build(uint64_t a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a3;
  Value = mlir::AffineMapAttr::getValue(&v18);
  v17 = inferTransposeResultType(*(a3 + 8) & 0xFFFFFFFFFFFFFFF8, Value);
  v11 = v18;
  Context = mlir::Attribute::getContext(a2);
  v23 = 261;
  v21 = "permutation";
  v22 = 11;
  v14 = mlir::StringAttr::get(Context, &v21, v13);
  mlir::NamedAttribute::NamedAttribute(v20, v14, v11);
  mlir::NamedAttrList::push_back(a2 + 112, v20[0], v20[1]);
  v15 = mlir::TypeRange::TypeRange(&v21, &v17, 1uLL);
  return mlir::memref::TransposeOp::build(v15, a2, v21, v22, &v19, 1uLL, a5, a6);
}

uint64_t inferTransposeResultType(uint64_t a1, uint64_t a2)
{
  v35[7] = *MEMORY[0x277D85DE8];
  v26 = a1;
  Shape = mlir::MemRefType::getShape(&v26);
  mlir::getStridesAndOffset(v26, &v34);
  mlir::applyPermutationMap<long long>(a2, Shape, &v31);
  mlir::applyPermutationMap<long long>(a2, v34, &v28);
  v27 = v26;
  mlir::MemRefType::getShape(&v27);
  ElementType = mlir::MemRefType::getElementType(&v27);
  mlir::MemRefType::getLayout(&v27);
  MemorySpace = mlir::MemRefType::getMemorySpace(&v27);
  v6 = v31;
  v7 = v32;
  Context = mlir::Type::getContext(&v26);
  v9 = mlir::StridedLayoutAttr::get(Context, v35[6], v28, v29);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = *v9;
  {
    v24 = v11;
    v25 = v9;
    mlir::memref::ReinterpretCastOp::build();
    v10 = v25;
    v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v24 + 8);
    v14 = *(v24 + 16);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_4:
  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_14;
  }

  v21 = v15[1];
LABEL_15:
  v22 = mlir::MemRefType::get(v6, v7, ElementType, v10, v21, MemorySpace);
  if (v28 != &v30)
  {
    free(v28);
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  if (v34 != v35)
  {
    free(v34);
  }

  return v22;
}

uint64_t mlir::memref::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

uint64_t mlir::memref::TransposeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, " ", 1uLL);
  }

  else
  {
    *v7 = 32;
    ++v6[4];
  }

  v17[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Value = mlir::AffineMapAttr::getValue(v17);
  v9 = (*(*a2 + 16))(a2);
  v17[0] = Value;
  mlir::AffineMap::print(v17, v9);
  v17[0] = mlir::Operation::getAttrDictionary(*this);
  v10 = mlir::DictionaryAttr::getValue(v17);
  v17[0] = "permutation";
  v17[1] = 11;
  (*(*a2 + 192))(a2, v10, v11, v17, 1);
  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if ((v12[3] - v13) > 2)
  {
    *(v13 + 2) = 32;
    *v13 = 14880;
    v12[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v12, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 3uLL)
  {
    *v15 = 544175136;
    v14[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v14, " to ", 4uLL);
  }

  return (*(*a2 + 32))(a2, *(*this - 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::memref::TransposeOp::parse(mlir::memref::TransposeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v10, 0, 24);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if (((*(*this + 704))() & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 504))(this, &v9) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::AsmParser::parseColonType<mlir::MemRefType>(this, &v8))
  {
    return 0;
  }

  if (((*(*this + 728))(this, v10, v8, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v12 = 257;
  if (((*(*this + 400))(this, "to", 2, v11) & 1) == 0 || ((*(*this + 536))(this, &v7) & 1) == 0 || (mlir::AsmParser::addTypeToList(this, v7, a2 + 64) & 1) == 0)
  {
    return 0;
  }

  v5 = mlir::AffineMapAttr::get(v9);
  mlir::OperationState::addAttribute(a2, "permutation", 0xBuLL, v5);
  return 1;
}

BOOL mlir::memref::TransposeOp::verify(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  v42[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v42[0] = mlir::AffineMapAttr::getValue(v42);
  if (mlir::AffineMap::isPermutation(v42))
  {
    v42[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    v42[0] = mlir::AffineMapAttr::getValue(v42);
    NumDims = mlir::AffineMap::getNumDims(v42);
    v38[0] = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    mlir::MemRefType::getShape(v38);
    if (v3 == NumDims)
    {
      v4 = *(*(*(*this + 9) + 24) + 8);
      v5 = *(*this - 1);
      v42[0] = *(*this + 10);
      Value = mlir::AffineMapAttr::getValue(v42);
      v7 = inferTransposeResultType(v4 & 0xFFFFFFFFFFFFFFF8, Value);
      v8 = mlir::canonicalizeStridedLayout(v7);
      if (mlir::canonicalizeStridedLayout(v5 & 0xFFFFFFFFFFFFFFF8) == v8)
      {
        return 1;
      }

      v38[0] = "result type ";
      v39 = 259;
      mlir::OpState::emitOpError(this, v38, v42);
      if (v42[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v40, v5 & 0xFFFFFFFFFFFFFFF8);
        if (v44 >= v45)
        {
          if (v43 > &v40 || v43 + 24 * v44 <= &v40)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v24 = v43 + 24 * v44;
        v25 = v40;
        *(v24 + 2) = v41;
        *v24 = v25;
        v26 = ++v44;
        if (v42[0])
        {
          LODWORD(v40) = 3;
          *(&v40 + 1) = " is not equivalent to the canonical transposed input type ";
          v41 = 58;
          if (v26 >= v45)
          {
            if (v43 > &v40 || v43 + 24 * v26 <= &v40)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v27 = v43 + 24 * v44;
          v28 = v40;
          *(v27 + 2) = v41;
          *v27 = v28;
          ++v44;
          if (v42[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v40, v8);
            if (v44 >= v45)
            {
              if (v43 > &v40 || v43 + 24 * v44 <= &v40)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v29 = v43 + 24 * v44;
            v30 = v40;
            *(v29 + 2) = v41;
            *v29 = v30;
            ++v44;
          }
        }
      }

      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }

      if (v52 == 1)
      {
        if (v51 != &v52)
        {
          free(v51);
        }

        v31 = __p;
        if (__p)
        {
          v32 = v50;
          v33 = __p;
          if (v50 != __p)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = __p;
          }

          v50 = v31;
          operator delete(v33);
        }

        v13 = v47;
        if (!v47)
        {
          goto LABEL_62;
        }

        v34 = v48;
        v15 = v47;
        if (v48 == v47)
        {
LABEL_61:
          v48 = v13;
          operator delete(v15);
LABEL_62:
          if (v43 != &v46)
          {
            free(v43);
          }

          return v9;
        }

        do
        {
          v36 = *--v34;
          v35 = v36;
          *v34 = 0;
          if (v36)
          {
            MEMORY[0x259C63150](v35, 0x1000C8077774924);
          }
        }

        while (v34 != v13);
LABEL_60:
        v15 = v47;
        goto LABEL_61;
      }
    }

    else
    {
      v38[0] = "expected a permutation map of same rank as the input";
      v39 = 259;
      mlir::OpState::emitOpError(this, v38, v42);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }

      if (v52 == 1)
      {
        if (v51 != &v52)
        {
          free(v51);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v50;
          v20 = __p;
          if (v50 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v50 = v18;
          operator delete(v20);
        }

        v13 = v47;
        if (!v47)
        {
          goto LABEL_62;
        }

        v21 = v48;
        v15 = v47;
        if (v48 == v47)
        {
          goto LABEL_61;
        }

        do
        {
          v23 = *--v21;
          v22 = v23;
          *v21 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v21 != v13);
        goto LABEL_60;
      }
    }
  }

  else
  {
    v38[0] = "expected a permutation map";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v50;
        v12 = __p;
        if (v50 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v50 = v10;
        operator delete(v12);
      }

      v13 = v47;
      if (!v47)
      {
        goto LABEL_62;
      }

      v14 = v48;
      v15 = v47;
      if (v48 == v47)
      {
        goto LABEL_61;
      }

      do
      {
        v17 = *--v14;
        v16 = v17;
        *v14 = 0;
        if (v17)
        {
          MEMORY[0x259C63150](v16, 0x1000C8077774924);
        }
      }

      while (v14 != v13);
      goto LABEL_60;
    }
  }

  return v9;
}

uint64_t mlir::memref::TransposeOp::fold(uint64_t a1)
{
  v14 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v14);
  if (mlir::AffineMap::isIdentity(&Value))
  {
    v2 = *(*(*a1 + 72) + 24);
    if ((*(v2 + 8) ^ *(*a1 - 8)) <= 7)
    {
      return v2 | 4;
    }

    v14 = *(*(*a1 + 72) + 24);
    result = mlir::Value::getDefiningOp(&v14);
    if (!result)
    {
      return result;
    }

LABEL_6:
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::TransposeOp,void>::id)
    {
      return 0;
    }

    v14 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    v4 = result;
    Value = mlir::AffineMapAttr::getValue(&v14);
    v14 = *(v4 + 16 * ((*(v4 + 44) >> 23) & 1) + 64);
    v5 = mlir::AffineMapAttr::getValue(&v14);
    v7 = mlir::AffineMap::compose(&Value, v5, v6);
    v8 = *(*a1 + 72);
    v9 = *(*(v4 + 72) + 24);
    v10 = v8[1];
    if (v10)
    {
      v11 = *v8;
      *v10 = *v8;
      if (v11)
      {
        *(v11 + 8) = v10;
      }
    }

    v8[3] = v9;
    v8[1] = v9;
    v12 = *v9;
    *v8 = *v9;
    if (v12)
    {
      *(v12 + 8) = v8;
    }

    *v9 = v8;
    *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = mlir::AffineMapAttr::get(v7);
    v2 = *a1 - 16;
    return v2 | 4;
  }

  v14 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v14);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t mlir::memref::TransposeOp::setPermutation(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

BOOL mlir::memref::ViewOp::verify(mlir::Operation **this)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v64 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v63 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  Layout = mlir::MemRefType::getLayout(&v64);
  v68 = v3;
  if ((mlir::MemRefLayoutAttrInterface::isIdentity(&Layout) & 1) == 0)
  {
    v61[0] = "unsupported map for base memref type ";
    v62 = 259;
    mlir::OpState::emitError(this, v61, &Layout);
    if (Layout)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v65, v64);
      if (v70 >= v71)
      {
        if (v69 > &v65 || v69 + 24 * v70 <= &v65)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v69 + 24 * v70;
      v12 = v65;
      *(v11 + 2) = v66;
      *v11 = v12;
      ++v70;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v78 == 1)
    {
      if (v77 != &v78)
      {
        free(v77);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v76;
        v16 = __p;
        if (v76 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v76 = v14;
        operator delete(v16);
      }

      v17 = v73;
      if (!v73)
      {
        goto LABEL_100;
      }

      v18 = v74;
      v19 = v73;
      if (v74 == v73)
      {
        goto LABEL_99;
      }

      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v18 != v17);
      goto LABEL_98;
    }

    return v13;
  }

  Layout = mlir::MemRefType::getLayout(&v63);
  v68 = v4;
  if ((mlir::MemRefLayoutAttrInterface::isIdentity(&Layout) & 1) == 0)
  {
    v61[0] = "unsupported map for result memref type ";
    v62 = 259;
    mlir::OpState::emitError(this, v61, &Layout);
    if (Layout)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v65, v63);
      if (v70 >= v71)
      {
        if (v69 > &v65 || v69 + 24 * v70 <= &v65)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v69 + 24 * v70;
      v23 = v65;
      *(v22 + 2) = v66;
      *v22 = v23;
      ++v70;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v78 == 1)
    {
      if (v77 != &v78)
      {
        free(v77);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v76;
        v26 = __p;
        if (v76 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v76 = v24;
        operator delete(v26);
      }

      v17 = v73;
      if (!v73)
      {
        goto LABEL_100;
      }

      v27 = v74;
      v19 = v73;
      if (v74 == v73)
      {
        goto LABEL_99;
      }

      do
      {
        v29 = *--v27;
        v28 = v29;
        *v27 = 0;
        if (v29)
        {
          MEMORY[0x259C63150](v28, 0x1000C8077774924);
        }
      }

      while (v27 != v17);
      goto LABEL_98;
    }

    return v13;
  }

  MemorySpace = mlir::MemRefType::getMemorySpace(&v64);
  if (MemorySpace == mlir::MemRefType::getMemorySpace(&v63))
  {
    Shape = mlir::MemRefType::getShape(&v63);
    if (!v7)
    {
      v43 = 0;
LABEL_76:
      if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) - 2 == v43)
      {
        return 1;
      }

      v61[0] = "incorrect number of size operands for type ";
      v62 = 259;
      mlir::OpState::emitError(this, v61, &Layout);
      if (Layout)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v65, v63);
        if (v70 >= v71)
        {
          if (v69 > &v65 || v69 + 24 * v70 <= &v65)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v52 = v69 + 24 * v70;
        v53 = v65;
        *(v52 + 2) = v66;
        *v52 = v53;
        ++v70;
      }

      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
      if (Layout)
      {
        mlir::InFlightDiagnostic::report(&Layout);
      }

      if (v78 == 1)
      {
        if (v77 != &v78)
        {
          free(v77);
        }

        v54 = __p;
        if (__p)
        {
          v55 = v76;
          v56 = __p;
          if (v76 != __p)
          {
            do
            {
              v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
            }

            while (v55 != v54);
            v56 = __p;
          }

          v76 = v54;
          operator delete(v56);
        }

        v17 = v73;
        if (!v73)
        {
          goto LABEL_100;
        }

        v57 = v74;
        v19 = v73;
        if (v74 == v73)
        {
LABEL_99:
          v74 = v17;
          operator delete(v19);
LABEL_100:
          if (v69 != &v72)
          {
            free(v69);
          }

          return v13;
        }

        do
        {
          v59 = *--v57;
          v58 = v59;
          *v57 = 0;
          if (v59)
          {
            MEMORY[0x259C63150](v58, 0x1000C8077774924);
          }
        }

        while (v57 != v17);
LABEL_98:
        v19 = v73;
        goto LABEL_99;
      }

      return v13;
    }

    v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 >= 3)
    {
      v44 = v8 + 1;
      v45 = (v8 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v10 = (Shape + 8 * v45);
      v46 = (Shape + 16);
      v47 = 0uLL;
      v48 = vnegq_f64(0);
      v49 = v45;
      v50 = 0uLL;
      do
      {
        v47 = vsubq_s64(v47, vceqq_s64(v46[-1], v48));
        v50 = vsubq_s64(v50, vceqq_s64(*v46, v48));
        v46 += 2;
        v49 -= 4;
      }

      while (v49);
      v9 = vaddvq_s64(vaddq_s64(v50, v47));
      if (v44 == v45)
      {
LABEL_75:
        v43 = v9;
        goto LABEL_76;
      }
    }

    else
    {
      v9 = 0;
      v10 = Shape;
    }

    do
    {
      v51 = *v10++;
      if (v51 == 0x8000000000000000)
      {
        ++v9;
      }
    }

    while (v10 != (Shape + 8 * v7));
    goto LABEL_75;
  }

  v61[0] = "different memory spaces specified for base memref type ";
  v62 = 259;
  mlir::OpState::emitError(this, v61, &Layout);
  if (Layout)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v65, v64);
    if (v70 >= v71)
    {
      if (v69 > &v65 || v69 + 24 * v70 <= &v65)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = v69 + 24 * v70;
    v31 = v65;
    *(v30 + 2) = v66;
    *v30 = v31;
    v32 = ++v70;
    if (Layout)
    {
      LODWORD(v65) = 3;
      *(&v65 + 1) = " and view memref type ";
      v66 = 22;
      if (v32 >= v71)
      {
        if (v69 > &v65 || v69 + 24 * v32 <= &v65)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v33 = v69 + 24 * v70;
      v34 = v65;
      *(v33 + 2) = v66;
      *v33 = v34;
      ++v70;
      if (Layout)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v65, v63);
        if (v70 >= v71)
        {
          if (v69 > &v65 || v69 + 24 * v70 <= &v65)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v69 + 24 * v70;
        v36 = v65;
        *(v35 + 2) = v66;
        *v35 = v36;
        ++v70;
      }
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
  if (Layout)
  {
    mlir::InFlightDiagnostic::report(&Layout);
  }

  if (v78 == 1)
  {
    if (v77 != &v78)
    {
      free(v77);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v76;
      v39 = __p;
      if (v76 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v76 = v37;
      operator delete(v39);
    }

    v17 = v73;
    if (!v73)
    {
      goto LABEL_100;
    }

    v40 = v74;
    v19 = v73;
    if (v74 == v73)
    {
      goto LABEL_99;
    }

    do
    {
      v42 = *--v40;
      v41 = v42;
      *v40 = 0;
      if (v42)
      {
        MEMORY[0x259C63150](v41, 0x1000C8077774924);
      }
    }

    while (v40 != v17);
    goto LABEL_98;
  }

  return v13;
}

uint64_t mlir::memref::AtomicRMWOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 68);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(*a1 + 72);
  v5 = v4[3];
  v6 = &v4[4 * v1];
  do
  {
    while (1)
    {
      v14 = v4[3];
      DefiningOp = mlir::Value::getDefiningOp(&v14);
      if (!DefiningOp)
      {
        break;
      }

      if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
      {
        break;
      }

      if (v4[3] == v5)
      {
        break;
      }

      v8 = *(*(DefiningOp + 72) + 24);
      if (*(*(v8[1] & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
      {
        break;
      }

      v9 = v4[1];
      if (v9)
      {
        v10 = *v4;
        *v9 = *v4;
        if (v10)
        {
          *(v10 + 8) = v9;
        }
      }

      v4[3] = v8;
      v11 = *v8;
      *v4 = *v8;
      v4[1] = v8;
      if (v11)
      {
        *(v11 + 8) = v4;
      }

      *v8 = v4;
      v4 += 4;
      v3 = 1;
      if (v4 == v6)
      {
        goto LABEL_16;
      }
    }

    v4 += 4;
  }

  while (v4 != v6);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (*(*a1 + 36))
  {
    v12 = *a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) | 4;
}

uint64_t mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::AssumeAlignmentOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

uint64_t *mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::getAlignment(mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase *this)
{
  v5 = *(this + 3);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::memref::AssumeAlignmentOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    v25 = *(a1 + 24);
    v26[0] = mlir::IntegerAttr::getType(&v25);
    if (!mlir::Type::isSignlessInteger(v26, 32))
    {
      goto LABEL_26;
    }

    v24 = v3;
    mlir::IntegerAttr::getValue(&v24, &v28);
    v4 = v29;
    v5 = v29 - 1;
    if (v29 >= 0x41)
    {
      v15 = v28;
      if ((*(v28 + 8 * (v5 >> 6)) >> v5))
      {
        MEMORY[0x259C63150](v28, 0x1000C8000313F17);
        goto LABEL_26;
      }

      v16 = llvm::APInt::countLeadingZerosSlowCase(&v28);
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      if (v16 == v4)
      {
LABEL_26:
        v26[0] = "'memref.assume_alignment' op attribute 'alignment' failed to satisfy constraint: 32-bit signless integer attribute whose value is positive";
        v27 = 259;
        mlir::emitError(a2, v26, &v28);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
        if (v28)
        {
          mlir::InFlightDiagnostic::report(&v28);
        }

        if (v37 == 1)
        {
          if (v36 != &v37)
          {
            free(v36);
          }

          v17 = __p;
          if (__p)
          {
            v18 = v35;
            v19 = __p;
            if (v35 != __p)
            {
              do
              {
                v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
              }

              while (v18 != v17);
              v19 = __p;
            }

            v35 = v17;
            operator delete(v19);
          }

          v10 = v32;
          if (!v32)
          {
            goto LABEL_44;
          }

          v20 = v33;
          v12 = v32;
          if (v33 == v32)
          {
LABEL_43:
            v33 = v10;
            operator delete(v12);
LABEL_44:
            if (v30 != &v31)
            {
              free(v30);
            }

            return v6;
          }

          do
          {
            v22 = *--v20;
            v21 = v22;
            *v20 = 0;
            if (v22)
            {
              MEMORY[0x259C63150](v21, 0x1000C8077774924);
            }
          }

          while (v20 != v10);
LABEL_42:
          v12 = v32;
          goto LABEL_43;
        }

        return v6;
      }
    }

    else if (((v28 >> v5) & 1) != 0 || !v28)
    {
      goto LABEL_26;
    }

    return 1;
  }

  v26[0] = "'memref.assume_alignment' op requires attribute 'alignment'";
  v27 = 259;
  mlir::emitError(a2, v26, &v28);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v35;
      v9 = __p;
      if (v35 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v35 = v7;
      operator delete(v9);
    }

    v10 = v32;
    if (!v32)
    {
      goto LABEL_44;
    }

    v11 = v33;
    v12 = v32;
    if (v33 == v32)
    {
      goto LABEL_43;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        MEMORY[0x259C63150](v13, 0x1000C8077774924);
      }
    }

    while (v11 != v10);
    goto LABEL_42;
  }

  return v6;
}

uint64_t mlir::memref::AssumeAlignmentOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v42;
      v26 = __p;
      if (v42 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v42 = v24;
      operator delete(v26);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "alignment", 9uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 54;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v32;
      *(v12 + 2) = v33;
      *v12 = v13;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if (v44)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v42;
      v16 = __p;
      if (v42 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v42 = v14;
      operator delete(v16);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
LABEL_49:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
    }

    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v18 != v17);
LABEL_47:
    v19 = v39;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::memref::AssumeAlignmentOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "alignment", 9, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::memref::AssumeAlignmentOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::memref::AssumeAlignmentOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x6E656D6E67696C61 ? (v4 = *(a3 + 8) == 116) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::memref::AssumeAlignmentOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9 && *a2 == 0x6E656D6E67696C61 && *(a2 + 8) == 116)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::memref::AssumeAlignmentOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "alignment", 9uLL, *a2);
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_11;
  }

  v30 = a1;
  v8 = a4;
  v9 = a5;
  *&v31 = mlir::IntegerAttr::getType(&v30);
  isSignlessInteger = mlir::Type::isSignlessInteger(&v31, 32);
  a5 = v9;
  a4 = v8;
  if (!isSignlessInteger)
  {
    goto LABEL_11;
  }

  v29 = a1;
  mlir::IntegerAttr::getValue(&v29, &v34);
  v11 = v35[0];
  v12 = v35[0] - 1;
  if (v35[0] < 0x41)
  {
    a4 = v8;
    a5 = v9;
    if (((v34 >> v12) & 1) != 0 || !v34)
    {
      goto LABEL_11;
    }

    return 1;
  }

  v13 = v34;
  if (((*(v34 + 8 * (v12 >> 6)) >> v12) & 1) == 0)
  {
    v14 = llvm::APInt::countLeadingZerosSlowCase(&v34);
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    a4 = v8;
    a5 = v9;
    if (v14 == v11)
    {
LABEL_11:
      a4(&v34, a5);
      goto LABEL_12;
    }

    return 1;
  }

  MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  v8(&v34, v9);
LABEL_12:
  if (v34)
  {
    LODWORD(v31) = 3;
    *(&v31 + 1) = "attribute '";
    v32 = 11;
    if (v37 >= v38)
    {
      if (v36 > &v31 || v36 + 24 * v37 <= &v31)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = v36 + 24 * v37;
    v16 = v31;
    *(v15 + 2) = v32;
    *v15 = v16;
    ++v37;
    if (v34)
    {
      v33 = 261;
      *&v31 = a2;
      *(&v31 + 1) = a3;
      mlir::Diagnostic::operator<<(v35, &v31);
      if (v34)
      {
        LODWORD(v31) = 3;
        *(&v31 + 1) = "' failed to satisfy constraint: 32-bit signless integer attribute whose value is positive";
        v32 = 89;
        if (v37 >= v38)
        {
          if (v36 > &v31 || v36 + 24 * v37 <= &v31)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = v36 + 24 * v37;
        v18 = v31;
        *(v17 + 2) = v32;
        *v17 = v18;
        ++v37;
      }
    }
  }

  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
  if (v34)
  {
    mlir::InFlightDiagnostic::report(&v34);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v43;
      v22 = __p;
      if (v43 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v43 = v20;
      operator delete(v22);
    }

    v23 = v40;
    if (v40)
    {
      v24 = v41;
      v25 = v40;
      if (v41 != v40)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        v25 = v40;
      }

      v41 = v23;
      operator delete(v25);
    }

    if (v36 != &v39)
    {
      free(v36);
    }
  }

  return v19;
}

uint64_t mlir::memref::AssumeAlignmentOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2) & 1;
}

uint64_t mlir::memref::AssumeAlignmentOp::setAlignment(mlir::memref::AssumeAlignmentOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::memref::AssumeAlignmentOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 256);
  if (!v7)
  {
    operator new();
  }

  *v7 = a4;
  return result;
}

unint64_t mlir::memref::AssumeAlignmentOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a6;
  v12 = *(a2 + 72);
  if (a4 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v13 = 0;
    v14 = *(a2 + 64) + 8 * v12;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v13);
      *(v14 + 8 * v13++) = result;
    }

    while (a4 != v13);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + a4;
  return result;
}

uint64_t mlir::memref::AssumeAlignmentOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v10 = a3;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = result;
  return result;
}

unint64_t mlir::memref::AssumeAlignmentOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a6);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v15);
      *(v16 + 8 * v15++) = result;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  return result;
}

uint64_t mlir::memref::AssumeAlignmentOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

BOOL mlir::memref::AssumeAlignmentOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(v1, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'alignment'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              MEMORY[0x259C63150](v10, 0x1000C8077774924);
            }
          }

          while (v8 != v7);
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = *(v6 + 8);
      v29 = *(v6 + 16);
      if (!v29)
      {
        goto LABEL_55;
      }
    }

    else
    {
      mlir::tensor::ExpandShapeOp::fold();
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = *(v6 + 8);
      v29 = *(v6 + 16);
      if (!v29)
      {
        goto LABEL_55;
      }
    }

    v30 = v28;
    v31 = v29;
    do
    {
      v32 = v31 >> 1;
      v33 = &v30[2 * (v31 >> 1)];
      v35 = *v33;
      v34 = v33 + 2;
      v31 += ~(v31 >> 1);
      if (v35 < v27)
      {
        v30 = v34;
      }

      else
      {
        v31 = v32;
      }
    }

    while (v31);
    if (v30 != &v28[2 * v29] && *v30 == v27)
    {
      v36 = v30[1];
      goto LABEL_57;
    }

LABEL_55:
    v36 = 0;
LABEL_57:
    v42[0] = a2;
    v42[1] = v36;
    mlir::ShapedType::getElementType(v42);
    return 1;
  }

  v39 = 261;
  v38[0] = a3;
  v38[1] = a4;
  mlir::Operation::emitOpError(v42, a1, v38);
  if (v42[0])
  {
    LODWORD(v40) = 3;
    *(&v40 + 1) = " #";
    v41 = 2;
    if (v44 >= v45)
    {
      if (v43 > &v40 || v43 + 24 * v44 <= &v40)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v43 + 24 * v44;
    v9 = v40;
    *(v8 + 2) = v41;
    *v8 = v9;
    v10 = ++v44;
    if (v42[0])
    {
      LODWORD(v40) = 5;
      *(&v40 + 1) = a5;
      if (v10 >= v45)
      {
        if (v43 > &v40 || v43 + 24 * v10 <= &v40)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v43 + 24 * v44;
      v12 = v40;
      *(v11 + 2) = v41;
      *v11 = v12;
      v13 = ++v44;
      if (v42[0])
      {
        LODWORD(v40) = 3;
        *(&v40 + 1) = " must be memref of any type values, but got ";
        v41 = 44;
        if (v13 >= v45)
        {
          if (v43 > &v40 || v43 + 24 * v13 <= &v40)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v43 + 24 * v44;
        v15 = v40;
        *(v14 + 2) = v41;
        *v14 = v15;
        ++v44;
        if (v42[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v40, a2);
          if (v44 >= v45)
          {
            if (v43 > &v40 || v43 + 24 * v44 <= &v40)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v16 = v43 + 24 * v44;
          v17 = v40;
          *(v16 + 2) = v41;
          *v16 = v17;
          ++v44;
        }
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v50;
      v21 = __p;
      if (v50 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v50 = v19;
      operator delete(v21);
    }

    v22 = v47;
    if (v47)
    {
      v23 = v48;
      v24 = v47;
      if (v48 != v47)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        v24 = v47;
      }

      v48 = v22;
      operator delete(v24);
    }

    if (v43 != &v46)
    {
      free(v43);
    }
  }

  return v18;
}