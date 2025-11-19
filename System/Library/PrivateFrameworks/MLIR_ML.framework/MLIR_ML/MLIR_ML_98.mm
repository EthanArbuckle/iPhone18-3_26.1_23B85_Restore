uint64_t mlir::mps::PoolAvgGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v56 = v6;
  if (!v6)
  {
    a3(&v59, a4);
    if (v59)
    {
      LODWORD(v57) = 3;
      *(&v57 + 1) = "expected DictionaryAttr to set properties";
      v58 = 41;
      if (v62 >= v63)
      {
        if (v61 > &v57 || v61 + 24 * v62 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v61 + 24 * v62;
      v23 = v57;
      *(v22 + 2) = v58;
      *v22 = v23;
      ++v62;
      if (v59)
      {
        mlir::InFlightDiagnostic::report(&v59);
      }
    }

    if (v70 != 1)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v68;
      v26 = __p;
      if (v68 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v68 = v24;
      operator delete(v26);
    }

    v17 = v65;
    if (!v65)
    {
      goto LABEL_77;
    }

    v27 = v66;
    v19 = v65;
    if (v66 == v65)
    {
LABEL_76:
      v66 = v17;
      operator delete(v19);
LABEL_77:
      if (v61 != &v64)
      {
        free(v61);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v56, "ceil_mode", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 54;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v61 + 24 * v62;
        v11 = v57;
        *(v10 + 2) = v58;
        *v10 = v11;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v9);
          if (v62 >= v63)
          {
            if (v61 > &v57 || v61 + 24 * v62 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v61 + 24 * v62;
          v13 = v57;
          *(v12 + 2) = v58;
          *v12 = v13;
          ++v62;
          if (v59)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }
      }

      if ((v70 & 1) == 0)
      {
        return 0;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v68;
        v16 = __p;
        if (v68 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v68 = v14;
        operator delete(v16);
      }

      v17 = v65;
      if (!v65)
      {
        goto LABEL_77;
      }

      v18 = v66;
      v19 = v65;
      if (v66 == v65)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v56, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v59, a4);
    if (v59)
    {
      LODWORD(v57) = 3;
      v58 = 59;
      if (v62 >= v63)
      {
        if (v61 > &v57 || v61 + 24 * v62 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v61 + 24 * v62;
      v37 = v57;
      *(v36 + 2) = v58;
      *v36 = v37;
      ++v62;
      if (v59)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v57, v31);
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v61 + 24 * v62;
        v39 = v57;
        *(v38 + 2) = v58;
        *v38 = v39;
        ++v62;
        if (v59)
        {
          mlir::InFlightDiagnostic::report(&v59);
        }
      }
    }

    if ((v70 & 1) == 0)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v68;
      v42 = __p;
      if (v68 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v68 = v40;
      operator delete(v42);
    }

    v17 = v65;
    if (!v65)
    {
      goto LABEL_77;
    }

    v43 = v66;
    v19 = v65;
    if (v66 == v65)
    {
      goto LABEL_76;
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

    while (v43 != v17);
LABEL_75:
    v19 = v65;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v56, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 61;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v61 + 24 * v62;
        v47 = v57;
        *(v46 + 2) = v58;
        *v46 = v47;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v33);
          if (v62 >= v63)
          {
            if (v61 > &v57 || v61 + 24 * v62 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v61 + 24 * v62;
          v49 = v57;
          *(v48 + 2) = v58;
          *v48 = v49;
          ++v62;
          if (v59)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }
      }

      if (v70 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v60);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v56, "include_zero_pad", 0x10uLL);
  *&v57 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v56, "padding_style", 0xDuLL);
    *&v57 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[4] = v50;
    }

    v51 = mlir::DictionaryAttr::get(&v56, "strides", 7uLL);
    *&v57 = v51;
    if (v51)
    {
      v52 = v51;
      if (!mlir::DenseIntElementsAttr::classof(v51))
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[5] = v52;
    }

    v53 = mlir::DictionaryAttr::get(&v56, "window_sizes", 0xCuLL);
    *&v57 = v53;
    if (v53)
    {
      v54 = v53;
      if (!mlir::DenseIntElementsAttr::classof(v53))
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[6] = v54;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v59, a4);
LABEL_101:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v57);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
  return 0;
}

uint64_t mlir::mps::PoolAvgGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "ceil_mode", 9, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v34, "dilation_rates", 0xE, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v34, "explicit_padding", 0x10, v11);
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
    v16 = mlir::Builder::getNamedAttr(&v34, "include_zero_pad", 0x10, v15);
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
    v20 = mlir::Builder::getNamedAttr(&v34, "padding_style", 0xD, v19);
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
    v24 = mlir::Builder::getNamedAttr(&v34, "strides", 7, v23);
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
    v28 = mlir::Builder::getNamedAttr(&v34, "window_sizes", 0xC, v27);
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

unint64_t mlir::mps::PoolAvgGradientOp::computePropertiesHash(void *a1)
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

uint64_t mlir::mps::PoolAvgGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    switch(__n)
    {
      case 13:
        if (!memcmp(__s1, "padding_style", 0xDuLL))
        {
          return a2[4];
        }

        break;
      case 14:
        if (!memcmp(__s1, "dilation_rates", 0xEuLL))
        {
          return a2[1];
        }

        break;
      case 16:
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[2];
        }

        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          return a2[3];
        }

        break;
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 9)
  {
    if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 12 || memcmp(__s1, "window_sizes", 0xCuLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::mps::PoolAvgGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (result)
        {
          if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
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

              v5[3] = v8;
            }

            else
            {
              v5[3] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[2] = v15;
        }

        else
        {
          v5[2] = 0;
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "strides", 7uLL);
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

            v5[5] = v9;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
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

        break;
      case 12:
        result = memcmp(__s1, "window_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            v5[6] = v14;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::PoolAvgGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9uLL, *a2);
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
    mlir::NamedAttrList::append(a3, "include_zero_pad", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "window_sizes", 0xCuLL, v10);
  }
}

BOOL mlir::mps::PoolAvgGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "ceil_mode", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "include_zero_pad", 16, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v12, "padding_style", 13, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v13, "strides", 7, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v14, "window_sizes", 12, a3, a4) & 1) != 0)
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v72 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v51 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v51 + 8);
      v13 = *(v51 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = v12;
    v15 = v13;
    do
    {
      v16 = v15 >> 1;
      v17 = &v14[2 * (v15 >> 1)];
      v19 = *v17;
      v18 = v17 + 2;
      v15 += ~(v15 >> 1);
      if (v19 < v11)
      {
        v14 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      *&v56 = a1;
      *(&v56 + 1) = v21;
      Type = mlir::ElementsAttr::getType(&v56);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v56 = a1;
    Type = mlir::ElementsAttr::getType(&v56);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v50 = v22;
      v52 = Type;
      mlir::mps::ConstantOp::verify();
      Type = v52;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v50 + 8);
      v25 = *(v50 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v59 = Type;
    v60 = v32;
    Shape = mlir::ShapedType::getShape(&v59);
    v71 = 8;
    if (v34 == 1 && *Shape == v71)
    {
      v53 = a1;
      v54[0] = mlir::DenseElementsAttr::getType(&v53);
      v54[1] = v35;
      ElementType = mlir::ShapedType::getElementType(v54);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }
    }
  }

  a4(&v59, a5);
  if (v59)
  {
    LODWORD(v56) = 3;
    *(&v56 + 1) = "attribute '";
    v57 = 11;
    if (v62 >= v63)
    {
      if (v61 > &v56 || v61 + 24 * v62 <= &v56)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v37 = v61 + 24 * v62;
    v38 = v56;
    *(v37 + 2) = v57;
    *v37 = v38;
    ++v62;
    if (v59)
    {
      v58 = 261;
      *&v56 = a2;
      *(&v56 + 1) = a3;
      mlir::Diagnostic::operator<<(&v60, &v56);
      if (v59)
      {
        LODWORD(v56) = 3;
        *(&v56 + 1) = "' failed to satisfy constraint: ui64 elements attribute of shape {8}";
        v57 = 68;
        if (v62 >= v63)
        {
          if (v61 > &v56 || v61 + 24 * v62 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v39 = v61 + 24 * v62;
        v40 = v56;
        *(v39 + 2) = v57;
        *v39 = v40;
        ++v62;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v68;
      v43 = __p;
      if (v68 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v68 = v41;
      operator delete(v43);
    }

    v44 = v65;
    if (v65)
    {
      v45 = v66;
      v46 = v65;
      if (v66 != v65)
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
        v46 = v65;
      }

      v66 = v44;
      operator delete(v46);
    }

    if (v61 != &v64)
    {
      free(v61);
    }
  }

  return v36;
}

BOOL mlir::mps::PoolAvgGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, uint64_t *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v28 = 0;
  if (((*(*a1 + 56))(a1, &v28) & 1) == 0)
  {
    return 0;
  }

  v4 = v28;
  if (!v28)
  {
    return 1;
  }

  v5 = mlir::DenseIntElementsAttr::classof(v28);
  v6 = v5 ? v4 : 0;
  *a2 = v6;
  if (v5)
  {
    return 1;
  }

  v27[16] = 257;
  (*(*a1 + 16))(&v32, a1, v27);
  if (v32)
  {
    LODWORD(v29) = 3;
    *(&v29 + 1) = "expected ";
    v30 = 9;
    if (v35 >= v36)
    {
      if (v34 > &v29 || v34 + 24 * v35 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v34 + 24 * v35;
    v9 = v29;
    *(v8 + 2) = v30;
    *v8 = v9;
    ++v35;
  }

  *&v29 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DenseIntElementsAttr]";
  *(&v29 + 1) = 76;
  v10 = llvm::StringRef::find(&v29, "DesiredTypeName = ", 0x12uLL, 0);
  if (v32)
  {
    if (*(&v29 + 1) >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(&v29 + 1);
    }

    v12 = 18;
    if (*(&v29 + 1) - v11 < 0x12)
    {
      v12 = *(&v29 + 1) - v11;
    }

    v13 = *(&v29 + 1) - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v31 = 261;
    *&v29 = v29 + v11 + v12;
    *(&v29 + 1) = v13;
    mlir::Diagnostic::operator<<(&v33, &v29);
    if (v32)
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = ", but got: ";
      v30 = 11;
      if (v35 >= v36)
      {
        if (v34 > &v29 || v34 + 24 * v35 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v34 + 24 * v35;
      v15 = v29;
      *(v14 + 2) = v30;
      *v14 = v15;
      ++v35;
      if (v32)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v29, v28);
        if (v35 >= v36)
        {
          if (v34 > &v29 || v34 + 24 * v35 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v34 + 24 * v35;
        v17 = v29;
        *(v16 + 2) = v30;
        *v16 = v17;
        ++v35;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  v18 = result;
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
    result = v18;
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
      result = v18;
    }

    v19 = __p;
    if (__p)
    {
      v20 = v41;
      v21 = __p;
      if (v41 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v41 = v19;
      operator delete(v21);
      result = v18;
    }

    v22 = v38;
    if (v38)
    {
      v23 = v39;
      v24 = v38;
      if (v39 != v38)
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
        v24 = v38;
      }

      v39 = v22;
      operator delete(v24);
      result = v18;
    }

    if (v34 != &v37)
    {
      free(v34);
      return v18;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PaddingStyleAttr]";
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

uint64_t mlir::mps::PoolAvgGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  v4 = v3[14];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::PoolAvgGradientOp::setPaddingStyle(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::PoolAvgGradientOp::setCeilMode(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolAvgGradientOp::setIncludeZeroPad(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolAvgGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a5;
  v27 = a4;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 48) = a6;
  if (a7)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 40) = a7;
  }

  if (a8)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 8) = a8;
  }

  if (a9)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 32) = a9;
  }

  if (a10)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 16) = a10;
  }

  if (a11)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *v23 = a11;
  }

  if (a12)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 24) = a12;
  }

  v25 = *(a2 + 72);
  if (v25 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v25) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolAvgGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 48) = a5;
  if (a6)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 40) = a6;
  }

  if (a7)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 8) = a7;
  }

  if (a8)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 32) = a8;
  }

  if (a9)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 16) = a9;
  }

  if (a10)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *v21 = a10;
  }

  if (a11)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 24) = a11;
  }

  __src = v34;
  v33 = 0x200000000;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v24 = mlir::RegionRange::RegionRange(&v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v24, v25, v31[0], v31[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = v33;
  v27 = *(a2 + 72);
  if (v27 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v27), __src, 8 * v33);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + v26;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolAvgGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a6;
  v30 = a5;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v29, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = a7;
  if (a8)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 40) = a8;
  }

  if (a9)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a9;
  }

  if (a10)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 32) = a10;
  }

  if (a11)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 16) = a11;
  }

  if (a12)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *v24 = a12;
  }

  if (a13)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 24) = a13;
  }

  v26 = *(a2 + 72);
  if (a4 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v27 = 0;
    v28 = *(a2 + 64) + 8 * v26;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v27);
      *(v28 + 8 * v27++) = result;
    }

    while (a4 != v27);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + a4;
  return result;
}

uint64_t mlir::mps::PoolAvgGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, char a11, char a12)
{
  v32 = a5;
  v33 = a4;
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 48) = a6;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 40) = a7;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 8) = a8;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v34[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v34[1] = v21;
  v38[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38[1] = v34;
  v37 = a9;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v24 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v23 >> 47) ^ v23);
  v35[0] = &v37;
  v35[1] = v38;
  v36 = &v37;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v24 >> 47) ^ v24), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v35);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 32) = result;
  if (a10)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 16) = a10;
  }

  if (a11)
  {
    result = mlir::Builder::getUnitAttr(a1, v26);
    v30 = *(a2 + 256);
    if (!v30)
    {
      operator new();
    }

    *v30 = result;
    if (!a12)
    {
LABEL_15:
      v29 = *(a2 + 72);
      if (v29 >= *(a2 + 76))
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else if (!a12)
  {
    goto LABEL_15;
  }

  result = mlir::Builder::getUnitAttr(a1, v26);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 24) = result;
  v29 = *(a2 + 72);
  if (v29 >= *(a2 + 76))
  {
LABEL_16:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_17:
  *(*(a2 + 64) + 8 * v29) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolAvgGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, char a10, char a11)
{
  v47 = *MEMORY[0x277D85DE8];
  v37 = a4;
  v38 = a3;
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 48) = a5;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 40) = a6;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a7;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v44[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v44[1] = v20;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v42 = v44;
  v40 = a8;
  v22 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v22);
  v39 = &v40;
  v45 = &v40;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v23 >> 47) ^ v23))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v45);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 32) = ParametricStorageTypeImpl;
  if (a9)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 16) = a9;
  }

  if (a10)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *v29 = UnitAttr;
  }

  if (a11)
  {
    v30 = mlir::Builder::getUnitAttr(a1, v24);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = v30;
  }

  __src = v43;
  v42 = 0x200000000;
  mlir::ValueRange::ValueRange(&v45, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = mlir::RegionRange::RegionRange(v44, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v33, v34, v45, p_src, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v35 = v42;
  v36 = *(a2 + 72);
  if (v36 + v42 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v42)
  {
    memcpy((*(a2 + 64) + 8 * v36), __src, 8 * v42);
    LODWORD(v36) = *(a2 + 72);
  }

  *(a2 + 72) = v36 + v35;
  if (__src != v43)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolAvgGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, char a12, char a13)
{
  v35 = a6;
  v36 = a5;
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = a7;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 40) = a8;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a9;
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v37[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v37[1] = v22;
  v41[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v41[1] = v37;
  v40 = a10;
  v24 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v25 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v24 >> 47) ^ v24);
  v38[0] = &v40;
  v38[1] = v41;
  v39 = &v40;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v25 >> 47) ^ v25), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v38);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 32) = result;
  if (a11)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 16) = a11;
  }

  if (a12)
  {
    result = mlir::Builder::getUnitAttr(a1, v27);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *v31 = result;
    if (!a13)
    {
LABEL_15:
      v30 = *(a2 + 72);
      if (a4 + v30 <= *(a2 + 76))
      {
        goto LABEL_16;
      }

LABEL_26:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else if (!a13)
  {
    goto LABEL_15;
  }

  result = mlir::Builder::getUnitAttr(a1, v27);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 24) = result;
  v30 = *(a2 + 72);
  if (a4 + v30 > *(a2 + 76))
  {
    goto LABEL_26;
  }

LABEL_16:
  if (a4)
  {
    v33 = 0;
    v34 = *(a2 + 64) + 8 * v30;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v33);
      *(v34 + 8 * v33++) = result;
    }

    while (a4 != v33);
    LODWORD(v30) = *(a2 + 72);
  }

  *(a2 + 72) = v30 + a4;
  return result;
}

uint64_t mlir::mps::PoolAvgGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PoolAvgGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  v18 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v18, v19, a3, a4, &__src) & 1) == 0)
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

mlir::MLIRContext *mlir::mps::PoolAvgGradientOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  *&v14 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v14);
  v10 = result;
  if (a2[5])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16[0] = 4;
    IntegerType = mlir::Builder::getIntegerType(&v10, 64, 0);
    v11[0] = mlir::RankedTensorType::get(v16, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(v11);
    v14 = xmmword_25737C738;
    v15 = unk_25737C748;
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v5);
    a2[5] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[4])
      {
        return result;
      }

LABEL_7:
      v8 = v10;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v10);
      v16[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
      v16[1] = v8;
      *&v14 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      *(&v14 + 1) = v16;
      v13 = 2;
      v11[0] = &v13;
      v11[1] = &v14;
      v12 = &v13;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
      a2[4] = result;
      return result;
    }
  }

  v16[0] = 4;
  v6 = mlir::Builder::getIntegerType(&v10, 64, 0);
  v11[0] = mlir::RankedTensorType::get(v16, 1, v6, 0);
  v7 = mlir::TensorType::operator mlir::ShapedType(v11);
  v14 = xmmword_25737C738;
  v15 = unk_25737C748;
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v7);
  a2[1] = result;
  if (!a2[4])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::PoolAvgGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v4 = v3[14];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v10 = v3[13];
    v25[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) != 0 && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v10, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v9, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "include_zero_pad", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v11 = *this - 16;
      }

      else
      {
        v11 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = "requires attribute 'window_sizes'";
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

uint64_t mlir::mps::detail::PoolAvgOpGenericAdaptorBase::PoolAvgOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::PoolAvgOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v56 = v6;
  if (!v6)
  {
    a3(&v59, a4);
    if (v59)
    {
      LODWORD(v57) = 3;
      *(&v57 + 1) = "expected DictionaryAttr to set properties";
      v58 = 41;
      if (v62 >= v63)
      {
        if (v61 > &v57 || v61 + 24 * v62 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v61 + 24 * v62;
      v23 = v57;
      *(v22 + 2) = v58;
      *v22 = v23;
      ++v62;
      if (v59)
      {
        mlir::InFlightDiagnostic::report(&v59);
      }
    }

    if (v70 != 1)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v68;
      v26 = __p;
      if (v68 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v68 = v24;
      operator delete(v26);
    }

    v17 = v65;
    if (!v65)
    {
      goto LABEL_77;
    }

    v27 = v66;
    v19 = v65;
    if (v66 == v65)
    {
LABEL_76:
      v66 = v17;
      operator delete(v19);
LABEL_77:
      if (v61 != &v64)
      {
        free(v61);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v56, "ceil_mode", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 54;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v61 + 24 * v62;
        v11 = v57;
        *(v10 + 2) = v58;
        *v10 = v11;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v9);
          if (v62 >= v63)
          {
            if (v61 > &v57 || v61 + 24 * v62 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v61 + 24 * v62;
          v13 = v57;
          *(v12 + 2) = v58;
          *v12 = v13;
          ++v62;
          if (v59)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }
      }

      if ((v70 & 1) == 0)
      {
        return 0;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v68;
        v16 = __p;
        if (v68 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v68 = v14;
        operator delete(v16);
      }

      v17 = v65;
      if (!v65)
      {
        goto LABEL_77;
      }

      v18 = v66;
      v19 = v65;
      if (v66 == v65)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v56, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v59, a4);
    if (v59)
    {
      LODWORD(v57) = 3;
      v58 = 59;
      if (v62 >= v63)
      {
        if (v61 > &v57 || v61 + 24 * v62 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v61 + 24 * v62;
      v37 = v57;
      *(v36 + 2) = v58;
      *v36 = v37;
      ++v62;
      if (v59)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v57, v31);
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v61 + 24 * v62;
        v39 = v57;
        *(v38 + 2) = v58;
        *v38 = v39;
        ++v62;
        if (v59)
        {
          mlir::InFlightDiagnostic::report(&v59);
        }
      }
    }

    if ((v70 & 1) == 0)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v68;
      v42 = __p;
      if (v68 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v68 = v40;
      operator delete(v42);
    }

    v17 = v65;
    if (!v65)
    {
      goto LABEL_77;
    }

    v43 = v66;
    v19 = v65;
    if (v66 == v65)
    {
      goto LABEL_76;
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

    while (v43 != v17);
LABEL_75:
    v19 = v65;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v56, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 61;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v61 + 24 * v62;
        v47 = v57;
        *(v46 + 2) = v58;
        *v46 = v47;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v33);
          if (v62 >= v63)
          {
            if (v61 > &v57 || v61 + 24 * v62 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v61 + 24 * v62;
          v49 = v57;
          *(v48 + 2) = v58;
          *v48 = v49;
          ++v62;
          if (v59)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }
      }

      if (v70 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v60);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v56, "include_zero_pad", 0x10uLL);
  *&v57 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v56, "padding_style", 0xDuLL);
    *&v57 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[4] = v50;
    }

    v51 = mlir::DictionaryAttr::get(&v56, "strides", 7uLL);
    *&v57 = v51;
    if (v51)
    {
      v52 = v51;
      if (!mlir::DenseIntElementsAttr::classof(v51))
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[5] = v52;
    }

    v53 = mlir::DictionaryAttr::get(&v56, "window_sizes", 0xCuLL);
    *&v57 = v53;
    if (v53)
    {
      v54 = v53;
      if (!mlir::DenseIntElementsAttr::classof(v53))
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[6] = v54;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v59, a4);
LABEL_101:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v57);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
  return 0;
}

uint64_t mlir::mps::PoolAvgOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "ceil_mode", 9, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v34, "dilation_rates", 0xE, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v34, "explicit_padding", 0x10, v11);
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
    v16 = mlir::Builder::getNamedAttr(&v34, "include_zero_pad", 0x10, v15);
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
    v20 = mlir::Builder::getNamedAttr(&v34, "padding_style", 0xD, v19);
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
    v24 = mlir::Builder::getNamedAttr(&v34, "strides", 7, v23);
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
    v28 = mlir::Builder::getNamedAttr(&v34, "window_sizes", 0xC, v27);
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

unint64_t mlir::mps::PoolAvgOp::computePropertiesHash(void *a1)
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

uint64_t mlir::mps::PoolAvgOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    switch(__n)
    {
      case 13:
        if (!memcmp(__s1, "padding_style", 0xDuLL))
        {
          return a2[4];
        }

        break;
      case 14:
        if (!memcmp(__s1, "dilation_rates", 0xEuLL))
        {
          return a2[1];
        }

        break;
      case 16:
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[2];
        }

        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          return a2[3];
        }

        break;
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 9)
  {
    if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 12 || memcmp(__s1, "window_sizes", 0xCuLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::mps::PoolAvgOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (result)
        {
          if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
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

              v5[3] = v8;
            }

            else
            {
              v5[3] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[2] = v15;
        }

        else
        {
          v5[2] = 0;
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "strides", 7uLL);
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

            v5[5] = v9;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
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

        break;
      case 12:
        result = memcmp(__s1, "window_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            v5[6] = v14;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::PoolAvgOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9uLL, *a2);
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
    mlir::NamedAttrList::append(a3, "include_zero_pad", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "window_sizes", 0xCuLL, v10);
  }
}

BOOL mlir::mps::PoolAvgOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "ceil_mode", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "include_zero_pad", 16, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v12, "padding_style", 13, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v13, "strides", 7, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v14, "window_sizes", 12, a3, a4) & 1) != 0)
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

BOOL mlir::mps::PoolAvgOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
}

uint64_t mlir::mps::PoolAvgOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  v4 = v3[14];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::PoolAvgOp::setPaddingStyle(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::PoolAvgOp::setCeilMode(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolAvgOp::setIncludeZeroPad(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolAvgOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a4;
  result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 48) = a5;
  if (a6)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 40) = a6;
  }

  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 8) = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 32) = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 16) = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *v23 = a10;
  }

  if (a11)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 24) = a11;
  }

  v25 = *(a2 + 72);
  if (v25 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v25) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolAvgOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v32 = a3;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 48) = a4;
  if (a5)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 40) = a5;
  }

  if (a6)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 8) = a6;
  }

  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 32) = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 16) = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *v22 = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 24) = a10;
  }

  __src = v37;
  v36 = 0x200000000;
  v24 = *a1;
  v25 = *a2;
  mlir::ValueRange::ValueRange(v34, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v28 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v33, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolAvgOp::inferReturnTypes(v24, v25, 1, v34[0], v34[1], Dictionary, v28, v29, v33, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v30 = v36;
  v31 = *(a2 + 72);
  if (v31 + v36 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v36)
  {
    memcpy((*(a2 + 64) + 8 * v31), __src, 8 * v36);
    LODWORD(v31) = *(a2 + 72);
  }

  *(a2 + 72) = v31 + v30;
  if (__src != v37)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolAvgOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a5;
  result = mlir::OperationState::addOperands(a2, &v29, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = a6;
  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 40) = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 32) = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 16) = a10;
  }

  if (a11)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *v24 = a11;
  }

  if (a12)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 24) = a12;
  }

  v26 = *(a2 + 72);
  if (a4 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v27 = 0;
    v28 = *(a2 + 64) + 8 * v26;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v27);
      *(v28 + 8 * v27++) = result;
    }

    while (a4 != v27);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + a4;
  return result;
}

uint64_t mlir::mps::PoolAvgOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, char a10, char a11)
{
  v32 = a4;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 48) = a5;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 40) = a6;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 8) = a7;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v33[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v33[1] = v21;
  v37[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v37[1] = v33;
  v36 = a8;
  v23 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v24 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v23);
  v34[0] = &v36;
  v34[1] = v37;
  v35 = &v36;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 32) >> 15) ^ (-348639895 * (v23 ^ (v24 >> 47) ^ v24))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v35, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v34);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 32) = result;
  if (a9)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 16) = a9;
  }

  if (a10)
  {
    result = mlir::Builder::getUnitAttr(a1, v26);
    v30 = *(a2 + 256);
    if (!v30)
    {
      operator new();
    }

    *v30 = result;
    if (!a11)
    {
LABEL_15:
      v29 = *(a2 + 72);
      if (v29 >= *(a2 + 76))
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else if (!a11)
  {
    goto LABEL_15;
  }

  result = mlir::Builder::getUnitAttr(a1, v26);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 24) = result;
  v29 = *(a2 + 72);
  if (v29 >= *(a2 + 76))
  {
LABEL_16:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_17:
  *(*(a2 + 64) + 8 * v29) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolAvgOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, char a9, char a10)
{
  v49 = *MEMORY[0x277D85DE8];
  v40 = a3;
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 48) = a4;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 40) = a5;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a6;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v46 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  *(&v46 + 1) = v20;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v44 = &v46;
  v42 = a7;
  v22 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v22);
  v41 = &v42;
  v47 = &v42;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v23 >> 47) ^ v23))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v47);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 32) = ParametricStorageTypeImpl;
  if (a8)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 16) = a8;
  }

  if (a9)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *v29 = UnitAttr;
  }

  if (a10)
  {
    v30 = mlir::Builder::getUnitAttr(a1, v24);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = v30;
  }

  __src = v45;
  v44 = 0x200000000;
  v32 = *a1;
  v33 = *a2;
  mlir::ValueRange::ValueRange(&v47, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v36 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v46, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolAvgOp::inferReturnTypes(v32, v33, 1, v47, p_src, Dictionary, v36, v37, v46, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v38 = v44;
  v39 = *(a2 + 72);
  if (v39 + v44 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v44)
  {
    memcpy((*(a2 + 64) + 8 * v39), __src, 8 * v44);
    LODWORD(v39) = *(a2 + 72);
  }

  *(a2 + 72) = v39 + v38;
  if (__src != v45)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolAvgOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, char a11, char a12)
{
  v35 = a5;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = a6;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 40) = a7;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a8;
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v36[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v36[1] = v22;
  v40[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v40[1] = v36;
  v39 = a9;
  v24 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v25 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v24 >> 47) ^ v24);
  v37[0] = &v39;
  v37[1] = v40;
  v38 = &v39;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v25 >> 47) ^ v25), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v38, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v37);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 32) = result;
  if (a10)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 16) = a10;
  }

  if (a11)
  {
    result = mlir::Builder::getUnitAttr(a1, v27);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *v31 = result;
    if (!a12)
    {
LABEL_15:
      v30 = *(a2 + 72);
      if (a4 + v30 <= *(a2 + 76))
      {
        goto LABEL_16;
      }

LABEL_26:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else if (!a12)
  {
    goto LABEL_15;
  }

  result = mlir::Builder::getUnitAttr(a1, v27);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 24) = result;
  v30 = *(a2 + 72);
  if (a4 + v30 > *(a2 + 76))
  {
    goto LABEL_26;
  }

LABEL_16:
  if (a4)
  {
    v33 = 0;
    v34 = *(a2 + 64) + 8 * v30;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v33);
      *(v34 + 8 * v33++) = result;
    }

    while (a4 != v33);
    LODWORD(v30) = *(a2 + 72);
  }

  *(a2 + 72) = v30 + a4;
  return result;
}

uint64_t mlir::mps::PoolAvgOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PoolAvgOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
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

  __src = v29;
  v28 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  v20 = mlir::Attribute::getContext(a2);
  v21 = mlir::NamedAttrList::getDictionary((a2 + 112), v20);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolAvgOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v28;
  v25 = *(a2 + 72);
  if (v25 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v28);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v29)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::PoolAvgOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  *&v14 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v14);
  v10 = result;
  if (a2[5])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16[0] = 4;
    IntegerType = mlir::Builder::getIntegerType(&v10, 64, 0);
    v11[0] = mlir::RankedTensorType::get(v16, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(v11);
    v14 = xmmword_25737C738;
    v15 = unk_25737C748;
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v5);
    a2[5] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[4])
      {
        return result;
      }

LABEL_7:
      v8 = v10;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v10);
      v16[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
      v16[1] = v8;
      *&v14 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      *(&v14 + 1) = v16;
      v13 = 2;
      v11[0] = &v13;
      v11[1] = &v14;
      v12 = &v13;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
      a2[4] = result;
      return result;
    }
  }

  v16[0] = 4;
  v6 = mlir::Builder::getIntegerType(&v10, 64, 0);
  v11[0] = mlir::RankedTensorType::get(v16, 1, v6, 0);
  v7 = mlir::TensorType::operator mlir::ShapedType(v11);
  v14 = xmmword_25737C738;
  v15 = unk_25737C748;
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v7);
  a2[1] = result;
  if (!a2[4])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::PoolAvgOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v4 = v3[14];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v10 = v3[13];
    v25[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) != 0 && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v10, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v9, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "include_zero_pad", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v11 = *this - 16;
      }

      else
      {
        v11 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = "requires attribute 'window_sizes'";
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

uint64_t mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::PoolL2NormGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::PoolL2NormGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v142 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v129 = a1[5];
  v4 = a1[9];
  if (!v4)
  {
    v126 = "'mps.pooling_l2_norm_gradient' op requires attribute 'window_sizes'";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v139;
        v19 = __p;
        if (v139 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v139 = v17;
        operator delete(v19);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v21 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
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
      goto LABEL_168;
    }

    return v16;
  }

  v5 = a1[8];
  v6 = *v4;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = v6;
    mlir::mps::ConstantOp::getAsAttribute();
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v25 + 8);
    v9 = *(v25 + 16);
    if (!v9)
    {
      goto LABEL_30;
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
    v27 = v10[1];
    v126 = v4;
    v127 = v27;
    Type = mlir::ElementsAttr::getType(&v126);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v126 = v4;
  v127 = 0;
  Type = mlir::ElementsAttr::getType(&v126);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v28 = *Type;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v119 = v28;
    v120 = Type;
    mlir::mps::ConstantOp::verify();
    Type = v120;
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v119 + 8);
    v31 = *(v119 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

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
  if (v32 != &v30[2 * v31] && *v32 == v29)
  {
    v38 = v32[1];
    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
LABEL_46:
  v132 = Type;
  v133 = v38;
  Shape = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v40 != 1 || *Shape != v131 || (v123 = v4, v124 = mlir::DenseElementsAttr::getType(&v123), v125 = v41, ElementType = mlir::ShapedType::getElementType(&v124), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
  {
    v126 = "'mps.pooling_l2_norm_gradient' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v139;
        v54 = __p;
        if (v139 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v139 = v52;
        operator delete(v54);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v55 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

      do
      {
        v57 = *--v55;
        v56 = v57;
        *v55 = 0;
        if (v57)
        {
          MEMORY[0x259C63150](v56, 0x1000C8077774924);
        }
      }

      while (v55 != v20);
      goto LABEL_168;
    }

    return v16;
  }

  if (!v5)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v74 = *v3;
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
LABEL_101:
        v78 = v76;
        v79 = v77;
        do
        {
          v80 = v79 >> 1;
          v81 = &v78[2 * (v79 >> 1)];
          v83 = *v81;
          v82 = v81 + 2;
          v79 += ~(v79 >> 1);
          if (v83 < v75)
          {
            v78 = v82;
          }

          else
          {
            v79 = v80;
          }
        }

        while (v79);
LABEL_126:
        if (v78 != &v76[2 * v77] && *v78 == v75)
        {
          v90 = v78[1];
        }

        else
        {
          v90 = 0;
        }

        v126 = v3;
        v127 = v90;
        v91 = mlir::ElementsAttr::getType(&v126);
        if (!v91)
        {
          goto LABEL_143;
        }

        v92 = *v91;
        {
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v102 = v91;
          mlir::mps::ConstantOp::verify();
          v91 = v102;
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
LABEL_133:
            v96 = v94;
            v97 = v95;
            do
            {
              v98 = v97 >> 1;
              v99 = &v96[2 * (v97 >> 1)];
              v101 = *v99;
              v100 = v99 + 2;
              v97 += ~(v97 >> 1);
              if (v101 < v93)
              {
                v96 = v100;
              }

              else
              {
                v97 = v98;
              }
            }

            while (v97);
LABEL_141:
            if (v96 != &v94[2 * v95] && *v96 == v93)
            {
              v103 = v96[1];
              goto LABEL_144;
            }

LABEL_143:
            v103 = 0;
LABEL_144:
            v132 = v91;
            v133 = v103;
            v104 = mlir::ShapedType::getShape(&v132);
            v131 = 4;
            if (v105 == 1 && *v104 == v131)
            {
              v123 = v3;
              v124 = mlir::DenseElementsAttr::getType(&v123);
              v125 = v106;
              ElementType = mlir::ShapedType::getElementType(&v124);
              if (mlir::Type::isUnsignedInteger(&ElementType, 64))
              {
LABEL_147:
                if (!v129)
                {
                  return 1;
                }

                v126 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
                v127 = v107;
                v131 = mlir::ElementsAttr::getType(&v126);
                v132 = mlir::TensorType::operator mlir::ShapedType(&v131);
                v133 = v108;
                v109 = mlir::ShapedType::getShape(&v132);
                ElementType = 8;
                if (v110 == 1 && *v109 == ElementType)
                {
                  v122 = v129;
                  v124 = mlir::DenseElementsAttr::getType(&v122);
                  v125 = v111;
                  v123 = mlir::ShapedType::getElementType(&v124);
                  if (mlir::Type::isUnsignedInteger(&v123, 64))
                  {
                    return 1;
                  }
                }

                v126 = "'mps.pooling_l2_norm_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                v128 = 259;
                mlir::emitError(a2, &v126, &v132);
                v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
                if (v132)
                {
                  mlir::InFlightDiagnostic::report(&v132);
                }

                if (v141 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v133);
                }

                return v16;
              }
            }

            v126 = "'mps.pooling_l2_norm_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v128 = 259;
            mlir::emitError(a2, &v126, &v132);
            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
            if (v132)
            {
              mlir::InFlightDiagnostic::report(&v132);
            }

            if (v141 == 1)
            {
              if (v140 != &v141)
              {
                free(v140);
              }

              v112 = __p;
              if (__p)
              {
                v113 = v139;
                v114 = __p;
                if (v139 != __p)
                {
                  do
                  {
                    v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
                  }

                  while (v113 != v112);
                  v114 = __p;
                }

                v139 = v112;
                operator delete(v114);
              }

              v20 = v136;
              if (!v136)
              {
                goto LABEL_170;
              }

              v115 = v137;
              v22 = v136;
              if (v137 == v136)
              {
LABEL_169:
                v137 = v20;
                operator delete(v22);
LABEL_170:
                if (v134 != &v135)
                {
                  free(v134);
                }

                return v16;
              }

              do
              {
                v117 = *--v115;
                v116 = v117;
                *v115 = 0;
                if (v117)
                {
                  MEMORY[0x259C63150](v116, 0x1000C8077774924);
                }
              }

              while (v115 != v20);
LABEL_168:
              v22 = v136;
              goto LABEL_169;
            }

            return v16;
          }
        }

        v95 = 0;
        v96 = v94;
        goto LABEL_141;
      }
    }

    v77 = 0;
    v78 = v76;
    goto LABEL_126;
  }

  v42 = *v5;
  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_76:
    v45 = 0;
    v46 = v44;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_76;
  }

LABEL_52:
  v46 = v44;
  v47 = v45;
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
LABEL_77:
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v59 = v46[1];
    v126 = v5;
    v127 = v59;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v126 = v5;
    v127 = 0;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  v60 = *v58;
  {
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    if (v63)
    {
      goto LABEL_84;
    }

LABEL_91:
    v63 = 0;
    v64 = v62;
    goto LABEL_92;
  }

  v121 = v58;
  mlir::mps::ConstantOp::verify();
  v58 = v121;
  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (!v63)
  {
    goto LABEL_91;
  }

LABEL_84:
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
LABEL_92:
  if (v64 != &v62[2 * v63] && *v64 == v61)
  {
    v70 = v64[1];
    goto LABEL_95;
  }

LABEL_94:
  v70 = 0;
LABEL_95:
  v132 = v58;
  v133 = v70;
  v71 = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v72 == 1 && *v71 == v131)
  {
    v123 = v5;
    v124 = mlir::DenseElementsAttr::getType(&v123);
    v125 = v73;
    ElementType = mlir::ShapedType::getElementType(&v124);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      goto LABEL_98;
    }
  }

  v126 = "'mps.pooling_l2_norm_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v128 = 259;
  mlir::emitError(a2, &v126, &v132);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
  if (v132)
  {
    mlir::InFlightDiagnostic::report(&v132);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v84 = __p;
    if (__p)
    {
      v85 = v139;
      v86 = __p;
      if (v139 != __p)
      {
        do
        {
          v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
        }

        while (v85 != v84);
        v86 = __p;
      }

      v139 = v84;
      operator delete(v86);
    }

    v20 = v136;
    if (!v136)
    {
      goto LABEL_170;
    }

    v87 = v137;
    v22 = v136;
    if (v137 == v136)
    {
      goto LABEL_169;
    }

    do
    {
      v89 = *--v87;
      v88 = v89;
      *v87 = 0;
      if (v89)
      {
        MEMORY[0x259C63150](v88, 0x1000C8077774924);
      }
    }

    while (v87 != v20);
    goto LABEL_168;
  }

  return v16;
}

uint64_t mlir::mps::PoolL2NormGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v56 = v6;
  if (!v6)
  {
    a3(&v59, a4);
    if (v59)
    {
      LODWORD(v57) = 3;
      *(&v57 + 1) = "expected DictionaryAttr to set properties";
      v58 = 41;
      if (v62 >= v63)
      {
        if (v61 > &v57 || v61 + 24 * v62 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v61 + 24 * v62;
      v23 = v57;
      *(v22 + 2) = v58;
      *v22 = v23;
      ++v62;
      if (v59)
      {
        mlir::InFlightDiagnostic::report(&v59);
      }
    }

    if (v70 != 1)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v68;
      v26 = __p;
      if (v68 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v68 = v24;
      operator delete(v26);
    }

    v17 = v65;
    if (!v65)
    {
      goto LABEL_77;
    }

    v27 = v66;
    v19 = v65;
    if (v66 == v65)
    {
LABEL_76:
      v66 = v17;
      operator delete(v19);
LABEL_77:
      if (v61 != &v64)
      {
        free(v61);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v56, "ceil_mode", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 54;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v61 + 24 * v62;
        v11 = v57;
        *(v10 + 2) = v58;
        *v10 = v11;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v9);
          if (v62 >= v63)
          {
            if (v61 > &v57 || v61 + 24 * v62 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v61 + 24 * v62;
          v13 = v57;
          *(v12 + 2) = v58;
          *v12 = v13;
          ++v62;
          if (v59)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }
      }

      if ((v70 & 1) == 0)
      {
        return 0;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v68;
        v16 = __p;
        if (v68 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v68 = v14;
        operator delete(v16);
      }

      v17 = v65;
      if (!v65)
      {
        goto LABEL_77;
      }

      v18 = v66;
      v19 = v65;
      if (v66 == v65)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v56, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v59, a4);
    if (v59)
    {
      LODWORD(v57) = 3;
      v58 = 59;
      if (v62 >= v63)
      {
        if (v61 > &v57 || v61 + 24 * v62 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v61 + 24 * v62;
      v37 = v57;
      *(v36 + 2) = v58;
      *v36 = v37;
      ++v62;
      if (v59)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v57, v31);
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v61 + 24 * v62;
        v39 = v57;
        *(v38 + 2) = v58;
        *v38 = v39;
        ++v62;
        if (v59)
        {
          mlir::InFlightDiagnostic::report(&v59);
        }
      }
    }

    if ((v70 & 1) == 0)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v68;
      v42 = __p;
      if (v68 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v68 = v40;
      operator delete(v42);
    }

    v17 = v65;
    if (!v65)
    {
      goto LABEL_77;
    }

    v43 = v66;
    v19 = v65;
    if (v66 == v65)
    {
      goto LABEL_76;
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

    while (v43 != v17);
LABEL_75:
    v19 = v65;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v56, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 61;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v61 + 24 * v62;
        v47 = v57;
        *(v46 + 2) = v58;
        *v46 = v47;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v33);
          if (v62 >= v63)
          {
            if (v61 > &v57 || v61 + 24 * v62 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v61 + 24 * v62;
          v49 = v57;
          *(v48 + 2) = v58;
          *v48 = v49;
          ++v62;
          if (v59)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }
      }

      if (v70 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v60);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v56, "include_zero_pad", 0x10uLL);
  *&v57 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v56, "padding_style", 0xDuLL);
    *&v57 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[4] = v50;
    }

    v51 = mlir::DictionaryAttr::get(&v56, "strides", 7uLL);
    *&v57 = v51;
    if (v51)
    {
      v52 = v51;
      if (!mlir::DenseIntElementsAttr::classof(v51))
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[5] = v52;
    }

    v53 = mlir::DictionaryAttr::get(&v56, "window_sizes", 0xCuLL);
    *&v57 = v53;
    if (v53)
    {
      v54 = v53;
      if (!mlir::DenseIntElementsAttr::classof(v53))
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[6] = v54;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v59, a4);
LABEL_101:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v57);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
  return 0;
}

uint64_t mlir::mps::PoolL2NormGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "ceil_mode", 9, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v34, "dilation_rates", 0xE, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v34, "explicit_padding", 0x10, v11);
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
    v16 = mlir::Builder::getNamedAttr(&v34, "include_zero_pad", 0x10, v15);
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
    v20 = mlir::Builder::getNamedAttr(&v34, "padding_style", 0xD, v19);
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
    v24 = mlir::Builder::getNamedAttr(&v34, "strides", 7, v23);
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
    v28 = mlir::Builder::getNamedAttr(&v34, "window_sizes", 0xC, v27);
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

unint64_t mlir::mps::PoolL2NormGradientOp::computePropertiesHash(void *a1)
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

uint64_t mlir::mps::PoolL2NormGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    switch(__n)
    {
      case 13:
        if (!memcmp(__s1, "padding_style", 0xDuLL))
        {
          return a2[4];
        }

        break;
      case 14:
        if (!memcmp(__s1, "dilation_rates", 0xEuLL))
        {
          return a2[1];
        }

        break;
      case 16:
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[2];
        }

        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          return a2[3];
        }

        break;
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 9)
  {
    if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 12 || memcmp(__s1, "window_sizes", 0xCuLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::mps::PoolL2NormGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (result)
        {
          if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
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

              v5[3] = v8;
            }

            else
            {
              v5[3] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[2] = v15;
        }

        else
        {
          v5[2] = 0;
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "strides", 7uLL);
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

            v5[5] = v9;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
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

        break;
      case 12:
        result = memcmp(__s1, "window_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            v5[6] = v14;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::PoolL2NormGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9uLL, *a2);
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
    mlir::NamedAttrList::append(a3, "include_zero_pad", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "window_sizes", 0xCuLL, v10);
  }
}

BOOL mlir::mps::PoolL2NormGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "ceil_mode", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "include_zero_pad", 16, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v12, "padding_style", 13, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v13, "strides", 7, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v14, "window_sizes", 12, a3, a4) & 1) != 0)
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

BOOL mlir::mps::PoolL2NormGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
}

uint64_t mlir::mps::PoolL2NormGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  v4 = v3[14];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::PoolL2NormGradientOp::setPaddingStyle(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::PoolL2NormGradientOp::setCeilMode(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolL2NormGradientOp::setIncludeZeroPad(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolL2NormGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a5;
  v27 = a4;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 48) = a6;
  if (a7)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 40) = a7;
  }

  if (a8)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 8) = a8;
  }

  if (a9)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 32) = a9;
  }

  if (a10)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 16) = a10;
  }

  if (a11)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *v23 = a11;
  }

  if (a12)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 24) = a12;
  }

  v25 = *(a2 + 72);
  if (v25 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v25) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolL2NormGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 48) = a5;
  if (a6)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 40) = a6;
  }

  if (a7)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 8) = a7;
  }

  if (a8)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 32) = a8;
  }

  if (a9)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 16) = a9;
  }

  if (a10)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *v21 = a10;
  }

  if (a11)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 24) = a11;
  }

  __src = v34;
  v33 = 0x200000000;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v24 = mlir::RegionRange::RegionRange(&v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v24, v25, v31[0], v31[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = v33;
  v27 = *(a2 + 72);
  if (v27 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v27), __src, 8 * v33);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + v26;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolL2NormGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a6;
  v30 = a5;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v29, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = a7;
  if (a8)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 40) = a8;
  }

  if (a9)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a9;
  }

  if (a10)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 32) = a10;
  }

  if (a11)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 16) = a11;
  }

  if (a12)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *v24 = a12;
  }

  if (a13)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 24) = a13;
  }

  v26 = *(a2 + 72);
  if (a4 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v27 = 0;
    v28 = *(a2 + 64) + 8 * v26;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v27);
      *(v28 + 8 * v27++) = result;
    }

    while (a4 != v27);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + a4;
  return result;
}

uint64_t mlir::mps::PoolL2NormGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, char a11, char a12)
{
  v32 = a5;
  v33 = a4;
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 48) = a6;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 40) = a7;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 8) = a8;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v34[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v34[1] = v21;
  v38[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38[1] = v34;
  v37 = a9;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v24 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v23 >> 47) ^ v23);
  v35[0] = &v37;
  v35[1] = v38;
  v36 = &v37;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v24 >> 47) ^ v24), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v35);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 32) = result;
  if (a10)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 16) = a10;
  }

  if (a11)
  {
    result = mlir::Builder::getUnitAttr(a1, v26);
    v30 = *(a2 + 256);
    if (!v30)
    {
      operator new();
    }

    *v30 = result;
    if (!a12)
    {
LABEL_15:
      v29 = *(a2 + 72);
      if (v29 >= *(a2 + 76))
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else if (!a12)
  {
    goto LABEL_15;
  }

  result = mlir::Builder::getUnitAttr(a1, v26);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 24) = result;
  v29 = *(a2 + 72);
  if (v29 >= *(a2 + 76))
  {
LABEL_16:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_17:
  *(*(a2 + 64) + 8 * v29) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolL2NormGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, char a10, char a11)
{
  v47 = *MEMORY[0x277D85DE8];
  v37 = a4;
  v38 = a3;
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 48) = a5;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 40) = a6;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a7;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v44[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v44[1] = v20;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v42 = v44;
  v40 = a8;
  v22 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v22);
  v39 = &v40;
  v45 = &v40;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v23 >> 47) ^ v23))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v45);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 32) = ParametricStorageTypeImpl;
  if (a9)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 16) = a9;
  }

  if (a10)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *v29 = UnitAttr;
  }

  if (a11)
  {
    v30 = mlir::Builder::getUnitAttr(a1, v24);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = v30;
  }

  __src = v43;
  v42 = 0x200000000;
  mlir::ValueRange::ValueRange(&v45, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = mlir::RegionRange::RegionRange(v44, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v33, v34, v45, p_src, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v35 = v42;
  v36 = *(a2 + 72);
  if (v36 + v42 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v42)
  {
    memcpy((*(a2 + 64) + 8 * v36), __src, 8 * v42);
    LODWORD(v36) = *(a2 + 72);
  }

  *(a2 + 72) = v36 + v35;
  if (__src != v43)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolL2NormGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, char a12, char a13)
{
  v35 = a6;
  v36 = a5;
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = a7;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 40) = a8;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a9;
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v37[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v37[1] = v22;
  v41[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v41[1] = v37;
  v40 = a10;
  v24 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v25 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v24 >> 47) ^ v24);
  v38[0] = &v40;
  v38[1] = v41;
  v39 = &v40;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v25 >> 47) ^ v25), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v38);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 32) = result;
  if (a11)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 16) = a11;
  }

  if (a12)
  {
    result = mlir::Builder::getUnitAttr(a1, v27);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *v31 = result;
    if (!a13)
    {
LABEL_15:
      v30 = *(a2 + 72);
      if (a4 + v30 <= *(a2 + 76))
      {
        goto LABEL_16;
      }

LABEL_26:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else if (!a13)
  {
    goto LABEL_15;
  }

  result = mlir::Builder::getUnitAttr(a1, v27);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 24) = result;
  v30 = *(a2 + 72);
  if (a4 + v30 > *(a2 + 76))
  {
    goto LABEL_26;
  }

LABEL_16:
  if (a4)
  {
    v33 = 0;
    v34 = *(a2 + 64) + 8 * v30;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v33);
      *(v34 + 8 * v33++) = result;
    }

    while (a4 != v33);
    LODWORD(v30) = *(a2 + 72);
  }

  *(a2 + 72) = v30 + a4;
  return result;
}

uint64_t mlir::mps::PoolL2NormGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PoolL2NormGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  v18 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v18, v19, a3, a4, &__src) & 1) == 0)
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

mlir::MLIRContext *mlir::mps::PoolL2NormGradientOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  *&v14 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v14);
  v10 = result;
  if (a2[5])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16[0] = 4;
    IntegerType = mlir::Builder::getIntegerType(&v10, 64, 0);
    v11[0] = mlir::RankedTensorType::get(v16, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(v11);
    v14 = xmmword_25737C738;
    v15 = unk_25737C748;
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v5);
    a2[5] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[4])
      {
        return result;
      }

LABEL_7:
      v8 = v10;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v10);
      v16[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
      v16[1] = v8;
      *&v14 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      *(&v14 + 1) = v16;
      v13 = 2;
      v11[0] = &v13;
      v11[1] = &v14;
      v12 = &v13;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
      a2[4] = result;
      return result;
    }
  }

  v16[0] = 4;
  v6 = mlir::Builder::getIntegerType(&v10, 64, 0);
  v11[0] = mlir::RankedTensorType::get(v16, 1, v6, 0);
  v7 = mlir::TensorType::operator mlir::ShapedType(v11);
  v14 = xmmword_25737C738;
  v15 = unk_25737C748;
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v7);
  a2[1] = result;
  if (!a2[4])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::PoolL2NormGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v4 = v3[14];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v10 = v3[13];
    v25[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) != 0 && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v10, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v9, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "include_zero_pad", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v11 = *this - 16;
      }

      else
      {
        v11 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = "requires attribute 'window_sizes'";
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

uint64_t mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::PoolL2NormOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::PoolL2NormOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v56 = v6;
  if (!v6)
  {
    a3(&v59, a4);
    if (v59)
    {
      LODWORD(v57) = 3;
      *(&v57 + 1) = "expected DictionaryAttr to set properties";
      v58 = 41;
      if (v62 >= v63)
      {
        if (v61 > &v57 || v61 + 24 * v62 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v61 + 24 * v62;
      v23 = v57;
      *(v22 + 2) = v58;
      *v22 = v23;
      ++v62;
      if (v59)
      {
        mlir::InFlightDiagnostic::report(&v59);
      }
    }

    if (v70 != 1)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v68;
      v26 = __p;
      if (v68 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v68 = v24;
      operator delete(v26);
    }

    v17 = v65;
    if (!v65)
    {
      goto LABEL_77;
    }

    v27 = v66;
    v19 = v65;
    if (v66 == v65)
    {
LABEL_76:
      v66 = v17;
      operator delete(v19);
LABEL_77:
      if (v61 != &v64)
      {
        free(v61);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v56, "ceil_mode", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 54;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v61 + 24 * v62;
        v11 = v57;
        *(v10 + 2) = v58;
        *v10 = v11;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v9);
          if (v62 >= v63)
          {
            if (v61 > &v57 || v61 + 24 * v62 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v61 + 24 * v62;
          v13 = v57;
          *(v12 + 2) = v58;
          *v12 = v13;
          ++v62;
          if (v59)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }
      }

      if ((v70 & 1) == 0)
      {
        return 0;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v68;
        v16 = __p;
        if (v68 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v68 = v14;
        operator delete(v16);
      }

      v17 = v65;
      if (!v65)
      {
        goto LABEL_77;
      }

      v18 = v66;
      v19 = v65;
      if (v66 == v65)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v56, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v59, a4);
    if (v59)
    {
      LODWORD(v57) = 3;
      v58 = 59;
      if (v62 >= v63)
      {
        if (v61 > &v57 || v61 + 24 * v62 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v61 + 24 * v62;
      v37 = v57;
      *(v36 + 2) = v58;
      *v36 = v37;
      ++v62;
      if (v59)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v57, v31);
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v61 + 24 * v62;
        v39 = v57;
        *(v38 + 2) = v58;
        *v38 = v39;
        ++v62;
        if (v59)
        {
          mlir::InFlightDiagnostic::report(&v59);
        }
      }
    }

    if ((v70 & 1) == 0)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v68;
      v42 = __p;
      if (v68 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v68 = v40;
      operator delete(v42);
    }

    v17 = v65;
    if (!v65)
    {
      goto LABEL_77;
    }

    v43 = v66;
    v19 = v65;
    if (v66 == v65)
    {
      goto LABEL_76;
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

    while (v43 != v17);
LABEL_75:
    v19 = v65;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v56, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 61;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v61 + 24 * v62;
        v47 = v57;
        *(v46 + 2) = v58;
        *v46 = v47;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v33);
          if (v62 >= v63)
          {
            if (v61 > &v57 || v61 + 24 * v62 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v61 + 24 * v62;
          v49 = v57;
          *(v48 + 2) = v58;
          *v48 = v49;
          ++v62;
          if (v59)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }
      }

      if (v70 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v60);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v56, "include_zero_pad", 0x10uLL);
  *&v57 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v56, "padding_style", 0xDuLL);
    *&v57 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[4] = v50;
    }

    v51 = mlir::DictionaryAttr::get(&v56, "strides", 7uLL);
    *&v57 = v51;
    if (v51)
    {
      v52 = v51;
      if (!mlir::DenseIntElementsAttr::classof(v51))
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[5] = v52;
    }

    v53 = mlir::DictionaryAttr::get(&v56, "window_sizes", 0xCuLL);
    *&v57 = v53;
    if (v53)
    {
      v54 = v53;
      if (!mlir::DenseIntElementsAttr::classof(v53))
      {
        a3(&v59, a4);
        goto LABEL_101;
      }

      a1[6] = v54;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v59, a4);
LABEL_101:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v57);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
  return 0;
}

uint64_t mlir::mps::PoolL2NormOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "ceil_mode", 9, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v34, "dilation_rates", 0xE, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v34, "explicit_padding", 0x10, v11);
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
    v16 = mlir::Builder::getNamedAttr(&v34, "include_zero_pad", 0x10, v15);
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
    v20 = mlir::Builder::getNamedAttr(&v34, "padding_style", 0xD, v19);
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
    v24 = mlir::Builder::getNamedAttr(&v34, "strides", 7, v23);
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
    v28 = mlir::Builder::getNamedAttr(&v34, "window_sizes", 0xC, v27);
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

unint64_t mlir::mps::PoolL2NormOp::computePropertiesHash(void *a1)
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

uint64_t mlir::mps::PoolL2NormOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    switch(__n)
    {
      case 13:
        if (!memcmp(__s1, "padding_style", 0xDuLL))
        {
          return a2[4];
        }

        break;
      case 14:
        if (!memcmp(__s1, "dilation_rates", 0xEuLL))
        {
          return a2[1];
        }

        break;
      case 16:
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[2];
        }

        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          return a2[3];
        }

        break;
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 9)
  {
    if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 12 || memcmp(__s1, "window_sizes", 0xCuLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::mps::PoolL2NormOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (result)
        {
          if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
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

              v5[3] = v8;
            }

            else
            {
              v5[3] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[2] = v15;
        }

        else
        {
          v5[2] = 0;
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "strides", 7uLL);
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

            v5[5] = v9;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
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

        break;
      case 12:
        result = memcmp(__s1, "window_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            v5[6] = v14;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::PoolL2NormOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9uLL, *a2);
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
    mlir::NamedAttrList::append(a3, "include_zero_pad", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "window_sizes", 0xCuLL, v10);
  }
}

BOOL mlir::mps::PoolL2NormOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "ceil_mode", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "include_zero_pad", 16, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v12, "padding_style", 13, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v13, "strides", 7, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v14, "window_sizes", 12, a3, a4) & 1) != 0)
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

BOOL mlir::mps::PoolL2NormOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
}

uint64_t mlir::mps::PoolL2NormOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  v4 = v3[14];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::PoolL2NormOp::setPaddingStyle(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::PoolL2NormOp::setCeilMode(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolL2NormOp::setIncludeZeroPad(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolL2NormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a4;
  result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 48) = a5;
  if (a6)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 40) = a6;
  }

  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 8) = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 32) = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 16) = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *v23 = a10;
  }

  if (a11)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 24) = a11;
  }

  v25 = *(a2 + 72);
  if (v25 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v25) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolL2NormOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v32 = a3;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 48) = a4;
  if (a5)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 40) = a5;
  }

  if (a6)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 8) = a6;
  }

  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 32) = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 16) = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *v22 = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 24) = a10;
  }

  __src = v37;
  v36 = 0x200000000;
  v24 = *a1;
  v25 = *a2;
  mlir::ValueRange::ValueRange(v34, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v28 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v33, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolL2NormOp::inferReturnTypes(v24, v25, 1, v34[0], v34[1], Dictionary, v28, v29, v33, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v30 = v36;
  v31 = *(a2 + 72);
  if (v31 + v36 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v36)
  {
    memcpy((*(a2 + 64) + 8 * v31), __src, 8 * v36);
    LODWORD(v31) = *(a2 + 72);
  }

  *(a2 + 72) = v31 + v30;
  if (__src != v37)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolL2NormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a5;
  result = mlir::OperationState::addOperands(a2, &v29, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = a6;
  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 40) = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 32) = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 16) = a10;
  }

  if (a11)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *v24 = a11;
  }

  if (a12)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 24) = a12;
  }

  v26 = *(a2 + 72);
  if (a4 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v27 = 0;
    v28 = *(a2 + 64) + 8 * v26;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v27);
      *(v28 + 8 * v27++) = result;
    }

    while (a4 != v27);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + a4;
  return result;
}

uint64_t mlir::mps::PoolL2NormOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, char a10, char a11)
{
  v32 = a4;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 48) = a5;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 40) = a6;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 8) = a7;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v33[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v33[1] = v21;
  v37[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v37[1] = v33;
  v36 = a8;
  v23 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v24 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v23);
  v34[0] = &v36;
  v34[1] = v37;
  v35 = &v36;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 32) >> 15) ^ (-348639895 * (v23 ^ (v24 >> 47) ^ v24))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v35, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v34);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 32) = result;
  if (a9)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 16) = a9;
  }

  if (a10)
  {
    result = mlir::Builder::getUnitAttr(a1, v26);
    v30 = *(a2 + 256);
    if (!v30)
    {
      operator new();
    }

    *v30 = result;
    if (!a11)
    {
LABEL_15:
      v29 = *(a2 + 72);
      if (v29 >= *(a2 + 76))
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else if (!a11)
  {
    goto LABEL_15;
  }

  result = mlir::Builder::getUnitAttr(a1, v26);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 24) = result;
  v29 = *(a2 + 72);
  if (v29 >= *(a2 + 76))
  {
LABEL_16:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_17:
  *(*(a2 + 64) + 8 * v29) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolL2NormOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, char a9, char a10)
{
  v49 = *MEMORY[0x277D85DE8];
  v40 = a3;
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 48) = a4;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 40) = a5;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a6;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v46 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  *(&v46 + 1) = v20;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v44 = &v46;
  v42 = a7;
  v22 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v22);
  v41 = &v42;
  v47 = &v42;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v23 >> 47) ^ v23))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v47);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 32) = ParametricStorageTypeImpl;
  if (a8)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 16) = a8;
  }

  if (a9)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *v29 = UnitAttr;
  }

  if (a10)
  {
    v30 = mlir::Builder::getUnitAttr(a1, v24);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = v30;
  }

  __src = v45;
  v44 = 0x200000000;
  v32 = *a1;
  v33 = *a2;
  mlir::ValueRange::ValueRange(&v47, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v36 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v46, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolL2NormOp::inferReturnTypes(v32, v33, 1, v47, p_src, Dictionary, v36, v37, v46, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v38 = v44;
  v39 = *(a2 + 72);
  if (v39 + v44 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v44)
  {
    memcpy((*(a2 + 64) + 8 * v39), __src, 8 * v44);
    LODWORD(v39) = *(a2 + 72);
  }

  *(a2 + 72) = v39 + v38;
  if (__src != v45)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolL2NormOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, char a11, char a12)
{
  v35 = a5;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = a6;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 40) = a7;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a8;
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v36[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v36[1] = v22;
  v40[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v40[1] = v36;
  v39 = a9;
  v24 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v25 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v24 >> 47) ^ v24);
  v37[0] = &v39;
  v37[1] = v40;
  v38 = &v39;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v25 >> 47) ^ v25), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v38, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v37);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 32) = result;
  if (a10)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 16) = a10;
  }

  if (a11)
  {
    result = mlir::Builder::getUnitAttr(a1, v27);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *v31 = result;
    if (!a12)
    {
LABEL_15:
      v30 = *(a2 + 72);
      if (a4 + v30 <= *(a2 + 76))
      {
        goto LABEL_16;
      }

LABEL_26:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else if (!a12)
  {
    goto LABEL_15;
  }

  result = mlir::Builder::getUnitAttr(a1, v27);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 24) = result;
  v30 = *(a2 + 72);
  if (a4 + v30 > *(a2 + 76))
  {
    goto LABEL_26;
  }

LABEL_16:
  if (a4)
  {
    v33 = 0;
    v34 = *(a2 + 64) + 8 * v30;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v33);
      *(v34 + 8 * v33++) = result;
    }

    while (a4 != v33);
    LODWORD(v30) = *(a2 + 72);
  }

  *(a2 + 72) = v30 + a4;
  return result;
}

uint64_t mlir::mps::PoolL2NormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PoolL2NormOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
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

  __src = v29;
  v28 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  v20 = mlir::Attribute::getContext(a2);
  v21 = mlir::NamedAttrList::getDictionary((a2 + 112), v20);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolL2NormOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v28;
  v25 = *(a2 + 72);
  if (v25 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v28);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v29)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::PoolL2NormOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  *&v14 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v14);
  v10 = result;
  if (a2[5])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16[0] = 4;
    IntegerType = mlir::Builder::getIntegerType(&v10, 64, 0);
    v11[0] = mlir::RankedTensorType::get(v16, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(v11);
    v14 = xmmword_25737C738;
    v15 = unk_25737C748;
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v5);
    a2[5] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[4])
      {
        return result;
      }

LABEL_7:
      v8 = v10;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v10);
      v16[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
      v16[1] = v8;
      *&v14 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      *(&v14 + 1) = v16;
      v13 = 2;
      v11[0] = &v13;
      v11[1] = &v14;
      v12 = &v13;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
      a2[4] = result;
      return result;
    }
  }

  v16[0] = 4;
  v6 = mlir::Builder::getIntegerType(&v10, 64, 0);
  v11[0] = mlir::RankedTensorType::get(v16, 1, v6, 0);
  v7 = mlir::TensorType::operator mlir::ShapedType(v11);
  v14 = xmmword_25737C738;
  v15 = unk_25737C748;
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v7);
  a2[1] = result;
  if (!a2[4])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::PoolL2NormOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v4 = v3[14];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v10 = v3[13];
    v25[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) != 0 && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v10, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v9, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "include_zero_pad", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v11 = *this - 16;
      }

      else
      {
        v11 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = "requires attribute 'window_sizes'";
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

uint64_t mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::PoolMaxGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 96);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 112);
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

  v10 = (this + 4 * v3 + 96);
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