BOOL mlir::mps::GatherOp::verify(mlir::Operation **this)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v57[0] = v2;
  v57[1] = v13;
  v14 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
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
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
LABEL_29:
    v55 = v14;
    v56 = 0;
    if (mlir::ShapedType::hasRank(v57))
    {
      goto LABEL_30;
    }

LABEL_33:
    Shape = 0;
    v27 = 0x8000000000000000;
    if (mlir::ShapedType::hasRank(&v55))
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v31 = v19[1];
  v55 = v14;
  v56 = v31;
  if (!mlir::ShapedType::hasRank(v57))
  {
    goto LABEL_33;
  }

LABEL_30:
  Shape = mlir::ShapedType::getShape(v57);
  v27 = v26;
  if (mlir::ShapedType::hasRank(&v55))
  {
LABEL_31:
    v28 = mlir::ShapedType::getShape(&v55);
    v30 = v29;
    goto LABEL_35;
  }

LABEL_34:
  v28 = 0;
  v30 = 0x8000000000000000;
LABEL_35:
  v52[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  mlir::IntegerAttr::getValue(v52, &v60);
  if (v61 > 0x40)
  {
    v32 = *v60;
    MEMORY[0x259C63150]();
    v54 = v32;
    if (v27 == 0x8000000000000000)
    {
LABEL_40:
      if (v30 != 0x8000000000000000 && v32 > v30)
      {
        goto LABEL_42;
      }

      v38 = 1;
      if (v27 == 0x8000000000000000 || v30 == 0x8000000000000000)
      {
        return v38;
      }

      if (mlir::verifyCompatibleShape(Shape, v32, v28, v32))
      {
        LOBYTE(v58) = 0;
        BYTE8(v58) = 0;
        v38 = 0;
        if ((mlir::mps::getAxis(*(*this + 3), 1, *(*(*this + 9) + 88), v27, &v58) & 1) == 0)
        {
          return v38;
        }

        if (BYTE8(v58) == 1)
        {
          if (v58 < v32)
          {
            v52[0] = "Axis must be greater than or equal to batch ";
            v53 = 259;
            mlir::OpState::emitOpError(this, v52, &v60);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v60, "dimensions, ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v47, &v58);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v48, " < ");
            mlir::InFlightDiagnostic::operator<<<unsigned long &>(v49, &v54);
LABEL_75:
            v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
            return v38;
          }

          if ((v27 + v30 - 1) < 0)
          {
            v52[0] = "Rank of destination array must be greater than or equal to 0";
            v53 = 259;
            mlir::OpState::emitOpError(this, v52, &v60);
            v50 = &v60;
            goto LABEL_75;
          }
        }

        return 1;
      }

      v52[0] = "invalid input tensor shapes: input tensor shapes ";
      v53 = 259;
      mlir::OpState::emitOpError(this, v52, &v60);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v60, "must match along batch dimensions");
      goto LABEL_75;
    }
  }

  else
  {
    v32 = v60;
    v54 = v60;
    if (v27 == 0x8000000000000000)
    {
      goto LABEL_40;
    }
  }

  if (v32 < v27)
  {
    goto LABEL_40;
  }

LABEL_42:
  v52[0] = "invalid batch dimensions: ";
  v53 = 259;
  mlir::OpState::emitOpError(this, v52, &v60);
  if (v60)
  {
    LODWORD(v58) = 5;
    *(&v58 + 1) = v32;
    if (v63 >= v64)
    {
      if (v62 > &v58 || v62 + 24 * v63 <= &v58)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33 = v62 + 24 * v63;
    v34 = v58;
    *(v33 + 2) = v59;
    *v33 = v34;
    v35 = ++v63;
    if (v60)
    {
      LODWORD(v58) = 3;
      *(&v58 + 1) = ", must be less than ranks of all input tensors";
      v59 = 46;
      if (v35 >= v64)
      {
        if (v62 > &v58 || v62 + 24 * v35 <= &v58)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v62 + 24 * v63;
      v37 = v58;
      *(v36 + 2) = v59;
      *v36 = v37;
      ++v63;
    }
  }

  v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v69;
      v41 = __p;
      if (v69 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v69 = v39;
      operator delete(v41);
    }

    v42 = v66;
    if (v66)
    {
      v43 = v67;
      v44 = v66;
      if (v67 != v66)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            MEMORY[0x259C63150](v45, 0x1000C8077774924);
          }
        }

        while (v43 != v42);
        v44 = v66;
      }

      v67 = v42;
      operator delete(v44);
    }

    if (v62 != &v65)
    {
      free(v62);
    }
  }

  return v38;
}

uint64_t *mlir::mps::GatherOp::getBatchDims(mlir::mps::GatherOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::ResizeOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    *v55 = a7[2];
  }

  else
  {
    v14 = 0uLL;
    *v55 = 0u;
    v15 = 0uLL;
  }

  v57 = a6;
  v58[0] = 0;
  v59 = 0;
  v60 = v14;
  v61 = v15;
  v62 = *v55;
  v63 = a9;
  v64 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v57);
    if (v59 == 1)
    {
      v59 = 0;
    }

    mlir::OperationName::OperationName(v58, "mps.resize", 10, Context);
    v59 = 1;
  }

  v65 = a4;
  v66 = a5;
  if (!a5 || (v17 = mlir::UnknownLoc::get(this, a2), (mlir::mps::ResizeOpAdaptor::verify(&v57, v17) & 1) == 0))
  {
    v30 = mlir::Float32Type::get(this, a2);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  if (a5 == 1 || (v55[0] = v65, v55[1] = 0, v18 = mlir::ValueRange::dereference_iterator(v55, 0), v54[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v18 + 8) & 0xFFFFFFFFFFFFFFF8)), v54[1] = v19, !v54[0]))
  {
    v55[0] = v65;
    v55[1] = 0;
    v36 = mlir::ValueRange::dereference_iterator(v55, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v36);
    v31 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
LABEL_32:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_19:
    *(*a11 + 8 * v32) = v31;
    ++*(a11 + 8);
    return 1;
  }

  v55[0] = v56;
  v55[1] = 0x400000000;
  v20 = v65;
  v67 = v65;
  v68 = v62;
  if (v62)
  {
    v20 = mlir::ValueRange::offset_base(&v67, v62);
  }

  v67 = v20;
  v68 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v67, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v21, v55) & 1) == 0)
  {
    v67 = v65;
    v68 = 0;
    v38 = mlir::ValueRange::dereference_iterator(&v67, 0);
    v39 = mlir::getElementTypeOrSelf(v38);
    v40 = mlir::UnrankedTensorType::get(v39);
    goto LABEL_41;
  }

  v22 = LODWORD(v55[1]);
  if (!LODWORD(v55[1]))
  {
    goto LABEL_35;
  }

  v23 = v55[0];
  v24 = (LODWORD(v55[1]) - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v25 = v55[0];
  if (v24 >= 3)
  {
    v26 = v24 + 1;
    v25 = v55[0] + 8 * (v26 & 0x3FFFFFFFFFFFFFFCLL);
    v27 = (v55[0] + 16);
    v28.i64[0] = -1;
    v28.i64[1] = -1;
    v29 = v26 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v34 = vmovn_s64(vceqq_s64(v27[-1], v28));
      if (v34.i8[0])
      {
        v27[-1].i64[0] = 0x8000000000000000;
        if ((v34.i8[4] & 1) == 0)
        {
LABEL_24:
          v35 = vmovn_s64(vceqq_s64(*v27, v28));
          if ((v35.i8[0] & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_29;
        }
      }

      else if ((v34.i8[4] & 1) == 0)
      {
        goto LABEL_24;
      }

      v27[-1].i64[1] = 0x8000000000000000;
      v35 = vmovn_s64(vceqq_s64(*v27, v28));
      if ((v35.i8[0] & 1) == 0)
      {
LABEL_25:
        if (v35.i8[4])
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }

LABEL_29:
      v27->i64[0] = 0x8000000000000000;
      if (v35.i8[4])
      {
LABEL_30:
        v27->i64[1] = 0x8000000000000000;
      }

LABEL_21:
      v27 += 2;
      v29 -= 4;
      if (!v29)
      {
        if (v26 == (v26 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_35;
        }

        break;
      }
    }
  }

  v51 = &v23[8 * v22];
  do
  {
    if (*v25 == -1)
    {
      *v25 = 0x8000000000000000;
    }

    v25 += 8;
  }

  while (v25 != v51);
LABEL_35:
  if (!mlir::ShapedType::hasRank(v54))
  {
LABEL_40:
    ElementType = mlir::ShapedType::getElementType(v54);
    v40 = mlir::RankedTensorType::get(v55[0], LODWORD(v55[1]), ElementType, 0);
LABEL_41:
    v48 = *(a11 + 8);
    if (v48 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v48) = v40;
    ++*(a11 + 8);
    result = 1;
    v49 = v55[0];
    if (v55[0] != v56)
    {
      goto LABEL_43;
    }

    return result;
  }

  Shape = mlir::ShapedType::getShape(v54);
  if (v42 == LODWORD(v55[1]))
  {
    if (LODWORD(v55[1]))
    {
      v43 = Shape;
      v44 = 0;
      v45 = v55[0];
      do
      {
        v67 = v45[v44];
        v68 = *(v43 + 8 * v44);
        v46 = mlir::mps::mergeDynamicDims(&v67, 2);
        v45 = v55[0];
        *(v55[0] + v44++) = v46;
      }

      while (v44 < LODWORD(v55[1]));
    }

    goto LABEL_40;
  }

  v67 = v65;
  v68 = 0;
  v52 = mlir::ValueRange::dereference_iterator(&v67, 0);
  v53 = mlir::getElementTypeOrSelf(v52);
  result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v53);
  v49 = v55[0];
  if (v55[0] != v56)
  {
LABEL_43:
    v50 = result;
    free(v49);
    return v50;
  }

  return result;
}

uint64_t mlir::mps::ResizeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    return 1;
  }

  v12 = "'mps.resize' op requires attribute 'mode'";
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

uint64_t mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v3 = mlir::UnrankedTensorType::get(a2);
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 8 * v4) = v3;
  ++*(a1 + 8);
  return 1;
}

uint64_t mlir::mps::ResizeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::verifyResize(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v129 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = *v11;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    else
    {
      mlir::TensorType::operator mlir::ShapedType();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_25;
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
    if (v16 == &v14[2 * v15] || *v16 != v13)
    {
LABEL_25:
      v119 = v11;
      v120 = 0;
      hasRank = mlir::ShapedType::hasRank(&v119);
      if (hasRank)
      {
        goto LABEL_26;
      }

LABEL_32:
      NumElements = 0;
      v34 = (*(a5 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v34)
      {
        goto LABEL_47;
      }

      goto LABEL_33;
    }

    goto LABEL_42;
  }

  v11 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v11)
  {
    goto LABEL_31;
  }

  v22 = *v11;
  {
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (!v25)
    {
      goto LABEL_31;
    }
  }

  v16 = v24;
  v26 = v25;
  do
  {
    v27 = v26 >> 1;
    v28 = &v16[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v23)
    {
      v16 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v16 == &v24[2 * v25] || *v16 != v23)
  {
LABEL_31:
    v119 = v11;
    v120 = 0;
    hasRank = mlir::ShapedType::hasRank(&v119);
    if (!hasRank)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_42:
  v45 = v16[1];
  v119 = v11;
  v120 = v45;
  hasRank = mlir::ShapedType::hasRank(&v119);
  if (!hasRank)
  {
    goto LABEL_32;
  }

LABEL_26:
  mlir::ShapedType::getShape(&v119);
  NumElements = v32;
  v34 = (*(a5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v34)
  {
    goto LABEL_47;
  }

LABEL_33:
  v35 = *v34;
  {
    v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v37 = *(v35 + 8);
    v38 = *(v35 + 16);
    if (!v38)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v112 = v35;
    mlir::mps::ConstantOp::verify();
    v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v37 = *(v112 + 8);
    v38 = *(v112 + 16);
    if (!v38)
    {
      goto LABEL_47;
    }
  }

  v39 = v37;
  v40 = v38;
  do
  {
    v41 = v40 >> 1;
    v42 = &v39[2 * (v40 >> 1)];
    v44 = *v42;
    v43 = v42 + 2;
    v40 += ~(v40 >> 1);
    if (v44 < v36)
    {
      v39 = v43;
    }

    else
    {
      v40 = v41;
    }
  }

  while (v40);
  if (v39 == &v37[2 * v38] || *v39 != v36)
  {
LABEL_47:
    v117 = v34;
    v118 = 0;
    if (mlir::ShapedType::hasRank(&v117))
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  v53 = v39[1];
  v117 = v34;
  v118 = v53;
  if (mlir::ShapedType::hasRank(&v117))
  {
LABEL_48:
    Shape = mlir::ShapedType::getShape(&v117);
    if (v47)
    {
      v48 = 8 * v47;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v48 -= 8;
        if (!v48)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
LABEL_52:
      if (hasRank)
      {
        v49 = mlir::ShapedType::getShape(&v117);
        if (NumElements != mlir::ShapedType::getNumElements(v49, v50))
        {
          v115[0] = "Size of shape must match rank of input";
          v116 = 259;
          mlir::Operation::emitOpError(&v119, a1, v115);
          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
          v66 = result;
          if (v119)
          {
            mlir::InFlightDiagnostic::report(&v119);
            result = v66;
          }

          if (v128 == 1)
          {
            if (v127 != &v128)
            {
              free(v127);
            }

            v67 = __p;
            if (__p)
            {
              v68 = v126;
              v69 = __p;
              if (v126 != __p)
              {
                do
                {
                  v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
                }

                while (v68 != v67);
                v69 = __p;
              }

              v126 = v67;
              operator delete(v69);
            }

            v70 = v123;
            result = v66;
            if (!v123)
            {
              goto LABEL_153;
            }

            v71 = v124;
            v72 = v123;
            if (v124 == v123)
            {
              goto LABEL_152;
            }

            do
            {
              v74 = *--v71;
              v73 = v74;
              *v71 = 0;
              if (v74)
              {
                MEMORY[0x259C63150](v73, 0x1000C8077774924);
              }
            }

            while (v71 != v70);
            goto LABEL_151;
          }

          return result;
        }
      }

      v51 = mlir::ShapedType::getShape(&v117);
      NumElements = mlir::ShapedType::getNumElements(v51, v52);
      hasRank = 1;
    }
  }

LABEL_56:
  if (!a6)
  {
    goto LABEL_95;
  }

  v54 = (*(a6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v54)
  {
    goto LABEL_86;
  }

  v55 = *v54;
  {
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (!v58)
    {
      goto LABEL_86;
    }
  }

  else
  {
    mlir::mps::ConstantOp::verify();
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (!v58)
    {
      goto LABEL_86;
    }
  }

  v59 = v57;
  v60 = v58;
  do
  {
    v61 = v60 >> 1;
    v62 = &v59[2 * (v60 >> 1)];
    v64 = *v62;
    v63 = v62 + 2;
    v60 += ~(v60 >> 1);
    if (v64 < v56)
    {
      v59 = v63;
    }

    else
    {
      v60 = v61;
    }
  }

  while (v60);
  if (v59 == &v57[2 * v58] || *v59 != v56)
  {
LABEL_86:
    v113 = v54;
    v114 = 0;
    if (!mlir::ShapedType::hasRank(&v113))
    {
      goto LABEL_95;
    }

    goto LABEL_87;
  }

  v82 = v59[1];
  v113 = v54;
  v114 = v82;
  if (!mlir::ShapedType::hasRank(&v113))
  {
    goto LABEL_95;
  }

LABEL_87:
  v75 = mlir::ShapedType::getShape(&v113);
  if (v76)
  {
    v77 = 8 * v76;
    while (*v75 != 0x8000000000000000)
    {
      ++v75;
      v77 -= 8;
      if (!v77)
      {
        goto LABEL_91;
      }
    }

LABEL_95:
    if (!a7)
    {
      return 1;
    }

    v83 = (*(a7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v83)
    {
      goto LABEL_125;
    }

    v84 = *v83;
    {
      v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v86 = *(v84 + 8);
      v87 = *(v84 + 16);
      if (!v87)
      {
        goto LABEL_125;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v86 = *(v84 + 8);
      v87 = *(v84 + 16);
      if (!v87)
      {
        goto LABEL_125;
      }
    }

    v88 = v86;
    v89 = v87;
    do
    {
      v90 = v89 >> 1;
      v91 = &v88[2 * (v89 >> 1)];
      v93 = *v91;
      v92 = v91 + 2;
      v89 += ~(v89 >> 1);
      if (v93 < v85)
      {
        v88 = v92;
      }

      else
      {
        v89 = v90;
      }
    }

    while (v89);
    if (v88 != &v86[2 * v87] && *v88 == v85)
    {
      v111 = v88[1];
      v113 = v83;
      v114 = v111;
      if (!mlir::ShapedType::hasRank(&v113))
      {
        return 1;
      }

LABEL_126:
      v100 = mlir::ShapedType::getShape(&v113);
      if (v101)
      {
        v102 = 8 * v101;
        while (*v100 != 0x8000000000000000)
        {
          ++v100;
          v102 -= 8;
          if (!v102)
          {
            goto LABEL_130;
          }
        }

        return 1;
      }

LABEL_130:
      if (hasRank)
      {
        v103 = mlir::ShapedType::getShape(&v113);
        if (NumElements != mlir::ShapedType::getNumElements(v103, v104))
        {
          v115[0] = "Size of offset must match rank of input";
          v116 = 259;
          mlir::Operation::emitOpError(&v119, a1, v115);
          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
          v66 = result;
          if (v119)
          {
            mlir::InFlightDiagnostic::report(&v119);
            result = v66;
          }

          if (v128 == 1)
          {
            if (v127 != &v128)
            {
              free(v127);
            }

            v105 = __p;
            if (__p)
            {
              v106 = v126;
              v107 = __p;
              if (v126 != __p)
              {
                do
                {
                  v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
                }

                while (v106 != v105);
                v107 = __p;
              }

              v126 = v105;
              operator delete(v107);
            }

            v70 = v123;
            result = v66;
            if (!v123)
            {
              goto LABEL_153;
            }

            v108 = v124;
            v72 = v123;
            if (v124 == v123)
            {
LABEL_152:
              v124 = v70;
              operator delete(v72);
              result = v66;
LABEL_153:
              if (v121 != &v122)
              {
                free(v121);
                return v66;
              }

              return result;
            }

            do
            {
              v110 = *--v108;
              v109 = v110;
              *v108 = 0;
              if (v110)
              {
                MEMORY[0x259C63150](v109, 0x1000C8077774924);
              }
            }

            while (v108 != v70);
LABEL_151:
            v72 = v123;
            goto LABEL_152;
          }

          return result;
        }
      }

      return 1;
    }

LABEL_125:
    v113 = v83;
    v114 = 0;
    if (!mlir::ShapedType::hasRank(&v113))
    {
      return 1;
    }

    goto LABEL_126;
  }

LABEL_91:
  if (!hasRank || (v78 = mlir::ShapedType::getShape(&v113), NumElements == mlir::ShapedType::getNumElements(v78, v79)))
  {
    v80 = mlir::ShapedType::getShape(&v113);
    NumElements = mlir::ShapedType::getNumElements(v80, v81);
    hasRank = 1;
    goto LABEL_95;
  }

  v115[0] = "Size of scale must match rank of input";
  v116 = 259;
  mlir::Operation::emitOpError(&v119, a1, v115);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
  v66 = result;
  if (v119)
  {
    mlir::InFlightDiagnostic::report(&v119);
    result = v66;
  }

  if (v128 == 1)
  {
    if (v127 != &v128)
    {
      free(v127);
    }

    v94 = __p;
    if (__p)
    {
      v95 = v126;
      v96 = __p;
      if (v126 != __p)
      {
        do
        {
          v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
        }

        while (v95 != v94);
        v96 = __p;
      }

      v126 = v94;
      operator delete(v96);
    }

    v70 = v123;
    result = v66;
    if (!v123)
    {
      goto LABEL_153;
    }

    v97 = v124;
    v72 = v123;
    if (v124 == v123)
    {
      goto LABEL_152;
    }

    do
    {
      v99 = *--v97;
      v98 = v99;
      *v97 = 0;
      if (v99)
      {
        MEMORY[0x259C63150](v98, 0x1000C8077774924);
      }
    }

    while (v97 != v70);
    goto LABEL_151;
  }

  return result;
}

uint64_t mlir::mps::getResizedAxesImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v147[4] = *MEMORY[0x277D85DE8];
  v13 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = *v13;
  {
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v18 = v16;
  v19 = v17;
  do
  {
    v20 = v19 >> 1;
    v21 = &v18[2 * (v19 >> 1)];
    v23 = *v21;
    v22 = v21 + 2;
    v19 += ~(v19 >> 1);
    if (v23 < v15)
    {
      v18 = v22;
    }

    else
    {
      v19 = v20;
    }
  }

  while (v19);
  if (v18 == &v16[2 * v17] || *v18 != v15)
  {
LABEL_14:
    v134 = v13;
    v135 = 0;
    if (mlir::ShapedType::hasRank(&v134))
    {
      goto LABEL_15;
    }

    return 0;
  }

  v47 = v18[1];
  v134 = v13;
  v135 = v47;
  if (!mlir::ShapedType::hasRank(&v134))
  {
    return 0;
  }

LABEL_15:
  mlir::ShapedType::getShape(&v134);
  v131 = v24;
  v145 = v147;
  v146 = 0x400000000;
  v142 = v144;
  v143 = 0x400000000;
  v139 = v141;
  v140 = 0x400000000;
  if (a1)
  {
    v25 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v25)
    {
      goto LABEL_44;
    }

    v26 = *v25;
    {
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      if (!v29)
      {
        goto LABEL_44;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      if (!v29)
      {
        goto LABEL_44;
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
      v54 = v30[1];
      v136 = v25;
      v137 = v54;
      if (mlir::ShapedType::hasRank(&v136))
      {
LABEL_45:
        mlir::ShapedType::getShape(&v136);
        if (v131 == v52)
        {
          Shape = mlir::ShapedType::getShape(&v136);
          v130 = 0;
          v50 = v53 == 0;
          v49 = 1;
          v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (!v51)
          {
            goto LABEL_74;
          }

          goto LABEL_62;
        }

LABEL_58:
        v48 = 0;
        v57 = v139;
        if (v139 != v141)
        {
          goto LABEL_173;
        }

        goto LABEL_174;
      }

      goto LABEL_49;
    }

LABEL_44:
    v136 = v25;
    v137 = 0;
    if (mlir::ShapedType::hasRank(&v136))
    {
      goto LABEL_45;
    }

LABEL_49:
    Shape = 0;
    v130 = 0;
    v50 = 1;
    v49 = 1;
    v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v51)
    {
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  if (!a2)
  {
    Shape = 0;
    v130 = 0;
    v49 = 1;
    v50 = 1;
    v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v51)
    {
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v36 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v36)
  {
    v37 = *v36;
    {
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    v41 = v39;
    v42 = v40;
    do
    {
      v43 = v42 >> 1;
      v44 = &v41[2 * (v42 >> 1)];
      v46 = *v44;
      v45 = v44 + 2;
      v42 += ~(v42 >> 1);
      if (v46 < v38)
      {
        v41 = v45;
      }

      else
      {
        v42 = v43;
      }
    }

    while (v42);
    if (v41 != &v39[2 * v40] && *v41 == v38)
    {
      v58 = v41[1];
      v136 = v36;
      v137 = v58;
      if (mlir::ShapedType::hasRank(&v136))
      {
        goto LABEL_55;
      }

LABEL_61:
      Shape = 0;
      v130 = 0;
      v49 = 1;
      v50 = 1;
      v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v51)
      {
        goto LABEL_74;
      }

      goto LABEL_62;
    }
  }

LABEL_54:
  v136 = v36;
  v137 = 0;
  if (!mlir::ShapedType::hasRank(&v136))
  {
    goto LABEL_61;
  }

LABEL_55:
  mlir::ShapedType::getShape(&v136);
  if (v131 != v55)
  {
    goto LABEL_58;
  }

  Shape = 0;
  v130 = mlir::ShapedType::getShape(&v136);
  v49 = v56 == 0;
  v50 = 1;
  v51 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v51)
  {
    goto LABEL_74;
  }

LABEL_62:
  v59 = *v51;
  {
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (!v62)
    {
      goto LABEL_74;
    }
  }

  else
  {
    mlir::mps::ConstantOp::verify();
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (!v62)
    {
      goto LABEL_74;
    }
  }

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
  if (v63 != &v61[2 * v62] && *v63 == v60)
  {
    v84 = v63[1];
    v132 = v51;
    v133 = v84;
    if (!mlir::ShapedType::hasRank(&v132))
    {
      goto LABEL_96;
    }

    goto LABEL_75;
  }

LABEL_74:
  v132 = v51;
  v133 = 0;
  if (!mlir::ShapedType::hasRank(&v132))
  {
    goto LABEL_96;
  }

LABEL_75:
  v69 = mlir::ShapedType::getShape(&v132);
  if (v70)
  {
    v71 = 8 * v70;
    do
    {
      if (*v69 == 0x8000000000000000)
      {
        goto LABEL_96;
      }

      ++v69;
      v71 -= 8;
    }

    while (v71);
  }

  v72 = mlir::ShapedType::getShape(&v132);
  if (v131 != mlir::ShapedType::getNumElements(v72, v73))
  {
    goto LABEL_143;
  }

  mlir::matchConstantWithIntVector<long long>(a4, &v145);
  v74 = v146;
  if (!v146)
  {
    goto LABEL_96;
  }

  v75 = v145;
  v76 = (v146 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v77 = v145;
  if (v76 < 3)
  {
    goto LABEL_107;
  }

  v78 = v76 + 1;
  v77 = &v145->i64[v78 & 0x3FFFFFFFFFFFFFFCLL];
  v79 = v145 + 1;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81 = v78 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v82 = vmovn_s64(vceqq_s64(v79[-1], v80));
    if (v82.i8[0])
    {
      v79[-1].i64[0] = 0x8000000000000000;
      if ((v82.i8[4] & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else if ((v82.i8[4] & 1) == 0)
    {
LABEL_86:
      v83 = vmovn_s64(vceqq_s64(*v79, v80));
      if ((v83.i8[0] & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_87;
    }

    v79[-1].i64[1] = 0x8000000000000000;
    v83 = vmovn_s64(vceqq_s64(*v79, v80));
    if ((v83.i8[0] & 1) == 0)
    {
LABEL_91:
      if ((v83.i8[4] & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_92;
    }

LABEL_87:
    v79->i64[0] = 0x8000000000000000;
    if ((v83.i8[4] & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_92:
    v79->i64[1] = 0x8000000000000000;
LABEL_83:
    v79 += 2;
    v81 -= 4;
  }

  while (v81);
  if (v78 == (v78 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_96;
  }

LABEL_107:
  v96 = &v75->i8[8 * v74];
  do
  {
    if (*v77 == -1)
    {
      *v77 = 0x8000000000000000;
    }

    ++v77;
  }

  while (v77 != v96);
LABEL_96:
  if (!a5)
  {
    goto LABEL_122;
  }

  v85 = (*(a5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v85)
  {
    goto LABEL_114;
  }

  v86 = *v85;
  {
    mlir::mps::ConstantOp::verify();
    v87 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v88 = *(v86 + 8);
    v89 = *(v86 + 16);
    if (v89)
    {
      goto LABEL_100;
    }

    goto LABEL_114;
  }

  v87 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v88 = *(v86 + 8);
  v89 = *(v86 + 16);
  if (!v89)
  {
    goto LABEL_114;
  }

LABEL_100:
  v90 = v88;
  v91 = v89;
  do
  {
    v92 = v91 >> 1;
    v93 = &v90[2 * (v91 >> 1)];
    v95 = *v93;
    v94 = v93 + 2;
    v91 += ~(v91 >> 1);
    if (v95 < v87)
    {
      v90 = v94;
    }

    else
    {
      v91 = v92;
    }
  }

  while (v91);
  if (v90 != &v88[2 * v89] && *v90 == v87)
  {
    v102 = v90[1];
    v136 = v85;
    v137 = v102;
    if (!mlir::ShapedType::hasRank(&v136))
    {
      goto LABEL_122;
    }

LABEL_115:
    v97 = mlir::ShapedType::getShape(&v136);
    if (v98)
    {
      v99 = 8 * v98;
      while (*v97 != 0x8000000000000000)
      {
        ++v97;
        v99 -= 8;
        if (!v99)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_122;
    }

LABEL_119:
    v100 = mlir::ShapedType::getShape(&v136);
    if (v131 == mlir::ShapedType::getNumElements(v100, v101))
    {
      mlir::matchConstantWithFloatVector<float>(a5, &v142);
      goto LABEL_122;
    }

    goto LABEL_143;
  }

LABEL_114:
  v136 = v85;
  v137 = 0;
  if (mlir::ShapedType::hasRank(&v136))
  {
    goto LABEL_115;
  }

LABEL_122:
  if (!a6)
  {
    goto LABEL_146;
  }

  v103 = (*(a6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v103)
  {
    goto LABEL_136;
  }

  v104 = *v103;
  {
    mlir::mps::ConstantOp::verify();
    v105 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v106 = *(v104 + 8);
    v107 = *(v104 + 16);
    if (v107)
    {
      goto LABEL_126;
    }

    goto LABEL_136;
  }

  v105 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v106 = *(v104 + 8);
  v107 = *(v104 + 16);
  if (!v107)
  {
    goto LABEL_136;
  }

LABEL_126:
  v108 = v106;
  v109 = v107;
  do
  {
    v110 = v109 >> 1;
    v111 = &v108[2 * (v109 >> 1)];
    v113 = *v111;
    v112 = v111 + 2;
    v109 += ~(v109 >> 1);
    if (v113 < v105)
    {
      v108 = v112;
    }

    else
    {
      v109 = v110;
    }
  }

  while (v109);
  if (v108 != &v106[2 * v107] && *v108 == v105)
  {
    v119 = v108[1];
    v136 = v103;
    v137 = v119;
    if (!mlir::ShapedType::hasRank(&v136))
    {
      goto LABEL_146;
    }

LABEL_137:
    v114 = mlir::ShapedType::getShape(&v136);
    if (v115)
    {
      v116 = 8 * v115;
      while (*v114 != 0x8000000000000000)
      {
        ++v114;
        v116 -= 8;
        if (!v116)
        {
          goto LABEL_141;
        }
      }

      goto LABEL_146;
    }

LABEL_141:
    v117 = mlir::ShapedType::getShape(&v136);
    if (v131 == mlir::ShapedType::getNumElements(v117, v118))
    {
      mlir::matchConstantWithFloatVector<float>(a6, &v139);
      goto LABEL_146;
    }

LABEL_143:
    v48 = 0;
    v57 = v139;
    if (v139 != v141)
    {
      goto LABEL_173;
    }

    goto LABEL_174;
  }

LABEL_136:
  v136 = v103;
  v137 = 0;
  if (mlir::ShapedType::hasRank(&v136))
  {
    goto LABEL_137;
  }

LABEL_146:
  if (v131 >= 1)
  {
    for (i = 0; v131 != i; ++i)
    {
      if (v50)
      {
        v122 = 0x8000000000000000;
        if (v146)
        {
          goto LABEL_153;
        }
      }

      else
      {
        v122 = *(Shape + 8 * i);
        if (v146)
        {
LABEL_153:
          v123 = v145->u64[i];
          if (v49)
          {
            goto LABEL_154;
          }

          goto LABEL_159;
        }
      }

      v123 = 0x8000000000000000;
      if (v49)
      {
LABEL_154:
        v124 = 0x8000000000000000;
        if (v143)
        {
          goto LABEL_155;
        }

        goto LABEL_160;
      }

LABEL_159:
      v124 = *(v130 + 8 * i);
      if (v143)
      {
LABEL_155:
        v125 = *(v142 + i) != 1.0;
        if (v140)
        {
          goto LABEL_156;
        }

        goto LABEL_161;
      }

LABEL_160:
      v125 = 0;
      if (v140)
      {
LABEL_156:
        v126 = *(v139 + i) != 0.0;
        goto LABEL_162;
      }

LABEL_161:
      v126 = 0;
LABEL_162:
      v136 = v122;
      v137 = v123;
      v138 = v124;
      v127 = mlir::mps::mergeDynamicDims(&v136, 3);
      if (v122 != 0x8000000000000000 && v122 != v127 || v123 != 0x8000000000000000 && v123 != v127)
      {
LABEL_148:
        v121 = *(a7 + 8);
        if (v121 >= *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a7 + 8 * v121) = i;
        ++*(a7 + 8);
        continue;
      }

      if (v124 == 0x8000000000000000)
      {
        if (v125 || v126)
        {
          goto LABEL_148;
        }
      }

      else if (v124 != v127 || v125 || v126)
      {
        goto LABEL_148;
      }
    }
  }

  v48 = 1;
  v57 = v139;
  if (v139 != v141)
  {
LABEL_173:
    free(v57);
  }

LABEL_174:
  if (v142 != v144)
  {
    free(v142);
  }

  if (v145 != v147)
  {
    free(v145);
  }

  return v48;
}

uint64_t mlir::mps::getResizedAxes(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  if (!a1)
  {
    return 0;
  }

  v4 = *(*(a1 + 48) + 16);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
  {
    if (v4 != &mlir::detail::TypeIDResolver<mlir::mps::ResizeGradientOp,void>::id)
    {
      return 0;
    }

    v17 = *(*(a1 + 72) + 24);
    if (*(a1 + 36))
    {
      v18 = a1 - 16;
    }

    else
    {
      v18 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
    v19 = *(a1 + 72);
    v20 = *(a1 + 112);
    v21 = v19 + 32 * v20;
    v22 = (*(a1 + 116) + v20);
    v23 = *(a1 + 120);
    if (v23)
    {
      v14 = *(v19 + 32 * v22 + 24);
      v15 = *(v21 + 24);
      if (*(a1 + 124))
      {
LABEL_16:
        v16 = *(v19 + 32 * (v23 + v22) + 24);
LABEL_21:
        v6 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(v21 + 24);
      if (*(a1 + 124))
      {
        goto LABEL_16;
      }
    }

    v16 = 0;
    goto LABEL_21;
  }

  v6 = *(*(a1 + 72) + 24);
  if (*(a1 + 36))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(a1 + 72);
  v10 = *(a1 + 112);
  v11 = v9 + 32 * v10;
  v12 = (*(a1 + 116) + v10);
  v13 = *(a1 + 120);
  if (!v13)
  {
    v14 = 0;
    v15 = *(v11 + 24);
    if (*(a1 + 124))
    {
      goto LABEL_10;
    }

LABEL_18:
    v16 = 0;
    v17 = 0;
    goto LABEL_22;
  }

  v14 = *(v9 + 32 * v12 + 24);
  v15 = *(v11 + 24);
  if (!*(a1 + 124))
  {
    goto LABEL_18;
  }

LABEL_10:
  v16 = *(v9 + 32 * (v13 + v12) + 24);
  v17 = 0;
LABEL_22:

  return mlir::mps::getResizedAxesImpl(v6, v17, NextResultAtOffset, v15, v14, v16, a2);
}

uint64_t mlir::mps::getResizeLayout(mlir::mps *this, mlir::Operation *a2)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  if (!this)
  {
    goto LABEL_43;
  }

  v2 = *(*(this + 6) + 16);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
  {
    v3 = this;
    if (*(this + 9))
    {
      v16 = this - 16;
    }

    else
    {
      v16 = 0;
    }

    v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v5)
    {
LABEL_36:
      v30 = v5;
      v31 = 0;
      if (mlir::ShapedType::hasRank(&v30))
      {
        goto LABEL_37;
      }

LABEL_43:
      v26 = 0;
      v25 = 0;
      return v25 | v26;
    }

    v17 = *v5;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v17 + 8);
      v9 = *(v17 + 16);
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    else
    {
      mlir::TensorType::operator mlir::ShapedType();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v17 + 8);
      v9 = *(v17 + 16);
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    v10 = v8;
    v18 = v9;
    do
    {
      v19 = v18 >> 1;
      v20 = &v10[2 * (v18 >> 1)];
      v22 = *v20;
      v21 = v20 + 2;
      v18 += ~(v18 >> 1);
      if (v22 < v7)
      {
        v10 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
  }

  else
  {
    if (v2 != &mlir::detail::TypeIDResolver<mlir::mps::ResizeGradientOp,void>::id)
    {
      goto LABEL_43;
    }

    v3 = this;
    if (*(this + 9))
    {
      v4 = this - 16;
    }

    else
    {
      v4 = 0;
    }

    v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v5)
    {
      v30 = 0;
      v31 = 0;
      if (!mlir::ShapedType::hasRank(&v30))
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    v6 = *v5;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    else
    {
      mlir::TensorType::operator mlir::ShapedType();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[2 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 2;
      v11 += ~(v11 >> 1);
      if (v15 < v7)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
  }

  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_36;
  }

  v28 = v10[1];
  v30 = v5;
  v31 = v28;
  if (!mlir::ShapedType::hasRank(&v30))
  {
    goto LABEL_43;
  }

LABEL_37:
  mlir::ShapedType::getShape(&v30);
  if (v23 > 4)
  {
    goto LABEL_43;
  }

  v24 = v23;
  v32 = v34;
  v33 = 0x200000000;
  if (mlir::mps::getResizedAxes(v3, &v32))
  {
    v25 = v33;
    if (v33 <= 2)
    {
      if (v24 == 2)
      {
        v25 = 6;
        v26 = 0x100000000;
        v27 = v32;
        if (v32 == v34)
        {
          return v25 | v26;
        }

        goto LABEL_41;
      }

      if (v24 != 3)
      {
        if (v24 != 4)
        {
          goto LABEL_40;
        }

        if (!v33)
        {
LABEL_69:
          v26 = 0x100000000;
          v27 = v32;
          if (v32 == v34)
          {
            return v25 | v26;
          }

          goto LABEL_41;
        }

        if (v33 == 1)
        {
          if (*v32 != 1)
          {
            goto LABEL_68;
          }
        }

        else if (*v32 != 1 || *(v32 + 1) != 2)
        {
          goto LABEL_68;
        }

        v25 = 1;
        v26 = 0x100000000;
        v27 = v32;
        if (v32 == v34)
        {
          return v25 | v26;
        }

        goto LABEL_41;
      }

      if (!v33)
      {
LABEL_55:
        v25 = 4;
        v26 = 0x100000000;
        v27 = v32;
        if (v32 == v34)
        {
          return v25 | v26;
        }

        goto LABEL_41;
      }

      if (v33 == 1)
      {
        if ((*v32 - 1) < 2)
        {
          goto LABEL_55;
        }

        if (*v32)
        {
LABEL_68:
          v25 = 0;
          goto LABEL_69;
        }
      }

      else
      {
        if (*v32)
        {
          if (*v32 == 1)
          {
            v25 = 4 * (*(v32 + 1) == 2);
            v26 = 0x100000000;
            v27 = v32;
            if (v32 == v34)
            {
              return v25 | v26;
            }

            goto LABEL_41;
          }

          goto LABEL_68;
        }

        if (*(v32 + 1) != 1)
        {
          goto LABEL_68;
        }
      }

      v25 = 5;
      v26 = 0x100000000;
      v27 = v32;
      if (v32 == v34)
      {
        return v25 | v26;
      }

      goto LABEL_41;
    }
  }

LABEL_40:
  v26 = 0;
  v25 = 0;
  v27 = v32;
  if (v32 != v34)
  {
LABEL_41:
    free(v27);
  }

  return v25 | v26;
}

BOOL mlir::mps::ResizeOp::verify(mlir::Operation **this)
{
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v5 = *this;
  v6 = *(*this + 9);
  v7 = *(v6 + 24);
  v8 = *(*this + 28);
  v9 = *(v6 + 32 * v8 + 24);
  v10 = (*(*this + 29) + v8);
  v11 = *(*this + 30);
  if (v11)
  {
    v12 = *(v6 + 32 * v10 + 24);
    if (*(v5 + 31))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (*(v5 + 31))
    {
LABEL_6:
      v13 = *(v6 + 32 * (v11 + v10) + 24);
      v14 = v2;

      return mlir::mps::verifyResize(v14, v4, v7, 0, v9, v12, v13);
    }
  }

  v13 = 0;
  v14 = v2;

  return mlir::mps::verifyResize(v14, v4, v7, 0, v9, v12, v13);
}

BOOL mlir::mps::ResizeGradientOp::verify(mlir::Operation **this)
{
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v5 = *this;
  v6 = *(*this + 9);
  v7 = *(v6 + 24);
  v8 = *(*this + 28);
  v9 = *(v6 + 32 * v8 + 24);
  v10 = (*(*this + 29) + v8);
  v11 = *(*this + 30);
  if (v11)
  {
    v12 = *(v6 + 32 * v10 + 24);
    if (*(v5 + 31))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (*(v5 + 31))
    {
LABEL_6:
      v13 = *(v6 + 32 * (v11 + v10) + 24);
      v14 = v2;

      return mlir::mps::verifyResize(v14, v4, 0, v7, v9, v12, v13);
    }
  }

  v13 = 0;
  v14 = v2;

  return mlir::mps::verifyResize(v14, v4, 0, v7, v9, v12, v13);
}

uint64_t mlir::mps::ResizeGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    *v44 = a7[2];
  }

  else
  {
    v14 = 0uLL;
    *v44 = 0u;
    v15 = 0uLL;
  }

  v46 = a6;
  v47[0] = 0;
  v48 = 0;
  v49 = v14;
  v50 = v15;
  v51 = *v44;
  v52 = a9;
  v53 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v46);
    if (v48 == 1)
    {
      v48 = 0;
    }

    mlir::OperationName::OperationName(v47, "mps.resize_gradient", 19, Context);
    v48 = 1;
  }

  v54 = a4;
  v55 = a5;
  if (!a5 || (v17 = mlir::UnknownLoc::get(this, a2), (mlir::mps::ResizeGradientOpAdaptor::verify(&v46, v17) & 1) == 0))
  {
    v30 = mlir::Float32Type::get(this, a2);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a5 == 1 || (v44[0] = v54, v44[1] = 0, v18 = mlir::ValueRange::dereference_iterator(v44, 0), v43[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v18 + 8) & 0xFFFFFFFFFFFFFFF8)), v43[1] = v19, !v43[0]))
  {
    v44[0] = v54;
    v44[1] = 0;
    v34 = mlir::ValueRange::dereference_iterator(v44, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v34);
    v31 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
LABEL_25:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_22:
    *(*a11 + 8 * v32) = v31;
    ++*(a11 + 8);
    return 1;
  }

  v44[0] = v45;
  v44[1] = 0x400000000;
  v20 = v54;
  v56 = v54;
  v57 = v51;
  if (v51)
  {
    v20 = mlir::ValueRange::offset_base(&v56, v51);
  }

  v56 = v20;
  v57 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v56, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v21, v44) & 1) == 0)
  {
    v56 = v54;
    v57 = 0;
    v36 = mlir::ValueRange::dereference_iterator(&v56, 0);
    v37 = mlir::getElementTypeOrSelf(v36);
    v29 = mlir::UnrankedTensorType::get(v37);
LABEL_27:
    v38 = *(a11 + 8);
    if (v38 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v38) = v29;
    ++*(a11 + 8);
    result = 1;
    v39 = v44[0];
    if (v44[0] != v45)
    {
      goto LABEL_29;
    }

    return result;
  }

  if (!mlir::ShapedType::hasRank(v43))
  {
LABEL_20:
    ElementType = mlir::ShapedType::getElementType(v43);
    v29 = mlir::RankedTensorType::get(v44[0], LODWORD(v44[1]), ElementType, 0);
    goto LABEL_27;
  }

  Shape = mlir::ShapedType::getShape(v43);
  if (v23 == LODWORD(v44[1]))
  {
    if (LODWORD(v44[1]))
    {
      v24 = Shape;
      v25 = 0;
      v26 = v44[0];
      do
      {
        v56 = v26[v25];
        v57 = *(v24 + 8 * v25);
        v27 = mlir::mps::mergeDynamicDims(&v56, 2);
        v26 = v44[0];
        *(v44[0] + v25++) = v27;
      }

      while (v25 < LODWORD(v44[1]));
    }

    goto LABEL_20;
  }

  v56 = v54;
  v57 = 0;
  v41 = mlir::ValueRange::dereference_iterator(&v56, 0);
  v42 = mlir::getElementTypeOrSelf(v41);
  result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v42);
  v39 = v44[0];
  if (v44[0] != v45)
  {
LABEL_29:
    v40 = result;
    free(v39);
    return v40;
  }

  return result;
}

uint64_t mlir::mps::ResizeGradientOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    return 1;
  }

  v12 = "'mps.resize_gradient' op requires attribute 'mode'";
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

uint64_t mlir::mps::ResizeGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::TopKOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v57[0] = a11;
  v57[1] = &v58;
  v58 = a1;
  if (a7)
  {
    v13 = *a7;
    v64 = a6;
    v65[0] = 0;
    v66 = 0;
    v67 = v13;
    v68 = a9;
    v69 = a10;
    if (!a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v64 = a6;
    v65[0] = 0;
    v66 = 0;
    v67 = 0;
    v68 = a9;
    v69 = a10;
    if (!a6)
    {
LABEL_3:
      v70 = a4;
      v71 = a5;
      v14 = v58;
      if (a5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  Context = mlir::Attribute::getContext(&v64);
  if (v66 == 1)
  {
    v66 = 0;
  }

  mlir::OperationName::OperationName(v65, "mps.top_k", 9, Context);
  v66 = 1;
  v70 = a4;
  v71 = a5;
  v14 = v58;
  if (a5)
  {
LABEL_4:
    mlir::UnknownLoc::get(v14, a2);
    if (a5 > 2)
    {
      v61 = v70;
      v62 = 0;
      v15 = mlir::ValueRange::dereference_iterator(&v61, 0);
      v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
      v56[0] = v16;
      v56[1] = v17;
      v61 = v70;
      v62 = 1;
      v61 = mlir::ValueRange::offset_base(&v61, 1);
      v62 = 0;
      v18 = mlir::ValueRange::dereference_iterator(&v61, 0);
      v61 = 0;
      v62 = 0;
      v59 = &v61;
      v60 = v18;
      DefiningOp = mlir::Value::getDefiningOp(&v60);
      if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, DefiningOp))
      {
        SingleInt = mlir::getSingleIntValue<int>(v61, v62);
        v21 = SingleInt & 0xFFFFFF00;
        v22 = SingleInt;
        v23 = HIDWORD(SingleInt) & 1;
      }

      else
      {
        LOBYTE(v23) = 0;
        v22 = 0;
        v21 = 0;
      }

      v61 = v70;
      v62 = 2;
      v61 = mlir::ValueRange::offset_base(&v61, 2);
      v62 = 0;
      v26 = mlir::ValueRange::dereference_iterator(&v61, 0);
      v61 = 0;
      v62 = 0;
      v59 = &v61;
      v60 = v26;
      v27 = mlir::Value::getDefiningOp(&v60);
      if (v27 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, v27))
      {
        v28 = mlir::getSingleIntValue<int>(v61, v62);
        v29 = v28 & 0xFFFFFF00;
        v30 = v28;
        v31 = (v28 & 0x100000000) == 0;
        if (((v16 != 0) & v23) != 1)
        {
          goto LABEL_24;
        }

LABEL_19:
        if (!mlir::ShapedType::hasRank(v56))
        {
          goto LABEL_24;
        }

        mlir::ShapedType::getShape(v56);
        if (!v32)
        {
          goto LABEL_24;
        }

        mlir::ShapedType::getShape(v56);
        v34 = (v33 & ((v21 | v22) >> 63)) + (v21 | v22);
        if (v34 < v33)
        {
          if (v31)
          {
            v35 = 0x8000000000000000;
            goto LABEL_31;
          }

          v35 = v29 | v30;
          if ((v29 | v30) > 0)
          {
LABEL_31:
            Shape = mlir::ShapedType::getShape(v56);
            v44 = mlir::ShapedType::getShape(v56);
            llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v61, Shape, (v44 + 8 * v45));
            v46 = v61;
            *(v61 + v34) = v35;
            v47 = v62;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v56[0]);
            v49 = mlir::RankedTensorType::get(v46, v47, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v49);
            v50 = v61;
            v51 = v62;
            v52 = mlir::IntegerType::get(v58, 32, 1u);
            v53 = mlir::RankedTensorType::get(v50, v51, v52, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v53);
            if (v61 != &v63)
            {
              free(v61);
            }

            return 1;
          }
        }

        v61 = v70;
        v62 = 0;
        v54 = mlir::ValueRange::dereference_iterator(&v61, 0);
        v55 = mlir::getElementTypeOrSelf(v54);
        return mlir::mps::TopKOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(v57, v55);
      }

      v30 = 0;
      v29 = 0;
      v31 = 1;
      if (((v16 != 0) & v23) == 1)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    v61 = v70;
    v62 = 0;
    v36 = mlir::ValueRange::dereference_iterator(&v61, 0);
    v25 = mlir::getElementTypeOrSelf(v36);
    goto LABEL_25;
  }

LABEL_12:
  v25 = mlir::Float32Type::get(v14, a2);
LABEL_25:
  v37 = mlir::UnrankedTensorType::get(v25);
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v38) = v37;
  ++*(a11 + 8);
  v39 = mlir::IntegerType::get(v58, 32, 1u);
  v40 = mlir::UnrankedTensorType::get(v39);
  v41 = *(a11 + 8);
  if (v41 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v41) = v40;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::TopKOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = mlir::UnrankedTensorType::get(a2);
  v5 = *(v3 + 8);
  if (v5 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v3 + 8 * v5) = v4;
  ++*(v3 + 8);
  v6 = *a1;
  v7 = mlir::IntegerType::get(*a1[1], 32, 1u);
  v8 = mlir::UnrankedTensorType::get(v7);
  v9 = *(v6 + 8);
  if (v9 >= *(v6 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v6 + 8 * v9) = v8;
  ++*(v6 + 8);
  return 1;
}

uint64_t mlir::mps::TopKOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::TopKOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *(*(*this + 9) + 88);
  v48 = 0;
  v49 = 0;
  v46[0] = &v48;
  v41[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v41);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v46, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<int>(v48, v49);
  v43 = SingleInt;
  v44 = BYTE4(SingleInt);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 1;
  }

  if (SingleInt > 0)
  {
    v5 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v5)
    {
      goto LABEL_38;
    }

    v6 = *v5;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[2 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 2;
      v11 += ~(v11 >> 1);
      if (v15 < v7)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    if (v10 != &v8[2 * v9] && *v10 == v7)
    {
      v38 = v10[1];
      v39 = v5;
      v40 = v38;
      if (mlir::ShapedType::hasRank(&v39))
      {
LABEL_39:
        {
          return 0;
        }

        v46[0] = &v47;
        v46[1] = 0x100000000;
        v26 = *(*(*this + 9) + 56);
        mlir::ShapedType::getShape(&v39);
        v28 = v27;
        v48 = 0;
        v49 = 0;
        v45 = &v48;
        v41[0] = v26;
        v29 = mlir::Value::getDefiningOp(v41);
        if (v29 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v45, v29) & 1) != 0)
        {
        }

        else
        {
          mlir::emitOptionalError<char const(&)[24]>(0, 0, "axes is not a constant");
        }

        v30 = 1;
        v45 = 1;
        mlir::ShapedType::getShape(&v39);
        if (v31 >= 1)
        {
          v32 = *v46[0];
          v30 = *(mlir::ShapedType::getShape(&v39) + 8 * v32);
          v45 = v30;
        }

        result = 1;
        if (v30 != 0x8000000000000000 && v30 < v43)
        {
          v41[0] = "k is larger than input minor dimension, ";
          v42 = 259;
          mlir::OpState::emitOpError(this, v41, &v48);
          mlir::InFlightDiagnostic::operator<<<int &>(&v48, &v43);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v33, " > ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v34, &v45);
          v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
          result = v36;
        }

        if (v46[0] != &v47)
        {
          v37 = result;
          free(v46[0]);
          return v37;
        }

        return result;
      }

      return 1;
    }

LABEL_38:
    v39 = v5;
    v40 = 0;
    if (mlir::ShapedType::hasRank(&v39))
    {
      goto LABEL_39;
    }

    return 1;
  }

  v41[0] = "K must be larger than 0";
  v42 = 259;
  mlir::OpState::emitOpError(this, v41, &v48);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
  v17 = result;
  if (v48)
  {
    mlir::InFlightDiagnostic::report(&v48);
    result = v17;
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v55;
      v20 = __p;
      if (v55 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v55 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v52;
    if (v52)
    {
      v22 = v53;
      v23 = v52;
      if (v53 != v52)
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
        v23 = v52;
      }

      v53 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v50 != &v51)
    {
      free(v50);
      return v17;
    }
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::verifyConstantAxis(mlir::mps::_anonymous_namespace_ *this, mlir::Operation *a2)
{
  v52[6] = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = *(v3 + 32 * a2 + 24);
  v5 = (*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *v5;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v16 = v10[1];
    goto LABEL_15;
  }

LABEL_14:
  v16 = 0;
LABEL_15:
  v40[0] = v5;
  v40[1] = v16;
  v50 = v52;
  v51 = 0x600000000;
  if (mlir::ShapedType::hasRank(v40) && (mlir::matchConstantWithIntVector<long long>(v4, &v50) & 1) != 0 && v51)
  {
    v17 = v50;
    v18 = 8 * v51;
    while (1)
    {
      v39 = *v17;
      mlir::ShapedType::getShape(v40);
      v41[0] = v39;
      if (v39 < -v19 || v19 <= v39)
      {
        break;
      }

      ++v17;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    v32[0] = -v19;
    v37[0] = (v19 - 1);
    mlir::emitOptionalError<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(0, 0, "invalid axis ", v41, " is outside of the range [", v32, ", ", v37, "]");
    mlir::ShapedType::getShape(v40);
    v32[0] = "failed: constant axis ({0}) is not within range for the input tensor rank ({1})";
    v32[1] = 79;
    v32[2] = v36;
    v32[3] = 2;
    v33 = 1;
    v34[0] = &unk_28685E520;
    v34[1] = &v39;
    v35[0] = &unk_28685E550;
    v35[1] = v23;
    v36[0] = v34;
    v36[1] = v35;
    v38 = 263;
    v37[0] = v32;
    mlir::Operation::emitOpError(v41, this, v37);
    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v47;
        v26 = __p;
        if (v47 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v47 = v24;
        operator delete(v26);
      }

      v27 = v44;
      if (v44)
      {
        v28 = v45;
        v29 = v44;
        if (v45 != v44)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              MEMORY[0x259C63150](v30, 0x1000C8077774924);
            }
          }

          while (v28 != v27);
          v29 = v44;
        }

        v45 = v27;
        operator delete(v29);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  else
  {
LABEL_24:
    v21 = 1;
  }

  if (v50 != v52)
  {
    free(v50);
  }

  return v21;
}

__n128 mlir::InFlightDiagnostic::operator<<<int &>(uint64_t a1, int *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v7.n128_u32[0] = 2;
    v7.n128_u64[1] = v3;
    v4 = *(a1 + 32);
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v7 && v2 + 24 * v4 > &v7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v2 + 24 * *(a1 + 32));
    result = v7;
    v5[1].n128_u64[0] = v8;
    *v5 = result;
    ++*(a1 + 32);
  }

  return result;
}

uint64_t mlir::mps::TopKGradientOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67[2] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v59 = a6;
  v60[0] = 0;
  v61 = 0;
  v62 = v13;
  v63 = a9;
  v64 = a10;
  if (a6)
  {
    v14 = a1;
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(v60, "mps.top_k_grad", 14, Context);
    v61 = 1;
    a1 = v14;
  }

  v65 = a4;
  v66 = a5;
  if (!a5)
  {
    v43 = mlir::Float32Type::get(a1, a2);
    v40 = mlir::UnrankedTensorType::get(v43);
    v41 = *(a11 + 8);
    if (v41 < *(a11 + 12))
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || (v56 = v65, v57 = 0, v16 = mlir::ValueRange::dereference_iterator(&v56, 0), v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8)), v54[0] = v17, v54[1] = v18, v56 = v65, v57 = 1, v56 = mlir::ValueRange::offset_base(&v56, 1), v57 = 0, v19 = mlir::ValueRange::dereference_iterator(&v56, 0), v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8)), v53[0] = v20, v53[1] = v21, v56 = v65, v57 = 2, v56 = mlir::ValueRange::offset_base(&v56, 2), v57 = 0, v22 = mlir::ValueRange::dereference_iterator(&v56, 0), v56 = 0, v57 = 0, v55 = &v56, v67[0] = v22, (DefiningOp = mlir::Value::getDefiningOp(v67)) == 0) || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, DefiningOp) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(v56, v57), !v17) || !v20 || (v25 = SingleInt, (SingleInt & 0x100000000) == 0) || !mlir::ShapedType::hasRank(v54) || !mlir::ShapedType::hasRank(v53) || (mlir::ShapedType::getShape(v54), !v26) || (mlir::ShapedType::getShape(v53), !v27) || (mlir::ShapedType::getShape(v54), v29 = v28, mlir::ShapedType::getShape(v53), v29 != v30))
  {
    v56 = v65;
    v57 = 0;
    v38 = mlir::ValueRange::dereference_iterator(&v56, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v38);
    v40 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v41 = *(a11 + 8);
    if (v41 < *(a11 + 12))
    {
LABEL_24:
      *(*a11 + 8 * v41) = v40;
      ++*(a11 + 8);
      return 1;
    }

LABEL_28:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  mlir::ShapedType::getShape(v54);
  v32 = (v31 & (v25 >> 63)) + v25;
  if (v32 >= v31)
  {
    v56 = v65;
    v57 = 0;
    v46 = mlir::ValueRange::dereference_iterator(&v56, 0);
    v47 = mlir::getElementTypeOrSelf(v46);
    return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v47);
  }

  Shape = mlir::ShapedType::getShape(v54);
  v34 = mlir::ShapedType::getShape(v54);
  llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v56, Shape, (v34 + 8 * v35));
  mlir::ShapedType::getShape(v54);
  if (v36 >= 1)
  {
    for (i = 0; i < v44; ++i)
    {
      if (v32 != i && *(v56 + i) == 0x8000000000000000)
      {
        v45 = mlir::ShapedType::getShape(v53);
        *(v56 + i) = *(v45 + 8 * i);
      }

      mlir::ShapedType::getShape(v54);
    }
  }

  v48 = v56;
  v49 = v57;
  v67[0] = v65;
  v67[1] = 0;
  v50 = mlir::ValueRange::dereference_iterator(v67, 0);
  v51 = mlir::getElementTypeOrSelf(v50);
  v52 = mlir::RankedTensorType::get(v48, v49, v51, 0);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v52);
  if (v56 != &v58)
  {
    free(v56);
  }

  return 1;
}

uint64_t mlir::mps::TopKGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::TopKGradientOp::verify(mlir::Operation **this)
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v13 = v2;
    mlir::TensorType::operator mlir::ShapedType();
    v2 = v13;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v14 = v7[1];
LABEL_15:
  v84[0] = v2;
  v84[1] = v14;
  v15 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = *v15;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v26 = v15;
    mlir::TensorType::operator mlir::ShapedType();
    v15 = v26;
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_29;
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
  if (v20 != &v18[2 * v19] && *v20 == v17)
  {
    v34 = v20[1];
    v82 = v15;
    v83 = v34;
    if (!mlir::ShapedType::hasRank(v84))
    {
      return 1;
    }

    goto LABEL_30;
  }

LABEL_29:
  v82 = v15;
  v83 = 0;
  if (!mlir::ShapedType::hasRank(v84))
  {
    return 1;
  }

LABEL_30:
  if (!mlir::ShapedType::hasRank(&v82))
  {
    return 1;
  }

  mlir::ShapedType::getShape(v84);
  v28 = v27;
  mlir::ShapedType::getShape(&v82);
  if (v28 != v29)
  {
    v70[0] = "failed: input and gradient tensors must have the same rank, but got {0} and {1}";
    v70[1] = 79;
    v70[2] = v74;
    v70[3] = 2;
    LOBYTE(v71) = 1;
    v72[0] = &unk_28686BB90;
    v72[1] = v84;
    v73[0] = &unk_28686BB90;
    v73[1] = &v82;
    v74[0] = v72;
    v74[1] = v73;
    v81 = 263;
    v80[0] = v70;
    mlir::OpState::emitOpError(this, v80, &v87);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    v36 = result;
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
      result = v36;
    }

    if (v96 == 1)
    {
      if (v95 != &v96)
      {
        free(v95);
        result = v36;
      }

      v37 = __p;
      if (__p)
      {
        v38 = v94;
        v39 = __p;
        if (v94 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v94 = v37;
        operator delete(v39);
        result = v36;
      }

      v40 = v91;
      if (v91)
      {
        v41 = v92;
        v42 = v91;
        if (v92 != v91)
        {
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
          v42 = v91;
        }

        v92 = v40;
        operator delete(v42);
        result = v36;
      }

      if (v89 != &v90)
      {
        free(v89);
        return v36;
      }
    }

    return result;
  }

  {
    return 0;
  }

  v85[0] = &v86;
  v85[1] = 0x100000000;
  v30 = *(*(*this + 9) + 88);
  mlir::ShapedType::getShape(v84);
  v32 = v31;
  v87 = 0;
  v88 = 0;
  v80[0] = &v87;
  v70[0] = v30;
  DefiningOp = mlir::Value::getDefiningOp(v70);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v80, DefiningOp) & 1) != 0)
  {
  }

  else
  {
    mlir::emitOptionalError<char const(&)[24]>(0, 0, "axes is not a constant");
  }

  v45 = *(*(*this + 9) + 120);
  v87 = 0;
  v88 = 0;
  v80[0] = &v87;
  v70[0] = v45;
  v46 = mlir::Value::getDefiningOp(v70);
  if (v46)
  {
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v80, v46))
    {
      SingleInt = mlir::getSingleIntValue<int>(v87, v88);
      v78 = SingleInt;
      v79 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        if (SingleInt <= 0)
        {
          v70[0] = "failed: k must positive";
          v71 = 259;
          v57 = v70;
        }

        else
        {
          v50 = SingleInt;
          v51 = 1;
          v77 = 1;
          mlir::ShapedType::getShape(v84);
          if (v52 >= 1)
          {
            v53 = *v85[0];
            v51 = *(mlir::ShapedType::getShape(v84) + 8 * v53);
            v77 = v51;
          }

          if (v51 != 0x8000000000000000 && v51 < v50)
          {
            v70[0] = "failed: k is larger than input minor dimension, ";
            v71 = 259;
            mlir::OpState::emitOpError(this, v70, &v87);
            mlir::InFlightDiagnostic::operator<<<int &>(&v87, &v78);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v54, " > ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v55, &v77);
            goto LABEL_80;
          }

          v58 = 1;
          v76 = 1;
          mlir::ShapedType::getShape(&v82);
          if (v59 >= 1)
          {
            v60 = *v85[0];
            v58 = *(mlir::ShapedType::getShape(&v82) + 8 * v60);
            v76 = v58;
          }

          if (v58 == 0x8000000000000000 || v58 == v78)
          {
            v75 = 0;
            mlir::ShapedType::getShape(v84);
            if (v62 < 1)
            {
LABEL_91:
              result = 1;
              v48 = v85[0];
              if (v85[0] != &v86)
              {
                goto LABEL_61;
              }

              return result;
            }

            v63 = 1;
            while (1)
            {
              v66 = v63 - 1;
              if (v63 - 1 != *v85[0] && *(mlir::ShapedType::getShape(v84) + 8 * v66) != 0x8000000000000000 && *(mlir::ShapedType::getShape(&v82) + 8 * v66) != 0x8000000000000000)
              {
                v67 = *(mlir::ShapedType::getShape(v84) + 8 * v66);
                if (v67 != *(mlir::ShapedType::getShape(&v82) + 8 * v66))
                {
                  break;
                }
              }

              v75 = v63;
              mlir::ShapedType::getShape(v84);
              if (v63++ >= v64)
              {
                goto LABEL_91;
              }
            }

            v69 = *(mlir::ShapedType::getShape(v84) + 8 * v66);
            v68 = *(mlir::ShapedType::getShape(&v82) + 8 * v66);
            llvm::formatv<long long &,long long,long long>("failed: input tensor and input gradient tensor shape do not match along dimension {0}, {1} != {2}", &v75, &v69, &v68, v70);
          }

          else
          {
            llvm::formatv<long long &,int &>("failed: input gradient dimension at axis dimension is not equal k: {0} != {1}", &v76, &v78, v70);
          }

          v81 = 263;
          v80[0] = v70;
          v57 = v80;
        }

        mlir::OpState::emitOpError(this, v57, &v87);
        v56 = &v87;
LABEL_80:
        v61 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
        result = v61;
        v48 = v85[0];
        if (v85[0] != &v86)
        {
          goto LABEL_61;
        }

        return result;
      }
    }
  }

  result = 1;
  v48 = v85[0];
  if (v85[0] != &v86)
  {
LABEL_61:
    v49 = result;
    free(v48);
    return v49;
  }

  return result;
}

const char *llvm::formatv<long long &,int &>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __s;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v6;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_28685E520;
  *(a4 + 48) = a2;
  *(a4 + 56) = &unk_286872050;
  *(a4 + 64) = a3;
  *(a4 + 80) = a4 + 56;
  return __s;
}

const char *llvm::formatv<long long &,long long,long long>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = __s;
  v8 = *a3;
  v9 = *a4;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a5 = v6;
  *(a5 + 8) = __s;
  *(a5 + 88) = a5 + 40;
  *(a5 + 16) = a5 + 88;
  *(a5 + 24) = 3;
  *(a5 + 32) = 1;
  *(a5 + 40) = &unk_28685E520;
  *(a5 + 48) = a2;
  *(a5 + 56) = &unk_28685E550;
  *(a5 + 64) = v8;
  *(a5 + 72) = &unk_28685E550;
  *(a5 + 80) = v9;
  *(a5 + 96) = a5 + 56;
  *(a5 + 104) = a5 + 72;
  return __s;
}

uint64_t mlir::mps::SliceOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  v58 = a6;
  v59[0] = 0;
  v60 = 0;
  v61 = a9;
  v62 = a10;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(v59, "mps.slice", 9, Context);
    v60 = 1;
    a1 = v13;
  }

  v63 = a4;
  v64 = a5;
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
LABEL_27:
    v43 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v44 = *(a11 + 8);
    if (v44 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v44) = v43;
    ++*(a11 + 8);
    return 1;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || ((v55 = v63, v56 = 0, v15 = mlir::ValueRange::dereference_iterator(&v55, 0), v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8)), v52[0] = v16, v52[1] = v17, v55 = v63, v56 = 1, v55 = mlir::ValueRange::offset_base(&v55, 1), v56 = 0, v18 = mlir::ValueRange::dereference_iterator(&v55, 0), v55 = 0, v56 = 0, v53 = &v55, v54 = v18, (DefiningOp = mlir::Value::getDefiningOp(&v54)) == 0) || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v53, DefiningOp) ? (LODWORD(v23) = 0, v22 = 0, v21 = 0) : (SingleInt = mlir::getSingleIntValue<int>(v55, v56), v21 = SingleInt & 0xFFFFFF00, v22 = SingleInt, v23 = HIDWORD(SingleInt) & 1), (v55 = v63, v56 = 2, v55 = mlir::ValueRange::offset_base(&v55, 2), v56 = 0, v25 = mlir::ValueRange::dereference_iterator(&v55, 0), v55 = 0, v56 = 0, v53 = &v55, v54 = v25, (v26 = mlir::Value::getDefiningOp(&v54)) == 0) || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v53, v26) ? (LODWORD(v30) = 0, v29 = 0, v28 = 0) : (v27 = mlir::getSingleIntValue<int>(v55, v56), v28 = v27 & 0xFFFFFF00, v29 = v27, v30 = HIDWORD(v27) & 1), (v55 = v63, v56 = 3, v55 = mlir::ValueRange::offset_base(&v55, 3), v56 = 0, v31 = mlir::ValueRange::dereference_iterator(&v55, 0), v55 = 0, v56 = 0, v53 = &v55, v54 = v31, (v32 = mlir::Value::getDefiningOp(&v54)) == 0) || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v53, v32) & 1) == 0 || (v33 = mlir::getSingleIntValue<int>(v55, v56), ((v16 != 0) & v23 & v30) != 1) || (v33 & 0x100000000) == 0))
  {
    v55 = v63;
    v56 = 0;
    v42 = mlir::ValueRange::dereference_iterator(&v55, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v42);
    goto LABEL_27;
  }

  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v16);
  }

  else
  {
    v34 = v33;
    mlir::ShapedType::getShape(v52);
    v36 = (v35 & ((v21 | v22) >> 63)) + (v21 | v22);
    if (v36 >= v35 || (v34 & 0x80000000) != 0 || (v37 = v34, *(mlir::ShapedType::getShape(v52) + 8 * v36) != 0x8000000000000000) && (v38 = v34 + (v28 | v29) + (*(mlir::ShapedType::getShape(v52) + 8 * v36) & ((v28 | v29) >> 63)), v38 > *(mlir::ShapedType::getShape(v52) + 8 * v36)))
    {
      v55 = v63;
      v56 = 0;
      v39 = mlir::ValueRange::dereference_iterator(&v55, 0);
      v40 = mlir::getElementTypeOrSelf(v39);
      return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v40);
    }

    Shape = mlir::ShapedType::getShape(v52);
    v46 = mlir::ShapedType::getShape(v52);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v55, Shape, (v46 + 8 * v47));
    v48 = v55;
    if (*(v55 + v36) != 0x8000000000000000)
    {
      *(v55 + v36) = v37;
    }

    v49 = v56;
    ElementType = mlir::ShapedType::getElementType(v52);
    v51 = mlir::RankedTensorType::get(v48, v49, ElementType, 0);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v51);
    if (v55 != &v57)
    {
      free(v55);
    }
  }

  return 1;
}

uint64_t mlir::mps::SliceOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::SliceOp::verify(mlir::Operation **this)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      mlir::TensorType::operator mlir::ShapedType();
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[2 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 2;
      v8 += ~(v8 >> 1);
      if (v12 < v4)
      {
        v7 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    if (v7 != &v5[2 * v6] && *v7 == v4)
    {
      v27 = v7[1];
      v58 = v2;
      v59 = v27;
      if (!mlir::ShapedType::hasRank(&v58))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v58 = v2;
  v59 = 0;
  if (!mlir::ShapedType::hasRank(&v58))
  {
    return 1;
  }

LABEL_15:
  mlir::ShapedType::getShape(&v58);
  v14 = v13;
  v57 = v13;
  v15 = *(*(*this + 9) + 56);
  v60 = 0;
  v61 = 0;
  v54[0] = &v60;
  v41 = v15;
  DefiningOp = mlir::Value::getDefiningOp(&v41);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v54, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<int>(v60, v61);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 1;
  }

  v18 = (v14 & (SingleInt >> 63)) + SingleInt;
  v56 = v18;
  if (v18 < 0 || v18 >= v14)
  {
    v41 = "failed: axis value {0} does not fit tensor rank ({1})";
    v42 = 53;
    v43 = &v50;
    v44 = 2;
    v45 = 1;
    v46 = &unk_28685E520;
    v47 = &v56;
    v48 = &unk_28685E520;
    v49 = &v57;
    v50 = &v46;
    v51 = &v48;
    v55 = 263;
    v54[0] = &v41;
    mlir::OpState::emitOpError(this, v54, &v60);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    v29 = result;
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
      result = v29;
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
        result = v29;
      }

      v30 = __p;
      if (__p)
      {
        v31 = v67;
        v32 = __p;
        if (v67 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v67 = v30;
        operator delete(v32);
        result = v29;
      }

      v33 = v64;
      if (v64)
      {
        v34 = v65;
        v35 = v64;
        if (v65 != v64)
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
          v35 = v64;
        }

        v65 = v33;
        operator delete(v35);
        result = v29;
      }

      if (v62 != &v63)
      {
        free(v62);
        return v29;
      }
    }

    return result;
  }

  v19 = *(*(*this + 9) + 88);
  v60 = 0;
  v61 = 0;
  v54[0] = &v60;
  v41 = v19;
  v20 = mlir::Value::getDefiningOp(&v41);
  if (!v20)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v54, v20) & 1) == 0)
  {
    return 1;
  }

  v21 = mlir::getSingleIntValue<int>(v60, v61);
  if ((v21 & 0x100000000) == 0)
  {
    return 1;
  }

  v22 = v21;
  if (*(mlir::ShapedType::getShape(&v58) + 8 * v18) == 0x8000000000000000)
  {
    return 1;
  }

  v23 = (*(mlir::ShapedType::getShape(&v58) + 8 * v18) & (v22 >> 63)) + v22;
  v53 = v23;
  if (v23 >= 0 && v23 < *(mlir::ShapedType::getShape(&v58) + 8 * v18))
  {
    matched = mlir::matchConstantWithIntValue<int>(*(*(*this + 9) + 120));
    if ((matched & 0x100000000) != 0)
    {
      v52 = matched;
      if ((matched & 0x80000000) != 0 || (v25 = v53 + matched, v25 > *(mlir::ShapedType::getShape(&v58) + 8 * v18)))
      {
        v40 = *(mlir::ShapedType::getShape(&v58) + 8 * v18);
        llvm::formatv<long long &,long long,long long &>("failed: length value {0} does not fit within the dimension size ({1}) with start value ({2})", &v52, &v40, &v53, &v41);
        v55 = 263;
        v54[0] = &v41;
        mlir::OpState::emitOpError(this, v54, &v60);
        v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
        return v26;
      }
    }

    return 1;
  }

  v38 = *(mlir::ShapedType::getShape(&v58) + 8 * v18);
  v41 = "failed: start value {0} does not fit dimension size ({1})";
  v42 = 57;
  v43 = &v50;
  v44 = 2;
  v45 = 1;
  v46 = &unk_28685E520;
  v47 = &v53;
  v48 = &unk_28685E550;
  v49 = v38;
  v50 = &v46;
  v51 = &v48;
  v55 = 263;
  v54[0] = &v41;
  mlir::OpState::emitOpError(this, v54, &v60);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    v39 = result;
    mlir::InFlightDiagnostic::report(&v60);
    result = v39;
  }

  if (v69 == 1)
  {
    v26 = result;
    mlir::Diagnostic::~Diagnostic(&v61);
    return v26;
  }

  return result;
}

const char *llvm::formatv<long long &,long long,long long &>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = __s;
  v9 = *a3;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a5 = v7;
  *(a5 + 8) = __s;
  *(a5 + 88) = a5 + 40;
  *(a5 + 16) = a5 + 88;
  *(a5 + 24) = 3;
  *(a5 + 32) = 1;
  *(a5 + 40) = &unk_28685E520;
  *(a5 + 48) = a2;
  *(a5 + 56) = &unk_28685E550;
  *(a5 + 64) = v9;
  *(a5 + 72) = &unk_28685E520;
  *(a5 + 80) = a4;
  *(a5 + 96) = a5 + 56;
  *(a5 + 104) = a5 + 72;
  return __s;
}

uint64_t mlir::mps::anonymous namespace::verifyStridedSlice(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v141 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*v8 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v11 = v10;
  if (!v10)
  {
    v8 = 0;
  }

  v117 = v8;
  v12 = *(*(*(a5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v14 = v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v15 = *(*(*(a6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v17 = v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v18 = *(*(*(a7 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v20 = v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v11)
  {
    v21 = !v14;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 || !v17;
  if (v22 || !v20)
  {
    v126 = "cannot run strided slice a non-tensor type";
    v128[8] = 259;
    mlir::Operation::emitOpError(&v129, a1, &v126);
    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
    if (v129)
    {
      mlir::InFlightDiagnostic::report(&v129);
    }

    if (v140 == 1)
    {
      if (v139 != &v140)
      {
        free(v139);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v138;
        v29 = __p;
        if (v138 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v138 = v27;
        operator delete(v29);
      }

      v30 = v135;
      if (v135)
      {
        v31 = v136;
        v32 = v135;
        if (v136 != v135)
        {
          do
          {
            v34 = *--v31;
            v33 = v34;
            *v31 = 0;
            if (v34)
            {
              MEMORY[0x259C63150](v33, 0x1000C8077774924);
            }
          }

          while (v31 != v30);
          v32 = v135;
        }

        v136 = v30;
        operator delete(v32);
      }

      v44 = v132;
      if (v132 != &v134)
      {
LABEL_77:
        free(v44);
      }
    }
  }

  else
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      {
        return 0;
      }

      v115 = 0;
      v116 = 0;
      v113 = 0;
      v114 = 0;
      v111 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v129 = &v115;
      if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a5, &v129))
      {
        v126 = &v113;
        if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a6, &v126))
        {
          v122 = &v111;
          if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a7, &v122))
          {
            v126 = v128;
            v127 = 0x400000000;
            mlir::TensorType::getShape(&v117);
            v108 = v42;
            if (a3)
            {
              v129 = &v109;
              if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a3, &v129))
              {
                NumElements = mlir::ElementsAttr::getNumElements(v109, v110);
                v108 = NumElements;
                mlir::ElementsAttr::getValues<llvm::APInt>(&v109, &v129);
                LOWORD(v122) = v129;
                if (v129 == 1)
                {
                  v123 = v130;
                }

                else
                {
                  (*(*v130 + 16))(&v123);
                }

                v53 = v131;
                v124[0] = v131;
                LOWORD(v118) = v132;
                if (v132 == 1)
                {
                  v119 = v133;
                }

                else
                {
                  (*(*v133 + 16))(&v119);
                  v53 = v124[0];
                }

                v120[0] = v134;
                if (v53 != v134)
                {
                  do
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v122, &v103);
                    if (v104 > 0x40)
                    {
                      v56 = *v103;
                    }

                    else if (v104)
                    {
                      v56 = v103 << -v104 >> -v104;
                    }

                    else
                    {
                      v56 = 0;
                    }

                    if (v56 == -1)
                    {
                      v57 = 0x8000000000000000;
                    }

                    else
                    {
                      v57 = v56;
                    }

                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v126, v57);
                    if (v104 >= 0x41 && v103)
                    {
                      MEMORY[0x259C63150](v103, 0x1000C8000313F17);
                    }

                    ++v124[0];
                  }

                  while (v124[0] != v120[0]);
                }

                if ((v118 & 1) == 0)
                {
                  v54 = v119;
                  v119 = 0;
                  if (v54)
                  {
                    (*(*v54 + 8))(v54);
                  }
                }

                if ((v122 & 1) == 0)
                {
                  v55 = v123;
                  v123 = 0;
                  if (v55)
                  {
                    (*(*v55 + 8))(v55);
                  }
                }

                mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v129);
                goto LABEL_113;
              }
            }

            else
            {
              if (!a4)
              {
                NumElements = v42;
                goto LABEL_113;
              }

              v129 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a4 + 8) & 0xFFFFFFFFFFFFFFF8));
              v130 = v46;
              if (v129 && mlir::ShapedType::hasRank(&v129))
              {
                Shape = mlir::ShapedType::getShape(&v129);
                if (v48)
                {
                  v49 = Shape;
                  v50 = 8 * v48;
                  do
                  {
                    v51 = *v49++;
                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v126, v51);
                    v50 -= 8;
                  }

                  while (v50);
                }

                mlir::ShapedType::getShape(&v129);
                NumElements = v52;
                v108 = v52;
LABEL_113:
                if (mlir::ElementsAttr::getNumElements(v115, v116) > NumElements || mlir::ElementsAttr::getNumElements(v113, v114) > NumElements || mlir::ElementsAttr::getNumElements(v111, v112) > NumElements)
                {
                  v122 = "Slice specification lengths: begin (";
                  v125 = 259;
                  mlir::Operation::emitOpError(&v129, a1, &v122);
                  v118 = mlir::ElementsAttr::getNumElements(v115, v116);
                  mlir::InFlightDiagnostic::operator<<<long long &>(&v129, &v118);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v58, ") end (");
                  v60 = v59;
                  v103 = mlir::ElementsAttr::getNumElements(v113, v114);
                  mlir::InFlightDiagnostic::operator<<<long long &>(v60, &v103);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v61, ") stride (");
                  v63 = v62;
                  v107 = mlir::ElementsAttr::getNumElements(v111, v112);
                  mlir::InFlightDiagnostic::operator<<<long long &>(v63, &v107);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v64, ") must be lower or equal to input rank ");
                  mlir::InFlightDiagnostic::operator<<<long long &>(v65, &v108);
                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v129);
                  goto LABEL_117;
                }

                v122 = v124;
                v123 = 0x400000000;
                mlir::getIntValues<long long>(v111, v112, &v122, 1);
                if (v123)
                {
                  v67 = v122;
                  v68 = 8 * v123;
                  while (*v67)
                  {
                    ++v67;
                    v68 -= 8;
                    if (!v68)
                    {
                      goto LABEL_123;
                    }
                  }

                  v118 = "stride cannot be 0";
                  v121 = 259;
                  mlir::Operation::emitOpError(&v129, a1, &v118);
                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v129);
                  goto LABEL_150;
                }

LABEL_123:
                if (!(a3 | a4))
                {
                  v26 = 1;
LABEL_150:
                  if (v122 != v124)
                  {
                    free(v122);
                  }

LABEL_117:
                  v44 = v126;
                  if (v126 == v128)
                  {
                    return v26;
                  }

                  goto LABEL_77;
                }

                v118 = v120;
                v119 = 0x400000000;
                Attr = mlir::Operation::getAttr(a1, "begin_mask", 0xAuLL);
                v71 = mlir::Operation::getAttr(a1, "end_mask", 8uLL);
                v73 = mlir::Operation::getAttr(a1, "shrink_axis_mask", 0x10uLL);
                {
                  v75 = mlir::TensorType::getShape(&v117);
                  if (a4)
                  {
                  }

                  else
                  {
                  }

                  if (!a4)
                  {
                  }

                  v106 = v78;
                  v107 = v77;
                  v79 = v76;
                  if (v76 == v119)
                  {
                    if (!v119)
                    {
LABEL_142:
                      v26 = 1;
                      goto LABEL_148;
                    }

                    v80 = v75;
                    v81 = 0;
                    while (1)
                    {
                      v82 = *(v118 + v81);
                      v83 = *(v75 + 8 * v81);
                      v84 = v83 == 0x8000000000000000 || v82 == 0x8000000000000000;
                      if (!v84 && v82 != v83)
                      {
                        break;
                      }

                      if (v76 == ++v81)
                      {
                        goto LABEL_142;
                      }
                    }

                    v102 = v81;
                    v105 = 257;
                    mlir::Operation::emitOpError(&v129, a1, &v103);
                    mlir::InFlightDiagnostic::operator<<<char const*&>(&v129, &v107);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v92, "[");
                    mlir::InFlightDiagnostic::operator<<<unsigned long &>(v93, &v102);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v94, "] = ");
                    mlir::InFlightDiagnostic::operator<<<long long &>(v95, (v80 + 8 * v102));
                    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v96, " should match dimension size: ");
                    mlir::InFlightDiagnostic::operator<<<long long &>(v97, v118 + v102);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v98, " deduced from ");
                    mlir::InFlightDiagnostic::operator<<<char const*&>(v99, &v106);
                  }

                  else
                  {
                    v105 = 257;
                    mlir::Operation::emitOpError(&v129, a1, &v103);
                    mlir::InFlightDiagnostic::operator<<<char const*&>(&v129, &v107);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v86, " rank ");
                    v102 = v79;
                    mlir::InFlightDiagnostic::operator<<<unsigned long &>(v87, &v102);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v88, " is not consistent with rank deduced from ");
                    mlir::InFlightDiagnostic::operator<<<char const*&>(v89, &v106);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v90, " ");
                    v101 = v119;
                    mlir::InFlightDiagnostic::operator<<<unsigned long &>(v91, &v101);
                  }

                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v129);
                }

                else
                {
                  v26 = 0;
                }

LABEL_148:
                if (v118 != v120)
                {
                  free(v118);
                }

                goto LABEL_150;
              }
            }

            v26 = 1;
            goto LABEL_117;
          }
        }
      }
    }

    return 1;
  }

  return v26;
}

uint64_t mlir::mps::StridedSliceOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v76[4] = *MEMORY[0x277D85DE8];
  v73[0] = a4;
  v73[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v64 = a6;
  v65[0] = 0;
  v66 = 0;
  v67 = v16;
  v68 = v17;
  v69 = a9;
  v70 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v64);
    if (v66 == 1)
    {
      v66 = 0;
    }

    mlir::OperationName::OperationName(v65, "mps.strided_slice", 17, Context);
    v66 = 1;
  }

  v71 = a4;
  v72 = a5;
  if (a5 < 4)
  {
    goto LABEL_66;
  }

  v19 = mlir::UnknownLoc::get(this, a2);
  if ((mlir::mps::StridedSliceOpAdaptor::verify(&v64, v19) & 1) == 0)
  {
    goto LABEL_66;
  }

  v61 = v67;
  mlir::IntegerAttr::getValue(&v61, &v74);
  if (v75 > 0x40)
  {
    v20 = *v74;
    MEMORY[0x259C63150]();
  }

  else
  {
    v20 = v74;
  }

  v61 = v68;
  mlir::IntegerAttr::getValue(&v61, &v74);
  if (v75 > 0x40)
  {
    v55 = *v74;
    MEMORY[0x259C63150]();
  }

  else
  {
    v55 = v74;
  }

  v61 = *(&v68 + 1);
  mlir::IntegerAttr::getValue(&v61, &v74);
  if (v75 > 0x40)
  {
    v21 = *v74;
    MEMORY[0x259C63150]();
  }

  else
  {
    v21 = v74;
  }

  v22 = *(&v67 + 1);
  v23 = mlir::ValueRange::dereference_iterator(v73, 0);
  v24 = mlir::ValueRange::dereference_iterator(v73, 1);
  v25 = mlir::ValueRange::dereference_iterator(v73, 2);
  v26 = mlir::ValueRange::dereference_iterator(v73, 3);
  v27 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  v28 = *(*v27 + 136);
  if (v28 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v28 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v27 = 0;
  }

  v63 = v27;
  v30 = *(*(*(v24 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v32 = v30 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v33 = *(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v35 = v33 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v36 = *(*(*(v26 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v38 = v36 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v27 || !v32 || !v35 || !v38)
  {
    if (mlir::emitOptionalError<char const(&)[39]>(a2, a3, "cannot run strided slice a non-tensor type"))
    {
      v43 = 0;
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  if (*(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v27);
    goto LABEL_67;
  }

  v74 = v76;
  v75 = 0x400000000;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v56 = &v61;
  v44 = v26;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v24, &v56);
  v56 = &v59;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v25, &v56);
  v56 = &v57;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v44, &v56);
  Shape = mlir::TensorType::getShape(&v63);
  v43 = 0;
  if (v47)
  {
    v48 = v74;
    v49 = v75;
    ElementType = mlir::TensorType::getElementType(&v63);
    v43 = mlir::RankedTensorType::get(v48, v49, ElementType, 0);
  }

  if (v74 != v76)
  {
    v51 = v43;
    free(v74);
    v43 = v51;
  }

  if (!v47)
  {
LABEL_65:
    v52 = mlir::ValueRange::dereference_iterator(v73, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
    if (!ElementTypeOrSelf)
    {
LABEL_66:
      ElementTypeOrSelf = mlir::Float32Type::get(this, a2);
    }

LABEL_67:
    v43 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

LABEL_68:
  v53 = *(a11 + 8);
  if (v53 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v53) = v43;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::StridedSliceOpAdaptor::verify(void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = a1[6];
      if (v4)
      {
        v33[0] = a1[3];
        Type = mlir::IntegerAttr::getType(v33);
        if (mlir::Type::isUnsignedInteger(&Type, 32))
        {
          v33[0] = v3;
          Type = mlir::IntegerAttr::getType(v33);
          if (mlir::Type::isUnsignedInteger(&Type, 32))
          {
            v33[0] = v4;
            Type = mlir::IntegerAttr::getType(v33);
            if (mlir::Type::isUnsignedInteger(&Type, 32))
            {
              return 1;
            }

            else
            {
              v33[0] = "'mps.strided_slice' op attribute 'shrink_axis_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
              v34 = 259;
              mlir::emitError(a2, v33, &Type);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
            }
          }

          else
          {
            v33[0] = "'mps.strided_slice' op attribute 'end_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
            v34 = 259;
            mlir::emitError(a2, v33, &Type);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
            if (Type)
            {
              mlir::InFlightDiagnostic::report(&Type);
            }

            if (v44 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v36);
            }
          }

          return v5;
        }

        v33[0] = "'mps.strided_slice' op attribute 'begin_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
        v34 = 259;
        mlir::emitError(a2, v33, &Type);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
        if (Type)
        {
          mlir::InFlightDiagnostic::report(&Type);
        }

        if (v44 == 1)
        {
          if (v43 != &v44)
          {
            free(v43);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v42;
            v28 = __p;
            if (v42 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v42 = v26;
            operator delete(v28);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v29 = v40;
          v11 = v39;
          if (v40 == v39)
          {
LABEL_73:
            v40 = v9;
            operator delete(v11);
LABEL_74:
            if (v37 != &v38)
            {
              free(v37);
            }

            return v5;
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

          while (v29 != v9);
LABEL_72:
          v11 = v39;
          goto LABEL_73;
        }
      }

      else
      {
        v33[0] = "'mps.strided_slice' op requires attribute 'shrink_axis_mask'";
        v34 = 259;
        mlir::emitError(a2, v33, &Type);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
        if (Type)
        {
          mlir::InFlightDiagnostic::report(&Type);
        }

        if (v44 == 1)
        {
          if (v43 != &v44)
          {
            free(v43);
          }

          v20 = __p;
          if (__p)
          {
            v21 = v42;
            v22 = __p;
            if (v42 != __p)
            {
              do
              {
                v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
              }

              while (v21 != v20);
              v22 = __p;
            }

            v42 = v20;
            operator delete(v22);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v23 = v40;
          v11 = v39;
          if (v40 == v39)
          {
            goto LABEL_73;
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

          while (v23 != v9);
          goto LABEL_72;
        }
      }
    }

    else
    {
      v33[0] = "'mps.strided_slice' op requires attribute 'end_mask'";
      v34 = 259;
      mlir::emitError(a2, v33, &Type);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
      if (Type)
      {
        mlir::InFlightDiagnostic::report(&Type);
      }

      if (v44 == 1)
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

        v9 = v39;
        if (!v39)
        {
          goto LABEL_74;
        }

        v17 = v40;
        v11 = v39;
        if (v40 == v39)
        {
          goto LABEL_73;
        }

        do
        {
          v19 = *--v17;
          v18 = v19;
          *v17 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v17 != v9);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v33[0] = "'mps.strided_slice' op requires attribute 'begin_mask'";
    v34 = 259;
    mlir::emitError(a2, v33, &Type);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v42;
        v8 = __p;
        if (v42 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v42 = v6;
        operator delete(v8);
      }

      v9 = v39;
      if (!v39)
      {
        goto LABEL_74;
      }

      v10 = v40;
      v11 = v39;
      if (v40 == v39)
      {
        goto LABEL_73;
      }

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
      goto LABEL_72;
    }
  }

  return v5;
}

uint64_t *mlir::mps::detail::StridedSliceOpGenericAdaptorBase::getBeginMask(mlir::mps::detail::StridedSliceOpGenericAdaptorBase *this)
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

uint64_t *mlir::mps::detail::StridedSliceOpGenericAdaptorBase::getEndMask(mlir::mps::detail::StridedSliceOpGenericAdaptorBase *this)
{
  v5 = *(this + 5);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::detail::StridedSliceOpGenericAdaptorBase::getShrinkAxisMask(mlir::mps::detail::StridedSliceOpGenericAdaptorBase *this)
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

uint64_t mlir::mps::StridedSliceOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::StridedSliceGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v37[0] = a4;
  v37[1] = a5;
  if (a5 == 5)
  {
    v13 = mlir::ValueRange::dereference_iterator(v37, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v33 = v16;
    if (!v16)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot run strided slice grad a non-tensor type");
    }

    v34 = v36;
    v35 = 0x400000000;
    v17 = mlir::ValueRange::dereference_iterator(v37, 1);
    if ((mlir::matchConstantWithIntVector<long long>(v17, &v34) & 1) == 0)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
      v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
LABEL_31:
      v30 = *(a11 + 8);
      if (v30 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v30) = v23;
      ++*(a11 + 8);
      if (v34 != v36)
      {
        free(v34);
      }

      return 1;
    }

    v18 = v35;
    v19 = v34;
    if (!v35)
    {
      goto LABEL_30;
    }

    if (v35 <= 3)
    {
      v20 = 0;
LABEL_36:
      v31 = v18 - v20;
      v32 = &v19[v20];
      do
      {
        if (*v32 == -1)
        {
          *v32 = 0x8000000000000000;
        }

        ++v32;
        --v31;
      }

      while (v31);
LABEL_30:
      ElementType = mlir::TensorType::getElementType(&v33);
      v23 = mlir::RankedTensorType::get(v19, v18, ElementType, 0);
      goto LABEL_31;
    }

    v20 = v35 & 0xFFFFFFFC;
    v24 = (v34 + 16);
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    v26 = v20;
    while (1)
    {
      v27 = vmovn_s64(vceqq_s64(v24[-1], v25));
      if (v27.i8[0])
      {
        v24[-1].i64[0] = 0x8000000000000000;
        if ((v27.i8[4] & 1) == 0)
        {
LABEL_22:
          v28 = vmovn_s64(vceqq_s64(*v24, v25));
          if ((v28.i8[0] & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }
      }

      else if ((v27.i8[4] & 1) == 0)
      {
        goto LABEL_22;
      }

      v24[-1].i64[1] = 0x8000000000000000;
      v28 = vmovn_s64(vceqq_s64(*v24, v25));
      if ((v28.i8[0] & 1) == 0)
      {
LABEL_23:
        if (v28.i8[4])
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

LABEL_27:
      v24->i64[0] = 0x8000000000000000;
      if (v28.i8[4])
      {
LABEL_28:
        v24->i64[1] = 0x8000000000000000;
      }

LABEL_19:
      v24 += 2;
      v26 -= 4;
      if (!v26)
      {
        if (v20 == v18)
        {
          goto LABEL_30;
        }

        goto LABEL_36;
      }
    }
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::StridedSliceGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::StridedSliceUpdateOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t mlir::mps::StridedSliceUpdateOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::CropOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v75 = *MEMORY[0x277D85DE8];
  v68 = a6;
  v69[0] = 0;
  v70 = 0;
  v71 = a9;
  v72 = a10;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v68);
    if (v70 == 1)
    {
      v70 = 0;
    }

    mlir::OperationName::OperationName(v69, "mps.crop", 8, Context);
    v70 = 1;
    a1 = v13;
  }

  v73 = a4;
  v74 = a5;
  if (!a5)
  {
    v24 = mlir::Float32Type::get(a1, a2);
    v21 = mlir::UnrankedTensorType::get(v24);
    v22 = *(a11 + 8);
    if (v22 < *(a11 + 12))
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || (v65 = v73, v66 = 0, v15 = mlir::ValueRange::dereference_iterator(&v65, 0), v59[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8)), v59[1] = v16, !v59[0]))
  {
    v65 = v73;
    v66 = 0;
    v19 = mlir::ValueRange::dereference_iterator(&v65, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v19);
    v21 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v22 = *(a11 + 8);
    if (v22 < *(a11 + 12))
    {
LABEL_12:
      *(*a11 + 8 * v22) = v21;
LABEL_13:
      ++*(a11 + 8);
      return 1;
    }

LABEL_16:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if ((mlir::ShapedType::hasRank(v59) & 1) == 0)
  {
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v25) = v59[0];
    goto LABEL_13;
  }

  mlir::ShapedType::getShape(v59);
  v18 = v17;
  v65 = v67;
  HIDWORD(v66) = 4;
  if (v17 >= 5)
  {
    LODWORD(v66) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memset_pattern16(v67, &unk_25736EFD0, 8 * v17);
  }

  LODWORD(v66) = v18;
  v62 = v73;
  v63 = 1;
  v62 = mlir::ValueRange::offset_base(&v62, 1);
  v63 = 0;
  v26 = mlir::ValueRange::dereference_iterator(&v62, 0);
  v62 = 0;
  v63 = 0;
  v60 = &v62;
  v61 = v26;
  DefiningOp = mlir::Value::getDefiningOp(&v61);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v60, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v62, v63);
    v29 = SingleInt & 0xFFFFFF00;
    v30 = SingleInt;
    v31 = HIDWORD(SingleInt) & 1;
  }

  else
  {
    LOBYTE(v31) = 0;
    v30 = 0;
    v29 = 0;
  }

  v62 = v73;
  v63 = 2;
  v62 = mlir::ValueRange::offset_base(&v62, 2);
  v63 = 0;
  v32 = mlir::ValueRange::dereference_iterator(&v62, 0);
  v62 = 0;
  v63 = 0;
  v60 = &v62;
  v61 = v32;
  v33 = mlir::Value::getDefiningOp(&v61);
  if (v33 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v60, v33))
  {
    v34 = mlir::getSingleIntValue<int>(v62, v63);
    v57 = v34 & 0xFFFFFF00;
    v58 = v34;
    v35 = HIDWORD(v34) & 1;
  }

  else
  {
    LODWORD(v35) = 0;
    v57 = 0;
    v58 = 0;
  }

  v62 = v73;
  v63 = 3;
  v62 = mlir::ValueRange::offset_base(&v62, 3);
  v63 = 0;
  v36 = mlir::ValueRange::dereference_iterator(&v62, 0);
  v62 = 0;
  v63 = 0;
  v60 = &v62;
  v61 = v36;
  v37 = mlir::Value::getDefiningOp(&v61);
  if (v37 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v60, v37))
  {
    v38 = mlir::getSingleIntValue<int>(v62, v63);
    v39 = v38 & 0xFFFFFF00;
    v40 = v38;
    v41 = HIDWORD(v38) & 1;
    if ((v31 & 1) == 0)
    {
LABEL_32:
      v42 = v65;
      goto LABEL_43;
    }
  }

  else
  {
    LODWORD(v41) = 0;
    v40 = 0;
    v39 = 0;
    if ((v31 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v43 = (v18 & ((v29 | v30) >> 63)) + (v29 | v30);
  if (v43 < 0 || v18 <= v43)
  {
    goto LABEL_45;
  }

  Shape = mlir::ShapedType::getShape(v59);
  v45 = mlir::ShapedType::getShape(v59);
  llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v62, Shape, (v45 + 8 * v46));
  llvm::SmallVectorImpl<long long>::operator=(&v65, &v62);
  if (v62 != &v64)
  {
    free(v62);
  }

  v47 = 0x8000000000000000;
  v42 = v65;
  if ((v35 & v41) == 1)
  {
    v48 = *(v65 + v43);
    if (v48 == 0x8000000000000000)
    {
      goto LABEL_43;
    }

    v49 = v48 - ((v57 | v58) + v40 + v39);
    if (v49 < 0 || (v47 = v49 & 0x7FFFFFFF, v48 < v47))
    {
LABEL_45:
      v62 = v73;
      v63 = 0;
      v54 = mlir::ValueRange::dereference_iterator(&v62, 0);
      v55 = mlir::getElementTypeOrSelf(v54);
      result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v55);
      v53 = v65;
      if (v65 == v67)
      {
        return result;
      }

LABEL_46:
      v56 = result;
      free(v53);
      return v56;
    }
  }

  *(v65 + v43) = v47;
LABEL_43:
  v50 = v66;
  ElementType = mlir::ShapedType::getElementType(v59);
  v52 = mlir::RankedTensorType::get(v42, v50, ElementType, 0);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v52);
  result = 1;
  v53 = v65;
  if (v65 != v67)
  {
    goto LABEL_46;
  }

  return result;
}

uint64_t mlir::mps::CropOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::CropOp::verify(mlir::Operation **this)
{
  v105 = *MEMORY[0x277D85DE8];
  LOBYTE(v93) = 0;
  v94 = 0;
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v13 = v7[1];
    goto LABEL_15;
  }

LABEL_14:
  v13 = 0;
LABEL_15:
  v92[0] = v2;
  v92[1] = v13;
  v14 = *(*(*this + 9) + 56);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v14;
  DefiningOp = mlir::Value::getDefiningOp(&v73);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v95, v96);
    v17 = SingleInt & 0xFF00000000;
    v18 = SingleInt & 0xFFFFFF00;
    v19 = SingleInt;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v18 = 0;
  }

  v20 = v19 | v18;
  v91 = BYTE4(v17);
  v90 = v19 | v18 | v17;
  if (mlir::ShapedType::hasRank(v92) && (v17 & 0x100000000) != 0)
  {
    mlir::ShapedType::getShape(v92);
    v89 = v21;
    if (v18 >> 31)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 + v20;
    if (v23 < 0 || v23 >= v21)
    {
      v73 = "failed: axis value {0} does not fit tensor rank ({1})";
      v74 = 53;
      v75 = &v82;
      v76 = 2;
      v77 = 1;
      v78 = &unk_286872050;
      v79 = &v90;
      v80 = &unk_28685E520;
      v81 = &v89;
      v82 = &v78;
      v83 = &v80;
      v88 = 263;
      v87[0] = &v73;
      mlir::OpState::emitOpError(this, v87, &v95);
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v102;
          v45 = __p;
          if (v102 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v102 = v43;
          operator delete(v45);
        }

        v32 = v99;
        if (!v99)
        {
          goto LABEL_149;
        }

        v46 = v100;
        v34 = v99;
        if (v100 == v99)
        {
          goto LABEL_148;
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

        while (v46 != v32);
        goto LABEL_147;
      }

      return v28;
    }

    if (*(mlir::ShapedType::getShape(v92) + 8 * v23) != 0x8000000000000000)
    {
      v93 = *(mlir::ShapedType::getShape(v92) + 8 * v23);
      v94 = 1;
    }
  }

  v24 = *(*(*this + 9) + 88);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v24;
  v25 = mlir::Value::getDefiningOp(&v73);
  if (!v25 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, v25) & 1) == 0)
  {
    v27 = 0;
    BYTE4(v89) = 0;
    LODWORD(v89) = 0;
    goto LABEL_48;
  }

  v26 = mlir::getSingleIntValue<int>(v95, v96);
  v27 = v26;
  LODWORD(v89) = v26;
  BYTE4(v89) = BYTE4(v26);
  if ((v26 & 0x100000000) == 0)
  {
LABEL_48:
    v35 = 1;
    goto LABEL_49;
  }

  v86 = v26;
  if ((v26 & 0x80000000) != 0)
  {
    v73 = "failed: amount_before value {0} must be positive";
    v74 = 48;
    v75 = &v80;
    v76 = 1;
    v77 = 1;
    v78 = &unk_28685E520;
    v79 = &v86;
    v80 = &v78;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v102;
        v55 = __p;
        if (v102 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v102 = v53;
        operator delete(v55);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v56 = v100;
      v34 = v99;
      if (v100 == v99)
      {
        goto LABEL_148;
      }

      do
      {
        v58 = *--v56;
        v57 = v58;
        *v56 = 0;
        if (v58)
        {
          MEMORY[0x259C63150](v57, 0x1000C8077774924);
        }
      }

      while (v56 != v32);
      goto LABEL_147;
    }

    return v28;
  }

  if (v94 == 1 && v93 < v26)
  {
    v73 = "failed: amount_before value {0} does not fit dimension size ({1})";
    v74 = 65;
    v75 = &v82;
    v76 = 2;
    v77 = 1;
    v78 = &unk_28685E520;
    v79 = &v86;
    v80 = &unk_28685E520;
    v81 = &v93;
    v82 = &v78;
    v83 = &v80;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v102;
        v31 = __p;
        if (v102 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v102 = v29;
        operator delete(v31);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v33 = v100;
      v34 = v99;
      if (v100 == v99)
      {
LABEL_148:
        v100 = v32;
        operator delete(v34);
LABEL_149:
        if (v97 != &v98)
        {
          free(v97);
        }

        return v28;
      }

      do
      {
        v50 = *--v33;
        v49 = v50;
        *v33 = 0;
        if (v50)
        {
          MEMORY[0x259C63150](v49, 0x1000C8077774924);
        }
      }

      while (v33 != v32);
LABEL_147:
      v34 = v99;
      goto LABEL_148;
    }

    return v28;
  }

  v35 = 0;
LABEL_49:
  v36 = *(*(*this + 9) + 120);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v36;
  v37 = mlir::Value::getDefiningOp(&v73);
  if (!v37 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, v37) & 1) == 0)
  {
    BYTE4(v86) = 0;
    LODWORD(v86) = 0;
LABEL_69:
    v28 = 1;
    if ((v94 & 1) == 0)
    {
      return v28;
    }

    return 1;
  }

  v38 = mlir::getSingleIntValue<int>(v95, v96);
  LODWORD(v86) = v38;
  BYTE4(v86) = BYTE4(v38);
  if ((v38 & 0x100000000) == 0)
  {
    goto LABEL_69;
  }

  v85 = v38;
  if ((v38 & 0x80000000) != 0)
  {
    v73 = "failed: amount_after value {0} must be positive";
    v74 = 47;
    v75 = &v80;
    v76 = 1;
    v77 = 1;
    v78 = &unk_28685E520;
    v79 = &v85;
    v80 = &v78;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v102;
        v61 = __p;
        if (v102 != __p)
        {
          do
          {
            v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v102 = v59;
        operator delete(v61);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v62 = v100;
      v34 = v99;
      if (v100 == v99)
      {
        goto LABEL_148;
      }

      do
      {
        v64 = *--v62;
        v63 = v64;
        *v62 = 0;
        if (v64)
        {
          MEMORY[0x259C63150](v63, 0x1000C8077774924);
        }
      }

      while (v62 != v32);
      goto LABEL_147;
    }

    return v28;
  }

  if (v94 != 1 || v93 >= v38)
  {
    if (v94 && (v35 & 1) == 0)
    {
      v28 = 1;
      v65 = v93 - (v27 + v38);
      if (v65 < 0 || v93 < v65)
      {
        v73 = "failed: amount_before value {0} and amount_after value {1} do not fit dimension size ({2})";
        v74 = 90;
        v75 = v84;
        v76 = 3;
        v77 = 1;
        v78 = &unk_286872050;
        v79 = &v89;
        v80 = &unk_286872050;
        v81 = &v86;
        v82 = &unk_28685E520;
        v83 = &v93;
        v84[0] = &v78;
        v84[1] = &v80;
        v84[2] = &v82;
        v88 = 263;
        v87[0] = &v73;
        mlir::OpState::emitOpError(this, v87, &v95);
        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
        if (v95)
        {
          mlir::InFlightDiagnostic::report(&v95);
        }

        if (v104 == 1)
        {
          if (v103 != &v104)
          {
            free(v103);
          }

          v66 = __p;
          if (__p)
          {
            v67 = v102;
            v68 = __p;
            if (v102 != __p)
            {
              do
              {
                v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
              }

              while (v67 != v66);
              v68 = __p;
            }

            v102 = v66;
            operator delete(v68);
          }

          v32 = v99;
          if (!v99)
          {
            goto LABEL_149;
          }

          v69 = v100;
          v34 = v99;
          if (v100 == v99)
          {
            goto LABEL_148;
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

          while (v69 != v32);
          goto LABEL_147;
        }
      }

      return v28;
    }

    return 1;
  }

  v73 = "failed: amount_after value {0} does not fit dimension size ({1})";
  v74 = 64;
  v75 = &v82;
  v76 = 2;
  v77 = 1;
  v78 = &unk_28685E520;
  v79 = &v85;
  v80 = &unk_28685E520;
  v81 = &v93;
  v82 = &v78;
  v83 = &v80;
  v88 = 263;
  v87[0] = &v73;
  mlir::OpState::emitOpError(this, v87, &v95);
  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v102;
      v41 = __p;
      if (v102 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v102 = v39;
      operator delete(v41);
    }

    v32 = v99;
    if (!v99)
    {
      goto LABEL_149;
    }

    v42 = v100;
    v34 = v99;
    if (v100 == v99)
    {
      goto LABEL_148;
    }

    do
    {
      v52 = *--v42;
      v51 = v52;
      *v42 = 0;
      if (v52)
      {
        MEMORY[0x259C63150](v51, 0x1000C8077774924);
      }
    }

    while (v42 != v32);
    goto LABEL_147;
  }

  return v28;
}

uint64_t mlir::mps::ReverseOp::verify(mlir::mps::ReverseOp *this)
{
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
LABEL_14:
    v26 = v2;
    v27 = 0;
    if (!mlir::ShapedType::hasRank(&v26))
    {
      return 1;
    }

    goto LABEL_15;
  }

  v20 = v7[1];
  v26 = v2;
  v27 = v20;
  if (!mlir::ShapedType::hasRank(&v26))
  {
    return 1;
  }

LABEL_15:
  if (*(*this + 68) != 1)
  {
    v13 = *(*(*this + 72) + 56);
    if (v13)
    {
      v24 = 0;
      v25 = 0;
      v23 = &v24;
      v21 = v13;
      DefiningOp = mlir::Value::getDefiningOp(&v21);
      if (DefiningOp)
      {
        if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v23, DefiningOp))
        {
          v22[0] = 0;
          v22[1] = 0;
          v21 = v22;
          v15 = *this;
          v16 = v24;
          v17 = v25;
          mlir::ShapedType::getShape(&v26);
          std::__tree<long long>::destroy(&v21, v22[0]);
          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(uint64_t a1, void **a2)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a2, result);
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::validateUniqueAxes(mlir::mps::_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v41 = v43;
  v42 = 0x400000000;
  v8 = 1;
  mlir::getIntValues<long long>(a2, a3, &v41, 1);
  if (v42)
  {
    v10 = v41;
    v11 = &v41[v42];
    v12 = (a5 + 8);
    while (1)
    {
      v13 = *v10;
      v31 = 0;
      {
        break;
      }

      v14 = *v12;
      if (!*v12)
      {
LABEL_14:
        operator new();
      }

      v15 = *v12;
      do
      {
        v16 = v15[4];
        if (v31 >= v16)
        {
          if (v16 >= v31)
          {
            v29 = "axis must be unique";
            v30 = 259;
            mlir::Operation::emitOpError(v32, a1, &v29);
            v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
            if (v32[0])
            {
              mlir::InFlightDiagnostic::report(v32);
            }

            if (v40 == 1)
            {
              if (v39 != &v40)
              {
                free(v39);
              }

              v20 = __p;
              if (__p)
              {
                v21 = v38;
                v22 = __p;
                if (v38 != __p)
                {
                  do
                  {
                    v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
                  }

                  while (v21 != v20);
                  v22 = __p;
                }

                v38 = v20;
                operator delete(v22);
              }

              v23 = v35;
              if (v35)
              {
                v24 = v36;
                v25 = v35;
                if (v36 != v35)
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
                  v25 = v35;
                }

                v36 = v23;
                operator delete(v25);
              }

              if (v33 != &v34)
              {
                free(v33);
              }
            }

            goto LABEL_38;
          }

          ++v15;
        }

        v15 = *v15;
      }

      while (v15);
      while (1)
      {
        while (1)
        {
          v17 = v14;
          v18 = v14[4];
          if (v31 >= v18)
          {
            break;
          }

          v14 = *v17;
          if (!*v17)
          {
            goto LABEL_14;
          }
        }

        if (v18 >= v31)
        {
          break;
        }

        v14 = v17[1];
        if (!v14)
        {
          goto LABEL_14;
        }
      }

      if (++v10 == v11)
      {
        v8 = 1;
        v19 = v41;
        if (v41 != v43)
        {
          goto LABEL_39;
        }

        return v8;
      }
    }

    v8 = 0;
    v19 = v41;
    if (v41 != v43)
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_38:
    v19 = v41;
    if (v41 != v43)
    {
LABEL_39:
      free(v19);
    }
  }

  return v8;
}

BOOL mlir::mps::ReverseOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t mlir::mps::ReverseOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::SplitOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v109[6] = *MEMORY[0x277D85DE8];
  v102 = a4;
  v103 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v94 = a6;
  v95[0] = 0;
  v96 = 0;
  v97 = v16;
  v98 = a9;
  v17 = a5;
  v99 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v94);
    if (v96 == 1)
    {
      v96 = 0;
    }

    mlir::OperationName::OperationName(v95, "mps.split", 9, Context);
    v96 = 1;
    v17 = v103;
  }

  v100 = a4;
  v101 = a5;
  if (v17 < 2 || (v19 = mlir::UnknownLoc::get(this, a2), (mlir::mps::SplitOpAdaptor::verify(&v94, v19) & 1) == 0))
  {
    v29 = mlir::Float32Type::get(this, a2);
    v30 = mlir::UnrankedTensorType::get(v29);
    v31 = *(a11 + 8);
    if (v31 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v31) = v30;
    goto LABEL_16;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v102, 0);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v21)
  {
    v33 = mlir::ValueRange::dereference_iterator(&v102, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v35);
    }

    v36 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v37) = v36;
LABEL_16:
    ++*(a11 + 8);
    return 1;
  }

  v23 = v21;
  v24 = v22;
  v25 = mlir::ValueRange::dereference_iterator(&v102, 1);
  v26 = v103;
  if (v103 == 3)
  {
    v78 = mlir::ValueRange::dereference_iterator(&v102, 2);
    v79 = v97;
    if (v97)
    {
LABEL_13:
      UInt = mlir::IntegerAttr::getUInt(&v79);
      v28 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    v78 = 0;
    v79 = v97;
    if (v97)
    {
      goto LABEL_13;
    }
  }

  UInt = 0;
  v28 = 0;
LABEL_24:
  v93[0] = v23;
  v93[1] = v24;
  v91 = UInt;
  v92 = v28;
  v107 = v109;
  v108 = 0x600000000;
  LOBYTE(v89) = 0;
  v90 = 0;
  v38 = 0x8000000000000000;
  v88 = 0x8000000000000000;
  if (!mlir::ShapedType::hasRank(v93))
  {
    goto LABEL_45;
  }

  mlir::ShapedType::getShape(v93);
  v40 = v39;
  if (mlir::mps::getAxis(a2, a3, v25, v39, &v89))
  {
    if (v90 == 1)
    {
      Shape = mlir::ShapedType::getShape(v93);
      v43 = v41;
      v44 = 0;
      v38 = Shape[v89];
      v88 = v38;
      LODWORD(v108) = 0;
      if ((8 * v41) >> 3 > HIDWORD(v108))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v41)
      {
        memcpy(v107, Shape, 8 * v41);
        v44 = v108;
      }

      LODWORD(v108) = v44 + v43;
      v45 = 1;
      v104 = v106;
      v105 = 0x600000000;
      if (v26 != 3)
      {
        goto LABEL_32;
      }

LABEL_46:
      v80 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v78 + 8) & 0xFFFFFFFFFFFFFFF8));
      v81 = v48;
      if ((mlir::ShapedType::hasRank(&v80) & 1) == 0)
      {
        goto LABEL_97;
      }

      if ((mlir::matchConstantWithIntVector<long long>(v78, &v104) & 1) == 0)
      {
        if ((v28 & 1) == 0)
        {
          UInt = *mlir::ShapedType::getShape(&v80);
          LOBYTE(v92) = 1;
          v91 = UInt;
          if (UInt == 0x8000000000000000)
          {
            goto LABEL_97;
          }
        }

        if (UInt != v105)
        {
          if (UInt >= v105)
          {
            if (UInt > HIDWORD(v105))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (UInt != v105)
            {
              bzero(&v104[8 * v105], 8 * (UInt - v105));
            }
          }

          LODWORD(v105) = UInt;
        }

        if (UInt)
        {
          v49 = v104;
          v50 = 8 * UInt;
LABEL_66:
          memset_pattern16(v49, &unk_25736EFD0, v50);
        }
      }

LABEL_67:
      if (mlir::ShapedType::hasRank(v93))
      {
        if (v105)
        {
          v51 = v104;
          v52 = v89;
          do
          {
            v53 = v107;
            if (v45)
            {
              v107[v52] = *v51;
            }

            v54 = v108;
            ElementType = mlir::ShapedType::getElementType(v93);
            v56 = mlir::RankedTensorType::get(v53, v54, ElementType, 0);
            v57 = *(a11 + 8);
            if (v57 >= *(a11 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a11 + 8 * v57) = v56;
            ++*(a11 + 8);
            v51 += 8;
          }

          while (v51 != &v104[8 * v105]);
        }

        goto LABEL_96;
      }

      v58 = mlir::ShapedType::getElementType(v93);
      v59 = mlir::UnrankedTensorType::get(v58);
      v60 = v105;
      if (*(a11 + 12) < v105)
      {
        *(a11 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v61 = *a11;
      v62 = *(a11 + 8);
      if (v62 >= v105)
      {
        v63 = v105;
      }

      else
      {
        v63 = *(a11 + 8);
      }

      if (v63)
      {
        if (v63 < 4)
        {
          v64 = *a11;
          v65 = v63;
          do
          {
LABEL_87:
            *v64++ = v59;
            --v65;
          }

          while (v65);
          goto LABEL_88;
        }

        v64 = v61 + (v63 & 0xFFFFFFFC);
        v65 = v63 & 3;
        v66 = vdupq_n_s64(v59);
        v67 = v61 + 1;
        v68 = v63 & 0xFFFFFFFC;
        do
        {
          v67[-1] = v66;
          *v67 = v66;
          v67 += 2;
          v68 -= 4;
        }

        while (v68);
        if (v63 != (v63 & 0xFFFFFFFC))
        {
          goto LABEL_87;
        }
      }

LABEL_88:
      if (v62 < v60)
      {
        v69 = v60 - v62;
        v70 = (v61 + 8 * v62);
        if (v60 - v62 >= 4)
        {
          v71 = v70 + (v69 & 0xFFFFFFFFFFFFFFFCLL);
          v72 = v69 & 3;
          v73 = vdupq_n_s64(v59);
          v74 = v70 + 1;
          v75 = v69 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v74[-1] = v73;
            *v74 = v73;
            v74 += 2;
            v75 -= 4;
          }

          while (v75);
          if (v69 == (v69 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_95;
          }
        }

        else
        {
          v71 = v61 + v62;
          v72 = v60 - v62;
        }

        do
        {
          *v71++ = v59;
          --v72;
        }

        while (v72);
      }

LABEL_95:
      *(a11 + 8) = v60;
LABEL_96:
      result = 1;
LABEL_97:
      if (v104 != v106)
      {
        v76 = result;
        free(v104);
        result = v76;
      }

      goto LABEL_99;
    }

    if (v40 < 1)
    {
      v45 = 0;
      v38 = 0x8000000000000000;
      v104 = v106;
      v105 = 0x600000000;
      if (v26 == 3)
      {
        goto LABEL_46;
      }

LABEL_32:
      if (!v28)
      {
        goto LABEL_97;
      }

      if (v38 == 0x8000000000000000)
      {
        if (!UInt)
        {
          goto LABEL_67;
        }

        if (UInt >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        bzero(v106, 8 * UInt);
        LODWORD(v105) = UInt;
        v50 = 8 * UInt;
        v49 = v106;
        goto LABEL_66;
      }

      {
        v80 = "infer split sizes from total size={0} and num_splits={1} failed.";
        v81 = 64;
        v82 = v87;
        v83 = 2;
        v84 = 1;
        v85[0] = &unk_28685E520;
        v85[1] = &v88;
        v86[0] = &unk_28686BC50;
        v86[1] = &v91;
        v87[0] = v85;
        v87[1] = v86;
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<long long &>>>>(a2, a3, &v80);
        goto LABEL_97;
      }

      goto LABEL_67;
    }

    v46 = v108;
    v47 = v40 + 1;
    v38 = 0x8000000000000000;
    do
    {
      if (v46 >= HIDWORD(v108))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v107[v46] = 0x8000000000000000;
      v46 = v108 + 1;
      LODWORD(v108) = v108 + 1;
      --v47;
    }

    while (v47 > 1);
LABEL_45:
    v45 = 0;
    v104 = v106;
    v105 = 0x600000000;
    if (v26 == 3)
    {
      goto LABEL_46;
    }

    goto LABEL_32;
  }

  result = 0;
LABEL_99:
  if (v107 != v109)
  {
    v77 = result;
    free(v107);
    return v77;
  }

  return result;
}

uint64_t mlir::mps::SplitOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    return 1;
  }

  v13[0] = *(a1 + 24);
  v15[0] = mlir::IntegerAttr::getType(v13);
  if (mlir::Type::isUnsignedInteger(v15, 32))
  {
    return 1;
  }

  v13[0] = "'mps.split' op attribute 'num_splits' failed to satisfy constraint: 32-bit unsigned integer attribute";
  v14 = 259;
  mlir::emitError(a2, v13, v15);
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

    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }

    v8 = v18;
    if (v18)
    {
      v9 = v19;
      v10 = v18;
      if (v19 != v18)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v18;
      }

      v19 = v8;
      operator delete(v10);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::mps::SplitOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::SplitOp::verify(mlir::Operation **this)
{
  v1 = this;
  v142[6] = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v122[0] = v2;
  v122[1] = v13;
  v14 = *(*v1 + 9);
  if (v14)
  {
    v15 = *v1 - 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0x8000000000000000;
  v121 = 0x8000000000000000;
  LOBYTE(v119) = 0;
  v120 = 0;
  if (!mlir::ShapedType::hasRank(v122))
  {
    v109 = 0;
    v111 = 0;
    v20 = *v1;
    if (*(*v1 + 17) != 2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v140 = v142;
    v141 = 0x600000000;
LABEL_28:
    v110 = 1;
    goto LABEL_29;
  }

  mlir::ShapedType::getShape(v122);
  v16 = v17;
  if ((mlir::mps::getAxis(*(*v1 + 3), 1, *(*(*v1 + 9) + 56), v17, &v119) & 1) == 0)
  {
    return 0;
  }

  if (v120 != 1)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v122);
  v109 = v19;
  v111 = Shape;
  v121 = *(Shape + 8 * v119);
  v20 = *v1;
  if (*(*v1 + 17) == 2)
  {
    goto LABEL_27;
  }

LABEL_22:
  v21 = *(*(v20 + 9) + 88);
  v140 = v142;
  v141 = 0x600000000;
  if (!v21 || (mlir::matchConstantWithIntVector<long long>(v21, &v140) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v141 != v14)
  {
    v113 = 259;
    mlir::OpState::emitOpError(v1, v112, &v128);
    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
    if (v128)
    {
      mlir::InFlightDiagnostic::report(&v128);
    }

    if (v139 != 1)
    {
      goto LABEL_238;
    }

    if (v138 != &v139)
    {
      free(v138);
    }

    v67 = __p;
    if (__p)
    {
      v68 = v137;
      v69 = __p;
      if (v137 != __p)
      {
        do
        {
          v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
        }

        while (v68 != v67);
        v69 = __p;
      }

      v137 = v67;
      operator delete(v69);
    }

    v70 = v134;
    if (v134)
    {
      v71 = v135;
      v72 = v134;
      if (v135 != v134)
      {
        do
        {
          v74 = *--v71;
          v73 = v74;
          *v71 = 0;
          if (v74)
          {
            MEMORY[0x259C63150](v73, 0x1000C8077774924);
          }
        }

        while (v71 != v70);
        v72 = v134;
      }

      v135 = v70;
      operator delete(v72);
    }

    v89 = v130;
    v90 = v133;
LABEL_236:
    if (v89 != v90)
    {
      free(v89);
    }

    goto LABEL_238;
  }

  v110 = 0;
LABEL_29:
  LOBYTE(v125) = 0;
  v127 = 0;
  v112[0] = *(*v1 + 2 * ((*(*v1 + 11) >> 23) & 1) + 8);
  if (v112[0])
  {
    mlir::IntegerAttr::getValue(v112, &v128);
    if (v129[0] >= 0x41)
    {
      v22 = v128;
    }

    else
    {
      v22 = &v128;
    }

    v23 = *v22;
    if (v129[0] >= 0x41 && v128)
    {
      MEMORY[0x259C63150]();
    }

    v117 = v23;
    v118 = 1;
    if (v23)
    {
      if (v14 == v23)
      {
        if (v121 != 0x8000000000000000)
        {
          *&v123 = v124;
          *(&v123 + 1) = 0x600000000;
          if (v24)
          {
            std::optional<llvm::SmallVector<long long,6u>>::operator=[abi:nn200100]<llvm::SmallVector<long long,6u>&,void>(&v125, &v123);
          }

          else
          {
            if ((v118 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:nn200100]();
              goto LABEL_248;
            }

            llvm::formatv<long long &,unsigned int &>("infer split sizes from total size={0} and num_splits={1} failed.", &v121, &v117, v112);
            v116 = 263;
            v114 = v112;
            mlir::OpState::emitOpError(v1, &v114, &v128);
            v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v128);
          }

          if (v123 != v124)
          {
            free(v123);
          }

          if ((v24 & 1) == 0)
          {
            goto LABEL_234;
          }
        }

        goto LABEL_43;
      }

      v113 = 259;
      mlir::OpState::emitOpError(v1, v112, &v128);
      v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
      if (v128)
      {
        mlir::InFlightDiagnostic::report(&v128);
      }

      if (v139 == 1)
      {
        if (v138 != &v139)
        {
          free(v138);
        }

        v61 = __p;
        if (__p)
        {
          v62 = v137;
          v63 = __p;
          if (v137 != __p)
          {
            do
            {
              v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
            }

            while (v62 != v61);
            v63 = __p;
          }

          v137 = v61;
          operator delete(v63);
        }

        v56 = v134;
        if (!v134)
        {
          goto LABEL_232;
        }

        v64 = v135;
        v58 = v134;
        if (v135 == v134)
        {
          goto LABEL_231;
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

        while (v64 != v56);
        goto LABEL_230;
      }
    }

    else
    {
      v113 = 259;
      mlir::OpState::emitOpError(v1, v112, &v128);
      v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
      if (v128)
      {
        mlir::InFlightDiagnostic::report(&v128);
      }

      if (v139 == 1)
      {
        if (v138 != &v139)
        {
          free(v138);
        }

        v53 = __p;
        if (__p)
        {
          v54 = v137;
          v55 = __p;
          if (v137 != __p)
          {
            do
            {
              v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
            }

            while (v54 != v53);
            v55 = __p;
          }

          v137 = v53;
          operator delete(v55);
        }

        v56 = v134;
        if (!v134)
        {
          goto LABEL_232;
        }

        v57 = v135;
        v58 = v134;
        if (v135 == v134)
        {
          goto LABEL_231;
        }

        do
        {
          v60 = *--v57;
          v59 = v60;
          *v57 = 0;
          if (v60)
          {
            MEMORY[0x259C63150](v59, 0x1000C8077774924);
          }
        }

        while (v57 != v56);
        goto LABEL_230;
      }
    }

LABEL_234:
    if (v127 == 1)
    {
      goto LABEL_235;
    }

    goto LABEL_238;
  }

  v118 = 0;
  v117 = 0;
  if (!v14)
  {
    v25 = 0;
    goto LABEL_131;
  }

LABEL_43:
  v108 = v1;
  v25 = 0;
  v26 = 0;
  v107 = 0;
  v106 = 0;
  v105 = v14 - 1;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    while (1)
    {
      v28 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v26) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v28)
      {
        break;
      }

      v29 = *v28;
      {
        v30 = p_opt_class_meths[367];
        v31 = v29[1];
        v32 = *(v29 + 4);
        if (!v32)
        {
          break;
        }
      }

      else
      {
        mlir::mps::ConstantOp::verify();
        v30 = p_opt_class_meths[367];
        v31 = v29[1];
        v32 = *(v29 + 4);
        if (!v32)
        {
          break;
        }
      }

      v33 = v31;
      v34 = v32;
      do
      {
        v35 = v34 >> 1;
        v36 = &v33[2 * (v34 >> 1)];
        v38 = *v36;
        v37 = (v36 + 2);
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
        break;
      }

      v50 = v33[1];
      v114 = v28;
      v115 = v50;
      if (mlir::ShapedType::hasRank(&v114))
      {
        goto LABEL_59;
      }

LABEL_44:
      v25 = 0x8000000000000000;
      if (++v26 == v14)
      {
        goto LABEL_94;
      }
    }

    v114 = v28;
    v115 = 0;
    if (!mlir::ShapedType::hasRank(&v114))
    {
      goto LABEL_44;
    }

LABEL_59:
    if (v16 != 0x8000000000000000)
    {
      mlir::ShapedType::getShape(&v114);
      if (v39 != v16)
      {
        v112[0] = "invalid rank for result, expected rank ";
        v113 = 259;
        mlir::OpState::emitOpError(v108, v112, &v128);
        if (!v128)
        {
LABEL_157:
          v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
          if (v128)
          {
            mlir::InFlightDiagnostic::report(&v128);
          }

          if (v139 != 1)
          {
            goto LABEL_234;
          }

          if (v138 != &v139)
          {
            free(v138);
          }

          v77 = __p;
          if (__p)
          {
            v78 = v137;
            v79 = __p;
            if (v137 != __p)
            {
              do
              {
                v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
              }

              while (v78 != v77);
              v79 = __p;
            }

            v137 = v77;
            operator delete(v79);
          }

          v56 = v134;
          if (!v134)
          {
            goto LABEL_232;
          }

          v80 = v135;
          v58 = v134;
          if (v135 == v134)
          {
            goto LABEL_231;
          }

          do
          {
            v82 = *--v80;
            v81 = v82;
            *v80 = 0;
            if (v82)
            {
              MEMORY[0x259C63150](v81, 0x1000C8077774924);
            }
          }

          while (v80 != v56);
LABEL_230:
          v58 = v134;
          goto LABEL_231;
        }

        LODWORD(v123) = 2;
        *(&v123 + 1) = v16;
        if (v131 < v132)
        {
          v75 = v130 + 24 * v131;
          v76 = v123;
          *(v75 + 2) = v124[0];
          *v75 = v76;
          ++v131;
          goto LABEL_157;
        }

        if (v130 > &v123 || v130 + 24 * v131 <= &v123)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

LABEL_248:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    v40 = mlir::ShapedType::getShape(&v114);
    if (v120 != 1)
    {
      v49 = 0x8000000000000000;
      goto LABEL_77;
    }

    v42 = v40;
    v43 = v14;
    v44 = v16;
    v45 = v15;
    v46 = p_opt_class_meths;
    v47 = v41;
    v48 = v119;
    v49 = *(v40 + 8 * v119);
    if (mlir::ShapedType::hasRank(v122) && ((mlir::verifyCompatibleShape(v42, v48, v111, v48) & 1) == 0 || (mlir::verifyCompatibleShape(&v42[v48 + 1], v47 - (v48 + 1), &v111[v48 + 1], v109 - (v48 + 1)) & 1) == 0))
    {
      v112[0] = "result shape must match input shape along non-axis dimensions";
      v113 = 259;
      mlir::OpState::emitOpError(v108, v112, &v128);
      v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
      if (v128)
      {
        mlir::InFlightDiagnostic::report(&v128);
      }

      if (v139 != 1)
      {
        goto LABEL_234;
      }

      if (v138 != &v139)
      {
        free(v138);
      }

      v83 = __p;
      if (__p)
      {
        v84 = v137;
        v85 = __p;
        if (v137 != __p)
        {
          do
          {
            v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
          }

          while (v84 != v83);
          v85 = __p;
        }

        v137 = v83;
        operator delete(v85);
      }

      v56 = v134;
      if (v134)
      {
        v86 = v135;
        v58 = v134;
        if (v135 != v134)
        {
          do
          {
            v88 = *--v86;
            v87 = v88;
            *v86 = 0;
            if (v88)
            {
              MEMORY[0x259C63150](v87, 0x1000C8077774924);
            }
          }

          while (v86 != v56);
          goto LABEL_230;
        }

LABEL_231:
        v135 = v56;
        operator delete(v58);
      }

LABEL_232:
      if (v130 != v133)
      {
        free(v130);
      }

      goto LABEL_234;
    }

    if (v110)
    {
      p_opt_class_meths = v46;
      if (v118 != 1)
      {
        goto LABEL_74;
      }

      v15 = v45;
      if (v49 == 0x8000000000000000)
      {
        v49 = 0x8000000000000000;
        goto LABEL_75;
      }

      v16 = v44;
      if (v127 != 1)
      {
        v14 = v43;
        if (v26 >= v105)
        {
          if ((v106 & (v49 > v107)) != 1)
          {
            goto LABEL_77;
          }

          v52 = "Dim length along axis in the last result tensor must be <= that in the first (N - 1) tensors. N: number of results";
        }

        else
        {
          if ((v106 & (v49 != v107)) != 1)
          {
            v107 = v49;
            v106 = 1;
            goto LABEL_77;
          }

          v52 = "Dim length along axis in the results (except the last one) must be same";
        }

        v112[0] = v52;
        v113 = 259;
        mlir::OpState::emitOpError(v108, v112, &v128);
        v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v128);
        if (v127 != 1)
        {
          goto LABEL_238;
        }

LABEL_235:
        v89 = v125;
        v90 = &v126;
        goto LABEL_236;
      }

      v14 = v43;
      if (v49 != *(v125 + v26))
      {
        v112[0] = "inferred dimension size along axis must be compatible with result shape at axis";
        v113 = 259;
        mlir::OpState::emitOpError(v108, v112, &v128);
        v97 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
        v23 = v97;
        if (v128)
        {
          mlir::InFlightDiagnostic::report(&v128);
        }

        if (v139 != 1)
        {
          goto LABEL_234;
        }

        if (v138 != &v139)
        {
          free(v138);
        }

        v98 = __p;
        if (__p)
        {
          v99 = v137;
          v100 = __p;
          if (v137 != __p)
          {
            do
            {
              v99 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v99 - 1);
            }

            while (v99 != v98);
            v100 = __p;
          }

          v137 = v98;
          operator delete(v100);
        }

        v56 = v134;
        if (v134)
        {
          v101 = v135;
          v58 = v134;
          if (v135 != v134)
          {
            do
            {
              v103 = *--v101;
              v102 = v103;
              *v101 = 0;
              if (v103)
              {
                MEMORY[0x259C63150](v102, 0x1000C8077774924);
              }
            }

            while (v101 != v56);
            goto LABEL_230;
          }

          goto LABEL_231;
        }

        goto LABEL_232;
      }
    }

    else
    {
      p_opt_class_meths = v46;
      if (v49 == 0x8000000000000000)
      {
        v49 = 0x8000000000000000;
LABEL_74:
        v15 = v45;
LABEL_75:
        v16 = v44;
        v14 = v43;
        goto LABEL_77;
      }

      v15 = v45;
      v16 = v44;
      v14 = v43;
      if (v49 != v140[v26])
      {
        v113 = 259;
        mlir::OpState::emitOpError(v108, v112, &v128);
        v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
        if (v128)
        {
          mlir::InFlightDiagnostic::report(&v128);
        }

        if (v139 != 1)
        {
          goto LABEL_234;
        }

        if (v138 != &v139)
        {
          free(v138);
        }

        v91 = __p;
        if (__p)
        {
          v92 = v137;
          v93 = __p;
          if (v137 != __p)
          {
            do
            {
              v92 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v92 - 1);
            }

            while (v92 != v91);
            v93 = __p;
          }

          v137 = v91;
          operator delete(v93);
        }

        v56 = v134;
        if (v134)
        {
          v94 = v135;
          v58 = v134;
          if (v135 != v134)
          {
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

            while (v94 != v56);
            goto LABEL_230;
          }

          goto LABEL_231;
        }

        goto LABEL_232;
      }
    }

LABEL_77:
    if (v49 == 0x8000000000000000 || v25 == 0x8000000000000000)
    {
      v25 = 0x8000000000000000;
    }

    else
    {
      v25 += v49;
    }

    ++v26;
  }

  while (v26 != v14);
LABEL_94:
  v1 = v108;
  if (v25 != 0x8000000000000000)
  {
LABEL_131:
    v23 = 1;
    if (v121 == 0x8000000000000000 || v25 == v121)
    {
      goto LABEL_234;
    }

    v112[0] = "sum of result dimension lengths along split axis must equal input dimension length along split axis";
    v113 = 259;
    mlir::OpState::emitOpError(v1, v112, &v128);
    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
    if (v128)
    {
      mlir::InFlightDiagnostic::report(&v128);
    }

    if (v139 != 1)
    {
      goto LABEL_234;
    }

    mlir::Diagnostic::~Diagnostic(v129);
    if (v127 != 1)
    {
      goto LABEL_238;
    }

    goto LABEL_235;
  }

  v23 = 1;
  if (v127 == 1)
  {
    goto LABEL_235;
  }

LABEL_238:
  if (v140 != v142)
  {
    free(v140);
  }

  return v23;
}

uint64_t mlir::mps::SplitOp::getNumSplits(mlir::mps::SplitOp *this)
{
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v7)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v7, &v5);
  if (v6 >= 0x41)
  {
    v1 = v5;
  }

  else
  {
    v1 = &v5;
  }

  v2 = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    MEMORY[0x259C63150]();
  }

  return v2 | 0x100000000;
}

uint64_t mlir::mps::anonymous namespace::inferSplitSizes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v4 = (a1 + a2 - 1) / a2;
  v5 = a1 / v4;
  __src = v19;
  v18 = 6;
  if ((a1 / v4) >= 7)
  {
    v17 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v5)
  {
    v6 = vdupq_n_s64(a1 / v4 - 1);
    v7 = v5 + 1;
    v8 = vmovn_s64(vcgeq_u64(v6, xmmword_2573686A0));
    if (v8.i8[0])
    {
      v19[0] = (a1 + a2 - 1) / a2;
      v9 = v7 & 0xE;
      if ((v8.i8[4] & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = v7 & 0xE;
      if ((v8.i8[4] & 1) == 0)
      {
LABEL_6:
        if (v9 == 2)
        {
          goto LABEL_20;
        }

LABEL_10:
        v10 = vmovn_s64(vcgtq_u64(v6, xmmword_2573686B0));
        if (v10.i8[0])
        {
          v19[2] = (a1 + a2 - 1) / a2;
          if ((v10.i8[4] & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if ((v10.i8[4] & 1) == 0)
        {
LABEL_12:
          if (v9 == 4)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        v19[3] = (a1 + a2 - 1) / a2;
        if (v9 == 4)
        {
          goto LABEL_20;
        }

LABEL_16:
        v11 = vmovn_s64(vcgtq_u64(v6, xmmword_2573686C0));
        if (v11.i8[0])
        {
          v19[4] = (a1 + a2 - 1) / a2;
        }

        if (v11.i8[4])
        {
          v19[5] = (a1 + a2 - 1) / a2;
        }

        goto LABEL_20;
      }
    }

    v19[1] = (a1 + a2 - 1) / a2;
    if (v9 == 2)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

LABEL_20:
  v17 = a1 / v4;
  if (a1 % v4)
  {
    if (v18 <= v5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v19[v5] = a1 % v4;
    LODWORD(v5) = ++v17;
  }

  if (v5 != a2)
  {
    v13 = 0;
    v14 = __src;
    if (__src == v19)
    {
      return v13;
    }

LABEL_29:
    free(v14);
    return v13;
  }

  if (&__src != a3)
  {
    v12 = *(a3 + 8);
    if (v12 >= v5)
    {
      if (v5)
      {
        memmove(*a3, __src, 8 * a2);
      }
    }

    else
    {
      if (*(a3 + 12) < v5)
      {
        *(a3 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v12)
      {
        memmove(*a3, __src, 8 * v12);
      }

      else
      {
        v12 = 0;
      }

      if (v17 != v12)
      {
        memcpy((*a3 + 8 * v12), __src + 8 * v12, 8 * (v17 - v12));
      }
    }

    *(a3 + 8) = v5;
  }

  v13 = 1;
  v14 = __src;
  if (__src != v19)
  {
    goto LABEL_29;
  }

  return v13;
}

const char *llvm::formatv<long long &,unsigned int &>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __s;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v6;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_28685E520;
  *(a4 + 48) = a2;
  *(a4 + 56) = &unk_286867A30;
  *(a4 + 64) = a3;
  *(a4 + 80) = a4 + 56;
  return __s;
}

uint64_t std::optional<llvm::SmallVector<long long,6u>>::operator=[abi:nn200100]<llvm::SmallVector<long long,6u>&,void>(uint64_t result, uint64_t a2)
{
  if (*(result + 64) == 1)
  {
    if (result != a2)
    {
      v2 = *(a2 + 8);
      v3 = *(result + 8);
      if (v3 >= v2)
      {
        if (v2)
        {
          v5 = result;
          memmove(*result, *a2, 8 * v2);
          result = v5;
          *(v5 + 8) = v2;
          return result;
        }

        goto LABEL_17;
      }

      if (*(result + 12) < v2)
      {
        *(result + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v3)
      {
        v7 = result;
        v8 = a2;
        memmove(*result, *a2, 8 * v3);
        a2 = v8;
        result = v7;
        v9 = *(v8 + 8) - v3;
        if (!v9)
        {
LABEL_17:
          *(result + 8) = v2;
          return result;
        }
      }

      else
      {
        v3 = 0;
        v9 = *(a2 + 8);
        if (!*(a2 + 8))
        {
          goto LABEL_17;
        }
      }

      v10 = 8 * v3;
      v11 = result;
      memcpy((*result + v10), (*a2 + v10), 8 * v9);
      result = v11;
      *(v11 + 8) = v2;
    }
  }

  else
  {
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (result != a2)
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        if (v4 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v6 = result;
        memcpy((result + 16), *a2, 8 * *(a2 + 8));
        result = v6;
        *(v6 + 8) = v4;
      }
    }

    *(result + 64) = 1;
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v16 = *a7;
    v39 = a7[1];
  }

  else
  {
    v16 = 0uLL;
    v39 = 0u;
  }

  v30 = a6;
  v31[0] = 0;
  v32 = 0;
  v33 = v16;
  v34 = v39;
  v35 = a9;
  v36 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(v31, "mps.singlegate_rnn", 18, Context);
    v32 = 1;
  }

  v37 = a4;
  v38 = a5;
  v18 = mlir::UnknownLoc::get(this, a2);
  if ((mlir::mps::SingleGateRNNOpAdaptor::verify(&v30, v18) & 1) == 0)
  {
    v22 = mlir::Float32Type::get(this, v19);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a11 + 8);
    v25 = (a11 + 8);
    if (v24 >= *(a11 + 12))
    {
      goto LABEL_17;
    }

    v26 = *a11;
    goto LABEL_20;
  }

  *&v39 = a4;
  *(&v39 + 1) = a5;
  if (!a5)
  {
    if (mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands"))
    {
      goto LABEL_15;
    }

    v28 = mlir::Float32Type::get(this, v27);
    v23 = mlir::UnrankedTensorType::get(v28);
    v24 = *(a11 + 8);
    v25 = (a11 + 8);
    if (v24 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = *a11;
LABEL_20:
    v26[v24] = v23;
    ++*v25;
    return 1;
  }

  v20 = *(mlir::ValueRange::dereference_iterator(&v39, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v21) = v20;
  ++*(a11 + 8);
LABEL_15:
  if (*(&v33 + 1))
  {
    v26 = *a11;
    v23 = **a11;
    v25 = (a11 + 8);
    v24 = *(a11 + 8);
    if (v24 >= *(a11 + 12))
    {
LABEL_17:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    goto LABEL_20;
  }

  return 1;
}

uint64_t mlir::mps::SingleGateRNNOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'mps.singlegate_rnn' op requires attribute 'activation'";
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

uint64_t mlir::mps::SingleGateRNNOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::anonymous namespace::verifySingleGateRNN(mlir::Operation *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v103 = *MEMORY[0x277D85DE8];
  v88[0] = a2;
  v88[1] = a3;
  v87[0] = a4;
  v87[1] = a5;
  v86[0] = a6;
  v86[1] = a7;
  v85[0] = a11;
  v85[1] = a12;
  if (!a2)
  {
    return 1;
  }

  v12 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || a4 == 0;
  if (v12 || *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v88);
  v16 = v15;
  v17 = mlir::ShapedType::getShape(v87);
  if (v16 == 3)
  {
    v82 = v18;
    if (v18 < 2)
    {
      v84 = 259;
      mlir::Operation::emitOpError(&v91, a1, v83);
      v19 = &v82;
LABEL_10:
      mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v91, v19);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v20, ", should be 2 or greater.");
      goto LABEL_11;
    }

    v30 = 0;
    v31 = Shape[2];
    do
    {
      if (v30 < v18 - 2)
      {
        v32 = 1;
      }

      else
      {
        v32 = Shape[2];
      }

      v33 = *(v17 + 8 * v30);
      if (v32 != 0x8000000000000000 && v33 != 0x8000000000000000 && v33 != v32)
      {
        v84 = 259;
        mlir::Operation::emitOpError(&v91, a1, v83);
        if (v91)
        {
          LODWORD(v89) = 3;
          *(&v89 + 1) = "square matrix of size [";
          v90 = 23;
          if (v94 >= v95)
          {
            if (v93 > &v89 || v93 + 24 * v94 <= &v89)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v38 = v93 + 24 * v94;
          v39 = v89;
          *(v38 + 2) = v90;
          *v38 = v39;
          v40 = ++v94;
          if (v91)
          {
            LODWORD(v89) = 2;
            *(&v89 + 1) = v31;
            if (v40 >= v95)
            {
              if (v93 > &v89 || v93 + 24 * v40 <= &v89)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v41 = v93 + 24 * v94;
            v42 = v89;
            *(v41 + 2) = v90;
            *v41 = v42;
            v43 = ++v94;
            if (v91)
            {
              LODWORD(v89) = 3;
              *(&v89 + 1) = ", ";
              v90 = 2;
              if (v43 >= v95)
              {
                if (v93 > &v89 || v93 + 24 * v43 <= &v89)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v44 = v93 + 24 * v94;
              v45 = v89;
              *(v44 + 2) = v90;
              *v44 = v45;
              v46 = ++v94;
              if (v91)
              {
                LODWORD(v89) = 2;
                *(&v89 + 1) = v31;
                if (v46 >= v95)
                {
                  if (v93 > &v89 || v93 + 24 * v46 <= &v89)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v47 = v93 + 24 * v94;
                v48 = v89;
                *(v47 + 2) = v90;
                *v47 = v48;
                v49 = ++v94;
                if (v91)
                {
                  LODWORD(v89) = 3;
                  *(&v89 + 1) = "].";
                  v90 = 2;
                  if (v49 >= v95)
                  {
                    if (v93 > &v89 || v93 + 24 * v49 <= &v89)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v50 = v93 + 24 * v94;
                  v51 = v89;
                  *(v50 + 2) = v90;
                  *v50 = v51;
                  ++v94;
                }
              }
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v91);
        v52 = result;
        if (v91)
        {
          mlir::InFlightDiagnostic::report(&v91);
          result = v52;
        }

        if (v102)
        {
          if (v101 != &v102)
          {
            free(v101);
            result = v52;
          }

          v53 = __p;
          if (__p)
          {
            v54 = v100;
            v55 = __p;
            if (v100 != __p)
            {
              do
              {
                v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
              }

              while (v54 != v53);
              v55 = __p;
            }

            v100 = v53;
            operator delete(v55);
            result = v52;
          }

          v56 = v97;
          if (v97)
          {
            v57 = v98;
            v58 = v97;
            if (v98 != v97)
            {
              do
              {
                v60 = *--v57;
                v59 = v60;
                *v57 = 0;
                if (v60)
                {
                  MEMORY[0x259C63150](v59, 0x1000C8077774924);
                }
              }

              while (v57 != v56);
              v58 = v97;
            }

            v98 = v56;
            operator delete(v58);
            result = v52;
          }

          if (v93 != &v96)
          {
            free(v93);
            return v52;
          }
        }

        return result;
      }

      ++v30;
    }

    while (v18 != v30);
    if (v86[0] && *(*v86[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v36 = mlir::ShapedType::getShape(v86);
      *&v89 = v37;
      if (v37 <= 1)
      {
        v84 = 259;
        mlir::Operation::emitOpError(&v91, a1, v83);
        v19 = &v89;
        goto LABEL_10;
      }

      v61 = 0;
      while (1)
      {
        v62 = v61 >= v37 - 2 ? Shape[v61 + 3 - v37] : 1;
        v80 = v62;
        if (v62 != 0x8000000000000000)
        {
          v63 = *(v36 + 8 * v61);
          if (v63 != 0x8000000000000000 && v63 != v62)
          {
            break;
          }
        }

        if (v37 == ++v61)
        {
          goto LABEL_81;
        }
      }

      v81 = v61;
      v84 = 259;
      v65 = v36;
      mlir::Operation::emitOpError(&v91, a1, v83);
      mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v91, &v81);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v66, "] = ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v67, (v65 + 8 * v81));
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v68, ", expected ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v69, &v80);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v70, ".");
LABEL_11:
      v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v91);
      return v22;
    }

LABEL_81:
    if (a9)
    {
      if (*(*a9 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v71 = v88[0];
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v88[0]);
        if (!mlir::OpTrait::util::getBroadcastedType(v71, a9, ElementTypeOrSelf))
        {
          v79 = a1;
          v84 = 259;
          goto LABEL_100;
        }
      }
    }

    if (v85[0] && *(*v85[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v73 = mlir::ShapedType::getShape(v85);
      if (v74 == 3 && (*v73 == 0x8000000000000000 || *Shape == 0x8000000000000000 || *Shape == *v73))
      {
        v75 = v73[1];
        if (v75 == 0x8000000000000000 || (v76 = Shape[1], v76 == 0x8000000000000000) || v76 == v75)
        {
          v77 = v73[2];
          result = 1;
          if (v77 == 0x8000000000000000)
          {
            return result;
          }

          v78 = Shape[2];
          if (v78 == 0x8000000000000000 || v78 == v77)
          {
            return result;
          }
        }
      }

      v84 = 259;
      v79 = a1;
LABEL_100:
      mlir::Operation::emitOpError(&v91, v79, v83);
      v21 = &v91;
      goto LABEL_11;
    }

    return 1;
  }

  v83[0] = "Invalid input tensor rank: ";
  v84 = 259;
  mlir::Operation::emitOpError(&v91, a1, v83);
  if (v91)
  {
    LODWORD(v89) = 5;
    *(&v89 + 1) = v16;
    if (v94 >= v95)
    {
      if (v93 > &v89 || v93 + 24 * v94 <= &v89)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v93 + 24 * v94;
    v24 = v89;
    *(v23 + 2) = v90;
    *v23 = v24;
    v25 = ++v94;
    if (v91)
    {
      LODWORD(v89) = 3;
      *(&v89 + 1) = ", should be 3.";
      v90 = 14;
      if (v25 >= v95)
      {
        if (v93 > &v89 || v93 + 24 * v25 <= &v89)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = v93 + 24 * v94;
      v27 = v89;
      *(v26 + 2) = v90;
      *v26 = v27;
      ++v94;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v91);
  if (v91)
  {
    v29 = result;
    mlir::InFlightDiagnostic::report(&v91);
    result = v29;
  }

  if (v102 == 1)
  {
    v22 = result;
    mlir::Diagnostic::~Diagnostic(&v92);
    return v22;
  }

  return result;
}