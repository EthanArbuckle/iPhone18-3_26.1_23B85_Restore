void mlir::FieldParser<std::string,std::string>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  if (mlir::AsmParser::parseString(a1, __p))
  {
    *a2 = *__p;
    *(a2 + 16) = v5;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    v3 = SHIBYTE(v5);
    *(a2 + 24) = 0;
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ExternAttr::print(mlir::ODIE::Compiler::CoreML::ExternAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(uint64_t *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v9[1] = a1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v13[1] = v9;
  v12[0] = a2;
  v12[1] = a3;
  v5 = llvm::hashing::detail::hash_combine_range_impl<int const>(a2, a2 + 4 * a3, a3, a4);
  v6 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (8 * v5 + 8));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v13) = 0;
  v16 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(a1, v10);
  std::__optional_storage_base<llvm::SmallVector<int,12u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<int,12u>,false>>(&v13, v10);
  if (v12 == 1 && v10[0] != v11)
  {
    free(v10[0]);
  }

  v2 = *a1;
  if ((v16 & 1) == 0)
  {
    v6 = (*(v2 + 40))(a1);
    v11[8] = 259;
    (*(*a1 + 24))(v9, a1, v6, v10);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
    goto LABEL_9;
  }

  if (((*(v2 + 296))(a1) & 1) == 0)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = (*(*a1 + 32))(a1);
  v5 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(*v3, v13, v14, v4);
LABEL_10:
  if (v16 == 1 && v13 != &v15)
  {
    free(v13);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = 0xC00000000;
  if ((*(*a1 + 392))())
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0xC00000000;
    if (v6)
    {
      llvm::SmallVectorImpl<int>::operator=(a2, &v5);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v3;
  if (v5 != v7)
  {
    free(v5);
  }

  v4 = *MEMORY[0x277D85DE8];
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(mlir::ODIE::Compiler::CoreML::TensorEncodingAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *this;
  v7 = *(*this + 16);
  if (v7)
  {
    v8 = *(v6 + 8);
    v9 = (*(*a2 + 16))(a2);
    llvm::write_integer(v9, *v8, 0, 0);
    if (v7 != 1)
    {
      v10 = v8 + 1;
      v11 = 4 * v7 - 4;
      do
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
        v15 = *v10++;
        llvm::write_integer(v14, v15, 0, 0);
        v11 -= 4;
      }

      while (v11);
    }
  }

  result = (*(*a2 + 16))(a2);
  v17 = *(result + 4);
  if (*(result + 3) == v17)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(uint64_t *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v23[1] = a1;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v25[1] = v23;
  v24[0] = a2;
  v24[1] = a3;
  if (a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = &a2[2 * a3];
    while (v7 <= 0x38)
    {
      v9 = v7 + 8;
      v10 = *v6;
      v6 += 2;
      *(__src + v7) = (v10 >> 4) ^ (v10 >> 9);
      v7 = v9;
      if (8 * a3 == v9)
      {
        goto LABEL_7;
      }
    }

    v26[0] = xmmword_25D0A0610;
    v26[1] = xmmword_25D0A0620;
    v26[2] = xmmword_25D0A0630;
    v27 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v26, __src, a3, a4);
    if (v7 == 8 * a3)
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
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, __src + v15, &v29);
        llvm::hashing::detail::hash_state::mix(v26, __src, v17, v18);
        v12 += v15;
      }

      while (v6 != v8);
    }

    v11 = llvm::hashing::detail::hash_state::finalize(v26, v12);
  }

  else
  {
    v9 = 0;
LABEL_7:
    v11 = llvm::hashing::detail::hash_short(__src, v9, 0xFF51AFD7ED558CCDLL);
  }

  v19 = HIDWORD(v11) ^ 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (8 * v11 + 8));
  *&v26[0] = v24;
  __src[0] = v24;
  __src[1] = v25;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __src);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(uint64_t *a1)
{
  v26[6] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v20) = 0;
  v23 = 0;
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_33;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    v24 = v26;
    v25 = 0x600000000;
    v14[0] = a1;
    v14[1] = &v24;
    if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v14, 0, 0))
    {
      v16 = v18;
      v17 = 0x600000000;
      if (v25)
      {
        llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::operator=(&v16, &v24);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
      LOBYTE(v16) = 0;
    }

    v19 = v7;
    if (v24 != v26)
    {
      free(v24);
      v7 = v19;
    }

    if (v23 == v7)
    {
      if (v23)
      {
        llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::operator=(&v20, &v16);
      }
    }

    else if (v23)
    {
      if (v20 != v22)
      {
        free(v20);
      }

      v23 = 0;
    }

    else
    {
      v20 = v22;
      v21 = 0x600000000;
      if (v17)
      {
        llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::operator=(&v20, &v16);
      }

      v23 = 1;
    }

    if (v19 == 1 && v16 != v18)
    {
      free(v16);
    }

    v9 = *a1;
    if (v23)
    {
      if ((*(v9 + 328))(a1))
      {
        goto LABEL_3;
      }
    }

    else
    {
      v10 = (*(v9 + 40))(a1);
      v18[8] = 259;
      (*(*a1 + 24))(v15, a1, v10, &v16);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    }

LABEL_33:
    v11 = 0;
    goto LABEL_41;
  }

LABEL_3:
  v3 = *(*(*a1 + 32))(a1);
  v24 = v26;
  v25 = 0x600000000;
  v16 = v18;
  v17 = 0x600000000;
  if (v23 == 1)
  {
    v4 = v21;
    if (v21)
    {
      if (v21 < 7)
      {
        v6 = v18;
        v5 = v21;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v21, 8);
        v5 = v21;
        if (!v21)
        {
LABEL_36:
          LODWORD(v17) = v4;
          v8 = v16;
          goto LABEL_37;
        }

        v6 = v16;
      }

      memcpy(v6, v20, 8 * v5);
      goto LABEL_36;
    }
  }

  v4 = 0;
  v8 = v18;
LABEL_37:
  v11 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(v3, v8, v4, v2);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v24 != v26)
  {
    free(v24);
  }

LABEL_41:
  if (v23 == 1 && v20 != v22)
  {
    free(v20);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefAttr::get(void *a1)
{
  v1 = a1[1];
  v2 = *(**a1 + 32);
  v3 = a1[2];
  v4 = *v2;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
  v6[1] = v2;
  return mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>((v4 + 560), _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_, v6, v1, v3);
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::parse(mlir::AsmParser *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_19;
  }

  v2 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v11))
  {
    goto LABEL_18;
  }

  v3 = mlir::ODIE::Compiler::CoreML::symbolizeIntent(v11, v12);
  if ((v4 & 1) == 0)
  {
    v10[16] = 257;
    (*(*a1 + 24))(&v14, a1, v2, v10);
    if (v14)
    {
      mlir::Diagnostic::operator<<<10ul>(v15, "expected ");
      if (v14)
      {
        mlir::Diagnostic::operator<<<37ul>(v15, "mlir::ODIE::Compiler::CoreML::Intent");
        if (v14)
        {
          mlir::Diagnostic::operator<<<16ul>(v15, " to be one of: ");
          if (v14)
          {
            mlir::Diagnostic::operator<<<4ul>(v15, "out");
            if (v14)
            {
              mlir::Diagnostic::operator<<<3ul>(v15, ", ");
              if (v14)
              {
                mlir::Diagnostic::operator<<<6ul>(v15, "inout");
                if (v14)
                {
                  mlir::Diagnostic::operator<<<3ul>(v15, ", ");
                  if (v14)
                  {
                    mlir::Diagnostic::operator<<<7ul>(v15, "return");
                    if (v14)
                    {
                      mlir::Diagnostic::operator<<<3ul>(v15, ", ");
                      if (v14)
                      {
                        mlir::Diagnostic::operator<<<3ul>(v15, "in");
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

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
LABEL_18:
    v8 = (*(*a1 + 40))(a1);
    v15[12] = 259;
    (*(*a1 + 24))(v13, a1, v8, &v14);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    goto LABEL_19;
  }

  v5 = v3;
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  v6 = (*(*a1 + 32))(a1);
  result = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*v6, v5);
LABEL_20:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::IntentAttr::print(mlir::ODIE::Compiler::CoreML::IntentAttr *this, mlir::AsmPrinter *a2)
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
  if (v6 > 3)
  {
    v7 = 0;
    v8 = &str_56;
  }

  else
  {
    v7 = qword_25D09F5A0[v6];
    v8 = (&off_2799BD9F0)[v6];
  }

  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v8, v7);
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

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(uint64_t *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23[9] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
  v14[1] = a1;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJNS_9StringRefESF_NS1_14DictionaryAttrESG_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v21[1] = v14;
  v16[0] = a2;
  v16[1] = a3;
  v17[0] = a4;
  v17[1] = a5;
  v18 = a6;
  v19 = a7;
  v20[0] = a9;
  v20[1] = a10;
  memset(v23, 0, 56);
  memset(v22, 0, sizeof(v22));
  v23[7] = 0xFF51AFD7ED558CCDLL;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(v22, v22, v23, a2, a3, v17, &v18, &v19, v20);
  v15 = v16;
  *&v22[0] = v16;
  *(&v22[0] + 1) = v21;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v22);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(mlir::AsmParser *a1)
{
  v80 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v53[0]) = 0;
  v55 = 0;
  LOBYTE(v50[0]) = 0;
  v52 = 0;
  LOBYTE(v47[0]) = 0;
  v49 = 0;
  if ((*(*a1 + 152))(a1))
  {
    v45 = 0;
    v46 = 0;
    if (mlir::AsmParser::parseKeyword(a1, &v45))
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v43 = 0;
      v44 = 0;
      v8 = 5;
      while (1)
      {
        v10 = v45;
        v9 = v46;
        if (((*(*a1 + 136))(a1) & 1) == 0)
        {
          goto LABEL_59;
        }

        if (v7 & 1 | (v9 != 6))
        {
          if (v4 & 1 | (v9 != 3))
          {
            if (v3 & 1 | (v9 != 10))
            {
              if (v6 & 1 | (v9 != 15))
              {
                if (v44 & 1 | (v9 != 5))
                {
                  goto LABEL_97;
                }

                if (*v10 != 1920235621 || *(v10 + 4) != 97)
                {
                  v9 = 5;
LABEL_97:
                  v40 = (*(*a1 + 40))(a1);
                  v56 = "duplicate or unknown struct parameter name: ";
                  v57 = 259;
                  (*(*a1 + 24))(&__p, a1, v40, &v56);
                  if (__p.n128_u64[0])
                  {
                    v59 = 261;
                    v58[0] = v10;
                    v58[1] = v9;
                    mlir::Diagnostic::operator<<(&__p.n128_i64[1], v58);
                  }

                  p_p = &__p;
                  goto LABEL_58;
                }

                mlir::FieldParser<std::string,std::string>::parse(a1, &__p);
                v12 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v47, &__p);
                if (v63 == 1 && v62 < 0)
                {
                  operator delete(__p.n128_u64[0]);
                }

                if ((v49 & 1) == 0)
                {
                  v42 = (*(*a1 + 40))(a1, v12);
                  v64 = 259;
                  (*(*a1 + 24))(v65, a1, v42, &__p);
                  p_p = v65;
                  goto LABEL_58;
                }

                v44 = 1;
              }

              else
              {
                if (*v10 != 0x65746167656C6564 || *(v10 + 7) != 0x736E6F6974704F65)
                {
                  v9 = 15;
                  goto LABEL_97;
                }

                v19 = mlir::FieldParser<mlir::DictionaryAttr,mlir::DictionaryAttr>::parse(a1);
                if ((v20 & 1) == 0)
                {
                  v41 = (*(*a1 + 40))(a1);
                  v64 = 259;
                  (*(*a1 + 24))(v66, a1, v41, &__p);
                  p_p = v66;
                  goto LABEL_58;
                }

                v43 = v19;
                v6 = 1;
              }
            }

            else
            {
              if (*v10 != 0x6F79614C61746164 || *(v10 + 8) != 29813)
              {
                v9 = 10;
                goto LABEL_97;
              }

              v16 = mlir::FieldParser<mlir::DictionaryAttr,mlir::DictionaryAttr>::parse(a1);
              if ((v17 & 1) == 0)
              {
                v39 = (*(*a1 + 40))(a1);
                v64 = 259;
                (*(*a1 + 24))(v67, a1, v39, &__p);
                p_p = v67;
                goto LABEL_58;
              }

              v5 = v16;
              v3 = 1;
            }
          }

          else
          {
            if (*v10 != 28531 || *(v10 + 2) != 99)
            {
              v9 = 3;
              goto LABEL_97;
            }

            mlir::FieldParser<std::string,std::string>::parse(a1, &__p);
            v12 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v50, &__p);
            if (v63 == 1 && v62 < 0)
            {
              operator delete(__p.n128_u64[0]);
            }

            if ((v52 & 1) == 0)
            {
              v38 = (*(*a1 + 40))(a1, v12);
              v64 = 259;
              (*(*a1 + 24))(v68, a1, v38, &__p);
              p_p = v68;
              goto LABEL_58;
            }

            v4 = 1;
          }
        }

        else
        {
          if (*v10 != 1885958772 || *(v10 + 4) != 25964)
          {
            v9 = 6;
            goto LABEL_97;
          }

          mlir::FieldParser<std::string,std::string>::parse(a1, &__p);
          v12 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v53, &__p);
          if (v63 == 1 && v62 < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          if ((v55 & 1) == 0)
          {
            v37 = (*(*a1 + 40))(a1, v12);
            v64 = 259;
            (*(*a1 + 24))(v73, a1, v37, &__p);
            p_p = v73;
            goto LABEL_58;
          }

          v7 = 1;
        }

        if (!--v8)
        {
          break;
        }

        if (((*(*a1 + 120))(a1, v12) & 1) == 0)
        {
          goto LABEL_59;
        }

        v45 = 0;
        v46 = 0;
        if (!mlir::AsmParser::parseKeyword(a1, &v45))
        {
          goto LABEL_57;
        }
      }

      if ((*(*a1 + 168))(a1, v12))
      {
        v26 = (*(*a1 + 32))(a1);
        v27 = v54 >= 0 ? v53 : v53[0];
        v28 = v54 >= 0 ? v54 : v53[1];
        v29 = v51 >= 0 ? v50 : v50[0];
        v30 = v51 >= 0 ? v51 : v50[1];
        v31 = v48 >= 0 ? v47 : v47[0];
        v32 = *v26;
        v33 = v48 >= 0 ? v48 : v47[1];
        if (v30)
        {
          goto LABEL_93;
        }

        LOWORD(v70) = 257;
        (*(*a1 + 24))(v73, a1, v2, v68);
        if (*&v73[0])
        {
          mlir::Diagnostic::operator<<<22ul>(v73 + 8, "SOC must not be empty");
        }

        v34 = v79;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v73);
        if ((v34 & 1) == 0)
        {
LABEL_93:
          v35 = *v32;
          v66[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
          v66[1] = v32;
          v67[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJRNS_9StringRefESG_RNS1_14DictionaryAttrESI_SG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
          v67[1] = v66;
          v68[0] = v27;
          v68[1] = v28;
          v69[0] = v29;
          v69[1] = v30;
          v70 = v5;
          v71 = v43;
          v72[0] = v31;
          v72[1] = v33;
          memset(v76, 0, sizeof(v76));
          v75 = 0u;
          v74 = 0u;
          memset(v73, 0, sizeof(v73));
          v77 = 0;
          v78 = 0xFF51AFD7ED558CCDLL;
          v36 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(v73, v73, v76, v27, v28, v69, &v70, &v71, v72);
          v65[0] = v68;
          *&v73[0] = v68;
          *(&v73[0] + 1) = v67;
          v23 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v35 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v36, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef &,llvm::StringRef &,mlir::DictionaryAttr &,mlir::DictionaryAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef &,llvm::StringRef &,mlir::DictionaryAttr &,mlir::DictionaryAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef &,llvm::StringRef &,mlir::DictionaryAttr &,mlir::DictionaryAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef &,llvm::StringRef &,mlir::DictionaryAttr &,mlir::DictionaryAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v73);
          goto LABEL_60;
        }
      }
    }

    else
    {
LABEL_57:
      v21 = (*(*a1 + 40))(a1);
      *&v73[0] = "expected a parameter name in struct";
      LOWORD(v74) = 259;
      (*(*a1 + 24))(v60, a1, v21, v73);
      p_p = v60;
LABEL_58:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(p_p);
    }
  }

LABEL_59:
  v23 = 0;
LABEL_60:
  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (v52 == 1 && v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v55 == 1 && v54 < 0)
  {
    operator delete(v53[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(mlir::ODIE::Compiler::CoreML::TargetSpecAttr *this, mlir::AsmPrinter *a2)
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
  if ((*(v6 + 3) - v7) > 8)
  {
    *(v7 + 8) = 32;
    *v7 = *"triple = ";
    *(v6 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v6, "triple = ", 9uLL);
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
  if ((*(v10 + 3) - v11) > 5)
  {
    *(v11 + 4) = 8253;
    *v11 = 543387507;
    *(v10 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v10, "soc = ", 6uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 24), *(*this + 32));
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
    qmemcpy(v15, "dataLayout = ", 13);
    *(v14 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v14, "dataLayout = ", 0xDuLL);
  }

  (*(*a2 + 40))(a2, *(*this + 40));
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
  if ((*(v18 + 3) - v19) > 0x11)
  {
    *(v19 + 16) = 8253;
    *v19 = *"delegateOptions = ";
    *(v18 + 4) += 18;
  }

  else
  {
    llvm::raw_ostream::write(v18, "delegateOptions = ", 0x12uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 48));
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 1uLL)
  {
    *v21 = 8236;
    *(v20 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, ", ", 2uLL);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 7uLL)
  {
    *v23 = 0x203D206172747865;
    *(v22 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v22, "extra = ", 8uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 56), *(*this + 64));
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

uint64_t mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(mlir::AsmParser *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  v2 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v10))
  {
    goto LABEL_14;
  }

  v3 = mlir::ODIE::Compiler::CoreML::symbolizeApproximate(v10, v11);
  if ((v3 & 0x100000000) == 0)
  {
    v9[16] = 257;
    (*(*a1 + 24))(&v13, a1, v2, v9);
    if (v13)
    {
      mlir::Diagnostic::operator<<<10ul>(v14, "expected ");
      if (v13)
      {
        mlir::Diagnostic::operator<<<42ul>(v14, "mlir::ODIE::Compiler::CoreML::Approximate");
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
                mlir::Diagnostic::operator<<<5ul>(v14, "tanh");
                if (v13)
                {
                  mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                  if (v13)
                  {
                    mlir::Diagnostic::operator<<<8ul>(v14, "sigmoid");
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
LABEL_14:
    v4 = (*(*a1 + 40))(a1);
    v14[12] = 259;
    (*(*a1 + 24))(v12, a1, v4, &v13);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_15;
  }

  v7 = v3;
  if ((*(*a1 + 168))(a1))
  {
    v8 = (*(*a1 + 32))(a1);
    result = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(*v8, v7);
    goto LABEL_16;
  }

LABEL_15:
  result = 0;
LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ApproximateAttr::print(mlir::ODIE::Compiler::CoreML::ApproximateAttr *this, mlir::AsmPrinter *a2)
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
  if (v6 > 2)
  {
    v7 = 0;
    v8 = &str_56;
  }

  else
  {
    v7 = qword_25D09F5C0[v6];
    v8 = (&off_2799BDA10)[v6];
  }

  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v8, v7);
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

uint64_t mlir::ODIE::Compiler::CoreML::PaddingModeAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15PaddingModeAttrEJNS4_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::PaddingModeAttr::parse(mlir::AsmParser *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_38;
  }

  v2 = (*(*a1 + 40))(a1);
  v12 = 0;
  v13 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v12))
  {
    goto LABEL_37;
  }

  if (v13 == 7)
  {
    if (*v12 == 1818649970 && *(v12 + 3) == 1952671084)
    {
      v3 = 2;
      goto LABEL_43;
    }

LABEL_23:
    v11[16] = 257;
    (*(*a1 + 24))(&v15, a1, v2, v11);
    if (v15)
    {
      mlir::Diagnostic::operator<<<10ul>(v16, "expected ");
      if (v15)
      {
        mlir::Diagnostic::operator<<<42ul>(v16, "mlir::ODIE::Compiler::CoreML::PaddingMode");
        if (v15)
        {
          mlir::Diagnostic::operator<<<16ul>(v16, " to be one of: ");
          if (v15)
          {
            mlir::Diagnostic::operator<<<9ul>(v16, "circular");
            if (v15)
            {
              mlir::Diagnostic::operator<<<3ul>(v16, ", ");
              if (v15)
              {
                mlir::Diagnostic::operator<<<9ul>(v16, "constant");
                if (v15)
                {
                  mlir::Diagnostic::operator<<<3ul>(v16, ", ");
                  if (v15)
                  {
                    mlir::Diagnostic::operator<<<8ul>(v16, "reflect");
                    if (v15)
                    {
                      mlir::Diagnostic::operator<<<3ul>(v16, ", ");
                      if (v15)
                      {
                        mlir::Diagnostic::operator<<<10ul>(v16, "replicate");
                        if (v15)
                        {
                          mlir::Diagnostic::operator<<<3ul>(v16, ", ");
                          if (v15)
                          {
                            mlir::Diagnostic::operator<<<10ul>(v16, "symmetric");
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

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_37:
    v7 = (*(*a1 + 40))(a1);
    v16[12] = 259;
    (*(*a1 + 24))(v14, a1, v7, &v15);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    goto LABEL_38;
  }

  if (v13 == 9)
  {
    if (*v12 == 0x746163696C706572 && *(v12 + 8) == 101)
    {
      v3 = 3;
      goto LABEL_43;
    }

    if (*v12 == 0x697274656D6D7973 && *(v12 + 8) == 99)
    {
      v3 = 4;
      goto LABEL_43;
    }

    goto LABEL_23;
  }

  if (v13 != 8)
  {
    goto LABEL_23;
  }

  if (*v12 != 0x72616C7563726963)
  {
    if (*v12 == 0x746E6174736E6F63)
    {
      v3 = 1;
      goto LABEL_43;
    }

    goto LABEL_23;
  }

  v3 = 0;
LABEL_43:
  if ((*(*a1 + 168))(a1))
  {
    v10 = (*(*a1 + 32))(a1);
    result = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::get(*v10, v3);
    goto LABEL_39;
  }

LABEL_38:
  result = 0;
LABEL_39:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::PaddingModeAttr::print(mlir::ODIE::Compiler::CoreML::PaddingModeAttr *this, mlir::AsmPrinter *a2)
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
  if (v6 > 4)
  {
    v7 = 0;
    v8 = &str_56;
  }

  else
  {
    v7 = qword_25D09F5D8[v6];
    v8 = (&off_2799BDA28)[v6];
  }

  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v8, v7);
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

uint64_t mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28InterpolationModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21InterpolationModeAttrEJNS4_17InterpolationModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::parse(mlir::AsmParser *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v2 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v11))
  {
    goto LABEL_23;
  }

  if (v12 == 16)
  {
    if (*v11 != 0x5F7473657261656ELL || *(v11 + 8) != 0x726F62686769656ELL)
    {
LABEL_15:
      v10[16] = 257;
      (*(*a1 + 24))(&v14, a1, v2, v10);
      if (v14)
      {
        mlir::Diagnostic::operator<<<10ul>(v15, "expected ");
        if (v14)
        {
          mlir::Diagnostic::operator<<<48ul>(v15, "mlir::ODIE::Compiler::CoreML::InterpolationMode");
          if (v14)
          {
            mlir::Diagnostic::operator<<<16ul>(v15, " to be one of: ");
            if (v14)
            {
              mlir::Diagnostic::operator<<<7ul>(v15, "linear");
              if (v14)
              {
                mlir::Diagnostic::operator<<<3ul>(v15, ", ");
                if (v14)
                {
                  mlir::Diagnostic::operator<<<17ul>(v15, "nearest_neighbor");
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
LABEL_23:
      v6 = (*(*a1 + 40))(a1);
      v15[12] = 259;
      (*(*a1 + 24))(v13, a1, v6, &v14);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
      goto LABEL_24;
    }

    v4 = 1;
  }

  else
  {
    if (v12 != 6)
    {
      goto LABEL_15;
    }

    if (*v11 != 1701734764 || *(v11 + 4) != 29281)
    {
      goto LABEL_15;
    }

    v4 = 0;
  }

  if ((*(*a1 + 168))(a1))
  {
    v9 = (*(*a1 + 32))(a1);
    result = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::get(*v9, v4);
    goto LABEL_25;
  }

LABEL_24:
  result = 0;
LABEL_25:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::print(mlir::ODIE::Compiler::CoreML::InterpolationModeAttr *this, mlir::AsmPrinter *a2)
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
  v7 = &str_56;
  v8 = 16;
  if (v6 == 1)
  {
    v7 = "nearest_neighbor";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6;
  }

  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = "linear";
  }

  v11 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v11, v10, v9);
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

uint64_t mlir::ODIE::Compiler::CoreML::SamplingModeAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16SamplingModeAttrEJNS4_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::ODIE::Compiler::CoreML::SamplingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::ODIE::Compiler::CoreML::SamplingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::SamplingModeAttr::parse(mlir::AsmParser *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v2 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v11))
  {
    goto LABEL_23;
  }

  if (v12 == 13)
  {
    if (*v11 != 0x6F635F6E67696C61 || *(v11 + 5) != 0x7372656E726F635FLL)
    {
LABEL_15:
      v10[16] = 257;
      (*(*a1 + 24))(&v14, a1, v2, v10);
      if (v14)
      {
        mlir::Diagnostic::operator<<<10ul>(v15, "expected ");
        if (v14)
        {
          mlir::Diagnostic::operator<<<43ul>(v15, "mlir::ODIE::Compiler::CoreML::SamplingMode");
          if (v14)
          {
            mlir::Diagnostic::operator<<<16ul>(v15, " to be one of: ");
            if (v14)
            {
              mlir::Diagnostic::operator<<<11ul>(v15, "half_pixel");
              if (v14)
              {
                mlir::Diagnostic::operator<<<3ul>(v15, ", ");
                if (v14)
                {
                  mlir::Diagnostic::operator<<<14ul>(v15, "align_corners");
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
LABEL_23:
      v6 = (*(*a1 + 40))(a1);
      v15[12] = 259;
      (*(*a1 + 24))(v13, a1, v6, &v14);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
      goto LABEL_24;
    }

    v4 = 1;
  }

  else
  {
    if (v12 != 10)
    {
      goto LABEL_15;
    }

    if (*v11 != 0x7869705F666C6168 || *(v11 + 8) != 27749)
    {
      goto LABEL_15;
    }

    v4 = 0;
  }

  if ((*(*a1 + 168))(a1))
  {
    v9 = (*(*a1 + 32))(a1);
    result = mlir::ODIE::Compiler::CoreML::SamplingModeAttr::get(*v9, v4);
    goto LABEL_25;
  }

LABEL_24:
  result = 0;
LABEL_25:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::SamplingModeAttr::print(mlir::ODIE::Compiler::CoreML::SamplingModeAttr *this, mlir::AsmPrinter *a2)
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
  v7 = &str_56;
  v8 = 13;
  if (v6 == 1)
  {
    v7 = "align_corners";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 10;
  }

  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = "half_pixel";
  }

  v11 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v11, v10, v9);
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

uint64_t mlir::ODIE::Compiler::CoreML::ScatterModeAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ScatterModeAttrEJNS4_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterModeAttr::parse(mlir::AsmParser *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v2 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v10))
  {
    goto LABEL_22;
  }

  v3 = mlir::ODIE::Compiler::CoreML::symbolizeScatterMode(v10, v11);
  if ((v3 & 0x100000000) == 0)
  {
    v9[16] = 257;
    (*(*a1 + 24))(&v13, a1, v2, v9);
    if (v13)
    {
      mlir::Diagnostic::operator<<<10ul>(v14, "expected ");
      if (v13)
      {
        mlir::Diagnostic::operator<<<42ul>(v14, "mlir::ODIE::Compiler::CoreML::ScatterMode");
        if (v13)
        {
          mlir::Diagnostic::operator<<<16ul>(v14, " to be one of: ");
          if (v13)
          {
            mlir::Diagnostic::operator<<<7ul>(v14, "update");
            if (v13)
            {
              mlir::Diagnostic::operator<<<3ul>(v14, ", ");
              if (v13)
              {
                mlir::Diagnostic::operator<<<4ul>(v14, "add");
                if (v13)
                {
                  mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                  if (v13)
                  {
                    mlir::Diagnostic::operator<<<4ul>(v14, "sub");
                    if (v13)
                    {
                      mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                      if (v13)
                      {
                        mlir::Diagnostic::operator<<<4ul>(v14, "mul");
                        if (v13)
                        {
                          mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                          if (v13)
                          {
                            mlir::Diagnostic::operator<<<4ul>(v14, "div");
                            if (v13)
                            {
                              mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                              if (v13)
                              {
                                mlir::Diagnostic::operator<<<4ul>(v14, "max");
                                if (v13)
                                {
                                  mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                                  if (v13)
                                  {
                                    mlir::Diagnostic::operator<<<4ul>(v14, "min");
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

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
LABEL_22:
    v4 = (*(*a1 + 40))(a1);
    v14[12] = 259;
    (*(*a1 + 24))(v12, a1, v4, &v13);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_23;
  }

  v7 = v3;
  if ((*(*a1 + 168))(a1))
  {
    v8 = (*(*a1 + 32))(a1);
    result = mlir::ODIE::Compiler::CoreML::ScatterModeAttr::get(*v8, v7);
    goto LABEL_24;
  }

LABEL_23:
  result = 0;
LABEL_24:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ScatterModeAttr::print(mlir::ODIE::Compiler::CoreML::ScatterModeAttr *this, mlir::AsmPrinter *a2)
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

  v6 = mlir::ODIE::Compiler::CoreML::stringifyScatterMode(*(*this + 8));
  v8 = v7;
  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v6, v8);
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

char *mlir::ODIE::Compiler::CoreML::stringifyScatterMode(unsigned int a1)
{
  if (a1 > 6)
  {
    return &str_56;
  }

  v1 = qword_25D09F600[a1];
  return (&off_2799BDA50)[a1];
}

uint64_t mlir::ODIE::Compiler::CoreML::FileResourceAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id;
  v9[1] = a1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23FileResourceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16FileResourceAttrEJNS1_10ShapedTypeENS1_10StringAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v13[1] = v9;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v12 = a5;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v14 = ((a2 >> 4) ^ (a2 >> 9));
  v15 = ((a4 >> 4) ^ (a4 >> 9));
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(&v14, 0, v16, v17, &v12);
  v10 = v11;
  v14 = v11;
  v15 = v13;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v14);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FileResourceAttr::parse(uint64_t a1, uint64_t *a2)
{
  v29[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  v4 = (*(*a1 + 40))(a1);
  if (!a2)
  {
    v24[0] = "expected a trailing type";
    v25 = 259;
    (*(*a1 + 24))(v28, a1, v4, v24);
    v20 = v28;
LABEL_14:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    goto LABEL_15;
  }

  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
  if (!v5)
  {
    v24[0] = "invalid kind of type specified";
    v25 = 259;
    (*(*a1 + 24))(v29, a1, v4, v24);
    v20 = v29;
    goto LABEL_14;
  }

  v7 = v5;
  v8 = v6;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_15:
    v22 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v9 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
  v10 = *a1;
  if ((v11 & 1) == 0)
  {
    v21 = (*(v10 + 40))(a1);
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v21, v24);
    v20 = v27;
    goto LABEL_14;
  }

  v12 = v9;
  if (((*(v10 + 120))(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
  v14 = *a1;
  if ((v15 & 1) == 0)
  {
    v23 = (*(v14 + 40))(a1);
    v25 = 259;
    (*(*a1 + 24))(v26, a1, v23, v24);
    v20 = v26;
    goto LABEL_14;
  }

  v16 = v13;
  if (((*(v14 + 168))(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = *(*(*a1 + 32))(a1);
  v18 = *MEMORY[0x277D85DE8];

  return mlir::ODIE::Compiler::CoreML::FileResourceAttr::get(v17, v7, v8, v12, v16);
}

uint64_t mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::FileResourceAttr::print(mlir::ODIE::Compiler::CoreML::FileResourceAttr *this, mlir::AsmPrinter *a2)
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

  (*(*a2 + 40))(a2, *(*this + 24));
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

  (*(*a2 + 40))(a2, *(*this + 32));
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

uint64_t mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ComputeTargetAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ComputeTargetAttrEJNS4_13ComputeTargetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage,mlir::ODIE::Compiler::CoreML::ComputeTarget>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ComputeTarget &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage,mlir::ODIE::Compiler::CoreML::ComputeTarget>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ComputeTarget &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::parse(mlir::AsmParser *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_17;
  }

  v2 = (*(*a1 + 40))(a1);
  v10 = 0;
  v11 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v10))
  {
    goto LABEL_16;
  }

  v3 = mlir::ODIE::Compiler::CoreML::symbolizeComputeTarget(v10, v11);
  if ((v3 & 0x100000000) == 0)
  {
    v9[16] = 257;
    (*(*a1 + 24))(&v13, a1, v2, v9);
    if (v13)
    {
      mlir::Diagnostic::operator<<<10ul>(v14, "expected ");
      if (v13)
      {
        mlir::Diagnostic::operator<<<44ul>(v14, "mlir::ODIE::Compiler::CoreML::ComputeTarget");
        if (v13)
        {
          mlir::Diagnostic::operator<<<16ul>(v14, " to be one of: ");
          if (v13)
          {
            mlir::Diagnostic::operator<<<12ul>(v14, "interpreter");
            if (v13)
            {
              mlir::Diagnostic::operator<<<3ul>(v14, ", ");
              if (v13)
              {
                mlir::Diagnostic::operator<<<4ul>(v14, "cpu");
                if (v13)
                {
                  mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                  if (v13)
                  {
                    mlir::Diagnostic::operator<<<4ul>(v14, "gpu");
                    if (v13)
                    {
                      mlir::Diagnostic::operator<<<3ul>(v14, ", ");
                      if (v13)
                      {
                        mlir::Diagnostic::operator<<<4ul>(v14, "ane");
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

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
LABEL_16:
    v4 = (*(*a1 + 40))(a1);
    v14[12] = 259;
    (*(*a1 + 24))(v12, a1, v4, &v13);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_17;
  }

  v7 = v3;
  if ((*(*a1 + 168))(a1))
  {
    v8 = (*(*a1 + 32))(a1);
    result = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(*v8, v7);
    goto LABEL_18;
  }

LABEL_17:
  result = 0;
LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::print(mlir::ODIE::Compiler::CoreML::ComputeTargetAttr *this, mlir::AsmPrinter *a2)
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
  if (v6 > 3)
  {
    v7 = 0;
    v8 = &str_56;
  }

  else
  {
    v7 = qword_25D09F638[v6];
    v8 = (&off_2799BDA88)[v6];
  }

  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v8, v7);
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

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialect::parseAttribute(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(&v41, a2, 0);
  v38 = "torch_location_extras";
  v39 = 21;
  if (v45[2])
  {
    goto LABEL_2;
  }

  v8 = v44;
  if (v44 == 21)
  {
    if (*v43 == 0x6F6C5F6863726F74 && *(v43 + 8) == 0x655F6E6F69746163 && *(v43 + 13) == 0x7361727478655F6ELL)
    {
      v20 = mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(a2);
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v44)
  {
LABEL_20:
    v38 = "odie_location_frame_attr";
    v39 = 24;
    goto LABEL_21;
  }

  (*(*v41 + 648))(v41, &v38, 1);
  v38 = "odie_location_frame_attr";
  v39 = 24;
  if (v45[2])
  {
    goto LABEL_2;
  }

  v8 = v44;
  if (!v44)
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "extern";
    v39 = 6;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
    if (!v44)
    {
      goto LABEL_9;
    }

LABEL_30:
    if (v8 == 6 && *v43 == 1702131813 && *(v43 + 4) == 28274)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(a2);
      goto LABEL_185;
    }

    v38 = "tensor_encoding";
    v39 = 15;
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_21:
  if (v8 == 24)
  {
    v11 = *v43 == 0x636F6C5F6569646FLL && *(v43 + 8) == 0x72665F6E6F697461;
    if (v11 && *(v43 + 16) == 0x727474615F656D61)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(a2);
      goto LABEL_185;
    }
  }

  v38 = "extern";
  v39 = 6;
  if (v8)
  {
    goto LABEL_30;
  }

LABEL_9:
  (*(*v41 + 648))(v41, &v38, 1);
  v38 = "tensor_encoding";
  v39 = 15;
  if (v45[2])
  {
    goto LABEL_2;
  }

  v8 = v44;
  if (!v44)
  {
LABEL_11:
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "param.decl";
    v39 = 10;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
    goto LABEL_42;
  }

LABEL_36:
  if (v8 == 15 && *v43 == 0x655F726F736E6574 && *(v43 + 7) == 0x676E69646F636E65)
  {
    v20 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(a2);
    goto LABEL_185;
  }

  v38 = "param.decl";
  v39 = 10;
LABEL_42:
  if (v8)
  {
    if (v8 == 10 && *v43 == 0x65642E6D61726170 && *(v43 + 8) == 27747)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(a2);
      goto LABEL_185;
    }

    v38 = "param.decl.array";
    v39 = 16;
  }

  else
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "param.decl.array";
    v39 = 16;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
    if (!v44)
    {
      (*(*v41 + 648))(v41, &v38, 1);
      v38 = "param.ref";
      v39 = 9;
      if (v45[2])
      {
        goto LABEL_2;
      }

      v8 = v44;
      if (v44)
      {
        goto LABEL_55;
      }

LABEL_79:
      (*(*v41 + 648))(v41, &v38, 1);
      v38 = "param.bind";
      v39 = 10;
      if (v45[2])
      {
        goto LABEL_2;
      }

      v8 = v44;
      if (v44)
      {
        goto LABEL_61;
      }

      goto LABEL_81;
    }
  }

  if (v8 == 16 && *v43 == 0x65642E6D61726170 && *(v43 + 8) == 0x79617272612E6C63)
  {
    v20 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(a2);
    goto LABEL_185;
  }

  v38 = "param.ref";
  v39 = 9;
  if (!v8)
  {
    goto LABEL_79;
  }

LABEL_55:
  if (v8 == 9 && *v43 == 0x65722E6D61726170 && *(v43 + 8) == 102)
  {
    v20 = mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(a2, a3);
    goto LABEL_185;
  }

  v38 = "param.bind";
  v39 = 10;
  if (v8)
  {
LABEL_61:
    if (v8 == 10 && *v43 == 0x69622E6D61726170 && *(v43 + 8) == 25710)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(a2, a3);
      goto LABEL_185;
    }

    v38 = "param.constant";
    v39 = 14;
    if (v8)
    {
      goto LABEL_67;
    }

LABEL_83:
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "intent";
    v39 = 6;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
    goto LABEL_85;
  }

LABEL_81:
  (*(*v41 + 648))(v41, &v38, 1);
  v38 = "param.constant";
  v39 = 14;
  if (v45[2])
  {
    goto LABEL_2;
  }

  v8 = v44;
  if (!v44)
  {
    goto LABEL_83;
  }

LABEL_67:
  if (v8 == 14 && *v43 == 0x6F632E6D61726170 && *(v43 + 6) == 0x746E6174736E6F63)
  {
    v20 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(a2, a3);
    goto LABEL_185;
  }

  v38 = "intent";
  v39 = 6;
LABEL_85:
  if (v8)
  {
    if (v8 == 6 && *v43 == 1702129257 && *(v43 + 4) == 29806)
    {
      v20 = mlir::ODIE::Compiler::CoreML::IntentAttr::parse(a2);
      goto LABEL_185;
    }

    v38 = "target_spec";
    v39 = 11;
  }

  else
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "target_spec";
    v39 = 11;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
  }

  if (v8)
  {
    if (v8 == 11 && *v43 == 0x735F746567726174 && *(v43 + 3) == 0x636570735F746567)
    {
      v20 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(a2);
      goto LABEL_185;
    }

    v38 = "approximate";
    v39 = 11;
  }

  else
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "approximate";
    v39 = 11;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
  }

  if (v8)
  {
    if (v8 == 11 && *v43 == 0x6D69786F72707061 && *(v43 + 3) == 0x6574616D69786F72)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(a2);
      goto LABEL_185;
    }

    v38 = "padding_mode";
    v39 = 12;
  }

  else
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "padding_mode";
    v39 = 12;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
  }

  if (v8)
  {
    if (v8 == 12 && *v43 == 0x5F676E6964646170 && *(v43 + 8) == 1701080941)
    {
      v20 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::parse(a2);
      goto LABEL_185;
    }

    v38 = "interpolation_mode";
    v39 = 18;
  }

  else
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "interpolation_mode";
    v39 = 18;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
  }

  if (v8)
  {
    if (v8 != 18 || (*v43 == 0x6C6F707265746E69 ? (v25 = *(v43 + 8) == 0x6F6D5F6E6F697461) : (v25 = 0), v25 ? (v26 = *(v43 + 16) == 25956) : (v26 = 0), !v26))
    {
      v38 = "sampling_mode";
      v39 = 13;
      goto LABEL_142;
    }

    v20 = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::parse(a2);
LABEL_185:
    v7 = v20;
    v45[0] = v20 != 0;
    *&v45[1] = 257;
    goto LABEL_186;
  }

  (*(*v41 + 648))(v41, &v38, 1);
  v38 = "sampling_mode";
  v39 = 13;
  if (v45[2])
  {
    goto LABEL_2;
  }

  v8 = v44;
LABEL_142:
  if (v8)
  {
    if (v8 == 13 && *v43 == 0x676E696C706D6173 && *(v43 + 5) == 0x65646F6D5F676E69)
    {
      v20 = mlir::ODIE::Compiler::CoreML::SamplingModeAttr::parse(a2);
      goto LABEL_185;
    }

    v38 = "scatter_mode";
    v39 = 12;
  }

  else
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "scatter_mode";
    v39 = 12;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
  }

  if (v8)
  {
    if (v8 == 12 && *v43 == 0x5F72657474616373 && *(v43 + 8) == 1701080941)
    {
      v20 = mlir::ODIE::Compiler::CoreML::ScatterModeAttr::parse(a2);
      goto LABEL_185;
    }

    v38 = "file_resource";
    v39 = 13;
  }

  else
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "file_resource";
    v39 = 13;
    if (v45[2])
    {
      goto LABEL_2;
    }

    v8 = v44;
  }

  if (!v8)
  {
    (*(*v41 + 648))(v41, &v38, 1);
    v38 = "compute_target";
    v39 = 14;
    if ((v45[2] & 1) == 0)
    {
      v8 = v44;
      goto LABEL_172;
    }

LABEL_2:
    v7 = 0;
LABEL_186:
    v8 = 0;
    v31 = 0;
    goto LABEL_187;
  }

  if (v8 == 13 && *v43 == 0x7365725F656C6966 && *(v43 + 5) == 0x656372756F736572)
  {
    v20 = mlir::ODIE::Compiler::CoreML::FileResourceAttr::parse(a2, a3);
    goto LABEL_185;
  }

  v38 = "compute_target";
  v39 = 14;
LABEL_172:
  if (!v8)
  {
    (*(*v41 + 648))(v41, &v38, 1);
    if (v45[2])
    {
      v8 = 0;
      v31 = 0;
      v7 = 0;
      goto LABEL_187;
    }

    v8 = v44;
    goto LABEL_197;
  }

  if (v8 == 14 && *v43 == 0x5F657475706D6F63 && *(v43 + 6) == 0x7465677261745F65)
  {
    v20 = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::parse(a2);
    goto LABEL_185;
  }

LABEL_197:
  v7 = 0;
  v31 = v43;
  *v45 = 0;
  v45[2] = 1;
LABEL_187:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v41) & 0x100) == 0)
  {
    v37 = 257;
    (*(*a2 + 24))(&v41, a2, v6, v36);
    if (v41)
    {
      if (v41)
      {
        v40 = 261;
        v38 = v31;
        v39 = v8;
        mlir::Diagnostic::operator<<(&v42, &v38);
        if (v41)
        {
          if (v41)
          {
            v32 = *(a1 + 8);
            v33 = *(a1 + 16);
            v40 = 261;
            v38 = v32;
            v39 = v33;
            mlir::Diagnostic::operator<<(&v42, &v38);
            if (v41)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    v7 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::printAttribute(uint64_t a1, void *a2, mlir::AsmPrinter *a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id)
  {
    v57 = a2;
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 0x14uLL)
    {
      qmemcpy(v9, "torch_location_extras", 21);
      *(v8 + 4) += 21;
    }

    else
    {
      llvm::raw_ostream::write(v8, "torch_location_extras", 0x15uLL);
    }

    mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id)
  {
    v57 = a2;
    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 0x17uLL)
    {
      qmemcpy(v11, "odie_location_frame_attr", 24);
      *(v10 + 4) += 24;
    }

    else
    {
      llvm::raw_ostream::write(v10, "odie_location_frame_attr", 0x18uLL);
    }

    mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    v57 = a2;
    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 5)
    {
      *(v13 + 4) = 28274;
      *v13 = 1702131813;
      *(v12 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v12, "extern", 6uLL);
    }

    mlir::ODIE::Compiler::CoreML::ExternAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
  {
    v57 = a2;
    v14 = (*(*a3 + 16))(a3);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 0xEuLL)
    {
      qmemcpy(v15, "tensor_encoding", 15);
      *(v14 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v14, "tensor_encoding", 0xFuLL);
    }

    mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id)
  {
    v57 = a2;
    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if ((*(v16 + 3) - v17) > 9)
    {
      *(v17 + 8) = 27747;
      *v17 = *"param.decl";
      *(v16 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v16, "param.decl", 0xAuLL);
    }

    mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(&v57, a3);
    return;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 0xFuLL)
    {
      *v19 = *"param.decl.array";
      *(v18 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v18, "param.decl.array", 0x10uLL);
    }

    v22 = (*(*a3 + 16))(a3);
    v23 = *(v22 + 4);
    if (*(v22 + 3) == v23)
    {
      llvm::raw_ostream::write(v22, "[", 1uLL);
    }

    else
    {
      *v23 = 91;
      ++*(v22 + 4);
    }

    v26 = a2[2];
    if (v26)
    {
      v27 = a2[1];
      v28 = (*(*a3 + 16))(a3);
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(a3, *v27);
      if (v26 != 1)
      {
        v29 = v27 + 1;
        v30 = 8 * v26 - 8;
        do
        {
          v31 = *(v28 + 4);
          if (*(v28 + 3) - v31 > 1uLL)
          {
            *v31 = 8236;
            *(v28 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v28, ", ", 2uLL);
          }

          v32 = *v29++;
          mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(a3, v32);
          v30 -= 8;
        }

        while (v30);
      }
    }

    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (*(v33 + 3) != v34)
    {
      v35 = 93;
LABEL_69:
      *v34 = v35;
      ++*(v33 + 4);
      return;
    }

    v36 = "]";
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
    {
      if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
      {
        v57 = a2;
        v24 = (*(*a3 + 16))(a3);
        v25 = *(v24 + 4);
        if ((*(v24 + 3) - v25) > 9)
        {
          *(v25 + 8) = 25710;
          *v25 = *"param.bind";
          *(v24 + 4) += 10;
        }

        else
        {
          llvm::raw_ostream::write(v24, "param.bind", 0xAuLL);
        }

        mlir::ODIE::Compiler::CoreML::ParamBindAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
      {
        v57 = a2;
        v39 = (*(*a3 + 16))(a3);
        v40 = *(v39 + 4);
        if (*(v39 + 3) - v40 > 0xDuLL)
        {
          qmemcpy(v40, "param.constant", 14);
          *(v39 + 4) += 14;
        }

        else
        {
          llvm::raw_ostream::write(v39, "param.constant", 0xEuLL);
        }

        mlir::ODIE::Compiler::CoreML::ParamConstantAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
      {
        v57 = a2;
        v41 = (*(*a3 + 16))(a3);
        v42 = *(v41 + 4);
        if ((*(v41 + 3) - v42) > 5)
        {
          *(v42 + 4) = 29806;
          *v42 = 1702129257;
          *(v41 + 4) += 6;
        }

        else
        {
          llvm::raw_ostream::write(v41, "intent", 6uLL);
        }

        mlir::ODIE::Compiler::CoreML::IntentAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
      {
        v57 = a2;
        v43 = (*(*a3 + 16))(a3);
        v44 = *(v43 + 4);
        if ((*(v43 + 3) - v44) > 0xA)
        {
          *(v44 + 7) = 1667592307;
          *v44 = *"target_spec";
          *(v43 + 4) += 11;
        }

        else
        {
          llvm::raw_ostream::write(v43, "target_spec", 0xBuLL);
        }

        mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
      {
        v57 = a2;
        v45 = (*(*a3 + 16))(a3);
        v46 = *(v45 + 4);
        if ((*(v45 + 3) - v46) > 0xA)
        {
          *(v46 + 7) = 1702125933;
          *v46 = *"approximate";
          *(v45 + 4) += 11;
        }

        else
        {
          llvm::raw_ostream::write(v45, "approximate", 0xBuLL);
        }

        mlir::ODIE::Compiler::CoreML::ApproximateAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
      {
        v57 = a2;
        v47 = (*(*a3 + 16))(a3);
        v48 = *(v47 + 4);
        if ((*(v47 + 3) - v48) > 0xB)
        {
          *(v48 + 8) = 1701080941;
          *v48 = *"padding_mode";
          *(v47 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v47, "padding_mode", 0xCuLL);
        }

        mlir::ODIE::Compiler::CoreML::PaddingModeAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
      {
        v57 = a2;
        v49 = (*(*a3 + 16))(a3);
        v50 = *(v49 + 4);
        if ((*(v49 + 3) - v50) > 0x11)
        {
          *(v50 + 16) = 25956;
          *v50 = *"interpolation_mode";
          *(v49 + 4) += 18;
        }

        else
        {
          llvm::raw_ostream::write(v49, "interpolation_mode", 0x12uLL);
        }

        mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
      {
        v57 = a2;
        v51 = (*(*a3 + 16))(a3);
        v52 = *(v51 + 4);
        if (*(v51 + 3) - v52 > 0xCuLL)
        {
          qmemcpy(v52, "sampling_mode", 13);
          *(v51 + 4) += 13;
        }

        else
        {
          llvm::raw_ostream::write(v51, "sampling_mode", 0xDuLL);
        }

        mlir::ODIE::Compiler::CoreML::SamplingModeAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id)
      {
        v57 = a2;
        v53 = (*(*a3 + 16))(a3);
        v54 = *(v53 + 4);
        if ((*(v53 + 3) - v54) > 0xB)
        {
          *(v54 + 8) = 1701080941;
          *v54 = *"scatter_mode";
          *(v53 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v53, "scatter_mode", 0xCuLL);
        }

        mlir::ODIE::Compiler::CoreML::ScatterModeAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id)
      {
        v57 = a2;
        v55 = (*(*a3 + 16))(a3);
        v56 = *(v55 + 4);
        if (*(v55 + 3) - v56 > 0xCuLL)
        {
          qmemcpy(v56, "file_resource", 13);
          *(v55 + 4) += 13;
        }

        else
        {
          llvm::raw_ostream::write(v55, "file_resource", 0xDuLL);
        }

        mlir::ODIE::Compiler::CoreML::FileResourceAttr::print(&v57, a3);
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id)
      {
        v57 = a2;
        v6 = (*(*a3 + 16))(a3);
        v7 = *(v6 + 4);
        if (*(v6 + 3) - v7 > 0xDuLL)
        {
          qmemcpy(v7, "compute_target", 14);
          *(v6 + 4) += 14;
        }

        else
        {
          llvm::raw_ostream::write(v6, "compute_target", 0xEuLL);
        }

        mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::print(&v57, a3);
      }

      return;
    }

    v20 = (*(*a3 + 16))(a3);
    v21 = *(v20 + 4);
    if ((*(v20 + 3) - v21) > 8)
    {
      *(v21 + 8) = 102;
      *v21 = *"param.ref";
      *(v20 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v20, "param.ref", 9uLL);
    }

    v37 = (*(*a3 + 16))(a3);
    v38 = *(v37 + 4);
    if (*(v37 + 3) == v38)
    {
      llvm::raw_ostream::write(v37, "<", 1uLL);
    }

    else
    {
      *v38 = 60;
      ++*(v37 + 4);
    }

    (*(*a3 + 72))(a3, *(a2[1] + 16), *(a2[1] + 24));
    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (*(v33 + 3) != v34)
    {
      v35 = 62;
      goto LABEL_69;
    }

    v36 = ">";
  }

  llvm::raw_ostream::write(v33, v36, 1uLL);
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 16) != a3)
  {
    a5(&v11, a6);
    if (v11)
    {
      mlir::Diagnostic::operator<<<46ul>(v12, "encoding rank is different than tensor shape.");
    }

    goto LABEL_9;
  }

  if (a3 != (4 * a3) >> 2 || !std::__is_permutation[abi:nn200100]<std::_ClassicAlgPolicy,llvm::detail::SafeIntIterator<long long,false>,llvm::detail::SafeIntIterator<long long,false>,int const*,int const*,std::__identity &,std::__identity &,std::__equal_to &>(0, a3, *(*a1 + 8), (*(*a1 + 8) + 4 * a3)))
  {
    a5(&v11, a6);
    if (v11)
    {
      mlir::Diagnostic::operator<<<61ul>(v12, "encoding dimension order should be permutation of the shape.");
    }

LABEL_9:
    v8 = v12[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
    goto LABEL_10;
  }

  v8 = 1;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::symbolizeApproximate(_DWORD *a1, uint64_t a2)
{
  if (a2 == 7)
  {
    if (*a1 == 1835493747 && *(a1 + 3) == 1684631405)
    {
      return 0x100000002;
    }

    return 0;
  }

  if (a2 != 4)
  {
    return 0;
  }

  if (*a1 != 1701736302)
  {
    if (*a1 == 1752064372)
    {
      return 0x100000001;
    }

    return 0;
  }

  return 0x100000000;
}

uint64_t mlir::ODIE::Compiler::CoreML::symbolizeComputeTarget(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 != 3)
  {
    if (a2 == 11 && *a1 == 0x6572707265746E69 && *(a1 + 3) == 0x7265746572707265)
    {
      return 0x100000000;
    }

    return 0;
  }

  if (*a1 == 28771 && *(a1 + 2) == 117)
  {
    return 0x100000001;
  }

  result = 0x100000002;
  if (*a1 != 28775 || *(a1 + 2) != 117)
  {
    v7 = *a1;
    v8 = *(a1 + 2);
    if (v7 == 28257 && v8 == 101)
    {
      return 0x100000003;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::symbolizeIntent(unsigned __int16 *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v9 = *a1;
      v10 = *(a1 + 4);
      if (v9 == 1970237033 && v10 == 116)
      {
        return 1;
      }
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      v6 = *a1;
      v7 = a1[2];
      if (v6 == 1970562418 && v7 == 28274)
      {
        return 2;
      }
    }

    return 0;
  }

  if (a2 == 2)
  {
    if (*a1 == 28265)
    {
      return 3;
    }

    return 0;
  }

  if (a2 == 3)
  {
    result = 0;
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::symbolizeScatterMode(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 == 3)
  {
    if (*a1 == 25697 && *(a1 + 2) == 100)
    {
      return 0x100000001;
    }

    else
    {
      result = 0x100000002;
      if (*a1 != 30067 || *(a1 + 2) != 98)
      {
        if (*a1 == 30061 && *(a1 + 2) == 108)
        {
          return 0x100000003;
        }

        else if (*a1 == 26980 && *(a1 + 2) == 118)
        {
          return 0x100000004;
        }

        else if (*a1 == 24941 && *(a1 + 2) == 120)
        {
          return 0x100000005;
        }

        else if (*a1 ^ 0x696D | *(a1 + 2) ^ 0x6E)
        {
          return 0;
        }

        else
        {
          return 0x100000006;
        }
      }
    }
  }

  else if (a2 == 6 && (*a1 == 1633972341 ? (v3 = a1[2] == 25972) : (v3 = 0), v3))
  {
    return 0x100000000;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::parse(mlir::ODIE::Compiler::CoreML::ParamRefType *this, mlir::AsmParser *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  v3 = (*(*this + 40))(this);
  if (((*(*this + 152))(this) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = 0;
  v23[0] = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::TypedAttr>(this, &v22, 0))
  {
    v13 = (*(*this + 40))(this);
    v24 = 259;
    (*(*this + 24))(v21, this, v13, &v22);
    v12 = v21;
LABEL_9:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_10;
  }

  v4 = v22;
  v5 = HIBYTE(v22);
  v6 = *(&v22 + 5);
  v7 = *(&v22 + 1);
  v8 = v23[0];
  if (((*(*this + 168))(this) & 1) == 0)
  {
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v9 = v7 | ((v6 | (v5 << 16)) << 32);
  v10 = *(*(*this + 32))(this);
  v11 = (v4 | (v9 << 8));
  *&v18 = v11;
  *(&v18 + 1) = v8;
  if (*(*(*v8)(v8, v11) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    v20 = 257;
    (*(*this + 24))(&v22, this, v3, v19);
    if (v22)
    {
    }

    v12 = &v22;
    goto LABEL_9;
  }

  if (v11)
  {
    v16 = *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v16 = 0;
  }

  if (v16 && (v17 = v11[1], *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id))
  {
    result = v17[1];
  }

  else
  {
    result = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::ParamRefType,mlir::TypedAttr &>(v10, &v18);
  }

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::HandleType::parse(mlir::ODIE::Compiler::CoreML::HandleType *this, mlir::AsmParser *a2)
{
  v12[26] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  (*(*this + 40))(this);
  if (((*(*this + 152))(this) & 1) == 0)
  {
    goto LABEL_6;
  }

  v10[0] = 0;
  v3 = (*(*this + 536))(this, v10);
  v4 = *this;
  if ((v3 & 1) == 0)
  {
    v8 = (*(v4 + 40))(this);
    v11 = 259;
    (*(*this + 24))(v12, this, v8, v10);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_6;
  }

  v5 = v10[0];
  if (((*(v4 + 168))(this) & 1) == 0)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  v6 = *(*(*this + 32))(this);
  v10[0] = v5;
  result = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::HandleType,mlir::Type>(v6, v10);
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::HandleType::print(mlir::ODIE::Compiler::CoreML::HandleType *this, mlir::AsmPrinter *a2)
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

  (*(*a2 + 32))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(mlir::ODIE::Compiler::CoreML::AsyncValueType *this, mlir::AsmParser *a2)
{
  v12[26] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  (*(*this + 40))(this);
  if (((*(*this + 152))(this) & 1) == 0)
  {
    goto LABEL_6;
  }

  v10[0] = 0;
  v3 = (*(*this + 536))(this, v10);
  v4 = *this;
  if ((v3 & 1) == 0)
  {
    v8 = (*(v4 + 40))(this);
    v11 = 259;
    (*(*this + 24))(v12, this, v8, v10);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_6;
  }

  v5 = v10[0];
  if (((*(v4 + 168))(this) & 1) == 0)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  v6 = *(*(*this + 32))(this);
  v10[0] = v5;
  result = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::AsyncValueType,mlir::Type>(v6, v10);
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::AsyncValueType::print(mlir::ODIE::Compiler::CoreML::AsyncValueType *this, mlir::AsmPrinter *a2)
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

  (*(*a2 + 32))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialect::parseType(uint64_t a1, mlir::ODIE::Compiler::CoreML::ParamRefType *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v46, a2, 0);
  *&__dst = "opaque";
  *(&__dst + 1) = 6;
  if (v49[2])
  {
    goto LABEL_2;
  }

  v7 = v48;
  if (v48 == 6)
  {
    if (*v47 == 1902211183 && v47[2] == 25973)
    {
      v16 = *(**(*(*a2 + 32))(a2) + 384);
      v17 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id;
      goto LABEL_85;
    }

    goto LABEL_17;
  }

  if (v48)
  {
LABEL_17:
    *&__dst = "type";
    *(&__dst + 1) = 4;
LABEL_18:
    if (v7 != 4 || *v47 != 1701869940)
    {
      *&__dst = "symbol";
      *(&__dst + 1) = 6;
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    v16 = *(**(*(*a2 + 32))(a2) + 384);
    v17 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
LABEL_85:
    v58 = v17;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v16 + 232), &v58);
LABEL_86:
    v20 = v6 == 0;
LABEL_105:
    v31 = !v20;
    v49[0] = v31;
    *&v49[1] = 257;
    goto LABEL_109;
  }

  (*(*v46[0] + 648))(v46[0], &__dst, 1);
  *&__dst = "type";
  *(&__dst + 1) = 4;
  if (v49[2])
  {
    goto LABEL_2;
  }

  v7 = v48;
  if (v48)
  {
    goto LABEL_18;
  }

  (*(*v46[0] + 648))(v46[0], &__dst, 1);
  *&__dst = "symbol";
  *(&__dst + 1) = 6;
  if (v49[2])
  {
    goto LABEL_2;
  }

  v7 = v48;
  if (!v48)
  {
LABEL_9:
    (*(*v46[0] + 648))(v46[0], &__dst, 1);
    v50 = "array";
    v51 = 5;
    if (v49[2])
    {
      goto LABEL_2;
    }

    v7 = v48;
    if (!v48)
    {
      goto LABEL_11;
    }

LABEL_27:
    if (v7 != 5 || (*v47 == 1634890337 ? (v10 = *(v47 + 4) == 121) : (v10 = 0), !v10))
    {
      *&__dst = "param_ref";
      *(&__dst + 1) = 9;
      goto LABEL_33;
    }

    v52 = 0;
    v53 = 0;
    v21 = (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0 || ((*(*a2 + 440))(a2, &v53, 0) & 1) == 0 || ((*(*a2 + 104))(a2) & 1) == 0 || ((*(*a2 + 440))(a2, &v52, 0) & 1) == 0 || ((*(*a2 + 168))(a2) & 1) == 0)
    {
LABEL_133:
      v6 = 0;
      goto LABEL_86;
    }

    v22 = v53;
    if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v23 = *(**(*(*a2 + 32))(a2) + 384);
      *&__dst = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
      v24 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v23 + 232), &__dst);
      v53 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v22, *v24);
    }

    v25 = *(*(*a2 + 32))(a2);
    v26 = v53;
    if (v53)
    {
      v27 = *v53;
      v28 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v29 = mlir::detail::InterfaceMap::lookup(v27 + 8, v28);
    }

    else
    {
      v29 = 0;
    }

    v36 = v52;
    if (v52)
    {
      v37 = *v52;
      v38 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v39 = mlir::detail::InterfaceMap::lookup(v37 + 8, v38);
    }

    else
    {
      v39 = 0;
    }

    if (*(*(*v29)(v29, v26) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
    {
      if (*(*(*v39)(v39, v36) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        goto LABEL_134;
      }

      v61 = 257;
      (*(*a2 + 24))(&__dst, a2, v21, &v58);
      if (__dst)
      {
        mlir::Diagnostic::operator<<<53ul>(&__dst + 8, "expected a size expression of any integer type, got ");
        if (__dst)
        {
          LODWORD(v58) = 0;
          v59 = v36;
          goto LABEL_131;
        }
      }
    }

    else
    {
      v61 = 257;
      (*(*a2 + 24))(&__dst, a2, v21, &v58);
      if (__dst)
      {
        if (__dst)
        {
          LODWORD(v58) = 0;
          v59 = v26;
LABEL_131:
          v40 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63 + 8, &v58, 1);
          v41 = *(&v63 + 1) + 24 * v64;
          v42 = *v40;
          *(v41 + 16) = *(v40 + 16);
          *v41 = v42;
          LODWORD(v64) = v64 + 1;
        }
      }
    }

    v43 = v69;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
    if (v43)
    {
      goto LABEL_133;
    }

LABEL_134:
    v55 = v25;
    v44 = *v25;
    v54[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id;
    v54[1] = &v55;
    v57[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJRNS1_9TypedAttrESG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
    v57[1] = v54;
    v58 = v26;
    v59 = v29;
    v60[0] = v36;
    v60[1] = v39;
    v65 = 0u;
    memset(v66, 0, sizeof(v66));
    v63 = 0u;
    v64 = 0u;
    __dst = 0u;
    v67 = 0;
    v68 = 0xFF51AFD7ED558CCDLL;
    v45 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr,mlir::TypedAttr>(&__dst, &__dst, v66, v26, v60);
    v56 = &v58;
    *&__dst = &v58;
    *(&__dst + 1) = v57;
    v6 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v44 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, v45, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v56, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
    goto LABEL_86;
  }

LABEL_21:
  if (v7 == 6 && *v47 == 1651341683 && v47[2] == 27759)
  {
    v16 = *(**(*(*a2 + 32))(a2) + 384);
    v17 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
    goto LABEL_85;
  }

  v50 = "array";
  v51 = 5;
  if (v7)
  {
    goto LABEL_27;
  }

LABEL_11:
  (*(*v46[0] + 648))(v46[0], &v50, 1);
  *&__dst = "param_ref";
  *(&__dst + 1) = 9;
  if (v49[2])
  {
    goto LABEL_2;
  }

  v7 = v48;
LABEL_33:
  if (v7)
  {
    if (v7 == 9 && *v47 == 0x65725F6D61726170 && *(v47 + 8) == 102)
    {
      v19 = mlir::ODIE::Compiler::CoreML::ParamRefType::parse(a2, v5);
      goto LABEL_104;
    }

    *&__dst = "symbol_ref";
    *(&__dst + 1) = 10;
LABEL_40:
    if (v7 != 10 || (*v47 == 0x725F6C6F626D7973 ? (v12 = v47[4] == 26213) : (v12 = 0), !v12))
    {
      *&__dst = "handle";
      *(&__dst + 1) = 6;
      if (v7)
      {
        goto LABEL_46;
      }

LABEL_70:
      (*(*v46[0] + 648))(v46[0], &__dst, 1);
      *&__dst = "token";
      *(&__dst + 1) = 5;
      if (v49[2])
      {
        goto LABEL_2;
      }

      v7 = v48;
      if (v48)
      {
        goto LABEL_52;
      }

      goto LABEL_72;
    }

    v19 = mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(a2, v5);
LABEL_104:
    v6 = v19;
    v20 = v19 == 0;
    goto LABEL_105;
  }

  (*(*v46[0] + 648))(v46[0], &__dst, 1);
  *&__dst = "symbol_ref";
  *(&__dst + 1) = 10;
  if (v49[2])
  {
    goto LABEL_2;
  }

  v7 = v48;
  if (v48)
  {
    goto LABEL_40;
  }

  (*(*v46[0] + 648))(v46[0], &__dst, 1);
  *&__dst = "handle";
  *(&__dst + 1) = 6;
  if (v49[2])
  {
    goto LABEL_2;
  }

  v7 = v48;
  if (!v48)
  {
    goto LABEL_70;
  }

LABEL_46:
  if (v7 == 6 && *v47 == 1684955496 && v47[2] == 25964)
  {
    v19 = mlir::ODIE::Compiler::CoreML::HandleType::parse(a2, v5);
    goto LABEL_104;
  }

  *&__dst = "token";
  *(&__dst + 1) = 5;
  if (v7)
  {
LABEL_52:
    if (v7 != 5 || (*v47 == 1701539700 ? (v14 = *(v47 + 4) == 110) : (v14 = 0), !v14))
    {
      *&__dst = "async.value";
      *(&__dst + 1) = 11;
      if (v7)
      {
        goto LABEL_58;
      }

LABEL_74:
      (*(*v46[0] + 648))(v46[0], &__dst, 1);
      *&__dst = "pointer";
      *(&__dst + 1) = 7;
      if (v49[2])
      {
        goto LABEL_2;
      }

      v7 = v48;
      goto LABEL_76;
    }

    v16 = *(**(*(*a2 + 32))(a2) + 384);
    v17 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
    goto LABEL_85;
  }

LABEL_72:
  (*(*v46[0] + 648))(v46[0], &__dst, 1);
  *&__dst = "async.value";
  *(&__dst + 1) = 11;
  if (v49[2])
  {
    goto LABEL_2;
  }

  v7 = v48;
  if (!v48)
  {
    goto LABEL_74;
  }

LABEL_58:
  if (v7 == 11 && *v47 == 0x61762E636E797361 && *(v47 + 3) == 0x65756C61762E636ELL)
  {
    v19 = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(a2, v5);
    goto LABEL_104;
  }

  *&__dst = "pointer";
  *(&__dst + 1) = 7;
LABEL_76:
  if (v7)
  {
    if (v7 != 7)
    {
      goto LABEL_101;
    }

    if (*v47 != 1852403568 || *(v47 + 3) != 1919251566)
    {
      goto LABEL_101;
    }

    v19 = mlir::ODIE::Compiler::CoreML::TypedPointerType::parse(a2, v5);
    goto LABEL_104;
  }

  (*(*v46[0] + 648))(v46[0], &__dst, 1);
  if ((v49[2] & 1) == 0)
  {
    v7 = v48;
LABEL_101:
    v6 = 0;
    v30 = v47;
    *v49 = 0;
    v49[2] = 1;
    goto LABEL_110;
  }

LABEL_2:
  v6 = 0;
LABEL_109:
  v7 = 0;
  v30 = 0;
LABEL_110:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v46) & 0x100) == 0)
  {
    *v49 = 257;
    (*(*a2 + 24))(&__dst, a2, v4, v46);
    if (__dst)
    {
      if (__dst)
      {
        v61 = 261;
        v58 = v30;
        v59 = v7;
        mlir::Diagnostic::operator<<(&__dst + 8, &v58);
        if (__dst)
        {
          if (__dst)
          {
            v32 = *(a1 + 8);
            v33 = *(a1 + 16);
            v61 = 261;
            v58 = v32;
            v59 = v33;
            mlir::Diagnostic::operator<<(&__dst + 8, &v58);
            if (__dst)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
    v6 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v6;
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::printType(uint64_t a1, void *a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) <= 5)
    {
      v10 = "opaque";
LABEL_20:
      v12 = 6;
      goto LABEL_56;
    }

    *(v9 + 4) = 25973;
    v13 = 1902211183;
LABEL_25:
    *v9 = v13;
    v14 = *(v8 + 4) + 6;
    goto LABEL_53;
  }

  if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
    {
      if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id)
      {
        v15 = (*(*a3 + 16))(a3);
        v16 = *(v15 + 4);
        if ((*(v15 + 3) - v16) > 4)
        {
          *(v16 + 4) = 121;
          *v16 = 1634890337;
          *(v15 + 4) += 5;
        }

        else
        {
          llvm::raw_ostream::write(v15, "array", 5uLL);
        }

        v19 = (*(*a3 + 16))(a3);
        v20 = *(v19 + 4);
        if (*(v19 + 3) == v20)
        {
          llvm::raw_ostream::write(v19, "<", 1uLL);
        }

        else
        {
          *v20 = 60;
          ++*(v19 + 4);
        }

        v23 = a2[1];
        if (v23 && *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
        {
          v24 = v23[1];
          if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            (*(*a3 + 32))(a3, v24[1]);
          }
        }

        else
        {
          (*(*a3 + 40))(a3);
        }

        v25 = (*(*a3 + 16))(a3);
        v26 = *(v25 + 4);
        if (*(v25 + 3) - v26 > 1uLL)
        {
          *v26 = 8250;
          *(v25 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v25, ": ", 2uLL);
        }

        v27 = a2[3];
      }

      else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id)
      {
        v17 = (*(*a3 + 16))(a3);
        v18 = *(v17 + 4);
        if ((*(v17 + 3) - v18) > 8)
        {
          *(v18 + 8) = 102;
          *v18 = *"param_ref";
          *(v17 + 4) += 9;
        }

        else
        {
          llvm::raw_ostream::write(v17, "param_ref", 9uLL);
        }

        v28 = (*(*a3 + 16))(a3);
        v29 = *(v28 + 4);
        if (*(v28 + 3) == v29)
        {
          llvm::raw_ostream::write(v28, "<", 1uLL);
        }

        else
        {
          *v29 = 60;
          ++*(v28 + 4);
        }

        v27 = a2[1];
      }

      else
      {
        if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id)
        {
          if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
          {
            v39 = a2;
            v30 = (*(*a3 + 16))(a3);
            v31 = *(v30 + 4);
            if ((*(v30 + 3) - v31) > 5)
            {
              *(v31 + 4) = 25964;
              *v31 = 1684955496;
              *(v30 + 4) += 6;
            }

            else
            {
              llvm::raw_ostream::write(v30, "handle", 6uLL);
            }

            mlir::ODIE::Compiler::CoreML::HandleType::print(&v39, a3);
            return;
          }

          if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
          {
            if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
            {
              v39 = a2;
              v37 = (*(*a3 + 16))(a3);
              v38 = *(v37 + 4);
              if ((*(v37 + 3) - v38) > 0xA)
              {
                *(v38 + 7) = 1702194273;
                *v38 = *"async.value";
                *(v37 + 4) += 11;
              }

              else
              {
                llvm::raw_ostream::write(v37, "async.value", 0xBuLL);
              }

              mlir::ODIE::Compiler::CoreML::AsyncValueType::print(&v39, a3);
            }

            else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id)
            {
              v39 = a2;
              v6 = (*(*a3 + 16))(a3);
              v7 = *(v6 + 4);
              if (*(v6 + 3) - v7 > 6uLL)
              {
                *(v7 + 3) = 1919251566;
                *v7 = 1852403568;
                *(v6 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v6, "pointer", 7uLL);
              }

              mlir::ODIE::Compiler::CoreML::TypedPointerType::print(&v39, a3);
            }

            return;
          }

          v8 = (*(*a3 + 16))(a3);
          v35 = *(v8 + 4);
          if ((*(v8 + 3) - v35) <= 4)
          {
            v10 = "token";
            v12 = 5;
            goto LABEL_56;
          }

          *(v35 + 4) = 110;
          *v35 = 1701539700;
          v14 = *(v8 + 4) + 5;
LABEL_53:
          *(v8 + 4) = v14;
          return;
        }

        v21 = (*(*a3 + 16))(a3);
        v22 = *(v21 + 4);
        if ((*(v21 + 3) - v22) > 9)
        {
          *(v22 + 8) = 26213;
          *v22 = *"symbol_ref";
          *(v21 + 4) += 10;
        }

        else
        {
          llvm::raw_ostream::write(v21, "symbol_ref", 0xAuLL);
        }

        v33 = (*(*a3 + 16))(a3);
        v34 = *(v33 + 4);
        if (*(v33 + 3) == v34)
        {
          llvm::raw_ostream::write(v33, "<", 1uLL);
        }

        else
        {
          *v34 = 60;
          ++*(v33 + 4);
        }

        v27 = a2[1];
        v36 = *(*v27 + 136);
        if (v27 && v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
        {
          v27 = v27[1];
          if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
          {
            goto LABEL_51;
          }
        }

        else if (v27 && v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a3, v27);
          goto LABEL_51;
        }
      }

      (*(*a3 + 40))(a3, v27);
LABEL_51:
      v8 = (*(*a3 + 16))(a3);
      v32 = *(v8 + 4);
      if (*(v8 + 3) != v32)
      {
        *v32 = 62;
        v14 = *(v8 + 4) + 1;
        goto LABEL_53;
      }

      v10 = ">";
      v12 = 1;
      goto LABEL_56;
    }

    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) <= 5)
    {
      v10 = "symbol";
      goto LABEL_20;
    }

    *(v9 + 4) = 27759;
    v13 = 1651341683;
    goto LABEL_25;
  }

  v8 = (*(*a3 + 16))(a3);
  v11 = *(v8 + 4);
  if (*(v8 + 3) - v11 > 3uLL)
  {
    *v11 = 1701869940;
    v14 = *(v8 + 4) + 4;
    goto LABEL_53;
  }

  v10 = "type";
  v12 = 4;
LABEL_56:

  llvm::raw_ostream::write(v8, v10, v12);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

__n128 llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::MoveImpl<mlir::ODIE::Compiler::CoreML::wrapMemoryBlock(llvm::sys::OwningMemoryBlock &&,unsigned long)::$_0>(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *(a1 + 16) = a2[1].n128_u32[0];
  *a1 = result;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u32[0] = 0;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::DestroyImpl<mlir::ODIE::Compiler::CoreML::wrapMemoryBlock(llvm::sys::OwningMemoryBlock &&,unsigned long)::$_0>(uint64_t a1)
{
  if (*a1)
  {
    return llvm::sys::Memory::releaseMappedMemory(a1);
  }

  return a1;
}

void std::__optional_storage_base<llvm::SmallVector<mlir::StringAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::StringAttr,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::StringAttr>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::StringAttr>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

uint64_t llvm::SmallVectorImpl<mlir::StringAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::StringAttr>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::StringAttr>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrEJPNS1_11MLIRContextENS_8ArrayRefINS1_10StringAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

BOOL mlir::AsmParser::parseString(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v5 = (*(*a1 + 264))(a1, a2);
  v6 = 1;
  if ((v5 & 1) == 0)
  {
    v9 = "expected string";
    v10 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v9);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__optional_storage_base<llvm::SmallVector<int,12u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<int,12u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<int>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0xC00000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<int>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

uint64_t mlir::Diagnostic::operator<<<4ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::FieldParser<mlir::DictionaryAttr,mlir::DictionaryAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::DictionaryAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

BOOL mlir::AsmParser::parseAttribute<mlir::DictionaryAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v13 = 0;
  if ((*(*a1 + 440))(a1, &v13, a3))
  {
    v7 = v13;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v7 = 0;
    }

    *a2 = v7;
    v8 = 1;
    if (!v7)
    {
      v11 = "invalid kind of attribute specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v6, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::Diagnostic::operator<<<8ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(uint64_t *a1)
{
  v10[26] = *MEMORY[0x277D85DE8];
  if (*(a1 + 34))
  {
    v2 = *(a1 + 16);
    v3 = v2 >> 8;
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v8 = "unexpected keyword: ";
    v9 = 259;
    (*(*v4 + 24))(v10);
    mlir::InFlightDiagnostic::append<llvm::StringRef &>(v10, a1 + 2);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
    LOBYTE(v2) = 0;
    v3 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2 | (v3 << 8);
}

uint64_t mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v6 = (*(*a2 + 40))(a2);
  *(a1 + 16) = 0;
  *(a1 + 8) = v6;
  *(a1 + 34) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a3 && *(a3 + 8))
  {
    *(a1 + 16) = *a3;
  }

  else if (((*(*a2 + 640))(a2) & 1) == 0)
  {
    if (*(a1 + 34) == 1)
    {
      *(a1 + 32) = 256;
    }

    else
    {
      *(a1 + 32) = 256;
      *(a1 + 34) = 1;
    }
  }

  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (v2 != a2[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = *a1;
  v5 = *a2;
  v6 = v2 - 1;
  do
  {
    v7 = mlir::TypeRange::dereference_iterator(v4, v3);
    v8 = v7 == mlir::TypeRange::dereference_iterator(v5, v3);
    result = v8;
    if (!v8)
    {
      break;
    }

    v8 = v6 == v3++;
  }

  while (!v8);
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::InferTypeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3712);
}

uint64_t llvm::getTypeName<mlir::InferTypeOpInterface>()
{
  {
    llvm::getTypeName<mlir::InferTypeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::InferTypeOpInterface>();
    *algn_27FC17E98 = v1;
  }

  return llvm::getTypeName<mlir::InferTypeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::InferTypeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferTypeOpInterface]";
  v6 = 88;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcosOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v3 = *(a1 + 8);
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = *(a1 + 8);
    }

    if (v4)
    {
      v5 = 0;
      v6 = vdupq_n_s64(v4 - 1);
      v7 = (*a1 + 8);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v8.i8[0])
        {
          *(v7 - 1) = a3;
        }

        if (v8.i8[4])
        {
          *v7 = a3;
        }

        v5 += 2;
        v7 += 2;
      }

      while (((v4 + 1) & 0x1FFFFFFFELL) != v5);
      v3 = *(a1 + 8);
    }

    v9 = a2 - v3;
    if (a2 > v3)
    {
      v10 = 0;
      v11 = vdupq_n_s64(v9 - 1);
      v12 = (*a1 + 8 * v3 + 8);
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
        if (v13.i8[0])
        {
          *(v12 - 1) = a3;
        }

        if (v13.i8[4])
        {
          *v12 = a3;
        }

        v10 += 2;
        v12 += 2;
      }

      while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
    }

    *(a1 + 8) = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::IntentAttr,true>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::IntentAttr,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  *(a1 + 8) = a2;
}

uint64_t llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[232];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>();
    *algn_27FC18758 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface]";
  v6 = 117;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[12] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 12);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3752);
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>();
    unk_27FC17EC0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneResult<Empty>]";
  v6 = 93;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3792);
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>();
    *algn_27FC17EE8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<Empty>]";
  v6 = 122;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3832);
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>();
    unk_27FC17F10 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneOperand<Empty>]";
  v6 = 94;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3872);
}

uint64_t llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>();
    *algn_27FC17F38 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultShape<Empty>]";
  v6 = 110;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3912);
}

uint64_t llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>();
    unk_27FC17F60 = v1;
  }

  return llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferTypeOpInterface::Trait<Empty>]";
  v6 = 102;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3952);
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>();
    *algn_27FC17F88 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<Empty>]";
  v6 = 131;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AcosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AcosOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AcoshOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AcoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AcoshOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3992);
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>();
    unk_27FC17FB0 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface]";
  v6 = 123;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, 0, 0);
  }

  else
  {
    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AddOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[13] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 13);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 4032);
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>();
    *algn_27FC17FD8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<2>::Impl<Empty>]";
  v6 = 102;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF10))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>();
    _MergedGlobals_18 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DF10);
  }

  return _MergedGlobals_18;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DF28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF28))
  {
    qword_27FC1DF18 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>();
    unk_27FC1DF20 = v1;
    __cxa_guard_release(&qword_27FC1DF28);
  }

  return qword_27FC1DF18;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<Empty>]";
  v6 = 137;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DF38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF38))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>();
    qword_27FC1DF30 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DF38);
  }

  return qword_27FC1DF30;
}

uint64_t llvm::getTypeName<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF50))
  {
    qword_27FC1DF40 = llvm::detail::getTypeNameImpl<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>();
    *algn_27FC1DF48 = v1;
    __cxa_guard_release(&qword_27FC1DF50);
  }

  return qword_27FC1DF40;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ResultsBroadcastableShape<Empty>]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AddOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, (mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    v6 = mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AllOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 4072);
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::KernelTypeInference>();
    unk_27FC18000 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::KernelTypeInference>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::KernelTypeInference]";
  v6 = 111;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AllOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AllOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[10] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[2];
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>();
    *algn_27FC18028 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<3>::Impl<Empty>]";
  v6 = 102;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF60))
  {
    v1 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>();
    qword_27FC1DF58 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DF60);
  }

  return qword_27FC1DF58;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DF78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF78))
  {
    qword_27FC1DF68 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>();
    unk_27FC1DF70 = v1;
    __cxa_guard_release(&qword_27FC1DF78);
  }

  return qword_27FC1DF68;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<Empty>]";
  v6 = 125;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AllOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::AllOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AndOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AndOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AndOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AndOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 72);
  v7 = *(v6 + 24);
  if (v7 == *(v6 + 56))
  {
    v8 = v7 | 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < 8 || a2 - 16 == (v8 & ((v8 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v8 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v8);
  return 1;
}

void llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[15] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[14] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 14);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[7];
}

uint64_t llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>();
    unk_27FC18050 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SameOperandsElementType<Empty>]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[12];
}

uint64_t llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>();
    *algn_27FC18078 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultElementType<Empty>]";
  v6 = 116;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AndOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::AndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsAndResultElementType,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v10 = a1, mlir::ODIE::Compiler::CoreML::AndOp::verifyInvariantsImpl(&v10)) && (mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v5) & 1) != 0 && mlir::OpTrait::impl::verifySameOperandsElementType(a1, v6))
  {
    v8 = mlir::OpTrait::impl::verifySameOperandsAndResultElementType(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AnyOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AnyOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::AnyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::AnyOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ArgSortOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[9] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[17];
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>();
    unk_27FC180A0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<4>::Impl<Empty>]";
  v6 = 102;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::ArgSortOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreML::ArgSortOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 4))
  {
    v7 = a1;
    return mlir::ODIE::Compiler::CoreML::ArgSortOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AsinOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AsinhOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AsinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AsinhOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AtanOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AtanhOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AtanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AtanhOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[10] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[22];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>();
    *algn_27FC180C8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<Empty>]";
  v6 = 128;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DF88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DF88))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>();
    qword_27FC1DF80 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DF88);
  }

  return qword_27FC1DF80;
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DFA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DFA0))
  {
    qword_27FC1DF90 = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>();
    *algn_27FC1DF98 = v1;
    __cxa_guard_release(&qword_27FC1DFA0);
  }

  return qword_27FC1DF90;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<7>::Impl<Empty>]";
  v6 = 102;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AvgPool2dOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 7) && (v7 = a1, mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AvgPool3dOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AvgPool3dOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::AvgPool3dOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 7) && (v7 = a1, mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "coreml.async.await";
      v23 = 18;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(void *a1, char a2, char *a3, void *a4, char *a5, uint64_t **a6, char *a7, uint64_t **a8)
{
  v18[26] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v17[16] = 257;
    emitDiag(a1, 2, v17, v18);
    v14 = (mlir::InFlightDiagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(v18, a3, a4, a5, a6, a7, a8)[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void *mlir::InFlightDiagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(void *a1, char *a2, void *a3, char *a4, uint64_t **a5, char *a6, uint64_t **a7)
{
  if (*a1)
  {
    mlir::Diagnostic::operator<<<2ul>((a1 + 1), a2);
    mlir::Diagnostic::append<llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>((a1 + 1), a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t mlir::Diagnostic::append<llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, void *a2, char *a3, uint64_t **a4, char *a5, uint64_t **a6)
{
  v15 = 262;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  v12 = mlir::Diagnostic::operator<<(a1, v14);
  mlir::Diagnostic::operator<<<23ul>(v12, a3);
  return mlir::Diagnostic::append<llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a1, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, uint64_t **a2, char *__s, uint64_t **a4)
{
  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = *a2;
    v9 = **a2;
    LODWORD(v34) = 4;
    v35 = v9;
    v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v34, 1);
    v11 = *(a1 + 16) + 24 * *(a1 + 24);
    v12 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v12;
    ++*(a1 + 24);
    if (v7 != 1)
    {
      v13 = 8 * v7;
      v14 = v8 + 1;
      v15 = v13 - 8;
      do
      {
        v34 = ", ";
        v36 = 259;
        mlir::Diagnostic::operator<<(a1, &v34);
        v16 = *v14++;
        LODWORD(v34) = 4;
        v35 = v16;
        v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v34, 1);
        v18 = *(a1 + 16) + 24 * *(a1 + 24);
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        ++*(a1 + 24);
        v15 -= 8;
      }

      while (v15);
    }
  }

  mlir::Diagnostic::operator<<<52ul>(a1, __s);
  v20 = *(a4 + 2);
  if (v20)
  {
    v21 = *a4;
    v22 = **a4;
    LODWORD(v34) = 4;
    v35 = v22;
    v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v34, 1);
    v24 = *(a1 + 16) + 24 * *(a1 + 24);
    v25 = *v23;
    *(v24 + 16) = *(v23 + 16);
    *v24 = v25;
    ++*(a1 + 24);
    if (v20 != 1)
    {
      v26 = 8 * v20;
      v27 = v21 + 1;
      v28 = v26 - 8;
      do
      {
        v34 = ", ";
        v36 = 259;
        mlir::Diagnostic::operator<<(a1, &v34);
        v29 = *v27++;
        LODWORD(v34) = 4;
        v35 = v29;
        v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v34, 1);
        v31 = *(a1 + 16) + 24 * *(a1 + 24);
        v32 = *v30;
        *(v31 + 16) = *(v30 + 16);
        *v31 = v32;
        ++*(a1 + 24);
        v28 -= 8;
      }

      while (v28);
    }
  }

  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::Type const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::AwaitOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[27];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>();
    unk_27FC180F0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<Empty>]";
  v6 = 116;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::AwaitOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    v6 = mlir::ODIE::Compiler::CoreML::AwaitOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BatchMatmulOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreML::BatchMatmulOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchNormOp>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[10] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1DFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DFB0))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>();
    qword_27FC1DFA8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1DFB0);
  }

  return qword_27FC1DFA8;
}

uint64_t llvm::getTypeName<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1DFC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1DFC8))
  {
    qword_27FC1DFB8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>();
    unk_27FC1DFC0 = v1;
    __cxa_guard_release(&qword_27FC1DFC8);
  }

  return qword_27FC1DFB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NOperands<6>::Impl<Empty>]";
  v6 = 102;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::CoreML::BatchNormOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<6u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 6))
  {
    v7 = a1;
    v5 = mlir::ODIE::Compiler::CoreML::BatchNormOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::CoreML::BatchToSpace,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::getInputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 3uLL);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
  }

  else
  {
    v5 = 0;
  }

  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::BatchToSpace>::getOutputIntents(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v5 = *(a1 + 36);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v5, v4);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(uint64_t a1)
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[13] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 13);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}