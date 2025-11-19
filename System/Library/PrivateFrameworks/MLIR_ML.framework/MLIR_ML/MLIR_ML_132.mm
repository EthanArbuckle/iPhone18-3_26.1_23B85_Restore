unint64_t mlir::tensor::ExtractSliceOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *v3;
  if (*v3)
  {
    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v24 = v5;
    if (v5)
    {
      if (!mlir::DenseElementsAttr::isSplat(&v24))
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    if (*(*a1 + 36))
    {
      v10 = *a1 - 16;
    }

    else
    {
      v10 = 0;
    }

    v9 = *(*(*(*a1 + 72) + 24) + 8);
    if (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) ^ v9) <= 7 && ((v11 = *a1, v12 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1), *(*a1 + 36)) ? (v13 = *a1 - 16) : (v13 = 0), v24 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8), v14 = mlir::TensorType::operator mlir::ShapedType(&v24), (foldIdentityOffsetSizeAndStrideOpInterface(v11, v12, v14, v15)))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    else
    {
      v16 = *a1;
      v24 = *(*(v16 + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v24);
      if (DefiningOp && (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id ? (v18 = 0) : (v18 = DefiningOp), v18 && (*(v16 + 36) ? (v20 = v16 - 16) : (v20 = 0), (v19 = *(*(*(v18 + 72) + 24) + 8), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) ^ v19) <= 7) && (InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v16), v22 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v18), (mlir::detail::sameOffsetsSizesAndStrides(v18, v22, v16, InterfaceFor, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldExtractAfterInsertSlice(mlir::tensor::ExtractSliceOp)::$_0>, &v24) & 1) != 0))))
      {
        v23 = *(*(v18 + 72) + 24);
        if (v23)
        {
          return v23 | 4;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t foldIdentityOffsetSizeAndStrideOpInterface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v35[0] = a1;
  v35[1] = a2;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Attribute::getContext((a1 + 24));
  mlir::OffsetSizeAndStrideOpInterface::getMixedOffsets(&__dst, v35);
  v4 = __dst;
  if (v40)
  {
    v5 = 8 * v40 - 8;
    do
    {
      v6 = *v4++;
      v7 = mlir::getConstantIntValue(v6) == 0;
      v9 = v8 & v7;
      v10 = (v8 & v7) != 1 || v5 == 0;
      v5 -= 8;
    }

    while (!v10);
    v4 = __dst;
    if (__dst == v41)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
    if (__dst == v41)
    {
      goto LABEL_10;
    }
  }

  free(v4);
LABEL_10:
  if (!v9)
  {
    return 0;
  }

  v33[0] = mlir::ShapedType::getShape(v34);
  v33[1] = v11;
  mlir::OffsetSizeAndStrideOpInterface::getMixedSizes(&__src, v35);
  __dst = v41;
  v40 = 0x400000000;
  v12 = v37;
  v13 = __src;
  if (v37)
  {
    if (__src == v38)
    {
      if (v37 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__dst, __src, 8 * v37);
      v13 = __src;
      LODWORD(v40) = v12;
    }

    else
    {
      __dst = __src;
      v40 = v37;
      __src = v38;
      HIDWORD(v37) = 0;
      v13 = v38;
    }

    LODWORD(v37) = 0;
  }

  v14 = v33;
  v42 = v33;
  if (v13 != v38)
  {
    free(v13);
    v14 = v42;
    v12 = v40;
  }

  v15 = 0;
  v16 = __dst;
  if (v12)
  {
    v17 = v14[1];
    if (v17)
    {
      v18 = *v14;
      v19 = 8 * v17 - 8;
      v20 = 8 * v12 - 8;
      do
      {
        v21 = mlir::getConstantIntValue(*v16) == *v18;
        v23 = v22 & v21;
        if (v23 != 1)
        {
          break;
        }

        if (!v20)
        {
          break;
        }

        ++v16;
        ++v18;
        v24 = v19;
        v19 -= 8;
        v20 -= 8;
      }

      while (v24);
      v15 = v23 ^ 1;
      v16 = __dst;
    }
  }

  if (v16 != v41)
  {
    free(v16);
  }

  if (v15)
  {
    return 0;
  }

  mlir::OffsetSizeAndStrideOpInterface::getMixedStrides(&__dst, v35);
  v26 = __dst;
  if (!v40)
  {
    result = 1;
    if (__dst == v41)
    {
      return result;
    }

LABEL_44:
    v32 = result;
    free(v26);
    return v32;
  }

  v27 = 8 * v40 - 8;
  do
  {
    v28 = *v26++;
    v29 = mlir::getConstantIntValue(v28) == 1;
    result = v30 & v29;
    v31 = result != 1 || v27 == 0;
    v27 -= 8;
  }

  while (!v31);
  v26 = __dst;
  if (__dst != v41)
  {
    goto LABEL_44;
  }

  return result;
}

void *llvm::SmallVector<mlir::OpFoldResult,6u>::SmallVector(void *result, unint64_t a2, uint64_t *a3)
{
  *result = result + 2;
  result[1] = 0x600000000;
  v3 = *a3;
  if (a2 >= 7)
  {
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
    result[3] = v3;
    if (v7 == 2)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  result[2] = v3;
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
  if ((v8.i8[0] & 1) == 0)
  {
    if ((v8.i8[4] & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  result[4] = v3;
  if (v8.i8[4])
  {
LABEL_16:
    result[5] = v3;
    if (v7 != 4)
    {
      goto LABEL_17;
    }

LABEL_3:
    *(result + 2) = a2;
    return result;
  }

LABEL_13:
  if (v7 == 4)
  {
    goto LABEL_3;
  }

LABEL_17:
  v9 = vmovn_s64(vcgtq_u64(v4, xmmword_2573686C0));
  if (v9.i8[0])
  {
    result[6] = v3;
  }

  if ((v9.i8[4] & 1) == 0)
  {
    goto LABEL_3;
  }

  result[7] = v3;
  *(result + 2) = a2;
  return result;
}

uint64_t mlir::tensor::InsertSliceOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "inserted_slice", 14);
}

void mlir::tensor::InsertSliceOp::build(int a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v32[0] = v33;
  v32[1] = 0x600000000;
  v30[0] = &v31;
  v30[1] = 0x600000000;
  v28[0] = &v29;
  v28[1] = 0x600000000;
  v25 = &v27;
  v26 = 0x600000000;
  v22 = &v24;
  v23 = 0x600000000;
  v19 = &v21;
  v20 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v25, v32);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v22, v30);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v19, v28);
  *(a2 + 192) = 0;
  v15 = *(a2 + 120);
  if (a12 + v15 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a12)
  {
    memcpy((*(a2 + 112) + 16 * v15), __src, 16 * a12);
    LODWORD(v15) = *(a2 + 120);
  }

  *(a2 + 120) = v15 + a12;
  mlir::ValueRange::ValueRange(&v18, v25, v26);
  mlir::ValueRange::ValueRange(&v17, v22, v23);
  mlir::ValueRange::ValueRange(&v16, v19, v20);
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v25 = a5;
  v26 = a4;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::OperationState::addOperands(a2, a11, a12);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 24) = 0x100000001;
  *(v20 + 32) = a7;
  *(v20 + 36) = a10;
  *(v20 + 40) = a12;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a13;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = a14;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 16) = a15;
  v24 = *(a2 + 72);
  if (v24 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v24) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::tensor::InsertSliceOp::build(int a1, uint64_t a2, int a3, int a4, void *a5, unint64_t a6, void *a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  mlir::getOffsetsSizesAndStrides(a5, a6, &v14);
  mlir::tensor::InsertSliceOp::build(a1, a2, a3, a4, v14, v15, v16, v17, v18, v19, a7, a8);
}

void mlir::tensor::InsertSliceOp::build(int a1, uint64_t a2, int a3, int a4, int *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10)
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

  mlir::tensor::InsertSliceOp::build(a1, a2, a3, a4, v34, v35, __src, v33[0], __dst, a10, 0, 0);
}

void mlir::tensor::InsertSliceOp::verify(mlir::tensor::InsertSliceOp *this)
{
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

uint64_t mlir::tensor::InsertSliceOp::fold(uint64_t *a1)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v36[0] = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(v36))
  {
    Shape = mlir::RankedTensorType::getShape(v36);
    if (v3)
    {
      v4 = 8 * v3;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*(*a1 + 36))
      {
        v5 = *a1 - 16;
      }

      else
      {
        v5 = 0;
      }

      v35 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (mlir::TensorType::hasRank(&v35))
      {
        v6 = mlir::RankedTensorType::getShape(&v35);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          if (*(*a1 + 36))
          {
            v10 = *a1 - 16;
          }

          else
          {
            v10 = 0;
          }

          v9 = *(*(*(*a1 + 72) + 24) + 8);
          if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) ^ v9) <= 7)
          {
            v11 = *a1;
            InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
            v13 = *(*a1 + 36) ? *a1 - 16 : 0;
            v34 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
            v14 = mlir::TensorType::operator mlir::ShapedType(&v34);
            if (foldIdentityOffsetSizeAndStrideOpInterface(v11, InterfaceFor, v14, v15))
            {
              v33 = *(*(*a1 + 72) + 24);
              return v33 | 4;
            }
          }
        }
      }
    }
  }

  v16 = *a1;
  v36[0] = *(*(*a1 + 72) + 32 * *(*a1 + 104) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v36);
  if (!DefiningOp || (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id ? (v18 = 0) : (v18 = DefiningOp), !v18 || (*(*(*(v16 + 72) + 24) + 8) ^ *(*(*(v18 + 72) + 24) + 8)) > 7 || (v19 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v16), v20 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v18), !mlir::detail::sameOffsetsSizesAndStrides(v18, v20, v16, v19, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterInsertSlice(mlir::tensor::InsertSliceOp)::$_0>, v36))))
  {
    v28 = *a1;
    v36[0] = *(*(*a1 + 72) + 24);
    v29 = mlir::Value::getDefiningOp(v36);
    if (!v29 || (*(*(v29 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? (v30 = 0) : (v30 = v29), !v30 || *(*(v30 + 72) + 24) != *(*(v28 + 72) + 32 * *(v28 + 104) + 24) || (v31 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v28), v32 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v30), (mlir::detail::sameOffsetsSizesAndStrides(v30, v32, v28, v31, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterExtractSlice(mlir::tensor::InsertSliceOp)::$_0>, v36) & 1) == 0) || (v33 = *(*(v30 + 72) + 24)) == 0))
    {
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(a1);
    }

    return v33 | 4;
  }

  v21 = (*(v16 + 72) + 32 * *(v16 + 16 * ((*(v16 + 44) >> 23) & 1) + 88));
  v22 = *(*(v18 + 72) + 32 * *(v18 + 104) + 24);
  v23 = v21[1];
  if (v23)
  {
    v24 = *v21;
    *v23 = *v21;
    if (v24)
    {
      *(v24 + 8) = v23;
    }
  }

  v21[3] = v22;
  v21[1] = v22;
  v25 = *v22;
  *v21 = *v22;
  if (v25)
  {
    *(v25 + 8) = v21;
  }

  *v22 = v21;
  if (*(*a1 + 36))
  {
    v26 = *a1 - 16;
  }

  else
  {
    v26 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) | 4;
}

uint64_t mlir::tensor::InsertSliceOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, unsigned int *a3)
{
  v29[6] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v26 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v26);
  __src = v29;
  v28 = 0x600000000;
  if (v7)
  {
    v8 = v7;
    if (v7 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(__src, 8 * v7);
    LODWORD(v28) = v8;
  }

  v9 = a3[2];
  if (!v9)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v9, &__src);
LABEL_15:
    v13 = __src;
    if (__src == v29)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v9 == 1)
  {
    goto LABEL_15;
  }

  v10 = v9 << 6;
  v11 = (v10 + *a3 - 64);
  v12 = 64 - v10;
  do
  {
    if (v11 + 2 != *v11)
    {
      free(*v11);
    }

    v11 -= 8;
    v12 += 64;
  }

  while (v12);
  a3[2] = 1;
  v13 = __src;
  if (__src != v29)
  {
LABEL_16:
    free(v13);
  }

LABEL_17:
  v14 = *(*a1 + 24);
  v15 = *(*(*a1 + 72) + 32 * *(*a1 + 104) + 24);
  v26 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v29;
  v28 = 0x600000000;
  mlir::RankedTensorType::getShape(&v26);
  if (v16 >= 1)
  {
    for (i = 0; i < v19; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v14, v15, i);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(__src + v28) = MixedSize;
      LODWORD(v28) = v28 + 1;
      mlir::RankedTensorType::getShape(&v26);
    }
  }

  v20 = *a3;
  v21 = __src;
  if (v20 != &__src)
  {
    if (__src != v29)
    {
      if (*v20 != v20 + 16)
      {
        free(*v20);
        v21 = __src;
      }

      *v20 = v21;
      *(v20 + 8) = v28;
      __src = v29;
      HIDWORD(v28) = 0;
      goto LABEL_39;
    }

    v22 = v28;
    v23 = *(v20 + 8);
    if (v23 >= v28)
    {
      if (v28)
      {
        memmove(*v20, __src, 8 * v28);
      }

      goto LABEL_38;
    }

    if (*(v20 + 12) < v28)
    {
      *(v20 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v23)
    {
      memmove(*v20, __src, 8 * v23);
      v24 = v28 - v23;
      if (v28 == v23)
      {
LABEL_38:
        *(v20 + 8) = v22;
LABEL_39:
        LODWORD(v28) = 0;
        v21 = __src;
        goto LABEL_40;
      }
    }

    else
    {
      v23 = 0;
      v24 = v28;
      if (!v28)
      {
        goto LABEL_38;
      }
    }

    memcpy((*v20 + 8 * v23), __src + 8 * v23, 8 * v24);
    goto LABEL_38;
  }

LABEL_40:
  if (v21 != v29)
  {
    free(v21);
  }

  return 1;
}

void mlir::tensor::createCanonicalRankReducingInsertSliceOp(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v25 = a4;
  v26 = a3;
  v24 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v24);
  v8 = v7;
  v9 = v7;
  v10 = mlir::Builder::getIndexAttr(a1, 0) & 0xFFFFFFFFFFFFFFFBLL;
  v34 = &v36;
  v35 = 0x600000000;
  if (v9 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v9)
  {
    v11 = 0;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = &v37;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_2573686A0)));
      if (v14.i8[0])
      {
        *(v13 - 1) = v10;
        if (v14.i8[4])
        {
LABEL_10:
          *v13 = v10;
        }
      }

      else if (v14.i8[4])
      {
        goto LABEL_10;
      }

      v11 += 2;
      v13 += 2;
    }

    while (((v8 + 1) & 0xE) != v11);
  }

  LODWORD(v35) = v8;
  v27 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v31 = &v33;
  v32 = 0x600000000;
  mlir::RankedTensorType::getShape(&v27);
  if (v15 >= 1)
  {
    for (i = 0; i < v18; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a1, a2, a4, i);
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v31 + v32) = MixedSize;
      LODWORD(v32) = v32 + 1;
      mlir::RankedTensorType::getShape(&v27);
    }
  }

  v19 = mlir::Builder::getIndexAttr(a1, 1) & 0xFFFFFFFFFFFFFFFBLL;
  v27 = &v29;
  v28 = 0x600000000;
  if (!v9)
  {
LABEL_25:
    LODWORD(v28) = v8;
    v38[0] = v39;
    v38[1] = 0x100000000;
    mlir::OpBuilder::createOrFold<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1, v38, a2, &v26, &v25, &v34, &v31, &v27);
  }

  v20 = 0;
  v21 = vdupq_n_s64(v9 - 1);
  v22 = &v30;
  while (1)
  {
    v23 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v20), xmmword_2573686A0)));
    if (v23.i8[0])
    {
      *(v22 - 1) = v19;
      if (v23.i8[4])
      {
LABEL_24:
        *v22 = v19;
      }
    }

    else if (v23.i8[4])
    {
      goto LABEL_24;
    }

    v20 += 2;
    v22 += 2;
    if (((v8 + 1) & 0xE) == v20)
    {
      goto LABEL_25;
    }
  }
}

uint64_t mlir::tensor::PadOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "padded", 6);
}

uint64_t parseInferType(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a2 + 32) == 1)
  {
    *a3 = a4;
  }

  return 1;
}

void mlir::tensor::PadOp::verify(mlir::tensor::PadOp *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 36);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

uint64_t mlir::tensor::PadOp::inferResultType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v23 = a1;
  mlir::RankedTensorType::getShape(&v23);
  v14 = a3 == v13 && a5 == v13;
  if (!v14 || a7 && a7 != a5)
  {
    return 0;
  }

  v24 = v26;
  v25 = 0x400000000;
  if (a5)
  {
    v16 = 0;
    do
    {
      if (*(mlir::RankedTensorType::getShape(&v23) + 8 * v16) == 0x8000000000000000 || *(a2 + 8 * v16) == 0x8000000000000000 || *(a4 + 8 * v16) == 0x8000000000000000)
      {
        if (a7)
        {
          v17 = *(a6 + 8 * v16);
          v18 = v25;
          if (v25 >= HIDWORD(v25))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v17 = 0x8000000000000000;
          v18 = v25;
          if (v25 >= HIDWORD(v25))
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v17 = *(a2 + 8 * v16) + *(a4 + 8 * v16) + *(mlir::RankedTensorType::getShape(&v23) + 8 * v16);
        v18 = v25;
        if (v25 >= HIDWORD(v25))
        {
LABEL_22:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      *(v24 + v18) = v17;
      v19 = (v25 + 1);
      LODWORD(v25) = v25 + 1;
      ++v16;
    }

    while (a5 != v16);
    v20 = v24;
  }

  else
  {
    v19 = 0;
    v20 = v26;
  }

  ElementType = mlir::RankedTensorType::getElementType(&v23);
  result = mlir::RankedTensorType::get(v20, v19, ElementType, 0);
  if (v24 != v26)
  {
    v22 = result;
    free(v24);
    return v22;
  }

  return result;
}

BOOL mlir::tensor::PadOp::verifyRegions(mlir::Operation **this)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v66 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v66);
  v5 = v4;
  v6 = *(v2 + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  if (((*(v7 + 7) - *(v7 + 6)) >> 3) != v4)
  {
    v62[0] = "expected the block to have ";
    v63 = 259;
    mlir::OpState::emitError(this, v62, &v66);
    if (v66)
    {
      LODWORD(v64) = 5;
      *(&v64 + 1) = v5;
      if (v69 >= v70)
      {
        if (v68 > &v64 || v68 + 24 * v69 <= &v64)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = v68 + 24 * v69;
      v26 = v64;
      *(v25 + 2) = v65;
      *v25 = v26;
      v27 = ++v69;
      if (v66)
      {
        LODWORD(v64) = 3;
        *(&v64 + 1) = " arguments";
        v65 = 10;
        if (v27 >= v70)
        {
          if (v68 > &v64 || v68 + 24 * v27 <= &v64)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v28 = v68 + 24 * v69;
        v29 = v64;
        *(v28 + 2) = v65;
        *v28 = v29;
        ++v69;
      }
    }

    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
    if (v66)
    {
      mlir::InFlightDiagnostic::report(&v66);
    }

    if (v77 != 1)
    {
      return v30;
    }

    if (v76 != &v77)
    {
      free(v76);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v75;
      v33 = __p;
      if (v75 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v75 = v31;
      operator delete(v33);
    }

    v34 = v72;
    if (!v72)
    {
      goto LABEL_104;
    }

    v35 = v73;
    v36 = v72;
    if (v73 == v72)
    {
      goto LABEL_103;
    }

    do
    {
      v38 = *--v35;
      v37 = v38;
      *v35 = 0;
      if (v38)
      {
        MEMORY[0x259C63150](v37, 0x1000C8077774924);
      }
    }

    while (v35 != v34);
    goto LABEL_102;
  }

  ArgumentTypes = mlir::Block::getArgumentTypes(v7);
  if (ArgumentTypes == v9)
  {
LABEL_12:
    v13 = *(*(*(mlir::Block::getTerminator(v7) + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    if (!v14)
    {
      goto LABEL_83;
    }

    v15 = *v14;
    {
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_83;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_83;
      }
    }

    v19 = v17;
    v20 = v18;
    do
    {
      v21 = v20 >> 1;
      v22 = &v19[2 * (v20 >> 1)];
      v24 = *v22;
      v23 = v22 + 2;
      v20 += ~(v20 >> 1);
      if (v24 < v16)
      {
        v19 = v23;
      }

      else
      {
        v20 = v21;
      }
    }

    while (v20);
    if (v19 != &v17[2 * v18] && *v19 == v16)
    {
      v53 = v19[1];
      v66 = v14;
      v67 = v53;
      if (v13 == mlir::ShapedType::getElementType(&v66))
      {
        return 1;
      }

LABEL_86:
      v62[0] = "expected yield type to match shape element type";
      v63 = 259;
      mlir::OpState::emitOpError(this, v62, &v66);
      v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
      if (v66)
      {
        mlir::InFlightDiagnostic::report(&v66);
      }

      if (v77 != 1)
      {
        return v30;
      }

      if (v76 != &v77)
      {
        free(v76);
      }

      v54 = __p;
      if (__p)
      {
        v55 = v75;
        v56 = __p;
        if (v75 != __p)
        {
          do
          {
            v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
          }

          while (v55 != v54);
          v56 = __p;
        }

        v75 = v54;
        operator delete(v56);
      }

      v34 = v72;
      if (!v72)
      {
        goto LABEL_104;
      }

      v57 = v73;
      v36 = v72;
      if (v73 == v72)
      {
LABEL_103:
        v73 = v34;
        operator delete(v36);
LABEL_104:
        v52 = v68;
        if (v68 == v71)
        {
          return v30;
        }

LABEL_105:
        free(v52);
        return v30;
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

      while (v57 != v34);
LABEL_102:
      v36 = v72;
      goto LABEL_103;
    }

LABEL_83:
    v66 = v14;
    v67 = 0;
    if (v13 == mlir::ShapedType::getElementType(&v66))
    {
      return 1;
    }

    goto LABEL_86;
  }

  v10 = ArgumentTypes;
  v11 = v9;
  v12 = 0;
  while (1)
  {
    v61 = *(*v10 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (!mlir::Type::isIndex(&v61))
    {
      break;
    }

    ++v12;
    v10 += 8;
    if (v10 == v11)
    {
      goto LABEL_12;
    }
  }

  v62[0] = "expected block argument ";
  v63 = 259;
  mlir::OpState::emitOpError(this, v62, &v66);
  if (v66)
  {
    LODWORD(v64) = 5;
    *(&v64 + 1) = v12 + 1;
    if (v69 >= v70)
    {
      if (v68 > &v64 || v68 + 24 * v69 <= &v64)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v68 + 24 * v69;
    v40 = v64;
    *(v39 + 2) = v65;
    *v39 = v40;
    v41 = ++v69;
    if (v66)
    {
      LODWORD(v64) = 3;
      *(&v64 + 1) = " to be an index";
      v65 = 15;
      if (v41 >= v70)
      {
        if (v68 > &v64 || v68 + 24 * v41 <= &v64)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v42 = v68 + 24 * v69;
      v43 = v64;
      *(v42 + 2) = v65;
      *v42 = v43;
      ++v69;
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v77)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v75;
      v46 = __p;
      if (v75 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v75 = v44;
      operator delete(v46);
    }

    v47 = v72;
    if (v72)
    {
      v48 = v73;
      v49 = v72;
      if (v73 != v72)
      {
        do
        {
          v51 = *--v48;
          v50 = v51;
          *v48 = 0;
          if (v51)
          {
            MEMORY[0x259C63150](v50, 0x1000C8077774924);
          }
        }

        while (v48 != v47);
        v49 = v72;
      }

      v73 = v47;
      operator delete(v49);
    }

    v52 = v68;
    if (v68 != v71)
    {
      goto LABEL_105;
    }
  }

  return v30;
}

void mlir::tensor::PadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15)
{
  if (a3)
  {
    *(a2 + 192) = 0;
    v16 = *(a2 + 120);
    if (a15 + v16 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::tensor::PadOp::inferResultType(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8, a5, a6, a7, a8, 0, 0);
    *(a2 + 192) = 0;
    v16 = *(a2 + 120);
    if (a15 + v16 <= *(a2 + 124))
    {
LABEL_3:
      if (a15)
      {
        memcpy((*(a2 + 112) + 16 * v16), a14, 16 * a15);
        LODWORD(v16) = *(a2 + 120);
      }

      *(a2 + 120) = v16 + a15;
      mlir::Builder::getDenseI64ArrayAttr();
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void mlir::tensor::PadOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = a4;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  v16 = *(a2 + 32);
  if (v16)
  {
    v16[6] = 1;
    v16[7] = a6;
    v16[8] = a8;
    v17 = *(a2 + 32);
    if (v17)
    {
      *(v17 + 16) = a9;
      v18 = *(a2 + 32);
      if (v18)
      {
        *(v18 + 8) = a10;
        if (!a11)
        {
          mlir::OperationState::addRegion(a2);
        }

        v19 = *(a2 + 32);
        if (!v19)
        {
          operator new();
        }

        *v19 = a11;
        mlir::OperationState::addRegion(a2);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void mlir::tensor::PadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, const void *a10, uint64_t a11)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v23[0] = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(v23);
  v15 = v14;
  v16 = v14;
  v23[1] = v26;
  v25 = 4;
  if (v14 >= 5uLL)
  {
    v24 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    memset_pattern16(v26, &unk_25736EFD0, 8 * v14);
  }

  v24 = v15;
  LOBYTE(v17) = a9;
  mlir::tensor::PadOp::build(a1, a2, a3, a4, v26, v16, v26, v16, a5, a6, a7, a8, v17, a10, a11);
}

void mlir::tensor::PadOp::build(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, char a9, void *__src, uint64_t a11)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v15 = *(a4 + 8);
  v28 = v30;
  v29 = 0x400000000;
  v25 = &v27;
  v26 = 0x400000000;
  v22 = &v24;
  v23 = 0x400000000;
  v19 = &v21;
  v20 = 0x400000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v28, &v22);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v25, &v19);
  if (a3)
  {
    *(a2 + 192) = 0;
    v16 = *(a2 + 120);
    if (a11 + v16 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::tensor::PadOp::inferResultType(v15 & 0xFFFFFFFFFFFFFFF8, v22, v23, v19, v20, 0, 0);
    *(a2 + 192) = 0;
    v16 = *(a2 + 120);
    if (a11 + v16 <= *(a2 + 124))
    {
LABEL_3:
      if (a11)
      {
        memcpy((*(a2 + 112) + 16 * v16), __src, 16 * a11);
        LODWORD(v16) = *(a2 + 120);
      }

      *(a2 + 120) = v16 + a11;
      mlir::ValueRange::ValueRange(&v18, v28, v29);
      mlir::ValueRange::ValueRange(&v17, v25, v26);
      mlir::Builder::getDenseI64ArrayAttr();
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void mlir::tensor::PadOp::build(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, char a10, void *__src, uint64_t a12)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a9;
  mlir::tensor::PadOp::build(a1, a2, a3, a4, a5, a6, a7, a8, a10, __src, a12);
}

uint64_t mlir::OpBuilder::create<mlir::tensor::YieldOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::YieldOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  v14[0] = *a3;
  mlir::OperationState::addOperands(v15, v14, 1uLL);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::tensor::PadOp::getConstantPaddingValue(mlir::tensor::PadOp *this)
{
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  Terminator = mlir::Block::getTerminator(v3);
  result = 0;
  if (Terminator)
  {
    v6 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v12 = *(*(Terminator + 72) + 24);
    v13 = v12;
    DefiningOp = mlir::Value::getDefiningOp(&v13);
    if (!DefiningOp)
    {
      goto LABEL_14;
    }

    {
      v11 = DefiningOp;
      DefiningOp = v11;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return v12;
    }

    else
    {
LABEL_14:
      ParentBlock = mlir::Value::getParentBlock(&v12);
      v9 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
      if (v9)
      {
        v10 = v9 - 8;
      }

      else
      {
        v10 = 0;
      }

      if (ParentBlock == v10)
      {
        return 0;
      }

      else
      {
        return v12;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::PadOp::fold(uint64_t a1)
{
  if (*(*a1 + 36))
  {
    v2 = *a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v10))
  {
    return 0;
  }

  Shape = mlir::RankedTensorType::getShape(&v10);
  if (v4)
  {
    v5 = 8 * v4;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v6 = *(*a1 + 36) ? *a1 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = *(*(*a1 + 72) + 24);
  if ((*(v8 + 8) ^ *(NextResultAtOffset + 8)) > 7 || *(*a1 + 80))
  {
    return 0;
  }

  return v8 | 4;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::getTiedOpResult(mlir::tensor::ParallelInsertSliceOp *this)
{
  v2 = *(*this + 16);
  if (!v2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor(0);
    ParentOp = 0;
    if (!InterfaceFor)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  ParentOp = mlir::Block::getParentOp(v2);
  InterfaceFor = mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
  if (InterfaceFor)
  {
    if (ParentOp)
    {
      InterfaceFor = mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
      goto LABEL_8;
    }

LABEL_6:
    InterfaceFor = 0;
    goto LABEL_8;
  }

  ParentOp = 0;
LABEL_8:
  v8[0] = ParentOp;
  v8[1] = InterfaceFor;
  YieldingOps = mlir::ParallelCombiningOpInterface::getYieldingOps(v8);
  if (llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(YieldingOps) == *this)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      ++v6;
      YieldingOps = *(YieldingOps + 8);
    }

    while (llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(YieldingOps) != *this);
  }

  return mlir::ParallelCombiningOpInterface::getParentResult(v8, v6);
}

void mlir::tensor::ParallelInsertSliceOp::build(int a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v33[0] = v34;
  v33[1] = 0x600000000;
  v31[0] = &v32;
  v31[1] = 0x600000000;
  v29[0] = &v30;
  v29[1] = 0x600000000;
  v26 = &v28;
  v27 = 0x600000000;
  v23 = &v25;
  v24 = 0x600000000;
  v20 = &v22;
  v21 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v26, v33);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v23, v31);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v20, v29);
  *(a2 + 192) = 0;
  v15 = *(a2 + 120);
  if (a12 + v15 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a12)
  {
    memcpy((*(a2 + 112) + 16 * v15), __src, 16 * a12);
    LODWORD(v15) = *(a2 + 120);
  }

  *(a2 + 120) = v15 + a12;
  mlir::TypeRange::TypeRange(&v19, 0, 0);
  mlir::ValueRange::ValueRange(&v18, v26, v27);
  mlir::ValueRange::ValueRange(&v17, v23, v24);
  mlir::ValueRange::ValueRange(&v16, v20, v21);
  mlir::Builder::getDenseI64ArrayAttr();
}

unint64_t mlir::tensor::ParallelInsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a6;
  v29 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::OperationState::addOperands(a2, a11, a12);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 24) = 0x100000001;
  *(v21 + 32) = a8;
  *(v21 + 36) = a10;
  *(v21 + 40) = a12;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a13;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a14;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 16) = a15;
  v25 = *(a2 + 72);
  if (a4 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v26);
      *(v27 + 8 * v26++) = result;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
  return result;
}

void mlir::tensor::ParallelInsertSliceOp::build(int a1, uint64_t a2, int a3, int a4, void *a5, unint64_t a6, void *a7, uint64_t a8)
{
  v20 = *MEMORY[0x277D85DE8];
  mlir::getOffsetsSizesAndStrides(a5, a6, &v14);
  mlir::tensor::ParallelInsertSliceOp::build(a1, a2, a3, a4, v14, v15, v16, v17, v18, v19, a7, a8);
}

void mlir::tensor::ParallelInsertSliceOp::build(int a1, uint64_t a2, int a3, int a4, int *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10)
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

  mlir::tensor::ParallelInsertSliceOp::build(a1, a2, a3, a4, v34, v35, __src, v33[0], __dst, a10, 0, 0);
}

BOOL mlir::tensor::ParallelInsertSliceOp::verify(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  ParentOp = *(*this + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
  {
    v17 = *(*this + 10);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

  v15 = "expected ParallelCombiningOpInterface parent, got:";
  v16 = 259;
  mlir::OpState::emitError(this, &v15, &v17);
  v3 = *(*this + 2);
  if (v3)
  {
    v4 = mlir::Block::getParentOp(v3);
    if (!v17)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v17)
  {
LABEL_7:
    mlir::Diagnostic::operator<<(&v18, v4);
  }

LABEL_8:
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v17);
  v6 = result;
  if (v17)
  {
    mlir::InFlightDiagnostic::report(&v17);
    result = v6;
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v24;
      v9 = __p;
      if (v24 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v24 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v21;
    if (v21)
    {
      v11 = v22;
      v12 = v21;
      if (v22 != v21)
      {
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
        v12 = v21;
      }

      v22 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v19 != &v20)
    {
      free(v19);
      return v6;
    }
  }

  return result;
}

void mlir::tensor::ParallelInsertSliceOp::getDroppedDims(mlir::tensor::ParallelInsertSliceOp *this)
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(v2);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(this);
}

uint64_t mlir::tensor::ScatterOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "scatter", 7);
}

void mlir::tensor::ScatterOp::verify(mlir::tensor::ScatterOp *this)
{
  v2[26] = *MEMORY[0x277D85DE8];
  v2[0] = *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(v2);
  v2[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

uint64_t mlir::tensor::SplatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = a3;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a4;
  ++*(a2 + 72);
  return result;
}

{
  v12 = a4;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::tensor::SplatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = mlir::RankedTensorType::get(a4, a5, *(a3 + 8) & 0xFFFFFFFFFFFFFFF8, 0);
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v13) = v11;
  ++*(a2 + 72);
  return result;
}

void mlir::tensor::SplatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x600000000;
  v15 = v17;
  v16 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a4, a5, &v15, &v18);
  v7 = v18;
  v8 = v19;
  mlir::ValueRange::ValueRange(v14, v15, v16);
  v9 = v14[0];
  v10 = v14[1];
  v11 = mlir::RankedTensorType::get(v7, v8, *(a3 + 8) & 0xFFFFFFFFFFFFFFF8, 0);
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, v9, v10);
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = v11;
  ++*(a2 + 72);
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18 != v20)
  {
    free(v18);
  }
}

uint64_t mlir::tensor::SplatOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, unsigned int *a3)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v21 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v21);
  v22 = v24;
  v23 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v22, 8 * v6);
    LODWORD(v23) = v7;
  }

  v8 = a3[2];
  if (!v8)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v8, &v22);
LABEL_12:
    v12 = v22;
    if (v22 == v24)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8 == 1)
  {
    goto LABEL_12;
  }

  v9 = v8 << 6;
  v10 = (v9 + *a3 - 64);
  v11 = 64 - v9;
  do
  {
    if (v10 + 2 != *v10)
    {
      free(*v10);
    }

    v10 -= 8;
    v11 += 64;
  }

  while (v11);
  a3[2] = 1;
  v12 = v22;
  if (v22 != v24)
  {
LABEL_13:
    free(v12);
  }

LABEL_14:
  v22 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::RankedTensorType::getShape(&v22);
  if (v13 >= 1)
  {
    v14 = 0;
    for (i = 0; i < v18; ++i)
    {
      v22 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(mlir::RankedTensorType::getShape(&v22) + 8 * i) == 0x8000000000000000)
      {
        v16 = *(*a1 + 72) + 32 * v14++;
        v17 = *(v16 + 56) | 4;
      }

      else
      {
        v22 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
        Shape = mlir::RankedTensorType::getShape(&v22);
        v17 = mlir::Builder::getIndexAttr(a2, *(Shape + 8 * i)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * i) = v17;
      v22 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::RankedTensorType::getShape(&v22);
    }
  }

  return 1;
}

unint64_t mlir::tensor::SplatOp::fold(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = **(a2 + 40);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::TensorType::hasRank(&v12))
      {
        Shape = mlir::RankedTensorType::getShape(&v12);
        if (!v7)
        {
LABEL_12:
          v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v12);
          v13[0] = v2;
          return mlir::DenseElementsAttr::get(v9, v10, v13, 1uLL) & 0xFFFFFFFFFFFFFFFBLL;
        }

        v8 = 8 * v7;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v8 -= 8;
          if (!v8)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::tensor::PackOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "pack", 4);
}

void mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = v15;
  v14[1] = 0x600000000;
  v12[0] = &v13;
  v12[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a7, a8, v12, v14);
  if (a12)
  {
    mlir::Builder::getDenseI64ArrayAttr();
  }

  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v24 = a5;
  v25 = a4;
  v23 = a6;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v23, 1uLL);
  }

  result = mlir::OperationState::addOperands(a2, a9, a10);
  v17 = v23 != 0;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 24) = 0x100000001;
  *(v18 + 32) = v17;
  *(v18 + 36) = a10;
  if (a7)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 8) = a7;
  }

  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a8;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a11;
  v22 = *(a2 + 72);
  if (v22 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v22) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::tensor::PackOp::reifyResultShapes(uint64_t *a1, mlir::IndexType **a2, unsigned int *a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  __src = (*(*(*(*a1 + 72) + 32 * *(*a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::RankedTensorType::getShape(&__src);
  __src = v28;
  v27 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(__src, 8 * v6);
    LODWORD(v27) = v7;
  }

  v8 = a3[2];
  if (!v8)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v8, &__src);
LABEL_12:
    v12 = __src;
    if (__src == v28)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8 == 1)
  {
    goto LABEL_12;
  }

  v9 = v8 << 6;
  v10 = (v9 + *a3 - 64);
  v11 = 64 - v9;
  do
  {
    if (v10 + 2 != *v10)
    {
      free(*v10);
    }

    v10 -= 8;
    v11 += 64;
  }

  while (v11);
  a3[2] = 1;
  v12 = __src;
  if (__src != v28)
  {
LABEL_13:
    free(v12);
  }

LABEL_14:
  v13 = *(v5 + 24);
  v14 = *(*(v5 + 72) + 32 * *(v5 + 104) + 24);
  v25 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v28;
  v27 = 0x600000000;
  mlir::RankedTensorType::getShape(&v25);
  if (v15 >= 1)
  {
    for (i = 0; i < v18; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v13, v14, i);
      if (v27 >= HIDWORD(v27))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(__src + v27) = MixedSize;
      LODWORD(v27) = v27 + 1;
      mlir::RankedTensorType::getShape(&v25);
    }
  }

  v19 = *a3;
  v20 = __src;
  if (v19 != &__src)
  {
    if (__src != v28)
    {
      if (*v19 != v19 + 16)
      {
        free(*v19);
        v20 = __src;
      }

      *v19 = v20;
      *(v19 + 8) = v27;
      __src = v28;
      HIDWORD(v27) = 0;
      goto LABEL_36;
    }

    v21 = v27;
    v22 = *(v19 + 8);
    if (v22 >= v27)
    {
      if (v27)
      {
        memmove(*v19, __src, 8 * v27);
      }

      goto LABEL_35;
    }

    if (*(v19 + 12) < v27)
    {
      *(v19 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v22)
    {
      memmove(*v19, __src, 8 * v22);
      v23 = v27 - v22;
      if (v27 == v22)
      {
LABEL_35:
        *(v19 + 8) = v21;
LABEL_36:
        LODWORD(v27) = 0;
        v20 = __src;
        goto LABEL_37;
      }
    }

    else
    {
      v22 = 0;
      v23 = v27;
      if (!v27)
      {
        goto LABEL_35;
      }
    }

    memcpy((*v19 + 8 * v22), __src + 8 * v22, 8 * v23);
    goto LABEL_35;
  }

LABEL_37:
  if (v20 != v28)
  {
    free(v20);
  }

  return 1;
}

void mlir::tensor::PackOp::getDimAndTileMapping(mlir::tensor::PackOp *this@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v3 = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 64);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

void mlir::tensor::PackOp::getMixedTiles(mlir::tensor::PackOp *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  Context = mlir::Attribute::getContext((*this + 24));
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  v5 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 80);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

void mlir::tensor::PackOp::getStaticTiles(mlir::tensor::PackOp *this@<X0>, void *a2@<X8>)
{
  v4[6] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3[8] = v4;
  v3[9] = 0x600000000;
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  mlir::tensor::PackOp::getMixedTiles(&v2, v3);
}

uint64_t mlir::tensor::PackOp::getAllOuterDims(mlir::tensor::PackOp *this)
{
  v4 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v5[0] = mlir::TensorType::operator mlir::ShapedType(&v4);
  v5[1] = v2;
  mlir::ShapedType::getShape(v5);
  v4 = (*(*(*(*this + 72) + 32 * *(*this + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  return mlir::RankedTensorType::getShape(&v4);
}

uint64_t mlir::tensor::PackOp::requirePaddingValue(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, const void *a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v28[6] = *MEMORY[0x277D85DE8];
  if (a6 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a6;
  }

  v26 = v28;
  v27 = 0x600000000;
  if (((8 * v14) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = 0;
  if (v14)
  {
    memcpy(v26, a5, 8 * v14);
    v15 = v27;
  }

  LODWORD(v27) = v15 + v14;
  if (a8)
  {
    mlir::invertPermutationVector(a7, a8, &v24);
    mlir::applyPermutationToVector<long long,6u>(&v26, v24);
    if (v24 != &v25)
    {
      free(v24);
    }
  }

  if (!a4)
  {
LABEL_21:
    v21 = 0;
    v22 = v26;
    if (v26 != v28)
    {
      goto LABEL_22;
    }

    return v21;
  }

  v17 = 8 * a4;
  while (1)
  {
    if (*(a1 + 8 * *a3) == 0x8000000000000000)
    {
      goto LABEL_14;
    }

    ConstantIntValue = mlir::getConstantIntValue(*a9);
    if ((v19 & 1) == 0)
    {
      break;
    }

    if (*(a1 + 8 * *a3) % ConstantIntValue)
    {
      goto LABEL_19;
    }

LABEL_14:
    ++a3;
    ++a9;
    v17 -= 8;
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  v20 = *(v26 + *a3);
  if (v20 == 0x8000000000000000 || !(*(a1 + 8 * *a3) % v20))
  {
    goto LABEL_14;
  }

LABEL_19:
  v21 = 1;
  v22 = v26;
  if (v26 == v28)
  {
    return v21;
  }

LABEL_22:
  free(v22);
  return v21;
}

void mlir::applyPermutationToVector<long long,6u>(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v12 = v14;
  v13 = 0x600000000;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = v14;
  if (v5)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      v9 = *a2++;
      *&v14[v7] = v4[v9];
      v7 += 8;
      --v8;
    }

    while (v8);
  }

  LODWORD(v13) = v5;
  if (&v12 != a1)
  {
    v10 = *(a1 + 8);
    if (v10 >= v5)
    {
      if (v5)
      {
        memmove(*a1, v14, 8 * v5);
      }

      goto LABEL_15;
    }

    if (*(a1 + 12) < v5)
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v10)
    {
      memmove(*a1, v14, 8 * v10);
      v11 = v13 - v10;
      if (v13 == v10)
      {
LABEL_15:
        *(a1 + 8) = v5;
        LODWORD(v13) = 0;
        v6 = v12;
        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0;
      v11 = v13;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    memcpy((*a1 + 8 * v10), &v12[8 * v10], 8 * v11);
    goto LABEL_15;
  }

LABEL_16:
  if (v6 != v14)
  {
    free(v6);
  }
}

void mlir::tensor::PackOp::verify(mlir::tensor::PackOp *this)
{
  v2[8] = *MEMORY[0x277D85DE8];
  v1 = *this;
  mlir::tensor::PackOp::getMixedTiles(&v1, v2);
}

void mlir::tensor::PackOp::getOuterDimsPerm(mlir::tensor::PackOp *this)
{
  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

  mlir::Attribute::getContext((*this + 24));
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::PackOp::getResultShape(mlir::MLIRContext **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, size_t __n)
{
  v15 = a3;
  v69[6] = *MEMORY[0x277D85DE8];
  *a9 = a9 + 16;
  *(a9 + 8) = 0x600000000;
  v19 = 8 * a4;
  if (a4 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    memcpy((a9 + 16), a3, v19);
    v20 = *(a9 + 8);
  }

  else
  {
    v20 = 0;
  }

  v56 = a4;
  *(a9 + 8) = v20 + a4;
  v21 = *a1;
  AffineSymbolExpr = mlir::getAffineSymbolExpr(0, *a1, a3);
  v23 = mlir::getAffineSymbolExpr(1, v21, v22);
  v25 = mlir::AffineExpr::ceilDiv(&AffineSymbolExpr, v23);
  __src = v66;
  v65 = 0x600000000;
  v57 = a7;
  if (a8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy(v66, a7, 8 * a8);
    v26 = v65;
    v27 = __src;
  }

  else
  {
    v26 = 0;
    v27 = v66;
  }

  v58 = a8;
  v67 = v69;
  v68 = 0x600000000;
  v28 = v26 + a8;
  LODWORD(v65) = v26 + a8;
  if (v26 + a8)
  {
    if (v27 == v66)
    {
      v29 = v26 + a8;
      if (v28 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v67, v27, 8 * v29);
      v27 = __src;
      LODWORD(v68) = v28;
    }

    else
    {
      v67 = v27;
      LODWORD(v68) = v26 + a8;
      HIDWORD(v68) = HIDWORD(v65);
      __src = v66;
      HIDWORD(v65) = 0;
      v27 = v66;
    }

    LODWORD(v65) = 0;
  }

  if (v27 != v66)
  {
    free(v27);
    v28 = v68;
  }

  v30 = __n;
  v31 = v67;
  if (v28)
  {
    v32 = 8 * v28;
    v33 = a2;
    v34 = a5;
    do
    {
      __src = *(*a9 + 8 * *v31);
      v35 = *v34++;
      v65 = v35;
      ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply(a1, v33, v25, &__src, 2);
      v37 = *v31++;
      *(*a9 + 8 * v37) = ComposedFoldedAffineApply;
      v32 -= 8;
    }

    while (v32);
    v31 = v67;
    a2 = v33;
    v30 = __n;
  }

  if (v31 != v69)
  {
    free(v31);
  }

  if (v30)
  {
    mlir::applyPermutationToVector<mlir::OpFoldResult,6u>(a9, a10);
  }

  v38 = 8 * a6;
  v39 = *(a9 + 8);
  if (v39 + ((8 * a6) >> 3) > *(a9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*a9 + 8 * v39), a5, 8 * a6);
    LODWORD(v39) = *(a9 + 8);
  }

  *(a9 + 8) = v39 + a6;
  __src = v66;
  v65 = 0x600000000;
  if (v56)
  {
    LODWORD(v40) = 0;
    do
    {
      if (*v15 < 8 || (*v15 & 4) == 0)
      {
        ConstantIntValue = mlir::getConstantIntValue(*v15);
        if (v43)
        {
          v45 = ConstantIntValue;
        }

        else
        {
          v45 = 0x8000000000000000;
        }

        LODWORD(v40) = v65;
        v44 = HIDWORD(v65);
      }

      else
      {
        v44 = HIDWORD(v65);
        v45 = 0x8000000000000000;
      }

      if (v40 >= v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(__src + v40) = v45;
      v40 = (v65 + 1);
      LODWORD(v65) = v65 + 1;
      ++v15;
      v19 -= 8;
    }

    while (v19);
    v46 = __src;
    v61 = v63;
    v62 = 0x600000000;
    if (a6)
    {
      goto LABEL_46;
    }

LABEL_61:
    v47 = 0;
    v53 = v63;
    goto LABEL_62;
  }

  v40 = 0;
  v46 = v66;
  v61 = v63;
  v62 = 0x600000000;
  if (!a6)
  {
    goto LABEL_61;
  }

LABEL_46:
  LODWORD(v47) = 0;
  do
  {
    if (*a5 < 8 || (*a5 & 4) == 0)
    {
      v49 = mlir::getConstantIntValue(*a5);
      if (v50)
      {
        v52 = v49;
      }

      else
      {
        v52 = 0x8000000000000000;
      }

      LODWORD(v47) = v62;
      v51 = HIDWORD(v62);
    }

    else
    {
      v51 = HIDWORD(v62);
      v52 = 0x8000000000000000;
    }

    if (v47 >= v51)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v61 + v47) = v52;
    v47 = (v62 + 1);
    LODWORD(v62) = v62 + 1;
    ++a5;
    v38 -= 8;
  }

  while (v38);
  v53 = v61;
LABEL_62:
  getPackOpResultTypeShape(&v67, v46, v40, v53, v47, v57, v58, v24, a10, __n);
  if (v61 != v63)
  {
    free(v61);
  }

  if (__src != v66)
  {
    free(__src);
  }

  v54 = *(a9 + 8);
  if (v54)
  {
    v55 = 0;
    do
    {
      if (v67[v55] == 0x8000000000000000)
      {
        *(*a9 + 8 * v55) = mlir::getValueOrCreateConstantIndexOp(a1, a2, *(*a9 + 8 * v55)) | 4;
        v54 = *(a9 + 8);
      }

      ++v55;
    }

    while (v54 > v55);
  }

  if (v67 != v69)
  {
    free(v67);
  }
}

void mlir::applyPermutationToVector<mlir::OpFoldResult,6u>(uint64_t a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  __src = v17;
  v16 = 0x600000000;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v5)
  {
    v6 = v17;
    v7 = v5;
    do
    {
      v8 = *a2++;
      *v6++ = v4[v8];
      --v7;
    }

    while (v7);
    v9 = __src;
    v10 = (v16 + v5);
    LODWORD(v16) = v10;
    if (&__src == a1)
    {
      goto LABEL_23;
    }

LABEL_7:
    if (v9 != v17)
    {
      v11 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v11);
        v9 = __src;
        LODWORD(v10) = v16;
      }

      *a1 = v9;
      v12 = HIDWORD(v16);
      *(a1 + 8) = v10;
      *(a1 + 12) = v12;
      __src = v17;
      HIDWORD(v16) = 0;
      goto LABEL_22;
    }

    v13 = *(a1 + 8);
    if (v13 >= v10)
    {
      if (v10)
      {
        memmove(*a1, v9, 8 * v10);
      }

      goto LABEL_21;
    }

    if (*(a1 + 12) < v10)
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v13)
    {
      memmove(*a1, v9, 8 * v13);
      v14 = v16 - v13;
      if (v16 == v13)
      {
LABEL_21:
        *(a1 + 8) = v10;
LABEL_22:
        LODWORD(v16) = 0;
        v9 = __src;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    memcpy((*a1 + 8 * v13), __src + 8 * v13, 8 * v14);
    goto LABEL_21;
  }

  v9 = v17;
  v10 = 0;
  LODWORD(v16) = 0;
  if (&__src != a1)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v9 != v17)
  {
    free(v9);
  }
}

void getPackOpResultTypeShape(uint64_t a1, const void *a2, unint64_t a3, uint64_t *a4, uint64_t a5, const void *a6, unint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v14 = a3;
  v30[6] = *MEMORY[0x277D85DE8];
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    memcpy((a1 + 16), a2, 8 * a3);
    v16 = *(a1 + 8);
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 8) = v16 + v14;
  if (a7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a7)
  {
    memcpy(v27, a6, 8 * a7);
  }

  __dst = v30;
  v29 = 0x600000000;
  if (a7)
  {
    memcpy(__dst, v27, 8 * a7);
    LODWORD(v29) = a7;
  }

  v17 = __dst;
  if (a7)
  {
    v18 = *a1;
    v19 = 8 * a7;
    v20 = a4;
    v21 = __dst;
    do
    {
      v23 = *(v18 + 8 * *v21);
      if (v23 != 0x8000000000000000)
      {
        v24 = *v20;
        v22 = 0x8000000000000000;
        if (*v20 != 0x8000000000000000)
        {
          if (v23)
          {
            if ((v24 ^ v23) < 0)
            {
              v22 = v23 / v24;
            }

            else
            {
              if (v24 < 0)
              {
                v25 = v23 + 1;
              }

              else
              {
                v25 = v23 - 1;
              }

              v22 = v25 / v24 + 1;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        *(v18 + 8 * *v21) = v22;
      }

      ++v21;
      ++v20;
      v19 -= 8;
    }

    while (v19);
  }

  if (v17 != v30)
  {
    free(v17);
  }

  if (a10)
  {
    mlir::applyPermutationToVector<long long,6u>(a1, a9);
  }

  v26 = *(a1 + 8);
  if (v26 + ((8 * a5) >> 3) > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a5)
  {
    memcpy((*a1 + 8 * v26), a4, 8 * a5);
    LODWORD(v26) = *(a1 + 8);
  }

  *(a1 + 8) = v26 + a5;
}

uint64_t mlir::tensor::PackOp::inferPackedType(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4, unint64_t a5, uint64_t *a6, uint64_t a7)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v21 = a1;
  Shape = mlir::RankedTensorType::getShape(&v21);
  getPackOpResultTypeShape(&v22, Shape, v14, a2, a3, a4, a5, v15, a6, a7);
  v16 = v22;
  v17 = v23;
  ElementType = mlir::RankedTensorType::getElementType(&v21);
  result = mlir::RankedTensorType::get(v16, v17, ElementType, 0);
  if (v22 != v24)
  {
    v20 = result;
    free(v22);
    return v20;
  }

  return result;
}

uint64_t mlir::tensor::PackOp::createDestinationTensor(mlir::MLIRContext **a1, uint64_t a2, mlir::MLIRContext *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v64 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v15 = *a1;
  AffineDimExpr = mlir::getAffineDimExpr(0, *a1, a3);
  v17 = mlir::getAffineDimExpr(1, v15, v16);
  v59 = v61;
  v60 = 0x600000000;
  v62 = (*(a3 + 1) & 0xFFFFFFFFFFFFFFF8);
  Shape = mlir::RankedTensorType::getShape(&v62);
  if (v19)
  {
    v20 = Shape;
    v21 = 0;
    v22 = 8 * v19;
    do
    {
      v62 = v21;
      v23 = *(v20 + 8 * v21);
      if (v23 == 0x8000000000000000)
      {
        v24 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(a1, a2, &v58, &v62);
        if (*(v24 + 36))
        {
          v25 = v24 - 16;
        }

        else
        {
          v25 = 0;
        }

        v26 = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0) | 4;
      }

      else
      {
        v26 = mlir::Builder::getIndexAttr(a1, v23) & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v60 >= HIDWORD(v60))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v59 + v60) = v26;
      LODWORD(v60) = v60 + 1;
      v21 = (v21 + 1);
      v22 -= 8;
    }

    while (v22);
  }

  v55 = a5;
  v53 = 8 * a5;
  if (a7 && a5)
  {
    v27 = a4;
    v28 = v53 - 8;
    v29 = 8 * a7 - 8;
    do
    {
      v31 = *a6++;
      v30 = v31;
      v32 = *v27++;
      v33 = *(v59 + v30);
      v34 = mlir::AffineExpr::ceilDiv(&AffineDimExpr, v17);
      v62 = v33;
      v63 = v32;
      ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply(a1, a2, v34, &v62, 2);
      *(v59 + v30) = ComposedFoldedAffineApply;
      if (!v29)
      {
        break;
      }

      v36 = v28;
      v28 -= 8;
      v29 -= 8;
    }

    while (v36);
  }

  if (a10)
  {
    mlir::applyPermutationToVector<mlir::OpFoldResult,6u>(&v59, a9);
  }

  v37 = v60;
  if (v55 + v60 > HIDWORD(v60))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v55)
  {
    memcpy(v59 + 8 * v60, a4, v53);
    v37 = v60;
  }

  LODWORD(v60) = v37 + v55;
  v38 = (*(v58 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (!v38)
  {
    goto LABEL_37;
  }

  v39 = *v38;
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v41 = *(v39 + 8);
    v42 = *(v39 + 16);
    if (v42)
    {
      goto LABEL_27;
    }

LABEL_37:
    v49 = 0;
    goto LABEL_38;
  }

  v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  if (!v42)
  {
    goto LABEL_37;
  }

LABEL_27:
  v43 = v41;
  v44 = v42;
  do
  {
    v45 = v44 >> 1;
    v46 = &v43[2 * (v44 >> 1)];
    v48 = *v46;
    v47 = v46 + 2;
    v44 += ~(v44 >> 1);
    if (v48 < v40)
    {
      v43 = v47;
    }

    else
    {
      v44 = v45;
    }
  }

  while (v44);
  if (v43 == &v41[2 * v42] || *v43 != v40)
  {
    goto LABEL_37;
  }

  v49 = v43[1];
LABEL_38:
  v62 = v38;
  v63 = v49;
  ElementType = mlir::ShapedType::getElementType(&v62);
  v50 = mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(a1, a2, &v59, &ElementType);
  if (v59 != v61)
  {
    free(v59);
  }

  return v50 - 16;
}

void mlir::OpBuilder::create<mlir::tensor::PackOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::Value &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Value,llvm::SmallVector<long long,6u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v22[38] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id, Context);
  if (v18)
  {
    mlir::OperationState::OperationState(v22, a2, v17);
    mlir::tensor::PackOp::build(a1, v22, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, 1, *a8, *(a8 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::PackOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::Value &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Value,llvm::SmallVector<long long,6u> &>(v22, v21, v20);
}

void areTilesAndTiledDimsAllConstant<mlir::tensor::PackOp>(uint64_t a1)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v1 = (*(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = a1;
  v6[0] = v1;
  v3 = mlir::TensorType::operator mlir::ShapedType(v6);
  v4 = v2;
  mlir::tensor::PackOp::getMixedTiles(&v5, v6);
}

uint64_t mlir::tensor::PackOp::canonicalize(uint64_t a1)
{
  v28[4] = *MEMORY[0x277D85DE8];
  *&v24 = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v24);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
  {
    v3 = *(a1 + 44);
    v4 = (a1 + 64 + 16 * ((v3 >> 23) & 1));
    v5 = v4[8];
    if ((v3 & 0x800000) != 0)
    {
      v6 = *(a1 + 72);
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    if (*(v6 + 32 * (v4[7] + v4[6]) + 24))
    {
      __s1 = a1;
      *&v24 = *(a1 + 80);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }

LABEL_12:
    __s1 = &v22;
    v21 = 0x600000000;
    *&v24 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Shape = mlir::RankedTensorType::getShape(&v24);
    v23 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = mlir::RankedTensorType::getShape(&v23);
    v11 = 0;
    v13 = (v10 + 8 * v12);
    if (((v13 - Shape) >> 3) > 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v13 != Shape)
    {
      memcpy(__s1, Shape, v13 - Shape);
      v11 = v21;
    }

    LODWORD(v21) = v11 + ((v13 - Shape) >> 3);
    *&v24 = *(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = mlir::RankedTensorType::getShape(&v24);
    v23 = *(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = mlir::RankedTensorType::getShape(&v23);
    v17 = (v15 + 8 * v16);
    if (((v17 - v14) >> 3) > 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v17 != v14)
    {
      memcpy(&v19, v14, v17 - v14);
    }

    LODWORD(v25) = 0;
    v24 = 0u;
    v26 = v28;
    v27 = 0x400000000;
    v23 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

  v7 = *(a1 + 104);
  v8 = *(a1 + 72);
  if ((*(*(v8 + 32 * v7 + 24) + 8) ^ *(*(*(DefiningOp + 72) + 24) + 8)) <= 7 && (!*(a1 + 112) || !*(v8 + 32 * (v7 + *(a1 + 108)) + 24)))
  {
    hasSameInnerOuterAttribute();
  }

  return 0;
}

void haveSameTiles(uint64_t a1, uint64_t a2)
{
  v4[8] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = a1;
  mlir::tensor::PackOp::getMixedTiles(&v3, v4);
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v17[0] = *a4;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  if (v19 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v18[8] + 8 * v19++) = v11;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

void mlir::OpBuilder::create<mlir::tensor::PackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,mlir::Value,llvm::ArrayRef<long long>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v22[38] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id, Context);
  if (v18)
  {
    mlir::OperationState::OperationState(v22, a2, v17);
    mlir::tensor::PackOp::build(a1, v22, *a3, *a4, *a5, a5[1], *a6, *(a6 + 8), *a7, 1, *a8, a8[1]);
  }

  mlir::OpBuilder::create<mlir::tensor::PackOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::Value &,llvm::SmallVector<long long,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Value,llvm::SmallVector<long long,6u> &>(v22, v21, v20);
}

void mlir::tensor::PackOp::isLikePad(mlir::tensor::PackOp *this)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = *(*this + 36);
  v3 = *this - 16;
  if (!v2)
  {
    v3 = 0;
  }

  v6[0] = v3;
  v6[1] = v2;
  mlir::ResultRange::getTypes(v6, v7);
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7[0], v7[1]);
  v5 = *this;
  v6[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
  v7[0] = *(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

unint64_t mlir::tensor::PackOp::fold(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    v3 = *(a2 + 80);
    v4 = v3[*(a2 + 48) + *(a2 + 52)];
    v5 = v4 != 0;
    v6 = *v3;
    if (*v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = **(a2 + 80);
    if (v6)
    {
LABEL_3:
      if (mlir::DenseElementsAttr::classof(v6))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:
  result = reshapeConstantSource(v7, (*(*(*(*a1 + 72) + 32 * *(*a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), v4, v5);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "unpack", 6);
}

uint64_t mlir::tensor::UnPackOp::reifyResultShapes(uint64_t *a1, mlir::IndexType **a2, unsigned int *a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  __src = (*(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::RankedTensorType::getShape(&__src);
  __src = v28;
  v27 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(__src, 8 * v6);
    LODWORD(v27) = v7;
  }

  v8 = a3[2];
  if (!v8)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v8, &__src);
LABEL_12:
    v12 = __src;
    if (__src == v28)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8 == 1)
  {
    goto LABEL_12;
  }

  v9 = v8 << 6;
  v10 = (v9 + *a3 - 64);
  v11 = 64 - v9;
  do
  {
    if (v10 + 2 != *v10)
    {
      free(*v10);
    }

    v10 -= 8;
    v11 += 64;
  }

  while (v11);
  a3[2] = 1;
  v12 = __src;
  if (__src != v28)
  {
LABEL_13:
    free(v12);
  }

LABEL_14:
  v13 = *(v5 + 24);
  v14 = *(*(v5 + 72) + 56);
  v25 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v28;
  v27 = 0x600000000;
  mlir::RankedTensorType::getShape(&v25);
  if (v15 >= 1)
  {
    for (i = 0; i < v18; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v13, v14, i);
      if (v27 >= HIDWORD(v27))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(__src + v27) = MixedSize;
      LODWORD(v27) = v27 + 1;
      mlir::RankedTensorType::getShape(&v25);
    }
  }

  v19 = *a3;
  v20 = __src;
  if (v19 != &__src)
  {
    if (__src != v28)
    {
      if (*v19 != v19 + 16)
      {
        free(*v19);
        v20 = __src;
      }

      *v19 = v20;
      *(v19 + 8) = v27;
      __src = v28;
      HIDWORD(v27) = 0;
      goto LABEL_36;
    }

    v21 = v27;
    v22 = *(v19 + 8);
    if (v22 >= v27)
    {
      if (v27)
      {
        memmove(*v19, __src, 8 * v27);
      }

      goto LABEL_35;
    }

    if (*(v19 + 12) < v27)
    {
      *(v19 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v22)
    {
      memmove(*v19, __src, 8 * v22);
      v23 = v27 - v22;
      if (v27 == v22)
      {
LABEL_35:
        *(v19 + 8) = v21;
LABEL_36:
        LODWORD(v27) = 0;
        v20 = __src;
        goto LABEL_37;
      }
    }

    else
    {
      v22 = 0;
      v23 = v27;
      if (!v27)
      {
        goto LABEL_35;
      }
    }

    memcpy((*v19 + 8 * v22), __src + 8 * v22, 8 * v23);
    goto LABEL_35;
  }

LABEL_37:
  if (v20 != v28)
  {
    free(v20);
  }

  return 1;
}

void mlir::tensor::UnPackOp::getDimAndTileMapping(mlir::tensor::UnPackOp *this@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v3 = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 64);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

void mlir::tensor::UnPackOp::getMixedTiles(mlir::tensor::UnPackOp *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  Context = mlir::Attribute::getContext((*this + 24));
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  v5 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 80);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

void mlir::tensor::UnPackOp::getStaticTiles(mlir::tensor::UnPackOp *this@<X0>, void *a2@<X8>)
{
  v4[6] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3[8] = v4;
  v3[9] = 0x600000000;
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  mlir::tensor::UnPackOp::getMixedTiles(&v2, v3);
}

uint64_t mlir::tensor::UnPackOp::getAllOuterDims(mlir::tensor::UnPackOp *this)
{
  v4 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v5[0] = mlir::TensorType::operator mlir::ShapedType(&v4);
  v5[1] = v2;
  mlir::ShapedType::getShape(v5);
  v4 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  return mlir::RankedTensorType::getShape(&v4);
}

void mlir::tensor::UnPackOp::verify(mlir::tensor::UnPackOp *this)
{
  v2[8] = *MEMORY[0x277D85DE8];
  v1 = *this;
  mlir::tensor::UnPackOp::getMixedTiles(&v1, v2);
}

void areTilesAndTiledDimsAllConstant<mlir::tensor::UnPackOp>(uint64_t a1)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v1 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = a1;
  v6[0] = v1;
  v3 = mlir::TensorType::operator mlir::ShapedType(v6);
  v4 = v2;
  mlir::tensor::UnPackOp::getMixedTiles(&v5, v6);
}

void mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x600000000;
  v10[0] = &v11;
  v10[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a7, a8, v10, v12);
  if (a10)
  {
    mlir::Builder::getDenseI64ArrayAttr();
  }

  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v20 = a5;
  v21 = a4;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, a9, a10);
  if (a6)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 8) = a6;
  }

  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a11;
  v19 = *(a2 + 72);
  if (v19 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v19) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::tensor::UnPackOp::createDestinationTensor(mlir::MLIRContext **a1, uint64_t a2, mlir::MLIRContext *a3, void **a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v43[6] = *MEMORY[0x277D85DE8];
  v38 = a3;
  v16 = *a1;
  AffineSymbolExpr = mlir::getAffineSymbolExpr(0, *a1, a3);
  v18 = mlir::getAffineSymbolExpr(1, v16, v17);
  v41 = v43;
  v42 = 0x600000000;
  v36 = *(a3 + 1) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v36);
  v20 = (v19 - a5);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      LODWORD(v39[0]) = i;
      if (*(mlir::RankedTensorType::getShape(&v36) + 8 * i) == 0x8000000000000000)
      {
        v22 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,unsigned int &>(a1, a2, &v38, v39);
        if (*(v22 + 36))
        {
          v23 = v22 - 16;
        }

        else
        {
          v23 = 0;
        }

        v24 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) | 4;
      }

      else
      {
        v25 = LODWORD(v39[0]);
        Shape = mlir::RankedTensorType::getShape(&v36);
        v24 = mlir::Builder::getIndexAttr(a1, *(Shape + 8 * v25)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v42 >= HIDWORD(v42))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v41 + v42) = v24;
      LODWORD(v42) = v42 + 1;
    }
  }

  if (a10)
  {
    mlir::invertPermutationVector(a9, a10, v39);
    mlir::applyPermutationToVector<mlir::OpFoldResult,6u>(&v41, v39[0]);
    if (v39[0] != &v40)
    {
      free(v39[0]);
    }
  }

  if (a7)
  {
    v27 = 8 * a7;
    do
    {
      v28 = *(v41 + *a6);
      v29 = *a4++;
      v30 = mlir::AffineExpr::operator*(&AffineSymbolExpr, v18);
      v39[0] = v28;
      v39[1] = v29;
      ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply(a1, a2, v30, v39, 2);
      v32 = *a6++;
      *(v41 + v32) = ComposedFoldedAffineApply;
      v27 -= 8;
    }

    while (v27);
  }

  v39[0] = mlir::RankedTensorType::getElementType(&v36);
  v33 = mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(a1, a2, &v41, v39);
  if (v41 != v43)
  {
    free(v41);
  }

  return v33 - 16;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,unsigned int &>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  v12 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, v19[0], v18);
  mlir::tensor::DimOp::build(a1, v19, v11, v12 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void mlir::OpBuilder::create<mlir::tensor::UnPackOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<long long,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<long long,6u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[38] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v20, a2, v15);
    mlir::tensor::UnPackOp::build(a1, v20, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::UnPackOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<long long,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<long long,6u> &>(v20, v19, v18);
}

uint64_t mlir::tensor::UnPackOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v42[4] = *MEMORY[0x277D85DE8];
  *&v38 = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v38);
  if (DefiningOp)
  {
    v5 = *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id ? DefiningOp : 0;
    if (v5)
    {
      v6 = *(v5 + 72);
      if ((*(*(*(a1 + 72) + 56) + 8) ^ *(*(v6 + 24) + 8)) <= 7 && (!*(v5 + 112) || !*(v6 + 32 * (*(v5 + 104) + *(v5 + 108)) + 24)))
      {
        hasSameInnerOuterAttribute();
      }

      return 0;
    }
  }

  *&v38 = *(*(a1 + 72) + 56);
  InterfaceFor = mlir::Value::getDefiningOp(&v38);
  v8 = InterfaceFor;
  if (InterfaceFor)
  {
    if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
    {
      __dst = 0;
      v37 = 0;
LABEL_29:
      __s1 = &v35;
      v34 = 0x600000000;
      *&v38 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      Shape = mlir::RankedTensorType::getShape(&v38);
      __dst = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v23 = mlir::RankedTensorType::getShape(&__dst);
      v24 = 0;
      v26 = (v23 + 8 * v25);
      if (((v26 - Shape) >> 3) > 6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v26 != Shape)
      {
        memcpy(__s1, Shape, v26 - Shape);
        v24 = v34;
      }

      LODWORD(v34) = v24 + ((v26 - Shape) >> 3);
      *&v38 = *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
      v27 = mlir::RankedTensorType::getShape(&v38);
      __dst = (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v28 = mlir::RankedTensorType::getShape(&__dst);
      v30 = (v28 + 8 * v29);
      if (((v30 - v27) >> 3) > 6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v30 != v27)
      {
        memcpy(&v32, v27, v30 - v27);
      }

      LODWORD(v39) = 0;
      v38 = 0u;
      v40 = v42;
      v41 = 0x400000000;
      __dst = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }

    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
  }

  __dst = v8;
  v37 = InterfaceFor;
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = *(*(a1 + 72) + 56);
  mlir::DestinationStyleOpInterface::getDpsInitsMutable(&v38, &__dst);
  v10 = mlir::MutableOperandRange::operator mlir::OperandRange(&v38);
  if (v39 != &v41)
  {
    free(v39);
  }

  v11 = *(v9 + 8) & 7;
  if (v9 && v11 == 6)
  {
    v11 = (*(v9 + 16) + 6);
  }

  v12 = *(v10 + 32 * v11 + 24);
  (*(*a2 + 40))(a2, a1);
  v13 = mlir::MutableOperandRange::MutableOperandRange(&v38, (*(a1 + 72) + 32));
  v14 = mlir::MutableOperandRange::operator mlir::OperandRange(v13);
  v16 = v15;
  if (v39 != &v41)
  {
    free(v39);
  }

  *&v38 = v14;
  *(&v38 + 1) = v16;
  v17 = (*(a1 + 72) + 32 * mlir::OperandRange::getBeginOperandIndex(&v38));
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    *v18 = *v17;
    if (v19)
    {
      *(v19 + 8) = v18;
    }
  }

  v17[3] = v12;
  v17[1] = v12;
  v20 = *v12;
  *v17 = *v12;
  if (v20)
  {
    *(v20 + 8) = v17;
  }

  *v12 = v17;
  (*(*a2 + 48))(a2, a1);
  return 1;
}

void mlir::OpBuilder::create<mlir::tensor::UnPackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::ArrayRef<long long>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v20[38] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v20, a2, v15);
    mlir::tensor::UnPackOp::build(a1, v20, *a3, *a4, *a5, a5[1], *a6, *(a6 + 8), *a7, a7[1]);
  }

  mlir::OpBuilder::create<mlir::tensor::UnPackOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<long long,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<long long,6u> &>(v20, v19, v18);
}

void mlir::tensor::UnPackOp::getOuterDimsPerm(mlir::tensor::UnPackOp *this)
{
  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

  mlir::Attribute::getContext((*this + 24));
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::UnPackOp::isLikeUnPad(mlir::tensor::UnPackOp *this)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 80);
  v2 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = v1;
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

unint64_t mlir::tensor::UnPackOp::fold(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *v3;
  if (*v3 && !mlir::DenseElementsAttr::classof(*v3))
  {
    v4 = 0;
  }

  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::tensor::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::tensor::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::tensor::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::tensor::BitcastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    else
    {
      mlir::tensor::ExpandShapeOp::fold();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      v38 = v12[1];
      goto LABEL_61;
    }

LABEL_59:
    v38 = 0;
LABEL_61:
    v44[0] = a2;
    v44[1] = v38;
    mlir::ShapedType::getElementType(v44);
    return 1;
  }

  v41 = 261;
  v40[0] = a3;
  v40[1] = a4;
  mlir::Operation::emitOpError(v44, a1, v40);
  if (v44[0])
  {
    LODWORD(v42) = 3;
    *(&v42 + 1) = " #";
    v43 = 2;
    if (v46 >= v47)
    {
      if (v45 > &v42 || v45 + 24 * v46 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v19 = v45 + 24 * v46;
    v20 = v42;
    *(v19 + 2) = v43;
    *v19 = v20;
    v21 = ++v46;
    if (v44[0])
    {
      LODWORD(v42) = 5;
      *(&v42 + 1) = a5;
      if (v21 >= v47)
      {
        if (v45 > &v42 || v45 + 24 * v21 <= &v42)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v45 + 24 * v46;
      v23 = v42;
      *(v22 + 2) = v43;
      *v22 = v23;
      v24 = ++v46;
      if (v44[0])
      {
        LODWORD(v42) = 3;
        *(&v42 + 1) = " must be tensor of any type values, but got ";
        v43 = 44;
        if (v24 >= v47)
        {
          if (v45 > &v42 || v45 + 24 * v24 <= &v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v25 = v45 + 24 * v46;
        v26 = v42;
        *(v25 + 2) = v43;
        *v25 = v26;
        ++v46;
        if (v44[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
          if (v46 >= v47)
          {
            if (v45 > &v42 || v45 + 24 * v46 <= &v42)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v27 = v45 + 24 * v46;
          v28 = v42;
          *(v27 + 2) = v43;
          *v27 = v28;
          ++v46;
        }
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
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

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v33 = v49;
    if (v49)
    {
      v34 = v50;
      v35 = v49;
      if (v50 != v49)
      {
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
        v35 = v49;
      }

      v50 = v33;
      operator delete(v35);
    }

    if (v45 != &v48)
    {
      free(v45);
    }
  }

  return v29;
}

uint64_t mlir::tensor::BitcastOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::tensor::BitcastOp::parse(mlir::tensor::BitcastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, v13))
  {
    return 0;
  }

  v9 = v13[0];
  v14 = 257;
  if (((*(*this + 400))(this, "to", 2, v13) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, &v7))
  {
    return 0;
  }

  v13[0] = v7;
  mlir::OperationState::addTypes(a2, v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::tensor::BitcastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v23 = v25;
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v23, v24);
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 28532;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "to", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
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

  if (*(*this + 9))
  {
    v20 = *this - 16;
  }

  else
  {
    v20 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::tensor::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::tensor::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::tensor::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::tensor::CastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::tensor::CastOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::tensor::CastOp::parse(mlir::tensor::CastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, v13))
  {
    return 0;
  }

  v9 = v13[0];
  v14 = 257;
  if (((*(*this + 400))(this, "to", 2, v13) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, &v7))
  {
    return 0;
  }

  v13[0] = v7;
  mlir::OperationState::addTypes(a2, v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::tensor::CastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v23 = v25;
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v23, v24);
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 28532;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "to", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
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

  if (*(*this + 9))
  {
    v20 = *this - 16;
  }

  else
  {
    v20 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::CollapseShapeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::tensor::CollapseShapeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v27 = *(a1 + 24);
    Value = mlir::ArrayAttr::getValue(&v27);
    v4 = mlir::ArrayAttr::getValue(&v27);
    v6 = v4 + 8 * v5;
    if (v6 == Value)
    {
      return 1;
    }

    while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v30 = *Value;
      v7 = mlir::ArrayAttr::getValue(&v30);
      v8 = mlir::ArrayAttr::getValue(&v30);
      v10 = v8 + 8 * v9;
      if (v10 != v7)
      {
        while (*v7)
        {
          if (*(**v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            break;
          }

          v28[0] = *v7;
          v31[0] = mlir::IntegerAttr::getType(v28);
          if (!mlir::Type::isSignlessInteger(v31, 64))
          {
            break;
          }

          v7 += 8;
          if (v7 == v10)
          {
            goto LABEL_10;
          }
        }

        break;
      }

LABEL_10:
      Value += 8;
      if (Value == v6)
      {
        return 1;
      }
    }

    v28[0] = "'tensor.collapse_shape' op attribute 'reassociation' failed to satisfy constraint: Array of 64-bit integer array attributes";
    v29 = 259;
    mlir::emitError(a2, v28, v31);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v37;
        v14 = __p;
        if (v37 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v37 = v12;
        operator delete(v14);
      }

      v15 = v34;
      if (!v34)
      {
        goto LABEL_46;
      }

      v16 = v35;
      v17 = v34;
      if (v35 == v34)
      {
LABEL_45:
        v35 = v15;
        operator delete(v17);
LABEL_46:
        if (v32 != &v33)
        {
          free(v32);
        }

        return v11;
      }

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
LABEL_44:
      v17 = v34;
      goto LABEL_45;
    }
  }

  else
  {
    v28[0] = "'tensor.collapse_shape' op requires attribute 'reassociation'";
    v29 = 259;
    mlir::emitError(a2, v28, v31);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v37;
        v22 = __p;
        if (v37 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v37 = v20;
        operator delete(v22);
      }

      v15 = v34;
      if (!v34)
      {
        goto LABEL_46;
      }

      v23 = v35;
      v17 = v34;
      if (v35 == v34)
      {
        goto LABEL_45;
      }

      do
      {
        v25 = *--v23;
        v24 = v25;
        *v23 = 0;
        if (v25)
        {
          MEMORY[0x259C63150](v24, 0x1000C8077774924);
        }
      }

      while (v23 != v15);
      goto LABEL_44;
    }
  }

  return v11;
}

uint64_t mlir::tensor::CollapseShapeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "reassociation", 0xDuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 58;
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

uint64_t mlir::tensor::CollapseShapeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "reassociation", 0xD, *a2);
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

unint64_t mlir::tensor::CollapseShapeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::tensor::CollapseShapeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x69636F7373616572 ? (v4 = *(a3 + 5) == 0x6E6F69746169636FLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::tensor::CollapseShapeOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

uint64_t mlir::tensor::CollapseShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "reassociation", 0xDuLL, *a2);
  }

  return result;
}

uint64_t mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v31 = a1;
    Value = mlir::ArrayAttr::getValue(&v31);
    v23 = mlir::ArrayAttr::getValue(&v31);
    v25 = v23 + 8 * v24;
    if (v25 != Value)
    {
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v32 = *Value;
        v26 = mlir::ArrayAttr::getValue(&v32);
        v27 = mlir::ArrayAttr::getValue(&v32);
        v29 = v27 + 8 * v28;
        if (v29 != v26)
        {
          while (*v26)
          {
            if (*(**v26 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              break;
            }

            *&v33 = *v26;
            Type = mlir::IntegerAttr::getType(&v33);
            if (!mlir::Type::isSignlessInteger(&Type, 64))
            {
              break;
            }

            v26 += 8;
            if (v26 == v29)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_3;
        }

LABEL_33:
        Value += 8;
        if (Value == v25)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&Type, a5);
  if (Type)
  {
    LODWORD(v33) = 3;
    *(&v33 + 1) = "attribute '";
    v34 = 11;
    if (v39 >= v40)
    {
      if (v38 > &v33 || v38 + 24 * v39 <= &v33)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v38 + 24 * v39;
    v10 = v33;
    *(v9 + 2) = v34;
    *v9 = v10;
    ++v39;
    if (Type)
    {
      v35 = 261;
      *&v33 = a2;
      *(&v33 + 1) = a3;
      mlir::Diagnostic::operator<<(&v37, &v33);
      if (Type)
      {
        LODWORD(v33) = 3;
        *(&v33 + 1) = "' failed to satisfy constraint: Array of 64-bit integer array attributes";
        v34 = 72;
        if (v39 >= v40)
        {
          if (v38 > &v33 || v38 + 24 * v39 <= &v33)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v38 + 24 * v39;
        v12 = v33;
        *(v11 + 2) = v34;
        *v11 = v12;
        ++v39;
      }
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v45;
      v16 = __p;
      if (v45 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v45 = v14;
      operator delete(v16);
    }

    v17 = v42;
    if (v42)
    {
      v18 = v43;
      v19 = v42;
      if (v43 != v42)
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
        v19 = v42;
      }

      v43 = v17;
      operator delete(v19);
    }

    if (v38 != &v41)
    {
      free(v38);
    }
  }

  return v13;
}

uint64_t mlir::tensor::CollapseShapeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2) & 1;
}

void mlir::tensor::CollapseShapeOp::build(mlir::MLIRContext **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v18[8] = *MEMORY[0x277D85DE8];
  mlir::convertReassociationMapsToIndices(a4, a5, &v16);
  mlir::tensor::CollapseShapeOp::build(a1, a2, a3, v16, v17, a6, a7);
  v12 = v16;
  if (v17)
  {
    v13 = v16 + 32 * v17 - 16;
    v14 = -32 * v17;
    do
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }

      v13 -= 32;
      v14 += 32;
    }

    while (v14);
    v12 = v16;
  }

  if (v12 != v18)
  {
    free(v12);
  }
}

uint64_t mlir::tensor::CollapseShapeOp::build(uint64_t **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  Context = mlir::Attribute::getContext(a2);
  v22 = 261;
  v20 = "reassociation";
  v21 = 13;
  v14 = mlir::StringAttr::get(Context, &v20, v13);
  mlir::NamedAttribute::NamedAttribute(v19, v14, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(a2 + 112, v19[0], v19[1]);
  v15 = mlir::TypeRange::TypeRange(&v20, &v18, 1uLL);
  return mlir::tensor::CollapseShapeOp::build(v15, a2, v20, v21, &v17, 1uLL, a7, a8);
}

void mlir::tensor::CollapseShapeOp::build(uint64_t **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v32 = *MEMORY[0x277D85DE8];
  mlir::convertReassociationMapsToIndices(a5, a6, &v26);
  v23 = a4;
  v24 = a3;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, v26, v27);
  Context = mlir::Attribute::getContext(a2);
  v31 = 261;
  v29 = "reassociation";
  v30 = 13;
  v17 = mlir::StringAttr::get(Context, &v29, v16);
  mlir::NamedAttribute::NamedAttribute(v25, v17, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(a2 + 112, v25[0], v25[1]);
  v18 = mlir::TypeRange::TypeRange(&v29, &v24, 1uLL);
  mlir::tensor::CollapseShapeOp::build(v18, a2, v29, v30, &v23, 1uLL, a7, a8);
  v19 = v26;
  if (v27)
  {
    v20 = v26 + 32 * v27 - 16;
    v21 = -32 * v27;
    do
    {
      v22 = *(v20 - 2);
      if (v20 != v22)
      {
        free(v22);
      }

      v20 -= 32;
      v21 += 32;
    }

    while (v21);
    v19 = v26;
  }

  if (v19 != &v28)
  {
    free(v19);
  }
}

uint64_t mlir::tensor::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a5;
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::tensor::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

BOOL mlir::tensor::CollapseShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v3, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'reassociation'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
        {
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::tensor::CollapseShapeOp::parse(mlir::tensor::CollapseShapeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v14 = 0;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*this + 32))(this);
  v8 = mlir::NoneType::get(*v6, v7);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(this, &v17, v8))
  {
    return 0;
  }

  if (v17)
  {
    v9 = *(a2 + 32);
    if (!v9)
    {
      operator new();
    }

    *v9 = v17;
  }

  v13 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 1);
  v21[0] = this;
  v21[1] = &v13;
  v21[2] = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if ((mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v11, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v21) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v21[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, v21))
  {
    return 0;
  }

  v16 = v21[0];
  v22 = 257;
  if (((*(*this + 400))(this, "into", 4, v21) & 1) == 0)
  {
    return 0;
  }

  v21[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, v21))
  {
    return 0;
  }

  v14 = v21[0];
  mlir::OperationState::addTypes(a2, &v14, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v18, v15, v5, a2 + 16) & 1;
}

void mlir::tensor::CollapseShapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v25 = v27;
  v27[0] = "reassociation";
  v27[1] = 13;
  v26 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v9, v25, v26);
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] - v19 > 3uLL)
  {
    *v19 = 1869901417;
    v18[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v18, "into", 4uLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::tensor::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t *mlir::tensor::detail::ConcatOpGenericAdaptorBase::getDim(mlir::tensor::detail::ConcatOpGenericAdaptorBase *this)
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

uint64_t mlir::tensor::ConcatOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v19[0] = *(a1 + 24);
    v21[0] = mlir::IntegerAttr::getType(v19);
    if (mlir::Type::isSignlessInteger(v21, 64))
    {
      return 1;
    }

    v19[0] = "'tensor.concat' op attribute 'dim' failed to satisfy constraint: 64-bit signless integer attribute";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v27;
        v14 = __p;
        if (v27 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
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
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "'tensor.concat' op requires attribute 'dim'";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
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
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t mlir::tensor::ConcatOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "dim", 3uLL);
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

uint64_t mlir::tensor::ConcatOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "dim", 3, *a2);
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

unint64_t mlir::tensor::ConcatOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::tensor::ConcatOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 26980 ? (v4 = *(a3 + 2) == 109) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::tensor::ConcatOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 26980 && *(a2 + 2) == 109)
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

uint64_t mlir::tensor::ConcatOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "dim", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *&v24 = a1;
    v7 = a4;
    v8 = a5;
    Type = mlir::IntegerAttr::getType(&v24);
    isSignlessInteger = mlir::Type::isSignlessInteger(&Type, 64);
    a5 = v8;
    a4 = v7;
    if (isSignlessInteger)
    {
      return 1;
    }
  }

  a4(&Type, a5);
  if (Type)
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

    v11 = v29 + 24 * v30;
    v12 = v24;
    *(v11 + 2) = v25;
    *v11 = v12;
    ++v30;
    if (Type)
    {
      v26 = 261;
      *&v24 = a2;
      *(&v24 + 1) = a3;
      mlir::Diagnostic::operator<<(&v28, &v24);
      if (Type)
      {
        LODWORD(v24) = 3;
        *(&v24 + 1) = "' failed to satisfy constraint: 64-bit signless integer attribute";
        v25 = 65;
        if (v30 >= v31)
        {
          if (v29 > &v24 || v29 + 24 * v30 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v29 + 24 * v30;
        v14 = v24;
        *(v13 + 2) = v25;
        *v13 = v14;
        ++v30;
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
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

  return v10;
}

uint64_t mlir::tensor::ConcatOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2) & 1;
}

uint64_t mlir::tensor::ConcatOp::setDim(mlir::tensor::ConcatOp *this, unint64_t a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 64);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::tensor::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t mlir::tensor::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
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

unint64_t mlir::tensor::ConcatOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  IntegerType = mlir::Builder::getIntegerType(a1, 64);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = result;
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

uint64_t mlir::tensor::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::tensor::ConcatOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v54 = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(v3, "dim", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v54))
    {
      v4 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v5 = *(v4 + 68);
        if (v5)
        {
          v6 = 0;
          v7 = *(v4 + 72);
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v8 = *(*(v7 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
                v9 = *v8;
                if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
                {
                  break;
                }

                v10 = *this;
                v51 = 261;
                v50[0] = "operand";
                v50[1] = 7;
                mlir::Operation::emitOpError(&v54, v10, v50);
                if (v54)
                {
                  LODWORD(v52) = 3;
                  *(&v52 + 1) = " #";
                  v53 = 2;
                  if (v57 >= v58)
                  {
                    if (v56 > &v52 || v56 + 24 * v57 <= &v52)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v11 = v56 + 24 * v57;
                  v12 = v52;
                  *(v11 + 2) = v53;
                  *v11 = v12;
                  v13 = ++v57;
                  if (v54)
                  {
                    LODWORD(v52) = 5;
                    *(&v52 + 1) = v6;
                    if (v13 >= v58)
                    {
                      if (v56 > &v52 || v56 + 24 * v13 <= &v52)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v14 = v56 + 24 * v57;
                    v15 = v52;
                    *(v14 + 2) = v53;
                    *v14 = v15;
                    v16 = ++v57;
                    if (v54)
                    {
                      LODWORD(v52) = 3;
                      *(&v52 + 1) = " must be variadic of ranked tensor of any type values, but got ";
                      v53 = 63;
                      if (v16 >= v58)
                      {
                        if (v56 > &v52 || v56 + 24 * v16 <= &v52)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v17 = v56 + 24 * v57;
                      v18 = v52;
                      *(v17 + 2) = v53;
                      *v17 = v18;
                      ++v57;
                      if (v54)
                      {
                        mlir::DiagnosticArgument::DiagnosticArgument(&v52, v8);
                        if (v57 >= v58)
                        {
                          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v19 = v56 + 24 * v57;
                        v20 = v52;
                        *(v19 + 2) = v53;
                        *v19 = v20;
                        ++v57;
                      }
                    }
                  }
                }

                v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
                if (v54)
                {
                  mlir::InFlightDiagnostic::report(&v54);
                }

                if (v65 == 1)
                {
                  if (v64 != &v65)
                  {
                    free(v64);
                  }

                  v22 = __p;
                  if (__p)
                  {
                    v23 = v63;
                    v24 = __p;
                    if (v63 != __p)
                    {
                      do
                      {
                        v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                      }

                      while (v23 != v22);
                      v24 = __p;
                    }

                    v63 = v22;
                    operator delete(v24);
                  }

                  v25 = v60;
                  if (v60)
                  {
                    v26 = v61;
                    v27 = v60;
                    if (v61 != v60)
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
                      v27 = v60;
                    }

                    v61 = v25;
                    operator delete(v27);
                  }

                  if (v56 != v59)
                  {
                    free(v56);
                  }
                }

                if (!v21)
                {
                  return 0;
                }

                if (++v6 == v5)
                {
LABEL_92:
                  v4 = *this;
                  goto LABEL_93;
                }
              }

              {
                break;
              }

              mlir::mps::serialization::ExtractOp::inferReturnTypes();
              v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v31 = *(v9 + 8);
              v32 = *(v9 + 16);
              if (v32)
              {
                goto LABEL_36;
              }

LABEL_62:
              v54 = v8;
              v55 = 0;
              mlir::ShapedType::getElementType(&v54);
              if (++v6 == v5)
              {
                goto LABEL_92;
              }
            }

            v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v31 = *(v9 + 8);
            v32 = *(v9 + 16);
            if (!v32)
            {
              goto LABEL_62;
            }

LABEL_36:
            v33 = v31;
            v34 = v32;
            do
            {
              v35 = v34 >> 1;
              v36 = &v33[2 * (v34 >> 1)];
              v38 = *v36;
              v37 = v36 + 2;
              v34 += ~(v34 >> 1);
              if (v38 < v30)
              {
                v33 = v37;
              }

              else
              {
                v34 = v35;
              }
            }

            while (v34);
            if (v33 == &v31[2 * v32] || *v33 != v30)
            {
              goto LABEL_62;
            }

            v39 = v33[1];
            v54 = v8;
            v55 = v39;
            mlir::ShapedType::getElementType(&v54);
            if (++v6 == v5)
            {
              goto LABEL_92;
            }
          }
        }
      }

LABEL_93:
      mlir::tensor::ConcatOp::verifyInvariantsImpl(v4, this, &v54);
      return v54;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v50[0] = "requires attribute 'dim'";
    v51 = 259;
    mlir::OpState::emitOpError(this, v50, &v54);
    v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
    if (v54)
    {
      mlir::InFlightDiagnostic::report(&v54);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v41 = __p;
      if (__p)
      {
        v42 = v63;
        v43 = __p;
        if (v63 != __p)
        {
          do
          {
            v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v63 = v41;
        operator delete(v43);
      }

      v44 = v60;
      if (v60)
      {
        v45 = v61;
        v46 = v60;
        if (v61 != v60)
        {
          do
          {
            v48 = *--v45;
            v47 = v48;
            *v45 = 0;
            if (v48)
            {
              MEMORY[0x259C63150](v47, 0x1000C8077774924);
            }
          }

          while (v45 != v44);
          v46 = v60;
        }

        v61 = v44;
        operator delete(v46);
      }

      if (v56 != v59)
      {
        free(v56);
      }
    }
  }

  return v40;
}

uint64_t mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
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
        *(&v40 + 1) = " must be ranked tensor of any type values, but got ";
        v41 = 51;
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

uint64_t mlir::tensor::ConcatOp::parse(mlir::tensor::ConcatOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v22[16] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v21[0] = v22;
  v21[1] = 0x400000000;
  Inputs = 0;
  v20 = 257;
  if (((*(*this + 400))() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = (*(*this + 32))(this);
  IntegerType = mlir::Builder::getIntegerType(v5, 64);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(this, &v18, IntegerType))
  {
    goto LABEL_15;
  }

  if (v18)
  {
    v7 = *(a2 + 32);
    if (!v7)
    {
      operator new();
    }

    *v7 = v18;
  }

  if ((*(*this + 296))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 720))(this, v21, 0, 1, 0xFFFFFFFFLL)) && (v15 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (v8 = *(a2 + 1), v19[0] = this, v19[1] = &v15, v19[2] = a2, mlir::tensor::ConcatOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19)) && ((*(*this + 104))(this) & 1) != 0 && (v19[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(this, v19)))
  {
    Inputs = mlir::FunctionType::getInputs(v19);
    v17 = v9;
    Results = mlir::FunctionType::getResults(v19);
    mlir::OperationState::addTypes(a2, Results, v11);
    v12 = (*(*this + 16))(this);
    v13 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v21, &Inputs, v12, a2 + 16) & 1;
  }

  else
  {
LABEL_15:
    v13 = 0;
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  return v13;
}

BOOL mlir::AsmParser::parseType<mlir::FunctionType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
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

uint64_t mlir::tensor::DimOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::tensor::DimOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::tensor::DimOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::tensor::DimOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::tensor::DimOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v22[2] = *MEMORY[0x277D85DE8];
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
    LODWORD(v10) = *(a2 + 120);
  }

  *(a2 + 120) = v10 + a6;
  __src = v22;
  v21 = 0x200000000;
  v11 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v19, *(a2 + 224), *(a2 + 232));
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

  v18 = v11;
  IndexType = mlir::Builder::getIndexType(&v18, v13);
  v15 = __src;
  *__src = IndexType;
  v16 = v21;
  v17 = *(a2 + 72);
  if (v17 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v21);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::DimOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v91 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(*v3 + 17);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = v4[1];
      v27 = *(v4 + 4);
      if (!v27)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v43 = v4;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = v43[1];
      v27 = *(v43 + 4);
      if (!v27)
      {
        goto LABEL_67;
      }
    }

    v28 = v26;
    v29 = v27;
    do
    {
      v30 = v29 >> 1;
      v31 = &v28[2 * (v29 >> 1)];
      v33 = *v31;
      v32 = v31 + 2;
      v29 += ~(v29 >> 1);
      if (v33 < v25)
      {
        v28 = v32;
      }

      else
      {
        v29 = v30;
      }
    }

    while (v29);
    if (v28 != &v26[2 * v27] && *v28 == v25)
    {
      v44 = v28[1];
      goto LABEL_69;
    }

LABEL_67:
    v44 = 0;
LABEL_69:
    v80[0] = v3;
    v45 = v80;
LABEL_70:
    v45[1] = v44;
    mlir::ShapedType::getElementType(v45);
    goto LABEL_71;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = v4[1];
    v36 = *(v4 + 4);
    if (!v36)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v49 = v4;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = v49[1];
    v36 = *(v49 + 4);
    if (!v36)
    {
      goto LABEL_81;
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
  if (v37 == &v35[2 * v36] || *v37 != v34)
  {
LABEL_81:
    v74 = v3;
    v75 = 0;
    if (!mlir::ShapedType::hasRank(&v74))
    {
      goto LABEL_3;
    }

    goto LABEL_84;
  }

  v50 = v37[1];
  v74 = v3;
  v75 = v50;
  if (!mlir::ShapedType::hasRank(&v74))
  {
    goto LABEL_3;
  }

LABEL_84:
  v51 = *v3;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_96;
    }
  }

  else
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_96;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    *&v78 = v3;
    *(&v78 + 1) = v62;
    mlir::ShapedType::getShape(&v78);
    if (v63 < 1)
    {
      goto LABEL_3;
    }

LABEL_99:
    v64 = *v3;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v64[1];
      v67 = *(v64 + 4);
      if (!v67)
      {
        goto LABEL_112;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v64[1];
      v67 = *(v64 + 4);
      if (!v67)
      {
        goto LABEL_112;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v44 = v68[1];
      goto LABEL_114;
    }

LABEL_112:
    v44 = 0;
LABEL_114:
    v77 = v3;
    v45 = &v77;
    goto LABEL_70;
  }

LABEL_96:
  v78 = v3;
  mlir::ShapedType::getShape(&v78);
  if (v61 >= 1)
  {
    goto LABEL_99;
  }

LABEL_3:
  v76 = 261;
  v74 = "operand";
  v75 = 7;
  mlir::Operation::emitOpError(v80, v2, &v74);
  if (v80[0])
  {
    LODWORD(v78) = 3;
    *(&v78 + 1) = " #";
    v79 = 2;
    if (v82 >= v83)
    {
      if (v81 > &v78 || v81 + 24 * v82 <= &v78)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v81 + 24 * v82;
    v7 = v78;
    *(v6 + 2) = v79;
    *v6 = v7;
    v8 = ++v82;
    if (v80[0])
    {
      LODWORD(v78) = 5;
      *(&v78 + 1) = 0;
      if (v8 >= v83)
      {
        if (v81 > &v78 || v81 + 24 * v8 <= &v78)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = v81 + 24 * v82;
      v10 = v78;
      *(v9 + 2) = v79;
      *v9 = v10;
      v11 = ++v82;
      if (v80[0])
      {
        LODWORD(v78) = 3;
        *(&v78 + 1) = " must be non-0-ranked or unranked tensor, but got ";
        v79 = 50;
        if (v11 >= v83)
        {
          if (v81 > &v78 || v81 + 24 * v11 <= &v78)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v81 + 24 * v82;
        v13 = v78;
        *(v12 + 2) = v79;
        *v12 = v13;
        ++v82;
        if (v80[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v3);
          if (v82 >= v83)
          {
            if (v81 > &v78 || v81 + 24 * v82 <= &v78)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v81 + 24 * v82;
          v15 = v78;
          *(v14 + 2) = v79;
          *v14 = v15;
          ++v82;
        }
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
  if (v80[0])
  {
    mlir::InFlightDiagnostic::report(v80);
  }

  if (v90 == 1)
  {
    if (v89 != &v90)
    {
      free(v89);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v88;
      v19 = __p;
      if (v88 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v88 = v17;
      operator delete(v19);
    }

    v20 = v85;
    if (v85)
    {
      v21 = v86;
      v22 = v85;
      if (v86 != v85)
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
        v22 = v85;
      }

      v86 = v20;
      operator delete(v22);
    }

    if (v81 != &v84)
    {
      free(v81);
    }
  }

  if (!v16)
  {
    return 0;
  }

LABEL_71:
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v46 = *this - 16;
  }

  else
  {
    v46 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0);
  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v28 = 261;
  v27[0] = a3;
  v27[1] = a4;
  mlir::Operation::emitOpError(v31, a1, v27);
  if (v31[0])
  {
    LODWORD(v29) = 3;
    *(&v29 + 1) = " #";
    v30 = 2;
    if (v33 >= v34)
    {
      if (v32 > &v29 || v32 + 24 * v33 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v32 + 24 * v33;
    v8 = v29;
    *(v7 + 2) = v30;
    *v7 = v8;
    v9 = ++v33;
    if (v31[0])
    {
      LODWORD(v29) = 5;
      *(&v29 + 1) = a5;
      if (v9 >= v34)
      {
        if (v32 > &v29 || v32 + 24 * v9 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v32 + 24 * v33;
      v11 = v29;
      *(v10 + 2) = v30;
      *v10 = v11;
      v12 = ++v33;
      if (v31[0])
      {
        LODWORD(v29) = 3;
        *(&v29 + 1) = " must be index, but got ";
        v30 = 24;
        if (v12 >= v34)
        {
          if (v32 > &v29 || v32 + 24 * v12 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v32 + 24 * v33;
        v14 = v29;
        *(v13 + 2) = v30;
        *v13 = v14;
        ++v33;
        if (v31[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v29, a2);
          if (v33 >= v34)
          {
            if (v32 > &v29 || v32 + 24 * v33 <= &v29)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v15 = v32 + 24 * v33;
          v16 = v29;
          *(v15 + 2) = v30;
          *v15 = v16;
          ++v33;
        }
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v17;
}

uint64_t mlir::tensor::DimOp::parse(mlir::tensor::DimOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && (v5 = (*(*this + 40))(this), ((*(*this + 704))(this, v15, 1)) && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v12, 1)) && ((*(*this + 104))(this) & 1) != 0 && (IndexType = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, &IndexType)) && (v11 = IndexType, v6 = (*(*this + 32))(this), IndexType = mlir::Builder::getIndexType(v6, v7), mlir::OperationState::addTypes(a2, &IndexType, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v14, v10, v5, a2 + 16)))
  {
    return (*(*this + 728))(this, v12, IndexType, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::tensor::DimOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v5, v19, v20);
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ",", 1uLL);
  }

  else
  {
    *v9 = 44;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

unint64_t mlir::tensor::EmptyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::tensor::EmptyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  if ((*(v2 + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = *(v2 + 9) + 24;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4) & 1) != 0)
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    mlir::tensor::ConcatOp::verifyInvariantsImpl(v2, this, &v7);
    return v7;
  }
}

BOOL mlir::tensor::EmptyOp::verifyInvariants(mlir::tensor::EmptyOp *this)
{
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 68);
    if (v3)
    {
      v4 = 0;
      for (i = *(v2 + 72) + 24; (mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*i + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4) & 1) != 0; i += 32)
      {
        if (v3 == ++v4)
        {
          v2 = *this;
          return (mlir::tensor::EmptyOp::verifyInvariants(this, v2) & 1) == 0;
        }
      }

      return 0;
    }
  }

  return (mlir::tensor::EmptyOp::verifyInvariants(this, v2) & 1) == 0;
}

uint64_t mlir::tensor::EmptyOp::parse(mlir::tensor::EmptyOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x400000000;
  if ((*(*this + 280))())
  {
    (*(*this + 40))(this);
    if ((*(*this + 720))(this, &v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v12))
        {
          v13 = v12;
          v5 = (*(*this + 32))(this);
          IndexType = mlir::Builder::getIndexType(v5, v6);
          v8 = 1;
          mlir::OperationState::addTypes(a2, &v13, 1);
          if (!v15)
          {
            goto LABEL_13;
          }

          v9 = v14;
          v10 = 32 * v15;
          while (((*(*this + 728))(this, v9, IndexType, a2 + 16) & 1) != 0)
          {
            v9 += 32;
            v8 = 1;
            v10 -= 32;
            if (!v10)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

  v8 = 0;
LABEL_13:
  if (v14 != v16)
  {
    free(v14);
  }

  return v8;
}

uint64_t mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::ExpandShapeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
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
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

unint64_t mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "_N_120ChainedTensorBitcastE";
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
      v28 = &dword_257389F05 + v6;
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
  v25 = (&dword_257389F05 + v23);
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
  if (*(&dword_257389F05 + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::tensor::ExpandShapeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      v33 = *(a1 + 24);
      Value = mlir::ArrayAttr::getValue(&v33);
      v4 = mlir::ArrayAttr::getValue(&v33);
      v6 = v4 + 8 * v5;
      if (v6 == Value)
      {
        return 1;
      }

      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v36 = *Value;
        v7 = mlir::ArrayAttr::getValue(&v36);
        v8 = mlir::ArrayAttr::getValue(&v36);
        v10 = v8 + 8 * v9;
        if (v10 != v7)
        {
          while (*v7)
          {
            if (*(**v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              break;
            }

            v34[0] = *v7;
            v37[0] = mlir::IntegerAttr::getType(v34);
            if (!mlir::Type::isSignlessInteger(v37, 64))
            {
              break;
            }

            v7 += 8;
            if (v7 == v10)
            {
              goto LABEL_11;
            }
          }

          break;
        }

LABEL_11:
        Value += 8;
        if (Value == v6)
        {
          return 1;
        }
      }

      v34[0] = "'tensor.expand_shape' op attribute 'reassociation' failed to satisfy constraint: Array of 64-bit integer array attributes";
      v35 = 259;
      mlir::emitError(a2, v34, v37);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
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

        v15 = v40;
        if (!v40)
        {
          goto LABEL_63;
        }

        v23 = v41;
        v17 = v40;
        if (v41 == v40)
        {
LABEL_62:
          v41 = v15;
          operator delete(v17);
LABEL_63:
          if (v38 != &v39)
          {
            free(v38);
          }

          return v11;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v15);
LABEL_61:
        v17 = v40;
        goto LABEL_62;
      }
    }

    else
    {
      v34[0] = "'tensor.expand_shape' op requires attribute 'static_output_shape'";
      v35 = 259;
      mlir::emitError(a2, v34, v37);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v43;
          v28 = __p;
          if (v43 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v43 = v26;
          operator delete(v28);
        }

        v15 = v40;
        if (!v40)
        {
          goto LABEL_63;
        }

        v29 = v41;
        v17 = v40;
        if (v41 == v40)
        {
          goto LABEL_62;
        }

        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v29 != v15);
        goto LABEL_61;
      }
    }
  }

  else
  {
    v34[0] = "'tensor.expand_shape' op requires attribute 'reassociation'";
    v35 = 259;
    mlir::emitError(a2, v34, v37);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v43;
        v14 = __p;
        if (v43 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v43 = v12;
        operator delete(v14);
      }

      v15 = v40;
      if (!v40)
      {
        goto LABEL_63;
      }

      v16 = v41;
      v17 = v40;
      if (v41 == v40)
      {
        goto LABEL_62;
      }

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
      goto LABEL_61;
    }
  }

  return v11;
}