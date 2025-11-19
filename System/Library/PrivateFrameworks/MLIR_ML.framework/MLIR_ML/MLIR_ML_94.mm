uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps28(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v12 = a1;
  {
    v44 = v9;
    mlir::TensorType::operator mlir::ShapedType();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v44 + 8);
    v15 = *(v44 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v9 + 8);
  v15 = *(v9 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
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
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v49[0] = a2;
  v49[1] = v22;
  v45[0] = mlir::ShapedType::getElementType(v49);
  isUnsignedInteger = mlir::Type::isUnsignedInteger(v45, 32);
  a1 = v12;
  if (isUnsignedInteger)
  {
    return 1;
  }

LABEL_22:
  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(v49, a1, v45);
  if (v49[0])
  {
    LODWORD(v47) = 3;
    *(&v47 + 1) = " #";
    v48 = 2;
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
      LODWORD(v47) = 5;
      *(&v47 + 1) = a5;
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
        LODWORD(v47) = 3;
        *(&v47 + 1) = " must be tensor of 32-bit unsigned integer values, but got ";
        v48 = 59;
        if (v30 >= v52)
        {
          if (v50 > &v47 || v50 + 24 * v30 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v50 + 24 * v51;
        v32 = v47;
        *(v31 + 2) = v48;
        *v31 = v32;
        ++v51;
        if (v49[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
          if (v51 >= v52)
          {
            if (v50 > &v47 || v50 + 24 * v51 <= &v47)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v50 + 24 * v51;
          v34 = v47;
          *(v33 + 2) = v48;
          *v33 = v34;
          ++v51;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
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
    }

    if (v50 != &v53)
    {
      free(v50);
    }
  }

  return v24;
}

uint64_t mlir::mps::detail::HermiteanToRealFFTOpGenericAdaptorBase::HermiteanToRealFFTOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
LABEL_69:
      v59 = v17;
      operator delete(v19);
LABEL_70:
      if (v54 != &v57)
      {
        free(v54);
      }

      return 0;
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
LABEL_68:
    v19 = v58;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v49, "inverse", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 52;
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
        goto LABEL_70;
      }

      v18 = v59;
      v19 = v58;
      if (v59 == v58)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v49, "round_to_odd", 0xCuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 57;
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

  v43 = mlir::DictionaryAttr::get(&v49, "scaling_mode", 0xCuLL);
  if (!v43)
  {
    return 1;
  }

  if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    a1[2] = v43;
    return 1;
  }

  v44 = v43;
  a3(&v52, a4);
  if (v52)
  {
    LODWORD(v50) = 3;
    v51 = 57;
    if (v55 >= v56)
    {
      if (v54 > &v50 || v54 + 24 * v55 <= &v50)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v45 = v54 + 24 * v55;
    v46 = v50;
    *(v45 + 2) = v51;
    *v45 = v46;
    ++v55;
    if (v52)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v50, v44);
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v47 = v54 + 24 * v55;
      v48 = v50;
      *(v47 + 2) = v51;
      *v47 = v48;
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

uint64_t mlir::mps::HermiteanToRealFFTOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "inverse", 7, *a2);
  if (v20 >= HIDWORD(v20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v19 + 16 * v20);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v20 + 1;
  LODWORD(v20) = v20 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v18, "round_to_odd", 0xC, v7);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v19 + 16 * v20);
    *v10 = v8;
    v10[1] = v9;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v18, "scaling_mode", 0xC, v11);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v19 + 16 * v20);
    *v14 = v12;
    v14[1] = v13;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

  v15 = v19;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v19 == v21)
    {
      return DictionaryAttr;
    }

    goto LABEL_13;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v18, v19, v6);
  v15 = v19;
  if (v19 != v21)
  {
LABEL_13:
    free(v15);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::HermiteanToRealFFTOp::computePropertiesHash(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v12[0] = v3;
  v12[1] = v6;
  v11 = 0;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v12, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, v11, v9, v14);
}

unint64_t mlir::mps::HermiteanToRealFFTOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 != 12)
  {
    if (a4 == 7 && *a3 == 1702260329 && *(a3 + 3) == 1702064741)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 == 0x6F745F646E756F72 && a3[2] == 1684303711)
  {
    return a2[1];
  }

  if (*a3 != 0x5F676E696C616373 || a3[2] != 1701080941)
  {
    return 0;
  }

  return a2[2];
}

void *mlir::mps::HermiteanToRealFFTOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12)
  {
    if (*a2 == 0x6F745F646E756F72 && *(a2 + 8) == 1684303711)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        result[1] = v9;
      }

      else
      {
        result[1] = 0;
      }
    }

    else if (*a2 == 0x5F676E696C616373 && *(a2 + 8) == 1701080941)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        result[2] = v7;
      }

      else
      {
        result[2] = 0;
      }
    }
  }

  else if (a3 == 7 && *a2 == 1702260329 && *(a2 + 3) == 1702064741)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  return result;
}

void mlir::mps::HermiteanToRealFFTOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "inverse", 7uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "round_to_odd", 0xCuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "scaling_mode", 0xCuLL, v6);
  }
}

BOOL mlir::mps::HermiteanToRealFFTOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "inverse", 7, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "round_to_odd", 12, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(v10, "scaling_mode", 12, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(a1, (v3 + 16)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::HermiteanToRealFFTOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::HermiteanToRealFFTOp::setScalingMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::setInverse(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 64) = this;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return this;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::setRoundToOdd(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a5;
  v19 = a4;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 16) = a6;
  if (a7)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a7;
  }

  if (a8)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 8) = a8;
  }

  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::HermiteanToRealFFTOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v24 = a4;
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 16) = a5;
  if (a6)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a6;
  }

  if (a7)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 8) = a7;
  }

  __src = v30;
  v29 = 0x200000000;
  v15 = *a1;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v18 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::HermiteanToRealFFTOp::inferReturnTypes(v15, v19, v20, v27[0], v27[1], Dictionary, v18, v21, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = v29;
  v23 = *(a2 + 72);
  if (v23 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v23), __src, 8 * v29);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v30)
  {
    free(__src);
  }
}

unint64_t mlir::mps::HermiteanToRealFFTOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v22 = a5;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 16) = a7;
  if (a8)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *v16 = a8;
  }

  if (a9)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 8) = a9;
  }

  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8)
{
  v24 = a5;
  v25 = a4;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v14 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v26[1] = v14;
  v30[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v30[1] = v26;
  v29 = a6;
  v16 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v16);
  v27[0] = &v29;
  v27[1] = v30;
  v28 = &v29;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 32) >> 15) ^ (-348639895 * (v16 ^ (v17 >> 47) ^ v17))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = result;
  if (a7)
  {
    result = mlir::Builder::getUnitAttr(a1, v19);
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *v22 = result;
    if (!a8)
    {
LABEL_4:
      v21 = *(a2 + 72);
      if (v21 >= *(a2 + 76))
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }
  }

  else if (!a8)
  {
    goto LABEL_4;
  }

  result = mlir::Builder::getUnitAttr(a1, v19);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = result;
  v21 = *(a2 + 72);
  if (v21 >= *(a2 + 76))
  {
LABEL_5:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_6:
  *(*(a2 + 64) + 8 * v21) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::HermiteanToRealFFTOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = a4;
  v33 = a3;
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v39 = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v40 = v12;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v37 = &v39;
  v35 = a5;
  v14 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v14);
  v34 = &v35;
  v41 = &v35;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v34, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v41);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = ParametricStorageTypeImpl;
  if (!a6)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  UnitAttr = mlir::Builder::getUnitAttr(a1, v17);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = UnitAttr;
  if (a7)
  {
LABEL_10:
    v21 = mlir::Builder::getUnitAttr(a1, v17);
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 8) = v21;
  }

LABEL_13:
  __src = v38;
  v37 = 0x200000000;
  v23 = *a1;
  mlir::ValueRange::ValueRange(&v41, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v26 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v39, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::HermiteanToRealFFTOp::inferReturnTypes(v23, v27, v28, v41, p_src, Dictionary, v26, v29, v39, v40, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v30 = v37;
  v31 = *(a2 + 72);
  if (v31 + v37 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v37)
  {
    memcpy((*(a2 + 64) + 8 * v31), __src, 8 * v37);
    LODWORD(v31) = *(a2 + 72);
  }

  *(a2 + 72) = v31 + v30;
  if (__src != v38)
  {
    free(__src);
  }
}

unint64_t mlir::mps::HermiteanToRealFFTOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, char a9)
{
  v27 = a6;
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v15 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v29[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v29[1] = v15;
  v33[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v33[1] = v29;
  v32 = a7;
  v17 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v18 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v17);
  v30[0] = &v32;
  v30[1] = v33;
  v31 = &v32;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 32) >> 15) ^ (-348639895 * (v17 ^ (v18 >> 47) ^ v18))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v30);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = result;
  if (a8)
  {
    result = mlir::Builder::getUnitAttr(a1, v20);
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *v23 = result;
    if (!a9)
    {
LABEL_4:
      v22 = *(a2 + 72);
      if (a4 + v22 <= *(a2 + 76))
      {
        goto LABEL_5;
      }

LABEL_16:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else if (!a9)
  {
    goto LABEL_4;
  }

  result = mlir::Builder::getUnitAttr(a1, v20);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 8) = result;
  v22 = *(a2 + 72);
  if (a4 + v22 > *(a2 + 76))
  {
    goto LABEL_16;
  }

LABEL_5:
  if (a4)
  {
    v25 = 0;
    v26 = *(a2 + 64) + 8 * v22;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v25);
      *(v26 + 8 * v25++) = result;
    }

    while (a4 != v25);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + a4;
  return result;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::HermiteanToRealFFTOp::build(mlir::UnknownLoc **a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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
    *(a2 + 120) += a6;
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v12;
  }

  __src = v30;
  v29 = 0x200000000;
  v18 = *a1;
  v19 = mlir::Attribute::getContext(a2);
  v20 = mlir::NamedAttrList::getDictionary((a2 + 112), v19);
  v21 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::HermiteanToRealFFTOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v25 = v29;
  v26 = *(a2 + 72);
  if (v26 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v26), __src, 8 * v29);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::HermiteanToRealFFTOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v4 = v3[10];
  if (v4)
  {
    v6 = v3[8];
    v5 = v3[9];
    v21[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(v4, "scaling_mode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v21) & 1) != 0 && (v21[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v6, "inverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v21)) && (v21[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "round_to_odd", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v21)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps20(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v7 = *this - 16;
      }

      else
      {
        v7 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v19 = "requires attribute 'scaling_mode'";
    v20 = 259;
    mlir::OpState::emitOpError(this, &v19, v21);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

      v10 = __p;
      if (__p)
      {
        v11 = v27;
        v12 = __p;
        if (v27 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v27 = v10;
        operator delete(v12);
      }

      v13 = v24;
      if (v24)
      {
        v14 = v25;
        v15 = v24;
        if (v25 != v24)
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
          v15 = v24;
        }

        v25 = v13;
        operator delete(v15);
      }

      if (v22 != &v23)
      {
        free(v22);
      }
    }
  }

  return v9;
}

uint64_t mlir::mps::IdentityOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::IdentityOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::IdentityOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::IdentityOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::IdentityOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::IdentityOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::IdentityOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::IdentityOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::detail::ImToColOpGenericAdaptorBase::ImToColOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::ImToColOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v54 = v6;
  if (!v6)
  {
    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected DictionaryAttr to set properties";
      v56 = 41;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v59 + 24 * v60;
      v23 = v55;
      *(v22 + 2) = v56;
      *v22 = v23;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }

    if (v68 != 1)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v66;
      v26 = __p;
      if (v66 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v66 = v24;
      operator delete(v26);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_81;
    }

    v27 = v64;
    v19 = v63;
    if (v64 == v63)
    {
LABEL_80:
      v64 = v17;
      operator delete(v19);
LABEL_81:
      if (v59 != &v62)
      {
        free(v59);
      }

      return 0;
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
    goto LABEL_79;
  }

  v8 = mlir::DictionaryAttr::get(&v54, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 56;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v59 + 24 * v60;
        v11 = v55;
        *(v10 + 2) = v56;
        *v10 = v11;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v9);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v59 + 24 * v60;
          v13 = v55;
          *(v12 + 2) = v56;
          *v12 = v13;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v66;
        v16 = __p;
        if (v66 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v66 = v14;
        operator delete(v16);
      }

      v17 = v63;
      if (!v63)
      {
        goto LABEL_81;
      }

      v18 = v64;
      v19 = v63;
      if (v64 == v63)
      {
        goto LABEL_80;
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
      goto LABEL_79;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v54, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      v56 = 59;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v39 = v59 + 24 * v60;
      v40 = v55;
      *(v39 + 2) = v56;
      *v39 = v40;
      ++v60;
      if (v57)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v55, v31);
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v41 = v59 + 24 * v60;
        v42 = v55;
        *(v41 + 2) = v56;
        *v41 = v42;
        ++v60;
        if (v57)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }
      }
    }

    if ((v68 & 1) == 0)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v66;
      v45 = __p;
      if (v66 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v66 = v43;
      operator delete(v45);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_81;
    }

    v46 = v64;
    v19 = v63;
    if (v64 == v63)
    {
      goto LABEL_80;
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

    while (v46 != v17);
LABEL_79:
    v19 = v63;
    goto LABEL_80;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v54, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 61;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v49 = v59 + 24 * v60;
        v50 = v55;
        *(v49 + 2) = v56;
        *v49 = v50;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v33);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v51 = v59 + 24 * v60;
          v52 = v55;
          *(v51 + 2) = v56;
          *v51 = v52;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if (v68 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v58);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v54, "kernel_sizes", 0xCuLL);
  *&v55 = v34;
  if (v34)
  {
    v35 = v34;
    if (!mlir::DenseIntElementsAttr::classof(v34))
    {
      a3(&v57, a4);
      goto LABEL_93;
    }

    a1[3] = v35;
  }

  v36 = mlir::DictionaryAttr::get(&v54, "strides", 7uLL);
  *&v55 = v36;
  if (!v36)
  {
    return 1;
  }

  v37 = v36;
  if (mlir::DenseIntElementsAttr::classof(v36))
  {
    a1[4] = v37;
    return 1;
  }

  a3(&v57, a4);
LABEL_93:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v53, &v55);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  return 0;
}

uint64_t mlir::mps::ImToColOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = a1;
  v27 = v29;
  v28 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v26, "data_layout", 0xB, *a2);
  if (v28 >= HIDWORD(v28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v27 + 16 * v28);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v28 + 1;
  LODWORD(v28) = v28 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v26, "dilation_rates", 0xE, v7);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v27 + 16 * v28);
    *v10 = v8;
    v10[1] = v9;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v26, "explicit_padding", 0x10, v11);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v27 + 16 * v28);
    *v14 = v12;
    v14[1] = v13;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v26, "kernel_sizes", 0xC, v15);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v27 + 16 * v28);
    *v18 = v16;
    v18[1] = v17;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v26, "strides", 7, v19);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v27 + 16 * v28);
    *v22 = v20;
    v22[1] = v21;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v23 = v27;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v27 == v29)
    {
      return DictionaryAttr;
    }

    goto LABEL_19;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v26, v27, v6);
  v23 = v27;
  if (v27 != v29)
  {
LABEL_19:
    free(v23);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::ImToColOp::computePropertiesHash(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = HIDWORD(a1[4]);
  v14 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v13);
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47));
  v23[0] = v3;
  v23[1] = v6;
  v20 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v20, v24, v25, v9);
  v21 = v20;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v21, v16, v25, v12);
  v22 = v21;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v22, v17, v25, v15);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v23, v22, v18, v25);
}

uint64_t mlir::mps::ImToColOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 11)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "kernel_sizes", 0xCuLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::ImToColOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 11)
  {
    if (a3 == 7)
    {
      result = memcmp(__s1, "strides", 7uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[4] = v10;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 12:
        result = memcmp(__s1, "kernel_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[1] = v9;
          }

          else
          {
            v5[1] = 0;
          }
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v11 = a4;
            }

            else
            {
              v11 = 0;
            }

            v5[2] = v11;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::ImToColOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "kernel_sizes", 0xCuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "strides", 7uLL, v8);
  }
}

BOOL mlir::mps::ImToColOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v8, "data_layout", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v11, "kernel_sizes", 12, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v12, "strides", 7, a3, a4) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::ImToColOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
}

uint64_t mlir::mps::ImToColOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  v4 = v3[12];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::ImToColOp::setDataLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void mlir::mps::ImToColOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  mlir::mps::get2DElementsForImToCol(a1, a4);
  mlir::mps::get2DElementsForImToCol(a1, a6);
  mlir::mps::get2DElementsForImToCol(a1, a9);
  mlir::mps::getFormattedPaddingImToCol();
}

uint64_t mlir::mps::ImToColOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a4;
  result = mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 24) = a5;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 32) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a8;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a9;
  v21 = *(a2 + 72);
  if (v21 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v21) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ImToColOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v29 = a3;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = a4;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 32) = a5;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = a8;
  __src = v34;
  v33 = 0x200000000;
  v20 = *a1;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v23 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ImToColOp::inferReturnTypes(v20, v24, v25, v31[0], v31[1], Dictionary, v23, v26, v30[0], v30[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v27 = v33;
  v28 = *(a2 + 72);
  if (v28 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v28), __src, 8 * v33);
    LODWORD(v28) = *(a2 + 72);
  }

  *(a2 + 72) = v28 + v27;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ImToColOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a5;
  result = mlir::OperationState::addOperands(a2, &v25, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a8;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a9;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a10;
  v22 = *(a2 + 72);
  if (a4 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v23 = 0;
    v24 = *(a2 + 64) + 8 * v22;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v23);
      *(v24 + 8 * v23++) = result;
    }

    while (a4 != v23);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + a4;
  return result;
}

uint64_t mlir::mps::ImToColOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v27 = a4;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 24) = a5;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 32) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a8;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v28[1] = v20;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v32[1] = v28;
  v31 = a9;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v23 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v22 >> 47) ^ v22);
  v29[0] = &v31;
  v29[1] = v32;
  v30 = &v31;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v23 >> 47) ^ v23), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *v25 = result;
  v26 = *(a2 + 72);
  if (v26 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v26) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ImToColOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v44 = *MEMORY[0x277D85DE8];
  v34 = a3;
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = a4;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 32) = a5;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a7;
  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v40 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v41 = v19;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38 = &v40;
  v36 = a8;
  v21 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v21);
  v35 = &v36;
  v42 = &v36;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 32) >> 15) ^ (-348639895 * (v21 ^ (v22 >> 47) ^ v22))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v35, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v42);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *v24 = ParametricStorageTypeImpl;
  __src = v39;
  v38 = 0x200000000;
  v25 = *a1;
  mlir::ValueRange::ValueRange(&v42, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v28 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v40, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ImToColOp::inferReturnTypes(v25, v29, v30, v42, p_src, Dictionary, v28, v31, v40, v41, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v32 = v38;
  v33 = *(a2 + 72);
  if (v33 + v38 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v38)
  {
    memcpy((*(a2 + 64) + 8 * v33), __src, 8 * v38);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + v32;
  if (__src != v39)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ImToColOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v30 = a5;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a8;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a9;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v21);
  v31[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v31[1] = v21;
  v35[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v35[1] = v31;
  v34 = a10;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v24 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v23 >> 47) ^ v23);
  v32[0] = &v34;
  v32[1] = v35;
  v33 = &v34;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v24 >> 47) ^ v24), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v33, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v32);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *v26 = result;
  v27 = *(a2 + 72);
  if (a4 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v28 = 0;
    v29 = *(a2 + 64) + 8 * v27;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v28);
      *(v29 + 8 * v28++) = result;
    }

    while (a4 != v28);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + a4;
  return result;
}

uint64_t mlir::mps::ImToColOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ImToColOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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
    *(a2 + 120) += a6;
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v12;
  }

  __src = v30;
  v29 = 0x200000000;
  v18 = *a1;
  v19 = mlir::Attribute::getContext(a2);
  v20 = mlir::NamedAttrList::getDictionary((a2 + 112), v19);
  v21 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ImToColOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v25 = v29;
  v26 = *(a2 + 72);
  if (v26 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v26), __src, 8 * v29);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::ImToColOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[3];
        if (v7)
        {
          v8 = v2[4];
          if (v8)
          {
            v42 = *this;
            if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v7, "kernel_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42) & 1) != 0 && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v3, "data_layout", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps11(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
            {
              if (*(*this + 9))
              {
                v10 = *this - 16;
              }

              else
              {
                v10 = 0;
              }

              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
              return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v40[0] = "requires attribute 'strides'";
            v41 = 259;
            mlir::OpState::emitOpError(this, v40, &v42);
            v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
            if (v42)
            {
              mlir::InFlightDiagnostic::report(&v42);
            }

            if (v51 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v43);
            }
          }

          return v12;
        }

        v40[0] = "requires attribute 'kernel_sizes'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
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

          v33 = __p;
          if (__p)
          {
            v34 = v49;
            v35 = __p;
            if (v49 != __p)
            {
              do
              {
                v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
              }

              while (v34 != v33);
              v35 = __p;
            }

            v49 = v33;
            operator delete(v35);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_83;
          }

          v36 = v47;
          v18 = v46;
          if (v47 == v46)
          {
LABEL_82:
            v47 = v16;
            operator delete(v18);
LABEL_83:
            if (v44 != &v45)
            {
              free(v44);
            }

            return v12;
          }

          do
          {
            v38 = *--v36;
            v37 = v38;
            *v36 = 0;
            if (v38)
            {
              MEMORY[0x259C63150](v37, 0x1000C8077774924);
            }
          }

          while (v36 != v16);
LABEL_81:
          v18 = v46;
          goto LABEL_82;
        }
      }

      else
      {
        v40[0] = "requires attribute 'explicit_padding'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
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

          v27 = __p;
          if (__p)
          {
            v28 = v49;
            v29 = __p;
            if (v49 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v49 = v27;
            operator delete(v29);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_83;
          }

          v30 = v47;
          v18 = v46;
          if (v47 == v46)
          {
            goto LABEL_82;
          }

          do
          {
            v32 = *--v30;
            v31 = v32;
            *v30 = 0;
            if (v32)
            {
              MEMORY[0x259C63150](v31, 0x1000C8077774924);
            }
          }

          while (v30 != v16);
          goto LABEL_81;
        }
      }
    }

    else
    {
      v40[0] = "requires attribute 'dilation_rates'";
      v41 = 259;
      mlir::OpState::emitOpError(this, v40, &v42);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
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

        v21 = __p;
        if (__p)
        {
          v22 = v49;
          v23 = __p;
          if (v49 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v49 = v21;
          operator delete(v23);
        }

        v16 = v46;
        if (!v46)
        {
          goto LABEL_83;
        }

        v24 = v47;
        v18 = v46;
        if (v47 == v46)
        {
          goto LABEL_82;
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

        while (v24 != v16);
        goto LABEL_81;
      }
    }
  }

  else
  {
    v40[0] = "requires attribute 'data_layout'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v42);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
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

      v13 = __p;
      if (__p)
      {
        v14 = v49;
        v15 = __p;
        if (v49 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v49 = v13;
        operator delete(v15);
      }

      v16 = v46;
      if (!v46)
      {
        goto LABEL_83;
      }

      v17 = v47;
      v18 = v46;
      if (v47 == v46)
      {
        goto LABEL_82;
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
      goto LABEL_81;
    }
  }

  return v12;
}

uint64_t mlir::mps::ImaginaryPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::ImaginaryPartOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  __src = v19;
  v18 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v15, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ImaginaryPartOp::inferReturnTypes(v5, v8, v9, v16[0], v16[1], Dictionary, v10, v11, v15[0], v15[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = v18;
  v13 = *(a2 + 72);
  if (v13 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v13), __src, 8 * v18);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v19)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ImaginaryPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::ImaginaryPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ImaginaryPartOp::build(mlir::UnknownLoc **a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::ImaginaryPartOp::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v22[0], v22[1], &__src) & 1) == 0)
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

uint64_t mlir::mps::ImaginaryPartOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ImaginaryPartOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::InitRandomPhiloxStateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::InitRandomPhiloxStateOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a3;
  v13 = a5;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  __src = v20;
  v19 = 0x200000000;
  v7 = *a1;
  mlir::ValueRange::ValueRange(&v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
  v21[0] = 7;
  v9 = mlir::IntegerType::get(v7, 32, 1u);
  v10 = mlir::RankedTensorType::get(v21, 1, v9, 0);
  if (v19 >= HIDWORD(v19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(__src + v19) = v10;
  LODWORD(v19) = v19 + 1;
  v11 = v19;
  v12 = *(a2 + 72);
  if (v12 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v12), __src, 8 * v19);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v20)
  {
    free(__src);
  }
}

unint64_t mlir::mps::InitRandomPhiloxStateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::mps::InitRandomPhiloxStateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::InitRandomPhiloxStateOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[1] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  v11 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = 7;
  v13 = mlir::IntegerType::get(v11, 32, 1u);
  v14 = mlir::RankedTensorType::get(v21, 1, v13, 0);
  if (v19 >= HIDWORD(v19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(__src + v19) = v14;
  LODWORD(v19) = v19 + 1;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::mps::InitRandomPhiloxStateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v83 = *MEMORY[0x277D85DE8];
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps29(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps29(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps29(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
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
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(*v5 + 17);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_43;
  }

  {
    v18 = v6;
    mlir::mps::ConstantOp::verify();
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v10 = v18[1];
    v11 = *(v18 + 4);
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_24:
    v19 = 0;
    goto LABEL_26;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v10 = v6[1];
  v11 = *(v6 + 4);
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_14:
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
  if (v12 == &v10[2 * v11] || *v12 != v9)
  {
    goto LABEL_24;
  }

  v19 = v12[1];
LABEL_26:
  v71[0] = v5;
  v71[1] = v19;
  ElementType = mlir::ShapedType::getElementType(v71);
  if (!mlir::Type::isSignedInteger(&ElementType, 32))
  {
    goto LABEL_43;
  }

  v20 = *v5;
  {
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = v20[1];
    v23 = *(v20 + 4);
    if (v23)
    {
      goto LABEL_29;
    }

LABEL_36:
    v23 = 0;
    v24 = v22;
    goto LABEL_37;
  }

  v30 = v20;
  mlir::mps::ConstantOp::verify();
  v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v22 = v30[1];
  v23 = *(v30 + 4);
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_29:
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
LABEL_37:
  if (v24 != &v22[2 * v23] && *v24 == v21)
  {
    v31 = v24[1];
  }

  else
  {
    v31 = 0;
  }

  v65 = v5;
  v66 = v31;
  Shape = mlir::ShapedType::getShape(&v65);
  v82 = 7;
  if (v33 == 1 && *Shape == v82)
  {
    return 1;
  }

LABEL_43:
  v34 = *v5;
  if (*(*v5 + 17) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_59;
  }

  {
    mlir::mps::ConstantOp::verify();
    v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v36 = v34[1];
    v37 = *(v34 + 4);
    if (v37)
    {
      goto LABEL_46;
    }

LABEL_56:
    v44 = 0;
    goto LABEL_58;
  }

  v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v36 = v34[1];
  v37 = *(v34 + 4);
  if (!v37)
  {
    goto LABEL_56;
  }

LABEL_46:
  v38 = v36;
  v39 = v37;
  do
  {
    v40 = v39 >> 1;
    v41 = &v38[2 * (v39 >> 1)];
    v43 = *v41;
    v42 = v41 + 2;
    v39 += ~(v39 >> 1);
    if (v43 < v35)
    {
      v38 = v42;
    }

    else
    {
      v39 = v40;
    }
  }

  while (v39);
  if (v38 == &v36[2 * v37] || *v38 != v35)
  {
    goto LABEL_56;
  }

  v44 = v38[1];
LABEL_58:
  *&v69 = v5;
  *(&v69 + 1) = v44;
  ElementType = mlir::ShapedType::getElementType(&v69);
  if (mlir::Type::isSignedInteger(&ElementType, 32))
  {
    return 1;
  }

LABEL_59:
  v67 = 261;
  v65 = "result";
  v66 = 6;
  mlir::Operation::emitOpError(v71, v4, &v65);
  if (v71[0])
  {
    LODWORD(v69) = 3;
    *(&v69 + 1) = " #";
    v70 = 2;
    if (v73 >= v74)
    {
      if (v72 > &v69 || v72 + 24 * v73 <= &v69)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v45 = v72 + 24 * v73;
    v46 = v69;
    *(v45 + 2) = v70;
    *v45 = v46;
    v47 = ++v73;
    if (v71[0])
    {
      LODWORD(v69) = 5;
      *(&v69 + 1) = 0;
      if (v47 >= v74)
      {
        if (v72 > &v69 || v72 + 24 * v47 <= &v69)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v48 = v72 + 24 * v73;
      v49 = v69;
      *(v48 + 2) = v70;
      *v48 = v49;
      v50 = ++v73;
      if (v71[0])
      {
        LODWORD(v69) = 3;
        *(&v69 + 1) = " must be static-shape defined tensor with shape equal to [7] or unranked tensor of 32-bit signed integer values, but got ";
        v70 = 121;
        if (v50 >= v74)
        {
          if (v72 > &v69 || v72 + 24 * v50 <= &v69)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v51 = v72 + 24 * v73;
        v52 = v69;
        *(v51 + 2) = v70;
        *v51 = v52;
        ++v73;
        if (v71[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v69, v5);
          if (v73 >= v74)
          {
            if (v72 > &v69 || v72 + 24 * v73 <= &v69)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v53 = v72 + 24 * v73;
          v54 = v69;
          *(v53 + 2) = v70;
          *v53 = v54;
          ++v73;
        }
      }
    }
  }

  v55 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
  if (v71[0])
  {
    mlir::InFlightDiagnostic::report(v71);
  }

  if (v81 == 1)
  {
    if (v80 != &v81)
    {
      free(v80);
    }

    v56 = __p;
    if (__p)
    {
      v57 = v79;
      v58 = __p;
      if (v79 != __p)
      {
        do
        {
          v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
        }

        while (v57 != v56);
        v58 = __p;
      }

      v79 = v56;
      operator delete(v58);
    }

    v59 = v76;
    if (v76)
    {
      v60 = v77;
      v61 = v76;
      if (v77 != v76)
      {
        do
        {
          v63 = *--v60;
          v62 = v63;
          *v60 = 0;
          if (v63)
          {
            MEMORY[0x259C63150](v62, 0x1000C8077774924);
          }
        }

        while (v60 != v59);
        v61 = v76;
      }

      v77 = v59;
      operator delete(v61);
    }

    if (v72 != &v75)
    {
      free(v72);
    }
  }

  return v55;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps29(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v130 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = v10[1];
    v24 = *(v10 + 4);
    if (!v24)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v43 = v10;
    mlir::TensorType::operator mlir::ShapedType();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = v43[1];
    v24 = *(v43 + 4);
    if (!v24)
    {
      goto LABEL_43;
    }
  }

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
LABEL_43:
    v117 = a2;
    v118 = 0;
    hasRank = mlir::ShapedType::hasRank(&v117);
    v10 = *a2;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_46;
  }

  v45 = v25[1];
  v117 = a2;
  v118 = v45;
  v46 = mlir::ShapedType::hasRank(&v117);
  v10 = *a2;
  if (!v46)
  {
    goto LABEL_2;
  }

LABEL_46:
  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = v10[1];
    v49 = *(v10 + 4);
    if (!v49)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v107 = v10;
    mlir::mps::ConstantOp::verify();
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = v107[1];
    v49 = *(v107 + 4);
    if (!v49)
    {
      goto LABEL_124;
    }
  }

  v50 = v48;
  v51 = v49;
  do
  {
    v52 = v51 >> 1;
    v53 = &v50[2 * (v51 >> 1)];
    v55 = *v53;
    v54 = v53 + 2;
    v51 += ~(v51 >> 1);
    if (v55 < v47)
    {
      v50 = v54;
    }

    else
    {
      v51 = v52;
    }
  }

  while (v51);
  if (v50 != &v48[2 * v49] && *v50 == v47)
  {
    v92 = v50[1];
    v108 = a2;
    v109 = v92;
    mlir::ShapedType::getShape(&v108);
    v10 = *a2;
    if (!v93)
    {
      goto LABEL_127;
    }

LABEL_2:
    v11 = v10[17];
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_62;
    }

LABEL_7:
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = v10[1];
      v15 = *(v10 + 4);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v31 = v10;
      mlir::mps::ConstantOp::verify();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = v31[1];
      v15 = *(v31 + 4);
      if (!v15)
      {
        goto LABEL_28;
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
      v32 = v16[1];
LABEL_30:
      v113[0] = a2;
      v113[1] = v32;
      ElementType = mlir::ShapedType::getElementType(v113);
      if (!mlir::Type::isSignedInteger(&ElementType, 64))
      {
        goto LABEL_62;
      }

      v33 = *a2;
      {
        v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v35 = v33[1];
        v36 = *(v33 + 4);
        if (!v36)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v56 = v33;
        mlir::mps::ConstantOp::verify();
        v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v35 = v56[1];
        v36 = *(v56 + 4);
        if (!v36)
        {
          goto LABEL_58;
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
        v57 = v37[1];
        goto LABEL_60;
      }

LABEL_58:
      v57 = 0;
LABEL_60:
      v112[0] = a2;
      v112[1] = v57;
      Shape = mlir::ShapedType::getShape(v112);
      v129 = 1;
      if (v59 == 1 && *Shape == v129)
      {
        return 1;
      }

      goto LABEL_62;
    }

LABEL_28:
    v32 = 0;
    goto LABEL_30;
  }

LABEL_124:
  v108 = a2;
  v109 = 0;
  mlir::ShapedType::getShape(&v108);
  v10 = *a2;
  if (v91)
  {
    goto LABEL_2;
  }

LABEL_127:
  {
    v103 = v10;
    mlir::mps::ConstantOp::verify();
    v94 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v95 = v103[1];
    v96 = *(v103 + 4);
    if (v96)
    {
      goto LABEL_129;
    }

LABEL_141:
    v104 = 0;
    goto LABEL_143;
  }

  v94 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v95 = v10[1];
  v96 = *(v10 + 4);
  if (!v96)
  {
    goto LABEL_141;
  }

LABEL_129:
  v97 = v95;
  v98 = v96;
  do
  {
    v99 = v98 >> 1;
    v100 = &v97[2 * (v98 >> 1)];
    v102 = *v100;
    v101 = v100 + 2;
    v98 += ~(v98 >> 1);
    if (v102 < v94)
    {
      v97 = v101;
    }

    else
    {
      v98 = v99;
    }
  }

  while (v98);
  if (v97 == &v95[2 * v96] || *v97 != v94)
  {
    goto LABEL_141;
  }

  v104 = v97[1];
LABEL_143:
  *&v115 = a2;
  *(&v115 + 1) = v104;
  ElementType = mlir::ShapedType::getElementType(&v115);
  if (mlir::Type::isSignedInteger(&ElementType, 64))
  {
    return 1;
  }

  v10 = *a2;
  v105 = *(*a2 + 17);
  if (v105 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v105 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_7;
  }

LABEL_62:
  v60 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_79;
  }

  {
    mlir::mps::ConstantOp::verify();
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = v60[1];
    v63 = *(v60 + 4);
    if (v63)
    {
      goto LABEL_65;
    }

LABEL_75:
    v70 = 0;
    goto LABEL_77;
  }

  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = v60[1];
  v63 = *(v60 + 4);
  if (!v63)
  {
    goto LABEL_75;
  }

LABEL_65:
  v64 = v62;
  v65 = v63;
  do
  {
    v66 = v65 >> 1;
    v67 = &v64[2 * (v65 >> 1)];
    v69 = *v67;
    v68 = v67 + 2;
    v65 += ~(v65 >> 1);
    if (v69 < v61)
    {
      v64 = v68;
    }

    else
    {
      v65 = v66;
    }
  }

  while (v65);
  if (v64 == &v62[2 * v63] || *v64 != v61)
  {
    goto LABEL_75;
  }

  v70 = v64[1];
LABEL_77:
  v111[0] = a2;
  v111[1] = v70;
  ElementType = mlir::ShapedType::getElementType(v111);
  if (mlir::Type::isSignedInteger(&ElementType, 64))
  {
    return 1;
  }

LABEL_79:
  v110 = 261;
  v108 = a3;
  v109 = a4;
  mlir::Operation::emitOpError(&v117, a1, &v108);
  if (v117)
  {
    LODWORD(v115) = 3;
    *(&v115 + 1) = " #";
    v116 = 2;
    if (v120 >= v121)
    {
      if (v119 > &v115 || v119 + 24 * v120 <= &v115)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v72 = v119 + 24 * v120;
    v73 = v115;
    *(v72 + 2) = v116;
    *v72 = v73;
    v74 = ++v120;
    if (v117)
    {
      LODWORD(v115) = 5;
      *(&v115 + 1) = a5;
      if (v74 >= v121)
      {
        if (v119 > &v115 || v119 + 24 * v74 <= &v115)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v75 = v119 + 24 * v120;
      v76 = v115;
      *(v75 + 2) = v116;
      *v75 = v76;
      v77 = ++v120;
      if (v117)
      {
        LODWORD(v115) = 3;
        *(&v115 + 1) = " must be 0D tensor of 64-bit signed integer values or static-shape defined tensor with shape equal to [1] or unranked tensor of 64-bit signed integer values, but got ";
        v116 = 166;
        if (v77 >= v121)
        {
          if (v119 > &v115 || v119 + 24 * v77 <= &v115)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v78 = v119 + 24 * v120;
        v79 = v115;
        *(v78 + 2) = v116;
        *v78 = v79;
        ++v120;
        if (v117)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v115, a2);
          if (v120 >= v121)
          {
            if (v119 > &v115 || v119 + 24 * v120 <= &v115)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v80 = v119 + 24 * v120;
          v81 = v115;
          *(v80 + 2) = v116;
          *v80 = v81;
          ++v120;
        }
      }
    }
  }

  v71 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v117);
  if (v117)
  {
    mlir::InFlightDiagnostic::report(&v117);
  }

  if (v128 == 1)
  {
    if (v127 != &v128)
    {
      free(v127);
    }

    v82 = __p;
    if (__p)
    {
      v83 = v126;
      v84 = __p;
      if (v126 != __p)
      {
        do
        {
          v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
        }

        while (v83 != v82);
        v84 = __p;
      }

      v126 = v82;
      operator delete(v84);
    }

    v85 = v123;
    if (v123)
    {
      v86 = v124;
      v87 = v123;
      if (v124 != v123)
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
        v87 = v123;
      }

      v124 = v85;
      operator delete(v87);
    }

    if (v119 != &v122)
    {
      free(v119);
    }
  }

  return v71;
}

uint64_t mlir::mps::detail::InstanceNormOpGenericAdaptorBase::InstanceNormOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::InstanceNormOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    return 1;
  }

  v13[0] = *(a1 + 24);
  v15[0] = mlir::FloatAttr::getType(v13);
  if (mlir::Type::isF32(v15))
  {
    return 1;
  }

  v13[0] = "'mps.instance_norm' op attribute 'epsilon' failed to satisfy constraint: 32-bit float attribute";
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

uint64_t mlir::mps::InstanceNormOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "epsilon", 7uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 52;
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

uint64_t mlir::mps::InstanceNormOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "epsilon", 7, *a2);
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

unint64_t mlir::mps::InstanceNormOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::mps::InstanceNormOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 1769173093 ? (v4 = *(a3 + 3) == 1852796009) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::mps::InstanceNormOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 7 && *a2 == 1769173093 && *(a2 + 3) == 1852796009)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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

uint64_t mlir::mps::InstanceNormOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "epsilon", 7uLL, *a2);
  }

  return result;
}

BOOL mlir::mps::InstanceNormOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v2);
}

uint64_t mlir::mps::InstanceNormOp::setEpsilon(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::InstanceNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a5;
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::InstanceNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  if (a5)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = a5;
  }

  __src = v21;
  v20 = 0x200000000;
  v8 = *a2;
  mlir::ValueRange::ValueRange(&v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
  v22[0] = v17;
  v22[1] = v18;
  if (v18)
  {
    v10 = *(mlir::ValueRange::dereference_iterator(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v20) = v10;
    v11 = v20 + 1;
    LODWORD(v20) = v11;
    v12 = __src;
    v13 = *(a2 + 72);
    if (v13 + v11 > *(a2 + 76))
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v8, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v11 = v20;
    v12 = __src;
    v13 = *(a2 + 72);
    if (v13 + v20 > *(a2 + 76))
    {
LABEL_8:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v11)
  {
    memcpy((*(a2 + 64) + 8 * v13), v12, 8 * v11);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v11;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::mps::InstanceNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

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

uint64_t mlir::mps::InstanceNormOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  F32Type = mlir::Builder::getF32Type(a1, v10);
  result = mlir::Builder::getFloatAttr(a1, F32Type, a6);
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

void mlir::mps::InstanceNormOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  F32Type = mlir::Builder::getF32Type(a1, v8);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a5);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = FloatAttr;
  __src = v25;
  v24 = 0x200000000;
  v12 = *a2;
  mlir::ValueRange::ValueRange(&v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v20, *(a2 + 224), *(a2 + 232));
  v26[0] = v21;
  v26[1] = v22;
  if (v22)
  {
    v14 = *(mlir::ValueRange::dereference_iterator(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v24) = v14;
    v15 = v24 + 1;
    LODWORD(v24) = v15;
    v16 = __src;
    v17 = *(a2 + 72);
    if (v17 + v15 > *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v12, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v15 = v24;
    v16 = __src;
    v17 = *(a2 + 72);
    if (v17 + v24 > *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v17), v16, 8 * v15);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v15;
  if (__src != v25)
  {
    free(__src);
  }
}

unint64_t mlir::mps::InstanceNormOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  F32Type = mlir::Builder::getF32Type(a1, v12);
  result = mlir::Builder::getFloatAttr(a1, F32Type, a7);
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

uint64_t mlir::mps::InstanceNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::InstanceNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v26;
  v25 = 0x200000000;
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v27[0] = a3;
  v27[1] = a4;
  if (a4)
  {
    v19 = *(mlir::ValueRange::dereference_iterator(v27, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v25 >= HIDWORD(v25))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v25) = v19;
    v20 = v25 + 1;
    LODWORD(v25) = v20;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v20 > *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v17, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v20 = v25;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v25 > *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v22), v21, 8 * v20);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

mlir::Float32Type *mlir::mps::InstanceNormOp::populateDefaultProperties(uint64_t a1, mlir::Float32Type **a2)
{
  v6 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v6);
  v6 = result;
  if (!*a2)
  {
    F32Type = mlir::Builder::getF32Type(&v6, v4);
    result = mlir::Builder::getFloatAttr(0.0, &v6, F32Type);
    *a2 = result;
  }

  return result;
}

uint64_t mlir::mps::InstanceNormOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v7 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v3, "epsilon", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::IsFiniteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::IsFiniteOp::build(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), __src, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

unint64_t mlir::mps::IsFiniteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::IsFiniteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::IsFiniteOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::mps::IsFiniteOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::mps::IsFiniteOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

uint64_t mlir::mps::IsInfiniteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::IsInfiniteOp::build(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), __src, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

unint64_t mlir::mps::IsInfiniteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::IsInfiniteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::IsInfiniteOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::mps::IsInfiniteOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::mps::IsInfiniteOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

uint64_t mlir::mps::IsNaNOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::IsNaNOp::build(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), __src, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

unint64_t mlir::mps::IsNaNOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::IsNaNOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::IsNaNOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::mps::IsNaNOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::mps::IsNaNOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

uint64_t mlir::mps::LPNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a5;
  v14 = a4;
  v11 = a7;
  v12 = a6;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::LPNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  v7 = *a2;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v23[0] = v18;
  v23[1] = v19;
  if (v19)
  {
    v9 = *(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v21 >= HIDWORD(v21))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v21) = v9;
    v10 = v21 + 1;
    LODWORD(v21) = v10;
    v11 = __src;
    v12 = *(a2 + 72);
    if (v12 + v10 > *(a2 + 76))
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v7, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v10 = v21;
    v11 = __src;
    v12 = *(a2 + 72);
    if (v12 + v21 > *(a2 + 76))
    {
LABEL_4:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v10)
  {
    memcpy((*(a2 + 64) + 8 * v12), v11, 8 * v10);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v10;
  if (__src != v22)
  {
    free(__src);
  }
}

unint64_t mlir::mps::LPNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a6;
  v18 = a5;
  v15 = a8;
  v16 = a7;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
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

unint64_t mlir::mps::LPNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::LPNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v22[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v21;
  v20 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  v22[0] = a3;
  v22[1] = a4;
  if (a4)
  {
    v14 = *(mlir::ValueRange::dereference_iterator(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v20) = v14;
    v15 = v20 + 1;
    LODWORD(v20) = v15;
    v16 = __src;
    v17 = *(a2 + 72);
    if (v17 + v15 > *(a2 + 76))
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v12, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v15 = v20;
    v16 = __src;
    v17 = *(a2 + 72);
    if (v17 + v20 > *(a2 + 76))
    {
LABEL_8:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v17), v16, 8 * v15);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v15;
  if (__src != v21)
  {
    free(__src);
  }
}

uint64_t mlir::mps::LPNormOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v126 = *MEMORY[0x277D85DE8];
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    v5 = v4[17];
    if (v5 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_60;
    }

LABEL_8:
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = v4[1];
      v9 = *(v4 + 4);
      if (!v9)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = v4;
      mlir::mps::ConstantOp::verify();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = v25[1];
      v9 = *(v25 + 4);
      if (!v9)
      {
        goto LABEL_29;
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
      v26 = v10[1];
      goto LABEL_31;
    }

LABEL_29:
    v26 = 0;
LABEL_31:
    v109[0] = v3;
    v109[1] = v26;
    ElementType = mlir::ShapedType::getElementType(v109);
    if (!mlir::Type::isSignlessInteger(&ElementType, 1) && !mlir::Type::isSignedInteger(&ElementType, 8) && !mlir::Type::isSignedInteger(&ElementType, 16) && !mlir::Type::isSignedInteger(&ElementType, 32) && !mlir::Type::isSignedInteger(&ElementType, 64) && !mlir::Type::isUnsignedInteger(&ElementType, 8) && !mlir::Type::isUnsignedInteger(&ElementType, 16) && !mlir::Type::isUnsignedInteger(&ElementType, 32) && !mlir::Type::isUnsignedInteger(&ElementType, 64) && !mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType) && !mlir::Type::isBF16(&ElementType) && *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_60;
    }

    v27 = *v3;
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = v27[1];
      v30 = *(v27 + 4);
      if (!v30)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v37 = v27;
      mlir::mps::ConstantOp::verify();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = v37[1];
      v30 = *(v37 + 4);
      if (!v30)
      {
        goto LABEL_56;
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
      goto LABEL_58;
    }

LABEL_56:
    v38 = 0;
LABEL_58:
    v108[0] = v3;
    v108[1] = v38;
    Shape = mlir::ShapedType::getShape(v108);
    v125 = 1;
    if (v40 == 1 && *Shape == v125)
    {
      goto LABEL_186;
    }

    goto LABEL_60;
  }

  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = v4[1];
    v18 = *(v4 + 4);
    if (!v18)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v70 = v4;
    mlir::mps::ConstantOp::verify();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = v70[1];
    v18 = *(v70 + 4);
    if (!v18)
    {
      goto LABEL_116;
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
LABEL_116:
    v113 = v3;
    v114 = 0;
    hasRank = mlir::ShapedType::hasRank(&v113);
    v4 = *v3;
    if (!hasRank)
    {
      goto LABEL_3;
    }

    goto LABEL_119;
  }

  v72 = v19[1];
  v113 = v3;
  v114 = v72;
  v73 = mlir::ShapedType::hasRank(&v113);
  v4 = *v3;
  if (!v73)
  {
    goto LABEL_3;
  }

LABEL_119:
  {
    v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v75 = v4[1];
    v76 = *(v4 + 4);
    if (!v76)
    {
      goto LABEL_150;
    }
  }

  else
  {
    v103 = v4;
    mlir::mps::ConstantOp::verify();
    v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v75 = v103[1];
    v76 = *(v103 + 4);
    if (!v76)
    {
      goto LABEL_150;
    }
  }

  v77 = v75;
  v78 = v76;
  do
  {
    v79 = v78 >> 1;
    v80 = &v77[2 * (v78 >> 1)];
    v82 = *v80;
    v81 = v80 + 2;
    v78 += ~(v78 >> 1);
    if (v82 < v74)
    {
      v77 = v81;
    }

    else
    {
      v78 = v79;
    }
  }

  while (v78);
  if (v77 == &v75[2 * v76] || *v77 != v74)
  {
LABEL_150:
    v104 = v3;
    v105 = 0;
    mlir::ShapedType::getShape(&v104);
    v4 = *v3;
    if (v84)
    {
      goto LABEL_3;
    }

    goto LABEL_153;
  }

  v85 = v77[1];
  v104 = v3;
  v105 = v85;
  mlir::ShapedType::getShape(&v104);
  v4 = *v3;
  if (v86)
  {
    goto LABEL_3;
  }

LABEL_153:
  {
    v87 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v88 = v4[1];
    v89 = *(v4 + 4);
    if (v89)
    {
      goto LABEL_155;
    }

LABEL_163:
    v89 = 0;
    v90 = v88;
    goto LABEL_164;
  }

  v96 = v4;
  mlir::mps::ConstantOp::verify();
  v87 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v88 = v96[1];
  v89 = *(v96 + 4);
  if (!v89)
  {
    goto LABEL_163;
  }

LABEL_155:
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
LABEL_164:
  if (v90 != &v88[2 * v89] && *v90 == v87)
  {
    v97 = v90[1];
  }

  else
  {
    v97 = 0;
  }

  *&v111 = v3;
  *(&v111 + 1) = v97;
  ElementType = mlir::ShapedType::getElementType(&v111);
  if (mlir::Type::isSignlessInteger(&ElementType, 1) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64) || mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType) || *(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_186;
  }

  v4 = *v3;
  v98 = *(*v3 + 17);
  if (v98 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v98 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_8;
  }

LABEL_60:
  v41 = *v3;
  if (*(*v3 + 17) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v62 = v41[1];
      v63 = *(v41 + 4);
      if (!v63)
      {
        goto LABEL_131;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v62 = v41[1];
      v63 = *(v41 + 4);
      if (!v63)
      {
        goto LABEL_131;
      }
    }

    v64 = v62;
    v65 = v63;
    do
    {
      v66 = v65 >> 1;
      v67 = &v64[2 * (v65 >> 1)];
      v69 = *v67;
      v68 = v67 + 2;
      v65 += ~(v65 >> 1);
      if (v69 < v61)
      {
        v64 = v68;
      }

      else
      {
        v65 = v66;
      }
    }

    while (v65);
    if (v64 != &v62[2 * v63] && *v64 == v61)
    {
      v83 = v64[1];
      goto LABEL_133;
    }

LABEL_131:
    v83 = 0;
LABEL_133:
    v107[0] = v3;
    v107[1] = v83;
    ElementType = mlir::ShapedType::getElementType(v107);
    if (mlir::Type::isSignlessInteger(&ElementType, 1) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64) || mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType) || *(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_186;
    }
  }

  v106 = 261;
  v104 = "operand";
  v105 = 7;
  mlir::Operation::emitOpError(&v113, v2, &v104);
  if (v113)
  {
    LODWORD(v111) = 3;
    *(&v111 + 1) = " #";
    v112 = 2;
    if (v116 >= v117)
    {
      if (v115 > &v111 || v115 + 24 * v116 <= &v111)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v42 = v115 + 24 * v116;
    v43 = v111;
    *(v42 + 2) = v112;
    *v42 = v43;
    v44 = ++v116;
    if (v113)
    {
      LODWORD(v111) = 5;
      *(&v111 + 1) = 1;
      if (v44 >= v117)
      {
        if (v115 > &v111 || v115 + 24 * v44 <= &v111)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v45 = v115 + 24 * v116;
      v46 = v111;
      *(v45 + 2) = v112;
      *v45 = v46;
      v47 = ++v116;
      if (v113)
      {
        LODWORD(v111) = 3;
        *(&v111 + 1) = " must be 0D tensor of mps native type values or static-shape defined tensor with shape equal to [1] or unranked tensor of mps native type values, but got ";
        v112 = 154;
        if (v47 >= v117)
        {
          if (v115 > &v111 || v115 + 24 * v47 <= &v111)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v48 = v115 + 24 * v116;
        v49 = v111;
        *(v48 + 2) = v112;
        *v48 = v49;
        ++v116;
        if (v113)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v111, v3);
          if (v116 >= v117)
          {
            if (v115 > &v111 || v115 + 24 * v116 <= &v111)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v50 = v115 + 24 * v116;
          v51 = v111;
          *(v50 + 2) = v112;
          *v50 = v51;
          ++v116;
        }
      }
    }
  }

  v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
  if (v113)
  {
    mlir::InFlightDiagnostic::report(&v113);
  }

  if (v124 == 1)
  {
    if (v123 != &v124)
    {
      free(v123);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v122;
      v55 = __p;
      if (v122 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v122 = v53;
      operator delete(v55);
    }

    v56 = v119;
    if (v119)
    {
      v57 = v120;
      v58 = v119;
      if (v120 != v119)
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
        v58 = v119;
      }

      v120 = v56;
      operator delete(v58);
    }

    if (v115 != &v118)
    {
      free(v115);
    }
  }

  if (!v52)
  {
    return 0;
  }

LABEL_186:
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v100 = *this - 16;
  }

  else
  {
    v100 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v100, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::LSTMGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  *(a1 + 104) = *(v3 + 80);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  v8 = *(a2 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 112), ((a2 + 64 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v8 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 112), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  *(a1 + 104) = *(v3 + 80);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  v8 = *(a2 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 112), ((a2 + 64 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v8 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 112), 0, 0);
  }

  return a1;
}

unint64_t mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::LSTMGradientOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 72);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 88);
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

  v10 = (this + 4 * v3 + 72);
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

uint64_t mlir::mps::LSTMGradientOp::getAsmResultNames(uint64_t *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "gradient_output_sequence", 24);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  a2(a3, v9, "gradient_recurrent_weight", 25);
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 2);
  v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  a2(a3, v12, "gradient_input_state", 20);
  if (*(*a1 + 36))
  {
    v13 = *a1 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 3);
  v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  a2(a3, v15, "gradient_input_cell", 19);
  v16 = *a1;
  v17 = *(*a1 + 36);
  v18 = v16 - 16;
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 4);
  if (v17 != 4)
  {
    v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return (a2)(a3, v21, "gradient_peephole", 17);
  }

  return result;
}

uint64_t mlir::mps::LSTMGradientOp::getODSResults(mlir::mps::LSTMGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
LABEL_14:
      v26 = a2 - v4;
      v27 = &dword_257374318 + v4;
      do
      {
        v28 = *v27++;
        v5 += v28;
        --v26;
      }

      while (v26);
      goto LABEL_16;
    }

    if (a2 >= 0x20)
    {
      v6 = 0uLL;
      v7 = "4mlir3mps10MPSDialectE";
      v8 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v9 = v4;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      do
      {
        v16 = *v7[-2].i8;
        v17 = vmovl_u8(*v16.i8);
        v18 = vmovl_high_u8(v16);
        v19 = vmovl_u8(*v7);
        v20 = vmovl_high_u8(*v7->i8);
        v11 = vaddw_high_u16(v11, v18);
        v10 = vaddw_u16(v10, *v18.i8);
        v8 = vaddw_high_u16(v8, v17);
        v6 = vaddw_u16(v6, *v17.i8);
        v15 = vaddw_high_u16(v15, v20);
        v14 = vaddw_u16(v14, *v20.i8);
        v13 = vaddw_high_u16(v13, v19);
        v12 = vaddw_u16(v12, *v19.i8);
        v7 += 4;
        v9 -= 32;
      }

      while (v9);
      a4 = vaddq_s32(vaddq_s32(v13, v8), vaddq_s32(v15, v11));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v6), vaddq_s32(v14, v10)), a4));
      if (v4 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v21 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v22 = v5;
    v23 = (&dword_257374318 + v21);
    v24 = v21 - v4;
    do
    {
      v25 = *v23++;
      a4.i32[0] = v25;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v22 = vaddw_u16(v22, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v22);
    if (v4 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_16:
  v29 = *(*this + 36);
  if (v29)
  {
    result = *this - 16;
  }

  else
  {
    result = 0;
  }

  if (a2 + (v29 - 5) * v5)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(result, a2 + (v29 - 5) * v5);
  }

  return result;
}

unint64_t mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(mlir::mps::LSTMGradientOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 112);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 128);
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

  v12 = (16 * v2 + 4 * v5 + *this + 112);
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

unint64_t mlir::mps::LSTMGradientOp::getODSResultIndexAndLength(mlir::mps::LSTMGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (!a2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v4 = a2;
  if (a2 < 4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v7 = 0uLL;
    v8 = "4mlir3mps10MPSDialectE";
    v9 = 0uLL;
    v5 = a2 & 0xFFFFFFE0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v8[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v8);
      v21 = vmovl_high_u8(*v8->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v9 = vaddw_high_u16(v9, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v8 += 4;
      v10 -= 32;
    }

    while (v10);
    a4 = vaddq_s32(vaddq_s32(v14, v9), vaddq_s32(v16, v12));
    v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a4));
    if (v5 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v27 = &dword_257374318 + v5;
      v28 = a2 - v5;
      do
      {
        v29 = *v27++;
        v6 += v29;
        --v28;
      }

      while (v28);
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v22 = v5;
  v5 = a2 & 0xFFFFFFFC;
  v23 = v6;
  v24 = (&dword_257374318 + v22);
  v25 = v22 - v5;
  do
  {
    v26 = *v24++;
    a4.i32[0] = v26;
    a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
    v23 = vaddw_u16(v23, *a4.i8);
    v25 += 4;
  }

  while (v25);
  v6 = vaddvq_s32(v23);
  if (v5 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v30 = *(*this + 36);
  v31 = 0x100000000;
  if (*(&dword_257374318 + v4))
  {
    v31 = (v30 - 4) << 32;
  }

  return v31 | (a2 + (v30 - 5) * v6);
}

uint64_t mlir::mps::LSTMGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v54 = v6;
  if (!v6)
  {
    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected DictionaryAttr to set properties";
      v56 = 41;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v59 + 24 * v60;
      v23 = v55;
      *(v22 + 2) = v56;
      *v22 = v23;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }

    if (v68 != 1)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v66;
      v26 = __p;
      if (v66 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v66 = v24;
      operator delete(v26);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_70;
    }

    v27 = v64;
    v19 = v63;
    if (v64 == v63)
    {
LABEL_69:
      v64 = v17;
      operator delete(v19);
LABEL_70:
      if (v59 != &v62)
      {
        free(v59);
      }

      return 0;
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
LABEL_68:
    v19 = v63;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v54, "cell_activation", 0xFuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v9 = v8;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 60;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v59 + 24 * v60;
        v11 = v55;
        *(v10 + 2) = v56;
        *v10 = v11;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v9);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v59 + 24 * v60;
          v13 = v55;
          *(v12 + 2) = v56;
          *v12 = v13;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v66;
        v16 = __p;
        if (v66 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v66 = v14;
        operator delete(v16);
      }

      v17 = v63;
      if (!v63)
      {
        goto LABEL_70;
      }

      v18 = v64;
      v19 = v63;
      if (v64 == v63)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v54, "fgate_activation", 0x10uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v31 = v30;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 61;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v59 + 24 * v60;
        v33 = v55;
        *(v32 + 2) = v56;
        *v32 = v33;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v31);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v59 + 24 * v60;
          v35 = v55;
          *(v34 + 2) = v56;
          *v34 = v35;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v66;
        v38 = __p;
        if (v66 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v66 = v36;
        operator delete(v38);
      }

      v17 = v63;
      if (!v63)
      {
        goto LABEL_70;
      }

      v39 = v64;
      v19 = v63;
      if (v64 == v63)
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

  v42 = mlir::DictionaryAttr::get(&v54, "gate_layout", 0xBuLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
    {
      v43 = v42;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 56;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v59 + 24 * v60;
        v45 = v55;
        *(v44 + 2) = v56;
        *v44 = v45;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v43);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v59 + 24 * v60;
          v47 = v55;
          *(v46 + 2) = v56;
          *v46 = v47;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if (v68 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v58);
      }

      return 0;
    }

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v54, "igate_activation", 0x10uLL);
  *&v55 = v48;
  if (v48)
  {
    if (*(*v48 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v57, a4);
LABEL_95:
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v57, v49);
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v52, &v55);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
      return 0;
    }

    a1[3] = v48;
  }

  v50 = mlir::DictionaryAttr::get(&v54, "ogate_activation", 0x10uLL);
  *&v55 = v50;
  if (v50)
  {
    if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v57, a4);
      goto LABEL_95;
    }

    a1[4] = v50;
  }

  v51 = mlir::DictionaryAttr::get(&v54, "zgate_activation", 0x10uLL);
  *&v55 = v51;
  if (v51)
  {
    if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v57, a4);
      goto LABEL_95;
    }

    a1[5] = v51;
  }

  if (mlir::DictionaryAttr::get(&v54, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v54, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::mps::LSTMGradientOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = a1;
  v27 = v29;
  v28 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v26, "cell_activation", 0xF, *a2);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v27 + 16 * v28);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v28) = v28 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v26, "fgate_activation", 0x10, v6);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v27 + 16 * v28);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v28) = v28 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v26, "gate_layout", 0xB, v10);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v27 + 16 * v28);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v28) = v28 + 1;
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = mlir::Builder::getNamedAttr(&v26, "igate_activation", 0x10, v14);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = (v27 + 16 * v28);
    *v17 = v15;
    v17[1] = v16;
    LODWORD(v28) = v28 + 1;
  }

  v18 = a2[4];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v26, "ogate_activation", 0x10, v18);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v21 = (v27 + 16 * v28);
    *v21 = v19;
    v21[1] = v20;
    LODWORD(v28) = v28 + 1;
  }

  v22 = a2[5];
  if (v22)
  {
    v23 = mlir::Builder::getNamedAttr(&v26, "zgate_activation", 0x10, v22);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = (v27 + 16 * v28);
    *v25 = v23;
    v25[1] = v24;
    LODWORD(v28) = v28 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::mps::LSTMGradientOp::computePropertiesHash(void *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[3];
  v8 = HIDWORD(a1[2]);
  v9 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v8);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v43 = v6;
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = a1[5];
  v14 = HIDWORD(a1[4]);
  v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
  v40 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v41 = v12;
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v18 = a1[7];
  v20 = a1[8];
  v19 = a1[9];
  v21 = a1[6] - 0x3C5A37A36834CED9 * v19 - 0x6E18B188484051E8;
  v22 = __ROR8__(v21 + v19, 52);
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v23 = __ROR8__(v21, 37);
  v24 = v21 + v18;
  v25 = __ROR8__(v24, 7);
  v26 = v24 + v20;
  v27 = v25 + v23 + v22 + __ROR8__(v26, 31);
  v28 = v20 + v18;
  v29 = a1[10];
  v30 = __ROR8__(v28 + v29, 52);
  v31 = __ROR8__(v28, 37);
  v32 = v28 + v20;
  v33 = __ROR8__(v32, 7);
  v34 = v32 + v19;
  v35 = v26 + v19 + v31 + v30 + v33 + __ROR8__(v34, 31);
  v36 = (0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v34 + v29 + v27) - 0x651E95C4D06FBFB1 * v35) ^ ((0xC3A5C85C97CB3127 * (v34 + v29 + v27) - 0x651E95C4D06FBFB1 * v35) >> 47))) ^ 0xFF51AFD7ED558CCDLL;
  v38 = 0x9AE16A3B2F90404FLL * ((v36 + v27) ^ ((v36 + v27) >> 47));
  memset(v45, 0, sizeof(v45));
  v46 = 0xFF51AFD7ED558CCDLL;
  v44 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v44, 0, v45, &v45[3] + 8, &v43, &v42, &v41, &v40, &v39, &v38);
}

uint64_t mlir::mps::LSTMGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 15)
  {
    if (__n != 11)
    {
      if (__n == 15 && *__s1 == 0x7463615F6C6C6563 && *(__s1 + 7) == 0x6E6F697461766974)
      {
        return *a2;
      }

      return 0;
    }

    if (memcmp(__s1, "gate_layout", 0xBuLL))
    {
      return 0;
    }

    return a2[2];
  }

  else
  {
    if (__n != 16)
    {
      if (__n == 19)
      {
        if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
        {
          goto LABEL_28;
        }
      }

      else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
      {
LABEL_28:
        mlir::detail::DenseArrayAttrImpl<int>::get();
      }

      return 0;
    }

    if (!memcmp(__s1, "fgate_activation", 0x10uLL))
    {
      return a2[1];
    }

    else if (!memcmp(__s1, "igate_activation", 0x10uLL))
    {
      return a2[3];
    }

    else
    {
      if (*__s1 != 0x63615F657461676FLL || __s1[1] != 0x6E6F697461766974)
      {
        if (*__s1 == 0x63615F657461677ALL && __s1[1] == 0x6E6F697461766974)
        {
          return a2[5];
        }

        return 0;
      }

      return a2[4];
    }
  }
}

uint64_t mlir::mps::LSTMGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 15)
  {
    if (a3 == 11)
    {
      result = memcmp(__s1, "gate_layout", 0xBuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[2] = v12;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }

    else if (a3 == 15 && *__s1 == 0x7463615F6C6C6563 && *(__s1 + 7) == 0x6E6F697461766974)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else
  {
    if (a3 != 16)
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

      return result;
    }

    result = memcmp(__s1, "fgate_activation", 0x10uLL);
    if (result)
    {
      result = memcmp(__s1, "igate_activation", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x63615F657461676FLL && *(__s1 + 1) == 0x6E6F697461766974)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            v5[4] = v15;
          }

          else
          {
            v5[4] = 0;
          }
        }

        else if (*__s1 == 0x63615F657461677ALL && *(__s1 + 1) == 0x6E6F697461766974)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
            {
              v11 = a4;
            }

            else
            {
              v11 = 0;
            }

            v5[5] = v11;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        v5[3] = v14;
      }

      else
      {
        v5[3] = 0;
      }
    }

    else if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v5[1] = v13;
    }

    else
    {
      v5[1] = 0;
    }
  }

  return result;
}

void mlir::mps::LSTMGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "cell_activation", 0xFuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "fgate_activation", 0x10uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "gate_layout", 0xBuLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "igate_activation", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "ogate_activation", 0x10uLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "zgate_activation", 0x10uLL, v9);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::mps::LSTMGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v8, "cell_activation", 15, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "fgate_activation", 16, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(v10, "gate_layout", 11, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v11, "igate_activation", 16, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v12, "ogate_activation", 16, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v13, "zgate_activation", 16, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid LSTM gate layout";
        v22 = 54;
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

uint64_t mlir::mps::LSTMGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v8[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::LSTMGateLayoutAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 4))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 5))
      {
        v5[0] = a1;
        v5[1] = (v3 + 6);
        return mlir::mps::LSTMGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v5) & 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 11)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5[0] = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(v8, a1, v5);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
      }
    }
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::LSTMGateLayoutAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 56))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (!v27)
  {
    return 1;
  }

  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::LSTMGateLayoutAttr]";
  *(&v28 + 1) = 79;
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

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
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
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::mps::LSTMGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 0xAuLL);
}

uint64_t mlir::mps::LSTMGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  (*(*a2 + 24))(a2, *(v5 + 16));
  (*(*a2 + 24))(a2, *(v5 + 24));
  (*(*a2 + 24))(a2, *(v5 + 32));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 24))(a2, *(v5 + 40));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 48), 10);
  }

  return result;
}

uint64_t mlir::mps::LSTMGradientOp::setIgateActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::LSTMGradientOp::setFgateActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::LSTMGradientOp::setZgateActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::mps::LSTMGradientOp::setOgateActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::LSTMGradientOp::setCellActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::LSTMGradientOp::setGateLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::LSTMGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v28 = a19;
  v60 = a8;
  v58 = a10;
  v59 = a9;
  v56 = a18;
  v57 = a11;
  v54 = a20;
  v55 = a19;
  v52 = a22;
  v53 = a21;
  v51 = a23;
  mlir::OperationState::addOperands(a2, &v60, 1uLL);
  mlir::OperationState::addOperands(a2, &v59, 1uLL);
  mlir::OperationState::addOperands(a2, &v58, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v57, 1uLL);
  if (a18)
  {
    result = mlir::OperationState::addOperands(a2, &v56, 1uLL);
    v28 = v55;
  }

  if (v28)
  {
    result = mlir::OperationState::addOperands(a2, &v55, 1uLL);
  }

  if (v54)
  {
    result = mlir::OperationState::addOperands(a2, &v54, 1uLL);
  }

  if (v53)
  {
    result = mlir::OperationState::addOperands(a2, &v53, 1uLL);
  }

  if (v52)
  {
    result = mlir::OperationState::addOperands(a2, &v52, 1uLL);
  }

  if (v51)
  {
    result = mlir::OperationState::addOperands(a2, &v51, 1uLL);
    v30 = v51 != 0;
  }

  else
  {
    v30 = 0;
  }

  v31.i64[0] = v54;
  v31.i64[1] = v53;
  v32.i64[0] = v56;
  v32.i64[1] = v55;
  v33 = v52 != 0;
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  v35.i64[0] = 0x100000001;
  v35.i64[1] = 0x100000001;
  v34[3] = v35;
  v34[4] = vbicq_s8(v35, vuzp1q_s32(vceqzq_s64(v32), vceqzq_s64(v31)));
  v34[5].i32[0] = v33;
  v34[5].i32[1] = v30;
  if (a12)
  {
    v36 = *(a2 + 256);
    if (!v36)
    {
      operator new();
    }

    *(v36 + 24) = a12;
  }

  if (a13)
  {
    v37 = *(a2 + 256);
    if (!v37)
    {
      operator new();
    }

    *(v37 + 8) = a13;
  }

  if (a14)
  {
    v38 = *(a2 + 256);
    if (!v38)
    {
      operator new();
    }

    *(v38 + 40) = a14;
  }

  if (a15)
  {
    v39 = *(a2 + 256);
    if (!v39)
    {
      operator new();
    }

    *(v39 + 32) = a15;
  }

  if (a16)
  {
    v40 = *(a2 + 256);
    if (!v40)
    {
      operator new();
    }

    *v40 = a16;
  }

  if (a17)
  {
    v41 = *(a2 + 256);
    if (!v41)
    {
      operator new();
    }

    *(v41 + 16) = a17;
  }

  v42 = *(a2 + 72);
  if (v42 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v42) = a3;
  v43 = *(a2 + 76);
  v44 = *(a2 + 72) + 1;
  *(a2 + 72) = v44;
  if (v44 >= v43)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v44) = a4;
  v45 = *(a2 + 76);
  v46 = *(a2 + 72) + 1;
  *(a2 + 72) = v46;
  if (v46 >= v45)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v46) = a5;
  v47 = *(a2 + 76);
  v48 = *(a2 + 72) + 1;
  *(a2 + 72) = v48;
  if (v48 >= v47)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v48) = a6;
  v49 = *(a2 + 72) + 1;
  *(a2 + 72) = v49;
  if (a7)
  {
    if (v49 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 64) + 8 * v49) = a7;
    ++*(a2 + 72);
  }

  return result;
}

void mlir::mps::LSTMGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = a14;
  v56[2] = *MEMORY[0x277D85DE8];
  v50 = a4;
  v51 = a3;
  v48 = a6;
  v49 = a5;
  v46 = a14;
  v47 = a13;
  v44 = a16;
  v45 = a15;
  v42 = a18;
  v43 = a17;
  mlir::OperationState::addOperands(a2, &v51, 1uLL);
  mlir::OperationState::addOperands(a2, &v50, 1uLL);
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  mlir::OperationState::addOperands(a2, &v48, 1uLL);
  if (a13)
  {
    mlir::OperationState::addOperands(a2, &v47, 1uLL);
    v21 = v46;
  }

  if (v21)
  {
    mlir::OperationState::addOperands(a2, &v46, 1uLL);
  }

  if (v45)
  {
    mlir::OperationState::addOperands(a2, &v45, 1uLL);
  }

  if (v44)
  {
    mlir::OperationState::addOperands(a2, &v44, 1uLL);
  }

  if (v43)
  {
    mlir::OperationState::addOperands(a2, &v43, 1uLL);
  }

  if (v42)
  {
    mlir::OperationState::addOperands(a2, &v42, 1uLL);
    v22 = v42 != 0;
  }

  else
  {
    v22 = 0;
  }

  v23.i64[0] = v45;
  v23.i64[1] = v44;
  v24.i64[0] = v47;
  v24.i64[1] = v46;
  v25 = v43 != 0;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  v27.i64[0] = 0x100000001;
  v27.i64[1] = 0x100000001;
  v26[3] = v27;
  v26[4] = vbicq_s8(v27, vuzp1q_s32(vceqzq_s64(v24), vceqzq_s64(v23)));
  v26[5].i32[0] = v25;
  v26[5].i32[1] = v22;
  if (a7)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 24) = a7;
  }

  if (a8)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 8) = a8;
  }

  if (a9)
  {
    v30 = *(a2 + 256);
    if (!v30)
    {
      operator new();
    }

    *(v30 + 40) = a9;
  }

  if (a10)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 32) = a10;
  }

  if (a11)
  {
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *v32 = a11;
  }

  if (a12)
  {
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *(v33 + 16) = a12;
  }

  v54 = v56;
  v55 = 0x200000000;
  v34 = *a2;
  mlir::ValueRange::ValueRange(v53, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v37 = *(a2 + 256);
  v38 = mlir::RegionRange::RegionRange(v52, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::LSTMGradientOp::inferReturnTypes(v38, v34, 1, v53[0], v53[1], Dictionary, v37, v39, v52[0], v52[1], &v54))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v40 = v55;
  v41 = *(a2 + 72);
  if (v41 + v55 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v55)
  {
    memcpy((*(a2 + 64) + 8 * v41), v54, 8 * v55);
    LODWORD(v41) = *(a2 + 72);
  }

  *(a2 + 72) = v41 + v40;
  if (v54 != v56)
  {
    free(v54);
  }
}