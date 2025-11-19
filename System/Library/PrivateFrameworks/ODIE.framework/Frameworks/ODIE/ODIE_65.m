uint64_t mlir::LLVM::DIModuleAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v13 = *a1;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id;
  v23[1] = a1;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19DIModuleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12DIModuleAttrEJNS2_10DIFileAttrENS2_11DIScopeAttrENS1_10StringAttrESF_SF_SF_jbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v27[1] = v23;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = a8;
  v26 = a9;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v38 = 0;
  v39 = 0xFF51AFD7ED558CCDLL;
  v34 = ((a2 >> 4) ^ (a2 >> 9));
  v35 = ((a3 >> 4) ^ (a3 >> 9));
  v28 = 0;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v34, &v28, v36, v37, (a4 >> 4) ^ (a4 >> 9));
  v29 = v28;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v34, &v29, v14, v37, (v12 >> 4) ^ (v12 >> 9));
  v30 = v29;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v34, &v30, v15, v37, (v11 >> 4) ^ (v11 >> 9));
  v31 = v30;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v34, &v31, v16, v37, (v10 >> 4) ^ (v10 >> 9));
  v32 = v31;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v34, &v32, v17, v37, a8);
  v33 = v32;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(&v34, &v33, v18, v37, a9);
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v34, v33, v19, v37);
  v33 = v24;
  v34 = v24;
  v35 = v27;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id, v20, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIModuleAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIModuleAttrStorage,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DIModuleAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v33, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIModuleAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIModuleAttrStorage,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DIModuleAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v34);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIModuleAttr::parse(mlir::AsmParser *a1)
{
  v40[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v38) = 0;
  v39 = 0;
  LOBYTE(v36) = 0;
  v37 = 0;
  LOBYTE(v34) = 0;
  v35 = 0;
  LOBYTE(v32) = 0;
  v33 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  v25 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21[0] = a1;
  v21[1] = &v24 + 1;
  v21[2] = &v38;
  v21[3] = &v24;
  v21[4] = &v36;
  v21[5] = &v23 + 3;
  v21[6] = &v34;
  v21[7] = &v23 + 2;
  v21[8] = &v32;
  v21[9] = &v23 + 1;
  v21[10] = &v30;
  v21[11] = &v23;
  v21[12] = &v28;
  v21[13] = &v22 + 1;
  v21[14] = &v26;
  v21[15] = &v22;
  v21[16] = &v25;
  v19 = 0;
  v20 = 0;
  if ((*(*a1 + 416))(a1, &v19))
  {
    v2 = v19;
    for (i = v20; mlir::LLVM::DIModuleAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v21, v2, i); i = v18)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v17))
      {
        v13 = (*(*a1 + 40))(a1);
        v15 = "expected a parameter name in struct";
        v16 = 259;
        (*(*a1 + 24))(v40, a1, v13, &v15);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
        goto LABEL_32;
      }

      v2 = v17;
    }

    goto LABEL_32;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v39)
  {
    v5 = v38;
  }

  else
  {
    v5 = 0;
  }

  if (v37)
  {
    v6 = v36;
  }

  else
  {
    v6 = 0;
  }

  if (v35)
  {
    v7 = v34;
  }

  else
  {
    v7 = 0;
  }

  if (v33)
  {
    v8 = v32;
  }

  else
  {
    v8 = 0;
  }

  if (v31)
  {
    v9 = v30;
  }

  else
  {
    v9 = 0;
  }

  if (v29)
  {
    v10 = v28;
  }

  else
  {
    v10 = 0;
  }

  if (v27)
  {
    v11 = v26;
  }

  else
  {
    v11 = 0;
  }

  result = mlir::LLVM::DIModuleAttr::get(v4, v5, v6, v7, v8, v9, v10, v11, HIBYTE(v25) & v25);
LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIModuleAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v80[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_66;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 4)
  {
    if (*a2 == 1701603686)
    {
      v7 = 1;
      *v6 = 1;
      v8 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(*a1);
      v9 = a1[2];
      *v9 = v8;
      *(v9 + 8) = v10;
      if ((*(a1[2] + 8) & 1) == 0)
      {
        v11 = *a1;
        v12 = (*(*v11 + 40))(v11);
        v72 = 259;
        (*(*v11 + 24))(v80, v11, v12, &v70);
        v13 = v80;
LABEL_65:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
LABEL_66:
        v7 = 0;
        goto LABEL_67;
      }

      goto LABEL_67;
    }

LABEL_18:
    v22 = a1[5];
    if ((*v22 & 1) != 0 || a3 != 4)
    {
      v30 = a1[7];
      if ((*v30 & 1) == 0 && a3 == 12)
      {
        if (*a2 == 0x614D6769666E6F63 && *(a2 + 8) == 1936683619)
        {
          v7 = 1;
          *v30 = 1;
          v32 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v33 = a1[8];
          *v33 = v32;
          *(v33 + 8) = v34;
          if ((*(a1[8] + 8) & 1) == 0)
          {
            v35 = *a1;
            v36 = (*(*v35 + 40))(v35);
            v72 = 259;
            (*(*v35 + 24))(v77, v35, v36, &v70);
            v13 = v77;
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        goto LABEL_62;
      }

      v37 = a1[9];
      if ((*v37 & 1) == 0 && a3 == 11)
      {
        if (*a2 == 0x506564756C636E69 && *(a2 + 3) == 0x687461506564756CLL)
        {
          v7 = 1;
          *v37 = 1;
          v39 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v40 = a1[10];
          *v40 = v39;
          *(v40 + 8) = v41;
          if ((*(a1[10] + 8) & 1) == 0)
          {
            v42 = *a1;
            v43 = (*(*v42 + 40))(v42);
            v72 = 259;
            (*(*v42 + 24))(v76, v42, v43, &v70);
            v13 = v76;
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        goto LABEL_62;
      }

      v56 = a1[11];
      if ((*v56 & 1) == 0 && a3 == 8)
      {
        if (*a2 == 0x7365746F6E697061)
        {
          v7 = 1;
          *v56 = 1;
          v61 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v62 = a1[12];
          *v62 = v61;
          *(v62 + 8) = v63;
          if (*(a1[12] + 8))
          {
            goto LABEL_67;
          }

          v64 = *a1;
          v65 = (*(*v64 + 40))(v64);
          v72 = 259;
          (*(*v64 + 24))(v75, v64, v65, &v70);
          v13 = v75;
          goto LABEL_65;
        }

        goto LABEL_62;
      }
    }

    else if (*a2 == 1701667182)
    {
      v7 = 1;
      *v22 = 1;
      v51 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
      v52 = a1[6];
      *v52 = v51;
      *(v52 + 8) = v53;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v54 = *a1;
        v55 = (*(*v54 + 40))(v54);
        v72 = 259;
        (*(*v54 + 24))(v78, v54, v55, &v70);
        v13 = v78;
        goto LABEL_65;
      }

      goto LABEL_67;
    }

    v23 = a1[13];
    if ((*v23 & 1) != 0 || a3 != 4)
    {
      v44 = a1[15];
      if ((*v44 & 1) == 0 && a3 == 6 && *a2 == 1698984809 && *(a2 + 4) == 27747)
      {
        v7 = 1;
        *v44 = 1;
        v46 = *a1;
        LOBYTE(v70) = 0;
        v47 = mlir::AsmParser::parseInteger<BOOL>(v46, &v70);
        v48 = v70;
        if ((v47 & 1) == 0)
        {
          v48 = 0;
        }

        *a1[16] = v48 | ((v47 & 1) << 8);
        if ((*(a1[16] + 1) & 1) == 0)
        {
          v49 = *a1;
          v50 = (*(*v49 + 40))(v49);
          v72 = 259;
          (*(*v49 + 24))(v73, v49, v50, &v70);
          v13 = v73;
          goto LABEL_65;
        }

        goto LABEL_67;
      }
    }

    else if (*a2 == 1701734764)
    {
      v7 = 1;
      *v23 = 1;
      v24 = *a1;
      LODWORD(v70) = 0;
      v25 = mlir::AsmParser::parseInteger<unsigned int>(v24, &v70);
      v26 = v70;
      if ((v25 & 1) == 0)
      {
        v26 = 0;
      }

      v27 = a1[14];
      *(v27 + 4) = v25 & 1;
      *v27 = v26;
      if ((*(a1[14] + 4) & 1) == 0)
      {
        v28 = *a1;
        v29 = (*(*v28 + 40))(v28);
        v72 = 259;
        (*(*v28 + 24))(v74, v28, v29, &v70);
        v13 = v74;
        goto LABEL_65;
      }

      goto LABEL_67;
    }

LABEL_62:
    v57 = *a1;
    v58 = (*(*v57 + 40))(v57);
    v66 = "duplicate or unknown struct parameter name: ";
    v67 = 259;
    (*(*v57 + 24))(&v70, v57, v58, &v66);
    if (v70)
    {
      v69 = 261;
      v68[0] = a2;
      v68[1] = a3;
      mlir::Diagnostic::operator<<(&v71, v68);
    }

    v13 = &v70;
    goto LABEL_65;
  }

  v14 = a1[3];
  if ((*v14 & 1) != 0 || a3 != 5)
  {
    goto LABEL_18;
  }

  if (*a2 != 1886348147 || *(a2 + 4) != 101)
  {
    goto LABEL_62;
  }

  v7 = 1;
  *v14 = 1;
  v16 = *a1;
  v70 = 0;
  v17 = mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(v16, &v70);
  v18 = v70;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = a1[4];
  *v19 = v18;
  *(v19 + 8) = v17;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v20 = *a1;
    v21 = (*(*v20 + 40))(v20);
    v72 = 259;
    (*(*v20 + 24))(v79, v20, v21, &v70);
    v13 = v79;
    goto LABEL_65;
  }

LABEL_67:
  v59 = *MEMORY[0x277D85DE8];
  return v7;
}

llvm::raw_ostream *mlir::LLVM::DIModuleAttr::print(mlir::LLVM::DIModuleAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (!*(*this + 8))
  {
    if (!*(v6 + 16))
    {
      if (!*(v6 + 24))
      {
        if (!*(v6 + 32))
        {
          if (!*(v6 + 40))
          {
            if (!*(v6 + 48))
            {
              if (!*(v6 + 56))
              {
                if ((*(v6 + 60) & 1) == 0)
                {
                  goto LABEL_83;
                }

                goto LABEL_76;
              }

              goto LABEL_67;
            }

            goto LABEL_58;
          }

          goto LABEL_49;
        }

        goto LABEL_40;
      }

      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 6uLL)
  {
    *(v8 + 3) = 540876901;
    *v8 = 1701603686;
    *(v7 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v7, "file = ", 7uLL);
  }

  v9 = *this;
  v10 = *(*this + 8);
  if (v10)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v10);
    v9 = *this;
  }

  if (*(v9 + 16))
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 1uLL)
    {
      *v12 = 8236;
      *(v11 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v11, ", ", 2uLL);
    }

LABEL_22:
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x203D2065706F6373;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "scope = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (*(v9 + 24))
  {
    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 1uLL)
    {
      *v16 = 8236;
      *(v15 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v15, ", ", 2uLL);
    }

LABEL_31:
    v17 = (*(*a2 + 16))(a2);
    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 6uLL)
    {
      *(v18 + 3) = 540876901;
      *v18 = 1701667182;
      *(v17 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v17, "name = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 32))
  {
    goto LABEL_45;
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) - v20 > 1uLL)
  {
    *v20 = 8236;
    *(v19 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v19, ", ", 2uLL);
  }

LABEL_40:
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 0xEuLL)
  {
    qmemcpy(v22, "configMacros = ", 15);
    *(v21 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v21, "configMacros = ", 0xFuLL);
  }

  v9 = *this;
  if (*(*this + 32))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_45:
  if (*(v9 + 40))
  {
    v23 = (*(*a2 + 16))(a2);
    v24 = *(v23 + 4);
    if (*(v23 + 3) - v24 > 1uLL)
    {
      *v24 = 8236;
      *(v23 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v23, ", ", 2uLL);
    }

LABEL_49:
    v25 = (*(*a2 + 16))(a2);
    v26 = *(v25 + 4);
    if (*(v25 + 3) - v26 > 0xDuLL)
    {
      qmemcpy(v26, "includePath = ", 14);
      *(v25 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v25, "includePath = ", 0xEuLL);
    }

    v9 = *this;
    if (*(*this + 40))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 48))
  {
    goto LABEL_63;
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 1uLL)
  {
    *v28 = 8236;
    *(v27 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v27, ", ", 2uLL);
  }

LABEL_58:
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if ((*(v29 + 3) - v30) > 0xA)
  {
    *(v30 + 7) = 540876915;
    *v30 = *"apinotes = ";
    *(v29 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v29, "apinotes = ", 0xBuLL);
  }

  v9 = *this;
  if (*(*this + 48))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_63:
  if (*(v9 + 56))
  {
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 1uLL)
    {
      *v32 = 8236;
      *(v31 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v31, ", ", 2uLL);
    }

LABEL_67:
    v33 = (*(*a2 + 16))(a2);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 6uLL)
    {
      *(v34 + 3) = 540876901;
      *v34 = 1701734764;
      *(v33 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v33, "line = ", 7uLL);
    }

    v9 = *this;
    v35 = *(*this + 56);
    if (v35)
    {
      v36 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v36, v35, 0, 0, 0);
      v9 = *this;
    }
  }

  if ((*(v9 + 60) & 1) == 0)
  {
    goto LABEL_83;
  }

  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 1uLL)
  {
    *v38 = 8236;
    *(v37 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v37, ", ", 2uLL);
  }

LABEL_76:
  v39 = (*(*a2 + 16))(a2);
  v40 = *(v39 + 4);
  if ((*(v39 + 3) - v40) > 8)
  {
    *(v40 + 8) = 32;
    *v40 = *"isDecl = ";
    *(v39 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v39, "isDecl = ", 9uLL);
  }

  if (*(*this + 60) == 1)
  {
    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if (*(v41 + 3) - v42 > 3uLL)
    {
      *v42 = 1702195828;
      *(v41 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v41, "true", 4uLL);
    }
  }

LABEL_83:
  result = (*(*a2 + 16))(a2);
  v44 = *(result + 4);
  if (*(result + 3) == v44)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v44 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DINamespaceAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id;
  v9[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22DINamespaceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15DINamespaceAttrEJNS1_10StringAttrENS2_11DIScopeAttrEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v12[1] = v9;
  v10[0] = a2;
  v10[1] = a3;
  v11 = a4;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  memset(v16, 0, sizeof(v16));
  v14 = ((a2 >> 4) ^ (a2 >> 9));
  v15 = ((a3 >> 4) ^ (a3 >> 9));
  v13 = 0;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(&v14, &v13, v16, v17, a4);
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v14, v13, v5, v17);
  v13 = v10;
  v14 = v10;
  v15 = v12;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DINamespaceAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DINamespaceAttrStorage,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DINamespaceAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DINamespaceAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DINamespaceAttrStorage,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DINamespaceAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v14);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DINamespaceAttr::parse(mlir::AsmParser *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_45:
    result = 0;
    goto LABEL_46;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v26 = 0;
    v27 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v26))
    {
      v18 = (*(*a1 + 40))(a1);
      v39 = "expected a parameter name in struct";
      v40[12] = 259;
      (*(*a1 + 24))(v32, a1, v18, &v39);
      v19 = v32;
      goto LABEL_44;
    }

    v9 = v26;
    v8 = v27;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_45;
    }

    if (v2 & 1 | (v8 != 4))
    {
      if (v4 & 1 | (v8 != 5))
      {
        if (v6 & 1 | (v8 != 13))
        {
          goto LABEL_41;
        }

        if (*v9 != 0x795374726F707865 || *(v9 + 5) != 0x736C6F626D795374)
        {
          v8 = 13;
          goto LABEL_41;
        }

        LOBYTE(v33) = 0;
        if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v33) & 1) == 0)
        {
          v25 = (*(*a1 + 40))(a1);
          v35 = 259;
          (*(*a1 + 24))(v36, a1, v25, &v33);
          v19 = v36;
          goto LABEL_44;
        }

        v7 = v33;
        v6 = 1;
      }

      else
      {
        if (*v9 != 1886348147 || *(v9 + 4) != 101)
        {
          v8 = 5;
LABEL_41:
          v22 = (*(*a1 + 40))(a1);
          v28 = "duplicate or unknown struct parameter name: ";
          v29 = 259;
          (*(*a1 + 24))(&v33, a1, v22, &v28);
          if (v33)
          {
            v31 = 261;
            v30[0] = v9;
            v30[1] = v8;
            mlir::Diagnostic::operator<<(&v34, v30);
          }

          v19 = &v33;
          goto LABEL_44;
        }

        v33 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v33))
        {
          v24 = (*(*a1 + 40))(a1);
          v35 = 259;
          (*(*a1 + 24))(v37, a1, v24, &v33);
          v19 = v37;
          goto LABEL_44;
        }

        v5 = v33;
        v4 = 1;
      }
    }

    else
    {
      if (*v9 != 1701667182)
      {
        v8 = 4;
        goto LABEL_41;
      }

      v11 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v12 & 1) == 0)
      {
        v20 = (*(*a1 + 40))(a1);
        v35 = 259;
        (*(*a1 + 24))(&v39, a1, v20, &v33);
        goto LABEL_40;
      }

      v3 = v11;
      v2 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v6 & 1) == 0)
  {
    v21 = (*(*a1 + 40))(a1);
    v37[0] = "struct is missing required parameter: ";
    v38 = 259;
    (*(*a1 + 24))(&v39, a1, v21, v37);
    if (v39)
    {
      mlir::Diagnostic::operator<<<14ul>(v40, "exportSymbols");
    }

LABEL_40:
    v19 = &v39;
LABEL_44:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    goto LABEL_45;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_45;
  }

  v14 = *(*(*a1 + 32))(a1);
  if (v2)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  if (v4)
  {
    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  result = mlir::LLVM::DINamespaceAttr::get(v14, v15, v16, v7 & 1);
LABEL_46:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DINamespaceAttr::print(mlir::LLVM::DINamespaceAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 6uLL)
    {
      *(v7 + 3) = 540876901;
      *v7 = 1701667182;
      *(v6 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v6, "name = ", 7uLL);
    }

    v8 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v8 = *this;
    }

    if (!*(v8 + 16))
    {
      goto LABEL_21;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8236;
      *(v9 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, ", ", 2uLL);
    }

LABEL_16:
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 7uLL)
    {
      *v12 = 0x203D2065706F6373;
      *(v11 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v11, "scope = ", 8uLL);
    }

    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
    }

LABEL_21:
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }

    goto LABEL_24;
  }

  if (*(*this + 16))
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 0xFuLL)
  {
    *v16 = *"exportSymbols = ";
    *(v15 + 4) += 16;
  }

  else
  {
    llvm::raw_ostream::write(v15, "exportSymbols = ", 0x10uLL);
  }

  v17 = *(*this + 24);
  v18 = (*(*a2 + 16))(a2);
  if (v17)
  {
    v19 = 4;
  }

  else
  {
    v19 = 5;
  }

  if (v17)
  {
    v20 = "true";
  }

  else
  {
    v20 = "false";
  }

  llvm::raw_ostream::operator<<(v18, v20, v19);
  result = (*(*a2 + 16))(a2);
  v22 = *(result + 4);
  if (*(result + 3) == v22)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v22 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIImportedEntityAttr::get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10)
{
  v10 = a7;
  v35[8] = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v19[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id;
  v19[1] = a1;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIImportedEntityAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIImportedEntityAttrEJjNS2_11DIScopeAttrENS2_10DINodeAttrENS2_10DIFileAttrEjNS1_10StringAttrENS_8ArrayRefISE_EEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
  v28[1] = v19;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a9;
  v27 = a10;
  v34 = 0u;
  memset(v35, 0, 56);
  *&v32[16] = 0u;
  v33 = 0u;
  v35[7] = 0xFF51AFD7ED558CCDLL;
  *v32 = a2;
  *&v32[4] = (a3 >> 4) ^ (a3 >> 9);
  *&v32[12] = (a4 >> 4) ^ (a4 >> 9);
  v29 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v32, &v29, &v32[20], v35, (a5 >> 4) ^ (a5 >> 9));
  v30 = v29;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v32, &v30, v13, v35, a6);
  v31 = v30;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v32, &v31, v14, v35, (v10 >> 4) ^ (v10 >> 9));
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(v32, v31, v15, v35, a9, a10);
  v31 = &v20;
  *v32 = &v20;
  *&v32[8] = v28;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIImportedEntityAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIImportedEntityAttrStorage,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIImportedEntityAttrStorage *)>,mlir::TypeID,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIImportedEntityAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIImportedEntityAttrStorage,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIImportedEntityAttrStorage *)>,mlir::TypeID,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v32);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIImportedEntityAttr::parse(mlir::AsmParser *a1)
{
  v73 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v56[0]) = 0;
  v58 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_87:
    v26 = 0;
    goto LABEL_88;
  }

  v2 = 0;
  v3 = 0;
  v43 = 0;
  v45 = 0;
  v4 = 0;
  v44 = 0;
  v5 = 0;
  v6 = 0;
  v40 = 0;
  v42 = 0;
  v39 = 0;
  v41 = 0;
  do
  {
    v46 = 0;
    v47 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v46))
    {
      v19 = (*(*a1 + 40))(a1);
      v68 = "expected a parameter name in struct";
      v71 = 259;
      (*(*a1 + 24))(v55, a1, v19, &v68);
      v20 = v55;
      goto LABEL_86;
    }

    v8 = v46;
    v7 = v47;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_87;
    }

    if (v6 & 1 | (v7 != 3))
    {
      if (v4 & 1 | (v7 != 5))
      {
        if (v3 & 1 | (v7 != 6))
        {
          v9 = v7 != 4;
          if (!(BYTE4(v45) & 1 | v9))
          {
            if (*v8 == 1701603686)
            {
              v15 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
              if ((v16 & 1) == 0)
              {
                v36 = (*(*a1 + 40))(a1);
                v71 = 259;
                (*(*a1 + 24))(v62, a1, v36, &v68);
                v20 = v62;
                goto LABEL_86;
              }

              v41 = v15;
              BYTE4(v45) = 1;
              continue;
            }

            v9 = 0;
          }

          if (((v44 | v9) & 1) == 0 && *v8 == 1701734764)
          {
            LODWORD(v68) = 0;
            if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v68) & 1) == 0)
            {
              v37 = (*(*a1 + 40))(a1);
              v71 = 259;
              (*(*a1 + 24))(v61, a1, v37, &v68);
              v20 = v61;
              goto LABEL_86;
            }

            v40 = v68;
            v44 = 1;
          }

          else if (((v42 | v9) & 1) == 0 && *v8 == 1701667182)
          {
            v17 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
            if ((v18 & 1) == 0)
            {
              v38 = (*(*a1 + 40))(a1);
              v71 = 259;
              (*(*a1 + 24))(v60, a1, v38, &v68);
              v20 = v60;
              goto LABEL_86;
            }

            v39 = v17;
            v42 = 1;
          }

          else
          {
            if (v45 & 1 | (v7 != 8))
            {
              goto LABEL_83;
            }

            if (*v8 != 0x73746E656D656C65)
            {
              v7 = 8;
              goto LABEL_83;
            }

            mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(&v68, a1);
            std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(v56, &v68);
            if (v72 == 1 && v68 != v70)
            {
              free(v68);
            }

            if ((v58 & 1) == 0)
            {
              v35 = (*(*a1 + 40))(a1);
              v71 = 259;
              (*(*a1 + 24))(v59, a1, v35, &v68);
              v20 = v59;
              goto LABEL_86;
            }

            LOBYTE(v45) = 1;
          }
        }

        else
        {
          if (*v8 != 1769238117 || *(v8 + 4) != 31092)
          {
            v7 = 6;
            goto LABEL_83;
          }

          v68 = 0;
          if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DINodeAttr>(a1, &v68))
          {
            v31 = (*(*a1 + 40))(a1);
            v71 = 259;
            (*(*a1 + 24))(v63, a1, v31, &v68);
            v20 = v63;
            goto LABEL_86;
          }

          v43 = v68;
          v3 = 1;
        }
      }

      else
      {
        if (*v8 != 1886348147 || *(v8 + 4) != 101)
        {
          v7 = 5;
          goto LABEL_83;
        }

        v68 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v68))
        {
          v29 = (*(*a1 + 40))(a1);
          v71 = 259;
          (*(*a1 + 24))(v64, a1, v29, &v68);
          v20 = v64;
          goto LABEL_86;
        }

        v2 = v68;
        v4 = 1;
      }
    }

    else
    {
      if (*v8 != 24948 || *(v8 + 2) != 103)
      {
        v7 = 3;
LABEL_83:
        v32 = (*(*a1 + 40))(a1);
        v48[0] = "duplicate or unknown struct parameter name: ";
        v49 = 259;
        (*(*a1 + 24))(&v68, a1, v32, v48);
        if (v68)
        {
          v54 = 261;
          v52 = v8;
          v53 = v7;
          mlir::Diagnostic::operator<<(&v69, &v52);
        }

LABEL_85:
        v20 = &v68;
        goto LABEL_86;
      }

      v11 = (*(*a1 + 40))(a1);
      v50 = 0;
      v51 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v50))
      {
        goto LABEL_75;
      }

      Tag = llvm::dwarf::getTag(v50, v51);
      if (Tag == -1)
      {
        v49 = 257;
        (*(*a1 + 24))(&v68, a1, v11, v48);
        if (v68)
        {
          mlir::Diagnostic::operator<<<41ul>(&v69, "invalid debug info debug info tag name: ");
          if (v68)
          {
            v54 = 261;
            v52 = v50;
            v53 = v51;
            mlir::Diagnostic::operator<<(&v69, &v52);
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v68);
LABEL_75:
        v27 = (*(*a1 + 40))(a1);
        v71 = 259;
        (*(*a1 + 24))(v65, a1, v27, &v68);
        v20 = v65;
LABEL_86:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
        goto LABEL_87;
      }

      v5 = Tag;
      v6 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v4 & 1) == 0)
  {
    v28 = (*(*a1 + 40))(a1);
    v65[0] = "struct is missing required parameter: ";
    v67 = 259;
    (*(*a1 + 24))(&v68, a1, v28, v65);
    if (v68)
    {
      mlir::Diagnostic::operator<<<6ul>(&v69, "scope");
    }

    goto LABEL_85;
  }

  if ((v3 & 1) == 0)
  {
    v30 = (*(*a1 + 40))(a1);
    v65[0] = "struct is missing required parameter: ";
    v67 = 259;
    (*(*a1 + 24))(&v68, a1, v30, v65);
    if (v68)
    {
      mlir::Diagnostic::operator<<<7ul>(&v69, "entity");
    }

    goto LABEL_85;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_87;
  }

  v21 = *(*(*a1 + 32))(a1);
  if ((v6 & 1) == 0)
  {
    v5 = 0;
  }

  if ((v45 & 0x100000000) != 0)
  {
    v22 = v41;
  }

  else
  {
    v22 = 0;
  }

  if (v44)
  {
    v23 = v40;
  }

  else
  {
    v23 = 0;
  }

  if (v42)
  {
    v24 = v39;
  }

  else
  {
    v24 = 0;
  }

  v65[0] = v66;
  v65[1] = 0x600000000;
  std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(&v68, v56, v65);
  v26 = mlir::LLVM::DIImportedEntityAttr::get(v21, v5, v2, v43, v22, v23, v24, v25, v68, v69);
  if (v68 != v70)
  {
    free(v68);
  }

  if (v65[0] != v66)
  {
    free(v65[0]);
  }

LABEL_88:
  if (v58 == 1 && v56[0] != &v57)
  {
    free(v56[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v26;
}

llvm::raw_ostream *mlir::LLVM::DIImportedEntityAttr::print(mlir::LLVM::DIImportedEntityAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 5)
    {
      *(v7 + 4) = 8253;
      *v7 = 543646068;
      *(v6 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v6, "tag = ", 6uLL);
    }

    v8 = *(*this + 8);
    if (v8)
    {
      v9 = llvm::dwarf::TagString(v8);
      v11 = v10;
      v12 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v12, v9, v11);
    }

    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 7uLL)
  {
    *v16 = 0x203D2065706F6373;
    *(v15 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v15, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 1uLL)
  {
    *v18 = 8236;
    *(v17 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, ", ", 2uLL);
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 8)
  {
    *(v20 + 8) = 32;
    *v20 = *"entity = ";
    *(v19 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v19, "entity = ", 9uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  v21 = *this;
  if (*(*this + 32))
  {
    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if (*(v22 + 3) - v23 > 1uLL)
    {
      *v23 = 8236;
      *(v22 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v22, ", ", 2uLL);
    }

    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) - v25 > 6uLL)
    {
      *(v25 + 3) = 540876901;
      *v25 = 1701603686;
      *(v24 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v24, "file = ", 7uLL);
    }

    v21 = *this;
    v26 = *(*this + 32);
    if (v26)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v26);
      v21 = *this;
    }
  }

  if (*(v21 + 40))
  {
    v27 = (*(*a2 + 16))(a2);
    v28 = *(v27 + 4);
    if (*(v27 + 3) - v28 > 1uLL)
    {
      *v28 = 8236;
      *(v27 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v27, ", ", 2uLL);
    }

    v29 = (*(*a2 + 16))(a2);
    v30 = *(v29 + 4);
    if (*(v29 + 3) - v30 > 6uLL)
    {
      *(v30 + 3) = 540876901;
      *v30 = 1701734764;
      *(v29 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v29, "line = ", 7uLL);
    }

    v21 = *this;
    v31 = *(*this + 40);
    if (v31)
    {
      v32 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v32, v31, 0, 0, 0);
      v21 = *this;
    }
  }

  if (*(v21 + 48))
  {
    v33 = (*(*a2 + 16))(a2);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 1uLL)
    {
      *v34 = 8236;
      *(v33 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v33, ", ", 2uLL);
    }

    v35 = (*(*a2 + 16))(a2);
    v36 = *(v35 + 4);
    if (*(v35 + 3) - v36 > 6uLL)
    {
      *(v36 + 3) = 540876901;
      *v36 = 1701667182;
      *(v35 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v35, "name = ", 7uLL);
    }

    v21 = *this;
    if (*(*this + 48))
    {
      (*(*a2 + 40))(a2);
      v21 = *this;
    }
  }

  if (*(v21 + 64))
  {
    v37 = (*(*a2 + 16))(a2);
    v38 = *(v37 + 4);
    if (*(v37 + 3) - v38 > 1uLL)
    {
      *v38 = 8236;
      *(v37 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v37, ", ", 2uLL);
    }

    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if ((*(v39 + 3) - v40) > 0xA)
    {
      *(v40 + 7) = 540876915;
      *v40 = *"elements = ";
      *(v39 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v39, "elements = ", 0xBuLL);
    }

    v41 = *(*this + 64);
    if (v41)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(a2, *(*this + 56), v41);
    }
  }

  result = (*(*a2 + 16))(a2);
  v43 = *(result + 4);
  if (*(result + 3) == v43)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v43 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIAnnotationAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id;
  v7[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIAnnotationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIAnnotationAttrEJNS1_10StringAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v9 = a2;
  v10 = a3;
  memset(v13, 0, sizeof(v13));
  memset(__dst, 0, sizeof(__dst));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::StringAttr>(__dst, __dst, v13, a2, &v10);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIAnnotationAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIAnnotationAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIAnnotationAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIAnnotationAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIAnnotationAttr::parse(mlir::AsmParser *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_22:
    result = 0;
    goto LABEL_23;
  }

  v22 = 0;
  v23 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v22))
  {
LABEL_20:
    v14 = (*(*a1 + 40))(a1);
    v33[0] = "expected a parameter name in struct";
    v34 = 259;
    (*(*a1 + 24))(v28, a1, v14, v33);
    v15 = v28;
LABEL_21:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    goto LABEL_22;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = v22;
    v8 = v23;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v4 & 1 | (v8 != 4))
    {
      if (v3 & 1 | (v8 != 5))
      {
        goto LABEL_28;
      }

      if (*v7 != 1970037110 || *(v7 + 4) != 101)
      {
        v8 = 5;
LABEL_28:
        v20 = (*(*a1 + 40))(a1);
        v24 = "duplicate or unknown struct parameter name: ";
        v25 = 259;
        (*(*a1 + 24))(&v29, a1, v20, &v24);
        if (v29)
        {
          v27 = 261;
          v26[0] = v7;
          v26[1] = v8;
          mlir::Diagnostic::operator<<(&v30, v26);
        }

        v15 = &v29;
        goto LABEL_21;
      }

      v10 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v11 & 1) == 0)
      {
        v21 = (*(*a1 + 40))(a1);
        v31 = 259;
        (*(*a1 + 24))(v32, a1, v21, &v29);
        v15 = v32;
        goto LABEL_21;
      }

      v5 = v10;
      v3 = 1;
    }

    else
    {
      if (*v7 != 1701667182)
      {
        v8 = 4;
        goto LABEL_28;
      }

      v12 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v13 & 1) == 0)
      {
        v19 = (*(*a1 + 40))(a1);
        v31 = 259;
        (*(*a1 + 24))(v33, a1, v19, &v29);
        v15 = v33;
        goto LABEL_21;
      }

      v2 = v12;
      v4 = 1;
    }

    if (v6)
    {
      break;
    }

    if (((*(*a1 + 120))(a1) & 1) == 0)
    {
      goto LABEL_22;
    }

    v22 = 0;
    v23 = 0;
    v6 = 1;
    if (!mlir::AsmParser::parseKeyword(a1, &v22))
    {
      goto LABEL_20;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v18 = (*(*a1 + 32))(a1);
  result = mlir::LLVM::DIAnnotationAttr::get(*v18, v2, v5);
LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DIAnnotationAttr::print(mlir::LLVM::DIAnnotationAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 6uLL)
  {
    *(v7 + 3) = 540876901;
    *v7 = 1701667182;
    *(v6 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v6, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 7uLL)
  {
    *v11 = 0x203D2065756C6176;
    *(v10 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v10, "value = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DISubrangeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id;
  v9[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21DISubrangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14DISubrangeAttrEJNS1_9AttributeESD_SD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v15[1] = v9;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  memset(v17, 0, sizeof(v17));
  memset(__dst, 0, sizeof(__dst));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(__dst, __dst, v17, a2, &v12, &v13, &v14);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DISubrangeAttr::parse(mlir::AsmParser *a1)
{
  v28[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  LOBYTE(v20) = 0;
  v21 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v19 = 0;
  v18[0] = a1;
  v18[1] = &v19 + 3;
  v18[2] = &v26;
  v18[3] = &v19 + 2;
  v18[4] = &v24;
  v18[5] = &v19 + 1;
  v18[6] = &v22;
  v18[7] = &v19;
  v18[8] = &v20;
  v16 = 0;
  v17 = 0;
  if ((*(*a1 + 416))(a1, &v16))
  {
    v2 = v16;
    for (i = v17; mlir::LLVM::DISubrangeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v18, v2, i); i = v15)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v14 = 0;
      v15 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v14))
      {
        v10 = (*(*a1 + 40))(a1);
        v12 = "expected a parameter name in struct";
        v13 = 259;
        (*(*a1 + 24))(v28, a1, v10, &v12);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
        goto LABEL_23;
      }

      v2 = v14;
    }

    goto LABEL_23;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v27)
  {
    v5 = v26;
  }

  else
  {
    v5 = 0;
  }

  if (v25)
  {
    v6 = v24;
  }

  else
  {
    v6 = 0;
  }

  if (v23)
  {
    v7 = v22;
  }

  else
  {
    v7 = 0;
  }

  if (v21)
  {
    v8 = v20;
  }

  else
  {
    v8 = 0;
  }

  result = mlir::LLVM::DISubrangeAttr::get(v4, v5, v6, v7, v8);
LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DISubrangeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v55[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 5)
  {
    if (*a2 != 1853189987 || *(a2 + 4) != 116)
    {
      goto LABEL_32;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v49 = 0;
    v10 = (*(*v9 + 440))(v9, &v49, 0);
    v11 = v49;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10 & 1;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v51 = 259;
      (*(*v13 + 24))(v55, v13, v14, &v49);
      v15 = v55;
LABEL_35:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
LABEL_36:
      v8 = 0;
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v16 = a1[3];
  v17 = a3 != 10;
  if ((*v16 & 1) != 0 || a3 != 10)
  {
LABEL_20:
    v19 = a1[5];
    if ((*v19 & 1) != 0 || v17 || (*a2 == 0x756F427265707075 ? (v20 = *(a2 + 8) == 25710) : (v20 = 0), !v20))
    {
      v21 = a1[7];
      if ((*v21 & 1) != 0 || a3 != 6 || (*a2 == 1769108595 ? (v22 = *(a2 + 4) == 25956) : (v22 = 0), !v22))
      {
LABEL_32:
        v23 = *a1;
        v24 = (*(*v23 + 40))(v23);
        v45 = "duplicate or unknown struct parameter name: ";
        v46 = 259;
        (*(*v23 + 24))(&v49, v23, v24, &v45);
        if (v49)
        {
          v48 = 261;
          v47[0] = a2;
          v47[1] = a3;
          mlir::Diagnostic::operator<<(&v50, v47);
        }

        v15 = &v49;
        goto LABEL_35;
      }

      v8 = 1;
      *v21 = 1;
      v39 = *a1;
      v49 = 0;
      v40 = (*(*v39 + 440))(v39, &v49, 0);
      v41 = v49;
      if ((v40 & 1) == 0)
      {
        v41 = 0;
      }

      v42 = a1[8];
      *v42 = v41;
      *(v42 + 8) = v40 & 1;
      if ((*(a1[8] + 8) & 1) == 0)
      {
        v43 = *a1;
        v44 = (*(*v43 + 40))(v43);
        v51 = 259;
        (*(*v43 + 24))(v52, v43, v44, &v49);
        v15 = v52;
        goto LABEL_35;
      }
    }

    else
    {
      v8 = 1;
      *v19 = 1;
      v33 = *a1;
      v49 = 0;
      v34 = (*(*v33 + 440))(v33, &v49, 0);
      v35 = v49;
      if ((v34 & 1) == 0)
      {
        v35 = 0;
      }

      v36 = a1[6];
      *v36 = v35;
      *(v36 + 8) = v34 & 1;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v37 = *a1;
        v38 = (*(*v37 + 40))(v37);
        v51 = 259;
        (*(*v37 + 24))(v53, v37, v38, &v49);
        v15 = v53;
        goto LABEL_35;
      }
    }

    goto LABEL_37;
  }

  if (*a2 != 0x756F427265776F6CLL || *(a2 + 8) != 25710)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v8 = 1;
  *v16 = 1;
  v27 = *a1;
  v49 = 0;
  v28 = (*(*v27 + 440))(v27, &v49, 0);
  v29 = v49;
  if ((v28 & 1) == 0)
  {
    v29 = 0;
  }

  v30 = a1[4];
  *v30 = v29;
  *(v30 + 8) = v28 & 1;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v31 = *a1;
    v32 = (*(*v31 + 40))(v31);
    v51 = 259;
    (*(*v31 + 24))(v54, v31, v32, &v49);
    v15 = v54;
    goto LABEL_35;
  }

LABEL_37:
  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::DISubrangeAttr::print(mlir::LLVM::DISubrangeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (!*(*this + 8))
  {
    if (!v6[2])
    {
      if (!v6[3])
      {
        if (!v6[4])
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 7uLL)
  {
    *v8 = 0x203D20746E756F63;
    *(v7 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v7, "count = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 8))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

  if (v9[2])
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }

LABEL_18:
    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 0xCuLL)
    {
      qmemcpy(v13, "lowerBound = ", 13);
      *(v12 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v12, "lowerBound = ", 0xDuLL);
    }

    v9 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (v9[3])
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 1uLL)
    {
      *v15 = 8236;
      *(v14 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v14, ", ", 2uLL);
    }

LABEL_27:
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 0xCuLL)
    {
      qmemcpy(v17, "upperBound = ", 13);
      *(v16 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v16, "upperBound = ", 0xDuLL);
    }

    v9 = *this;
    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[4])
  {
    goto LABEL_41;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 8236;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, ", ", 2uLL);
  }

LABEL_36:
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if ((*(v20 + 3) - v21) > 8)
  {
    *(v21 + 8) = 32;
    *v21 = *"stride = ";
    *(v20 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v20, "stride = ", 9uLL);
  }

  if (*(*this + 32))
  {
    (*(*a2 + 40))(a2);
  }

LABEL_41:
  result = (*(*a2 + 16))(a2);
  v23 = *(result + 4);
  if (*(result + 3) == v23)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v23 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DICommonBlockAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id;
  v10[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICommonBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICommonBlockAttrEJNS2_11DIScopeAttrENS2_20DIGlobalVariableAttrENS1_10StringAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v15[1] = v10;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v13 = a5;
  v14 = a6;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v16 = ((a2 >> 4) ^ (a2 >> 9));
  v17 = ((a3 >> 4) ^ (a3 >> 9));
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(&v16, 0, v18, v19, a4, &v13, &v14);
  v11 = v12;
  v16 = v12;
  v17 = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICommonBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICommonBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DICommonBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICommonBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICommonBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DICommonBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v16);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DICommonBlockAttr::parse(mlir::AsmParser *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_57:
    result = 0;
    goto LABEL_58;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v35 = 0;
  v36 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v37 = 0;
  do
  {
    v38 = 0;
    v39 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v38))
    {
      v19 = (*(*a1 + 40))(a1);
      v53 = "expected a parameter name in struct";
      v54[12] = 259;
      (*(*a1 + 24))(v44, a1, v19, &v53);
      v20 = v44;
      goto LABEL_56;
    }

    v9 = v38;
    v10 = v39;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_57;
    }

    if (v8 & 1 | (v10 != 5))
    {
      v11 = v10 != 4;
      if (!(v2 & 1 | v11))
      {
        if (*v9 == 1818453348)
        {
          v13 = mlir::FieldParser<mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIGlobalVariableAttr>::parse(a1);
          if ((v14 & 1) == 0)
          {
            v32 = (*(*a1 + 40))(a1);
            v47 = 259;
            (*(*a1 + 24))(v51, a1, v32, &v45);
            v20 = v51;
            goto LABEL_56;
          }

          v3 = v13;
          v2 = 1;
          continue;
        }

        v11 = 0;
      }

      if (((v4 | v11) & 1) == 0 && *v9 == 1701667182)
      {
        v15 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
        if ((v16 & 1) == 0)
        {
          v33 = (*(*a1 + 40))(a1);
          v47 = 259;
          (*(*a1 + 24))(v50, a1, v33, &v45);
          v20 = v50;
          goto LABEL_56;
        }

        v36 = v15;
        v4 = 1;
      }

      else if (((v6 | v11) & 1) == 0 && *v9 == 1701603686)
      {
        v17 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v18 & 1) == 0)
        {
          v34 = (*(*a1 + 40))(a1);
          v47 = 259;
          (*(*a1 + 24))(v49, a1, v34, &v45);
          v20 = v49;
          goto LABEL_56;
        }

        v35 = v17;
        v6 = 1;
      }

      else
      {
        if (((v7 | v11) & 1) != 0 || *v9 != 1701734764)
        {
          goto LABEL_46;
        }

        LODWORD(v45) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v45) & 1) == 0)
        {
          v29 = (*(*a1 + 40))(a1);
          v47 = 259;
          (*(*a1 + 24))(v48, a1, v29, &v45);
          v20 = v48;
          goto LABEL_56;
        }

        v37 = v45;
        v7 = 1;
      }
    }

    else
    {
      if (*v9 != 1886348147 || *(v9 + 4) != 101)
      {
        v10 = 5;
LABEL_46:
        v26 = (*(*a1 + 40))(a1);
        v40 = "duplicate or unknown struct parameter name: ";
        v41 = 259;
        (*(*a1 + 24))(&v45, a1, v26, &v40);
        if (v45)
        {
          v43 = 261;
          v42[0] = v9;
          v42[1] = v10;
          mlir::Diagnostic::operator<<(&v46, v42);
        }

        v20 = &v45;
LABEL_56:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
        goto LABEL_57;
      }

      v45 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v45))
      {
        v27 = (*(*a1 + 40))(a1);
        v47 = 259;
        (*(*a1 + 24))(&v53, a1, v27, &v45);
LABEL_55:
        v20 = &v53;
        goto LABEL_56;
      }

      v5 = v45;
      v8 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v8 & 1) == 0)
  {
    v28 = (*(*a1 + 40))(a1);
    v51[0] = "struct is missing required parameter: ";
    v52 = 259;
    (*(*a1 + 24))(&v53, a1, v28, v51);
    if (v53)
    {
      mlir::Diagnostic::operator<<<6ul>(v54, "scope");
    }

    goto LABEL_55;
  }

  if ((v4 & 1) == 0)
  {
    v30 = (*(*a1 + 40))(a1);
    v51[0] = "struct is missing required parameter: ";
    v52 = 259;
    (*(*a1 + 24))(&v53, a1, v30, v51);
    if (v53)
    {
      mlir::Diagnostic::operator<<<5ul>(v54, "name");
    }

    goto LABEL_55;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_57;
  }

  v21 = *(*(*a1 + 32))(a1);
  if (v2)
  {
    v22 = v3;
  }

  else
  {
    v22 = 0;
  }

  if (v6)
  {
    v23 = v35;
  }

  else
  {
    v23 = 0;
  }

  if (v7)
  {
    v24 = v37;
  }

  else
  {
    v24 = 0;
  }

  result = mlir::LLVM::DICommonBlockAttr::get(v21, v5, v22, v36, v23, v24);
LABEL_58:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DICommonBlockAttr::print(mlir::LLVM::DICommonBlockAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  if (*(*this + 16))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 6uLL)
    {
      *(v11 + 3) = 540876908;
      *v11 = 1818453348;
      *(v10 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v10, "decl = ", 7uLL);
    }

    v12 = *(*this + 16);
    if (v12)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIGlobalVariableAttr,(void *)0>(a2, v12);
    }
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) - v14 > 1uLL)
  {
    *v14 = 8236;
    *(v13 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v13, ", ", 2uLL);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 6uLL)
  {
    *(v16 + 3) = 540876901;
    *v16 = 1701667182;
    *(v15 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v15, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  v17 = *this;
  if (*(*this + 32))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 6uLL)
    {
      *(v21 + 3) = 540876901;
      *v21 = 1701603686;
      *(v20 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v20, "file = ", 7uLL);
    }

    v17 = *this;
    v22 = *(*this + 32);
    if (v22)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v22);
      v17 = *this;
    }
  }

  if (*(v17 + 40))
  {
    v23 = (*(*a2 + 16))(a2);
    v24 = *(v23 + 4);
    if (*(v23 + 3) - v24 > 1uLL)
    {
      *v24 = 8236;
      *(v23 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v23, ", ", 2uLL);
    }

    v25 = (*(*a2 + 16))(a2);
    v26 = *(v25 + 4);
    if (*(v25 + 3) - v26 > 6uLL)
    {
      *(v26 + 3) = 540876901;
      *v26 = 1701734764;
      *(v25 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v25, "line = ", 7uLL);
    }

    v27 = *(*this + 40);
    if (v27)
    {
      v28 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v28, v27, 0, 0, 0);
    }
  }

  result = (*(*a2 + 16))(a2);
  v30 = *(result + 4);
  if (*(result + 3) == v30)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v30 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIGenericSubrangeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id;
  v9[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail28DIGenericSubrangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_21DIGenericSubrangeAttrEJNS1_9AttributeESD_SD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v15[1] = v9;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  memset(v17, 0, sizeof(v17));
  memset(__dst, 0, sizeof(__dst));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(__dst, __dst, v17, a2, &v12, &v13, &v14);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIGenericSubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGenericSubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGenericSubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGenericSubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGenericSubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGenericSubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIGenericSubrangeAttr::parse(mlir::AsmParser *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_61:
    result = 0;
    goto LABEL_62;
  }

  v2 = 0;
  v3 = 0;
  v30 = 0;
  v31 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v32 = 0;
    v33 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v32))
    {
      v15 = (*(*a1 + 40))(a1);
      v46 = "expected a parameter name in struct";
      v47[12] = 259;
      (*(*a1 + 24))(v38, a1, v15, &v46);
      v16 = v38;
LABEL_60:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
      goto LABEL_61;
    }

    v9 = v32;
    v8 = v33;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v5 & 1 | (v8 != 5))
    {
      v10 = v8 != 10;
      if (!(v2 & 1 | v10))
      {
        if (*v9 == 0x756F427265776F6CLL && *(v9 + 8) == 25710)
        {
          v39 = 0;
          if (((*(*a1 + 440))(a1, &v39, 0) & 1) == 0)
          {
            v28 = (*(*a1 + 40))(a1);
            v41 = 259;
            (*(*a1 + 24))(v44, a1, v28, &v39);
            v16 = v44;
            goto LABEL_60;
          }

          v31 = v39;
          v2 = 1;
          continue;
        }

        v10 = 0;
      }

      if (((v4 | v10) & 1) == 0 && (*v9 == 0x756F427265707075 ? (v12 = *(v9 + 8) == 25710) : (v12 = 0), v12))
      {
        v39 = 0;
        if (((*(*a1 + 440))(a1, &v39, 0) & 1) == 0)
        {
          v29 = (*(*a1 + 40))(a1);
          v41 = 259;
          (*(*a1 + 24))(v43, a1, v29, &v39);
          v16 = v43;
          goto LABEL_60;
        }

        v30 = v39;
        v4 = 1;
      }

      else
      {
        if (v6 & 1 | (v8 != 6))
        {
          v23 = v8;
          goto LABEL_53;
        }

        if (*v9 != 1769108595 || *(v9 + 4) != 25956)
        {
          v23 = 6;
          goto LABEL_53;
        }

        v39 = 0;
        if (((*(*a1 + 440))(a1, &v39, 0) & 1) == 0)
        {
          v25 = (*(*a1 + 40))(a1);
          v41 = 259;
          (*(*a1 + 24))(v42, a1, v25, &v39);
          v16 = v42;
          goto LABEL_60;
        }

        v7 = v39;
        v6 = 1;
      }
    }

    else
    {
      if (*v9 != 1853189987 || *(v9 + 4) != 116)
      {
        v23 = 5;
LABEL_53:
        v24 = (*(*a1 + 40))(a1);
        v34 = "duplicate or unknown struct parameter name: ";
        v35 = 259;
        (*(*a1 + 24))(&v39, a1, v24, &v34);
        if (v39)
        {
          v37 = 261;
          v36[0] = v9;
          v36[1] = v23;
          mlir::Diagnostic::operator<<(&v40, v36);
        }

        v16 = &v39;
        goto LABEL_60;
      }

      v39 = 0;
      if (((*(*a1 + 440))(a1, &v39, 0) & 1) == 0)
      {
        v21 = (*(*a1 + 40))(a1);
        v41 = 259;
        (*(*a1 + 24))(&v46, a1, v21, &v39);
LABEL_59:
        v16 = &v46;
        goto LABEL_60;
      }

      v3 = v39;
      v5 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v2 & 1) == 0)
  {
    v22 = (*(*a1 + 40))(a1);
    v44[0] = "struct is missing required parameter: ";
    v45 = 259;
    (*(*a1 + 24))(&v46, a1, v22, v44);
    if (v46)
    {
      mlir::Diagnostic::operator<<<11ul>(v47, "lowerBound");
    }

    goto LABEL_59;
  }

  if ((v6 & 1) == 0)
  {
    v26 = (*(*a1 + 40))(a1);
    v44[0] = "struct is missing required parameter: ";
    v45 = 259;
    (*(*a1 + 24))(&v46, a1, v26, v44);
    if (v46)
    {
      mlir::Diagnostic::operator<<<7ul>(v47, "stride");
    }

    goto LABEL_59;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_61;
  }

  v17 = *(*(*a1 + 32))(a1);
  if (v5)
  {
    v18 = v3;
  }

  else
  {
    v18 = 0;
  }

  if (v4)
  {
    v19 = v30;
  }

  else
  {
    v19 = 0;
  }

  result = mlir::LLVM::DIGenericSubrangeAttr::get(v17, v18, v31, v19, v7);
LABEL_62:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DIGenericSubrangeAttr::print(mlir::LLVM::DIGenericSubrangeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 7uLL)
    {
      *v7 = 0x203D20746E756F63;
      *(v6 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v6, "count = ", 8uLL);
    }

    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
    }

    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 0xCuLL)
  {
    qmemcpy(v11, "lowerBound = ", 13);
    *(v10 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v10, "lowerBound = ", 0xDuLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  if (*(*this + 24))
  {
    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 1uLL)
    {
      *v13 = 8236;
      *(v12 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v12, ", ", 2uLL);
    }

    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 0xCuLL)
    {
      qmemcpy(v15, "upperBound = ", 13);
      *(v14 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v14, "upperBound = ", 0xDuLL);
    }

    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
    }
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if ((*(v18 + 3) - v19) > 8)
  {
    *(v19 + 8) = 32;
    *v19 = *"stride = ";
    *(v18 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v18, "stride = ", 9uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 32));
  result = (*(*a2 + 16))(a2);
  v21 = *(result + 4);
  if (*(result + 3) == v21)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v21 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DISubroutineTypeAttr::get(uint64_t *a1, unsigned int a2, uint64_t a3, unint64_t *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id;
  v23[1] = a1;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DISubroutineTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DISubroutineTypeAttrEJjNS_8ArrayRefINS2_10DITypeAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v27[1] = v23;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  *&v30[8] = 0;
  *v30 = a2;
  if (a4)
  {
    v6 = a3;
    v7 = 0;
    v8 = (a3 + 8 * a4);
    while (v7 <= 0x38)
    {
      v9 = v7 + 8;
      v10 = *v6;
      v6 += 2;
      *(__src + v7) = (v10 >> 4) ^ (v10 >> 9);
      v7 = v9;
      if (8 * a4 == v9)
      {
        goto LABEL_7;
      }
    }

    v28[0] = xmmword_25D0A0610;
    v28[1] = xmmword_25D0A0620;
    v28[2] = xmmword_25D0A0630;
    v29 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v28, __src, a3, a4);
    if (v7 == 8 * a4)
    {
      v12 = 64;
    }

    else
    {
      v12 = 64;
      do
      {
        v13 = 0;
        do
        {
          v14 = *v6;
          v6 += 2;
          v15 = v13 + 8;
          __src[v13 / 8] = (v14 >> 4) ^ (v14 >> 9);
          if (v6 == v8)
          {
            break;
          }

          v16 = v13 >= 0x31;
          v13 += 8;
        }

        while (!v16);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, __src + v15, &v32);
        llvm::hashing::detail::hash_state::mix(v28, __src, v17, v18);
        v12 += v15;
      }

      while (v6 != v8);
    }

    v11 = llvm::hashing::detail::hash_state::finalize(v28, v12);
  }

  else
  {
    v9 = 0;
LABEL_7:
    v11 = llvm::hashing::detail::hash_short(__src, v9, 0xFF51AFD7ED558CCDLL);
  }

  *&v30[4] = v11;
  v19 = __ROR8__(v11 + 12, 12);
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (*v30 ^ v19 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (*v30 ^ v19 ^ 0xFF51AFD7ED558CCDLL)));
  *&v28[0] = &v24;
  __src[0] = &v24;
  __src[1] = v27;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id, (-348639895 * ((v20 >> 47) ^ v20)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubroutineTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubroutineTypeAttrStorage,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubroutineTypeAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubroutineTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubroutineTypeAttrStorage,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubroutineTypeAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __src);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DISubroutineTypeAttr::parse(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v19) = 0;
  v20 = 0;
  LOBYTE(v27) = 0;
  v30 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    v4 = 0;
    goto LABEL_31;
  }

  v18 = 0;
  v23 = a1;
  v24 = &v18 + 1;
  v25[0] = &v19;
  v25[1] = &v18;
  v25[2] = &v27;
  v16 = 0;
  v17 = 0;
  if ((*(*a1 + 416))(a1, &v16))
  {
    v2 = v16;
    for (i = v17; mlir::LLVM::DISubroutineTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(&v23, v2, i); i = v15)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_9;
      }

      v14 = 0;
      v15 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v14))
      {
        v11 = (*(*a1 + 40))(a1);
        v21[0] = "expected a parameter name in struct";
        v22[8] = 259;
        (*(*a1 + 24))(v26, a1, v11, v21);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
        goto LABEL_27;
      }

      v2 = v14;
    }

    goto LABEL_27;
  }

LABEL_9:
  if ((*(*a1 + 168))(a1))
  {
    v5 = *(*(*a1 + 32))(a1);
    if (v20)
    {
      v6 = v19;
    }

    else
    {
      v6 = 0;
    }

    v21[0] = v22;
    v21[1] = 0x600000000;
    v23 = v25;
    v24 = 0x600000000;
    if (v30 != 1 || (v7 = v28, !v28))
    {
      v7 = 0;
      v10 = v25;
LABEL_22:
      v4 = mlir::LLVM::DISubroutineTypeAttr::get(v5, v6, v10, v7);
      if (v23 != v25)
      {
        free(v23);
      }

      if (v21[0] != v22)
      {
        free(v21[0]);
      }

      goto LABEL_28;
    }

    if (v28 < 7)
    {
      v9 = v25;
      v8 = v28;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v28, 8);
      v8 = v28;
      if (!v28)
      {
LABEL_21:
        LODWORD(v24) = v7;
        v10 = v23;
        goto LABEL_22;
      }

      v9 = v23;
    }

    memcpy(v9, v27, 8 * v8);
    goto LABEL_21;
  }

LABEL_27:
  v4 = 0;
LABEL_28:
  if ((v30 & 1) != 0 && v27 != &v29)
  {
    free(v27);
  }

LABEL_31:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::LLVM::DISubroutineTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(mlir::AsmParser **a1, _DWORD *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 17)
  {
    v15 = a1[3];
    if ((*v15 & 1) != 0 || a3 != 5 || (*a2 == 1701869940 ? (v16 = *(a2 + 4) == 115) : (v16 = 0), !v16))
    {
LABEL_21:
      v17 = *a1;
      v18 = (*(*v17 + 40))(v17);
      v31[0] = "duplicate or unknown struct parameter name: ";
      v32 = 259;
      (*(*v17 + 24))(&v37, v17, v18, v31);
      if (v37)
      {
        v45 = 261;
        v42 = a2;
        v43 = a3;
        mlir::Diagnostic::operator<<(&v38, &v42);
      }

      v19 = &v37;
      goto LABEL_24;
    }

    *v15 = 1;
    v22 = *a1;
    v42 = v44;
    v43 = 0x600000000;
    v31[0] = v22;
    v31[1] = &v42;
    if ((*(*v22 + 392))(v22, 0))
    {
      v37 = v39;
      v38 = 0x600000000;
      if (v43)
      {
        llvm::SmallVectorImpl<mlir::LLVM::DITypeAttr>::operator=(&v37, &v42);
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
      LOBYTE(v37) = 0;
    }

    v41 = v23;
    if (v42 != v44)
    {
      free(v42);
      v23 = v41;
    }

    v24 = a1[4];
    if (*(v24 + 64) == v23)
    {
      if (*(v24 + 64))
      {
        llvm::SmallVectorImpl<mlir::LLVM::DITypeAttr>::operator=(a1[4], &v37);
      }
    }

    else if (*(v24 + 64))
    {
      if (*v24 != v24 + 16)
      {
        free(*v24);
      }

      *(v24 + 64) = 0;
    }

    else
    {
      *v24 = v24 + 16;
      *(v24 + 8) = 0x600000000;
      if (v38)
      {
        llvm::SmallVectorImpl<mlir::LLVM::DITypeAttr>::operator=(v24, &v37);
      }

      *(v24 + 64) = 1;
    }

    if (v41 == 1 && v37 != v39)
    {
      free(v37);
    }

    if ((*(a1[4] + 64) & 1) == 0)
    {
      v29 = *a1;
      v30 = (*(*v29 + 40))(v29);
      v40 = 259;
      (*(*v29 + 24))(v35, v29, v30, &v37);
      v19 = v35;
      goto LABEL_24;
    }

LABEL_55:
    result = 1;
    goto LABEL_26;
  }

  if (*a2 != 0x43676E696C6C6163 || *(a2 + 1) != 0x6F69746E65766E6FLL || *(a2 + 16) != 110)
  {
    goto LABEL_21;
  }

  *v6 = 1;
  v9 = *a1;
  v10 = (*(**a1 + 40))(*a1);
  v33 = 0;
  v34 = 0;
  if (mlir::AsmParser::parseKeyword(v9, &v33))
  {
    CallingConvention = llvm::dwarf::getCallingConvention(v33, v34);
    if (CallingConvention)
    {
      v12 = CallingConvention & 0xFFFFFF00;
      v13 = CallingConvention;
      v14 = 0x100000000;
      goto LABEL_46;
    }

    v32 = 257;
    (*(*v9 + 24))(&v37, v9, v10, v31);
    if (v37)
    {
      mlir::Diagnostic::operator<<<56ul>(&v38, "invalid debug info debug info calling convention name: ");
      if (v37)
      {
        v45 = 261;
        v42 = v33;
        v43 = v34;
        mlir::Diagnostic::operator<<(&v38, &v42);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
  }

  v14 = 0;
  v13 = 0;
  v12 = 0;
LABEL_46:
  v25 = v14 | v12 | v13;
  v26 = a1[2];
  *(v26 + 4) = BYTE4(v14);
  *v26 = v25;
  if (*(a1[2] + 4))
  {
    goto LABEL_55;
  }

  v27 = *a1;
  v28 = (*(*v27 + 40))(v27);
  v40 = 259;
  (*(*v27 + 24))(v36, v27, v28, &v37);
  v19 = v36;
LABEL_24:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
LABEL_25:
  result = 0;
LABEL_26:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DISubroutineTypeAttr::print(mlir::LLVM::DISubroutineTypeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (!*(*this + 8))
  {
    if (!*(*this + 24))
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 0x13)
  {
    *(v7 + 16) = 540876910;
    *v7 = *"callingConvention = ";
    *(v6 + 4) += 20;
  }

  else
  {
    llvm::raw_ostream::write(v6, "callingConvention = ", 0x14uLL);
  }

  v8 = *this;
  v9 = *(*this + 8);
  if (v9)
  {
    v10 = llvm::dwarf::ConventionString(v9);
    v12 = v11;
    v13 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v13, v10, v12);
    v8 = *this;
  }

  if (*(v8 + 24))
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 1uLL)
    {
      *v15 = 8236;
      *(v14 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v14, ", ", 2uLL);
    }

LABEL_16:
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 7uLL)
    {
      *v17 = 0x203D207365707974;
      *(v16 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v16, "types = ", 8uLL);
    }

    v18 = *this;
    v19 = *(*this + 24);
    if (v19)
    {
      v20 = *(v18 + 16);
      (*(*a2 + 40))(a2, *v20);
      if (v19 != 1)
      {
        v21 = v20 + 1;
        v22 = 8 * v19 - 8;
        do
        {
          v23 = (*(*a2 + 16))(a2);
          v24 = *(v23 + 4);
          if (*(v23 + 3) - v24 > 1uLL)
          {
            *v24 = 8236;
            *(v23 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v23, ", ", 2uLL);
          }

          v25 = *v21++;
          (*(*a2 + 40))(a2, v25);
          v22 -= 8;
        }

        while (v22);
      }
    }
  }

LABEL_26:
  result = (*(*a2 + 16))(a2);
  v27 = *(result + 4);
  if (*(result + 3) == v27)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v27 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DILabelAttr::parse(mlir::AsmParser *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_51:
    result = 0;
    goto LABEL_52;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v33 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v34 = 0;
    v35 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v34))
    {
      v17 = (*(*a1 + 40))(a1);
      *&__dst[0] = "expected a parameter name in struct";
      LOWORD(v52) = 259;
      (*(*a1 + 24))(v40, a1, v17, __dst);
      v18 = v40;
      goto LABEL_50;
    }

    v10 = v34;
    v9 = v35;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (v7 & 1 | (v9 != 5))
    {
      v11 = v9 != 4;
      if (!(v2 & 1 | v11))
      {
        if (*v10 == 1701667182)
        {
          v13 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v14 & 1) == 0)
          {
            v30 = (*(*a1 + 40))(a1);
            v43 = 259;
            (*(*a1 + 24))(&v46, a1, v30, &v41);
            v18 = &v46;
            goto LABEL_50;
          }

          v4 = v13;
          v2 = 1;
          continue;
        }

        v11 = 0;
      }

      if (((v5 | v11) & 1) == 0 && *v10 == 1701603686)
      {
        v15 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v16 & 1) == 0)
        {
          v31 = (*(*a1 + 40))(a1);
          v43 = 259;
          (*(*a1 + 24))(v45, a1, v31, &v41);
          v18 = v45;
          goto LABEL_50;
        }

        v33 = v15;
        v5 = 1;
      }

      else
      {
        if (((v6 | v11) & 1) != 0 || *v10 != 1701734764)
        {
          goto LABEL_40;
        }

        LODWORD(v41) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v41) & 1) == 0)
        {
          v29 = (*(*a1 + 40))(a1);
          v43 = 259;
          (*(*a1 + 24))(v44, a1, v29, &v41);
          v18 = v44;
          goto LABEL_50;
        }

        v8 = v41;
        v6 = 1;
      }
    }

    else
    {
      if (*v10 != 1886348147 || *(v10 + 4) != 101)
      {
        v9 = 5;
LABEL_40:
        v26 = (*(*a1 + 40))(a1);
        v36 = "duplicate or unknown struct parameter name: ";
        v37 = 259;
        (*(*a1 + 24))(&v41, a1, v26, &v36);
        if (v41)
        {
          v39 = 261;
          v38[0] = v10;
          v38[1] = v9;
          mlir::Diagnostic::operator<<(&v42, v38);
        }

        v18 = &v41;
LABEL_50:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
        goto LABEL_51;
      }

      v41 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v41))
      {
        v27 = (*(*a1 + 40))(a1);
        v43 = 259;
        (*(*a1 + 24))(__dst, a1, v27, &v41);
LABEL_46:
        v18 = __dst;
        goto LABEL_50;
      }

      v3 = v41;
      v7 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v28 = (*(*a1 + 40))(a1);
    v46 = "struct is missing required parameter: ";
    v50 = 259;
    (*(*a1 + 24))(__dst, a1, v28, &v46);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<6ul>(__dst + 8, "scope");
    }

    goto LABEL_46;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  v19 = *(*(*a1 + 32))(a1);
  if (v2)
  {
    v20 = v4;
  }

  else
  {
    v20 = 0;
  }

  v21 = *v19;
  v22 = v33;
  if ((v5 & 1) == 0)
  {
    v22 = 0;
  }

  v44[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id;
  v44[1] = v19;
  v45[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18DILabelAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11DILabelAttrEJNS2_11DIScopeAttrENS1_10StringAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v45[1] = v44;
  if (v6)
  {
    v23 = v8;
  }

  else
  {
    v23 = 0;
  }

  v46 = v3;
  v47 = v20;
  v48 = v22;
  v49 = v23;
  memset(v54, 0, sizeof(v54));
  v53 = 0u;
  v52 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v55 = 0;
  v56 = 0xFF51AFD7ED558CCDLL;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(__dst, __dst, v54, v3, &v47, &v48, &v49);
  v41 = &v46;
  *&__dst[0] = &v46;
  *(&__dst[0] + 1) = v45;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v21 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, v24, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
LABEL_52:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DILabelAttr::print(mlir::LLVM::DILabelAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = *this;
  if (*(*this + 16))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8236;
      *(v9 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, ", ", 2uLL);
    }

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 6uLL)
    {
      *(v12 + 3) = 540876901;
      *v12 = 1701667182;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "name = ", 7uLL);
    }

    v8 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v8 = *this;
    }
  }

  if (*(v8 + 24))
  {
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }

    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 6uLL)
    {
      *(v16 + 3) = 540876901;
      *v16 = 1701603686;
      *(v15 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v15, "file = ", 7uLL);
    }

    v8 = *this;
    v17 = *(*this + 24);
    if (v17)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v17);
      v8 = *this;
    }
  }

  if (*(v8 + 32))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 6uLL)
    {
      *(v21 + 3) = 540876901;
      *v21 = 1701734764;
      *(v20 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v20, "line = ", 7uLL);
    }

    v22 = *(*this + 32);
    if (v22)
    {
      v23 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v23, v22, 0, 0, 0);
    }
  }

  result = (*(*a2 + 16))(a2);
  v25 = *(result + 4);
  if (*(result + 3) == v25)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v25 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIStringTypeAttr::get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a8;
  v10 = a7;
  v35[13] = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v19[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id;
  v19[1] = a1;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIStringTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIStringTypeAttrEJjNS1_10StringAttrEyjNS2_14DIVariableAttrENS2_16DIExpressionAttrESF_jEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v28[1] = v19;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  memset(v35, 0, 96);
  v35[12] = 0xFF51AFD7ED558CCDLL;
  *&v33[4] = (a3 >> 4) ^ (a3 >> 9);
  *&v33[12] = a4;
  *v33 = a2;
  v34 = a5;
  v29 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v33, &v29, v35, &v35[5], (a6 >> 4) ^ (a6 >> 9));
  v30 = v29;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v33, &v30, v12, &v35[5], (v10 >> 4) ^ (v10 >> 9));
  v31 = v30;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v33, &v31, v13, &v35[5], (v9 >> 4) ^ (v9 >> 9));
  v32 = v31;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v33, &v32, v14, &v35[5], a9);
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v33, v32, v15, &v35[5]);
  v32 = &v20;
  *v33 = &v20;
  *&v33[8] = v28;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v11 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIStringTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIStringTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIStringTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIStringTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIStringTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIStringTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v33);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIStringTypeAttr::parse(mlir::AsmParser *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v3 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v4 = 0;
    v53 = 0;
    v54 = 0;
    v5 = 0;
    v6 = 0;
    v52 = 0;
    do
    {
      v61 = 0;
      v62 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v61))
      {
        v39 = (*(*a1 + 40))(a1);
        v80 = "expected a parameter name in struct";
        v82 = 259;
        (*(*a1 + 24))(v70, a1, v39, &v80);
        v40 = v70;
        goto LABEL_116;
      }

      v8 = v61;
      v7 = v62;
      if (((*(*a1 + 136))(a1) & 1) == 0)
      {
        goto LABEL_117;
      }

      if (v6 & 1 | (v7 != 3))
      {
        if (v4 & 1 | (v7 != 4))
        {
          if (v2 & 1 | (v7 != 10))
          {
            if (v60 & 1 | (v7 != 11))
            {
              if (BYTE4(v58) & 1 | (v7 != 12))
              {
                if (v57 & 1 | (v7 != 15))
                {
                  if (BYTE4(v55) & 1 | (v7 != 17))
                  {
                    if (v55 & 1 | (v7 != 8))
                    {
                      goto LABEL_113;
                    }

                    if (*v8 != 0x676E69646F636E65)
                    {
                      v7 = 8;
                      goto LABEL_113;
                    }

                    v9 = (*(*a1 + 40))(a1);
                    v65 = 0;
                    v66 = 0;
                    if (!mlir::AsmParser::parseKeyword(a1, &v65))
                    {
                      goto LABEL_124;
                    }

                    AttributeEncoding = llvm::dwarf::getAttributeEncoding(v65, v66);
                    if (!AttributeEncoding)
                    {
                      v64 = 257;
                      (*(*a1 + 24))(&v80, a1, v9, v63);
                      if (v80)
                      {
                        mlir::Diagnostic::operator<<<46ul>(v81, "invalid debug info debug info encoding name: ");
                        if (v80)
                        {
                          v69 = 261;
                          v67 = v65;
                          v68 = v66;
                          mlir::Diagnostic::operator<<(v81, &v67);
                        }
                      }

                      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
LABEL_124:
                      v51 = (*(*a1 + 40))(a1);
                      v82 = 259;
                      (*(*a1 + 24))(v71, a1, v51, &v80);
                      v40 = v71;
                      goto LABEL_116;
                    }

                    v52 = AttributeEncoding;
                    LOBYTE(v55) = 1;
                  }

                  else
                  {
                    if (*v8 != 0x6F4C676E69727473 || *(v8 + 8) != 0x78456E6F69746163 || *(v8 + 16) != 112)
                    {
                      v7 = 17;
                      goto LABEL_113;
                    }

                    v28 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(a1);
                    if ((v29 & 1) == 0)
                    {
                      v50 = (*(*a1 + 40))(a1);
                      v82 = 259;
                      (*(*a1 + 24))(v72, a1, v50, &v80);
                      v40 = v72;
                      goto LABEL_116;
                    }

                    v53 = v28;
                    BYTE4(v55) = 1;
                  }
                }

                else
                {
                  if (*v8 != 0x654C676E69727473 || *(v8 + 7) != 0x7078456874676E65)
                  {
                    v7 = 15;
                    goto LABEL_113;
                  }

                  v23 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(a1);
                  if ((v24 & 1) == 0)
                  {
                    v47 = (*(*a1 + 40))(a1);
                    v82 = 259;
                    (*(*a1 + 24))(v73, a1, v47, &v80);
                    v40 = v73;
                    goto LABEL_116;
                  }

                  v54 = v23;
                  v57 = 1;
                }
              }

              else
              {
                if (*v8 != 0x654C676E69727473 || *(v8 + 8) != 1752459118)
                {
                  v7 = 12;
                  goto LABEL_113;
                }

                v19 = (*(*a1 + 40))(a1);
                v63[0] = 0;
                if (((*(*a1 + 440))(a1, v63, 0) & 1) == 0)
                {
                  goto LABEL_110;
                }

                v20 = *(*v63[0] + 136);
                if (v20 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id)
                {
                  v56 = v63[0];
                }

                else
                {
                  v67 = "invalid kind of attribute specified";
                  v69 = 259;
                  (*(*a1 + 24))(&v80, a1, v19, &v67);
                  v25 = v83;
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
                  if (v25 == 1)
                  {
LABEL_110:
                    v46 = (*(*a1 + 40))(a1);
                    v82 = 259;
                    (*(*a1 + 24))(v74, a1, v46, &v80);
                    v40 = v74;
                    goto LABEL_116;
                  }

                  v56 = 0;
                }

                BYTE4(v58) = 1;
              }
            }

            else
            {
              if (*v8 != 0x426E496E67696C61 || *(v8 + 3) != 0x737469426E496E67)
              {
                v7 = 11;
                goto LABEL_113;
              }

              LODWORD(v80) = 0;
              if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v80) & 1) == 0)
              {
                v45 = (*(*a1 + 40))(a1);
                v82 = 259;
                (*(*a1 + 24))(v75, a1, v45, &v80);
                v40 = v75;
                goto LABEL_116;
              }

              LODWORD(v58) = v80;
              v60 = 1;
            }
          }

          else
          {
            if (*v8 != 0x69426E49657A6973 || *(v8 + 8) != 29556)
            {
              v7 = 10;
              goto LABEL_113;
            }

            v80 = 0;
            if ((mlir::AsmParser::parseInteger<unsigned long long>(a1, &v80) & 1) == 0)
            {
              v44 = (*(*a1 + 40))(a1);
              v82 = 259;
              (*(*a1 + 24))(v76, a1, v44, &v80);
              v40 = v76;
              goto LABEL_116;
            }

            v59 = v80;
            v2 = 1;
          }
        }

        else
        {
          if (*v8 != 1701667182)
          {
            v7 = 4;
            goto LABEL_113;
          }

          v14 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v15 & 1) == 0)
          {
            v43 = (*(*a1 + 40))(a1);
            v82 = 259;
            (*(*a1 + 24))(v77, a1, v43, &v80);
            v40 = v77;
            goto LABEL_116;
          }

          v3 = v14;
          v4 = 1;
        }
      }

      else
      {
        if (*v8 != 24948 || *(v8 + 2) != 103)
        {
          v7 = 3;
LABEL_113:
          v48 = (*(*a1 + 40))(a1);
          v63[0] = "duplicate or unknown struct parameter name: ";
          v64 = 259;
          (*(*a1 + 24))(&v80, a1, v48, v63);
          if (v80)
          {
            v69 = 261;
            v67 = v8;
            v68 = v7;
            mlir::Diagnostic::operator<<(v81, &v67);
          }

LABEL_115:
          v40 = &v80;
          goto LABEL_116;
        }

        v12 = (*(*a1 + 40))(a1);
        v65 = 0;
        v66 = 0;
        if (!mlir::AsmParser::parseKeyword(a1, &v65))
        {
          goto LABEL_103;
        }

        Tag = llvm::dwarf::getTag(v65, v66);
        if (Tag == -1)
        {
          v64 = 257;
          (*(*a1 + 24))(&v80, a1, v12, v63);
          if (v80)
          {
            mlir::Diagnostic::operator<<<41ul>(v81, "invalid debug info debug info tag name: ");
            if (v80)
            {
              v69 = 261;
              v67 = v65;
              v68 = v66;
              mlir::Diagnostic::operator<<(v81, &v67);
            }
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
LABEL_103:
          v41 = (*(*a1 + 40))(a1);
          v82 = 259;
          (*(*a1 + 24))(v78, a1, v41, &v80);
          v40 = v78;
LABEL_116:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
          goto LABEL_117;
        }

        v5 = Tag;
        v6 = 1;
      }
    }

    while (((*(*a1 + 128))(a1) & 1) != 0);
    if ((v4 & 1) == 0)
    {
      v42 = (*(*a1 + 40))(a1);
      v78[0] = "struct is missing required parameter: ";
      v79 = 259;
      (*(*a1 + 24))(&v80, a1, v42, v78);
      if (v80)
      {
        mlir::Diagnostic::operator<<<5ul>(v81, "name");
      }

      goto LABEL_115;
    }

    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      goto LABEL_117;
    }

    v30 = *(*(*a1 + 32))(a1);
    if (v6)
    {
      v31 = v5;
    }

    else
    {
      v31 = 0;
    }

    if (v2)
    {
      v32 = v59;
    }

    else
    {
      v32 = 0;
    }

    if (v60)
    {
      v33 = v58;
    }

    else
    {
      v33 = 0;
    }

    if ((v58 & 0x100000000) != 0)
    {
      v34 = v56;
    }

    else
    {
      v34 = 0;
    }

    if (v57)
    {
      v35 = v54;
    }

    else
    {
      v35 = 0;
    }

    if ((v55 & 0x100000000) != 0)
    {
      v36 = v53;
    }

    else
    {
      v36 = 0;
    }

    v37 = v52;
    if ((v55 & 1) == 0)
    {
      v37 = 0;
    }

    result = mlir::LLVM::DIStringTypeAttr::get(v30, v31, v3, v32, v33, v34, v35, v36, v37);
  }

  else
  {
LABEL_117:
    result = 0;
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DIStringTypeAttr::print(mlir::LLVM::DIStringTypeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 5)
    {
      *(v7 + 4) = 8253;
      *v7 = 543646068;
      *(v6 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v6, "tag = ", 6uLL);
    }

    v8 = *(*this + 8);
    if (v8)
    {
      v9 = llvm::dwarf::TagString(v8);
      v11 = v10;
      v12 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v12, v9, v11);
    }

    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 6uLL)
  {
    *(v16 + 3) = 540876901;
    *v16 = 1701667182;
    *(v15 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v15, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v17 = *this;
  if (*(*this + 24))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 0xCuLL)
    {
      qmemcpy(v21, "sizeInBits = ", 13);
      *(v20 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v20, "sizeInBits = ", 0xDuLL);
    }

    v17 = *this;
    v22 = *(*this + 24);
    if (v22)
    {
      v23 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v23, v22, 0, 0, 0);
      v17 = *this;
    }
  }

  if (*(v17 + 32))
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) - v25 > 1uLL)
    {
      *v25 = 8236;
      *(v24 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v24, ", ", 2uLL);
    }

    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if (*(v26 + 3) - v27 > 0xDuLL)
    {
      qmemcpy(v27, "alignInBits = ", 14);
      *(v26 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v26, "alignInBits = ", 0xEuLL);
    }

    v17 = *this;
    v28 = *(*this + 32);
    if (v28)
    {
      v29 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v29, v28, 0, 0, 0);
      v17 = *this;
    }
  }

  if (*(v17 + 40))
  {
    v30 = (*(*a2 + 16))(a2);
    v31 = *(v30 + 4);
    if (*(v30 + 3) - v31 > 1uLL)
    {
      *v31 = 8236;
      *(v30 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v30, ", ", 2uLL);
    }

    v32 = (*(*a2 + 16))(a2);
    v33 = *(v32 + 4);
    if (*(v32 + 3) - v33 > 0xEuLL)
    {
      qmemcpy(v33, "stringLength = ", 15);
      *(v32 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v32, "stringLength = ", 0xFuLL);
    }

    v17 = *this;
    if (*(*this + 40))
    {
      (*(*a2 + 40))(a2);
      v17 = *this;
    }
  }

  if (*(v17 + 48))
  {
    v34 = (*(*a2 + 16))(a2);
    v35 = *(v34 + 4);
    if (*(v34 + 3) - v35 > 1uLL)
    {
      *v35 = 8236;
      *(v34 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v34, ", ", 2uLL);
    }

    v36 = (*(*a2 + 16))(a2);
    v37 = *(v36 + 4);
    if ((*(v36 + 3) - v37) > 0x11)
    {
      *(v37 + 16) = 8253;
      *v37 = *"stringLengthExp = ";
      *(v36 + 4) += 18;
    }

    else
    {
      llvm::raw_ostream::write(v36, "stringLengthExp = ", 0x12uLL);
    }

    v17 = *this;
    v38 = *(*this + 48);
    if (v38)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v38);
      v17 = *this;
    }
  }

  if (*(v17 + 56))
  {
    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if (*(v39 + 3) - v40 > 1uLL)
    {
      *v40 = 8236;
      *(v39 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v39, ", ", 2uLL);
    }

    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if ((*(v41 + 3) - v42) > 0x13)
    {
      *(v42 + 16) = 540876912;
      *v42 = *"stringLocationExp = ";
      *(v41 + 4) += 20;
    }

    else
    {
      llvm::raw_ostream::write(v41, "stringLocationExp = ", 0x14uLL);
    }

    v17 = *this;
    v43 = *(*this + 56);
    if (v43)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v43);
      v17 = *this;
    }
  }

  if (*(v17 + 64))
  {
    v44 = (*(*a2 + 16))(a2);
    v45 = *(v44 + 4);
    if (*(v44 + 3) - v45 > 1uLL)
    {
      *v45 = 8236;
      *(v44 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v44, ", ", 2uLL);
    }

    v46 = (*(*a2 + 16))(a2);
    v47 = *(v46 + 4);
    if ((*(v46 + 3) - v47) > 0xA)
    {
      *(v47 + 7) = 540876903;
      *v47 = *"encoding = ";
      *(v46 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v46, "encoding = ", 0xBuLL);
    }

    v48 = *(*this + 64);
    if (v48)
    {
      v49 = llvm::dwarf::AttributeEncodingString(v48);
      v51 = v50;
      v52 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v52, v49, v51);
    }
  }

  result = (*(*a2 + 16))(a2);
  v54 = *(result + 4);
  if (*(result + 3) == v54)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v54 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::MemoryEffectsAttr::get(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id;
  v8[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24MemoryEffectsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17MemoryEffectsAttrEJNS2_10ModRefInfoESD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v8;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  memset(v15, 0, sizeof(v15));
  v16 = 0xFF51AFD7ED558CCDLL;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v12, 0, v15, &v15[2] + 8);
  v9 = v10;
  v12 = v10;
  v13 = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::MemoryEffectsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::MemoryEffectsAttrStorage,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>(llvm::function_ref<void ()(mlir::LLVM::detail::MemoryEffectsAttrStorage *)>,mlir::TypeID,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::MemoryEffectsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::MemoryEffectsAttrStorage,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>(llvm::function_ref<void ()(mlir::LLVM::detail::MemoryEffectsAttrStorage *)>,mlir::TypeID,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::MemoryEffectsAttr::parse(mlir::AsmParser *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_34:
    result = 0;
    goto LABEL_35;
  }

  v29 = 0;
  v30 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v29))
  {
LABEL_32:
    v20 = (*(*a1 + 40))(a1);
    v41[0] = "expected a parameter name in struct";
    v42 = 259;
    (*(*a1 + 24))(v35, a1, v20, v41);
    v21 = v35;
LABEL_33:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    goto LABEL_34;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 3;
  while (1)
  {
    v9 = v29;
    v10 = v30;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_34;
    }

    if (v6 & 1 | (v10 != 5))
    {
      if (v3 & 1 | (v10 != 6))
      {
        if (v5 & 1 | (v10 != 15))
        {
          goto LABEL_40;
        }

        if (*v9 != 0x7373656363616E69 || *(v9 + 7) != 0x6D654D656C626973)
        {
          v10 = 15;
LABEL_40:
          v27 = (*(*a1 + 40))(a1);
          v31 = "duplicate or unknown struct parameter name: ";
          v32 = 259;
          (*(*a1 + 24))(&v36, a1, v27, &v31);
          if (v36)
          {
            v34 = 261;
            v33[0] = v9;
            v33[1] = v10;
            mlir::Diagnostic::operator<<(&v37, v33);
          }

          v21 = &v36;
          goto LABEL_33;
        }

        v12 = mlir::FieldParser<mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>::parse<mlir::AsmParser>(a1);
        if ((v13 & 1) == 0)
        {
          v28 = (*(*a1 + 40))(a1);
          v38 = 259;
          (*(*a1 + 24))(v39, a1, v28, &v36);
          v21 = v39;
          goto LABEL_33;
        }

        v7 = v12;
        v5 = 1;
      }

      else
      {
        if (*v9 != 1298625121 || *(v9 + 4) != 28005)
        {
          v10 = 6;
          goto LABEL_40;
        }

        v18 = mlir::FieldParser<mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>::parse<mlir::AsmParser>(a1);
        if ((v19 & 1) == 0)
        {
          v26 = (*(*a1 + 40))(a1);
          v38 = 259;
          (*(*a1 + 24))(v40, a1, v26, &v36);
          v21 = v40;
          goto LABEL_33;
        }

        v4 = v18;
        v3 = 1;
      }
    }

    else
    {
      if (*v9 != 1701344367 || *(v9 + 4) != 114)
      {
        v10 = 5;
        goto LABEL_40;
      }

      v15 = mlir::FieldParser<mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>::parse<mlir::AsmParser>(a1);
      if ((v16 & 1) == 0)
      {
        v25 = (*(*a1 + 40))(a1);
        v38 = 259;
        (*(*a1 + 24))(v41, a1, v25, &v36);
        v21 = v41;
        goto LABEL_33;
      }

      v2 = v15;
      v6 = 1;
    }

    if (!--v8)
    {
      break;
    }

    if (((*(*a1 + 120))(a1) & 1) == 0)
    {
      goto LABEL_34;
    }

    v29 = 0;
    v30 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v29))
    {
      goto LABEL_32;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  v24 = (*(*a1 + 32))(a1);
  result = mlir::LLVM::MemoryEffectsAttr::get(*v24, v2, v4, v7);
LABEL_35:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::MemoryEffectsAttr::print(mlir::LLVM::MemoryEffectsAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D20726568746FLL;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "other = ", 8uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::ModRefInfo,(void *)0>(a2, *(*this + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) > 8)
  {
    *(v11 + 8) = 32;
    *v11 = *"argMem = ";
    *(v10 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v10, "argMem = ", 9uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::ModRefInfo,(void *)0>(a2, *(*this + 16));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 1uLL)
  {
    *v13 = 8236;
    *(v12 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, ", ", 2uLL);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 0x11)
  {
    *(v15 + 16) = 8253;
    *v15 = *"inaccessibleMem = ";
    *(v14 + 4) += 18;
  }

  else
  {
    llvm::raw_ostream::write(v14, "inaccessibleMem = ", 0x12uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::ModRefInfo,(void *)0>(a2, *(*this + 24));
  result = (*(*a2 + 16))(a2);
  v17 = *(result + 4);
  if (*(result + 3) == v17)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v17 = 62;
    ++*(result + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::ModRefInfo,(void *)0>(uint64_t a1, unint64_t a2)
{
  v3 = (*(*a1 + 16))(a1);
  if (a2 > 3)
  {
    v4 = 0;
    v5 = &str_2_25;
  }

  else
  {
    v4 = qword_25D0A0158[a2];
    v5 = off_2799BE8D8[a2];
  }

  return llvm::raw_ostream::operator<<(v3, v5, v4);
}

uint64_t mlir::LLVM::AliasScopeDomainAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id;
  v7[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27AliasScopeDomainAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20AliasScopeDomainAttrEJNS1_9AttributeENS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v9 = a2;
  v10 = a3;
  memset(v13, 0, sizeof(v13));
  memset(__dst, 0, sizeof(__dst));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::StringAttr>(__dst, __dst, v13, a2, &v10);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::Attribute,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::Attribute,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::AliasScopeDomainAttr::get(uint64_t *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *&__dst[0] = *(*a1 + 608);
  v4 = mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(*(***&__dst[0] + 32), __dst);
  v5 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id;
  v9[1] = a1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27AliasScopeDomainAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20AliasScopeDomainAttrEJNS1_12DistinctAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v13[1] = v9;
  v11 = v4;
  v12 = a2;
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::StringAttr>(__dst, __dst, v15, v4, &v12);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v13;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::DistinctAttr,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::DistinctAttr,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::AliasScopeDomainAttr::parse(mlir::AsmParser *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_35:
    result = 0;
    goto LABEL_36;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v21 = 0;
    v22 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v21))
    {
      v14 = (*(*a1 + 40))(a1);
      v33 = "expected a parameter name in struct";
      v34[12] = 259;
      (*(*a1 + 24))(v27, a1, v14, &v33);
      v15 = v27;
      goto LABEL_34;
    }

    v7 = v21;
    v6 = v22;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_35;
    }

    if (v4 & 1 | (v6 != 2))
    {
      if (v3 & 1 | (v6 != 11))
      {
        goto LABEL_27;
      }

      if (*v7 != 0x7470697263736564 || *(v7 + 3) != 0x6E6F697470697263)
      {
        v6 = 11;
        goto LABEL_27;
      }

      v9 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v10 & 1) == 0)
      {
        v18 = (*(*a1 + 40))(a1);
        v30 = 259;
        (*(*a1 + 24))(v31, a1, v18, &v28);
        v15 = v31;
        goto LABEL_34;
      }

      v5 = v9;
      v3 = 1;
      continue;
    }

    if (*v7 != 25705)
    {
      v6 = 2;
LABEL_27:
      v17 = (*(*a1 + 40))(a1);
      v23 = "duplicate or unknown struct parameter name: ";
      v24 = 259;
      (*(*a1 + 24))(&v28, a1, v17, &v23);
      if (v28)
      {
        v26 = 261;
        v25[0] = v7;
        v25[1] = v6;
        mlir::Diagnostic::operator<<(&v29, v25);
      }

      v15 = &v28;
LABEL_34:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      goto LABEL_35;
    }

    v28 = 0;
    if (((*(*a1 + 440))(a1, &v28, 0) & 1) == 0)
    {
      v16 = (*(*a1 + 40))(a1);
      v30 = 259;
      (*(*a1 + 24))(&v33, a1, v16, &v28);
LABEL_33:
      v15 = &v33;
      goto LABEL_34;
    }

    v2 = v28;
    v4 = 1;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v4 & 1) == 0)
  {
    v19 = (*(*a1 + 40))(a1);
    v31[0] = "struct is missing required parameter: ";
    v32 = 259;
    (*(*a1 + 24))(&v33, a1, v19, v31);
    if (v33)
    {
      mlir::Diagnostic::operator<<<3ul>(v34, "id");
    }

    goto LABEL_33;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v11 = *(*(*a1 + 32))(a1);
  if (v3)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  result = mlir::LLVM::AliasScopeDomainAttr::get(v11, v2, v12);
LABEL_36:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::AliasScopeDomainAttr::print(mlir::LLVM::AliasScopeDomainAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  if (*(*this + 16))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 0xDuLL)
    {
      qmemcpy(v11, "description = ", 14);
      *(v10 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v10, "description = ", 0xEuLL);
    }

    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
    }
  }

  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::LLVM::AliasScopeAttr,mlir::Attribute,mlir::LLVM::detail::AliasScopeAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = *(*a4 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v10 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID())
  {
    goto LABEL_7;
  }

  a1(__dst, a2);
  if (*&__dst[0])
  {
    mlir::Diagnostic::operator<<<61ul>(__dst + 8, "id of an alias scope must be a StringAttr or a DistrinctAttr");
  }

  v13 = v28;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
  if ((v13 & 1) == 0)
  {
LABEL_7:
    v15 = *a3;
    v18[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id;
    v18[1] = a3;
    v23[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJRNS1_9AttributeERNS2_20AliasScopeDomainAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
    v23[1] = v18;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    memset(v25, 0, sizeof(v25));
    memset(__dst, 0, sizeof(__dst));
    v26 = 0;
    v27 = 0xFF51AFD7ED558CCDLL;
    v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(__dst, __dst, v25, a4, &v21, &v22);
    v19 = &v20;
    *&__dst[0] = &v20;
    *(&__dst[0] + 1) = v23;
    result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v15 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  }

  else
  {
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::AliasScopeAttr::get(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(**a1 + 32);
  *&__dst[0] = *(*v4 + 608);
  v5 = mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(*(***&__dst[0] + 32), __dst);
  v6 = *v4;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id;
  v10[1] = v4;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJNS1_12DistinctAttrERNS2_20AliasScopeDomainAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v15[1] = v10;
  v12 = v5;
  v13 = a1;
  v14 = a2;
  memset(v17, 0, sizeof(v17));
  memset(__dst, 0, sizeof(__dst));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(__dst, __dst, v17, v5, &v13, &v14);
  v11 = &v12;
  *&__dst[0] = &v12;
  *(&__dst[0] + 1) = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::AliasScopeAttr::parse(mlir::AsmParser *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v2 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v31 = v2;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v32 = 0;
      v33 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v32))
      {
        v22 = (*(*a1 + 40))(a1);
        v43 = "expected a parameter name in struct";
        v45 = 259;
        (*(*a1 + 24))(v38, a1, v22, &v43);
        v23 = v38;
LABEL_45:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
        goto LABEL_46;
      }

      v9 = v32;
      v10 = v33;
      if (((*(*a1 + 136))(a1) & 1) == 0)
      {
        goto LABEL_46;
      }

      if (v7 & 1 | (v10 != 2))
      {
        if (v4 & 1 | (v10 != 6))
        {
          if (v6 & 1 | (v10 != 11))
          {
            goto LABEL_42;
          }

          if (*v9 != 0x7470697263736564 || *(v9 + 3) != 0x6E6F697470697263)
          {
            v10 = 11;
LABEL_42:
            v27 = (*(*a1 + 40))(a1);
            v34[0] = "duplicate or unknown struct parameter name: ";
            v35 = 259;
            (*(*a1 + 24))(&v43, a1, v27, v34);
            if (v43)
            {
              v37 = 261;
              v36[0] = v9;
              v36[1] = v10;
              mlir::Diagnostic::operator<<(v44, v36);
            }

LABEL_44:
            v23 = &v43;
            goto LABEL_45;
          }

          v12 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v13 & 1) == 0)
          {
            v29 = (*(*a1 + 40))(a1);
            v45 = 259;
            (*(*a1 + 24))(v39, a1, v29, &v43);
            v23 = v39;
            goto LABEL_45;
          }

          v8 = v12;
          v6 = 1;
        }

        else
        {
          if (*v9 != 1634561892 || *(v9 + 4) != 28265)
          {
            v10 = 6;
            goto LABEL_42;
          }

          v15 = (*(*a1 + 32))(a1);
          mlir::MLIRContext::getOrLoadDialect(*v15, "llvm", 4uLL, v16);
          v17 = (*(*a1 + 40))(a1);
          v34[0] = 0;
          v43 = a1;
          if (((*(*a1 + 448))(a1, v34, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20AliasScopeDomainAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v43) & 1) == 0)
          {
            goto LABEL_41;
          }

          v5 = v34[0];
          if (*(*v34[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id)
          {
            v36[0] = "invalid kind of attribute specified";
            v37 = 259;
            (*(*a1 + 24))(&v43, a1, v17, v36);
            v18 = v46;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
            if (v18 == 1)
            {
LABEL_41:
              v26 = (*(*a1 + 40))(a1);
              v45 = 259;
              (*(*a1 + 24))(v40, a1, v26, &v43);
              v23 = v40;
              goto LABEL_45;
            }

            v5 = 0;
          }

          v4 = 1;
        }
      }

      else
      {
        if (*v9 != 25705)
        {
          v10 = 2;
          goto LABEL_42;
        }

        v43 = 0;
        if (((*(*a1 + 440))(a1, &v43, 0) & 1) == 0)
        {
          v24 = (*(*a1 + 40))(a1);
          v45 = 259;
          (*(*a1 + 24))(v41, a1, v24, &v43);
          v23 = v41;
          goto LABEL_45;
        }

        v3 = v43;
        v7 = 1;
      }
    }

    while (((*(*a1 + 128))(a1) & 1) != 0);
    if ((v7 & 1) == 0)
    {
      v25 = (*(*a1 + 40))(a1);
      v41[0] = "struct is missing required parameter: ";
      v42 = 259;
      (*(*a1 + 24))(&v43, a1, v25, v41);
      if (v43)
      {
        mlir::Diagnostic::operator<<<3ul>(v44, "id");
      }

      goto LABEL_44;
    }

    if ((v4 & 1) == 0)
    {
      v30 = (*(*a1 + 40))(a1);
      v41[0] = "struct is missing required parameter: ";
      v42 = 259;
      (*(*a1 + 24))(&v43, a1, v30, v41);
      if (v43)
      {
        mlir::Diagnostic::operator<<<7ul>(v44, "domain");
      }

      goto LABEL_44;
    }

    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      goto LABEL_46;
    }

    v19 = *(*(*a1 + 32))(a1);
    if (v6)
    {
      v20 = v8;
    }

    else
    {
      v20 = 0;
    }

    v41[0] = v31;
    v43 = a1;
    v44[0] = v41;
    result = mlir::detail::StorageUserBase<mlir::LLVM::AliasScopeAttr,mlir::Attribute,mlir::LLVM::detail::AliasScopeAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM14AliasScopeAttrEJPNS1_11MLIRContextENS1_9AttributeENS8_20AliasScopeDomainAttrENS1_10StringAttrEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v43, v19, v3, v5, v20);
  }

  else
  {
LABEL_46:
    result = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::AliasScopeAttr::print(mlir::LLVM::AliasScopeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) > 8)
  {
    *(v11 + 8) = 32;
    *v11 = *"domain = ";
    *(v10 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v10, "domain = ", 9uLL);
  }

  v12 = *(*this + 16);
  v21 = v12;
  if (((*(*a2 + 56))(a2, v12) & 1) == 0)
  {
    v13 = (*(*a2 + 16))(a2);
    v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
    mlir::LLVM::AliasScopeDomainAttr::print(&v21, a2);
    if (v14 == (*(*v13 + 80))(v13) + v13[4] - v13[2])
    {
      (*(*a2 + 40))(a2, v12);
    }
  }

  if (*(*this + 24))
  {
    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 1uLL)
    {
      *v16 = 8236;
      *(v15 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v15, ", ", 2uLL);
    }

    v17 = (*(*a2 + 16))(a2);
    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 0xDuLL)
    {
      qmemcpy(v18, "description = ", 14);
      *(v17 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v17, "description = ", 0xEuLL);
    }

    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
    }
  }

  result = (*(*a2 + 16))(a2);
  v20 = *(result + 4);
  if (*(result + 3) == v20)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v20 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::AccessGroupAttr::get(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id;
  v5[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22AccessGroupAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15AccessGroupAttrEJNS1_12DistinctAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v9[1] = v5;
  v8 = a2;
  v3 = 0x9DDFEA08EB382D69 * ((8 * ((a2 >> 4) ^ (a2 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v6[0] = &v8;
  v6[1] = v9;
  v7 = &v8;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v3 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AccessGroupAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AccessGroupAttrStorage,mlir::DistinctAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AccessGroupAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AccessGroupAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AccessGroupAttrStorage,mlir::DistinctAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AccessGroupAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v6);
}

uint64_t mlir::LLVM::AccessGroupAttr::parse(mlir::AsmParser *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = 0;
  v13 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v12))
  {
    v6 = (*(*a1 + 40))(a1);
    v21[0] = "expected a parameter name in struct";
    v22 = 259;
    (*(*a1 + 24))(v18, a1, v6, v21);
    v5 = v18;
LABEL_10:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
    goto LABEL_11;
  }

  v2 = v12;
  v3 = v13;
  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v3 != 2 || *v2 != 25705)
  {
    v4 = (*(*a1 + 40))(a1);
    v14 = "duplicate or unknown struct parameter name: ";
    v15 = 259;
    (*(*a1 + 24))(&v19, a1, v4, &v14);
    if (v19)
    {
      v17 = 261;
      v16[0] = v2;
      v16[1] = v3;
      mlir::Diagnostic::operator<<(v20, v16);
    }

    v5 = &v19;
    goto LABEL_10;
  }

  v19 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(a1, &v19))
  {
    v11 = (*(*a1 + 40))(a1);
    v20[12] = 259;
    (*(*a1 + 24))(v21, a1, v11, &v19);
    v5 = v21;
    goto LABEL_10;
  }

  v9 = v19;
  if ((*(*a1 + 168))(a1))
  {
    v10 = (*(*a1 + 32))(a1);
    result = mlir::LLVM::AccessGroupAttr::get(*v10, v9);
    goto LABEL_12;
  }

LABEL_11:
  result = 0;
LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::AccessGroupAttr::print(mlir::LLVM::AccessGroupAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v9 = *(result + 4);
  if (*(result + 3) == v9)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v9 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::TBAARootAttr::get(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19TBAARootAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12TBAARootAttrEJNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v9[1] = v6;
  v8 = a2;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(v10, 0, v10, v11, &v8);
  v7 = &v8;
  *&v10[0] = &v8;
  *(&v10[0] + 1) = v9;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAARootAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAARootAttrStorage,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAARootAttrStorage *)>,mlir::TypeID,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAARootAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAARootAttrStorage,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAARootAttrStorage *)>,mlir::TypeID,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::TBAARootAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, _WORD *a2, uint64_t a3)
{
  v24[26] = *MEMORY[0x277D85DE8];
  if ((*(**a1 + 136))(*a1))
  {
    v6 = a1[1];
    if ((*v6 & 1) == 0 && a3 == 2 && *a2 == 25705)
    {
      v10 = 1;
      *v6 = 1;
      v13 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
      v14 = a1[2];
      *v14 = v13;
      *(v14 + 8) = v15;
      if (*(a1[2] + 8))
      {
        goto LABEL_10;
      }

      v16 = *a1;
      v17 = (*(**a1 + 40))(*a1);
      v23[12] = 259;
      (*(*v16 + 24))(v24, v16, v17, &v22);
      v9 = v24;
    }

    else
    {
      v7 = *a1;
      v8 = (*(*v7 + 40))(v7);
      v18 = "duplicate or unknown struct parameter name: ";
      v19 = 259;
      (*(*v7 + 24))(&v22, v7, v8, &v18);
      if (v22)
      {
        v21 = 261;
        v20[0] = a2;
        v20[1] = a3;
        mlir::Diagnostic::operator<<(v23, v20);
      }

      v9 = &v22;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v10 = 0;
LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

llvm::raw_ostream *mlir::LLVM::TBAARootAttr::print(llvm::raw_ostream *this, mlir::AsmPrinter *a2)
{
  if (*(*this + 8))
  {
    v3 = this;
    v4 = (*(*a2 + 16))(a2);
    v5 = *(v4 + 4);
    if (*(v4 + 3) == v5)
    {
      llvm::raw_ostream::write(v4, "<", 1uLL);
    }

    else
    {
      *v5 = 60;
      ++*(v4 + 4);
    }

    if (*(*v3 + 8))
    {
      v6 = (*(*a2 + 16))(a2);
      v7 = *(v6 + 4);
      if ((*(v6 + 3) - v7) > 4)
      {
        *(v7 + 4) = 32;
        *v7 = 1025533033;
        *(v6 + 4) += 5;
      }

      else
      {
        llvm::raw_ostream::write(v6, "id = ", 5uLL);
      }

      if (*(*v3 + 8))
      {
        (*(*a2 + 40))(a2);
      }
    }

    this = (*(*a2 + 16))(a2);
    v8 = *(this + 4);
    if (*(this + 3) == v8)
    {

      return llvm::raw_ostream::write(this, ">", 1uLL);
    }

    else
    {
      *v8 = 62;
      ++*(this + 4);
    }
  }

  return this;
}

uint64_t mlir::LLVM::TBAAMemberAttr::parse(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  v2 = (*(*a1 + 40))(a1);
  v25 = 0;
  if (((*(*a1 + 440))(a1, &v25, 0) & 1) == 0)
  {
    v7 = *a1;
    goto LABEL_12;
  }

  v3 = v25;
  v4 = *(*v25 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id)
  {
    v6 = v25;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *a1;
    goto LABEL_16;
  }

  v21[0] = "invalid kind of attribute specified";
  v22 = 259;
  (*(*a1 + 24))(__dst, a1, v2, v21);
  v10 = v35;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
  v7 = *a1;
  if (v10 == 1)
  {
LABEL_12:
    v8 = (*(v7 + 40))(a1);
    LOWORD(v30) = 259;
    (*(*a1 + 24))(v28, a1, v8, __dst);
    v9 = v28;
LABEL_13:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
LABEL_20:
    result = 0;
    goto LABEL_21;
  }

  v3 = 0;
LABEL_16:
  if (((*(v7 + 120))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  *&__dst[0] = 0;
  v11 = mlir::AsmParser::parseInteger<long long>(a1, __dst);
  v12 = *a1;
  if ((v11 & 1) == 0)
  {
    v20 = (*(v12 + 40))(a1);
    LOWORD(v30) = 259;
    (*(*a1 + 24))(v27, a1, v20, __dst);
    v9 = v27;
    goto LABEL_13;
  }

  v13 = *&__dst[0];
  if (((*(v12 + 168))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  v14 = (*(*a1 + 32))(a1);
  v15 = *v14;
  v16 = **v14;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id;
  v23[1] = v15;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21TBAAMemberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14TBAAMemberAttrEJNS2_12TBAANodeAttrExEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v21[1] = v23;
  v25 = v6;
  v26 = v13;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v33 = 0;
  v34 = 0xFF51AFD7ED558CCDLL;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::TBAANodeAttr,long long>(__dst, __dst, v32, v3, &v26);
  v24 = &v25;
  *&__dst[0] = &v25;
  *(&__dst[0] + 1) = v21;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v16 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr,long long>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr,long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr,long long>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr,long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
LABEL_21:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::TBAAMemberAttr::print(mlir::LLVM::TBAAMemberAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 8236;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  v8 = *(*this + 16);
  v9 = (*(*a2 + 16))(a2);
  llvm::write_integer(v9, v8, 0, 0);
  result = (*(*a2 + 16))(a2);
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::TBAATypeDescriptorAttr::get(uint64_t *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v25[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id;
  v25[1] = a1;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29TBAATypeDescriptorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22TBAATypeDescriptorAttrEJNS_9StringRefENS_8ArrayRefINS2_14TBAAMemberAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v27[1] = v25;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  memset(&v30[1], 0, 112);
  v30[15] = 0xFF51AFD7ED558CCDLL;
  v30[0] = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + a3, a3, a4);
  if (a5)
  {
    v10 = 0;
    v11 = &v6[a5];
    while (v10 <= 0x38)
    {
      v12 = v10 + 8;
      v13 = *v6++;
      *&__src[v10] = (v13 >> 4) ^ (v13 >> 9);
      v10 = v12;
      if (8 * a5 == v12)
      {
        goto LABEL_7;
      }
    }

    v28[0] = xmmword_25D0A0610;
    v28[1] = xmmword_25D0A0620;
    v28[2] = xmmword_25D0A0630;
    v29 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v28, __src, v8, v9);
    if (v10 == 8 * a5)
    {
      v15 = 64;
    }

    else
    {
      v15 = 64;
      do
      {
        v16 = 0;
        do
        {
          v17 = *v6++;
          v18 = v16 + 8;
          *&__src[v16] = (v17 >> 4) ^ (v17 >> 9);
          if (v6 == v11)
          {
            break;
          }

          v19 = v16 >= 0x31;
          v16 += 8;
        }

        while (!v19);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v18], &v32);
        llvm::hashing::detail::hash_state::mix(v28, __src, v20, v21);
        v15 += v18;
      }

      while (v6 != v11);
    }

    v14 = llvm::hashing::detail::hash_state::finalize(v28, v15);
  }

  else
  {
    v12 = 0;
LABEL_7:
    v14 = llvm::hashing::detail::hash_short(__src, v12, 0xFF51AFD7ED558CCDLL);
  }

  v30[1] = v14;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v30, 0, &v30[2], &v30[8]);
  *__src = v26;
  v30[0] = v26;
  v30[1] = v27;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v7 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id, v22, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATypeDescriptorAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, __src, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATypeDescriptorAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v30);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::TBAATypeDescriptorAttr::parse(mlir::AsmParser *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v25[0]) = 0;
  v27 = 0;
  LOBYTE(v30) = 0;
  v33 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_59:
    v14 = 0;
    goto LABEL_60;
  }

  v23 = 0;
  v24 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v23))
  {
LABEL_57:
    v12 = (*(*a1 + 40))(a1);
    v43[0] = "expected a parameter name in struct";
    v44 = 259;
    (*(*a1 + 24))(v29, a1, v12, v43);
    p_p = v29;
LABEL_58:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(p_p);
    goto LABEL_59;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v6 = v23;
    v5 = v24;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_59;
    }

    if (v2 & 1 | (v5 != 2))
    {
      break;
    }

    if (*v6 != 25705)
    {
      v5 = 2;
      goto LABEL_77;
    }

    mlir::FieldParser<std::string,std::string>::parse(a1, &__p);
    v8 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v25, &__p);
    if (v35[8] == 1 && (v35[7] & 0x80000000) != 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    if ((v27 & 1) == 0)
    {
      v20 = (*(*a1 + 40))(a1, v8);
      v36 = 259;
      (*(*a1 + 24))(v43, a1, v20, &__p);
      p_p = v43;
      goto LABEL_58;
    }

    v2 = 1;
    if (v4)
    {
      goto LABEL_67;
    }

LABEL_55:
    if (((*(*a1 + 120))(a1, v8) & 1) == 0)
    {
      goto LABEL_59;
    }

    v23 = 0;
    v24 = 0;
    v4 = 1;
    if (!mlir::AsmParser::parseKeyword(a1, &v23))
    {
      goto LABEL_57;
    }
  }

  if (v3 & 1 | (v5 != 7))
  {
    goto LABEL_77;
  }

  if (*v6 != 1651336557 || *(v6 + 3) != 1936876898)
  {
    v5 = 7;
LABEL_77:
    v21 = (*(*a1 + 40))(a1);
    v45 = "duplicate or unknown struct parameter name: ";
    v47[8] = 259;
    (*(*a1 + 24))(&__p, a1, v21, &v45);
    if (__p.n128_u64[0])
    {
      v41[8] = 261;
      v39 = v6;
      v40 = v5;
      mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v39);
    }

    p_p = &__p;
    goto LABEL_58;
  }

  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    v10 = 0;
    LOBYTE(v39) = 0;
    v42 = 0;
    goto LABEL_40;
  }

  v45 = v47;
  v46 = 0x600000000;
  v28[0] = a1;
  v28[1] = &v45;
  if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::TBAAMemberAttr,6u>,llvm::SmallVector<mlir::LLVM::TBAAMemberAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v28, 0, 0))
  {
    __p.n128_u64[0] = v35;
    __p.n128_u64[1] = 0x600000000;
    if (v46)
    {
      llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(&__p, &v45);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
    __p.n128_u8[0] = 0;
  }

  v37 = v9;
  if (v45 != v47)
  {
    free(v45);
    v9 = v37;
  }

  if (v9)
  {
    v11 = (*(*a1 + 88))(a1);
    LOBYTE(v39) = 0;
    v42 = 0;
    if ((v11 & 1) == 0 || v37 != 1)
    {
      v10 = 0;
      goto LABEL_37;
    }

    v39 = v41;
    v40 = 0x600000000;
    if (__p.n128_u32[2])
    {
      llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(&v39, &__p);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
    LOBYTE(v39) = 0;
  }

  v42 = v10;
LABEL_37:
  if (v37 == 1 && __p.n128_u64[0] != v35)
  {
    free(__p.n128_u64[0]);
    v10 = v42;
  }

LABEL_40:
  if (v33 == v10)
  {
    if (v33)
    {
      llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(&v30, &v39);
    }
  }

  else if (v33)
  {
    if (v30 != v32)
    {
      free(v30);
    }

    v33 = 0;
  }

  else
  {
    v30 = v32;
    v31 = 0x600000000;
    if (v40)
    {
      llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(&v30, &v39);
    }

    v33 = 1;
  }

  if (v42 == 1 && v39 != v41)
  {
    free(v39);
  }

  if ((v33 & 1) == 0)
  {
    v22 = (*(*a1 + 40))(a1);
    v36 = 259;
    (*(*a1 + 24))(v38, a1, v22, &__p);
    p_p = v38;
    goto LABEL_58;
  }

  v3 = 1;
  if ((v4 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_67:
  if (((*(*a1 + 168))(a1, v8) & 1) == 0)
  {
    goto LABEL_59;
  }

  v17 = *(*(*a1 + 32))(a1);
  if (v26 >= 0)
  {
    v18 = v25;
  }

  else
  {
    v18 = v25[0];
  }

  if (v26 >= 0)
  {
    v19 = v26;
  }

  else
  {
    v19 = v25[1];
  }

  v14 = mlir::LLVM::TBAATypeDescriptorAttr::get(v17, v18, v19, v30, v31);
LABEL_60:
  if (v33 == 1 && v30 != v32)
  {
    free(v30);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

llvm::raw_ostream *mlir::LLVM::TBAATypeDescriptorAttr::print(mlir::LLVM::TBAATypeDescriptorAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) > 9)
  {
    *(v11 + 8) = 8253;
    *v11 = *"members = ";
    *(v10 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v10, "members = ", 0xAuLL);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 123);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 123;
  }

  v14 = *this;
  v15 = *(*this + 32);
  if (v15)
  {
    v16 = *(v14 + 24);
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAAMemberAttr,(void *)0>(a2, *v16);
    if (v15 != 1)
    {
      v17 = v16 + 1;
      v18 = 8 * v15 - 8;
      do
      {
        v19 = (*(*a2 + 16))(a2);
        v20 = *(v19 + 4);
        if (*(v19 + 3) - v20 > 1uLL)
        {
          *v20 = 8236;
          *(v19 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v19, ", ", 2uLL);
        }

        v21 = *v17++;
        mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAAMemberAttr,(void *)0>(a2, v21);
        v18 -= 8;
      }

      while (v18);
    }
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 125);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 125;
  }

  result = (*(*a2 + 16))(a2);
  v25 = *(result + 4);
  if (*(result + 3) == v25)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v25 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::TBAATagAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id;
  v12[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18TBAATagAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11TBAATagAttrEJNS2_22TBAATypeDescriptorAttrESD_xbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v15[1] = v12;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v14 = a5;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v23 = 0xFF51AFD7ED558CCDLL;
  memset(v20, 0, sizeof(v20));
  v18 = ((a2 >> 4) ^ (a2 >> 9));
  v19 = ((a3 >> 4) ^ (a3 >> 9));
  v16 = 0;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<long long>(&v18, &v16, v20, v21, a4);
  v17 = v16;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(&v18, &v17, v7, v21, a5);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v18, v17, v8, v21);
  v17 = v13;
  v18 = v13;
  v19 = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAATagAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATagAttrStorage,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATagAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAATagAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATagAttrStorage,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATagAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::TBAATagAttr::parse(mlir::AsmParser *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_56:
    result = 0;
    goto LABEL_57;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v31 = 0;
  v7 = 0;
  v30 = 0;
  do
  {
    v32 = 0;
    v33 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v32))
    {
      v19 = (*(*a1 + 40))(a1);
      v46 = "expected a parameter name in struct";
      v47[12] = 259;
      (*(*a1 + 24))(v38, a1, v19, &v46);
      v20 = v38;
LABEL_55:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
      goto LABEL_56;
    }

    v8 = v32;
    v9 = v33;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_56;
    }

    if (v6 & 1 | (v9 != 9))
    {
      if (v3 & 1 | (v9 != 11))
      {
        if (v5 & 1 | (v9 != 6))
        {
          if (v7 & 1 | (v9 != 8))
          {
            goto LABEL_47;
          }

          if (*v8 != 0x746E6174736E6F63)
          {
            v9 = 8;
            goto LABEL_47;
          }

          LOBYTE(v39) = 0;
          if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v39) & 1) == 0)
          {
            v27 = (*(*a1 + 40))(a1);
            v41 = 259;
            (*(*a1 + 24))(v42, a1, v27, &v39);
            v20 = v42;
            goto LABEL_55;
          }

          v30 = v39;
          v7 = 1;
        }

        else
        {
          if (*v8 != 1936090735 || *(v8 + 4) != 29797)
          {
            v9 = 6;
LABEL_47:
            v25 = (*(*a1 + 40))(a1);
            v34 = "duplicate or unknown struct parameter name: ";
            v35 = 259;
            (*(*a1 + 24))(&v39, a1, v25, &v34);
            if (v39)
            {
              v37 = 261;
              v36[0] = v8;
              v36[1] = v9;
              mlir::Diagnostic::operator<<(&v40, v36);
            }

            v20 = &v39;
            goto LABEL_55;
          }

          v39 = 0;
          if ((mlir::AsmParser::parseInteger<long long>(a1, &v39) & 1) == 0)
          {
            v26 = (*(*a1 + 40))(a1);
            v41 = 259;
            (*(*a1 + 24))(v43, a1, v26, &v39);
            v20 = v43;
            goto LABEL_55;
          }

          v31 = v39;
          v5 = 1;
        }
      }

      else
      {
        if (*v8 != 0x745F737365636361 || *(v8 + 3) != 0x657079745F737365)
        {
          v9 = 11;
          goto LABEL_47;
        }

        v14 = mlir::FieldParser<mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr>::parse(a1);
        if ((v15 & 1) == 0)
        {
          v23 = (*(*a1 + 40))(a1);
          v41 = 259;
          (*(*a1 + 24))(v44, a1, v23, &v39);
          v20 = v44;
          goto LABEL_55;
        }

        v4 = v14;
        v3 = 1;
      }
    }

    else
    {
      if (*v8 != 0x7079745F65736162 || *(v8 + 8) != 101)
      {
        v9 = 9;
        goto LABEL_47;
      }

      v11 = mlir::FieldParser<mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr>::parse(a1);
      if ((v12 & 1) == 0)
      {
        v21 = (*(*a1 + 40))(a1);
        v41 = 259;
        (*(*a1 + 24))(&v46, a1, v21, &v39);
        goto LABEL_54;
      }

      v2 = v11;
      v6 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v6 & 1) == 0)
  {
    v22 = (*(*a1 + 40))(a1);
    v44[0] = "struct is missing required parameter: ";
    v45 = 259;
    (*(*a1 + 24))(&v46, a1, v22, v44);
    if (v46)
    {
      mlir::Diagnostic::operator<<<10ul>(v47, "base_type");
    }

    goto LABEL_54;
  }

  if ((v3 & 1) == 0)
  {
    v24 = (*(*a1 + 40))(a1);
    v44[0] = "struct is missing required parameter: ";
    v45 = 259;
    (*(*a1 + 24))(&v46, a1, v24, v44);
    if (v46)
    {
      mlir::Diagnostic::operator<<<12ul>(v47, "access_type");
    }

    goto LABEL_54;
  }

  if ((v5 & 1) == 0)
  {
    v28 = (*(*a1 + 40))(a1);
    v44[0] = "struct is missing required parameter: ";
    v45 = 259;
    (*(*a1 + 24))(&v46, a1, v28, v44);
    if (v46)
    {
      mlir::Diagnostic::operator<<<7ul>(v47, "offset");
    }

LABEL_54:
    v20 = &v46;
    goto LABEL_55;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_56;
  }

  v17 = (*(*a1 + 32))(a1);
  result = mlir::LLVM::TBAATagAttr::get(*v17, v2, v4, v31, v7 & v30 & 1);
LABEL_57:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::TBAATagAttr::print(mlir::LLVM::TBAATagAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 0xB)
  {
    *(v7 + 8) = 540876901;
    *v7 = *"base_type = ";
    *(v6 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v6, "base_type = ", 0xCuLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAATypeDescriptorAttr,(void *)0>(a2, *(*this + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 0xDuLL)
  {
    qmemcpy(v11, "access_type = ", 14);
    *(v10 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v10, "access_type = ", 0xEuLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAATypeDescriptorAttr,(void *)0>(a2, *(*this + 16));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 1uLL)
  {
    *v13 = 8236;
    *(v12 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, ", ", 2uLL);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 8)
  {
    *(v15 + 8) = 32;
    *v15 = *"offset = ";
    *(v14 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v14, "offset = ", 9uLL);
  }

  v16 = *(*this + 24);
  v17 = (*(*a2 + 16))(a2);
  llvm::write_integer(v17, v16, 0, 0);
  if (*(*this + 32) == 1)
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if ((*(v20 + 3) - v21) > 0xA)
    {
      *(v21 + 7) = 540876916;
      *v21 = *"constant = ";
      *(v20 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v20, "constant = ", 0xBuLL);
    }

    if (*(*this + 32) == 1)
    {
      v22 = (*(*a2 + 16))(a2);
      v23 = *(v22 + 4);
      if (*(v22 + 3) - v23 > 3uLL)
      {
        *v23 = 1702195828;
        *(v22 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v22, "true", 4uLL);
      }
    }
  }

  result = (*(*a2 + 16))(a2);
  v25 = *(result + 4);
  if (*(result + 3) == v25)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v25 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAATypeDescriptorAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::TBAATypeDescriptorAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::VScaleRangeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id;
  v7[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22VScaleRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15VScaleRangeAttrEJNS1_11IntegerAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v9 = a2;
  v10 = a3;
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12 = ((a2 >> 4) ^ (a2 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(&v12, 0, v13, &v13[3] + 8, &v10);
  v8 = &v9;
  v12 = &v9;
  *&v13[0] = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::VScaleRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VScaleRangeAttrStorage,mlir::IntegerAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::VScaleRangeAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::VScaleRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VScaleRangeAttrStorage,mlir::IntegerAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::VScaleRangeAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::VScaleRangeAttr::parse(mlir::AsmParser *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v21 = 0;
    v22 = 0;
    if (mlir::AsmParser::parseKeyword(a1, &v21))
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = v21;
        v8 = v22;
        if (((*(*a1 + 136))(a1) & 1) == 0)
        {
          break;
        }

        if (!(v4 & 1 | (v8 != 8)) && *v7 == 0x65676E61526E696DLL)
        {
          v11 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
          if ((v12 & 1) == 0)
          {
            v20 = (*(*a1 + 40))(a1);
            v30 = 259;
            (*(*a1 + 24))(v32, a1, v20, &v28);
            v16 = v32;
            goto LABEL_19;
          }

          v2 = v11;
          v4 = 1;
          if (v6)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v3 & 1 | (v8 != 8))
          {
            goto LABEL_23;
          }

          if (*v7 != 0x65676E615278616DLL)
          {
            v8 = 8;
LABEL_23:
            v18 = (*(*a1 + 40))(a1);
            v23 = "duplicate or unknown struct parameter name: ";
            v24 = 259;
            (*(*a1 + 24))(&v28, a1, v18, &v23);
            if (v28)
            {
              v26 = 261;
              v25[0] = v7;
              v25[1] = v8;
              mlir::Diagnostic::operator<<(&v29, v25);
            }

            v16 = &v28;
            goto LABEL_19;
          }

          v9 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
          if ((v10 & 1) == 0)
          {
            v19 = (*(*a1 + 40))(a1);
            v30 = 259;
            (*(*a1 + 24))(v31, a1, v19, &v28);
            v16 = v31;
            goto LABEL_19;
          }

          v5 = v9;
          v3 = 1;
          if (v6)
          {
LABEL_16:
            if (((*(*a1 + 168))(a1) & 1) == 0)
            {
              break;
            }

            v13 = (*(*a1 + 32))(a1);
            result = mlir::LLVM::VScaleRangeAttr::get(*v13, v2, v5);
            goto LABEL_21;
          }
        }

        if (((*(*a1 + 120))(a1) & 1) == 0)
        {
          break;
        }

        v21 = 0;
        v22 = 0;
        v6 = 1;
        if (!mlir::AsmParser::parseKeyword(a1, &v21))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v15 = (*(*a1 + 40))(a1);
      v32[0] = "expected a parameter name in struct";
      v33 = 259;
      (*(*a1 + 24))(v27, a1, v15, v32);
      v16 = v27;
LABEL_19:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
    }
  }

  result = 0;
LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::VScaleRangeAttr::print(mlir::LLVM::VScaleRangeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 0xA)
  {
    *(v7 + 7) = 540876901;
    *v7 = *"minRange = ";
    *(v6 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v6, "minRange = ", 0xBuLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) > 0xA)
  {
    *(v11 + 7) = 540876901;
    *v11 = *"maxRange = ";
    *(v10 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v10, "maxRange = ", 0xBuLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::TargetFeaturesAttr::parse(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(__src) = 0;
  v38 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(a1, &v39);
    std::__optional_storage_base<llvm::SmallVector<mlir::StringAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::StringAttr,6u>,false>>(&__src, &v39);
    if (LOBYTE(v43[0]) == 1 && v39 != &v40)
    {
      free(v39);
    }

    v7 = *a1;
    if ((v38 & 1) == 0)
    {
      v8 = (*(v7 + 40))(a1);
      LOWORD(v41) = 259;
      (*(*a1 + 24))(v34, a1, v8, &v39);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
      goto LABEL_17;
    }

    if (((*(v7 + 328))(a1) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v3 = *(*(*a1 + 32))(a1);
  v28 = v30;
  v29 = 0x600000000;
  v31 = v33;
  v32 = 0x600000000;
  if (v38 != 1 || (v4 = v36) == 0)
  {
    v4 = 0;
    v12 = v33;
    goto LABEL_23;
  }

  if (v36 < 7)
  {
    v5 = v36;
    v6 = v33;
    goto LABEL_29;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v36, 8);
  v5 = v36;
  if (v36)
  {
    v6 = v31;
LABEL_29:
    memcpy(v6, __src, 8 * v5);
  }

  v15 = 0;
  LODWORD(v32) = v4;
  v12 = v31;
  while (1)
  {
    v16 = *&v12[v15];
    if (!v16)
    {
      break;
    }

    v17 = *(v16 + 24);
    if (!v17)
    {
      break;
    }

    v18 = *(v16 + 16);
    v19 = *v18;
    if (v19 != 43 && v19 != 45)
    {
      v27 = 257;
      (*(*a1 + 24))(&v39, a1, v2, v26);
      if (v39)
      {
        mlir::Diagnostic::operator<<<43ul>(&v39 + 8, "target features must start with '+' or '-'");
      }

      goto LABEL_48;
    }

    v20 = memchr(v18, 44, v17);
    if (v20)
    {
      v21 = v20 - v18 == -1;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v27 = 257;
      (*(*a1 + 24))(&v39, a1, v2, v26);
      if (v39)
      {
        mlir::Diagnostic::operator<<<36ul>(&v39 + 8, "target features can not contain ','");
      }

      goto LABEL_48;
    }

    v15 += 8;
    if (8 * v4 == v15)
    {
      goto LABEL_23;
    }
  }

  v27 = 257;
  (*(*a1 + 24))(&v39, a1, v2, v26);
  if (v39)
  {
    mlir::Diagnostic::operator<<<41ul>(&v39 + 8, "target features can not be null or empty");
  }

LABEL_48:
  v22 = v44;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  if (v22)
  {
    v9 = 0;
    goto LABEL_24;
  }

LABEL_23:
  v13 = *v3;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id;
  v23[1] = v3;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25TargetFeaturesAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18TargetFeaturesAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v26[1] = v23;
  v25[0] = v12;
  v25[1] = v4;
  v42 = 0u;
  memset(v43, 0, 56);
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v43[7] = 0xFF51AFD7ED558CCDLL;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::StringAttr>>(&v39, 0, &v39, v43, v25);
  v24 = v25;
  *&v39 = v25;
  *(&v39 + 1) = v26;
  v9 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v39);
LABEL_24:
  if (v31 != v33)
  {
    free(v31);
  }

  if (v28 != v30)
  {
    free(v28);
  }

LABEL_18:
  if (v38 == 1 && __src != &v37)
  {
    free(__src);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

llvm::raw_ostream *mlir::LLVM::TargetFeaturesAttr::print(mlir::LLVM::TargetFeaturesAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "[", 1uLL);
  }

  else
  {
    *v7 = 91;
    ++*(v6 + 4);
  }

  v8 = *this;
  v9 = *(*this + 16);
  if (v9)
  {
    v10 = *(v8 + 8);
    (*(*a2 + 40))(a2, *v10);
    if (v9 != 1)
    {
      v11 = v10 + 1;
      v12 = 8 * v9 - 8;
      do
      {
        v13 = (*(*a2 + 16))(a2);
        v14 = *(v13 + 4);
        if (*(v13 + 3) - v14 > 1uLL)
        {
          *v14 = 8236;
          *(v13 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v13, ", ", 2uLL);
        }

        v15 = *v11++;
        (*(*a2 + 40))(a2, v15);
        v12 -= 8;
      }

      while (v12);
    }
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "]", 1uLL);
  }

  else
  {
    *v17 = 93;
    ++*(v16 + 4);
  }

  result = (*(*a2 + 16))(a2);
  v19 = *(result + 4);
  if (*(result + 3) == v19)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v19 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::VecTypeHintAttr::get(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id;
  v7[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22VecTypeHintAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15VecTypeHintAttrEJNS1_8TypeAttrEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v10[1] = v7;
  v9[0] = a2;
  v9[1] = a3;
  memset(&v11[1], 0, 112);
  v11[15] = 0xFF51AFD7ED558CCDLL;
  v11[0] = (a2 >> 4) ^ (a2 >> 9);
  LOBYTE(v11[1]) = a3;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v11, 0, &v11[1] + 1, &v11[8]);
  v8 = v9;
  v11[0] = v9;
  v11[1] = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::VecTypeHintAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VecTypeHintAttrStorage,mlir::TypeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::VecTypeHintAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::VecTypeHintAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VecTypeHintAttrStorage,mlir::TypeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::VecTypeHintAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::VecTypeHintAttr::parse(mlir::AsmParser *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v20 = 0;
    v21 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v20))
    {
      v13 = (*(*a1 + 40))(a1);
      v32 = "expected a parameter name in struct";
      v33[12] = 259;
      (*(*a1 + 24))(v26, a1, v13, &v32);
      v14 = v26;
      goto LABEL_31;
    }

    v7 = v20;
    v6 = v21;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_32;
    }

    if (v2 & 1 | (v6 != 4))
    {
      if (v4 & 1 | (v6 != 9))
      {
        goto LABEL_24;
      }

      if (*v7 != 0x656E6769735F7369 || *(v7 + 8) != 100)
      {
        v6 = 9;
        goto LABEL_24;
      }

      LOBYTE(v27) = 0;
      if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v27) & 1) == 0)
      {
        v17 = (*(*a1 + 40))(a1);
        v29 = 259;
        (*(*a1 + 24))(v30, a1, v17, &v27);
        v14 = v30;
        goto LABEL_31;
      }

      v5 = v27;
      v4 = 1;
      continue;
    }

    if (*v7 != 1953393000)
    {
      v6 = 4;
LABEL_24:
      v16 = (*(*a1 + 40))(a1);
      v22 = "duplicate or unknown struct parameter name: ";
      v23 = 259;
      (*(*a1 + 24))(&v27, a1, v16, &v22);
      if (v27)
      {
        v25 = 261;
        v24[0] = v7;
        v24[1] = v6;
        mlir::Diagnostic::operator<<(&v28, v24);
      }

      v14 = &v27;
LABEL_31:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
      goto LABEL_32;
    }

    v9 = mlir::FieldParser<mlir::TypeAttr,mlir::TypeAttr>::parse(a1);
    if ((v10 & 1) == 0)
    {
      v15 = (*(*a1 + 40))(a1);
      v29 = 259;
      (*(*a1 + 24))(&v32, a1, v15, &v27);
LABEL_30:
      v14 = &v32;
      goto LABEL_31;
    }

    v3 = v9;
    v2 = 1;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v2 & 1) == 0)
  {
    v18 = (*(*a1 + 40))(a1);
    v30[0] = "struct is missing required parameter: ";
    v31 = 259;
    (*(*a1 + 24))(&v32, a1, v18, v30);
    if (v32)
    {
      mlir::Diagnostic::operator<<<5ul>(v33, "hint");
    }

    goto LABEL_30;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v11 = (*(*a1 + 32))(a1);
  result = mlir::LLVM::VecTypeHintAttr::get(*v11, v3, v4 & v5 & 1);
LABEL_33:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::VecTypeHintAttr::print(mlir::LLVM::VecTypeHintAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 6uLL)
  {
    *(v7 + 3) = 540876916;
    *v7 = 1953393000;
    *(v6 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v6, "hint = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  if (*(*this + 16) == 1)
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if ((*(v10 + 3) - v11) > 0xB)
    {
      *(v11 + 8) = 540876900;
      *v11 = *"is_signed = ";
      *(v10 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v10, "is_signed = ", 0xCuLL);
    }

    if (*(*this + 16) == 1)
    {
      v12 = (*(*a2 + 16))(a2);
      v13 = *(v12 + 4);
      if (*(v12 + 3) - v13 > 3uLL)
      {
        *v13 = 1702195828;
        *(v12 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v12, "true", 4uLL);
      }
    }
  }

  result = (*(*a2 + 16))(a2);
  v15 = *(result + 4);
  if (*(result + 3) == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::TailCallKindAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23TailCallKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16TailCallKindAttrEJNS2_12tailcallkind12TailCallKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TailCallKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TailCallKindAttrStorage,mlir::LLVM::tailcallkind::TailCallKind>(llvm::function_ref<void ()(mlir::LLVM::detail::TailCallKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::tailcallkind::TailCallKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TailCallKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TailCallKindAttrStorage,mlir::LLVM::tailcallkind::TailCallKind>(llvm::function_ref<void ()(mlir::LLVM::detail::TailCallKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::tailcallkind::TailCallKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::TailCallKindAttr::parse(uint64_t *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
  {
    v21[0] = "expected keyword for Tail Call Kind";
    v22 = 259;
    (*(*a1 + 24))(&v24, a1, v2, v21);
LABEL_23:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    v5 = 0;
    v9 = 0;
    goto LABEL_24;
  }

  v3 = SHIBYTE(v20);
  p_p = __p;
  if (v20 >= 0)
  {
    p_p = &__p;
  }

  if (v20 < 0)
  {
    v3 = v19;
  }

  if (v3 == 8)
  {
    if (*p_p == 0x6C6961747473756DLL)
    {
      v9 = 1;
      v5 = 2;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v3 == 6)
  {
    v6 = *p_p;
    v7 = p_p[2];
    if (v6 == 1635020654 && v7 == 27753)
    {
      v9 = 1;
      v5 = 3;
      goto LABEL_24;
    }

LABEL_21:
    v16 = "invalid Tail Call Kind specification: ";
    v17 = 259;
    (*(*a1 + 24))(&v24, a1, v2, &v16);
    if (v24)
    {
      v22 = 260;
      v21[0] = &__p;
      mlir::Diagnostic::operator<<(v25, v21);
    }

    goto LABEL_23;
  }

  if (v3 != 4)
  {
    goto LABEL_21;
  }

  if (*p_p == 1701736302)
  {
    v5 = 0;
    goto LABEL_35;
  }

  if (*p_p != 1818845556)
  {
    goto LABEL_21;
  }

  v5 = 1;
LABEL_35:
  v9 = 1;
LABEL_24:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  v10 = *a1;
  if ((v9 & 1) == 0)
  {
    v14 = (*(v10 + 40))(a1);
    v25[12] = 259;
    (*(*a1 + 24))(v23, a1, v14, &v24);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
    goto LABEL_32;
  }

  if (((*(v10 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    v15 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v11 = *(*(*a1 + 32))(a1);
  v12 = *MEMORY[0x277D85DE8];

  return mlir::LLVM::TailCallKindAttr::get(v11, v5);
}

llvm::raw_ostream *mlir::LLVM::TailCallKindAttr::print(mlir::LLVM::TailCallKindAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *(*this + 8);
  v7 = (*(*a2 + 16))(a2);
  if (v6 > 3)
  {
    v8 = 0;
    v9 = &str_2_25;
  }

  else
  {
    v8 = qword_25D0A0178[v6];
    v9 = off_2799BE8F8[v6];
  }

  llvm::raw_ostream::operator<<(v7, v9, v8);
  result = (*(*a2 + 16))(a2);
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::WorkgroupAttributionAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id;
  v7[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail31WorkgroupAttributionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24WorkgroupAttributionAttrEJNS1_11IntegerAttrENS1_8TypeAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v10[1] = v7;
  v9[0] = a2;
  v9[1] = a3;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v11 = ((a2 >> 4) ^ (a2 >> 9));
  v12 = ((a3 >> 4) ^ (a3 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v11, 0, v13, v14);
  v8 = v9;
  v11 = v9;
  v12 = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::WorkgroupAttributionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::WorkgroupAttributionAttrStorage,mlir::IntegerAttr,mlir::TypeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::WorkgroupAttributionAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::TypeAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::WorkgroupAttributionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::WorkgroupAttributionAttrStorage,mlir::IntegerAttr,mlir::TypeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::WorkgroupAttributionAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::TypeAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::WorkgroupAttributionAttr::parse(uint64_t a1)
{
  v20[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_11;
  }

  v2 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
  v3 = *a1;
  if ((v4 & 1) == 0)
  {
    v13 = (*(v3 + 40))(a1);
    v18 = 259;
    (*(*a1 + 24))(v20, a1, v13, v17);
    v14 = v20;
LABEL_10:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    goto LABEL_11;
  }

  v5 = v2;
  if (((*(v3 + 120))(a1) & 1) == 0)
  {
LABEL_11:
    v15 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v6 = mlir::FieldParser<mlir::TypeAttr,mlir::TypeAttr>::parse(a1);
  v7 = *a1;
  if ((v8 & 1) == 0)
  {
    v16 = (*(v7 + 40))(a1);
    v18 = 259;
    (*(*a1 + 24))(v19, a1, v16, v17);
    v14 = v19;
    goto LABEL_10;
  }

  v9 = v6;
  if (((*(v7 + 168))(a1) & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(*(*a1 + 32))(a1);
  v11 = *MEMORY[0x277D85DE8];

  return mlir::LLVM::WorkgroupAttributionAttr::get(v10, v5, v9);
}

uint64_t mlir::FieldParser<mlir::TypeAttr,mlir::TypeAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

llvm::raw_ostream *mlir::LLVM::WorkgroupAttributionAttr::print(mlir::LLVM::WorkgroupAttributionAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

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

  (*(*a2 + 40))(a2, *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v11 = *(result + 4);
  if (*(result + 3) == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::IntegerOverflowFlagsAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage,mlir::LLVM::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage,mlir::LLVM::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::IntegerOverflowFlagsAttr::parse(mlir::AsmParser *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v3 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (!mlir::AsmParser::parseKeyword(a1, &v10))
      {
        goto LABEL_18;
      }

      v4 = mlir::LLVM::symbolizeIntegerOverflowFlags(v10, v11);
      if (!HIDWORD(v4))
      {
        v9[16] = 257;
        (*(*a1 + 24))(&v13, a1, v2, v9);
        if (v13)
        {
          mlir::Diagnostic::operator<<<10ul>(v14, "expected ");
          if (v13)
          {
            mlir::Diagnostic::operator<<<35ul>(v14, "::mlir::LLVM::IntegerOverflowFlags");
            if (v13)
            {
              mlir::Diagnostic::operator<<<16ul>(v14, " to be one of: ");
              if (v13)
              {
                mlir::Diagnostic::operator<<<5ul>(v14, "none");
                if (v13)
                {
                  mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                  if (v13)
                  {
                    mlir::Diagnostic::operator<<<4ul>(v14, "nsw");
                    if (v13)
                    {
                      mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                      if (v13)
                      {
                        mlir::Diagnostic::operator<<<4ul>(v14, "nuw");
                      }
                    }
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
LABEL_18:
        v7 = (*(*a1 + 40))(a1);
        v14[12] = 259;
        (*(*a1 + 24))(v12, a1, v7, &v13);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
        goto LABEL_19;
      }

      v3 |= v4;
    }

    while (((*(*a1 + 128))(a1) & 1) != 0);
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      goto LABEL_19;
    }

    v5 = (*(*a1 + 32))(a1);
    result = mlir::LLVM::IntegerOverflowFlagsAttr::get(*v5, v3);
  }

  else
  {
LABEL_19:
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::IntegerOverflowFlagsAttr::print(mlir::LLVM::IntegerOverflowFlagsAttr *this, mlir::AsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *(*this + 8);
  if (v6)
  {
    v23 = v25;
    v24 = 0x200000000;
    if (v6)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "nsw", 3);
    }

    if ((v6 & 2) != 0)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "nuw", 3);
    }

    v7 = v23;
    v8 = v24;
    memset(&__p, 0, sizeof(__p));
    if (v24)
    {
      v9 = 16 * v24;
      v10 = v23 + v9;
      v11 = 2 * v24 - 2;
      v12 = 8;
      do
      {
        v11 += *(v23 + v12);
        v12 += 16;
        v9 -= 16;
      }

      while (v9);
      std::string::reserve(&__p, v11);
      std::string::append(&__p, *v7, *(v7 + 1));
      if (v8 != 1)
      {
        v13 = v7 + 16;
        do
        {
          std::string::append(&__p, ", ", 2uLL);
          v14 = *v13;
          v15 = *(v13 + 1);
          v13 += 16;
          std::string::append(&__p, v14, v15);
        }

        while (v13 != v10);
      }
    }

    if (v23 != v25)
    {
      free(v23);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "none");
  }

  v16 = (*(*a2 + 16))(a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(v16, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = (*(*a2 + 16))(a2);
  v20 = *(result + 4);
  if (*(result + 3) == v20)
  {
    result = llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v20 = 62;
    ++*(result + 4);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::FastmathFlagsAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24FastmathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastmathFlagsAttrEJNS2_13FastmathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::FastmathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FastmathFlagsAttrStorage,mlir::LLVM::FastmathFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::FastmathFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::FastmathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::FastmathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FastmathFlagsAttrStorage,mlir::LLVM::FastmathFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::FastmathFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::FastmathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::FastmathFlagsAttr::parse(mlir::AsmParser *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_75;
  }

  v19 = (*(*a1 + 40))(a1);
  v2 = 0;
  v22 = 0uLL;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v22))
    {
      goto LABEL_74;
    }

    v20[0] = v22;
    if (*(&v22 + 1) == 4 && *v22 == 1701736302)
    {
      v13 = 0;
      goto LABEL_47;
    }

    v25 = v27;
    v26 = 0x200000000;
    llvm::StringRef::split(v20, &v25, ",", 1uLL, -1, 1);
    if (!v26)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_44;
    }

    v3 = 0;
    v4 = v25;
    v5 = 16 * v26;
    while (1)
    {
      v23 = *v4;
      v6 = llvm::StringRef::trim(&v23, " \t\n\v\f\r", 6);
      if (v7 > 6)
      {
        break;
      }

      if (v7 == 3)
      {
        if (*v6 == 29550 && *(v6 + 2) == 122)
        {
          v8 = 4;
        }

        else
        {
          if (*v6 != 26209 || *(v6 + 2) != 110)
          {
            goto LABEL_43;
          }

          v8 = 32;
        }
      }

      else
      {
        if (v7 != 4)
        {
          goto LABEL_43;
        }

        switch(*v6)
        {
          case 0x6E616E6E:
            v8 = 1;
            break;
          case 0x666E696E:
            v8 = 2;
            break;
          case 0x70637261:
            v8 = 8;
            break;
          case 0x74736166:
            v8 = 127;
            break;
          default:
            goto LABEL_43;
        }
      }

LABEL_40:
      v3 |= v8;
      ++v4;
      v5 -= 16;
      if (!v5)
      {
        v12 = 0;
        v13 = v3;
        goto LABEL_44;
      }
    }

    if (v7 != 7)
    {
      if (v7 != 8 || *v6 != 0x74636172746E6F63)
      {
        goto LABEL_43;
      }

      v8 = 16;
      goto LABEL_40;
    }

    if (*v6 == 1935762802 && *(v6 + 3) == 1668248435)
    {
      v8 = 64;
      goto LABEL_40;
    }

LABEL_43:
    v13 = 0;
    v12 = 1;
LABEL_44:
    if (v25 != v27)
    {
      free(v25);
    }

    if (v12)
    {
      v21 = 257;
      (*(*a1 + 24))(&v25, a1, v19, v20);
      if (v25)
      {
        mlir::Diagnostic::operator<<<10ul>(&v26, "expected ");
        if (v25)
        {
          mlir::Diagnostic::operator<<<28ul>(&v26, "::mlir::LLVM::FastmathFlags");
          if (v25)
          {
            mlir::Diagnostic::operator<<<16ul>(&v26, " to be one of: ");
            if (v25)
            {
              mlir::Diagnostic::operator<<<5ul>(&v26, "none");
              if (v25)
              {
                mlir::Diagnostic::operator<<<3ul>(&v26, ", ");
                if (v25)
                {
                  mlir::Diagnostic::operator<<<5ul>(&v26, "nnan");
                  if (v25)
                  {
                    mlir::Diagnostic::operator<<<3ul>(&v26, ", ");
                    if (v25)
                    {
                      mlir::Diagnostic::operator<<<5ul>(&v26, "ninf");
                      if (v25)
                      {
                        mlir::Diagnostic::operator<<<3ul>(&v26, ", ");
                        if (v25)
                        {
                          mlir::Diagnostic::operator<<<4ul>(&v26, "nsz");
                          if (v25)
                          {
                            mlir::Diagnostic::operator<<<3ul>(&v26, ", ");
                            if (v25)
                            {
                              mlir::Diagnostic::operator<<<5ul>(&v26, "arcp");
                              if (v25)
                              {
                                mlir::Diagnostic::operator<<<3ul>(&v26, ", ");
                                if (v25)
                                {
                                  mlir::Diagnostic::operator<<<9ul>(&v26, "contract");
                                  if (v25)
                                  {
                                    mlir::Diagnostic::operator<<<3ul>(&v26, ", ");
                                    if (v25)
                                    {
                                      mlir::Diagnostic::operator<<<4ul>(&v26, "afn");
                                      if (v25)
                                      {
                                        mlir::Diagnostic::operator<<<3ul>(&v26, ", ");
                                        if (v25)
                                        {
                                          mlir::Diagnostic::operator<<<8ul>(&v26, "reassoc");
                                          if (v25)
                                          {
                                            mlir::Diagnostic::operator<<<3ul>(&v26, ", ");
                                            if (v25)
                                            {
                                              mlir::Diagnostic::operator<<<5ul>(&v26, "fast");
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

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
LABEL_74:
      v17 = (*(*a1 + 40))(a1);
      v27[8] = 259;
      (*(*a1 + 24))(v24, a1, v17, &v25);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
LABEL_75:
      result = 0;
      goto LABEL_76;
    }

LABEL_47:
    v2 |= v13;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  v14 = (*(*a1 + 168))(a1);
  if ((v14 & 1) == 0)
  {
    goto LABEL_75;
  }

  v15 = (*(*a1 + 32))(a1);
  result = mlir::LLVM::FastmathFlagsAttr::get(*v15, v2);
LABEL_76:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::FastmathFlagsAttr::print(mlir::LLVM::FastmathFlagsAttr *this, mlir::AsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *(*this + 8);
  if (!v6)
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "none");
    goto LABEL_32;
  }

  v25 = v27;
  v26 = 0x200000000;
  if ((~v6 & 0x7F) == 0)
  {
    v7 = "fast";
    v8 = 4;
LABEL_23:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, v7, v8);
    goto LABEL_24;
  }

  if (v6)
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "nnan", 4);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "ninf", 4);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "nsz", 3);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "arcp", 4);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "afn", 3);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_20:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "contract", 8);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((v6 & 0x40) != 0)
  {
LABEL_22:
    v7 = "reassoc";
    v8 = 7;
    goto LABEL_23;
  }

LABEL_24:
  v9 = v25;
  v10 = v26;
  memset(&__p, 0, sizeof(__p));
  if (v26)
  {
    v11 = 16 * v26;
    v12 = v25 + v11;
    v13 = 2 * v26 - 2;
    v14 = 8;
    do
    {
      v13 += *(v25 + v14);
      v14 += 16;
      v11 -= 16;
    }

    while (v11);
    std::string::reserve(&__p, v13);
    std::string::append(&__p, *v9, *(v9 + 1));
    if (v10 != 1)
    {
      v15 = v9 + 16;
      do
      {
        std::string::append(&__p, ", ", 2uLL);
        v16 = *v15;
        v17 = *(v15 + 1);
        v15 += 16;
        std::string::append(&__p, v16, v17);
      }

      while (v15 != v12);
    }
  }

  if (v25 != v27)
  {
    free(v25);
  }

LABEL_32:
  v18 = (*(*a2 + 16))(a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(v18, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = (*(*a2 + 16))(a2);
  v22 = *(result + 4);
  if (*(result + 3) == v22)
  {
    result = llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v22 = 62;
    ++*(result + 4);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LLVMDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v245[25] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v225, a2, 0);
  v241 = "cconv";
  v242 = 5;
  if (v228[2])
  {
    goto LABEL_2;
  }

  v6 = v227;
  if (v227 == 5)
  {
    if (*v226 == 1852793699 && *(v226 + 4) == 118)
    {
      (*(*a2 + 32))(a2);
      (*(*a2 + 40))(a2);
      if (((*(*a2 + 152))(a2) & 1) == 0)
      {
        goto LABEL_513;
      }

      __p = 0;
      v234 = 0;
      v235 = 0;
      v17 = (*(*a2 + 40))(a2);
      if ((*(*a2 + 432))(a2, &__p))
      {
        v18 = SHIBYTE(v235);
        p_p = __p;
        if (v235 >= 0)
        {
          p_p = &__p;
        }

        if (v235 < 0)
        {
          v18 = v234;
        }

        switch(v18)
        {
          case 3:
            v20 = *p_p;
            v21 = *(p_p + 2);
            if (v20 != 25443 || v21 != 99)
            {
              goto LABEL_473;
            }

            v23 = 0;
            v24 = 1;
            break;
          case 5:
            if (*p_p == 828334947 && *(p_p + 4) == 48)
            {
              v24 = 1;
              v23 = 10;
            }

            else
            {
              v112 = *p_p;
              v113 = *(p_p + 4);
              if (v112 != 828334947 || v113 != 49)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 11;
            }

            break;
          case 6:
            if (*p_p == 1953718630 && p_p[2] == 25443)
            {
              v24 = 1;
              v23 = 8;
            }

            else if (*p_p == 1684828003 && p_p[2] == 25443)
            {
              v24 = 1;
              v23 = 9;
            }

            else if (*p_p == 1818845556 && p_p[2] == 25443)
            {
              v24 = 1;
              v23 = 18;
            }

            else
            {
              v108 = *p_p;
              v109 = p_p[2];
              if (v108 != 1836476520 || v109 != 25443)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 81;
            }

            break;
          case 7:
            if (*p_p == 1718187891 && *(p_p + 3) == 1667462246)
            {
              v24 = 1;
              v23 = 16;
            }

            else
            {
              v102 = *p_p;
              v103 = *(p_p + 3);
              if (v102 != 913205623 || v103 != 1667445814)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 79;
            }

            break;
          case 8:
            if (*p_p == 0x6363676572796E61)
            {
              v24 = 1;
              v23 = 13;
            }

            else
            {
              if (*p_p != 0x6363635F6D766868)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 82;
            }

            break;
          case 10:
            if (*p_p == 0x736370615F6D7261 && p_p[4] == 25443)
            {
              v24 = 1;
              v23 = 66;
            }

            else if (*p_p == 0x72746E695F363878 && p_p[4] == 25443)
            {
              v24 = 1;
              v23 = 83;
            }

            else
            {
              v94 = *p_p;
              v95 = p_p[4];
              if (v94 != 0x72746E695F727661 || v95 != 25443)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 84;
            }

            break;
          case 11:
            if (*p_p == 0x6961747466697773 && *(p_p + 3) == 0x63636C6961747466)
            {
              v24 = 1;
              v23 = 20;
            }

            else if (*p_p == 0x637061615F6D7261 && *(p_p + 3) == 0x636373637061615FLL)
            {
              v24 = 1;
              v23 = 67;
            }

            else if (*p_p == 0x6E75665F72697073 && *(p_p + 3) == 0x6363636E75665F72)
            {
              v24 = 1;
              v23 = 75;
            }

            else if (*p_p == 0x765F757067646D61 && *(p_p + 3) == 0x636373765F757067)
            {
              v24 = 1;
              v23 = 87;
            }

            else if (*p_p == 0x675F757067646D61 && *(p_p + 3) == 0x636373675F757067)
            {
              v24 = 1;
              v23 = 88;
            }

            else if (*p_p == 0x635F757067646D61 && *(p_p + 3) == 0x636373635F757067)
            {
              v24 = 1;
              v23 = 90;
            }

            else if (*p_p == 0x685F757067646D61 && *(p_p + 3) == 0x636373685F757067)
            {
              v24 = 1;
              v23 = 93;
            }

            else if (*p_p == 0x6C5F757067646D61 && *(p_p + 3) == 0x6363736C5F757067)
            {
              v24 = 1;
              v23 = 95;
            }

            else if (*p_p == 0x655F757067646D61 && *(p_p + 3) == 0x636373655F757067)
            {
              v24 = 1;
              v23 = 96;
            }

            else
            {
              v124 = *p_p;
              v125 = *(p_p + 3);
              if (v124 != 0x746E695F6B38366DLL || v125 != 0x636372746E695F6BLL)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 101;
            }

            break;
          case 12:
            if (*p_p == 0x6E72656B5F787470 && *(p_p + 2) == 1667460197)
            {
              v24 = 1;
              v23 = 71;
            }

            else if (*p_p == 0x697665645F787470 && *(p_p + 2) == 1667458403)
            {
              v24 = 1;
              v23 = 72;
            }

            else
            {
              v129 = *p_p;
              v130 = *(p_p + 2);
              if (v129 != 0x675F757067646D61 || v130 != 1667463270)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 100;
            }

            break;
          case 13:
            if (*p_p == 0x636474735F363878 && *(p_p + 5) == 0x63636C6C61636474)
            {
              v24 = 1;
              v23 = 64;
            }

            else if (*p_p == 0x695F30333470736DLL && *(p_p + 5) == 0x636372746E695F30)
            {
              v24 = 1;
              v23 = 69;
            }

            else if (*p_p == 0x72656B5F72697073 && *(p_p + 5) == 0x63636C656E72656BLL)
            {
              v24 = 1;
              v23 = 76;
            }

            else if (*p_p == 0x735F34365F363878 && *(p_p + 5) == 0x6363767379735F34)
            {
              v24 = 1;
              v23 = 78;
            }

            else if (*p_p == 0x6C6975625F727661 && *(p_p + 5) == 0x63636E69746C6975)
            {
              v24 = 1;
              v23 = 86;
            }

            else
            {
              v144 = *p_p;
              v145 = *(p_p + 5);
              if (v144 != 0x636765725F363878 || v145 != 0x63636C6C61636765)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 92;
            }

            break;
          case 14:
            if (*p_p == 0x6576726573657270 && *(p_p + 3) == 0x63636C6C615F6576)
            {
              v24 = 1;
              v23 = 15;
            }

            else if (*p_p == 0x747361665F787863 && *(p_p + 3) == 0x6363736C745F7473)
            {
              v24 = 1;
              v23 = 17;
            }

            else if (*p_p == 0x747361665F363878 && *(p_p + 3) == 0x63636C6C61637473)
            {
              v24 = 1;
              v23 = 65;
            }

            else if (*p_p == 0x736968745F363878 && *(p_p + 3) == 0x63636C6C61637369)
            {
              v24 = 1;
              v23 = 70;
            }

            else
            {
              v136 = *p_p;
              v137 = *(p_p + 3);
              if (v136 != 0x636F5F6C65746E69 || v137 != 0x636369625F6C636FLL)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 77;
            }

            break;
          case 15:
            if (*p_p == 0x6576726573657270 && *(p_p + 7) == 0x636374736F6D5F65)
            {
              v24 = 1;
              v23 = 14;
            }

            else if (*p_p == 0x5F64726175676663 && *(p_p + 7) == 0x63636B636568635FLL)
            {
              v24 = 1;
              v23 = 19;
            }

            else if (*p_p == 0x637061615F6D7261 && *(p_p + 7) == 0x63637066765F7363)
            {
              v24 = 1;
              v23 = 68;
            }

            else
            {
              v84 = *p_p;
              v85 = *(p_p + 7);
              if (v84 != 0x6B5F757067646D61 || v85 != 0x63636C656E72656BLL)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 91;
            }

            break;
          case 16:
            if (*p_p == 0x746365765F363878 && *(p_p + 1) == 0x63636C6C6163726FLL)
            {
              v24 = 1;
              v23 = 80;
            }

            else
            {
              v99 = *p_p;
              v98 = *(p_p + 1);
              if (v99 != 0x625F30333470736DLL || v98 != 0x63636E69746C6975)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 94;
            }

            break;
          case 20:
            v87 = *p_p;
            v88 = *(p_p + 1);
            v89 = *(p_p + 4);
            if (v87 != 0x5F34366863726161 || v88 != 0x6163726F74636576 || v89 != 1667460204)
            {
              goto LABEL_473;
            }

            v24 = 1;
            v23 = 97;
            break;
          case 24:
            if (*p_p == 0x5F34366863726161 && *(p_p + 1) == 0x746365765F657673 && *(p_p + 2) == 0x63636C6C6163726FLL)
            {
              v24 = 1;
              v23 = 98;
            }

            else
            {
              v76 = *p_p;
              v77 = *(p_p + 1);
              v78 = *(p_p + 2);
              if (v76 != 0x736D655F6D736177 || v77 != 0x5F6E657470697263 || v78 != 0x6363656B6F766E69)
              {
                goto LABEL_473;
              }

              v24 = 1;
              v23 = 99;
            }

            break;
          default:
LABEL_473:
            v231[0] = "invalid Calling Conventions specification: ";
            v232 = 259;
            (*(*a2 + 24))(&v244, a2, v17, v231);
            if (v244)
            {
              v238 = 260;
              v236 = &__p;
              mlir::Diagnostic::operator<<(v245, &v236);
            }

            goto LABEL_139;
        }
      }

      else
      {
        v236 = "expected keyword for Calling Conventions";
        v238 = 259;
        (*(*a2 + 24))(&v244, a2, v17, &v236);
LABEL_139:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v244);
        v23 = 0;
        v24 = 0;
      }

      if (SHIBYTE(v235) < 0)
      {
        operator delete(__p);
      }

      v46 = *a2;
      if ((v24 & 1) == 0)
      {
        v49 = (*(v46 + 40))(a2);
        goto LABEL_512;
      }

      if (((*(v46 + 168))(a2) & 1) == 0)
      {
        goto LABEL_513;
      }

      v47 = (*(*a2 + 32))(a2);
      v48 = mlir::LLVM::CConvAttr::get(*v47, v23);
LABEL_154:
      v5 = v48;
      goto LABEL_514;
    }

    goto LABEL_17;
  }

  if (v227)
  {
LABEL_17:
    v241 = "comdat";
    v242 = 6;
    goto LABEL_18;
  }

  (*(*v225[0] + 648))(v225[0], &v241, 1);
  v241 = "comdat";
  v242 = 6;
  if (v228[2])
  {
    goto LABEL_2;
  }

  v6 = v227;
  if (v227)
  {
LABEL_18:
    if (v6 != 6 || (*v226 == 1684893539 ? (v8 = *(v226 + 4) == 29793) : (v8 = 0), !v8))
    {
      v241 = "linkage";
      v242 = 7;
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    __p = 0;
    v234 = 0;
    v235 = 0;
    v25 = (*(*a2 + 40))(a2);
    if ((*(*a2 + 432))(a2, &__p))
    {
      if (v235 >= 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p;
      }

      if (v235 >= 0)
      {
        v27 = SHIBYTE(v235);
      }

      else
      {
        v27 = v234;
      }

      v28 = mlir::LLVM::comdat::symbolizeComdat(v26, v27);
      if (v29)
      {
        v30 = v28;
        v31 = 1;
LABEL_150:
        if (SHIBYTE(v235) < 0)
        {
          operator delete(__p);
        }

        v51 = *a2;
        if ((v31 & 1) == 0)
        {
          v49 = (*(v51 + 40))(a2);
          goto LABEL_512;
        }

        v52 = (*(v51 + 32))(a2);
        v48 = mlir::LLVM::ComdatAttr::get(*v52, v30);
        goto LABEL_154;
      }

      v231[0] = "invalid LLVM Comdat Types specification: ";
      v232 = 259;
      (*(*a2 + 24))(&v244, a2, v25, v231);
      if (v244)
      {
        v238 = 260;
        v236 = &__p;
        mlir::Diagnostic::operator<<(v245, &v236);
      }
    }

    else
    {
      v236 = "expected keyword for LLVM Comdat Types";
      v238 = 259;
      (*(*a2 + 24))(&v244, a2, v25, &v236);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v244);
    v30 = 0;
    v31 = 0;
    goto LABEL_150;
  }

  (*(*v225[0] + 648))(v225[0], &v241, 1);
  v241 = "linkage";
  v242 = 7;
  if (v228[2])
  {
    goto LABEL_2;
  }

  v6 = v227;
  if (!v227)
  {
LABEL_9:
    (*(*v225[0] + 648))(v225[0], &v241, 1);
    v241 = "framePointerKind";
    v242 = 16;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
    if (!v227)
    {
      goto LABEL_11;
    }

LABEL_30:
    if (v6 != 16 || (*v226 == 0x696F50656D617266 ? (v10 = *(v226 + 8) == 0x646E694B7265746ELL) : (v10 = 0), !v10))
    {
      v244 = "loop_vectorize";
      v245[0] = 14;
      goto LABEL_36;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_513;
    }

    __p = 0;
    v234 = 0;
    v235 = 0;
    v41 = (*(*a2 + 40))(a2);
    if ((*(*a2 + 432))(a2, &__p))
    {
      v42 = SHIBYTE(v235);
      v43 = __p;
      if (v235 >= 0)
      {
        v43 = &__p;
      }

      if (v235 < 0)
      {
        v42 = v234;
      }

      if (v42 == 3)
      {
        v68 = *v43;
        v69 = *(v43 + 2);
        if (v68 == 27745 && v69 == 108)
        {
          v67 = 1;
          v44 = 2;
          goto LABEL_248;
        }
      }

      else if (v42 == 8)
      {
        if (*v43 == 0x6661656C2D6E6F6ELL)
        {
          v44 = 1;
          goto LABEL_526;
        }

        if (*v43 == 0x6465767265736572)
        {
          v67 = 1;
          v44 = 3;
LABEL_248:
          if (SHIBYTE(v235) < 0)
          {
            operator delete(__p);
          }

          v71 = *a2;
          if (v67)
          {
            if ((*(v71 + 168))(a2))
            {
              v72 = (*(*a2 + 32))(a2);
              v48 = mlir::LLVM::FramePointerKindAttr::get(*v72, v44);
              goto LABEL_154;
            }

LABEL_513:
            v5 = 0;
            goto LABEL_514;
          }

          v49 = (*(v71 + 40))(a2);
          goto LABEL_512;
        }
      }

      else if (v42 == 4 && *v43 == 1701736302)
      {
        v44 = 0;
LABEL_526:
        v67 = 1;
        goto LABEL_248;
      }

      v231[0] = "invalid LLVM FramePointerKind specification: ";
      v232 = 259;
      (*(*a2 + 24))(&v244, a2, v41, v231);
      if (v244)
      {
        v238 = 260;
        v236 = &__p;
        mlir::Diagnostic::operator<<(v245, &v236);
      }
    }

    else
    {
      v236 = "expected keyword for LLVM FramePointerKind";
      v238 = 259;
      (*(*a2 + 24))(&v244, a2, v41, &v236);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v244);
    v44 = 0;
    v67 = 0;
    goto LABEL_248;
  }

LABEL_24:
  if (v6 == 7 && *v226 == 1802398060 && *(v226 + 3) == 1701273963)
  {
    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_513;
    }

    __p = 0;
    v234 = 0;
    v235 = 0;
    v33 = (*(*a2 + 40))(a2);
    if (((*(*a2 + 432))(a2, &__p) & 1) == 0)
    {
      v236 = "expected keyword for LLVM linkage types";
      v238 = 259;
      (*(*a2 + 24))(&v244, a2, v33, &v236);
LABEL_505:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v244);
      v40 = 0;
      v39 = 0;
      goto LABEL_506;
    }

    v34 = SHIBYTE(v235);
    v35 = __p;
    if (v235 >= 0)
    {
      v35 = &__p;
    }

    if (v235 < 0)
    {
      v34 = v234;
    }

    if (v34 > 8)
    {
      if (v34 > 11)
      {
        if (v34 == 12)
        {
          v154 = *v35;
          v155 = *(v35 + 2);
          if (v154 == 0x65636E6F6B6E696CLL && v155 == 1919184735)
          {
            v39 = 1;
            v40 = 3;
            goto LABEL_506;
          }

          goto LABEL_503;
        }

        if (v34 == 20)
        {
          v60 = *v35;
          v61 = *(v35 + 1);
          v62 = *(v35 + 4);
          v63 = v60 == 0x6C62616C69617661 && v61 == 0x6E72657478655F65;
          if (v63 && v62 == 2037148769)
          {
            v40 = 1;
            goto LABEL_565;
          }
        }
      }

      else if (v34 == 9)
      {
        v148 = *v35;
        v149 = v35[8];
        if (v148 == 0x6E69646E65707061 && v149 == 103)
        {
          v39 = 1;
          v40 = 6;
          goto LABEL_506;
        }
      }

      else if (v34 == 11)
      {
        v55 = *v35;
        v56 = *(v35 + 3);
        if (v55 == 0x775F6E7265747865 && v56 == 0x6B6165775F6E7265)
        {
          v39 = 1;
          v40 = 9;
          goto LABEL_506;
        }
      }
    }

    else
    {
      if (v34 <= 6)
      {
        if (v34 == 4)
        {
          if (*v35 != 1801545079)
          {
            goto LABEL_503;
          }

          v39 = 1;
          v40 = 4;
        }

        else
        {
          if (v34 != 6)
          {
            goto LABEL_503;
          }

          v36 = *v35;
          v37 = *(v35 + 2);
          if (v36 != 1835888483 || v37 != 28271)
          {
            goto LABEL_503;
          }

          v39 = 1;
          v40 = 10;
        }

LABEL_506:
        if (SHIBYTE(v235) < 0)
        {
          operator delete(__p);
        }

        v157 = *a2;
        if (v39)
        {
          if ((*(v157 + 168))(a2))
          {
            v158 = (*(*a2 + 32))(a2);
            v48 = mlir::LLVM::LinkageAttr::get(*v158, v40);
            goto LABEL_154;
          }

          goto LABEL_513;
        }

        v49 = (*(v157 + 40))(a2);
LABEL_512:
        v236 = v50;
        v238 = 259;
        (*(*a2 + 24))(&v244, a2, v49, &v236);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v244);
        goto LABEL_513;
      }

      if (v34 != 7)
      {
        if (*v35 != 0x6C616E7265747865)
        {
          if (*v35 == 0x65636E6F6B6E696CLL)
          {
            v39 = 1;
            v40 = 2;
            goto LABEL_506;
          }

          if (*v35 == 0x72646F5F6B616577)
          {
            v39 = 1;
            v40 = 5;
            goto LABEL_506;
          }

          if (*v35 != 0x6C616E7265746E69)
          {
            goto LABEL_503;
          }

          v39 = 1;
          v40 = 7;
          goto LABEL_506;
        }

        v40 = 0;
LABEL_565:
        v39 = 1;
        goto LABEL_506;
      }

      v151 = *v35;
      v152 = *(v35 + 3);
      if (v151 == 1986622064 && v152 == 1702125942)
      {
        v39 = 1;
        v40 = 8;
        goto LABEL_506;
      }
    }

LABEL_503:
    v231[0] = "invalid LLVM linkage types specification: ";
    v232 = 259;
    (*(*a2 + 24))(&v244, a2, v33, v231);
    if (v244)
    {
      v238 = 260;
      v236 = &__p;
      mlir::Diagnostic::operator<<(v245, &v236);
    }

    goto LABEL_505;
  }

  v241 = "framePointerKind";
  v242 = 16;
  if (v6)
  {
    goto LABEL_30;
  }

LABEL_11:
  (*(*v225[0] + 648))(v225[0], &v241, 1);
  v244 = "loop_vectorize";
  v245[0] = 14;
  if (v228[2])
  {
    goto LABEL_2;
  }

  v6 = v227;
LABEL_36:
  if (v6)
  {
    if (v6 == 14 && *v226 == 0x6365765F706F6F6CLL && *(v226 + 6) == 0x657A69726F746365)
    {
      v45 = mlir::LLVM::LoopVectorizeAttr::parse(a2);
      goto LABEL_829;
    }

    v244 = "loop_interleave";
    v245[0] = 15;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "loop_interleave";
    v245[0] = 15;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
    if (!v227)
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "loop_unroll";
      v245[0] = 11;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
      if (v227)
      {
        goto LABEL_49;
      }

LABEL_96:
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "loop_unroll_and_jam";
      v245[0] = 19;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
      if (v227)
      {
        goto LABEL_55;
      }

      goto LABEL_98;
    }
  }

  if (v6 == 15 && *v226 == 0x746E695F706F6F6CLL && *(v226 + 7) == 0x657661656C726574)
  {
    v45 = mlir::LLVM::LoopInterleaveAttr::parse(a2);
    goto LABEL_829;
  }

  v244 = "loop_unroll";
  v245[0] = 11;
  if (!v6)
  {
    goto LABEL_96;
  }

LABEL_49:
  if (v6 == 11 && *v226 == 0x726E755F706F6F6CLL && *(v226 + 3) == 0x6C6C6F726E755F70)
  {
    v45 = mlir::LLVM::LoopUnrollAttr::parse(a2);
    goto LABEL_829;
  }

  v244 = "loop_unroll_and_jam";
  v245[0] = 19;
  if (v6)
  {
LABEL_55:
    if (v6 == 19)
    {
      v14 = *v226 == 0x726E755F706F6F6CLL && *(v226 + 8) == 0x5F646E615F6C6C6FLL;
      if (v14 && *(v226 + 11) == 0x6D616A5F646E615FLL)
      {
        v45 = mlir::LLVM::LoopUnrollAndJamAttr::parse(a2);
        goto LABEL_829;
      }
    }

    v244 = "loop_licm";
    v245[0] = 9;
    if (v6)
    {
      goto LABEL_64;
    }

    goto LABEL_100;
  }

LABEL_98:
  (*(*v225[0] + 648))(v225[0], &v244, 1);
  v244 = "loop_licm";
  v245[0] = 9;
  if (v228[2])
  {
    goto LABEL_2;
  }

  v6 = v227;
  if (v227)
  {
LABEL_64:
    if (v6 == 9 && *v226 == 0x63696C5F706F6F6CLL && *(v226 + 8) == 109)
    {
      v45 = mlir::LLVM::LoopLICMAttr::parse(a2);
      goto LABEL_829;
    }

    v244 = "loop_distribute";
    v245[0] = 15;
    goto LABEL_102;
  }

LABEL_100:
  (*(*v225[0] + 648))(v225[0], &v244, 1);
  v244 = "loop_distribute";
  v245[0] = 15;
  if (v228[2])
  {
    goto LABEL_2;
  }

  v6 = v227;
LABEL_102:
  if (v6)
  {
    if (v6 == 15 && *v226 == 0x7369645F706F6F6CLL && *(v226 + 7) == 0x6574756269727473)
    {
      v45 = mlir::LLVM::LoopDistributeAttr::parse(a2);
      goto LABEL_829;
    }

    v244 = "loop_pipeline";
    v245[0] = 13;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "loop_pipeline";
    v245[0] = 13;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
  }

  if (v6)
  {
    if (v6 == 13 && *v226 == 0x7069705F706F6F6CLL && *(v226 + 5) == 0x656E696C65706970)
    {
      v45 = mlir::LLVM::LoopPipelineAttr::parse(a2);
      goto LABEL_829;
    }

    v244 = "loop_peeled";
    v245[0] = 11;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "loop_peeled";
    v245[0] = 11;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
  }

  if (v6)
  {
    if (v6 == 11 && *v226 == 0x6565705F706F6F6CLL && *(v226 + 3) == 0x64656C6565705F70)
    {
      v45 = mlir::LLVM::LoopPeeledAttr::parse(a2);
      goto LABEL_829;
    }

    v244 = "loop_unswitch";
    v245[0] = 13;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "loop_unswitch";
    v245[0] = 13;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
  }

  if (v6)
  {
    if (v6 == 13 && *v226 == 0x736E755F706F6F6CLL && *(v226 + 5) == 0x6863746977736E75)
    {
      v45 = mlir::LLVM::LoopUnswitchAttr::parse(a2);
      goto LABEL_829;
    }

    v244 = "loop_annotation";
    v245[0] = 15;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "loop_annotation";
    v245[0] = 15;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
  }

  if (v6)
  {
    if (v6 == 15 && *v226 == 0x6E6E615F706F6F6CLL && *(v226 + 7) == 0x6E6F697461746F6ELL)
    {
      v45 = mlir::LLVM::LoopAnnotationAttr::parse(a2);
      goto LABEL_829;
    }

    v244 = "di_expression_elem";
    v245[0] = 18;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "di_expression_elem";
    v245[0] = 18;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
  }

  if (v6)
  {
    if (v6 == 18)
    {
      v65 = *v226 == 0x65727078655F6964 && *(v226 + 8) == 0x6C655F6E6F697373;
      if (v65 && *(v226 + 16) == 28005)
      {
        v45 = mlir::LLVM::DIExpressionElemAttr::parse(a2);
        goto LABEL_829;
      }
    }

    v244 = "di_expression";
    v245[0] = 13;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "di_expression";
    v245[0] = 13;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
  }

  if (v6)
  {
    if (v6 == 13 && *v226 == 0x65727078655F6964 && *(v226 + 5) == 0x6E6F697373657270)
    {
      v45 = mlir::LLVM::DIExpressionAttr::parse(a2);
      goto LABEL_829;
    }

    v244 = "di_null_type";
    v245[0] = 12;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "di_null_type";
    v245[0] = 12;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
  }

  if (!v6)
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "di_basic_type";
    v245[0] = 13;
    if (v228[2])
    {
      goto LABEL_2;
    }

    v6 = v227;
    goto LABEL_518;
  }

  if (v6 != 12 || (*v226 == 0x5F6C6C756E5F6964 ? (v147 = *(v226 + 8) == 1701869940) : (v147 = 0), !v147))
  {
    v244 = "di_basic_type";
    v245[0] = 13;
LABEL_518:
    if (v6)
    {
      if (v6 == 13 && *v226 == 0x63697361625F6964 && *(v226 + 5) == 0x657079745F636973)
      {
        v45 = mlir::LLVM::DIBasicTypeAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_compile_unit";
      v245[0] = 15;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_compile_unit";
      v245[0] = 15;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 15 && *v226 == 0x69706D6F635F6964 && *(v226 + 7) == 0x74696E755F656C69)
      {
        v45 = mlir::LLVM::DICompileUnitAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_composite_type";
      v245[0] = 17;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_composite_type";
      v245[0] = 17;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 17)
      {
        v162 = *v226 == 0x6F706D6F635F6964 && *(v226 + 8) == 0x7079745F65746973;
        if (v162 && *(v226 + 16) == 101)
        {
          v45 = mlir::LLVM::DICompositeTypeAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v244 = "di_derived_type";
      v245[0] = 15;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_derived_type";
      v245[0] = 15;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 15 && *v226 == 0x76697265645F6964 && *(v226 + 7) == 0x657079745F646576)
      {
        v45 = mlir::LLVM::DIDerivedTypeAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_file";
      v245[0] = 7;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_file";
      v245[0] = 7;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 7 && *v226 == 1717528932 && *(v226 + 3) == 1701603686)
      {
        v45 = mlir::LLVM::DIFileAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_global_variable_expression";
      v245[0] = 29;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_global_variable_expression";
      v245[0] = 29;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 29)
      {
        v167 = *v226 == 0x61626F6C675F6964 && *(v226 + 8) == 0x6261697261765F6CLL;
        v168 = v167 && *(v226 + 16) == 0x65727078655F656CLL;
        if (v168 && *(v226 + 21) == 0x6E6F697373657270)
        {
          v45 = mlir::LLVM::DIGlobalVariableExpressionAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v244 = "di_global_variable";
      v245[0] = 18;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_global_variable";
      v245[0] = 18;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 18)
      {
        v170 = *v226 == 0x61626F6C675F6964 && *(v226 + 8) == 0x6261697261765F6CLL;
        if (v170 && *(v226 + 16) == 25964)
        {
          v45 = mlir::LLVM::DIGlobalVariableAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v244 = "di_lexical_block";
      v245[0] = 16;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_lexical_block";
      v245[0] = 16;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 16 && *v226 == 0x636978656C5F6964 && *(v226 + 8) == 0x6B636F6C625F6C61)
      {
        v45 = mlir::LLVM::DILexicalBlockAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_lexical_block_file";
      v245[0] = 21;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_lexical_block_file";
      v245[0] = 21;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 21)
      {
        v173 = *v226 == 0x636978656C5F6964 && *(v226 + 8) == 0x6B636F6C625F6C61;
        if (v173 && *(v226 + 13) == 0x656C69665F6B636FLL)
        {
          v45 = mlir::LLVM::DILexicalBlockFileAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v244 = "di_local_variable";
      v245[0] = 17;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_local_variable";
      v245[0] = 17;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 17)
      {
        v175 = *v226 == 0x6C61636F6C5F6964 && *(v226 + 8) == 0x6C6261697261765FLL;
        if (v175 && *(v226 + 16) == 101)
        {
          v45 = mlir::LLVM::DILocalVariableAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v244 = "di_subprogram";
      v245[0] = 13;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_subprogram";
      v245[0] = 13;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 13 && *v226 == 0x72706275735F6964 && *(v226 + 5) == 0x6D6172676F727062)
      {
        v45 = mlir::LLVM::DISubprogramAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_module";
      v245[0] = 9;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_module";
      v245[0] = 9;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 9 && *v226 == 0x6C75646F6D5F6964 && *(v226 + 8) == 101)
      {
        v45 = mlir::LLVM::DIModuleAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_namespace";
      v245[0] = 12;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_namespace";
      v245[0] = 12;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 12 && *v226 == 0x73656D616E5F6964 && *(v226 + 8) == 1701011824)
      {
        v45 = mlir::LLVM::DINamespaceAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_imported_entity";
      v245[0] = 18;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_imported_entity";
      v245[0] = 18;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 18)
      {
        v180 = *v226 == 0x726F706D695F6964 && *(v226 + 8) == 0x69746E655F646574;
        if (v180 && *(v226 + 16) == 31092)
        {
          v45 = mlir::LLVM::DIImportedEntityAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v244 = "di_annotation";
      v245[0] = 13;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_annotation";
      v245[0] = 13;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 13 && *v226 == 0x746F6E6E615F6964 && *(v226 + 5) == 0x6E6F697461746F6ELL)
      {
        v45 = mlir::LLVM::DIAnnotationAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_subrange";
      v245[0] = 11;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_subrange";
      v245[0] = 11;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 11 && *v226 == 0x61726275735F6964 && *(v226 + 3) == 0x65676E6172627573)
      {
        v45 = mlir::LLVM::DISubrangeAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_common_block";
      v245[0] = 15;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_common_block";
      v245[0] = 15;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 15 && *v226 == 0x6F6D6D6F635F6964 && *(v226 + 7) == 0x6B636F6C625F6E6FLL)
      {
        v45 = mlir::LLVM::DICommonBlockAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_generic_subrange";
      v245[0] = 19;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_generic_subrange";
      v245[0] = 19;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 19)
      {
        v185 = *v226 == 0x72656E65675F6964 && *(v226 + 8) == 0x61726275735F6369;
        if (v185 && *(v226 + 11) == 0x65676E6172627573)
        {
          v45 = mlir::LLVM::DIGenericSubrangeAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v244 = "di_subroutine_type";
      v245[0] = 18;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_subroutine_type";
      v245[0] = 18;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 18)
      {
        v187 = *v226 == 0x6F726275735F6964 && *(v226 + 8) == 0x79745F656E697475;
        if (v187 && *(v226 + 16) == 25968)
        {
          v45 = mlir::LLVM::DISubroutineTypeAttr::parse(a2);
          goto LABEL_829;
        }
      }

      v244 = "di_label";
      v245[0] = 8;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_label";
      v245[0] = 8;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 8 && *v226 == 0x6C6562616C5F6964)
      {
        v45 = mlir::LLVM::DILabelAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "di_string_type";
      v245[0] = 14;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "di_string_type";
      v245[0] = 14;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 14 && *v226 == 0x6E697274735F6964 && *(v226 + 6) == 0x657079745F676E69)
      {
        v45 = mlir::LLVM::DIStringTypeAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "memory_effects";
      v245[0] = 14;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "memory_effects";
      v245[0] = 14;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (v6)
    {
      if (v6 == 14 && *v226 == 0x655F79726F6D656DLL && *(v226 + 6) == 0x737463656666655FLL)
      {
        v45 = mlir::LLVM::MemoryEffectsAttr::parse(a2);
        goto LABEL_829;
      }

      v244 = "alias_scope_domain";
      v245[0] = 18;
    }

    else
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "alias_scope_domain";
      v245[0] = 18;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
    }

    if (!v6)
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "alias_scope";
      v245[0] = 11;
      if (v228[2])
      {
        goto LABEL_2;
      }

      v6 = v227;
      goto LABEL_817;
    }

    if (v6 != 18 || (*v226 == 0x63735F7361696C61 ? (v191 = *(v226 + 8) == 0x616D6F645F65706FLL) : (v191 = 0), v191 ? (v192 = *(v226 + 16) == 28265) : (v192 = 0), !v192))
    {
      v244 = "alias_scope";
      v245[0] = 11;
LABEL_817:
      if (v6 != 11)
      {
        if (!v6)
        {
          (*(*v225[0] + 648))(v225[0], &v244, 1);
        }

        goto LABEL_2;
      }

      if (*v226 != 0x63735F7361696C61 || *(v226 + 3) != 0x65706F63735F7361)
      {
LABEL_2:
        v5 = 0;
        goto LABEL_834;
      }

      v45 = mlir::LLVM::AliasScopeAttr::parse(a2);
      goto LABEL_829;
    }

    v45 = mlir::LLVM::AliasScopeDomainAttr::parse(a2);
LABEL_829:
    v5 = v45;
    v159 = v45 == 0;
    goto LABEL_830;
  }

  v164 = *(**(*(*a2 + 32))(a2) + 560);
  v236 = &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id;
  v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v164 + 232), &v236);
LABEL_514:
  v159 = v5 == 0;
LABEL_830:
  v194 = !v159;
  v228[0] = v194;
  *&v228[1] = 257;
LABEL_834:
  v244 = "access_group";
  v245[0] = 12;
  if (v228[2])
  {
    goto LABEL_1002;
  }

  v195 = v227;
  if (v227 == 12)
  {
    if (*v226 == 0x675F737365636361 && *(v226 + 8) == 1886744434)
    {
      v204 = mlir::LLVM::AccessGroupAttr::parse(a2);
      goto LABEL_997;
    }

    goto LABEL_849;
  }

  if (v227)
  {
LABEL_849:
    v229 = "tbaa_root";
    v230 = 9;
    goto LABEL_850;
  }

  (*(*v225[0] + 648))(v225[0], &v244, 1);
  v229 = "tbaa_root";
  v230 = 9;
  if (v228[2])
  {
    goto LABEL_1002;
  }

  v195 = v227;
  if (v227)
  {
LABEL_850:
    if (v195 != 9 || (*v226 == 0x6F6F725F61616274 ? (v197 = *(v226 + 8) == 116) : (v197 = 0), !v197))
    {
      v244 = "tbaa_member";
      v245[0] = 11;
      if (!v195)
      {
        goto LABEL_841;
      }

LABEL_856:
      if (v195 == 11 && *v226 == 0x6D656D5F61616274 && *(v226 + 3) == 0x7265626D656D5F61)
      {
        v204 = mlir::LLVM::TBAAMemberAttr::parse(a2);
        goto LABEL_997;
      }

      v244 = "tbaa_type_desc";
      v245[0] = 14;
      if (!v195)
      {
        goto LABEL_843;
      }

      goto LABEL_862;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(__p) = 0;
    LOBYTE(v234) = 0;
    if ((*(*a2 + 160))(a2))
    {
      v243 = 0;
      v231[0] = a2;
      v231[1] = &v243;
      v231[2] = &__p;
      v241 = 0;
      v242 = 0;
      if ((*(*a2 + 416))(a2, &v241))
      {
        v205 = v241;
        for (i = v242; mlir::LLVM::TBAARootAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v231, v205, i); i = v240)
        {
          if (((*(*a2 + 128))(a2) & 1) == 0)
          {
            goto LABEL_924;
          }

          v239 = 0;
          v240 = 0;
          if (!mlir::AsmParser::parseKeyword(a2, &v239))
          {
            v217 = (*(*a2 + 40))(a2);
            v236 = "expected a parameter name in struct";
            v238 = 259;
            (*(*a2 + 24))(&v244, a2, v217, &v236);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v244);
            goto LABEL_990;
          }

          v205 = v239;
        }

        goto LABEL_990;
      }

LABEL_924:
      if (((*(*a2 + 168))(a2) & 1) == 0)
      {
LABEL_990:
        v5 = 0;
        goto LABEL_991;
      }
    }

    v208 = *(*(*a2 + 32))(a2);
    if (v234)
    {
      v209 = __p;
    }

    else
    {
      v209 = 0;
    }

    v5 = mlir::LLVM::TBAARootAttr::get(v208, v209);
    goto LABEL_991;
  }

  (*(*v225[0] + 648))(v225[0], &v229, 1);
  v244 = "tbaa_member";
  v245[0] = 11;
  if (v228[2])
  {
    goto LABEL_1002;
  }

  v195 = v227;
  if (v227)
  {
    goto LABEL_856;
  }

LABEL_841:
  (*(*v225[0] + 648))(v225[0], &v244, 1);
  v244 = "tbaa_type_desc";
  v245[0] = 14;
  if (v228[2])
  {
    goto LABEL_1002;
  }

  v195 = v227;
  if (!v227)
  {
LABEL_843:
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "tbaa_tag";
    v245[0] = 8;
    if (v228[2])
    {
      goto LABEL_1002;
    }

    v195 = v227;
    goto LABEL_868;
  }

LABEL_862:
  if (v195 == 14 && *v226 == 0x7079745F61616274 && *(v226 + 6) == 0x637365645F657079)
  {
    v204 = mlir::LLVM::TBAATypeDescriptorAttr::parse(a2);
    goto LABEL_997;
  }

  v244 = "tbaa_tag";
  v245[0] = 8;
LABEL_868:
  if (v195)
  {
    if (v195 == 8 && *v226 == 0x6761745F61616274)
    {
      v204 = mlir::LLVM::TBAATagAttr::parse(a2);
      goto LABEL_997;
    }

    v244 = "constant_range";
    v245[0] = 14;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "constant_range";
    v245[0] = 14;
    if (v228[2])
    {
      goto LABEL_1002;
    }

    v195 = v227;
    if (!v227)
    {
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "vscale_range";
      v245[0] = 12;
      if (v228[2])
      {
        goto LABEL_1002;
      }

      v195 = v227;
      if (v227)
      {
        goto LABEL_878;
      }

LABEL_908:
      (*(*v225[0] + 648))(v225[0], &v244, 1);
      v244 = "target_features";
      v245[0] = 15;
      if (v228[2])
      {
        goto LABEL_1002;
      }

      v195 = v227;
      if (v227)
      {
        goto LABEL_884;
      }

      goto LABEL_910;
    }
  }

  if (v195 == 14 && *v226 == 0x746E6174736E6F63 && *(v226 + 6) == 0x65676E61725F746ELL)
  {
    v204 = mlir::LLVM::ConstantRangeAttr::parse(a2);
    goto LABEL_997;
  }

  v244 = "vscale_range";
  v245[0] = 12;
  if (!v195)
  {
    goto LABEL_908;
  }

LABEL_878:
  if (v195 == 12 && *v226 == 0x725F656C61637376 && *(v226 + 8) == 1701277281)
  {
    v204 = mlir::LLVM::VScaleRangeAttr::parse(a2);
    goto LABEL_997;
  }

  v244 = "target_features";
  v245[0] = 15;
  if (v195)
  {
LABEL_884:
    if (v195 == 15 && *v226 == 0x665F746567726174 && *(v226 + 7) == 0x7365727574616566)
    {
      v204 = mlir::LLVM::TargetFeaturesAttr::parse(a2);
      goto LABEL_997;
    }

    v244 = "undef";
    v245[0] = 5;
    if (v195)
    {
      goto LABEL_890;
    }

LABEL_912:
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "poison";
    v245[0] = 6;
    if (v228[2])
    {
      goto LABEL_1002;
    }

    v195 = v227;
    goto LABEL_914;
  }

LABEL_910:
  (*(*v225[0] + 648))(v225[0], &v244, 1);
  v244 = "undef";
  v245[0] = 5;
  if (v228[2])
  {
    goto LABEL_1002;
  }

  v195 = v227;
  if (!v227)
  {
    goto LABEL_912;
  }

LABEL_890:
  if (v195 == 5 && *v226 == 1701080693 && *(v226 + 4) == 102)
  {
    v211 = *(**(*(*a2 + 32))(a2) + 560);
    v212 = &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id;
    goto LABEL_981;
  }

  v244 = "poison";
  v245[0] = 6;
LABEL_914:
  if (v195)
  {
    if (v195 != 6 || (*v226 == 1936289648 ? (v207 = *(v226 + 4) == 28271) : (v207 = 0), !v207))
    {
      v244 = "vec_type_hint";
      v245[0] = 13;
      goto LABEL_933;
    }

    v211 = *(**(*(*a2 + 32))(a2) + 560);
    v212 = &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id;
LABEL_981:
    v236 = v212;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v211 + 232), &v236);
LABEL_991:
    v218 = v5 == 0;
LABEL_998:
    v220 = !v218;
    v228[0] = v220;
    *&v228[1] = 257;
    goto LABEL_1002;
  }

  (*(*v225[0] + 648))(v225[0], &v244, 1);
  v244 = "vec_type_hint";
  v245[0] = 13;
  if (v228[2])
  {
    goto LABEL_1002;
  }

  v195 = v227;
LABEL_933:
  if (v195)
  {
    if (v195 != 13 || (*v226 == 0x657079745F636576 ? (v210 = *(v226 + 5) == 0x746E69685F657079) : (v210 = 0), !v210))
    {
      v244 = "zero";
      v245[0] = 4;
      goto LABEL_943;
    }

    v204 = mlir::LLVM::VecTypeHintAttr::parse(a2);
LABEL_997:
    v5 = v204;
    v218 = v204 == 0;
    goto LABEL_998;
  }

  (*(*v225[0] + 648))(v225[0], &v244, 1);
  v244 = "zero";
  v245[0] = 4;
  if (v228[2])
  {
    goto LABEL_1002;
  }

  v195 = v227;
LABEL_943:
  if (!v195)
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "tailcallkind";
    v245[0] = 12;
    if (v228[2])
    {
      goto LABEL_1002;
    }

    v195 = v227;
    goto LABEL_950;
  }

  if (v195 == 4 && *v226 == 1869768058)
  {
    v211 = *(**(*(*a2 + 32))(a2) + 560);
    v212 = &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id;
    goto LABEL_981;
  }

  v244 = "tailcallkind";
  v245[0] = 12;
LABEL_950:
  if (v195)
  {
    if (v195 == 12 && *v226 == 0x6C6C61636C696174 && *(v226 + 8) == 1684957547)
    {
      v204 = mlir::LLVM::TailCallKindAttr::parse(a2);
      goto LABEL_997;
    }

    v244 = "mlir.workgroup_attribution";
    v245[0] = 26;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "mlir.workgroup_attribution";
    v245[0] = 26;
    if (v228[2])
    {
      goto LABEL_1002;
    }

    v195 = v227;
  }

  if (v195)
  {
    if (v195 == 26)
    {
      v214 = *v226 == 0x726F772E72696C6DLL && *(v226 + 8) == 0x615F70756F72676BLL;
      v215 = v214 && *(v226 + 16) == 0x6974756269727474;
      if (v215 && *(v226 + 24) == 28271)
      {
        v204 = mlir::LLVM::WorkgroupAttributionAttr::parse(a2);
        goto LABEL_997;
      }
    }

    v244 = "overflow";
    v245[0] = 8;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "overflow";
    v245[0] = 8;
    if (v228[2])
    {
      goto LABEL_1002;
    }

    v195 = v227;
  }

  if (v195)
  {
    if (v195 == 8 && *v226 == 0x776F6C667265766FLL)
    {
      v204 = mlir::LLVM::IntegerOverflowFlagsAttr::parse(a2);
      goto LABEL_997;
    }

    v244 = "fastmath";
    v245[0] = 8;
  }

  else
  {
    (*(*v225[0] + 648))(v225[0], &v244, 1);
    v244 = "fastmath";
    v245[0] = 8;
    if (v228[2])
    {
      goto LABEL_1002;
    }

    v195 = v227;
  }

  if (v195)
  {
    if (v195 == 8 && *v226 == 0x6874616D74736166)
    {
      v204 = mlir::LLVM::FastmathFlagsAttr::parse(a2);
      goto LABEL_997;
    }

LABEL_994:
    v219 = v226;
    *v228 = 0;
    v228[2] = 1;
    goto LABEL_1003;
  }

  (*(*v225[0] + 648))(v225[0], &v244, 1);
  if ((v228[2] & 1) == 0)
  {
    v195 = v227;
    goto LABEL_994;
  }

LABEL_1002:
  v195 = 0;
  v219 = 0;
LABEL_1003:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v225) & 0x100) == 0)
  {
    v232 = 257;
    (*(*a2 + 24))(&v244, a2, v4, v231);
    if (v244)
    {
      if (v244)
      {
        v238 = 261;
        v236 = v219;
        v237 = v195;
        mlir::Diagnostic::operator<<(v245, &v236);
        if (v244)
        {
          if (v244)
          {
            v221 = *(a1 + 8);
            v222 = *(a1 + 16);
            v238 = 261;
            v236 = v221;
            v237 = v222;
            mlir::Diagnostic::operator<<(v245, &v236);
            if (v244)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v244);
    v5 = 0;
  }

  v223 = *MEMORY[0x277D85DE8];
  return v5;
}