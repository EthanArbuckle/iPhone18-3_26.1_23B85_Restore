uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseFileMetadataDictionary(void)::$_0>(mlir::detail::Parser **a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v3 = *(v1 + 1);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
LABEL_6:
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = v7;
    mlir::Lexer::lexToken((*(v1 + 1) + 8), &v36);
    v8 = *(v1 + 1);
    *(v8 + 56) = v36;
    *(v8 + 72) = v37;
    *&v36 = "expected ':'";
    v39 = 259;
    if (mlir::detail::Parser::parseToken(v1, 15, &v36))
    {
      if (v7 == 18)
      {
        if (*v6 != 0x6C616E7265747865 || *(v6 + 8) != 0x6372756F7365725FLL || *(v6 + 16) != 29541)
        {
LABEL_43:
          v33 = 1283;
          v32[0] = "unknown key '";
          v32[2] = v6;
          v32[3] = v7;
          v34[0] = v32;
          v34[2] = "' in file metadata dictionary";
          v35 = 770;
          EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v1 + 1) + 8, Loc);
          mlir::emitError(EncodedSourceLocation, v34, &v36);
          if (*(*(v1 + 1) + 56) == 1)
          {
            mlir::InFlightDiagnostic::abandon(&v36);
          }

          v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
          if (v36)
          {
            mlir::InFlightDiagnostic::report(&v36);
          }

          if (v46 == 1)
          {
            if (v45 != &v46)
            {
              free(v45);
            }

            v25 = __p;
            if (__p)
            {
              v26 = v44;
              v27 = __p;
              if (v44 != __p)
              {
                do
                {
                  v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
                }

                while (v26 != v25);
                v27 = __p;
              }

              v44 = v25;
              operator delete(v27);
            }

            v17 = v41;
            if (!v41)
            {
              goto LABEL_63;
            }

            v28 = v42;
            v19 = v41;
            if (v42 == v41)
            {
LABEL_62:
              v42 = v17;
              operator delete(v19);
LABEL_63:
              if (v38 != &v40)
              {
                free(v38);
              }

              return v13;
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

            while (v28 != v17);
LABEL_61:
            v19 = v41;
            goto LABEL_62;
          }

          return v13;
        }

        v32[0] = v1;
      }

      else
      {
        if (v7 != 17)
        {
          goto LABEL_43;
        }

        v9 = *v6 == 0x5F7463656C616964 && *(v6 + 8) == 0x656372756F736572;
        if (!v9 || *(v6 + 16) != 115)
        {
          goto LABEL_43;
        }

        v32[0] = v1;
      }

      v34[0] = v11;
      v34[1] = v32;
      *&v36 = "expected '{'";
      v39 = 259;
      if (mlir::detail::Parser::parseToken(v1, 20, &v36))
      {
        *&v36 = v1;
        *(&v36 + 1) = v34;
      }
    }

    return 0;
  }

  if (mlir::Token::isKeyword((v3 + 56)))
  {
    v3 = *(v1 + 1);
    goto LABEL_6;
  }

  v34[0] = "expected identifier key in file metadata dictionary";
  v35 = 259;
  mlir::detail::Parser::emitError(v1, v34, &v36);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v44;
      v16 = __p;
      if (v44 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v44 = v14;
      operator delete(v16);
    }

    v17 = v41;
    if (!v41)
    {
      goto LABEL_63;
    }

    v18 = v42;
    v19 = v41;
    if (v42 == v41)
    {
      goto LABEL_62;
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
    goto LABEL_61;
  }

  return v13;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseResourceFileMetadata(llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>)::$_0>(mlir::detail::Parser **a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v4 = *(v2 + 1);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
LABEL_6:
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = v8;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v23);
    v9 = *(v2 + 1);
    *(v9 + 56) = v23;
    *(v9 + 72) = v24;
    *&v23 = "expected ':'";
    v26 = 259;
    if (mlir::detail::Parser::parseToken(v2, 15, &v23) & 1) != 0 && (v21[0] = "expected '{'", v22 = 259, (mlir::detail::Parser::parseToken(v2, 20, v21)))
    {
      return (*a1[1])(*(a1[1] + 1), v7, v8, Loc);
    }

    else
    {
      return 0;
    }
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(v2 + 1);
    goto LABEL_6;
  }

  v21[0] = "expected identifier key for 'resource' entry";
  v22 = 259;
  mlir::detail::Parser::emitError(v2, v21, &v23);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v23);
  v12 = result;
  if (v23)
  {
    mlir::InFlightDiagnostic::report(&v23);
    result = v12;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v12;
    }

    v13 = __p;
    if (__p)
    {
      v14 = v31;
      v15 = __p;
      if (v31 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v31 = v13;
      operator delete(v15);
      result = v12;
    }

    v16 = v28;
    if (v28)
    {
      v17 = v29;
      v18 = v28;
      if (v29 != v28)
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
        v18 = v28;
      }

      v29 = v16;
      operator delete(v18);
      result = v12;
    }

    if (v25 != &v27)
    {
      free(v25);
      return v12;
    }
  }

  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0>(mlir::detail::Parser **a1, const void *a2, size_t a3, const char *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  Dialect = mlir::MLIRContext::getOrLoadDialect(***(*a1 + 1), a2, a3);
  if (Dialect)
  {
    v9 = Dialect;
    if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(Dialect))
    {
      v33 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v9);
      v39 = v7;
      v40 = &v33;
    }

    v33 = 0;
    v35 = 257;
    mlir::detail::Parser::emitError(v7, v34, &v39);
    if (v39)
    {
      LODWORD(v36) = 3;
      *(&v36 + 1) = "unexpected 'resource' section for dialect '";
      v37 = 43;
      if (v42 >= v43)
      {
        if (v41 > &v36 || v41 + 24 * v42 <= &v36)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v41 + 24 * v42;
      v21 = v36;
      *(v20 + 2) = v37;
      *v20 = v21;
      ++v42;
      if (v39)
      {
        v22 = *(v9 + 8);
        v23 = *(v9 + 16);
        v38 = 261;
        *&v36 = v22;
        *(&v36 + 1) = v23;
        mlir::Diagnostic::operator<<(&v40, &v36);
        if (v39)
        {
          LODWORD(v36) = 3;
          *(&v36 + 1) = "'";
          v37 = 1;
          if (v42 >= v43)
          {
            if (v41 > &v36 || v41 + 24 * v42 <= &v36)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v24 = v41 + 24 * v42;
          v25 = v36;
          *(v24 + 2) = v37;
          *v24 = v25;
          ++v42;
        }
      }
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v48;
        v28 = __p;
        if (v48 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v48 = v26;
        operator delete(v28);
      }

      v15 = v45;
      if (!v45)
      {
        goto LABEL_46;
      }

      v29 = v46;
      v17 = v45;
      if (v46 == v45)
      {
LABEL_45:
        v46 = v15;
        operator delete(v17);
LABEL_46:
        if (v41 != &v44)
        {
          free(v41);
        }

        return v10;
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

      while (v29 != v15);
LABEL_44:
      v17 = v45;
      goto LABEL_45;
    }
  }

  else
  {
    v35 = 1283;
    v34[0] = "dialect '";
    v34[2] = a2;
    v34[3] = a3;
    *&v36 = v34;
    v37 = "' is unknown";
    v38 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v7 + 1) + 8, a4);
    mlir::emitError(EncodedSourceLocation, &v36, &v39);
    if (*(*(v7 + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v39);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v48;
        v14 = __p;
        if (v48 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v48 = v12;
        operator delete(v14);
      }

      v15 = v45;
      if (!v45)
      {
        goto LABEL_46;
      }

      v16 = v46;
      v17 = v45;
      if (v46 == v45)
      {
        goto LABEL_45;
      }

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
      goto LABEL_44;
    }
  }

  return v10;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(const mlir::OpAsmDialectInterface ***a1)
{
  v2 = *a1;
  Loc = mlir::Token::getLoc(((*a1)[1] + 56));
  v17 = 0uLL;
  mlir::detail::Parser::parseResourceHandle(v2, *a1[1], &v17, &v14);
  if (v16 != 1)
  {
    return 0;
  }

  *v9 = "expected ':'";
  LOWORD(v11) = 259;
  if ((mlir::detail::Parser::parseToken(v2, 15, v9) & 1) == 0)
  {
    return 0;
  }

  v4 = v2[1];
  v14 = *(v4 + 56);
  v15 = *(v4 + 9);
  v5 = v15;
  *(v4 + 5) = v14;
  *(v4 + 12) = v5;
  mlir::Lexer::lexToken((v2[1] + 8), v9);
  v6 = v2[1];
  *(v6 + 56) = *v9;
  *(v6 + 9) = *&v9[16];
  *v9 = &unk_2868944E8;
  *&v9[8] = v17;
  v10 = Loc;
  v11 = v14;
  v12 = v15;
  v13 = v2;
  v7 = (*(**a1[1] + 48))(*a1[1], v9);
  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(v9);
  return v7;
}

void anonymous namespace::ParsedResourceEntry::emitError(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 7);
  v4 = *(this + 3);
  v7 = 257;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v3 + 8) + 8, v4);
  mlir::emitError(EncodedSourceLocation, v6, a2);
  if (*(*(v3 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a2);
  }
}

void anonymous namespace::ParsedResourceEntry::parseAsString(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, std::string *a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = *(this + 8);
  v4 = (this + 32);
  if (v5 == 11)
  {
    mlir::Token::getStringValue(v4, &v24);
    *a2 = v24;
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    v6 = *(this + 7);
    v7 = this;
    Loc = mlir::Token::getLoc(v4);
    v21 = 1283;
    v9 = *(v7 + 1);
    v10 = *(v7 + 2);
    v20[0] = "expected string value for key '";
    v20[2] = v9;
    v20[3] = v10;
    v22[0] = v20;
    v22[2] = "'";
    v23 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v6 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, v22, &v24);
    if (*(*(v6 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v24);
    }

    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    if (v24.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v30;
        v14 = __p;
        if (v30 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v30 = v12;
        operator delete(v14);
      }

      v15 = v27;
      if (v27)
      {
        v16 = v28;
        v17 = v27;
        if (v28 != v27)
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
          v17 = v27;
        }

        v28 = v15;
        operator delete(v17);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }
}

void anonymous namespace::ParsedResourceEntry::parseAsBlob(mlir::Token *this@<X0>, void (*a2)(void **__return_ptr, uint64_t, size_t, unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = (this + 32);
  if (*(this + 8) != 11)
  {
    LOBYTE(v59) = 0;
    v62 = 0;
LABEL_11:
    v13 = *(this + 7);
    Loc = mlir::Token::getLoc(v6);
    v55 = 1283;
    v15 = *(this + 1);
    v16 = *(this + 2);
    v52[0] = "expected hex string blob for key '";
    v53 = v15;
    v54 = v16;
    v56[0] = v52;
    v57 = "'";
    v58 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v13 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, v56, __dst);
    if (*(*(v13 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(__dst);
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    if (__dst[0])
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v71;
        v20 = __p;
        if (v71 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v71 = v18;
        operator delete(v20);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_69;
      }

      v22 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_68;
      }

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
      goto LABEL_67;
    }

    goto LABEL_71;
  }

  mlir::Token::getHexStringValue((this + 32), &v59);
  if ((v62 & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((v61 & 0x8000000000000000) == 0)
  {
    if (v61 > 3)
    {
      v9 = a3;
      v10 = v59;
      if ((v59 & (v59 - 1)) == 0)
      {
        goto LABEL_6;
      }

LABEL_49:
      v37 = *(this + 7);
      v38 = mlir::Token::getLoc(v6);
      v51 = 1283;
      v39 = *(this + 1);
      v40 = *(this + 2);
      v50[0] = "expected hex string blob for key '";
      v50[2] = v39;
      v50[3] = v40;
      v52[0] = v50;
      v53 = "' to encode alignment in first 4 bytes, but got non-power-of-2 value: ";
      v55 = 770;
      v56[0] = v52;
      v57 = v10;
      v58 = 2306;
      v41 = mlir::Lexer::getEncodedSourceLocation(*(v37 + 8) + 8, v38);
      mlir::emitError(v41, v56, __dst);
      if (*(*(v37 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(__dst);
      }

      *a4 = 0;
      *(a4 + 64) = 0;
      if (__dst[0])
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v73 == 1)
      {
        if (v72 != &v73)
        {
          free(v72);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v71;
          v44 = __p;
          if (v71 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v71 = v42;
          operator delete(v44);
        }

        v21 = v68;
        if (!v68)
        {
          goto LABEL_69;
        }

        v45 = v69;
        v23 = v68;
        if (v69 == v68)
        {
LABEL_68:
          v69 = v21;
          operator delete(v23);
LABEL_69:
          if (v65 != v66)
          {
            free(v65);
          }

          goto LABEL_71;
        }

        do
        {
          v47 = *--v45;
          v46 = v47;
          *v45 = 0;
          if (v47)
          {
            MEMORY[0x259C63150](v46, 0x1000C8077774924);
          }
        }

        while (v45 != v21);
LABEL_67:
        v23 = v68;
        goto LABEL_68;
      }

      goto LABEL_71;
    }

LABEL_30:
    v26 = *(this + 7);
    v27 = mlir::Token::getLoc(v6);
    v55 = 1283;
    v28 = *(this + 1);
    v29 = *(this + 2);
    v52[0] = "expected hex string blob for key '";
    v53 = v28;
    v54 = v29;
    v56[0] = v52;
    v57 = "' to encode alignment in first 4 bytes";
    v58 = 770;
    v30 = mlir::Lexer::getEncodedSourceLocation(*(v26 + 8) + 8, v27);
    mlir::emitError(v30, v56, __dst);
    if (*(*(v26 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(__dst);
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    if (__dst[0])
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v71;
        v33 = __p;
        if (v71 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v71 = v31;
        operator delete(v33);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_69;
      }

      v34 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_68;
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

      while (v34 != v21);
      goto LABEL_67;
    }

LABEL_71:
    if (v62 != 1)
    {
      return;
    }

    goto LABEL_72;
  }

  if (v60 < 4)
  {
    goto LABEL_30;
  }

  v9 = a3;
  v10 = *v59;
  if ((v10 & (v10 - 1)) != 0)
  {
    goto LABEL_49;
  }

LABEL_6:
  v11 = v60;
  if (v61 >= 0)
  {
    v11 = v61;
  }

  v12 = v11 - 4;
  if (v11 > 4)
  {
    if (v61 >= 0)
    {
      v48 = &v59;
    }

    else
    {
      v48 = v59;
    }

    a2(__dst, v9, v12, v10);
    memcpy(__dst[0], v48 + 4, v12);
    *a4 = *__dst;
    v49 = v66[1];
    *(a4 + 16) = v64;
    *(a4 + 48) = v49;
    if (v49 >= 8)
    {
      if ((v49 & 2) != 0 && (v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + 24, &v65);
        (*((*(a4 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(&v65);
      }

      else
      {
        *(a4 + 24) = v65;
        *(a4 + 40) = v66[0];
      }
    }

    *(a4 + 56) = v67;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
  }

  *(a4 + 64) = 1;
  if (v62 == 1)
  {
LABEL_72:
    if (v61 < 0)
    {
      operator delete(v59);
    }
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0>(uint64_t a1, const void *a2, const unsigned __int8 *a3, const char *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = **(*a1 + 8);
  v30 = a2;
  p_ParserFor = a3;
  v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((v8 + 16), &v30);
  if (v9)
  {
    v10 = v9 == *(v8 + 16) + 24 * *(v8 + 32);
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *(v8 + 40);
    if (v11)
    {
      ParserFor = mlir::FallbackAsmResourceMap::getParserFor(v11, v30, p_ParserFor);
      goto LABEL_36;
    }

    ParserFor = 0;
  }

  else
  {
    ParserFor = *(v9 + 16);
    if (ParserFor)
    {
      goto LABEL_36;
    }
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v7[1] + 8, a4);
  mlir::emitWarning(EncodedSourceLocation, &v30);
  if (v30)
  {
    LODWORD(v27) = 3;
    *(&v27 + 1) = "ignoring unknown external resources for '";
    v28 = 41;
    if (v33 >= v34)
    {
      if (v32 > &v27 || v32 + 24 * v33 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = v32 + 24 * v33;
    v14 = v27;
    *(v13 + 2) = v28;
    *v13 = v14;
    ++v33;
    if (v30)
    {
      v29 = 261;
      *&v27 = a2;
      *(&v27 + 1) = a3;
      mlir::Diagnostic::operator<<(&p_ParserFor, &v27);
      if (v30)
      {
        LODWORD(v27) = 3;
        *(&v27 + 1) = "'";
        v28 = 1;
        if (v33 >= v34)
        {
          if (v32 > &v27 || v32 + 24 * v33 <= &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v32 + 24 * v33;
        v16 = v27;
        *(v15 + 2) = v28;
        *v15 = v16;
        ++v33;
        if (v30)
        {
          mlir::InFlightDiagnostic::report(&v30);
        }
      }
    }
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v39;
      v19 = __p;
      if (v39 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v39 = v17;
      operator delete(v19);
    }

    v20 = v36;
    if (v36)
    {
      v21 = v37;
      v22 = v36;
      if (v37 != v36)
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
        v22 = v36;
      }

      v37 = v20;
      operator delete(v22);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

LABEL_36:
  v30 = v7;
  p_ParserFor = &ParserFor;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(mlir::detail::Parser **a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v4 = *(v2 + 1);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
    goto LABEL_6;
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(v2 + 1);
LABEL_6:
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = v8;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v28);
    v9 = *(v2 + 1);
    *(v9 + 56) = v28;
    *(v9 + 72) = v29;
    *&v28 = "expected ':'";
    LOWORD(v31) = 259;
    if ((mlir::detail::Parser::parseToken(v2, 15, &v28) & 1) == 0)
    {
      return 0;
    }

    v10 = *(v2 + 1);
    v25 = *(v10 + 56);
    v26 = *(v10 + 72);
    v11 = v26;
    *(v10 + 80) = v25;
    *(v10 + 96) = v11;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v28);
    v12 = *(v2 + 1);
    *(v12 + 56) = v28;
    *(v12 + 72) = v29;
    v13 = *a1[1];
    if (!v13)
    {
      return 1;
    }

    v32 = v26;
    v33 = v2;
    v31 = v25;
    *&v28 = &unk_2868944E8;
    *(&v28 + 1) = v7;
    v29 = v8;
    v30 = Loc;
    v14 = (*(*v13 + 16))(v13, &v28);
    mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v28);
    return v14;
  }

  *&v25 = "expected identifier key for 'external_resources' entry";
  v27 = 259;
  mlir::detail::Parser::emitError(v2, &v25, &v28);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v37;
      v18 = __p;
      if (v37 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v37 = v16;
      operator delete(v18);
    }

    v19 = v34;
    if (v34)
    {
      v20 = v35;
      v21 = v34;
      if (v35 != v34)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v34;
      }

      v35 = v19;
      operator delete(v21);
    }

    if (v30 != &v31 + 8)
    {
      free(v30);
    }
  }

  return v14;
}

void *llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = *a1 + 32 * v26;
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 32 * v26;
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *v22 = v24;
          *(v22 + 8) = v23;
          *(v22 + 16) = *(v16 + 1);
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *(v16 + 6) = 0;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t *llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 57, 8uLL);
    v11 = buffer + 56;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 57, 8uLL);
    v11 = buffer + 56;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  *(buffer + 40) = 0u;
  *(buffer + 8) = 0u;
  *(buffer + 24) = 0u;
  *(buffer + 5) = &mlir::detail::TypeIDResolver<void,void>::id;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

unint64_t mlir::Token::getUnsignedIntegerValue(mlir::Token *this)
{
  v3 = *(this + 2);
  if (v3 <= 1)
  {
    v4 = *(this + 1);
    v5 = 10;
  }

  else
  {
    v4 = *(this + 1);
    if (*(v4 + 1) == 120)
    {
      v5 = 0;
    }

    else
    {
      v5 = 10;
    }
  }

  v7[1] = v1;
  v7[2] = v2;
  v7[0] = 0;
  if ((llvm::getAsUnsignedInteger(v4, v3, v5, v7) & 1) != 0 || HIDWORD(v7[0]))
  {
    return 0;
  }

  else
  {
    return v7[0] | 0x100000000;
  }
}

unint64_t mlir::Token::getUInt64IntegerValue(uint64_t a1, unint64_t a2)
{
  v4 = 10;
  if (a2 >= 2)
  {
    if (*(a1 + 1) == 120)
    {
      v4 = 0;
    }

    else
    {
      v4 = 10;
    }
  }

  v6[1] = v2;
  v6[2] = v3;
  v6[0] = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, v4, v6))
  {
    return 0;
  }

  else
  {
    return v6[0];
  }
}

uint64_t mlir::Token::getFloatingPointValue(mlir::Token *this)
{
  v2 = 0.0;
  if (llvm::StringRef::getAsDouble((this + 8), &v2, 1))
  {
    return 0;
  }

  else
  {
    return *&v2;
  }
}

unint64_t mlir::Token::getIntTypeBitwidth(mlir::Token *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = 1;
  if (*v1 != 105)
  {
    v3 = 2;
  }

  if (v2 < v3)
  {
    v3 = *(this + 2);
  }

  v5 = 0;
  if ((llvm::getAsUnsignedInteger(&v1[v3], v2 - v3, 0xA, &v5) & 1) != 0 || HIDWORD(v5))
  {
    return 0;
  }

  else
  {
    return v5 | 0x100000000;
  }
}

uint64_t mlir::Token::getIntTypeSignedness(mlir::Token *this)
{
  v1 = **(this + 1);
  if (v1 == 105)
  {
    return 0;
  }

  if (v1 == 115)
  {
    return 257;
  }

  return 256;
}

void mlir::Token::getStringValue(mlir::Token *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 1) + 1;
  }

  else
  {
    v4 = *(this + 1);
  }

  v5 = v3 - (v3 != 0);
  if (*this != 2)
  {
    if (v5 >= v5 - 1)
    {
      --v5;
    }

    if (*this == 4)
    {
      if (v5)
      {
        ++v4;
      }

      v5 -= v5 != 0;
    }
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, v5);
  if (v5)
  {
    v6 = 0;
    do
    {
      v8 = v6 + 1;
      LODWORD(v9) = *(v4 + v6);
      if (v9 == 92)
      {
        v7 = v6 + 2;
        v9 = *(v4 + v8);
        if (*(v4 + v8) <= 0x6Du)
        {
          if (v9 == 34 || v9 == 92)
          {
            goto LABEL_14;
          }

LABEL_23:
          v10 = *(v4 + v7);
          v7 = v6 + 3;
          LOWORD(v9) = llvm::hexDigitValue(char)::LUT[v10] | (16 * llvm::hexDigitValue(char)::LUT[v9]);
          goto LABEL_14;
        }

        if (v9 == 116)
        {
          LOBYTE(v9) = 9;
          goto LABEL_14;
        }

        if (v9 != 110)
        {
          goto LABEL_23;
        }

        LOBYTE(v9) = 10;
      }

      else
      {
        v7 = v6 + 1;
      }

LABEL_14:
      std::string::push_back(a2, v9);
      v6 = v7;
    }

    while (v7 != v5);
  }
}

void mlir::Token::getHexStringValue(mlir::Token *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 != 0;
  v5 = v2 - v4;
  if (v5 >= v5 - 1)
  {
    --v5;
  }

  memset(&v16, 0, sizeof(v16));
  v6 = v5 - 2;
  if (v5 < 2 || *(v3 + v4) != 30768 || (v5 & 1) != 0)
  {
    *a2 = 0;
    a2[24] = 0;
  }

  else if (v5 == 2 || ((v7 = a2, std::string::resize(&v16, (v5 - 1) >> 1, 0), a2 = v7, (v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v8 = &v16) : (v8 = v16.__r_.__value_.__r.__words[0]), v6 == 1))
  {
LABEL_18:
    *a2 = v16;
    a2[24] = 1;
  }

  else
  {
    v9 = -(v6 >> 1);
    v10 = (v4 + v3 + 3);
    while (1)
    {
      v11 = llvm::hexDigitValue(char)::LUT[*(v10 - 1)];
      v12 = llvm::hexDigitValue(char)::LUT[*v10];
      if (v11 == 0xFFFF || v12 == 0xFFFF)
      {
        break;
      }

      v10 += 2;
      v8->__r_.__value_.__s.__data_[0] = v12 | (16 * v11);
      v8 = (v8 + 1);
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_18;
      }
    }

    v15 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
    *v7 = 0;
    v7[24] = 0;
    if (v15 < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void mlir::Token::getSymbolReference(mlir::Token *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = (*(this + 1) + 1);
  }

  else
  {
    v4 = *(this + 1);
  }

  if (*v4 == 34)
  {

    mlir::Token::getStringValue(this, a2);
  }

  else
  {
    v5 = v3 - (v3 != 0);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v5;
    if (v3 >= 2)
    {
      memmove(a2, v4, v5);
    }

    *(a2 + v5) = 0;
  }
}

unint64_t mlir::Token::getHashIdentifierNumber(mlir::Token *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(this + 1) + 1;
  }

  else
  {
    v2 = *(this + 1);
  }

  v4 = 0;
  if ((llvm::getAsUnsignedInteger(v2, v1 - (v1 != 0), 0xA, &v4) & 1) != 0 || HIDWORD(v4))
  {
    return 0;
  }

  else
  {
    return v4 | 0x100000000;
  }
}

BOOL mlir::Token::isCodeCompletionFor(uint64_t a1, int a2)
{
  if (*a1 == 2 && *(a1 + 16) && (v2 = a2 - 5, (a2 - 5) <= 6) && ((0x4Fu >> v2) & 1) != 0)
  {
    return **(a1 + 8) == ((0x222222215E2523uLL >> (8 * v2)) & 0x7F);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::Parser::parseOptionalType(mlir::detail::Parser *this, mlir::Type *a2)
{
  v3 = *(*(this + 1) + 56);
  v4 = (v3 - 8);
  if (v4 <= 0x3D)
  {
    if (((1 << (v3 - 8)) & 0x2487FFF140000011) != 0)
    {
LABEL_3:
      v5 = mlir::detail::Parser::parseNonFunctionType(this);
LABEL_4:
      *a2 = v5;
      return (v5 != 0) | 0x100u;
    }

    if (v4 == 13)
    {
      v5 = mlir::detail::Parser::parseFunctionType(this);
      goto LABEL_4;
    }
  }

  v7 = v3 - 76;
  v8 = v7 > 7;
  v9 = (1 << v7) & 0x93;
  if (!v8 && v9 != 0)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t *mlir::detail::Parser::parseType(mlir::detail::Parser *this)
{
  if (*(*(this + 1) + 56) == 21)
  {
    return mlir::detail::Parser::parseFunctionType(this);
  }

  else
  {
    return mlir::detail::Parser::parseNonFunctionType(this);
  }
}

uint64_t mlir::detail::Parser::parseFunctionType(mlir::detail::Parser *this)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x400000000;
  v9 = v11;
  v10 = 0x400000000;
  if ((mlir::detail::Parser::parseTypeListParens(this, &v12) & 1) == 0 || (v7[0] = "expected '->' in function type", v8 = 259, (mlir::detail::Parser::parseToken(this, 13, v7) & 1) == 0))
  {
LABEL_11:
    FunctionType = 0;
    v4 = v9;
    if (v9 == v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(*(this + 1) + 56) == 21)
  {
    if ((mlir::detail::Parser::parseTypeListParens(this, &v9) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = mlir::detail::Parser::parseNonFunctionType(this);
    if (!v2)
    {
      goto LABEL_11;
    }

    if (v10 >= HIDWORD(v10))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v9 + v10) = v2;
    LODWORD(v10) = v10 + 1;
  }

  mlir::TypeRange::TypeRange(v7, v12, v13);
  mlir::TypeRange::TypeRange(v6, v9, v10);
  FunctionType = mlir::Builder::getFunctionType(this, v7[0], v7[1], v6[0], v6[1]);
  v4 = v9;
  if (v9 != v11)
  {
LABEL_12:
    free(v4);
  }

LABEL_13:
  if (v12 != v14)
  {
    free(v12);
  }

  return FunctionType;
}

uint64_t *mlir::detail::Parser::parseNonFunctionType(mlir::detail::Parser *this)
{
  v83 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  v2 = (v1 + 56);
  switch(*(v1 + 56))
  {
    case 2:
      v3 = this;
      if (mlir::Token::isCodeCompletionFor(v2, 8))
      {
        this = v3;

        return mlir::detail::Parser::parseExtendedType(this);
      }

      return mlir::detail::Parser::codeCompleteType(v3);
    case 8:

      return mlir::detail::Parser::parseExtendedType(this);
    case 0xC:
      v23 = this;
      IntTypeBitwidth = mlir::Token::getIntTypeBitwidth(v2);
      if ((IntTypeBitwidth & 0x100000000) == 0)
      {
        *&v77 = "invalid integer width";
        v79 = 259;
        mlir::detail::Parser::emitError(v23, &v77, v80);
        v25 = v80;
LABEL_52:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        return 0;
      }

      if (BYTE3(IntTypeBitwidth))
      {
        Loc = mlir::Token::getLoc((*(v23 + 1) + 56));
        v75 = "integer bitwidth is limited to ";
        v76 = 259;
        mlir::detail::Parser::emitError(v23, Loc, &v75, &v77);
        mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v77, &mlir::IntegerType::kMaxWidth);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v66, " bits");
        v25 = &v77;
        goto LABEL_52;
      }

      v67 = *(v23 + 1);
      v68 = v23;
      v69 = IntTypeBitwidth;
      IntTypeSignedness = mlir::Token::getIntTypeSignedness((v67 + 56));
      if (IntTypeSignedness)
      {
        v71 = 1;
      }

      else
      {
        v71 = 2;
      }

      v72 = v71 & (IntTypeSignedness << 23 >> 31);
      v73 = *(v68 + 1);
      *(v73 + 96) = *(v73 + 72);
      *(v73 + 80) = *(v73 + 56);
      mlir::Lexer::lexToken((*(v68 + 1) + 8), &v77);
      v74 = *(v68 + 1);
      *(v74 + 56) = v77;
      *(v74 + 72) = v78;
      return mlir::IntegerType::get(***(v68 + 1), v69, v72);
    case 0x26:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v47 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v48 = *(v47 + 1);
      *(v48 + 56) = v77;
      *(v48 + 72) = v78;
      return mlir::Builder::getBF16Type(v47, v49);
    case 0x28:

      return mlir::detail::Parser::parseComplexType(this);
    case 0x2C:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v26 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v27 = *(v26 + 1);
      *(v27 + 56) = v77;
      *(v27 + 72) = v78;
      return mlir::Builder::getF16Type(v26, v28);
    case 0x2D:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v35 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v36 = *(v35 + 1);
      *(v36 + 56) = v77;
      *(v36 + 72) = v78;
      return mlir::Builder::getF32Type(v35, v37);
    case 0x2E:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v38 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v39 = *(v38 + 1);
      *(v39 + 56) = v77;
      *(v39 + 72) = v78;
      return mlir::Builder::getF64Type(v38, v40);
    case 0x2F:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v53 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v54 = *(v53 + 1);
      *(v54 + 56) = v77;
      *(v54 + 72) = v78;
      return mlir::Builder::getF80Type(v53, v55);
    case 0x30:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v50 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v51 = *(v50 + 1);
      *(v51 + 56) = v77;
      *(v51 + 72) = v78;
      return mlir::Builder::getFloat8E5M2Type(v50, v52);
    case 0x31:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v11 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v12 = *(v11 + 1);
      *(v12 + 56) = v77;
      *(v12 + 72) = v78;
      return mlir::Builder::getFloat8E4M3Type(v11, v13);
    case 0x32:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v29 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v30 = *(v29 + 1);
      *(v30 + 56) = v77;
      *(v30 + 72) = v78;
      return mlir::Builder::getFloat8E4M3FNType(v29, v31);
    case 0x33:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v17 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v18 = *(v17 + 1);
      *(v18 + 56) = v77;
      *(v18 + 72) = v78;
      return mlir::Builder::getFloat8E5M2FNUZType(v17, v19);
    case 0x34:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v8 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v9 = *(v8 + 1);
      *(v9 + 56) = v77;
      *(v9 + 72) = v78;
      return mlir::Builder::getFloat8E4M3FNUZType(v8, v10);
    case 0x35:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v41 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v42 = *(v41 + 1);
      *(v42 + 56) = v77;
      *(v42 + 72) = v78;
      return mlir::Builder::getFloat8E4M3B11FNUZType(v41, v43);
    case 0x36:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v44 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v45 = *(v44 + 1);
      *(v45 + 56) = v77;
      *(v45 + 72) = v78;
      return mlir::Builder::getFloat8E3M4Type(v44, v46);
    case 0x37:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v59 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v60 = *(v59 + 1);
      *(v60 + 56) = v77;
      *(v60 + 72) = v78;
      return mlir::Builder::getFloat4E2M1FNType(v59, v61);
    case 0x38:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v56 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v57 = *(v56 + 1);
      *(v57 + 56) = v77;
      *(v57 + 72) = v78;
      return mlir::Builder::getFloat6E2M3FNType(v56, v58);
    case 0x39:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v5 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v6 = *(v5 + 1);
      *(v6 + 56) = v77;
      *(v6 + 72) = v78;
      return mlir::Builder::getFloat6E3M2FNType(v5, v7);
    case 0x3A:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v20 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v21 = *(v20 + 1);
      *(v21 + 56) = v77;
      *(v21 + 72) = v78;
      return mlir::Builder::getF128Type(v20, v22);
    case 0x3F:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v62 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v63 = *(v62 + 1);
      *(v63 + 56) = v77;
      *(v63 + 72) = v78;
      return mlir::Builder::getIndexType(v62, v64);
    case 0x42:

      return mlir::detail::Parser::parseMemRefType(this);
    case 0x45:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v14 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v15 = *(v14 + 1);
      *(v15 + 56) = v77;
      *(v15 + 72) = v78;
      return mlir::Builder::getNoneType(v14, v16);
    case 0x4C:

      return mlir::detail::Parser::parseTensorType(this);
    case 0x4D:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v32 = this;
      mlir::Lexer::lexToken((*(this + 1) + 8), &v77);
      v33 = *(v32 + 1);
      *(v33 + 56) = v77;
      *(v33 + 72) = v78;
      return mlir::Builder::getTF32Type(v32, v34);
    case 0x50:

      return mlir::detail::Parser::parseTupleType(this);
    case 0x53:

      return mlir::detail::Parser::parseVectorType(this);
    default:
      *&v77 = "expected non-function type";
      v79 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v77, &v81);
      if (v81)
      {
        mlir::InFlightDiagnostic::report(&v81);
      }

      if (v82[192] == 1)
      {
        mlir::Diagnostic::~Diagnostic(v82);
      }

      return 0;
  }
}

uint64_t mlir::detail::Parser::parseFunctionResultTypes(mlir::detail::Parser *a1, uint64_t a2)
{
  if (*(*(a1 + 1) + 56) == 21)
  {

    return mlir::detail::Parser::parseTypeListParens(a1, a2);
  }

  else
  {
    result = mlir::detail::Parser::parseNonFunctionType(a1);
    if (result)
    {
      v5 = *(a2 + 8);
      if (v5 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a2 + 8 * v5) = result;
      ++*(a2 + 8);
      return 1;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseTypeListParens(mlir::detail::Parser *a1, uint64_t a2)
{
  *&v7 = "expected '('";
  v9 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 21, &v7) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  if (*(v4 + 56) == 28)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v7);
    v5 = *(a1 + 1);
    *(v5 + 56) = v7;
    *(v5 + 72) = v8;
    return 1;
  }

  *&v7 = a1;
  *(&v7 + 1) = a2;
  if ((mlir::detail::Parser::parseCommaSeparatedList(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, &v7, 0, 0) & 1) == 0)
  {
    return 0;
  }

  *&v7 = "expected ')'";
  v9 = 259;
  return mlir::detail::Parser::parseToken(a1, 28, &v7) & 1;
}

uint64_t mlir::detail::Parser::parseTypeListNoParens(mlir::detail::Parser *a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return mlir::detail::Parser::parseCommaSeparatedList(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, v3, 0, 0);
}

uint64_t mlir::detail::Parser::parseComplexType(mlir::detail::Parser *this)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v16);
  v3 = *(this + 1);
  *(v3 + 56) = v16;
  *(v3 + 72) = v17;
  *&v16 = "expected '<' in complex type";
  v18 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v16) & 1) == 0)
  {
    return 0;
  }

  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  if (*(*(this + 1) + 56) == 21)
  {
    result = mlir::detail::Parser::parseFunctionType(this);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = mlir::detail::Parser::parseNonFunctionType(this);
    if (!result)
    {
      return result;
    }
  }

  v6 = result;
  *&v16 = "expected '>' in complex type";
  v18 = 259;
  if ((mlir::detail::Parser::parseToken(this, 19, &v16) & 1) == 0)
  {
    return 0;
  }

  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    *&v16 = "invalid element type for complex";
    v18 = 259;
    mlir::detail::Parser::emitError(this, Loc, &v16, v19);
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }

    if (v27 == 1)
    {
      if (v26 != &v27)
      {
        free(v26);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v25;
        v10 = __p;
        if (v25 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v25 = v8;
        operator delete(v10);
      }

      v11 = v22;
      if (v22)
      {
        v12 = v23;
        v13 = v22;
        if (v23 != v22)
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
          v13 = v22;
        }

        v23 = v11;
        operator delete(v13);
      }

      if (v20 != &v21)
      {
        free(v20);
      }
    }

    return 0;
  }

  return mlir::ComplexType::get(v6);
}

uint64_t *mlir::detail::Parser::parseMemRefType(mlir::detail::Parser *this)
{
  v43 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v3 = *(this + 1);
  *(v3 + 96) = *(v3 + 72);
  *(v3 + 80) = *(v3 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v40);
  v4 = *(this + 1);
  *(v4 + 56) = v40;
  *(v4 + 72) = v41[0];
  *&v40 = "expected '<' in memref type";
  v42 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v40) & 1) == 0)
  {
    return 0;
  }

  *&v40 = v41;
  *(&v40 + 1) = 0x400000000;
  v5 = *(this + 1);
  if (*(v5 + 56) == 30)
  {
    *(v5 + 80) = *(v5 + 56);
    *(v5 + 96) = *(v5 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v25);
    v6 = *(this + 1);
    *(v6 + 56) = v25;
    *(v6 + 72) = v26;
    v29 = 1;
    if (!mlir::detail::Parser::parseXInDimensionList(this))
    {
      goto LABEL_44;
    }

    v7 = *(this + 1);
  }

  else
  {
    v29 = 0;
    LOBYTE(v22[0]) = 1;
    *&v25 = this;
    *(&v25 + 1) = v22;
    v26 = &v40;
    while (1)
    {
      v7 = *(this + 1);
      if ((*(v7 + 56) | 0x10) != 0x1A)
      {
        break;
      }

      if ((mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(&v25) & 1) == 0 || !mlir::detail::Parser::parseXInDimensionList(this))
      {
        goto LABEL_44;
      }
    }
  }

  v8 = mlir::Token::getLoc((v7 + 56));
  if (*(*(this + 1) + 56) != 21)
  {
    result = mlir::detail::Parser::parseNonFunctionType(this);
    v28 = result;
    if (!result)
    {
      goto LABEL_45;
    }

LABEL_15:
    v10 = result;
    if (mlir::BaseMemRefType::isValidElementType(result))
    {
      v24[0] = 0;
      v24[1] = 0;
      v22[0] = this;
      v22[1] = v24;
      v22[2] = &v23;
      v22[3] = &v29;
      v23 = 0;
      v11 = *(this + 1);
      if (*(v11 + 56) == 19)
      {
        *(v11 + 80) = *(v11 + 56);
        *(v11 + 96) = *(v11 + 72);
        mlir::Lexer::lexToken((*(this + 1) + 8), &v25);
        v12 = *(this + 1);
        *(v12 + 56) = v25;
        *(v12 + 72) = v26;
LABEL_18:
        if (v29 == 1)
        {
          v30 = Loc;
          *&v25 = this;
          *(&v25 + 1) = &v30;
          result = mlir::UnrankedMemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>, &v25, v10, v23);
        }

        else
        {
          result = mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(this, Loc, &v40, &v28, v24, &v23);
        }

        goto LABEL_45;
      }

      *&v25 = "expected ',' or '>' in memref type";
      v27 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v25) & 1) != 0 && (mlir::detail::Parser::parseCommaSeparatedListUntil(this, 19, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>, v22, 0))
      {
        goto LABEL_18;
      }
    }

    else
    {
      *&v25 = "invalid memref element type";
      v27 = 259;
      mlir::detail::Parser::emitError(this, v8, &v25, v31);
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

        v13 = __p;
        if (__p)
        {
          v14 = v37;
          v15 = __p;
          if (v37 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v37 = v13;
          operator delete(v15);
        }

        v16 = v34;
        if (v34)
        {
          v17 = v35;
          v18 = v34;
          if (v35 != v34)
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
            v18 = v34;
          }

          v35 = v16;
          operator delete(v18);
        }

        if (v32 != &v33)
        {
          free(v32);
        }
      }
    }

LABEL_44:
    result = 0;
    goto LABEL_45;
  }

  result = mlir::detail::Parser::parseFunctionType(this);
  v28 = result;
  if (result)
  {
    goto LABEL_15;
  }

LABEL_45:
  if (v40 != v41)
  {
    v21 = result;
    free(v40);
    return v21;
  }

  return result;
}

BOOL mlir::detail::Parser::parseXInDimensionList(mlir::detail::Parser *this)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  if (*(v1 + 56) == 3 && (v2 = *(v1 + 64), *v2 == 120))
  {
    if (*(v1 + 72) != 1)
    {
      *(v1 + 40) = v2 + 1;
    }

    *(v1 + 80) = *(v1 + 56);
    *(v1 + 96) = *(v1 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v17);
    v4 = *(this + 1);
    *(v4 + 56) = v17;
    *(v4 + 72) = v18;
    return 1;
  }

  else
  {
    v15 = "expected 'x' in dimension list";
    v16 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v15, &v17);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v17);
    if (v17)
    {
      mlir::InFlightDiagnostic::report(&v17);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v24;
        v8 = __p;
        if (v24 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v24 = v6;
        operator delete(v8);
      }

      v9 = v21;
      if (v21)
      {
        v10 = v22;
        v11 = v21;
        if (v22 != v21)
        {
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
          v11 = v21;
        }

        v22 = v9;
        operator delete(v11);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v5;
}

uint64_t mlir::detail::Parser::parseDimensionListRanked(mlir::detail::Parser *a1, uint64_t a2, char a3, int a4)
{
  v8 = a3;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a2;
  if (a4)
  {
    while ((*(*(a1 + 1) + 56) | 0x10) == 0x1A)
    {
      if ((mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(v7) & 1) == 0 || !mlir::detail::Parser::parseXInDimensionList(a1))
      {
        return 0;
      }
    }

    return 1;
  }

  if ((*(*(a1 + 1) + 56) | 0x10) != 0x1A)
  {
    return 1;
  }

  do
  {
    if ((mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(v7) & 1) == 0)
    {
      break;
    }

    v6 = *(a1 + 1);
    if (*(v6 + 56) != 3 || **(v6 + 64) != 120)
    {
      return 1;
    }
  }

  while (mlir::detail::Parser::parseXInDimensionList(a1));
  return 0;
}

BOOL mlir::BaseMemRefType::isValidElementType(uint64_t *a1)
{
  v16 = a1;
  if (mlir::Type::isIntOrIndexOrFloat(&v16))
  {
    return 1;
  }

  v2 = *v16;
  v3 = *(*v16 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    return 1;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    return 1;
  }

  {
    v15 = v2;
    mlir::BaseMemRefType::isValidElementType();
    v6 = mlir::detail::TypeIDResolver<mlir::MemRefElementTypeInterface,void>::resolveTypeID(void)::id;
    v7 = *(v15 + 8);
    v8 = *(v15 + 16);
    if (v8)
    {
      goto LABEL_17;
    }

    return 0;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemRefElementTypeInterface,void>::resolveTypeID(void)::id;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (!v8)
  {
    return 0;
  }

LABEL_17:
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
  if (v9 == &v7[2 * v8])
  {
    return 0;
  }

  return *v9 == v6 && v9[1] != 0;
}

uint64_t mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  return mlir::MemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::MemRefType mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(void)#1}>, v7, *a3, *(a3 + 8), *a4, *a5, a5[1], *a6);
}

uint64_t mlir::detail::Parser::parseTensorType(mlir::detail::Parser *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v27);
  v3 = *(this + 1);
  *(v3 + 56) = v27;
  *(v3 + 72) = v28[0];
  *&v27 = "expected '<' in tensor type";
  v29 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v27) & 1) == 0)
  {
    return 0;
  }

  *&v27 = v28;
  *(&v27 + 1) = 0x400000000;
  v4 = *(this + 1);
  v5 = *(v4 + 56);
  if (v5 == 30)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v19);
    v6 = *(this + 1);
    *(v6 + 56) = v19;
    *(v6 + 72) = v20;
    if (!mlir::detail::Parser::parseXInDimensionList(this))
    {
      goto LABEL_36;
    }

    v7 = *(this + 1);
  }

  else
  {
    LOBYTE(v23) = 1;
    *&v19 = this;
    *(&v19 + 1) = &v23;
    v20 = &v27;
    while (1)
    {
      v7 = *(this + 1);
      if ((*(v7 + 56) | 0x10) != 0x1A)
      {
        break;
      }

      if ((mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(&v19) & 1) == 0 || !mlir::detail::Parser::parseXInDimensionList(this))
      {
        goto LABEL_36;
      }
    }
  }

  Loc = mlir::Token::getLoc((v7 + 56));
  if (*(*(this + 1) + 56) == 21)
  {
    v9 = mlir::detail::Parser::parseFunctionType(this);
  }

  else
  {
    v9 = mlir::detail::Parser::parseNonFunctionType(this);
  }

  v11 = v9;
  v23 = 0;
  v12 = *(this + 1);
  if (*(v12 + 56) == 16)
  {
    *(v12 + 80) = *(v12 + 56);
    *(v12 + 96) = *(v12 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v19);
    v13 = *(this + 1);
    *(v13 + 56) = v19;
    *(v13 + 72) = v20;
    v14 = mlir::detail::Parser::parseOptionalAttribute(this, &v23, 0);
    if ((v14 & 0x100) != 0)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_36;
      }

      v16 = v23;
      if (v23)
      {
        v16 = llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(v23);
      }

      else
      {
        v17 = 0;
      }

      *&v19 = v16;
      *(&v19 + 1) = v17;
      if (v16)
      {
        v22 = this;
        if ((mlir::VerifiableTensorEncoding::verifyEncoding(&v19, v27, DWORD2(v27), v11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>, &v22) & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }
  }

  if (!v11)
  {
    goto LABEL_36;
  }

  *&v19 = "expected '>' in tensor type";
  v21 = 259;
  if ((mlir::detail::Parser::parseToken(this, 19, &v19) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (mlir::TensorType::isValidElementType(v11))
  {
    if (v5 == 30)
    {
      if (v23)
      {
        *&v19 = "cannot apply encoding to unranked tensor";
        v21 = 259;
        mlir::detail::Parser::emitError(this, &v19, v24);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
        result = 0;
        v15 = v27;
        if (v27 == v28)
        {
          return result;
        }
      }

      else
      {
        result = mlir::UnrankedTensorType::get(v11);
        v15 = v27;
        if (v27 == v28)
        {
          return result;
        }
      }
    }

    else
    {
      result = mlir::RankedTensorType::get(v27, DWORD2(v27), v11, v23);
      v15 = v27;
      if (v27 == v28)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  *&v19 = "invalid tensor element type";
  v21 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v19, &v25);
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
  }

  if (v26[192] != 1)
  {
LABEL_36:
    result = 0;
    v15 = v27;
    if (v27 == v28)
    {
      return result;
    }

    goto LABEL_37;
  }

  mlir::Diagnostic::~Diagnostic(v26);
  result = 0;
  v15 = v27;
  if (v27 == v28)
  {
    return result;
  }

LABEL_37:
  v18 = result;
  free(v15);
  return v18;
}

uint64_t mlir::detail::Parser::parseTupleType(mlir::detail::Parser *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), v14);
  v3 = *(this + 1);
  *(v3 + 56) = *v14;
  *(v3 + 72) = v15[0];
  v14[0] = "expected '<' in tuple type";
  v16 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, v14) & 1) == 0)
  {
    return 0;
  }

  v4 = *(this + 1);
  if (*(v4 + 56) == 19)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), v14);
    v5 = *(this + 1);
    *(v5 + 56) = *v14;
    *(v5 + 72) = v15[0];
    return mlir::TupleType::get(***(this + 1), v6);
  }

  v14[0] = v15;
  v14[1] = 0x400000000;
  v11 = this;
  v12 = v14;
  if ((mlir::detail::Parser::parseCommaSeparatedList(this, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, &v11, 0, 0) & 1) == 0 || (v11 = "expected '>' in tuple type", v13 = 259, (mlir::detail::Parser::parseToken(this, 19, &v11) & 1) == 0))
  {
    result = 0;
    v9 = v14[0];
    if (v14[0] == v15)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = ***(this + 1);
  mlir::TypeRange::TypeRange(&v11, v14[0], LODWORD(v14[1]));
  result = mlir::TupleType::get(v8, v11, v12);
  v9 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    v10 = result;
    free(v9);
    return v10;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseVectorType(mlir::detail::Parser *this)
{
  v18 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v3 = *(this + 1);
  *(v3 + 96) = *(v3 + 72);
  *(v3 + 80) = *(v3 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), v15);
  v4 = *(this + 1);
  *(v4 + 56) = *v15;
  *(v4 + 72) = v16[0];
  v15[0] = "expected '<' in vector type";
  v17 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, v15) & 1) == 0)
  {
    return 0;
  }

  v15[0] = v16;
  v15[1] = 0x400000000;
  v11 = &v13;
  v12 = xmmword_25736EFF0;
  if (!mlir::detail::Parser::parseVectorDimensionList(this, v15, &v11))
  {
LABEL_11:
    Checked = 0;
    v7 = v11;
    if (v11 == &v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(*(this + 1) + 56) == 21)
  {
    v5 = mlir::detail::Parser::parseFunctionType(this);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = mlir::detail::Parser::parseNonFunctionType(this);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v9[0] = "expected '>' in vector type";
  v10 = 259;
  if ((mlir::detail::Parser::parseToken(this, 19, v9) & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = Loc;
  v9[0] = this;
  v9[1] = &v14;
  Checked = mlir::VectorType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::VectorType mlir::detail::Parser::getChecked<mlir::VectorType,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &)::{lambda(void)#1}>, v9, v15[0], LODWORD(v15[1]), v5, v11, v12);
  v7 = v11;
  if (v11 != &v13)
  {
LABEL_12:
    free(v7);
  }

LABEL_13:
  if (v15[0] != v16)
  {
    free(v15[0]);
  }

  return Checked;
}

BOOL mlir::detail::Parser::parseVectorDimensionList(mlir::detail::Parser *a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v6 = *(a1 + 1);
    v7 = *(v6 + 56);
    if (v7 == 22)
    {
      v26 = 0;
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v27);
      v9 = *(a1 + 1);
      *(v9 + 56) = v27;
      *(v9 + 72) = v28;
      v8 = 1;
      if (!mlir::detail::Parser::parseIntegerInDimensionList(a1, &v26))
      {
        return 0;
      }
    }

    else
    {
      if (v7 != 10)
      {
        return 1;
      }

      v8 = 0;
      v26 = 0;
      if (!mlir::detail::Parser::parseIntegerInDimensionList(a1, &v26))
      {
        return 0;
      }
    }

    v10 = *(a2 + 8);
    if (v10 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a2 + 8 * v10) = v26;
    ++*(a2 + 8);
    if (v8)
    {
      break;
    }

LABEL_11:
    v13 = a3[1];
    if ((v13 + 1) > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a3 + v13) = v8;
    ++a3[1];
    if (!mlir::detail::Parser::parseXInDimensionList(a1))
    {
      return 0;
    }
  }

  v11 = *(a1 + 1);
  if (*(v11 + 56) == 29)
  {
    *(v11 + 80) = *(v11 + 56);
    *(v11 + 96) = *(v11 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v27);
    v12 = *(a1 + 1);
    *(v12 + 56) = v27;
    *(v12 + 72) = v28;
    goto LABEL_11;
  }

  v24 = "missing ']' closing scalable dimension";
  v25 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, &v24, &v27);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
  v15 = result;
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
    result = v15;
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v31;
    if (v31)
    {
      v20 = v32;
      v21 = v31;
      if (v32 != v31)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v31;
      }

      v32 = v19;
      operator delete(v21);
      result = v15;
    }

    if (v29 != &v30)
    {
      free(v29);
      return v15;
    }
  }

  return result;
}

BOOL mlir::detail::Parser::parseIntegerInDimensionList(mlir::detail::Parser *this, unint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  if (v6 >= 2 && *(v5 + 1) == 120)
  {
    *a2 = 0;
    *(v4 + 40) = v5 + 1;
LABEL_7:
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v22);
    v9 = *(this + 1);
    *(v9 + 56) = v22;
    *(v9 + 72) = v23;
    return 1;
  }

  UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v5, v6);
  if ((v8 & 1) != 0 && (UInt64IntegerValue & 0x8000000000000000) == 0)
  {
    *a2 = UInt64IntegerValue;
    v4 = *(this + 1);
    goto LABEL_7;
  }

  v20 = "invalid dimension";
  v21 = 259;
  mlir::detail::Parser::emitError(this, &v20, &v22);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
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

    v11 = __p;
    if (__p)
    {
      v12 = v29;
      v13 = __p;
      if (v29 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v29 = v11;
      operator delete(v13);
    }

    v14 = v26;
    if (v26)
    {
      v15 = v27;
      v16 = v26;
      if (v27 != v26)
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
        v16 = v26;
      }

      v27 = v14;
      operator delete(v16);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v10;
}

uint64_t mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 8) + 56));
  v4 = *(v2 + 1);
  if (*(v4 + 56) != 26)
  {
    v22[0] = 0;
    if (!mlir::detail::Parser::parseIntegerInDimensionList(v2, v22))
    {
      return 0;
    }

    v7 = *(a1 + 16);
    v9 = *(v7 + 8);
    if (v9 >= *(v7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v7 + 8 * v9) = v22[0];
    goto LABEL_8;
  }

  v5 = Loc;
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), v22);
  v6 = *(v2 + 1);
  *(v6 + 56) = *v22;
  *(v6 + 72) = v23;
  if (**(a1 + 8))
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    if (v8 >= *(v7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v7 + 8 * v8) = 0x8000000000000000;
LABEL_8:
    ++*(v7 + 8);
    return 1;
  }

  v20 = "expected static shape";
  v21 = 259;
  mlir::detail::Parser::emitError(v2, v5, &v20, v22);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v29;
      v13 = __p;
      if (v29 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v29 = v11;
      operator delete(v13);
    }

    v14 = v26;
    if (v26)
    {
      v15 = v27;
      v16 = v26;
      if (v27 != v26)
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
        v16 = v26;
      }

      v27 = v14;
      operator delete(v16);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v10;
}

const char *llvm::getTypeName<mlir::MemRefElementTypeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefElementTypeInterface]";
  v6 = 82;
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

void *llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}

const char *llvm::getTypeName<mlir::VerifiableTensorEncoding>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::VerifiableTensorEncoding]";
  v6 = 80;
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

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  if (*(*(v2 + 1) + 56) == 21)
  {
    v3 = mlir::detail::Parser::parseFunctionType(v2);
  }

  else
  {
    v3 = mlir::detail::Parser::parseNonFunctionType(v2);
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(*a1, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = v3;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v3 = v15;
    v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_15;
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
  if (v8 == &v6[2 * v7] || *v8 != v5 || !v8[1])
  {
LABEL_15:
    v16 = *(a1 + 16);
    if (!*v16)
    {
      *v16 = v3;
      return 1;
    }

    v52[0] = "multiple memory spaces specified in memref type";
    v53 = 259;
    mlir::detail::Parser::emitError(v2, v52, v54);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v60;
        v19 = __p;
        if (v60 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v60 = v17;
        operator delete(v19);
      }

      v20 = v57;
      if (!v57)
      {
        goto LABEL_83;
      }

      v21 = v58;
      v22 = v57;
      if (v58 == v57)
      {
        goto LABEL_82;
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
      goto LABEL_81;
    }

    return v14;
  }

  v25 = *v3;
  {
    v26 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    if (!v28)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v35 = v3;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v3 = v35;
    v26 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    if (!v28)
    {
      goto LABEL_46;
    }
  }

  v29 = v27;
  v30 = v28;
  do
  {
    v31 = v30 >> 1;
    v32 = &v29[2 * (v30 >> 1)];
    v34 = *v32;
    v33 = v32 + 2;
    v30 += ~(v30 >> 1);
    if (v34 < v26)
    {
      v29 = v33;
    }

    else
    {
      v30 = v31;
    }
  }

  while (v30);
  if (v29 == &v27[2 * v28] || *v29 != v26)
  {
LABEL_46:
    v36 = *(a1 + 8);
    *v36 = v3;
    v36[1] = 0;
    if (**(a1 + 24))
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

  v43 = v29[1];
  v44 = *(a1 + 8);
  *v44 = v3;
  v44[1] = v43;
  if (**(a1 + 24))
  {
LABEL_47:
    v52[0] = "cannot have affine map for unranked memref type";
    v53 = 259;
    mlir::detail::Parser::emitError(v2, v52, v54);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v60;
        v39 = __p;
        if (v60 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v60 = v37;
        operator delete(v39);
      }

      v20 = v57;
      if (!v57)
      {
        goto LABEL_83;
      }

      v40 = v58;
      v22 = v57;
      if (v58 == v57)
      {
LABEL_82:
        v58 = v20;
        operator delete(v22);
LABEL_83:
        if (v55 != &v56)
        {
          free(v55);
        }

        return v14;
      }

      do
      {
        v42 = *--v40;
        v41 = v42;
        *v40 = 0;
        if (v42)
        {
          MEMORY[0x259C63150](v41, 0x1000C8077774924);
        }
      }

      while (v40 != v20);
LABEL_81:
      v22 = v57;
      goto LABEL_82;
    }

    return v14;
  }

LABEL_64:
  if (!**(a1 + 16))
  {
    return 1;
  }

  v52[0] = "expected memory space to be last in memref type";
  v53 = 259;
  mlir::detail::Parser::emitError(v2, v52, v54);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
  if (v54[0])
  {
    mlir::InFlightDiagnostic::report(v54);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v60;
      v47 = __p;
      if (v60 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v60 = v45;
      operator delete(v47);
    }

    v20 = v57;
    if (!v57)
    {
      goto LABEL_83;
    }

    v48 = v58;
    v22 = v57;
    if (v58 == v57)
    {
      goto LABEL_82;
    }

    do
    {
      v50 = *--v48;
      v49 = v50;
      *v48 = 0;
      if (v50)
      {
        MEMORY[0x259C63150](v49, 0x1000C8077774924);
      }
    }

    while (v48 != v20);
    goto LABEL_81;
  }

  return v14;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::MemRefType mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>(mlir::detail::Parser **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::detail::Parser::emitError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::VectorType mlir::detail::Parser::getChecked<mlir::VectorType,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void mlir::ODIE::Compiler::CoreMLAX::getStrides(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  Shape = mlir::RankedTensorType::getShape(&v15);
  Encoding = mlir::RankedTensorType::getEncoding(&v15);
  if (*(*Encoding + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v5 = Encoding;
  }

  else
  {
    v5 = 0;
  }

  v14 = v5;
  if (v5)
  {
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v14, Shape, a2);
  }

  else
  {
    mlir::RankedTensorType::getShape(&v15);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    v7 = v6 + 1;
    if (v6 != -1)
    {
      if (v7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a2, 8 * v7);
      *(a2 + 8) = v7;
      if (v7)
      {
        v8 = v7;
        v9 = *a2;
        *(*a2 + 8 * (v7 - 1)) = 1;
        if (v7 != 1)
        {
          v10 = 0;
          v11 = v9 - 16;
          v12 = 1;
          do
          {
            v13 = *(Shape - 16 + 8 * v8);
            v10 |= v13 == 0x8000000000000000;
            v12 *= v13;
            if (v10)
            {
              v12 = 0x8000000000000000;
            }

            *&v11[8 * v8--] = v12;
          }

          while (v8 != 1);
        }
      }
    }
  }
}

void mlir::cf::ControlFlowDialect::ControlFlowDialect(mlir::cf::ControlFlowDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "cf", 2, a2, &mlir::detail::TypeIDResolver<mlir::cf::ControlFlowDialect,void>::id);
  *v3 = &unk_286894550;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v5 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v5);
  }

  mlir::cf::ControlFlowDialect::initialize(this);
}

{
  v3 = mlir::Dialect::Dialect(this, "cf", 2, a2, &mlir::detail::TypeIDResolver<mlir::cf::ControlFlowDialect,void>::id);
  *v3 = &unk_286894550;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v5 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v5);
  }

  mlir::cf::ControlFlowDialect::initialize(this);
}

void sub_256F286E4()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::cf::AssertOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v14 = *(*(a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v14);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v17 = 1;
  v15 = &v16;
  v16 = 0;
  v18 = &v19;
  v19 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v18, result) && ((v6 = *(*(*(v5 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v9 = 1), v9))
  {
    v10 = mlir::detail::constant_int_value_binder::match(&v15, v19);
    v11 = v17;
    if (v10)
    {
      if (v17 >= 0x41)
      {
        if (v11 - llvm::APInt::countLeadingZerosSlowCase(&v16) > 0x40)
        {
          result = v16;
          if (v16)
          {
            MEMORY[0x259C63150](v16, 0x1000C8000313F17);
            return 0;
          }

          return result;
        }

        v12 = v16;
      }

      else
      {
        v12 = &v16;
      }

      v13 = *v12 == 1;
      if (v11 < 0x41)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = 0;
      if (v17 < 0x41)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v13 = 0;
    if (v17 < 0x41)
    {
      goto LABEL_28;
    }
  }

  if (!v16)
  {
LABEL_28:
    if (v13)
    {
      goto LABEL_29;
    }

    return 0;
  }

  MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  if (v13)
  {
LABEL_29:
    (*(*a2 + 16))(a2, a1);
    return 1;
  }

  return 0;
}

uint64_t mlir::cf::AssertOp::getEffects(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  {
    mlir::mps::AssignVariableOp::getEffects();
    v2 = a2;
  }

  v5 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(v2, &v5);
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *>(a1, a2);
  }

  else
  {
    v4 = (*a1 + 40 * v3);
    v5 = *a2;
    {
      v9 = a1;
      v10 = v4;
      v8 = v5;
      mlir::mps::AssignVariableOp::getEffects();
      v5 = v8;
      a1 = v9;
      v4 = v10;
    }

    *v4 = v5;
    v4[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v4[2] = 0;
    v4[3] = 0;
    *(v4 + 29) = 0;
    v6 = *(a1 + 8) + 1;
    *(a1 + 8) = v6;
    return *a1 + 40 * v6 - 40;
  }
}

uint64_t mlir::cf::BranchOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 44);
  v5 = *(((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  v6 = *(a1 + 16);
  if (v5 == v6 || !*v5 || **v5)
  {
    v20 = *(((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
    if ((v4 & 0x800000) != 0)
    {
      v7 = *(a1 + 72);
      v8 = *(a1 + 68);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    mlir::ValueRange::ValueRange(v24, v7, v8);
    v21 = v23;
    v22 = 0x400000000;
    if (v5 != *(a1 + 16) && (collapseBranch(&v20, v24, &v21) & 1) != 0)
    {
      v9 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>((a2 + 8), *(a1 + 24), &v20, v24);
      (*(*a2 + 8))(a2, a1, v9);
      v10 = 1;
      v11 = v21;
      if (v21 == v23)
      {
        return v10;
      }

      goto LABEL_11;
    }

    v10 = 0;
    v11 = v21;
    if (v21 != v23)
    {
LABEL_11:
      free(v11);
    }
  }

  else
  {
    if ((v4 & 0x800000) != 0)
    {
      v13 = *(a1 + 72);
      v14 = *(a1 + 68);
      v21 = v23;
      v22 = 0x600000000;
      if (v14 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v14)
      {
        v15 = v23;
        v16 = v14;
        v17 = (v13 + 24);
        do
        {
          v18 = *v17;
          v17 += 4;
          *v15++ = v18;
          --v16;
        }

        while (v16);
        v19 = v22;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      LODWORD(v14) = 0;
      v19 = 0;
      v21 = v23;
      HIDWORD(v22) = 6;
    }

    LODWORD(v22) = v19 + v14;
    (*(*a2 + 16))(a2, a1);
    mlir::ValueRange::ValueRange(v24, v21, v22);
    mlir::RewriterBase::mergeBlocks(a2, v5, v6, v24[0], v24[1]);
    if (v21 != v23)
    {
      free(v21);
    }

    return 1;
  }

  return v10;
}

void mlir::cf::CondBranchOp::getSuccessorOperands(mlir::cf::CondBranchOp *this, int a2)
{
  v2 = *this;
  if (a2)
  {
    mlir::Attribute::getContext((v2 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  mlir::Attribute::getContext((v2 + 24));
  mlir::detail::DenseArrayAttrImpl<int>::get();
}

uint64_t mlir::cf::CondBranchOp::getSuccessorForOperands(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v2 = 0;
  }

  v11 = v2;
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v11, &v9);
  v6 = v10;
  if (v10 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v9) == v6 - 1)
    {
      goto LABEL_9;
    }
  }

  else if (v9 == 1)
  {
LABEL_9:
    v7 = 24;
    goto LABEL_12;
  }

  v7 = 56;
LABEL_12:
  result = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v7);
  if (v6 >= 0x41)
  {
    if (v9)
    {
      v8 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v7);
      MEMORY[0x259C63150](v9, 0x1000C8000313F17);
      return v8;
    }
  }

  return result;
}

void mlir::cf::SwitchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  mlir::cf::SwitchOp::build(a1, a2, a3, a5, a6, a11, a12);
}

{
  if (!a8)
  {
LABEL_13:
    mlir::cf::SwitchOp::build(a1, a2, a3, a5, a6, a11, a12);
  }

  v27 = a2;
  v28 = a1;
  v29 = a8;
  v26 = a3;
  v14 = mlir::VectorType::get(&v29, 1uLL, *(a3 + 8) & 0xFFFFFFFFFFFFFFF8, 0, 0);
  if (v14)
  {
    v15 = *v14;
    {
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v25 = v14;
      mlir::affine::__mlir_ods_local_type_constraint_AffineOps6();
      v14 = v25;
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (v18)
      {
LABEL_5:
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
      }
    }
  }

  mlir::DenseElementsAttr::getRawIntOrFloat(v14);
  a3 = v26;
  a2 = v27;
  a1 = v28;
  goto LABEL_13;
}

void mlir::cf::SwitchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  if (a7)
  {
    v12 = a6;
    do
    {
      v13 = *v12;
      v14 = v12[1];
      v12 += 2;
      mlir::OperationState::addOperands(a2, v13, v14);
    }

    while (v12 != (a6 + 16 * a7));
    v15 = 0;
    v21 = v23;
    v22 = 0xC00000000;
    v16 = 16 * a7;
    v17 = (a6 + 8);
    while (1)
    {
      v19 = *v17;
      v17 += 4;
      v18 = v19;
      if (v15 >= HIDWORD(v22))
      {
        break;
      }

      *(v21 + v15) = v18;
      v15 = v22 + 1;
      LODWORD(v22) = v22 + 1;
      v16 -= 16;
      if (!v16)
      {
        mlir::Builder::getDenseI32ArrayAttr();
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v23;
  v22 = 0xC00000000;
  mlir::Builder::getDenseI32ArrayAttr();
}

void mlir::cf::SwitchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a8)
  {
LABEL_17:
    mlir::cf::SwitchOp::build(a1, a2, a3, a5, a6, a11, a12);
  }

  v30 = a2;
  v31 = a1;
  v32 = a8;
  v29 = a3;
  v16 = mlir::VectorType::get(&v32, 1uLL, *(a3 + 8) & 0xFFFFFFFFFFFFFFF8, 0, 0);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = *v16;
  {
    v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    if (!v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v28 = v16;
    mlir::affine::__mlir_ods_local_type_constraint_AffineOps6();
    v16 = v28;
    v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    if (!v20)
    {
      goto LABEL_15;
    }
  }

  v21 = v19;
  v22 = v20;
  do
  {
    v23 = v22 >> 1;
    v24 = &v21[2 * (v22 >> 1)];
    v26 = *v24;
    v25 = v24 + 2;
    v22 += ~(v22 >> 1);
    if (v26 < v18)
    {
      v21 = v25;
    }

    else
    {
      v22 = v23;
    }
  }

  while (v22);
  if (v21 != &v19[2 * v20] && *v21 == v18)
  {
    v27 = v21[1];
    goto LABEL_16;
  }

LABEL_15:
  v27 = 0;
LABEL_16:
  mlir::DenseElementsAttr::get(v16, v27, a7, a8);
  a3 = v29;
  a2 = v30;
  a1 = v31;
  goto LABEL_17;
}

BOOL mlir::cf::SwitchOp::verify(Operation **this)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v53 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  v54 = v53 != 0;
  mlir::SuccessorRange::SuccessorRange(&Type, v2);
  mlir::SuccessorRange::SuccessorRange(&Type, *this);
  v3 = v58 - 1;
  if (v53)
  {
    v4 = 0;
  }

  else
  {
    v4 = v58 == 1;
  }

  if (v4)
  {
    return 1;
  }

  v5 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Type = mlir::DenseElementsAttr::getType(&v53);
  v58 = v6;
  ElementType = mlir::ShapedType::getElementType(&Type);
  if (ElementType == v5)
  {
    if (!v54 || mlir::DenseElementsAttr::getNumElements(&v53) == v3)
    {
      return 1;
    }

    v52 = 257;
    mlir::OpState::emitOpError(this, v51, &Type);
    if (Type)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "number of case values (";
      v56 = 23;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = v59 + 24 * v60;
      v32 = v55;
      *(v31 + 2) = v56;
      *v31 = v32;
      ++v60;
    }

    NumElements = mlir::DenseElementsAttr::getNumElements(&v53);
    if (Type)
    {
      LODWORD(v55) = 2;
      *(&v55 + 1) = NumElements;
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
      v36 = ++v60;
      if (Type)
      {
        LODWORD(v55) = 3;
        *(&v55 + 1) = ") should match number of case destinations (";
        v56 = 44;
        if (v36 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v36 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v37 = v59 + 24 * v60;
        v38 = v55;
        *(v37 + 2) = v56;
        *v37 = v38;
        v39 = ++v60;
        if (Type)
        {
          LODWORD(v55) = 5;
          *(&v55 + 1) = v3;
          if (v39 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v39 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v40 = v59 + 24 * v60;
          v41 = v55;
          *(v40 + 2) = v56;
          *v40 = v41;
          v42 = ++v60;
          if (Type)
          {
            LODWORD(v55) = 3;
            *(&v55 + 1) = ")";
            v56 = 1;
            if (v42 >= v61)
            {
              if (v59 > &v55 || v59 + 24 * v42 <= &v55)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v43 = v59 + 24 * v60;
            v44 = v55;
            *(v43 + 2) = v56;
            *v43 = v44;
            ++v60;
          }
        }
      }
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v66;
        v47 = __p;
        if (v66 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v66 = v45;
        operator delete(v47);
      }

      v26 = v63;
      if (!v63)
      {
        goto LABEL_67;
      }

      v48 = v64;
      v28 = v63;
      if (v64 == v63)
      {
LABEL_66:
        v64 = v26;
        operator delete(v28);
LABEL_67:
        if (v59 != &v62)
        {
          free(v59);
        }

        return v8;
      }

      do
      {
        v50 = *--v48;
        v49 = v50;
        *v48 = 0;
        if (v50)
        {
          MEMORY[0x259C63150](v49, 0x1000C8077774924);
        }
      }

      while (v48 != v26);
LABEL_65:
      v28 = v63;
      goto LABEL_66;
    }
  }

  else
  {
    v10 = ElementType;
    v52 = 257;
    mlir::OpState::emitOpError(this, v51, &Type);
    if (Type)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "'flag' type (";
      v56 = 13;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v59 + 24 * v60;
      v12 = v55;
      *(v11 + 2) = v56;
      *v11 = v12;
      ++v60;
      if (Type)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v55, v5);
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v59 + 24 * v60;
        v14 = v55;
        *(v13 + 2) = v56;
        *v13 = v14;
        v15 = ++v60;
        if (Type)
        {
          LODWORD(v55) = 3;
          *(&v55 + 1) = ") should match case value type (";
          v56 = 32;
          if (v15 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v15 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v16 = v59 + 24 * v60;
          v17 = v55;
          *(v16 + 2) = v56;
          *v16 = v17;
          ++v60;
          if (Type)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v55, v10);
            if (v60 >= v61)
            {
              if (v59 > &v55 || v59 + 24 * v60 <= &v55)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v18 = v59 + 24 * v60;
            v19 = v55;
            *(v18 + 2) = v56;
            *v18 = v19;
            v20 = ++v60;
            if (Type)
            {
              LODWORD(v55) = 3;
              *(&v55 + 1) = ")";
              v56 = 1;
              if (v20 >= v61)
              {
                if (v59 > &v55 || v59 + 24 * v20 <= &v55)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v21 = v59 + 24 * v60;
              v22 = v55;
              *(v21 + 2) = v56;
              *v21 = v22;
              ++v60;
            }
          }
        }
      }
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v66;
        v25 = __p;
        if (v66 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v66 = v23;
        operator delete(v25);
      }

      v26 = v63;
      if (!v63)
      {
        goto LABEL_67;
      }

      v27 = v64;
      v28 = v63;
      if (v64 == v63)
      {
        goto LABEL_66;
      }

      do
      {
        v30 = *--v27;
        v29 = v30;
        *v27 = 0;
        if (v30)
        {
          MEMORY[0x259C63150](v29, 0x1000C8077774924);
        }
      }

      while (v27 != v26);
      goto LABEL_65;
    }
  }

  return v8;
}

void mlir::cf::SwitchOp::getSuccessorOperands(mlir::cf::SwitchOp *this, int a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::cf::SwitchOp::getCaseOperandsMutable(this);
  }

  mlir::Attribute::getContext((*this + 24));
  mlir::detail::DenseArrayAttrImpl<int>::get();
}

uint64_t *mlir::cf::SwitchOp::getSuccessorForOperands(Operation **a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 11);
  v5 = *a1 + 16 * ((v4 >> 23) & 1) + 64;
  v21 = *(v5 + 8);
  v22 = v21 != 0;
  if (!v21)
  {
    v10 = v5 + ((v4 >> 21) & 0x7F8) + 7;
    return *((v10 & 0xFFFFFFFFFFFFFFF8) + 24);
  }

  mlir::SuccessorRange::SuccessorRange(v18, v3);
  v7 = *v18;
  mlir::SuccessorRange::SuccessorRange(v18, *a1);
  v8 = *a2;
  if (*a2)
  {
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v8 = 0;
    }

    v20 = v8;
    if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v21, v18);
      v25 = *v18;
      v26 = *&v18[16];
      v27 = *&v18[32];
      *&v18[8] = *v18;
      *&v18[24] = v26;
      *v18 = 0;
      v11 = v19;
      if (v26 != v19)
      {
        v12 = 0;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v18[8], &v23);
          v17 = v24;
          v15 = v12;
          v16 = v23;
          mlir::IntegerAttr::getValue(&v20, &v23);
          if (v17 > 0x40)
          {
            v13 = llvm::APInt::equalSlowCase(&v16, &v23);
            if (v24 < 0x41)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v13 = v16 == v23;
            if (v24 < 0x41)
            {
              goto LABEL_16;
            }
          }

          if (v23)
          {
            MEMORY[0x259C63150](v23, 0x1000C8000313F17);
          }

LABEL_16:
          if (v13)
          {
            a2 = *(v7 + 32 + 32 * v15 + 24);
          }

          if (v17 >= 0x41 && v16)
          {
            MEMORY[0x259C63150](v16, 0x1000C8000313F17);
          }

          if (v13)
          {
            return a2;
          }

          v12 = ++*v18;
          ++*&v18[24];
        }

        while (*&v18[24] != v11);
      }

      v10 = *a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71;
      return *((v10 & 0xFFFFFFFFFFFFFFF8) + 24);
    }
  }

  return 0;
}

double mlir::DenseElementsAttr::getValues<llvm::APInt>@<D0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *v13 = mlir::DenseElementsAttr::getElementType(a1);
  if (mlir::Type::isIntOrIndex(v13))
  {
    Type = mlir::DenseElementsAttr::getType(a1);
    v2 = v6;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, *a1, 0);
    v7 = *a1;
    NumElements = mlir::DenseElementsAttr::getNumElements(a1);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v13[32], v7, NumElements);
    *v13 = v12[0];
    *&v13[16] = v12[1];
    v9 = v12[0];
    v17[0] = *v14;
    *(v17 + 15) = *&v14[15];
    v15 = *&v13[1];
    v16 = *&v13[17];
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  v10 = v16;
  *(a2 + 1) = v15;
  *(a2 + 17) = v10;
  *(a2 + 33) = v17[0];
  result = *(v17 + 15);
  *(a2 + 48) = *(v17 + 15);
  *(a2 + 64) = Type;
  *(a2 + 72) = v2;
  return result;
}

uint64_t simplifySwitchWithOnlyDefault(Operation *a1)
{
  mlir::SuccessorRange::SuccessorRange(v3, a1);
  mlir::SuccessorRange::SuccessorRange(v3, a1);
  if (v3[1] != 1)
  {
    return 0;
  }

  simplifySwitchWithOnlyDefault();
  return 1;
}

uint64_t dropSwitchCasesThatMatchDefault(uint64_t a1)
{
  v42[5] = *MEMORY[0x277D85DE8];
  v39 = v41;
  v40 = 0x600000000;
  v36 = v38;
  v37 = 0x300000000;
  v33 = v35;
  v34 = 0x300000000;
  v2 = a1 + 64;
  v3 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8) != 0;
  v26 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  v27 = v3;
  mlir::SuccessorRange::SuccessorRange(v24, a1);
  v4 = *v24;
  mlir::SuccessorRange::SuccessorRange(v24, a1);
  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v26, v24);
  v30 = *v24;
  v32 = *&v24[32];
  *&v24[24] = *&v24[16];
  v31 = *&v24[24];
  *&v24[8] = *v24;
  *v24 = 0;
  if (*&v24[24] != v25)
  {
    v6 = v4 + 32;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v24[8], v42);
    v7 = *(a1 + 44);
    v8 = v2 + 16 * ((v7 >> 23) & 1);
    if (*(v6 + 24) == *(((v8 + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24))
    {
      if ((v7 & 0x800000) != 0)
      {
        v9 = *(a1 + 72);
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(v8 + 20) + *(v8 + 16));
      v11 = v9 + 32 * v10;
      v12 = (*(v8 + 24) + v10) - v10;
      v28 = v11;
      v29 = v12;
      mlir::OperandRange::split(&v28, *v8, v42);
      mlir::OperandRangeRange::dereference();
    }

    if (v40 < HIDWORD(v40))
    {
      v39[v40] = *(v6 + 24);
      LODWORD(v40) = v40 + 1;
      v13 = *(a1 + 44);
      v14 = v2 + 16 * ((v13 >> 23) & 1);
      v15 = *(v14 + 24);
      if ((v13 & 0x800000) != 0)
      {
        v16 = *(a1 + 72);
      }

      else
      {
        v16 = 0;
      }

      v17 = (*(v14 + 20) + *(v14 + 16));
      v28 = v16 + 32 * v17;
      v29 = (v15 + v17) - v17;
      mlir::OperandRange::split(&v28, *v14, v42);
      mlir::OperandRangeRange::dereference();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = v33;
  if (v34)
  {
    v18 = (v33 + 16 * v34 - 8);
    v19 = -16 * v34;
    v20 = v18;
    do
    {
      v21 = *v20;
      v20 -= 4;
      if (v21 >= 0x41)
      {
        v22 = *(v18 - 1);
        if (v22)
        {
          MEMORY[0x259C63150](v22, 0x1000C8000313F17);
        }
      }

      v18 = v20;
      v19 += 16;
    }

    while (v19);
    v5 = v33;
  }

  if (v5 != v35)
  {
    free(v5);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  return 0;
}

uint64_t simplifyConstSwitchValue(uint64_t a1, uint64_t a2)
{
  v14 = 1;
  v4 = *(*(a1 + 72) + 24);
  v12 = &v13;
  v13 = 0;
  v15 = v4;
  result = mlir::Value::getDefiningOp(&v15);
  if (result)
  {
    v6 = result;
    v16 = &v17;
    v17 = 0;
    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, result) && ((v7 = *(*(*(v6 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v7 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v8 = v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v8 = 1), !v8 ? (v9 = v7 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v9 = 1), !v9 ? (v10 = v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v10 = 1), v10))
    {
      result = mlir::detail::constant_int_value_binder::match(&v12, v17);
      if (result)
      {
        foldSwitch(a1, a2, &v13);
        result = 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  if (v14 >= 0x41)
  {
    if (v13)
    {
      v11 = result;
      MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      return v11;
    }
  }

  return result;
}

uint64_t simplifySwitchFromSwitchOnSameCondition(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = mlir::Block::getSinglePredecessor(v4);
  if (result)
  {
    Terminator = mlir::Block::getTerminator(result);
    if (Terminator)
    {
      v7 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      if (*(*(a1 + 72) + 24) != *(*(Terminator + 72) + 24) || *(((Terminator + ((*(Terminator + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24) == v4)
      {
        return 0;
      }

      else
      {
        v8 = Terminator;
        mlir::SuccessorRange::SuccessorRange(&v21, Terminator);
        v9 = v21;
        v10 = v8;
        mlir::SuccessorRange::SuccessorRange(&v21, v8);
        v11 = 0;
        v12 = *(&v21 + 1) - 1;
        if (*(&v21 + 1) == 1)
        {
          v14 = v10;
        }

        else
        {
          v13 = (v9 + 56);
          v14 = v10;
          while (*v13 != v4)
          {
            ++v11;
            v13 += 4;
            if (v12 == v11)
            {
              goto LABEL_18;
            }
          }
        }

        if (v11 == v12)
        {
LABEL_18:
          v15 = *(a1 + 44);
          v16 = a1 + 16 * ((v15 >> 23) & 1);
          *&v28 = *(((v16 + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
          v17 = *(v16 + 80);
          v18 = *(v16 + 84);
          if ((v15 & 0x800000) != 0)
          {
            v19 = *(a1 + 72);
          }

          else
          {
            v19 = 0;
          }

          *&v21 = v19 + 32 * v17;
          *(&v21 + 1) = (v18 + v17) - v17;
          v20 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v28, &v21);
          (*(*a2 + 8))(a2, a1, v20);
        }

        else
        {
          v26 = *(v14 + 2 * ((*(v14 + 11) >> 23) & 1) + 9);
          v27 = v26 != 0;
          mlir::DenseElementsAttr::getValues<llvm::APInt>(&v26, &v21);
          v28 = v21;
          v29 = v22 + v11;
          v30 = v23;
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v28, &v24);
          foldSwitch(a1, a2, &v24);
          if (v25 >= 0x41 && v24)
          {
            MEMORY[0x259C63150](v24, 0x1000C8000313F17);
          }
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t simplifySwitchFromDefaultSwitchOnSameCondition(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  SinglePredecessor = mlir::Block::getSinglePredecessor(v4);
  if (SinglePredecessor)
  {
    Terminator = mlir::Block::getTerminator(SinglePredecessor);
    v7 = Terminator && *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id;
    if (v7 && *(*(a1 + 72) + 24) == *(*(Terminator + 72) + 24) && *(((Terminator + ((*(Terminator + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24) == v4)
    {
      v52[0] = 0;
      v52[1] = 0;
      v53 = 0;
      v9 = Terminator;
      mlir::SuccessorRange::SuccessorRange(v48, Terminator);
      v10 = *v48;
      mlir::SuccessorRange::SuccessorRange(v48, v9);
      v11 = *&v9[4 * ((v9[11] >> 23) & 1) + 18] != 0;
      v50 = *&v9[4 * ((v9[11] >> 23) & 1) + 18];
      v51 = v11;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v50);
      if (NumElements >= 1)
      {
        v13 = NumElements;
        v14 = 0;
        v15 = (v10 + 56);
        do
        {
          if (v4 != *v15)
          {
            mlir::DenseElementsAttr::getValues<llvm::APInt>(&v50, v48);
            v64 = *v48;
            v65[0] = v14 + *&v48[16];
            v65[1] = *&v48[24];
            mlir::DenseElementsAttr::IntElementIterator::operator*(&v64, &v61);
            *&v64 = 0;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(v52, &v61, &v64) & 1) == 0)
            {
              llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::InsertIntoBucket<llvm::APInt,llvm::detail::DenseSetEmpty&>(v52, v64, &v61);
            }

            if (v62 >= 0x41 && v61)
            {
              MEMORY[0x259C63150](v61, 0x1000C8000313F17);
            }
          }

          ++v14;
          v15 += 4;
        }

        while (v13 != v14);
      }

      *&v64 = v65;
      *(&v64 + 1) = 0x600000000;
      v61 = v63;
      v62 = 0x300000000;
      v58 = v60;
      v59 = 0x300000000;
      v16 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8) != 0;
      v46 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      v47 = v16;
      mlir::SuccessorRange::SuccessorRange(v48, a1);
      v17 = *v48;
      mlir::SuccessorRange::SuccessorRange(v48, a1);
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v46, v48);
      v55 = *v48;
      v56 = *&v48[16];
      v57 = *&v48[32];
      *&v48[8] = *v48;
      *&v48[24] = v56;
      *v48 = 0;
      v18 = v49;
      if (v56 != v49)
      {
        v19 = 0;
        v20 = v17 + 32;
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v48[8], &v66);
          v45 = v67;
          v44 = v66;
          v21 = llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::doFind<llvm::APInt>(v52, &v44);
          if (!v21 || v21 == (v52[0] + 16 * v53))
          {
            break;
          }

          if (v45 >= 0x41 && v44)
          {
            MEMORY[0x259C63150](v44, 0x1000C8000313F17);
          }

          v19 = ++*v48;
          if (++*&v48[24] == v18)
          {
            v28 = *(a1 + 47);
            v29 = *(a1 + 72);
            *&v55 = *(v29 + 24);
            v66 = *(((a1 + 8 * v28 + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
            v30 = *(a1 + 96);
            v31 = v29 + 32 * v30;
            v32 = (*(a1 + 100) + v30) - v30;
            *v48 = v31;
            *&v48[8] = v32;
            mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(a2 + 8, *(a1 + 24), &v55, &v66, v48, &v58, &v64, &v61);
          }
        }

        v22 = *(v20 + 32 * v19 + 24);
        if (DWORD2(v64) < HIDWORD(v64))
        {
          *(v64 + 8 * DWORD2(v64)) = v22;
          ++DWORD2(v64);
          v23 = *(a1 + 44);
          v24 = a1 + 64 + 16 * ((v23 >> 23) & 1);
          v25 = *(v24 + 24);
          if ((v23 & 0x800000) != 0)
          {
            v26 = *(a1 + 72);
          }

          else
          {
            v26 = 0;
          }

          v27 = (*(v24 + 20) + *(v24 + 16));
          v54[0] = v26 + 32 * v27;
          v54[1] = (v25 + v27) - v27;
          mlir::OperandRange::split(v54, *v24, &v66);
          mlir::OperandRangeRange::dereference();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v33 = v58;
      if (v59)
      {
        v34 = (v58 + 16 * v59 - 8);
        v35 = -16 * v59;
        v36 = v34;
        do
        {
          v37 = *v36;
          v36 -= 4;
          if (v37 >= 0x41)
          {
            v38 = *(v34 - 1);
            if (v38)
            {
              MEMORY[0x259C63150](v38, 0x1000C8000313F17);
            }
          }

          v34 = v36;
          v35 += 16;
        }

        while (v35);
        v33 = v58;
      }

      if (v33 != v60)
      {
        free(v33);
      }

      if (v61 != v63)
      {
        free(v61);
      }

      if (v64 != v65)
      {
        free(v64);
      }

      v39 = v52[0];
      if (v53)
      {
        v40 = (v52[0] + 8);
        v41 = 16 * v53;
        do
        {
          if (*v40 >= 0x41u)
          {
            v42 = *(v40 - 1);
            if (v42)
            {
              MEMORY[0x259C63150](v42, 0x1000C8000313F17);
            }
          }

          v40 += 4;
          v41 -= 16;
        }

        while (v41);
        v39 = v52[0];
        v43 = (16 * v53);
      }

      else
      {
        v43 = 0;
      }

      llvm::deallocate_buffer(v39, v43);
    }
  }

  return 0;
}

uint64_t mlir::cf::detail::AssertOpGenericAdaptorBase::AssertOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::cf::AssertOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'cf.assert' op requires attribute 'msg'";
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

uint64_t mlir::cf::AssertOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "msg", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 48;
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

uint64_t mlir::cf::AssertOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "msg", 3, *a2);
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

unint64_t mlir::cf::AssertOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::cf::AssertOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 29549 ? (v4 = *(a3 + 2) == 103) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::cf::AssertOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 29549 && *(a2 + 2) == 103)
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

uint64_t mlir::cf::AssertOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "msg", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::cf::AssertOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2) & 1;
}

uint64_t mlir::cf::AssertOp::setMsg(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::cf::AssertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 256);
  if (!v7)
  {
    operator new();
  }

  *v7 = a4;
  return result;
}

unint64_t mlir::cf::AssertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a6;
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

uint64_t mlir::cf::AssertOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5)
{
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v13 = 261;
  v12[0] = a4;
  v12[1] = a5;
  result = mlir::Builder::getStringAttr(a1, v12, v9);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
  return result;
}

unint64_t mlir::cf::AssertOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7)
{
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v20 = 261;
  v19[0] = a6;
  v19[1] = a7;
  result = mlir::Builder::getStringAttr(a1, v19, v13);
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

uint64_t mlir::cf::AssertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::cf::AssertOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    return (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v1, "msg", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) & 1) != 0 && mlir::mps::serialization::__mlir_ods_local_type_constraint_MPSSerializationOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v13 = "requires attribute 'msg'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
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

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
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
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t mlir::cf::AssertOp::parse(mlir::cf::AssertOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16 = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*this + 32))(this);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v16, v7))
  {
    return 0;
  }

  if (v16)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v16;
  }

  v15 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 1);
  v14[0] = this;
  v14[1] = &v15;
  v14[2] = a2;
  v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
  if (v10)
  {
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v10, "msg", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::AssertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v14) & 1) == 0)
    {
      return 0;
    }
  }

  v11 = (*(*this + 32))(this);
  IntegerType = mlir::Builder::getIntegerType(v11, 1);
  return (*(*this + 728))(this, v17, IntegerType, a2 + 16) & 1;
}

void mlir::cf::AssertOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
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
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v13 = v15;
  v15[0] = "msg";
  v15[1] = 3;
  v14 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v13, v14);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::cf::BranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a2 + 208);
  if (v5 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v5) = a3;
  ++*(a2 + 208);

  return mlir::OperationState::addOperands(a2, a4, a5);
}

uint64_t mlir::cf::BranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = mlir::OperationState::addOperands(a2, a3, a4);
  v8 = *(a2 + 208);
  if (v8 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v8) = a5;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::cf::BranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v12) = a7;
  ++*(a2 + 208);
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

unint64_t mlir::cf::BranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::cf::BranchOp::parse(mlir::cf::BranchOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  v10[0] = &v11;
  v10[1] = 0x100000000;
  if (((*(*this + 800))() & 1) == 0)
  {
LABEL_13:
    v7 = 0;
    v8 = v10[0];
    if (v10[0] == &v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((*(*this + 288))(this))
  {
    v5 = (*(*this + 40))(this);
    if (((*(*this + 720))(this, v12, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v10) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(a2 + 52);
  if (v6 >= *(a2 + 53))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 25) + 8 * v6) = 0;
  ++*(a2 + 52);
  v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, v12, v10, v5, a2 + 16) & 1;
  v8 = v10[0];
  if (v10[0] != &v11)
  {
LABEL_14:
    free(v8);
  }

LABEL_15:
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  return v7;
}

uint64_t mlir::cf::detail::CondBranchOpGenericAdaptorBase::CondBranchOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
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
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

unint64_t mlir::cf::detail::CondBranchOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::cf::detail::CondBranchOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 24);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 40);
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

  v10 = (this + 4 * v3 + 24);
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

unint64_t mlir::cf::CondBranchOp::getODSOperandIndexAndLength(mlir::cf::CondBranchOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 64);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 80);
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

  v12 = (16 * v2 + 4 * v5 + *this + 64);
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

uint64_t mlir::cf::CondBranchOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v16 = v4;
  if (v4)
  {
    if (mlir::DictionaryAttr::get(&v16, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v16, "operand_segment_sizes", 0x15uLL))
    {
      mlir::convertFromAttribute();
    }

    return 1;
  }

  else
  {
    a3(v19, a4);
    if (v19[0])
    {
      LODWORD(v17) = 3;
      *(&v17 + 1) = "expected DictionaryAttr to set properties";
      v18 = 41;
      if (v21 >= v22)
      {
        if (v20 > &v17 || v20 + 24 * v21 <= &v17)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v20 + 24 * v21;
      v7 = v17;
      *(v6 + 2) = v18;
      *v6 = v7;
      ++v21;
      if (v19[0])
      {
        mlir::InFlightDiagnostic::report(v19);
      }
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v27;
        v10 = __p;
        if (v27 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v27 = v8;
        operator delete(v10);
      }

      v11 = v24;
      if (v24)
      {
        v12 = v25;
        v13 = v24;
        if (v25 != v24)
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
          v13 = v24;
        }

        v25 = v11;
        operator delete(v13);
      }

      if (v20 != &v23)
      {
        free(v20);
      }
    }

    return 0;
  }
}

void mlir::cf::CondBranchOp::getPropertiesAsAttr(uint64_t a1)
{
  v4[6] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v4;
  v3 = 0x300000000;
  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::cf::CondBranchOp::computePropertiesHash(void *a1)
{
  v1 = *(a1 + 4);
  v2 = __ROR8__(v1 + 12, 12);
  v3 = (((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)))) ^ ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)))) >> 47))) ^ v1) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (8 * ((-348639895 * ((-348639895 * (v2 ^ (((0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)) >> 32) >> 15) ^ (-348639895 * (*a1 ^ 0xED558CCD ^ v2)))) ^ (((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)))) >> 32) >> 15))) ^ v1) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
}

uint64_t mlir::cf::CondBranchOp::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 != 19)
  {
    if (a4 != 21)
    {
      return 0;
    }

    v4 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    if (!v4 || *(a3 + 13) != 0x73657A69735F746ELL)
    {
      return 0;
    }

LABEL_19:
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (*a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765 && *(a3 + 11) == 0x73657A6953746E65)
  {
    goto LABEL_19;
  }

  return 0;
}

void mlir::cf::CondBranchOp::setInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 19)
  {
    if (a3 != 21)
    {
      return;
    }

    v6 = *a2 == 0x5F646E617265706FLL && a2[1] == 0x5F746E656D676573;
    if (!v6 || *(a2 + 13) != 0x73657A69735F746ELL)
    {
      return;
    }

LABEL_19:
    v10 = v4;
    v11 = v5;
    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<int>::classof();
    }

    return;
  }

  if (*a2 == 0x53646E617265706FLL && a2[1] == 0x6953746E656D6765 && *(a2 + 11) == 0x73657A6953746E65)
  {
    goto LABEL_19;
  }
}

uint64_t mlir::cf::CondBranchOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) > 5)
  {
    if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 3uLL))
    {
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
    {
      if (mlir::DenseArrayAttr::getSize(&v15) < 4)
      {
        mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
      }

      v13 = "size mismatch for operand/result_segment_size";
      v14 = 259;
      (*(*a1 + 16))(v16, a1, &v13);
      if (v16[0])
      {
        mlir::InFlightDiagnostic::report(v16);
      }

      if (v24 == 1)
      {
        if (v23 != &v24)
        {
          free(v23);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v22;
          v6 = __p;
          if (v22 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v22 = v4;
          operator delete(v6);
        }

        v7 = v19;
        if (v19)
        {
          v8 = v20;
          v9 = v19;
          if (v20 != v19)
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
            v9 = v19;
          }

          v20 = v7;
          operator delete(v9);
        }

        if (v17 != &v18)
        {
          free(v17);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::cf::CondBranchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 64), 3);
  }

  return result;
}

uint64_t mlir::cf::CondBranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = 1;
  v16[1] = a5;
  v16[2] = a7;
  v17 = *(a2 + 208);
  if (v17 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v17) = a8;
  v18 = *(a2 + 212);
  v19 = *(a2 + 208) + 1;
  *(a2 + 208) = v19;
  if (v19 >= v18)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v19) = a9;
  ++*(a2 + 208);
  return result;
}

uint64_t mlir::cf::CondBranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v13 = mlir::ValueRange::ValueRange(v15, 0, 0);
  return mlir::cf::CondBranchOp::build(v13, a2, a3, v15[0], v15[1], a6, a7, a4, a5);
}

unint64_t mlir::cf::CondBranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a5;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::OperationState::addOperands(a2, a9, a10);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = 1;
  v18[1] = a7;
  v18[2] = a10;
  v19 = *(a2 + 208);
  if (v19 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v19) = a11;
  v20 = *(a2 + 212);
  v21 = *(a2 + 208) + 1;
  *(a2 + 208) = v21;
  if (v21 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v21) = a12;
  ++*(a2 + 208);
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

uint64_t mlir::cf::CondBranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::cf::CondBranchOp::parse(mlir::cf::CondBranchOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v27[16] = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v25 = v27;
  v26 = 0x400000000;
  v23[0] = &v24;
  v23[1] = 0x100000000;
  v20 = v22;
  v21 = 0x400000000;
  v18[0] = &v19;
  v18[1] = 0x100000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v16, 1) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || ((*(*this + 800))(this, &v15) & 1) == 0)
  {
    goto LABEL_24;
  }

  if ((*(*this + 288))(this))
  {
    v5 = (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v23) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 800))(this, &v14))
  {
    if ((*(*this + 288))(this))
    {
      v6 = (*(*this + 40))(this);
      if (((*(*this + 720))(this, &v20, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v18) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v6 = 0;
    }

    (*(*this + 40))(this);
    if ((*(*this + 488))(this, a2 + 112))
    {
      mlir::OperationState::addSuccessors(a2, v15);
      mlir::OperationState::addSuccessors(a2, v14);
      v7 = v26;
      v8 = v21;
      v9 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(a2);
      *v9 = 1;
      v9[1] = v7;
      v9[2] = v8;
      v10 = (*(*this + 32))(this);
      IntegerType = mlir::Builder::getIntegerType(v10, 1);
      if ((*(*this + 728))(this, v16, IntegerType, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v25, v23, v5, a2 + 16))
      {
        v12 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v20, v18, v6, a2 + 16) & 1;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v12 = 0;
LABEL_25:
  if (v18[0] != &v19)
  {
    free(v18[0]);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return v12;
}

void mlir::cf::CondBranchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v102 = *MEMORY[0x277D85DE8];
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
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
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

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (!*(*this + 4 * ((*(*this + 11) >> 23) & 1) + 17))
  {
    goto LABEL_34;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "(", 1uLL);
    v12 = *this;
    v26 = *(*this + 11);
    v14 = *this + 16 * ((v26 >> 23) & 1);
    v15 = *(v14 + 68);
    if ((v26 & 0x800000) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v11 = 40;
    ++v10[4];
    v12 = *this;
    v13 = *(*this + 11);
    v14 = *this + 16 * ((v13 >> 23) & 1);
    v15 = *(v14 + 68);
    if ((v13 & 0x800000) != 0)
    {
LABEL_13:
      v16 = *(v12 + 9);
      goto LABEL_14;
    }
  }

  v16 = 0;
LABEL_14:
  v17 = *(v14 + 64);
  v18 = (*(*a2 + 16))(a2);
  if (v15)
  {
    v19 = v18;
    v20 = (v15 + v17);
    v21 = v16 + 32 * v17;
    (*(*a2 + 160))(a2, *(v21 + 24));
    if (v20 - v17 != 1)
    {
      v78 = ~v17 + v20;
      v79 = (v21 + 56);
      do
      {
        v81 = v19[4];
        if (v19[3] - v81 > 1uLL)
        {
          *v81 = 8236;
          v19[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v19, ", ", 2uLL);
        }

        v80 = *v79;
        v79 += 4;
        (*(*a2 + 160))(a2, v80);
        --v78;
      }

      while (v78);
    }
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

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
    ++v24[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = *(*this + 11);
  v30 = *this + 16 * ((v29 >> 23) & 1);
  v31 = *(v30 + 64);
  v32 = *(v30 + 68);
  if ((v29 & 0x800000) != 0)
  {
    v33 = *(*this + 9);
  }

  else
  {
    v33 = 0;
  }

  AttrDictionary = v33 + 32 * v31;
  v97 = (v32 + v31) - v31;
  mlir::OperandRange::getTypes(&AttrDictionary, &v98);
  v34 = v99;
  v35 = v101;
  if (v99 != v101)
  {
    v36 = v98 + 32 * v99;
    (*(*a2 + 32))(a2, *(*(v36 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v34 + 1 != v35)
    {
      v86 = ~v34 + v35;
      v87 = (v36 + 56);
      do
      {
        v89 = (*(*a2 + 16))(a2);
        v90 = v89[4];
        if (v89[3] - v90 > 1uLL)
        {
          *v90 = 8236;
          v89[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v89, ", ", 2uLL);
        }

        v88 = *v87;
        v87 += 4;
        (*(*a2 + 32))(a2, *(v88 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v86;
      }

      while (v86);
    }
  }

  v37 = (*(*a2 + 16))(a2);
  v38 = v37[4];
  if (v37[3] == v38)
  {
    llvm::raw_ostream::write(v37, ")", 1uLL);
  }

  else
  {
    *v38 = 41;
    ++v37[4];
  }

LABEL_34:
  v39 = (*(*a2 + 16))(a2);
  v40 = v39[4];
  if (v39[3] == v40)
  {
    llvm::raw_ostream::write(v39, ",", 1uLL);
  }

  else
  {
    *v40 = 44;
    ++v39[4];
  }

  v41 = (*(*a2 + 16))(a2);
  v42 = *(v41 + 4);
  if (v42 >= *(v41 + 3))
  {
    llvm::raw_ostream::write(v41, 32);
  }

  else
  {
    *(v41 + 4) = v42 + 1;
    *v42 = 32;
  }

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 56));
  if (!*(*this + 4 * ((*(*this + 11) >> 23) & 1) + 18))
  {
    goto LABEL_64;
  }

  v43 = (*(*a2 + 16))(a2);
  v44 = v43[4];
  if (v43[3] == v44)
  {
    llvm::raw_ostream::write(v43, "(", 1uLL);
    v45 = *this;
    v61 = *(*this + 11);
    v47 = (*this + 16 * ((v61 >> 23) & 1));
    v48 = v47[18];
    if ((v61 & 0x800000) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *v44 = 40;
    ++v43[4];
    v45 = *this;
    v46 = *(*this + 11);
    v47 = (*this + 16 * ((v46 >> 23) & 1));
    v48 = v47[18];
    if ((v46 & 0x800000) != 0)
    {
LABEL_43:
      v49 = *(v45 + 9);
      goto LABEL_44;
    }
  }

  v49 = 0;
LABEL_44:
  v50 = v47[16];
  v51 = v47[17];
  v52 = (*(*a2 + 16))(a2);
  if (v48)
  {
    v53 = v52;
    v54 = (v51 + v50);
    v55 = (v48 + v54);
    v56 = v49 + 32 * v54;
    (*(*a2 + 160))(a2, *(v56 + 24));
    if (v55 - v54 != 1)
    {
      v82 = ~v54 + v55;
      v83 = (v56 + 56);
      do
      {
        v85 = v53[4];
        if (v53[3] - v85 > 1uLL)
        {
          *v85 = 8236;
          v53[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v53, ", ", 2uLL);
        }

        v84 = *v83;
        v83 += 4;
        (*(*a2 + 160))(a2, v84);
        --v82;
      }

      while (v82);
    }
  }

  v57 = (*(*a2 + 16))(a2);
  v58 = *(v57 + 4);
  if (v58 >= *(v57 + 3))
  {
    llvm::raw_ostream::write(v57, 32);
  }

  else
  {
    *(v57 + 4) = v58 + 1;
    *v58 = 32;
  }

  v59 = (*(*a2 + 16))(a2);
  v60 = v59[4];
  if (v59[3] == v60)
  {
    llvm::raw_ostream::write(v59, ":", 1uLL);
  }

  else
  {
    *v60 = 58;
    ++v59[4];
  }

  v62 = (*(*a2 + 16))(a2);
  v63 = *(v62 + 4);
  if (v63 >= *(v62 + 3))
  {
    llvm::raw_ostream::write(v62, 32);
  }

  else
  {
    *(v62 + 4) = v63 + 1;
    *v63 = 32;
  }

  v64 = *(*this + 11);
  v65 = (*this + 16 * ((v64 >> 23) & 1));
  v66 = v65[16];
  v67 = v65[17];
  v68 = v65[18];
  if ((v64 & 0x800000) != 0)
  {
    v69 = *(*this + 9);
  }

  else
  {
    v69 = 0;
  }

  v70 = (v67 + v66);
  AttrDictionary = v69 + 32 * v70;
  v97 = (v68 + v70) - v70;
  mlir::OperandRange::getTypes(&AttrDictionary, &v98);
  v71 = v99;
  v72 = v101;
  if (v99 != v101)
  {
    v73 = v98 + 32 * v99;
    (*(*a2 + 32))(a2, *(*(v73 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v71 + 1 != v72)
    {
      v91 = ~v71 + v72;
      v92 = (v73 + 56);
      do
      {
        v94 = (*(*a2 + 16))(a2);
        v95 = v94[4];
        if (v94[3] - v95 > 1uLL)
        {
          *v95 = 8236;
          v94[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v94, ", ", 2uLL);
        }

        v93 = *v92;
        v92 += 4;
        (*(*a2 + 32))(a2, *(v93 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v91;
      }

      while (v91);
    }
  }

  v74 = (*(*a2 + 16))(a2);
  v75 = v74[4];
  if (v74[3] == v75)
  {
    llvm::raw_ostream::write(v74, ")", 1uLL);
  }

  else
  {
    *v75 = 41;
    ++v74[4];
  }

LABEL_64:
  v98 = &v100;
  v100 = "operandSegmentSizes";
  v101 = 19;
  v99 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v77, v98, v99);
  if (v98 != &v100)
  {
    free(v98);
  }
}

uint64_t mlir::cf::detail::SwitchOpGenericAdaptorBase::SwitchOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::cf::detail::SwitchOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::cf::detail::SwitchOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 40);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 56);
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

  v10 = (this + 4 * v3 + 40);
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

uint64_t mlir::cf::SwitchOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'cf.switch' op requires attribute 'case_operand_segments'";
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

unint64_t mlir::cf::SwitchOp::getODSOperandIndexAndLength(mlir::cf::SwitchOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 80);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 96);
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

  v12 = (16 * v2 + 4 * v5 + *this + 80);
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

void mlir::cf::SwitchOp::getCaseOperandsMutable(mlir::cf::SwitchOp *this)
{
  v1 = *MEMORY[0x277D85DE8];
  mlir::Attribute::getContext((*this + 24));
  mlir::detail::DenseArrayAttrImpl<int>::get();
}

uint64_t mlir::cf::SwitchOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

      v11 = v35 + 24 * v36;
      v12 = v32;
      *(v11 + 2) = v33;
      *v11 = v12;
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

    v13 = __p;
    if (__p)
    {
      v14 = v42;
      v15 = __p;
      if (v42 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v42 = v13;
      operator delete(v15);
    }

    v16 = v39;
    if (!v39)
    {
      goto LABEL_54;
    }

    v17 = v40;
    v18 = v39;
    if (v40 == v39)
    {
      goto LABEL_53;
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
    goto LABEL_52;
  }

  if (mlir::DictionaryAttr::get(&v31, "case_operand_segments", 0x15uLL))
  {
    mlir::detail::DenseArrayAttrImpl<int>::classof();
  }

  v8 = mlir::DictionaryAttr::get(&v31, "case_values", 0xBuLL);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  if (!mlir::DenseIntElementsAttr::classof(v8))
  {
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

      v21 = v35 + 24 * v36;
      v22 = v32;
      *(v21 + 2) = v33;
      *v21 = v22;
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

        v23 = v35 + 24 * v36;
        v24 = v32;
        *(v23 + 2) = v33;
        *v23 = v24;
        ++v36;
        if (v34[0])
        {
          mlir::InFlightDiagnostic::report(v34);
        }
      }
    }

    if ((v44 & 1) == 0)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v42;
      v27 = __p;
      if (v42 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v42 = v25;
      operator delete(v27);
    }

    v16 = v39;
    if (!v39)
    {
LABEL_54:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
    }

    v28 = v40;
    v18 = v39;
    if (v40 == v39)
    {
LABEL_53:
      v40 = v16;
      operator delete(v18);
      goto LABEL_54;
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

    while (v28 != v16);
LABEL_52:
    v18 = v39;
    goto LABEL_53;
  }

  *(a1 + 8) = v9;
LABEL_10:
  if (mlir::DictionaryAttr::get(&v31, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v31, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::cf::SwitchOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v10, "case_operand_segments", 0x15, *a2);
    if (v12 >= HIDWORD(v12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v11 + 16 * v12);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v12) = v12 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v10, "case_values", 0xB, v6);
    if (v12 >= HIDWORD(v12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v11 + 16 * v12);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v12) = v12 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::cf::SwitchOp::computePropertiesHash(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = *(a1 + 20);
  v8 = __ROR8__(v7 + 12, 12);
  v9 = 0x9DDFEA08EB382D69 * (a1[2] ^ 0xFF51AFD7ED558CCDLL ^ v8);
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v13[0] = v3;
  v13[1] = v6;
  v12 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v13, &v12, v14, v15, (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47))) ^ v7);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v13, v12, v10, v15);
}

uint64_t mlir::cf::SwitchOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 11)
  {
    if (!memcmp(__s1, "case_values", 0xBuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 19)
  {
    if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (__n != 21)
  {
    return 0;
  }

  if (*__s1 != 0x65706F5F65736163 || *(__s1 + 1) != 0x6765735F646E6172 || *(__s1 + 13) != 0x73746E656D676573)
  {
    if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
LABEL_14:
      mlir::detail::DenseArrayAttrImpl<int>::get();
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::cf::SwitchOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  switch(a3)
  {
    case 11:
      result = memcmp(__s1, "case_values", 0xBuLL);
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

          *(v5 + 8) = v8;
        }

        else
        {
          *(v5 + 8) = 0;
        }
      }

      break;
    case 19:
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    case 21:
      if (*__s1 != 0x65706F5F65736163 || *(__s1 + 1) != 0x6765735F646E6172 || *(__s1 + 13) != 0x73746E656D676573)
      {
        result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
        if (result)
        {
          return result;
        }

LABEL_14:
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<int>::classof();
        }

        return result;
      }

      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<int>::classof();
      }

      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void mlir::cf::SwitchOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "case_operand_segments", 0x15uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "case_values", 0xBuLL, v5);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::cf::SwitchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v8) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v9, "case_values", 11, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    mlir::detail::DenseArrayAttrImpl<int>::classof();
  }

  return 1;
}

uint64_t mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1 || mlir::DenseIntElementsAttr::classof(a1))
  {
    return 1;
  }

  a4(&v26, a5);
  if (v26)
  {
    LODWORD(v23) = 3;
    *(&v23 + 1) = "attribute '";
    v24 = 11;
    if (v29 >= v30)
    {
      if (v28 > &v23 || v28 + 24 * v29 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v28 + 24 * v29;
    v12 = v23;
    *(v11 + 2) = v24;
    *v11 = v12;
    ++v29;
    if (v26)
    {
      v25 = 261;
      *&v23 = a2;
      *(&v23 + 1) = a3;
      mlir::Diagnostic::operator<<(&v27, &v23);
      if (v26)
      {
        LODWORD(v23) = 3;
        *(&v23 + 1) = "' failed to satisfy constraint: integer elements attribute";
        v24 = 58;
        if (v29 >= v30)
        {
          if (v28 > &v23 || v28 + 24 * v29 <= &v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v28 + 24 * v29;
        v14 = v23;
        *(v13 + 2) = v24;
        *v13 = v14;
        ++v29;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v35;
      v17 = __p;
      if (v35 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v35 = v15;
      operator delete(v17);
    }

    v18 = v32;
    if (v32)
    {
      v19 = v33;
      v20 = v32;
      if (v33 != v32)
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
        v20 = v32;
      }

      v33 = v18;
      operator delete(v20);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v9;
}

uint64_t mlir::cf::SwitchOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, (v3 + 8)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 16), 3uLL))
      {
        return 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 4)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5 = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(&v8, a1, &v5);
        if (v8)
        {
          mlir::InFlightDiagnostic::report(&v8);
        }

        if (v9[192] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v9);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::cf::SwitchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 3);
  }

  return result;
}

void mlir::cf::SwitchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  if (a10)
  {
    v13 = a9;
    do
    {
      v14 = *v13;
      v15 = v13[1];
      v13 += 2;
      mlir::OperationState::addOperands(a2, v14, v15);
    }

    while (v13 != (a9 + 16 * a10));
    v16 = 0;
    v22 = v24;
    v23 = 0xC00000000;
    v17 = 16 * a10;
    v18 = (a9 + 8);
    while (1)
    {
      v20 = *v18;
      v18 += 4;
      v19 = v20;
      if (v16 >= HIDWORD(v23))
      {
        break;
      }

      *(v22 + v16) = v19;
      v16 = v23 + 1;
      LODWORD(v23) = v23 + 1;
      v17 -= 16;
      if (!v17)
      {
        mlir::Builder::getDenseI32ArrayAttr();
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v22 = v24;
  v23 = 0xC00000000;
  mlir::Builder::getDenseI32ArrayAttr();
}

uint64_t mlir::cf::SwitchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::cf::SwitchOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (v6)
  {
    v7 = *(v4 + 8);
    v48[0] = v2;
    if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v7, "case_values", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v48))
    {
      v48[0] = *this;
      if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v5))
      {
        v8 = *this;
        v9 = *(*this + 11);
        v10 = *(*this + 4 * ((v9 >> 23) & 1) + 20);
        if ((v9 & 0x800000) != 0)
        {
          v11 = *(v8 + 72);
          if (v10)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v11 = 0;
          if (v10)
          {
LABEL_6:
            for (i = 0; i != v10; ++i)
            {
              v13 = *(*(v11 + 32 * i + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
              if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
              {
                v14 = *this;
                v45 = 261;
                v44[0] = "operand";
                v44[1] = 7;
                mlir::Operation::emitOpError(v48, v14, v44);
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

                  v15 = v49 + 24 * v50;
                  v16 = v46;
                  *(v15 + 2) = v47;
                  *v15 = v16;
                  v17 = ++v50;
                  if (v48[0])
                  {
                    LODWORD(v46) = 5;
                    *(&v46 + 1) = i;
                    if (v17 >= v51)
                    {
                      if (v49 > &v46 || v49 + 24 * v17 <= &v46)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v18 = v49 + 24 * v50;
                    v19 = v46;
                    *(v18 + 2) = v47;
                    *v18 = v19;
                    v20 = ++v50;
                    if (v48[0])
                    {
                      LODWORD(v46) = 3;
                      *(&v46 + 1) = " must be integer, but got ";
                      v47 = 26;
                      if (v20 >= v51)
                      {
                        if (v49 > &v46 || v49 + 24 * v20 <= &v46)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v21 = v49 + 24 * v50;
                      v22 = v46;
                      *(v21 + 2) = v47;
                      *v21 = v22;
                      ++v50;
                      if (v48[0])
                      {
                        mlir::DiagnosticArgument::DiagnosticArgument(&v46, v13);
                        if (v50 >= v51)
                        {
                          if (v49 > &v46 || v49 + 24 * v50 <= &v46)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v23 = v49 + 24 * v50;
                        v24 = v46;
                        *(v23 + 2) = v47;
                        *v23 = v24;
                        ++v50;
                      }
                    }
                  }
                }

                v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
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

                  v26 = __p;
                  if (__p)
                  {
                    v27 = v56;
                    v28 = __p;
                    if (v56 != __p)
                    {
                      do
                      {
                        v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
                      }

                      while (v27 != v26);
                      v28 = __p;
                    }

                    v56 = v26;
                    operator delete(v28);
                  }

                  v29 = v53;
                  if (v53)
                  {
                    v30 = v54;
                    v31 = v53;
                    if (v54 != v53)
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
                      v31 = v53;
                    }

                    v54 = v29;
                    operator delete(v31);
                  }

                  if (v49 != v52)
                  {
                    free(v49);
                  }

                  if (!v25)
                  {
                    return 0;
                  }
                }

                else if (!v25)
                {
                  return 0;
                }
              }
            }

            v8 = *this;
          }
        }

        return mlir::OpTrait::impl::verifyValueSizeAttr(v8, "case_operand_segments", 0x15uLL);
      }
    }

    return 0;
  }

  else
  {
    v44[0] = "requires attribute 'case_operand_segments'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, v48);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
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

      v35 = __p;
      if (__p)
      {
        v36 = v56;
        v37 = __p;
        if (v56 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v56 = v35;
        operator delete(v37);
      }

      v38 = v53;
      if (v53)
      {
        v39 = v54;
        v40 = v53;
        if (v54 != v53)
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
          v40 = v53;
        }

        v54 = v38;
        operator delete(v40);
      }

      if (v49 != v52)
      {
        free(v49);
      }
    }
  }

  return v34;
}

uint64_t mlir::cf::SwitchOp::parse(mlir::cf::SwitchOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v3 = a2;
  v82 = *MEMORY[0x277D85DE8];
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  v45[1] = v46;
  v45[2] = 1;
  v44[2] = 1;
  v45[0] = 0;
  v44[0] = 0;
  v44[1] = v45;
  v70 = v72;
  v71 = 0x400000000;
  v68[0] = &v69;
  v68[1] = 0x100000000;
  v65 = v67;
  v66 = 0x200000000;
  v62 = v64;
  v63 = 0x400000000;
  v59 = v61;
  v60 = 0xC00000000;
  v56 = &v58;
  v57 = 0x100000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v46, 1) & 1) == 0)
  {
    goto LABEL_106;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_106;
  }

  v50 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(this, &v50))
  {
    goto LABEL_106;
  }

  v45[0] = v50;
  if (((*(*this + 120))(this) & 1) == 0 || ((*(*this + 312))(this) & 1) == 0)
  {
    goto LABEL_106;
  }

  (*(*this + 40))(this);
  (*(*this + 40))(this);
  v53 = v55;
  v54 = 0x100000000;
  v50 = v52;
  v51 = 0x100000000;
  v81[8] = 257;
  v43 = v3;
  if (((*(*this + 400))(this, "default", 7, &v79) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || ((*(*this + 800))(this, v44) & 1) == 0 || ((*(*this + 288))(this) & 1) != 0 && (((*(*this + 720))(this, &v70, 0, 0, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 584))(this, v68) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0))
  {
    goto LABEL_84;
  }

  v79 = v81;
  v80 = 0x300000000;
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v45);
  if ((*(*this + 128))(this))
  {
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
    if (!IntOrFloatBitWidth)
    {
      v5 = 0;
    }

    v34 = v5;
    while (1)
    {
      v49 = 0;
      if ((mlir::AsmParser::parseInteger<unsigned long long>(this, &v49) & 1) == 0)
      {
        break;
      }

      v6 = v49;
      LODWORD(v74) = IntOrFloatBitWidth;
      if (IntOrFloatBitWidth > 0x40)
      {
        llvm::APInt::initSlowCase(&__src);
      }

      __src = (v49 & v34);
      if (v80 >= HIDWORD(v80))
      {
        if (v79 > &__src || &v79[4 * v80] <= &__src)
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
      }

      v7 = &v79[4 * v80];
      v7[2] = v74;
      *v7 = __src;
      LODWORD(v80) = v80 + 1;
      v48 = 0;
      v76 = v78;
      v77 = 0x100000000;
      __src = v75;
      v74 = 0x600000000;
      if (((*(*this + 104))(this, v6) & 1) == 0 || ((*(*this + 800))(this, &v48) & 1) == 0 || ((*(*this + 288))(this) & 1) != 0 && (((*(*this + 720))(this, &v76, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 584))(this, &__src) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0))
      {
        if (__src != v75)
        {
          free(__src);
        }

        if (v76 != v78)
        {
          free(v76);
        }

        break;
      }

      if (v66 >= HIDWORD(v66))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v65 + v66) = v48;
      LODWORD(v66) = v66 + 1;
      if (v54 >= HIDWORD(v54))
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>();
      }

      v8 = (v53 + 48 * v54);
      *v8 = (v8 + 2);
      v8[1] = 0x100000000;
      v3 = v43;
      if (v8 != &v76 && v77)
      {
        v35 = v77;
        if (v77 >= 2)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v8 + 2, v76, 0x20uLL);
        *(v8 + 2) = v35;
      }

      LODWORD(v54) = v54 + 1;
      if (v51 >= HIDWORD(v51))
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::Type,6u>&>();
      }

      v9 = (v50 + 64 * v51);
      *v9 = v9 + 2;
      v9[1] = 0x600000000;
      if (v9 != &__src && v74)
      {
        v36 = v74;
        if (v74 >= 7uLL)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v9 + 2, __src, 8 * v74);
        *(v9 + 2) = v36;
      }

      LODWORD(v51) = v51 + 1;
      if (__src != v75)
      {
        free(__src);
      }

      if (v76 != v78)
      {
        free(v76);
      }

      if (((*(*this + 128))(this) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v38 = 0;
    v10 = 0;
  }

  else
  {
LABEL_53:
    if (!v80)
    {
      v38 = 0;
      v10 = 1;
      v12 = v79;
      goto LABEL_69;
    }

    v76 = v80;
    v10 = 1;
    v11 = mlir::VectorType::get(&v76, 1uLL, v45[0], 0, 0);
    mlir::detail::Interface<mlir::ShapedType,mlir::Type,mlir::detail::ShapedTypeInterfaceTraits,mlir::Type,mlir::TypeTrait::TraitBase>::Interface<mlir::VectorType,(void *)0>(&__src, v11);
    v38 = mlir::DenseElementsAttr::get(__src, v74, v79, v80);
  }

  v12 = v79;
  if (v80)
  {
    v41 = v10;
    v13 = &v79[4 * v80 - 2];
    v14 = -16 * v80;
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 -= 4;
      if (v16 >= 0x41)
      {
        v17 = *(v13 - 1);
        if (v17)
        {
          MEMORY[0x259C63150](v17, 0x1000C8000313F17);
        }
      }

      v13 = v15;
      v14 += 16;
    }

    while (v14);
    v12 = v79;
    v3 = v43;
    v10 = v41;
  }

  else
  {
    v3 = v43;
  }

LABEL_69:
  if (v12 != v81)
  {
    free(v12);
  }

  if ((v10 ^ 1))
  {
LABEL_84:
    v42 = 1;
    goto LABEL_85;
  }

  v42 = v10 ^ 1;
  if (v38)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(v3) + 8) = v38;
  }

  if (v54)
  {
    v18 = v53;
    v39 = (v53 + 48 * v54);
    do
    {
      v19 = *(v18 + 2);
      v20 = v63;
      if (v63 + v19 > HIDWORD(v63))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v19)
      {
        memcpy(v62 + 32 * v63, *v18, 32 * v19);
        v20 = v63;
      }

      LODWORD(v63) = v20 + v19;
      if (v60 >= HIDWORD(v60))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v59 + v60) = *(v18 + 2);
      LODWORD(v60) = v60 + 1;
      v18 += 6;
    }

    while (v18 != v39);
  }

  v21 = v50;
  if (!v51)
  {
    goto LABEL_91;
  }

  v40 = (v50 + 64 * v51);
  v32 = v57;
  do
  {
    v33 = *(v21 + 2);
    if (v33 + v32 > HIDWORD(v57))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v33)
    {
      memcpy(v56 + 8 * v32, *v21, 8 * v33);
      v32 = v57;
    }

    v32 += v33;
    LODWORD(v57) = v32;
    v21 += 8;
  }

  while (v21 != v40);
LABEL_85:
  v21 = v50;
  if (v51)
  {
    v22 = (v50 + 64 * v51 - 64);
    v23 = -64 * v51;
    do
    {
      if (v22 + 2 != *v22)
      {
        free(*v22);
      }

      v22 -= 8;
      v23 += 64;
    }

    while (v23);
    v21 = v50;
  }

LABEL_91:
  if (v21 != v52)
  {
    free(v21);
  }

  v24 = v53;
  if (v54)
  {
    v25 = (v53 + 48 * v54 - 48);
    v26 = -48 * v54;
    do
    {
      if (v25 + 2 != *v25)
      {
        free(*v25);
      }

      v25 -= 6;
      v26 += 48;
    }

    while (v26);
    v24 = v53;
  }

  if (v24 != v55)
  {
    free(v24);
  }

  if (v42 & 1) == 0 && ((*(*this + 328))(this))
  {
    v79 = (*(*this + 40))(this);
    if ((*(*this + 488))(this, v43 + 112))
    {
      v27 = *(v43 + 8);
      v50 = this;
      v51 = &v79;
      v52[0] = v43;
      if (mlir::cf::SwitchOp::verifyInherentAttrs(v27, v43 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v50))
      {
        mlir::OperationState::addSuccessors(v43, v44[0]);
        mlir::BlockRange::BlockRange(&v50, v65, v66);
        mlir::OperationState::addSuccessors(v43, v50, v51);
        v28 = v71;
        v29 = v63;
        v30 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(v43);
        v30[4] = 1;
        v30[5] = v28;
        v30[6] = v29;
        (*(*this + 32))(this);
        mlir::Builder::getDenseI32ArrayAttr();
      }
    }
  }

LABEL_106:
  if (v56 != &v58)
  {
    free(v56);
  }

  if (v59 != v61)
  {
    free(v59);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != &v69)
  {
    free(v68[0]);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  return 0;
}