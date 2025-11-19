uint64_t mlir::mps::ResizeGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v56 + 24 * v57;
      v23 = v52;
      *(v22 + 2) = v53;
      *v22 = v23;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v17 = v60;
    if (!v60)
    {
      goto LABEL_70;
    }

    v27 = v61;
    v19 = v60;
    if (v61 == v60)
    {
LABEL_69:
      v61 = v17;
      operator delete(v19);
LABEL_70:
      if (v56 != &v59)
      {
        free(v56);
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
    v19 = v60;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "align_corners", 0xDuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 58;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v56 + 24 * v57;
        v11 = v52;
        *(v10 + 2) = v53;
        *v10 = v11;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v56 + 24 * v57;
          v13 = v52;
          *(v12 + 2) = v53;
          *v12 = v13;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v63;
        v16 = __p;
        if (v63 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v63 = v14;
        operator delete(v16);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v18 = v61;
      v19 = v60;
      if (v61 == v60)
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

  v30 = mlir::DictionaryAttr::get(&v51, "center_result", 0xDuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 58;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v56 + 24 * v57;
        v33 = v52;
        *(v32 + 2) = v53;
        *v32 = v33;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v31);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v56 + 24 * v57;
          v35 = v52;
          *(v34 + 2) = v53;
          *v34 = v35;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v63;
        v38 = __p;
        if (v63 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v63 = v36;
        operator delete(v38);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v39 = v61;
      v19 = v60;
      if (v61 == v60)
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

  v43 = mlir::DictionaryAttr::get(&v51, "mode", 4uLL);
  if (v43)
  {
    if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
    {
      v44 = v43;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 49;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v56 + 24 * v57;
        v46 = v52;
        *(v45 + 2) = v53;
        *v45 = v46;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v44);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v56 + 24 * v57;
          v48 = v52;
          *(v47 + 2) = v53;
          *v47 = v48;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v43;
  }

  v49 = mlir::DictionaryAttr::get(&v51, "nearest_rounding_mode", 0x15uLL);
  *&v52 = v49;
  if (v49)
  {
    if (*(*v49 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
    {
      a3(&v54, a4);
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v52);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return 0;
    }

    a1[3] = v49;
  }

  if (mlir::DictionaryAttr::get(&v51, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v51, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::mps::ResizeGradientOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v18, "align_corners", 0xD, *a2);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v19 + 16 * v20);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v20) = v20 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v18, "center_result", 0xD, v6);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v19 + 16 * v20);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v20) = v20 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v18, "mode", 4, v10);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v19 + 16 * v20);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v20) = v20 + 1;
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = mlir::Builder::getNamedAttr(&v18, "nearest_rounding_mode", 0x15, v14);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = (v19 + 16 * v20);
    *v17 = v15;
    v17[1] = v16;
    LODWORD(v20) = v20 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::mps::ResizeGradientOp::computePropertiesHash(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
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
  v13 = a1[5];
  v14 = __ROR8__(v13 + 16, 16);
  v15 = 0x9DDFEA08EB382D69 * (a1[4] ^ 0xFF51AFD7ED558CCDLL ^ v14);
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v24[0] = v3;
  v24[1] = v6;
  v21 = 0;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v21, v25, v26, v9);
  v22 = v21;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v22, v17, v26, v12);
  v23 = v22;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v23, v18, v26, v16 ^ v13);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v24, v23, v19, v26);
}

uint64_t mlir::mps::ResizeGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
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

    else
    {
      if (__n != 21)
      {
        return 0;
      }

      if (!memcmp(__s1, "nearest_rounding_mode", 0x15uLL))
      {
        return a2[3];
      }

      v9 = *__s1 == 0x5F646E617265706FLL && *(__s1 + 1) == 0x5F746E656D676573;
      if (!v9 || *(__s1 + 13) != 0x73657A69735F746ELL)
      {
        return 0;
      }
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "mode", 4uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (*__s1 != 0x6F635F6E67696C61 || *(__s1 + 5) != 0x7372656E726F635FLL)
  {
    if (*__s1 == 0x725F7265746E6563 && *(__s1 + 5) == 0x746C757365725F72)
    {
      return a2[1];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::ResizeGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
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

      result = memcmp(__s1, "nearest_rounding_mode", 0x15uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }

          *(v5 + 24) = v13;
        }

        else
        {
          *(v5 + 24) = 0;
        }

        return result;
      }

      if (*__s1 != 0x5F646E617265706FLL || *(__s1 + 1) != 0x5F746E656D676573 || *(__s1 + 13) != 0x73657A69735F746ELL)
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
    result = memcmp(__s1, "mode", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        *(v5 + 16) = v11;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 13)
  {
    if (*__s1 == 0x6F635F6E67696C61 && *(__s1 + 5) == 0x7372656E726F635FLL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        *result = v12;
      }

      else
      {
        *result = 0;
      }
    }

    else if (*__s1 == 0x725F7265746E6563 && *(__s1 + 5) == 0x746C757365725F72)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        *(result + 8) = v14;
      }

      else
      {
        *(result + 8) = 0;
      }
    }
  }

  return result;
}

void mlir::mps::ResizeGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "align_corners", 0xDuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "center_result", 0xDuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "mode", 4uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "nearest_rounding_mode", 0x15uLL, v7);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::mps::ResizeGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "align_corners", 13, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "center_result", 13, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v10, "mode", 4, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v11, "nearest_rounding_mode", 21, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid NearestRoundingMode";
        v22 = 57;
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

uint64_t mlir::mps::ResizeGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v8[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8)) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(a1, (v3 + 16)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NearestRoundingModeAttr>(a1, (v3 + 24)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 32), 4uLL))
      {
        return 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 5)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5 = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(v8, a1, &v5);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
      }
    }
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::SamplingModeAttr]";
  *(&v28 + 1) = 77;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NearestRoundingModeAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::NearestRoundingModeAttr]";
  *(&v28 + 1) = 84;
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

uint64_t mlir::mps::ResizeGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  (*(*a2 + 24))(a2, *(v5 + 24));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 32), 4);
  }

  return result;
}

uint64_t mlir::mps::ResizeGradientOp::getNearestRoundingMode(mlir::mps::ResizeGradientOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  if (v1)
  {
    return *(v1 + 8) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::ResizeGradientOp::setMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::ResizeGradientOp::setCenterResult(uint64_t this, int a2)
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

uint64_t mlir::mps::ResizeGradientOp::setAlignCorners(uint64_t this, int a2)
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

uint64_t mlir::mps::ResizeGradientOp::setNearestRoundingMode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 44);
  if ((a2 & 0x100000000) != 0)
  {
    v5 = a2;
    Context = mlir::Attribute::getContext((v2 + 24));
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id;
    v10[1] = Context;
    v14[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail30NearestRoundingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_23NearestRoundingModeAttrEJNS2_19NearestRoundingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v14[1] = v10;
    v13 = v5;
    v8 = v5 ^ 0xFF51AFD7ED558CCDLL;
    v9 = 0x9DDFEA08EB382D69 * (((8 * v5) | 4) ^ v8);
    v11[0] = &v13;
    v11[1] = v14;
    v12 = &v13;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  }

  else
  {
    result = 0;
  }

  *(v2 + 16 * ((v3 >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::ResizeGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a7;
  v28 = a5;
  v29 = a4;
  v26 = a7;
  v27 = a6;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v28, 1uLL);
  if (a6)
  {
    result = mlir::OperationState::addOperands(a2, &v27, 1uLL);
    v12 = v26;
  }

  if (v12)
  {
    result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
    v17 = v26 != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = v27 != 0;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 32) = 0x100000001;
  *(v19 + 40) = v18;
  *(v19 + 44) = v17;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a8;
  if (a9)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 8) = a9;
    v21 = a11;
    if (!a10)
    {
LABEL_10:
      if (!v21)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v21 = a11;
    if (!a10)
    {
      goto LABEL_10;
    }
  }

  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *v24 = a10;
  if (!v21)
  {
LABEL_11:
    v22 = *(a2 + 72);
    if (v22 >= *(a2 + 76))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_22:
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 24) = v21;
  v22 = *(a2 + 72);
  if (v22 >= *(a2 + 76))
  {
LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_13:
  *(*(a2 + 64) + 8 * v22) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ResizeGradientOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a6;
  v41[2] = *MEMORY[0x277D85DE8];
  v35 = a4;
  v36 = a3;
  v33 = a6;
  v34 = a5;
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v34, 1uLL);
    v12 = v33;
  }

  if (v12)
  {
    mlir::OperationState::addOperands(a2, &v33, 1uLL);
    v16 = v33 != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v34 != 0;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = 0x100000001;
  *(v18 + 40) = v17;
  *(v18 + 44) = v16;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a7;
  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a8;
    v20 = a10;
    if (!a9)
    {
LABEL_10:
      if (!v20)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v20 = a10;
    if (!a9)
    {
      goto LABEL_10;
    }
  }

  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a9;
  if (v20)
  {
LABEL_20:
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 24) = v20;
  }

LABEL_23:
  __src = v41;
  v40 = 0x200000000;
  v24 = *a1;
  mlir::ValueRange::ValueRange(v38, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v27 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v37, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ResizeGradientOp::inferReturnTypes(v24, v28, v29, v38[0], v38[1], Dictionary, v27, v30, v37[0], v37[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v31 = v40;
  v32 = *(a2 + 72);
  if (v32 + v40 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v40)
  {
    memcpy((*(a2 + 64) + 8 * v32), __src, 8 * v40);
    LODWORD(v32) = *(a2 + 72);
  }

  *(a2 + 72) = v32 + v31;
  if (__src != v41)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ResizeGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a8;
  v31 = a6;
  v32 = a5;
  v29 = a8;
  v30 = a7;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v31, 1uLL);
  if (a7)
  {
    result = mlir::OperationState::addOperands(a2, &v30, 1uLL);
    v12 = v29;
  }

  if (v12)
  {
    result = mlir::OperationState::addOperands(a2, &v29, 1uLL);
    v18 = v29 != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v30 != 0;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 32) = 0x100000001;
  *(v20 + 40) = v19;
  *(v20 + 44) = v18;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a9;
  if (a10)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 8) = a10;
    v22 = a12;
    if (!a11)
    {
LABEL_10:
      if (!v22)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v22 = a12;
    if (!a11)
    {
      goto LABEL_10;
    }
  }

  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *v27 = a11;
  if (!v22)
  {
LABEL_11:
    v23 = *(a2 + 72);
    if (a4 + v23 > *(a2 + 76))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_26:
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 24) = v22;
  v23 = *(a2 + 72);
  if (a4 + v23 > *(a2 + 76))
  {
LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_13:
  if (a4)
  {
    v24 = 0;
    v25 = *(a2 + 64) + 8 * v23;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v24);
      *(v25 + 8 * v24++) = result;
    }

    while (a4 != v24);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + a4;
  return result;
}

uint64_t mlir::mps::ResizeGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, char a9, char a10, uint64_t a11)
{
  v12 = a7;
  v34 = a5;
  v35 = a4;
  v32 = a7;
  v33 = a6;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v33, 1uLL);
    v12 = v32;
  }

  if (v12)
  {
    mlir::OperationState::addOperands(a2, &v32, 1uLL);
    v17 = v32 != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = v33 != 0;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 32) = 0x100000001;
  *(v19 + 40) = v18;
  *(v19 + 44) = v17;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v36[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v36[1] = v20;
  v40[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v40[1] = v36;
  v39 = a8;
  v22 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v22);
  v37[0] = &v39;
  v37[1] = v40;
  v38 = &v39;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v23 >> 47) ^ v23))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v38, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v37);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 16) = result;
  if (a9)
  {
    result = mlir::Builder::getUnitAttr(a1, v25);
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 8) = result;
    v27 = a11;
    if (!a10)
    {
LABEL_11:
      if (!v27)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v27 = a11;
    if (!a10)
    {
      goto LABEL_11;
    }
  }

  result = mlir::Builder::getUnitAttr(a1, v25);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *v30 = result;
  if (!v27)
  {
LABEL_12:
    v28 = *(a2 + 72);
    if (v28 >= *(a2 + 76))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_23:
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 24) = v27;
  v28 = *(a2 + 72);
  if (v28 >= *(a2 + 76))
  {
LABEL_13:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_14:
  *(*(a2 + 64) + 8 * v28) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ResizeGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, char a9, uint64_t a10)
{
  v12 = a6;
  v54 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v44 = a3;
  v41 = a6;
  v42 = a5;
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v42, 1uLL);
    v12 = v41;
  }

  if (v12)
  {
    mlir::OperationState::addOperands(a2, &v41, 1uLL);
    v16 = v41 != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v42 != 0;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = 0x100000001;
  *(v18 + 40) = v17;
  *(v18 + 44) = v16;
  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v50 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v51 = v19;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v48 = &v50;
  v46 = a7;
  v21 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v21);
  v45 = &v46;
  v52 = &v46;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 32) >> 15) ^ (-348639895 * (v21 ^ (v22 >> 47) ^ v22))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v45, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v52);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 16) = ParametricStorageTypeImpl;
  if (a8)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 8) = UnitAttr;
    v26 = a10;
    if (!a9)
    {
LABEL_11:
      if (!v26)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v26 = a10;
    if (!a9)
    {
      goto LABEL_11;
    }
  }

  v29 = mlir::Builder::getUnitAttr(a1, v24);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *v30 = v29;
  if (v26)
  {
LABEL_21:
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = v26;
  }

LABEL_24:
  __src = v49;
  v48 = 0x200000000;
  v32 = *a1;
  mlir::ValueRange::ValueRange(&v52, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v35 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v50, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ResizeGradientOp::inferReturnTypes(v32, v36, v37, v52, p_src, Dictionary, v35, v38, v50, v51, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v39 = v48;
  v40 = *(a2 + 72);
  if (v40 + v48 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v48)
  {
    memcpy((*(a2 + 64) + 8 * v40), __src, 8 * v48);
    LODWORD(v40) = *(a2 + 72);
  }

  *(a2 + 72) = v40 + v39;
  if (__src != v49)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ResizeGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10, char a11, uint64_t a12)
{
  v12 = a8;
  v37 = a6;
  v38 = a5;
  v35 = a8;
  v36 = a7;
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  if (a7)
  {
    mlir::OperationState::addOperands(a2, &v36, 1uLL);
    v12 = v35;
  }

  if (v12)
  {
    mlir::OperationState::addOperands(a2, &v35, 1uLL);
    v18 = v35 != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v36 != 0;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 32) = 0x100000001;
  *(v20 + 40) = v19;
  *(v20 + 44) = v18;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v39[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v39[1] = v21;
  v43[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v43[1] = v39;
  v42 = a9;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v24 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v23 >> 47) ^ v23);
  v40[0] = &v42;
  v40[1] = v43;
  v41 = &v42;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v24 >> 47) ^ v24), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v40);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 16) = result;
  if (a10)
  {
    result = mlir::Builder::getUnitAttr(a1, v26);
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *(v32 + 8) = result;
    v28 = a12;
    if (!a11)
    {
LABEL_11:
      if (!v28)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v28 = a12;
    if (!a11)
    {
      goto LABEL_11;
    }
  }

  result = mlir::Builder::getUnitAttr(a1, v26);
  v33 = *(a2 + 256);
  if (!v33)
  {
    operator new();
  }

  *v33 = result;
  if (!v28)
  {
LABEL_12:
    v29 = *(a2 + 72);
    if (a4 + v29 > *(a2 + 76))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_27:
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 24) = v28;
  v29 = *(a2 + 72);
  if (a4 + v29 > *(a2 + 76))
  {
LABEL_13:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_14:
  if (a4)
  {
    v30 = 0;
    v31 = *(a2 + 64) + 8 * v29;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v30);
      *(v31 + 8 * v30++) = result;
    }

    while (a4 != v30);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + a4;
  return result;
}

uint64_t mlir::mps::ResizeGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ResizeGradientOp::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::ResizeGradientOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
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

BOOL mlir::mps::ResizeGradientOp::verifyInvariantsImpl(mlir::mps::ResizeGradientOp *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = (v3 + 64);
  v5 = v6;
  v7 = v4[2];
  if (v7)
  {
    v8 = v4[1];
    v9 = v4[3];
    v55[0] = v2;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v7, "mode", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55) & 1) == 0)
    {
      return 0;
    }

    v55[0] = *this;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "center_result", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55) & 1) == 0)
    {
      return 0;
    }

    v55[0] = *this;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "align_corners", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55) & 1) == 0)
    {
      return 0;
    }

    v55[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v9, "nearest_rounding_mode", 21, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55) & 1) == 0)
    {
      return 0;
    }

    v52 = 0;
    v10 = *(*this + 44);
    v11 = *(*this + 16 * ((v10 >> 23) & 1) + 96);
    if ((v10 & 0x800000) != 0)
    {
      v12 = *(*this + 72);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = 0;
      if (v11)
      {
LABEL_8:
        v13 = 0;
        v14 = v12 + 24;
        while (1)
        {
          v15 = *this;
          v16 = *(*v14 + 8);
          v52 = v13 + 1;
          if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, v16 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) == 0)
          {
            return 0;
          }

          ++v13;
          v14 += 32;
          if (v11 == v13)
          {
            goto LABEL_34;
          }
        }
      }
    }

    LODWORD(v13) = 0;
LABEL_34:
    ODSOperands = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 1u);
    if (v27)
    {
      v28 = v27;
      v29 = ODSOperands + 24;
      while (1)
      {
        v30 = *this;
        v31 = *(*v29 + 8);
        v32 = v13 + 1;
        v52 = v13 + 1;
        if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v30, (v31 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13) & 1) == 0)
        {
          return 0;
        }

        v29 += 32;
        LODWORD(v13) = v13 + 1;
        if (!--v28)
        {
          goto LABEL_40;
        }
      }
    }

    v32 = v13;
LABEL_40:
    v33 = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 2u);
    v35 = v34;
    if (v34 >= 2)
    {
      goto LABEL_41;
    }

    if (v34)
    {
      v39 = *(v33 + 24);
      v40 = *this;
      v41 = *(v39 + 8);
      v52 = v32 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps47(v40, (v41 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v32) & 1) == 0)
      {
        return 0;
      }
    }

    v43 = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 3u);
    v35 = v44;
    if (v44 >= 2)
    {
LABEL_41:
      v53[0] = "operand group starting at #";
      v54 = 259;
      mlir::OpState::emitOpError(this, v53, v55);
      mlir::InFlightDiagnostic::operator<<<unsigned int &>(v55, &v52);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v36, " requires 0 or 1 element, but found ");
      v51 = v35;
      mlir::InFlightDiagnostic::operator<<<unsigned long &>(v37, &v51);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
      return v17;
    }

    if (v44)
    {
      v45 = *(v43 + 24);
      v46 = *this;
      v47 = *(v45 + 8);
      v48 = v52++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps47(v46, (v47 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v48) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*this + 36))
    {
      v49 = *this - 16;
    }

    else
    {
      v49 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v49, 0);
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  else
  {
    v53[0] = "requires attribute 'mode'";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
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

      v18 = __p;
      if (__p)
      {
        v19 = v61;
        v20 = __p;
        if (v61 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v61 = v18;
        operator delete(v20);
      }

      v21 = v58;
      if (v58)
      {
        v22 = v59;
        v23 = v58;
        if (v59 != v58)
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
          v23 = v58;
        }

        v59 = v21;
        operator delete(v23);
      }

      if (v56 != &v57)
      {
        free(v56);
      }
    }
  }

  return v17;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps47(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v140 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_2:
    if (*(v10 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

    goto LABEL_112;
  }

  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = *(v10 + 1);
    v32 = v10[4];
    if (!v32)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v48 = v10;
    mlir::TensorType::operator mlir::ShapedType();
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = *(v48 + 1);
    v32 = v48[4];
    if (!v32)
    {
      goto LABEL_66;
    }
  }

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
LABEL_66:
    v128 = a2;
    v129 = 0;
    hasRank = mlir::ShapedType::hasRank(&v128);
    v10 = *a2;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_69;
  }

  v50 = v33[1];
  v128 = a2;
  v129 = v50;
  v51 = mlir::ShapedType::hasRank(&v128);
  v10 = *a2;
  if (!v51)
  {
    goto LABEL_2;
  }

LABEL_69:
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v10 + 1);
    v54 = v10[4];
    if (!v54)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v115 = v10;
    mlir::mps::ConstantOp::verify();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v115 + 1);
    v54 = v115[4];
    if (!v54)
    {
      goto LABEL_90;
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
  if (v55 == &v53[2 * v54] || *v55 != v52)
  {
LABEL_90:
    v116 = a2;
    v117 = 0;
    mlir::ShapedType::getShape(&v116);
    v10 = *a2;
    if (v63)
    {
      goto LABEL_2;
    }

    goto LABEL_93;
  }

  v64 = v55[1];
  v116 = a2;
  v117 = v64;
  mlir::ShapedType::getShape(&v116);
  v10 = *a2;
  if (v65)
  {
    goto LABEL_2;
  }

LABEL_93:
  {
    v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v67 = *(v10 + 1);
    v68 = v10[4];
    if (!v68)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v75 = v10;
    mlir::mps::ConstantOp::verify();
    v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v67 = *(v75 + 1);
    v68 = v75[4];
    if (!v68)
    {
      goto LABEL_106;
    }
  }

  v69 = v67;
  v70 = v68;
  do
  {
    v71 = v70 >> 1;
    v72 = &v69[2 * (v70 >> 1)];
    v74 = *v72;
    v73 = v72 + 2;
    v70 += ~(v70 >> 1);
    if (v74 < v66)
    {
      v69 = v73;
    }

    else
    {
      v70 = v71;
    }
  }

  while (v70);
  if (v69 != &v67[2 * v68] && *v69 == v66)
  {
    v76 = v69[1];
    goto LABEL_108;
  }

LABEL_106:
  v76 = 0;
LABEL_108:
  *&v126 = a2;
  *(&v126 + 1) = v76;
  ElementType = mlir::ShapedType::getElementType(&v126);
  if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType))
  {
    return 1;
  }

  v10 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

LABEL_112:
  {
    v77 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v78 = *(v10 + 1);
    v79 = v10[4];
    if (!v79)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v86 = v10;
    mlir::mps::ConstantOp::verify();
    v77 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v78 = *(v86 + 1);
    v79 = v86[4];
    if (!v79)
    {
      goto LABEL_124;
    }
  }

  v80 = v78;
  v81 = v79;
  do
  {
    v82 = v81 >> 1;
    v83 = &v80[2 * (v81 >> 1)];
    v85 = *v83;
    v84 = v83 + 2;
    v81 += ~(v81 >> 1);
    if (v85 < v77)
    {
      v80 = v84;
    }

    else
    {
      v81 = v82;
    }
  }

  while (v81);
  if (v80 == &v78[2 * v79] || *v80 != v77)
  {
LABEL_124:
    v123 = a2;
    v124 = 0;
    v87 = mlir::ShapedType::hasRank(&v123);
    v10 = *a2;
    if (!v87)
    {
      goto LABEL_3;
    }

    goto LABEL_127;
  }

  v88 = v80[1];
  v123 = a2;
  v124 = v88;
  v89 = mlir::ShapedType::hasRank(&v123);
  v10 = *a2;
  if (!v89)
  {
    goto LABEL_3;
  }

LABEL_127:
  {
    v90 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v91 = *(v10 + 1);
    v92 = v10[4];
    if (!v92)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v99 = v10;
    mlir::mps::ConstantOp::verify();
    v90 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v91 = *(v99 + 1);
    v92 = v99[4];
    if (!v92)
    {
      goto LABEL_139;
    }
  }

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
LABEL_139:
    v121 = a2;
    v122 = 0;
    mlir::ShapedType::getShape(&v121);
    v10 = *a2;
    if (v100 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_142;
  }

  v101 = v93[1];
  v121 = a2;
  v122 = v101;
  mlir::ShapedType::getShape(&v121);
  v10 = *a2;
  if (v102 != 1)
  {
    goto LABEL_3;
  }

LABEL_142:
  {
    v112 = v10;
    mlir::mps::ConstantOp::verify();
    v103 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v104 = *(v112 + 1);
    v105 = v112[4];
    if (v105)
    {
      goto LABEL_144;
    }

LABEL_154:
    v113 = 0;
    goto LABEL_156;
  }

  v103 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v104 = *(v10 + 1);
  v105 = v10[4];
  if (!v105)
  {
    goto LABEL_154;
  }

LABEL_144:
  v106 = v104;
  v107 = v105;
  do
  {
    v108 = v107 >> 1;
    v109 = &v106[2 * (v107 >> 1)];
    v111 = *v109;
    v110 = v109 + 2;
    v107 += ~(v107 >> 1);
    if (v111 < v103)
    {
      v106 = v110;
    }

    else
    {
      v107 = v108;
    }
  }

  while (v107);
  if (v106 == &v104[2 * v105] || *v106 != v103)
  {
    goto LABEL_154;
  }

  v113 = v106[1];
LABEL_156:
  v120[0] = a2;
  v120[1] = v113;
  ElementType = mlir::ShapedType::getElementType(v120);
  if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType))
  {
    return 1;
  }

  v10 = *a2;
LABEL_3:
  if (*(v10 + 17) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v10 + 1);
      v41 = v10[4];
      if (!v41)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v61 = v10;
      mlir::mps::ConstantOp::verify();
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v61 + 1);
      v41 = v61[4];
      if (!v41)
      {
        goto LABEL_81;
      }
    }

    v42 = v40;
    v43 = v41;
    do
    {
      v44 = v43 >> 1;
      v45 = &v42[2 * (v43 >> 1)];
      v47 = *v45;
      v46 = v45 + 2;
      v43 += ~(v43 >> 1);
      if (v47 < v39)
      {
        v42 = v46;
      }

      else
      {
        v43 = v44;
      }
    }

    while (v43);
    if (v42 != &v40[2 * v41] && *v42 == v39)
    {
      v62 = v42[1];
      goto LABEL_83;
    }

LABEL_81:
    v62 = 0;
LABEL_83:
    v119[0] = a2;
    v119[1] = v62;
    ElementType = mlir::ShapedType::getElementType(v119);
    if (!mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType) && !mlir::Type::isBF16(&ElementType))
    {
      goto LABEL_4;
    }

    return 1;
  }

LABEL_4:
  v118 = 261;
  v116 = a3;
  v117 = a4;
  mlir::Operation::emitOpError(&v128, a1, &v116);
  if (v128)
  {
    LODWORD(v126) = 3;
    *(&v126 + 1) = " #";
    v127 = 2;
    if (v131 >= v132)
    {
      if (v130 > &v126 || v130 + 24 * v131 <= &v126)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v130 + 24 * v131;
    v12 = v126;
    *(v11 + 2) = v127;
    *v11 = v12;
    v13 = ++v131;
    if (v128)
    {
      LODWORD(v126) = 5;
      *(&v126 + 1) = a5;
      if (v13 >= v132)
      {
        if (v130 > &v126 || v130 + 24 * v13 <= &v126)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v130 + 24 * v131;
      v15 = v126;
      *(v14 + 2) = v127;
      *v14 = v15;
      v16 = ++v131;
      if (v128)
      {
        LODWORD(v126) = 3;
        *(&v126 + 1) = " must be 0D tensor of floating point values or 1D tensor of floating point values or unranked tensor of floating point values, but got ";
        v127 = 135;
        if (v16 >= v132)
        {
          if (v130 > &v126 || v130 + 24 * v16 <= &v126)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = v130 + 24 * v131;
        v18 = v126;
        *(v17 + 2) = v127;
        *v17 = v18;
        ++v131;
        if (v128)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v126, a2);
          if (v131 >= v132)
          {
            if (v130 > &v126 || v130 + 24 * v131 <= &v126)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v130 + 24 * v131;
          v20 = v126;
          *(v19 + 2) = v127;
          *v19 = v20;
          ++v131;
        }
      }
    }
  }

  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
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

    v22 = __p;
    if (__p)
    {
      v23 = v137;
      v24 = __p;
      if (v137 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v137 = v22;
      operator delete(v24);
    }

    v25 = v134;
    if (v134)
    {
      v26 = v135;
      v27 = v134;
      if (v135 != v134)
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
        v27 = v134;
      }

      v135 = v25;
      operator delete(v27);
    }

    if (v130 != &v133)
    {
      free(v130);
    }
  }

  return v21;
}

BOOL mlir::mps::ResizeGradientOp::verifyInvariants(mlir::mps::ResizeGradientOp *this)
{
  if (!mlir::mps::ResizeGradientOp::verifyInvariantsImpl(this))
  {
    return 0;
  }

  v2 = *this;
  if (*(*this + 36))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v5 = *this;
  v6 = *(*this + 72);
  v7 = *(v6 + 24);
  v8 = *(*this + 112);
  v9 = *(v6 + 32 * v8 + 24);
  v10 = (*(*this + 116) + v8);
  v11 = *(*this + 120);
  if (v11)
  {
    v12 = *(v6 + 32 * v10 + 24);
    if (*(v5 + 124))
    {
      return mlir::mps::verifyResize(v2, v4, 0, v7, v9, v12, *(v6 + 32 * (v11 + v10) + 24));
    }

    return mlir::mps::verifyResize(v2, v4, 0, v7, v9, v12, 0);
  }

  v12 = 0;
  if (!*(v5 + 124))
  {
    return mlir::mps::verifyResize(v2, v4, 0, v7, v9, v12, 0);
  }

  return mlir::mps::verifyResize(v2, v4, 0, v7, v9, v12, *(v6 + 32 * (v11 + v10) + 24));
}

uint64_t mlir::mps::detail::ResizeOpGenericAdaptorBase::ResizeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::ResizeOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 56);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 72);
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

  v10 = (this + 4 * v3 + 56);
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

uint64_t mlir::mps::detail::ResizeOpGenericAdaptorBase::getNearestRoundingMode(mlir::mps::detail::ResizeOpGenericAdaptorBase *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return *(v1 + 8) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

unint64_t mlir::mps::ResizeOp::getODSOperandIndexAndLength(mlir::mps::ResizeOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 96);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 112);
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

  v12 = (16 * v2 + 4 * v5 + *this + 96);
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

uint64_t mlir::mps::ResizeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v56 + 24 * v57;
      v23 = v52;
      *(v22 + 2) = v53;
      *v22 = v23;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v17 = v60;
    if (!v60)
    {
      goto LABEL_70;
    }

    v27 = v61;
    v19 = v60;
    if (v61 == v60)
    {
LABEL_69:
      v61 = v17;
      operator delete(v19);
LABEL_70:
      if (v56 != &v59)
      {
        free(v56);
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
    v19 = v60;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "align_corners", 0xDuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 58;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v56 + 24 * v57;
        v11 = v52;
        *(v10 + 2) = v53;
        *v10 = v11;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v56 + 24 * v57;
          v13 = v52;
          *(v12 + 2) = v53;
          *v12 = v13;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v63;
        v16 = __p;
        if (v63 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v63 = v14;
        operator delete(v16);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v18 = v61;
      v19 = v60;
      if (v61 == v60)
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

  v30 = mlir::DictionaryAttr::get(&v51, "center_result", 0xDuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 58;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v56 + 24 * v57;
        v33 = v52;
        *(v32 + 2) = v53;
        *v32 = v33;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v31);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v56 + 24 * v57;
          v35 = v52;
          *(v34 + 2) = v53;
          *v34 = v35;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v63;
        v38 = __p;
        if (v63 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v63 = v36;
        operator delete(v38);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v39 = v61;
      v19 = v60;
      if (v61 == v60)
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

  v43 = mlir::DictionaryAttr::get(&v51, "mode", 4uLL);
  if (v43)
  {
    if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
    {
      v44 = v43;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 49;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v56 + 24 * v57;
        v46 = v52;
        *(v45 + 2) = v53;
        *v45 = v46;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v44);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v56 + 24 * v57;
          v48 = v52;
          *(v47 + 2) = v53;
          *v47 = v48;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v43;
  }

  v49 = mlir::DictionaryAttr::get(&v51, "nearest_rounding_mode", 0x15uLL);
  *&v52 = v49;
  if (v49)
  {
    if (*(*v49 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
    {
      a3(&v54, a4);
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v52);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return 0;
    }

    a1[3] = v49;
  }

  if (mlir::DictionaryAttr::get(&v51, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v51, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::mps::ResizeOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v18, "align_corners", 0xD, *a2);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v19 + 16 * v20);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v20) = v20 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v18, "center_result", 0xD, v6);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v19 + 16 * v20);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v20) = v20 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v18, "mode", 4, v10);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v19 + 16 * v20);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v20) = v20 + 1;
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = mlir::Builder::getNamedAttr(&v18, "nearest_rounding_mode", 0x15, v14);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = (v19 + 16 * v20);
    *v17 = v15;
    v17[1] = v16;
    LODWORD(v20) = v20 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::mps::ResizeOp::computePropertiesHash(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
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
  v13 = a1[5];
  v14 = __ROR8__(v13 + 16, 16);
  v15 = 0x9DDFEA08EB382D69 * (a1[4] ^ 0xFF51AFD7ED558CCDLL ^ v14);
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v24[0] = v3;
  v24[1] = v6;
  v21 = 0;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v21, v25, v26, v9);
  v22 = v21;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v22, v17, v26, v12);
  v23 = v22;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v23, v18, v26, v16 ^ v13);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v24, v23, v19, v26);
}

uint64_t mlir::mps::ResizeOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
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

    else
    {
      if (__n != 21)
      {
        return 0;
      }

      if (!memcmp(__s1, "nearest_rounding_mode", 0x15uLL))
      {
        return a2[3];
      }

      v9 = *__s1 == 0x5F646E617265706FLL && *(__s1 + 1) == 0x5F746E656D676573;
      if (!v9 || *(__s1 + 13) != 0x73657A69735F746ELL)
      {
        return 0;
      }
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "mode", 4uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (*__s1 != 0x6F635F6E67696C61 || *(__s1 + 5) != 0x7372656E726F635FLL)
  {
    if (*__s1 == 0x725F7265746E6563 && *(__s1 + 5) == 0x746C757365725F72)
    {
      return a2[1];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::ResizeOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
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

      result = memcmp(__s1, "nearest_rounding_mode", 0x15uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }

          *(v5 + 24) = v13;
        }

        else
        {
          *(v5 + 24) = 0;
        }

        return result;
      }

      if (*__s1 != 0x5F646E617265706FLL || *(__s1 + 1) != 0x5F746E656D676573 || *(__s1 + 13) != 0x73657A69735F746ELL)
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
    result = memcmp(__s1, "mode", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        *(v5 + 16) = v11;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 13)
  {
    if (*__s1 == 0x6F635F6E67696C61 && *(__s1 + 5) == 0x7372656E726F635FLL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        *result = v12;
      }

      else
      {
        *result = 0;
      }
    }

    else if (*__s1 == 0x725F7265746E6563 && *(__s1 + 5) == 0x746C757365725F72)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        *(result + 8) = v14;
      }

      else
      {
        *(result + 8) = 0;
      }
    }
  }

  return result;
}

void mlir::mps::ResizeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "align_corners", 0xDuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "center_result", 0xDuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "mode", 4uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "nearest_rounding_mode", 0x15uLL, v7);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::mps::ResizeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "align_corners", 13, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "center_result", 13, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v10, "mode", 4, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v11, "nearest_rounding_mode", 21, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::ResizeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v8[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8)) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(a1, (v3 + 16)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NearestRoundingModeAttr>(a1, (v3 + 24)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 32), 4uLL))
      {
        return 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 5)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5 = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(v8, a1, &v5);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
      }
    }
  }

  return 0;
}

uint64_t mlir::mps::ResizeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  (*(*a2 + 24))(a2, *(v5 + 24));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 32), 4);
  }

  return result;
}

uint64_t mlir::mps::ResizeOp::getNearestRoundingMode(mlir::mps::ResizeOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  if (v1)
  {
    return *(v1 + 8) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::ResizeOp::setMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::ResizeOp::setCenterResult(uint64_t this, int a2)
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

uint64_t mlir::mps::ResizeOp::setAlignCorners(uint64_t this, int a2)
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

uint64_t mlir::mps::ResizeOp::setNearestRoundingMode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 44);
  if ((a2 & 0x100000000) != 0)
  {
    v5 = a2;
    Context = mlir::Attribute::getContext((v2 + 24));
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id;
    v10[1] = Context;
    v14[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail30NearestRoundingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_23NearestRoundingModeAttrEJNS2_19NearestRoundingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v14[1] = v10;
    v13 = v5;
    v8 = v5 ^ 0xFF51AFD7ED558CCDLL;
    v9 = 0x9DDFEA08EB382D69 * (((8 * v5) | 4) ^ v8);
    v11[0] = &v13;
    v11[1] = v14;
    v12 = &v13;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  }

  else
  {
    result = 0;
  }

  *(v2 + 16 * ((v3 >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::ResizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a7;
  v28 = a5;
  v29 = a4;
  v26 = a7;
  v27 = a6;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v28, 1uLL);
  if (a6)
  {
    result = mlir::OperationState::addOperands(a2, &v27, 1uLL);
    v12 = v26;
  }

  if (v12)
  {
    result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
    v17 = v26 != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = v27 != 0;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 32) = 0x100000001;
  *(v19 + 40) = v18;
  *(v19 + 44) = v17;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a8;
  if (a9)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 8) = a9;
    v21 = a11;
    if (!a10)
    {
LABEL_10:
      if (!v21)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v21 = a11;
    if (!a10)
    {
      goto LABEL_10;
    }
  }

  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *v24 = a10;
  if (!v21)
  {
LABEL_11:
    v22 = *(a2 + 72);
    if (v22 >= *(a2 + 76))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_22:
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 24) = v21;
  v22 = *(a2 + 72);
  if (v22 >= *(a2 + 76))
  {
LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_13:
  *(*(a2 + 64) + 8 * v22) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ResizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a6;
  v41[2] = *MEMORY[0x277D85DE8];
  v35 = a4;
  v36 = a3;
  v33 = a6;
  v34 = a5;
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v34, 1uLL);
    v12 = v33;
  }

  if (v12)
  {
    mlir::OperationState::addOperands(a2, &v33, 1uLL);
    v16 = v33 != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v34 != 0;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = 0x100000001;
  *(v18 + 40) = v17;
  *(v18 + 44) = v16;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a7;
  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a8;
    v20 = a10;
    if (!a9)
    {
LABEL_10:
      if (!v20)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v20 = a10;
    if (!a9)
    {
      goto LABEL_10;
    }
  }

  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a9;
  if (v20)
  {
LABEL_20:
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 24) = v20;
  }

LABEL_23:
  __src = v41;
  v40 = 0x200000000;
  v24 = *a1;
  mlir::ValueRange::ValueRange(v38, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v27 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v37, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ResizeOp::inferReturnTypes(v24, v28, v29, v38[0], v38[1], Dictionary, v27, v30, v37[0], v37[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v31 = v40;
  v32 = *(a2 + 72);
  if (v32 + v40 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v40)
  {
    memcpy((*(a2 + 64) + 8 * v32), __src, 8 * v40);
    LODWORD(v32) = *(a2 + 72);
  }

  *(a2 + 72) = v32 + v31;
  if (__src != v41)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ResizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a8;
  v31 = a6;
  v32 = a5;
  v29 = a8;
  v30 = a7;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v31, 1uLL);
  if (a7)
  {
    result = mlir::OperationState::addOperands(a2, &v30, 1uLL);
    v12 = v29;
  }

  if (v12)
  {
    result = mlir::OperationState::addOperands(a2, &v29, 1uLL);
    v18 = v29 != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v30 != 0;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 32) = 0x100000001;
  *(v20 + 40) = v19;
  *(v20 + 44) = v18;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a9;
  if (a10)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 8) = a10;
    v22 = a12;
    if (!a11)
    {
LABEL_10:
      if (!v22)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v22 = a12;
    if (!a11)
    {
      goto LABEL_10;
    }
  }

  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *v27 = a11;
  if (!v22)
  {
LABEL_11:
    v23 = *(a2 + 72);
    if (a4 + v23 > *(a2 + 76))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_26:
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 24) = v22;
  v23 = *(a2 + 72);
  if (a4 + v23 > *(a2 + 76))
  {
LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_13:
  if (a4)
  {
    v24 = 0;
    v25 = *(a2 + 64) + 8 * v23;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v24);
      *(v25 + 8 * v24++) = result;
    }

    while (a4 != v24);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + a4;
  return result;
}

uint64_t mlir::mps::ResizeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, char a9, char a10, uint64_t a11)
{
  v12 = a7;
  v34 = a5;
  v35 = a4;
  v32 = a7;
  v33 = a6;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v33, 1uLL);
    v12 = v32;
  }

  if (v12)
  {
    mlir::OperationState::addOperands(a2, &v32, 1uLL);
    v17 = v32 != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = v33 != 0;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 32) = 0x100000001;
  *(v19 + 40) = v18;
  *(v19 + 44) = v17;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v36[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v36[1] = v20;
  v40[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v40[1] = v36;
  v39 = a8;
  v22 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v22);
  v37[0] = &v39;
  v37[1] = v40;
  v38 = &v39;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v23 >> 47) ^ v23))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v38, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v37);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 16) = result;
  if (a9)
  {
    result = mlir::Builder::getUnitAttr(a1, v25);
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 8) = result;
    v27 = a11;
    if (!a10)
    {
LABEL_11:
      if (!v27)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v27 = a11;
    if (!a10)
    {
      goto LABEL_11;
    }
  }

  result = mlir::Builder::getUnitAttr(a1, v25);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *v30 = result;
  if (!v27)
  {
LABEL_12:
    v28 = *(a2 + 72);
    if (v28 >= *(a2 + 76))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_23:
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 24) = v27;
  v28 = *(a2 + 72);
  if (v28 >= *(a2 + 76))
  {
LABEL_13:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_14:
  *(*(a2 + 64) + 8 * v28) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ResizeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, char a9, uint64_t a10)
{
  v12 = a6;
  v54 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v44 = a3;
  v41 = a6;
  v42 = a5;
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v42, 1uLL);
    v12 = v41;
  }

  if (v12)
  {
    mlir::OperationState::addOperands(a2, &v41, 1uLL);
    v16 = v41 != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v42 != 0;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = 0x100000001;
  *(v18 + 40) = v17;
  *(v18 + 44) = v16;
  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v50 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v51 = v19;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v48 = &v50;
  v46 = a7;
  v21 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v21);
  v45 = &v46;
  v52 = &v46;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 32) >> 15) ^ (-348639895 * (v21 ^ (v22 >> 47) ^ v22))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v45, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v52);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 16) = ParametricStorageTypeImpl;
  if (a8)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 8) = UnitAttr;
    v26 = a10;
    if (!a9)
    {
LABEL_11:
      if (!v26)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v26 = a10;
    if (!a9)
    {
      goto LABEL_11;
    }
  }

  v29 = mlir::Builder::getUnitAttr(a1, v24);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *v30 = v29;
  if (v26)
  {
LABEL_21:
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = v26;
  }

LABEL_24:
  __src = v49;
  v48 = 0x200000000;
  v32 = *a1;
  mlir::ValueRange::ValueRange(&v52, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v35 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v50, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ResizeOp::inferReturnTypes(v32, v36, v37, v52, p_src, Dictionary, v35, v38, v50, v51, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v39 = v48;
  v40 = *(a2 + 72);
  if (v40 + v48 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v48)
  {
    memcpy((*(a2 + 64) + 8 * v40), __src, 8 * v48);
    LODWORD(v40) = *(a2 + 72);
  }

  *(a2 + 72) = v40 + v39;
  if (__src != v49)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ResizeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10, char a11, uint64_t a12)
{
  v12 = a8;
  v37 = a6;
  v38 = a5;
  v35 = a8;
  v36 = a7;
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  if (a7)
  {
    mlir::OperationState::addOperands(a2, &v36, 1uLL);
    v12 = v35;
  }

  if (v12)
  {
    mlir::OperationState::addOperands(a2, &v35, 1uLL);
    v18 = v35 != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v36 != 0;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 32) = 0x100000001;
  *(v20 + 40) = v19;
  *(v20 + 44) = v18;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v39[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v39[1] = v21;
  v43[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v43[1] = v39;
  v42 = a9;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v24 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v23 >> 47) ^ v23);
  v40[0] = &v42;
  v40[1] = v43;
  v41 = &v42;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v24 >> 47) ^ v24), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v40);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 16) = result;
  if (a10)
  {
    result = mlir::Builder::getUnitAttr(a1, v26);
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *(v32 + 8) = result;
    v28 = a12;
    if (!a11)
    {
LABEL_11:
      if (!v28)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v28 = a12;
    if (!a11)
    {
      goto LABEL_11;
    }
  }

  result = mlir::Builder::getUnitAttr(a1, v26);
  v33 = *(a2 + 256);
  if (!v33)
  {
    operator new();
  }

  *v33 = result;
  if (!v28)
  {
LABEL_12:
    v29 = *(a2 + 72);
    if (a4 + v29 > *(a2 + 76))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_27:
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 24) = v28;
  v29 = *(a2 + 72);
  if (a4 + v29 > *(a2 + 76))
  {
LABEL_13:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_14:
  if (a4)
  {
    v30 = 0;
    v31 = *(a2 + 64) + 8 * v29;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v30);
      *(v31 + 8 * v30++) = result;
    }

    while (a4 != v30);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + a4;
  return result;
}

uint64_t mlir::mps::ResizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ResizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::ResizeOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
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

BOOL mlir::mps::ResizeOp::verifyInvariantsImpl(mlir::mps::ResizeOp *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = (v3 + 64);
  v5 = v6;
  v7 = v4[2];
  if (v7)
  {
    v8 = v4[1];
    v9 = v4[3];
    v55[0] = v2;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v7, "mode", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55) & 1) == 0)
    {
      return 0;
    }

    v55[0] = *this;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "center_result", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55) & 1) == 0)
    {
      return 0;
    }

    v55[0] = *this;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "align_corners", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55) & 1) == 0)
    {
      return 0;
    }

    v55[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v9, "nearest_rounding_mode", 21, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55) & 1) == 0)
    {
      return 0;
    }

    v52 = 0;
    v10 = *(*this + 44);
    v11 = *(*this + 16 * ((v10 >> 23) & 1) + 96);
    if ((v10 & 0x800000) != 0)
    {
      v12 = *(*this + 72);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = 0;
      if (v11)
      {
LABEL_8:
        v13 = 0;
        v14 = v12 + 24;
        while (1)
        {
          v15 = *this;
          v16 = *(*v14 + 8);
          v52 = v13 + 1;
          if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, v16 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) == 0)
          {
            return 0;
          }

          ++v13;
          v14 += 32;
          if (v11 == v13)
          {
            goto LABEL_34;
          }
        }
      }
    }

    LODWORD(v13) = 0;
LABEL_34:
    ODSOperands = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 1u);
    if (v27)
    {
      v28 = v27;
      v29 = ODSOperands + 24;
      while (1)
      {
        v30 = *this;
        v31 = *(*v29 + 8);
        v32 = v13 + 1;
        v52 = v13 + 1;
        if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v30, (v31 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13) & 1) == 0)
        {
          return 0;
        }

        v29 += 32;
        LODWORD(v13) = v13 + 1;
        if (!--v28)
        {
          goto LABEL_40;
        }
      }
    }

    v32 = v13;
LABEL_40:
    v33 = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 2u);
    v35 = v34;
    if (v34 >= 2)
    {
      goto LABEL_41;
    }

    if (v34)
    {
      v39 = *(v33 + 24);
      v40 = *this;
      v41 = *(v39 + 8);
      v52 = v32 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps47(v40, (v41 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v32) & 1) == 0)
      {
        return 0;
      }
    }

    v43 = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 3u);
    v35 = v44;
    if (v44 >= 2)
    {
LABEL_41:
      v53[0] = "operand group starting at #";
      v54 = 259;
      mlir::OpState::emitOpError(this, v53, v55);
      mlir::InFlightDiagnostic::operator<<<unsigned int &>(v55, &v52);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v36, " requires 0 or 1 element, but found ");
      v51 = v35;
      mlir::InFlightDiagnostic::operator<<<unsigned long &>(v37, &v51);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
      return v17;
    }

    if (v44)
    {
      v45 = *(v43 + 24);
      v46 = *this;
      v47 = *(v45 + 8);
      v48 = v52++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps47(v46, (v47 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v48) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*this + 36))
    {
      v49 = *this - 16;
    }

    else
    {
      v49 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v49, 0);
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  else
  {
    v53[0] = "requires attribute 'mode'";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
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

      v18 = __p;
      if (__p)
      {
        v19 = v61;
        v20 = __p;
        if (v61 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v61 = v18;
        operator delete(v20);
      }

      v21 = v58;
      if (v58)
      {
        v22 = v59;
        v23 = v58;
        if (v59 != v58)
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
          v23 = v58;
        }

        v59 = v21;
        operator delete(v23);
      }

      if (v56 != &v57)
      {
        free(v56);
      }
    }
  }

  return v17;
}

BOOL mlir::mps::ResizeOp::verifyInvariants(mlir::mps::ResizeOp *this)
{
  if (!mlir::mps::ResizeOp::verifyInvariantsImpl(this))
  {
    return 0;
  }

  v2 = *this;
  if (*(*this + 36))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v5 = *this;
  v6 = *(*this + 72);
  v7 = *(v6 + 24);
  v8 = *(*this + 112);
  v9 = *(v6 + 32 * v8 + 24);
  v10 = (*(*this + 116) + v8);
  v11 = *(*this + 120);
  if (v11)
  {
    v12 = *(v6 + 32 * v10 + 24);
    if (*(v5 + 124))
    {
      return mlir::mps::verifyResize(v2, v4, v7, 0, v9, v12, *(v6 + 32 * (v11 + v10) + 24));
    }

    return mlir::mps::verifyResize(v2, v4, v7, 0, v9, v12, 0);
  }

  v12 = 0;
  if (!*(v5 + 124))
  {
    return mlir::mps::verifyResize(v2, v4, v7, 0, v9, v12, 0);
  }

  return mlir::mps::verifyResize(v2, v4, v7, 0, v9, v12, *(v6 + 32 * (v11 + v10) + 24));
}

unint64_t mlir::mps::detail::ReverseOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::ReverseOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "SDialectE";
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
      v28 = &dword_257374322 + v6 + 3;
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
  v25 = (&dword_257374322 + v23 + 3);
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
  if (*(&dword_257374322 + v5 + 3))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::mps::ReverseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a5;
  v11 = a4;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  if (a5)
  {
    result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  }

  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ReverseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v12, 1uLL);
  }

  __src = v19;
  v18 = 0x200000000;
  v6 = *a2;
  mlir::ValueRange::ValueRange(&v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v14, *(a2 + 224), *(a2 + 232));
  v20[0] = v15;
  v20[1] = v16;
  if (v16)
  {
    v8 = *(mlir::ValueRange::dereference_iterator(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v18 >= HIDWORD(v18))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v18) = v8;
    v9 = v18 + 1;
    LODWORD(v18) = v9;
    v10 = __src;
    v11 = *(a2 + 72);
    if (v11 + v9 > *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v6, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v9 = v18;
    v10 = __src;
    v11 = *(a2 + 72);
    if (v11 + v18 > *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v9)
  {
    memcpy((*(a2 + 64) + 8 * v11), v10, 8 * v9);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v9;
  if (__src != v19)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ReverseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a6;
  v15 = a5;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  if (a6)
  {
    result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  }

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

unint64_t mlir::mps::ReverseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ReverseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

BOOL mlir::mps::ReverseOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    goto LABEL_4;
  }

  v3 = *(v2 + 17);
  v4 = v3 - 1;
  if ((v3 - 1) <= 1)
  {
    if (v3 == 1)
    {
LABEL_30:
      if (*(v2 + 9))
      {
        v22 = v2 - 16;
      }

      else
      {
        v22 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v2, (*(*(*(v2 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      v2 = *this;
      goto LABEL_30;
    }

    return 0;
  }

LABEL_4:
  v25 = "operand group starting at #";
  v26 = 259;
  mlir::OpState::emitOpError(this, &v25, v29);
  if (v29[0])
  {
    LODWORD(v27) = 5;
    *(&v27 + 1) = 1;
    if (v31 >= v32)
    {
      if (v30 > &v27 || v30 + 24 * v31 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v30 + 24 * v31;
    v6 = v27;
    *(v5 + 2) = v28;
    *v5 = v6;
    v7 = ++v31;
    if (v29[0])
    {
      LODWORD(v27) = 3;
      *(&v27 + 1) = " requires 0 or 1 element, but found ";
      v28 = 36;
      if (v7 >= v32)
      {
        if (v30 > &v27 || v30 + 24 * v7 <= &v27)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v30 + 24 * v31;
      v9 = v27;
      *(v8 + 2) = v28;
      *v8 = v9;
      v10 = ++v31;
      if (v29[0])
      {
        LODWORD(v27) = 5;
        *(&v27 + 1) = v4;
        if (v10 >= v32)
        {
          if (v30 > &v27 || v30 + 24 * v10 <= &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v30 + 24 * v31;
        v12 = v27;
        *(v11 + 2) = v28;
        *v11 = v12;
        ++v31;
      }
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
  if (v29[0])
  {
    mlir::InFlightDiagnostic::report(v29);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != &v33)
    {
      free(v30);
    }
  }

  return v13;
}

uint64_t mlir::mps::RintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::RintOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::RintOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::RintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::RintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::RintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::RintOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::RintOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::RoundOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::RoundOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::RoundOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::RoundOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::RoundOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::RoundOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::RoundOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::RoundOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::detail::SampleGridDataGradientOpGenericAdaptorBase::SampleGridDataGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::SampleGridDataGradientOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (*(a1 + 48))
    {
      return 1;
    }

    v18[0] = "'mps.sample_grid_data_gradient' op requires attribute 'sampling_mode'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v14 = v24;
      v8 = v23;
      if (v24 == v23)
      {
LABEL_37:
        v24 = v6;
        operator delete(v8);
LABEL_38:
        if (v21 != &v22)
        {
          free(v21);
        }

        return v2;
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
LABEL_36:
      v8 = v23;
      goto LABEL_37;
    }
  }

  else
  {
    v18[0] = "'mps.sample_grid_data_gradient' op requires attribute 'padding_mode'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v3 = __p;
      if (__p)
      {
        v4 = v26;
        v5 = __p;
        if (v26 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v26 = v3;
        operator delete(v5);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v7 = v24;
      v8 = v23;
      if (v24 == v23)
      {
        goto LABEL_37;
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
      goto LABEL_36;
    }
  }

  return v2;
}

uint64_t mlir::mps::SampleGridDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v56 + 24 * v57;
      v23 = v52;
      *(v22 + 2) = v53;
      *v22 = v23;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v17 = v60;
    if (!v60)
    {
      goto LABEL_70;
    }

    v27 = v61;
    v19 = v60;
    if (v61 == v60)
    {
LABEL_69:
      v61 = v17;
      operator delete(v19);
LABEL_70:
      if (v56 != &v59)
      {
        free(v56);
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
    v19 = v60;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "normalize_coordinates", 0x15uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 66;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v56 + 24 * v57;
        v11 = v52;
        *(v10 + 2) = v53;
        *v10 = v11;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v56 + 24 * v57;
          v13 = v52;
          *(v12 + 2) = v53;
          *v12 = v13;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v63;
        v16 = __p;
        if (v63 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v63 = v14;
        operator delete(v16);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v18 = v61;
      v19 = v60;
      if (v61 == v60)
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

  v30 = mlir::DictionaryAttr::get(&v51, "padding_mode", 0xCuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
    {
      v31 = v30;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 57;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v56 + 24 * v57;
        v33 = v52;
        *(v32 + 2) = v53;
        *v32 = v33;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v31);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v56 + 24 * v57;
          v35 = v52;
          *(v34 + 2) = v53;
          *v34 = v35;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v63;
        v38 = __p;
        if (v63 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v63 = v36;
        operator delete(v38);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v39 = v61;
      v19 = v60;
      if (v61 == v60)
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

  v43 = mlir::DictionaryAttr::get(&v51, "relative_coordinates", 0x14uLL);
  if (v43)
  {
    if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v44 = v43;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 65;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v56 + 24 * v57;
        v46 = v52;
        *(v45 + 2) = v53;
        *v45 = v46;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v44);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v56 + 24 * v57;
          v48 = v52;
          *(v47 + 2) = v53;
          *v47 = v48;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v43;
  }

  v49 = mlir::DictionaryAttr::get(&v51, "sampling_mode", 0xDuLL);
  *&v52 = v49;
  if (!v49)
  {
    return 1;
  }

  if (*(*v49 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
  {
    a1[3] = v49;
    return 1;
  }

  a3(&v54, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v52);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
  return 0;
}

uint64_t mlir::mps::SampleGridDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = a1;
  v23 = v25;
  v24 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v22, "normalize_coordinates", 0x15, *a2);
  if (v24 >= HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v23 + 16 * v24);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v24 + 1;
  LODWORD(v24) = v24 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v22, "padding_mode", 0xC, v7);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v23 + 16 * v24);
    *v10 = v8;
    v10[1] = v9;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v22, "relative_coordinates", 0x14, v11);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v23 + 16 * v24);
    *v14 = v12;
    v14[1] = v13;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v22, "sampling_mode", 0xD, v15);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v23 + 16 * v24);
    *v18 = v16;
    v18[1] = v17;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v19 = v23;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v23 == v25)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v22, v23, v6);
  v19 = v23;
  if (v23 != v25)
  {
LABEL_16:
    free(v19);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::SampleGridDataGradientOp::computePropertiesHash(void *a1)
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
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, v9);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::mps::SampleGridDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 19)
  {
    if (__n == 20)
    {
      if (!memcmp(__s1, "relative_coordinates", 0x14uLL))
      {
        return a2[2];
      }
    }

    else if (__n == 21)
    {
      v6 = *__s1 == 0x7A696C616D726F6ELL && *(__s1 + 1) == 0x6964726F6F635F65;
      if (v6 && *(__s1 + 13) == 0x736574616E696472)
      {
        return *a2;
      }
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "padding_mode", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 13 || memcmp(__s1, "sampling_mode", 0xDuLL))
  {
    return 0;
  }

  return a2[3];
}

uint64_t mlir::mps::SampleGridDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 19)
  {
    if (a3 == 20)
    {
      result = memcmp(__s1, "relative_coordinates", 0x14uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[2] = v10;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }

    else if (a3 == 21)
    {
      v6 = *__s1 == 0x7A696C616D726F6ELL && *(__s1 + 1) == 0x6964726F6F635F65;
      if (v6 && *(__s1 + 13) == 0x736574616E696472)
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
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "padding_mode", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
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
  }

  else if (a3 == 13)
  {
    result = memcmp(__s1, "sampling_mode", 0xDuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        v5[3] = v11;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  return result;
}

void mlir::mps::SampleGridDataGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "normalize_coordinates", 0x15uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "padding_mode", 0xCuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "relative_coordinates", 0x14uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {

    mlir::NamedAttrList::append(a3, "sampling_mode", 0xDuLL, v7);
  }
}

BOOL mlir::mps::SampleGridDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "normalize_coordinates", 21, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v9, "padding_mode", 12, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v10, "relative_coordinates", 20, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v11, "sampling_mode", 13, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::SampleGridDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && (v4 = mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(a1, v3 + 1), (v4 & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 2)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(a1, v3 + 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::SampleGridDataGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::SampleGridDataGradientOp::setNormalizeCoordinates(uint64_t this, int a2)
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

uint64_t mlir::mps::SampleGridDataGradientOp::setRelativeCoordinates(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 80) = this;
  }

  else
  {
    *(v2 + 80) = 0;
  }

  return this;
}

uint64_t mlir::mps::SampleGridDataGradientOp::setPaddingMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::SampleGridDataGradientOp::setSamplingMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::SampleGridDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a5;
  v22 = a4;
  v20 = a6;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v20, 1uLL);
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

    *(v16 + 16) = a8;
  }

  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a9;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 24) = a10;
  v19 = *(a2 + 72);
  if (v19 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v19) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::SampleGridDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
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

    *(v14 + 16) = a7;
  }

  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 8) = a8;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 24) = a9;
  __src = v34;
  v33 = 0x200000000;
  v17 = *a2;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v19 = mlir::RegionRange::RegionRange(&v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SampleGridDataGradientOp::inferReturnTypes(v19, v17, 1, v31[0], v31[1], v20, v21, v22, v25, v26, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = v33;
  v24 = *(a2 + 72);
  if (v24 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v24), __src, 8 * v33);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::SampleGridDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a6;
  v25 = a5;
  v23 = a7;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v23, 1uLL);
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

    *(v17 + 16) = a9;
  }

  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = a10;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = a11;
  v20 = *(a2 + 72);
  if (a4 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v21 = 0;
    v22 = *(a2 + 64) + 8 * v20;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v21);
      *(v22 + 8 * v21++) = result;
    }

    while (a4 != v21);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + a4;
  return result;
}

uint64_t mlir::mps::SampleGridDataGradientOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned int a9, unsigned int a10)
{
  v34 = a5;
  v35 = a4;
  v33 = a6;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  if (a7)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v14);
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *v16 = UnitAttr;
  }

  if (a8)
  {
    v17 = mlir::Builder::getUnitAttr(a1, v14);
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 16) = v17;
  }

  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v36 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v37 = v19;
  v42 = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v43 = &v36;
  v41 = a9;
  v21 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v22 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v21 >> 47) ^ v21);
  v38 = &v41;
  v39 = &v42;
  v40 = &v41;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((v22 >> 47) ^ v22), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v40, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v38);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 8) = ParametricStorageTypeImpl;
  v25 = *a1;
  v26 = mlir::MLIRContext::getAttributeUniquer(v25);
  v36 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v37 = v25;
  v42 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v43 = &v36;
  v41 = a10;
  v27 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v28 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v27 >> 47) ^ v27);
  v39 = &v42;
  v40 = &v41;
  v38 = &v41;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v26, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v28 >> 47) ^ v28), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v40, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v38);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *(v30 + 24) = result;
  v31 = *(a2 + 72);
  if (v31 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v31) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::SampleGridDataGradientOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, unsigned int a9)
{
  v53 = *MEMORY[0x277D85DE8];
  v42 = a4;
  v43 = a3;
  v41 = a5;
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  if (a6)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v14);
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *v16 = UnitAttr;
  }

  if (a7)
  {
    v17 = mlir::Builder::getUnitAttr(a1, v14);
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 16) = v17;
  }

  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v49 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v50 = v19;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v47 = &v49;
  v45 = a8;
  v21 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v21);
  v44 = &v45;
  v51 = &v45;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 32) >> 15) ^ (-348639895 * (v21 ^ (v22 >> 47) ^ v22))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v44, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v51);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 8) = ParametricStorageTypeImpl;
  v25 = *a1;
  v26 = mlir::MLIRContext::getAttributeUniquer(v25);
  v49 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v50 = v25;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v47 = &v49;
  v45 = a9;
  v27 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v28 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v27 >> 47) ^ v27);
  v44 = &v45;
  v51 = &v45;
  p_src = &__src;
  v29 = mlir::StorageUniquer::getParametricStorageTypeImpl(v26, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v28 >> 47) ^ v28), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v44, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v51);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *(v30 + 24) = v29;
  __src = v48;
  v47 = 0x200000000;
  v31 = *a2;
  mlir::ValueRange::ValueRange(&v51, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = mlir::RegionRange::RegionRange(&v49, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SampleGridDataGradientOp::inferReturnTypes(v33, v31, 1, v51, p_src, v34, v35, v36, v39, v40, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v37 = v47;
  v38 = *(a2 + 72);
  if (v38 + v47 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v47)
  {
    memcpy((*(a2 + 64) + 8 * v38), __src, 8 * v47);
    LODWORD(v38) = *(a2 + 72);
  }

  *(a2 + 72) = v38 + v37;
  if (__src != v48)
  {
    free(__src);
  }
}

unint64_t mlir::mps::SampleGridDataGradientOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, unsigned int a10, unsigned int a11)
{
  v37 = a6;
  v38 = a5;
  v36 = a7;
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  if (a8)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v16);
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *v18 = UnitAttr;
  }

  if (a9)
  {
    v19 = mlir::Builder::getUnitAttr(a1, v16);
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 16) = v19;
  }

  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v39 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v40 = v21;
  v45 = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v46 = &v39;
  v44 = a10;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v24 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v23 >> 47) ^ v23);
  v41 = &v44;
  v42 = &v45;
  v43 = &v44;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((v24 >> 47) ^ v24), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v43, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v41);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 8) = ParametricStorageTypeImpl;
  v27 = *a1;
  v28 = mlir::MLIRContext::getAttributeUniquer(v27);
  v39 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v40 = v27;
  v45 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v46 = &v39;
  v44 = a11;
  v29 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v30 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v29 >> 47) ^ v29);
  v42 = &v45;
  v43 = &v44;
  v41 = &v44;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v28, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v30 >> 47) ^ v30), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v43, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v41);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 24) = result;
  v33 = *(a2 + 72);
  if (a4 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v34 = 0;
    v35 = *(a2 + 64) + 8 * v33;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v34);
      *(v35 + 8 * v34++) = result;
    }

    while (a4 != v34);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + a4;
  return result;
}

uint64_t mlir::mps::SampleGridDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SampleGridDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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

  __src = v30;
  v29 = 0x200000000;
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  v19 = mlir::RegionRange::RegionRange(&v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SampleGridDataGradientOp::inferReturnTypes(v19, v17, 1, a3, a4, v20, v21, v22, v25, v26, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = v29;
  v24 = *(a2 + 72);
  if (v24 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v24), __src, 8 * v29);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::SampleGridDataGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = v1 + 64;
  if (v4)
  {
    v5 = *(v3 + 24);
    if (v5)
    {
      v7 = *(v3 + 16);
      v28[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v2, "normalize_coordinates", 21, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) & 1) == 0)
      {
        return 0;
      }

      v28[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "relative_coordinates", 20, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) & 1) == 0)
      {
        return 0;
      }

      v28[0] = *this;
      if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v4, "padding_mode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) & 1) == 0)
      {
        return 0;
      }

      v28[0] = *this;
      if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v5, "sampling_mode", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
      {
        return 0;
      }

      if (*(*this + 9))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    v26[0] = "requires attribute 'sampling_mode'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v34;
        v21 = __p;
        if (v34 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v34 = v19;
        operator delete(v21);
      }

      v14 = v31;
      if (!v31)
      {
        goto LABEL_49;
      }

      v22 = v32;
      v16 = v31;
      if (v32 == v31)
      {
LABEL_48:
        v32 = v14;
        operator delete(v16);
LABEL_49:
        if (v29 != &v30)
        {
          free(v29);
        }

        return v10;
      }

      do
      {
        v24 = *--v22;
        v23 = v24;
        *v22 = 0;
        if (v24)
        {
          MEMORY[0x259C63150](v23, 0x1000C8077774924);
        }
      }

      while (v22 != v14);
LABEL_47:
      v16 = v31;
      goto LABEL_48;
    }
  }

  else
  {
    v26[0] = "requires attribute 'padding_mode'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v34;
        v13 = __p;
        if (v34 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v34 = v11;
        operator delete(v13);
      }

      v14 = v31;
      if (!v31)
      {
        goto LABEL_49;
      }

      v15 = v32;
      v16 = v31;
      if (v32 == v31)
      {
        goto LABEL_48;
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
      goto LABEL_47;
    }
  }

  return v10;
}

uint64_t mlir::mps::detail::SampleGridOpGenericAdaptorBase::SampleGridOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a1 + 72) = *(v3 + 48);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 80), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 80), 0, 0);
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
  v6 = *(v3 + 32);
  *(a1 + 72) = *(v3 + 48);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 80), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 80), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::detail::SampleGridOpGenericAdaptorBase::getNearestRoundingMode(mlir::mps::detail::SampleGridOpGenericAdaptorBase *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return *(v1 + 8) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::SampleGridOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v54, "align_corners", 0xDuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 58;
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

  v30 = mlir::DictionaryAttr::get(&v54, "layout", 6uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v31 = v30;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 51;
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

  v42 = mlir::DictionaryAttr::get(&v54, "nearest_rounding_mode", 0x15uLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
    {
      v43 = v42;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 66;
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

  v48 = mlir::DictionaryAttr::get(&v54, "normalize_coordinates", 0x15uLL);
  *&v55 = v48;
  if (!v48)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v54, "padding_mode", 0xCuLL);
    *&v55 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
      {
        a3(&v57, a4);
        goto LABEL_99;
      }

      a1[4] = v50;
    }

    v51 = mlir::DictionaryAttr::get(&v54, "relative_coordinates", 0x14uLL);
    *&v55 = v51;
    if (v51)
    {
      if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v57, a4);
        goto LABEL_99;
      }

      a1[5] = v51;
    }

    v52 = mlir::DictionaryAttr::get(&v54, "sampling_mode", 0xDuLL);
    *&v55 = v52;
    if (v52)
    {
      if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
      {
        a3(&v57, a4);
        goto LABEL_99;
      }

      a1[6] = v52;
    }

    return 1;
  }

  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v48;
    goto LABEL_88;
  }

  a3(&v57, a4);
LABEL_99:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v49, &v55);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  return 0;
}

uint64_t mlir::mps::SampleGridOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "align_corners", 0xD, *a2);
  if (v36 >= HIDWORD(v36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v35 + 16 * v36);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v34, "layout", 6, v7);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v35 + 16 * v36);
    *v10 = v8;
    v10[1] = v9;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v34, "nearest_rounding_mode", 0x15, v11);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v35 + 16 * v36);
    *v14 = v12;
    v14[1] = v13;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v34, "normalize_coordinates", 0x15, v15);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v35 + 16 * v36);
    *v18 = v16;
    v18[1] = v17;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v34, "padding_mode", 0xC, v19);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v35 + 16 * v36);
    *v22 = v20;
    v22[1] = v21;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v34, "relative_coordinates", 0x14, v23);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v35 + 16 * v36);
    *v26 = v24;
    v26[1] = v25;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v27 = a2[6];
  if (v27)
  {
    v28 = mlir::Builder::getNamedAttr(&v34, "sampling_mode", 0xD, v27);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = (v35 + 16 * v36);
    *v30 = v28;
    v30[1] = v29;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v31 = v35;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_25;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v6);
  v31 = v35;
  if (v35 != v37)
  {
LABEL_25:
    free(v31);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::SampleGridOp::computePropertiesHash(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v16 = HIDWORD(a1[6]);
  v17 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v16);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  memset(v26, 0, sizeof(v26));
  v27 = 0xFF51AFD7ED558CCDLL;
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v25, 0, v26, &v26[3] + 8, &v24, &v23, &v22, &v21, &v20, &v19);
}

uint64_t mlir::mps::SampleGridOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    if (__n == 6)
    {
      if (!memcmp(__s1, "layout", 6uLL))
      {
        return a2[1];
      }
    }

    else if (__n == 12 && !memcmp(__s1, "padding_mode", 0xCuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n == 21)
  {
    if (!memcmp(__s1, "nearest_rounding_mode", 0x15uLL))
    {
      return a2[2];
    }

    if (*__s1 == 0x7A696C616D726F6ELL && *(__s1 + 1) == 0x6964726F6F635F65 && *(__s1 + 13) == 0x736574616E696472)
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 20)
  {
    if (!memcmp(__s1, "relative_coordinates", 0x14uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (*__s1 == 0x6F635F6E67696C61 && *(__s1 + 5) == 0x7372656E726F635FLL)
  {
    return *a2;
  }

  if (memcmp(__s1, "sampling_mode", 0xDuLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::mps::SampleGridOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    if (a3 == 6)
    {
      result = memcmp(__s1, "layout", 6uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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
    }

    else if (a3 == 12)
    {
      result = memcmp(__s1, "padding_mode", 0xCuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[4] = v7;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 21:
        result = memcmp(__s1, "nearest_rounding_mode", 0x15uLL);
        if (result)
        {
          if (*__s1 == 0x7A696C616D726F6ELL && *(__s1 + 1) == 0x6964726F6F635F65 && *(__s1 + 13) == 0x736574616E696472)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                v11 = a4;
              }

              else
              {
                v11 = 0;
              }

              v5[3] = v11;
            }

            else
            {
              v5[3] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          v5[2] = v14;
        }

        else
        {
          v5[2] = 0;
        }

        break;
      case 20:
        result = memcmp(__s1, "relative_coordinates", 0x14uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v12 = a4;
            }

            else
            {
              v12 = 0;
            }

            v5[5] = v12;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
      case 13:
        if (*__s1 == 0x6F635F6E67696C61 && *(__s1 + 5) == 0x7372656E726F635FLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            *result = v15;
          }

          else
          {
            *result = 0;
          }
        }

        else
        {
          result = memcmp(__s1, "sampling_mode", 0xDuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
              {
                v16 = a4;
              }

              else
              {
                v16 = 0;
              }

              v5[6] = v16;
            }

            else
            {
              v5[6] = 0;
            }
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::SampleGridOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "align_corners", 0xDuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "layout", 6uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "nearest_rounding_mode", 0x15uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "normalize_coordinates", 0x15uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "padding_mode", 0xCuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "relative_coordinates", 0x14uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "sampling_mode", 0xDuLL, v10);
  }
}

BOOL mlir::mps::SampleGridOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "align_corners", 13, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v9, "layout", 6, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v10, "nearest_rounding_mode", 21, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "normalize_coordinates", 21, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v12, "padding_mode", 12, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v13, "relative_coordinates", 20, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v14, "sampling_mode", 13, a3, a4) & 1) != 0)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::SampleGridOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && (v4 = mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 1), (v4 & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NearestRoundingModeAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(a1, v3 + 4) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 5)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(a1, v3 + 6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::SampleGridOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  v4 = v3[14];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::SampleGridOp::getNearestRoundingMode(mlir::mps::SampleGridOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (v1)
  {
    return *(v1 + 8) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::SampleGridOp::setNormalizeCoordinates(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 88) = this;
  }

  else
  {
    *(v2 + 88) = 0;
  }

  return this;
}

uint64_t mlir::mps::SampleGridOp::setRelativeCoordinates(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 104) = this;
  }

  else
  {
    *(v2 + 104) = 0;
  }

  return this;
}

uint64_t mlir::mps::SampleGridOp::setAlignCorners(uint64_t this, int a2)
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

uint64_t mlir::mps::SampleGridOp::setPaddingMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::SampleGridOp::setSamplingMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 112) = result;
  return result;
}