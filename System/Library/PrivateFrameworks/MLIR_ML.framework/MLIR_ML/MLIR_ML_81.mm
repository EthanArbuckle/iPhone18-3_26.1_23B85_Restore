void *mlir::DenseIntElementsAttr::end@<X0>(mlir::DenseIntElementsAttr *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  NumElements = mlir::DenseElementsAttr::getNumElements(this);

  return mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(a2, v3, NumElements);
}

uint64_t mlir::mps::StencilOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::StencilOp::verify(mlir::Operation **this)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = (*this + 16 * ((*(*this + 11) >> 23) & 1) + 64);
  v3 = *(v2[5] + 8);
  if (v3)
  {
    if (v3 != 3)
    {
      goto LABEL_5;
    }

    if (!v2[2])
    {
      v48 = 259;
      mlir::OpState::emitOpError(this, v47, v49);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
      }

      if (v57 != 1)
      {
        return v14;
      }

      if (v56 != &v57)
      {
        free(v56);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v55;
        v37 = __p;
        if (v55 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v55 = v35;
        operator delete(v37);
      }

      v18 = v52;
      if (v52)
      {
        v38 = v53;
        v20 = v52;
        if (v53 != v52)
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

          while (v38 != v18);
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }
  }

  if (!v2[1])
  {
    v48 = 259;
    mlir::OpState::emitOpError(this, v47, v49);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v57 != 1)
    {
      return v14;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v55;
      v25 = __p;
      if (v55 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v55 = v23;
      operator delete(v25);
    }

    v18 = v52;
    if (v52)
    {
      v26 = v53;
      v20 = v52;
      if (v53 != v52)
      {
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

LABEL_5:
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v46[0] = v4;
  v46[1] = v5;
  if (!v4)
  {
    v47[0] = "invalid type for input.";
    v48 = 259;
    mlir::OpState::emitOpError(this, v47, v49);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v57 != 1)
    {
      return v14;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v55;
      v17 = __p;
      if (v55 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v55 = v15;
      operator delete(v17);
    }

    v18 = v52;
    if (v52)
    {
      v19 = v53;
      v20 = v52;
      if (v53 != v52)
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
        goto LABEL_75;
      }

LABEL_76:
      v53 = v18;
      operator delete(v20);
    }

LABEL_77:
    if (v50 != &v51)
    {
      free(v50);
    }

    return v14;
  }

  v6 = v4;
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
  v45[0] = v7;
  v45[1] = v8;
  if (!v7)
  {
    v47[0] = "invalid type for weights.";
    v48 = 259;
    mlir::OpState::emitOpError(this, v47, v49);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v57 != 1)
    {
      return v14;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v55;
      v31 = __p;
      if (v55 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v55 = v29;
      operator delete(v31);
    }

    v18 = v52;
    if (v52)
    {
      v32 = v53;
      v20 = v52;
      if (v53 != v52)
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

        while (v32 != v18);
LABEL_75:
        v20 = v52;
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    mlir::ShapedType::getShape(v46);
    v10 = v9;
    mlir::ShapedType::getShape(v45);
    v43 = v11;
    v44 = v10;
    if (v10 <= 3)
    {
      v47[0] = "stencil input rank ";
      v48 = 259;
      mlir::OpState::emitOpError(this, v47, v49);
      mlir::InFlightDiagnostic::operator<<<unsigned long &>(v49, &v44);
      v13 = " must be >= 4 ";
LABEL_83:
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v12, v13);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v49);
      return v14;
    }

    if (v11 != 4)
    {
      v47[0] = "stencil weights rank ";
      v48 = 259;
      mlir::OpState::emitOpError(this, v47, v49);
      mlir::InFlightDiagnostic::operator<<<unsigned long &>(v49, &v43);
      v13 = " must be == 4 ";
      goto LABEL_83;
    }
  }

  return 1;
}

uint64_t mlir::mps::CropResizeOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = *MEMORY[0x277D85DE8];
  v69 = a4;
  v70 = a5;
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

  v58 = a6;
  v59[0] = 0;
  v60 = 0;
  v61 = v14;
  v62 = v15;
  v63 = v16;
  v64 = v17;
  v65 = a9;
  v18 = a5;
  v66 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(v59, "mps.crop_resize", 15, Context);
    v60 = 1;
    v18 = v70;
  }

  v67 = a4;
  v68 = a5;
  if (v18 >= 2 && (v20 = mlir::UnknownLoc::get(this, a2), (mlir::mps::CropResizeOpAdaptor::verify(&v58, v20) & 1) != 0))
  {
    v21 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v22 = *(*(*(v21 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v24 = 0;
    }

    v25 = mlir::ValueRange::dereference_iterator(&v69, 1);
    v26 = *(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v26 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v26 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v28 = *(v25 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v28 = 0;
    }

    if (v24)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v34 = v63;
      if (!v63)
      {
        goto LABEL_38;
      }

      v35 = *(*v63 + 136);
      if (v35 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v34 = 0;
      }

      v55 = v34;
      if (v35 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (Type = mlir::IntegerAttr::getType(&v55), mlir::Type::isUnsignedInteger(&Type)))
      {
        UInt = mlir::IntegerAttr::getUInt(&v55);
      }

      else
      {
LABEL_38:
        UInt = 1;
      }

      v37 = *(&v63 + 1);
      if (!*(&v63 + 1))
      {
        goto LABEL_45;
      }

      v38 = *(**(&v63 + 1) + 136);
      if (v38 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v37 = 0;
      }

      v55 = v37;
      if (v38 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (Type = mlir::IntegerAttr::getType(&v55), mlir::Type::isUnsignedInteger(&Type)))
      {
        v39 = mlir::IntegerAttr::getUInt(&v55);
      }

      else
      {
LABEL_45:
        v39 = 1;
      }

      Type = v24;
      v55 = v57;
      v56 = 0x800000000;
      v53 = v28;
      if (mlir::TensorType::hasRank(&Type) && (mlir::TensorType::getShape(&Type), v40 == 4))
      {
        Shape = mlir::TensorType::getShape(&Type);
        v42 = *Shape;
        v43 = Shape[1];
        if (!mlir::TensorType::hasRank(&v53))
        {
LABEL_49:
          v44 = 0x8000000000000000;
          v45 = 0x8000000000000000;
LABEL_57:
          if (v56 != 5)
          {
            if (v56 <= 5)
            {
              if (HIDWORD(v56) <= 4)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              bzero(v55 + 8 * v56, 40 - 8 * v56);
            }

            LODWORD(v56) = 5;
          }

          v49 = v55;
          *v55 = v44;
          v49[1] = v45;
          v49[2] = v43;
          v49[3] = UInt;
          v49[4] = v39;
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v24);
          v51 = mlir::RankedTensorType::get(v49, 5, ElementTypeOrSelf, 0);
          v52 = *(a11 + 8);
          if (v52 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v52) = v51;
          ++*(a11 + 8);
          if (v55 != v57)
          {
            free(v55);
          }

          return 1;
        }
      }

      else
      {
        v42 = 0x8000000000000000;
        v43 = 0x8000000000000000;
        if (!mlir::TensorType::hasRank(&v53))
        {
          goto LABEL_49;
        }
      }

      mlir::TensorType::getShape(&v53);
      v45 = 0x8000000000000000;
      if (v46 == 2)
      {
        v47 = mlir::TensorType::getShape(&v53);
        v44 = *v47;
        v48 = v47[1];
        if (v48 != 0x8000000000000000)
        {
          if (v48 == 4)
          {
            v45 = v42;
          }

          else
          {
            v45 = 1;
          }
        }
      }

      else
      {
        v44 = 0x8000000000000000;
      }

      goto LABEL_57;
    }

    v30 = mlir::getElementTypeOrSelf(v24);
  }

  else
  {
    v30 = mlir::Float32Type::get(this, a2);
  }

  v31 = mlir::UnrankedTensorType::get(v30);
  v32 = *(a11 + 8);
  if (v32 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v32) = v31;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::CropResizeOpAdaptor::verify(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  v4 = a1[9];
  if (a1[7] && (v27[0] = a1[7], v29[0] = mlir::IntegerAttr::getType(v27), !mlir::Type::isUnsignedInteger(v29, 32)))
  {
    v27[0] = "'mps.crop_resize' op attribute 'resize_height' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v28 = 259;
    mlir::emitError(a2, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v35;
        v8 = __p;
        if (v35 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v35 = v6;
        operator delete(v8);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v10 = v33;
      v11 = v32;
      if (v33 == v32)
      {
        goto LABEL_57;
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
      goto LABEL_56;
    }
  }

  else if (v3 && (v27[0] = v3, v29[0] = mlir::IntegerAttr::getType(v27), !mlir::Type::isUnsignedInteger(v29, 32)))
  {
    v27[0] = "'mps.crop_resize' op attribute 'resize_width' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v28 = 259;
    mlir::emitError(a2, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v35;
        v16 = __p;
        if (v35 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v35 = v14;
        operator delete(v16);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v17 = v33;
      v11 = v32;
      if (v33 == v32)
      {
        goto LABEL_57;
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
      goto LABEL_56;
    }
  }

  else
  {
    if (!v4)
    {
      return 1;
    }

    v27[0] = v4;
    v29[0] = mlir::FloatAttr::getType(v27);
    if (mlir::Type::isF32(v29))
    {
      return 1;
    }

    v27[0] = "'mps.crop_resize' op attribute 'spatial_scale' failed to satisfy constraint: 32-bit float attribute";
    v28 = 259;
    mlir::emitError(a2, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v35;
        v22 = __p;
        if (v35 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v35 = v20;
        operator delete(v22);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v23 = v33;
      v11 = v32;
      if (v33 == v32)
      {
LABEL_57:
        v33 = v9;
        operator delete(v11);
LABEL_58:
        if (v30 != &v31)
        {
          free(v30);
        }

        return v5;
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
LABEL_56:
      v11 = v32;
      goto LABEL_57;
    }
  }

  return v5;
}

uint64_t mlir::mps::CropResizeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::CropResizeOp::verify(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 9);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v41 = v2;
  v5 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v40 = v5;
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
    v38[0] = "cannot crop_resize a non-tensor type";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, &v42);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v49;
        v12 = __p;
        if (v49 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v49 = v10;
        operator delete(v12);
      }

      v13 = v46;
      if (!v46)
      {
        goto LABEL_77;
      }

      v14 = v47;
      v15 = v46;
      if (v47 == v46)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }
  }

  else
  {
    hasRank = mlir::TensorType::hasRank(&v41);
    if (hasRank && (mlir::TensorType::getShape(&v41), v20 != 4))
    {
      v38[0] = "images tensor must have shape [N, C, H, W]";
      v39 = 259;
      mlir::OpState::emitOpError(this, v38, &v42);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v49;
          v27 = __p;
          if (v49 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v49 = v25;
          operator delete(v27);
        }

        v13 = v46;
        if (!v46)
        {
          goto LABEL_77;
        }

        v28 = v47;
        v15 = v46;
        if (v47 == v46)
        {
          goto LABEL_76;
        }

        do
        {
          v30 = *--v28;
          v29 = v30;
          *v28 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v28 != v13);
        goto LABEL_75;
      }
    }

    else
    {
      if (!mlir::TensorType::hasRank(&v40))
      {
        return 1;
      }

      mlir::TensorType::getShape(&v40);
      if (v21 == 2)
      {
        Shape = mlir::TensorType::getShape(&v40);
        v24 = *(Shape + 8 * v23 - 8);
        v9 = 1;
        if ((v24 - 4) >= 2 && v24 != 0x8000000000000000)
        {
          v38[0] = "boxes tensor must have shape [B, 4] or [B, 5]";
          v39 = 259;
          mlir::OpState::emitOpError(this, v38, &v42);
          v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
          if (v42)
          {
            mlir::InFlightDiagnostic::report(&v42);
          }

          if (v51 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v43);
          }
        }

        return v9;
      }

      v38[0] = "boxes tensor must have shape [B, 4] or [B, 5]";
      v39 = 259;
      mlir::OpState::emitOpError(this, v38, &v42);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v31 = __p;
        if (__p)
        {
          v32 = v49;
          v33 = __p;
          if (v49 != __p)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = __p;
          }

          v49 = v31;
          operator delete(v33);
        }

        v13 = v46;
        if (!v46)
        {
          goto LABEL_77;
        }

        v34 = v47;
        v15 = v46;
        if (v47 == v46)
        {
LABEL_76:
          v47 = v13;
          operator delete(v15);
LABEL_77:
          if (v44 != &v45)
          {
            free(v44);
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
LABEL_75:
        v15 = v46;
        goto LABEL_76;
      }
    }
  }

  return v9;
}

BOOL mlir::mps::LPNormOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t mlir::mps::LPNormOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::LPNormOp::verify(mlir::Operation **this)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *(*(*this + 9) + 56);
  v59 = 0;
  v60 = 0;
  v41[0] = &v59;
  v53 = v2;
  DefiningOp = mlir::Value::getDefiningOp(&v53);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v41, DefiningOp) & 1) != 0)
  {
    SingleInt = mlir::getSingleIntValue<long long>(v59, v60);
    v48 = SingleInt;
    v49 = v5;
    if ((v5 & 1) != 0 && SingleInt <= 0)
    {
      v53 = "failed: exponent must be positive, but got {0}";
      v54 = 46;
      v55[0] = &v58;
      v55[1] = 1;
      v56 = 1;
      v57[0] = &unk_28685E520;
      v57[1] = &v48;
      v58 = v57;
      v42 = 263;
      v41[0] = &v53;
      mlir::OpState::emitOpError(this, v41, &v59);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
      if (v59)
      {
        mlir::InFlightDiagnostic::report(&v59);
      }

      if (v68 != 1)
      {
        return v6;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v66;
        v9 = __p;
        if (v66 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v66 = v7;
        operator delete(v9);
      }

      v10 = v63;
      if (v63)
      {
        v11 = v64;
        v12 = v63;
        if (v64 != v63)
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
          v12 = v63;
        }

        v64 = v10;
        operator delete(v12);
      }

      v26 = v61;
      if (v61 == v62)
      {
        return v6;
      }

LABEL_69:
      free(v26);
      return v6;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v15 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = *v15;
  {
    mlir::mps::ConstantOp::verify();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (v19)
    {
      goto LABEL_25;
    }

LABEL_39:
    v27 = 0;
    goto LABEL_40;
  }

  v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (!v19)
  {
    goto LABEL_39;
  }

LABEL_25:
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
    goto LABEL_39;
  }

  v27 = v20[1];
LABEL_40:
  v47[0] = v15;
  v47[1] = v27;
  v50 = v52;
  v51 = 0x400000000;
  if (!mlir::ShapedType::hasRank(v47) || (mlir::matchConstantWithIntVector<long long>(*(*(*this + 9) + 88), &v50) & 1) == 0)
  {
    goto LABEL_67;
  }

  v53 = v55;
  v54 = 0x600000000;
  v6 = v50;
  v28 = v51;
  mlir::ShapedType::getShape(v47);
  if (!PositiveAxes)
  {
    mlir::ShapedType::getShape(v47);
    v41[0] = "failed: found an axis out of bounds for input rank {0}";
    v41[1] = 54;
    v41[2] = &v44;
    v41[3] = 1;
    LOBYTE(v42) = 1;
    v43[0] = &unk_28685E550;
    v43[1] = v31;
    v44 = v43;
    v45 = v41;
    v46 = 263;
    mlir::OpState::emitOpError(this, &v45, &v59);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v66;
        v34 = __p;
        if (v66 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v66 = v32;
        operator delete(v34);
      }

      v35 = v63;
      if (v63)
      {
        v36 = v64;
        v37 = v63;
        if (v64 != v63)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          v37 = v63;
        }

        v64 = v35;
        operator delete(v37);
      }

      if (v61 != v62)
      {
        free(v61);
      }
    }
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (PositiveAxes)
  {
LABEL_67:
    v6 = 1;
  }

  v26 = v50;
  if (v50 != v52)
  {
    goto LABEL_69;
  }

  return v6;
}

uint64_t mlir::mps::MatrixDecompositionLUOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v47[2] = *MEMORY[0x277D85DE8];
  v47[0] = a4;
  v47[1] = a5;
  if (a5 == 1)
  {
    v44 = a4;
    v45 = 1;
    v14 = *(mlir::ValueRange::dereference_iterator(&v44, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(a11 + 8);
    if (v15 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v15) = v14;
    ++*(a11 + 8);
    v16 = mlir::ValueRange::dereference_iterator(v47, 0);
    v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (!v17 || *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v24 = mlir::IntegerType::get(a1, 32, 2u);
      v25 = mlir::UnrankedTensorType::get(v24);
      v26 = *(a11 + 8);
      if (v26 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v26) = v25;
      ++*(a11 + 8);
      v27 = mlir::IntegerType::get(a1, 32, 1u);
      v28 = mlir::UnrankedTensorType::get(v27);
      v29 = *(a11 + 8);
      if (v29 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v29) = v28;
      ++*(a11 + 8);
    }

    else
    {
      v18 = mlir::ValueRange::dereference_iterator(v47, 0);
      v44 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v18 + 8) & 0xFFFFFFFFFFFFFFF8));
      v45 = v19;
      Shape = mlir::ShapedType::getShape(&v44);
      v22 = v21 - 1;
      if (v21 <= 1)
      {
        return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input must be rank 2 or more");
      }

      v30 = Shape;
      v42 = v21 - 2;
      if (*(Shape + v21 - 2) >= *(Shape + v22))
      {
        v31 = *(Shape + v22);
      }

      else
      {
        v31 = *(Shape + v21 - 2);
      }

      v32 = 8 * v21;
      v44 = v46;
      v45 = 0x400000000;
      if (((8 * v21) >> 3) >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v33 = v21;
      memcpy(v46, Shape, v32);
      LODWORD(v45) = v45 + (v32 >> 3);
      v34 = v45;
      v35 = v44;
      *(v44 + v42) = 1;
      v35[v22] = v31;
      v36 = mlir::IntegerType::get(a1, 32, 2u);
      v37 = mlir::RankedTensorType::get(v35, v34, v36, 0);
      v38 = *(a11 + 8);
      if (v38 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v38) = v37;
      ++*(a11 + 8);
      memcpy(v43, v30, v32);
      *&v43[v42] = vdupq_n_s64(1uLL);
      v39 = mlir::IntegerType::get(a1, 32, 1u);
      v40 = mlir::RankedTensorType::get(v43, v33, v39, 0);
      v41 = *(a11 + 8);
      if (v41 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v41) = v40;
      ++*(a11 + 8);
      if (v44 != v46)
      {
        free(v44);
      }
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::MatrixDecompositionLUOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::MatrixSolverLUOp::verify(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v2)
  {
    if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != 0)
    {
      v6 = *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == 0;
      if (!v6 && *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        v28 = v7;
        Shape = mlir::ShapedType::getShape(&v27);
        v10 = v9;
        v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
        v28 = v11;
        v12 = mlir::ShapedType::getShape(&v27);
        v14 = v13;
        v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
        v28 = v15;
        v16 = mlir::ShapedType::getShape(&v27);
        if (v10 != v17 || v10 != v14)
        {
          v23 = "rank for lu matrix and rhs should match";
LABEL_22:
          v25 = v23;
          v26 = 259;
          mlir::OpState::emitOpError(this, &v25, &v27);
          v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
          return v19;
        }

        v18 = v10 - 2;
        if (v10 != 2)
        {
          v19 = 1;
          while (1)
          {
            v21 = *v16++;
            v20 = v21;
            v22 = *Shape++;
            if (v20 != v22 || v20 != *v12)
            {
              break;
            }

            ++v12;
            if (!--v18)
            {
              return v19;
            }
          }

          v23 = "batch dims of rhs and lu should match";
          goto LABEL_22;
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::mps::MatrixSolverLUOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v41[0] = a4;
  v41[1] = a5;
  if (a5 == 3)
  {
    v13 = mlir::ValueRange::dereference_iterator(v41, 0);
    v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8));
    v15 = mlir::ValueRange::dereference_iterator(v41, 2);
    v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
    v37[0] = v16;
    v37[1] = v17;
    if (!v14 || (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id ? (v18 = v16 == 0) : (v18 = 1), v18 || *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
    {
      ElementType = mlir::ShapedType::getElementType(v37);
      v35 = mlir::UnrankedTensorType::get(ElementType);
      v36 = *(a11 + 8);
      if (v36 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v36) = v35;
      ++*(a11 + 8);
    }

    else
    {
      v19 = mlir::ValueRange::dereference_iterator(v41, 0);
      v38 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
      v39 = v20;
      Shape = mlir::ShapedType::getShape(&v38);
      v23 = v22;
      v24 = mlir::ValueRange::dereference_iterator(v41, 2);
      v38 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v24 + 8) & 0xFFFFFFFFFFFFFFF8));
      v39 = v25;
      v26 = mlir::ShapedType::getShape(&v38);
      if (v23 < 2 || v27 <= 1)
      {
        return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "inputs must be rank 2 or more");
      }

      v28 = *(Shape + 8 * v23 - 8);
      llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v38, v26, &v26[8 * v27]);
      v29 = v39;
      v30 = v38;
      *(v38 + v39 - 2) = v28;
      v31 = mlir::ShapedType::getElementType(v37);
      v32 = mlir::RankedTensorType::get(v30, v29, v31, 0);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v32);
      if (v38 != &v40)
      {
        free(v38);
      }
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::MatrixSolverLUOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::MatrixInverseOp::verify(mlir::Operation **this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v2 || *(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v16[0] = v3;
  Shape = mlir::ShapedType::getShape(&v15);
  v6 = *(Shape + 8 * v5 - 16);
  v7 = *(Shape + 8 * v5 - 8);
  v8 = v6 == 0x8000000000000000 || v7 == 0x8000000000000000;
  if (v8 || v7 == v6)
  {
    return 1;
  }

  v13 = "inverse op supported only for square matrix";
  v14 = 259;
  mlir::OpState::emitOpError(this, &v13, &v15);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v15);
  if (v15)
  {
    v11 = result;
    mlir::InFlightDiagnostic::report(&v15);
    result = v11;
  }

  if (v17 == 1)
  {
    v12 = result;
    mlir::Diagnostic::~Diagnostic(v16);
    return v12;
  }

  return result;
}

uint64_t mlir::mps::MatrixInverseOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a5;
  if (a5 == 1)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(&v19, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = 0;
    }

    v18 = v13;
    if (v13 && (mlir::RankedTensorType::getShape(&v18), v14 <= 1))
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input must be rank 2 or more");
    }

    else
    {
      v21[0] = v19;
      v21[1] = v20;
      if (v20)
      {
        v16 = *(mlir::ValueRange::dereference_iterator(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v17 = *(a11 + 8);
        if (v17 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v17) = v16;
        ++*(a11 + 8);
        return 1;
      }

      else
      {
        return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
      }
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::MatrixInverseOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::PruningOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::PruningOp::verify(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v17[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  mlir::FloatAttr::getValue(v17, &v19);
  v2 = llvm::APFloat::convertToFloat(&v19);
  v3 = v20[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v4) == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
    if (v2 < 0.0 || v2 > 1.0)
    {
      goto LABEL_6;
    }

    return 1;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v20);
  if (v2 >= 0.0 && v2 <= 1.0)
  {
    return 1;
  }

LABEL_6:
  v18 = 259;
  mlir::OpState::emitOpError(this, v17, &v19);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v19);
  if (v19)
  {
    mlir::InFlightDiagnostic::report(&v19);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v26;
      v9 = __p;
      if (v26 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v26 = v7;
      operator delete(v9);
    }

    v10 = v23;
    if (v23)
    {
      v11 = v24;
      v12 = v23;
      if (v24 != v23)
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
        v12 = v23;
      }

      v24 = v10;
      operator delete(v12);
    }

    if (v21 != &v22)
    {
      free(v21);
    }
  }

  return v6;
}

uint64_t mlir::mps::PruningGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::PruningGradientOp::verify(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v17[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  mlir::FloatAttr::getValue(v17, &v19);
  v2 = llvm::APFloat::convertToFloat(&v19);
  v3 = v20[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v4) == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
    if (v2 < 0.0 || v2 > 1.0)
    {
      goto LABEL_6;
    }

    return 1;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v20);
  if (v2 >= 0.0 && v2 <= 1.0)
  {
    return 1;
  }

LABEL_6:
  v18 = 259;
  mlir::OpState::emitOpError(this, v17, &v19);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v19);
  if (v19)
  {
    mlir::InFlightDiagnostic::report(&v19);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v26;
      v9 = __p;
      if (v26 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v26 = v7;
      operator delete(v9);
    }

    v10 = v23;
    if (v23)
    {
      v11 = v24;
      v12 = v23;
      if (v24 != v23)
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
        v12 = v23;
      }

      v24 = v10;
      operator delete(v12);
    }

    if (v21 != &v22)
    {
      free(v21);
    }
  }

  return v6;
}

BOOL mlir::mps::CreateTextureTensorOp::verify(mlir::Operation **this)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_17;
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
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v14 = v8[1];
    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
LABEL_18:
  v47[0] = v3;
  v47[1] = v14;
  Shape = mlir::ShapedType::getShape(v47);
  if (!mlir::ShapedType::hasRank(v47))
  {
    return 1;
  }

  v16 = *(Shape + 24);
  if (v16 == 0x8000000000000000)
  {
    return 1;
  }

  v18 = *(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9) + 8);
  v46 = v18;
  v45 = v16;
  if (v18 > 9)
  {
    return 1;
  }

  v19 = 1 << v18;
  if ((v19 & 0x24C) == 0)
  {
    if ((v19 & 0x91) != 0)
    {
      if (v16 != 1)
      {
        v20 = "failed: expected a number of channels equal to 1 for pixel format {0}, but found {1}";
LABEL_47:
        v32 = v20;
        v33 = 84;
        v34 = &v41;
        v35 = 2;
        v36 = 1;
        v37 = &unk_286872098;
        v38 = &v46;
        v39 = &unk_28685E520;
        v40 = &v45;
        v41 = &v37;
        v42 = &v39;
        v44 = 263;
        v43[0] = &v32;
        mlir::OpState::emitOpError(this, v43, &v48);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
        if (v48)
        {
          v30 = result;
          mlir::InFlightDiagnostic::report(&v48);
          result = v30;
        }

        if (v57 == 1)
        {
          v31 = result;
          mlir::Diagnostic::~Diagnostic(&v49);
          return v31;
        }

        return result;
      }
    }

    else if (v16 != 2)
    {
      v20 = "failed: expected a number of channels equal to 2 for pixel format {0}, but found {1}";
      goto LABEL_47;
    }

    return 1;
  }

  if (v16 == 4)
  {
    return 1;
  }

  v32 = "failed: expected a number of channels equal to 4 for pixel format {0}, but found {1}";
  v33 = 84;
  v34 = &v41;
  v35 = 2;
  v36 = 1;
  v37 = &unk_286872098;
  v38 = &v46;
  v39 = &unk_28685E520;
  v40 = &v45;
  v41 = &v37;
  v42 = &v39;
  v44 = 263;
  v43[0] = &v32;
  mlir::OpState::emitOpError(this, v43, &v48);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
  v21 = result;
  if (v48)
  {
    mlir::InFlightDiagnostic::report(&v48);
    result = v21;
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
      result = v21;
    }

    v22 = __p;
    if (__p)
    {
      v23 = v55;
      v24 = __p;
      if (v55 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v55 = v22;
      operator delete(v24);
      result = v21;
    }

    v25 = v52;
    if (v52)
    {
      v26 = v53;
      v27 = v52;
      if (v53 != v52)
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
        v27 = v52;
      }

      v53 = v25;
      operator delete(v27);
      result = v21;
    }

    if (v50 != &v51)
    {
      free(v50);
      return v21;
    }
  }

  return result;
}

BOOL mlir::mps::QuantizeOp::verify(mlir::Operation **this)
{
  v46 = *MEMORY[0x277D85DE8];
  v35 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  if (*(*mlir::TypeAttr::getValue(&v35) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, &v35);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v43;
        v5 = __p;
        if (v43 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v43 = v3;
        operator delete(v5);
      }

      v6 = v40;
      if (!v40)
      {
        goto LABEL_55;
      }

      v7 = v41;
      v8 = v40;
      if (v41 == v40)
      {
LABEL_54:
        v41 = v6;
        operator delete(v8);
LABEL_55:
        if (v38 != &v39)
        {
          free(v38);
        }

        return v2;
      }

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
LABEL_53:
      v8 = v40;
      goto LABEL_54;
    }

    return v2;
  }

  v11 = *this;
  v34 = v11;
  v12 = *(*(v11 + 9) + 24);
  v28[0] = *(v11 + 10);
  if (v28[0])
  {
    mlir::IntegerAttr::getValue(v28, &v35);
    if (v36 > 0x40)
    {
      LODWORD(v13) = *v35;
      MEMORY[0x259C63150]();
    }

    else if (v36)
    {
      v13 = (v35 << -v36) >> -v36;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v14 = v13 | 0x100000000;
  }

  else
  {
    v14 = 0;
  }

  v32 = v14;
  v33 = BYTE4(v14);
  v31[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
  v31[1] = v15;
  if (!v31[0] || !mlir::ShapedType::hasRank(v31))
  {
    return 1;
  }

  v30 = 0;
  if ((v14 & 0x100000000) == 0)
  {
LABEL_29:
    v35 = &v32;
    v36 = &v34;
    v37 = &v30;
    v38 = v31;
    {
    }

    else
    {
      return 0;
    }
  }

  mlir::ShapedType::getShape(v31);
  if (v14 < 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 + v14;
  if ((v18 & 0x80000000) == 0)
  {
    v19 = v18 & 0x7FFFFFFF;
    mlir::ShapedType::getShape(v31);
    if (v19 <= v20)
    {
      v30 = *(mlir::ShapedType::getShape(v31) + 8 * v19);
      v11 = v34;
      goto LABEL_29;
    }
  }

  v29 = 259;
  mlir::OpState::emitOpError(&v34, v28, &v35);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
  if (v35)
  {
    mlir::InFlightDiagnostic::report(&v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v43;
      v23 = __p;
      if (v43 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v43 = v21;
      operator delete(v23);
    }

    v6 = v40;
    if (!v40)
    {
      goto LABEL_55;
    }

    v24 = v41;
    v8 = v40;
    if (v41 == v40)
    {
      goto LABEL_54;
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

    while (v24 != v6);
    goto LABEL_53;
  }

  return v2;
}

BOOL mlir::mps::DequantizeOp::verify(mlir::Operation **this)
{
  v62 = *MEMORY[0x277D85DE8];
  v51 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  v2 = *(*mlir::TypeAttr::getValue(&v51) + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v51);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    v28 = result;
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
      result = v28;
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
        result = v28;
      }

      v38 = __p;
      if (__p)
      {
        v39 = v59;
        v40 = __p;
        if (v59 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v59 = v38;
        operator delete(v40);
        result = v28;
      }

      v32 = v56;
      if (!v56)
      {
        goto LABEL_108;
      }

      v41 = v57;
      v34 = v56;
      if (v57 == v56)
      {
LABEL_107:
        v57 = v32;
        operator delete(v34);
        result = v28;
LABEL_108:
        if (v54 != &v55)
        {
          free(v54);
          return v28;
        }

        return result;
      }

      do
      {
        v43 = *--v41;
        v42 = v43;
        *v41 = 0;
        if (v43)
        {
          MEMORY[0x259C63150](v42, 0x1000C8077774924);
        }
      }

      while (v41 != v32);
LABEL_106:
      v34 = v56;
      goto LABEL_107;
    }

    return result;
  }

  v50 = *this;
  v19 = *(*(v50 + 9) + 24);
  v44[0] = *(v50 + 10);
  if (v44[0])
  {
    mlir::IntegerAttr::getValue(v44, &v51);
    if (v52 > 0x40)
    {
      LODWORD(v20) = *v51;
      MEMORY[0x259C63150]();
    }

    else if (v52)
    {
      v20 = (v51 << -v52) >> -v52;
    }

    else
    {
      LODWORD(v20) = 0;
    }

    v21 = v20 | 0x100000000;
  }

  else
  {
    v21 = 0;
  }

  v48 = v21;
  v49 = BYTE4(v21);
  v47[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
  v47[1] = v22;
  if (!v47[0] || !mlir::ShapedType::hasRank(v47))
  {
    return 1;
  }

  v46 = 0;
  if ((v21 & 0x100000000) == 0)
  {
LABEL_62:
    v51 = &v48;
    v52 = &v50;
    v53 = &v46;
    v54 = v47;
    {
    }

    else
    {
      return 0;
    }
  }

  mlir::ShapedType::getShape(v47);
  if (v21 < 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 + v21;
  if ((v25 & 0x80000000) == 0)
  {
    v26 = v25 & 0x7FFFFFFF;
    mlir::ShapedType::getShape(v47);
    if (v26 <= v27)
    {
      v46 = *(mlir::ShapedType::getShape(v47) + 8 * v26);
      goto LABEL_62;
    }
  }

  v45 = 259;
  mlir::OpState::emitOpError(&v50, v44, &v51);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  v28 = result;
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
    result = v28;
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
      result = v28;
    }

    v29 = __p;
    if (__p)
    {
      v30 = v59;
      v31 = __p;
      if (v59 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v59 = v29;
      operator delete(v31);
      result = v28;
    }

    v32 = v56;
    if (!v56)
    {
      goto LABEL_108;
    }

    v33 = v57;
    v34 = v56;
    if (v57 == v56)
    {
      goto LABEL_107;
    }

    do
    {
      v36 = *--v33;
      v35 = v36;
      *v33 = 0;
      if (v36)
      {
        MEMORY[0x259C63150](v35, 0x1000C8077774924);
      }
    }

    while (v33 != v32);
    goto LABEL_106;
  }

  return result;
}

void mlir::mps::DequantizeOp::downgradeToVersion(mlir::Operation **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v26 = &unk_28685B550;
  v27 = 1;
  v28 = 1;
  if (mlir::mps::DequantizeOp::hasNDParams(a1) && ((v7 = a2[2], v7 < v27) || v7 == v27 && ((v16 = a2[3], v16 < HIDWORD(v27)) || v16 == HIDWORD(v27) && a2[4] < v28)))
  {
    v19[0] = "failed to downgrade: requested target version is {0}, but ND Params in only supported from version {1}";
    v19[1] = 102;
    v19[2] = v23;
    v19[3] = 2;
    v20 = 1;
    v21[0] = &unk_28685E490;
    v21[1] = a2;
    v22[0] = &unk_28685E4C0;
    v22[1] = &v26;
    v23[0] = v21;
    v23[1] = v22;
    v25 = 263;
    v24 = v19;
    mlir::OpState::emitOpError(a1, &v24, v29);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v35;
        v10 = __p;
        if (v35 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v35 = v8;
        operator delete(v10);
      }

      v11 = v32;
      if (v32)
      {
        v12 = v33;
        v13 = v32;
        if (v33 != v32)
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
          v13 = v32;
        }

        v33 = v11;
        operator delete(v13);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }
  }

  else
  {
    v17 = *(v6 + 9);
    v18 = v6 - 16;
    if (!v17)
    {
      v18 = 0;
    }

    *a3 = v18;
    *(a3 + 8) = v17;
    *(a3 + 16) = 1;
  }
}

BOOL mlir::mps::DequantizeOp::hasNDParams(mlir::mps::DequantizeOp *this)
{
  v1 = *(*this + 72);
  v2 = v1[11];
  v3 = v1[15];
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v1[7] + 8) & 0xFFFFFFFFFFFFFFF8));
  v12 = v4;
  result = 1;
  if (!v11 || !mlir::ShapedType::hasRank(&v11) || (mlir::ShapedType::getShape(&v11), v5 <= 1))
  {
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v2 + 8) & 0xFFFFFFFFFFFFFFF8));
    v12 = v6;
    if (!v11 || !mlir::ShapedType::hasRank(&v11) || (mlir::ShapedType::getShape(&v11), v7 <= 1))
    {
      v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8));
      v12 = v8;
      if (!v11)
      {
        return 0;
      }

      if (!mlir::ShapedType::hasRank(&v11))
      {
        return 0;
      }

      mlir::ShapedType::getShape(&v11);
      if (v9 <= 1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::QuantizeOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0uLL;
  }

  v40 = a6;
  v41[0] = 0;
  v42 = 0;
  v43 = v14;
  v44 = a9;
  v45 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v40);
    if (v42 == 1)
    {
      v42 = 0;
    }

    mlir::OperationName::OperationName(v41, "mps.quantize", 12, Context);
    v42 = 1;
  }

  *&v46 = a4;
  *(&v46 + 1) = a5;
  if (!a5 || (v16 = mlir::UnknownLoc::get(this, a2), (mlir::mps::QuantizeOpAdaptor::verify(&v40, v16) & 1) == 0))
  {
    v29 = mlir::Float32Type::get(this, a2);
    v30 = mlir::UnrankedTensorType::get(v29);
    v31 = *(a11 + 8);
    if (v31 >= *(a11 + 12))
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v17 = *(&v43 + 1);
  v47 = v46;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v47, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = *v18;
  {
    mlir::mps::ConstantOp::verify();
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_25:
    v33 = 0;
    goto LABEL_26;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_13:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22] || *v23 != v20)
  {
    goto LABEL_25;
  }

  v33 = v23[1];
LABEL_26:
  v37[0] = v18;
  v37[1] = v33;
  v36 = v17;
  Value = mlir::TypeAttr::getValue(&v36);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(Value);
  LOBYTE(v38) = 0;
  v39 = 0;
  v30 = mlir::ShapedType::cloneWith(v37, &v38, ElementTypeOrSelf);
  v31 = *(a11 + 8);
  if (v31 >= *(a11 + 12))
  {
LABEL_27:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_21:
  *(*a11 + 8 * v31) = v30;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::QuantizeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *(a1 + 24);
    v22[0] = *(a1 + 32);
    mlir::TypeAttr::getValue(v22);
    if (!v3)
    {
      return 1;
    }

    v20[0] = v3;
    v22[0] = mlir::IntegerAttr::getType(v20);
    if (mlir::Type::isSignedInteger(v22, 32))
    {
      return 1;
    }

    v20[0] = "'mps.quantize' op attribute 'axis' failed to satisfy constraint: 32-bit signed integer attribute";
    v21 = 259;
    mlir::emitError(a2, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v28;
        v15 = __p;
        if (v28 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v28 = v13;
        operator delete(v15);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_39;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_38:
        v26 = v8;
        operator delete(v10);
LABEL_39:
        if (v23 != &v24)
        {
          free(v23);
        }

        return v4;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          MEMORY[0x259C63150](v17, 0x1000C8077774924);
        }
      }

      while (v16 != v8);
LABEL_37:
      v10 = v25;
      goto LABEL_38;
    }
  }

  else
  {
    v20[0] = "'mps.quantize' op requires attribute 'dtype'";
    v21 = 259;
    mlir::emitError(a2, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v28;
        v7 = __p;
        if (v28 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v28 = v5;
        operator delete(v7);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_39;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_38;
      }

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
      goto LABEL_37;
    }
  }

  return v4;
}

uint64_t mlir::mps::QuantizeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::DequantizeOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0uLL;
  }

  v40 = a6;
  v41[0] = 0;
  v42 = 0;
  v43 = v14;
  v44 = a9;
  v45 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v40);
    if (v42 == 1)
    {
      v42 = 0;
    }

    mlir::OperationName::OperationName(v41, "mps.dequantize", 14, Context);
    v42 = 1;
  }

  *&v46 = a4;
  *(&v46 + 1) = a5;
  if (!a5 || (v16 = mlir::UnknownLoc::get(this, a2), (mlir::mps::DequantizeOpAdaptor::verify(&v40, v16) & 1) == 0))
  {
    v29 = mlir::Float32Type::get(this, a2);
    v30 = mlir::UnrankedTensorType::get(v29);
    v31 = *(a11 + 8);
    if (v31 >= *(a11 + 12))
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v17 = *(&v43 + 1);
  v47 = v46;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v47, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = *v18;
  {
    mlir::mps::ConstantOp::verify();
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_25:
    v33 = 0;
    goto LABEL_26;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_13:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22] || *v23 != v20)
  {
    goto LABEL_25;
  }

  v33 = v23[1];
LABEL_26:
  v37[0] = v18;
  v37[1] = v33;
  v36 = v17;
  Value = mlir::TypeAttr::getValue(&v36);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(Value);
  LOBYTE(v38) = 0;
  v39 = 0;
  v30 = mlir::ShapedType::cloneWith(v37, &v38, ElementTypeOrSelf);
  v31 = *(a11 + 8);
  if (v31 >= *(a11 + 12))
  {
LABEL_27:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_21:
  *(*a11 + 8 * v31) = v30;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::DequantizeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *(a1 + 24);
    v22[0] = *(a1 + 32);
    mlir::TypeAttr::getValue(v22);
    if (!v3)
    {
      return 1;
    }

    v20[0] = v3;
    v22[0] = mlir::IntegerAttr::getType(v20);
    if (mlir::Type::isSignedInteger(v22, 32))
    {
      return 1;
    }

    v20[0] = "'mps.dequantize' op attribute 'axis' failed to satisfy constraint: 32-bit signed integer attribute";
    v21 = 259;
    mlir::emitError(a2, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v28;
        v15 = __p;
        if (v28 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v28 = v13;
        operator delete(v15);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_39;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_38:
        v26 = v8;
        operator delete(v10);
LABEL_39:
        if (v23 != &v24)
        {
          free(v23);
        }

        return v4;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          MEMORY[0x259C63150](v17, 0x1000C8077774924);
        }
      }

      while (v16 != v8);
LABEL_37:
      v10 = v25;
      goto LABEL_38;
    }
  }

  else
  {
    v20[0] = "'mps.dequantize' op requires attribute 'dtype'";
    v21 = 259;
    mlir::emitError(a2, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v28;
        v7 = __p;
        if (v28 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v28 = v5;
        operator delete(v7);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_39;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_38;
      }

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
      goto LABEL_37;
    }
  }

  return v4;
}

uint64_t mlir::mps::DequantizeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::DequantizeLUTOp::downgradeToVersion(mlir::Operation **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v53[0] = &unk_28685B550;
  v53[1] = 0x100000001;
  v54 = 0;
  v7 = a2[2];
  if (v7 && (v7 != 1 || a2[3]))
  {
    v37 = &unk_28685B550;
    v38 = 0x300000001;
    v39 = 1;
    v55[0] = mlir::getElementTypeOrSelf(*(*(v6 + 9) + 24));
    if (mlir::Type::isUnsignedInteger(v55, 6) && ((v8 = a2[2], v8 < v38) || v8 == v38 && ((v23 = a2[3], v23 < HIDWORD(v38)) || v23 == HIDWORD(v38) && a2[4] < v39)))
    {
      v40 = "failed to downgrade: requested target version is {0}, but 6-bit palettization is only supported from version {1}";
      v41 = 112;
      v42 = &v49;
      v43 = 2;
      v44 = 1;
      v45 = &unk_28685E490;
      v46 = a2;
      v47 = &unk_28685E4C0;
      v48 = &v37;
      v49 = &v45;
      v50 = &v47;
      v52 = 263;
      v51[0] = &v40;
      mlir::OpState::emitOpError(a1, v51, v55);
      *a3 = 0;
      *(a3 + 16) = 0;
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v9 = __p;
        if (__p)
        {
          v10 = v61;
          v11 = __p;
          if (v61 != __p)
          {
            do
            {
              v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
            }

            while (v10 != v9);
            v11 = __p;
          }

          v61 = v9;
          operator delete(v11);
        }

        v12 = v58;
        if (!v58)
        {
          goto LABEL_62;
        }

        v13 = v59;
        v14 = v58;
        if (v59 == v58)
        {
          goto LABEL_61;
        }

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
        goto LABEL_60;
      }
    }

    else
    {
      v34 = &unk_28685B550;
      v35 = 0x300000001;
      v36 = 3;
      v55[0] = mlir::getElementTypeOrSelf(*(*(*a1 + 9) + 24));
      if (!mlir::Type::isUnsignedInteger(v55, 3) || (v24 = a2[2], v24 >= v35) && (v24 != v35 || (v31 = a2[3], v31 >= HIDWORD(v35)) && (v31 != HIDWORD(v35) || a2[4] >= v36)))
      {
        v32 = *(v6 + 9);
        v33 = v6 - 16;
        if (!v32)
        {
          v33 = 0;
        }

        *a3 = v33;
        *(a3 + 8) = v32;
        *(a3 + 16) = 1;
        return;
      }

      v40 = "failed to downgrade: requested target version is {0}, but 3-bit palettization is only supported from version {1}";
      v41 = 112;
      v42 = &v49;
      v43 = 2;
      v44 = 1;
      v45 = &unk_28685E490;
      v46 = a2;
      v47 = &unk_28685E4C0;
      v48 = &v34;
      v49 = &v45;
      v50 = &v47;
      v52 = 263;
      v51[0] = &v40;
      mlir::OpState::emitOpError(a1, v51, v55);
      *a3 = 0;
      *(a3 + 16) = 0;
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v61;
          v27 = __p;
          if (v61 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v61 = v25;
          operator delete(v27);
        }

        v12 = v58;
        if (!v58)
        {
          goto LABEL_62;
        }

        v28 = v59;
        v14 = v58;
        if (v59 == v58)
        {
LABEL_61:
          v59 = v12;
          operator delete(v14);
LABEL_62:
          if (v56 != &v57)
          {
            free(v56);
          }

          return;
        }

        do
        {
          v30 = *--v28;
          v29 = v30;
          *v28 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v28 != v12);
LABEL_60:
        v14 = v58;
        goto LABEL_61;
      }
    }
  }

  else
  {
    v40 = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v41 = 97;
    v42 = &v49;
    v43 = 2;
    v44 = 1;
    v45 = &unk_28685E490;
    v46 = a2;
    v47 = &unk_28685E4C0;
    v48 = v53;
    v49 = &v45;
    v50 = &v47;
    v52 = 263;
    v51[0] = &v40;
    mlir::OpState::emitOpError(a1, v51, v55);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v61;
        v19 = __p;
        if (v61 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v61 = v17;
        operator delete(v19);
      }

      v12 = v58;
      if (!v58)
      {
        goto LABEL_62;
      }

      v20 = v59;
      v14 = v58;
      if (v59 == v58)
      {
        goto LABEL_61;
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

      while (v20 != v12);
      goto LABEL_60;
    }
  }
}

uint64_t mlir::mps::DequantizeLUTOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = *MEMORY[0x277D85DE8];
  v75 = a4;
  v76 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v67 = a6;
  v68[0] = 0;
  v69 = 0;
  v70 = v16;
  v71 = a9;
  v17 = a5;
  v72 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v67);
    if (v69 == 1)
    {
      v69 = 0;
    }

    mlir::OperationName::OperationName(v68, "mps.dequantize_lut", 18, Context);
    v69 = 1;
    v17 = v76;
  }

  v73 = a4;
  v74 = a5;
  if (v17 < 2 || (v19 = mlir::UnknownLoc::get(this, a2), (mlir::mps::DequantizeLUTOpAdaptor::verify(&v67, v19) & 1) == 0))
  {
    v31 = mlir::Float32Type::get(this, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      goto LABEL_58;
    }

LABEL_21:
    *(*a11 + 8 * v33) = v32;
    ++*(a11 + 8);
    return 1;
  }

  v20 = (*(mlir::ValueRange::dereference_iterator(&v75, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = *v20;
  {
    mlir::mps::ConstantOp::verify();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_26:
    v35 = 0;
    goto LABEL_27;
  }

  v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_13:
  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
    goto LABEL_26;
  }

  v35 = v25[1];
LABEL_27:
  v64[0] = v20;
  v64[1] = v35;
  v36 = (*(mlir::ValueRange::dereference_iterator(&v75, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v36)
  {
    v37 = *v36;
    {
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_41;
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
        goto LABEL_41;
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
      v47 = v41[1];
      goto LABEL_42;
    }
  }

LABEL_41:
  v47 = 0;
LABEL_42:
  v63[0] = v36;
  v63[1] = v47;
  ElementType = mlir::ShapedType::getElementType(v63);
  if ((mlir::ShapedType::hasRank(v63) & 1) == 0)
  {
    goto LABEL_57;
  }

  mlir::ShapedType::getShape(v63);
  if (v49 == 1 || !v70 || (v50 = *(mlir::ShapedType::getShape(v63) + 8 * (v49 - 1)), v50 == 1))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ElementType);
    LOBYTE(v65) = 0;
    v66 = 0;
    v32 = mlir::ShapedType::cloneWith(v64, &v65, ElementTypeOrSelf);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
LABEL_58:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    goto LABEL_21;
  }

  if (!mlir::ShapedType::hasRank(v64) || !v70)
  {
LABEL_57:
    v32 = mlir::UnrankedTensorType::get(ElementType);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      goto LABEL_58;
    }

    goto LABEL_21;
  }

  Axis = mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::getAxis(&v67);
  mlir::ShapedType::getShape(v64);
  if (v55)
  {
    v56 = PositiveAxis;
    Shape = mlir::ShapedType::getShape(v64);
    llvm::SmallVector<long long,5u>::SmallVector(&v65, Shape, v58);
    v59 = mlir::ShapedType::getShape(v64);
    v60 = 0x8000000000000000;
    v61 = v65;
    if (v50 != 0x8000000000000000 && *(v59 + 8 * v56) != 0x8000000000000000)
    {
      v60 = *(v65 + 8 * v56) * v50;
    }

    *(v65 + 8 * v56) = v60;
    v62 = mlir::RankedTensorType::get(v61, DWORD2(v65), ElementType, 0);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v62);
    if (v65 != &v66)
    {
      free(v65);
    }

    return 1;
  }

  return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, ElementType);
}

uint64_t mlir::mps::DequantizeLUTOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    return 1;
  }

  v13[0] = *(a1 + 24);
  v15[0] = mlir::IntegerAttr::getType(v13);
  if (mlir::Type::isSignedInteger(v15, 32))
  {
    return 1;
  }

  v13[0] = "'mps.dequantize_lut' op attribute 'axis' failed to satisfy constraint: 32-bit signed integer attribute";
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

unint64_t mlir::mps::anonymous namespace::tryGetPositiveAxis(uint64_t a1, uint64_t a2, uint64_t a3, char a4, mlir::Operation *a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v39 = a1;
  v5 = -a2;
  if (-a2 > a1 || a2 <= a1)
  {
    if (a5)
    {
      v37[0] = "invalid axis ";
      v38 = 259;
      mlir::Operation::emitOpError(v42, a5, v37);
      if (v42[0])
      {
        LODWORD(v40) = 2;
        *(&v40 + 1) = a1;
        if (v44 >= v45)
        {
          if (v43 > &v40 || v43 + 24 * v44 <= &v40)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v43 + 24 * v44;
        v10 = v40;
        *(v9 + 2) = v41;
        *v9 = v10;
        v11 = ++v44;
        if (v42[0])
        {
          LODWORD(v40) = 3;
          *(&v40 + 1) = " is outside of the range [";
          v41 = 26;
          if (v11 >= v45)
          {
            if (v43 > &v40 || v43 + 24 * v11 <= &v40)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v43 + 24 * v44;
          v13 = v40;
          *(v12 + 2) = v41;
          *v12 = v13;
          v14 = ++v44;
          if (v42[0])
          {
            LODWORD(v40) = 2;
            *(&v40 + 1) = v5;
            if (v14 >= v45)
            {
              if (v43 > &v40 || v43 + 24 * v14 <= &v40)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v15 = v43 + 24 * v44;
            v16 = v40;
            *(v15 + 2) = v41;
            *v15 = v16;
            v17 = ++v44;
            if (v42[0])
            {
              LODWORD(v40) = 3;
              *(&v40 + 1) = ", ";
              v41 = 2;
              if (v17 >= v45)
              {
                if (v43 > &v40 || v43 + 24 * v17 <= &v40)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v18 = v43 + 24 * v44;
              v19 = v40;
              *(v18 + 2) = v41;
              *v18 = v19;
              v20 = ++v44;
              if (v42[0])
              {
                LODWORD(v40) = 2;
                *(&v40 + 1) = a2 - 1;
                if (v20 >= v45)
                {
                  if (v43 > &v40 || v43 + 24 * v20 <= &v40)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v21 = v43 + 24 * v44;
                v22 = v40;
                *(v21 + 2) = v41;
                *v21 = v22;
                v23 = ++v44;
                if (v42[0])
                {
                  LODWORD(v40) = 3;
                  *(&v40 + 1) = "].";
                  v41 = 2;
                  if (v23 >= v45)
                  {
                    if (v43 > &v40 || v43 + 24 * v23 <= &v40)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v24 = v43 + 24 * v44;
                  v25 = v40;
                  *(v24 + 2) = v41;
                  *v24 = v25;
                  ++v44;
                  if (v42[0])
                  {
                    mlir::InFlightDiagnostic::report(v42);
                  }
                }
              }
            }
          }
        }
      }

      if (v52 == 1)
      {
        if (v51 != &v52)
        {
          free(v51);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v50;
          v28 = __p;
          if (v50 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v50 = v26;
          operator delete(v28);
        }

        v29 = v47;
        if (v47)
        {
          v30 = v48;
          v31 = v47;
          if (v48 != v47)
          {
            do
            {
              v33 = *--v30;
              v32 = v33;
              *v30 = 0;
              if (v33)
              {
                MEMORY[0x259C63150](v32, 0x1000C8077774924);
              }
            }

            while (v30 != v29);
            v31 = v47;
          }

          v48 = v29;
          operator delete(v31);
        }

        if (v43 != &v46)
        {
          free(v43);
        }
      }
    }

    else
    {
      v42[0] = -a2;
      v37[0] = (a2 - 1);
      mlir::emitOptionalError<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(a3, a4, "invalid axis ", &v39, " is outside of the range [", v42, ", ", v37, "]");
    }

    v35 = 0;
    v34 = 0;
  }

  else
  {
    v34 = ((a2 & (a1 >> 63)) + a1) & 0xFFFFFFFFFFFFFF00;
    v35 = ((a2 & (a1 >> 63)) + a1);
  }

  return v34 | v35;
}

uint64_t mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::getAxis(mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase *this)
{
  v6 = *(this + 3);
  if (!v6)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v6, &v4);
  if (v5 > 0x40)
  {
    v3 = *v4;
    MEMORY[0x259C63150]();
    return v3 | 0x100000000;
  }

  else
  {
    if (v5)
    {
      v1 = (v4 << -v5) >> -v5;
    }

    else
    {
      LODWORD(v1) = 0;
    }

    return v1 | 0x100000000;
  }
}

uint64_t mlir::mps::DequantizeLUTOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::verifyDequantLUT(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v121 = *MEMORY[0x277D85DE8];
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = *v6;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v102 = a3;
      mlir::TensorType::operator mlir::ShapedType();
      a3 = v102;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v28 = v11[1];
      v106 = v6;
      v107 = v28;
      v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v106 = v6;
  v107 = 0;
  v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_15:
  v18 = *v17;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_29:
    v29 = 0;
    goto LABEL_30;
  }

  v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  if (!v21)
  {
    goto LABEL_29;
  }

LABEL_17:
  v22 = v20;
  v23 = v21;
  do
  {
    v24 = v23 >> 1;
    v25 = &v22[2 * (v23 >> 1)];
    v27 = *v25;
    v26 = v25 + 2;
    v23 += ~(v23 >> 1);
    if (v27 < v19)
    {
      v22 = v26;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
  if (v22 == &v20[2 * v21] || *v22 != v19)
  {
    goto LABEL_29;
  }

  v29 = v22[1];
LABEL_30:
  v105[0] = v17;
  v105[1] = v29;
  v110[0] = mlir::ShapedType::getElementType(&v106);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v110);
  if (!mlir::ShapedType::hasRank(v105))
  {
    return 1;
  }

  mlir::ShapedType::getShape(v105);
  if (v31 == 1)
  {
    if ((a4 & 0x100000000) != 0)
    {
      v32 = 1;
      goto LABEL_41;
    }

LABEL_35:
    v33 = v31 - 1;
    Shape = mlir::ShapedType::getShape(v105);
    v35 = 0;
    v32 = 1;
    v36 = *(Shape + 8 * v33);
    if (v36 == 0x8000000000000000)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if ((a4 & 0x100000000) == 0)
  {
    goto LABEL_35;
  }

  v37 = v31;
  v32 = *(mlir::ShapedType::getShape(v105) + 8 * (v31 - 1));
  if (v37 < 3)
  {
LABEL_41:
    v39 = mlir::ShapedType::getShape(v105);
    v35 = 1;
    v36 = *v39;
    if (*v39 == 0x8000000000000000)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v38 = mlir::ShapedType::getShape(v105);
  v35 = 1;
  v36 = *(v38 + 8 * (v37 - 2));
  if (v36 == 0x8000000000000000)
  {
    goto LABEL_44;
  }

LABEL_42:
  if ((v36 ^ (v36 - 1)) <= v36 - 1)
  {
    v104 = 257;
    mlir::Operation::emitOpError(v110, a1, v103);
    if (v110[0])
    {
      LODWORD(v108) = 3;
      v109 = 10;
      if (v112 >= v113)
      {
        if (v111 > &v108 || v111 + 24 * v112 <= &v108)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v57 = v111 + 24 * v112;
      v58 = v108;
      *(v57 + 2) = v109;
      *v57 = v58;
      v59 = ++v112;
      if (v110[0])
      {
        LODWORD(v108) = 2;
        *(&v108 + 1) = v36;
        if (v59 >= v113)
        {
          if (v111 > &v108 || v111 + 24 * v59 <= &v108)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v60 = v111 + 24 * v112;
        v61 = v108;
        *(v60 + 2) = v109;
        *v60 = v61;
        v62 = ++v112;
        if (v110[0])
        {
          LODWORD(v108) = 3;
          v109 = 22;
          if (v62 >= v113)
          {
            if (v111 > &v108 || v111 + 24 * v62 <= &v108)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v63 = v111 + 24 * v112;
          v64 = v108;
          *(v63 + 2) = v109;
          *v63 = v64;
          ++v112;
        }
      }
    }

    v47 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v110);
    if (v110[0])
    {
      mlir::InFlightDiagnostic::report(v110);
    }

    if (v120 == 1)
    {
      if (v119 != &v120)
      {
        free(v119);
      }

      v65 = __p;
      if (__p)
      {
        v66 = v118;
        v67 = __p;
        if (v118 != __p)
        {
          do
          {
            v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
          }

          while (v66 != v65);
          v67 = __p;
        }

        v118 = v65;
        operator delete(v67);
      }

      v51 = v115;
      if (!v115)
      {
        goto LABEL_142;
      }

      v68 = v116;
      v53 = v115;
      if (v116 == v115)
      {
        goto LABEL_141;
      }

      do
      {
        v70 = *--v68;
        v69 = v70;
        *v68 = 0;
        if (v70)
        {
          MEMORY[0x259C63150](v69, 0x1000C8077774924);
        }
      }

      while (v68 != v51);
      goto LABEL_140;
    }

    return v47;
  }

  v40 = IntOrFloatBitWidth;
  v41 = 1 << IntOrFloatBitWidth;
  if (v36 != v41)
  {
    v104 = 257;
    mlir::Operation::emitOpError(v110, a1, v103);
    if (v110[0])
    {
      LODWORD(v108) = 3;
      v109 = 10;
      if (v112 >= v113)
      {
        if (v111 > &v108 || v111 + 24 * v112 <= &v108)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v79 = v111 + 24 * v112;
      v80 = v108;
      *(v79 + 2) = v109;
      *v79 = v80;
      v81 = ++v112;
      if (v110[0])
      {
        LODWORD(v108) = 2;
        *(&v108 + 1) = v36;
        if (v81 >= v113)
        {
          if (v111 > &v108 || v111 + 24 * v81 <= &v108)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v82 = v111 + 24 * v112;
        v83 = v108;
        *(v82 + 2) = v109;
        *v82 = v83;
        v84 = ++v112;
        if (v110[0])
        {
          LODWORD(v108) = 3;
          v109 = 41;
          if (v84 >= v113)
          {
            if (v111 > &v108 || v111 + 24 * v84 <= &v108)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v85 = v111 + 24 * v112;
          v86 = v108;
          *(v85 + 2) = v109;
          *v85 = v86;
          v87 = ++v112;
          if (v110[0])
          {
            LODWORD(v108) = 2;
            *(&v108 + 1) = v40;
            if (v87 >= v113)
            {
              if (v111 > &v108 || v111 + 24 * v87 <= &v108)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v88 = v111 + 24 * v112;
            v89 = v108;
            *(v88 + 2) = v109;
            *v88 = v89;
            v90 = ++v112;
            if (v110[0])
            {
              LODWORD(v108) = 3;
              *(&v108 + 1) = "=";
              v109 = 1;
              if (v90 >= v113)
              {
                if (v111 > &v108 || v111 + 24 * v90 <= &v108)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v91 = v111 + 24 * v112;
              v92 = v108;
              *(v91 + 2) = v109;
              *v91 = v92;
              v93 = ++v112;
              if (v110[0])
              {
                LODWORD(v108) = 2;
                *(&v108 + 1) = v41;
                if (v93 >= v113)
                {
                  if (v111 > &v108 || v111 + 24 * v93 <= &v108)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v94 = v111 + 24 * v112;
                v95 = v108;
                *(v94 + 2) = v109;
                *v94 = v95;
                ++v112;
              }
            }
          }
        }
      }
    }

    v47 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v110);
    if (v110[0])
    {
      mlir::InFlightDiagnostic::report(v110);
    }

    if (v120 == 1)
    {
      if (v119 != &v120)
      {
        free(v119);
      }

      v96 = __p;
      if (__p)
      {
        v97 = v118;
        v98 = __p;
        if (v118 != __p)
        {
          do
          {
            v97 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v97 - 1);
          }

          while (v97 != v96);
          v98 = __p;
        }

        v118 = v96;
        operator delete(v98);
      }

      v51 = v115;
      if (!v115)
      {
        goto LABEL_142;
      }

      v99 = v116;
      v53 = v115;
      if (v116 == v115)
      {
        goto LABEL_141;
      }

      do
      {
        v101 = *--v99;
        v100 = v101;
        *v99 = 0;
        if (v101)
        {
          MEMORY[0x259C63150](v100, 0x1000C8077774924);
        }
      }

      while (v99 != v51);
      goto LABEL_140;
    }

    return v47;
  }

LABEL_44:
  if (v35)
  {
    mlir::ShapedType::getShape(&v106);
    v43 = (v42 & (a4 >> 63)) + a4;
    if (v43 < 0 || (mlir::ShapedType::getShape(&v106), v43 >= v44))
    {
      v104 = 257;
      mlir::Operation::emitOpError(v110, a1, v103);
      if (v110[0])
      {
        LODWORD(v108) = 3;
        *(&v108 + 1) = "axis value is not compatible with input rank";
        v109 = 44;
        if (v112 >= v113)
        {
          if (v111 > &v108 || v111 + 24 * v112 <= &v108)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v111 + 24 * v112;
        v46 = v108;
        *(v45 + 2) = v109;
        *v45 = v46;
        ++v112;
      }

      v47 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v110);
      if (v110[0])
      {
        mlir::InFlightDiagnostic::report(v110);
      }

      if (v120 == 1)
      {
        if (v119 != &v120)
        {
          free(v119);
        }

        v48 = __p;
        if (__p)
        {
          v49 = v118;
          v50 = __p;
          if (v118 != __p)
          {
            do
            {
              v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
            }

            while (v49 != v48);
            v50 = __p;
          }

          v118 = v48;
          operator delete(v50);
        }

        v51 = v115;
        if (!v115)
        {
          goto LABEL_142;
        }

        v52 = v116;
        v53 = v115;
        if (v116 == v115)
        {
LABEL_141:
          v116 = v51;
          operator delete(v53);
LABEL_142:
          if (v111 != &v114)
          {
            free(v111);
          }

          return v47;
        }

        do
        {
          v55 = *--v52;
          v54 = v55;
          *v52 = 0;
          if (v55)
          {
            MEMORY[0x259C63150](v54, 0x1000C8077774924);
          }
        }

        while (v52 != v51);
LABEL_140:
        v53 = v115;
        goto LABEL_141;
      }

      return v47;
    }

    return 1;
  }

  if (v32 < 2)
  {
    return 1;
  }

  v104 = 257;
  mlir::Operation::emitOpError(v110, a1, v103);
  if (v110[0])
  {
    LODWORD(v108) = 3;
    *(&v108 + 1) = "axis must be defined when LUT Vector size > 1";
    v109 = 45;
    if (v112 >= v113)
    {
      if (v111 > &v108 || v111 + 24 * v112 <= &v108)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v71 = v111 + 24 * v112;
    v72 = v108;
    *(v71 + 2) = v109;
    *v71 = v72;
    ++v112;
  }

  v47 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v110);
  if (v110[0])
  {
    mlir::InFlightDiagnostic::report(v110);
  }

  if (v120 == 1)
  {
    if (v119 != &v120)
    {
      free(v119);
    }

    v73 = __p;
    if (__p)
    {
      v74 = v118;
      v75 = __p;
      if (v118 != __p)
      {
        do
        {
          v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
        }

        while (v74 != v73);
        v75 = __p;
      }

      v118 = v73;
      operator delete(v75);
    }

    v51 = v115;
    if (!v115)
    {
      goto LABEL_142;
    }

    v76 = v116;
    v53 = v115;
    if (v116 == v115)
    {
      goto LABEL_141;
    }

    do
    {
      v78 = *--v76;
      v77 = v78;
      *v76 = 0;
      if (v78)
      {
        MEMORY[0x259C63150](v77, 0x1000C8077774924);
      }
    }

    while (v76 != v51);
    goto LABEL_140;
  }

  return v47;
}

uint64_t mlir::mps::DequantizeLUTOp::verify(mlir::Operation **this)
{
  v1 = *this;
  v2 = *(*this + 9);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v10 = *(*this + 10);
  if (v10)
  {
    mlir::IntegerAttr::getValue(&v10, &v8);
    if (v9 > 0x40)
    {
      LODWORD(v5) = *v8;
      MEMORY[0x259C63150]();
    }

    else if (v9)
    {
      v5 = (v8 << -v9) >> -v9;
    }

    else
    {
      LODWORD(v5) = 0;
    }

    v6 = v5 | 0x100000000;
  }

  else
  {
    v6 = 0;
  }

  return mlir::mps::verifyDequantLUT(v1, v3, v4, v6);
}

uint64_t mlir::mps::DequantizeLUTOp::getAxis(mlir::mps::DequantizeLUTOp *this)
{
  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v6, &v4);
  if (v5 > 0x40)
  {
    v3 = *v4;
    MEMORY[0x259C63150]();
    return v3 | 0x100000000;
  }

  else
  {
    if (v5)
    {
      v1 = (v4 << -v5) >> -v5;
    }

    else
    {
      LODWORD(v1) = 0;
    }

    return v1 | 0x100000000;
  }
}

BOOL mlir::mps::UnrealizedFoldOp::verify(mlir::Operation **this)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v17, &v14, 1uLL);
  v13 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v15, &v13, 1uLL);
  v26[0] = &unk_28687F130;
  v27 = v26;
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if (v2)
    {
      return 1;
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    if (v2)
    {
      return 1;
    }
  }

  v15[0] = "failed: the input type must be more specialized than the result type";
  v16 = 259;
  mlir::OpState::emitOpError(this, v15, v17);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v23;
      v6 = __p;
      if (v23 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v23 = v4;
      operator delete(v6);
    }

    v7 = v20;
    if (v20)
    {
      v8 = v21;
      v9 = v20;
      if (v21 != v20)
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
        v9 = v20;
      }

      v21 = v7;
      operator delete(v9);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v3;
}

uint64_t mlir::mps::anonymous namespace::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 != a4)
  {
    return 0;
  }

  v17[0] = &unk_2868720E0;
  v17[1] = a5;
  v18 = v17;
  if (a2)
  {
    v7 = 0;
    v8 = a2 - 1;
    do
    {
      v9 = mlir::TypeRange::dereference_iterator(a1, v7);
      v15 = mlir::TypeRange::dereference_iterator(a3, v7);
      v16 = v9;
      if (!v18)
      {
        v14 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::mps::TypeConstraintOp::verify(v14);
      }

      result = (*(*v18 + 48))(v18, &v16, &v15);
      if (result)
      {
        v11 = v8 == v7;
      }

      else
      {
        v11 = 1;
      }

      ++v7;
    }

    while (!v11);
    v12 = v18;
    if (v18 == v17)
    {
      v13 = result;
      goto LABEL_17;
    }

    if (!v18)
    {
      return result;
    }

    v13 = result;
    (*(*v18 + 40))(v18);
  }

  else
  {
    v13 = 1;
    v12 = v17;
LABEL_17:
    (*(*v12 + 32))(v12);
  }

  return v13;
}

BOOL mlir::mps::TypeConstraintOp::verify(mlir::Operation **this)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v17, &v14, 1uLL);
  v15[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Value = mlir::TypeAttr::getValue(v15);
  mlir::TypeRange::TypeRange(v15, &Value, 1uLL);
  v26[0] = &unk_28687F1B0;
  v27 = v26;
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if (v2)
    {
      return 1;
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    if (v2)
    {
      return 1;
    }
  }

  v15[0] = "the type constraint cannot be satisfied";
  v16 = 259;
  mlir::OpState::emitOpError(this, v15, v17);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v23;
      v6 = __p;
      if (v23 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v23 = v4;
      operator delete(v6);
    }

    v7 = v20;
    if (v20)
    {
      v8 = v21;
      v9 = v20;
      if (v21 != v20)
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
        v9 = v20;
      }

      v21 = v7;
      operator delete(v9);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v3;
}

uint64_t mlir::mps::anonymous namespace::areCompatibleTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = *(a5 + 24);
  if (v10)
  {
    if (v10 == a5)
    {
      v18 = v17;
      (*(*v10 + 24))(v10, v17);
    }

    else
    {
      v18 = (*(*v10 + 16))(v10);
    }
  }

  else
  {
    v18 = 0;
  }

  {
    v11 = 1;
    v12 = v18;
    if (v18 == v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = *(a5 + 24);
    if (v13)
    {
      if (v13 == a5)
      {
        v16 = v15;
        (*(*v13 + 24))(v13, v15);
      }

      else
      {
        v16 = (*(*v13 + 16))(v13);
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15)
    {
      (*(*v16 + 32))(v16);
      v12 = v18;
      if (v18 == v17)
      {
LABEL_21:
        (*(*v12 + 32))(v12);
        return v11;
      }
    }

    else
    {
      if (v16)
      {
        (*(*v16 + 40))();
      }

      v12 = v18;
      if (v18 == v17)
      {
        goto LABEL_21;
      }
    }
  }

  if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  return v11;
}

uint64_t mlir::mps::TypeConstraintOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v30 = a6;
  v31[0] = 0;
  v32 = 0;
  v33 = v14;
  v34 = a9;
  v35 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(v31, "mps.type_constraint", 19, Context);
    v32 = 1;
  }

  v36 = a4;
  v37 = a5;
  v16 = mlir::UnknownLoc::get(this, a2);
  if (mlir::mps::TypeConstraintOpAdaptor::verify(&v30, v16))
  {
    v38 = v36;
    v39 = 0;
    v26 = *(mlir::ValueRange::dereference_iterator(&v38, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v38 = v33;
    Value = mlir::TypeAttr::getValue(&v38);
    mlir::TypeRange::TypeRange(&v38, &v26, 1uLL);
    mlir::TypeRange::TypeRange(v29, &Value, 1uLL);
    v27[0] = &unk_28687F130;
    v28 = v27;
    {
      p_Value = &v26;
    }

    else
    {
      p_Value = &Value;
    }

    v19 = *p_Value;
    v20 = *(a11 + 8);
    if (v20 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v20) = v19;
    ++*(a11 + 8);
    if (v28 == v27)
    {
      (*(*v28 + 32))(v28);
    }

    else if (v28)
    {
      (*(*v28 + 40))();
    }
  }

  else
  {
    v21 = mlir::Float32Type::get(this, v17);
    v22 = mlir::UnrankedTensorType::get(v21);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
  }

  return 1;
}

uint64_t mlir::mps::TypeConstraintOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v14[0] = *(a1 + 24);
    mlir::TypeAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.type_constraint' op requires attribute 'type_constraint'";
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
  }

  return v2;
}

uint64_t mlir::mps::TypeConstraintOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::Conv2DDataGradientOp::isValidMixedPrecision(mlir::Operation **this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v10, &v7, 1uLL);
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = v5;
  v8[1] = v6;
  mlir::TypeRange::TypeRange(v9, v8, 2uLL);
  mlir::mps::mixed_precision::defaultMixedPrecisionCheck(v2, v10[0], v10[1], v9[0], v9[1], 0, 1);
}

void mlir::mps::Conv2DWeightsGradientOp::isValidMixedPrecision(mlir::Operation **this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v10, &v7, 1uLL);
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = v5;
  v8[1] = v6;
  mlir::TypeRange::TypeRange(v9, v8, 2uLL);
  mlir::mps::mixed_precision::defaultMixedPrecisionCheck(v2, v10[0], v10[1], v9[0], v9[1], 0, 1);
}

void mlir::mps::Conv3DDataGradientOp::isValidMixedPrecision(mlir::Operation **this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v10, &v7, 1uLL);
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = v5;
  v8[1] = v6;
  mlir::TypeRange::TypeRange(v9, v8, 2uLL);
  mlir::mps::mixed_precision::defaultMixedPrecisionCheck(v2, v10[0], v10[1], v9[0], v9[1], 0, 1);
}

void mlir::mps::Conv3DWeightsGradientOp::isValidMixedPrecision(mlir::Operation **this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v10, &v7, 1uLL);
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = v5;
  v8[1] = v6;
  mlir::TypeRange::TypeRange(v9, v8, 2uLL);
  mlir::mps::mixed_precision::defaultMixedPrecisionCheck(v2, v10[0], v10[1], v9[0], v9[1], 0, 1);
}

void mlir::mps::DepthwiseConv2DDataGradientOp::isValidMixedPrecision(mlir::Operation **this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v10, &v7, 1uLL);
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = v5;
  v8[1] = v6;
  mlir::TypeRange::TypeRange(v9, v8, 2uLL);
  mlir::mps::mixed_precision::defaultMixedPrecisionCheck(v2, v10[0], v10[1], v9[0], v9[1], 1, 1);
}

void mlir::mps::DepthwiseConv2DWeightsGradientOp::isValidMixedPrecision(mlir::Operation **this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v10, &v7, 1uLL);
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = v5;
  v8[1] = v6;
  mlir::TypeRange::TypeRange(v9, v8, 2uLL);
  mlir::mps::mixed_precision::defaultMixedPrecisionCheck(v2, v10[0], v10[1], v9[0], v9[1], 1, 1);
}

void mlir::mps::DepthwiseConv3DDataGradientOp::isValidMixedPrecision(mlir::Operation **this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v10, &v7, 1uLL);
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = v5;
  v8[1] = v6;
  mlir::TypeRange::TypeRange(v9, v8, 2uLL);
  mlir::mps::mixed_precision::defaultMixedPrecisionCheck(v2, v10[0], v10[1], v9[0], v9[1], 1, 1);
}

void mlir::mps::DepthwiseConv3DWeightsGradientOp::isValidMixedPrecision(mlir::Operation **this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v10, &v7, 1uLL);
  v4 = *(*this + 9);
  v5 = *(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = v5;
  v8[1] = v6;
  mlir::TypeRange::TypeRange(v9, v8, 2uLL);
  mlir::mps::mixed_precision::defaultMixedPrecisionCheck(v2, v10[0], v10[1], v9[0], v9[1], 1, 1);
}

uint64_t mlir::mps::CreateComplexOp::inferReturnTypes(mlir::Float32Type *a1, uint64_t a2, uint64_t a3, mlir::MLIRContext *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v46 = v48;
  v47 = 0x100000000;
  {
    goto LABEL_15;
  }

  v13 = **v46;
  {
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v41 = v13;
    mlir::mps::ConstantOp::verify();
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v41 + 8);
    v16 = *(v41 + 16);
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  v17 = v15;
  v18 = v16;
  do
  {
    v19 = v18 >> 1;
    v20 = &v17[2 * (v18 >> 1)];
    v22 = *v20;
    v21 = v20 + 2;
    v18 += ~(v18 >> 1);
    if (v22 < v14)
    {
      v17 = v21;
    }

    else
    {
      v18 = v19;
    }
  }

  while (v18);
  if (v17 == &v15[2 * v16] || *v17 != v14 || !v17[1])
  {
LABEL_15:
    v23 = mlir::Float32Type::get(a1, v12);
    v24 = mlir::UnrankedTensorType::get(v23);
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  v27 = *v46;
  if (!*v46)
  {
LABEL_33:
    v38 = 0;
    goto LABEL_34;
  }

  v28 = *v27;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (v31)
    {
      goto LABEL_23;
    }

LABEL_30:
    v31 = 0;
    v32 = v30;
    goto LABEL_31;
  }

  v42 = v28;
  mlir::mps::ConstantOp::verify();
  v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v30 = *(v42 + 8);
  v31 = *(v42 + 16);
  if (!v31)
  {
    goto LABEL_30;
  }

LABEL_23:
  v32 = v30;
  v33 = v31;
  do
  {
    v34 = v33 >> 1;
    v35 = &v32[2 * (v33 >> 1)];
    v37 = *v35;
    v36 = v35 + 2;
    v33 += ~(v33 >> 1);
    if (v37 < v29)
    {
      v32 = v36;
    }

    else
    {
      v33 = v34;
    }
  }

  while (v33);
LABEL_31:
  if (v32 == &v30[2 * v31] || *v32 != v29)
  {
    goto LABEL_33;
  }

  v38 = v32[1];
LABEL_34:
  v43[0] = v27;
  v43[1] = v38;
  ElementType = mlir::ShapedType::getElementType(v43);
  v40 = mlir::ComplexType::get(ElementType);
  LOBYTE(v44) = 0;
  v45 = 0;
  v24 = mlir::ShapedType::cloneWith(v43, &v44, v40);
  v25 = *(a11 + 8);
  if (v25 >= *(a11 + 12))
  {
LABEL_35:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_16:
  *(*a11 + 8 * v25) = v24;
  ++*(a11 + 8);
  if (v46 != v48)
  {
    free(v46);
  }

  return 1;
}

uint64_t mlir::mps::CreateComplexOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::RealPartOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = a6;
  v25[0] = 0;
  v26 = 0;
  v27 = a9;
  v28 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v24);
    if (v26 == 1)
    {
      v26 = 0;
    }

    mlir::OperationName::OperationName(v25, "mps.real_part", 13, Context);
    v26 = 1;
  }

  v29 = a4;
  v30 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  mlir::UnknownLoc::get(this, a2);
  v31 = v29;
  v15 = mlir::ValueRange::dereference_iterator(&v31, 0);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  v23[0] = v16;
  v23[1] = a2;
  if (!v16)
  {
    goto LABEL_13;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v18 = ElementTypeOrSelf;
  }

  else
  {
    v18 = 0;
  }

  *&v31 = v18;
  if (v18)
  {
    ElementTypeOrSelf = mlir::ComplexType::getElementType(&v31);
  }

  LOBYTE(v31) = 0;
  v32 = 0;
  v19 = mlir::ShapedType::cloneWith(v23, &v31, ElementTypeOrSelf);
  if (!v19)
  {
LABEL_13:
    v20 = mlir::Float32Type::get(this, a2);
    v19 = mlir::UnrankedTensorType::get(v20);
  }

  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v21) = v19;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::RealPartOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::ImaginaryPartOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = a6;
  v25[0] = 0;
  v26 = 0;
  v27 = a9;
  v28 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v24);
    if (v26 == 1)
    {
      v26 = 0;
    }

    mlir::OperationName::OperationName(v25, "mps.imaginary_part", 18, Context);
    v26 = 1;
  }

  v29 = a4;
  v30 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  mlir::UnknownLoc::get(this, a2);
  v31 = v29;
  v15 = mlir::ValueRange::dereference_iterator(&v31, 0);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  v23[0] = v16;
  v23[1] = a2;
  if (!v16)
  {
    goto LABEL_13;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v18 = ElementTypeOrSelf;
  }

  else
  {
    v18 = 0;
  }

  *&v31 = v18;
  if (v18)
  {
    ElementTypeOrSelf = mlir::ComplexType::getElementType(&v31);
  }

  LOBYTE(v31) = 0;
  v32 = 0;
  v19 = mlir::ShapedType::cloneWith(v23, &v31, ElementTypeOrSelf);
  if (!v19)
  {
LABEL_13:
    v20 = mlir::Float32Type::get(this, a2);
    v19 = mlir::UnrankedTensorType::get(v20);
  }

  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v21) = v19;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ImaginaryPartOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::ConjugateOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::anonymous namespace::verifyFFTAxes(mlir::Operation *a1, void *a2, uint64_t a3)
{
  v87[6] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *a2;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = a2;
      mlir::TensorType::operator mlir::ShapedType();
      a2 = v15;
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        goto LABEL_14;
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
    if (v9 != &v7[2 * v8] && *v9 == v6)
    {
      v30 = v9[1];
      v70 = a2;
      v71 = v30;
      if (mlir::ShapedType::hasRank(&v70))
      {
        goto LABEL_15;
      }

      return 1;
    }
  }

LABEL_14:
  v70 = a2;
  v71 = 0;
  if (!mlir::ShapedType::hasRank(&v70))
  {
    return 1;
  }

LABEL_15:
  v69 = 0;
  v85 = &v69;
  v74[0] = a3;
  DefiningOp = mlir::Value::getDefiningOp(v74);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v85, DefiningOp))
  {
    return 1;
  }

  v85 = v87;
  v86 = 0x600000000;
  mlir::ShapedType::getShape(&v70);
  v18 = v17;
  v19 = v69;
  if (v69)
  {
    v20 = *v69;
    {
      v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v32 = v19;
      mlir::mps::PoolAvgOpAdaptor::verify();
      v19 = v32;
      v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    v24 = v22;
    v25 = v23;
    do
    {
      v26 = v25 >> 1;
      v27 = &v24[2 * (v25 >> 1)];
      v29 = *v27;
      v28 = v27 + 2;
      v25 += ~(v25 >> 1);
      if (v29 < v21)
      {
        v24 = v28;
      }

      else
      {
        v25 = v26;
      }
    }

    while (v25);
    if (v24 != &v22[2 * v23] && *v24 == v21)
    {
      v33 = v24[1];
      goto LABEL_34;
    }
  }

LABEL_33:
  v33 = 0;
LABEL_34:
  {
    if (v86)
    {
      v34 = v85;
      v35 = 8 * v86;
      while (1)
      {
        v36 = *v34;
        if ((v18 - *v34) >= 5)
        {
          break;
        }

        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_39;
        }
      }

      v67 = "invalid axis: ";
      v68 = 259;
      mlir::Operation::emitOpError(v74, a1, &v67);
      if (v74[0])
      {
        LODWORD(v72) = 2;
        *(&v72 + 1) = v36;
        if (v76 >= v77)
        {
          if (v75 > &v72 || v75 + 24 * v76 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v75 + 24 * v76;
        v39 = v72;
        *(v38 + 2) = v73;
        *v38 = v39;
        v40 = ++v76;
        if (v74[0])
        {
          LODWORD(v72) = 3;
          *(&v72 + 1) = " for rank: ";
          v73 = 11;
          if (v40 >= v77)
          {
            if (v75 > &v72 || v75 + 24 * v40 <= &v72)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v41 = v75 + 24 * v76;
          v42 = v72;
          *(v41 + 2) = v73;
          *v41 = v42;
          v43 = ++v76;
          if (v74[0])
          {
            LODWORD(v72) = 2;
            *(&v72 + 1) = v18;
            if (v43 >= v77)
            {
              if (v75 > &v72 || v75 + 24 * v43 <= &v72)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v44 = v75 + 24 * v76;
            v45 = v72;
            *(v44 + 2) = v73;
            *v44 = v45;
            v46 = ++v76;
            if (v74[0])
            {
              LODWORD(v72) = 3;
              *(&v72 + 1) = ". Transform supported only on the last four dimensions";
              v73 = 54;
              if (v46 >= v77)
              {
                if (v75 > &v72 || v75 + 24 * v46 <= &v72)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v47 = v75 + 24 * v76;
              v48 = v72;
              *(v47 + 2) = v73;
              *v47 = v48;
              v49 = ++v76;
              if (v74[0])
              {
                LODWORD(v72) = 3;
                *(&v72 + 1) = ", ie. axis must be larger than ";
                v73 = 31;
                if (v49 >= v77)
                {
                  if (v75 > &v72 || v75 + 24 * v49 <= &v72)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v50 = v75 + 24 * v76;
                v51 = v72;
                *(v50 + 2) = v73;
                *v50 = v51;
                v52 = ++v76;
                if (v74[0])
                {
                  LODWORD(v72) = 2;
                  *(&v72 + 1) = v18 - 5;
                  if (v52 >= v77)
                  {
                    if (v75 > &v72 || v75 + 24 * v52 <= &v72)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v53 = v75 + 24 * v76;
                  v54 = v72;
                  *(v53 + 2) = v73;
                  *v53 = v54;
                  v55 = ++v76;
                  if (v74[0])
                  {
                    LODWORD(v72) = 3;
                    *(&v72 + 1) = ".";
                    v73 = 1;
                    if (v55 >= v77)
                    {
                      if (v75 > &v72 || v75 + 24 * v55 <= &v72)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v56 = v75 + 24 * v76;
                    v57 = v72;
                    *(v56 + 2) = v73;
                    *v56 = v57;
                    ++v76;
                  }
                }
              }
            }
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
      v58 = result;
      if (v74[0])
      {
        mlir::InFlightDiagnostic::report(v74);
        result = v58;
      }

      if (v84)
      {
        if (v83 != &v84)
        {
          free(v83);
          result = v58;
        }

        v59 = __p;
        if (__p)
        {
          v60 = v82;
          v61 = __p;
          if (v82 != __p)
          {
            do
            {
              v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
            }

            while (v60 != v59);
            v61 = __p;
          }

          v82 = v59;
          operator delete(v61);
          result = v58;
        }

        v62 = v79;
        if (v79)
        {
          v63 = v80;
          v64 = v79;
          if (v80 != v79)
          {
            do
            {
              v66 = *--v63;
              v65 = v66;
              *v63 = 0;
              if (v66)
              {
                MEMORY[0x259C63150](v65, 0x1000C8077774924);
              }
            }

            while (v63 != v62);
            v64 = v79;
          }

          v80 = v62;
          operator delete(v64);
          result = v58;
        }

        if (v75 != &v78)
        {
          free(v75);
          result = v58;
        }
      }
    }

    else
    {
LABEL_39:
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  if (v85 != v87)
  {
    v37 = result;
    free(v85);
    return v37;
  }

  return result;
}

uint64_t mlir::mps::FastFourierTransformOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = *MEMORY[0x277D85DE8];
  v37[0] = a4;
  v37[1] = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0uLL;
  }

  v29 = a6;
  v30[0] = 0;
  v31 = 0;
  v32 = v14;
  v33 = a9;
  v34 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v29);
    if (v31 == 1)
    {
      v31 = 0;
    }

    mlir::OperationName::OperationName(v30, "mps.fast_fourier_transform", 26, Context);
    v31 = 1;
  }

  v35 = a4;
  v36 = a5;
  if (a5)
  {
    v16 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::FastFourierTransformOpAdaptor::verify(&v29, v16))
    {
      v38 = v35;
      v17 = mlir::ValueRange::dereference_iterator(&v38, 0);
      v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
      v28[0] = v18;
      v28[1] = v19;
      if (v18)
      {
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
        v21 = ElementTypeOrSelf;
        if (!ElementTypeOrSelf || *(*ElementTypeOrSelf + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v21 = mlir::ComplexType::get(ElementTypeOrSelf);
        }

        LOBYTE(v38) = 0;
        v39 = 0;
        v22 = mlir::ShapedType::cloneWith(v28, &v38, v21);
        v23 = *(a11 + 8);
        if (v23 < *(a11 + 12))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v22 = *(mlir::ValueRange::dereference_iterator(v37, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v23 = *(a11 + 8);
        if (v23 < *(a11 + 12))
        {
LABEL_15:
          *(*a11 + 8 * v23) = v22;
          goto LABEL_18;
        }
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  v24 = mlir::Float32Type::get(this, a2);
  v25 = mlir::UnrankedTensorType::get(v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v26) = v25;
LABEL_18:
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::FastFourierTransformOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    return 1;
  }

  v12 = "'mps.fast_fourier_transform' op requires attribute 'scaling_mode'";
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

uint64_t mlir::mps::FastFourierTransformOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::RealToHermiteanFFTOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0uLL;
  }

  v23 = a6;
  v24[0] = 0;
  v25 = 0;
  v26 = v14;
  v27 = a9;
  v28 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v23);
    if (v25 == 1)
    {
      v25 = 0;
    }

    mlir::OperationName::OperationName(v24, "mps.real_to_hermitean_fft", 25, Context);
    v25 = 1;
  }

  v29 = a4;
  v30 = a5;
  {
    v20 = mlir::Float32Type::get(this, a2);
    v19 = mlir::UnrankedTensorType::get(v20);
  }

  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v21) = v19;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::RealToHermiteanFFTOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    return 1;
  }

  v12 = "'mps.real_to_hermitean_fft' op requires attribute 'scaling_mode'";
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

uint64_t mlir::mps::anonymous namespace::inferHermiteanFFTType(void *a1, uint64_t a2, int a3, unsigned int a4)
{
  v53[4] = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v9 = ElementTypeOrSelf;
  }

  else
  {
    v9 = 0;
  }

  v47 = v9;
  if (a3)
  {
    if (v9)
    {
      ElementType = mlir::ComplexType::getElementType(&v47);
      v45 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
      v46 = v11;
      if (!v45)
      {
        return mlir::UnrankedTensorType::get(ElementType);
      }

      goto LABEL_11;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  ElementType = mlir::ComplexType::get(ElementTypeOrSelf);
  v45 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
  v46 = v13;
  if (!v45)
  {
    return mlir::UnrankedTensorType::get(ElementType);
  }

LABEL_11:
  if ((mlir::ShapedType::hasRank(&v45) & 1) == 0)
  {
    return mlir::UnrankedTensorType::get(ElementType);
  }

  __b = v50;
  v49 = 0x400000000;
  Shape = mlir::ShapedType::getShape(&v45);
  v16 = v15;
  v51 = v53;
  v52 = 0x400000000;
  matched = mlir::matchConstantWithIntVector<long long>(a2, &v51);
  if ((matched & 1) == 0 || !v52)
  {
    v19 = -1;
    goto LABEL_24;
  }

  v18 = (v52 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v18 >= 3)
  {
    v21 = v18 + 1;
    v22 = (v18 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v20 = (v51 + 8 * v22);
    v23 = vdupq_n_s64(v16);
    v24 = (v51 + 16);
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    v26 = v22;
    v27.i64[0] = -1;
    v27.i64[1] = -1;
    do
    {
      v28 = vaddq_s64(vandq_s8(vcltzq_s64(v24[-1]), v23), v24[-1]);
      v29 = vaddq_s64(vandq_s8(vcltzq_s64(*v24), v23), *v24);
      v25 = vbslq_s8(vcgtq_s64(v28, v25), v28, v25);
      v27 = vbslq_s8(vcgtq_s64(v29, v27), v29, v27);
      v24 += 2;
      v26 -= 4;
    }

    while (v26);
    v30 = vbslq_s8(vcgtq_s64(v25, v27), v25, v27);
    v31 = vextq_s8(v30, v30, 8uLL).u64[0];
    v19 = vbsl_s8(vcgtd_s64(v30.i64[0], v31), *v30.i8, v31);
    if (v21 == v22)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = -1;
    v20 = v51;
  }

  do
  {
    v32 = *v20++;
    v33 = ((v16 & (v32 >> 63)) + v32);
    if (*&v33 > *&v19)
    {
      v19 = v33;
    }
  }

  while (v20 != (v51 + 8 * v52));
LABEL_24:
  v34 = v49;
  if (v16 != v49)
  {
    if (v16 >= v49)
    {
      if (v16 > HIDWORD(v49))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v16 != v49)
      {
        v35 = matched;
        bzero(__b + 8 * v49, 8 * (v16 - v49));
        matched = v35;
      }
    }

    LODWORD(v49) = v16;
    v34 = v16;
  }

  if (!v16)
  {
    goto LABEL_49;
  }

  v36 = __b;
  if (a3)
  {
    if (matched)
    {
      do
      {
        v38 = *Shape++;
        v37 = v38;
        v39 = (a4 | (2 * v38)) - 2;
        if (v38 == 0x8000000000000000)
        {
          v39 = 0x8000000000000000;
        }

        if (!*&v19)
        {
          v37 = v39;
        }

        *v36++ = v37;
        --*&v19;
        --v16;
      }

      while (v16);
      goto LABEL_49;
    }
  }

  else if (matched)
  {
    do
    {
      v41 = *Shape++;
      v40 = v41;
      v42 = v41 / 2;
      if (v41 == 0x8000000000000000)
      {
        v43 = 0x8000000000000000;
      }

      else
      {
        v43 = v42 + 1;
      }

      if (!*&v19)
      {
        v40 = v43;
      }

      *v36++ = v40;
      --*&v19;
      --v16;
    }

    while (v16);
    goto LABEL_49;
  }

  memset_pattern16(__b, &unk_25736EFD0, 8 * v16);
LABEL_49:
  if (v51 != v53)
  {
    free(v51);
    v34 = v49;
  }

  result = mlir::RankedTensorType::get(__b, v34, ElementType, 0);
  if (__b != v50)
  {
    v44 = result;
    free(__b);
    return v44;
  }

  return result;
}

uint64_t mlir::mps::RealToHermiteanFFTOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::HermiteanToRealFFTOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v14 = *a7;
    v15 = *(a7 + 2);
  }

  else
  {
    v15 = 0;
    v14 = 0uLL;
  }

  v25 = a6;
  v26[0] = 0;
  v27 = 0;
  v28 = v14;
  v29 = v15;
  v30 = a9;
  v31 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v25);
    if (v27 == 1)
    {
      v27 = 0;
    }

    mlir::OperationName::OperationName(v26, "mps.hermitean_to_real_fft", 25, Context);
    v27 = 1;
  }

  v32 = a4;
  v33 = a5;
  {
    v22 = mlir::Float32Type::get(this, a2);
    v21 = mlir::UnrankedTensorType::get(v22);
  }

  v23 = *(a11 + 8);
  if (v23 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v23) = v21;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::HermiteanToRealFFTOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    return 1;
  }

  v12 = "'mps.hermitean_to_real_fft' op requires attribute 'scaling_mode'";
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

uint64_t mlir::mps::HermiteanToRealFFTOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::NonZeroOp::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = v38;
  memset_pattern16(v38, &unk_25736EFD0, 0x10uLL);
  v37 = 0x200000002;
  v29 = a6;
  v30[0] = 0;
  v31 = 0;
  v32 = a9;
  v33 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v29);
    if (v31 == 1)
    {
      v31 = 0;
    }

    mlir::OperationName::OperationName(v30, "mps.non_zero", 12, Context);
    v31 = 1;
  }

  v34 = a4;
  v35 = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, v15);
    v39 = v34;
    v40 = 0;
    v17 = mlir::ValueRange::dereference_iterator(&v39, 0);
    v39 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    v40 = v18;
    if (v39 && (mlir::ShapedType::hasRank(&v39) & 1) != 0)
    {
      mlir::ShapedType::getShape(&v39);
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      *(v36 + 1) = v20;
    }

    v21 = mlir::IntegerType::get(a1, 32, 1u);
    v22 = mlir::RankedTensorType::get(v36, v37, v21, 0);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
    v24 = v36;
    if (v36 != v38)
    {
LABEL_14:
      free(v24);
    }
  }

  else
  {
    v26 = mlir::IntegerType::get(a1, 32, 1u);
    v27 = mlir::RankedTensorType::get(v36, v37, v26, 0);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v28) = v27;
    ++*(a11 + 8);
    v24 = v36;
    if (v36 != v38)
    {
      goto LABEL_14;
    }
  }

  return 1;
}

uint64_t mlir::mps::NonZeroOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

double mlir::mps::getPadValues@<D0>(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v3 = 16;
  v4 = 32;
  if (!a2)
  {
    v3 = 32;
  }

  v5 = 24;
  v6 = 40;
  if (!a2)
  {
    v5 = 40;
    v4 = 48;
  }

  v7 = *(a1 + v3);
  v8 = *(a1 + v5);
  v9 = *(a1 + v4);
  if (!a2)
  {
    v6 = 56;
  }

  v10 = *(a1 + v6);
  a3[2] = v7;
  *a3 = a3 + 2;
  a3[3] = v8;
  a3[4] = v9;
  a3[5] = v10;
  *&result = 0x400000004;
  a3[1] = 0x400000004;
  return result;
}

double mlir::mps::getAttributeValues@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = *a1;
  *a2 = a2 + 16;
  *&result = 0x200000002;
  *(a2 + 8) = 0x200000002;
  return result;
}

double mlir::mps::getInputValues@<D0>(void *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v3 = 3;
  v4 = 1;
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  if (!a2)
  {
    v4 = 2;
  }

  v6 = a1[v5];
  v7 = a1[v4];
  if (a2)
  {
    v3 = 2;
  }

  v8 = a1[v3];
  a3[2] = *a1;
  *a3 = a3 + 2;
  a3[3] = v6;
  a3[4] = v7;
  a3[5] = v8;
  *&result = 0x400000004;
  a3[1] = 0x400000004;
  return result;
}

void *mlir::mps::computeIm2colResultSpatialShape@<X0>(void *result@<X0>, uint64_t *a2@<X2>, void *a3@<X4>, void *a4@<X6>, void *a5@<X8>, void *a6)
{
  a5[4] = 0;
  a5[2] = *result;
  *a5 = a5 + 2;
  a5[1] = 0x300000003;
  v7 = *a2;
  v6 = a2[1];
  a5[3] = *a2 * result[1] * v6;
  v9 = result[2];
  v8 = result[3];
  v10 = 0x8000000000000000;
  v11 = 0x8000000000000000;
  if (v9 != 0x8000000000000000 && v7 != 0x8000000000000000)
  {
    v11 = (*a6 + v9 + a6[1] + *a3 + ~(*a4 * (v7 - 1))) / *a3;
  }

  if (v8 != 0x8000000000000000 && v6 != 0x8000000000000000)
  {
    v10 = (a6[2] + v8 + a6[3] + a3[1] + ~(a4[1] * (v6 - 1))) / a3[1];
  }

  v12 = 0x8000000000000000;
  if (v10 != 0x8000000000000000 && v11 != 0x8000000000000000)
  {
    v12 = v10 * v11;
  }

  a5[4] = v12;
  return result;
}

uint64_t mlir::mps::ImToColOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v100 = *MEMORY[0x277D85DE8];
  v98 = a4;
  v99 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = *(a7 + 4);
  }

  else
  {
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v88 = a6;
  v89[0] = 0;
  v90 = 0;
  v91 = v14;
  v92 = v15;
  v93 = v16;
  v94 = a9;
  v17 = a5;
  v95 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v88);
    if (v90 == 1)
    {
      v90 = 0;
    }

    mlir::OperationName::OperationName(v89, "mps.im_to_col", 13, Context);
    v90 = 1;
    v17 = v99;
  }

  v96 = a4;
  v97 = a5;
  if (v17 != 1 || (v19 = mlir::UnknownLoc::get(this, a2), (mlir::mps::ImToColOpAdaptor::verify(&v88, v19) & 1) == 0))
  {
    v58 = mlir::Float32Type::get(this, a2);
    v59 = mlir::UnrankedTensorType::get(v58);
    v60 = *(a11 + 8);
    if (v60 >= *(a11 + 12))
    {
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v98, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v62[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v62[1] = v22;
  if (!v62[0] || !mlir::ShapedType::hasRank(v62) || (mlir::ShapedType::getShape(v62), v23 != 4))
  {
    v59 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v60 = *(a11 + 8);
    if (v60 >= *(a11 + 12))
    {
LABEL_66:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_63:
    *(*a11 + 8 * v60) = v59;
    ++*(a11 + 8);
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v62);
  v25 = *Shape;
  v26 = 1;
  if (*(v91 + 8))
  {
    v27 = 3;
  }

  else
  {
    v27 = 1;
  }

  if (*(v91 + 8))
  {
    v28 = 2;
  }

  else
  {
    v26 = 2;
    v28 = 3;
  }

  v29 = Shape[v27];
  v30 = Shape[v26];
  v31 = Shape[v28];
  v85 = v87;
  v87[0] = v25;
  v87[1] = v29;
  v87[2] = v30;
  v87[3] = v31;
  v86 = 0x400000004;
  v83[0] = v84;
  v83[1] = 0x200000000;
  v68[0] = *(&v92 + 1);
  v32 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v68);
  mlir::getIntValues<long long>(v32, v33, v83, 1);
  v80 = &v82;
  v82 = *v83[0];
  v81 = 0x200000002;
  v78[0] = v79;
  v78[1] = 0x200000000;
  v68[0] = v93;
  v34 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v68);
  mlir::getIntValues<long long>(v34, v35, v78, 1);
  v75 = &v77;
  v77 = *v78[0];
  v76 = 0x200000002;
  v73[0] = v74;
  v73[1] = 0x200000000;
  v68[0] = *(&v91 + 1);
  v36 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v68);
  mlir::getIntValues<long long>(v36, v37, v73, 1);
  v70 = &v72;
  v72 = *v73[0];
  v71 = 0x200000002;
  v68[0] = v69;
  v68[1] = 0x800000000;
  v66[0] = v92;
  v38 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v66);
  mlir::getIntValues<long long>(v38, v39, v68, 1);
  v40 = 32;
  if (*(v91 + 8))
  {
    v41 = 16;
  }

  else
  {
    v41 = 32;
  }

  if (*(v91 + 8))
  {
    v42 = 24;
  }

  else
  {
    v42 = 40;
  }

  if (!*(v91 + 8))
  {
    v40 = 48;
  }

  v43 = *(v68[0] + v41);
  v44 = *(v68[0] + v42);
  v45 = *(v68[0] + v40);
  if (*(v91 + 8))
  {
    v46 = 40;
  }

  else
  {
    v46 = 56;
  }

  v47 = *(v68[0] + v46);
  v66[0] = v67;
  v67[0] = v43;
  v67[1] = v44;
  v67[2] = v45;
  v67[3] = v47;
  v66[1] = 0x400000004;
  v63 = v65;
  v64 = 0x300000003;
  v65[0] = *v85;
  v48 = *v80;
  v49 = *(v80 + 1);
  v65[1] = *v80 * *(v85 + 1) * v49;
  v50 = *(v85 + 2);
  v51 = *(v85 + 3);
  v52 = 0x8000000000000000;
  v53 = 0x8000000000000000;
  if (v50 != 0x8000000000000000 && v48 != 0x8000000000000000)
  {
    v53 = (v50 + v43 + ~(*v70 * (v48 - 1)) + v44 + *v75) / *v75;
  }

  if (v51 != 0x8000000000000000 && v49 != 0x8000000000000000)
  {
    v52 = (v45 + v51 + ~(*(v70 + 1) * (v49 - 1)) + v47 + *(v75 + 1)) / *(v75 + 1);
  }

  v54 = 0x8000000000000000;
  if (v52 != 0x8000000000000000 && v53 != 0x8000000000000000)
  {
    v54 = v52 * v53;
  }

  v65[2] = v54;
  v56 = mlir::RankedTensorType::get(v65, 3, ElementTypeOrSelf, 0);
  v57 = *(a11 + 8);
  if (v57 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v57) = v56;
  ++*(a11 + 8);
  if (v63 != v65)
  {
    free(v63);
  }

  if (v66[0] != v67)
  {
    free(v66[0]);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  if (v70 != &v72)
  {
    free(v70);
  }

  if (v73[0] != v74)
  {
    free(v73[0]);
  }

  if (v75 != &v77)
  {
    free(v75);
  }

  if (v78[0] != v79)
  {
    free(v78[0]);
  }

  if (v80 != &v82)
  {
    free(v80);
  }

  if (v83[0] != v84)
  {
    free(v83[0]);
  }

  if (v85 != v87)
  {
    free(v85);
  }

  return 1;
}

uint64_t mlir::mps::ImToColOpAdaptor::verify(void *a1, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (!v3)
  {
    v62 = "'mps.im_to_col' op requires attribute 'data_layout'";
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v74;
      v28 = __p;
      if (v74 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v74 = v26;
      operator delete(v28);
    }

    v29 = v71;
    if (v71)
    {
      v30 = v72;
      v31 = v71;
      if (v72 != v71)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v61 = a1[4];
  if (!v61)
  {
    v62 = "'mps.im_to_col' op requires attribute 'dilation_rates'";
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v74;
      v36 = __p;
      if (v74 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v74 = v34;
      operator delete(v36);
    }

    v29 = v71;
    if (v71)
    {
      v37 = v72;
      v31 = v71;
      if (v72 != v71)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v29);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v60 = a1[5];
  if (!v60)
  {
    v62 = "'mps.im_to_col' op requires attribute 'explicit_padding'";
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v74;
      v42 = __p;
      if (v74 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v74 = v40;
      operator delete(v42);
    }

    v29 = v71;
    if (v71)
    {
      v43 = v72;
      v31 = v71;
      if (v72 != v71)
      {
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

        while (v43 != v29);
        goto LABEL_91;
      }

LABEL_92:
      v72 = v29;
      operator delete(v31);
    }

LABEL_93:
    if (v69 != &v70)
    {
      free(v69);
    }

    return v25;
  }

  v59 = a1[6];
  if (!v59)
  {
    v62 = "'mps.im_to_col' op requires attribute 'kernel_sizes'";
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v74;
      v48 = __p;
      if (v74 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v74 = v46;
      operator delete(v48);
    }

    v29 = v71;
    if (v71)
    {
      v49 = v72;
      v31 = v71;
      if (v72 != v71)
      {
        do
        {
          v51 = *--v49;
          v50 = v51;
          *v49 = 0;
          if (v51)
          {
            MEMORY[0x259C63150](v50, 0x1000C8077774924);
          }
        }

        while (v49 != v29);
LABEL_91:
        v31 = v71;
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v58 = a1[7];
  if (v58)
  {
    v62 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v59);
    v63 = v4;
    v54[0] = mlir::ElementsAttr::getType(&v62);
    v67 = mlir::TensorType::operator mlir::ShapedType(v54);
    v68 = v5;
    Shape = mlir::ShapedType::getShape(&v67);
    Type = 2;
    if (v7 == 1 && *Shape == Type && (ElementType = v59, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v55 = v59, *&v65 = mlir::DenseElementsAttr::getType(&v55), *(&v65 + 1) = v8, v56 = mlir::ShapedType::getElementType(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
    {
      v62 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v58);
      v63 = v9;
      v54[0] = mlir::ElementsAttr::getType(&v62);
      v67 = mlir::TensorType::operator mlir::ShapedType(v54);
      v68 = v10;
      v11 = mlir::ShapedType::getShape(&v67);
      Type = 2;
      if (v12 == 1 && *v11 == Type && (ElementType = v58, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v55 = v58, *&v65 = mlir::DenseElementsAttr::getType(&v55), *(&v65 + 1) = v13, v56 = mlir::ShapedType::getElementType(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
      {
        v62 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v61);
        v63 = v14;
        v54[0] = mlir::ElementsAttr::getType(&v62);
        v67 = mlir::TensorType::operator mlir::ShapedType(v54);
        v68 = v15;
        v16 = mlir::ShapedType::getShape(&v67);
        Type = 2;
        if (v17 == 1 && *v16 == Type && (ElementType = v61, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v55 = v61, *&v65 = mlir::DenseElementsAttr::getType(&v55), *(&v65 + 1) = v18, v56 = mlir::ShapedType::getElementType(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
        {
          v62 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v60);
          v63 = v19;
          Type = mlir::ElementsAttr::getType(&v62);
          v67 = mlir::TensorType::operator mlir::ShapedType(&Type);
          v68 = v20;
          v21 = mlir::ShapedType::getShape(&v67);
          v65 = xmmword_2573695A0;
          if (v22 == 2 && (*v21 == v65 ? (v23 = v21[1] == *(&v65 + 1)) : (v23 = 0), v23 && (v56 = v60, v54[0] = mlir::DenseElementsAttr::getType(&v56), v54[1] = v24, ElementType = mlir::ShapedType::getElementType(v54), mlir::Type::isUnsignedInteger(&ElementType, 64))))
          {
            if (*(v3 + 8) < 2u)
            {
              return 1;
            }

            v52 = "'mps.im_to_col' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NCHW or NHWC";
          }

          else
          {
            v52 = "'mps.im_to_col' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
          }
        }

        else
        {
          v52 = "'mps.im_to_col' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
        }
      }

      else
      {
        v52 = "'mps.im_to_col' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
      }
    }

    else
    {
      v52 = "'mps.im_to_col' op attribute 'kernel_sizes' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
    }

    v62 = v52;
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
    return v25;
  }

  v62 = "'mps.im_to_col' op requires attribute 'strides'";
  v64 = 259;
  mlir::emitError(a2, &v62, &v67);
  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
  if (v67)
  {
    mlir::InFlightDiagnostic::report(&v67);
  }

  if (v76 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v68);
  }

  return v25;
}

uint64_t mlir::mps::ImToColOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687F230;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687F230;
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

BOOL mlir::mps::verifyIm2colPadding(uint64_t **a1, int a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    if (v3)
    {
      return 0;
    }

    else if (v2[1])
    {
      return 0;
    }

    else
    {
      return !v2[6] && v2[7] == 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  else if (v2[1])
  {
    return 0;
  }

  else
  {
    return !v2[2] && v2[3] == 0;
  }
}

BOOL mlir::mps::ImToColOp::verify(mlir::Operation **this)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v27[0] = v28;
  v27[1] = 0x600000000;
  v18[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v18);
  mlir::getIntValues<long long>(v2, v3, v27, 1);
  v4 = v27[0];
  v5 = *v27[0];
  if (*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8))
  {
    if (!v5 && !*(v27[0] + 8) && !*(v27[0] + 48) && !*(v27[0] + 56))
    {
      goto LABEL_34;
    }
  }

  else if (!v5 && !*(v27[0] + 8) && !*(v27[0] + 16) && !*(v27[0] + 24))
  {
LABEL_34:
    v6 = 1;
    if (v27[0] == v28)
    {
      return v6;
    }

    goto LABEL_32;
  }

  v16 = "failed: padding should be nonzero on spatial dimension only";
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

  v4 = v27[0];
  if (v27[0] != v28)
  {
LABEL_32:
    free(v4);
  }

  return v6;
}

uint64_t mlir::mps::get2DElementsForImToCol(uint64_t **a1, __int128 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = &v10;
  v10 = *a2;
  v9 = 0x200000002;
  v7 = 2;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v6 = mlir::RankedTensorType::get(&v7, 1, IntegerType, 0);
  v3 = mlir::TensorType::operator mlir::ShapedType(&v6);
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v3);
  if (v8 != &v10)
  {
    v5 = result;
    free(v8);
    return v5;
  }

  return result;
}

void mlir::mps::getFormattedPaddingImToCol()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v0 = v2;
  v1 = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::mps::ColToImOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v33[0] = a4;
  v33[1] = a5;
  if (a7)
  {
    v13 = *a7;
    v14 = a7[1];
    v15 = *(a7 + 4);
  }

  else
  {
    v15 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v23 = a6;
  v24[0] = 0;
  v25 = 0;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = a9;
  v30 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v23);
    if (v25 == 1)
    {
      v25 = 0;
    }

    mlir::OperationName::OperationName(v24, "mps.col_to_im", 13, Context);
    v25 = 1;
  }

  v31 = a4;
  v32 = a5;
  v17 = mlir::ValueRange::dereference_iterator(v33, 0);
  v34 = v31;
  v35 = 1;
  v34 = mlir::ValueRange::offset_base(&v34, 1);
  v35 = 0;
  v18 = mlir::ValueRange::dereference_iterator(&v34, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
  TensorType = mlir::mps::getTensorType(v18, ElementTypeOrSelf);
  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v21) = TensorType;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ColToImOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687F2B0;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687F2B0;
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

BOOL mlir::mps::ColToImOp::verify(mlir::Operation **this)
{
  v123[6] = *MEMORY[0x277D85DE8];
  v122[0] = v123;
  v122[1] = 0x600000000;
  v112 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
  mlir::getIntValues<long long>(v2, v3, v122, 1);
  v4 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  v7 = *v122[0];
  if (*(v6 + 8))
  {
    if (!v7 && !*(v122[0] + 1) && !*(v122[0] + 6) && !*(v122[0] + 7))
    {
LABEL_34:
      v110[0] = v111;
      v110[1] = 0x200000000;
      v112 = *(v5 + 24);
      v19 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      v8 = 1;
      mlir::getIntValues<long long>(v19, v20, v110, 1);
      v21 = *this + 16 * ((*(*this + 11) >> 23) & 1);
      v107 = &v109;
      v109 = *v110[0];
      v108 = 0x200000002;
      v105[0] = v106;
      v105[1] = 0x200000000;
      v112 = *(v21 + 96);
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      mlir::getIntValues<long long>(v22, v23, v105, 1);
      v24 = *this + 16 * ((*(*this + 11) >> 23) & 1);
      v102 = &v104;
      v104 = *v105[0];
      v103 = 0x200000002;
      v100[0] = v101;
      v100[1] = 0x200000000;
      v112 = *(v24 + 72);
      v25 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      mlir::getIntValues<long long>(v25, v26, v100, 1);
      v81 = this;
      v27 = *this;
      v97 = &v99;
      v99 = *v100[0];
      v98 = 0x200000002;
      v28 = *(v27 + 9);
      v29 = v27 - 16;
      if (v28)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v31)
      {
        goto LABEL_112;
      }

      v32 = *v31;
      {
        v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v34 = *(v32 + 8);
        v35 = *(v32 + 16);
        if (v35)
        {
          goto LABEL_40;
        }
      }

      else
      {
        mlir::mps::ConstantOp::verify();
        v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v34 = *(v32 + 8);
        v35 = *(v32 + 16);
        if (v35)
        {
LABEL_40:
          v36 = v34;
          v37 = v35;
          do
          {
            v38 = v37 >> 1;
            v39 = &v36[2 * (v37 >> 1)];
            v41 = *v39;
            v40 = v39 + 2;
            v37 += ~(v37 >> 1);
            if (v41 < v33)
            {
              v36 = v40;
            }

            else
            {
              v37 = v38;
            }
          }

          while (v37);
LABEL_48:
          if (v36 != &v34[2 * v35] && *v36 == v33)
          {
            v42 = v36[1];
          }

          else
          {
            v42 = 0;
          }

          v86[0] = v31;
          v86[1] = v42;
          if (!mlir::ShapedType::hasRank(v86))
          {
            v8 = 1;
            goto LABEL_112;
          }

          Shape = mlir::ShapedType::getShape(v86);
          v44 = mlir::ShapedType::getShape(v86);
          v46 = (v44 + 8 * v45);
          v94 = v96;
          v95 = 0x400000000;
          if (((v46 - Shape) >> 3) >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = 0;
          if (v46 != Shape)
          {
            memcpy(v94, Shape, v46 - Shape);
            v47 = v95;
          }

          LODWORD(v95) = v47 + ((v46 - Shape) >> 3);
          v48 = mlir::ShapedType::getShape(v86);
          v49 = *v81;
          v50 = *v48;
          v51 = 3;
          v52 = 1;
          if (*(*(*v81 + 16 * ((*(*v81 + 44) >> 23) & 1) + 64) + 8))
          {
            v53 = 3;
          }

          else
          {
            v53 = 1;
          }

          if (!*(*(*v81 + 16 * ((*(*v81 + 44) >> 23) & 1) + 64) + 8))
          {
            v52 = 2;
          }

          v54 = v48[v53];
          v55 = v48[v52];
          if (*(*(*v81 + 16 * ((*(*v81 + 44) >> 23) & 1) + 64) + 8))
          {
            v51 = 2;
          }

          v56 = v48[v51];
          v90 = 0;
          v91 = v93;
          v93[0] = v50;
          v93[1] = v54;
          v93[2] = v55;
          v93[3] = v56;
          v92 = 0x400000004;
          v87 = v89;
          v88 = 0x300000003;
          v89[0] = v50;
          v58 = *v107;
          v57 = *(v107 + 1);
          v89[1] = *v107 * v54 * v57;
          v59 = 0x8000000000000000;
          v60 = v55 == 0x8000000000000000 || v58 == 0x8000000000000000;
          v61 = 0x8000000000000000;
          if (!v60)
          {
            v61 = (*v122[0] + ~(*v97 * (v58 - 1)) + *(v122[0] + 1) + *v102 + v55) / *v102;
          }

          if (v56 != 0x8000000000000000 && v57 != 0x8000000000000000)
          {
            v59 = (*(v122[0] + 2) + ~(*(v97 + 1) * (v57 - 1)) + *(v122[0] + 3) + *(v102 + 1) + v56) / *(v102 + 1);
          }

          v63 = 0x8000000000000000;
          if (v59 != 0x8000000000000000 && v61 != 0x8000000000000000)
          {
            v63 = v59 * v61;
          }

          v90 = v63;
          v65 = (*(*(*(v49 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (!v65)
          {
            goto LABEL_93;
          }

          v66 = *v65;
          {
            v67 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v68 = *(v66 + 8);
            v69 = *(v66 + 16);
            if (v69)
            {
              goto LABEL_83;
            }
          }

          else
          {
            mlir::mps::ConstantOp::verify();
            v67 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v68 = *(v66 + 8);
            v69 = *(v66 + 16);
            if (v69)
            {
LABEL_83:
              v70 = v68;
              v71 = v69;
              do
              {
                v72 = v71 >> 1;
                v73 = &v70[2 * (v71 >> 1)];
                v75 = *v73;
                v74 = v73 + 2;
                v71 += ~(v71 >> 1);
                if (v75 < v67)
                {
                  v70 = v74;
                }

                else
                {
                  v71 = v72;
                }
              }

              while (v71);
LABEL_91:
              if (v70 != &v68[2 * v69] && *v70 == v67)
              {
                v80 = v70[1];
                v84 = v65;
                v85 = v80;
                v76 = mlir::ShapedType::getShape(&v84);
                if (!v84)
                {
                  goto LABEL_105;
                }

LABEL_94:
                v78 = v76;
                v79 = v77;
                if (mlir::ShapedType::hasRank(&v84) && (*v78 != *v87 || v78[1] != *(v87 + 1) || v78[2] != *(v87 + 2) || v79 != 3 || v88 != 3))
                {
                  v82 = "failed: invalid output shape for input & attributes.";
                  v83 = 259;
                  mlir::OpState::emitOpError(v81, &v82, &v112);
                  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
                  if (v112)
                  {
                    mlir::InFlightDiagnostic::report(&v112);
                  }

                  if (v121 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v113);
                  }

                  goto LABEL_106;
                }

LABEL_105:
                v8 = 1;
LABEL_106:
                if (v87 != v89)
                {
                  free(v87);
                }

                if (v91 != v93)
                {
                  free(v91);
                }

                if (v94 != v96)
                {
                  free(v94);
                }

LABEL_112:
                if (v97 != &v99)
                {
                  free(v97);
                }

                if (v100[0] != v101)
                {
                  free(v100[0]);
                }

                if (v102 != &v104)
                {
                  free(v102);
                }

                if (v105[0] != v106)
                {
                  free(v105[0]);
                }

                if (v107 != &v109)
                {
                  free(v107);
                }

                v17 = v110[0];
                if (v110[0] == v111)
                {
                  goto LABEL_31;
                }

LABEL_30:
                free(v17);
                goto LABEL_31;
              }

LABEL_93:
              v84 = v65;
              v85 = 0;
              v76 = mlir::ShapedType::getShape(&v84);
              if (!v84)
              {
                goto LABEL_105;
              }

              goto LABEL_94;
            }
          }

          v69 = 0;
          v70 = v68;
          goto LABEL_91;
        }
      }

      v35 = 0;
      v36 = v34;
      goto LABEL_48;
    }
  }

  else if (!v7 && !*(v122[0] + 1) && !*(v122[0] + 2) && !*(v122[0] + 3))
  {
    goto LABEL_34;
  }

  v94 = "failed: padding should be nonzero on spatial dimension only";
  v96[8] = 259;
  mlir::OpState::emitOpError(this, &v94, &v112);
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

    v17 = v114;
    if (v114 != &v115)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  if (v122[0] != v123)
  {
    free(v122[0]);
  }

  return v8;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61 = *MEMORY[0x277D85DE8];
  v46[1] = a11;
  v47 = a1;
  v46[0] = &v47;
  v57[0] = v58;
  memset_pattern16(v58, &unk_25736EFD0, 0x18uLL);
  v57[1] = 0x300000003;
  v58[2] = 2;
  if (a7)
  {
    v16 = *a7;
    v17 = *(a7 + 2);
  }

  else
  {
    v17 = 0;
    v16 = 0uLL;
  }

  v48 = a6;
  v49[0] = 0;
  v50 = 0;
  v51 = v16;
  v52 = v17;
  v53 = a9;
  v54 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(v49, "mps.non_maximum_suppression", 27, Context);
    v50 = 1;
  }

  v55 = a4;
  v56 = a5;
  if (a5)
  {
    v19 = mlir::UnknownLoc::get(v47, v15);
    if (mlir::mps::NonMaximumSuppressionOpAdaptor::verify(&v48, v19))
    {
      v45[0] = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        mlir::IntegerAttr::getValue(v45, &v59);
        if (v60 >= 0x41 && v59)
        {
          MEMORY[0x259C63150](v59, 0x1000C8000313F17);
        }

        v45[0] = *(&v51 + 1);
        if (*(&v51 + 1))
        {
          mlir::IntegerAttr::getValue(v45, &v59);
          if (v60 >= 0x41)
          {
            v20 = v59;
          }

          else
          {
            v20 = &v59;
          }

          v21 = *v20;
          if (v60 >= 0x41 && v59)
          {
            MEMORY[0x259C63150](v59, 0x1000C8000313F17);
          }
        }

        else
        {
          v21 = 0;
        }

        *(v57[0] + 1) = v21;
      }

      v59 = v55;
      v60 = 0;
      v22 = mlir::ValueRange::dereference_iterator(&v59, 0);
      v45[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
      v45[1] = v23;
      if (v45[0])
      {
        if (mlir::ShapedType::hasRank(v45))
        {
          mlir::ShapedType::getShape(v45);
          if (v24 == 3)
          {
            Shape = mlir::ShapedType::getShape(v45);
            v26 = v57[0];
            *v57[0] = *Shape;
            if (v26[1] == 0x8000000000000000)
            {
              v27 = mlir::ShapedType::getShape(v45);
              *(v57[0] + 1) = *(v27 + 8);
            }
          }
        }
      }

      v28 = v57[0];
      if (*v57[0] == 0x8000000000000000 || *(v57[0] + 1) == 0x8000000000000000)
      {
        if (a5 == 1)
        {
          goto LABEL_50;
        }

        v59 = v55;
        v60 = 1;
        v59 = mlir::ValueRange::offset_base(&v59, 1);
        v60 = 0;
        v29 = mlir::ValueRange::dereference_iterator(&v59, 0);
        v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v29 + 8) & 0xFFFFFFFFFFFFFFF8));
        v60 = v30;
        if (v59)
        {
          if (mlir::ShapedType::hasRank(&v59))
          {
            mlir::ShapedType::getShape(&v59);
            if (v31 == 3)
            {
              v32 = v57[0];
              if (*v57[0] == 0x8000000000000000)
              {
                v33 = mlir::ShapedType::getShape(&v59);
                v32 = v57[0];
                *v57[0] = *v33;
              }

              if (v32[1] == 0x8000000000000000)
              {
                v34 = mlir::ShapedType::getShape(&v59);
                *(v57[0] + 1) = *(v34 + 8);
              }
            }
          }
        }

        v28 = v57[0];
        if (*v57[0] == 0x8000000000000000)
        {
          goto LABEL_54;
        }
      }

      if (v28[1] == 0x8000000000000000)
      {
LABEL_54:
        if (a5 >= 3)
        {
          v35 = v56;
          v59 = v55;
          v60 = 2;
          v36 = mlir::ValueRange::offset_base(&v59, 2);
          if (v35 - 2 != v60)
          {
            v59 = v36;
            v60 = 0;
            if (mlir::ValueRange::dereference_iterator(&v59, 0))
            {
              v59 = v55;
              v60 = 2;
              v59 = mlir::ValueRange::offset_base(&v59, 2);
              v60 = 0;
              v37 = mlir::ValueRange::dereference_iterator(&v59, 0);
              v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v37 + 8) & 0xFFFFFFFFFFFFFFF8));
              v60 = v38;
              if (v59)
              {
                if (mlir::ShapedType::hasRank(&v59))
                {
                  mlir::ShapedType::getShape(&v59);
                  if (v39 == 2)
                  {
                    v40 = v57[0];
                    if (*v57[0] == 0x8000000000000000)
                    {
                      v41 = mlir::ShapedType::getShape(&v59);
                      v40 = v57[0];
                      *v57[0] = *v41;
                    }

                    if (v40[1] == 0x8000000000000000)
                    {
                      v42 = mlir::ShapedType::getShape(&v59);
                      *(v57[0] + 1) = *(v42 + 8);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_50:
  result = mlir::mps::NonMaximumSuppressionOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(v46, v57);
  if (v57[0] != v58)
  {
    v44 = result;
    free(v57[0]);
    return v44;
  }

  return result;
}