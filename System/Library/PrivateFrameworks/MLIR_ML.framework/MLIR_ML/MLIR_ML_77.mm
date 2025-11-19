uint64_t mlir::mps::PadGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::SampleGridOp::verify(mlir::Operation **this)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*this + 9);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v6 = (*(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(*v6 + 17);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = 0;
  }

  if (v3)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v19 = *(*(v1 + 11) + 8);
    v20 = *(v1 + 3);
    v31[0] = v3;
    v29[0] = v6;
    hasRank = mlir::TensorType::hasRank(v31);
    if (hasRank && (mlir::TensorType::getShape(v31), v22 != 4))
    {
      if (!mlir::emitOptionalError<char const(&)[24]>(v20, 1, "input rank should be 4"))
      {
        return 0;
      }
    }

    else if (v19 >= 2)
    {
      if (!mlir::emitOptionalError<char const(&)[24]>(v20, 1, "unsupported layout"))
      {
        return 0;
      }
    }

    else
    {
      if (!mlir::TensorType::hasRank(v29))
      {
        goto LABEL_39;
      }

      Shape = mlir::TensorType::getShape(v29);
      mlir::TensorType::getShape(v29);
      if (v24 == 4)
      {
        v25 = *(Shape + 24);
        if (v25 == 0x8000000000000000 || v25 == 2)
        {
LABEL_39:
          if (!mlir::TensorType::hasRank(v31))
          {
            return 1;
          }

          if (!mlir::TensorType::hasRank(v29))
          {
            return 1;
          }

          v26 = mlir::TensorType::getShape(v31);
          v27 = *mlir::TensorType::getShape(v29);
          return v27 == 0x8000000000000000 || *v26 == 0x8000000000000000 || *v26 == v27 || mlir::emitOptionalError<char const(&)[24]>(v20, 1, "batch dimensions of input and coordinates do not match");
        }

        if (!mlir::emitOptionalError<char const(&)[24]>(v20, 1, "coordinates should have 2 channels"))
        {
          return 0;
        }
      }

      else if (!mlir::emitOptionalError<char const(&)[24]>(v20, 1, "coordinates rank should be 4"))
      {
        return 0;
      }
    }

    return 1;
  }

  v29[0] = "cannot sample a non-tensor type";
  v30 = 259;
  mlir::OpState::emitOpError(this, v29, v31);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
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

    v11 = __p;
    if (__p)
    {
      v12 = v37;
      v13 = __p;
      if (v37 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v37 = v11;
      operator delete(v13);
    }

    v14 = v34;
    if (v34)
    {
      v15 = v35;
      v16 = v34;
      if (v35 != v34)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v34;
      }

      v35 = v14;
      operator delete(v16);
    }

    if (v32 != &v33)
    {
      free(v32);
    }
  }

  return v10;
}

BOOL mlir::mps::SampleGridOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v65[0] = a4;
  v65[1] = a5;
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

  v54 = a6;
  v55[0] = 0;
  v56 = 0;
  v57 = v16;
  v58 = v17;
  v59 = v18;
  v60 = v19;
  v61 = a9;
  v62 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v54);
    if (v56 == 1)
    {
      v56 = 0;
    }

    mlir::OperationName::OperationName(v55, "mps.sample_grid", 15, Context);
    v56 = 1;
  }

  v63 = a4;
  v64 = a5;
  if (a5 >= 3 && (v21 = mlir::UnknownLoc::get(this, a2), (mlir::mps::SampleGridOpAdaptor::verify(&v54, v21) & 1) != 0))
  {
    v22 = mlir::ValueRange::dereference_iterator(v65, 0);
    v23 = *(*(*(v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v25 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(mlir::ValueRange::dereference_iterator(v65, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(*v26 + 136);
    if (v27 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v27 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v26 = 0;
    }

    if (v25)
    {
      v29 = v26 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot sample a non-tensor type");
    }

    v34 = *(*(&v57 + 1) + 8);
    v52 = v26;
    v53 = v25;
    v35 = qword_2573888B8[v34];
    v36 = qword_2573888F0[v34];
    v37 = qword_257388928[v34];
    v38 = qword_257388960[v34];
    v66 = v68;
    memset_pattern16(v68, &unk_25736EFD0, 0x20uLL);
    v67 = 0x400000004;
    if (mlir::TensorType::hasRank(&v53))
    {
      mlir::TensorType::getShape(&v53);
      if (v40 >= 4)
      {
        Shape = mlir::TensorType::getShape(&v53);
        v66[v35] = *(Shape + 8 * v35);
        v42 = mlir::TensorType::getShape(&v53);
        v66[v38] = *(v42 + 8 * v38);
      }
    }

    if (mlir::TensorType::hasRank(&v52))
    {
      mlir::TensorType::getShape(&v52);
      v43 = v66;
      if (v44 >= 4)
      {
        if (v66[v35] == 0x8000000000000000)
        {
          v45 = mlir::TensorType::getShape(&v52);
          v66[v35] = *v45;
        }

        v46 = mlir::TensorType::getShape(&v52);
        v66[v36] = *(v46 + 8);
        v47 = mlir::TensorType::getShape(&v52);
        v43 = v66;
        v66[v37] = *(v47 + 16);
      }
    }

    else
    {
      v43 = v66;
    }

    v48 = v67;
    ElementType = mlir::TensorType::getElementType(&v53);
    v50 = mlir::RankedTensorType::get(v43, v48, ElementType, 0);
    if (v66 != v68)
    {
      free(v66);
    }

    v51 = *(a11 + 8);
    if (v51 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v51) = v50;
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
  }

  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::SampleGridOpAdaptor::verify(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    if (a1[7])
    {
      if (a1[9])
      {
        return 1;
      }

      v24[0] = "'mps.sample_grid' op requires attribute 'sampling_mode'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v32;
          v19 = __p;
          if (v32 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v32 = v17;
          operator delete(v19);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v20 = v30;
        v8 = v29;
        if (v30 == v29)
        {
LABEL_54:
          v30 = v6;
          operator delete(v8);
LABEL_55:
          if (v27 != &v28)
          {
            free(v27);
          }

          return v2;
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

        while (v20 != v6);
LABEL_53:
        v8 = v29;
        goto LABEL_54;
      }
    }

    else
    {
      v24[0] = "'mps.sample_grid' op requires attribute 'padding_mode'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v14 = v30;
        v8 = v29;
        if (v30 == v29)
        {
          goto LABEL_54;
        }

        do
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v14 != v6);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v24[0] = "'mps.sample_grid' op requires attribute 'layout'";
    v25 = 259;
    mlir::emitError(a2, v24, v26);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v32;
        v5 = __p;
        if (v32 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v32 = v3;
        operator delete(v5);
      }

      v6 = v29;
      if (!v29)
      {
        goto LABEL_55;
      }

      v7 = v30;
      v8 = v29;
      if (v30 == v29)
      {
        goto LABEL_54;
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
      goto LABEL_53;
    }
  }

  return v2;
}

uint64_t mlir::mps::SampleGridOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::CostVolumeOp::verify(mlir::mps::CostVolumeOp *this)
{
  v44 = *MEMORY[0x277D85DE8];
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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v13 = v7[1];
LABEL_15:
    v42 = v2;
    v43 = v13;
    v14 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14)
    {
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
      if (v19 != &v17[2 * v18] && *v19 == v16)
      {
        v25 = v19[1];
LABEL_30:
        v40 = v14;
        v41 = v25;
        v26 = (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v26)
        {
          v27 = *v26;
          {
            v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v29 = *(v27 + 8);
            v30 = *(v27 + 16);
            if (!v30)
            {
              goto LABEL_44;
            }
          }

          else
          {
            mlir::TensorType::operator mlir::ShapedType();
            v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v29 = *(v27 + 8);
            v30 = *(v27 + 16);
            if (!v30)
            {
              goto LABEL_44;
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
LABEL_45:
            v38 = v26;
            v39 = v37;
            operator new();
          }
        }

LABEL_44:
        v37 = 0;
        goto LABEL_45;
      }
    }

LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

LABEL_14:
  v13 = 0;
  goto LABEL_15;
}

void *std::vector<long long>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t *mlir::mps::CostVolumeOp::getWindowHeight(mlir::mps::CostVolumeOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::CostVolumeOp::getWindowWidth(mlir::mps::CostVolumeOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 112);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::CostVolumeOp::getCoordIsXOnly(mlir::mps::CostVolumeOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v2)
  {
    return mlir::BoolAttr::getValue(&v2) | 0x100u;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::CostVolumeOp::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v79 = *MEMORY[0x277D85DE8];
  v74 = v76;
  memset_pattern16(v76, &unk_25736EFD0, 0x20uLL);
  v75 = 0x400000004;
  if (a7)
  {
    v17 = *a7;
    v18 = *(a7 + 1);
    v19 = *(a7 + 3);
    v20 = *(a7 + 5);
  }

  else
  {
    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v63 = a6;
  v64[0] = 0;
  v65 = 0;
  v66 = v17;
  v67 = v18;
  v68 = v19;
  v69 = v20;
  v70 = a9;
  v71 = a10;
  if (!a6)
  {
    v22 = v18;
    v72 = a4;
    v73 = a5;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v24 = 0;
    v27 = 1;
    v26 = 3;
    v25 = 2;
    v28 = v69;
    if (!v69)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  Context = mlir::Attribute::getContext(&v63);
  if (v65 == 1)
  {
    v65 = 0;
  }

  mlir::OperationName::OperationName(v64, "mps.cost_volume", 15, Context);
  v65 = 1;
  v22 = v67;
  v72 = a4;
  v73 = a5;
  if (!v67)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = *(v22 + 8);
  v24 = qword_2573888B8[v23];
  v25 = qword_2573888F0[v23];
  v26 = qword_257388928[v23];
  v27 = qword_257388960[v23];
  v28 = v69;
  if (!v69)
  {
    goto LABEL_18;
  }

LABEL_12:
  v29 = *(*v28 + 136);
  if (v29 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v28 = 0;
  }

  v77 = v28;
  if (v29 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (Type = mlir::IntegerAttr::getType(&v77), !mlir::Type::isUnsignedInteger(&Type)))
  {
LABEL_18:
    UInt = 1;
    v31 = a11;
    v32 = *(&v69 + 1);
    if (!*(&v69 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  UInt = mlir::IntegerAttr::getUInt(&v77);
  v31 = a11;
  v32 = *(&v69 + 1);
  if (!*(&v69 + 1))
  {
    goto LABEL_25;
  }

LABEL_19:
  v33 = *(*v32 + 136);
  if (v33 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v32 = 0;
  }

  v77 = v32;
  if (v33 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (Type = mlir::IntegerAttr::getType(&v77), !mlir::Type::isUnsignedInteger(&Type)))
  {
LABEL_25:
    v74[v27] = UInt;
    if (a5 != 3)
    {
      goto LABEL_37;
    }

LABEL_26:
    v35 = mlir::UnknownLoc::get(a1, v16);
    if ((mlir::mps::CostVolumeOpAdaptor::verify(&v63, v35) & 1) == 0)
    {
      goto LABEL_37;
    }

    v77 = v72;
    v78 = 1;
    v77 = mlir::ValueRange::offset_base(&v77, 1);
    v78 = 0;
    Type = *(mlir::ValueRange::dereference_iterator(&v77, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v77 = v72;
    v78 = 0;
    v59 = *(mlir::ValueRange::dereference_iterator(&v77, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::TypeRange::TypeRange(&v77, &Type, 2uLL);
    v77 = v72;
    v78 = 0;
    v37 = mlir::ValueRange::dereference_iterator(&v77, 0);
    Type = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v37 + 8) & 0xFFFFFFFFFFFFFFF8));
    v59 = v38;
    v77 = v72;
    v78 = 1;
    v77 = mlir::ValueRange::offset_base(&v77, 1);
    v78 = 0;
    v39 = mlir::ValueRange::dereference_iterator(&v77, 0);
    v40 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v39 + 8) & 0xFFFFFFFFFFFFFFF8));
    v57[0] = v40;
    v57[1] = v41;
    v77 = v72;
    v78 = 2;
    v77 = mlir::ValueRange::offset_base(&v77, 2);
    v78 = 0;
    v42 = mlir::ValueRange::dereference_iterator(&v77, 0);
    v77 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v42 + 8) & 0xFFFFFFFFFFFFFFF8));
    v78 = v43;
    if (Type && mlir::ShapedType::hasRank(&Type) && *(mlir::ShapedType::getShape(&Type) + 8 * v24) != 0x8000000000000000)
    {
      v51 = v24;
      p_Type = &Type;
    }

    else
    {
      if (!v40 || !mlir::ShapedType::hasRank(v57) || *(mlir::ShapedType::getShape(v57) + 8 * v24) == 0x8000000000000000)
      {
        if (!v77 || !mlir::ShapedType::hasRank(&v77) || *mlir::ShapedType::getShape(&v77) == 0x8000000000000000)
        {
LABEL_51:
          if (Type && mlir::ShapedType::hasRank(&Type) && *(mlir::ShapedType::getShape(&Type) + 8 * v25) != 0x8000000000000000)
          {
            v53 = (mlir::ShapedType::getShape(&Type) + 8 * v25);
          }

          else
          {
            if (!v77 || !mlir::ShapedType::hasRank(&v77) || *(mlir::ShapedType::getShape(&v77) + 8) == 0x8000000000000000)
            {
LABEL_60:
              if (Type && mlir::ShapedType::hasRank(&Type) && *(mlir::ShapedType::getShape(&Type) + 8 * v26) != 0x8000000000000000)
              {
                v54 = (mlir::ShapedType::getShape(&Type) + 8 * v26);
              }

              else
              {
                if (!v77 || !mlir::ShapedType::hasRank(&v77) || *(mlir::ShapedType::getShape(&v77) + 16) == 0x8000000000000000)
                {
LABEL_69:
                  v55 = mlir::RankedTensorType::get(v74, v75, v36, 0);
                  v56 = *(v31 + 8);
                  if (v56 >= *(v31 + 12))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  *(*v31 + 8 * v56) = v55;
                  ++*(v31 + 8);
                  v49 = v74;
                  if (v74 != v76)
                  {
                    goto LABEL_45;
                  }

                  return 1;
                }

                v54 = (mlir::ShapedType::getShape(&v77) + 16);
              }

              v74[v26] = *v54;
              goto LABEL_69;
            }

            v53 = (mlir::ShapedType::getShape(&v77) + 8);
          }

          v74[v25] = *v53;
          goto LABEL_60;
        }

        Shape = mlir::ShapedType::getShape(&v77);
LABEL_50:
        v74[v24] = *Shape;
        goto LABEL_51;
      }

      v51 = v24;
      p_Type = v57;
    }

    Shape = (mlir::ShapedType::getShape(p_Type) + 8 * v51);
    goto LABEL_50;
  }

  v34 = mlir::IntegerAttr::getUInt(&v77);
  v74[v27] = v34 * UInt;
  if (a5 == 3)
  {
    goto LABEL_26;
  }

LABEL_37:
  v60 = v62;
  v61 = 0x400000000;
  v45 = v75;
  if (v75)
  {
    if (v75 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v62, v74, 8 * v75);
    LODWORD(v61) = v45;
  }

  v46 = mlir::Float32Type::get(a1, v16);
  v47 = mlir::RankedTensorType::get(v60, v61, v46, 0);
  v48 = *(v31 + 8);
  if (v48 >= *(v31 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v31 + 8 * v48) = v47;
  ++*(v31 + 8);
  if (v60 != v62)
  {
    free(v60);
  }

  v49 = v74;
  if (v74 != v76)
  {
LABEL_45:
    free(v49);
  }

  return 1;
}

uint64_t mlir::mps::anonymous namespace::getUnsignedIntegerOr(uint64_t a1, uint64_t a2)
{
  if (a1 && ((v3 = *(*a1 + 136), v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v3 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) ? (v5 = 0) : (v5 = a1), (v8 = v5, v4) && (Type = mlir::IntegerAttr::getType(&v8), mlir::Type::isUnsignedInteger(&Type))))
  {
    return mlir::IntegerAttr::getUInt(&v8);
  }

  else
  {
    return a2;
  }
}

uint64_t mlir::mps::CostVolumeOpAdaptor::verify(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[9];
  if (a1[8] && (v27[0] = a1[8], v29[0] = mlir::IntegerAttr::getType(v27), !mlir::Type::isUnsignedInteger(v29, 64)))
  {
    v27[0] = "'mps.cost_volume' op attribute 'window_height' failed to satisfy constraint: 64-bit unsigned integer attribute";
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

  else if (v4 && (v27[0] = v4, v29[0] = mlir::IntegerAttr::getType(v27), !mlir::Type::isUnsignedInteger(v29, 64)))
  {
    v27[0] = "'mps.cost_volume' op attribute 'window_width' failed to satisfy constraint: 64-bit unsigned integer attribute";
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
    if (!v3 || *(v3 + 8) < 2u)
    {
      return 1;
    }

    v27[0] = "'mps.cost_volume' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is NHWC or NCHW";
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

uint64_t mlir::mps::anonymous namespace::inferMixedPrecisionResultElementType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_11:
    v16 = mlir::TypeRange::dereference_iterator(a1, 0);
    return mlir::getElementTypeOrSelf(v16);
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  for (i = 0; i != a2; ++i)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, i);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v8);
    ElementType = ElementTypeOrSelf;
    if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v17 = ElementTypeOrSelf;
      ElementType = mlir::ComplexType::getElementType(&v17);
      v6 = 1;
    }

    v4 |= mlir::Type::isBF16(&ElementType);
    v5 |= mlir::Type::isF32(&ElementType);
  }

  if ((v6 & 1) == 0)
  {
    if (v4 & v5)
    {
      ElementType = mlir::TypeRange::dereference_iterator(a1, 0);
      Context = mlir::Type::getContext(&ElementType);
      return mlir::Float32Type::get(Context, v14);
    }

    goto LABEL_11;
  }

  ElementType = mlir::TypeRange::dereference_iterator(a1, 0);
  v10 = mlir::Type::getContext(&ElementType);
  if (v5)
  {
    v12 = mlir::Float32Type::get(v10, v11);
  }

  else
  {
    v12 = mlir::Float16Type::get(v10, v11);
  }

  return mlir::ComplexType::get(v12);
}

uint64_t mlir::mps::CostVolumeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::SampleGridDataGradientOp::verify(mlir::Operation **this)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*this + 9);
  v3 = *(*(*(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = (*(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(*(v2[7] + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = *(v2[7] + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = 0;
  }

  v9 = v2[11];
  v10 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*v10 + 136);
  v13 = v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v5)
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v10 != 0 && !v13)
  {
    v46 = &v48;
    v47 = 0x400000000;
    v27 = *(v1 + 3);
    v17 = 1;
    if ((mlir::matchConstantWithIntVector<long long>(v9, &v46) & 1) == 0)
    {
      goto LABEL_100;
    }

    if (v47 != 4)
    {
      if (!mlir::emitOptionalError<char const(&)[24]>(v27, 1, "unexpected output shape passed"))
      {
        goto LABEL_99;
      }

      v28 = v46;
      v29 = *(*this + 3);
      v43[0] = v5;
      v45 = v8;
      if (v47 != 4)
      {
        if (mlir::emitOptionalError<char const(&)[24]>(v29, 1, "outputShape must have 4 values"))
        {
          goto LABEL_99;
        }

        goto LABEL_96;
      }

LABEL_52:
      if (mlir::TensorType::hasRank(v43))
      {
        Shape = mlir::TensorType::getShape(v43);
        if (v31 != 4)
        {
          if (!mlir::emitOptionalError<char const(&)[24]>(v29, 1, "incoming gradient rank should be 4"))
          {
            goto LABEL_96;
          }

          goto LABEL_99;
        }

        if (*v28 != 0x8000000000000000 && *Shape != 0x8000000000000000 && *Shape != *v28)
        {
          if (mlir::emitOptionalError<char const(&)[24]>(v29, 1, "batch dimensions of the incoming gradient do not match the outputShape"))
          {
            goto LABEL_99;
          }

LABEL_96:
          v17 = 0;
          v32 = v46;
          if (v46 == &v48)
          {
            return v17;
          }

          goto LABEL_101;
        }

        v33 = v28[3];
        if (v33 != 0x8000000000000000)
        {
          v34 = Shape[3];
          if (v34 != 0x8000000000000000 && v34 != v33)
          {
            if (mlir::emitOptionalError<char const(&)[24]>(v29, 1, "the number of channels of the incoming gradient does not match the outputShape"))
            {
              goto LABEL_99;
            }

            goto LABEL_96;
          }
        }
      }

      if (!mlir::TensorType::hasRank(&v45))
      {
        goto LABEL_87;
      }

      v35 = mlir::TensorType::getShape(&v45);
      if (v36 == 4)
      {
        v37 = v35[3];
        if (v37 != 0x8000000000000000 && v37 != 2)
        {
          if (mlir::emitOptionalError<char const(&)[24]>(v29, 1, "coordinates should have 2 channels"))
          {
            goto LABEL_99;
          }

          goto LABEL_96;
        }

        if (*v28 != 0x8000000000000000 && *v35 != 0x8000000000000000 && *v35 != *v28)
        {
          if (mlir::emitOptionalError<char const(&)[24]>(v29, 1, "batch dimensions of the coordinates donot match the outputShape"))
          {
            goto LABEL_99;
          }

          goto LABEL_96;
        }

LABEL_87:
        if (!mlir::TensorType::hasRank(v43) || !mlir::TensorType::hasRank(&v45))
        {
          goto LABEL_99;
        }

        v38 = mlir::TensorType::getShape(v43);
        v39 = mlir::TensorType::getShape(&v45);
        if (*v38 == 0x8000000000000000 || *v38 == *v39)
        {
          v40 = v38[1];
          if (v40 == 0x8000000000000000 || v40 == v39[1])
          {
            v41 = v38[2];
            if (v41 == 0x8000000000000000 || v41 == v39[2])
            {
              goto LABEL_99;
            }
          }
        }

        if (mlir::emitOptionalError<char const(&)[24]>(v29, 1, "dimensions of incoming gradient and coordinates do not match"))
        {
          goto LABEL_99;
        }

        goto LABEL_96;
      }

      if (!mlir::emitOptionalError<char const(&)[24]>(v29, 1, "coordinates rank should be 4"))
      {
        goto LABEL_96;
      }

LABEL_99:
      v17 = 1;
LABEL_100:
      v32 = v46;
      if (v46 == &v48)
      {
        return v17;
      }

LABEL_101:
      free(v32);
      return v17;
    }

    v28 = v46;
    if (*v46 == -1)
    {
      *v46 = 0x8000000000000000;
      if (v28[1] != -1)
      {
LABEL_49:
        if (v28[2] != -1)
        {
          goto LABEL_50;
        }

        goto LABEL_69;
      }
    }

    else if (*(v46 + 1) != -1)
    {
      goto LABEL_49;
    }

    v28[1] = 0x8000000000000000;
    if (v28[2] != -1)
    {
LABEL_50:
      if (v28[3] != -1)
      {
LABEL_51:
        v29 = *(*this + 3);
        v43[0] = v5;
        v45 = v8;
        goto LABEL_52;
      }

LABEL_70:
      v28[3] = 0x8000000000000000;
      goto LABEL_51;
    }

LABEL_69:
    v28[2] = 0x8000000000000000;
    if (v28[3] != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_70;
  }

  v43[0] = "cannot sample a non-tensor type";
  v44 = 259;
  mlir::OpState::emitOpError(this, v43, &v46);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
  if (v46)
  {
    mlir::InFlightDiagnostic::report(&v46);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v54;
      v20 = __p;
      if (v54 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v54 = v18;
      operator delete(v20);
    }

    v21 = v51;
    if (v51)
    {
      v22 = v52;
      v23 = v51;
      if (v52 != v51)
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
        v23 = v51;
      }

      v52 = v21;
      operator delete(v23);
    }

    v32 = v49;
    if (v49 != &v50)
    {
      goto LABEL_101;
    }
  }

  return v17;
}

uint64_t mlir::mps::SampleGridDataGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v37[0] = a4;
  v37[1] = a5;
  if (a5 == 3)
  {
    v13 = mlir::ValueRange::dereference_iterator(v37, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(mlir::ValueRange::dereference_iterator(v37, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(*v17 + 136);
    v20 = v18 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
    v21 = mlir::ValueRange::dereference_iterator(v37, 2);
    if (v16)
    {
      v22 = v17 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22 || v20)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot sample a non-tensor type");
    }

    v36 = v16;
    v38 = v40;
    v39 = 0x400000000;
    if (mlir::matchConstantWithIntVector<long long>(v21, &v38))
    {
      if (v39 == 4)
      {
        v25 = v38;
        if (*v38 == -1)
        {
          *v38 = 0x8000000000000000;
          if (v25[1] != -1)
          {
LABEL_29:
            if (v25[2] != -1)
            {
              goto LABEL_30;
            }

            goto LABEL_40;
          }
        }

        else if (*(v38 + 1) != -1)
        {
          goto LABEL_29;
        }

        v25[1] = 0x8000000000000000;
        if (v25[2] != -1)
        {
LABEL_30:
          if (v25[3] == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }

LABEL_40:
        v25[2] = 0x8000000000000000;
        if (v25[3] == -1)
        {
LABEL_41:
          v25[3] = 0x8000000000000000;
        }

LABEL_42:
        if (mlir::TensorType::hasRank(&v36))
        {
          mlir::TensorType::getShape(&v36);
          if (v30 == 4)
          {
            if (*mlir::TensorType::getShape(&v36) != 0x8000000000000000 && *v38 == 0x8000000000000000)
            {
              Shape = mlir::TensorType::getShape(&v36);
              *v38 = *Shape;
            }

            if (*(mlir::TensorType::getShape(&v36) + 24) != 0x8000000000000000 && *(v38 + 3) == 0x8000000000000000)
            {
              v32 = mlir::TensorType::getShape(&v36);
              *(v38 + 3) = *(v32 + 24);
            }
          }
        }

        v33 = v38;
        v34 = v39;
        ElementType = mlir::TensorType::getElementType(&v36);
        v27 = mlir::RankedTensorType::get(v33, v34, ElementType, 0);
        v28 = v38;
        if (v38 == v40)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (mlir::emitOptionalError<char const(&)[24]>(a2, a3, "unexpected output shape passed"))
      {
        goto LABEL_42;
      }
    }

    v26 = mlir::TensorType::getElementType(&v36);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = v38;
    if (v38 == v40)
    {
LABEL_35:
      v29 = *(a11 + 8);
      if (v29 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v29) = v27;
      ++*(a11 + 8);
      return 1;
    }

LABEL_34:
    free(v28);
    goto LABEL_35;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::SampleGridDataGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::LocalConvolutionOp::verify(mlir::Operation **this)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 9);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v43 = v2;
  v5 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v42 = v5;
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
    v44[0] = "cannot convolve a non-tensor type";
    v46 = 259;
    mlir::OpState::emitOpError(this, v44, &v47);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
    if (v47)
    {
      mlir::InFlightDiagnostic::report(&v47);
    }

    if (v56 == 1)
    {
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
      if (v51)
      {
        v14 = v52;
        v15 = v51;
        if (v52 != v51)
        {
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
          v15 = v51;
        }

        v52 = v13;
        operator delete(v15);
      }

      v33 = v49;
      if (v49 != &v50)
      {
LABEL_49:
        free(v33);
      }
    }
  }

  else
  {
    hasRank = mlir::TensorType::hasRank(&v43);
    if (hasRank && mlir::TensorType::hasRank(&v42))
    {
      v20 = *(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8);
      if (v20 < 6 && ((0x33u >> v20) & 1) != 0)
      {
        v21 = qword_257388998[v20];
        v22 = qword_257388888[v20];
        Shape = mlir::TensorType::getShape(&v43);
        v25 = v24;
        v26 = mlir::TensorType::getShape(&v42);
        mlir::TensorType::getShape(&v43);
        if (v27 == v21)
        {
          mlir::TensorType::getShape(&v42);
          if (v28 == v21)
          {
            v44[0] = v45;
            v44[1] = 0x400000000;
            v47 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
            v29 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v47);
            mlir::getIntValues<long long>(v29, v30, v44, 1);
            v31 = v26[v22];
            if (v31 == 0x8000000000000000 || v44[0][1] * *v44[0] == v31)
            {
              if (!v25)
              {
LABEL_69:
                v9 = 1;
LABEL_70:
                v33 = v44[0];
                if (v44[0] == v45)
                {
                  return v9;
                }

                goto LABEL_49;
              }

              while (1)
              {
                if (v22)
                {
                  v34 = *v26;
                  v35 = *Shape == 0x8000000000000000 || *Shape == v34;
                  if (!v35 && v34 != 0x8000000000000000)
                  {
                    break;
                  }
                }

                --v22;
                ++Shape;
                ++v26;
                if (!--v25)
                {
                  goto LABEL_69;
                }
              }

              v39 = "weight shape does not match input shape";
            }

            else
            {
              v39 = "weight channel count doesn't match kernel size";
            }

            v40 = v39;
            v41 = 259;
            mlir::OpState::emitOpError(this, &v40, &v47);
            v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
            goto LABEL_70;
          }

          v37 = "weight rank does not match data_layout";
        }

        else
        {
          v37 = "input rank does not match data_layout";
        }

        v44[0] = v37;
        v46 = 259;
        mlir::OpState::emitOpError(this, v44, &v47);
        v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
        return v9;
      }

      v44[0] = "unsupported data layout";
      v46 = 259;
      mlir::OpState::emitOpError(this, v44, &v47);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
      if (v47)
      {
        mlir::InFlightDiagnostic::report(&v47);
      }

      if (v56 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v48);
      }
    }

    else
    {
      return 1;
    }
  }

  return v9;
}

void *mlir::DenseElementsAttr::operator mlir::ElementsAttr(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::mps::ConstantOp::getAsAttribute();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
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
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::inferMixedPrecisionResultTypeFromZerothOperand(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v26[0] = a2;
  v26[1] = a3;
  if (a3 > 0)
  {
    v23 = v25;
    v24 = 0x200000000;
    if (a3 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = a2;
    v21 = 0;
    for (i = 0; i != a3; v21 = i)
    {
      v7 = *(mlir::ValueRange::dereference_iterator(&v20, i) + 8);
      if (v24 >= HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v23 + v24) = v7 & 0xFFFFFFFFFFFFFFF8;
      v8 = (v24 + 1);
      LODWORD(v24) = v24 + 1;
      i = v21 + 1;
    }

    mlir::TypeRange::TypeRange(&v20, v23, v8);
    v10 = *(mlir::ValueRange::dereference_iterator(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(*v10 + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v10 = 0;
    }

    v19 = v10;
    if (v10)
    {
      LOBYTE(v20) = 0;
      v22 = 0;
      v13 = mlir::TensorType::cloneWith(&v19, &v20, v9);
      v14 = *(a4 + 8);
      if (v14 < *(a4 + 12))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = mlir::UnrankedTensorType::get(v9);
      v14 = *(a4 + 8);
      if (v14 < *(a4 + 12))
      {
LABEL_16:
        *(*a4 + 8 * v14) = v13;
        ++*(a4 + 8);
        if (v23 != v25)
        {
          free(v23);
        }

        return 1;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = mlir::Float32Type::get(a1, a2);
  v16 = mlir::UnrankedTensorType::get(v15);
  v17 = *(a4 + 8);
  if (v17 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a4 + 8 * v17) = v16;
  ++*(a4 + 8);
  return 1;
}

uint64_t mlir::mps::LocalConvolutionOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::LocalConvolutionDataGradientOp::verify(mlir::Operation **this)
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*this + 9);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v51 = v3;
  v6 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = 0;
  }

  v50 = v6;
  if (v3)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v52[0] = "cannot convolve a non-tensor type";
    v54 = 259;
    mlir::OpState::emitOpError(this, v52, v55);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return v10;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v61;
      v13 = __p;
      if (v61 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v61 = v11;
      operator delete(v13);
    }

    v14 = v58;
    if (!v58)
    {
      goto LABEL_63;
    }

    v15 = v59;
    v16 = v58;
    if (v59 == v58)
    {
      goto LABEL_62;
    }

    do
    {
      v18 = *--v15;
      v17 = v18;
      *v15 = 0;
      if (v18)
      {
        MEMORY[0x259C63150](v17, 0x1000C8077774924);
      }
    }

    while (v15 != v14);
    goto LABEL_61;
  }

  v19 = *(*(v1 + 10) + 8);
  if (v19 < 6 && ((0x33u >> v19) & 1) != 0)
  {
    v21 = qword_257388998[v19];
    v22 = qword_257388888[v19];
    v52[0] = v53;
    v52[1] = 0x400000000;
    v55[0] = *(v1 + 12);
    v23 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v55);
    v10 = 1;
    mlir::getIntValues<long long>(v23, v24, v52, 1);
    v25 = *v52[0];
    v26 = v52[0][1];
    if (!mlir::TensorType::hasRank(&v51) || !mlir::TensorType::hasRank(&v50))
    {
LABEL_80:
      v41 = v52[0];
      if (v52[0] == v53)
      {
        return v10;
      }

      goto LABEL_64;
    }

    Shape = mlir::TensorType::getShape(&v51);
    v29 = v28;
    v30 = mlir::TensorType::getShape(&v50);
    mlir::TensorType::getShape(&v51);
    if (v31 == v21)
    {
      mlir::TensorType::getShape(&v50);
      if (v32 == v21)
      {
        v33 = v30[v22];
        if (v33 != 0x8000000000000000 && v26 * v25 != v33)
        {
          v47 = this;
          v48 = "weight channel count doesn't match kernel size";
          v49 = 259;
LABEL_79:
          mlir::OpState::emitOpError(v47, &v48, v55);
          v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
          goto LABEL_80;
        }

        if (!v29)
        {
          goto LABEL_80;
        }

        while (1)
        {
          if (v22)
          {
            v43 = *v30;
            v44 = *Shape == 0x8000000000000000 || *Shape == v43;
            if (!v44 && v43 != 0x8000000000000000)
            {
              break;
            }
          }

          --v22;
          ++Shape;
          ++v30;
          if (!--v29)
          {
            goto LABEL_80;
          }
        }

        v46 = "weight shape does not match gradient shape";
      }

      else
      {
        v46 = "weight rank does not match data_layout";
      }
    }

    else
    {
      v46 = "gradient rank does not match data_layout";
    }

    v48 = v46;
    v49 = 259;
    v47 = this;
    goto LABEL_79;
  }

  v52[0] = "unsupported data layout";
  v54 = 259;
  mlir::OpState::emitOpError(this, v52, v55);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
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

    v35 = __p;
    if (__p)
    {
      v36 = v61;
      v37 = __p;
      if (v61 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v61 = v35;
      operator delete(v37);
    }

    v14 = v58;
    if (!v58)
    {
LABEL_63:
      v41 = v56;
      if (v56 != &v57)
      {
LABEL_64:
        free(v41);
        return v10;
      }

      return v10;
    }

    v38 = v59;
    v16 = v58;
    if (v59 == v58)
    {
LABEL_62:
      v59 = v14;
      operator delete(v16);
      goto LABEL_63;
    }

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

    while (v38 != v14);
LABEL_61:
    v16 = v58;
    goto LABEL_62;
  }

  return v10;
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::LocalConvolutionWeightGradientOp::verify(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 9);
  v2 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v41 = v2;
  v5 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
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
    v38[0] = "cannot convolve a non-tensor type";
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
      if (v46)
      {
        v14 = v47;
        v15 = v46;
        if (v47 != v46)
        {
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
          v15 = v46;
        }

        v47 = v13;
        operator delete(v15);
      }

      if (v44 != &v45)
      {
        free(v44);
      }
    }
  }

  else
  {
    hasRank = mlir::TensorType::hasRank(&v41);
    if (!hasRank || !mlir::TensorType::hasRank(&v40))
    {
      return 1;
    }

    v20 = *(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8);
    if (v20 < 6 && ((0x33u >> v20) & 1) != 0)
    {
      v21 = qword_257388998[v20];
      mlir::TensorType::getShape(&v41);
      if (v22 == v21)
      {
        mlir::TensorType::getShape(&v40);
        if (v23 == v21)
        {
          Shape = mlir::TensorType::getShape(&v41);
          v26 = v25;
          v27 = mlir::TensorType::getShape(&v40);
          if (v26)
          {
            v28 = this;
            v9 = 1;
            while (1)
            {
              v30 = *Shape++;
              v29 = v30;
              v32 = *v27++;
              v31 = v32;
              v33 = v29 == 0x8000000000000000 || v29 == v31;
              if (!v33 && v31 != 0x8000000000000000)
              {
                break;
              }

              if (!--v26)
              {
                return v9;
              }
            }

            v38[0] = "gradient shape does not match input shape";
            v39 = 259;
            v37 = v28;
            goto LABEL_62;
          }

          return 1;
        }

        v35 = "gradient rank does not match data_layout";
      }

      else
      {
        v35 = "input rank does not match data_layout";
      }

      v38[0] = v35;
      v39 = 259;
      v37 = this;
LABEL_62:
      mlir::OpState::emitOpError(v37, v38, &v42);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
      return v9;
    }

    v38[0] = "unsupported data layout";
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

BOOL mlir::mps::LocalConvolutionWeightGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v82[2] = *MEMORY[0x277D85DE8];
  v77 = a4;
  v78 = a5;
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

  v68 = a6;
  v69[0] = 0;
  v70 = 0;
  v71 = v16;
  v72 = v17;
  v73 = a9;
  v18 = a5;
  v74 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v68);
    if (v70 == 1)
    {
      v70 = 0;
    }

    mlir::OperationName::OperationName(v69, "mps.local_convolution_weight_gradient", 37, Context);
    v70 = 1;
    v18 = v78;
  }

  v75 = a4;
  v76 = a5;
  if (v18 < 2 || (v20 = mlir::UnknownLoc::get(this, a2), (mlir::mps::LocalConvolutionWeightGradientOpAdaptor::verify(&v68, v20) & 1) == 0))
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
    return 1;
  }

  v21 = mlir::ValueRange::dereference_iterator(&v77, 0);
  v22 = *(*(*(v21 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v24 = *(v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v24 = 0;
  }

  v25 = mlir::ValueRange::dereference_iterator(&v77, 1);
  v26 = *(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v26 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v28 = *(v25 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot convolve a non-tensor type");
  }

  v34 = v71;
  v63 = v72;
  v66[0] = v67;
  v66[1] = 0x400000000;
  v35 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v63);
  mlir::getIntValues<long long>(v35, v36, v66, 1);
  v61 = *(v66[0] + 1);
  v62 = *v66[0];
  v37 = *(v34 + 8);
  v64 = v28;
  v65 = v24;
  v38 = qword_2573888B8[v37];
  v39 = qword_2573888F0[v37];
  v40 = qword_257388928[v37];
  v60 = qword_257388960[v37];
  v82[0] = v24;
  v82[1] = v28;
  mlir::TypeRange::TypeRange(&v79, v82, 2uLL);
  if (v37 >= 6 || ((0x33u >> v37) & 1) == 0)
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid tensorDataLayout"))
    {
      goto LABEL_58;
    }

    v53 = 0;
LABEL_46:
    v54 = *(a11 + 8);
    if (v54 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v54) = v53;
    ++*(a11 + 8);
    result = 1;
    v55 = v66[0];
    if (v66[0] != v67)
    {
      goto LABEL_59;
    }

    return result;
  }

  v59 = v41;
  v42 = qword_257388998[v37];
  if (!mlir::TensorType::hasRank(&v64) && !mlir::TensorType::hasRank(&v65))
  {
    v53 = mlir::UnrankedTensorType::get(v59);
    goto LABEL_46;
  }

  v79 = v81;
  HIDWORD(v80) = 4;
  memset_pattern16(v81, &unk_25736EFD0, 8 * v42);
  LODWORD(v80) = v42;
  if (mlir::TensorType::hasRank(&v64))
  {
    Shape = mlir::TensorType::getShape(&v64);
    if (v44 != v42)
    {
      v57 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input rank doesn't match data layout");
      goto LABEL_54;
    }

    v45 = v79;
    v79[v38] = *(Shape + 8 * v38);
    v45[v39] = *(Shape + 8 * v39);
    v45[v40] = *(Shape + 8 * v40);
  }

  if (!mlir::TensorType::hasRank(&v65))
  {
    v50 = v79;
    goto LABEL_50;
  }

  v46 = mlir::TensorType::getShape(&v65);
  if (v47 == v42)
  {
    v48 = v46;
    v49 = *(v46 + 8 * v38);
    v50 = v79;
    if (v49 == 0x8000000000000000)
    {
      v51 = *(v48 + 8 * v39);
      if (v51 == 0x8000000000000000)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v79[v38] = v49;
      v51 = *(v48 + 8 * v39);
      if (v51 == 0x8000000000000000)
      {
LABEL_42:
        v52 = *(v48 + 8 * v40);
        if (v52 != 0x8000000000000000)
        {
          goto LABEL_62;
        }

        goto LABEL_50;
      }
    }

    v50[v39] = v51;
    v52 = *(v48 + 8 * v40);
    if (v52 != 0x8000000000000000)
    {
LABEL_62:
      v50[v40] = v52;
    }

LABEL_50:
    v50[v60] = v61 * v62;
    v53 = mlir::RankedTensorType::get(v50, v80, v59, 0);
    v56 = 1;
    goto LABEL_55;
  }

  v57 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "gradient rank doesn't match data layout");
LABEL_54:
  v56 = v57;
  v53 = 0;
LABEL_55:
  if (v79 != v81)
  {
    free(v79);
  }

  if (v56)
  {
    goto LABEL_46;
  }

LABEL_58:
  result = 0;
  v55 = v66[0];
  if (v66[0] != v67)
  {
LABEL_59:
    v58 = result;
    free(v55);
    return v58;
  }

  return result;
}

uint64_t mlir::mps::LocalConvolutionWeightGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v69 = "'mps.local_convolution_weight_gradient' op requires attribute 'data_layout'";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v81;
        v17 = __p;
        if (v81 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v81 = v15;
        operator delete(v17);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v19 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_105;
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
      goto LABEL_104;
    }

    return v14;
  }

  v68 = a1[4];
  if (!v68)
  {
    v69 = "'mps.local_convolution_weight_gradient' op requires attribute 'dilation_rates'";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v81;
        v25 = __p;
        if (v81 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v81 = v23;
        operator delete(v25);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v26 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_105;
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
      goto LABEL_104;
    }

    return v14;
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = *v3;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_64;
      }
    }

    else
    {
      mlir::mps::ConstantOp::getAsAttribute();
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_64;
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
      v36 = v8[1];
      v69 = v3;
      v70 = v36;
      Type = mlir::ElementsAttr::getType(&v69);
      if (!Type)
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    }

LABEL_64:
    v69 = v3;
    v70 = 0;
    Type = mlir::ElementsAttr::getType(&v69);
    if (!Type)
    {
      goto LABEL_79;
    }

LABEL_67:
    v37 = *Type;
    {
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v47 = Type;
      mlir::mps::ConstantOp::verify();
      Type = v47;
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_79;
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
      v48 = v41[1];
      goto LABEL_80;
    }

LABEL_79:
    v48 = 0;
LABEL_80:
    v74 = Type;
    v75 = v48;
    Shape = mlir::ShapedType::getShape(&v74);
    v73 = 2;
    if (v50 == 1 && *Shape == v73)
    {
      v65 = v3;
      v66 = mlir::DenseElementsAttr::getType(&v65);
      v67 = v51;
      ElementType = mlir::ShapedType::getElementType(&v66);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        if (!v68)
        {
          return 1;
        }

        v69 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v68);
        v70 = v52;
        v73 = mlir::ElementsAttr::getType(&v69);
        v74 = mlir::TensorType::operator mlir::ShapedType(&v73);
        v75 = v53;
        v54 = mlir::ShapedType::getShape(&v74);
        ElementType = 2;
        if (v55 == 1 && *v54 == ElementType)
        {
          v64 = v68;
          v66 = mlir::DenseElementsAttr::getType(&v64);
          v67 = v56;
          v65 = mlir::ShapedType::getElementType(&v66);
          if (mlir::Type::isUnsignedInteger(&v65, 64))
          {
            return 1;
          }
        }

        v69 = "'mps.local_convolution_weight_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {2}";
        v71 = 259;
        mlir::emitError(a2, &v69, &v74);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
        if (v74)
        {
          mlir::InFlightDiagnostic::report(&v74);
        }

        if (v83 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v75);
        }

        return v14;
      }
    }

    v69 = "'mps.local_convolution_weight_gradient' op attribute 'kernel_sizes' failed to satisfy constraint: ui64 elements attribute of shape {2}";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v57 = __p;
      if (__p)
      {
        v58 = v81;
        v59 = __p;
        if (v81 != __p)
        {
          do
          {
            v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
          }

          while (v58 != v57);
          v59 = __p;
        }

        v81 = v57;
        operator delete(v59);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v60 = v79;
      v20 = v78;
      if (v79 == v78)
      {
LABEL_105:
        v79 = v18;
        operator delete(v20);
LABEL_106:
        if (v76 != &v77)
        {
          free(v76);
        }

        return v14;
      }

      do
      {
        v62 = *--v60;
        v61 = v62;
        *v60 = 0;
        if (v62)
        {
          MEMORY[0x259C63150](v61, 0x1000C8077774924);
        }
      }

      while (v60 != v18);
LABEL_104:
      v20 = v78;
      goto LABEL_105;
    }

    return v14;
  }

  v69 = "'mps.local_convolution_weight_gradient' op requires attribute 'kernel_sizes'";
  v71 = 259;
  mlir::emitError(a2, &v69, &v74);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
  if (v74)
  {
    mlir::InFlightDiagnostic::report(&v74);
  }

  if (v83 == 1)
  {
    if (v82 != &v83)
    {
      free(v82);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v81;
      v31 = __p;
      if (v81 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v81 = v29;
      operator delete(v31);
    }

    v18 = v78;
    if (!v78)
    {
      goto LABEL_106;
    }

    v32 = v79;
    v20 = v78;
    if (v79 == v78)
    {
      goto LABEL_105;
    }

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
    goto LABEL_104;
  }

  return v14;
}

uint64_t mlir::mps::LocalConvolutionWeightGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::anonymous namespace::verifyTileOp(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    goto LABEL_14;
  }

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
    v99 = v7;
    v101 = a4;
    mlir::TensorType::operator mlir::ShapedType();
    a4 = v101;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v99 + 8);
    v10 = *(v99 + 16);
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
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
LABEL_14:
    v111 = v6;
    v112 = 0;
    v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  v28 = v11[1];
  v111 = v6;
  v112 = v28;
  v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_15:
  v18 = *v17;
  {
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v100 = v18;
    v102 = a4;
    mlir::TensorType::operator mlir::ShapedType();
    a4 = v102;
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v100 + 8);
    v21 = *(v100 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

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
LABEL_29:
    v109 = v17;
    v110 = 0;
    if (a4)
    {
      goto LABEL_30;
    }

LABEL_41:
    v107 = 0;
    v108 = 0;
    v30 = 1;
    if (!mlir::ShapedType::hasRank(&v109))
    {
      goto LABEL_79;
    }

    goto LABEL_47;
  }

  v41 = v22[1];
  v109 = v17;
  v110 = v41;
  if (!a4)
  {
    goto LABEL_41;
  }

LABEL_30:
  v29 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29 == 0;
  if (!v29)
  {
    goto LABEL_46;
  }

  v31 = *v29;
  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (!v34)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v103 = v29;
    v42 = v31;
    mlir::TensorType::operator mlir::ShapedType();
    v29 = v103;
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v42 + 8);
    v34 = *(v42 + 16);
    if (!v34)
    {
      goto LABEL_46;
    }
  }

  v35 = v33;
  v36 = v34;
  do
  {
    v37 = v36 >> 1;
    v38 = &v35[2 * (v36 >> 1)];
    v40 = *v38;
    v39 = v38 + 2;
    v36 += ~(v36 >> 1);
    if (v40 < v32)
    {
      v35 = v39;
    }

    else
    {
      v36 = v37;
    }
  }

  while (v36);
  if (v35 != &v33[2 * v34] && *v35 == v32)
  {
    v66 = v35[1];
    v107 = v29;
    v108 = v66;
    if (!mlir::ShapedType::hasRank(&v109))
    {
      goto LABEL_79;
    }

    goto LABEL_47;
  }

LABEL_46:
  v107 = v29;
  v108 = 0;
  if (!mlir::ShapedType::hasRank(&v109))
  {
    goto LABEL_79;
  }

LABEL_47:
  Shape = mlir::ShapedType::getShape(&v109);
  if (v44 == 1)
  {
    v45 = Shape;
    if (*Shape != 0x8000000000000000)
    {
      if (mlir::ShapedType::hasRank(&v111))
      {
        mlir::ShapedType::getShape(&v111);
        if (v46 != *v45)
        {
          v118 = 259;
          mlir::Operation::emitOpError(&v119, a1, &v115);
          mlir::ShapedType::getShape(&v111);
          if (v119)
          {
            LODWORD(v104) = 2;
            *(&v104 + 1) = v47;
            if (v122 >= v123)
            {
              if (v121 > &v104 || v121 + 24 * v122 <= &v104)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v48 = v121 + 24 * v122;
            v49 = v104;
            *(v48 + 2) = v105;
            *v48 = v49;
            v50 = ++v122;
            if (v119)
            {
              LODWORD(v104) = 3;
              v105 = 35;
              if (v50 >= v123)
              {
                if (v121 > &v104 || v121 + 24 * v50 <= &v104)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v51 = v121 + 24 * v122;
              v52 = v104;
              *(v51 + 2) = v105;
              *v51 = v52;
              v53 = ++v122;
              if (v119)
              {
                v54 = *v45;
                LODWORD(v104) = 2;
                *(&v104 + 1) = v54;
                if (v53 >= v123)
                {
                  if (v121 > &v104 || v121 + 24 * v53 <= &v104)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v55 = v121 + 24 * v122;
                v56 = v104;
                *(v55 + 2) = v105;
                *v55 = v56;
                ++v122;
              }
            }
          }

          v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
          if (v119)
          {
            mlir::InFlightDiagnostic::report(&v119);
          }

          if (v130 == 1)
          {
            mlir::Diagnostic::~Diagnostic(v120);
          }

          return v57;
        }
      }
    }

LABEL_79:
    v115 = v117;
    v116 = 0x400000000;
    if ((mlir::matchConstantWithIntVector<long long>(a3, &v115) & 1) != 0 && v116)
    {
      v67 = 0;
      while ((*(v115 + v67) & 0x8000000000000000) == 0)
      {
        if (v116 == ++v67)
        {
          goto LABEL_84;
        }
      }

      v106 = 259;
      mlir::Operation::emitOpError(&v119, a1, &v104);
      if (v119)
      {
        v73 = *(v115 + v67);
        LODWORD(v113) = 2;
        *(&v113 + 1) = v73;
        if (v122 >= v123)
        {
          if (v121 > &v113 || v121 + 24 * v122 <= &v113)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v74 = v121 + 24 * v122;
        v75 = v113;
        *(v74 + 2) = v114;
        *v74 = v75;
        v76 = ++v122;
        if (v119)
        {
          LODWORD(v113) = 3;
          *(&v113 + 1) = " at index ";
          v114 = 10;
          if (v76 >= v123)
          {
            if (v121 > &v113 || v121 + 24 * v76 <= &v113)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v77 = v121 + 24 * v122;
          v78 = v113;
          *(v77 + 2) = v114;
          *v77 = v78;
          v79 = ++v122;
          if (v119)
          {
            LODWORD(v113) = 5;
            *(&v113 + 1) = v67;
            if (v79 >= v123)
            {
              if (v121 > &v113 || v121 + 24 * v79 <= &v113)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v80 = v121 + 24 * v122;
            v81 = v113;
            *(v80 + 2) = v114;
            *v80 = v81;
            ++v122;
          }
        }
      }

      v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
      if (v119)
      {
        mlir::InFlightDiagnostic::report(&v119);
      }

      if (v130)
      {
        if (v129 != &v130)
        {
          free(v129);
        }

        v82 = __p;
        if (__p)
        {
          v83 = v128;
          v84 = __p;
          if (v128 != __p)
          {
            do
            {
              v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
            }

            while (v83 != v82);
            v84 = __p;
          }

          v128 = v82;
          operator delete(v84);
        }

        v85 = v125;
        if (v125)
        {
          v86 = v126;
          v87 = v125;
          if (v126 != v125)
          {
            do
            {
              v89 = *--v86;
              v88 = v89;
              *v86 = 0;
              if (v89)
              {
                MEMORY[0x259C63150](v88, 0x1000C8077774924);
              }
            }

            while (v86 != v85);
            v87 = v125;
          }

          v126 = v85;
          operator delete(v87);
        }

        if (v121 != v124)
        {
          free(v121);
        }
      }
    }

    else
    {
LABEL_84:
      if (!v30 && mlir::ShapedType::hasRank(&v107) && mlir::ShapedType::hasRank(&v111) && (mlir::ShapedType::getShape(&v107), v69 = v68, mlir::ShapedType::getShape(&v111), v69 != v70))
      {
        v106 = 259;
        mlir::Operation::emitOpError(&v119, a1, &v104);
        mlir::ShapedType::getShape(&v111);
        if (v119)
        {
          LODWORD(v113) = 2;
          *(&v113 + 1) = v90;
          if (v122 >= v123)
          {
            if (v121 > &v113 || v121 + 24 * v122 <= &v113)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v91 = v121 + 24 * v122;
          v92 = v113;
          *(v91 + 2) = v114;
          *v91 = v92;
          v93 = ++v122;
          if (v119)
          {
            LODWORD(v113) = 3;
            v114 = 26;
            if (v93 >= v123)
            {
              if (v121 > &v113 || v121 + 24 * v93 <= &v113)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v94 = v121 + 24 * v122;
            v95 = v113;
            *(v94 + 2) = v114;
            *v94 = v95;
            ++v122;
          }
        }

        mlir::ShapedType::getShape(&v107);
        if (v119)
        {
          LODWORD(v113) = 2;
          *(&v113 + 1) = v96;
          if (v122 >= v123)
          {
            if (v121 > &v113 || v121 + 24 * v122 <= &v113)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v97 = v121 + 24 * v122;
          v98 = v113;
          *(v97 + 2) = v114;
          *v97 = v98;
          ++v122;
        }

        v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
        if (v119)
        {
          mlir::InFlightDiagnostic::report(&v119);
        }

        if (v130 == 1)
        {
          mlir::Diagnostic::~Diagnostic(v120);
        }
      }

      else
      {
        v57 = 1;
      }
    }

    v71 = v115;
    if (v115 != v117)
    {
      goto LABEL_90;
    }

    return v57;
  }

  v118 = 259;
  mlir::Operation::emitOpError(&v119, a1, &v115);
  v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v119);
  if (v119)
  {
    mlir::InFlightDiagnostic::report(&v119);
  }

  if (v130 == 1)
  {
    if (v129 != &v130)
    {
      free(v129);
    }

    v58 = __p;
    if (__p)
    {
      v59 = v128;
      v60 = __p;
      if (v128 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v128 = v58;
      operator delete(v60);
    }

    v61 = v125;
    if (v125)
    {
      v62 = v126;
      v63 = v125;
      if (v126 != v125)
      {
        do
        {
          v65 = *--v62;
          v64 = v65;
          *v62 = 0;
          if (v65)
          {
            MEMORY[0x259C63150](v64, 0x1000C8077774924);
          }
        }

        while (v62 != v61);
        v63 = v125;
      }

      v126 = v61;
      operator delete(v63);
    }

    v71 = v121;
    if (v121 != v124)
    {
LABEL_90:
      free(v71);
    }
  }

  return v57;
}

uint64_t mlir::mps::TileOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v33[0] = a4;
  v33[1] = a5;
  v11 = mlir::ValueRange::dereference_iterator(v33, 0);
  v12 = mlir::ValueRange::dereference_iterator(v33, 1);
  v13 = *(v11 + 8);
  v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v13 & 0xFFFFFFFFFFFFFFF8));
  v32[0] = v14;
  v32[1] = v15;
  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
    v27 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

  else
  {
    v37 = v39;
    v38 = 0x400000000;
    if ((mlir::matchConstantWithIntVector<long long>(v12, &v37) & 1) == 0 && v38)
    {
      LODWORD(v38) = 0;
    }

    Shape = mlir::ShapedType::getShape(v32);
    v34 = v36;
    v35 = 0x400000000;
    if (v17)
    {
      v18 = Shape;
      v19 = v17;
      if (v17 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16(v36, &unk_25736EFD0, 8 * v17);
      v20 = v19;
      LODWORD(v35) = v19;
      if (v19 == v38)
      {
        v21 = 0;
        v22 = v37;
        do
        {
          v24 = *(v18 + 8 * v21);
          v23 = 0x8000000000000000;
          if (v24 != 0x8000000000000000)
          {
            v25 = v22[v21];
            if (v25 < 0)
            {
              v23 = 0x8000000000000000;
            }

            else
            {
              v23 = ((v25 * v24) & ~((v25 * v24) >> 63));
            }
          }

          v36[v21++] = v23;
        }

        while (v19 != v21);
      }
    }

    else
    {
      v20 = 0;
    }

    v28 = v20;
    ElementType = mlir::ShapedType::getElementType(v32);
    v27 = mlir::RankedTensorType::get(v36, v28, ElementType, 0);
    if (v34 != v36)
    {
      free(v34);
    }

    if (v37 != v39)
    {
      free(v37);
    }
  }

  v30 = *(a11 + 8);
  if (v30 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v30) = v27;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::TileOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::TileGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8);
  v12 = mlir::ValueRange::dereference_iterator(v14, 1);
}

uint64_t mlir::mps::anonymous namespace::inferReturnTypesForGradient(void *a1, void *a2, uint64_t a3)
{
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
  v14[0] = v5;
  v14[1] = v6;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a2);
  if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v11 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = ElementTypeOrSelf;
    Shape = mlir::ShapedType::getShape(v14);
    v11 = mlir::RankedTensorType::get(Shape, v10, v8, 0);
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
LABEL_7:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  *(*a3 + 8 * v12) = v11;
  ++*(a3 + 8);
  return 1;
}

uint64_t mlir::mps::TileGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::CastOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x277D85DE8];
  v35[0] = a4;
  v35[1] = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v27 = a6;
  v28[0] = 0;
  v29 = 0;
  v30 = v14;
  v31 = a9;
  v32 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v27);
    if (v29 == 1)
    {
      v29 = 0;
    }

    mlir::OperationName::OperationName(v28, "mps.cast", 8, Context);
    v29 = 1;
  }

  v33 = a4;
  v34 = a5;
  if (a5)
  {
    v16 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::CastOpAdaptor::verify(&v27, v16))
    {
      v36 = v33;
      v17 = mlir::ValueRange::dereference_iterator(&v36, 0);
      v26[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
      v26[1] = v18;
      if (v26[0])
      {
        *&v36 = v30;
        Value = mlir::TypeAttr::getValue(&v36);
        LOBYTE(v36) = 0;
        v37 = 0;
        v20 = mlir::ShapedType::cloneWith(v26, &v36, Value);
        v21 = *(a11 + 8);
        if (v21 < *(a11 + 12))
        {
LABEL_12:
          *(*a11 + 8 * v21) = v20;
          goto LABEL_15;
        }
      }

      else
      {
        v20 = *(mlir::ValueRange::dereference_iterator(v35, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v21 = *(a11 + 8);
        if (v21 < *(a11 + 12))
        {
          goto LABEL_12;
        }
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  v22 = mlir::Float32Type::get(this, a2);
  v23 = mlir::UnrankedTensorType::get(v22);
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v24) = v23;
LABEL_15:
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::CastOpAdaptor::verify(uint64_t a1, uint64_t a2)
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
    v12 = "'mps.cast' op requires attribute 'resultElementType'";
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

uint64_t mlir::mps::CastOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::ReinterpretCastOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v50[0] = a4;
  v50[1] = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v42 = a6;
  v43[0] = 0;
  v44 = 0;
  v45 = v14;
  v46 = a9;
  v47 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v42);
    if (v44 == 1)
    {
      v44 = 0;
    }

    mlir::OperationName::OperationName(v43, "mps.reinterpret_cast", 20, Context);
    v44 = 1;
  }

  v48 = a4;
  v49 = a5;
  if (!a5 || (v16 = mlir::UnknownLoc::get(this, a2), (mlir::mps::ReinterpretCastOpAdaptor::verify(&v42, v16) & 1) == 0))
  {
    v24 = mlir::Float32Type::get(this, a2);
    v25 = mlir::UnrankedTensorType::get(v24);
    v26 = *(a11 + 8);
    if (v26 >= *(a11 + 12))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v17 = mlir::ValueRange::dereference_iterator(v50, 0);
  v38[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
  v38[1] = v18;
  v39 = v45;
  Value = mlir::TypeAttr::getValue(&v39);
  if (!v38[0] || (mlir::ShapedType::hasRank(v38) & 1) == 0)
  {
    v25 = mlir::UnrankedTensorType::get(Value);
    v26 = *(a11 + 8);
    if (v26 >= *(a11 + 12))
    {
LABEL_18:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_15:
    *(*a11 + 8 * v26) = v25;
    ++*(a11 + 8);
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v38);
  v21 = mlir::ShapedType::getShape(v38);
  v23 = (v21 + 8 * v22);
  v39 = v41;
  v40 = 0x400000000;
  if (((v23 - Shape) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v28 = 0;
  if (v23 != Shape)
  {
    memcpy(v39, Shape, v23 - Shape);
    v28 = v40;
  }

  LODWORD(v40) = v28 + ((v23 - Shape) >> 3);
  ElementBitWidth = mlir::mps::getElementBitWidth(v38[0]);
  v30 = mlir::mps::getElementBitWidth(Value);
  v31 = v39;
  v32 = v40;
  v33 = v39 + 8 * v40;
  v34 = *(v33 - 1);
  if (v34 == 0x8000000000000000)
  {
    goto LABEL_27;
  }

  if (ElementBitWidth > v30)
  {
    v35 = ElementBitWidth / v30 * v34;
LABEL_26:
    *(v33 - 1) = v35;
    goto LABEL_27;
  }

  if (ElementBitWidth < v30)
  {
    v35 = v34 / (v30 / ElementBitWidth);
    goto LABEL_26;
  }

LABEL_27:
  v36 = mlir::RankedTensorType::get(v31, v32, Value, 0);
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  if (v39 != v41)
  {
    free(v39);
  }

  return 1;
}

uint64_t mlir::mps::ReinterpretCastOpAdaptor::verify(uint64_t a1, uint64_t a2)
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
    v12 = "'mps.reinterpret_cast' op requires attribute 'result_element_type'";
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

BOOL mlir::mps::ReinterpretCastOp::verify(mlir::Operation **this)
{
  v50 = *MEMORY[0x277D85DE8];
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
  v36[0] = v2;
  v36[1] = v13;
  ElementType = mlir::ShapedType::getElementType(v36);
  if (!mlir::ShapedType::hasRank(v36))
  {
    return 1;
  }

  ElementBitWidth = mlir::mps::getElementBitWidth(ElementType);
  v39[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Value = mlir::TypeAttr::getValue(v39);
  v17 = mlir::mps::getElementBitWidth(Value);
  Shape = mlir::ShapedType::getShape(v36);
  if (ElementBitWidth >= v17)
  {
    return 1;
  }

  v20 = *(Shape + 8 * v19 - 8);
  if (v20 == 0x8000000000000000)
  {
    return 1;
  }

  v21 = v17 / ElementBitWidth;
  if (!(v20 % v21))
  {
    return 1;
  }

  v34 = "innermost dimension needs to be divisible by ";
  v35 = 259;
  mlir::OpState::emitOpError(this, &v34, v39);
  if (v39[0])
  {
    LODWORD(v37) = 5;
    *(&v37 + 1) = v21;
    if (v41 >= v42)
    {
      if (v40 > &v37 || v40 + 24 * v41 <= &v37)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v40 + 24 * v41;
    v23 = v37;
    *(v22 + 2) = v38;
    *v22 = v23;
    ++v41;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  v25 = result;
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
    result = v25;
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
      result = v25;
    }

    v26 = __p;
    if (__p)
    {
      v27 = v47;
      v28 = __p;
      if (v47 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v47 = v26;
      operator delete(v28);
      result = v25;
    }

    v29 = v44;
    if (v44)
    {
      v30 = v45;
      v31 = v44;
      if (v45 != v44)
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
        v31 = v44;
      }

      v45 = v29;
      operator delete(v31);
      result = v25;
    }

    if (v40 != &v43)
    {
      free(v40);
      return v25;
    }
  }

  return result;
}

uint64_t mlir::mps::ReinterpretCastOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::ShapeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v24[0] = a4;
  v24[1] = a5;
  if (a5 == 1)
  {
    v13 = mlir::ValueRange::dereference_iterator(v24, 0);
    v22[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8));
    v22[1] = v14;
    if (v22[0])
    {
      if (mlir::ShapedType::hasRank(v22))
      {
        mlir::ShapedType::getShape(v22);
      }

      else
      {
        v15 = 0x8000000000000000;
      }

      v21 = v15;
      v23 = *(mlir::ValueRange::dereference_iterator(v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      Context = mlir::Type::getContext(&v23);
      v18 = mlir::IntegerType::get(Context, 32, 1u);
      v19 = mlir::RankedTensorType::get(&v21, 1, v18, 0);
      v20 = *(a11 + 8);
      if (v20 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v20) = v19;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      v23 = *(mlir::ValueRange::dereference_iterator(v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a2, a3, "unexpected type ", &v23);
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[17],mlir::Type>(uint64_t a1, char a2, char *a3, uint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v16);
  if (v16)
  {
    mlir::Diagnostic::append<char const(&)[3],mlir::ShapedType &>(&v17, a3, a4);
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v6;
}

uint64_t mlir::mps::ShapeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::RankOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = a4;
  v18[1] = a5;
  if (a5 == 1)
  {
    v16 = 1;
    v17 = *(mlir::ValueRange::dereference_iterator(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Type::getContext(&v17);
    v12 = mlir::IntegerType::get(Context, 32, 1u);
    v13 = mlir::RankedTensorType::get(&v16, 1, v12, 0);
    v14 = *(a11 + 8);
    if (v14 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v14) = v13;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::RankOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::SizeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = a4;
  v18[1] = a5;
  if (a5 == 1)
  {
    v16 = 1;
    v17 = *(mlir::ValueRange::dereference_iterator(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Type::getContext(&v17);
    v12 = mlir::IntegerType::get(Context, 32, 1u);
    v13 = mlir::RankedTensorType::get(&v16, 1, v12, 0);
    v14 = *(a11 + 8);
    if (v14 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v14) = v13;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::SizeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::DimensionSizeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v30[0] = a4;
  v30[1] = a5;
  if (a5 == 2)
  {
    v11 = mlir::ValueRange::dereference_iterator(v30, 1);
    v25[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8));
    v25[1] = v12;
    Shape = mlir::ShapedType::getShape(v25);
    v27 = v29;
    v28 = 0x600000000;
    if (((8 * v13) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = 0;
    v17 = 8 * v13;
    if (v13)
    {
      memcpy(v27, Shape, v17);
      v16 = v28;
    }

    v18 = v16 + (v17 >> 3);
    LODWORD(v28) = v18;
    if (!v18)
    {
      if (!HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *v27 = 1;
      v18 = v28 + 1;
      LODWORD(v28) = v28 + 1;
    }

    v19 = v27;
    v20 = v18;
    v26 = *(mlir::ValueRange::dereference_iterator(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Type::getContext(&v26);
    v22 = mlir::IntegerType::get(Context, 32, 1u);
    v23 = mlir::RankedTensorType::get(v19, v20, v22, 0);
    v24 = *(a11 + 8);
    if (v24 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v24) = v23;
    ++*(a11 + 8);
    if (v27 != v29)
    {
      free(v27);
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::DimensionSizeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::DynamicShapeCastOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
LABEL_20:
    v24 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v25) = v24;
    ++*(a11 + 8);
    return 1;
  }

  if (a7)
  {
    v13 = *a7;
    v58 = a6;
    v59[0] = 0;
    v60 = 0;
    v61 = v13;
    v62 = a9;
    v63 = a10;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v58 = a6;
    v59[0] = 0;
    v60 = 0;
    v61 = 0;
    v62 = a9;
    v63 = a10;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  Context = mlir::Attribute::getContext(&v58);
  if (v60 == 1)
  {
    v60 = 0;
  }

  mlir::OperationName::OperationName(v59, "mps.dynamic_shape_cast", 22, Context);
  v60 = 1;
LABEL_10:
  v64 = a4;
  v65 = a5;
  v55 = a4;
  v56 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v55, 0);
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8));
  v49[0] = v17;
  v49[1] = v18;
  if (!v17)
  {
LABEL_19:
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v17);
    goto LABEL_20;
  }

  if (!mlir::ShapedType::hasRank(v49) || v61)
  {
    v17 = v49[0];
    goto LABEL_19;
  }

  mlir::ShapedType::getShape(v49);
  if (!v19)
  {
    v27 = v65;
    v55 = v64;
    v56 = 1;
    v28 = mlir::ValueRange::offset_base(&v55, 1);
    if (v27 != v56)
    {
      v55 = v28;
      v56 = 0;
      if (mlir::ValueRange::dereference_iterator(&v55, 0))
      {
        v29 = mlir::getElementTypeOrSelf(v49[0]);
        return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v29);
      }
    }

    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v49[0]);
    return 1;
  }

  v55 = v57;
  v56 = 0x600000000;
  v20 = v65;
  __b = v64;
  v53 = 1;
  v21 = mlir::ValueRange::offset_base(&__b, 1);
  if (v20 != v53)
  {
    __b = v21;
    v53 = 0;
    v30 = mlir::ValueRange::dereference_iterator(&__b, 0);
    if ((mlir::matchConstantWithIntVector<long long>(v30, &v55) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    __b = v54;
    v53 = 0x600000000;
    v31 = v55;
    v32 = v56;
    mlir::ShapedType::getShape(v49);
    {
      Shape = mlir::ShapedType::getShape(v49);
      v35 = mlir::ShapedType::getShape(v49);
      llvm::SmallVector<long long,6u>::SmallVector<long long const*,void>(&v50, Shape, (v35 + 8 * v36));
      v37 = v50;
      if (v53)
      {
        v38 = __b;
        v39 = 8 * v53;
        do
        {
          v40 = *v38++;
          *(v37 + 8 * v40) = 0x8000000000000000;
          v39 -= 8;
        }

        while (v39);
      }

      v41 = mlir::ShapedType::clone(v49, v37, DWORD2(v50));
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
      if (v50 != &v51)
      {
        free(v50);
      }

      result = 1;
    }

    else
    {
      v50 = v64;
      v45 = mlir::ValueRange::dereference_iterator(&v50, 0);
      v46 = mlir::getElementTypeOrSelf(v45);
      result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v46);
    }

    if (__b != v54)
    {
      v47 = result;
      free(__b);
      result = v47;
    }

    goto LABEL_45;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v55))
  {
    goto LABEL_28;
  }

LABEL_16:
  mlir::ShapedType::getShape(v49);
  v23 = v22;
  __b = v54;
  HIDWORD(v53) = 6;
  if (v22 >= 7)
  {
    LODWORD(v53) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    memset_pattern16(v54, &unk_25736EFD0, 8 * v22);
  }

  LODWORD(v53) = v23;
  *&v50 = v54;
  *(&v50 + 1) = v23;
  v51 = 1;
  ElementType = mlir::ShapedType::getElementType(v49);
  v43 = mlir::ShapedType::cloneWith(v49, &v50, ElementType);
  v44 = *(a11 + 8);
  if (v44 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v44) = v43;
  ++*(a11 + 8);
  if (__b != v54)
  {
    free(__b);
  }

  result = 1;
LABEL_45:
  if (v55 != v57)
  {
    v48 = result;
    free(v55);
    return v48;
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::getPositiveAxes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, mlir::Operation *a7)
{
  v58[6] = *MEMORY[0x277D85DE8];
  v56 = v58;
  v57 = 0x600000000;
  if (!a2)
  {
    goto LABEL_50;
  }

  v13 = 8 * a2;
  do
  {
    v17 = *a1;
    if (v18)
    {
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v15 = a4;
    }

    else
    {
      v14 = v57;
      v15 = &v56;
      if (v57 >= HIDWORD(v57))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      PositiveAxis = v17;
    }

    *&(*v15)[8 * v14] = PositiveAxis;
    ++*(v15 + 2);
    ++a1;
    v13 -= 8;
  }

  while (v13);
  if (v57)
  {
    if (a6)
    {
      *&v42 = "invalid axes: ";
      v44 = 259;
      mlir::emitError(a5, &v42, v45);
      v19 = v57;
      if (v57)
      {
        v20 = v56;
        if (v45[0])
        {
          v21 = *v56;
          LODWORD(v42) = 2;
          *(&v42 + 1) = v21;
          if (v47 >= v48)
          {
            if (v46 > &v42 || v46 + 24 * v47 <= &v42)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v22 = v46 + 24 * v47;
          v23 = v42;
          *(v22 + 2) = v43;
          *v22 = v23;
          ++v47;
        }

        if (v19 != 1 && v45[0])
        {
          v24 = (v20 + 8);
          v25 = 8 * v19 - 16;
LABEL_21:
          LODWORD(v42) = 3;
          *(&v42 + 1) = ", ";
          v43 = 2;
          if (v47 >= v48)
          {
            if (v46 > &v42 || v46 + 24 * v47 <= &v42)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v26 = v46 + 24 * v47;
          v27 = v42;
          *(v26 + 2) = v43;
          *v26 = v27;
          v28 = ++v47;
          if (v45[0])
          {
            v29 = *v24;
            LODWORD(v42) = 2;
            *(&v42 + 1) = v29;
            if (v28 >= v48)
            {
              if (v46 > &v42 || v46 + 24 * v28 <= &v42)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v30 = v46 + 24 * v47;
            v31 = v42;
            *(v30 + 2) = v43;
            *v30 = v31;
            ++v47;
          }

          while (v25)
          {
            ++v24;
            v25 -= 8;
            if (v45[0])
            {
              goto LABEL_21;
            }
          }
        }
      }

      v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
      if (v45[0])
      {
        mlir::InFlightDiagnostic::report(v45);
      }

      if (v55 == 1)
      {
        if (v54 != &v55)
        {
          free(v54);
        }

        v33 = __p;
        if (__p)
        {
          v34 = v53;
          v35 = __p;
          if (v53 != __p)
          {
            do
            {
              v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
            }

            while (v34 != v33);
            v35 = __p;
          }

          v53 = v33;
          operator delete(v35);
        }

        v36 = v50;
        if (v50)
        {
          v37 = v51;
          v38 = v50;
          if (v51 != v50)
          {
            do
            {
              v40 = *--v37;
              v39 = v40;
              *v37 = 0;
              if (v40)
              {
                MEMORY[0x259C63150](v39, 0x1000C8077774924);
              }
            }

            while (v37 != v36);
            v38 = v50;
          }

          v51 = v36;
          operator delete(v38);
        }

        if (v46 != &v49)
        {
          free(v46);
        }
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
LABEL_50:
    v32 = 1;
  }

  if (v56 != v58)
  {
    free(v56);
  }

  return v32;
}

uint64_t mlir::mps::DynamicShapeCastOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::DynamicShapeCastOp::verify(mlir::Operation **this)
{
  v47[6] = *MEMORY[0x277D85DE8];
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
      v15 = v7[1];
      v32 = v2;
      v33 = v15;
      if (!mlir::ShapedType::hasRank(&v32))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v32 = v2;
  v33 = 0;
  if (!mlir::ShapedType::hasRank(&v32))
  {
    return 1;
  }

LABEL_15:
  v13 = *this;
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
    return 1;
  }

  v45 = v47;
  v46 = 0x600000000;
  if (*(v13 + 17) != 1)
  {
    if ((mlir::matchConstantWithIntVector<long long>(*(*(v13 + 9) + 56), &v45) & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    v43[0] = v44;
    v43[1] = 0x600000000;
    v16 = v45;
    v17 = v46;
    mlir::ShapedType::getShape(&v32);
    {
      result = 1;
    }

    else
    {
      v30 = "failed: could not extract valid positive axes values for the op";
      v31 = 259;
      mlir::OpState::emitOpError(this, &v30, v34);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      v19 = result;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
        result = v19;
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
          result = v19;
        }

        v20 = __p;
        if (__p)
        {
          v21 = v40;
          v22 = __p;
          if (v40 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v40 = v20;
          operator delete(v22);
          result = v19;
        }

        v23 = v37;
        if (v37)
        {
          v24 = v38;
          v25 = v37;
          if (v38 != v37)
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
            v25 = v37;
          }

          v38 = v23;
          operator delete(v25);
          result = v19;
        }

        if (v35 != &v36)
        {
          free(v35);
          result = v19;
        }
      }
    }

    if (v43[0] != v44)
    {
      v28 = result;
      free(v43[0]);
      result = v28;
    }

    goto LABEL_48;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v45))
  {
    goto LABEL_24;
  }

LABEL_20:
  result = 1;
LABEL_48:
  if (v45 != v47)
  {
    v29 = result;
    free(v45);
    return v29;
  }

  return result;
}

BOOL mlir::mps::BroadcastToOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v40[0] = a4;
  v40[1] = a5;
  if (a5 == 2)
  {
    v11 = mlir::ValueRange::dereference_iterator(v40, 0);
    v33[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8));
    v33[1] = v12;
    v13 = mlir::ValueRange::dereference_iterator(v40, 1);
    v37 = v39;
    v38 = 0x600000000;
    if (v33[0] && (v14 = v13, mlir::ShapedType::hasRank(v33)) && (mlir::matchConstantWithIntVector<long long>(v14, &v37) & 1) != 0)
    {
      Shape = mlir::ShapedType::getShape(v33);
      v34 = v36;
      v35 = 0x600000000;
      if (v16 <= v38)
      {
        v17 = v38;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        v18 = Shape;
        v19 = v16;
        if (v17 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        bzero(v36, 8 * v17);
        LODWORD(v35) = v17;
        v25 = 0;
        v17 = v17;
        v26 = v37 + 8 * v38 - 8;
        v27 = v38 - 1;
        do
        {
          if ((v19 - 1 + v25) < 0)
          {
            v28 = 1;
            if (((v27 + v25) & 0x8000000000000000) == 0)
            {
LABEL_26:
              v29 = *&v26[8 * v25];
              if (v29 == 0x8000000000000000)
              {
                v30 = v28;
              }

              else
              {
                v30 = *&v26[8 * v25];
              }

              if (v29 != 1)
              {
                v28 = v30;
              }
            }
          }

          else
          {
            v28 = *(v18 + 8 * v19 - 8 + 8 * v25);
            if (((v27 + v25) & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }
          }

          *(&v36[v17 - 1] + v25--) = v28;
        }

        while (-v17 != v25);
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33[0]);
      v23 = mlir::RankedTensorType::get(v36, v17, ElementTypeOrSelf, 0);
      if (v34 != v36)
      {
        v32 = v23;
        free(v34);
        v23 = v32;
      }
    }

    else
    {
      v21 = mlir::ValueRange::dereference_iterator(v40, 0);
      v22 = mlir::getElementTypeOrSelf((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
      v23 = mlir::UnrankedTensorType::get(v22);
    }

    v24 = *(a11 + 8);
    if (v24 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v24) = v23;
    ++*(a11 + 8);
    if (v37 != v39)
    {
      free(v37);
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::BroadcastToOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::BroadcastGradientArgsOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v54[0] = a4;
  v54[1] = a5;
  if (a5 == 2)
  {
    v12 = mlir::ValueRange::dereference_iterator(v54, 0);
    v51 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
    v52 = v13;
    v14 = mlir::ValueRange::dereference_iterator(v54, 1);
    v49 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
    v50 = v15;
    if (!mlir::ShapedType::hasRank(&v51) || !mlir::ShapedType::hasRank(&v49))
    {
LABEL_27:
      v53[0] = 0x8000000000000000;
      v43 = mlir::IntegerType::get(a1, 32, 1u);
      v44 = mlir::RankedTensorType::get(v53, 1, v43, 0);
      v45 = 0;
      v46 = *(a11 + 8);
      if (v46 < *(a11 + 12))
      {
LABEL_28:
        *(*a11 + 8 * v46) = v44;
        ++*(a11 + 8);
        if (v45)
        {
          operator delete(v45);
        }

        return 1;
      }

LABEL_32:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    Shape = mlir::ShapedType::getShape(&v51);
    if (!v17)
    {
LABEL_17:
      v30 = mlir::ShapedType::getShape(&v49);
      if (!v31)
      {
        goto LABEL_31;
      }

      v32 = (v31 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v32 >= 3)
      {
        v35 = v32 + 1;
        v36 = (v32 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v34 = (v30 + 8 * v36);
        v37 = (v30 + 16);
        v38 = 0uLL;
        v39 = vnegq_f64(0);
        v40 = v36;
        v41 = 0uLL;
        do
        {
          v38 = vsubq_s64(v38, vceqq_s64(v37[-1], v39));
          v41 = vsubq_s64(v41, vceqq_s64(*v37, v39));
          v37 += 2;
          v40 -= 4;
        }

        while (v40);
        v33 = vaddvq_s64(vaddq_s64(v41, v38));
        if (v35 == v36)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v33 = 0;
        v34 = v30;
      }

      do
      {
        v42 = *v34++;
        if (v42 == 0x8000000000000000)
        {
          ++v33;
        }
      }

      while (v34 != (v30 + 8 * v31));
LABEL_26:
      if (v33)
      {
        goto LABEL_27;
      }

LABEL_31:
      mlir::mps::getBroadcastGradientArgs(v51, v52, v49, v50, v53);
      v47 = v53[0];
      v53[0] = (v53[1] - v53[0]) >> 3;
      v48 = mlir::IntegerType::get(a1, 32, 1u);
      v44 = mlir::RankedTensorType::get(v53, 1, v48, 0);
      v45 = v47;
      v46 = *(a11 + 8);
      if (v46 < *(a11 + 12))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    v18 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v18 >= 3)
    {
      v22 = v18 + 1;
      v23 = (v18 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v20 = (Shape + 8 * v23);
      v24 = (Shape + 16);
      v25 = 0uLL;
      v26 = vnegq_f64(0);
      v27 = v23;
      v28 = 0uLL;
      do
      {
        v25 = vsubq_s64(v25, vceqq_s64(v24[-1], v26));
        v28 = vsubq_s64(v28, vceqq_s64(*v24, v26));
        v24 += 2;
        v27 -= 4;
      }

      while (v27);
      v19 = vaddvq_s64(vaddq_s64(v28, v25));
      if (v22 == v23)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0;
      v20 = Shape;
    }

    do
    {
      v29 = *v20++;
      if (v29 == 0x8000000000000000)
      {
        ++v19;
      }
    }

    while (v20 != (Shape + 8 * v17));
LABEL_16:
    if (v19)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::BroadcastGradientArgsOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ExpandDimsOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v53[0] = a4;
  v53[1] = a5;
  if (a5 == 2)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v53, 0) + 8);
    v14 = mlir::ValueRange::dereference_iterator(v53, 0);
    v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
    v46[0] = v15;
    v46[1] = v16;
    if (!v15)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot exapnd_dims a non-shaped type");
    }

    v17 = v13 & 0xFFFFFFFFFFFFFFF8;
    if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
LABEL_27:
      v32 = *(a11 + 8);
      if (v32 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v32) = v17;
      ++*(a11 + 8);
      return 1;
    }

    v50 = v52;
    v51 = 0x400000000;
    v18 = mlir::ValueRange::dereference_iterator(v53, 1);
    if ((mlir::matchConstantWithIntVector<long long>(v18, &v50) & 1) == 0)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
      v24 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v25 = *(a11 + 8);
      if (v25 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = 0;
      *(*a11 + 8 * v25) = v24;
      ++*(a11 + 8);
      result = 1;
      v27 = v50;
      if (v50 == v52)
      {
LABEL_26:
        if (!v26)
        {
          return result;
        }

        goto LABEL_27;
      }

LABEL_25:
      v31 = result;
      free(v27);
      result = v31;
      goto LABEL_26;
    }

    v19 = v51;
    mlir::ShapedType::getShape(v46);
    v47 = v49;
    v48 = 0x400000000;
    v21 = v20 + v19;
    if (v20 + v19)
    {
      if (v21 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v21)
      {
        bzero(v47, 8 * v21);
      }

      LODWORD(v48) = v21;
    }

    v45[0] = 0;
    v45[1] = 0;
    v44 = v45;
    if (v51)
    {
      v43 = *v50;
      v28 = (v21 & (v43 >> 63)) + v43;
      if (v28 >= 0 && v28 < v21)
      {
        operator new();
      }

      v42 = mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(a2, a3, "invalid axis: ", &v43, ", axis ", "must be in range -|rank| <= axis < |rank|");
      v29 = v42;
      v26 = 0;
      std::__tree<long long>::destroy(&v44, v45[0]);
      v30 = v47;
      if (v47 != v49)
      {
LABEL_23:
        free(v30);
      }
    }

    else
    {
      v33 = v45;
      Shape = mlir::ShapedType::getShape(v46);
      if (v21 >= 1)
      {
        v35 = 0;
        v36 = v47;
        do
        {
          if (v33 == v45 || v33[4] != v35)
          {
            v37 = *Shape++;
            v36[v35] = v37;
          }

          else
          {
            v36[v35] = 1;
            v38 = v33[1];
            if (v38)
            {
              do
              {
                v33 = v38;
                v38 = *v38;
              }

              while (v38);
            }

            else
            {
              do
              {
                v39 = v33;
                v33 = v33[2];
              }

              while (*v33 != v39);
            }
          }

          v35 = (v35 + 1);
        }

        while (v35 != v21);
      }

      v40 = v47;
      v29 = v48;
      ElementType = mlir::ShapedType::getElementType(v46);
      v17 = mlir::RankedTensorType::get(v40, v29, ElementType, 0);
      v26 = 1;
      std::__tree<long long>::destroy(&v44, v45[0]);
      v30 = v47;
      if (v47 != v49)
      {
        goto LABEL_23;
      }
    }

    result = v29;
    v27 = v50;
    if (v50 == v52)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

BOOL mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(uint64_t a1, char a2, char *a3, uint64_t *a4, char *a5, const char *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v20);
  if (v20)
  {
    mlir::Diagnostic::append<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(&v21, a3, a4, a5, a6);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v10;
}

uint64_t mlir::mps::ExpandDimsOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ExpandDimsOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
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
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
LABEL_14:
    v29 = v2;
    v30 = 0;
    if (!mlir::ShapedType::hasRank(&v29))
    {
      return 1;
    }

    goto LABEL_15;
  }

  v23 = v7[1];
  v29 = v2;
  v30 = v23;
  if (!mlir::ShapedType::hasRank(&v29))
  {
    return 1;
  }

LABEL_15:
  v27 = 0;
  v28 = 0;
  v13 = *(*(*this + 9) + 56);
  v26 = &v27;
  v24 = v13;
  DefiningOp = mlir::Value::getDefiningOp(&v24);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v26, DefiningOp))
  {
    v25[0] = 0;
    v25[1] = 0;
    v24 = v25;
    v15 = *this;
    v16 = v27;
    v17 = v28;
    mlir::ShapedType::getShape(&v29);
    v19 = v18;
    NumElements = mlir::ElementsAttr::getNumElements(v27, v28);
    std::__tree<long long>::destroy(&v24, v25[0]);
    return v21;
  }

  return 1;
}

void mlir::mps::SqueezeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v88 = *MEMORY[0x277D85DE8];
  v86 = a4;
  v87 = a5;
  v13 = *(mlir::ValueRange::dereference_iterator(&v86, 0) + 8);
  v14 = mlir::ValueRange::dereference_iterator(&v86, 0);
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
  v75[0] = v15;
  v75[1] = v16;
  if (!v15)
  {
    mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot squeeze a non-shaped type");
    return;
  }

  v17 = v13 & 0xFFFFFFFFFFFFFFF8;
  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_85;
  }

  Shape = mlir::ShapedType::getShape(v75);
  v83 = v85;
  v84 = 0x400000000;
  if (v87 != 2)
  {
    v44 = v18;
    if (mlir::ShapedType::hasRank(v75))
    {
      v45 = mlir::ShapedType::getShape(v75);
      if (!v46)
      {
LABEL_48:
        if (v44)
        {
          v48 = 8 * v44;
          do
          {
            if (*Shape != 1)
            {
              if (v84 >= HIDWORD(v84))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v83[v84] = *Shape;
              LODWORD(v84) = v84 + 1;
            }

            ++Shape;
            v48 -= 8;
          }

          while (v48);
        }

        goto LABEL_82;
      }

      v47 = 8 * v46;
      while (*v45 != 0x8000000000000000)
      {
        ++v45;
        v47 -= 8;
        if (!v47)
        {
          goto LABEL_48;
        }
      }
    }

    ElementType = mlir::ShapedType::getElementType(v75);
    v50 = mlir::UnrankedTensorType::get(ElementType);
    v51 = *(a11 + 8);
    if (v51 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v52 = 0;
    *(*a11 + 8 * v51) = v50;
    ++*(a11 + 8);
    v53 = v83;
    if (v83 == v85)
    {
      goto LABEL_84;
    }

LABEL_83:
    free(v53);
    goto LABEL_84;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v86, 1);
  v74[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v74[1] = v21;
  if (!v74[0])
  {
    mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes must be a shaped type");
    v52 = 0;
    v53 = v83;
    if (v83 != v85)
    {
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  v80 = v82;
  v81 = 0x400000000;
  v22 = mlir::ValueRange::dereference_iterator(&v86, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v22, &v80) & 1) == 0)
  {
    if (mlir::ShapedType::hasRank(v74))
    {
      v54 = mlir::ShapedType::getShape(v74);
      if (!v55)
      {
LABEL_65:
        mlir::ShapedType::getShape(v75);
        v58 = v57;
        v59 = mlir::ShapedType::getShape(v74);
        NumElements = mlir::ShapedType::getNumElements(v59, v60);
        v62 = v58 - NumElements;
        if (v58 - NumElements < 0)
        {
          mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(a2, a3, "number of squeezed axes must ", "be less than rank of input");
          goto LABEL_79;
        }

        v63 = NumElements;
        LODWORD(v84) = 0;
        llvm::SmallVectorImpl<long long>::resize(&v83, v62);
        if (v58 == v63)
        {
          v64 = 1;
          v65 = v80;
          if (v80 != v82)
          {
            goto LABEL_80;
          }

          goto LABEL_81;
        }

        memset_pattern16(v83, &unk_25736EFD0, 8 * v62);
        v64 = 1;
        v65 = v80;
        if (v80 == v82)
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }

      v56 = 8 * v55;
      while (*v54 != 0x8000000000000000)
      {
        ++v54;
        v56 -= 8;
        if (!v56)
        {
          goto LABEL_65;
        }
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
    v67 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v67);
    v64 = 0;
    v65 = v80;
    if (v80 != v82)
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  mlir::ShapedType::getShape(v75);
  v24 = v23;
  v77 = 1;
  memset_pattern16(&v78, &unk_257369640, 0x20uLL);
  if (!v81)
  {
LABEL_27:
    LODWORD(v84) = 0;
    if (v24 >= 1)
    {
      v36 = 0;
      for (i = 0; i != v24; ++i)
      {
        if (v77)
        {
          v38 = &v78;
          v39 = 3;
          v40 = (37 * i) & 3;
          v41 = *(&v78 + v40);
          if (i != v41)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (!v79)
          {
            goto LABEL_38;
          }

          v38 = v78;
          v39 = v79 - 1;
          v40 = (v79 - 1) & (37 * i);
          v41 = *(v78 + v40);
          if (i != v41)
          {
LABEL_34:
            v42 = 1;
            while (v41 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = v40 + v42++;
              v40 = v43 & v39;
              v41 = v38[v40];
              if (i == v41)
              {
                goto LABEL_40;
              }
            }

LABEL_38:
            if (v36 >= HIDWORD(v84))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v83[v36] = *Shape;
            v36 = v84 + 1;
            LODWORD(v84) = v84 + 1;
          }
        }

LABEL_40:
        ++Shape;
      }
    }

    if ((v77 & 1) == 0)
    {
      llvm::deallocate_buffer(v78, (8 * v79));
    }

    v64 = 1;
    v65 = v80;
    if (v80 == v82)
    {
      goto LABEL_81;
    }

LABEL_80:
    free(v65);
    goto LABEL_81;
  }

  v25 = v80;
  v26 = (v80 + 8 * v81);
  while (1)
  {
    v73 = *v25;
    v31 = (v24 & (v73 >> 63)) + v73;
    v72 = v31;
    if (v31 < 0 || v24 <= v31)
    {
      mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(a2, a3, "invalid axis: ", &v73, ", axis must be in range ", "-|rank| <= axis < |rank|");
      if (v77)
      {
        goto LABEL_79;
      }

LABEL_77:
      llvm::deallocate_buffer(v78, (8 * v79));
    }

    if ((v77 & 1) == 0)
    {
      break;
    }

    v27 = &v78;
    v28 = 3;
    v29 = (37 * v31) & 3;
    v30 = *(&v78 + v29);
    if (v31 != v30)
    {
      goto LABEL_16;
    }

LABEL_26:
    if (++v25 == v26)
    {
      goto LABEL_27;
    }
  }

  if (!v79)
  {
    goto LABEL_20;
  }

  v27 = v78;
  v28 = v79 - 1;
  v29 = (v79 - 1) & (37 * v31);
  v30 = *(v78 + v29);
  if (v31 == v30)
  {
    goto LABEL_26;
  }

LABEL_16:
  v32 = 1;
  while (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = v29 + v32++;
    v29 = v33 & v28;
    v30 = v27[v29];
    if (v31 == v30)
    {
      goto LABEL_26;
    }
  }

LABEL_20:
  v34 = Shape[v31];
  if (v34 == 1 || v34 == 0x8000000000000000)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v77, &v72, v76);
    goto LABEL_26;
  }

  mlir::emitOptionalError<char const(&)[35],char const(&)[13],long long &,char const(&)[6],long long const&>(a2, a3, "squeezed axis must have length 1, ", "input.shape[", &v72, "] == ", &Shape[v31]);
  if ((v77 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_79:
  v64 = 0;
  v65 = v80;
  if (v80 != v82)
  {
    goto LABEL_80;
  }

LABEL_81:
  if ((v64 & 1) == 0)
  {
    v52 = 0;
    v53 = v83;
    if (v83 == v85)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_82:
  v68 = v83;
  v69 = v84;
  v70 = mlir::ShapedType::getElementType(v75);
  v17 = mlir::RankedTensorType::get(v68, v69, v70, 0);
  v52 = 1;
  v53 = v83;
  if (v83 != v85)
  {
    goto LABEL_83;
  }

LABEL_84:
  if (v52)
  {
LABEL_85:
    v71 = *(a11 + 8);
    if (v71 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v71) = v17;
    ++*(a11 + 8);
  }
}

BOOL mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(uint64_t a1, char a2, char *a3, const char *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v16);
  if (v16)
  {
    mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(&v17, a3, a4);
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v6;
}

BOOL mlir::emitOptionalError<char const(&)[35],char const(&)[13],long long &,char const(&)[6],long long const&>(uint64_t a1, char a2, char *a3, char *a4, uint64_t *a5, char *a6, unint64_t *a7)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[39],char const(&)[29],long long &,char const(&)[4],long long>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
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
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

uint64_t mlir::mps::SqueezeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::SqueezeOp::verify(mlir::Operation **this)
{
  v65[4] = *MEMORY[0x277D85DE8];
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
      v17 = v7[1];
      v45 = v2;
      v46 = v17;
      if (mlir::ShapedType::hasRank(&v45))
      {
        goto LABEL_15;
      }

      return 1;
    }
  }

LABEL_14:
  v45 = v2;
  v46 = 0;
  if (!mlir::ShapedType::hasRank(&v45))
  {
    return 1;
  }

LABEL_15:
  if (*(*this + 17) == 1 || !*(*(*this + 9) + 56))
  {
    return 1;
  }

  mlir::ShapedType::getShape(&v45);
  v14 = v13;
  Shape = mlir::ShapedType::getShape(&v45);
  v63 = v65;
  v64 = 0x400000000;
  if (*(*this + 17) != 1)
  {
    if ((mlir::matchConstantWithIntVector<long long>(*(*(*this + 9) + 56), &v63) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    v60 = v62;
    v61 = 0x400000000;
    {
      if (v61)
      {
        v18 = v60;
        v19 = 8 * v61;
        while (1)
        {
          v20 = *v18;
          v21 = *(Shape + 8 * *v18);
          if (v21 != 0x8000000000000000 && v21 != 1)
          {
            break;
          }

          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_33;
          }
        }

        v43 = "squeezed axis must have length 1, input.shape[";
        v44 = 259;
        mlir::OpState::emitOpError(this, &v43, v49);
        if (v49[0])
        {
          LODWORD(v47) = 2;
          *(&v47 + 1) = v20;
          if (v51 >= v52)
          {
            if (v50 > &v47 || v50 + 24 * v51 <= &v47)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v25 = v50 + 24 * v51;
          v26 = v47;
          *(v25 + 2) = v48;
          *v25 = v26;
          v27 = ++v51;
          if (v49[0])
          {
            LODWORD(v47) = 3;
            *(&v47 + 1) = "] == ";
            v48 = 5;
            if (v27 >= v52)
            {
              if (v50 > &v47 || v50 + 24 * v27 <= &v47)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v28 = v50 + 24 * v51;
            v29 = v47;
            *(v28 + 2) = v48;
            *v28 = v29;
            v30 = ++v51;
            if (v49[0])
            {
              v31 = *(Shape + 8 * v20);
              LODWORD(v47) = 2;
              *(&v47 + 1) = v31;
              if (v30 >= v52)
              {
                if (v50 > &v47 || v50 + 24 * v30 <= &v47)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v32 = v50 + 24 * v51;
              v33 = v47;
              *(v32 + 2) = v48;
              *v32 = v33;
              ++v51;
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
        v34 = result;
        if (v49[0])
        {
          mlir::InFlightDiagnostic::report(v49);
          result = v34;
        }

        if (v59)
        {
          if (v58 != &v59)
          {
            free(v58);
            result = v34;
          }

          v35 = __p;
          if (__p)
          {
            v36 = v57;
            v37 = __p;
            if (v57 != __p)
            {
              do
              {
                v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
              }

              while (v36 != v35);
              v37 = __p;
            }

            v57 = v35;
            operator delete(v37);
            result = v34;
          }

          v38 = v54;
          if (v54)
          {
            v39 = v55;
            v40 = v54;
            if (v55 != v54)
            {
              do
              {
                v42 = *--v39;
                v41 = v42;
                *v39 = 0;
                if (v42)
                {
                  MEMORY[0x259C63150](v41, 0x1000C8077774924);
                }
              }

              while (v39 != v38);
              v40 = v54;
            }

            v55 = v38;
            operator delete(v40);
            result = v34;
          }

          if (v50 != &v53)
          {
            free(v50);
            result = v34;
          }
        }
      }

      else
      {
LABEL_33:
        result = 1;
      }
    }

    else
    {
      result = 0;
    }

    if (v60 != v62)
    {
      v23 = result;
      free(v60);
      result = v23;
    }

    goto LABEL_37;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v63))
  {
    goto LABEL_24;
  }

LABEL_19:
  result = 1;
LABEL_37:
  if (v63 != v65)
  {
    v24 = result;
    free(v63);
    return v24;
  }

  return result;
}

BOOL mlir::mps::Flatten2DOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v54[0] = a4;
  v54[1] = a5;
  if (a5 == 2)
  {
    v13 = mlir::ValueRange::dereference_iterator(v54, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = 0;
    }

    v42 = v16;
    if (!v16)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot Flatten2D a non-tensor input type.");
    }

    v51 = v53;
    v52 = 0x200000002;
    v17 = mlir::ValueRange::dereference_iterator(v54, 1);
    v46 = v16;
    v53[0] = 0x8000000000000000;
    v53[1] = 0x8000000000000000;
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      Shape = mlir::TensorType::getShape(&v46);
      v20 = v19;
      v45 = v19;
      v48 = 0;
      v49 = 0;
      v47 = &v48;
      v50 = v17;
      DefiningOp = mlir::Value::getDefiningOp(&v50);
      if (DefiningOp)
      {
        if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v47, DefiningOp))
        {
          SingleInt = mlir::getSingleIntValue<long long>(v48, v49);
          v43 = SingleInt;
          v44 = v23;
          if (v23)
          {
            if (v20 <= 1)
            {
              v24 = 1;
            }

            else
            {
              v24 = v20;
            }

            v25 = (v24 & (SingleInt >> 63)) + SingleInt;
            v26 = 2;
            if (v20 > 2)
            {
              v26 = v20;
            }

            if ((v25 & 0x8000000000000000) != 0 || v26 < v25)
            {
              if (!mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a2, a3, "invalid axis (", &v43, ") for shape of rank ", &v45))
              {
                result = 0;
LABEL_40:
                if (v51 != v53)
                {
                  v41 = result;
                  free(v51);
                  return v41;
                }

                return result;
              }
            }

            else
            {
              v27 = v51;
              *v51 = vdupq_n_s64(1uLL);
              if (v25)
              {
                v28 = 1;
                v29 = Shape;
                v30 = v25;
                while (1)
                {
                  v32 = *v29++;
                  v31 = v32;
                  if (v32 == 0x8000000000000000)
                  {
                    break;
                  }

                  v28 *= v31;
                  *v27 = v28;
                  if (!--v30)
                  {
                    goto LABEL_32;
                  }
                }

                *v27 = 0x8000000000000000;
              }

LABEL_32:
              if (v25 < v20)
              {
                v34 = 1;
                while (1)
                {
                  v35 = *(Shape + 8 * v25);
                  if (v35 == 0x8000000000000000)
                  {
                    break;
                  }

                  v34 *= v35;
                  v27[1] = v34;
                  if (++v25 >= v20)
                  {
                    goto LABEL_38;
                  }
                }

                v27[1] = 0x8000000000000000;
              }
            }
          }
        }
      }
    }

LABEL_38:
    v36 = v51;
    v37 = v52;
    ElementType = mlir::TensorType::getElementType(&v42);
    v39 = mlir::RankedTensorType::get(v36, v37, ElementType, 0);
    v40 = *(a11 + 8);
    if (v40 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v40) = v39;
    ++*(a11 + 8);
    result = 1;
    goto LABEL_40;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::Flatten2DOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ReductionAndOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    mlir::OperationName::OperationName(v52, "mps.reduction_and", 17, Context);
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

uint64_t mlir::mps::ReductionAndOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::ReductionArgMaxOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v53 = a6;
  v54[0] = 0;
  v55 = 0;
  v56 = v16;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(v54, "mps.reduction_argmax", 20, Context);
    v55 = 1;
  }

  v59 = a4;
  v60 = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(this, a2);
    v18 = v56;
    v19 = v59;
    v20 = v60;
    ElementTypeOrSelf = mlir::IntegerType::get(this, 32, 1u);
    v67 = v19;
    v68 = v20;
    v22 = mlir::ValueRange::dereference_iterator(&v67, 0);
    v23 = 0;
    if (v68 >= 2)
    {
      v23 = mlir::ValueRange::dereference_iterator(&v67, 1);
    }

    v24 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = *(*v24 + 136);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = 0;
    }

    v52 = v24;
    if (!v24)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be a tensor type");
    }

    ElementType = ElementTypeOrSelf;
    if (ElementTypeOrSelf)
    {
      if (v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      ElementType = mlir::TensorType::getElementType(&v52);
      if (v23)
      {
LABEL_19:
        if (mlir::TensorType::hasRank(&v52))
        {
          v28 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = *(*v28 + 136);
          if (v29 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
          {
            v28 = 0;
          }

          v51 = v28;
          if (!v28)
          {
            return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes type must be a tensor type");
          }

          if (mlir::TensorType::hasRank(&v51))
          {
            mlir::TensorType::getShape(&v51);
            if (v31 >= 2)
            {
              return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes tensor must have rank 0 or 1");
            }
          }

          __b = v66;
          v65 = 0x600000000;
          if (mlir::matchConstantWithIntVector<long long>(v23, &__b))
          {
            __p = v63;
            v62 = 0x600000000;
            Shape = mlir::TensorType::getShape(&v52);
            {
              v40 = __p;
              v41 = v62;
              if (!ElementTypeOrSelf)
              {
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
              }

              v42 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v42);
              result = 1;
            }

            else
            {
              result = 0;
            }

            if (__p != v63)
            {
              v49 = result;
              free(__p);
              result = v49;
            }

            goto LABEL_68;
          }

          if (!mlir::TensorType::hasRank(&v51))
          {
            goto LABEL_57;
          }

          mlir::TensorType::getShape(&v51);
          if (!v43)
          {
            goto LABEL_62;
          }

          if (v43 == 1)
          {
            v44 = *mlir::TensorType::getShape(&v51) == 1;
            if (!*mlir::TensorType::getShape(&v51))
            {
              v45 = v52;
LABEL_61:
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v45);
LABEL_64:
              result = 1;
LABEL_68:
              if (__b != v66)
              {
                v50 = result;
                free(__b);
                return v50;
              }

              return result;
            }
          }

          else
          {
LABEL_57:
            v44 = 0;
          }

          if (!v18 && !v44)
          {
            v45 = mlir::UnrankedTensorType::get(ElementType);
            goto LABEL_61;
          }

LABEL_62:
          mlir::TensorType::getShape(&v52);
          std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v47, v18) - 1) >> 64);
          v48 = mlir::RankedTensorType::get(__p, (v62 - __p) >> 3, ElementType, 0);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v48);
          if (__p)
          {
            v62 = __p;
            operator delete(__p);
          }

          goto LABEL_64;
        }

LABEL_36:
        v33 = ElementType;
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
      goto LABEL_38;
    }

    if (mlir::TensorType::hasRank(&v52))
    {
      mlir::TensorType::getShape(&v52);
      v35 = v34;
      __b = v66;
      HIDWORD(v65) = 4;
      if (v34 >= 5)
      {
        LODWORD(v65) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v34)
      {
        memset_pattern16(v66, &unk_257369660, 8 * v34);
      }

      LODWORD(v65) = v35;
      v36 = mlir::RankedTensorType::get(v66, v35, ElementType, 0);
      if (__b != v66)
      {
        v46 = v36;
        free(__b);
        v36 = v46;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v33 = mlir::Float32Type::get(this, a2);
LABEL_37:
  v36 = mlir::UnrankedTensorType::get(v33);
LABEL_38:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionArgMaxOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::ReductionArgMinOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v53 = a6;
  v54[0] = 0;
  v55 = 0;
  v56 = v16;
  v57 = a9;
  v58 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(v54, "mps.reduction_argmin", 20, Context);
    v55 = 1;
  }

  v59 = a4;
  v60 = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(this, a2);
    v18 = v56;
    v19 = v59;
    v20 = v60;
    ElementTypeOrSelf = mlir::IntegerType::get(this, 32, 1u);
    v67 = v19;
    v68 = v20;
    v22 = mlir::ValueRange::dereference_iterator(&v67, 0);
    v23 = 0;
    if (v68 >= 2)
    {
      v23 = mlir::ValueRange::dereference_iterator(&v67, 1);
    }

    v24 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = *(*v24 + 136);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = 0;
    }

    v52 = v24;
    if (!v24)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be a tensor type");
    }

    ElementType = ElementTypeOrSelf;
    if (ElementTypeOrSelf)
    {
      if (v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      ElementType = mlir::TensorType::getElementType(&v52);
      if (v23)
      {
LABEL_19:
        if (mlir::TensorType::hasRank(&v52))
        {
          v28 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = *(*v28 + 136);
          if (v29 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
          {
            v28 = 0;
          }

          v51 = v28;
          if (!v28)
          {
            return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes type must be a tensor type");
          }

          if (mlir::TensorType::hasRank(&v51))
          {
            mlir::TensorType::getShape(&v51);
            if (v31 >= 2)
            {
              return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "axes tensor must have rank 0 or 1");
            }
          }

          __b = v66;
          v65 = 0x600000000;
          if (mlir::matchConstantWithIntVector<long long>(v23, &__b))
          {
            __p = v63;
            v62 = 0x600000000;
            Shape = mlir::TensorType::getShape(&v52);
            {
              v40 = __p;
              v41 = v62;
              if (!ElementTypeOrSelf)
              {
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v52);
              }

              v42 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v42);
              result = 1;
            }

            else
            {
              result = 0;
            }

            if (__p != v63)
            {
              v49 = result;
              free(__p);
              result = v49;
            }

            goto LABEL_68;
          }

          if (!mlir::TensorType::hasRank(&v51))
          {
            goto LABEL_57;
          }

          mlir::TensorType::getShape(&v51);
          if (!v43)
          {
            goto LABEL_62;
          }

          if (v43 == 1)
          {
            v44 = *mlir::TensorType::getShape(&v51) == 1;
            if (!*mlir::TensorType::getShape(&v51))
            {
              v45 = v52;
LABEL_61:
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v45);
LABEL_64:
              result = 1;
LABEL_68:
              if (__b != v66)
              {
                v50 = result;
                free(__b);
                return v50;
              }

              return result;
            }
          }

          else
          {
LABEL_57:
            v44 = 0;
          }

          if (!v18 && !v44)
          {
            v45 = mlir::UnrankedTensorType::get(ElementType);
            goto LABEL_61;
          }

LABEL_62:
          mlir::TensorType::getShape(&v52);
          std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v47, v18) - 1) >> 64);
          v48 = mlir::RankedTensorType::get(__p, (v62 - __p) >> 3, ElementType, 0);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v48);
          if (__p)
          {
            v62 = __p;
            operator delete(__p);
          }

          goto LABEL_64;
        }

LABEL_36:
        v33 = ElementType;
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
      goto LABEL_38;
    }

    if (mlir::TensorType::hasRank(&v52))
    {
      mlir::TensorType::getShape(&v52);
      v35 = v34;
      __b = v66;
      HIDWORD(v65) = 4;
      if (v34 >= 5)
      {
        LODWORD(v65) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v34)
      {
        memset_pattern16(v66, &unk_257369660, 8 * v34);
      }

      LODWORD(v65) = v35;
      v36 = mlir::RankedTensorType::get(v66, v35, ElementType, 0);
      if (__b != v66)
      {
        v46 = v36;
        free(__b);
        v36 = v46;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v33 = mlir::Float32Type::get(this, a2);
LABEL_37:
  v36 = mlir::UnrankedTensorType::get(v33);
LABEL_38:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionArgMinOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ReductionLogSumExpOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    mlir::OperationName::OperationName(v52, "mps.reduction_logsumexp", 23, Context);
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

uint64_t mlir::mps::ReductionLogSumExpOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ReductionMaxOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    mlir::OperationName::OperationName(v52, "mps.reduction_max", 17, Context);
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

uint64_t mlir::mps::ReductionMaxOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ReductionMeanOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    mlir::OperationName::OperationName(v52, "mps.reduction_mean", 18, Context);
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