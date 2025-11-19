uint64_t sub_10021B504(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    sub_1002AB078(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::MulOp *this, mlir::OpBuilder *a2)
{
  v4 = *this;
  if (*(*mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v28 = sub_1001F0CA8(a2, *(*(*this + 72) + 24), *(*this + 24));
    v29 = v6;
    v26 = sub_1001F0CA8(a2, *(*(*this + 72) + 56), *(*this + 24));
    v27 = v7;
    v25 = sub_10021B878(a2, *(*this + 24), &v28, &v26);
    v24 = sub_10021B878(a2, *(*this + 24), &v29, &v27);
    v23 = sub_10021B878(a2, *(*this + 24), &v28, &v27);
    v22 = sub_10021B878(a2, *(*this + 24), &v29, &v26);
    v8 = *(*this + 24);
    v20 = *(v28 - 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = sub_10021B9D0(a2, v8, &v20, &v25, &v24);
    v9 = *(*this + 24);
    v19 = *(v28 - 8) & 0xFFFFFFFFFFFFFFF8;
    v20 = sub_10021B504(a2, v9, &v19, &v23, &v22);
    v10 = *(*this + 24);
    v19 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = sub_1001F0F4C(a2, v10, &v19, &v21, &v20);
    v12 = *this;
    if (*(v11 + 36))
    {
      v13 = v11 - 16;
    }

    else
    {
      v13 = 0;
    }

    for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0); ; *i = v15)
    {
      v15 = *(v12 - 16);
      if (!v15)
      {
        break;
      }

      v16 = v15[1];
      if (v16)
      {
        v17 = *v15;
        *v16 = *v15;
        if (v17)
        {
          *(v17 + 8) = v16;
        }
      }

      v15[3] = i;
      v15[1] = i;
      v18 = *i;
      *v15 = *i;
      if (v18)
      {
        *(v18 + 8) = v15;
      }
    }
  }

  return 1;
}

uint64_t sub_10021B878(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_1002AB0BC(v19, v25, v24);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v12 = *a4 - 16;
  v24[0] = v11 - 16;
  v24[1] = v12;
  mlir::ValueRange::ValueRange(v25, v24, 2uLL);
  mlir::OperationState::addOperands(v19, v25[0], v25[1]);
  v13 = *(v11 - 8);
  v14 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, &v23, v21 + 1, 8);
    v14 = v21;
  }

  *(v20 + 8 * v14) = v13 & 0xFFFFFFFFFFFFFFF8;
  ++v21;
  v15 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v16;
}

uint64_t sub_10021B9D0(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    sub_1002AB100(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::BatchMatmulOp *this, mlir::OpBuilder *a2)
{
  v4 = *this;
  if (*(*mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 1;
  }

  v41 = sub_1001F0CA8(a2, *(*(*this + 72) + 24), *(*this + 24));
  v42 = v6;
  v39 = sub_1001F0CA8(a2, *(*(*this + 72) + 56), *(*this + 24));
  v40 = v7;
  v8 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = *v8;
  {
    v30 = v9;
    v31 = v8;
    sub_1002AAB00();
    v8 = v31;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v30 + 8);
    v12 = *(v30 + 16);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 == &v11[2 * v12] || *v13 != v10)
  {
    goto LABEL_17;
  }

  v19 = v13[1];
LABEL_18:
  v38[0] = v8;
  v38[1] = v19;
  *&v43 = mlir::ShapedType::getElementType(v38);
  ElementType = mlir::ComplexType::getElementType(&v43);
  LOBYTE(v43) = 0;
  v44 = 0;
  *&v43 = mlir::ShapedType::cloneWith(v38, &v43, ElementType);
  *(&v43 + 1) = v21;
  v37 = sub_10021BE24(a2, *(*this + 24), &v43, &v41, &v39);
  v36 = sub_10021BE24(a2, *(*this + 24), &v43, &v42, &v40);
  v35 = sub_10021BE24(a2, *(*this + 24), &v43, &v41, &v40);
  v34 = sub_10021BE24(a2, *(*this + 24), &v43, &v42, &v39);
  v33 = sub_10021B9D0(a2, *(*this + 24), &v43, &v37, &v36);
  v32 = sub_10021B504(a2, *(*this + 24), &v43, &v35, &v34);
  v22 = sub_1001F0F4C(a2, *(*this + 24), v38, &v33, &v32);
  v23 = *this;
  if (*(v22 + 36))
  {
    v24 = v22 - 16;
  }

  else
  {
    v24 = 0;
  }

  for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0); ; *i = v26)
  {
    v26 = *(v23 - 16);
    if (!v26)
    {
      break;
    }

    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      *v27 = *v26;
      if (v28)
      {
        *(v28 + 8) = v27;
      }
    }

    v26[3] = i;
    v26[1] = i;
    v29 = *i;
    *v26 = *i;
    if (v29)
    {
      *(v29 + 8) = v26;
    }
  }

  return 1;
}

uint64_t sub_10021BE24(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    sub_1002AB144(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::verify(mlir::Operation **this)
{
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v57[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::RankedTensorType::getShape(v57);
  v5 = v4;
  v57[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(v57);
  if (v5 == 2)
  {
    if (v6 == *(Shape + 8))
    {
      return 1;
    }

    v53 = 257;
    v19 = v6;
    mlir::OpState::emitError(this, v52, v57);
    if (v57[0])
    {
      v54 = 3;
      v55 = "coreml.non_zero output.shape[1] is ";
      v56 = 35;
      v20 = &v54;
      v21 = v58;
      if (v59 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v59 > &v54)
        {
          v48 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v21 = v58;
          v20 = (v58 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v20 = &v54;
          v21 = v58;
        }
      }

      v22 = v19;
      v23 = &v21[24 * v59];
      v24 = *v20;
      *(v23 + 2) = *(v20 + 2);
      *v23 = v24;
      v25 = ++v59;
      if (v57[0])
      {
        v26 = *(Shape + 8);
        v54 = 2;
        v55 = v26;
        v27 = &v54;
        v28 = v58;
        if (v25 >= v60)
        {
          if (v58 <= &v54 && v58 + 24 * v25 > &v54)
          {
            v49 = &v54 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v25 + 1, 24);
            v28 = v58;
            v27 = (v58 + v49);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v25 + 1, 24);
            v27 = &v54;
            v28 = v58;
          }

          v22 = v19;
        }

        v29 = &v28[24 * v59];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        v31 = ++v59;
        if (v57[0])
        {
          v54 = 3;
          v55 = " which is not equal to input rank ";
          v56 = 34;
          v32 = &v54;
          v33 = v58;
          if (v31 >= v60)
          {
            if (v58 <= &v54 && v58 + 24 * v31 > &v54)
            {
              v50 = &v54 - v58;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v31 + 1, 24);
              v33 = v58;
              v32 = (v58 + v50);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v31 + 1, 24);
              v32 = &v54;
              v33 = v58;
            }

            v22 = v19;
          }

          v34 = &v33[24 * v59];
          v35 = *v32;
          *(v34 + 2) = *(v32 + 2);
          *v34 = v35;
          v36 = ++v59;
          if (v57[0])
          {
            v54 = 2;
            v55 = v22;
            v37 = &v54;
            v38 = v58;
            if (v36 >= v60)
            {
              if (v58 <= &v54 && v58 + 24 * v36 > &v54)
              {
                v51 = &v54 - v58;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v36 + 1, 24);
                v38 = v58;
                v37 = (v58 + v51);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v36 + 1, 24);
                v37 = &v54;
                v38 = v58;
              }
            }

            v39 = &v38[24 * v59];
            v40 = *v37;
            *(v39 + 2) = *(v37 + 2);
            *v39 = v40;
            ++v59;
          }
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v41 = __p;
      if (__p)
      {
        v42 = v65;
        v43 = __p;
        if (v65 != __p)
        {
          do
          {
            v42 = sub_10005BEF4(v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v65 = v41;
        operator delete(v43);
      }

      v15 = v62;
      if (!v62)
      {
        goto LABEL_53;
      }

      v44 = v63;
      v17 = v62;
      if (v63 == v62)
      {
LABEL_52:
        v63 = v15;
        operator delete(v17);
LABEL_53:
        if (v58 != v61)
        {
          free(v58);
        }

        return v7;
      }

      do
      {
        v45 = *--v44;
        *v44 = 0;
        if (v45)
        {
          operator delete[]();
        }
      }

      while (v44 != v15);
LABEL_51:
      v17 = v62;
      goto LABEL_52;
    }
  }

  else
  {
    v53 = 257;
    mlir::OpState::emitError(this, v52, v57);
    if (v57[0])
    {
      v54 = 3;
      v55 = "expect output of rank 2 for coreml.non_zero";
      v56 = 43;
      v8 = &v54;
      v9 = v58;
      if (v59 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v59 > &v54)
        {
          v47 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v9 = v58;
          v8 = (v58 + v47);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v8 = &v54;
          v9 = v58;
        }
      }

      v10 = &v9[24 * v59];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v59;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v65;
        v14 = __p;
        if (v65 != __p)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v65 = v12;
        operator delete(v14);
      }

      v15 = v62;
      if (!v62)
      {
        goto LABEL_53;
      }

      v16 = v63;
      v17 = v62;
      if (v63 == v62)
      {
        goto LABEL_52;
      }

      do
      {
        v18 = *--v16;
        *v16 = 0;
        if (v18)
        {
          operator delete[]();
        }
      }

      while (v16 != v15);
      goto LABEL_51;
    }
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60[0] = a4;
  v60[1] = a5;
  if (a5 == 3)
  {
    v11 = mlir::ValueRange::dereference_iterator(v60, 1);
    __src = 0;
    *&v65 = 0;
    p_src = &__src;
    v56 = v11;
    result = mlir::Value::getDefiningOp(&v56);
    if (!result)
    {
      return result;
    }

    result = sub_10026C424(&p_src, result);
    if (!result)
    {
      return result;
    }

    v13 = *(mlir::ValueRange::dereference_iterator(v60, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = 0;
    }

    v55 = v13;
    v14 = v11[1] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = 0;
    }

    v54 = v14;
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }

    Shape = mlir::RankedTensorType::getShape(&v55);
    v18 = v17;
    ElementType = mlir::RankedTensorType::getElementType(&v54);
    LOBYTE(v56) = 0;
    v59 = 0;
    if (mlir::Type::isSignedInteger(&ElementType, 16))
    {
      sub_1002714A0(v11, &__src);
      if (v67)
      {
        p_src = v70;
        v69 = xmmword_1002B0E50;
        v19 = __src;
        v20 = v65;
        if (!v65)
        {
          goto LABEL_34;
        }

        if (__src != v66)
        {
          p_src = __src;
          v69 = v65;
          goto LABEL_36;
        }

        if (v65 < 0x15)
        {
          v24 = v70;
          v23 = v65;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&p_src, v70, v65, 2);
          v23 = v65;
          if (!v65)
          {
LABEL_32:
            *&v69 = v20;
            *&v65 = 0;
            if ((v67 & 1) == 0)
            {
              goto LABEL_36;
            }

            v19 = __src;
LABEL_34:
            if (v19 != v66)
            {
              free(v19);
              v20 = v69;
            }

LABEL_36:
            if (v20 != 2 * v18)
            {
              LOBYTE(__src) = 0;
              v67 = 0;
              goto LABEL_84;
            }

            v61 = v63;
            v62 = 0x600000000;
            v27 = (8 * v18) >> 3;
            if (v27 < 7)
            {
              v28 = 0;
              v29 = v63;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v27, 8);
              v28 = v62;
              v29 = v61;
            }

            if (v18)
            {
              memcpy(&v29[8 * v28], Shape, 8 * v18);
              v28 = v62;
              v29 = v61;
            }

            v30 = (v28 + v18);
            LODWORD(v62) = v28 + v18;
            if (!(v28 + v18))
            {
              __src = &v65 + 8;
              *&v65 = 0x600000000;
              goto LABEL_82;
            }

            v31 = 0;
            v32 = p_src + 1;
            do
            {
              v33 = *&v29[v31];
              if ((v33 & 0x8000000000000000) == 0)
              {
                *&v29[v31] = v33 + *(v32 - 1) + *v32;
              }

              v31 += 8;
              v32 += 2;
            }

            while (8 * v30 != v31);
            v34 = &v65 + 8;
            __src = &v65 + 8;
            *&v65 = 0x600000000;
            if (v29 != v63)
            {
              __src = v29;
              *&v65 = __PAIR64__(HIDWORD(v62), v30);
              v61 = v63;
              HIDWORD(v62) = 0;
              v29 = v63;
LABEL_81:
              LODWORD(v62) = 0;
LABEL_82:
              v67 = 1;
              if (v29 != v63)
              {
                free(v29);
              }

LABEL_84:
              if (p_src != v70)
              {
                free(p_src);
              }

              v45 = v59;
              if (v59 != v67)
              {
LABEL_87:
                if (v45)
                {
                  if (v56 != v58)
                  {
                    free(v56);
                  }

                  v59 = 0;
                }

                else
                {
                  v56 = v58;
                  v57 = 0x600000000;
                  if (v65)
                  {
                    sub_10005F9E8(&v56, &__src);
                  }

                  v59 = 1;
                }

                goto LABEL_105;
              }

LABEL_103:
              if (v45)
              {
                sub_10005F9E8(&v56, &__src);
              }

LABEL_105:
              if (v67 == 1 && __src != &v65 + 8)
              {
                free(__src);
              }

              if (v59 == 1)
              {
                v46 = v56;
                v47 = v57;
                v48 = mlir::RankedTensorType::getElementType(&v55);
                v49 = mlir::RankedTensorType::get(v46, v47, v48, 0);
                v50 = *(a11 + 8);
                if (v50 >= *(a11 + 12))
                {
                  v51 = v49;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v50 + 1, 8);
                  v49 = v51;
                  LODWORD(v50) = *(a11 + 8);
                }

                *(*a11 + 8 * v50) = v49;
                ++*(a11 + 8);
                if ((v59 & 1) != 0 && v56 != v58)
                {
                  free(v56);
                }

                return 1;
              }

              return 0;
            }

            if (v30 < 7)
            {
              v43 = v30;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v65 + 8, v30, 8);
              v43 = v62;
              v29 = v61;
              if (!v62)
              {
LABEL_80:
                LODWORD(v65) = v30;
                goto LABEL_81;
              }

              v34 = __src;
            }

            memcpy(v34, v29, 8 * v43);
            v29 = v61;
            goto LABEL_80;
          }

          v19 = __src;
          v24 = p_src;
        }

        memcpy(v24, v19, 2 * v23);
        goto LABEL_32;
      }

LABEL_117:
      v52 = sub_10026AFCC();
      return sub_10021CDBC(v52);
    }

    sub_10020E8BC(v11, &__src);
    if ((v67 & 1) == 0)
    {
      goto LABEL_117;
    }

    p_src = &v69 + 1;
    *&v69 = 0xC00000000;
    v21 = v65;
    v22 = __src;
    if (!v65)
    {
      goto LABEL_55;
    }

    if (__src != &v65 + 8)
    {
      p_src = __src;
      *&v69 = v65;
      goto LABEL_57;
    }

    if (v65 < 0xD)
    {
      v26 = &v69 + 8;
      v25 = v65;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, &v69 + 8, v65, 4);
      v25 = v65;
      if (!v65)
      {
LABEL_53:
        LODWORD(v69) = v21;
        LODWORD(v65) = 0;
        if ((v67 & 1) == 0)
        {
          goto LABEL_57;
        }

        v22 = __src;
LABEL_55:
        if (v22 != &v65 + 8)
        {
          free(v22);
          v21 = v69;
        }

LABEL_57:
        if (v21 != 2 * v18)
        {
          LOBYTE(__src) = 0;
          v67 = 0;
          goto LABEL_100;
        }

        v61 = v63;
        v62 = 0x600000000;
        v35 = (8 * v18) >> 3;
        if (v35 < 7)
        {
          v36 = 0;
          v37 = v63;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v35, 8);
          v36 = v62;
          v37 = v61;
        }

        if (v18)
        {
          memcpy(&v37[8 * v36], Shape, 8 * v18);
          v36 = v62;
          v37 = v61;
        }

        v38 = (v36 + v18);
        LODWORD(v62) = v36 + v18;
        if (!(v36 + v18))
        {
          __src = &v65 + 8;
          *&v65 = 0x600000000;
          goto LABEL_98;
        }

        v39 = 0;
        v40 = p_src + 1;
        do
        {
          v41 = *&v37[8 * v39];
          if ((v41 & 0x8000000000000000) == 0)
          {
            *&v37[8 * v39] = v41 + *v40 + *(v40 - 1);
          }

          ++v39;
          v40 += 2;
        }

        while (v38 != v39);
        v42 = &v65 + 8;
        __src = &v65 + 8;
        *&v65 = 0x600000000;
        if (v37 != v63)
        {
          __src = v37;
          *&v65 = __PAIR64__(HIDWORD(v62), v38);
          v61 = v63;
          HIDWORD(v62) = 0;
          v37 = v63;
LABEL_97:
          LODWORD(v62) = 0;
LABEL_98:
          v67 = 1;
          if (v37 != v63)
          {
            free(v37);
          }

LABEL_100:
          if (p_src != (&v69 + 8))
          {
            free(p_src);
          }

          v45 = v59;
          if (v59 != v67)
          {
            goto LABEL_87;
          }

          goto LABEL_103;
        }

        if (v38 < 7)
        {
          v44 = v38;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v65 + 8, v38, 8);
          v44 = v62;
          v37 = v61;
          if (!v62)
          {
LABEL_96:
            LODWORD(v65) = v38;
            goto LABEL_97;
          }

          v42 = __src;
        }

        memcpy(v42, v37, 8 * v44);
        v37 = v61;
        goto LABEL_96;
      }

      v22 = __src;
      v26 = p_src;
    }

    memcpy(v26, v22, 4 * v25);
    goto LABEL_53;
  }

  return sub_1001F06E4(a2, a3, "expected exactly 3 operands");
}

uint64_t sub_10021CDBC(uint64_t result, uint64_t a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {
      v2 = result;
      sub_10005F9E8(result, a2);
      return v2;
    }
  }

  else if (*(result + 64))
  {
    if (*result != result + 16)
    {
      v3 = result;
      free(*result);
      result = v3;
    }

    *(result + 64) = 0;
  }

  else
  {
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      v4 = result;
      sub_10005F9E8(result, a2);
      result = v4;
    }

    *(result + 64) = 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = v24;
  v23 = 0x600000000;
  if ((mlir::ODIE::Compiler::CoreML::PadOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &v22) & 1) == 0)
  {
    v14 = 0;
    v15 = v22;
    if (v22 == v24)
    {
      return v14;
    }

    goto LABEL_12;
  }

  mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v20, v22, v23);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v21[0], v21[1], v20[0], v20[1]))
  {
    v11 = v22;
    v12 = v23;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_10;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_10:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v22;
  if (v22 != v24)
  {
LABEL_12:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::PadOp::verify(void **this)
{
  v1 = this;
  v2 = *(*this + 9);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  __src = *(*this + 10);
  Value = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::getValue(&__src);
  if (Value != 1)
  {
    v6 = *(*(*v1 + 9) + 88);
    __src = 0;
    *&v251 = 0;
    p_src = &__src;
    v263 = v6;
    DefiningOp = mlir::Value::getDefiningOp(&v263);
    if (!DefiningOp || (sub_10026C424(&p_src, DefiningOp) & 1) == 0)
    {
      v265[4] = 257;
      mlir::OpState::emitError(v1, &v263, &__src);
      if (__src)
      {
        LODWORD(p_src) = 3;
        v247 = " non-constant padding mode must have padding value as constant.";
        v248 = 63;
        p_p_src = &p_src;
        v17 = v252;
        if (v253 >= v254)
        {
          if (v252 <= &p_src && v252 + 24 * v253 > &p_src)
          {
            v212 = &p_src - v252;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
            v17 = v252;
            p_p_src = (v252 + v212);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
            p_p_src = &p_src;
            v17 = v252;
          }
        }

        v18 = &v17[24 * v253];
        v19 = *p_p_src;
        *(v18 + 2) = p_p_src[2];
        *v18 = v19;
        ++v253;
      }

      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
      if (__src)
      {
        mlir::InFlightDiagnostic::report(&__src);
      }

      if (v262 == 1)
      {
        if (v261 != &v262)
        {
          free(v261);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v260;
          v23 = __p;
          if (v260 != __p)
          {
            do
            {
              v22 = sub_10005BEF4(v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v260 = v21;
          operator delete(v23);
        }

        v24 = v257;
        if (v257)
        {
          v25 = v258;
          v26 = v257;
          if (v258 != v257)
          {
            do
            {
              v27 = *--v25;
              *v25 = 0;
              if (v27)
              {
                operator delete[]();
              }
            }

            while (v25 != v24);
            v26 = v257;
          }

          v258 = v24;
          operator delete(v26);
        }

        v31 = v252;
        if (v252 != v255)
        {
          goto LABEL_215;
        }
      }

      return v20;
    }
  }

  __src = (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8);
  ElementType = mlir::RankedTensorType::getElementType(&__src);
  __src = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  Shape = mlir::TensorType::getShape(&__src);
  v10 = v9;
  isSignedInteger = mlir::Type::isSignedInteger(&ElementType, 16);
  v12 = *v1;
  if (!isSignedInteger)
  {
    __src = 0;
    *&v251 = 0;
    p_src = &__src;
    v263 = v4;
    v28 = mlir::Value::getDefiningOp(&v263);
    if (!v28 || !sub_10026C424(&p_src, v28))
    {
      return 1;
    }

    sub_10020E8BC(v4, &__src);
    if ((v256 & 1) == 0)
    {
      goto LABEL_292;
    }

    v4 = &v264 + 8;
    v263 = &v264 + 8;
    *&v264 = 0xC00000000;
    v29 = v251;
    v30 = __src;
    if (!v251)
    {
      goto LABEL_132;
    }

    if (__src != &v251 + 8)
    {
      v263 = __src;
      *&v264 = v251;
      goto LABEL_134;
    }

    if (v251 < 0xD)
    {
      v35 = &v264 + 8;
      v34 = v251;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, &v264 + 8, v251, 4);
      v34 = v251;
      if (!v251)
      {
LABEL_130:
        LODWORD(v264) = v29;
        LODWORD(v251) = 0;
        if ((v256 & 1) == 0)
        {
          goto LABEL_134;
        }

        v30 = __src;
LABEL_132:
        if (v30 != &v251 + 8)
        {
          free(v30);
          v29 = v264;
        }

LABEL_134:
        if (2 * v10 == v29)
        {
          v20 = 1;
          if (Value <= 4 && ((1 << Value) & 0x15) != 0 && v10)
          {
            v124 = 0;
            v125 = 0;
            v126 = Value == 2 ? -1 : 0;
            v127 = -v10;
            while (1)
            {
              v128 = (*(Shape + v124) + v126);
              if (v128 < *&v263[v124] || v128 < *&v263[v124 + 4])
              {
                break;
              }

              --v125;
              v124 += 8;
              if (v127 == v125)
              {
LABEL_145:
                v20 = 1;
                goto LABEL_214;
              }
            }

            v245 = 257;
            mlir::Operation::emitError(&__src, v12, &v242);
            if (__src)
            {
              LODWORD(p_src) = 3;
              v247 = " padding lengths for dim ";
              v248 = 25;
              v158 = &p_src;
              v159 = v252;
              if (v253 >= v254)
              {
                if (v252 <= &p_src && v252 + 24 * v253 > &p_src)
                {
                  v220 = &p_src - v252;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
                  v159 = v252;
                  v158 = (v252 + v220);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
                  v158 = &p_src;
                  v159 = v252;
                }
              }

              v160 = &v159[24 * v253];
              v161 = *v158;
              *(v160 + 2) = v158[2];
              *v160 = v161;
              v162 = ++v253;
              if (__src)
              {
                LODWORD(p_src) = 5;
                v247 = -v125;
                v163 = &p_src;
                v164 = v252;
                if (v162 >= v254)
                {
                  if (v252 <= &p_src && v252 + 24 * v162 > &p_src)
                  {
                    v224 = &p_src - v252;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v162 + 1, 24);
                    v164 = v252;
                    v163 = (v252 + v224);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v162 + 1, 24);
                    v163 = &p_src;
                    v164 = v252;
                  }
                }

                v165 = &v164[24 * v253];
                v166 = *v163;
                *(v165 + 2) = v163[2];
                *v165 = v166;
                v167 = ++v253;
                if (__src)
                {
                  LODWORD(p_src) = 3;
                  v247 = " is ";
                  v248 = 4;
                  v168 = &p_src;
                  v169 = v252;
                  if (v167 >= v254)
                  {
                    if (v252 <= &p_src && v252 + 24 * v167 > &p_src)
                    {
                      v228 = &p_src - v252;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v167 + 1, 24);
                      v169 = v252;
                      v168 = (v252 + v228);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v167 + 1, 24);
                      v168 = &p_src;
                      v169 = v252;
                    }
                  }

                  v170 = &v169[24 * v253];
                  v171 = *v168;
                  *(v170 + 2) = v168[2];
                  *v170 = v171;
                  v172 = ++v253;
                  if (__src)
                  {
                    v173 = *&v263[v124];
                    LODWORD(p_src) = 2;
                    v247 = v173;
                    v174 = &p_src;
                    v175 = v252;
                    if (v172 >= v254)
                    {
                      if (v252 <= &p_src && v252 + 24 * v172 > &p_src)
                      {
                        v230 = &p_src - v252;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v172 + 1, 24);
                        v175 = v252;
                        v174 = (v252 + v230);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v172 + 1, 24);
                        v174 = &p_src;
                        v175 = v252;
                      }
                    }

                    v176 = &v175[24 * v253];
                    v177 = *v174;
                    *(v176 + 2) = v174[2];
                    *v176 = v177;
                    v178 = ++v253;
                    if (__src)
                    {
                      LODWORD(p_src) = 3;
                      v247 = " and ";
                      v248 = 5;
                      v179 = &p_src;
                      v180 = v252;
                      if (v178 >= v254)
                      {
                        if (v252 <= &p_src && v252 + 24 * v178 > &p_src)
                        {
                          v232 = &p_src - v252;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v178 + 1, 24);
                          v180 = v252;
                          v179 = (v252 + v232);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v178 + 1, 24);
                          v179 = &p_src;
                          v180 = v252;
                        }
                      }

                      v181 = &v180[24 * v253];
                      v182 = *v179;
                      *(v181 + 2) = v179[2];
                      *v181 = v182;
                      v183 = ++v253;
                      if (__src)
                      {
                        v184 = *&v263[v124 + 4];
                        LODWORD(p_src) = 2;
                        v247 = v184;
                        v185 = &p_src;
                        v186 = v252;
                        if (v183 >= v254)
                        {
                          if (v252 <= &p_src && v252 + 24 * v183 > &p_src)
                          {
                            v234 = &p_src - v252;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v183 + 1, 24);
                            v186 = v252;
                            v185 = (v252 + v234);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v183 + 1, 24);
                            v185 = &p_src;
                            v186 = v252;
                          }
                        }

                        v187 = &v186[24 * v253];
                        v188 = *v185;
                        *(v187 + 2) = v185[2];
                        *v187 = v188;
                        v189 = ++v253;
                        if (__src)
                        {
                          LODWORD(p_src) = 3;
                          v247 = " which is higher than max value ";
                          v248 = 32;
                          v190 = &p_src;
                          v191 = v252;
                          if (v189 >= v254)
                          {
                            if (v252 <= &p_src && v252 + 24 * v189 > &p_src)
                            {
                              v236 = &p_src - v252;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v189 + 1, 24);
                              v191 = v252;
                              v190 = (v252 + v236);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v189 + 1, 24);
                              v190 = &p_src;
                              v191 = v252;
                            }
                          }

                          v192 = &v191[24 * v253];
                          v193 = *v190;
                          *(v192 + 2) = v190[2];
                          *v192 = v193;
                          v194 = ++v253;
                          if (__src)
                          {
                            LODWORD(p_src) = 2;
                            v247 = v128;
                            v195 = &p_src;
                            v196 = v252;
                            if (v194 >= v254)
                            {
                              if (v252 <= &p_src && v252 + 24 * v194 > &p_src)
                              {
                                v238 = &p_src - v252;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v194 + 1, 24);
                                v196 = v252;
                                v195 = (v252 + v238);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v194 + 1, 24);
                                v195 = &p_src;
                                v196 = v252;
                              }
                            }

                            v197 = &v196[24 * v253];
                            v198 = *v195;
                            *(v197 + 2) = v195[2];
                            *v197 = v198;
                            v199 = ++v253;
                            if (__src)
                            {
                              LODWORD(p_src) = 3;
                              v247 = " for mode ";
                              v248 = 10;
                              v200 = &p_src;
                              v201 = v252;
                              if (v199 >= v254)
                              {
                                if (v252 <= &p_src && v252 + 24 * v199 > &p_src)
                                {
                                  v240 = &p_src - v252;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v199 + 1, 24);
                                  v201 = v252;
                                  v200 = (v252 + v240);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v199 + 1, 24);
                                  v200 = &p_src;
                                  v201 = v252;
                                }
                              }

                              v202 = &v201[24 * v253];
                              v203 = *v200;
                              *(v202 + 2) = v200[2];
                              *v202 = v203;
                              ++v253;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v204 = mlir::ODIE::Compiler::CoreML::stringifyPaddingMode(Value);
            if (__src)
            {
              v249 = 261;
              p_src = v204;
              v247 = v205;
              mlir::Diagnostic::operator<<(&v251, &p_src);
            }

            v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
            if (__src)
            {
              mlir::InFlightDiagnostic::report(&__src);
            }

            if (v262)
            {
              if (v261 != &v262)
              {
                free(v261);
              }

              v206 = __p;
              if (__p)
              {
                v207 = v260;
                v208 = __p;
                if (v260 != __p)
                {
                  do
                  {
                    v207 = sub_10005BEF4(v207 - 1);
                  }

                  while (v207 != v206);
                  v208 = __p;
                }

                v260 = v206;
                operator delete(v208);
              }

              v67 = v257;
              if (!v257)
              {
                goto LABEL_212;
              }

              v209 = v258;
              v69 = v257;
              if (v258 == v257)
              {
                goto LABEL_211;
              }

              do
              {
                v210 = *--v209;
                *v209 = 0;
                if (v210)
                {
                  operator delete[]();
                }
              }

              while (v209 != v67);
              goto LABEL_210;
            }
          }
        }

        else
        {
          v249 = 257;
          mlir::Operation::emitError(&__src, v12, &p_src);
          if (__src)
          {
            v242 = 3;
            v243 = " padding lengths has ";
            v244 = 21;
            v129 = &v242;
            v130 = v252;
            if (v253 >= v254)
            {
              if (v252 <= &v242 && v252 + 24 * v253 > &v242)
              {
                v214 = &v242 - v252;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
                v130 = v252;
                v129 = (v252 + v214);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
                v129 = &v242;
                v130 = v252;
              }
            }

            v131 = &v130[24 * v253];
            v132 = *v129;
            *(v131 + 2) = *(v129 + 2);
            *v131 = v132;
            v133 = ++v253;
            if (__src)
            {
              v242 = 5;
              v243 = v264;
              v134 = &v242;
              v135 = v252;
              if (v133 >= v254)
              {
                if (v252 <= &v242 && v252 + 24 * v133 > &v242)
                {
                  v216 = &v242 - v252;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v133 + 1, 24);
                  v135 = v252;
                  v134 = (v252 + v216);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v133 + 1, 24);
                  v134 = &v242;
                  v135 = v252;
                }
              }

              v136 = &v135[24 * v253];
              v137 = *v134;
              *(v136 + 2) = *(v134 + 2);
              *v136 = v137;
              v138 = ++v253;
              if (__src)
              {
                v242 = 3;
                v243 = " elements, expect ";
                v244 = 18;
                v139 = &v242;
                v140 = v252;
                if (v138 >= v254)
                {
                  if (v252 <= &v242 && v252 + 24 * v138 > &v242)
                  {
                    v218 = &v242 - v252;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v138 + 1, 24);
                    v140 = v252;
                    v139 = (v252 + v218);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v138 + 1, 24);
                    v139 = &v242;
                    v140 = v252;
                  }
                }

                v141 = &v140[24 * v253];
                v142 = *v139;
                *(v141 + 2) = *(v139 + 2);
                *v141 = v142;
                v143 = ++v253;
                if (__src)
                {
                  v242 = 5;
                  v243 = (2 * v10);
                  v144 = &v242;
                  v145 = v252;
                  if (v143 >= v254)
                  {
                    if (v252 <= &v242 && v252 + 24 * v143 > &v242)
                    {
                      v222 = &v242 - v252;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v143 + 1, 24);
                      v145 = v252;
                      v144 = (v252 + v222);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v143 + 1, 24);
                      v144 = &v242;
                      v145 = v252;
                    }
                  }

                  v146 = &v145[24 * v253];
                  v147 = *v144;
                  *(v146 + 2) = *(v144 + 2);
                  *v146 = v147;
                  v148 = ++v253;
                  if (__src)
                  {
                    v242 = 3;
                    v243 = " elements";
                    v244 = 9;
                    v149 = &v242;
                    v150 = v252;
                    if (v148 >= v254)
                    {
                      if (v252 <= &v242 && v252 + 24 * v148 > &v242)
                      {
                        v226 = &v242 - v252;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v148 + 1, 24);
                        v150 = v252;
                        v149 = (v252 + v226);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v148 + 1, 24);
                        v149 = &v242;
                        v150 = v252;
                      }
                    }

                    v151 = &v150[24 * v253];
                    v152 = *v149;
                    *(v151 + 2) = *(v149 + 2);
                    *v151 = v152;
                    ++v253;
                  }
                }
              }
            }
          }

          v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
          if (__src)
          {
            mlir::InFlightDiagnostic::report(&__src);
          }

          if (v262 == 1)
          {
            if (v261 != &v262)
            {
              free(v261);
            }

            v153 = __p;
            if (__p)
            {
              v154 = v260;
              v155 = __p;
              if (v260 != __p)
              {
                do
                {
                  v154 = sub_10005BEF4(v154 - 1);
                }

                while (v154 != v153);
                v155 = __p;
              }

              v260 = v153;
              operator delete(v155);
            }

            v67 = v257;
            if (!v257)
            {
              goto LABEL_212;
            }

            v156 = v258;
            v69 = v257;
            if (v258 == v257)
            {
              goto LABEL_211;
            }

            do
            {
              v157 = *--v156;
              *v156 = 0;
              if (v157)
              {
                operator delete[]();
              }
            }

            while (v156 != v67);
            goto LABEL_210;
          }
        }

        goto LABEL_214;
      }

      v30 = __src;
      v35 = v263;
    }

    memcpy(v35, v30, 4 * v34);
    goto LABEL_130;
  }

  __src = 0;
  *&v251 = 0;
  p_src = &__src;
  v263 = v4;
  v13 = mlir::Value::getDefiningOp(&v263);
  if (!v13 || !sub_10026C424(&p_src, v13))
  {
    return 1;
  }

  sub_1002714A0(v4, &__src);
  if ((v256 & 1) == 0)
  {
LABEL_292:
    sub_10026AFCC();
    goto LABEL_293;
  }

  v4 = v265;
  v263 = v265;
  v264 = xmmword_1002B0E50;
  v14 = __src;
  v15 = v251;
  if (!v251)
  {
    goto LABEL_51;
  }

  if (__src != &v252)
  {
    v263 = __src;
    v264 = v251;
    goto LABEL_53;
  }

  if (v251 < 0x15)
  {
    v33 = v265;
    v32 = v251;
    goto LABEL_48;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v263, v265, v251, 2);
  v32 = v251;
  if (v251)
  {
    v14 = __src;
    v33 = v263;
LABEL_48:
    memcpy(v33, v14, 2 * v32);
  }

  *&v264 = v15;
  *&v251 = 0;
  if ((v256 & 1) == 0)
  {
    goto LABEL_53;
  }

  v14 = __src;
LABEL_51:
  if (v14 != &v252)
  {
    free(v14);
    v15 = v264;
  }

LABEL_53:
  if (v15 == 2 * v10)
  {
    v20 = 1;
    if (Value > 4 || ((1 << Value) & 0x15) == 0 || !v10)
    {
      goto LABEL_214;
    }

    v36 = 0;
    v37 = 0;
    if (Value == 2)
    {
      v38 = -1;
    }

    else
    {
      v38 = 0;
    }

    while (1)
    {
      v39 = (*(Shape + 8 * v37) + v38);
      if (v39 < *&v263[v36] || v39 < *&v263[v36 + 2])
      {
        break;
      }

      ++v37;
      v36 += 4;
      if (v10 == v37)
      {
        goto LABEL_145;
      }
    }

    v245 = 257;
    v1 = &__src;
    mlir::Operation::emitError(&__src, v12, &v242);
    if (!__src)
    {
      goto LABEL_110;
    }

    LODWORD(p_src) = 3;
    v247 = " padding lengths for dim ";
    v248 = 25;
    v71 = &p_src;
    v72 = v252;
    if (v253 >= v254)
    {
      if (v252 <= &p_src && v252 + 24 * v253 > &p_src)
      {
        v219 = &p_src - v252;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
        v72 = v252;
        v71 = (v252 + v219);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
        v71 = &p_src;
        v72 = v252;
      }
    }

    v73 = &v72[24 * v253];
    v74 = *v71;
    *(v73 + 2) = v71[2];
    *v73 = v74;
    v75 = ++v253;
    if (!__src)
    {
      goto LABEL_110;
    }

    LODWORD(p_src) = 5;
    v247 = v37;
    v76 = &p_src;
    v77 = v252;
    if (v75 >= v254)
    {
      if (v252 <= &p_src && v252 + 24 * v75 > &p_src)
      {
        v223 = &p_src - v252;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v75 + 1, 24);
        v77 = v252;
        v76 = (v252 + v223);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v75 + 1, 24);
        v76 = &p_src;
        v77 = v252;
      }
    }

    v78 = &v77[24 * v253];
    v79 = *v76;
    *(v78 + 2) = v76[2];
    *v78 = v79;
    v80 = ++v253;
    if (!__src)
    {
      goto LABEL_110;
    }

    LODWORD(p_src) = 3;
    v247 = " is ";
    v248 = 4;
    v81 = &p_src;
    v82 = v252;
    if (v80 >= v254)
    {
      if (v252 <= &p_src && v252 + 24 * v80 > &p_src)
      {
        v227 = &p_src - v252;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v80 + 1, 24);
        v82 = v252;
        v81 = (v252 + v227);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v80 + 1, 24);
        v81 = &p_src;
        v82 = v252;
      }
    }

    v83 = &v82[24 * v253];
    v84 = *v81;
    *(v83 + 2) = v81[2];
    *v83 = v84;
    v85 = ++v253;
    if (!__src)
    {
      goto LABEL_110;
    }

    v86 = *&v263[v36];
    LODWORD(p_src) = 2;
    v247 = v86;
    v87 = &p_src;
    v88 = v252;
    if (v85 >= v254)
    {
      if (v252 <= &p_src && v252 + 24 * v85 > &p_src)
      {
        v229 = &p_src - v252;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v85 + 1, 24);
        v88 = v252;
        v87 = (v252 + v229);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v85 + 1, 24);
        v87 = &p_src;
        v88 = v252;
      }
    }

    v89 = &v88[24 * v253];
    v90 = *v87;
    *(v89 + 2) = v87[2];
    *v89 = v90;
    v91 = ++v253;
    if (!__src)
    {
      goto LABEL_110;
    }

    LODWORD(p_src) = 3;
    v247 = " and ";
    v248 = 5;
    v92 = &p_src;
    v93 = v252;
    if (v91 >= v254)
    {
      if (v252 <= &p_src && v252 + 24 * v91 > &p_src)
      {
        v231 = &p_src - v252;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v91 + 1, 24);
        v93 = v252;
        v92 = (v252 + v231);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v91 + 1, 24);
        v92 = &p_src;
        v93 = v252;
      }
    }

    v94 = &v93[24 * v253];
    v95 = *v92;
    *(v94 + 2) = v92[2];
    *v94 = v95;
    v96 = ++v253;
    if (!__src)
    {
      goto LABEL_110;
    }

    v97 = *&v263[v36 + 2];
    LODWORD(p_src) = 2;
    v247 = v97;
    v98 = &p_src;
    v99 = v252;
    if (v96 >= v254)
    {
      if (v252 <= &p_src && v252 + 24 * v96 > &p_src)
      {
        v233 = &p_src - v252;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v96 + 1, 24);
        v99 = v252;
        v98 = (v252 + v233);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v96 + 1, 24);
        v98 = &p_src;
        v99 = v252;
      }
    }

    v100 = &v99[24 * v253];
    v101 = *v98;
    *(v100 + 2) = v98[2];
    *v100 = v101;
    v102 = ++v253;
    if (!__src)
    {
      goto LABEL_110;
    }

    LODWORD(p_src) = 3;
    v247 = " which is higher than max value ";
    v248 = 32;
    v103 = &p_src;
    v104 = v252;
    if (v102 >= v254)
    {
      if (v252 <= &p_src && v252 + 24 * v102 > &p_src)
      {
        v235 = &p_src - v252;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v102 + 1, 24);
        v104 = v252;
        v103 = (v252 + v235);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v102 + 1, 24);
        v103 = &p_src;
        v104 = v252;
      }
    }

    v105 = &v104[24 * v253];
    v106 = *v103;
    *(v105 + 2) = v103[2];
    *v105 = v106;
    v107 = ++v253;
    if (!__src)
    {
LABEL_110:
      v117 = mlir::ODIE::Compiler::CoreML::stringifyPaddingMode(Value);
      if (__src)
      {
        v249 = 261;
        p_src = v117;
        v247 = v118;
        mlir::Diagnostic::operator<<(&v251, &p_src);
      }

      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
      if (__src)
      {
        mlir::InFlightDiagnostic::report(&__src);
      }

      if (v262)
      {
        if (v261 != &v262)
        {
          free(v261);
        }

        v119 = __p;
        if (__p)
        {
          v120 = v260;
          v121 = __p;
          if (v260 != __p)
          {
            do
            {
              v120 = sub_10005BEF4(v120 - 1);
            }

            while (v120 != v119);
            v121 = __p;
          }

          v260 = v119;
          operator delete(v121);
        }

        v67 = v257;
        if (!v257)
        {
          goto LABEL_212;
        }

        v122 = v258;
        v69 = v257;
        if (v258 == v257)
        {
LABEL_211:
          v258 = v67;
          operator delete(v69);
LABEL_212:
          if (v252 != v255)
          {
            free(v252);
          }

          goto LABEL_214;
        }

        do
        {
          v123 = *--v122;
          *v122 = 0;
          if (v123)
          {
            operator delete[]();
          }
        }

        while (v122 != v67);
LABEL_210:
        v69 = v257;
        goto LABEL_211;
      }

      goto LABEL_214;
    }

    LODWORD(p_src) = 2;
    v247 = v39;
    v108 = &p_src;
    v109 = v252;
    if (v107 < v254)
    {
LABEL_107:
      v110 = &v109[3 * v253];
      v111 = *v108;
      v110[2] = v108[2];
      *v110 = v111;
      v112 = ++v253;
      if (__src)
      {
        LODWORD(p_src) = 3;
        v247 = " for mode ";
        v248 = 10;
        v113 = &p_src;
        v114 = v252;
        if (v112 >= v254)
        {
          if (v252 <= &p_src && v252 + 24 * v112 > &p_src)
          {
            v239 = &p_src - v252;
            llvm::SmallVectorBase<unsigned int>::grow_pod((v1 + 3), v255, v112 + 1, 24);
            v114 = v252;
            v113 = (v252 + v239);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod((v1 + 3), v255, v112 + 1, 24);
            v113 = &p_src;
            v114 = v252;
          }
        }

        v115 = &v114[24 * v253];
        v116 = *v113;
        *(v115 + 2) = v113[2];
        *v115 = v116;
        ++v253;
      }

      goto LABEL_110;
    }

LABEL_293:
    if (v109 <= v108 && &v109[3 * v107] > v108)
    {
      v237 = (&p_src - v109);
      llvm::SmallVectorBase<unsigned int>::grow_pod((v1 + 3), v255, v107 + 1, 24);
      v109 = v252;
      v108 = &v237[v252];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v1 + 3), v255, v107 + 1, 24);
      v108 = &p_src;
      v109 = v252;
    }

    goto LABEL_107;
  }

  v249 = 257;
  mlir::Operation::emitError(&__src, v12, &p_src);
  if (__src)
  {
    v242 = 3;
    v243 = " padding lengths has ";
    v244 = 21;
    v40 = &v242;
    v41 = v252;
    if (v253 >= v254)
    {
      if (v252 <= &v242 && v252 + 24 * v253 > &v242)
      {
        v213 = &v242 - v252;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
        v41 = v252;
        v40 = (v252 + v213);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v253 + 1, 24);
        v40 = &v242;
        v41 = v252;
      }
    }

    v42 = &v41[24 * v253];
    v43 = *v40;
    *(v42 + 2) = *(v40 + 2);
    *v42 = v43;
    v44 = ++v253;
    if (__src)
    {
      v242 = 5;
      v243 = v264;
      v45 = &v242;
      v46 = v252;
      if (v44 >= v254)
      {
        if (v252 <= &v242 && v252 + 24 * v44 > &v242)
        {
          v215 = &v242 - v252;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v44 + 1, 24);
          v46 = v252;
          v45 = (v252 + v215);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v44 + 1, 24);
          v45 = &v242;
          v46 = v252;
        }
      }

      v47 = &v46[24 * v253];
      v48 = *v45;
      *(v47 + 2) = *(v45 + 2);
      *v47 = v48;
      v49 = ++v253;
      if (__src)
      {
        v242 = 3;
        v243 = " elements, expect ";
        v244 = 18;
        v50 = &v242;
        v51 = v252;
        if (v49 >= v254)
        {
          if (v252 <= &v242 && v252 + 24 * v49 > &v242)
          {
            v217 = &v242 - v252;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v49 + 1, 24);
            v51 = v252;
            v50 = (v252 + v217);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v49 + 1, 24);
            v50 = &v242;
            v51 = v252;
          }
        }

        v52 = &v51[24 * v253];
        v53 = *v50;
        *(v52 + 2) = *(v50 + 2);
        *v52 = v53;
        v54 = ++v253;
        if (__src)
        {
          v242 = 5;
          v243 = (2 * v10);
          v55 = &v242;
          v56 = v252;
          if (v54 >= v254)
          {
            if (v252 <= &v242 && v252 + 24 * v54 > &v242)
            {
              v221 = &v242 - v252;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v54 + 1, 24);
              v56 = v252;
              v55 = (v252 + v221);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v54 + 1, 24);
              v55 = &v242;
              v56 = v252;
            }
          }

          v57 = &v56[24 * v253];
          v58 = *v55;
          *(v57 + 2) = *(v55 + 2);
          *v57 = v58;
          v59 = ++v253;
          if (__src)
          {
            v242 = 3;
            v243 = " elements";
            v244 = 9;
            v60 = &v242;
            v61 = v252;
            if (v59 >= v254)
            {
              if (v252 <= &v242 && v252 + 24 * v59 > &v242)
              {
                v225 = &v242 - v252;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v59 + 1, 24);
                v61 = v252;
                v60 = (v252 + v225);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, v255, v59 + 1, 24);
                v60 = &v242;
                v61 = v252;
              }
            }

            v62 = &v61[24 * v253];
            v63 = *v60;
            *(v62 + 2) = *(v60 + 2);
            *v62 = v63;
            ++v253;
          }
        }
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
  if (__src)
  {
    mlir::InFlightDiagnostic::report(&__src);
  }

  if (v262 == 1)
  {
    if (v261 != &v262)
    {
      free(v261);
    }

    v64 = __p;
    if (__p)
    {
      v65 = v260;
      v66 = __p;
      if (v260 != __p)
      {
        do
        {
          v65 = sub_10005BEF4(v65 - 1);
        }

        while (v65 != v64);
        v66 = __p;
      }

      v260 = v64;
      operator delete(v66);
    }

    v67 = v257;
    if (!v257)
    {
      goto LABEL_212;
    }

    v68 = v258;
    v69 = v257;
    if (v258 == v257)
    {
      goto LABEL_211;
    }

    do
    {
      v70 = *--v68;
      *v68 = 0;
      if (v70)
      {
        operator delete[]();
      }
    }

    while (v68 != v67);
    goto LABEL_210;
  }

LABEL_214:
  v31 = v263;
  if (v263 != v4)
  {
LABEL_215:
    free(v31);
  }

  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::ReverseOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 2)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ReverseOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 2)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::ReverseOp::verify(mlir::Operation **this)
{
  v2 = *(*this + 9);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v222 = *(v4 + 1) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v222))
  {
    return 1;
  }

  Shape = mlir::RankedTensorType::getShape(&v222);
  if (v6)
  {
    v7 = 8 * v6;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

LABEL_6:
  v221 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v221);
  v9 = v8;
  v10 = mlir::RankedTensorType::getShape(&v222);
  if (mlir::ShapedType::getNumElements(v10, v11) > v9)
  {
    v249[4] = 257;
    p_src = &__src;
    mlir::OpState::emitError(this, &v247, &__src);
    if (!__src)
    {
LABEL_10:
      v18 = mlir::RankedTensorType::getShape(&v222);
      NumElements = mlir::ShapedType::getNumElements(v18, v19);
      if (__src)
      {
        LODWORD(v223) = 2;
        v224 = NumElements;
        v21 = &v223;
        v22 = v236;
        if (v237 >= v238)
        {
          if (v236 <= &v223 && v236 + 24 * v237 > &v223)
          {
            v198 = &v223 - v236;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v22 = v236;
            v21 = (v236 + v198);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v21 = &v223;
            v22 = v236;
          }
        }

        v23 = &v22[24 * v237];
        v24 = *v21;
        *(v23 + 2) = v21[2];
        *v23 = v24;
        v25 = ++v237;
        if (__src)
        {
          LODWORD(v223) = 3;
          v224 = " must be <= input rank ";
          v225 = 23;
          v26 = &v223;
          v27 = v236;
          if (v25 >= v238)
          {
            if (v236 <= &v223 && v236 + 24 * v25 > &v223)
            {
              v199 = &v223 - v236;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v25 + 1, 24);
              v27 = v236;
              v26 = (v236 + v199);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v25 + 1, 24);
              v26 = &v223;
              v27 = v236;
            }
          }

          v28 = &v27[24 * v237];
          v29 = *v26;
          *(v28 + 2) = v26[2];
          *v28 = v29;
          v30 = ++v237;
          if (__src)
          {
            LODWORD(v223) = 2;
            v224 = v9;
            v31 = &v223;
            v32 = v236;
            if (v30 >= v238)
            {
              if (v236 <= &v223 && v236 + 24 * v30 > &v223)
              {
                v200 = &v223 - v236;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v30 + 1, 24);
                v32 = v236;
                v31 = (v236 + v200);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v30 + 1, 24);
                v31 = &v223;
                v32 = v236;
              }
            }

            v33 = &v32[24 * v237];
            v34 = *v31;
            *(v33 + 2) = v31[2];
            *v33 = v34;
            ++v237;
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
      v36 = result;
      if (__src)
      {
        mlir::InFlightDiagnostic::report(&__src);
        result = v36;
      }

      if (v246 == 1)
      {
        if (v245 != &v246)
        {
          free(v245);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v244;
          v39 = __p;
          if (v244 != __p)
          {
            do
            {
              v38 = sub_10005BEF4(v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v244 = v37;
          operator delete(v39);
        }

        v40 = v241;
        result = v36;
        if (v241)
        {
          v41 = v242;
          v42 = v241;
          if (v242 != v241)
          {
            do
            {
              v43 = *--v41;
              *v41 = 0;
              if (v43)
              {
                operator delete[]();
              }
            }

            while (v41 != v40);
            v42 = v241;
          }

          v242 = v40;
          operator delete(v42);
          result = v36;
        }

        if (v236 != v239)
        {
          free(v236);
          return v36;
        }
      }

      return result;
    }

    LODWORD(v223) = 3;
    v224 = " number of dimensions ";
    v225 = 22;
    v13 = v237;
    v14 = &v223;
    v15 = v236;
    if (v237 < v238)
    {
LABEL_9:
      v16 = &v15[24 * v237];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v237;
      goto LABEL_10;
    }

    if (v236 > &v223 || v236 + 24 * v237 <= &v223)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
      v14 = &v223;
      v15 = v236;
      goto LABEL_9;
    }

LABEL_300:
    v197 = (&v223 - v15);
    llvm::SmallVectorBase<unsigned int>::grow_pod(p_src + 24, v239, v13 + 1, 24);
    v15 = v236;
    v14 = &v197[v236];
    goto LABEL_9;
  }

  __src = 0;
  *&v235 = 0;
  v223 = &__src;
  v247 = v4;
  DefiningOp = mlir::Value::getDefiningOp(&v247);
  if (!DefiningOp || !sub_10026C424(&v223, DefiningOp))
  {
    return 1;
  }

  __src = mlir::RankedTensorType::getElementType(&v222);
  isSignedInteger = mlir::Type::isSignedInteger(&__src, 16);
  p_src = *this;
  if (!isSignedInteger)
  {
    sub_10020E8BC(*(*(p_src + 9) + 56), &__src);
    if ((v240 & 1) == 0)
    {
      goto LABEL_299;
    }

    v46 = &v248 + 8;
    v247 = &v248 + 8;
    *&v248 = 0xC00000000;
    v49 = v235;
    v50 = __src;
    if (!v235)
    {
      goto LABEL_68;
    }

    if (__src != &v235 + 8)
    {
      v247 = __src;
      *&v248 = v235;
      v228 = 0;
      v229 = 0;
      v230 = 0;
LABEL_143:
      v56 = &v50[v49];
      while (1)
      {
LABEL_144:
        v126 = *v50;
        v227 = *v50;
        if (v230)
        {
          v127 = (v230 - 1) & (37 * v126);
          v128 = *(v228 + v127);
          if (v126 == v128)
          {
LABEL_146:
            if (v127 != v230)
            {
              v226 = 257;
              mlir::Operation::emitError(&__src, p_src, &v223);
              if (__src)
              {
                v231 = 3;
                v232 = " dimension ";
                v233 = 11;
                v175 = &v231;
                v176 = v236;
                if (v237 >= v238)
                {
                  if (v236 <= &v231 && v236 + 24 * v237 > &v231)
                  {
                    v204 = &v231 - v236;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                    v176 = v236;
                    v175 = (v236 + v204);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                    v175 = &v231;
                    v176 = v236;
                  }
                }

                v177 = &v176[24 * v237];
                v178 = *v175;
                *(v177 + 2) = *(v175 + 2);
                *v177 = v178;
                v179 = ++v237;
                if (__src)
                {
                  v231 = 2;
                  v232 = v227;
                  v180 = &v231;
                  v181 = v236;
                  if (v179 >= v238)
                  {
                    if (v236 <= &v231 && v236 + 24 * v179 > &v231)
                    {
                      v208 = &v231 - v236;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v179 + 1, 24);
                      v181 = v236;
                      v180 = (v236 + v208);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v179 + 1, 24);
                      v180 = &v231;
                      v181 = v236;
                    }
                  }

                  v182 = &v181[24 * v237];
                  v183 = *v180;
                  *(v182 + 2) = *(v180 + 2);
                  *v182 = v183;
                  v184 = ++v237;
                  if (__src)
                  {
                    v231 = 3;
                    v232 = " is specified more than once in dimensions operand";
                    v233 = 50;
                    v185 = &v231;
                    v186 = v236;
                    if (v184 >= v238)
                    {
                      if (v236 <= &v231 && v236 + 24 * v184 > &v231)
                      {
                        v212 = &v231 - v236;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v184 + 1, 24);
                        v186 = v236;
                        v185 = (v236 + v212);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v184 + 1, 24);
                        v185 = &v231;
                        v186 = v236;
                      }
                    }

                    v187 = &v186[24 * v237];
                    v188 = *v185;
                    *(v187 + 2) = *(v185 + 2);
                    *v187 = v188;
                    ++v237;
                  }
                }
              }

              v166 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
              v167 = v166;
              if (__src)
              {
                mlir::InFlightDiagnostic::report(&__src);
                v166 = v167;
              }

              if (v246 == 1)
              {
                if (v245 != &v246)
                {
                  free(v245);
                  v166 = v167;
                }

                v189 = __p;
                if (__p)
                {
                  v190 = v244;
                  v191 = __p;
                  if (v244 != __p)
                  {
                    do
                    {
                      v190 = sub_10005BEF4(v190 - 1);
                    }

                    while (v190 != v189);
                    v191 = __p;
                  }

                  v244 = v189;
                  operator delete(v191);
                  v166 = v167;
                }

                v171 = v241;
                if (v241)
                {
                  v192 = v242;
                  v173 = v241;
                  if (v242 != v241)
                  {
                    do
                    {
                      v193 = *--v192;
                      *v192 = 0;
                      if (v193)
                      {
                        operator delete[]();
                      }
                    }

                    while (v192 != v171);
LABEL_218:
                    v173 = v241;
                  }

LABEL_219:
                  v242 = v171;
                  operator delete(v173);
                  v166 = v167;
                }

LABEL_220:
                if (v236 != v239)
                {
                  free(v236);
                  v166 = v167;
                }
              }

LABEL_222:
              v55 = v166;
LABEL_223:
              v194 = v228;
              v195 = (4 * v230);
              v196 = 4;
              goto LABEL_224;
            }
          }

          else
          {
            v130 = 1;
            while (v128 != 0x7FFFFFFF)
            {
              v131 = v127 + v130++;
              v127 = v131 & (v230 - 1);
              v128 = *(v228 + v127);
              if (v126 == v128)
              {
                goto LABEL_146;
              }
            }
          }
        }

        sub_100271B38(&v228, &v227, &__src);
        if (v227 < -v9 || v9 <= v227)
        {
          v226 = 257;
          mlir::Operation::emitError(&__src, p_src, &v223);
          if (__src)
          {
            v231 = 3;
            v232 = " dimension ";
            v233 = 11;
            v132 = &v231;
            v133 = v236;
            if (v237 >= v238)
            {
              if (v236 <= &v231 && v236 + 24 * v237 > &v231)
              {
                v202 = &v231 - v236;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                v133 = v236;
                v132 = (v236 + v202);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                v132 = &v231;
                v133 = v236;
              }
            }

            v134 = &v133[24 * v237];
            v135 = *v132;
            *(v134 + 2) = *(v132 + 2);
            *v134 = v135;
            v136 = ++v237;
            if (__src)
            {
              v231 = 2;
              v232 = v227;
              v137 = &v231;
              v138 = v236;
              if (v136 >= v238)
              {
                if (v236 <= &v231 && v236 + 24 * v136 > &v231)
                {
                  v206 = &v231 - v236;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v136 + 1, 24);
                  v138 = v236;
                  v137 = (v236 + v206);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v136 + 1, 24);
                  v137 = &v231;
                  v138 = v236;
                }
              }

              v139 = &v138[24 * v237];
              v140 = *v137;
              *(v139 + 2) = *(v137 + 2);
              *v139 = v140;
              v141 = ++v237;
              if (__src)
              {
                v231 = 3;
                v232 = " is beyond the legal range [";
                v233 = 28;
                v142 = &v231;
                v143 = v236;
                if (v141 >= v238)
                {
                  if (v236 <= &v231 && v236 + 24 * v141 > &v231)
                  {
                    v210 = &v231 - v236;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v141 + 1, 24);
                    v143 = v236;
                    v142 = (v236 + v210);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v141 + 1, 24);
                    v142 = &v231;
                    v143 = v236;
                  }
                }

                v144 = &v143[24 * v237];
                v145 = *v142;
                *(v144 + 2) = *(v142 + 2);
                *v144 = v145;
                v146 = ++v237;
                if (__src)
                {
                  v231 = 2;
                  v232 = -v9;
                  v147 = &v231;
                  v148 = v236;
                  if (v146 >= v238)
                  {
                    if (v236 <= &v231 && v236 + 24 * v146 > &v231)
                    {
                      v214 = &v231 - v236;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v146 + 1, 24);
                      v148 = v236;
                      v147 = (v236 + v214);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v146 + 1, 24);
                      v147 = &v231;
                      v148 = v236;
                    }
                  }

                  v149 = &v148[24 * v237];
                  v150 = *v147;
                  *(v149 + 2) = *(v147 + 2);
                  *v149 = v150;
                  v151 = ++v237;
                  if (__src)
                  {
                    v231 = 3;
                    v232 = ", ";
                    v233 = 2;
                    v152 = &v231;
                    v153 = v236;
                    if (v151 >= v238)
                    {
                      if (v236 <= &v231 && v236 + 24 * v151 > &v231)
                      {
                        v216 = &v231 - v236;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v151 + 1, 24);
                        v153 = v236;
                        v152 = (v236 + v216);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v151 + 1, 24);
                        v152 = &v231;
                        v153 = v236;
                      }
                    }

                    v154 = &v153[24 * v237];
                    v155 = *v152;
                    *(v154 + 2) = *(v152 + 2);
                    *v154 = v155;
                    v156 = ++v237;
                    if (__src)
                    {
                      v231 = 2;
                      v232 = v9;
                      v157 = &v231;
                      v158 = v236;
                      if (v156 >= v238)
                      {
                        if (v236 <= &v231 && v236 + 24 * v156 > &v231)
                        {
                          v218 = &v231 - v236;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v156 + 1, 24);
                          v158 = v236;
                          v157 = (v236 + v218);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v156 + 1, 24);
                          v157 = &v231;
                          v158 = v236;
                        }
                      }

                      v159 = &v158[24 * v237];
                      v160 = *v157;
                      *(v159 + 2) = *(v157 + 2);
                      *v159 = v160;
                      v161 = ++v237;
                      if (__src)
                      {
                        v231 = 3;
                        v232 = ")";
                        v233 = 1;
                        v162 = &v231;
                        v163 = v236;
                        if (v161 >= v238)
                        {
                          if (v236 <= &v231 && v236 + 24 * v161 > &v231)
                          {
                            v220 = &v231 - v236;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v161 + 1, 24);
                            v163 = v236;
                            v162 = (v236 + v220);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v161 + 1, 24);
                            v162 = &v231;
                            v163 = v236;
                          }
                        }

                        v164 = &v163[24 * v237];
                        v165 = *v162;
                        *(v164 + 2) = *(v162 + 2);
                        *v164 = v165;
                        ++v237;
                      }
                    }
                  }
                }
              }
            }
          }

          v166 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
          v167 = v166;
          if (__src)
          {
            mlir::InFlightDiagnostic::report(&__src);
            v166 = v167;
          }

          if (v246 == 1)
          {
            if (v245 != &v246)
            {
              free(v245);
              v166 = v167;
            }

            v168 = __p;
            if (__p)
            {
              v169 = v244;
              v170 = __p;
              if (v244 != __p)
              {
                do
                {
                  v169 = sub_10005BEF4(v169 - 1);
                }

                while (v169 != v168);
                v170 = __p;
              }

              v244 = v168;
              operator delete(v170);
              v166 = v167;
            }

            v171 = v241;
            if (v241)
            {
              v172 = v242;
              v173 = v241;
              if (v242 != v241)
              {
                do
                {
                  v174 = *--v172;
                  *v172 = 0;
                  if (v174)
                  {
                    operator delete[]();
                  }
                }

                while (v172 != v171);
                goto LABEL_218;
              }

              goto LABEL_219;
            }

            goto LABEL_220;
          }

          goto LABEL_222;
        }

        if (++v50 == v56)
        {
          goto LABEL_157;
        }
      }
    }

    if (v235 < 0xD)
    {
      v54 = &v248 + 8;
      v53 = v235;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v247, &v248 + 8, v235, 4);
      v53 = v235;
      if (!v235)
      {
LABEL_66:
        LODWORD(v248) = v49;
        LODWORD(v235) = 0;
        if ((v240 & 1) == 0)
        {
          v228 = 0;
          v229 = 0;
          v230 = 0;
          v50 = v247;
          goto LABEL_143;
        }

        v50 = __src;
LABEL_68:
        if (v50 != (&v235 + 8))
        {
          free(v50);
          LODWORD(v49) = v248;
        }

        v228 = 0;
        v229 = 0;
        v230 = 0;
        if (v49)
        {
          v50 = v247;
          v56 = &v247[4 * v49];
          goto LABEL_144;
        }

LABEL_157:
        v55 = 1;
        goto LABEL_223;
      }

      v50 = __src;
      v54 = v247;
    }

    memcpy(v54, v50, 4 * v53);
    goto LABEL_66;
  }

  sub_1002714A0(*(*(p_src + 9) + 56), &__src);
  if ((v240 & 1) == 0)
  {
LABEL_299:
    sub_10026AFCC();
    goto LABEL_300;
  }

  v46 = v249;
  v247 = v249;
  v248 = xmmword_1002B0E50;
  v47 = __src;
  v48 = v235;
  if (!v235)
  {
    goto LABEL_60;
  }

  if (__src == &v236)
  {
    if (v235 < 0x15)
    {
      v52 = v249;
      v51 = v235;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v247, v249, v235, 2);
      v51 = v235;
      if (!v235)
      {
LABEL_58:
        *&v248 = v48;
        *&v235 = 0;
        if ((v240 & 1) == 0)
        {
          v228 = 0;
          v229 = 0;
          v230 = 0;
LABEL_73:
          v47 = v247;
          goto LABEL_74;
        }

        v47 = __src;
LABEL_60:
        if (v47 != &v236)
        {
          free(v47);
          v48 = v248;
        }

        v228 = 0;
        v229 = 0;
        v230 = 0;
        if (!v48)
        {
LABEL_63:
          v55 = 1;
          goto LABEL_217;
        }

        goto LABEL_73;
      }

      v47 = __src;
      v52 = v247;
    }

    memcpy(v52, v47, 2 * v51);
    goto LABEL_58;
  }

  v247 = __src;
  v248 = v235;
  v228 = 0;
  v229 = 0;
  v230 = 0;
LABEL_74:
  v57 = v47 + v48;
  while (1)
  {
    v58 = *v47;
    LOWORD(v227) = *v47;
    if (!v230)
    {
      goto LABEL_78;
    }

    v59 = (v230 - 1) & (37 * v58);
    v60 = *(v228 + v59);
    if (v60 == v58)
    {
      break;
    }

    v62 = 1;
    while (v60 != 0x7FFF)
    {
      v63 = v59 + v62++;
      v59 = v63 & (v230 - 1);
      v60 = *(v228 + v59);
      if (v60 == v58)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    sub_10027173C(&v228, &v227, &__src);
    if (v227 < -v9 || v9 <= v227)
    {
      v226 = 257;
      mlir::Operation::emitError(&__src, p_src, &v223);
      if (__src)
      {
        v231 = 3;
        v232 = " dimension ";
        v233 = 11;
        v64 = &v231;
        v65 = v236;
        if (v237 >= v238)
        {
          if (v236 <= &v231 && v236 + 24 * v237 > &v231)
          {
            v201 = &v231 - v236;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v65 = v236;
            v64 = (v236 + v201);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v64 = &v231;
            v65 = v236;
          }
        }

        v66 = &v65[24 * v237];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        v68 = ++v237;
        if (__src)
        {
          v231 = 2;
          v232 = v227;
          v69 = &v231;
          v70 = v236;
          if (v68 >= v238)
          {
            if (v236 <= &v231 && v236 + 24 * v68 > &v231)
            {
              v205 = &v231 - v236;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v68 + 1, 24);
              v70 = v236;
              v69 = (v236 + v205);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v68 + 1, 24);
              v69 = &v231;
              v70 = v236;
            }
          }

          v71 = &v70[24 * v237];
          v72 = *v69;
          *(v71 + 2) = *(v69 + 2);
          *v71 = v72;
          v73 = ++v237;
          if (__src)
          {
            v231 = 3;
            v232 = " is beyond the legal range [";
            v233 = 28;
            v74 = &v231;
            v75 = v236;
            if (v73 >= v238)
            {
              if (v236 <= &v231 && v236 + 24 * v73 > &v231)
              {
                v209 = &v231 - v236;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v73 + 1, 24);
                v75 = v236;
                v74 = (v236 + v209);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v73 + 1, 24);
                v74 = &v231;
                v75 = v236;
              }
            }

            v76 = &v75[24 * v237];
            v77 = *v74;
            *(v76 + 2) = *(v74 + 2);
            *v76 = v77;
            v78 = ++v237;
            if (__src)
            {
              v231 = 2;
              v232 = -v9;
              v79 = &v231;
              v80 = v236;
              if (v78 >= v238)
              {
                if (v236 <= &v231 && v236 + 24 * v78 > &v231)
                {
                  v213 = &v231 - v236;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v78 + 1, 24);
                  v80 = v236;
                  v79 = (v236 + v213);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v78 + 1, 24);
                  v79 = &v231;
                  v80 = v236;
                }
              }

              v81 = &v80[24 * v237];
              v82 = *v79;
              *(v81 + 2) = *(v79 + 2);
              *v81 = v82;
              v83 = ++v237;
              if (__src)
              {
                v231 = 3;
                v232 = ", ";
                v233 = 2;
                v84 = &v231;
                v85 = v236;
                if (v83 >= v238)
                {
                  if (v236 <= &v231 && v236 + 24 * v83 > &v231)
                  {
                    v215 = &v231 - v236;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v83 + 1, 24);
                    v85 = v236;
                    v84 = (v236 + v215);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v83 + 1, 24);
                    v84 = &v231;
                    v85 = v236;
                  }
                }

                v86 = &v85[24 * v237];
                v87 = *v84;
                *(v86 + 2) = *(v84 + 2);
                *v86 = v87;
                v88 = ++v237;
                if (__src)
                {
                  v231 = 2;
                  v232 = v9;
                  v89 = &v231;
                  v90 = v236;
                  if (v88 >= v238)
                  {
                    if (v236 <= &v231 && v236 + 24 * v88 > &v231)
                    {
                      v217 = &v231 - v236;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v88 + 1, 24);
                      v90 = v236;
                      v89 = (v236 + v217);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v88 + 1, 24);
                      v89 = &v231;
                      v90 = v236;
                    }
                  }

                  v91 = &v90[24 * v237];
                  v92 = *v89;
                  *(v91 + 2) = *(v89 + 2);
                  *v91 = v92;
                  v93 = ++v237;
                  if (__src)
                  {
                    v231 = 3;
                    v232 = ")";
                    v233 = 1;
                    v94 = &v231;
                    v95 = v236;
                    if (v93 >= v238)
                    {
                      if (v236 <= &v231 && v236 + 24 * v93 > &v231)
                      {
                        v219 = &v231 - v236;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v93 + 1, 24);
                        v95 = v236;
                        v94 = (v236 + v219);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v93 + 1, 24);
                        v94 = &v231;
                        v95 = v236;
                      }
                    }

                    v96 = &v95[24 * v237];
                    v97 = *v94;
                    *(v96 + 2) = *(v94 + 2);
                    *v96 = v97;
                    ++v237;
                  }
                }
              }
            }
          }
        }
      }

      v98 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
      v99 = v98;
      if (__src)
      {
        mlir::InFlightDiagnostic::report(&__src);
        v98 = v99;
      }

      if (v246 == 1)
      {
        if (v245 != &v246)
        {
          free(v245);
        }

        v100 = __p;
        if (__p)
        {
          v101 = v244;
          v102 = __p;
          if (v244 != __p)
          {
            do
            {
              v101 = sub_10005BEF4(v101 - 1);
            }

            while (v101 != v100);
            v102 = __p;
          }

          v244 = v100;
          operator delete(v102);
        }

        v103 = v241;
        v98 = v99;
        if (v241)
        {
          v104 = v242;
          v105 = v241;
          if (v242 != v241)
          {
            do
            {
              v106 = *--v104;
              *v104 = 0;
              if (v106)
              {
                operator delete[]();
              }
            }

            while (v104 != v103);
            goto LABEL_212;
          }

          goto LABEL_213;
        }

        goto LABEL_214;
      }

      goto LABEL_216;
    }

    v47 = (v47 + 2);
    if (v47 == v57)
    {
      goto LABEL_63;
    }
  }

LABEL_77:
  if (v59 == v230)
  {
    goto LABEL_78;
  }

  v226 = 257;
  mlir::Operation::emitError(&__src, p_src, &v223);
  if (__src)
  {
    v231 = 3;
    v232 = " dimension ";
    v233 = 11;
    v107 = &v231;
    v108 = v236;
    if (v237 >= v238)
    {
      if (v236 <= &v231 && v236 + 24 * v237 > &v231)
      {
        v203 = &v231 - v236;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
        v108 = v236;
        v107 = (v236 + v203);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
        v107 = &v231;
        v108 = v236;
      }
    }

    v109 = &v108[24 * v237];
    v110 = *v107;
    *(v109 + 2) = *(v107 + 2);
    *v109 = v110;
    v111 = ++v237;
    if (__src)
    {
      v231 = 2;
      v232 = v227;
      v112 = &v231;
      v113 = v236;
      if (v111 >= v238)
      {
        if (v236 <= &v231 && v236 + 24 * v111 > &v231)
        {
          v207 = &v231 - v236;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v111 + 1, 24);
          v113 = v236;
          v112 = (v236 + v207);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v111 + 1, 24);
          v112 = &v231;
          v113 = v236;
        }
      }

      v114 = &v113[24 * v237];
      v115 = *v112;
      *(v114 + 2) = *(v112 + 2);
      *v114 = v115;
      v116 = ++v237;
      if (__src)
      {
        v231 = 3;
        v232 = " is specified more than once in dimensions operand";
        v233 = 50;
        v117 = &v231;
        v118 = v236;
        if (v116 >= v238)
        {
          if (v236 <= &v231 && v236 + 24 * v116 > &v231)
          {
            v211 = &v231 - v236;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v116 + 1, 24);
            v118 = v236;
            v117 = (v236 + v211);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v116 + 1, 24);
            v117 = &v231;
            v118 = v236;
          }
        }

        v119 = &v118[24 * v237];
        v120 = *v117;
        *(v119 + 2) = *(v117 + 2);
        *v119 = v120;
        ++v237;
      }
    }
  }

  v98 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
  v99 = v98;
  if (__src)
  {
    mlir::InFlightDiagnostic::report(&__src);
    v98 = v99;
  }

  if (v246 == 1)
  {
    if (v245 != &v246)
    {
      free(v245);
    }

    v121 = __p;
    if (__p)
    {
      v122 = v244;
      v123 = __p;
      if (v244 != __p)
      {
        do
        {
          v122 = sub_10005BEF4(v122 - 1);
        }

        while (v122 != v121);
        v123 = __p;
      }

      v244 = v121;
      operator delete(v123);
    }

    v103 = v241;
    v98 = v99;
    if (v241)
    {
      v124 = v242;
      v105 = v241;
      if (v242 != v241)
      {
        do
        {
          v125 = *--v124;
          *v124 = 0;
          if (v125)
          {
            operator delete[]();
          }
        }

        while (v124 != v103);
LABEL_212:
        v105 = v241;
      }

LABEL_213:
      v242 = v103;
      operator delete(v105);
      v98 = v99;
    }

LABEL_214:
    if (v236 != v239)
    {
      free(v236);
      v98 = v99;
    }
  }

LABEL_216:
  v55 = v98;
LABEL_217:
  v194 = v228;
  v195 = (2 * v230);
  v196 = 2;
LABEL_224:
  llvm::deallocate_buffer(v194, v195, v196);
  if (v247 != v46)
  {
    free(v247);
  }

  return v55;
}

void mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58[0] = a4;
  v58[1] = a5;
  if (a5 == 4)
  {
    v11 = mlir::ValueRange::dereference_iterator(v58, 2);
    v12 = mlir::ValueRange::dereference_iterator(v58, 1);
    v13 = *(mlir::ValueRange::dereference_iterator(v58, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = 0;
    }

    v53 = v13;
    v14 = *(v12 + 1) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = 0;
    }

    v52 = v14;
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      Shape = mlir::RankedTensorType::getShape(&v53);
      v18 = v17;
      ElementType = mlir::RankedTensorType::getElementType(&v52);
      LOBYTE(v54) = 0;
      v57 = 0;
      v65 = 0;
      *&v66 = 0;
      __src = &v65;
      v69 = v12;
      DefiningOp = mlir::Value::getDefiningOp(&v69);
      if (!DefiningOp || !sub_10026C424(&__src, DefiningOp))
      {
LABEL_93:
        if (v57 == 1 && v54 != v56)
        {
          free(v54);
        }

        return;
      }

      if (!mlir::Type::isSignedInteger(&ElementType, 16))
      {
        if (mlir::Type::isSignedInteger(&ElementType, 32))
        {
          sub_100221490(&v65, Shape, v18, v12, v11);
        }

        else
        {
          sub_100221830(&v65, Shape, v18, v12, v11);
        }

        sub_10021CDBC(&v54, &v65);
        if (v68 != 1)
        {
LABEL_89:
          if (v57 != 1)
          {
            return;
          }

          v40 = v54;
          v41 = v55;
          v42 = mlir::RankedTensorType::getElementType(&v53);
          v43 = mlir::RankedTensorType::get(v40, v41, v42, 0);
          v44 = *(a11 + 8);
          if (v44 >= *(a11 + 12))
          {
            v45 = v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v44 + 1, 8);
            v43 = v45;
            LODWORD(v44) = *(a11 + 8);
          }

          *(*a11 + 8 * v44) = v43;
          ++*(a11 + 8);
          goto LABEL_93;
        }

        v22 = v65;
LABEL_87:
        if (v22 != &v66 + 8)
        {
          free(v22);
        }

        goto LABEL_89;
      }

      sub_1002714A0(v12, &v65);
      if ((v68 & 1) == 0)
      {
        goto LABEL_98;
      }

      v59 = v61;
      v60 = xmmword_1002B0E50;
      v20 = v65;
      v21 = v66;
      if (!v66)
      {
        goto LABEL_34;
      }

      if (v65 != v67)
      {
        v59 = v65;
        v60 = v66;
        goto LABEL_36;
      }

      if (v66 < 0x15)
      {
        v24 = v61;
        v23 = v66;
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v59, v61, v66, 2);
        v23 = v66;
        if (!v66)
        {
LABEL_32:
          *&v60 = v21;
          *&v66 = 0;
          if ((v68 & 1) == 0)
          {
            goto LABEL_36;
          }

          v20 = v65;
LABEL_34:
          if (v20 != v67)
          {
            free(v20);
          }

LABEL_36:
          sub_10026CB40(v11, &v65);
          if (v68)
          {
            v69 = v71;
            v70 = xmmword_1002B0190;
            v25 = v65;
            v26 = v66;
            if (!v66)
            {
              goto LABEL_47;
            }

            if (v65 != v67)
            {
              v69 = v65;
              v70 = v66;
              goto LABEL_49;
            }

            if (v66 < 0x29)
            {
              v28 = v71;
              v27 = v66;
            }

            else
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(&v69, v71, v66, 1);
              v27 = v66;
              if (!v66)
              {
LABEL_45:
                *&v70 = v26;
                *&v66 = 0;
                if ((v68 & 1) == 0)
                {
                  goto LABEL_49;
                }

                v25 = v65;
LABEL_47:
                if (v25 != v67)
                {
                  free(v25);
                }

LABEL_49:
                __src = v64;
                v63 = 0x600000000;
                v29 = (8 * v18) >> 3;
                if (v29 < 7)
                {
                  v30 = 0;
                  v31 = v64;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v64, v29, 8);
                  v30 = v63;
                  v31 = __src;
                }

                v32 = 8 * v18;
                if (v18)
                {
                  memcpy(&v31[8 * v30], Shape, 8 * v18);
                  v30 = v63;
                  v31 = __src;
                }

                v33 = (v30 + v18);
                LODWORD(v63) = v30 + (v32 >> 3);
                if (!v63)
                {
                  v65 = &v66 + 8;
                  *&v66 = 0x600000000;
LABEL_69:
                  v68 = 1;
                  if (v31 != v64)
                  {
                    free(v31);
                  }

                  if (v69 != v71)
                  {
                    free(v69);
                  }

                  if (v59 != v61)
                  {
                    free(v59);
                  }

                  if (v57 == v68)
                  {
                    if (v57)
                    {
                      sub_10005F9E8(&v54, &v65);
                    }
                  }

                  else if (v57)
                  {
                    if (v54 != v56)
                    {
                      free(v54);
                    }

                    v57 = 0;
                  }

                  else
                  {
                    v54 = v56;
                    v55 = 0x600000000;
                    if (v66)
                    {
                      sub_10005F9E8(&v54, &v65);
                    }

                    v57 = 1;
                  }

                  if (v68 != 1)
                  {
                    goto LABEL_89;
                  }

                  v22 = v65;
                  goto LABEL_87;
                }

                v34 = 0;
                v35 = v69;
                v36 = v59;
                do
                {
                  v37 = *(Shape + v34);
                  if (v35[v34] == 1)
                  {
                    v37 = (v37 * v36[v34]);
                  }

                  *&v31[8 * v34++] = v37;
                }

                while (v33 != v34);
                v38 = &v66 + 8;
                v65 = &v66 + 8;
                *&v66 = 0x600000000;
                if (v31 != v64)
                {
                  v65 = v31;
                  *&v66 = __PAIR64__(HIDWORD(v63), v33);
                  __src = v64;
                  HIDWORD(v63) = 0;
                  v31 = v64;
LABEL_68:
                  LODWORD(v63) = 0;
                  goto LABEL_69;
                }

                if (v33 < 7)
                {
                  v39 = v33;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, &v66 + 8, v33, 8);
                  v39 = v63;
                  v31 = __src;
                  if (!v63)
                  {
LABEL_67:
                    LODWORD(v66) = v33;
                    goto LABEL_68;
                  }

                  v38 = v65;
                }

                memcpy(v38, v31, 8 * v39);
                v31 = __src;
                goto LABEL_67;
              }

              v25 = v65;
              v28 = v69;
            }

            memcpy(v28, v25, v27);
            goto LABEL_45;
          }

LABEL_98:
          v46 = sub_10026AFCC();
          sub_100221490(v46, v47, v48, v49, v50);
          return;
        }

        v20 = v65;
        v24 = v59;
      }

      memcpy(v24, v20, 2 * v23);
      goto LABEL_32;
    }
  }

  else
  {

    sub_1001F06E4(a2, a3, "expected exactly 4 operands");
  }
}

void sub_100221490(uint64_t a1, const void *a2, uint64_t a3, void *a4, void *a5)
{
  sub_10020E8BC(a4, &__src);
  if ((v33 & 1) == 0)
  {
LABEL_53:
    sub_10026AFCC();
  }

  __dst = v29;
  v28 = 0xC00000000;
  v9 = v31;
  if (!v31)
  {
    goto LABEL_9;
  }

  if (__src != &v31 + 8)
  {
    __dst = __src;
    v28 = v31;
    __src = &v31 + 8;
    *&v31 = 0;
LABEL_9:
    if (__src != &v31 + 8)
    {
      free(__src);
    }

    goto LABEL_11;
  }

  v10 = v31;
  if (v31 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v29, v31, 4), (v10 = v31) != 0))
  {
    memcpy(__dst, __src, 4 * v10);
  }

  LODWORD(v28) = v9;
  LODWORD(v31) = 0;
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_10026CB40(a5, &__src);
  if ((v33 & 1) == 0)
  {
    goto LABEL_53;
  }

  v34 = v36;
  v35 = xmmword_1002B0190;
  v11 = __src;
  v12 = v31;
  if (!v31)
  {
    goto LABEL_22;
  }

  if (__src != v32)
  {
    v34 = __src;
    v35 = v31;
    goto LABEL_24;
  }

  if (v31 < 0x29)
  {
    v14 = v36;
    v13 = v31;
    goto LABEL_19;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v34, v36, v31, 1);
  v13 = v31;
  if (v31)
  {
    v11 = __src;
    v14 = v34;
LABEL_19:
    memcpy(v14, v11, v13);
  }

  *&v35 = v12;
  *&v31 = 0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = __src;
LABEL_22:
  if (v11 != v32)
  {
    free(v11);
  }

LABEL_24:
  __src = &v31 + 8;
  *&v31 = 0x600000000;
  v15 = (8 * a3) >> 3;
  if (v15 < 7)
  {
    v16 = 0;
    v17 = (&v31 + 8);
    v18 = 8 * a3;
    if (!a3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v31 + 8, v15, 8);
  v16 = v31;
  v17 = __src;
  v18 = 8 * a3;
  if (a3)
  {
LABEL_28:
    memcpy(v17 + 8 * v16, a2, v18);
    v16 = v31;
    v17 = __src;
  }

LABEL_29:
  v19 = v16 + (v18 >> 3);
  LODWORD(v31) = v16 + (v18 >> 3);
  if (!v31)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    goto LABEL_38;
  }

  v20 = 0;
  v21 = v34;
  v22 = __dst;
  do
  {
    v23 = *(a2 + v20);
    if (v21[v20] == 1)
    {
      v23 = (v23 * v22[v20]);
    }

    *(v17 + v20++) = v23;
  }

  while (v19 != v20);
  v24 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (&__src == a1)
  {
LABEL_38:
    *(a1 + 64) = 1;
    if (v17 == (&v31 + 8))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (v17 != (&v31 + 8))
  {
    *a1 = v17;
    v25 = DWORD1(v31);
    *(a1 + 8) = v19;
    *(a1 + 12) = v25;
    __src = &v31 + 8;
    DWORD1(v31) = 0;
    v17 = (&v31 + 8);
    goto LABEL_51;
  }

  if (v19 < 7)
  {
    v26 = v19;
    goto LABEL_49;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v19, 8);
  v26 = v31;
  v17 = __src;
  if (v31)
  {
    v24 = *a1;
LABEL_49:
    memcpy(v24, v17, 8 * v26);
    v17 = __src;
  }

  *(a1 + 8) = v19;
LABEL_51:
  LODWORD(v31) = 0;
  *(a1 + 64) = 1;
  if (v17 != (&v31 + 8))
  {
LABEL_39:
    free(v17);
  }

LABEL_40:
  if (v34 != v36)
  {
    free(v34);
  }

  if (__dst != v29)
  {
    free(__dst);
  }
}

void sub_100221830(uint64_t a1, const void *a2, uint64_t a3, void *a4, void *a5)
{
  sub_10026C6E8(a4, &__src);
  if ((v33 & 1) == 0)
  {
LABEL_53:
    sub_10026AFCC();
  }

  __dst = v29;
  v28 = 0xC00000000;
  v9 = v31;
  if (!v31)
  {
    goto LABEL_9;
  }

  if (__src != &v31 + 8)
  {
    __dst = __src;
    v28 = v31;
    __src = &v31 + 8;
    *&v31 = 0;
LABEL_9:
    if (__src != &v31 + 8)
    {
      free(__src);
    }

    goto LABEL_11;
  }

  v10 = v31;
  if (v31 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v29, v31, 4), (v10 = v31) != 0))
  {
    memcpy(__dst, __src, 4 * v10);
  }

  LODWORD(v28) = v9;
  LODWORD(v31) = 0;
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_10026CB40(a5, &__src);
  if ((v33 & 1) == 0)
  {
    goto LABEL_53;
  }

  v34 = v36;
  v35 = xmmword_1002B0190;
  v11 = __src;
  v12 = v31;
  if (!v31)
  {
    goto LABEL_22;
  }

  if (__src != v32)
  {
    v34 = __src;
    v35 = v31;
    goto LABEL_24;
  }

  if (v31 < 0x29)
  {
    v14 = v36;
    v13 = v31;
    goto LABEL_19;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v34, v36, v31, 1);
  v13 = v31;
  if (v31)
  {
    v11 = __src;
    v14 = v34;
LABEL_19:
    memcpy(v14, v11, v13);
  }

  *&v35 = v12;
  *&v31 = 0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = __src;
LABEL_22:
  if (v11 != v32)
  {
    free(v11);
  }

LABEL_24:
  __src = &v31 + 8;
  *&v31 = 0x600000000;
  v15 = (8 * a3) >> 3;
  if (v15 < 7)
  {
    v16 = 0;
    v17 = (&v31 + 8);
    v18 = 8 * a3;
    if (!a3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v31 + 8, v15, 8);
  v16 = v31;
  v17 = __src;
  v18 = 8 * a3;
  if (a3)
  {
LABEL_28:
    memcpy(v17 + 8 * v16, a2, v18);
    v16 = v31;
    v17 = __src;
  }

LABEL_29:
  v19 = v16 + (v18 >> 3);
  LODWORD(v31) = v16 + (v18 >> 3);
  if (!v31)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    goto LABEL_38;
  }

  v20 = 0;
  v21 = v34;
  v22 = __dst;
  do
  {
    v23 = *(a2 + v20);
    if (v21[v20] == 1)
    {
      v23 = vcvtms_s32_f32(v22[v20] * v23);
    }

    *(v17 + v20++) = v23;
  }

  while (v19 != v20);
  v24 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (&__src == a1)
  {
LABEL_38:
    *(a1 + 64) = 1;
    if (v17 == (&v31 + 8))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (v17 != (&v31 + 8))
  {
    *a1 = v17;
    v25 = DWORD1(v31);
    *(a1 + 8) = v19;
    *(a1 + 12) = v25;
    __src = &v31 + 8;
    DWORD1(v31) = 0;
    v17 = (&v31 + 8);
    goto LABEL_51;
  }

  if (v19 < 7)
  {
    v26 = v19;
    goto LABEL_49;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v19, 8);
  v26 = v31;
  v17 = __src;
  if (v31)
  {
    v24 = *a1;
LABEL_49:
    memcpy(v24, v17, 8 * v26);
    v17 = __src;
  }

  *(a1 + 8) = v19;
LABEL_51:
  LODWORD(v31) = 0;
  *(a1 + 64) = 1;
  if (v17 != (&v31 + 8))
  {
LABEL_39:
    free(v17);
  }

LABEL_40:
  if (v34 != v36)
  {
    free(v34);
  }

  if (__dst != v29)
  {
    free(__dst);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = v25;
  v24 = 0x600000000;
  mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, &v23);
  if ((v11 & 1) == 0)
  {
    v15 = 0;
    v16 = v23;
    if (v23 == v25)
    {
      return v15;
    }

    goto LABEL_12;
  }

  mlir::TypeRange::TypeRange(v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v21, v23, v24);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22[0], v22[1], v21[0], v21[1]))
  {
    v12 = v23;
    v13 = v24;
    *(a11 + 8) = 0;
    if (v13 <= *(a11 + 12))
    {
      if (!v13)
      {
        v17 = 0;
        goto LABEL_10;
      }

      v14 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v13, 8);
      v14 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v14), v12, 8 * v13);
    v17 = *(a11 + 8);
LABEL_10:
    *(a11 + 8) = v17 + v13;
  }

  v15 = 1;
  v16 = v23;
  if (v23 != v25)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verify(mlir::Operation **this)
{
  v2 = *(*(*this + 9) + 88);
  v66[0] = 0;
  v66[1] = 0;
  v63 = v66;
  v61[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v61);
  if (DefiningOp && (sub_10026C424(&v63, DefiningOp) & 1) != 0)
  {
    v4 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v4 = 0;
    }

    v60 = v4;
    if (v4)
    {
      mlir::RankedTensorType::getShape(&v60);
      v66[0] = *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v5 == *mlir::RankedTensorType::getShape(v66))
      {
        return 1;
      }

      v62 = 257;
      mlir::OpState::emitError(this, v61, v66);
      if (v66[0])
      {
        LODWORD(v63) = 3;
        v64 = " Rank of input needs to be same as len(axes), but input.rank == ";
        v65 = 64;
        v27 = &v63;
        v28 = v67;
        if (v68 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v68 > &v63)
          {
            v55 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v28 = v67;
            v27 = (v67 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v27 = &v63;
            v28 = v67;
          }
        }

        v29 = &v28[24 * v68];
        v30 = *v27;
        *(v29 + 2) = v27[2];
        *v29 = v30;
        ++v68;
      }

      mlir::RankedTensorType::getShape(&v60);
      if (v66[0])
      {
        LODWORD(v63) = 2;
        v64 = v31;
        v32 = &v63;
        v33 = v67;
        if (v68 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v68 > &v63)
          {
            v56 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v33 = v67;
            v32 = (v67 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v32 = &v63;
            v33 = v67;
          }
        }

        v34 = &v33[24 * v68];
        v35 = *v32;
        *(v34 + 2) = v32[2];
        *v34 = v35;
        v36 = ++v68;
        if (v66[0])
        {
          LODWORD(v63) = 3;
          v64 = " whereas len(axes) == ";
          v65 = 22;
          v37 = &v63;
          v38 = v67;
          if (v36 >= v69)
          {
            if (v67 <= &v63 && v67 + 24 * v36 > &v63)
            {
              v58 = &v63 - v67;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v36 + 1, 24);
              v38 = v67;
              v37 = (v67 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v36 + 1, 24);
              v37 = &v63;
              v38 = v67;
            }
          }

          v39 = &v38[24 * v68];
          v40 = *v37;
          *(v39 + 2) = v37[2];
          *v39 = v40;
          ++v68;
        }
      }

      v59 = *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
      Shape = mlir::RankedTensorType::getShape(&v59);
      if (v66[0])
      {
        v42 = *Shape;
        LODWORD(v63) = 2;
        v64 = v42;
        v43 = &v63;
        v44 = v67;
        if (v68 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v68 > &v63)
          {
            v57 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v44 = v67;
            v43 = (v67 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v43 = &v63;
            v44 = v67;
          }
        }

        v45 = &v44[24 * v68];
        v46 = *v43;
        *(v45 + 2) = v43[2];
        *v45 = v46;
        ++v68;
      }

      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
      if (v66[0])
      {
        mlir::InFlightDiagnostic::report(v66);
      }

      if (v76 == 1)
      {
        if (v75 != &v76)
        {
          free(v75);
        }

        v47 = __p;
        if (__p)
        {
          v48 = v74;
          v49 = __p;
          if (v74 != __p)
          {
            do
            {
              v48 = sub_10005BEF4(v48 - 1);
            }

            while (v48 != v47);
            v49 = __p;
          }

          v74 = v47;
          operator delete(v49);
        }

        v14 = v71;
        if (!v71)
        {
          goto LABEL_75;
        }

        v50 = v72;
        v16 = v71;
        if (v72 == v71)
        {
LABEL_74:
          v72 = v14;
          operator delete(v16);
LABEL_75:
          if (v67 != v70)
          {
            free(v67);
          }

          return v6;
        }

        do
        {
          v51 = *--v50;
          *v50 = 0;
          if (v51)
          {
            operator delete[]();
          }
        }

        while (v50 != v14);
LABEL_73:
        v16 = v71;
        goto LABEL_74;
      }
    }

    else
    {
      v62 = 257;
      mlir::OpState::emitError(this, v61, v66);
      if (v66[0])
      {
        LODWORD(v63) = 3;
        v65 = 46;
        v18 = &v63;
        v19 = v67;
        if (v68 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v68 > &v63)
          {
            v54 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v19 = v67;
            v18 = (v67 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v18 = &v63;
            v19 = v67;
          }
        }

        v20 = &v19[24 * v68];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v68;
      }

      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
      if (v66[0])
      {
        mlir::InFlightDiagnostic::report(v66);
      }

      if (v76 == 1)
      {
        if (v75 != &v76)
        {
          free(v75);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v74;
          v24 = __p;
          if (v74 != __p)
          {
            do
            {
              v23 = sub_10005BEF4(v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v74 = v22;
          operator delete(v24);
        }

        v14 = v71;
        if (!v71)
        {
          goto LABEL_75;
        }

        v25 = v72;
        v16 = v71;
        if (v72 == v71)
        {
          goto LABEL_74;
        }

        do
        {
          v26 = *--v25;
          *v25 = 0;
          if (v26)
          {
            operator delete[]();
          }
        }

        while (v25 != v14);
        goto LABEL_73;
      }
    }
  }

  else
  {
    v62 = 257;
    mlir::OpState::emitError(this, v61, v66);
    if (v66[0])
    {
      LODWORD(v63) = 3;
      v65 = 61;
      v7 = &v63;
      v8 = v67;
      if (v68 >= v69)
      {
        if (v67 <= &v63 && v67 + 24 * v68 > &v63)
        {
          v53 = &v63 - v67;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
          v8 = v67;
          v7 = (v67 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
          v7 = &v63;
          v8 = v67;
        }
      }

      v9 = &v8[24 * v68];
      v10 = *v7;
      *(v9 + 2) = v7[2];
      *v9 = v10;
      ++v68;
    }

    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
    if (v66[0])
    {
      mlir::InFlightDiagnostic::report(v66);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v74;
        v13 = __p;
        if (v74 != __p)
        {
          do
          {
            v12 = sub_10005BEF4(v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v74 = v11;
        operator delete(v13);
      }

      v14 = v71;
      if (!v71)
      {
        goto LABEL_75;
      }

      v15 = v72;
      v16 = v71;
      if (v72 == v71)
      {
        goto LABEL_74;
      }

      do
      {
        v17 = *--v15;
        *v15 = 0;
        if (v17)
        {
          operator delete[]();
        }
      }

      while (v15 != v14);
      goto LABEL_73;
    }
  }

  return v6;
}

BOOL mlir::ODIE::Compiler::CoreML::RoundOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::RoundOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::CumSumOp::verify(mlir::Operation **this)
{
  v2 = *(*(*this + 9) + 56);
  v68 = 0uLL;
  v58 = &v68;
  *&v62[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v62);
  if (!DefiningOp || !sub_10026C424(&v58, DefiningOp))
  {
    return 1;
  }

  *&v68 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v68);
  v5 = v4;
  v64 = 0;
  v6 = *(*(*this + 9) + 56);
  *&v62[0] = &v64;
  *&v68 = v6;
  v7 = mlir::Value::getDefiningOp(&v68);
  if (v7 && (sub_100297C38(v62, v7) & 1) != 0)
  {
    sub_1000C1790(&v64, v62);
    v68 = v62[0];
    v69 = v62[1];
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v68, &v58);
    if (v59 > 0x40)
    {
      v21 = *v58;
      operator delete[]();
    }

    if (v59)
    {
      v8 = (v58 << -v59) >> -v59;
    }

    else
    {
      v8 = 0;
    }

    if ((v8 & 0x8000000000000000) == 0 && v8 < v5)
    {
      return 1;
    }

    v61 = 257;
    mlir::OpState::emitError(this, &v58, &v68);
    if (v68)
    {
      v65 = 3;
      v66 = "Axis passed to cumsum is:";
      v67 = 25;
      v23 = &v65;
      v24 = *(&v69 + 1);
      if (v70 >= v71)
      {
        if (*(&v69 + 1) <= &v65 && *(&v69 + 1) + 24 * v70 > &v65)
        {
          v53 = &v65 - *(&v69 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v70 + 1, 24);
          v24 = *(&v69 + 1);
          v23 = &v53[*(&v69 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v70 + 1, 24);
          v23 = &v65;
          v24 = *(&v69 + 1);
        }
      }

      v25 = v24 + 24 * v70;
      v26 = *v23;
      *(v25 + 16) = *(v23 + 2);
      *v25 = v26;
      v27 = ++v70;
      if (v68)
      {
        v65 = 2;
        v66 = v8;
        v28 = &v65;
        v29 = *(&v69 + 1);
        if (v27 >= v71)
        {
          if (*(&v69 + 1) <= &v65 && *(&v69 + 1) + 24 * v27 > &v65)
          {
            v54 = &v65 - *(&v69 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v27 + 1, 24);
            v29 = *(&v69 + 1);
            v28 = &v54[*(&v69 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v27 + 1, 24);
            v28 = &v65;
            v29 = *(&v69 + 1);
          }
        }

        v30 = v29 + 24 * v70;
        v31 = *v28;
        *(v30 + 16) = *(v28 + 2);
        *v30 = v31;
        v32 = ++v70;
        if (v68)
        {
          v65 = 3;
          v66 = ", expected Axis between 0 and ";
          v67 = 30;
          v33 = &v65;
          v34 = *(&v69 + 1);
          if (v32 >= v71)
          {
            if (*(&v69 + 1) <= &v65 && *(&v69 + 1) + 24 * v32 > &v65)
            {
              v55 = &v65 - *(&v69 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v32 + 1, 24);
              v34 = *(&v69 + 1);
              v33 = &v55[*(&v69 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v32 + 1, 24);
              v33 = &v65;
              v34 = *(&v69 + 1);
            }
          }

          v35 = v34 + 24 * v70;
          v36 = *v33;
          *(v35 + 16) = *(v33 + 2);
          *v35 = v36;
          v37 = ++v70;
          if (v68)
          {
            v65 = 2;
            v66 = (v5 - 1);
            v38 = &v65;
            v39 = *(&v69 + 1);
            if (v37 >= v71)
            {
              if (*(&v69 + 1) <= &v65 && *(&v69 + 1) + 24 * v37 > &v65)
              {
                v56 = &v65 - *(&v69 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v37 + 1, 24);
                v39 = *(&v69 + 1);
                v38 = &v56[*(&v69 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v37 + 1, 24);
                v38 = &v65;
                v39 = *(&v69 + 1);
              }
            }

            v40 = v39 + 24 * v70;
            v41 = *v38;
            *(v40 + 16) = *(v38 + 2);
            *v40 = v41;
            v42 = ++v70;
            if (v68)
            {
              v65 = 3;
              v66 = ", inclusive";
              v67 = 11;
              v43 = &v65;
              v44 = *(&v69 + 1);
              if (v42 >= v71)
              {
                if (*(&v69 + 1) <= &v65 && *(&v69 + 1) + 24 * v42 > &v65)
                {
                  v57 = &v65 - *(&v69 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v42 + 1, 24);
                  v44 = *(&v69 + 1);
                  v43 = &v57[*(&v69 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v42 + 1, 24);
                  v43 = &v65;
                  v44 = *(&v69 + 1);
                }
              }

              v45 = v44 + 24 * v70;
              v46 = *v43;
              *(v45 + 16) = *(v43 + 2);
              *v45 = v46;
              ++v70;
            }
          }
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v68);
    if (v68)
    {
      mlir::InFlightDiagnostic::report(&v68);
    }

    if (v78[0] == 1)
    {
      if (v77 != v78)
      {
        free(v77);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v76;
        v49 = __p;
        if (v76 != __p)
        {
          do
          {
            v48 = sub_10005BEF4(v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v76 = v47;
        operator delete(v49);
      }

      v17 = v73;
      if (!v73)
      {
        goto LABEL_63;
      }

      v50 = v74;
      v19 = v73;
      if (v74 == v73)
      {
LABEL_62:
        v74 = v17;
        operator delete(v19);
LABEL_63:
        if (*(&v69 + 1) != v72)
        {
          free(*(&v69 + 1));
        }

        return v13;
      }

      do
      {
        v51 = *--v50;
        *v50 = 0;
        if (v51)
        {
          operator delete[]();
        }
      }

      while (v50 != v17);
LABEL_61:
      v19 = v73;
      goto LABEL_62;
    }
  }

  else
  {
    v63 = 257;
    mlir::OpState::emitError(this, v62, &v68);
    if (v68)
    {
      LODWORD(v58) = 3;
      v59 = "Unable to get value of constant axis";
      v60 = 36;
      v9 = &v58;
      v10 = *(&v69 + 1);
      if (v70 >= v71)
      {
        if (*(&v69 + 1) <= &v58 && *(&v69 + 1) + 24 * v70 > &v58)
        {
          v52 = &v58 - *(&v69 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v70 + 1, 24);
          v10 = *(&v69 + 1);
          v9 = &v52[*(&v69 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69 + 8, v72, v70 + 1, 24);
          v9 = &v58;
          v10 = *(&v69 + 1);
        }
      }

      v11 = v10 + 24 * v70;
      v12 = *v9;
      *(v11 + 16) = *(v9 + 2);
      *v11 = v12;
      ++v70;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v68);
    if (v68)
    {
      mlir::InFlightDiagnostic::report(&v68);
    }

    if (v78[0] == 1)
    {
      if (v77 != v78)
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
            v15 = sub_10005BEF4(v15 - 1);
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
        goto LABEL_63;
      }

      v18 = v74;
      v19 = v73;
      if (v74 == v73)
      {
        goto LABEL_62;
      }

      do
      {
        v20 = *--v18;
        *v18 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v18 != v17);
      goto LABEL_61;
    }
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::CumSumOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 4)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 4 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CumSumOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 4)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 4 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100223550(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL sub_100223550(mlir::Operation *this, void *a2, void **a3, void **a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_10026CDE0(a2, this))
  {
    goto LABEL_39;
  }

  v12 = *a2;
  {
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v64[0] = a2;
  v64[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56))
  {
    return 1;
  }

  v23 = *(*v56[0] + 17);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

  if (*(*v56[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v60 = v56[0];
    ElementType = mlir::ComplexType::getElementType(&v60);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    if (*(*v56[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v58 = v56[0];
      v59 = mlir::ComplexType::getElementType(&v58);
      if (mlir::Type::isF32(&v59))
      {
        return 1;
      }
    }
  }

LABEL_39:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v64, this, v56);
  if (v64[0])
  {
    LODWORD(ElementType) = 3;
    v62 = " #";
    v63 = 2;
    p_ElementType = &ElementType;
    v27 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
      {
        v52 = &ElementType - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v27 = v65;
        p_ElementType = (v65 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        p_ElementType = &ElementType;
        v27 = v65;
      }
    }

    v28 = &v27[24 * v66];
    v29 = *p_ElementType;
    *(v28 + 2) = p_ElementType[2];
    *v28 = v29;
    v30 = ++v66;
    if (v64[0])
    {
      LODWORD(ElementType) = 5;
      v62 = a5;
      v31 = &ElementType;
      v32 = v65;
      if (v30 >= v67)
      {
        if (v65 <= &ElementType && v65 + 24 * v30 > &ElementType)
        {
          v53 = &ElementType - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v32 = v65;
          v31 = (v65 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v31 = &ElementType;
          v32 = v65;
        }
      }

      v33 = &v32[24 * v66];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v66;
      if (v64[0])
      {
        LODWORD(ElementType) = 3;
        v62 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v63 = 261;
        v36 = &ElementType;
        v37 = v65;
        if (v35 >= v67)
        {
          if (v65 <= &ElementType && v65 + 24 * v35 > &ElementType)
          {
            v54 = &ElementType - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v37 = v65;
            v36 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v36 = &ElementType;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
        if (v64[0])
        {
          v40 = &ElementType;
          mlir::DiagnosticArgument::DiagnosticArgument(&ElementType, a2);
          v41 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
            {
              v55 = &ElementType - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v41 = v65;
              v40 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v40 = &ElementType;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v66;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v72;
      v46 = __p;
      if (v72 != __p)
      {
        do
        {
          v45 = sub_10005BEF4(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v72 = v44;
      operator delete(v46);
    }

    v47 = v69;
    if (v69)
    {
      v48 = v70;
      v49 = v69;
      if (v70 != v69)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v69;
      }

      v70 = v47;
      operator delete(v49);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100223550(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002241FC(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v20[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v28;
        v17 = __p;
        if (v28 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v28 = v15;
        operator delete(v17);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v18 = v26;
      v13 = v25;
      if (v26 == v25)
      {
LABEL_45:
        v26 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v23 != &v24)
        {
          free(v23);
          return v7;
        }

        return result;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_44:
      v13 = v25;
      goto LABEL_45;
    }
  }

  else
  {
    v20[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v12 = v26;
      v13 = v25;
      if (v26 == v25)
      {
        goto LABEL_45;
      }

      do
      {
        v14 = *--v12;
        *v12 = 0;
        if (v14)
        {
          operator delete[]();
        }
      }

      while (v12 != v11);
      goto LABEL_44;
    }
  }

  return result;
}

BOOL sub_1002241FC(mlir::Operation *this, void *a2, void **a3, void **a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_10026CDE0(a2, this))
  {
    goto LABEL_40;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v64[0] = a2;
  v64[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56))
  {
    return 1;
  }

  v23 = *(*v56[0] + 17);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

  if (*(*v56[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v60 = v56[0];
    ElementType = mlir::ComplexType::getElementType(&v60);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    if (*(*v56[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v58 = v56[0];
      v59 = mlir::ComplexType::getElementType(&v58);
      if (mlir::Type::isF32(&v59))
      {
        return 1;
      }
    }
  }

  v25 = 1;
  if (mlir::Type::isSignlessInteger(v56, 1))
  {
    return v25;
  }

LABEL_40:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v64, this, v56);
  if (v64[0])
  {
    LODWORD(ElementType) = 3;
    v62 = " #";
    v63 = 2;
    p_ElementType = &ElementType;
    v27 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
      {
        v52 = &ElementType - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v27 = v65;
        p_ElementType = (v65 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        p_ElementType = &ElementType;
        v27 = v65;
      }
    }

    v28 = &v27[24 * v66];
    v29 = *p_ElementType;
    *(v28 + 2) = p_ElementType[2];
    *v28 = v29;
    v30 = ++v66;
    if (v64[0])
    {
      LODWORD(ElementType) = 5;
      v62 = a5;
      v31 = &ElementType;
      v32 = v65;
      if (v30 >= v67)
      {
        if (v65 <= &ElementType && v65 + 24 * v30 > &ElementType)
        {
          v53 = &ElementType - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v32 = v65;
          v31 = (v65 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v31 = &ElementType;
          v32 = v65;
        }
      }

      v33 = &v32[24 * v66];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v66;
      if (v64[0])
      {
        LODWORD(ElementType) = 3;
        v62 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
        v63 = 278;
        v36 = &ElementType;
        v37 = v65;
        if (v35 >= v67)
        {
          if (v65 <= &ElementType && v65 + 24 * v35 > &ElementType)
          {
            v54 = &ElementType - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v37 = v65;
            v36 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v36 = &ElementType;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
        if (v64[0])
        {
          v40 = &ElementType;
          mlir::DiagnosticArgument::DiagnosticArgument(&ElementType, a2);
          v41 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
            {
              v55 = &ElementType - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v41 = v65;
              v40 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v40 = &ElementType;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v66;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v72;
      v46 = __p;
      if (v72 != __p)
      {
        do
        {
          v45 = sub_10005BEF4(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v72 = v44;
      operator delete(v46);
    }

    v47 = v69;
    if (v69)
    {
      v48 = v70;
      v49 = v69;
      if (v70 != v69)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v69;
      }

      v70 = v47;
      operator delete(v49);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002249E8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002249E8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL sub_1002249E8(mlir::Operation *this, void *a2, void **a3, void **a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v11 && sub_10026CDE0(a2, this))
  {
    v12 = *a2;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1002AAB00();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    v16 = v14;
    v17 = v15;
    do
    {
      v18 = v17 >> 1;
      v19 = &v16[2 * (v17 >> 1)];
      v21 = *v19;
      v20 = v19 + 2;
      v17 += ~(v17 >> 1);
      if (v21 < v13)
      {
        v16 = v20;
      }

      else
      {
        v17 = v18;
      }
    }

    while (v17);
    if (v16 != &v14[2 * v15] && *v16 == v13)
    {
      v22 = v16[1];
LABEL_21:
      v59[0] = a2;
      v59[1] = v22;
      v54[0] = mlir::ShapedType::getElementType(v59);
      v23 = 1;
      if (mlir::Type::isSignlessInteger(v54, 1))
      {
        return v23;
      }

      goto LABEL_22;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

LABEL_22:
  v55 = 261;
  v54[0] = a3;
  v54[1] = a4;
  mlir::Operation::emitOpError(v59, this, v54);
  if (v59[0])
  {
    v56 = 3;
    v57 = " #";
    v58 = 2;
    v24 = &v56;
    v25 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v56 && v60 + 24 * v61 > &v56)
      {
        v50 = &v56 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v25 = v60;
        v24 = (v60 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v24 = &v56;
        v25 = v60;
      }
    }

    v26 = &v25[24 * v61];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v61;
    if (v59[0])
    {
      v56 = 5;
      v57 = a5;
      v29 = &v56;
      v30 = v60;
      if (v28 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v28 > &v56)
        {
          v51 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v28 + 1, 24);
          v30 = v60;
          v29 = (v60 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v28 + 1, 24);
          v29 = &v56;
          v30 = v60;
        }
      }

      v31 = &v30[24 * v61];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      v33 = ++v61;
      if (v59[0])
      {
        v56 = 3;
        v57 = " must be CoreML Tensor of Boolean type. values, but got ";
        v58 = 56;
        v34 = &v56;
        v35 = v60;
        if (v33 >= v62)
        {
          if (v60 <= &v56 && v60 + 24 * v33 > &v56)
          {
            v52 = &v56 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v33 + 1, 24);
            v35 = v60;
            v34 = (v60 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v33 + 1, 24);
            v34 = &v56;
            v35 = v60;
          }
        }

        v36 = &v35[24 * v61];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v61;
        if (v59[0])
        {
          v38 = &v56;
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
          v39 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v53 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v39 = v60;
              v38 = (v60 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v38 = &v56;
              v39 = v60;
            }
          }

          v40 = &v39[24 * v61];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v61;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v69 == 1)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v67;
      v44 = __p;
      if (v67 != __p)
      {
        do
        {
          v43 = sub_10005BEF4(v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v67 = v42;
      operator delete(v44);
    }

    v45 = v64;
    if (v64)
    {
      v46 = v65;
      v47 = v64;
      if (v65 != v64)
      {
        do
        {
          v48 = *--v46;
          *v46 = 0;
          if (v48)
          {
            operator delete[]();
          }
        }

        while (v46 != v45);
        v47 = v64;
      }

      v65 = v45;
      operator delete(v47);
    }

    if (v60 != v63)
    {
      free(v60);
    }
  }

  return v23;
}

uint64_t sub_100224F84(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v89 = a2;
    v90 = v49;
    hasRank = mlir::ShapedType::hasRank(&v89);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v89 = a2;
  v90 = 0;
  v48 = mlir::ShapedType::hasRank(&v89);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v81 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v81[1];
    v54 = *(v81 + 4);
    if (!v54)
    {
      goto LABEL_71;
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
    v82 = a2;
    v83 = v62;
    mlir::ShapedType::getShape(&v82);
    a1 = v36;
    if (v63 != 1)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v82 = a2;
  v83 = 0;
  mlir::ShapedType::getShape(&v82);
  a1 = v36;
  if (v61 != 1)
  {
    goto LABEL_2;
  }

LABEL_74:
  v64 = *a2;
  {
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = v64[1];
    v67 = *(v64 + 4);
    if (!v67)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v76 = v64;
    sub_1002AAABC();
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = v76[1];
    v67 = *(v76 + 4);
    if (!v67)
    {
      goto LABEL_88;
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
    v77 = v68[1];
    goto LABEL_90;
  }

LABEL_88:
  v77 = 0;
LABEL_90:
  v86 = a2;
  v87 = v77;
  ElementType = mlir::ShapedType::getElementType(&v86);
  if (mlir::Type::isSignedInteger(&ElementType, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&ElementType, 32);
  a1 = v36;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(&v89, a1, &v82);
  if (v89)
  {
    LODWORD(v86) = 3;
    v87 = " #";
    v88 = 2;
    v10 = &v86;
    v11 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v86 && v91 + 24 * v92 > &v86)
      {
        v74 = &v86 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v11 = v91;
        v10 = (v91 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v10 = &v86;
        v11 = v91;
      }
    }

    v12 = &v11[24 * v92];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v92;
    if (v89)
    {
      LODWORD(v86) = 5;
      v87 = a5;
      v15 = &v86;
      v16 = v91;
      if (v14 >= v93)
      {
        if (v91 <= &v86 && v91 + 24 * v14 > &v86)
        {
          v75 = &v86 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v16 = v91;
          v15 = (v91 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v15 = &v86;
          v16 = v91;
        }
      }

      v17 = &v16[24 * v92];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v92;
      if (v89)
      {
        LODWORD(v86) = 3;
        v87 = " must be 1D tensor of Index type. values, but got ";
        v88 = 50;
        v20 = &v86;
        v21 = v91;
        if (v19 >= v93)
        {
          if (v91 <= &v86 && v91 + 24 * v19 > &v86)
          {
            v79 = &v86 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v21 = v91;
            v20 = (v91 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v20 = &v86;
            v21 = v91;
          }
        }

        v22 = &v21[24 * v92];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v92;
        if (v89)
        {
          v24 = &v86;
          mlir::DiagnosticArgument::DiagnosticArgument(&v86, a2);
          v25 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v86 && v91 + 24 * v92 > &v86)
            {
              v80 = &v86 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v25 = v91;
              v24 = (v91 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v24 = &v86;
              v25 = v91;
            }
          }

          v26 = &v25[24 * v92];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v92;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v98;
      v31 = __p;
      if (v98 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v98 = v29;
      operator delete(v31);
    }

    v32 = v95;
    if (v95)
    {
      v33 = v96;
      v34 = v95;
      if (v96 != v95)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v95;
      }

      v96 = v32;
      operator delete(v34);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v28;
}

BOOL sub_1002256D0(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v89 = a2;
    v90 = v49;
    hasRank = mlir::ShapedType::hasRank(&v89);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v89 = a2;
  v90 = 0;
  v48 = mlir::ShapedType::hasRank(&v89);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v81 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v81[1];
    v54 = *(v81 + 4);
    if (!v54)
    {
      goto LABEL_71;
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
    v82 = a2;
    v83 = v62;
    mlir::ShapedType::getShape(&v82);
    a1 = v36;
    if (!v63)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v82 = a2;
  v83 = 0;
  mlir::ShapedType::getShape(&v82);
  a1 = v36;
  if (!v61)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v64[1];
      v67 = *(v64 + 4);
      if (!v67)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v76 = v64;
      sub_1002AAABC();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v76[1];
      v67 = *(v76 + 4);
      if (!v67)
      {
        goto LABEL_88;
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
      v77 = v68[1];
LABEL_90:
      v86 = a2;
      v87 = v77;
      ElementType = mlir::ShapedType::getElementType(&v86);
      v28 = 1;
      isSignlessInteger = mlir::Type::isSignlessInteger(&ElementType, 1);
      a1 = v36;
      if (isSignlessInteger)
      {
        return v28;
      }

      goto LABEL_2;
    }

LABEL_88:
    v77 = 0;
    goto LABEL_90;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(&v89, a1, &v82);
  if (v89)
  {
    LODWORD(v86) = 3;
    v87 = " #";
    v88 = 2;
    v10 = &v86;
    v11 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v86 && v91 + 24 * v92 > &v86)
      {
        v74 = &v86 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v11 = v91;
        v10 = (v91 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v10 = &v86;
        v11 = v91;
      }
    }

    v12 = &v11[24 * v92];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v92;
    if (v89)
    {
      LODWORD(v86) = 5;
      v87 = a5;
      v15 = &v86;
      v16 = v91;
      if (v14 >= v93)
      {
        if (v91 <= &v86 && v91 + 24 * v14 > &v86)
        {
          v75 = &v86 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v16 = v91;
          v15 = (v91 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v15 = &v86;
          v16 = v91;
        }
      }

      v17 = &v16[24 * v92];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v92;
      if (v89)
      {
        LODWORD(v86) = 3;
        v87 = " must be 0D tensor of Boolean type. values, but got ";
        v88 = 52;
        v20 = &v86;
        v21 = v91;
        if (v19 >= v93)
        {
          if (v91 <= &v86 && v91 + 24 * v19 > &v86)
          {
            v79 = &v86 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v21 = v91;
            v20 = (v91 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v20 = &v86;
            v21 = v91;
          }
        }

        v22 = &v21[24 * v92];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v92;
        if (v89)
        {
          v24 = &v86;
          mlir::DiagnosticArgument::DiagnosticArgument(&v86, a2);
          v25 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v86 && v91 + 24 * v92 > &v86)
            {
              v80 = &v86 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v25 = v91;
              v24 = (v91 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v24 = &v86;
              v25 = v91;
            }
          }

          v26 = &v25[24 * v92];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v92;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v98;
      v31 = __p;
      if (v98 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v98 = v29;
      operator delete(v31);
    }

    v32 = v95;
    if (v95)
    {
      v33 = v96;
      v34 = v95;
      if (v96 != v95)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v95;
      }

      v96 = v32;
      operator delete(v34);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[0] = a4;
  v15[1] = a5;
  v12 = *(a11 + 8);
  if (v12 == 1)
  {
    goto LABEL_8;
  }

  if (!v12)
  {
    if (*(a11 + 12))
    {
      v13 = 0;
LABEL_6:
      bzero((*a11 + 8 * v13), 8 - 8 * v13);
      goto LABEL_7;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
    v13 = *(a11 + 8);
    if (v13 != 1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  *(a11 + 8) = 1;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002249E8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002249E8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002249E8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AnyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002249E8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002249E8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::ArgSortOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002263C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100226A34(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_1002256D0(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100227178(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v23 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24[0] = sub_100227728(&v23);
  v24[1] = v4;
  Shape = mlir::ShapedType::getShape(v24);
  v7 = v6;
  v22 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v20[0] = sub_100227728(&v22);
  v20[1] = v8;
  v9 = mlir::ShapedType::getShape(v20);
  if (v7 == v10 && !memcmp(Shape, v9, 8 * v7))
  {
    return 1;
  }

  v20[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
  v21 = 259;
  mlir::OpState::emitOpError(this, v20, v24);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  v12 = result;
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
    result = v12;
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
      result = v12;
    }

    v13 = __p;
    if (__p)
    {
      v14 = v30;
      v15 = __p;
      if (v30 != __p)
      {
        do
        {
          v14 = sub_10005BEF4(v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v30 = v13;
      operator delete(v15);
      result = v12;
    }

    v16 = v27;
    if (v27)
    {
      v17 = v28;
      v18 = v27;
      if (v28 != v27)
      {
        do
        {
          v19 = *--v17;
          *v17 = 0;
          if (v19)
          {
            operator delete[]();
          }
        }

        while (v17 != v16);
        v18 = v27;
      }

      v28 = v16;
      operator delete(v18);
      result = v12;
    }

    if (v25 != &v26)
    {
      free(v25);
      return v12;
    }
  }

  return result;
}

BOOL sub_1002263C4(mlir::Operation *this, void *a2, void **a3, void **a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_10026CDE0(a2, this))
  {
    goto LABEL_38;
  }

  v12 = *a2;
  {
    v56 = v12;
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ShapedType::getElementType(v62);
  if (mlir::Type::isF16(v57) || mlir::Type::isF32(v57))
  {
    return 1;
  }

  v23 = *(*v57[0] + 17);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  if (v24 || mlir::Type::isSignedInteger(v57, 4) || mlir::Type::isSignedInteger(v57, 8) || mlir::Type::isSignedInteger(v57, 16) || mlir::Type::isSignedInteger(v57, 32) || mlir::Type::isSignedInteger(v57, 64) || mlir::Type::isUnsignedInteger(v57, 4) || mlir::Type::isUnsignedInteger(v57, 8) || mlir::Type::isUnsignedInteger(v57, 16) || mlir::Type::isUnsignedInteger(v57, 32) || mlir::Type::isUnsignedInteger(v57, 64))
  {
    return 1;
  }

LABEL_38:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(v62, this, v57);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v26 = &v59;
    v27 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v27 = v63;
        v26 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = &v59;
        v27 = v63;
      }
    }

    v28 = &v27[24 * v64];
    v29 = *v26;
    *(v28 + 2) = *(v26 + 2);
    *v28 = v29;
    v30 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v31 = &v59;
      v32 = v63;
      if (v30 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v30 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v32 = v63;
          v31 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v31 = &v59;
          v32 = v63;
        }
      }

      v33 = &v32[24 * v64];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer values, but got ";
        v61 = 175;
        v36 = &v59;
        v37 = v63;
        if (v35 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v35 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v37 = v63;
            v36 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v36 = &v59;
            v37 = v63;
          }
        }

        v38 = &v37[24 * v64];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v64;
        if (v62[0])
        {
          v40 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v41 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v41 = v63;
              v40 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = &v59;
              v41 = v63;
            }
          }

          v42 = &v41[24 * v64];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v64;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v70;
      v46 = __p;
      if (v70 != __p)
      {
        do
        {
          v45 = sub_10005BEF4(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v70 = v44;
      operator delete(v46);
    }

    v47 = v67;
    if (v67)
    {
      v48 = v68;
      v49 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v67;
      }

      v68 = v47;
      operator delete(v49);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v25;
}

uint64_t sub_100226A34(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v89 = a2;
    v90 = v49;
    hasRank = mlir::ShapedType::hasRank(&v89);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v89 = a2;
  v90 = 0;
  v48 = mlir::ShapedType::hasRank(&v89);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v81 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v81[1];
    v54 = *(v81 + 4);
    if (!v54)
    {
      goto LABEL_71;
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
    v82 = a2;
    v83 = v62;
    mlir::ShapedType::getShape(&v82);
    a1 = v36;
    if (v63)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v82 = a2;
  v83 = 0;
  mlir::ShapedType::getShape(&v82);
  a1 = v36;
  if (v61)
  {
    goto LABEL_2;
  }

LABEL_74:
  v64 = *a2;
  {
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = v64[1];
    v67 = *(v64 + 4);
    if (!v67)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v76 = v64;
    sub_1002AAABC();
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = v76[1];
    v67 = *(v76 + 4);
    if (!v67)
    {
      goto LABEL_88;
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
    v77 = v68[1];
    goto LABEL_90;
  }

LABEL_88:
  v77 = 0;
LABEL_90:
  v86 = a2;
  v87 = v77;
  ElementType = mlir::ShapedType::getElementType(&v86);
  if (mlir::Type::isSignedInteger(&ElementType, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&ElementType, 32);
  a1 = v36;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(&v89, a1, &v82);
  if (v89)
  {
    LODWORD(v86) = 3;
    v87 = " #";
    v88 = 2;
    v10 = &v86;
    v11 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v86 && v91 + 24 * v92 > &v86)
      {
        v74 = &v86 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v11 = v91;
        v10 = (v91 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v10 = &v86;
        v11 = v91;
      }
    }

    v12 = &v11[24 * v92];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v92;
    if (v89)
    {
      LODWORD(v86) = 5;
      v87 = a5;
      v15 = &v86;
      v16 = v91;
      if (v14 >= v93)
      {
        if (v91 <= &v86 && v91 + 24 * v14 > &v86)
        {
          v75 = &v86 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v16 = v91;
          v15 = (v91 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v15 = &v86;
          v16 = v91;
        }
      }

      v17 = &v16[24 * v92];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v92;
      if (v89)
      {
        LODWORD(v86) = 3;
        v87 = " must be 0D tensor of Index type. values, but got ";
        v88 = 50;
        v20 = &v86;
        v21 = v91;
        if (v19 >= v93)
        {
          if (v91 <= &v86 && v91 + 24 * v19 > &v86)
          {
            v79 = &v86 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v21 = v91;
            v20 = (v91 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v20 = &v86;
            v21 = v91;
          }
        }

        v22 = &v21[24 * v92];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v92;
        if (v89)
        {
          v24 = &v86;
          mlir::DiagnosticArgument::DiagnosticArgument(&v86, a2);
          v25 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v86 && v91 + 24 * v92 > &v86)
            {
              v80 = &v86 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v25 = v91;
              v24 = (v91 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v24 = &v86;
              v25 = v91;
            }
          }

          v26 = &v25[24 * v92];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v92;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v98;
      v31 = __p;
      if (v98 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v98 = v29;
      operator delete(v31);
    }

    v32 = v95;
    if (v95)
    {
      v33 = v96;
      v34 = v95;
      if (v96 != v95)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v95;
      }

      v96 = v32;
      operator delete(v34);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v28;
}

BOOL sub_100227178(mlir::Operation *this, void *a2, void **a3, void **a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_10026CDE0(a2, this))
  {
    goto LABEL_24;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v54 = v12;
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v54 + 8);
    v15 = *(v54 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v60[0] = a2;
  v60[1] = v22;
  v55[0] = mlir::ShapedType::getElementType(v60);
  if (mlir::Type::isSignedInteger(v55, 16) || mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

LABEL_24:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(v60, this, v55);
  if (v60[0])
  {
    v57 = 3;
    v58 = " #";
    v59 = 2;
    v24 = &v57;
    v25 = v61;
    if (v62 >= v63)
    {
      if (v61 <= &v57 && v61 + 24 * v62 > &v57)
      {
        v50 = &v57 - v61;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v25 = v61;
        v24 = (v61 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v24 = &v57;
        v25 = v61;
      }
    }

    v26 = &v25[24 * v62];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v62;
    if (v60[0])
    {
      v57 = 5;
      v58 = a5;
      v29 = &v57;
      v30 = v61;
      if (v28 >= v63)
      {
        if (v61 <= &v57 && v61 + 24 * v28 > &v57)
        {
          v51 = &v57 - v61;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v28 + 1, 24);
          v30 = v61;
          v29 = (v61 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v28 + 1, 24);
          v29 = &v57;
          v30 = v61;
        }
      }

      v31 = &v30[24 * v62];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      v33 = ++v62;
      if (v60[0])
      {
        v57 = 3;
        v58 = " must be CoreML Tensor of Index type. values, but got ";
        v59 = 54;
        v34 = &v57;
        v35 = v61;
        if (v33 >= v63)
        {
          if (v61 <= &v57 && v61 + 24 * v33 > &v57)
          {
            v52 = &v57 - v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v33 + 1, 24);
            v35 = v61;
            v34 = (v61 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v33 + 1, 24);
            v34 = &v57;
            v35 = v61;
          }
        }

        v36 = &v35[24 * v62];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v62;
        if (v60[0])
        {
          v38 = &v57;
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, a2);
          v39 = v61;
          if (v62 >= v63)
          {
            if (v61 <= &v57 && v61 + 24 * v62 > &v57)
            {
              v53 = &v57 - v61;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v39 = v61;
              v38 = (v61 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v38 = &v57;
              v39 = v61;
            }
          }

          v40 = &v39[24 * v62];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v62;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
  if (v60[0])
  {
    mlir::InFlightDiagnostic::report(v60);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v68;
      v44 = __p;
      if (v68 != __p)
      {
        do
        {
          v43 = sub_10005BEF4(v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v68 = v42;
      operator delete(v44);
    }

    v45 = v65;
    if (v65)
    {
      v46 = v66;
      v47 = v65;
      if (v66 != v65)
      {
        do
        {
          v48 = *--v46;
          *v46 = 0;
          if (v48)
          {
            operator delete[]();
          }
        }

        while (v46 != v45);
        v47 = v65;
      }

      v66 = v45;
      operator delete(v47);
    }

    if (v61 != v64)
    {
      free(v61);
    }
  }

  return v23;
}

void *sub_100227728(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v13 = v2;
      v14 = result;
      sub_1002AAB00();
      result = v14;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v13 + 8);
      v5 = *(v13 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    if (v6 != &v4[2 * v5] && *v6 == v3)
    {
      v12 = v6[1];
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100223550(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100223550(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100223550(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}