uint64_t llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(mlir::ArrayAttr *a1)
{
  Value = mlir::ArrayAttr::getValue(a1);
  v3 = mlir::ArrayAttr::getValue(a1);
  v5 = v3 + 8 * v4;
  if (v5 == Value)
  {
    return 1;
  }

  while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    Value += 8;
    if (Value == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v27 = v66;
    v19 = v65;
    if (v66 == v65)
    {
LABEL_69:
      v66 = v17;
      operator delete(v19);
LABEL_70:
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
LABEL_68:
    v19 = v65;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v56, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
        goto LABEL_70;
      }

      v18 = v66;
      v19 = v65;
      if (v66 == v65)
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

  v30 = mlir::DictionaryAttr::get(&v56, "externAttr", 0xAuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
    {
      v31 = v30;
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 55;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v61 + 24 * v62;
        v33 = v57;
        *(v32 + 2) = v58;
        *v32 = v33;
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

          v34 = v61 + 24 * v62;
          v35 = v57;
          *(v34 + 2) = v58;
          *v34 = v35;
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

      v36 = __p;
      if (__p)
      {
        v37 = v68;
        v38 = __p;
        if (v68 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v68 = v36;
        operator delete(v38);
      }

      v17 = v65;
      if (!v65)
      {
        goto LABEL_70;
      }

      v39 = v66;
      v19 = v65;
      if (v66 == v65)
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

  v42 = mlir::DictionaryAttr::get(&v56, "function_type", 0xDuLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v43 = v42;
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 58;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v61 + 24 * v62;
        v45 = v57;
        *(v44 + 2) = v58;
        *v44 = v45;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v43);
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

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v56, "no_inline", 9uLL);
  *&v57 = v48;
  if (v48)
  {
    if (*(*v48 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v59, a4);
LABEL_95:
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v59, v49);
      goto LABEL_96;
    }

    a1[3] = v48;
  }

  v50 = mlir::DictionaryAttr::get(&v56, "param_decls", 0xBuLL);
  *&v57 = v50;
  if (!v50)
  {
LABEL_92:
    v52 = mlir::DictionaryAttr::get(&v56, "res_attrs", 9uLL);
    *&v57 = v52;
    if (v52)
    {
      if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_95;
      }

      a1[5] = v52;
    }

    v54 = mlir::DictionaryAttr::get(&v56, "safeTransforms", 0xEuLL);
    *&v57 = v54;
    if (v54)
    {
      if (*(*v54 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_96;
      }

      a1[6] = v54;
    }

    v55 = mlir::DictionaryAttr::get(&v56, "sym_name", 8uLL);
    *&v57 = v55;
    if (v55)
    {
      if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_96;
      }

      a1[7] = v55;
    }

    return 1;
  }

  if (*(*v50 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    a1[4] = v50;
    goto LABEL_92;
  }

  a3(&v59, a4);
LABEL_96:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v51, &v57);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v41[6] = *MEMORY[0x277D85DE8];
  v38 = a1;
  v39 = v41;
  v40 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v38, "arg_attrs", 9, *a2);
  if (v40 >= HIDWORD(v40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v39 + 16 * v40);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v40 + 1;
  LODWORD(v40) = v40 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v38, "externAttr", 0xA, v7);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v39 + 16 * v40);
    *v10 = v8;
    v10[1] = v9;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v38, "function_type", 0xD, v11);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v39 + 16 * v40);
    *v14 = v12;
    v14[1] = v13;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v38, "no_inline", 9, v15);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v39 + 16 * v40);
    *v18 = v16;
    v18[1] = v17;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v38, "param_decls", 0xB, v19);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v39 + 16 * v40);
    *v22 = v20;
    v22[1] = v21;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v38, "res_attrs", 9, v23);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v39 + 16 * v40);
    *v26 = v24;
    v26[1] = v25;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v27 = a2[6];
  if (v27)
  {
    v28 = mlir::Builder::getNamedAttr(&v38, "safeTransforms", 0xE, v27);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = (v39 + 16 * v40);
    *v30 = v28;
    v30[1] = v29;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v31 = a2[7];
  if (v31)
  {
    v32 = mlir::Builder::getNamedAttr(&v38, "sym_name", 8, v31);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v34 = (v39 + 16 * v40);
    *v34 = v32;
    v34[1] = v33;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v35 = v39;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v39 == v41)
    {
      return DictionaryAttr;
    }

    goto LABEL_28;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v38, v39, v6);
  v35 = v39;
  if (v39 != v41)
  {
LABEL_28:
    free(v35);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::FuncOp::computePropertiesHash(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v28 = v9;
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v26 = v14;
  v17 = HIDWORD(a1[6]);
  v18 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v17);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v20 = HIDWORD(a1[7]);
  v21 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v20);
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v24 = v19;
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  v32 = 0;
  v33 = 0xFF51AFD7ED558CCDLL;
  v29[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v29[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v29, 0, v30, v31, &v28, &v27, &v26, &v25, &v24, &v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "param_decls", 0xBuLL))
      {
        return a2[4];
      }
    }

    else if (__n == 13)
    {
      if (!memcmp(__s1, "function_type", 0xDuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 14 && !memcmp(__s1, "safeTransforms", 0xEuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[7];
    }

    return 0;
  }

  if (__n == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      return *a2;
    }

    if (!memcmp(__s1, "no_inline", 9uLL))
    {
      return a2[3];
    }

    if (!memcmp(__s1, "res_attrs", 9uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 10 || memcmp(__s1, "externAttr", 0xAuLL))
  {
    return 0;
  }

  return a2[1];
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 10)
  {
    switch(a3)
    {
      case 11:
        result = memcmp(__s1, "param_decls", 0xBuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[4] = v8;
          }

          else
          {
            v5[4] = 0;
          }
        }

        break;
      case 13:
        result = memcmp(__s1, "function_type", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

        break;
      case 14:
        result = memcmp(__s1, "safeTransforms", 0xEuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
            {
              v6 = a4;
            }

            else
            {
              v6 = 0;
            }

            v5[6] = v6;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 8:
        result = memcmp(__s1, "sym_name", 8uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }

            v5[7] = v7;
          }

          else
          {
            v5[7] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            *result = v14;
          }

          else
          {
            *result = 0;
          }
        }

        else
        {
          result = memcmp(__s1, "no_inline", 9uLL);
          if (result)
          {
            result = memcmp(__s1, "res_attrs", 9uLL);
            if (!result)
            {
              if (a4)
              {
                if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            v5[3] = v15;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 10:
        result = memcmp(__s1, "externAttr", 0xAuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
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
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "arg_attrs", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "externAttr", 0xAuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "function_type", 0xDuLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "no_inline", 9uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "param_decls", 0xBuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "res_attrs", 9uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "safeTransforms", 0xEuLL, v10);
  }

  v11 = a2[7];
  if (v11)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(v9, "externAttr", 10, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v10, "function_type", 13, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "no_inline", 9, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v12, "param_decls", 11, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v13, "res_attrs", 9, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v14, "safeTransforms", 14, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v15, "sym_name", 8, a3, a4) & 1) != 0)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v30 = a1;
    v20 = a4;
    v21 = a5;
    Value = mlir::ArrayAttr::getValue(&v30);
    v23 = mlir::ArrayAttr::getValue(&v30);
    v25 = v23 + 8 * v24;
    if (v25 != Value)
    {
      a5 = v21;
      a4 = v20;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
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
  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v27) = 3;
    *(&v27 + 1) = "attribute '";
    v28 = 11;
    if (v33 >= v34)
    {
      if (v32 > &v27 || v32 + 24 * v33 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v32 + 24 * v33;
    v8 = v27;
    *(v7 + 2) = v28;
    *v7 = v8;
    ++v33;
    if (v30)
    {
      v29 = 261;
      *&v27 = a2;
      *(&v27 + 1) = a3;
      mlir::Diagnostic::operator<<(&v31, &v27);
      if (v30)
      {
        LODWORD(v27) = 3;
        *(&v27 + 1) = "' failed to satisfy constraint: Array of dictionary attributes";
        v28 = 62;
        if (v33 >= v34)
        {
          if (v32 > &v27 || v32 + 24 * v33 <= &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v32 + 24 * v33;
        v10 = v27;
        *(v9 + 2) = v28;
        *v9 = v10;
        ++v33;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v39;
      v14 = __p;
      if (v39 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v39 = v12;
      operator delete(v14);
    }

    v15 = v36;
    if (v36)
    {
      v16 = v37;
      v17 = v36;
      if (v37 != v36)
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
        v17 = v36;
      }

      v37 = v15;
      operator delete(v17);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: ";
        v22 = 32;
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

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v29 = a1;
    v8 = a4;
    v9 = a5;
    Value = mlir::TypeAttr::getValue(&v29);
    a5 = v9;
    a4 = v8;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      *&v26 = a1;
      v11 = mlir::TypeAttr::getValue(&v26);
      a5 = v9;
      a4 = v8;
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
      {
        return 1;
      }
    }
  }

  a4(&v29, a5);
  if (v29)
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "attribute '";
    v27 = 11;
    if (v32 >= v33)
    {
      if (v31 > &v26 || v31 + 24 * v32 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v31 + 24 * v32;
    v13 = v26;
    *(v12 + 2) = v27;
    *v12 = v13;
    ++v32;
    if (v29)
    {
      v28 = 261;
      *&v26 = a2;
      *(&v26 + 1) = a3;
      mlir::Diagnostic::operator<<(&v30, &v26);
      if (v29)
      {
        LODWORD(v26) = 3;
        *(&v26 + 1) = "' failed to satisfy constraint: type attribute of function type";
        v27 = 63;
        if (v32 >= v33)
        {
          if (v31 > &v26 || v31 + 24 * v32 <= &v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v31 + 24 * v32;
        v15 = v26;
        *(v14 + 2) = v27;
        *v14 = v15;
        ++v32;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
  if (v29)
  {
    mlir::InFlightDiagnostic::report(&v29);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
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
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: unit attribute";
        v22 = 46;
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

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: dictionary of named attribute values";
        v22 = 68;
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

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ExternAttr>(a1, v3 + 1) && (mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 2) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && (mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v3 + 4) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DictionaryAttr>(a1, v3 + 6))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 7) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ExternAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ExternAttr]";
  *(&v28 + 1) = 90;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DictionaryAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DictionaryAttr]";
  *(&v28 + 1) = 70;
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

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setSymName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 120) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setFunctionType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setNoInline(uint64_t this, int a2)
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

void mlir::ODIE::Compiler::CoreML::FuncOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 56) = a3;
  v11 = *(a2 + 32);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 16) = a4;
  v12 = *(a2 + 32);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 32) = a5;
  if (a6)
  {
    v15 = *(a2 + 32);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 24) = a6;
    if (!a7)
    {
LABEL_6:
      v13 = a9;
      if (!a8)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if (!a7)
  {
    goto LABEL_6;
  }

  v16 = *(a2 + 32);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a7;
  v13 = a9;
  if (!a8)
  {
LABEL_7:
    v14 = a10;
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_19:
  v17 = *(a2 + 32);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 48) = a8;
  v14 = a10;
  if (!v13)
  {
LABEL_8:
    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_22:
  v18 = *(a2 + 32);
  if (!v18)
  {
    operator new();
  }

  *v18 = v13;
  if (!v14)
  {
LABEL_28:
    mlir::OperationState::addRegion(a2);
  }

LABEL_25:
  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 40) = v14;
  goto LABEL_28;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *(a2 + 32);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 56) = a5;
  v13 = *(a2 + 32);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 16) = a6;
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 32) = a7;
  if (a8)
  {
    v18 = *(a2 + 32);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 24) = a8;
    v15 = a10;
    if (!a9)
    {
LABEL_6:
      v16 = a11;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v15 = a10;
    if (!a9)
    {
      goto LABEL_6;
    }
  }

  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a9;
  v16 = a11;
  if (!v15)
  {
LABEL_7:
    v17 = a12;
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_19:
  v20 = *(a2 + 32);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 48) = v15;
  v17 = a12;
  if (!v16)
  {
LABEL_8:
    if (!v17)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_22:
  v21 = *(a2 + 32);
  if (!v21)
  {
    operator new();
  }

  *v21 = v16;
  if (!v17)
  {
LABEL_9:
    mlir::OperationState::addRegion(a2);
  }

LABEL_25:
  v22 = *(a2 + 32);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 40) = v17;
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::FuncOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v35 = 261;
  v34[0] = a5;
  v34[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v34, a3);
  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 56) = StringAttr;
  v20 = mlir::TypeAttr::get(a7);
  v21 = *(a2 + 32);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = v20;
  v22 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a9, a10);
  v24 = *(a2 + 32);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 32) = v22;
  if (a11)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v23);
    v29 = *(a2 + 32);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 24) = UnitAttr;
    v25 = a13;
    if (!a12)
    {
LABEL_8:
      v26 = a14;
      if (!v25)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v25 = a13;
    if (!a12)
    {
      goto LABEL_8;
    }
  }

  v30 = *(a2 + 32);
  if (!v30)
  {
    operator new();
  }

  *(v30 + 8) = a12;
  v26 = a14;
  if (!v25)
  {
LABEL_9:
    v27 = a15;
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_19:
  v31 = *(a2 + 32);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 48) = v25;
  v27 = a15;
  if (!v26)
  {
LABEL_10:
    if (!v27)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_22:
  v32 = *(a2 + 32);
  if (!v32)
  {
    operator new();
  }

  *v32 = v26;
  if (!v27)
  {
LABEL_11:
    mlir::OperationState::addRegion(a2);
  }

LABEL_25:
  v33 = *(a2 + 32);
  if (!v33)
  {
    operator new();
  }

  *(v33 + 40) = v27;
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::FuncOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a8 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v11), a7, 16 * a8);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a8;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v46 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  v5 = v2[2];
  if (v5)
  {
    v6 = v2[4];
    if (v6)
    {
      v7 = v2[7];
      if (v7)
      {
        v9 = v2[1];
        v10 = v2[3];
        v11 = v2[5];
        v12 = v2[6];
        v37[0] = *this;
        if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37) & 1) != 0 && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v5, "function_type", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v6, "param_decls", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v10, "no_inline", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(v9, "externAttr", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v12, "safeTransforms", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v3, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v11, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)))
        {
          return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0) & 1;
        }

        else
        {
          return 0;
        }
      }

      v35[0] = "requires attribute 'sym_name'";
      v36 = 259;
      mlir::OpState::emitOpError(this, v35, v37);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
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

        v28 = __p;
        if (__p)
        {
          v29 = v43;
          v30 = __p;
          if (v43 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v43 = v28;
          operator delete(v30);
        }

        v17 = v40;
        if (!v40)
        {
          goto LABEL_64;
        }

        v31 = v41;
        v19 = v40;
        if (v41 == v40)
        {
LABEL_63:
          v41 = v17;
          operator delete(v19);
LABEL_64:
          if (v38 != &v39)
          {
            free(v38);
          }

          return v13;
        }

        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v17);
LABEL_62:
        v19 = v40;
        goto LABEL_63;
      }
    }

    else
    {
      v35[0] = "requires attribute 'param_decls'";
      v36 = 259;
      mlir::OpState::emitOpError(this, v35, v37);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
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

        v22 = __p;
        if (__p)
        {
          v23 = v43;
          v24 = __p;
          if (v43 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v43 = v22;
          operator delete(v24);
        }

        v17 = v40;
        if (!v40)
        {
          goto LABEL_64;
        }

        v25 = v41;
        v19 = v40;
        if (v41 == v40)
        {
          goto LABEL_63;
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

        while (v25 != v17);
        goto LABEL_62;
      }
    }
  }

  else
  {
    v35[0] = "requires attribute 'function_type'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
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

      v14 = __p;
      if (__p)
      {
        v15 = v43;
        v16 = __p;
        if (v43 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v43 = v14;
        operator delete(v16);
      }

      v17 = v40;
      if (!v40)
      {
        goto LABEL_64;
      }

      v18 = v41;
      v19 = v40;
      if (v41 == v40)
      {
        goto LABEL_63;
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
      goto LABEL_62;
    }
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps2(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 8);
  if (v5 == a2 || *(v5 + 8) == a2)
  {
    return 1;
  }

  v28 = "region #";
  v29 = 259;
  mlir::Operation::emitOpError(&v32, a1, &v28);
  if (v32)
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = a5;
    if (v35 >= v36)
    {
      if (v34 > &v25 || v34 + 24 * v35 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v34 + 24 * v35;
    v10 = v25;
    *(v9 + 2) = v26;
    *v9 = v10;
    ++v35;
  }

  if (a4)
  {
    v24 = 1283;
    v23[0] = " ('";
    v23[2] = a3;
    v23[3] = a4;
    *&v25 = v23;
    v26 = "') ";
    v27 = 770;
    if (!v32)
    {
      goto LABEL_14;
    }

LABEL_11:
    mlir::Diagnostic::operator<<(&v33, &v25);
    if (v32)
    {
      LODWORD(v30) = 3;
      *(&v30 + 1) = "failed to verify constraint: region with at most 1 blocks";
      v31 = 57;
      if (v35 >= v36)
      {
        if (v34 > &v30 || v34 + 24 * v35 <= &v30)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v34 + 24 * v35;
      v13 = v30;
      *(v12 + 2) = v31;
      *v12 = v13;
      ++v35;
    }

    goto LABEL_14;
  }

  *&v25 = " ";
  v27 = 259;
  if (v32)
  {
    goto LABEL_11;
  }

LABEL_14:
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v41;
      v16 = __p;
      if (v41 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v41 = v14;
      operator delete(v16);
    }

    v17 = v38;
    if (v38)
    {
      v18 = v39;
      v19 = v38;
      if (v39 != v38)
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
        v19 = v38;
      }

      v39 = v17;
      operator delete(v19);
    }

    if (v34 != &v37)
    {
      free(v34);
    }
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::GELUOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "approximate", 0xBuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 56;
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

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "approximate", 0xB, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6D69786F72707061 ? (v4 = *(a3 + 3) == 0x6574616D69786F72) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::GELUOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x6D69786F72707061 && *(a2 + 3) == 0x6574616D69786F72)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "approximate", 0xBuLL, *a2);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: The gelu approximation algorithm to use: 'none' | 'tanh' | 'sigmoid'";
        v22 = 100;
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

BOOL mlir::ODIE::Compiler::CoreML::GELUOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ApproximateAttr]";
  *(&v28 + 1) = 95;
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

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::setApproximate(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  if (a5)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = a5;
  }

  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  if (a6)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = a6;
  }

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

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v12 = a4;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(*a1, a5);
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

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(*a1, a6);
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

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

mlir::MLIRContext *mlir::ODIE::Compiler::CoreML::GELUOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GELUOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v30 = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(v3, "approximate", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v30) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v27 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30 = mlir::Type::cast<mlir::ShapedType>(&v27);
    v31 = v7;
    Shape = mlir::ShapedType::getShape(&v30);
    v10 = v9;
    v26 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = mlir::Type::cast<mlir::ShapedType>(&v26);
    v28[1] = v11;
    v12 = mlir::ShapedType::getShape(v28);
    if (v10 == v13 && !memcmp(Shape, v12, 8 * v10))
    {
      return 1;
    }

    else
    {
      v28[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
      v29 = 259;
      mlir::OpState::emitOpError(this, v28, &v30);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
      if (v30)
      {
        v15 = result;
        mlir::InFlightDiagnostic::report(&v30);
        result = v15;
      }

      if (v39 == 1)
      {
        v16 = result;
        mlir::Diagnostic::~Diagnostic(&v31);
        return v16;
      }
    }
  }

  else
  {
    v28[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, &v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
    v17 = result;
    if (v30)
    {
      mlir::InFlightDiagnostic::report(&v30);
      result = v17;
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v37;
        v20 = __p;
        if (v37 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v37 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v34;
      if (v34)
      {
        v22 = v35;
        v23 = v34;
        if (v35 != v34)
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
          v23 = v34;
        }

        v35 = v21;
        operator delete(v23);
        result = v17;
      }

      if (v32 != &v33)
      {
        free(v32);
        return v17;
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps21(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
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
      result = v6;
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
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps21(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
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
    v43 = v12;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v43 + 8);
    v15 = *(v43 + 16);
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
  v48[0] = a2;
  v48[1] = v22;
  v44[0] = mlir::ShapedType::getElementType(v48);
  if (mlir::Type::isSignedInteger(v44, 16) || mlir::Type::isSignedInteger(v44, 32))
  {
    return 1;
  }

LABEL_24:
  v45 = 261;
  v44[0] = a3;
  v44[1] = a4;
  mlir::Operation::emitOpError(v48, a1, v44);
  if (v48[0])
  {
    LODWORD(v46) = 3;
    *(&v46 + 1) = " #";
    v47 = 2;
    if (v50 >= v51)
    {
      if (v49 > &v46 || v49 + 24 * v50 <= &v46)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v49 + 24 * v50;
    v25 = v46;
    *(v24 + 2) = v47;
    *v24 = v25;
    v26 = ++v50;
    if (v48[0])
    {
      LODWORD(v46) = 5;
      *(&v46 + 1) = a5;
      if (v26 >= v51)
      {
        if (v49 > &v46 || v49 + 24 * v26 <= &v46)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v49 + 24 * v50;
      v28 = v46;
      *(v27 + 2) = v47;
      *v27 = v28;
      v29 = ++v50;
      if (v48[0])
      {
        LODWORD(v46) = 3;
        *(&v46 + 1) = " must be CoreML Tensor of Index type. values, but got ";
        v47 = 54;
        if (v29 >= v51)
        {
          if (v49 > &v46 || v49 + 24 * v29 <= &v46)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v49 + 24 * v50;
        v31 = v46;
        *(v30 + 2) = v47;
        *v30 = v31;
        ++v50;
        if (v48[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v46, a2);
          if (v50 >= v51)
          {
            if (v49 > &v46 || v49 + 24 * v50 <= &v46)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v32 = v49 + 24 * v50;
          v33 = v46;
          *(v32 + 2) = v47;
          *v32 = v33;
          ++v50;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v56;
      v36 = __p;
      if (v56 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v56 = v34;
      operator delete(v36);
    }

    v37 = v53;
    if (v53)
    {
      v38 = v54;
      v39 = v53;
      if (v54 != v53)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x259C63150](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v53;
      }

      v54 = v37;
      operator delete(v39);
    }

    if (v49 != &v52)
    {
      free(v49);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::parse(mlir::ODIE::Compiler::CoreML::GatherNdOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v17, 1) & 1) != 0 && (v20 = 257, ((*(*this + 400))(this, "at", 2, v19)) && (v6 = (*(*this + 40))(this), ((*(*this + 704))(this, v14, 1)) && ((*(*this + 104))(this) & 1) != 0 && ((*(*this + 280))(this) & 1) != 0 && (v19[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v19)) && (v12 = v19[0], ((*(*this + 120))(this)) && (v19[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v19)) && (v10 = v19[0], ((*(*this + 296))(this)) && (v20 = 257, ((*(*this + 400))(this, "to", 2, v19)) && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, &v8)) && (v19[0] = v8, (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (mlir::OperationState::addTypes(a2, v19, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v16, v11, v5, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v13, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::GatherNdOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x277D85DE8];
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

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29793;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "at", 2uLL);
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

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++v18[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ",", 1uLL);
  }

  else
  {
    *v21 = 44;
    ++v20[4];
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ")", 1uLL);
  }

  else
  {
    *v25 = 41;
    ++v24[4];
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] - v29 > 1uLL)
  {
    *v29 = 28532;
    v28[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, "to", 2uLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  if (*(*this + 9))
  {
    v32 = *this - 16;
  }

  else
  {
    v32 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v37 = v39;
  v38 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v35, v37, v38);
  if (v37 != v39)
  {
    free(v37);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::CoreML::GetShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  __src = v18;
  v17 = 0x200000000;
  v5 = *a1;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v14, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(v5, v6, 1, v15[0], v15[1], Dictionary, v9, v10, v14[0], v14[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = v17;
  v12 = *(a2 + 72);
  if (v12 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v12), __src, 8 * v17);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v18)
  {
    free(__src);
  }
}

unint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::GetShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v24[2] = *MEMORY[0x277D85DE8];
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
  __src = v24;
  v23 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(v13, v14, 1, a3, a4, Dictionary, v17, v18, v21[0], v21[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v23;
  v20 = *(a2 + 72);
  if (v20 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v23);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(a1 + 72) = v3[3];
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 88), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 88), 0, 0);
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
  v6 = v3[2];
  *(a1 + 72) = v3[3];
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 88), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 88), 0, 0);
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOpAdaptor::verify(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  if (!v3)
  {
    v38[0] = "'coreml.graph' op requires attribute 'function_type'";
    v39 = 259;
    mlir::emitError(a2, v38, v40);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v48 != 1)
    {
      return v6;
    }

    if (v47 != &v48)
    {
      free(v47);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v46;
      v17 = __p;
      if (v46 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v46 = v15;
      operator delete(v17);
    }

    v10 = v43;
    if (!v43)
    {
      goto LABEL_56;
    }

    v18 = v44;
    v12 = v43;
    if (v44 == v43)
    {
      goto LABEL_55;
    }

    do
    {
      v20 = *--v18;
      v19 = v20;
      *v18 = 0;
      if (v20)
      {
        MEMORY[0x259C63150](v19, 0x1000C8077774924);
      }
    }

    while (v18 != v10);
    goto LABEL_54;
  }

  if (!a1[7])
  {
    v38[0] = "'coreml.graph' op requires attribute 'param_decls'";
    v39 = 259;
    mlir::emitError(a2, v38, v40);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v48 != 1)
    {
      return v6;
    }

    if (v47 != &v48)
    {
      free(v47);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v46;
      v23 = __p;
      if (v46 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v46 = v21;
      operator delete(v23);
    }

    v10 = v43;
    if (!v43)
    {
      goto LABEL_56;
    }

    v24 = v44;
    v12 = v43;
    if (v44 == v43)
    {
      goto LABEL_55;
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

    while (v24 != v10);
    goto LABEL_54;
  }

  if (!a1[10])
  {
    v38[0] = "'coreml.graph' op requires attribute 'sym_name'";
    v39 = 259;
    mlir::emitError(a2, v38, v40);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v46;
        v30 = __p;
        if (v46 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v46 = v28;
        operator delete(v30);
      }

      v31 = v43;
      if (v43)
      {
        v32 = v44;
        v33 = v43;
        if (v44 != v43)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              MEMORY[0x259C63150](v34, 0x1000C8077774924);
            }
          }

          while (v32 != v31);
          v33 = v43;
        }

        v44 = v31;
        operator delete(v33);
      }

      v27 = v41;
      if (v41 != v42)
      {
        goto LABEL_82;
      }
    }

    return v6;
  }

  v4 = a1[3];
  v5 = a1[9];
  v40[0] = a1[5];
  if (*(*mlir::TypeAttr::getValue(v40) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v38[0] = v3;
    if (*(*mlir::TypeAttr::getValue(v38) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      if (v4 && (v40[0] = v4, (llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(v40) & 1) == 0))
      {
        v37 = "'coreml.graph' op attribute 'arg_attrs' failed to satisfy constraint: Array of dictionary attributes";
      }

      else
      {
        if (!v5)
        {
          return 1;
        }

        v40[0] = v5;
        if (llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(v40))
        {
          return 1;
        }

        v37 = "'coreml.graph' op attribute 'res_attrs' failed to satisfy constraint: Array of dictionary attributes";
      }

      v38[0] = v37;
      v39 = 259;
      mlir::emitError(a2, v38, v40);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
      return v6;
    }
  }

  v38[0] = "'coreml.graph' op attribute 'function_type' failed to satisfy constraint: type attribute of function type";
  v39 = 259;
  mlir::emitError(a2, v38, v40);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
  if (v40[0])
  {
    mlir::InFlightDiagnostic::report(v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v46;
      v9 = __p;
      if (v46 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v46 = v7;
      operator delete(v9);
    }

    v10 = v43;
    if (!v43)
    {
LABEL_56:
      v27 = v41;
      if (v41 != v42)
      {
LABEL_82:
        free(v27);
        return v6;
      }

      return v6;
    }

    v11 = v44;
    v12 = v43;
    if (v44 == v43)
    {
LABEL_55:
      v44 = v10;
      operator delete(v12);
      goto LABEL_56;
    }

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
LABEL_54:
    v12 = v43;
    goto LABEL_55;
  }

  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v27 = v66;
    v19 = v65;
    if (v66 == v65)
    {
LABEL_69:
      v66 = v17;
      operator delete(v19);
LABEL_70:
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
LABEL_68:
    v19 = v65;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v56, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
        goto LABEL_70;
      }

      v18 = v66;
      v19 = v65;
      if (v66 == v65)
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

  v30 = mlir::DictionaryAttr::get(&v56, "externalize", 0xBuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 56;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v61 + 24 * v62;
        v33 = v57;
        *(v32 + 2) = v58;
        *v32 = v33;
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

          v34 = v61 + 24 * v62;
          v35 = v57;
          *(v34 + 2) = v58;
          *v34 = v35;
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

      v36 = __p;
      if (__p)
      {
        v37 = v68;
        v38 = __p;
        if (v68 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v68 = v36;
        operator delete(v38);
      }

      v17 = v65;
      if (!v65)
      {
        goto LABEL_70;
      }

      v39 = v66;
      v19 = v65;
      if (v66 == v65)
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

  v42 = mlir::DictionaryAttr::get(&v56, "function_type", 0xDuLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v43 = v42;
      a3(&v59, a4);
      if (v59)
      {
        LODWORD(v57) = 3;
        v58 = 58;
        if (v62 >= v63)
        {
          if (v61 > &v57 || v61 + 24 * v62 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v61 + 24 * v62;
        v45 = v57;
        *(v44 + 2) = v58;
        *v44 = v45;
        ++v62;
        if (v59)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, v43);
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

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v56, "no_inline", 9uLL);
  *&v57 = v48;
  if (!v48)
  {
LABEL_89:
    v51 = mlir::DictionaryAttr::get(&v56, "param_decls", 0xBuLL);
    *&v57 = v51;
    if (v51)
    {
      if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_104;
      }

      a1[4] = v51;
    }

    v52 = mlir::DictionaryAttr::get(&v56, "priv", 4uLL);
    *&v57 = v52;
    if (v52)
    {
      if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_104;
      }

      a1[5] = v52;
    }

    v53 = mlir::DictionaryAttr::get(&v56, "res_attrs", 9uLL);
    *&v57 = v53;
    if (v53)
    {
      if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_87;
      }

      a1[6] = v53;
    }

    v54 = mlir::DictionaryAttr::get(&v56, "sym_name", 8uLL);
    *&v57 = v54;
    if (v54)
    {
      if (*(*v54 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v59, a4);
        goto LABEL_104;
      }

      a1[7] = v54;
    }

    return 1;
  }

  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v48;
    goto LABEL_89;
  }

  a3(&v59, a4);
LABEL_87:
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v59, v49);
LABEL_104:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v57);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v41[6] = *MEMORY[0x277D85DE8];
  v38 = a1;
  v39 = v41;
  v40 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v38, "arg_attrs", 9, *a2);
  if (v40 >= HIDWORD(v40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v39 + 16 * v40);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v40 + 1;
  LODWORD(v40) = v40 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v38, "externalize", 0xB, v7);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v39 + 16 * v40);
    *v10 = v8;
    v10[1] = v9;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v38, "function_type", 0xD, v11);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v39 + 16 * v40);
    *v14 = v12;
    v14[1] = v13;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v38, "no_inline", 9, v15);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v39 + 16 * v40);
    *v18 = v16;
    v18[1] = v17;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v38, "param_decls", 0xB, v19);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v39 + 16 * v40);
    *v22 = v20;
    v22[1] = v21;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v38, "priv", 4, v23);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v39 + 16 * v40);
    *v26 = v24;
    v26[1] = v25;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v27 = a2[6];
  if (v27)
  {
    v28 = mlir::Builder::getNamedAttr(&v38, "res_attrs", 9, v27);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = (v39 + 16 * v40);
    *v30 = v28;
    v30[1] = v29;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v31 = a2[7];
  if (v31)
  {
    v32 = mlir::Builder::getNamedAttr(&v38, "sym_name", 8, v31);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v34 = (v39 + 16 * v40);
    *v34 = v32;
    v34[1] = v33;
    v6 = v40 + 1;
    LODWORD(v40) = v40 + 1;
  }

  v35 = v39;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v39 == v41)
    {
      return DictionaryAttr;
    }

    goto LABEL_28;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v38, v39, v6);
  v35 = v39;
  if (v39 != v41)
  {
LABEL_28:
    free(v35);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::GraphOp::computePropertiesHash(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v28 = v9;
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v26 = v14;
  v17 = HIDWORD(a1[6]);
  v18 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v17);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v20 = HIDWORD(a1[7]);
  v21 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v20);
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v24 = v19;
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  v32 = 0;
  v33 = 0xFF51AFD7ED558CCDLL;
  v29[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v29[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v29, 0, v30, v31, &v28, &v27, &v26, &v25, &v24, &v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 8)
  {
    if (__n == 4)
    {
      if (!memcmp(__s1, "priv", 4uLL))
      {
        return a2[5];
      }
    }

    else if (__n == 8 && !memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[7];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "function_type", 0xDuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 11)
  {
    if (!memcmp(__s1, "externalize", 0xBuLL))
    {
      return a2[1];
    }

    if (!memcmp(__s1, "param_decls", 0xBuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (!memcmp(__s1, "no_inline", 9uLL))
  {
    return a2[3];
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 8)
  {
    if (a3 == 4)
    {
      result = memcmp(__s1, "priv", 4uLL);
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
    }

    else if (a3 == 8)
    {
      result = memcmp(__s1, "sym_name", 8uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[7] = v15;
        }

        else
        {
          v5[7] = 0;
        }
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "function_type", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[2] = v9;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
      case 11:
        result = memcmp(__s1, "externalize", 0xBuLL);
        if (result)
        {
          result = memcmp(__s1, "param_decls", 0xBuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
              {
                v11 = a4;
              }

              else
              {
                v11 = 0;
              }

              v5[4] = v11;
            }

            else
            {
              v5[4] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

        break;
      case 9:
        if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            *result = v14;
          }

          else
          {
            *result = 0;
          }
        }

        else
        {
          result = memcmp(__s1, "no_inline", 9uLL);
          if (result)
          {
            result = memcmp(__s1, "res_attrs", 9uLL);
            if (!result)
            {
              if (a4)
              {
                if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
                {
                  v8 = a4;
                }

                else
                {
                  v8 = 0;
                }

                v5[6] = v8;
              }

              else
              {
                v5[6] = 0;
              }
            }
          }

          else if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v16 = a4;
            }

            else
            {
              v16 = 0;
            }

            v5[3] = v16;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "arg_attrs", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "externalize", 0xBuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "function_type", 0xDuLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "no_inline", 9uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "param_decls", 0xBuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "priv", 4uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "res_attrs", 9uLL, v10);
  }

  v11 = a2[7];
  if (v11)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "externalize", 11, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v10, "function_type", 13, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "no_inline", 9, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v12, "param_decls", 11, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v13, "priv", 4, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v14, "res_attrs", 9, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v15, "sym_name", 8, a3, a4) & 1) != 0)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setSymName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 120) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setFunctionType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setExternalize(uint64_t this, int a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setNoInline(uint64_t this, int a2)
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

void mlir::ODIE::Compiler::CoreML::GraphOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 56) = a3;
  v11 = *(a2 + 32);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 16) = a4;
  v12 = *(a2 + 32);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 32) = a5;
  if (a6)
  {
    v15 = *(a2 + 32);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 40) = a6;
    if (!a7)
    {
LABEL_6:
      v13 = a9;
      if (!a8)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if (!a7)
  {
    goto LABEL_6;
  }

  v16 = *(a2 + 32);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a7;
  v13 = a9;
  if (!a8)
  {
LABEL_7:
    v14 = a10;
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_19:
  v17 = *(a2 + 32);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a8;
  v14 = a10;
  if (!v13)
  {
LABEL_8:
    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_22:
  v18 = *(a2 + 32);
  if (!v18)
  {
    operator new();
  }

  *v18 = v13;
  if (!v14)
  {
LABEL_28:
    mlir::OperationState::addRegion(a2);
  }

LABEL_25:
  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 48) = v14;
  goto LABEL_28;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *(a2 + 32);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 56) = a5;
  v13 = *(a2 + 32);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 16) = a6;
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 32) = a7;
  if (a8)
  {
    v18 = *(a2 + 32);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 40) = a8;
    v15 = a10;
    if (!a9)
    {
LABEL_6:
      v16 = a11;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v15 = a10;
    if (!a9)
    {
      goto LABEL_6;
    }
  }

  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a9;
  v16 = a11;
  if (!v15)
  {
LABEL_7:
    v17 = a12;
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_19:
  v20 = *(a2 + 32);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 24) = v15;
  v17 = a12;
  if (!v16)
  {
LABEL_8:
    if (!v17)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_22:
  v21 = *(a2 + 32);
  if (!v21)
  {
    operator new();
  }

  *v21 = v16;
  if (!v17)
  {
LABEL_9:
    mlir::OperationState::addRegion(a2);
  }

LABEL_25:
  v22 = *(a2 + 32);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 48) = v17;
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::GraphOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10, char a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v37 = 261;
  v36[0] = a5;
  v36[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v36, a3);
  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 56) = StringAttr;
  v20 = mlir::TypeAttr::get(a7);
  v21 = *(a2 + 32);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = v20;
  v22 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a9, a10);
  v24 = *(a2 + 32);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 32) = v22;
  if (a11)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v23);
    v29 = *(a2 + 32);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 40) = UnitAttr;
    v25 = a13;
    if (!a12)
    {
LABEL_8:
      v26 = a14;
      if (!v25)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v25 = a13;
    if (!a12)
    {
      goto LABEL_8;
    }
  }

  v30 = mlir::Builder::getUnitAttr(a1, v23);
  v31 = *(a2 + 32);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 8) = v30;
  v26 = a14;
  if (!v25)
  {
LABEL_9:
    v27 = a15;
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v32 = mlir::Builder::getUnitAttr(a1, v23);
  v33 = *(a2 + 32);
  if (!v33)
  {
    operator new();
  }

  *(v33 + 24) = v32;
  v27 = a15;
  if (!v26)
  {
LABEL_10:
    if (!v27)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_24:
  v34 = *(a2 + 32);
  if (!v34)
  {
    operator new();
  }

  *v34 = v26;
  if (!v27)
  {
LABEL_11:
    mlir::OperationState::addRegion(a2);
  }

LABEL_27:
  v35 = *(a2 + 32);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 48) = v27;
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::GraphOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a8 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v11), a7, 16 * a8);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a8;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v46 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  v5 = v2[2];
  if (v5)
  {
    v6 = v2[4];
    if (v6)
    {
      v7 = v2[7];
      if (v7)
      {
        v9 = v2[1];
        v10 = v2[3];
        v12 = v2[5];
        v11 = v2[6];
        v37[0] = *this;
        if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37) & 1) != 0 && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v5, "function_type", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v6, "param_decls", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v12, "priv", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "externalize", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v10, "no_inline", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v3, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v11, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)))
        {
          return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0) & 1;
        }

        else
        {
          return 0;
        }
      }

      v35[0] = "requires attribute 'sym_name'";
      v36 = 259;
      mlir::OpState::emitOpError(this, v35, v37);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
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

        v28 = __p;
        if (__p)
        {
          v29 = v43;
          v30 = __p;
          if (v43 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v43 = v28;
          operator delete(v30);
        }

        v17 = v40;
        if (!v40)
        {
          goto LABEL_64;
        }

        v31 = v41;
        v19 = v40;
        if (v41 == v40)
        {
LABEL_63:
          v41 = v17;
          operator delete(v19);
LABEL_64:
          if (v38 != &v39)
          {
            free(v38);
          }

          return v13;
        }

        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v17);
LABEL_62:
        v19 = v40;
        goto LABEL_63;
      }
    }

    else
    {
      v35[0] = "requires attribute 'param_decls'";
      v36 = 259;
      mlir::OpState::emitOpError(this, v35, v37);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
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

        v22 = __p;
        if (__p)
        {
          v23 = v43;
          v24 = __p;
          if (v43 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v43 = v22;
          operator delete(v24);
        }

        v17 = v40;
        if (!v40)
        {
          goto LABEL_64;
        }

        v25 = v41;
        v19 = v40;
        if (v41 == v40)
        {
          goto LABEL_63;
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

        while (v25 != v17);
        goto LABEL_62;
      }
    }
  }

  else
  {
    v35[0] = "requires attribute 'function_type'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
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

      v14 = __p;
      if (__p)
      {
        v15 = v43;
        v16 = __p;
        if (v43 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v43 = v14;
        operator delete(v16);
      }

      v17 = v40;
      if (!v40)
      {
        goto LABEL_64;
      }

      v18 = v41;
      v19 = v40;
      if (v41 == v40)
      {
        goto LABEL_63;
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
      goto LABEL_62;
    }
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::GreaterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::GreaterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::GreaterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::GreaterOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

void mlir::ODIE::Compiler::CoreML::IfOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  mlir::OperationState::addOperands(a2, &v6, 1uLL);
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::IfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a8 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v11), a7, 16 * a8);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a8;
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::IfOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*this + 9);
  v4 = *(*this + 9) ? *this - 16 : 0;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(v2, ((v2 + 16 * ((*(v2 + 11) >> 23) & 1) + ((*(v2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10), "thenRegion", 10, 0))
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, "elseRegion", 10, 1u) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  mlir::OperationState::addOperands(a2, &v8, 1uLL);
  __src = v13;
  v12 = 0x200000000;
  mlir::ValueRange::ValueRange(&v10, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v9, *(a2 + 224), *(a2 + 232));
  v14 = v10;
  v5 = mlir::ValueRange::dereference_iterator(&v14, 0);
  if ((mlir::ODIE::Compiler::CoreML::inferInnerType((*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v6 = v12;
  v7 = *(a2 + 72);
  if (v7 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v12)
  {
    memcpy((*(a2 + 64) + 8 * v7), __src, 8 * v12);
    LODWORD(v7) = *(a2 + 72);
  }

  *(a2 + 72) = v7 + v6;
  if (__src != v13)
  {
    free(__src);
  }
}

unint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
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
  __src = v19;
  v18 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
  v20[0] = a3;
  v20[1] = a4;
  v13 = mlir::ValueRange::dereference_iterator(v20, 0);
  if ((mlir::ODIE::Compiler::CoreML::inferInnerType((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8), &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = v18;
  v15 = *(a2 + 72);
  if (v15 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v15), __src, 8 * v18);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::parse(mlir::ODIE::Compiler::CoreML::ImaginaryPartOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, &v8))
  {
    return 0;
  }

  v10 = v8;
  if (((*(*this + 296))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 56))(this) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, &v7))
  {
    return 0;
  }

  v8 = v7;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::OperationState::addTypes(a2, &v8, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v11, v9, v5, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v29[4] = *MEMORY[0x277D85DE8];
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

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
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

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, "(", 1uLL);
  }

  else
  {
    *v13 = 40;
    ++v12[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
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

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] - v19 > 1uLL)
  {
    *v19 = 15917;
    v18[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "->", 2uLL);
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
  v27 = v29;
  v28 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v25, v27, v28);
  if (v27 != v29)
  {
    free(v27);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::ImportOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::getPath@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 24);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      return 1;
    }

    v18[0] = "'coreml.import' op requires attribute 'toImport'";
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
    v18[0] = "'coreml.import' op requires attribute 'sym_name'";
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

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v49, "path", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
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

  v30 = mlir::DictionaryAttr::get(&v49, "sym_name", 8uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v31 = v30;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 53;
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

  v43 = mlir::DictionaryAttr::get(&v49, "toImport", 8uLL);
  if (!v43)
  {
    return 1;
  }

  if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    a1[2] = v43;
    return 1;
  }

  v44 = v43;
  a3(&v52, a4);
  if (v52)
  {
    LODWORD(v50) = 3;
    v51 = 53;
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

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "path", 4, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v18, "sym_name", 8, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v18, "toImport", 8, v11);
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

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::computePropertiesHash(void *a1)
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

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 4 && *a3 == 1752457584)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    return a2[1];
  }

  if (*a3 != 0x74726F706D496F74)
  {
    return 0;
  }

  return a2[2];
}

void *mlir::ODIE::Compiler::CoreML::ImportOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }

    else if (*a2 == 0x74726F706D496F74)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v4 = a4;
        }

        else
        {
          v4 = 0;
        }

        result[2] = v4;
      }

      else
      {
        result[2] = 0;
      }
    }
  }

  else if (a3 == 4 && *a2 == 1752457584)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void mlir::ODIE::Compiler::CoreML::ImportOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "path", 4uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "toImport", 8uLL, v6);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v8, "path", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(v10, "toImport", 8, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: symbol reference attribute";
        v22 = 58;
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

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, *(a2 + 256)) && (v4 = mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 8)), (v4 & 1) != 0))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(a1, (v3 + 16)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::setSymName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::setPath(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 64) = result;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ImportOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4)
{
  v15 = 261;
  v14[0] = a3;
  v14[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v14, a3);
  v9 = mlir::SymbolRefAttr::get(StringAttr);
  v13 = 261;
  v12[0] = a3;
  v12[1] = a4;
  v11 = mlir::Builder::getStringAttr(a1, v12, v10);
  mlir::ODIE::Compiler::CoreML::ImportOp::build(v11, a2, v9, v11, 0);
}

void mlir::ODIE::Compiler::CoreML::ImportOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 256);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 16) = a3;
  v6 = *(a2 + 256);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 8) = a4;
  if (a5)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = a5;
  }
}

void mlir::ODIE::Compiler::CoreML::ImportOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 16) = a5;
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 8) = a6;
  if (a7)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a7;
    v12 = *(a2 + 72);
    if (a4 + v12 > *(a2 + 76))
    {
LABEL_5:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v12 = *(a2 + 72);
    if (a4 + v12 > *(a2 + 76))
    {
      goto LABEL_5;
    }
  }

  if (a4)
  {
    v13 = 0;
    v14 = *(a2 + 64) + 8 * v12;
    do
    {
      *(v14 + 8 * v13) = mlir::TypeRange::dereference_iterator(a3, v13);
      ++v13;
    }

    while (a4 != v13);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + a4;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, size_t a5, uint64_t a6)
{
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 16) = a3;
  v13 = 261;
  v12[0] = a4;
  v12[1] = a5;
  result = mlir::Builder::getStringAttr(a1, v12, a3);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 8) = result;
  if (a6)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = a6;
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7, uint64_t a8)
{
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 16) = a5;
  v20 = 261;
  v19[0] = a6;
  v19[1] = a7;
  result = mlir::Builder::getStringAttr(a1, v19, a3);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = result;
  if (a8)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a8;
  }

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

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = v1 + 64;
  if (v4)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v25[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(v5, "toImport", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) == 0)
      {
        return 0;
      }

      v25[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) == 0)
      {
        return 0;
      }

      v25[0] = *this;
      return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v3, "path", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1;
    }

    v23[0] = "requires attribute 'toImport'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v16 = __p;
      if (__p)
      {
        v17 = v31;
        v18 = __p;
        if (v31 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v31 = v16;
        operator delete(v18);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v19 = v29;
      v13 = v28;
      if (v29 == v28)
      {
LABEL_40:
        v29 = v11;
        operator delete(v13);
LABEL_41:
        if (v26 != &v27)
        {
          free(v26);
        }

        return v7;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v11);
LABEL_39:
      v13 = v28;
      goto LABEL_40;
    }
  }

  else
  {
    v23[0] = "requires attribute 'sym_name'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v12 = v29;
      v13 = v28;
      if (v29 == v28)
      {
        goto LABEL_40;
      }

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
      goto LABEL_39;
    }
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'coreml.invoke' op requires attribute 'callee'";
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

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v33 = v6;
  if (!v6)
  {
    a3(v36, a4);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      *(&v34 + 1) = "expected DictionaryAttr to set properties";
      v35 = 41;
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v37 + 24 * v38;
      v14 = v34;
      *(v13 + 2) = v35;
      *v13 = v14;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }

    if (v46 != 1)
    {
      return 0;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v44;
      v17 = __p;
      if (v44 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v44 = v15;
      operator delete(v17);
    }

    v18 = v41;
    if (!v41)
    {
      goto LABEL_49;
    }

    v19 = v42;
    v20 = v41;
    if (v42 == v41)
    {
      goto LABEL_48;
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
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v33, "callee", 6uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
  }

  a3(v36, a4);
  if (v36[0])
  {
    LODWORD(v34) = 3;
    v35 = 51;
    if (v38 >= v39)
    {
      if (v37 > &v34 || v37 + 24 * v38 <= &v34)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v37 + 24 * v38;
    v24 = v34;
    *(v23 + 2) = v35;
    *v23 = v24;
    ++v38;
    if (v36[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v34, v9);
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = v37 + 24 * v38;
      v26 = v34;
      *(v25 + 2) = v35;
      *v25 = v26;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }
  }

  if (v46)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v44;
      v29 = __p;
      if (v44 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v44 = v27;
      operator delete(v29);
    }

    v18 = v41;
    if (!v41)
    {
      goto LABEL_49;
    }

    v30 = v42;
    v20 = v41;
    if (v42 == v41)
    {
LABEL_48:
      v42 = v18;
      operator delete(v20);
LABEL_49:
      if (v37 != &v40)
      {
        free(v37);
      }

      return 0;
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

    while (v30 != v18);
LABEL_47:
    v20 = v41;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "callee", 6, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1819042147 ? (v4 = *(a3 + 4) == 25957) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::InvokeOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6 && *a2 == 1819042147 && *(a2 + 4) == 25957)
  {
    if (a4)
    {
      v5 = result;
      v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
      result = v5;
      *v5 = v6;
      v5[1] = v7;
    }

    else
    {
      *result = 0;
      result[1] = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "callee", 6uLL, *a2);
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(a3);
  Context = mlir::Attribute::getContext(a2);
  v20 = 261;
  v19[0] = "callee";
  v19[1] = 6;
  v14 = mlir::StringAttr::get(Context, v19, v13);
  mlir::NamedAttribute::NamedAttribute(v21, v14, v11);
  result = mlir::NamedAttrList::push_back(a2 + 112, v21[0], v21[1]);
  v16 = *(a2 + 72);
  if (a5 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a5)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a4, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a5 != v17);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a5;
  return result;
}

{
  v12 = mlir::SymbolRefAttr::get(a3);

  return mlir::ODIE::Compiler::CoreML::InvokeOp::build(v12, a2, v12, a4, a5, a6, a7);
}

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  Context = mlir::Attribute::getContext(a2);
  v20 = 261;
  v19[0] = "callee";
  v19[1] = 6;
  v14 = mlir::StringAttr::get(Context, v19, v13);
  mlir::NamedAttribute::NamedAttribute(v21, v14, a3);
  result = mlir::NamedAttrList::push_back(a2 + 112, v21[0], v21[1]);
  v16 = *(a2 + 72);
  if (a6 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a5, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a6 != v17);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a6;
  return result;
}

{
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a5;
  v14[1] = a6;
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

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = *a1;
  v18 = 261;
  v17[0] = a3;
  v17[1] = a4;
  v14 = mlir::StringAttr::get(v13, v17, a3);
  v15 = mlir::SymbolRefAttr::get(v14);
  return mlir::ODIE::Compiler::CoreML::InvokeOp::build(v15, a2, v15, a5, a6, a7, a8);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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