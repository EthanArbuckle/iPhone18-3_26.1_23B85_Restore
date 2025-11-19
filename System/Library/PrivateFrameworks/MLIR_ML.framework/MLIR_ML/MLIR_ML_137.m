uint64_t mlir::affine::AffineParallelOp::getLowerBoundMap(mlir::affine::AffineParallelOp *this, unsigned int a2)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&Value, 4, 1, 1u))
  {
    RawData = mlir::DenseElementsAttr::getRawData(&Value);
    isSplat = mlir::DenseElementsAttr::isSplat(&Value);
    mlir::DenseElementsAttr::getType(&Value);
    mlir::DenseElementsAttr::getNumElements(&Value);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_14;
  }

  RawData = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (isSplat)
  {
    v6 = RawData->i32[0] * a2;
    goto LABEL_14;
  }

  if (a2 <= 7)
  {
    v7 = 0;
    v6 = 0;
LABEL_12:
    v12 = &RawData->i32[v7];
    v13 = a2 - v7;
    do
    {
      v14 = *v12++;
      v6 += v14;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  v7 = a2 & 0xFFFFFFF8;
  v8 = RawData + 1;
  v9 = 0uLL;
  v10 = v7;
  v11 = 0uLL;
  do
  {
    v9 = vaddq_s32(v8[-1], v9);
    v11 = vaddq_s32(*v8, v11);
    v8 += 2;
    v10 -= 8;
  }

  while (v10);
  v6 = vaddvq_s32(vaddq_s32(v11, v9));
  if (v7 != a2)
  {
    goto LABEL_12;
  }

LABEL_14:
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  Value = mlir::AffineMapAttr::getValue(&Value);
  v15 = a2;
  if (isSplat)
  {
    v15 = 0;
  }

  return mlir::AffineMap::getSliceMap(&Value, v6, RawData->u32[v15]);
}

uint64_t mlir::affine::AffineParallelOp::getUpperBoundMap(mlir::affine::AffineParallelOp *this, unsigned int a2)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
  if (mlir::DenseElementsAttr::isValidIntOrFloat(&Value, 4, 1, 1u))
  {
    RawData = mlir::DenseElementsAttr::getRawData(&Value);
    isSplat = mlir::DenseElementsAttr::isSplat(&Value);
    mlir::DenseElementsAttr::getType(&Value);
    mlir::DenseElementsAttr::getNumElements(&Value);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_14;
  }

  RawData = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (isSplat)
  {
    v6 = RawData->i32[0] * a2;
    goto LABEL_14;
  }

  if (a2 <= 7)
  {
    v7 = 0;
    v6 = 0;
LABEL_12:
    v12 = &RawData->i32[v7];
    v13 = a2 - v7;
    do
    {
      v14 = *v12++;
      v6 += v14;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  v7 = a2 & 0xFFFFFFF8;
  v8 = RawData + 1;
  v9 = 0uLL;
  v10 = v7;
  v11 = 0uLL;
  do
  {
    v9 = vaddq_s32(v8[-1], v9);
    v11 = vaddq_s32(*v8, v11);
    v8 += 2;
    v10 -= 8;
  }

  while (v10);
  v6 = vaddvq_s32(vaddq_s32(v11, v9));
  if (v7 != a2)
  {
    goto LABEL_12;
  }

LABEL_14:
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
  Value = mlir::AffineMapAttr::getValue(&Value);
  v15 = a2;
  if (isSplat)
  {
    v15 = 0;
  }

  return mlir::AffineMap::getSliceMap(&Value, v6, RawData->u32[v15]);
}

void mlir::affine::AffineParallelOp::getConstantRanges(mlir::affine::AffineParallelOp *this@<X0>, uint64_t a2@<X8>)
{
  v21[8] = *MEMORY[0x277D85DE8];
  if (mlir::affine::AffineParallelOp::hasMinMaxBounds(this))
  {
    *a2 = 0;
    *(a2 + 80) = 0;
  }

  else
  {
    v19 = v21;
    v20 = 0x800000000;
    v14 = v16;
    v15 = 0x800000000;
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = v17;
    v16[11] = 0x400000000;
    v17[4] = &v18;
    v17[5] = 0x400000000;
    mlir::affine::AffineParallelOp::getUpperBoundsValueMap(v13, this);
    mlir::affine::AffineParallelOp::getLowerBoundsValueMap(v12, this);
    mlir::affine::AffineValueMap::difference(v13, v12, &v14, v4);
    mlir::affine::AffineValueMap::~AffineValueMap(v12);
    mlir::affine::AffineValueMap::~AffineValueMap(v13);
    if (HIDWORD(v20) < v15)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v15)
    {
      v5 = 0;
      v6 = 8 * v15;
      while (1)
      {
        v7 = v14[v5 / 8];
        v13[0] = v7;
        v8 = mlir::AffineExpr::getKind(v13) == 5 ? v7 : 0;
        mlir::AffineConstantExpr::AffineConstantExpr(v13, v8);
        v12[0] = v13[0];
        if (!v13[0])
        {
          break;
        }

        Value = mlir::AffineConstantExpr::getValue(v12);
        if (v20 >= HIDWORD(v20))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v19[v20] = Value;
        v10 = v20 + 1;
        LODWORD(v20) = v20 + 1;
        v5 += 8;
        if (v6 == v5)
        {
          goto LABEL_17;
        }
      }

      *a2 = 0;
      *(a2 + 80) = 0;
    }

    else
    {
      v10 = v20;
LABEL_17:
      *a2 = a2 + 16;
      *(a2 + 8) = 0x800000000;
      if (v10 && &v19 != a2)
      {
        if (v19 == v21)
        {
          if (v10 >= 9)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(*a2, v19, 8 * v10);
          *(a2 + 8) = v10;
        }

        else
        {
          *a2 = v19;
          v11 = HIDWORD(v20);
          *(a2 + 8) = v10;
          *(a2 + 12) = v11;
          v19 = v21;
          HIDWORD(v20) = 0;
        }

        LODWORD(v20) = 0;
      }

      *(a2 + 80) = 1;
    }

    mlir::affine::AffineValueMap::~AffineValueMap(&v14);
    if (v19 != v21)
    {
      free(v19);
    }
  }
}

BOOL mlir::affine::AffineParallelOp::hasMinMaxBounds(mlir::affine::AffineParallelOp *this)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v9 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  Value = mlir::AffineMapAttr::getValue(&v9);
  NumResults = mlir::AffineMap::getNumResults(&Value);
  mlir::affine::AffineParallelOp::getSteps(this, &v9);
  v3 = v10;
  if (v9 != v11)
  {
    free(v9);
  }

  if (NumResults != v3)
  {
    return 1;
  }

  v9 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
  v7 = mlir::AffineMapAttr::getValue(&v9);
  v4 = mlir::AffineMap::getNumResults(&v7);
  mlir::affine::AffineParallelOp::getSteps(this, &v9);
  v5 = v10;
  if (v9 != v11)
  {
    free(v9);
  }

  return v4 != v5;
}

uint64_t mlir::affine::AffineParallelOp::getBodyBuilder@<X0>(mlir::affine::AffineParallelOp *this@<X0>, void *a2@<X8>)
{
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 4);
  Parent = mlir::Block::getParent(v4);
  result = mlir::Region::getContext(Parent);
  *a2 = result;
  a2[1] = 0;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t mlir::affine::AffineParallelOp::setSteps(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 4);
  Parent = mlir::Block::getParent(v7);
  v11[0] = mlir::Region::getContext(Parent);
  v11[1] = 0;
  v11[2] = v7;
  v11[3] = v8;
  result = mlir::Builder::getI64ArrayAttr(v11, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::affine::AffineParallelOp::verify(mlir::affine::AffineParallelOp *this)
{
  v159 = *MEMORY[0x277D85DE8];
  mlir::affine::AffineParallelOp::getSteps(this, &Value);
  v2 = v147;
  if (Value != &v148)
  {
    free(Value);
  }

  *&v143 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v143);
  if (NumElements != v2)
  {
    goto LABEL_14;
  }

  *&v138 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
  if (mlir::DenseElementsAttr::getNumElements(&v138) != NumElements)
  {
    goto LABEL_14;
  }

  mlir::affine::AffineParallelOp::getSteps(this, &Value);
  if (v147 != v2)
  {
    v6 = 1;
    v7 = Value;
    if (Value == &v148)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v4 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2 != (*(v5 + 56) - *(v5 + 48)) >> 3;
  v7 = Value;
  if (Value != &v148)
  {
LABEL_12:
    free(v7);
  }

LABEL_13:
  if (!v6)
  {
    *&v141 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&Value, v141, 0);
    v44 = v141;
    v45 = mlir::DenseElementsAttr::getNumElements(&v141);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v143, v44, v45);
    if (v148 == v144)
    {
      v46 = 0;
    }

    else
    {
      v46 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&Value, &v138);
        if (DWORD2(v138) > 0x40)
        {
          v61 = *v138;
          MEMORY[0x259C63150]();
        }

        else
        {
          LODWORD(v61) = v138;
        }

        v46 += v61;
        ++v148;
      }

      while (v148 != v144);
    }

    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (v46 != mlir::AffineMap::getNumResults(&Value))
    {
      v145 = 257;
      mlir::OpState::emitOpError(this, &v143, &Value);
      if (Value)
      {
        LODWORD(v138) = 3;
        *(&v138 + 1) = "expected lower bounds map to have ";
        v139 = 34;
        if (v150 >= v151)
        {
          if (v149 > &v138 || v149 + 24 * v150 <= &v138)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v62 = v149 + 24 * v150;
        v63 = v138;
        *(v62 + 2) = v139;
        *v62 = v63;
        v64 = ++v150;
        if (Value)
        {
          LODWORD(v138) = 5;
          *(&v138 + 1) = v46;
          if (v64 >= v151)
          {
            if (v149 > &v138 || v149 + 24 * v64 <= &v138)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v65 = v149 + 24 * v150;
          v66 = v138;
          *(v65 + 2) = v139;
          *v65 = v66;
          v67 = ++v150;
          if (Value)
          {
            LODWORD(v138) = 3;
            *(&v138 + 1) = " results";
            v139 = 8;
            if (v67 >= v151)
            {
              if (v149 > &v138 || v149 + 24 * v67 <= &v138)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v68 = v149 + 24 * v150;
            v69 = v138;
            *(v68 + 2) = v139;
            *v68 = v69;
            ++v150;
          }
        }
      }

      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v158 == 1)
      {
        if (v157 != &v158)
        {
          free(v157);
        }

        v70 = __p;
        if (__p)
        {
          v71 = v156;
          v72 = __p;
          if (v156 != __p)
          {
            do
            {
              v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
            }

            while (v71 != v70);
            v72 = __p;
          }

          v156 = v70;
          operator delete(v72);
        }

        v39 = v153;
        if (!v153)
        {
          goto LABEL_248;
        }

        v73 = v154;
        v41 = v153;
        if (v154 == v153)
        {
          goto LABEL_247;
        }

        do
        {
          v75 = *--v73;
          v74 = v75;
          *v73 = 0;
          if (v75)
          {
            MEMORY[0x259C63150](v74, 0x1000C8077774924);
          }
        }

        while (v73 != v39);
        goto LABEL_246;
      }

      return v35;
    }

    *&v141 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&Value, v141, 0);
    v47 = v141;
    v48 = mlir::DenseElementsAttr::getNumElements(&v141);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v143, v47, v48);
    if (v148 == v144)
    {
      v49 = 0;
    }

    else
    {
      v49 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&Value, &v138);
        if (DWORD2(v138) > 0x40)
        {
          v76 = *v138;
          MEMORY[0x259C63150]();
        }

        else
        {
          LODWORD(v76) = v138;
        }

        v49 += v76;
        ++v148;
      }

      while (v148 != v144);
    }

    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (v49 != mlir::AffineMap::getNumResults(&Value))
    {
      v145 = 257;
      mlir::OpState::emitOpError(this, &v143, &Value);
      if (Value)
      {
        LODWORD(v138) = 3;
        *(&v138 + 1) = "expected upper bounds map to have ";
        v139 = 34;
        if (v150 >= v151)
        {
          if (v149 > &v138 || v149 + 24 * v150 <= &v138)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v77 = v149 + 24 * v150;
        v78 = v138;
        *(v77 + 2) = v139;
        *v77 = v78;
        v79 = ++v150;
        if (Value)
        {
          LODWORD(v138) = 5;
          *(&v138 + 1) = v49;
          if (v79 >= v151)
          {
            if (v149 > &v138 || v149 + 24 * v79 <= &v138)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v80 = v149 + 24 * v150;
          v81 = v138;
          *(v80 + 2) = v139;
          *v80 = v81;
          v82 = ++v150;
          if (Value)
          {
            LODWORD(v138) = 3;
            *(&v138 + 1) = " results";
            v139 = 8;
            if (v82 >= v151)
            {
              if (v149 > &v138 || v149 + 24 * v82 <= &v138)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v83 = v149 + 24 * v150;
            v84 = v138;
            *(v83 + 2) = v139;
            *v83 = v84;
            ++v150;
          }
        }
      }

      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v158 == 1)
      {
        if (v157 != &v158)
        {
          free(v157);
        }

        v85 = __p;
        if (__p)
        {
          v86 = v156;
          v87 = __p;
          if (v156 != __p)
          {
            do
            {
              v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
            }

            while (v86 != v85);
            v87 = __p;
          }

          v156 = v85;
          operator delete(v87);
        }

        v39 = v153;
        if (!v153)
        {
          goto LABEL_248;
        }

        v88 = v154;
        v41 = v153;
        if (v154 == v153)
        {
          goto LABEL_247;
        }

        do
        {
          v90 = *--v88;
          v89 = v90;
          *v88 = 0;
          if (v90)
          {
            MEMORY[0x259C63150](v89, 0x1000C8077774924);
          }
        }

        while (v88 != v39);
        goto LABEL_246;
      }

      return v35;
    }

    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
    mlir::ArrayAttr::getValue(&Value);
    if (v50 != *(*this + 36))
    {
      *&v143 = "a reduction must be specified for each output";
      v145 = 259;
      mlir::OpState::emitOpError(this, &v143, &Value);
      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v158 == 1)
      {
        if (v157 != &v158)
        {
          free(v157);
        }

        v91 = __p;
        if (__p)
        {
          v92 = v156;
          v93 = __p;
          if (v156 != __p)
          {
            do
            {
              v92 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v92 - 1);
            }

            while (v92 != v91);
            v93 = __p;
          }

          v156 = v91;
          operator delete(v93);
        }

        v39 = v153;
        if (!v153)
        {
          goto LABEL_248;
        }

        v94 = v154;
        v41 = v153;
        if (v154 == v153)
        {
          goto LABEL_247;
        }

        do
        {
          v96 = *--v94;
          v95 = v96;
          *v94 = 0;
          if (v96)
          {
            MEMORY[0x259C63150](v95, 0x1000C8077774924);
          }
        }

        while (v94 != v39);
        goto LABEL_246;
      }

      return v35;
    }

    *&v138 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
    v51 = mlir::ArrayAttr::getValue(&v138);
    v52 = mlir::ArrayAttr::getValue(&v138);
    v54 = v52 + 8 * v53;
    if (v51 == v54)
    {
LABEL_65:
      v55 = *this;
      v56 = *(*this + 44);
      if ((v56 & 0x800000) != 0)
      {
        v57 = *(v55 + 72);
        v58 = *(v55 + 68);
      }

      else
      {
        v57 = 0;
        v58 = 0;
      }

      Value = *(v55 + 16 * ((v56 >> 23) & 1) + 72);
      Value = mlir::AffineMapAttr::getValue(&Value);
      NumInputs = mlir::AffineMap::getNumInputs(&Value);
      if (v58 >= NumInputs)
      {
        v58 = NumInputs;
      }

      Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
      Value = mlir::AffineMapAttr::getValue(&Value);
      NumDims = mlir::AffineMap::getNumDims(&Value);
      if ((verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(this, v57, v58, NumDims) & 1) == 0)
      {
        return 0;
      }

      mlir::affine::AffineParallelOp::verify();
      return Value;
    }

    v97 = 0;
    while (2)
    {
      v115 = *v51;
      if (*(**v51 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v115 = 0;
      }

      *&v141 = v115;
      if (!v115 || (Int = mlir::IntegerAttr::getInt(&v141), mlir::arith::symbolizeAtomicRMWKind(Int), (v117 & 1) == 0))
      {
        *&v143 = "invalid reduction attribute";
        v145 = 259;
        mlir::OpState::emitOpError(this, &v143, &Value);
        v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
        if (Value)
        {
          mlir::InFlightDiagnostic::report(&Value);
        }

        if (v158 == 1)
        {
          if (v157 != &v158)
          {
            free(v157);
          }

          v129 = __p;
          if (__p)
          {
            v130 = v156;
            v131 = __p;
            if (v156 != __p)
            {
              do
              {
                v130 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v130 - 1);
              }

              while (v130 != v129);
              v131 = __p;
            }

            v156 = v129;
            operator delete(v131);
          }

          v39 = v153;
          if (!v153)
          {
            goto LABEL_248;
          }

          v132 = v154;
          v41 = v153;
          if (v154 == v153)
          {
            goto LABEL_247;
          }

          do
          {
            v134 = *--v132;
            v133 = v134;
            *v132 = 0;
            if (v134)
            {
              MEMORY[0x259C63150](v133, 0x1000C8077774924);
            }
          }

          while (v132 != v39);
          goto LABEL_246;
        }

        return v35;
      }

      v118 = mlir::IntegerAttr::getInt(&v141);
      v119 = mlir::arith::symbolizeAtomicRMWKind(v118);
      if (v120)
      {
        v121 = *this - 16 * ((v97 + 1) & 0xF);
        if (v97 > 5)
        {
          v121 = *this - 24 * (v97 - 5) - 96;
        }

        v122 = (*(v121 + 8) & 0xFFFFFFFFFFFFFFF8);
        switch(v119)
        {
          case 0uLL:
          case 3uLL:
          case 6uLL:
          case 9uLL:
            v98 = *(*v122 + 136);
            if (v98 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v98 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
            {
              goto LABEL_214;
            }

            goto LABEL_194;
          case 1uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            if (*(*v122 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
            {
              goto LABEL_214;
            }

            goto LABEL_194;
          case 2uLL:
            goto LABEL_194;
          case 4uLL:
          case 7uLL:
            if (*(*v122 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
            {
              v122 = 0;
            }

            Value = v122;
            if (!v122 || mlir::IntegerType::getSignedness(&Value) != 1)
            {
              goto LABEL_214;
            }

            goto LABEL_194;
          case 5uLL:
          case 8uLL:
            if (*(*v122 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
            {
              v122 = 0;
            }

            Value = v122;
            if (!v122 || mlir::IntegerType::getSignedness(&Value) != 2)
            {
              goto LABEL_214;
            }

LABEL_194:
            ++v97;
            v51 += 8;
            if (v51 != v54)
            {
              continue;
            }

            goto LABEL_65;
          default:
LABEL_214:
            *&v143 = "result type cannot match reduction attribute";
            v145 = 259;
            mlir::OpState::emitOpError(this, &v143, &Value);
            v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
            if (Value)
            {
              mlir::InFlightDiagnostic::report(&Value);
            }

            if ((v158 & 1) == 0)
            {
              return v35;
            }

            if (v157 != &v158)
            {
              free(v157);
            }

            v123 = __p;
            if (__p)
            {
              v124 = v156;
              v125 = __p;
              if (v156 != __p)
              {
                do
                {
                  v124 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v124 - 1);
                }

                while (v124 != v123);
                v125 = __p;
              }

              v156 = v123;
              operator delete(v125);
            }

            v39 = v153;
            if (!v153)
            {
              goto LABEL_248;
            }

            v126 = v154;
            v41 = v153;
            if (v154 == v153)
            {
              goto LABEL_247;
            }

            do
            {
              v128 = *--v126;
              v127 = v128;
              *v126 = 0;
              if (v128)
              {
                MEMORY[0x259C63150](v127, 0x1000C8077774924);
              }
            }

            while (v126 != v39);
            break;
        }

        goto LABEL_246;
      }

      break;
    }

    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_307;
  }

LABEL_14:
  v140 = 257;
  mlir::OpState::emitOpError(this, &v138, &Value);
  if (Value)
  {
    LODWORD(v143) = 3;
    *(&v143 + 1) = "the number of region arguments (";
    v144 = 32;
    if (v150 >= v151)
    {
      if (v149 > &v143 || v149 + 24 * v150 <= &v143)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v149 + 24 * v150;
    v9 = v143;
    *(v8 + 2) = v144;
    *v8 = v9;
    ++v150;
    if (Value)
    {
      v10 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
      if (v10)
      {
        v11 = v10 - 8;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v11 + 56) - *(v11 + 48);
      LODWORD(v143) = 5;
      *(&v143 + 1) = (v12 >> 3);
      if (v150 >= v151)
      {
        if (v149 > &v143 || v149 + 24 * v150 <= &v143)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v149 + 24 * v150;
      v14 = v143;
      *(v13 + 2) = v144;
      *v13 = v14;
      v15 = ++v150;
      if (Value)
      {
        LODWORD(v143) = 3;
        *(&v143 + 1) = ") and the number of map groups for lower (";
        v144 = 42;
        if (v15 < v151)
        {
          v16 = v149 + 24 * v150;
          v17 = v143;
          *(v16 + 2) = v144;
          *v16 = v17;
          ++v150;
          goto LABEL_24;
        }

        if (v149 > &v143 || v149 + 24 * v15 <= &v143)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

LABEL_307:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }
  }

LABEL_24:
  v137 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v18 = mlir::DenseElementsAttr::getNumElements(&v137);
  if (Value)
  {
    LODWORD(v143) = 2;
    *(&v143 + 1) = v18;
    if (v150 >= v151)
    {
      if (v149 > &v143 || v149 + 24 * v150 <= &v143)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v19 = v149 + 24 * v150;
    v20 = v143;
    *(v19 + 2) = v144;
    *v19 = v20;
    v21 = ++v150;
    if (Value)
    {
      LODWORD(v143) = 3;
      *(&v143 + 1) = ") and upper bound (";
      v144 = 19;
      if (v21 >= v151)
      {
        if (v149 > &v143 || v149 + 24 * v21 <= &v143)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v149 + 24 * v150;
      v23 = v143;
      *(v22 + 2) = v144;
      *v22 = v23;
      ++v150;
    }
  }

  v136 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
  v24 = mlir::DenseElementsAttr::getNumElements(&v136);
  if (Value)
  {
    LODWORD(v143) = 2;
    *(&v143 + 1) = v24;
    if (v150 >= v151)
    {
      if (v149 > &v143 || v149 + 24 * v150 <= &v143)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v149 + 24 * v150;
    v26 = v143;
    *(v25 + 2) = v144;
    *v25 = v26;
    v27 = ++v150;
    if (Value)
    {
      LODWORD(v143) = 3;
      *(&v143 + 1) = "), and the number of steps (";
      v144 = 28;
      if (v27 >= v151)
      {
        if (v149 > &v143 || v149 + 24 * v27 <= &v143)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v149 + 24 * v150;
      v29 = v143;
      *(v28 + 2) = v144;
      *v28 = v29;
      ++v150;
    }
  }

  mlir::affine::AffineParallelOp::getSteps(this, &v143);
  if (Value)
  {
    LODWORD(v141) = 5;
    *(&v141 + 1) = DWORD2(v143);
    if (v150 >= v151)
    {
      if (v149 > &v141 || v149 + 24 * v150 <= &v141)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = v149 + 24 * v150;
    v31 = v141;
    *(v30 + 2) = v142;
    *v30 = v31;
    v32 = ++v150;
    if (Value)
    {
      LODWORD(v141) = 3;
      *(&v141 + 1) = ") must all match";
      v142 = 16;
      if (v32 >= v151)
      {
        if (v149 > &v141 || v149 + 24 * v32 <= &v141)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v33 = v149 + 24 * v150;
      v34 = v141;
      *(v33 + 2) = v142;
      *v33 = v34;
      ++v150;
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (v143 != &v144)
  {
    free(v143);
  }

  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v158 == 1)
  {
    if (v157 != &v158)
    {
      free(v157);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v156;
      v38 = __p;
      if (v156 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v156 = v36;
      operator delete(v38);
    }

    v39 = v153;
    if (!v153)
    {
      goto LABEL_248;
    }

    v40 = v154;
    v41 = v153;
    if (v154 == v153)
    {
LABEL_247:
      v154 = v39;
      operator delete(v41);
LABEL_248:
      if (v149 != &v152)
      {
        free(v149);
      }

      return v35;
    }

    do
    {
      v43 = *--v40;
      v42 = v43;
      *v40 = 0;
      if (v43)
      {
        MEMORY[0x259C63150](v42, 0x1000C8077774924);
      }
    }

    while (v40 != v39);
LABEL_246:
    v41 = v153;
    goto LABEL_247;
  }

  return v35;
}

uint64_t mlir::affine::AffineValueMap::canonicalize(mlir::affine::AffineValueMap *this)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v2 = (this + 96);
  v14 = v16;
  v15 = 0x400000000;
  if (&v14 != (this + 96))
  {
    v3 = *(this + 26);
    if (v3)
    {
      if (v3 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v16, *v2, 8 * *(this + 26));
      LODWORD(v15) = v3;
    }
  }

  AffineMap = mlir::affine::AffineValueMap::getAffineMap(this);
  composeAffineMapAndOperands(&AffineMap, &v14);
  v4 = mlir::affine::AffineValueMap::getAffineMap(this);
  v5 = AffineMap;
  if (AffineMap == v4)
  {
    v7 = v15;
    v6 = v14;
    if (v15 == *(this + 26))
    {
      if (!v15)
      {
LABEL_13:
        v9 = 0;
        if (v14 == v16)
        {
          return v9;
        }

        goto LABEL_16;
      }

      v8 = 0;
      while (*(v14 + v8) == *(*v2 + v8))
      {
        v8 += 8;
        if (8 * v15 == v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v6 = v14;
    v7 = v15;
  }

  mlir::ValueRange::ValueRange(v13, v6, v7);
  mlir::ValueRange::ValueRange(v12, 0, 0);
  mlir::affine::AffineValueMap::reset(this, v5, v13[0], v13[1], v12[0], v12[1]);
  v9 = 1;
  v6 = v14;
  if (v14 != v16)
  {
LABEL_16:
    free(v6);
  }

  return v9;
}

llvm::raw_ostream *printMinMaxBound(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, const void *a6, size_t a7)
{
  v8 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v39 = a2;
  v40 = a4;
  v41 = a5;
  Value = mlir::AffineMapAttr::getValue(&v39);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  v13 = v8 - NumDims;
  if (v8 >= NumDims)
  {
    v8 = NumDims;
  }

  if (NumDims)
  {
    v14 = mlir::ValueRange::offset_base(&v40, NumDims);
  }

  else
  {
    v14 = a4;
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v35, a3, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v38);
  result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a3, NumElements);
  if (v36 != v34)
  {
    v17 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v35, &v31);
      if (v17)
      {
        v18 = (*(*a1 + 16))(a1);
        v19 = v18[4];
        if (v18[3] - v19 > 1uLL)
        {
          *v19 = 8236;
          v18[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v18, ", ", 2uLL);
        }
      }

      if (v32 >= 0x41)
      {
        v20 = v31;
      }

      else
      {
        v20 = &v31;
      }

      v21 = *v20;
      if (*v20 == 1)
      {
        v22 = mlir::AffineMap::getResult(&Value, v17);
        result = (*(*a1 + 248))(a1, v22, a4, v8, v14, v13);
        if (v32 >= 0x41)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v23 = (*(*a1 + 16))(a1);
        v24 = v23[4];
        if (a7 <= v23[3] - v24)
        {
          if (a7)
          {
            memcpy(v24, a6, a7);
            v23[4] += a7;
          }
        }

        else
        {
          llvm::raw_ostream::write(v23, a6, a7);
        }

        v25 = (*(*a1 + 16))(a1);
        v26 = *(v25 + 4);
        if (v26 >= *(v25 + 3))
        {
          llvm::raw_ostream::write(v25, 40);
        }

        else
        {
          *(v25 + 4) = v26 + 1;
          *v26 = 40;
        }

        SliceMap = mlir::AffineMap::getSliceMap(&Value, v17, v21);
        v28 = mlir::AffineMapAttr::get(SliceMap);
        (*(*a1 + 240))(a1, v28, v40, v41);
        result = (*(*a1 + 16))(a1);
        v29 = *(result + 4);
        if (v29 >= *(result + 3))
        {
          result = llvm::raw_ostream::write(result, 41);
          if (v32 >= 0x41)
          {
LABEL_31:
            result = v31;
            if (v31)
            {
              result = MEMORY[0x259C63150](v31, 0x1000C8000313F17);
            }
          }
        }

        else
        {
          *(result + 4) = v29 + 1;
          *v29 = 41;
          if (v32 >= 0x41)
          {
            goto LABEL_31;
          }
        }
      }

      v17 += v21;
      ++v36;
    }

    while (v36 != v34);
  }

  return result;
}

BOOL mlir::affine::AffineParallelOp::parse(mlir::affine::AffineParallelOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v57[32] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  mlir::Builder::getIndexType(v5, v6);
  v55 = v57;
  v56 = 0x400000000;
  if (((*(*this + 768))(this, &v55, 1, 0, 0) & 1) == 0 || ((*(*this + 136))(this) & 1) == 0 || (parseAffineMapWithMinMax(this, a2, 1) & 1) == 0 || (v40 = 257, ((*(*this + 400))(this, "to", 2, &v36) & 1) == 0) || (parseAffineMapWithMinMax(this, a2, 0) & 1) == 0)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v35 = 0;
  v53[0] = v54;
  v53[1] = 0x400000000;
  v54[8] = 4;
  v51[0] = v52;
  v51[1] = 0x400000000;
  if (((*(*this + 408))(this, "step", 4) & 1) == 0)
  {
    v48 = 1;
    llvm::SmallVector<long long,4u>::SmallVector(&v36, v56, &v48);
    I64ArrayAttr = mlir::Builder::getI64ArrayAttr(v5, v36, v37);
    mlir::OperationState::addAttribute(a2, "steps", 5uLL, I64ArrayAttr);
    v18 = v36;
    if (v36 == &v38)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (((*(*this + 736))(this, v51, &v35, "steps", 5, v53, 1) & 1) == 0)
  {
    v15 = 0;
    goto LABEL_33;
  }

  v48 = v50;
  v49 = 0x400000000;
  Value = mlir::AffineMapAttr::getValue(&v35);
  Results = mlir::AffineMap::getResults(&Value);
  if (!v8)
  {
    v14 = v49;
LABEL_54:
    v30 = mlir::Builder::getI64ArrayAttr(v5, v48, v14);
    mlir::OperationState::addAttribute(a2, "steps", 5uLL, v30);
    v18 = v48;
    if (v48 == v50)
    {
LABEL_24:
      v36 = &v38;
      v37 = 0x400000000;
      if ((*(*this + 408))(this, "reduce", 6) & 1) == 0 || ((*(*this + 280))(this) & 1) != 0 && (v48 = this, v49 = v5, v50[0] = &v36, ((*(*this + 392))(this, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v48, 0, 0)) && ((*(*this + 296))(this))
      {
        ArrayAttr = mlir::Builder::getArrayAttr(v5, v36, v37);
        mlir::OperationState::addAttribute(a2, "reductions", 0xAuLL, ArrayAttr);
        if ((*(*this + 568))(this, a2 + 64))
        {
          mlir::OperationState::addRegion(a2);
        }
      }

      v15 = 0;
      v20 = v36;
      if (v36 == &v38)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

LABEL_23:
    free(v18);
    goto LABEL_24;
  }

  v9 = Results;
  v10 = 8 * v8;
  while (1)
  {
    v11 = *v9;
    v36 = *v9;
    v12 = mlir::AffineExpr::getKind(&v36) == 5 ? v11 : 0;
    mlir::AffineConstantExpr::AffineConstantExpr(&v36, v12);
    v33 = v36;
    if (!v36)
    {
      break;
    }

    v13 = mlir::AffineConstantExpr::getValue(&v33);
    if (v49 >= HIDWORD(v49))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v48 + 8 * v49) = v13;
    v14 = v49 + 1;
    LODWORD(v49) = v49 + 1;
    ++v9;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_54;
    }
  }

  v21 = (*(*this + 16))(this);
  v31 = "steps must be constant integers";
  v32 = 259;
  (*(*this + 24))(&v36, this, v21, &v31);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v45;
      v24 = __p;
      if (v45 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v45 = v22;
      operator delete(v24);
    }

    v25 = v42;
    if (v42)
    {
      v26 = v43;
      v27 = v42;
      if (v43 != v42)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x259C63150](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        v27 = v42;
      }

      v43 = v25;
      operator delete(v27);
    }

    if (v39 != &v41)
    {
      free(v39);
    }
  }

  v20 = v48;
  if (v48 == v50)
  {
    goto LABEL_33;
  }

LABEL_31:
  free(v20);
LABEL_33:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  if (v53[0] != v54)
  {
    free(v53[0]);
  }

LABEL_19:
  if (v55 != v57)
  {
    free(v55);
  }

  return v15;
}

uint64_t parseAffineMapWithMinMax(mlir::AsmParser *a1, unsigned int *a2, int a3)
{
  v85[6] = *MEMORY[0x277D85DE8];
  v59 = a3;
  v58[0] = "__pseudo_bound_map";
  v58[1] = 18;
  if (a3)
  {
    v6 = "lowerBoundsMap";
  }

  else
  {
    v6 = "upperBoundsMap";
  }

  if (a3)
  {
    v7 = "lowerBoundsGroups";
  }

  else
  {
    v7 = "upperBoundsGroups";
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 304))(a1))
  {
    v8 = (*(*a1 + 32))(a1);
    EmptyAffineMap = mlir::Builder::getEmptyAffineMap(v8, v9);
    v11 = mlir::AffineMapAttr::get(EmptyAffineMap);
    Context = mlir::Attribute::getContext(a2);
    if (a3)
    {
      v14 = "lowerBoundsMap";
    }

    else
    {
      v14 = "upperBoundsMap";
    }

    LOWORD(v53) = 261;
    v49 = v14;
    v50 = 14;
    if (a3)
    {
      v15 = "lowerBoundsGroups";
    }

    else
    {
      v15 = "upperBoundsGroups";
    }

    v16 = mlir::StringAttr::get(Context, &v49, v13);
    mlir::NamedAttribute::NamedAttribute(&v83, v16, v11);
    mlir::NamedAttrList::push_back((a2 + 28), v83, v84);
    v17 = (*(*a1 + 32))(a1);
    I32TensorAttr = mlir::Builder::getI32TensorAttr(v17, 0, 0);
    v19 = mlir::Attribute::getContext(a2);
    LOWORD(v53) = 261;
    v49 = v15;
    v50 = 17;
    v21 = mlir::StringAttr::get(v19, &v49, v20);
    mlir::NamedAttribute::NamedAttribute(&v83, v21, I32TensorAttr);
    mlir::NamedAttrList::push_back((a2 + 28), v83, v84);
    return 1;
  }

  v83 = v85;
  v84 = 0x600000000;
  v80 = v82;
  v81 = 0x100000000;
  v77 = v79;
  v78 = 0x100000000;
  v74 = v76;
  v75 = 0xC00000000;
  v72[0] = v73;
  v72[1] = 0x100000000;
  v49 = a1;
  v50 = &v59;
  v51 = v72;
  v52 = v58;
  v53 = a2;
  v54 = &v83;
  v55 = &v80;
  v56 = &v77;
  v57 = &v74;
  {
    v47 = v7;
    if (v84)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = v83;
      v27 = 8 * v84;
      v28 = 1;
      do
      {
        v29 = v80[v28];
        v30 = *(v77 + v28 * 8);
        v69 = mlir::AffineExpr::shiftDims(&v26[v23], v29, v24, 0);
        v31 = mlir::AffineExpr::shiftSymbols(&v69, v30, v25, 0);
        v26 = v83;
        *&v83[v23] = v31;
        v24 += v29;
        v25 += v30;
        v23 += 8;
        v28 += 6;
      }

      while (v27 != v23);
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v69 = v71;
    v70 = 0x600000000;
    v66 = v68;
    v67 = 0x600000000;
    v63 = v65;
    v64 = 0x600000000;
    v60 = v62;
    v61 = 0x600000000;
    if (deduplicateAndResolveOperands(a1, v80, v81, &v69, &v63, 6))
    {
      if (deduplicateAndResolveOperands(a1, v77, v78, &v66, &v60, 7))
      {
        llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(a2 + 4, v69, v69 + 8 * v70);
        llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(a2 + 4, v66, v66 + 8 * v67);
        v39 = (*(*a1 + 32))(a1);
        v45 = v83;
        v46 = v39;
        v44 = v84;
        v40 = mlir::AsmParser::getContext(a1);
        v48 = mlir::AffineMap::get(v24, v25, v45, v44, v40);
        v48 = mlir::AffineMap::replaceDimsAndSymbols(&v48, v63, v64, v60, v61, v70, v67);
        v41 = mlir::AffineMapAttr::get(v48);
        mlir::OperationState::addAttribute(a2, v6, 0xEuLL, v41);
        v42 = mlir::Builder::getI32TensorAttr(v46, v74, v75);
        mlir::OperationState::addAttribute(a2, v47, 0x11uLL, v42);
        v22 = 1;
        v43 = v60;
        if (v60 == v62)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v22 = 0;
        v43 = v60;
        if (v60 == v62)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v22 = 0;
      v43 = v60;
      if (v60 == v62)
      {
LABEL_54:
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

        goto LABEL_24;
      }
    }

    free(v43);
    goto LABEL_54;
  }

  v22 = 0;
LABEL_24:
  if (v72[0] != v73)
  {
    free(v72[0]);
  }

  if (v74 != v76)
  {
    free(v74);
  }

  v32 = v77;
  if (v78)
  {
    v33 = (v77 + 48 * v78 - 48);
    v34 = -48 * v78;
    do
    {
      if (v33 + 2 != *v33)
      {
        free(*v33);
      }

      v33 -= 6;
      v34 += 48;
    }

    while (v34);
    v32 = v77;
  }

  if (v32 != v79)
  {
    free(v32);
  }

  v35 = v80;
  if (v81)
  {
    v36 = &v80[6 * v81 - 6];
    v37 = -48 * v81;
    do
    {
      if (v36 + 2 != *v36)
      {
        free(*v36);
      }

      v36 -= 6;
      v37 += 48;
    }

    while (v37);
    v35 = v80;
  }

  if (v35 != v82)
  {
    free(v35);
  }

  if (v83 != v85)
  {
    free(v83);
  }

  return v22;
}

uint64_t llvm::SmallVector<long long,4u>::SmallVector(uint64_t result, unint64_t a2, uint64_t *a3)
{
  *result = result + 16;
  *(result + 12) = 4;
  v3 = *a3;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!a2)
  {
    goto LABEL_3;
  }

  v4 = vdupq_n_s64(a2 - 1);
  v5 = a2 + 1;
  v6 = vmovn_s64(vcgeq_u64(v4, xmmword_2573686A0));
  if ((v6.i8[0] & 1) == 0)
  {
    v7 = v5 & 0xE;
    if ((v6.i8[4] & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    *(result + 24) = v3;
    if (v7 != 2)
    {
      goto LABEL_11;
    }

LABEL_3:
    *(result + 8) = a2;
    return result;
  }

  *(result + 16) = v3;
  v7 = v5 & 0xE;
  if (v6.i8[4])
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v7 == 2)
  {
    goto LABEL_3;
  }

LABEL_11:
  v8 = vmovn_s64(vcgtq_u64(v4, xmmword_2573686B0));
  if (v8.i8[0])
  {
    *(result + 32) = v3;
  }

  if ((v8.i8[4] & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 40) = v3;
  *(result + 8) = a2;
  return result;
}

uint64_t mlir::affine::AffineVectorLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  if (a4)
  {
    v10 = mlir::AffineMapAttr::get(a4);
    Context = mlir::Attribute::getContext(a2);
    v16 = 261;
    v15[0] = "map";
    v15[1] = 3;
    v13 = mlir::StringAttr::get(Context, v15, v12);
    mlir::NamedAttribute::NamedAttribute(v17, v13, v10);
    result = mlir::NamedAttrList::push_back(a2 + 112, v17[0], v17[1]);
  }

  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::affine::AffineVectorLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v18 = a4;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v12 = mlir::AffineMapAttr::get(a5);
  Context = mlir::Attribute::getContext(a2);
  v20 = 261;
  v19[0] = "map";
  v19[1] = 3;
  v15 = mlir::StringAttr::get(Context, v19, v14);
  mlir::NamedAttribute::NamedAttribute(v21, v15, v12);
  result = mlir::NamedAttrList::push_back(a2 + 112, v21[0], v21[1]);
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::affine::AffineVectorLoadOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v16 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v16);
  if (v12)
  {
    MultiDimIdentityMap = mlir::Builder::getMultiDimIdentityMap(a1, v12, v13);
  }

  else
  {
    MultiDimIdentityMap = mlir::Builder::getEmptyAffineMap(a1, 0);
  }

  return mlir::affine::AffineVectorLoadOp::build(MultiDimIdentityMap, a2, a3, a4, MultiDimIdentityMap, a5, a6);
}

uint64_t mlir::affine::AffineVectorLoadOp::parse(mlir::affine::AffineVectorLoadOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v14 = 0;
  v15 = 0;
  memset(v13, 0, 24);
  v12 = 0;
  v16 = v18;
  v17 = 0x100000000;
  if ((*(*this + 704))(this, v13, 1) & 1) != 0 && ((*(*this + 736))(this, &v16, &v12, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*this + 488))(this, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(this, &v15) && ((*(*this + 120))(this) & 1) != 0 && mlir::AsmParser::parseType<mlir::VectorType>(this, &v14) && ((*(*this + 728))(this, v13, v15, a2 + 16))
  {
    if (!v17)
    {
LABEL_12:
      v10 = mlir::AsmParser::addTypeToList(this, v14, a2 + 64);
      goto LABEL_14;
    }

    v8 = v16;
    v9 = 32 * v17;
    while (((*(*this + 728))(this, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  v10 = 0;
LABEL_14:
  if (v16 != v18)
  {
    free(v16);
  }

  return v10 & 1;
}

BOOL mlir::AsmParser::parseType<mlir::VectorType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::affine::AffineVectorLoadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26 = *MEMORY[0x277D85DE8];
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
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
    v8 = *this;
    if (!*(*this + 47))
    {
LABEL_9:
      InherentAttr = mlir::DictionaryAttr::get(v8 + 56, "map", 3uLL);
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
    v8 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_9;
    }
  }

  InherentAttr = mlir::Operation::getInherentAttr(v8, "map", 3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v11 = *this;
    v12 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v13 = *(v11 + 9);
      v14 = *(v11 + 17) - 1;
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v13 + 32, v14);
    (*(*a2 + 240))(a2, v12, AttrDictionary, v25);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v25 = 3;
  (*(*a2 + 192))(a2, Value, v18, &AttrDictionary, 1);
  v19 = (*(*a2 + 16))(a2);
  v20 = v19[4];
  if ((v19[3] - v20) > 2)
  {
    *(v20 + 2) = 32;
    *v20 = 14880;
    v19[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v19, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 8236;
    v21[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, ", ", 2uLL);
  }

  return (*(*a2 + 32))(a2, *(*this - 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t verifyVectorMemoryOp(mlir::Operation *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a2;
  ElementType = mlir::MemRefType::getElementType(&v18);
  if (ElementType == mlir::VectorType::getElementType(&v17))
  {
    return 1;
  }

  v15 = "requires memref and vector types of the same elemental type";
  v16 = 259;
  mlir::Operation::emitOpError(v19, a1, &v15);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v25;
      v8 = __p;
      if (v25 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v25 = v6;
      operator delete(v8);
    }

    v9 = v22;
    if (v22)
    {
      v10 = v23;
      v11 = v22;
      if (v23 != v22)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x259C63150](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v22;
      }

      v23 = v9;
      operator delete(v11);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v5;
}

uint64_t mlir::affine::AffineVectorStoreOp::build(uint64_t a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a4;
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = mlir::AffineMapAttr::get(a5);
  Context = mlir::Attribute::getContext(a2);
  v19 = 261;
  v18[0] = "map";
  v18[1] = 3;
  v14 = mlir::StringAttr::get(Context, v18, v13);
  mlir::NamedAttribute::NamedAttribute(v20, v14, v11);
  return mlir::NamedAttrList::push_back(a2 + 112, v20[0], v20[1]);
}

uint64_t mlir::affine::AffineVectorStoreOp::build(mlir::MLIRContext **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v21 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v21);
  if (v12)
  {
    MultiDimIdentityMap = mlir::Builder::getMultiDimIdentityMap(a1, v12, v13);
  }

  else
  {
    MultiDimIdentityMap = mlir::Builder::getEmptyAffineMap(a1, 0);
  }

  v15 = MultiDimIdentityMap;
  v22 = a4;
  v23 = a3;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  v16 = mlir::AffineMapAttr::get(v15);
  Context = mlir::Attribute::getContext(a2);
  v25 = 261;
  v24[0] = "map";
  v24[1] = 3;
  v19 = mlir::StringAttr::get(Context, v24, v18);
  mlir::NamedAttribute::NamedAttribute(v26, v19, v16);
  return mlir::NamedAttrList::push_back(a2 + 112, v26[0], v26[1]);
}

uint64_t mlir::affine::AffineVectorStoreOp::parse(mlir::affine::AffineVectorStoreOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v17 = 0;
  v18 = 0;
  memset(v16, 0, 24);
  memset(v15, 0, 24);
  v14 = 0;
  v19 = v21;
  v20 = 0x100000000;
  if ((*(*this + 704))(this, v16, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 704))(this, v15, 1) & 1) != 0 && ((*(*this + 736))(this, &v19, &v14, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*this + 488))(this, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(this, &v18) && ((*(*this + 120))(this) & 1) != 0 && mlir::AsmParser::parseType<mlir::VectorType>(this, &v17) && ((*(*this + 728))(this, v16, v17, a2 + 16) & 1) != 0 && ((*(*this + 728))(this, v15, v18, a2 + 16))
  {
    if (!v20)
    {
      v10 = 1;
      v12 = v19;
      if (v19 == v21)
      {
        return v10 & 1;
      }

      goto LABEL_18;
    }

    v8 = v19;
    v9 = 32 * v20 - 32;
    do
    {
      v10 = (*(*this + 728))(this, v8, IndexType, a2 + 16);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v8 += 32;
      v11 = v9;
      v9 -= 32;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v12 = v19;
  if (v19 != v21)
  {
LABEL_18:
    free(v12);
  }

  return v10 & 1;
}

uint64_t mlir::affine::AffineVectorStoreOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v28 = *MEMORY[0x277D85DE8];
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
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 8236;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 91);
    v10 = *this;
    if (!*(*this + 47))
    {
LABEL_12:
      InherentAttr = mlir::DictionaryAttr::get(v10 + 56, "map", 3uLL);
      goto LABEL_13;
    }
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 91;
    v10 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_12;
    }
  }

  InherentAttr = mlir::Operation::getInherentAttr(v10, "map", 3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v13 = *this;
    v14 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v15 = *(v13 + 9);
      v16 = *(v13 + 17) - 2;
    }

    else
    {
      v15 = 0;
      v16 = -2;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v15 + 64, v16);
    (*(*a2 + 240))(a2, v14, AttrDictionary, v27);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v27 = 3;
  (*(*a2 + 192))(a2, Value, v20, &AttrDictionary, 1);
  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if ((v21[3] - v22) > 2)
  {
    *(v22 + 2) = 32;
    *v22 = 14880;
    v21[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v21, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(*a2 + 16))(a2);
  v24 = v23[4];
  if (v23[3] - v24 > 1uLL)
  {
    *v24 = 8236;
    v23[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v23, ", ", 2uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::inferReturnTypes(mlir::IndexType *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = a6;
  v35[0] = 0;
  v36 = 0;
  v37 = a9;
  v38 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v34);
    if (v36 == 1)
    {
      v36 = 0;
    }

    mlir::OperationName::OperationName(v35, "affine.delinearize_index", 24, Context);
    v36 = 1;
  }

  v39 = a4;
  v40 = a5;
  v41 = a4;
  v42 = 1;
  mlir::ValueRange::offset_base(&v41, 1);
  v15 = a5 - v42;
  v17 = mlir::IndexType::get(a1, v16);
  if (v15 > *(a11 + 12))
  {
    *(a11 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = *a11;
  v19 = *(a11 + 8);
  if (v19 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(a11 + 8);
  }

  if (v20)
  {
    if (v20 < 4)
    {
      v21 = *a11;
      v22 = v20;
      do
      {
LABEL_16:
        *v21++ = v17;
        --v22;
      }

      while (v22);
      goto LABEL_17;
    }

    v21 = &v18[v20 & 0xFFFFFFFC];
    v22 = v20 & 3;
    v23 = vdupq_n_s64(v17);
    v24 = (v18 + 2);
    v25 = v20 & 0xFFFFFFFC;
    do
    {
      v24[-1] = v23;
      *v24 = v23;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v20 != (v20 & 0xFFFFFFFC))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v26 = v15 - v19;
  if (v15 <= v19)
  {
    goto LABEL_24;
  }

  v27 = &v18[v19];
  if (v26 < 4)
  {
    v28 = &v18[v19];
    v29 = v15 - v19;
    do
    {
LABEL_23:
      *v28++ = v17;
      --v29;
    }

    while (v29);
    goto LABEL_24;
  }

  v28 = v27 + (v26 & 0xFFFFFFFFFFFFFFFCLL);
  v29 = v26 & 3;
  v30 = vdupq_n_s64(v17);
  v31 = v27 + 1;
  v32 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v31[-1] = v30;
    *v31 = v30;
    v31 += 2;
    v32 -= 4;
  }

  while (v32);
  if (v26 != (v26 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_23;
  }

LABEL_24:
  *(a11 + 8) = v15;
  return 1;
}

void mlir::affine::AffineDelinearizeIndexOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a3;
  IndexType = mlir::Builder::getIndexType(a1, a2);
  __src = v26;
  HIDWORD(v25) = 6;
  if (a5 >= 7)
  {
    LODWORD(v25) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a5)
  {
    v10 = vdupq_n_s64(a5 - 1);
    v11 = a5 + 1;
    v12 = vmovn_s64(vcgeq_u64(v10, xmmword_2573686A0));
    if (v12.i8[0])
    {
      v26[0] = IndexType;
      v13 = v11 & 0xE;
      if ((v12.i8[4] & 1) == 0)
      {
LABEL_6:
        if (v13 == 2)
        {
          goto LABEL_20;
        }

LABEL_10:
        v14 = vmovn_s64(vcgtq_u64(v10, xmmword_2573686B0));
        if (v14.i8[0])
        {
          v26[2] = IndexType;
          if ((v14.i8[4] & 1) == 0)
          {
LABEL_12:
            if (v13 == 4)
            {
              goto LABEL_20;
            }

            goto LABEL_16;
          }
        }

        else if ((v14.i8[4] & 1) == 0)
        {
          goto LABEL_12;
        }

        v26[3] = IndexType;
        if (v13 == 4)
        {
          goto LABEL_20;
        }

LABEL_16:
        v15 = vmovn_s64(vcgtq_u64(v10, xmmword_2573686C0));
        if (v15.i8[0])
        {
          v26[4] = IndexType;
        }

        if (v15.i8[4])
        {
          v26[5] = IndexType;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v13 = v11 & 0xE;
      if ((v12.i8[4] & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v26[1] = IndexType;
    if (v13 == 2)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

LABEL_20:
  LODWORD(v25) = a5;
  v16 = *(a2 + 72);
  if (a5 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a5)
  {
    memcpy((*(a2 + 64) + 8 * v16), v26, 8 * a5);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a5;
  if (__src != v26)
  {
    free(__src);
  }

  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  __src = v26;
  v25 = 0x600000000;
  if (a5)
  {
    v17 = 8 * a5;
    v18 = v26;
    do
    {
      while (1)
      {
        v19 = *a4;
        ConstantIntValue = mlir::getConstantIntValue(*a4);
        LOBYTE(v28) = v20;
        if (v20)
        {
          break;
        }

        *v18++ = v19 & (v19 << 61 >> 63) & 0xFFFFFFFFFFFFFFF8;
        ++a4;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_31;
        }
      }

      *v18++ = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, *a2, &ConstantIntValue) - 16;
      ++a4;
      v17 -= 8;
    }

    while (v17);
LABEL_31:
    v21 = v25;
    v22 = __src;
  }

  else
  {
    v21 = 0;
    v22 = v26;
  }

  LODWORD(v25) = v21 + a5;
  mlir::ValueRange::ValueRange(&ConstantIntValue, v22, (v21 + a5));
  mlir::OperationState::addOperands(a2, ConstantIntValue, v28);
  if (__src != v26)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::verify(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    goto LABEL_26;
  }

  v2 = *(v1 + 17);
  if (v2 != 1)
  {
    if (v2 - 1 == *(v1 + 9))
    {
      return 1;
    }

LABEL_26:
    mlir::affine::AffineDelinearizeIndexOp::verify(this, v15);
    return LOBYTE(v15[0]);
  }

  v13 = "basis should not be empty";
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

  return v3;
}

uint64_t mlir::affine::detail::AffineApplyOpGenericAdaptorBase::AffineApplyOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::affine::AffineApplyOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'affine.apply' op requires attribute 'map'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::affine::AffineApplyOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "map", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 48;
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

uint64_t mlir::affine::AffineApplyOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "map", 3, *a2);
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

unint64_t mlir::affine::AffineApplyOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::affine::AffineApplyOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::affine::AffineApplyOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 24941 && *(a2 + 2) == 112)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::affine::AffineApplyOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "map", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: AffineMap attribute";
        v22 = 51;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::affine::AffineApplyOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::AffineMapAttr]";
  *(&v28 + 1) = 69;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v40;
      v19 = __p;
      if (v40 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
      {
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
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

uint64_t mlir::affine::AffineApplyOp::setMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void mlir::affine::AffineApplyOp::build(mlir::IndexType **a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = a4;
  IndexType = mlir::Builder::getIndexType(a1, a2);
  v11 = mlir::AffineMap::inferFromExprList(v12, 1uLL, *a1, &v13);
  mlir::affine::AffineApplyOp::build(v11, a2, IndexType, *v13, a5, a6);
  if (v13 != v14)
  {
    free(v13);
  }
}

uint64_t mlir::affine::AffineApplyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::AffineMapAttr::get(a4);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = result;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::affine::AffineApplyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = a4;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::affine::AffineApplyOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a3;
  __src = v21;
  v20 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!HIDWORD(v20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v20) = 1;
  }

  v16 = v9;
  IndexType = mlir::Builder::getIndexType(&v16, v11);
  v13 = __src;
  *__src = IndexType;
  v14 = v20;
  v15 = *(a2 + 72);
  if (v15 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v20);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v21)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineApplyOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 8);
  if (v12 != 1)
  {
    if (!v12)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v14 = a1;
  **a11 = mlir::Builder::getIndexType(&v14, a2);
  return 1;
}

unint64_t mlir::affine::AffineApplyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a5;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

void mlir::affine::AffineApplyOp::build(mlir::IndexType **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  __src = v22;
  v21 = 0x200000000;
  v10 = *a1;
  mlir::ValueRange::ValueRange(&v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  if (v21 != 1)
  {
    if (!v21)
    {
      if (!HIDWORD(v21))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v21) = 1;
  }

  v17 = v10;
  IndexType = mlir::Builder::getIndexType(&v17, v12);
  v14 = __src;
  *__src = IndexType;
  v15 = v21;
  v16 = *(a2 + 72);
  if (v16 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v21);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v22)
  {
    free(__src);
  }
}

unint64_t mlir::affine::AffineApplyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::AffineMapAttr::get(a5);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = result;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

uint64_t mlir::affine::AffineApplyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::affine::AffineApplyOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v10 = *(a2 + 120);
  if (a6 + v10 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v10), a5, 16 * a6);
    *(a2 + 120) += a6;
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 8);
    if (*(v12 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v13 + 144))(v13, v12, v11, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v10;
  }

  __src = v27;
  v26 = 0x200000000;
  v16 = *a1;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v24, *(a2 + 224), *(a2 + 232));
  if (v26 != 1)
  {
    if (!v26)
    {
      if (!HIDWORD(v26))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v26) = 1;
  }

  v23 = v16;
  IndexType = mlir::Builder::getIndexType(&v23, v18);
  v20 = __src;
  *__src = IndexType;
  v21 = v26;
  v22 = *(a2 + 72);
  if (v22 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v26)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v26);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineApplyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v20[0] = v2;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 68);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 72) + 24;
        while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6) & 1) != 0)
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            v4 = *this;
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::affine::AffineApplyOp::verifyInvariantsImpl(v4);
    return LOBYTE(v20[0]);
  }

  else
  {
    v18 = "requires attribute 'map'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

unint64_t mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "ne13AffineDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_25738B285 + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_25738B285 + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_25738B285 + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

unint64_t mlir::affine::AffineDelinearizeIndexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

void mlir::affine::AffineDelinearizeIndexOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  __src = v23;
  v22 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v19, *(a2 + 224), *(a2 + 232));
  if ((mlir::affine::AffineDelinearizeIndexOp::inferReturnTypes(v9, v12, v13, v20[0], v20[1], Dictionary, v14, v15, v19[0], v19[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = v22;
  v17 = *(a2 + 72);
  if (v17 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v17), __src, 8 * v22);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v23)
  {
    free(__src);
  }
}

unint64_t mlir::affine::AffineDelinearizeIndexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
  return result;
}

void mlir::affine::AffineDelinearizeIndexOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v25;
  v24 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::affine::AffineDelinearizeIndexOp::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v22[0], v22[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), __src, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    v2 = *this;
    if ((*(*this + 46) & 0x80) == 0)
    {
      v4 = -1;
      v5 = 32;
LABEL_5:
      v6 = v5 + 24;
      v7 = 1;
      while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7) & 1) != 0)
      {
        ++v7;
        v6 += 32;
        if (!--v4)
        {
          v2 = *this;
          goto LABEL_9;
        }
      }

      return 0;
    }

    v3 = *(v2 + 17);
    v4 = v3 - 1;
    if (v3 != 1)
    {
      v5 = *(v2 + 9) + 32;
      goto LABEL_5;
    }

LABEL_9:
    v8 = *(v2 + 9);
    v9 = v2 - 16;
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v8)
    {
      return 1;
    }

    v11 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, v11);
      if ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v11) & 1) == 0)
      {
        break;
      }

      if (v8 == ++v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::parse(mlir::affine::AffineDelinearizeIndexOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v22[16] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v20 = v22;
  v21 = 0x400000000;
  v17 = &v19;
  v18 = 0x100000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v13, 1) & 1) == 0)
  {
    goto LABEL_15;
  }

  v16 = 257;
  if (((*(*this + 400))(this, "into", 4, v15) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_15;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v20, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*this + 296))(this) & 1) == 0)
  {
    goto LABEL_15;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((mlir::AsmParser::parseTypeList(this, &v17) & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  mlir::OperationState::addTypes(a2, v17, v18);
  if (((*(*this + 728))(this, v13, IndexType, a2 + 16) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v21)
  {
    v8 = v20;
    v9 = 32 * v21;
    while (((*(*this + 728))(this, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v10 = 1;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    v10 = 0;
LABEL_16:
    v11 = v17;
    if (v17 != &v19)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v10 = 1;
  v11 = v17;
  if (v17 != &v19)
  {
LABEL_17:
    free(v11);
  }

LABEL_18:
  if (v20 != v22)
  {
    free(v20);
  }

  return v10;
}

uint64_t mlir::affine::detail::AffineForOpGenericAdaptorBase::AffineForOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

unint64_t mlir::affine::detail::AffineForOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::affine::detail::AffineForOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 48);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 64);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v7 = vaddq_s32(v6[-1], v7);
      v9 = vaddq_s32(*v6, v9);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    v4 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v3 == a2)
    {
      return v4 | (v2[a2] << 32);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = (this + 4 * v3 + 48);
  v11 = a2 - v3;
  do
  {
    v12 = *v10++;
    v4 += v12;
    --v11;
  }

  while (v11);
  return v4 | (v2[a2] << 32);
}

uint64_t mlir::affine::AffineForOpAdaptor::verify(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    if (a1[4])
    {
      if (a1[5])
      {
        v27 = a1[4];
        if (*(*mlir::IntegerAttr::getType(&v27) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          return 1;
        }

        v25[0] = "'affine.for' op attribute 'step' failed to satisfy constraint: index attribute";
        v26 = 259;
        mlir::emitError(a2, v25, &v27);
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
        if (v27)
        {
          mlir::InFlightDiagnostic::report(&v27);
        }

        if (v36 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v28);
        }

        return v3;
      }

      v25[0] = "'affine.for' op requires attribute 'upperBoundMap'";
      v26 = 259;
      mlir::emitError(a2, v25, &v27);
      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
      if (v27)
      {
        mlir::InFlightDiagnostic::report(&v27);
      }

      if (v36 == 1)
      {
        if (v35 != &v36)
        {
          free(v35);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v34;
          v20 = __p;
          if (v34 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v34 = v18;
          operator delete(v20);
        }

        v7 = v31;
        if (!v31)
        {
          goto LABEL_59;
        }

        v21 = v32;
        v9 = v31;
        if (v32 == v31)
        {
LABEL_58:
          v32 = v7;
          operator delete(v9);
LABEL_59:
          if (v29 != &v30)
          {
            free(v29);
          }

          return v3;
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

        while (v21 != v7);
LABEL_57:
        v9 = v31;
        goto LABEL_58;
      }
    }

    else
    {
      v25[0] = "'affine.for' op requires attribute 'step'";
      v26 = 259;
      mlir::emitError(a2, v25, &v27);
      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
      if (v27)
      {
        mlir::InFlightDiagnostic::report(&v27);
      }

      if (v36 == 1)
      {
        if (v35 != &v36)
        {
          free(v35);
        }

        v12 = __p;
        if (__p)
        {
          v13 = v34;
          v14 = __p;
          if (v34 != __p)
          {
            do
            {
              v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
            }

            while (v13 != v12);
            v14 = __p;
          }

          v34 = v12;
          operator delete(v14);
        }

        v7 = v31;
        if (!v31)
        {
          goto LABEL_59;
        }

        v15 = v32;
        v9 = v31;
        if (v32 == v31)
        {
          goto LABEL_58;
        }

        do
        {
          v17 = *--v15;
          v16 = v17;
          *v15 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v15 != v7);
        goto LABEL_57;
      }
    }
  }

  else
  {
    v25[0] = "'affine.for' op requires attribute 'lowerBoundMap'";
    v26 = 259;
    mlir::emitError(a2, v25, &v27);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v34;
        v6 = __p;
        if (v34 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v34 = v4;
        operator delete(v6);
      }

      v7 = v31;
      if (!v31)
      {
        goto LABEL_59;
      }

      v8 = v32;
      v9 = v31;
      if (v32 == v31)
      {
        goto LABEL_58;
      }

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
      goto LABEL_57;
    }
  }

  return v3;
}

unint64_t mlir::affine::AffineForOp::getODSOperandIndexAndLength(mlir::affine::AffineForOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 88);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

uint64_t mlir::affine::AffineForOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v49 = v6;
  if (!v6)
  {
    a3(&v52, a4);
    if (v52)
    {
      LODWORD(v50) = 3;
      *(&v50 + 1) = "expected DictionaryAttr to set properties";
      v51 = 41;
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v54 + 24 * v55;
      v23 = v50;
      *(v22 + 2) = v51;
      *v22 = v23;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }

    if (v63 != 1)
    {
      return 0;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v61;
      v26 = __p;
      if (v61 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v61 = v24;
      operator delete(v26);
    }

    v17 = v58;
    if (!v58)
    {
      goto LABEL_70;
    }

    v27 = v59;
    v19 = v58;
    if (v59 == v58)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v49, "lowerBoundMap", 0xDuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v9 = v8;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 58;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v54 + 24 * v55;
        v11 = v50;
        *(v10 + 2) = v51;
        *v10 = v11;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v9);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v54 + 24 * v55;
          v13 = v50;
          *(v12 + 2) = v51;
          *v12 = v13;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v61;
        v16 = __p;
        if (v61 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v61 = v14;
        operator delete(v16);
      }

      v17 = v58;
      if (!v58)
      {
LABEL_70:
        if (v54 != &v57)
        {
          free(v54);
        }

        return 0;
      }

      v18 = v59;
      v19 = v58;
      if (v59 == v58)
      {
LABEL_69:
        v59 = v17;
        operator delete(v19);
        goto LABEL_70;
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
LABEL_68:
      v19 = v58;
      goto LABEL_69;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v49, "step", 4uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v31 = v30;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 49;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v54 + 24 * v55;
        v33 = v50;
        *(v32 + 2) = v51;
        *v32 = v33;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v31);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v54 + 24 * v55;
          v35 = v50;
          *(v34 + 2) = v51;
          *v34 = v35;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v61;
        v38 = __p;
        if (v61 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v61 = v36;
        operator delete(v38);
      }

      v17 = v58;
      if (!v58)
      {
        goto LABEL_70;
      }

      v39 = v59;
      v19 = v58;
      if (v59 == v58)
      {
        goto LABEL_69;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v17);
      goto LABEL_68;
    }

    a1[1] = v30;
  }

  v42 = mlir::DictionaryAttr::get(&v49, "upperBoundMap", 0xDuLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v43 = v42;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 58;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v54 + 24 * v55;
        v45 = v50;
        *(v44 + 2) = v51;
        *v44 = v45;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v43);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v54 + 24 * v55;
          v47 = v50;
          *(v46 + 2) = v51;
          *v46 = v47;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if (v63 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v53);
      }

      return 0;
    }

    a1[2] = v42;
  }

  if (mlir::DictionaryAttr::get(&v49, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v49, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::affine::AffineForOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "lowerBoundMap", 0xD, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v16) = v16 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v14, "step", 4, v6);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v15 + 16 * v16);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v16) = v16 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v14, "upperBoundMap", 0xD, v10);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v15 + 16 * v16);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v16) = v16 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::affine::AffineForOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = *(a1 + 28);
  v10 = __ROR8__(v9 + 12, 12);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::affine::AffineForOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "step", 4uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (*__s1 != 0x756F427265776F6CLL || *(__s1 + 5) != 0x70614D646E756F42)
  {
    if (!memcmp(__s1, "upperBoundMap", 0xDuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::affine::AffineForOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<int>::classof();
    }
  }

  else if (a3 == 4)
  {
    result = memcmp(__s1, "step", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 8) = v7;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 13)
  {
    if (*__s1 == 0x756F427265776F6CLL && *(__s1 + 5) == 0x70614D646E756F42)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *result = v8;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "upperBoundMap", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          *(v5 + 16) = v9;
        }

        else
        {
          *(v5 + 16) = 0;
        }
      }
    }
  }

  return result;
}

void mlir::affine::AffineForOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "lowerBoundMap", 0xDuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "step", 4uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "upperBoundMap", 0xDuLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::affine::AffineForOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v8, "lowerBoundMap", 13, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v9, "step", 4, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v10, "upperBoundMap", 13, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v27 = a1;
    v7 = a4;
    v8 = a5;
    Type = mlir::IntegerAttr::getType(&v27);
    a5 = v8;
    a4 = v7;
    if (*(*Type + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }
  }

  a4(&v27, a5);
  if (v27)
  {
    LODWORD(v24) = 3;
    *(&v24 + 1) = "attribute '";
    v25 = 11;
    if (v30 >= v31)
    {
      if (v29 > &v24 || v29 + 24 * v30 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v29 + 24 * v30;
    v11 = v24;
    *(v10 + 2) = v25;
    *v10 = v11;
    ++v30;
    if (v27)
    {
      v26 = 261;
      *&v24 = a2;
      *(&v24 + 1) = a3;
      mlir::Diagnostic::operator<<(&v28, &v24);
      if (v27)
      {
        LODWORD(v24) = 3;
        *(&v24 + 1) = "' failed to satisfy constraint: index attribute";
        v25 = 47;
        if (v30 >= v31)
        {
          if (v29 > &v24 || v29 + 24 * v30 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v29 + 24 * v30;
        v13 = v24;
        *(v12 + 2) = v25;
        *v12 = v13;
        ++v30;
      }
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v36;
      v17 = __p;
      if (v36 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v36 = v15;
      operator delete(v17);
    }

    v18 = v33;
    if (v33)
    {
      v19 = v34;
      v20 = v33;
      if (v34 != v33)
      {
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
        v20 = v33;
      }

      v34 = v18;
      operator delete(v20);
    }

    if (v29 != &v32)
    {
      free(v29);
    }
  }

  return v14;
}

uint64_t mlir::affine::AffineForOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, *(a2 + 256)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, (v3 + 8)) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, (v3 + 16)) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 3uLL)))
      {
        return 1;
      }
    }

    else
    {
      v15 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v15) < 4)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v13 = "size mismatch for operand/result_segment_size";
        v14 = 259;
        (*(*a1 + 16))(v16, a1, &v13);
        if (v16[0])
        {
          mlir::InFlightDiagnostic::report(v16);
        }

        if (v24 == 1)
        {
          if (v23 != &v24)
          {
            free(v23);
          }

          v4 = __p;
          if (__p)
          {
            v5 = v22;
            v6 = __p;
            if (v22 != __p)
            {
              do
              {
                v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
              }

              while (v5 != v4);
              v6 = __p;
            }

            v22 = v4;
            operator delete(v6);
          }

          v7 = v19;
          if (v19)
          {
            v8 = v20;
            v9 = v19;
            if (v20 != v19)
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
              v9 = v19;
            }

            v20 = v7;
            operator delete(v9);
          }

          if (v17 != &v18)
          {
            free(v17);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::affine::AffineForOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 16))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 3);
  }

  return result;
}

uint64_t mlir::affine::AffineForOp::setStep(uint64_t a1, llvm::APInt *a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  IndexType = mlir::Builder::getIndexType(&v7, v4);
  result = mlir::Builder::getIntegerAttr(&Context, IndexType, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::affine::AffineForOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'lowerBoundMap'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        goto LABEL_56;
      }

LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'step'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 != v38)
      {
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

        while (v20 != v12);
LABEL_56:
        v14 = v38;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v35[0] = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v2, "lowerBoundMap", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v6, "upperBoundMap", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v5, "step", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    mlir::affine::AffineForOp::verifyInvariantsImpl();
    return LOBYTE(v35[0]);
  }

  v33[0] = "requires attribute 'upperBoundMap'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::affine::AffineIfOp::verifyInvariantsImpl(unsigned int **this)
{
  v2 = *this;
  v3 = v2[9];
  if (v2[9])
  {
    v4 = (v2 - 4);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(v2, ((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10], "thenRegion", 10, 0) & 1;
}

BOOL mlir::affine::AffineIfOp::verifyInvariants(unsigned int **this)
{
  v2 = *this;
  v3 = v2[9];
  if (v2[9])
  {
    v4 = (v2 - 4);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  return (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(v2, ((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10], "thenRegion", 10, 0) & 1) != 0 && mlir::affine::AffineIfOp::verify(this);
}

uint64_t mlir::affine::detail::AffineLoadOpGenericAdaptorBase::AffineLoadOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::affine::detail::AffineLoadOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::affine::detail::AffineLoadOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "ne13AffineDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_25738B285 + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_25738B285 + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_25738B285 + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::affine::AffineLoadOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'affine.load' op requires attribute 'map'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::affine::AffineLoadOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "map", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 48;
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

uint64_t mlir::affine::AffineLoadOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "map", 3, *a2);
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

unint64_t mlir::affine::AffineLoadOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::affine::AffineLoadOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::affine::AffineLoadOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 24941 && *(a2 + 2) == 112)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::affine::AffineLoadOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "map", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::affine::AffineLoadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2) & 1;
}

uint64_t mlir::affine::AffineLoadOp::setMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a7;
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v19 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a8;
  v16 = *(a2 + 72);
  if (a4 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a4 != v17);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a4;
  return result;
}

uint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::AffineMapAttr::get(a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v19 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::AffineMapAttr::get(a8);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = result;
  v16 = *(a2 + 72);
  if (a4 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a4 != v17);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a4;
  return result;
}

uint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::affine::AffineLoadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v25[0] = v2;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) == 0 || (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) == 0)
    {
      v6 = -1;
      v7 = 32;
LABEL_7:
      v8 = v7 + 24;
      v9 = 1;
      while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v9) & 1) != 0)
      {
        ++v9;
        v8 += 32;
        if (!--v6)
        {
          v4 = *this;
          goto LABEL_11;
        }
      }

      return 0;
    }

    v5 = *(v4 + 17);
    v6 = v5 - 1;
    if (v5 != 1)
    {
      v7 = *(v4 + 9) + 32;
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(v4 + 9);
    v11 = v4 - 16;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
    return 1;
  }

  else
  {
    v23 = "requires attribute 'map'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v31;
        v16 = __p;
        if (v31 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v31 = v14;
        operator delete(v16);
      }

      v17 = v28;
      if (v28)
      {
        v18 = v29;
        v19 = v28;
        if (v29 != v28)
        {
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
          v19 = v28;
        }

        v29 = v17;
        operator delete(v19);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v13;
}

uint64_t mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
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
      mlir::scf::__mlir_ods_local_type_constraint_SCFOps5();
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

void mlir::affine::AffineLoadOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::mps::ReadVariableOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *(*a1 + 72);
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v12 = 0;
  v11 = 0;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v3 + 24) = 0;
      *(v3 + 32) = v5;
      *(v3 + 36) = v6;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v9 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

uint64_t mlir::affine::detail::AffineMaxOpGenericAdaptorBase::AffineMaxOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::affine::AffineMaxOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'affine.max' op requires attribute 'map'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::affine::AffineMaxOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "map", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 48;
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

uint64_t mlir::affine::AffineMaxOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "map", 3, *a2);
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

unint64_t mlir::affine::AffineMaxOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::affine::AffineMaxOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::affine::AffineMaxOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 24941 && *(a2 + 2) == 112)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::affine::AffineMaxOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "map", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::affine::AffineMaxOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2) & 1;
}

uint64_t mlir::affine::AffineMaxOp::setMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = a4;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::affine::AffineMaxOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a3;
  __src = v21;
  v20 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!HIDWORD(v20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v20) = 1;
  }

  v16 = v9;
  IndexType = mlir::Builder::getIndexType(&v16, v11);
  v13 = __src;
  *__src = IndexType;
  v14 = v20;
  v15 = *(a2 + 72);
  if (v15 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v20);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v21)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineMaxOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 8);
  if (v12 != 1)
  {
    if (!v12)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v14 = a1;
  **a11 = mlir::Builder::getIndexType(&v14, a2);
  return 1;
}

unint64_t mlir::affine::AffineMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a5;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

uint64_t mlir::affine::AffineMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::AffineMapAttr::get(a4);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = result;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::affine::AffineMaxOp::build(mlir::IndexType **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  __src = v22;
  v21 = 0x200000000;
  v10 = *a1;
  mlir::ValueRange::ValueRange(&v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  if (v21 != 1)
  {
    if (!v21)
    {
      if (!HIDWORD(v21))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v21) = 1;
  }

  v17 = v10;
  IndexType = mlir::Builder::getIndexType(&v17, v12);
  v14 = __src;
  *__src = IndexType;
  v15 = v21;
  v16 = *(a2 + 72);
  if (v16 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v21);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v22)
  {
    free(__src);
  }
}

unint64_t mlir::affine::AffineMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::AffineMapAttr::get(a5);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = result;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

uint64_t mlir::affine::AffineMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::affine::AffineMaxOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v10 = *(a2 + 120);
  if (a6 + v10 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v10), a5, 16 * a6);
    *(a2 + 120) += a6;
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 8);
    if (*(v12 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v13 + 144))(v13, v12, v11, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v10;
  }

  __src = v27;
  v26 = 0x200000000;
  v16 = *a1;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v24, *(a2 + 224), *(a2 + 232));
  if (v26 != 1)
  {
    if (!v26)
    {
      if (!HIDWORD(v26))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v26) = 1;
  }

  v23 = v16;
  IndexType = mlir::Builder::getIndexType(&v23, v18);
  v20 = __src;
  *__src = IndexType;
  v21 = v26;
  v22 = *(a2 + 72);
  if (v22 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v26)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v26);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineMaxOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v20[0] = v2;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 68);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 72) + 24;
        while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6) & 1) != 0)
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            v4 = *this;
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::affine::AffineApplyOp::verifyInvariantsImpl(v4);
    return LOBYTE(v20[0]);
  }

  else
  {
    v18 = "requires attribute 'map'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

uint64_t mlir::affine::detail::AffineMinOpGenericAdaptorBase::AffineMinOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::affine::AffineMinOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'affine.min' op requires attribute 'map'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::affine::AffineMinOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "map", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 48;
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

uint64_t mlir::affine::AffineMinOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "map", 3, *a2);
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

unint64_t mlir::affine::AffineMinOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::affine::AffineMinOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::affine::AffineMinOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 24941 && *(a2 + 2) == 112)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::affine::AffineMinOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "map", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::affine::AffineMinOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2) & 1;
}

uint64_t mlir::affine::AffineMinOp::setMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineMinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = a4;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::affine::AffineMinOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a3;
  __src = v21;
  v20 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!HIDWORD(v20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v20) = 1;
  }

  v16 = v9;
  IndexType = mlir::Builder::getIndexType(&v16, v11);
  v13 = __src;
  *__src = IndexType;
  v14 = v20;
  v15 = *(a2 + 72);
  if (v15 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v20);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v21)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineMinOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 8);
  if (v12 != 1)
  {
    if (!v12)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v14 = a1;
  **a11 = mlir::Builder::getIndexType(&v14, a2);
  return 1;
}

unint64_t mlir::affine::AffineMinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a5;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

uint64_t mlir::affine::AffineMinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::AffineMapAttr::get(a4);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = result;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::affine::AffineMinOp::build(mlir::IndexType **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  __src = v22;
  v21 = 0x200000000;
  v10 = *a1;
  mlir::ValueRange::ValueRange(&v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  if (v21 != 1)
  {
    if (!v21)
    {
      if (!HIDWORD(v21))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v21) = 1;
  }

  v17 = v10;
  IndexType = mlir::Builder::getIndexType(&v17, v12);
  v14 = __src;
  *__src = IndexType;
  v15 = v21;
  v16 = *(a2 + 72);
  if (v16 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v21);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v22)
  {
    free(__src);
  }
}

unint64_t mlir::affine::AffineMinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::AffineMapAttr::get(a5);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = result;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

uint64_t mlir::affine::AffineMinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::affine::AffineMinOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v10 = *(a2 + 120);
  if (a6 + v10 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v10), a5, 16 * a6);
    *(a2 + 120) += a6;
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 8);
    if (*(v12 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v13 + 144))(v13, v12, v11, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v10;
  }

  __src = v27;
  v26 = 0x200000000;
  v16 = *a1;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v24, *(a2 + 224), *(a2 + 232));
  if (v26 != 1)
  {
    if (!v26)
    {
      if (!HIDWORD(v26))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v26) = 1;
  }

  v23 = v16;
  IndexType = mlir::Builder::getIndexType(&v23, v18);
  v20 = __src;
  *__src = IndexType;
  v21 = v26;
  v22 = *(a2 + 72);
  if (v22 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v26)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v26);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::affine::AffineMinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v20[0] = v2;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 68);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 72) + 24;
        while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6) & 1) != 0)
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            v4 = *this;
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::affine::AffineApplyOp::verifyInvariantsImpl(v4);
    return LOBYTE(v20[0]);
  }

  else
  {
    v18 = "requires attribute 'map'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

uint64_t mlir::affine::detail::AffineParallelOpGenericAdaptorBase::AffineParallelOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}