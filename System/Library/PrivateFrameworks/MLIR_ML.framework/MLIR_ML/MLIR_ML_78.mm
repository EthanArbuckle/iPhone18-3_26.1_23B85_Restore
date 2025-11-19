uint64_t mlir::mps::ReductionMeanOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::ReductionMinOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0uLL;
  }

  v51 = a6;
  v52[0] = 0;
  v53 = 0;
  v54 = v15;
  v55 = a9;
  v56 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(v52, "mps.reduction_min", 17, Context);
    v53 = 1;
    a1 = v16;
  }

  *&v57 = a4;
  *(&v57 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v54;
    v64 = v57;
    v19 = mlir::ValueRange::dereference_iterator(&v64, 0);
    v20 = 0;
    if (*(&v64 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v64, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v50 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v50);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v50))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v49 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v49))
        {
          mlir::TensorType::getShape(&v49);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v63;
        v62 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v60;
          v59 = 0x600000000;
          Shape = mlir::TensorType::getShape(&v50);
          {
            v37 = __p;
            v38 = v59;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v50);
            v40 = mlir::RankedTensorType::get(v37, v38, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v40);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v60)
          {
            v47 = result;
            free(__p);
            result = v47;
          }

          goto LABEL_64;
        }

        if (!mlir::TensorType::hasRank(&v49))
        {
          goto LABEL_53;
        }

        mlir::TensorType::getShape(&v49);
        if (!v41)
        {
          goto LABEL_58;
        }

        if (v41 == 1)
        {
          v42 = *mlir::TensorType::getShape(&v49) == 1;
          if (!*mlir::TensorType::getShape(&v49))
          {
            v43 = v50;
LABEL_57:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
LABEL_60:
            result = 1;
LABEL_64:
            if (__b != v63)
            {
              v48 = result;
              free(__b);
              return v48;
            }

            return result;
          }
        }

        else
        {
LABEL_53:
          v42 = 0;
        }

        if (!v18 && !v42)
        {
          v43 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_57;
        }

LABEL_58:
        mlir::TensorType::getShape(&v50);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v45, v18) - 1) >> 64);
        v46 = mlir::RankedTensorType::get(__p, (v59 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v46);
        if (__p)
        {
          v59 = __p;
          operator delete(__p);
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!v18)
      {
        v33 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v50))
      {
        mlir::TensorType::getShape(&v50);
        v32 = v31;
        __b = v63;
        HIDWORD(v62) = 4;
        if (v31 >= 5)
        {
          LODWORD(v62) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v31)
        {
          memset_pattern16(v63, &unk_257369660, 8 * v31);
        }

        LODWORD(v62) = v32;
        v33 = mlir::RankedTensorType::get(v63, v32, ElementType, 0);
        if (__b != v63)
        {
          v44 = v33;
          free(__b);
          v33 = v44;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v33 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v34 = *(a11 + 8);
  if (v34 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v34) = v33;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionMinOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::ReductionOrOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v51 = a6;
  v52[0] = 0;
  v53 = 0;
  v54 = v15;
  v55 = a9;
  v56 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(v52, "mps.reduction_or", 16, Context);
    v53 = 1;
    a1 = v16;
  }

  *&v57 = a4;
  *(&v57 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v54;
    v64 = v57;
    v19 = mlir::ValueRange::dereference_iterator(&v64, 0);
    v20 = 0;
    if (*(&v64 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v64, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v50 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v50);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v50))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v49 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v49))
        {
          mlir::TensorType::getShape(&v49);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v63;
        v62 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v60;
          v59 = 0x600000000;
          Shape = mlir::TensorType::getShape(&v50);
          {
            v37 = __p;
            v38 = v59;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v50);
            v40 = mlir::RankedTensorType::get(v37, v38, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v40);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v60)
          {
            v47 = result;
            free(__p);
            result = v47;
          }

          goto LABEL_64;
        }

        if (!mlir::TensorType::hasRank(&v49))
        {
          goto LABEL_53;
        }

        mlir::TensorType::getShape(&v49);
        if (!v41)
        {
          goto LABEL_58;
        }

        if (v41 == 1)
        {
          v42 = *mlir::TensorType::getShape(&v49) == 1;
          if (!*mlir::TensorType::getShape(&v49))
          {
            v43 = v50;
LABEL_57:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
LABEL_60:
            result = 1;
LABEL_64:
            if (__b != v63)
            {
              v48 = result;
              free(__b);
              return v48;
            }

            return result;
          }
        }

        else
        {
LABEL_53:
          v42 = 0;
        }

        if (!v18 && !v42)
        {
          v43 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_57;
        }

LABEL_58:
        mlir::TensorType::getShape(&v50);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v45, v18) - 1) >> 64);
        v46 = mlir::RankedTensorType::get(__p, (v59 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v46);
        if (__p)
        {
          v59 = __p;
          operator delete(__p);
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!v18)
      {
        v33 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v50))
      {
        mlir::TensorType::getShape(&v50);
        v32 = v31;
        __b = v63;
        HIDWORD(v62) = 4;
        if (v31 >= 5)
        {
          LODWORD(v62) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v31)
        {
          memset_pattern16(v63, &unk_257369660, 8 * v31);
        }

        LODWORD(v62) = v32;
        v33 = mlir::RankedTensorType::get(v63, v32, ElementType, 0);
        if (__b != v63)
        {
          v44 = v33;
          free(__b);
          v33 = v44;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v33 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v34 = *(a11 + 8);
  if (v34 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v34) = v33;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionOrOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::ReductionSumOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v51 = a6;
  v52[0] = 0;
  v53 = 0;
  v54 = v15;
  v55 = a9;
  v56 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(v52, "mps.reduction_sum", 17, Context);
    v53 = 1;
    a1 = v16;
  }

  *&v57 = a4;
  *(&v57 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v54;
    v64 = v57;
    v19 = mlir::ValueRange::dereference_iterator(&v64, 0);
    v20 = 0;
    if (*(&v64 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v64, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v50 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v50);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v50))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v49 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v49))
        {
          mlir::TensorType::getShape(&v49);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v63;
        v62 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v60;
          v59 = 0x600000000;
          Shape = mlir::TensorType::getShape(&v50);
          {
            v37 = __p;
            v38 = v59;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v50);
            v40 = mlir::RankedTensorType::get(v37, v38, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v40);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v60)
          {
            v47 = result;
            free(__p);
            result = v47;
          }

          goto LABEL_64;
        }

        if (!mlir::TensorType::hasRank(&v49))
        {
          goto LABEL_53;
        }

        mlir::TensorType::getShape(&v49);
        if (!v41)
        {
          goto LABEL_58;
        }

        if (v41 == 1)
        {
          v42 = *mlir::TensorType::getShape(&v49) == 1;
          if (!*mlir::TensorType::getShape(&v49))
          {
            v43 = v50;
LABEL_57:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
LABEL_60:
            result = 1;
LABEL_64:
            if (__b != v63)
            {
              v48 = result;
              free(__b);
              return v48;
            }

            return result;
          }
        }

        else
        {
LABEL_53:
          v42 = 0;
        }

        if (!v18 && !v42)
        {
          v43 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_57;
        }

LABEL_58:
        mlir::TensorType::getShape(&v50);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v45, v18) - 1) >> 64);
        v46 = mlir::RankedTensorType::get(__p, (v59 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v46);
        if (__p)
        {
          v59 = __p;
          operator delete(__p);
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!v18)
      {
        v33 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v50))
      {
        mlir::TensorType::getShape(&v50);
        v32 = v31;
        __b = v63;
        HIDWORD(v62) = 4;
        if (v31 >= 5)
        {
          LODWORD(v62) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v31)
        {
          memset_pattern16(v63, &unk_257369660, 8 * v31);
        }

        LODWORD(v62) = v32;
        v33 = mlir::RankedTensorType::get(v63, v32, ElementType, 0);
        if (__b != v63)
        {
          v44 = v33;
          free(__b);
          v33 = v44;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v33 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v34 = *(a11 + 8);
  if (v34 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v34) = v33;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionSumOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::ReductionVarianceOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v51 = a6;
  v52[0] = 0;
  v53 = 0;
  v54 = v15;
  v55 = a9;
  v56 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(v52, "mps.reduction_variance", 22, Context);
    v53 = 1;
    a1 = v16;
  }

  *&v57 = a4;
  *(&v57 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v54;
    v64 = v57;
    v19 = mlir::ValueRange::dereference_iterator(&v64, 0);
    v20 = 0;
    if (*(&v64 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v64, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v50 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v50);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v50))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v49 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v49))
        {
          mlir::TensorType::getShape(&v49);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v63;
        v62 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v60;
          v59 = 0x600000000;
          Shape = mlir::TensorType::getShape(&v50);
          {
            v37 = __p;
            v38 = v59;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v50);
            v40 = mlir::RankedTensorType::get(v37, v38, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v40);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v60)
          {
            v47 = result;
            free(__p);
            result = v47;
          }

          goto LABEL_64;
        }

        if (!mlir::TensorType::hasRank(&v49))
        {
          goto LABEL_53;
        }

        mlir::TensorType::getShape(&v49);
        if (!v41)
        {
          goto LABEL_58;
        }

        if (v41 == 1)
        {
          v42 = *mlir::TensorType::getShape(&v49) == 1;
          if (!*mlir::TensorType::getShape(&v49))
          {
            v43 = v50;
LABEL_57:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
LABEL_60:
            result = 1;
LABEL_64:
            if (__b != v63)
            {
              v48 = result;
              free(__b);
              return v48;
            }

            return result;
          }
        }

        else
        {
LABEL_53:
          v42 = 0;
        }

        if (!v18 && !v42)
        {
          v43 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_57;
        }

LABEL_58:
        mlir::TensorType::getShape(&v50);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v45, v18) - 1) >> 64);
        v46 = mlir::RankedTensorType::get(__p, (v59 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v46);
        if (__p)
        {
          v59 = __p;
          operator delete(__p);
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!v18)
      {
        v33 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v50))
      {
        mlir::TensorType::getShape(&v50);
        v32 = v31;
        __b = v63;
        HIDWORD(v62) = 4;
        if (v31 >= 5)
        {
          LODWORD(v62) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v31)
        {
          memset_pattern16(v63, &unk_257369660, 8 * v31);
        }

        LODWORD(v62) = v32;
        v33 = mlir::RankedTensorType::get(v63, v32, ElementType, 0);
        if (__b != v63)
        {
          v44 = v33;
          free(__b);
          v33 = v44;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v33 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v34 = *(a11 + 8);
  if (v34 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v34) = v33;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionVarianceOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::ReductionProdOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v51 = a6;
  v52[0] = 0;
  v53 = 0;
  v54 = v15;
  v55 = a9;
  v56 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(v52, "mps.reduction_prod", 18, Context);
    v53 = 1;
    a1 = v16;
  }

  *&v57 = a4;
  *(&v57 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v54;
    v64 = v57;
    v19 = mlir::ValueRange::dereference_iterator(&v64, 0);
    v20 = 0;
    if (*(&v64 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v64, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v50 = v21;
    if (!v21)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v50);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v50))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v49 = v25;
        if (!v25)
        {
          return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v49))
        {
          mlir::TensorType::getShape(&v49);
          if (v28 >= 2)
          {
            return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v63;
        v62 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v60;
          v59 = 0x600000000;
          Shape = mlir::TensorType::getShape(&v50);
          {
            v37 = __p;
            v38 = v59;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v50);
            v40 = mlir::RankedTensorType::get(v37, v38, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v40);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v60)
          {
            v47 = result;
            free(__p);
            result = v47;
          }

          goto LABEL_64;
        }

        if (!mlir::TensorType::hasRank(&v49))
        {
          goto LABEL_53;
        }

        mlir::TensorType::getShape(&v49);
        if (!v41)
        {
          goto LABEL_58;
        }

        if (v41 == 1)
        {
          v42 = *mlir::TensorType::getShape(&v49) == 1;
          if (!*mlir::TensorType::getShape(&v49))
          {
            v43 = v50;
LABEL_57:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
LABEL_60:
            result = 1;
LABEL_64:
            if (__b != v63)
            {
              v48 = result;
              free(__b);
              return v48;
            }

            return result;
          }
        }

        else
        {
LABEL_53:
          v42 = 0;
        }

        if (!v18 && !v42)
        {
          v43 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_57;
        }

LABEL_58:
        mlir::TensorType::getShape(&v50);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v45, v18) - 1) >> 64);
        v46 = mlir::RankedTensorType::get(__p, (v59 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v46);
        if (__p)
        {
          v59 = __p;
          operator delete(__p);
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!v18)
      {
        v33 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v50))
      {
        mlir::TensorType::getShape(&v50);
        v32 = v31;
        __b = v63;
        HIDWORD(v62) = 4;
        if (v31 >= 5)
        {
          LODWORD(v62) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v31)
        {
          memset_pattern16(v63, &unk_257369660, 8 * v31);
        }

        LODWORD(v62) = v32;
        v33 = mlir::RankedTensorType::get(v63, v32, ElementType, 0);
        if (__b != v63)
        {
          v44 = v33;
          free(__b);
          v33 = v44;
        }

        goto LABEL_36;
      }
    }

    v30 = ElementType;
  }

  else
  {
    v30 = mlir::Float32Type::get(a1, a2);
  }

  v33 = mlir::UnrankedTensorType::get(v30);
LABEL_36:
  v34 = *(a11 + 8);
  if (v34 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v34) = v33;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionProdOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::CumulativeSumOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::CumulativeSumOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::CumulativeProductOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::CumulativeProductOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::CumulativeMaximumOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::CumulativeMaximumOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::CumulativeMinimumOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::CumulativeMinimumOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SortOp::inferReturnTypes(mlir::Float32Type *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v39[0] = a4;
  v39[1] = a5;
  if (a5)
  {
    v12 = mlir::ValueRange::dereference_iterator(v39, 0);
    v38[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
    v38[1] = v13;
    if (v38[0] && (mlir::ShapedType::hasRank(v38) & 1) != 0)
    {
      Shape = mlir::ShapedType::getShape(v38);
      v16 = v15;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v38[0]);
      v18 = mlir::RankedTensorType::get(Shape, v16, ElementTypeOrSelf, 0);
      v19 = *(a11 + 8);
      if (v19 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v19) = v18;
      ++*(a11 + 8);
      v20 = mlir::ShapedType::getShape(v38);
      v22 = v21;
      v23 = mlir::IntegerType::get(this, 32, 1u);
      v24 = mlir::RankedTensorType::get(v20, v22, v23, 0);
    }

    else
    {
      v25 = mlir::ValueRange::dereference_iterator(v39, 0);
      v26 = mlir::getElementTypeOrSelf(v25);
      v27 = mlir::UnrankedTensorType::get(v26);
      v28 = *(a11 + 8);
      if (v28 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v28) = v27;
      ++*(a11 + 8);
      v29 = mlir::IntegerType::get(this, 32, 1u);
      v24 = mlir::UnrankedTensorType::get(v29);
    }

    v30 = *(a11 + 8);
    if (v30 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v30) = v24;
  }

  else
  {
    v31 = mlir::Float32Type::get(this, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v33) = v32;
    ++*(a11 + 8);
    v34 = mlir::IntegerType::get(this, 32, 1u);
    v35 = mlir::UnrankedTensorType::get(v34);
    v36 = *(a11 + 8);
    if (v36 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v36) = v35;
  }

  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::SortOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::SoftmaxOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::SoftmaxOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::NormalizationOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a4;
  v6[1] = a5;
  if (a5 == 5)
  {
    mlir::ValueRange::dereference_iterator(v6, 0);
    mlir::ValueRange::dereference_iterator(v6, 1);
    mlir::ValueRange::dereference_iterator(v6, 2);
    mlir::ValueRange::dereference_iterator(v6, 3);
    mlir::ValueRange::dereference_iterator(v6, 4);
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

void *mlir::mps::anonymous namespace::getBroadcastedOperandsType(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = mlir::TypeRange::dereference_iterator(a5, 0);
  v19 = v11;
  if (a6 >= 2)
  {
    v12 = 1;
    v13 = mlir::TypeRange::dereference_iterator(a5, 1);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v11, v13, 0);
    if (BroadcastedType)
    {
      v15 = 2;
      while (1)
      {
        v11 = BroadcastedType;
        if (a6 == v15)
        {
          break;
        }

        v16 = mlir::TypeRange::dereference_iterator(a5, v15);
        BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v11, v16, 0);
        ++v15;
        if (!BroadcastedType)
        {
          v12 = v15 - 1;
          goto LABEL_8;
        }
      }

      v19 = BroadcastedType;
    }

    else
    {
      v11 = v19;
LABEL_8:
      v19 = v11;
      v18 = mlir::TypeRange::dereference_iterator(a5, v12);
      mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],llvm::StringRef const&,char const(&)[7],mlir::Type,char const(&)[30]>(a1, a2, "output type ", &v19, " and ", (a3 + 16 * v12), " type ", &v18, " are not broadcast compatible");
      return 0;
    }
  }

  return v11;
}

uint64_t mlir::mps::NormalizationOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::InstanceNormOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::InstanceNormOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::NormalizationOp::verify(mlir::Operation **this)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v2)
  {
    v3 = v2;
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
    if (v4)
    {
      v5 = v4;
      v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
      if (v6)
      {
        v7 = v6;
        v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8));
        if (v8)
        {
          v9 = v8;
          v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8));
          if (v10)
          {
            v42 = &v44;
            v44 = v3;
            v45 = v5;
            v46 = v7;
            v47[0] = v9;
            v47[1] = v10;
            v43 = 0x600000005;
            v39[0] = &v40;
            v39[1] = 0x300000000;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v39[0] = "invalid type for beta.";
          v41 = 259;
          mlir::OpState::emitOpError(this, v39, &v42);
          v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
          if (v42)
          {
            mlir::InFlightDiagnostic::report(&v42);
          }

          if (v53 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v43);
          }

          return v11;
        }

        v39[0] = "invalid type for gamma.";
        v41 = 259;
        mlir::OpState::emitOpError(this, v39, &v42);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v53 == 1)
        {
          if (v52 != &v53)
          {
            free(v52);
          }

          v32 = __p;
          if (__p)
          {
            v33 = v51;
            v34 = __p;
            if (v51 != __p)
            {
              do
              {
                v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
              }

              while (v33 != v32);
              v34 = __p;
            }

            v51 = v32;
            operator delete(v34);
          }

          v15 = v48;
          if (!v48)
          {
            goto LABEL_73;
          }

          v35 = v49;
          v17 = v48;
          if (v49 == v48)
          {
LABEL_72:
            v49 = v15;
            operator delete(v17);
LABEL_73:
            if (v45 != v47)
            {
              free(v45);
            }

            return v11;
          }

          do
          {
            v37 = *--v35;
            v36 = v37;
            *v35 = 0;
            if (v37)
            {
              MEMORY[0x259C63150](v36, 0x1000C8077774924);
            }
          }

          while (v35 != v15);
LABEL_71:
          v17 = v48;
          goto LABEL_72;
        }
      }

      else
      {
        v39[0] = "invalid type for variance.";
        v41 = 259;
        mlir::OpState::emitOpError(this, v39, &v42);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v53 == 1)
        {
          if (v52 != &v53)
          {
            free(v52);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v51;
            v28 = __p;
            if (v51 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v51 = v26;
            operator delete(v28);
          }

          v15 = v48;
          if (!v48)
          {
            goto LABEL_73;
          }

          v29 = v49;
          v17 = v48;
          if (v49 == v48)
          {
            goto LABEL_72;
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
          goto LABEL_71;
        }
      }
    }

    else
    {
      v39[0] = "invalid type for mean.";
      v41 = 259;
      mlir::OpState::emitOpError(this, v39, &v42);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v53 == 1)
      {
        if (v52 != &v53)
        {
          free(v52);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v51;
          v22 = __p;
          if (v51 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v51 = v20;
          operator delete(v22);
        }

        v15 = v48;
        if (!v48)
        {
          goto LABEL_73;
        }

        v23 = v49;
        v17 = v48;
        if (v49 == v48)
        {
          goto LABEL_72;
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
        goto LABEL_71;
      }
    }
  }

  else
  {
    v39[0] = "invalid type for input.";
    v41 = 259;
    mlir::OpState::emitOpError(this, v39, &v42);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v51;
        v14 = __p;
        if (v51 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v51 = v12;
        operator delete(v14);
      }

      v15 = v48;
      if (!v48)
      {
        goto LABEL_73;
      }

      v16 = v49;
      v17 = v48;
      if (v49 == v48)
      {
        goto LABEL_72;
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
      goto LABEL_71;
    }
  }

  return v11;
}

BOOL mlir::mps::InstanceNormOp::verify(mlir::Operation **this)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 9);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v42 = v2;
  v5 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v41 = v5;
  if (v2)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v43 = "input and axes type must be a tensor type";
    v46 = 259;
    mlir::OpState::emitOpError(this, &v43, v47);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v56 != 1)
    {
      return v9;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v54;
      v12 = __p;
      if (v54 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v54 = v10;
      operator delete(v12);
    }

    v13 = v51;
    if (!v51)
    {
      goto LABEL_64;
    }

    v14 = v52;
    v15 = v51;
    if (v52 == v51)
    {
      goto LABEL_63;
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
    goto LABEL_62;
  }

  if (mlir::TensorType::hasRank(&v41))
  {
    mlir::TensorType::getShape(&v41);
    if (v20 >= 2)
    {
      v43 = "axes tensor must have rank 0 or 1";
      v46 = 259;
      mlir::OpState::emitOpError(this, &v43, v47);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v56 != 1)
      {
        return v9;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v54;
        v23 = __p;
        if (v54 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v54 = v21;
        operator delete(v23);
      }

      v13 = v51;
      if (!v51)
      {
        goto LABEL_64;
      }

      v24 = v52;
      v15 = v51;
      if (v52 == v51)
      {
LABEL_63:
        v52 = v13;
        operator delete(v15);
LABEL_64:
        v35 = v49;
        if (v49 != &v50)
        {
LABEL_65:
          free(v35);
          return v9;
        }

        return v9;
      }

      do
      {
        v26 = *--v24;
        v25 = v26;
        *v24 = 0;
        if (v26)
        {
          MEMORY[0x259C63150](v25, 0x1000C8077774924);
        }
      }

      while (v24 != v13);
LABEL_62:
      v15 = v51;
      goto LABEL_63;
    }
  }

  if (!mlir::TensorType::hasRank(&v41) || !mlir::TensorType::hasRank(&v42) || (mlir::TensorType::getShape(&v41), v27 < 1) || (v28 = *mlir::TensorType::getShape(&v41), mlir::TensorType::getShape(&v42), v28 <= v29))
  {
    v43 = v45;
    v44 = 0x400000000;
    if (!mlir::TensorType::hasRank(&v42) || (mlir::matchConstantWithIntVector<long long>(*(*(*this + 9) + 56), &v43) & 1) == 0)
    {
      goto LABEL_60;
    }

    v47[0] = &v48;
    v47[1] = 0x600000000;
    v31 = v43;
    v32 = v44;
    mlir::TensorType::getShape(&v42);
    if (v47[0] != &v48)
    {
      free(v47[0]);
    }

    if (!PositiveAxes)
    {
      v9 = 0;
      v35 = v43;
      if (v43 == v45)
      {
        return v9;
      }
    }

    else
    {
LABEL_60:
      v9 = 1;
      v35 = v43;
      if (v43 == v45)
      {
        return v9;
      }
    }

    goto LABEL_65;
  }

  v38 = *mlir::TensorType::getShape(&v41);
  mlir::TensorType::getShape(&v42);
  v37 = v30;
  llvm::formatv<long long,long long>("axes tensor shape {0} is incompatible with input rank of {1}", &v38, &v37, &v43);
  v40 = 263;
  v39 = &v43;
  mlir::OpState::emitOpError(this, &v39, v47);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v47);
  return v9;
}

const char *llvm::formatv<long long,long long>@<X0>(const char *__s@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = __s;
  v6 = *a2;
  v7 = *a3;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v4;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_28685E550;
  *(a4 + 48) = v6;
  *(a4 + 56) = &unk_28685E550;
  *(a4 + 64) = v7;
  *(a4 + 80) = a4 + 56;
  return __s;
}

BOOL mlir::mps::inferConv2DParams(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v103[4] = *MEMORY[0x277D85DE8];
  v101 = v103;
  v102 = 0x400000000;
  v98 = v100;
  v99 = 0x400000000;
  v95 = v97;
  v96 = 0x800000000;
  if (a5)
  {
    mlir::getIntValues<long long>(a5, a6, &v101, 1);
  }

  if (a7)
  {
    mlir::getIntValues<long long>(a7, a8, &v98, 1);
  }

  if (a9)
  {
    mlir::getIntValues<long long>(a9, a10, &v95, 1);
  }

  if (v99)
  {
    v20 = v98;
    v21 = 8 * v99;
    do
    {
      if (*v20 <= 0)
      {
        v29 = "dilationRate must be > 0 for all dimensions";
        goto LABEL_19;
      }

      ++v20;
      v21 -= 8;
    }

    while (v21);
  }

  v22 = a15;
  v23 = a13;
  if (a11 == 1)
  {
    v33 = *(a12 + 8);
    if (v33 == 4)
    {
      v34 = *(a13 + 8);
      v35 = v34 > 4;
      if (v34 == 4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v33 <= 4)
      {
        if (*(a12 + 12) <= 3u)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        bzero((*a12 + 8 * *(a12 + 8)), 32 - 8 * *(a12 + 8));
        v23 = a13;
      }

      *(a12 + 8) = 4;
      v34 = *(v23 + 8);
      v35 = v34 > 4;
      if (v34 == 4)
      {
LABEL_24:
        v36 = *(a14 + 8);
        v37 = v36 > 2;
        if (v36 == 2)
        {
          goto LABEL_25;
        }

LABEL_157:
        if (!v37)
        {
          v92 = v23;
          if (*(a14 + 12) <= 1u)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memset_pattern16((*a14 + 8 * v36), &unk_257369660, 16 - 8 * v36);
          v23 = v92;
          *(a14 + 8) = 2;
          v38 = *(v22 + 8);
          v39 = v38 > 2;
          if (v38 == 2)
          {
            goto LABEL_108;
          }

          goto LABEL_26;
        }

        *(a14 + 8) = 2;
        v38 = *(v22 + 8);
        v39 = v38 > 2;
        if (v38 != 2)
        {
LABEL_26:
          if (!v39)
          {
            v91 = v23;
            if (*(v22 + 12) <= 1u)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memset_pattern16((*v22 + 8 * v38), &unk_257369660, 16 - 8 * v38);
            v23 = v91;
          }

          *(v22 + 8) = 2;
        }

LABEL_108:
        v64 = *a12;
        *v64 = *a3;
        v64[1] = a3[3];
        v64[2] = a3[1];
        v64[3] = a3[2];
        if (a5 && v102)
        {
          v65 = 0;
          v66 = v101;
          v67 = *a14;
          v68 = *a14 + 8;
          for (i = 8 * v102; i; i -= 8)
          {
            v71 = v66[v65];
            if (v65 <= 1)
            {
              if (!v65)
              {
                if (v71 != 1)
                {
                  v29 = "stride != 1 not supported for dim 3";
                  goto LABEL_19;
                }

                goto LABEL_114;
              }

              v70 = v67;
              if (v65 != 1)
              {
                goto LABEL_165;
              }
            }

            else
            {
              v70 = v68;
              if (v65 != 2)
              {
                if (v65 != 3)
                {
LABEL_165:
                  v30 = mlir::emitOptionalError<char const(&)[24]>(a1, a2, "stride num dimensions should be <= 4");
                  goto LABEL_20;
                }

                if (v71 != 1)
                {
                  v29 = "stride != 1 not supported for dim 0";
                  goto LABEL_19;
                }

                goto LABEL_114;
              }
            }

            *v70 = v71;
LABEL_114:
            ++v65;
          }
        }

        if (a7 && v99)
        {
          v72 = 0;
          v73 = v98;
          v74 = *v22;
          v75 = *v22 + 8;
          for (j = 8 * v99; j; j -= 8)
          {
            v78 = v73[v72];
            if (v72 <= 1)
            {
              if (!v72)
              {
                if (v78 != 1)
                {
LABEL_135:
                  v29 = "dilationRate != 1 not supported for dim 3";
                  goto LABEL_19;
                }

                goto LABEL_128;
              }

              v77 = v74;
              if (v72 != 1)
              {
                goto LABEL_164;
              }
            }

            else
            {
              v77 = v75;
              if (v72 != 2)
              {
                if (v72 != 3)
                {
LABEL_164:
                  v30 = mlir::emitOptionalError<char const(&)[39]>(a1, a2, "dilationRate num dimensions should be <= 4");
                  goto LABEL_20;
                }

                if (v78 != 1)
                {
                  v29 = "dilationRate != 1 not supported for dim 0";
                  goto LABEL_19;
                }

                goto LABEL_128;
              }
            }

            *v77 = v78;
LABEL_128:
            ++v72;
          }
        }

        if (!a9 || !v96)
        {
          goto LABEL_148;
        }

        v79 = 0;
        v80 = v95;
        v81 = *v23;
        v82 = *v23 + 24;
        v83 = *v23 + 16;
        v84 = *v23 + 8;
        v85 = 8 * v96;
        while (1)
        {
          if (v79 > 3)
          {
            v86 = v83;
            if (v79 != 4)
            {
              if (v79 != 5)
              {
                goto LABEL_140;
              }

              v86 = v82;
            }
          }

          else
          {
            v86 = v81;
            if (v79 != 2)
            {
              v86 = v84;
              if (v79 != 3)
              {
                goto LABEL_140;
              }
            }
          }

          *v86 = v80[v79];
LABEL_140:
          ++v79;
          v85 -= 8;
          if (!v85)
          {
            goto LABEL_148;
          }
        }
      }
    }

    if (v35)
    {
      *(v23 + 8) = 4;
      v36 = *(a14 + 8);
      v37 = v36 > 2;
      if (v36 != 2)
      {
        goto LABEL_157;
      }
    }

    else
    {
      if (*(v23 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v88 = v23;
      bzero((*v23 + 8 * v34), 32 - 8 * v34);
      v23 = v88;
      v22 = a15;
      *(v23 + 8) = 4;
      v36 = *(a14 + 8);
      v37 = v36 > 2;
      if (v36 != 2)
      {
        goto LABEL_157;
      }
    }

LABEL_25:
    v38 = *(v22 + 8);
    v39 = v38 > 2;
    if (v38 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_108;
  }

  if (a11)
  {
    v31 = mlir::emitOptionalError<char const(&)[24]>(a1, a2, "Unsupported dataLayout");
    v32 = v95;
    if (v95 == v97)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  v24 = *(a13 + 8);
  if (v24 != 4)
  {
    if (v24 <= 4)
    {
      if (*(a13 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero((*a13 + 8 * v24), 32 - 8 * v24);
      v23 = a13;
      v22 = a15;
      *(a13 + 8) = 4;
      v25 = *(a14 + 8);
      v26 = v25 > 2;
      if (v25 != 2)
      {
        goto LABEL_45;
      }
    }

    else
    {
      *(a13 + 8) = 4;
      v25 = *(a14 + 8);
      v26 = v25 > 2;
      if (v25 != 2)
      {
        goto LABEL_45;
      }
    }

LABEL_15:
    v27 = *(v22 + 8);
    v28 = v27 > 2;
    if (v27 == 2)
    {
      goto LABEL_16;
    }

LABEL_51:
    if (v28)
    {
      *(v22 + 8) = 2;
      if (*(a12 + 12) > 3u)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v90 = v23;
      if (*(v22 + 12) <= 1u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16((*v22 + 8 * v27), &unk_257369660, 16 - 8 * v27);
      v23 = v90;
      *(v22 + 8) = 2;
      if (*(a12 + 12) > 3u)
      {
        goto LABEL_57;
      }
    }

LABEL_17:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v25 = *(a14 + 8);
  v26 = v25 > 2;
  if (v25 == 2)
  {
    goto LABEL_15;
  }

LABEL_45:
  if (v26)
  {
    *(a14 + 8) = 2;
    v27 = *(v22 + 8);
    v28 = v27 > 2;
    if (v27 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v89 = v23;
    if (*(a14 + 12) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memset_pattern16((*a14 + 8 * v25), &unk_257369660, 16 - 8 * v25);
    v23 = v89;
    *(a14 + 8) = 2;
    v27 = *(v22 + 8);
    v28 = v27 > 2;
    if (v27 != 2)
    {
      goto LABEL_51;
    }
  }

LABEL_16:
  if (*(a12 + 12) <= 3u)
  {
    goto LABEL_17;
  }

LABEL_57:
  if (a4)
  {
    v40 = *(a12 + 8);
    v41 = 8 * a4;
    do
    {
      if (v40 >= *(a12 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a12 + 8 * v40) = *a3;
      v40 = *(a12 + 8) + 1;
      *(a12 + 8) = v40;
      ++a3;
      v41 -= 8;
    }

    while (v41);
  }

  if (!a5 || !v102)
  {
LABEL_78:
    if (a7 && v99)
    {
      v49 = 0;
      v50 = v98;
      v51 = *v22;
      v52 = *v22 + 8;
      for (k = 8 * v99; k; k -= 8)
      {
        v54 = v50[v49];
        if (v49 > 1)
        {
          v55 = v51;
          if (v49 != 2)
          {
            v55 = v52;
            if (v49 != 3)
            {
              goto LABEL_164;
            }
          }

          *v55 = v54;
        }

        else if (v49)
        {
          if (v49 != 1)
          {
            goto LABEL_164;
          }

          if (v54 != 1)
          {
            v29 = "dilationRate != 1 not supported for dim 2";
            goto LABEL_19;
          }
        }

        else if (v54 != 1)
        {
          goto LABEL_135;
        }

        ++v49;
      }
    }

    if (a9 && v96)
    {
      v56 = 0;
      v57 = v95;
      v58 = *v23;
      v59 = *v23 + 24;
      v60 = *v23 + 16;
      v61 = *v23 + 8;
      for (m = 8 * v96; m; m -= 8)
      {
        if (v56 > 5)
        {
          v63 = v60;
          if (v56 != 6)
          {
            if (v56 != 7)
            {
              goto LABEL_97;
            }

            v63 = v59;
          }
        }

        else
        {
          v63 = v58;
          if (v56 != 4)
          {
            v63 = v61;
            if (v56 != 5)
            {
              goto LABEL_97;
            }
          }
        }

        *v63 = v57[v56];
LABEL_97:
        ++v56;
      }
    }

LABEL_148:
    v31 = 1;
    v32 = v95;
    if (v95 == v97)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  v42 = 0;
  v43 = v101;
  v44 = *a14;
  v45 = *a14 + 8;
  v46 = 8 * v102;
  while (1)
  {
    v47 = v43[v42];
    if (v42 > 1)
    {
      break;
    }

    if (v42)
    {
      if (v42 != 1)
      {
        goto LABEL_166;
      }

      if (v47 != 1)
      {
        v29 = "stride != 1 not supported for dim 2 of NCHW";
        goto LABEL_19;
      }
    }

    else if (v47 != 1)
    {
      v29 = "stride != 1 not supported for dim 3 of NCHW";
      goto LABEL_19;
    }

LABEL_67:
    ++v42;
    v46 -= 8;
    if (!v46)
    {
      goto LABEL_78;
    }
  }

  v48 = v44;
  if (v42 == 2 || (v48 = v45, v42 == 3))
  {
    *v48 = v47;
    goto LABEL_67;
  }

LABEL_166:
  v29 = "stride attr num dimensions should be <= 4";
LABEL_19:
  v30 = mlir::emitOptionalError<char const(&)[24]>(a1, a2, v29);
LABEL_20:
  v31 = v30;
  v32 = v95;
  if (v95 != v97)
  {
LABEL_149:
    free(v32);
  }

LABEL_150:
  if (v98 != v100)
  {
    free(v98);
  }

  if (v101 != v103)
  {
    free(v101);
  }

  return v31;
}

uint64_t mlir::mps::Conv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v44[0] = a4;
  v44[1] = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v33 = a6;
  v34[0] = 0;
  v35 = 0;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = a9;
  v41 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v33);
    if (v35 == 1)
    {
      v35 = 0;
    }

    mlir::OperationName::OperationName(v34, "mps.conv_2d", 11, Context);
    v35 = 1;
  }

  v42 = a4;
  v43 = a5;
  if (a5 >= 2 && (v19 = mlir::UnknownLoc::get(this, a2), (mlir::mps::Conv2DOpAdaptor::verify(&v33, v19) & 1) != 0))
  {
    v31[3] = *(&v36 + 1);
    v31[4] = *(&v38 + 1);
    v32 = *(&v37 + 1);
    v31[2] = v37;
    mlir::IntegerAttr::getValue(&v32, &v30);
    if (DWORD2(v30) > 0x40)
    {
      MEMORY[0x259C63150]();
    }

    v24 = mlir::ValueRange::dereference_iterator(v44, 0);
    mlir::ValueRange::dereference_iterator(v44, 1);
    v31[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v24 + 8) & 0xFFFFFFFFFFFFFFF8));
    v31[1] = v25;
    if (v31[0] && (mlir::ShapedType::hasRank(v31) & 1) != 0)
    {
      operator new();
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v24);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v27);
    }

    v28 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v29 = *(a11 + 8);
    if (v29 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v29) = v28;
  }

  else
  {
    v20 = mlir::Float32Type::get(this, a2);
    v21 = mlir::UnrankedTensorType::get(v20);
    v22 = *(a11 + 8);
    if (v22 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v22) = v21;
  }

  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::Conv2DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v55 = "'mps.conv_2d' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v54 = a1[4];
  if (!v54)
  {
    v55 = "'mps.conv_2d' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v53 = a1[5];
  if (!v53)
  {
    v55 = "'mps.conv_2d' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            MEMORY[0x259C63150](v39, 0x1000C8077774924);
          }
        }

        while (v38 != v24);
        goto LABEL_87;
      }

LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v3 = a1[6];
  if (!v3)
  {
    v55 = "'mps.conv_2d' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v46 = *--v44;
          v45 = v46;
          *v44 = 0;
          if (v46)
          {
            MEMORY[0x259C63150](v45, 0x1000C8077774924);
          }
        }

        while (v44 != v24);
LABEL_87:
        v26 = v64;
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (a1[7])
  {
    v52 = a1[8];
    if (v52)
    {
      if (a1[9])
      {
        v55 = v3;
        Type = mlir::IntegerAttr::getType(&v55);
        if (mlir::Type::isUnsignedInteger(&Type, 64))
        {
          v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Type = mlir::TensorType::operator mlir::ShapedType(v49);
          v61 = v5;
          Shape = mlir::ShapedType::getShape(&Type);
          v59 = 4;
          if (v7 == 1 && *Shape == v59 && (v50 = v52, *&v58 = mlir::DenseElementsAttr::getType(&v50), *(&v58 + 1) = v8, ElementType = mlir::ShapedType::getElementType(&v58), mlir::Type::isUnsignedInteger(&ElementType, 64)))
          {
            v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Type = mlir::TensorType::operator mlir::ShapedType(v49);
            v61 = v10;
            v11 = mlir::ShapedType::getShape(&Type);
            v59 = 4;
            if (v12 == 1 && *v11 == v59 && (v50 = v54, *&v58 = mlir::DenseElementsAttr::getType(&v50), *(&v58 + 1) = v13, ElementType = mlir::ShapedType::getElementType(&v58), mlir::Type::isUnsignedInteger(&ElementType, 64)))
            {
              v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
              v56 = v14;
              v59 = mlir::ElementsAttr::getType(&v55);
              Type = mlir::TensorType::operator mlir::ShapedType(&v59);
              v61 = v15;
              v16 = mlir::ShapedType::getShape(&Type);
              v58 = xmmword_2573695A0;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::DenseElementsAttr::getType(&v50);
                v49[1] = v19;
                ElementType = mlir::ShapedType::getElementType(v49);
                if (mlir::Type::isUnsignedInteger(&ElementType, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
    return v20;
  }

  v55 = "'mps.conv_2d' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2, &v55, &Type);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

uint64_t *mlir::mps::detail::Conv2DOpGenericAdaptorBase::getGroups(mlir::mps::detail::Conv2DOpGenericAdaptorBase *this)
{
  v5 = *(this + 6);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

BOOL mlir::mps::anonymous namespace::inferConv2DReturnType(uint64_t a1, char a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v26 = a4;
  mlir::TypeRange::TypeRange(&v22, &v25, 2uLL);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a3);
  v25 = v13;
  v26 = v14;
  if (!v13)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "cannot conv2D a non-shaped inputType");
  }

  v15 = v13;
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a4);
  if (!v16)
  {
    return mlir::emitOptionalError<char const(&)[39]>(a1, a2, "cannot conv2D a non-shaped weightsType");
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a6 = mlir::UnrankedTensorType::get(v12);
    return 1;
  }

  v22 = v24;
  v23 = 0x400000000;
  Shape = mlir::ShapedType::getShape(&v25);
  {
    result = 0;
    v20 = v22;
    if (v22 == v24)
    {
      return result;
    }

    goto LABEL_12;
  }

  *a6 = mlir::RankedTensorType::get(v22, v23, v12, 0);
  result = 1;
  v20 = v22;
  if (v22 != v24)
  {
LABEL_12:
    v21 = result;
    free(v20);
    return v21;
  }

  return result;
}

uint64_t mlir::mps::Conv2DOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EEB0;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EEB0;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::Conv2DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a2;
  v143[4] = *MEMORY[0x277D85DE8];
  v120 = a4;
  v121 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = *(a7 + 6);
  }

  else
  {
    v19 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v109 = a6;
  v110[0] = 0;
  v111 = 0;
  v112 = v16;
  v113 = v17;
  v114 = v18;
  v115 = v19;
  v116 = a9;
  v20 = a5;
  v117 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v109);
    if (v111 == 1)
    {
      v111 = 0;
    }

    mlir::OperationName::OperationName(v110, "mps.conv_2d_data_gradient", 25, Context);
    v111 = 1;
    v20 = v121;
  }

  v118 = a4;
  v119 = a5;
  if (v20 < 2 || (v22 = mlir::UnknownLoc::get(this, a2), (mlir::mps::Conv2DDataGradientOpAdaptor::verify(&v109, v22) & 1) == 0))
  {
    v37 = mlir::Float32Type::get(this, a2);
LABEL_52:
    v62 = mlir::UnrankedTensorType::get(v37);
    goto LABEL_53;
  }

  v23 = mlir::ValueRange::dereference_iterator(&v120, 0);
  v24 = mlir::ValueRange::dereference_iterator(&v120, 1);
  v25 = 0;
  if (v121 == 3)
  {
    v25 = mlir::ValueRange::dereference_iterator(&v120, 2);
  }

  v99 = *(&v112 + 1);
  v100 = v25;
  v97 = *(&v113 + 1);
  v98 = v113;
  v94 = v114;
  v95 = v112;
  v96 = *(&v114 + 1);
  v93 = v115;
  v26 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26)
  {
    v27 = v26->i64[0];
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_26;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_26;
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
      v38 = v31[1];
      v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v39)
      {
        goto LABEL_41;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  v38 = 0;
  v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v39)
  {
    goto LABEL_41;
  }

LABEL_27:
  v40 = v14;
  v41 = a3;
  v42 = *v39;
  {
    mlir::mps::ConstantOp::verify();
    v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_29;
    }

LABEL_39:
    a3 = v41;
    v14 = v40;
    goto LABEL_41;
  }

  v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_39;
  }

LABEL_29:
  v46 = v44;
  v47 = v45;
  a3 = v41;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
  v14 = v40;
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v52 = v46[1];
    goto LABEL_42;
  }

LABEL_41:
  v52 = 0;
LABEL_42:
  *&v108 = v26;
  *(&v108 + 1) = v38;
  v107[0] = v39;
  v107[1] = v52;
  v106 = v108;
  v141 = v26;
  v142 = v39;
  mlir::TypeRange::TypeRange(&v127, &v141, 2uLL);
  if (!v26 || !mlir::ShapedType::hasRank(&v106) || !v107[0] || (mlir::ShapedType::hasRank(v107) & 1) == 0)
  {
    v37 = v53;
    goto LABEL_52;
  }

  v141 = v143;
  v142 = 0x400000000;
  if (!v100)
  {
    v104 = v99;
    v105 = v96;
    v102 = v97;
    v103 = v98;
    v138 = v140;
    memset(v140, 0, sizeof(v140));
    v139 = 0x400000004;
    if (v106)
    {
      Shape = mlir::ShapedType::getShape(&v106);
      if (v68 != 4)
      {
        v70 = mlir::emitOptionalError<char const(&)[24]>(v14, a3, "Conv2DDataGradientOp input should be rank 4");
        v62 = 0;
        goto LABEL_115;
      }

      v69 = Shape;
    }

    else
    {
      v69 = v140;
    }

    v136[0] = v137;
    v136[1] = 0x400000000;
    v134[0] = v135;
    v134[1] = 0x400000000;
    v132[0] = v133;
    v132[1] = 0x200000000;
    v130[0] = v131;
    v130[1] = 0x200000000;
    if (v95)
    {
      v71 = *(v95 + 8);
    }

    else
    {
      v71 = 1;
    }

    v76 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v105);
    v78 = v77;
    v79 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v104);
    v81 = v80;
    v82 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v103);
    if (mlir::mps::inferConv2DParams(v14, a3, v69, 4, v76, v78, v79, v81, v82, v83, v71, v136, v134, v132, v130))
    {
      if (v102)
      {
        UInt = mlir::IntegerAttr::getUInt(&v102);
      }

      else
      {
        UInt = 1;
      }

      if (v93)
      {
        v85 = *(v93 + 8);
      }

      else
      {
        v85 = 3;
      }

      if (v94)
      {
        v86 = *(v94 + 8);
      }

      else
      {
        v86 = 2;
      }

      v101[0] = mlir::ShapedType::getShape(v107);
      v101[1] = v87;
      if (v87 == 4)
      {
        mlir::mps::ShapeWithLayout::ShapeWithLayout(&v127, v101, v85);
        v124 = v126;
        v125 = 0x400000000;
        mlir::mps::ShapeWithLayout::ShapeWithLayout(v122, &v127);
        if (v122[0] != &v123)
        {
          free(v122[0]);
        }

        if (v70)
        {
          v62 = mlir::RankedTensorType::get(v124, v125, v53, 0);
        }

        else
        {
          v62 = 0;
        }

        if (v124 != v126)
        {
          v88 = v62;
          free(v124);
          v62 = v88;
        }

        if (v127 != v129)
        {
          v89 = v62;
          free(v127);
          v62 = v89;
        }
      }

      else
      {
        v70 = mlir::emitOptionalError<char const(&)[24]>(v14, a3, "Conv2dGradient weights should be rank 4");
        v62 = 0;
      }
    }

    else
    {
      v62 = 0;
      v70 = 0;
    }

    v90 = v62;
    if (v130[0] != v131)
    {
      free(v130[0]);
      v62 = v90;
    }

    if (v132[0] != v133)
    {
      free(v132[0]);
      v62 = v90;
    }

    if (v134[0] != v135)
    {
      free(v134[0]);
      v62 = v90;
    }

    if (v136[0] != v137)
    {
      free(v136[0]);
      v62 = v90;
    }

LABEL_115:
    v74 = v138;
    if (v138 == v140)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v100, &v141) & 1) == 0)
  {
    v62 = mlir::UnrankedTensorType::get(v53);
    v70 = 1;
    goto LABEL_117;
  }

  v54 = v142;
  if (!v142)
  {
    goto LABEL_75;
  }

  v55 = v141;
  v56 = (v142 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v57 = v141;
  if (v56 >= 3)
  {
    v58 = v56 + 1;
    v57 = &v141->i64[v58 & 0x3FFFFFFFFFFFFFFCLL];
    v59 = v141 + 1;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v61 = v58 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v65 = vmovn_s64(vceqq_s64(v59[-1], v60));
      if (v65.i8[0])
      {
        v59[-1].i64[0] = 0x8000000000000000;
        if ((v65.i8[4] & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else if ((v65.i8[4] & 1) == 0)
      {
LABEL_58:
        v66 = vmovn_s64(vceqq_s64(*v59, v60));
        if (v66.i8[0])
        {
          goto LABEL_59;
        }

        goto LABEL_63;
      }

      v59[-1].i64[1] = 0x8000000000000000;
      v66 = vmovn_s64(vceqq_s64(*v59, v60));
      if (v66.i8[0])
      {
LABEL_59:
        v59->i64[0] = 0x8000000000000000;
        if (v66.i8[4])
        {
          goto LABEL_64;
        }

        goto LABEL_55;
      }

LABEL_63:
      if (v66.i8[4])
      {
LABEL_64:
        v59->i64[1] = 0x8000000000000000;
      }

LABEL_55:
      v59 += 2;
      v61 -= 4;
      if (!v61)
      {
        if (v58 == (v58 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_75;
        }

        break;
      }
    }
  }

  v75 = &v55->i8[8 * v54];
  do
  {
    if (*v57 == -1)
    {
      *v57 = 0x8000000000000000;
    }

    ++v57;
  }

  while (v57 != v75);
LABEL_75:
  v72 = mlir::ShapedType::getShape(&v108);
  v127 = v129;
  v128 = 0x400000000;
  if (v70)
  {
    v62 = mlir::RankedTensorType::get(v127, v128, v53, 0);
  }

  else
  {
    v62 = 0;
  }

  v74 = v127;
  if (v127 != v129)
  {
LABEL_116:
    v91 = v62;
    free(v74);
    v62 = v91;
  }

LABEL_117:
  if (v141 != v143)
  {
    v92 = v62;
    free(v141);
    v62 = v92;
  }

  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v63 = *(a11 + 8);
  if (v63 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v63) = v62;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::Conv2DDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v54 = a1[4];
  if (!v54)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v53 = a1[5];
  if (!v53)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            MEMORY[0x259C63150](v39, 0x1000C8077774924);
          }
        }

        while (v38 != v24);
        goto LABEL_87;
      }

LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v3 = a1[6];
  if (!v3)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v46 = *--v44;
          v45 = v46;
          *v44 = 0;
          if (v46)
          {
            MEMORY[0x259C63150](v45, 0x1000C8077774924);
          }
        }

        while (v44 != v24);
LABEL_87:
        v26 = v64;
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (a1[7])
  {
    v52 = a1[8];
    if (v52)
    {
      if (a1[9])
      {
        v55 = v3;
        Type = mlir::IntegerAttr::getType(&v55);
        if (mlir::Type::isUnsignedInteger(&Type, 64))
        {
          v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Type = mlir::TensorType::operator mlir::ShapedType(v49);
          v61 = v5;
          Shape = mlir::ShapedType::getShape(&Type);
          v59 = 4;
          if (v7 == 1 && *Shape == v59 && (v50 = v52, *&v58 = mlir::DenseElementsAttr::getType(&v50), *(&v58 + 1) = v8, ElementType = mlir::ShapedType::getElementType(&v58), mlir::Type::isUnsignedInteger(&ElementType, 64)))
          {
            v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Type = mlir::TensorType::operator mlir::ShapedType(v49);
            v61 = v10;
            v11 = mlir::ShapedType::getShape(&Type);
            v59 = 4;
            if (v12 == 1 && *v11 == v59 && (v50 = v54, *&v58 = mlir::DenseElementsAttr::getType(&v50), *(&v58 + 1) = v13, ElementType = mlir::ShapedType::getElementType(&v58), mlir::Type::isUnsignedInteger(&ElementType, 64)))
            {
              v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
              v56 = v14;
              v59 = mlir::ElementsAttr::getType(&v55);
              Type = mlir::TensorType::operator mlir::ShapedType(&v59);
              v61 = v15;
              v16 = mlir::ShapedType::getShape(&Type);
              v58 = xmmword_2573695A0;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::DenseElementsAttr::getType(&v50);
                v49[1] = v19;
                ElementType = mlir::ShapedType::getElementType(v49);
                if (mlir::Type::isUnsignedInteger(&ElementType, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d_data_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d_data_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d_data_gradient' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
    return v20;
  }

  v55 = "'mps.conv_2d_data_gradient' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2, &v55, &Type);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

uint64_t mlir::mps::Conv2DDataGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::Conv2DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v142[4] = *MEMORY[0x277D85DE8];
  v119 = a4;
  v120 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = *(a7 + 6);
  }

  else
  {
    v19 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v108 = a6;
  v109[0] = 0;
  v110 = 0;
  v111 = v16;
  v112 = v17;
  v113 = v18;
  v114 = v19;
  v115 = a9;
  v20 = a5;
  v116 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v108);
    if (v110 == 1)
    {
      v110 = 0;
    }

    mlir::OperationName::OperationName(v109, "mps.conv_2d_weights_gradient", 28, Context);
    v110 = 1;
    v20 = v120;
  }

  v117 = a4;
  v118 = a5;
  if (v20 < 3 || (v22 = mlir::UnknownLoc::get(this, a2), (mlir::mps::Conv2DWeightsGradientOpAdaptor::verify(&v108, v22) & 1) == 0))
  {
    v37 = mlir::Float32Type::get(this, a2);
LABEL_50:
    v60 = mlir::UnrankedTensorType::get(v37);
    goto LABEL_51;
  }

  v23 = mlir::ValueRange::dereference_iterator(&v119, 0);
  v24 = mlir::ValueRange::dereference_iterator(&v119, 1);
  v25 = mlir::ValueRange::dereference_iterator(&v119, 2);
  v98 = *(&v111 + 1);
  v99 = v25;
  v96 = *(&v112 + 1);
  v97 = v112;
  v93 = v113;
  v94 = v111;
  v95 = *(&v113 + 1);
  v92 = v114;
  v26 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v26)
  {
    goto LABEL_24;
  }

  v27 = v26->i64[0];
  {
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_24;
    }
  }

  else
  {
    mlir::mps::ConstantOp::verify();
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_24;
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
  if (v31 == &v29[2 * v30] || *v31 != v28)
  {
LABEL_24:
    v38 = 0;
    v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v39)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  v38 = v31[1];
  v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v39)
  {
    goto LABEL_39;
  }

LABEL_25:
  v40 = *v39;
  {
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_39;
    }
  }

  else
  {
    mlir::mps::ConstantOp::verify();
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_39;
    }
  }

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
  if (v44 != &v42[2 * v43] && *v44 == v41)
  {
    v50 = v44[1];
    goto LABEL_40;
  }

LABEL_39:
  v50 = 0;
LABEL_40:
  *&v107 = v26;
  *(&v107 + 1) = v38;
  v106[0] = v39;
  v106[1] = v50;
  v105 = v107;
  v140 = v26;
  v141 = v39;
  mlir::TypeRange::TypeRange(&v126, &v140, 2uLL);
  if (!v26 || !mlir::ShapedType::hasRank(&v105) || !v106[0] || (mlir::ShapedType::hasRank(v106) & 1) == 0)
  {
    v37 = v51;
    goto LABEL_50;
  }

  v140 = v142;
  v141 = 0x400000000;
  if (!v99)
  {
    v103 = v98;
    v104 = v95;
    v101 = v96;
    v102 = v97;
    v65 = v139;
    v137 = v139;
    memset(v139, 0, sizeof(v139));
    v138 = 0x400000004;
    if (v105)
    {
      Shape = mlir::ShapedType::getShape(&v105);
      if (v67 != 4)
      {
        v69 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Conv2DDataGradientOp input should be rank 4");
        v60 = 0;
LABEL_108:
        v73 = v137;
        goto LABEL_109;
      }

      v68 = Shape;
    }

    else
    {
      v68 = v139;
    }

    v135[0] = v136;
    v135[1] = 0x400000000;
    v133[0] = v134;
    v133[1] = 0x400000000;
    v131[0] = v132;
    v131[1] = 0x200000000;
    v129[0] = v130;
    v129[1] = 0x200000000;
    if (v94)
    {
      v70 = *(v94 + 8);
    }

    else
    {
      v70 = 1;
    }

    v75 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v104);
    v77 = v76;
    v78 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v103);
    v80 = v79;
    v81 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v102);
    if (mlir::mps::inferConv2DParams(a2, a3, v68, 4, v75, v77, v78, v80, v81, v82, v70, v135, v133, v131, v129))
    {
      if (v101)
      {
        UInt = mlir::IntegerAttr::getUInt(&v101);
      }

      else
      {
        UInt = 1;
      }

      if (v92)
      {
        v84 = *(v92 + 8);
      }

      else
      {
        v84 = 3;
      }

      if (v93)
      {
        v85 = *(v93 + 8);
      }

      else
      {
        v85 = 2;
      }

      v100[0] = mlir::ShapedType::getShape(v106);
      v100[1] = v86;
      if (v86 == 4)
      {
        mlir::mps::ShapeWithLayout::ShapeWithLayout(&v126, v100, v84);
        v123 = v125;
        v124 = 0x400000000;
        mlir::mps::ShapeWithLayout::ShapeWithLayout(v121, &v126);
        if (v121[0] != &v122)
        {
          free(v121[0]);
        }

        if (v69)
        {
          v60 = mlir::RankedTensorType::get(v123, v124, v51, 0);
        }

        else
        {
          v60 = 0;
        }

        v65 = v139;
        if (v123 != v125)
        {
          v90 = v60;
          free(v123);
          v60 = v90;
        }

        if (v126 != v128)
        {
          v91 = v60;
          free(v126);
          v60 = v91;
        }

        goto LABEL_100;
      }

      v69 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Conv2dGradient weights should be rank 4");
      v60 = 0;
    }

    else
    {
      v60 = 0;
      v69 = 0;
    }

    v65 = v139;
LABEL_100:
    v87 = v60;
    if (v129[0] != v130)
    {
      free(v129[0]);
      v60 = v87;
    }

    if (v131[0] != v132)
    {
      free(v131[0]);
      v60 = v87;
    }

    if (v133[0] != v134)
    {
      free(v133[0]);
      v60 = v87;
    }

    if (v135[0] != v136)
    {
      free(v135[0]);
      v60 = v87;
    }

    goto LABEL_108;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v99, &v140) & 1) == 0)
  {
    v60 = mlir::UnrankedTensorType::get(v51);
    v69 = 1;
    goto LABEL_111;
  }

  v52 = v141;
  if (!v141)
  {
    goto LABEL_73;
  }

  v53 = v140;
  v54 = (v141 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v55 = v140;
  if (v54 >= 3)
  {
    v56 = v54 + 1;
    v55 = &v140->i64[v56 & 0x3FFFFFFFFFFFFFFCLL];
    v57 = v140 + 1;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v63 = vmovn_s64(vceqq_s64(v57[-1], v58));
      if (v63.i8[0])
      {
        v57[-1].i64[0] = 0x8000000000000000;
        if ((v63.i8[4] & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else if ((v63.i8[4] & 1) == 0)
      {
LABEL_56:
        v64 = vmovn_s64(vceqq_s64(*v57, v58));
        if (v64.i8[0])
        {
          goto LABEL_57;
        }

        goto LABEL_61;
      }

      v57[-1].i64[1] = 0x8000000000000000;
      v64 = vmovn_s64(vceqq_s64(*v57, v58));
      if (v64.i8[0])
      {
LABEL_57:
        v57->i64[0] = 0x8000000000000000;
        if (v64.i8[4])
        {
          goto LABEL_62;
        }

        goto LABEL_53;
      }

LABEL_61:
      if (v64.i8[4])
      {
LABEL_62:
        v57->i64[1] = 0x8000000000000000;
      }

LABEL_53:
      v57 += 2;
      v59 -= 4;
      if (!v59)
      {
        if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_73;
        }

        break;
      }
    }
  }

  v74 = &v53->i8[8 * v52];
  do
  {
    if (*v55 == -1)
    {
      *v55 = 0x8000000000000000;
    }

    ++v55;
  }

  while (v55 != v74);
LABEL_73:
  v71 = mlir::ShapedType::getShape(&v107);
  v65 = v128;
  v126 = v128;
  v127 = 0x400000000;
  if (v69)
  {
    v60 = mlir::RankedTensorType::get(v126, v127, v51, 0);
  }

  else
  {
    v60 = 0;
  }

  v73 = v126;
LABEL_109:
  if (v73 != v65)
  {
    v88 = v60;
    free(v73);
    v60 = v88;
  }

LABEL_111:
  if (v140 != v142)
  {
    v89 = v60;
    free(v140);
    v60 = v89;
  }

  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v61 = *(a11 + 8);
  if (v61 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v61) = v60;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::Conv2DWeightsGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v54 = a1[4];
  if (!v54)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v24);
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v53 = a1[5];
  if (!v53)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            MEMORY[0x259C63150](v39, 0x1000C8077774924);
          }
        }

        while (v38 != v24);
        goto LABEL_87;
      }

LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v3 = a1[6];
  if (!v3)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 != v64)
      {
        do
        {
          v46 = *--v44;
          v45 = v46;
          *v44 = 0;
          if (v46)
          {
            MEMORY[0x259C63150](v45, 0x1000C8077774924);
          }
        }

        while (v44 != v24);
LABEL_87:
        v26 = v64;
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (a1[7])
  {
    v52 = a1[8];
    if (v52)
    {
      if (a1[9])
      {
        v55 = v3;
        Type = mlir::IntegerAttr::getType(&v55);
        if (mlir::Type::isUnsignedInteger(&Type, 64))
        {
          v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Type = mlir::TensorType::operator mlir::ShapedType(v49);
          v61 = v5;
          Shape = mlir::ShapedType::getShape(&Type);
          v59 = 4;
          if (v7 == 1 && *Shape == v59 && (v50 = v52, *&v58 = mlir::DenseElementsAttr::getType(&v50), *(&v58 + 1) = v8, ElementType = mlir::ShapedType::getElementType(&v58), mlir::Type::isUnsignedInteger(&ElementType, 64)))
          {
            v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Type = mlir::TensorType::operator mlir::ShapedType(v49);
            v61 = v10;
            v11 = mlir::ShapedType::getShape(&Type);
            v59 = 4;
            if (v12 == 1 && *v11 == v59 && (v50 = v54, *&v58 = mlir::DenseElementsAttr::getType(&v50), *(&v58 + 1) = v13, ElementType = mlir::ShapedType::getElementType(&v58), mlir::Type::isUnsignedInteger(&ElementType, 64)))
            {
              v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
              v56 = v14;
              v59 = mlir::ElementsAttr::getType(&v55);
              Type = mlir::TensorType::operator mlir::ShapedType(&v59);
              v61 = v15;
              v16 = mlir::ShapedType::getShape(&Type);
              v58 = xmmword_2573695A0;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::DenseElementsAttr::getType(&v50);
                v49[1] = v19;
                ElementType = mlir::ShapedType::getElementType(v49);
                if (mlir::Type::isUnsignedInteger(&ElementType, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d_weights_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d_weights_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d_weights_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d_weights_gradient' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2, &v55, &Type);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
    return v20;
  }

  v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2, &v55, &Type);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

uint64_t mlir::mps::Conv2DWeightsGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

void mlir::mps::getSpatialPaddingValues(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x500000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t llvm::SmallVector<long long,5u>::SmallVector(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x500000000;
  if (((8 * a3) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  if (a3)
  {
    memcpy(*a1, a2, 8 * a3);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + v3;
  return a1;
}

double mlir::mps::getSpatialValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = a3 - 7;
  v5 = a1 + 8 * a2;
  v6 = *(v5 + qword_2573889C8[v4]);
  v7 = *(v5 + qword_2573889E8[v4]);
  v8 = *(v5 + qword_257388A08[v4]);
  a4[2] = v6;
  *a4 = a4 + 2;
  a4[3] = v7;
  a4[4] = v8;
  *&result = 0x300000003;
  a4[1] = 0x300000003;
  return result;
}

void mlir::mps::computeSpatialPaddings(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X4>, uint64_t *a5@<X6>, uint64_t a6@<X8>, void *__src, unint64_t a8, int a9)
{
  if (a9 > 1)
  {
    v16 = (a6 + 16);
    *a6 = a6 + 16;
    *(a6 + 12) = 6;
    if (a8 >= 7)
    {
      *(a6 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a8)
    {
      bzero(v16, 8 * a8);
    }

    *(a6 + 8) = a8;
    if (a2)
    {
      v17 = 8 * a2;
      for (i = a1; *i; ++i)
      {
        v17 -= 8;
        if (!v17)
        {
          v19 = v16 + 1;
          do
          {
            v21 = *a3++;
            v20 = v21;
            v22 = *a5++;
            v23 = (v20 - 1) * v22;
            v25 = *a1++;
            v24 = v25;
            v27 = *a4++;
            v26 = v27;
            v28 = v24 % v27;
            if (!v28)
            {
              v28 = v26;
            }

            v29 = (v23 - v28 + 1) & ~((v23 - v28 + 1) >> 63);
            v30 = v29 >> 1;
            v31 = v29 - (v29 >> 1);
            *(v19 - 1) = v30;
            *v19 = v31;
            if (a9 == 4)
            {
              *(v19 - 1) = v31;
              *v19 = v30;
            }

            v19 += 2;
            --a2;
          }

          while (a2);
          return;
        }
      }
    }
  }

  else
  {
    v10 = a6 + 16;
    if (a9)
    {
      *a6 = v10;
      *(a6 + 12) = 6;
      if (a8 >= 7)
      {
        *(a6 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (a8)
      {
        bzero((a6 + 16), 8 * a8);
      }

      *(a6 + 8) = a8;
    }

    else
    {
      *a6 = v10;
      *(a6 + 8) = 0x600000000;
      if (((8 * a8) >> 3) >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = 0;
      if (a8)
      {
        memcpy(*a6, __src, 8 * a8);
        v32 = *(a6 + 8);
      }

      *(a6 + 8) = v32 + a8;
    }
  }
}

void mlir::mps::computeConvResultSpatialShape(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X4>, void *a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v7 = a2;
  *a6 = a6 + 16;
  *(a6 + 8) = 0x300000000;
  if (a2)
  {
    if (a2 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(*a6, 8 * a2);
    *(a6 + 8) = v7;
    v13 = *a6;
    v14 = (a7 + 8);
    do
    {
      v16 = *a3++;
      v15 = v16;
      v18 = *a1++;
      v17 = v18;
      v19 = v18 == 0x8000000000000000 || v15 == 0x8000000000000000;
      v20 = 0x8000000000000000;
      if (!v19)
      {
        v20 = (*(v14 - 1) + v17 + *v14 + *a4 + ~(*a5 * (v15 - 1))) / *a4;
      }

      *v13++ = v20;
      v14 += 2;
      ++a5;
      ++a4;
      --v7;
    }

    while (v7);
  }
}

uint64_t mlir::mps::getOutputChannel(uint64_t a1, uint64_t a2, int a3)
{
  v3 = -40;
  if (a3 == 10)
  {
    v3 = -8;
  }

  return *(a1 + 8 * a2 + v3);
}

uint64_t mlir::mps::getInputChannel(uint64_t a1, uint64_t a2, int a3)
{
  v3 = -32;
  if (a3 == 10)
  {
    v3 = -16;
  }

  return *(a1 + 8 * a2 + v3);
}

void *mlir::mps::convertNCDHWShapeToLayout@<X0>(void *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 == 7)
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x500000000;
    if (((8 * a2) >> 3) >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = 0;
    v9 = 8 * a2;
    if (a2)
    {
      result = memcpy(*a4, result, v9);
      v8 = *(a4 + 8);
    }

    *(a4 + 8) = v8 + (v9 >> 3);
  }

  else
  {
    v5 = result[4];
    v6 = result[1];
    v7 = *(result + 1);
    *(a4 + 16) = *result;
    *a4 = a4 + 16;
    *(a4 + 24) = v7;
    *(a4 + 40) = v5;
    *(a4 + 48) = v6;
    *(a4 + 8) = 0x500000005;
  }

  return result;
}

uint64_t mlir::mps::Conv3DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v100 = *MEMORY[0x277D85DE8];
  v98 = a4;
  v99 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v87 = a6;
  v88[0] = 0;
  v89 = 0;
  v90 = v14;
  v91 = v15;
  v92 = v16;
  v93 = v17;
  v94 = a9;
  v18 = a5;
  v95 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v87);
    if (v89 == 1)
    {
      v89 = 0;
    }

    mlir::OperationName::OperationName(v88, "mps.conv_3d", 11, Context);
    v89 = 1;
    v18 = v99;
  }

  v96 = a4;
  v97 = a5;
  if (v18 >= 2 && (v20 = mlir::UnknownLoc::get(this, a2), (mlir::mps::Conv3DOpAdaptor::verify(&v87, v20) & 1) != 0))
  {
    v21 = mlir::ValueRange::dereference_iterator(&v98, 0);
    v22 = mlir::ValueRange::dereference_iterator(&v98, 1);
    v23 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
    v65[0] = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
    v65[1] = v23;
    mlir::TypeRange::TypeRange(&v67, v65, 2uLL);
    v64[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
    v64[1] = v25;
    v63[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
    v63[1] = v26;
    if (v64[0])
    {
      if (mlir::ShapedType::hasRank(v64))
      {
        mlir::ShapedType::getShape(v64);
        if (v27 >= 5)
        {
          if (v63[0])
          {
            if (mlir::ShapedType::hasRank(v63))
            {
              mlir::ShapedType::getShape(v63);
              if (v28 == 5)
              {
                Shape = mlir::ShapedType::getShape(v64);
                v30 = *(v90 + 8) - 7;
                v32 = Shape + 8 * v31;
                v33 = *(v32 + qword_2573889C8[v30]);
                v34 = *(v32 + qword_2573889E8[v30]);
                v35 = *(v32 + qword_257388A08[v30]);
                v84[3] = v86;
                v86[0] = v33;
                v86[1] = v34;
                v86[2] = v35;
                *v85 = 0x300000003;
                v36 = mlir::ShapedType::getShape(v63);
                v37 = *(v93 + 8) - 7;
                v39 = v36 + 8 * v38;
                v40 = *(v39 + qword_2573889C8[v37]);
                v41 = *(v39 + qword_2573889E8[v37]);
                v42 = *(v39 + qword_257388A08[v37]);
                v82 = v84;
                v84[0] = v40;
                v84[1] = v41;
                v84[2] = v42;
                *v83 = 0x300000003;
                v79 = &v81;
                v80 = 0x500000000;
                v67 = *(&v92 + 1);
                v43 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v67);
                mlir::getIntValues<long long>(v43, v44, &v79, 1);
                v45 = *(v90 + 8) - 7;
                v46 = v79 + 8 * v80;
                v47 = *&v46[qword_2573889C8[v45]];
                v48 = *&v46[qword_2573889E8[v45]];
                v49 = *&v46[qword_257388A08[v45]];
                v76 = v78;
                v78[0] = v47;
                v78[1] = v48;
                v78[2] = v49;
                *v77 = 0x300000003;
                v73 = &v75;
                v74 = 0x500000000;
                v67 = *(&v90 + 1);
                v50 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v67);
                mlir::getIntValues<long long>(v50, v51, &v73, 1);
                v52 = *(v90 + 8) - 7;
                v53 = v73 + 8 * v74;
                v54 = *&v53[qword_2573889C8[v52]];
                v55 = *&v53[qword_2573889E8[v52]];
                v56 = *&v53[qword_257388A08[v52]];
                v70 = v72;
                v72[0] = v54;
                v72[1] = v55;
                v72[2] = v56;
                *v71 = 0x300000003;
                v67 = &v69;
                v68 = 0xA00000000;
                v65[0] = v91;
                v57 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v65);
                mlir::getIntValues<long long>(v57, v58, &v67, 1);
                mlir::mps::getSpatialPaddingValues(&v66);
              }
            }
          }
        }
      }
    }

    v60 = mlir::UnrankedTensorType::get(v24);
    v61 = *(a11 + 8);
    if (v61 >= *(a11 + 12))
    {
LABEL_20:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v59 = mlir::Float32Type::get(this, a2);
    v60 = mlir::UnrankedTensorType::get(v59);
    v61 = *(a11 + 8);
    if (v61 >= *(a11 + 12))
    {
      goto LABEL_20;
    }
  }

  *(*a11 + 8 * v61) = v60;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::Conv3DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (!v3)
  {
    v58 = "'mps.conv_3d' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 != v67)
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
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v57 = a1[4];
  if (!v57)
  {
    v58 = "'mps.conv_3d' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v34 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v56 = a1[5];
  if (!v56)
  {
    v58 = "'mps.conv_3d' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v40 != v26);
        goto LABEL_91;
      }

LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v4 = a1[6];
  if (!v4)
  {
    v58 = "'mps.conv_3d' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v46 != v26);
LABEL_91:
        v28 = v67;
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  if (a1[7])
  {
    v55 = a1[8];
    if (v55)
    {
      v5 = a1[9];
      if (v5)
      {
        v58 = v4;
        Type = mlir::IntegerAttr::getType(&v58);
        if (mlir::Type::isUnsignedInteger(&Type, 64))
        {
          v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Type = mlir::TensorType::operator mlir::ShapedType(v51);
          v64 = v7;
          Shape = mlir::ShapedType::getShape(&Type);
          v62 = 5;
          if (v9 == 1 && *Shape == v62 && (ElementType = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v52 = v55, *&v61 = mlir::DenseElementsAttr::getType(&v52), *(&v61 + 1) = v10, v53 = mlir::ShapedType::getElementType(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Type = mlir::TensorType::operator mlir::ShapedType(v51);
            v64 = v12;
            v13 = mlir::ShapedType::getShape(&Type);
            v62 = 5;
            if (v14 == 1 && *v13 == v62 && (ElementType = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v52 = v57, *&v61 = mlir::DenseElementsAttr::getType(&v52), *(&v61 + 1) = v15, v53 = mlir::ShapedType::getElementType(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v56);
              v59 = v16;
              v62 = mlir::ElementsAttr::getType(&v58);
              Type = mlir::TensorType::operator mlir::ShapedType(&v62);
              v64 = v17;
              v18 = mlir::ShapedType::getShape(&Type);
              v61 = xmmword_25736B760;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::DenseElementsAttr::getType(&v53), v51[1] = v21, ElementType = mlir::ShapedType::getElementType(v51), mlir::Type::isUnsignedInteger(&ElementType, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
    return v22;
  }

  v58 = "'mps.conv_3d' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2, &v58, &Type);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}

void *llvm::SmallVector<long long,5u>::SmallVector(void *result, uint64_t a2)
{
  *result = result + 2;
  result[1] = 0x500000000;
  if (result != a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      if (v2 >= 6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v3 = result;
      memcpy(result + 2, *a2, 8 * *(a2 + 8));
      result = v3;
      *(v3 + 2) = v2;
    }
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<long long>::append(unsigned int *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  v4 = result[2];
  if (v4 + v3 > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3)
  {
    result = memcpy((*result + 8 * v4), *a2, 8 * v3);
    LODWORD(v4) = v2[2];
  }

  v2[2] = v4 + v3;
  return result;
}

uint64_t mlir::mps::Conv3DOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EF30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EF30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::verifyConv3DPadding(uint64_t **a1, int a2, int a3)
{
  if (a2)
  {
    return a2 != 3;
  }

  v4 = *a1;
  v5 = **a1;
  if (a3 == 7)
  {
    if (v5)
    {
      return 0;
    }

    else if (v4[1])
    {
      return 0;
    }

    else
    {
      return !v4[2] && v4[3] == 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  else if (v4[1])
  {
    return 0;
  }

  else
  {
    return !v4[8] && v4[9] == 0;
  }
}

BOOL mlir::mps::verifyConv3DSpatialVectorWithLayout(void **a1, int a2)
{
  if (**a1 != 1)
  {
    return 0;
  }

  v2 = 4;
  if (a2 == 7)
  {
    v2 = 1;
  }

  return (*a1)[v2] == 1;
}

BOOL mlir::mps::verifyConvolutionInputChannels(mlir::Operation *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v35 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a3 && a6)
  {
    v10 = -8;
    if (a4 == 7)
    {
      v10 = -32;
    }

    v11 = *(a2 + 8 * a3 + v10);
    if (v11 != 0x8000000000000000)
    {
      v12 = 8;
      if (a7 == 10)
      {
        v12 = 24;
      }

      v13 = *(a5 + v12);
      if (v13 != 0x8000000000000000 && v13 * a8 != v11)
      {
        v24 = "failed: inputChannels must be equal to groups * inputWeightChannels";
        v25 = 259;
        mlir::Operation::emitOpError(v26, a1, &v24);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
        v15 = result;
        if (v26[0])
        {
          mlir::InFlightDiagnostic::report(v26);
          result = v15;
        }

        if (v34 == 1)
        {
          if (v33 != &v34)
          {
            free(v33);
            result = v15;
          }

          v16 = __p;
          if (__p)
          {
            v17 = v32;
            v18 = __p;
            if (v32 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v32 = v16;
            operator delete(v18);
            result = v15;
          }

          v19 = v29;
          if (v29)
          {
            v20 = v30;
            v21 = v29;
            if (v30 != v29)
            {
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
              v21 = v29;
            }

            v30 = v19;
            operator delete(v21);
            result = v15;
          }

          if (v27 != &v28)
          {
            free(v27);
            return v15;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::verifyConvolutionOutputChannels(mlir::Operation *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  v40 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a3)
  {
    if (a6)
    {
      v10 = *(a5 + 32 * (a7 == 10));
      if (v10 != 0x8000000000000000)
      {
        v11 = -8;
        if (a4 == 7)
        {
          v11 = -32;
        }

        v12 = *(a2 + 8 * a3 + v11);
        if (v12 == 0x8000000000000000 || v10 == v12)
        {
          if (v10 % a8)
          {
            v29[0] = "failed: weights output channels needs to be divisible by groups";
            v30 = 259;
            mlir::Operation::emitOpError(v31, a1, v29);
            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
            v14 = result;
            if (v31[0])
            {
              mlir::InFlightDiagnostic::report(v31);
              result = v14;
            }

            if (v39 == 1)
            {
              if (v38 != &v39)
              {
                free(v38);
                result = v14;
              }

              v15 = __p;
              if (__p)
              {
                v16 = v37;
                v17 = __p;
                if (v37 != __p)
                {
                  do
                  {
                    v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
                  }

                  while (v16 != v15);
                  v17 = __p;
                }

                v37 = v15;
                operator delete(v17);
                result = v14;
              }

              v18 = v34;
              if (!v34)
              {
                goto LABEL_46;
              }

              v19 = v35;
              v20 = v34;
              if (v35 == v34)
              {
                goto LABEL_45;
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
              goto LABEL_44;
            }
          }
        }

        else
        {
          v29[0] = "failed: weights output channels are inconsistent with those of the operands or result";
          v30 = 259;
          mlir::Operation::emitOpError(v31, a1, v29);
          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
          v14 = result;
          if (v31[0])
          {
            mlir::InFlightDiagnostic::report(v31);
            result = v14;
          }

          if (v39 == 1)
          {
            if (v38 != &v39)
            {
              free(v38);
              result = v14;
            }

            v23 = __p;
            if (__p)
            {
              v24 = v37;
              v25 = __p;
              if (v37 != __p)
              {
                do
                {
                  v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
                }

                while (v24 != v23);
                v25 = __p;
              }

              v37 = v23;
              operator delete(v25);
              result = v14;
            }

            v18 = v34;
            if (!v34)
            {
              goto LABEL_46;
            }

            v26 = v35;
            v20 = v34;
            if (v35 == v34)
            {
LABEL_45:
              v35 = v18;
              operator delete(v20);
              result = v14;
LABEL_46:
              if (v32 != &v33)
              {
                free(v32);
                return v14;
              }

              return result;
            }

            do
            {
              v28 = *--v26;
              v27 = v28;
              *v26 = 0;
              if (v28)
              {
                MEMORY[0x259C63150](v27, 0x1000C8077774924);
              }
            }

            while (v26 != v18);
LABEL_44:
            v20 = v34;
            goto LABEL_45;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::Conv3DOp::verify(mlir::Operation **this)
{
  v123[6] = *MEMORY[0x277D85DE8];
  v122[0] = v123;
  v122[1] = 0x600000000;
  v112 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
  mlir::getIntValues<long long>(v2, v3, v122, 1);
  v4 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v5 = *(v4[12] + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v122[0];
    if (*(v4[8] + 8) == 7)
    {
      if (!v6 && !*(v122[0] + 1) && !*(v122[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v122[0] + 1) && !*(v122[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v122[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v110[0] = v111;
      v110[1] = 0x600000000;
      v112 = v4[13];
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      mlir::getIntValues<long long>(v17, v18, v110, 1);
      if (*v110[0] != 1)
      {
        goto LABEL_46;
      }

      v19 = *this + 64;
      v20 = (*(*this + 11) >> 23) & 1;
      v21 = 32;
      if (*(*(v19 + 16 * v20) + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v110[0] + v21) != 1)
      {
LABEL_46:
        v108[0] = "failed: strides incompatible with given tensor data layout.";
        v109[8] = 259;
        mlir::OpState::emitOpError(this, v108, &v112);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
        if (v112)
        {
          mlir::InFlightDiagnostic::report(&v112);
        }

        if (v121 != 1)
        {
          goto LABEL_86;
        }

        if (v120 != &v121)
        {
          free(v120);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v119;
          v38 = __p;
          if (v119 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v119 = v36;
          operator delete(v38);
        }

        v39 = v116;
        if (v116)
        {
          v40 = v117;
          v41 = v116;
          if (v117 != v116)
          {
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
            v41 = v116;
          }

          v117 = v39;
          operator delete(v41);
        }

        v53 = v114;
        if (v114 == v115)
        {
LABEL_86:
          v44 = v110[0];
          if (v110[0] == v111)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

LABEL_85:
        free(v53);
        goto LABEL_86;
      }

      v108[0] = v109;
      v108[1] = 0x600000000;
      v112 = *(v19 + 16 * v20 + 8);
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      mlir::getIntValues<long long>(v22, v23, v108, 1);
      if (*v108[0] != 1)
      {
        goto LABEL_66;
      }

      v24 = 4;
      if (*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) == 7)
      {
        v24 = 1;
      }

      if (v108[0][v24] != 1)
      {
LABEL_66:
        v105[0] = "failed: dilation values incompatible with given tensor layout.";
        v106 = 259;
        mlir::OpState::emitOpError(this, v105, &v112);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
        if (v112)
        {
          mlir::InFlightDiagnostic::report(&v112);
        }

        if (v121 == 1)
        {
          if (v120 != &v121)
          {
            free(v120);
          }

          v45 = __p;
          if (__p)
          {
            v46 = v119;
            v47 = __p;
            if (v119 != __p)
            {
              do
              {
                v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
              }

              while (v46 != v45);
              v47 = __p;
            }

            v119 = v45;
            operator delete(v47);
          }

          v48 = v116;
          if (v116)
          {
            v49 = v117;
            v50 = v116;
            if (v117 != v116)
            {
              do
              {
                v52 = *--v49;
                v51 = v52;
                *v49 = 0;
                if (v52)
                {
                  MEMORY[0x259C63150](v51, 0x1000C8077774924);
                }
              }

              while (v49 != v48);
              v50 = v116;
            }

            v117 = v48;
            operator delete(v50);
          }

          if (v114 != v115)
          {
            free(v114);
          }
        }

LABEL_142:
        v53 = v108[0];
        if (v108[0] == v109)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      v25 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v25)
      {
        goto LABEL_99;
      }

      v26 = *v25;
      {
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = v26[1];
        v29 = *(v26 + 4);
        if (v29)
        {
          goto LABEL_40;
        }
      }

      else
      {
        mlir::mps::ConstantOp::verify();
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = v26[1];
        v29 = *(v26 + 4);
        if (v29)
        {
LABEL_40:
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
LABEL_97:
          if (v30 != &v28[2 * v29] && *v30 == v27)
          {
            v55 = v30[1];
LABEL_100:
            v105[0] = v25;
            v105[1] = v55;
            v56 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v56)
            {
              goto LABEL_114;
            }

            v57 = *v56;
            {
              v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v59 = *(v57 + 8);
              v60 = *(v57 + 16);
              if (v60)
              {
                goto LABEL_103;
              }
            }

            else
            {
              mlir::mps::ConstantOp::verify();
              v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v59 = *(v57 + 8);
              v60 = *(v57 + 16);
              if (v60)
              {
LABEL_103:
                v61 = v59;
                v62 = v60;
                do
                {
                  v63 = v62 >> 1;
                  v64 = &v61[2 * (v62 >> 1)];
                  v66 = *v64;
                  v65 = v64 + 2;
                  v62 += ~(v62 >> 1);
                  if (v66 < v58)
                  {
                    v61 = v65;
                  }

                  else
                  {
                    v62 = v63;
                  }
                }

                while (v62);
LABEL_112:
                if (v61 != &v59[2 * v60] && *v61 == v58)
                {
                  v67 = v61[1];
LABEL_115:
                  v104[0] = v56;
                  v104[1] = v67;
                  v102 = *this;
                  Shape = mlir::ShapedType::getShape(v105);
                  v70 = v69;
                  v71 = *(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8);
                  v72 = mlir::ShapedType::getShape(v104);
                  v74 = v73;
                  v75 = *this + 16 * ((*(*this + 11) >> 23) & 1);
                  v76 = *(*(v75 + 112) + 8);
                  v103[0] = *(v75 + 88);
                  mlir::IntegerAttr::getValue(v103, &v112);
                  if (v113 > 0x40)
                  {
                    v77 = *v112;
                    MEMORY[0x259C63150](v112);
                  }

                  else
                  {
                    v77 = v112;
                  }

                  if (!mlir::mps::verifyConvolutionInputChannels(v102, Shape, v70, v71, v72, v74, v76, v77))
                  {
                    v8 = 0;
                    goto LABEL_142;
                  }

                  if (*(*this + 9))
                  {
                    v78 = *this - 16;
                  }

                  else
                  {
                    v78 = 0;
                  }

                  v79 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v78, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v79)
                  {
                    goto LABEL_137;
                  }

                  v80 = *v79;
                  {
                    v81 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v82 = *(v80 + 8);
                    v83 = *(v80 + 16);
                    if (v83)
                    {
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    mlir::mps::ConstantOp::verify();
                    v81 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v82 = *(v80 + 8);
                    v83 = *(v80 + 16);
                    if (v83)
                    {
LABEL_125:
                      v84 = v82;
                      v85 = v83;
                      do
                      {
                        v86 = v85 >> 1;
                        v87 = &v84[2 * (v85 >> 1)];
                        v89 = *v87;
                        v88 = v87 + 2;
                        v85 += ~(v85 >> 1);
                        if (v89 < v81)
                        {
                          v84 = v88;
                        }

                        else
                        {
                          v85 = v86;
                        }
                      }

                      while (v85);
LABEL_135:
                      if (v84 != &v82[2 * v83] && *v84 == v81)
                      {
                        v90 = v84[1];
                        goto LABEL_138;
                      }

LABEL_137:
                      v90 = 0;
LABEL_138:
                      v103[0] = v79;
                      v103[1] = v90;
                      v91 = *this;
                      v92 = mlir::ShapedType::getShape(v103);
                      v94 = v93;
                      v95 = *(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8);
                      v96 = mlir::ShapedType::getShape(v104);
                      v98 = v97;
                      v99 = *this + 16 * ((*(*this + 11) >> 23) & 1);
                      v100 = *(*(v99 + 112) + 8);
                      v107 = *(v99 + 88);
                      mlir::IntegerAttr::getValue(&v107, &v112);
                      if (v113 > 0x40)
                      {
                        v101 = *v112;
                        MEMORY[0x259C63150]();
                      }

                      else
                      {
                        v101 = v112;
                      }

                      v8 = mlir::mps::verifyConvolutionOutputChannels(v91, v92, v94, v95, v96, v98, v100, v101);
                      goto LABEL_142;
                    }
                  }

                  v83 = 0;
                  v84 = v82;
                  goto LABEL_135;
                }

LABEL_114:
                v67 = 0;
                goto LABEL_115;
              }
            }

            v60 = 0;
            v61 = v59;
            goto LABEL_112;
          }

LABEL_99:
          v55 = 0;
          goto LABEL_100;
        }
      }

      v29 = 0;
      v30 = v28;
      goto LABEL_97;
    }
  }

LABEL_13:
  v110[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v111[8] = 259;
  mlir::OpState::emitOpError(this, v110, &v112);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
  if (v112)
  {
    mlir::InFlightDiagnostic::report(&v112);
  }

  if (v121 == 1)
  {
    if (v120 != &v121)
    {
      free(v120);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v119;
      v11 = __p;
      if (v119 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v119 = v9;
      operator delete(v11);
    }

    v12 = v116;
    if (v116)
    {
      v13 = v117;
      v14 = v116;
      if (v117 != v116)
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
        v14 = v116;
      }

      v117 = v12;
      operator delete(v14);
    }

    v44 = v114;
    if (v114 != v115)
    {
LABEL_87:
      free(v44);
    }
  }

LABEL_88:
  if (v122[0] != v123)
  {
    free(v122[0]);
  }

  return v8;
}

uint64_t *mlir::mps::Conv3DOp::getGroups(mlir::mps::Conv3DOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::get5DElementsAttrFrom3DSpatialValues(uint64_t **a1, uint64_t *a2, uint64_t a3, int a4)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  if (a4 == 7)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2[2];
  }

  if (a4 != 7)
  {
    v4 = a2[1];
    v5 = *a2;
  }

  v16[0] = 1;
  v16[1] = v7;
  if (a4 != 7)
  {
    v6 = 1;
  }

  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v14 = v16;
  v15 = 0x500000005;
  v13 = 5;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v12 = mlir::RankedTensorType::get(&v13, 1, IntegerType, 0);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v12);
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v9);
  if (v14 != v16)
  {
    v11 = result;
    free(v14);
    return v11;
  }

  return result;
}

void mlir::mps::get5DElementsAttrFrom3DPaddingValues()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v0 = v2;
  v1 = 0x500000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void mlir::mps::computeConv3DTransposeResultSpatialShape(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X4>, void *a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v7 = a2;
  *a6 = a6 + 16;
  *(a6 + 8) = 0x300000000;
  if (a2)
  {
    if (a2 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(*a6, 8 * a2);
    *(a6 + 8) = v7;
    v13 = *a6;
    v14 = (a7 + 8);
    do
    {
      v16 = *a3++;
      v15 = v16;
      v18 = *a1++;
      v17 = v18;
      v19 = v18 == 0x8000000000000000 || v15 == 0x8000000000000000;
      v20 = 0x8000000000000000;
      if (!v19)
      {
        v20 = *a4 * (v17 - 1) + *a5 * (v15 - 1) - (*(v14 - 1) + *v14) + 1;
      }

      *v13++ = v20;
      v14 += 2;
      ++a5;
      ++a4;
      --v7;
    }

    while (v7);
  }
}

uint64_t mlir::mps::Conv3DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v116 = *MEMORY[0x277D85DE8];
  v114 = a4;
  v115 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v103 = a6;
  v104[0] = 0;
  v105 = 0;
  v106 = v14;
  v107 = v15;
  v108 = v16;
  v109 = v17;
  v110 = a9;
  v18 = a5;
  v111 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v103);
    if (v105 == 1)
    {
      v105 = 0;
    }

    mlir::OperationName::OperationName(v104, "mps.conv_3d_data_gradient", 25, Context);
    v105 = 1;
    v18 = v115;
  }

  v112 = a4;
  v113 = a5;
  if (v18 >= 2 && (v20 = mlir::UnknownLoc::get(this, a2), (mlir::mps::Conv3DDataGradientOpAdaptor::verify(&v103, v20) & 1) != 0))
  {
    v21 = mlir::ValueRange::dereference_iterator(&v114, 0);
    v22 = mlir::ValueRange::dereference_iterator(&v114, 1);
    v23 = 0;
    if (v115 >= 3)
    {
      v23 = mlir::ValueRange::dereference_iterator(&v114, 2);
    }

    v24 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
    v78[0] = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
    v78[1] = v24;
    mlir::TypeRange::TypeRange(&v80, v78, 2uLL);
    v100 = v102;
    v101 = 0x500000000;
    if (v23 && (mlir::matchConstantWithIntVector<long long>(v23, &v100) & 1) != 0)
    {
      v26 = v100;
      v27 = v101;
      if (!v101)
      {
        goto LABEL_41;
      }

      v28 = (v101 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v29 = v100;
      if (v28 >= 3)
      {
        v30 = v28 + 1;
        v29 = v100 + 8 * (v30 & 0x3FFFFFFFFFFFFFFCLL);
        v31 = (v100 + 16);
        v32.i64[0] = -1;
        v32.i64[1] = -1;
        v33 = v30 & 0x3FFFFFFFFFFFFFFCLL;
        while (1)
        {
          v34 = vmovn_s64(vceqq_s64(v31[-1], v32));
          if (v34.i8[0])
          {
            v31[-1].i64[0] = 0x8000000000000000;
            if ((v34.i8[4] & 1) == 0)
            {
LABEL_20:
              v35 = vmovn_s64(vceqq_s64(*v31, v32));
              if ((v35.i8[0] & 1) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_25;
            }
          }

          else if ((v34.i8[4] & 1) == 0)
          {
            goto LABEL_20;
          }

          v31[-1].i64[1] = 0x8000000000000000;
          v35 = vmovn_s64(vceqq_s64(*v31, v32));
          if ((v35.i8[0] & 1) == 0)
          {
LABEL_21:
            if (v35.i8[4])
            {
              goto LABEL_26;
            }

            goto LABEL_17;
          }

LABEL_25:
          v31->i64[0] = 0x8000000000000000;
          if (v35.i8[4])
          {
LABEL_26:
            v31->i64[1] = 0x8000000000000000;
          }

LABEL_17:
          v31 += 2;
          v33 -= 4;
          if (!v33)
          {
            if (v30 == (v30 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_41;
            }

            goto LABEL_45;
          }
        }
      }

      do
      {
LABEL_45:
        if (*v29 == -1)
        {
          *v29 = 0x8000000000000000;
        }

        ++v29;
      }

      while (v29 != &v26[v27]);
LABEL_41:
      v74 = mlir::RankedTensorType::get(v26, v27, v25, 0);
      v75 = *(a11 + 8);
      if (v75 >= *(a11 + 12))
      {
LABEL_42:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    else
    {
      v77[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
      v77[1] = v40;
      v76[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
      v76[1] = v41;
      if (v77[0])
      {
        if (mlir::ShapedType::hasRank(v77))
        {
          mlir::ShapedType::getShape(v77);
          if (v42 >= 5)
          {
            if (v76[0])
            {
              if (mlir::ShapedType::hasRank(v76))
              {
                mlir::ShapedType::getShape(v76);
                if (v43 == 5)
                {
                  Shape = mlir::ShapedType::getShape(v77);
                  v45 = *(v106 + 8) - 7;
                  v47 = Shape + 8 * v46;
                  v48 = *(v47 + qword_2573889C8[v45]);
                  v49 = *(v47 + qword_2573889E8[v45]);
                  v50 = *(v47 + qword_257388A08[v45]);
                  v97[3] = v99;
                  v99[0] = v48;
                  v99[1] = v49;
                  v99[2] = v50;
                  *v98 = 0x300000003;
                  v51 = mlir::ShapedType::getShape(v76);
                  v52 = *(v109 + 8) - 7;
                  v54 = v51 + 8 * v53;
                  v55 = *(v54 + qword_2573889C8[v52]);
                  v56 = *(v54 + qword_2573889E8[v52]);
                  v57 = *(v54 + qword_257388A08[v52]);
                  v95 = v97;
                  v97[0] = v55;
                  v97[1] = v56;
                  v97[2] = v57;
                  *v96 = 0x300000003;
                  v92 = &v94;
                  v93 = 0x500000000;
                  v80 = *(&v108 + 1);
                  v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v80);
                  mlir::getIntValues<long long>(v58, v59, &v92, 1);
                  v60 = *(v106 + 8) - 7;
                  v61 = v92 + 8 * v93;
                  v62 = *&v61[qword_2573889C8[v60]];
                  v63 = *&v61[qword_2573889E8[v60]];
                  v64 = *&v61[qword_257388A08[v60]];
                  v89 = v91;
                  v91[0] = v62;
                  v91[1] = v63;
                  v91[2] = v64;
                  *v90 = 0x300000003;
                  v86 = &v88;
                  v87 = 0x500000000;
                  v80 = *(&v106 + 1);
                  v65 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v80);
                  mlir::getIntValues<long long>(v65, v66, &v86, 1);
                  v67 = *(v106 + 8) - 7;
                  v68 = v86 + 8 * v87;
                  v69 = *&v68[qword_2573889C8[v67]];
                  v70 = *&v68[qword_2573889E8[v67]];
                  v71 = *&v68[qword_257388A08[v67]];
                  v83 = v85;
                  v85[0] = v69;
                  v85[1] = v70;
                  v85[2] = v71;
                  *v84 = 0x300000003;
                  v80 = &v82;
                  v81 = 0xA00000000;
                  v78[0] = v107;
                  v72 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v78);
                  mlir::getIntValues<long long>(v72, v73, &v80, 1);
                  mlir::mps::getSpatialPaddingValues(&v79);
                }
              }
            }
          }
        }
      }

      v74 = mlir::UnrankedTensorType::get(v25);
      v75 = *(a11 + 8);
      if (v75 >= *(a11 + 12))
      {
        goto LABEL_42;
      }
    }

    *(*a11 + 8 * v75) = v74;
    ++*(a11 + 8);
    if (v100 != v102)
    {
      free(v100);
    }
  }

  else
  {
    v36 = mlir::Float32Type::get(this, a2);
    v37 = mlir::UnrankedTensorType::get(v36);
    v38 = *(a11 + 8);
    if (v38 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v38) = v37;
    ++*(a11 + 8);
  }

  return 1;
}

uint64_t mlir::mps::Conv3DDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (!v3)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 != v67)
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
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v57 = a1[4];
  if (!v57)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v34 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v56 = a1[5];
  if (!v56)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v40 != v26);
        goto LABEL_91;
      }

LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v4 = a1[6];
  if (!v4)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v46 != v26);
LABEL_91:
        v28 = v67;
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  if (a1[7])
  {
    v55 = a1[8];
    if (v55)
    {
      v5 = a1[9];
      if (v5)
      {
        v58 = v4;
        Type = mlir::IntegerAttr::getType(&v58);
        if (mlir::Type::isUnsignedInteger(&Type, 64))
        {
          v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Type = mlir::TensorType::operator mlir::ShapedType(v51);
          v64 = v7;
          Shape = mlir::ShapedType::getShape(&Type);
          v62 = 5;
          if (v9 == 1 && *Shape == v62 && (ElementType = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v52 = v55, *&v61 = mlir::DenseElementsAttr::getType(&v52), *(&v61 + 1) = v10, v53 = mlir::ShapedType::getElementType(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Type = mlir::TensorType::operator mlir::ShapedType(v51);
            v64 = v12;
            v13 = mlir::ShapedType::getShape(&Type);
            v62 = 5;
            if (v14 == 1 && *v13 == v62 && (ElementType = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v52 = v57, *&v61 = mlir::DenseElementsAttr::getType(&v52), *(&v61 + 1) = v15, v53 = mlir::ShapedType::getElementType(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v56);
              v59 = v16;
              v62 = mlir::ElementsAttr::getType(&v58);
              Type = mlir::TensorType::operator mlir::ShapedType(&v62);
              v64 = v17;
              v18 = mlir::ShapedType::getShape(&Type);
              v61 = xmmword_25736B760;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::DenseElementsAttr::getType(&v53), v51[1] = v21, ElementType = mlir::ShapedType::getElementType(v51), mlir::Type::isUnsignedInteger(&ElementType, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d_data_gradient' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d_data_gradient' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d_data_gradient' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d_data_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d_data_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d_data_gradient' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
    return v22;
  }

  v58 = "'mps.conv_3d_data_gradient' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2, &v58, &Type);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}

uint64_t *mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::getGroups(mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase *this)
{
  v5 = *(this + 6);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t llvm::SmallVector<long long,5u>::operator=(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  *(a1 + 8) = 0;
  if ((8 * a3) >> 3 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    memcpy(*a1, a2, 8 * a3);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + v3;
  return a1;
}

uint64_t mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EFB0;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EFB0;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::verifyConvolutionBatches(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if (!a3 || !a5)
  {
    return v5;
  }

  if (a3 == a5)
  {
    v6 = a3 - 4;
    if (a3 != 4)
    {
      while (1)
      {
        v8 = *a2++;
        v7 = v8;
        v37 = v8;
        v10 = *a4++;
        v9 = v10;
        v36 = v10;
        v11 = v37 == 0x8000000000000000 || v9 == 0x8000000000000000;
        if (!v11 && v7 != v9)
        {
          break;
        }

        if (!--v6)
        {
          return 1;
        }
      }

      v29[0] = "failed: input batch {0} differs from output batch {1}";
      v29[1] = 53;
      v29[2] = v33;
      v29[3] = 2;
      LOBYTE(v30) = 1;
      v31[0] = &unk_28685E520;
      v31[1] = &v37;
      v32[0] = &unk_28685E520;
      v32[1] = &v36;
      v33[0] = v31;
      v33[1] = v32;
      v35 = 263;
      v34 = v29;
      mlir::Operation::emitOpError(v38, a1, &v34);
      v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      v5 = v21;
      if (v38[0])
      {
        mlir::InFlightDiagnostic::report(v38);
      }

      if (v46 == 1)
      {
        if (v45 != &v46)
        {
          free(v45);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v44;
          v24 = __p;
          if (v44 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v44 = v22;
          operator delete(v24);
        }

        v16 = v41;
        if (!v41)
        {
          goto LABEL_49;
        }

        v25 = v42;
        v18 = v41;
        if (v42 == v41)
        {
LABEL_48:
          v42 = v16;
          operator delete(v18);
LABEL_49:
          if (v39 != &v40)
          {
            free(v39);
          }

          return v5;
        }

        do
        {
          v27 = *--v25;
          v26 = v27;
          *v25 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v25 != v16);
LABEL_47:
        v18 = v41;
        goto LABEL_48;
      }
    }
  }

  else
  {
    v29[0] = "failed: number of batches are inconsistent between input and output";
    v30 = 259;
    mlir::Operation::emitOpError(v38, a1, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v44;
        v15 = __p;
        if (v44 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v44 = v13;
        operator delete(v15);
      }

      v16 = v41;
      if (!v41)
      {
        goto LABEL_49;
      }

      v17 = v42;
      v18 = v41;
      if (v42 == v41)
      {
        goto LABEL_48;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v17 != v16);
      goto LABEL_47;
    }
  }

  return v5;
}

uint64_t mlir::mps::Conv3DDataGradientOp::verify(mlir::Operation **this)
{
  v140[6] = *MEMORY[0x277D85DE8];
  v139[0] = v140;
  v139[1] = 0x600000000;
  v128 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v128);
  mlir::getIntValues<long long>(v2, v3, v139, 1);
  v4 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v5 = *(*(v4 + 96) + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v139[0];
    if (*(*(v4 + 64) + 8) == 7)
    {
      if (!v6 && !*(v139[0] + 1) && !*(v139[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v139[0] + 1) && !*(v139[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v139[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v126[0] = v127;
      v126[1] = 0x600000000;
      v128 = *(v4 + 104);
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v128);
      mlir::getIntValues<long long>(v17, v18, v126, 1);
      if (*v126[0] != 1)
      {
        goto LABEL_46;
      }

      v19 = *this + 64;
      v20 = (*(*this + 11) >> 23) & 1;
      v21 = 32;
      if (*(*(v19 + 16 * v20) + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v126[0] + v21) != 1)
      {
LABEL_46:
        v124[0] = "failed: strides incompatible with given tensor data layout.";
        v125[8] = 259;
        mlir::OpState::emitOpError(this, v124, &v128);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
        if (v128)
        {
          mlir::InFlightDiagnostic::report(&v128);
        }

        if (v138 != 1)
        {
          goto LABEL_86;
        }

        if (v137 != &v138)
        {
          free(v137);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v136;
          v38 = __p;
          if (v136 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v136 = v36;
          operator delete(v38);
        }

        v39 = v133;
        if (v133)
        {
          v40 = v134;
          v41 = v133;
          if (v134 != v133)
          {
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
            v41 = v133;
          }

          v134 = v39;
          operator delete(v41);
        }

        v53 = v131;
        if (v131 == v132)
        {
LABEL_86:
          v44 = v126[0];
          if (v126[0] == v127)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

LABEL_85:
        free(v53);
        goto LABEL_86;
      }

      v124[0] = v125;
      v124[1] = 0x600000000;
      v128 = *(v19 + 16 * v20 + 8);
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v128);
      mlir::getIntValues<long long>(v22, v23, v124, 1);
      if (*v124[0] != 1)
      {
        goto LABEL_66;
      }

      v24 = 4;
      if (*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) == 7)
      {
        v24 = 1;
      }

      if (v124[0][v24] != 1)
      {
LABEL_66:
        v120 = "failed: dilation values incompatible with given tensor layout.";
        v122 = 259;
        mlir::OpState::emitOpError(this, &v120, &v128);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
        if (v128)
        {
          mlir::InFlightDiagnostic::report(&v128);
        }

        if (v138 != 1)
        {
LABEL_154:
          v53 = v124[0];
          if (v124[0] == v125)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        if (v137 != &v138)
        {
          free(v137);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v136;
          v47 = __p;
          if (v136 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v136 = v45;
          operator delete(v47);
        }

        v48 = v133;
        if (v133)
        {
          v49 = v134;
          v50 = v133;
          if (v134 != v133)
          {
            do
            {
              v52 = *--v49;
              v51 = v52;
              *v49 = 0;
              if (v52)
              {
                MEMORY[0x259C63150](v51, 0x1000C8077774924);
              }
            }

            while (v49 != v48);
            v50 = v133;
          }

          v134 = v48;
          operator delete(v50);
        }

        v55 = v131;
        v56 = v132;
LABEL_152:
        if (v55 != v56)
        {
          free(v55);
        }

        goto LABEL_154;
      }

      v25 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v25)
      {
        goto LABEL_98;
      }

      v26 = *v25;
      {
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
          goto LABEL_40;
        }
      }

      else
      {
        mlir::mps::ConstantOp::verify();
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
LABEL_40:
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
LABEL_96:
          if (v30 != &v28[2 * v29] && *v30 == v27)
          {
            v57 = v30[1];
LABEL_99:
            v119[0] = v25;
            v119[1] = v57;
            v58 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v58)
            {
              goto LABEL_113;
            }

            v59 = *v58;
            {
              v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v61 = *(v59 + 8);
              v62 = *(v59 + 16);
              if (v62)
              {
                goto LABEL_102;
              }
            }

            else
            {
              mlir::mps::ConstantOp::verify();
              v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v61 = *(v59 + 8);
              v62 = *(v59 + 16);
              if (v62)
              {
LABEL_102:
                v63 = v61;
                v64 = v62;
                do
                {
                  v65 = v64 >> 1;
                  v66 = &v63[2 * (v64 >> 1)];
                  v68 = *v66;
                  v67 = v66 + 2;
                  v64 += ~(v64 >> 1);
                  if (v68 < v60)
                  {
                    v63 = v67;
                  }

                  else
                  {
                    v64 = v65;
                  }
                }

                while (v64);
LABEL_111:
                if (v63 != &v61[2 * v62] && *v63 == v60)
                {
                  v69 = v63[1];
LABEL_114:
                  v118[0] = v58;
                  v118[1] = v69;
                  if (*(*this + 9))
                  {
                    v70 = *this - 16;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v71 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v71)
                  {
                    goto LABEL_131;
                  }

                  v72 = *v71;
                  {
                    v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v74 = *(v72 + 8);
                    v75 = *(v72 + 16);
                    if (v75)
                    {
                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    mlir::mps::ConstantOp::verify();
                    v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v74 = *(v72 + 8);
                    v75 = *(v72 + 16);
                    if (v75)
                    {
LABEL_120:
                      v76 = v74;
                      v77 = v75;
                      do
                      {
                        v78 = v77 >> 1;
                        v79 = &v76[2 * (v77 >> 1)];
                        v81 = *v79;
                        v80 = v79 + 2;
                        v77 += ~(v77 >> 1);
                        if (v81 < v73)
                        {
                          v76 = v80;
                        }

                        else
                        {
                          v77 = v78;
                        }
                      }

                      while (v77);
LABEL_129:
                      if (v76 != &v74[2 * v75] && *v76 == v73)
                      {
                        v82 = v76[1];
                        goto LABEL_132;
                      }

LABEL_131:
                      v82 = 0;
LABEL_132:
                      v117[0] = v71;
                      v117[1] = v82;
                      Shape = mlir::ShapedType::getShape(v117);
                      v84 = mlir::ShapedType::getShape(v117);
                      v86 = (v84 + 8 * v85);
                      v128 = &v130;
                      v129 = 0x500000000;
                      if (((v86 - Shape) >> 3) >= 6)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v87 = 0;
                      if (v86 != Shape)
                      {
                        memcpy(v128, Shape, v86 - Shape);
                        v87 = v129;
                      }

                      LODWORD(v129) = v87 + ((v86 - Shape) >> 3);
                      v116 = 0;
                      if (*(*this + 17) != 2)
                      {
                        v88 = *(*(*this + 9) + 88);
                        if (v88)
                        {
                          v123 = &v116;
                          v120 = v88;
                          DefiningOp = mlir::Value::getDefiningOp(&v120);
                          if (DefiningOp)
                          {
                            if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v123, DefiningOp))
                            {
                              LODWORD(v129) = 0;
                              v90 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v116);
                              mlir::getIntValues<long long>(v90, v91, &v128, 1);
                            }
                          }
                        }
                      }

                      v92 = *this;
                      v114 = v128;
                      v93 = v129;
                      v94 = *(*(v92 + 2 * ((*(v92 + 11) >> 23) & 1) + 8) + 8);
                      v95 = mlir::ShapedType::getShape(v118);
                      v97 = v96;
                      v98 = *this + 16 * ((*(*this + 11) >> 23) & 1);
                      v99 = *(*(v98 + 112) + 8);
                      v123 = *(v98 + 88);
                      mlir::IntegerAttr::getValue(&v123, &v120);
                      if (v121 > 0x40)
                      {
                        v100 = *v120;
                        MEMORY[0x259C63150]();
                      }

                      else
                      {
                        v100 = v120;
                      }

                      if (!mlir::mps::verifyConvolutionInputChannels(v92, v114, v93, v94, v95, v97, v99, v100))
                      {
                        goto LABEL_150;
                      }

                      v115 = *this;
                      v101 = mlir::ShapedType::getShape(v119);
                      v103 = v102;
                      v104 = *(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8);
                      v105 = mlir::ShapedType::getShape(v118);
                      v107 = v106;
                      v108 = *this + 16 * ((*(*this + 11) >> 23) & 1);
                      v109 = *(*(v108 + 112) + 8);
                      v123 = *(v108 + 88);
                      mlir::IntegerAttr::getValue(&v123, &v120);
                      if (v121 > 0x40)
                      {
                        v110 = *v120;
                        MEMORY[0x259C63150]();
                      }

                      else
                      {
                        v110 = v120;
                      }

                      if (mlir::mps::verifyConvolutionOutputChannels(v115, v101, v103, v104, v105, v107, v109, v110))
                      {
                        v111 = *this;
                        v112 = mlir::ShapedType::getShape(v119);
                        v8 = mlir::mps::verifyConvolutionBatches(v111, v112, v113, v128, v129);
                      }

                      else
                      {
LABEL_150:
                        v8 = 0;
                      }

                      v56 = &v130;
                      v55 = v128;
                      goto LABEL_152;
                    }
                  }

                  v75 = 0;
                  v76 = v74;
                  goto LABEL_129;
                }

LABEL_113:
                v69 = 0;
                goto LABEL_114;
              }
            }

            v62 = 0;
            v63 = v61;
            goto LABEL_111;
          }

LABEL_98:
          v57 = 0;
          goto LABEL_99;
        }
      }

      v29 = 0;
      v30 = v28;
      goto LABEL_96;
    }
  }

LABEL_13:
  v126[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v127[8] = 259;
  mlir::OpState::emitOpError(this, v126, &v128);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
  if (v128)
  {
    mlir::InFlightDiagnostic::report(&v128);
  }

  if (v138 == 1)
  {
    if (v137 != &v138)
    {
      free(v137);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v136;
      v11 = __p;
      if (v136 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v136 = v9;
      operator delete(v11);
    }

    v12 = v133;
    if (v133)
    {
      v13 = v134;
      v14 = v133;
      if (v134 != v133)
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
        v14 = v133;
      }

      v134 = v12;
      operator delete(v14);
    }

    v44 = v131;
    if (v131 != v132)
    {
LABEL_87:
      free(v44);
    }
  }

LABEL_88:
  if (v139[0] != v140)
  {
    free(v139[0]);
  }

  return v8;
}

uint64_t *mlir::mps::Conv3DDataGradientOp::getGroups(mlir::mps::Conv3DDataGradientOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::Conv3DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v57[0] = a4;
  v57[1] = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v46 = a6;
  v47[0] = 0;
  v48 = 0;
  v49 = v14;
  v50 = v15;
  v51 = v16;
  v52 = v17;
  v53 = a9;
  v54 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v46);
    if (v48 == 1)
    {
      v48 = 0;
    }

    mlir::OperationName::OperationName(v47, "mps.conv_3d_weights_gradient", 28, Context);
    v48 = 1;
  }

  v55 = a4;
  v56 = a5;
  v41 = 0;
  if (a5 < 3 || (v19 = mlir::UnknownLoc::get(this, a2), (mlir::mps::Conv3DWeightsGradientOpAdaptor::verify(&v46, v19) & 1) == 0))
  {
    v35 = mlir::Float32Type::get(this, a2);
    v36 = mlir::UnrankedTensorType::get(v35);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v45[0] = (*(mlir::ValueRange::dereference_iterator(v57, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v45[1] = (*(mlir::ValueRange::dereference_iterator(v57, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::TypeRange::TypeRange(&v42, v45, 2uLL);
  v42 = v55;
  v43 = 2;
  v42 = mlir::ValueRange::offset_base(&v42, 2);
  v43 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v42, 0);
  v45[0] = &v41;
  v42 = v21;
  DefiningOp = mlir::Value::getDefiningOp(&v42);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v45, DefiningOp) & 1) == 0)
  {
    v36 = mlir::UnrankedTensorType::get(v20);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
LABEL_29:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_26:
    *(*a11 + 8 * v37) = v36;
    ++*(a11 + 8);
    return 1;
  }

  v42 = v44;
  v43 = 0x500000000;
  v23 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v41);
  mlir::getIntValues<long long>(v23, v24, &v42, 1);
  v25 = v42;
  v26 = v43;
  if (!v43)
  {
    goto LABEL_31;
  }

  v27 = (v43 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v28 = v42;
  if (v27 >= 3)
  {
    v29 = v27 + 1;
    v28 = v42 + 8 * (v29 & 0x3FFFFFFFFFFFFFFCLL);
    v30 = (v42 + 16);
    v31.i64[0] = -1;
    v31.i64[1] = -1;
    v32 = v29 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v33 = vmovn_s64(vceqq_s64(v30[-1], v31));
      if (v33.i8[0])
      {
        v30[-1].i64[0] = 0x8000000000000000;
        if ((v33.i8[4] & 1) == 0)
        {
LABEL_18:
          v34 = vmovn_s64(vceqq_s64(*v30, v31));
          if ((v34.i8[0] & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else if ((v33.i8[4] & 1) == 0)
      {
        goto LABEL_18;
      }

      v30[-1].i64[1] = 0x8000000000000000;
      v34 = vmovn_s64(vceqq_s64(*v30, v31));
      if ((v34.i8[0] & 1) == 0)
      {
LABEL_19:
        if (v34.i8[4])
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

LABEL_23:
      v30->i64[0] = 0x8000000000000000;
      if (v34.i8[4])
      {
LABEL_24:
        v30->i64[1] = 0x8000000000000000;
      }

LABEL_15:
      v30 += 2;
      v32 -= 4;
      if (!v32)
      {
        if (v29 == (v29 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }
    }
  }

  do
  {
LABEL_36:
    if (*v28 == -1)
    {
      *v28 = 0x8000000000000000;
    }

    ++v28;
  }

  while (v28 != &v25[v26]);
LABEL_31:
  v39 = mlir::RankedTensorType::get(v25, v26, v20, 0);
  v40 = *(a11 + 8);
  if (v40 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v40) = v39;
  ++*(a11 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::mps::Conv3DWeightsGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (!v3)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 != v67)
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
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v57 = a1[4];
  if (!v57)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v34 != v26);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v56 = a1[5];
  if (!v56)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v40 != v26);
        goto LABEL_91;
      }

LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v4 = a1[6];
  if (!v4)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 != v67)
      {
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

        while (v46 != v26);
LABEL_91:
        v28 = v67;
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  if (a1[7])
  {
    v55 = a1[8];
    if (v55)
    {
      v5 = a1[9];
      if (v5)
      {
        v58 = v4;
        Type = mlir::IntegerAttr::getType(&v58);
        if (mlir::Type::isUnsignedInteger(&Type, 64))
        {
          v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Type = mlir::TensorType::operator mlir::ShapedType(v51);
          v64 = v7;
          Shape = mlir::ShapedType::getShape(&Type);
          v62 = 5;
          if (v9 == 1 && *Shape == v62 && (ElementType = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v52 = v55, *&v61 = mlir::DenseElementsAttr::getType(&v52), *(&v61 + 1) = v10, v53 = mlir::ShapedType::getElementType(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Type = mlir::TensorType::operator mlir::ShapedType(v51);
            v64 = v12;
            v13 = mlir::ShapedType::getShape(&Type);
            v62 = 5;
            if (v14 == 1 && *v13 == v62 && (ElementType = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v52 = v57, *&v61 = mlir::DenseElementsAttr::getType(&v52), *(&v61 + 1) = v15, v53 = mlir::ShapedType::getElementType(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v56);
              v59 = v16;
              v62 = mlir::ElementsAttr::getType(&v58);
              Type = mlir::TensorType::operator mlir::ShapedType(&v62);
              v64 = v17;
              v18 = mlir::ShapedType::getShape(&Type);
              v61 = xmmword_25736B760;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::DenseElementsAttr::getType(&v53), v51[1] = v21, ElementType = mlir::ShapedType::getElementType(v51), mlir::Type::isUnsignedInteger(&ElementType, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d_weights_gradient' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d_weights_gradient' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d_weights_gradient' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d_weights_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d_weights_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d_weights_gradient' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2, &v58, &Type);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
    return v22;
  }

  v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2, &v58, &Type);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}