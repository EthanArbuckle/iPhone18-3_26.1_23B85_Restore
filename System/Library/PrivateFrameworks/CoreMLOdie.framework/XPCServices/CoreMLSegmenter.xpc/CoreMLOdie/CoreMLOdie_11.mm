uint64_t sub_100086A8C(mlir::detail::Parser **a1)
{
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v21 = 0uLL;
  v22 = 0;
  mlir::detail::Parser::parseResourceHandle(v2, *a1[1], &v21, &v18);
  if (v20 == 1 && (*__p = "expected ':'", LOWORD(v14) = 259, (mlir::detail::Parser::parseToken(v2, 15, __p) & 1) != 0))
  {
    v4 = *(v2 + 1);
    v18 = *(v4 + 56);
    v19 = *(v4 + 72);
    v5 = v19;
    *(v4 + 80) = v18;
    *(v4 + 96) = v5;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), __p);
    v6 = *(v2 + 1);
    *(v6 + 56) = *__p;
    *(v6 + 72) = *&__p[16];
    if (SHIBYTE(v22) < 0)
    {
      sub_100003FD0(&v10, v21, *(&v21 + 1));
    }

    else
    {
      v10 = v21;
      v11 = v22;
    }

    *&__p[8] = v10;
    v9 = v11;
    v11 = 0;
    *__p = &off_1002D5B00;
    v10 = 0uLL;
    v13 = v9;
    v14 = Loc;
    v15 = v18;
    v16 = v19;
    v17 = v2;
    v7 = (*(**a1[1] + 48))(*a1[1], __p);
    *__p = &off_1002D5B00;
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(__p);
      if (SHIBYTE(v22) < 0)
      {
        goto LABEL_12;
      }

      return v7;
    }

    operator delete(*&__p[8]);
    mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(__p);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return v7;
    }
  }

LABEL_12:
  operator delete(v21);
  return v7;
}

void sub_100086C70(uint64_t a1)
{
  *a1 = &off_1002D5B00;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(a1);
}

void sub_100086CE4(void **this)
{
  *this = &off_1002D5B00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(this);

  operator delete();
}

uint64_t sub_100086D58(uint64_t a1)
{
  v3 = *(a1 + 8);
  v1 = a1 + 8;
  v2 = v3;
  v4 = *(v1 + 23);
  if (v4 >= 0)
  {
    v2 = v1;
  }

  if (v4 >= 0)
  {
    v5 = *(v1 + 23);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  return v2;
}

void sub_100086D7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v7 = 257;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v3 + 8) + 8, v4);
  mlir::emitError(EncodedSourceLocation, v6, a2);
  if (*(*(v3 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a2);
  }
}

uint64_t sub_100086DE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = 1;
  if (v2 != 60 && v2 != 80)
  {
    if (*(a1 + 56) >= 3uLL)
    {
      v4 = bswap32(**(a1 + 48) | (*(*(a1 + 48) + 2) << 16));
      v5 = v4 >= 0x22307800;
      v6 = v4 > 0x22307800;
      v7 = !v5;
      return 2 * (v6 != v7);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_100086E4C(mlir::Token *this)
{
  v1 = *(this + 10);
  if (v1 == 60)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 != 80)
  {
    v5 = *(this + 8);
    Loc = mlir::Token::getLoc((this + 40));
    std::operator+<char>();
    v7 = std::string::append(&v17, "'");
    v8 = v7->__r_.__value_.__r.__words[2];
    *v18 = *&v7->__r_.__value_.__l.__data_;
    v19 = v8;
    v7->__r_.__value_.__r.__words[0] = 0;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v21 = 260;
    v20 = v18;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, &v20, v22);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v22);
    }

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

      v10 = __p;
      if (__p)
      {
        v11 = v28;
        v12 = __p;
        if (v28 != __p)
        {
          do
          {
            v11 = sub_10005BEF4(v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v28 = v10;
        operator delete(v12);
      }

      v13 = v25;
      if (v25)
      {
        v14 = v26;
        v15 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v14;
            *v14 = 0;
            if (v16)
            {
              operator delete[]();
            }
          }

          while (v14 != v13);
          v15 = v25;
        }

        v26 = v13;
        operator delete(v15);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_31:
      v2 = 0;
      v3 = 0;
      return v2 | (v3 << 8);
    }

    operator delete(v17.__r_.__value_.__l.__data_);
    goto LABEL_31;
  }

  v2 = 1;
LABEL_5:
  v3 = 1;
  return v2 | (v3 << 8);
}

void sub_10008708C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  if (v5 == 11)
  {
    mlir::Token::getStringValue(v4, &v23);
    *a2 = v23;
    a2[1].__r_.__value_.__s.__data_[0] = 1;
    return;
  }

  v6 = *(a1 + 64);
  Loc = mlir::Token::getLoc(v4);
  std::operator+<char>();
  v8 = std::string::append(&v18, "'");
  v9 = v8->__r_.__value_.__r.__words[2];
  *v19 = *&v8->__r_.__value_.__l.__data_;
  v20 = v9;
  v8->__r_.__value_.__r.__words[0] = 0;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v22 = 260;
  v21 = v19;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v6 + 8) + 8, Loc);
  mlir::emitError(EncodedSourceLocation, &v21, &v23);
  if (*(*(v6 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v23);
  }

  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (v23.__r_.__value_.__r.__words[0])
  {
    mlir::InFlightDiagnostic::report(&v23);
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
          v12 = sub_10005BEF4(v12 - 1);
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
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
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

  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_29:
    operator delete(v18.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v19[0]);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_1000872F0(mlir::Token *this@<X0>, void (*a2)(void **__return_ptr, uint64_t, size_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (this + 40);
  if (*(this + 10) != 11)
  {
    LOBYTE(v52) = 0;
    v55 = 0;
LABEL_11:
    v13 = *(this + 8);
    Loc = mlir::Token::getLoc(v6);
    std::operator+<char>();
    v15 = std::string::append(&v47, "'");
    v16 = v15->__r_.__value_.__r.__words[2];
    *v48 = *&v15->__r_.__value_.__l.__data_;
    v49 = v16;
    v15->__r_.__value_.__r.__words[0] = 0;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v51 = 260;
    v50[0] = v48;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v13 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, v50, __dst);
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

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v64;
        v20 = __p;
        if (v64 != __p)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v64 = v18;
        operator delete(v20);
      }

      v21 = v61;
      if (!v61)
      {
        goto LABEL_69;
      }

      v22 = v62;
      v23 = v61;
      if (v62 == v61)
      {
        goto LABEL_68;
      }

      do
      {
        v24 = *--v22;
        *v22 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v22 != v21);
      goto LABEL_67;
    }

    goto LABEL_71;
  }

  mlir::Token::getHexStringValue((this + 40), &v52);
  if ((v55 & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((v54 & 0x8000000000000000) == 0)
  {
    if (v54 > 3)
    {
      v9 = a3;
      v10 = v52;
      if ((v52 & (v52 - 1)) == 0)
      {
        goto LABEL_6;
      }

LABEL_49:
      v35 = *(this + 8);
      v36 = mlir::Token::getLoc(v6);
      std::operator+<char>();
      v37 = std::string::append(&v47, "' to encode alignment in first 4 bytes, but got non-power-of-2 value: ");
      v38 = v37->__r_.__value_.__r.__words[2];
      *v48 = *&v37->__r_.__value_.__l.__data_;
      v49 = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v50[0] = v48;
      v50[2] = v10;
      v51 = 2308;
      v39 = mlir::Lexer::getEncodedSourceLocation(*(v35 + 8) + 8, v36);
      mlir::emitError(v39, v50, __dst);
      if (*(*(v35 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(__dst);
      }

      *a4 = 0;
      *(a4 + 64) = 0;
      if (__dst[0])
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v66 == 1)
      {
        if (v65 != &v66)
        {
          free(v65);
        }

        v40 = __p;
        if (__p)
        {
          v41 = v64;
          v42 = __p;
          if (v64 != __p)
          {
            do
            {
              v41 = sub_10005BEF4(v41 - 1);
            }

            while (v41 != v40);
            v42 = __p;
          }

          v64 = v40;
          operator delete(v42);
        }

        v21 = v61;
        if (!v61)
        {
          goto LABEL_69;
        }

        v43 = v62;
        v23 = v61;
        if (v62 == v61)
        {
LABEL_68:
          v62 = v21;
          operator delete(v23);
LABEL_69:
          if (v58 != v59)
          {
            free(v58);
          }

          goto LABEL_71;
        }

        do
        {
          v44 = *--v43;
          *v43 = 0;
          if (v44)
          {
            operator delete[]();
          }
        }

        while (v43 != v21);
LABEL_67:
        v23 = v61;
        goto LABEL_68;
      }

      goto LABEL_71;
    }

LABEL_30:
    v25 = *(this + 8);
    v26 = mlir::Token::getLoc(v6);
    std::operator+<char>();
    v27 = std::string::append(&v47, "' to encode alignment in first 4 bytes");
    v28 = v27->__r_.__value_.__r.__words[2];
    *v48 = *&v27->__r_.__value_.__l.__data_;
    v49 = v28;
    v27->__r_.__value_.__r.__words[0] = 0;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v51 = 260;
    v50[0] = v48;
    v29 = mlir::Lexer::getEncodedSourceLocation(*(v25 + 8) + 8, v26);
    mlir::emitError(v29, v50, __dst);
    if (*(*(v25 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(__dst);
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    if (__dst[0])
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v64;
        v32 = __p;
        if (v64 != __p)
        {
          do
          {
            v31 = sub_10005BEF4(v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v64 = v30;
        operator delete(v32);
      }

      v21 = v61;
      if (!v61)
      {
        goto LABEL_69;
      }

      v33 = v62;
      v23 = v61;
      if (v62 == v61)
      {
        goto LABEL_68;
      }

      do
      {
        v34 = *--v33;
        *v33 = 0;
        if (v34)
        {
          operator delete[]();
        }
      }

      while (v33 != v21);
      goto LABEL_67;
    }

LABEL_71:
    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48[0]);
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_73:
        if (v55 != 1)
        {
          return;
        }

        goto LABEL_77;
      }
    }

    else if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    operator delete(v47.__r_.__value_.__l.__data_);
    if (v55 != 1)
    {
      return;
    }

    goto LABEL_77;
  }

  if (v53 < 4)
  {
    goto LABEL_30;
  }

  v9 = a3;
  v10 = *v52;
  if ((v10 & (v10 - 1)) != 0)
  {
    goto LABEL_49;
  }

LABEL_6:
  v11 = v53;
  if (v54 >= 0)
  {
    v11 = v54;
  }

  v12 = v11 - 4;
  if (v11 > 4)
  {
    if (v54 >= 0)
    {
      v45 = &v52;
    }

    else
    {
      v45 = v52;
    }

    a2(__dst, v9, v12, v10);
    memcpy(__dst[0], v45 + 4, v12);
    *a4 = *__dst;
    v46 = v59[1];
    *(a4 + 16) = v57;
    *(a4 + 48) = v46;
    if (v46 >= 8)
    {
      if ((v46 & 2) != 0 && (v46 & 4) != 0)
      {
        (*((v46 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + 24, &v58);
        (*((*(a4 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(&v58);
      }

      else
      {
        *(a4 + 24) = v58;
        *(a4 + 40) = v59[0];
      }
    }

    *(a4 + 56) = v60;
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
  if (v55 == 1)
  {
LABEL_77:
    if (v54 < 0)
    {
      operator delete(v52);
    }
  }
}

uint64_t sub_10008792C(uint64_t a1, const void *a2, size_t a3, const char *a4)
{
  v7 = *a1;
  v8 = **(*a1 + 8);
  v36 = a2;
  p_ParserFor = a3;
  v9 = sub_100087CD0((v8 + 16), &v36);
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
      ParserFor = mlir::FallbackAsmResourceMap::getParserFor(v11, v36, p_ParserFor);
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
  mlir::emitWarning(EncodedSourceLocation, &v36);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "ignoring unknown external resources for '";
    v34 = 41;
    v13 = &v32;
    v14 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v29 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v14 = v38;
        v13 = (v38 + v29);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v13 = &v32;
        v14 = v38;
      }
    }

    v15 = &v14[24 * v39];
    v16 = *v13;
    *(v15 + 2) = v13[2];
    *v15 = v16;
    ++v39;
    if (v36)
    {
      v35 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(&p_ParserFor, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = "'";
        v34 = 1;
        v17 = &v32;
        v18 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v30 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v18 = v38;
            v17 = (v38 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v17 = &v32;
            v18 = v38;
          }
        }

        v19 = &v18[24 * v39];
        v20 = *v17;
        *(v19 + 2) = v17[2];
        *v19 = v20;
        ++v39;
        if (v36)
        {
          mlir::InFlightDiagnostic::report(&v36);
        }
      }
    }
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v45;
      v23 = __p;
      if (v45 != __p)
      {
        do
        {
          v22 = sub_10005BEF4(v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v45 = v21;
      operator delete(v23);
    }

    v24 = v42;
    if (v42)
    {
      v25 = v43;
      v26 = v42;
      if (v43 != v42)
      {
        do
        {
          v27 = *--v25;
          *v25 = 0;
          if (v27)
          {
            operator delete[]();
          }
        }

        while (v25 != v24);
        v26 = v42;
      }

      v43 = v24;
      operator delete(v26);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

LABEL_36:
  v36 = v7;
  p_ParserFor = &ParserFor;
  return mlir::detail::Parser::parseCommaSeparatedListUntil(v7, 27, sub_100087EDC, &v36, 1);
}

uint64_t sub_100087CD0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v6 = v2 - 1;
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v8)
  {
    if (v7 == -2)
    {
      v9 = 1;
      v10 = HashValue & v6;
      result = v3 + 24 * (HashValue & v6);
      v12 = *result;
      if (*result == -2)
      {
        return result;
      }

      while (v12 != -1)
      {
        if (v8 != *(result + 8) || (v13 = result, v14 = memcmp(0xFFFFFFFFFFFFFFFELL, v12, v8), result = v13, v14))
        {
          v15 = v9 + v10;
          ++v9;
          v10 = v15 & v6;
          result = v3 + 24 * (v15 & v6);
          v12 = *result;
          if (*result != -2)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      v20 = 1;
      v21 = HashValue & v6;
      result = v3 + 24 * (HashValue & v6);
      v22 = *result;
      if (*result == -2)
      {
        goto LABEL_22;
      }

      while (v22 != -1)
      {
        if (v8 == *(result + 8))
        {
          v23 = result;
          v24 = v20;
          v25 = memcmp(v7, v22, v8);
          v20 = v24;
          v26 = v25;
          result = v23;
          if (!v26)
          {
            return result;
          }
        }

        do
        {
LABEL_22:
          v27 = v20 + v21;
          ++v20;
          v21 = v27 & v6;
          result = v3 + 24 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }
  }

  else if (v7 == -2)
  {
    v16 = 1;
    v17 = HashValue & v6;
    result = v3 + 24 * (HashValue & v6);
    v18 = *result;
    if (*result == -2)
    {
      return result;
    }

    while (v18 != -1)
    {
      if (*(result + 8))
      {
        v19 = v16 + v17;
        ++v16;
        v17 = v19 & v6;
        result = v3 + 24 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    v28 = 1;
    v29 = HashValue & v6;
    result = v3 + 24 * (HashValue & v6);
    v30 = *result;
    if (*result == -2)
    {
      goto LABEL_27;
    }

    while (v30 != -1)
    {
      if (!*(result + 8))
      {
        return result;
      }

      do
      {
LABEL_27:
        v31 = v28 + v29;
        ++v28;
        v29 = v31 & v6;
        result = v3 + 24 * (v31 & v6);
        v30 = *result;
      }

      while (*result == -2);
    }
  }

  if (v7 != -1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100087EDC(mlir::detail::Parser **a1)
{
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (mlir::detail::Parser::parseOptionalKeywordOrString(v2, v23))
  {
    *v25 = "expected ':'";
    LOWORD(v27) = 259;
    if ((mlir::detail::Parser::parseToken(v2, 15, v25) & 1) == 0)
    {
      v8 = 0;
      if (SHIBYTE(v24) < 0)
      {
        goto LABEL_31;
      }

      return v8;
    }

    v4 = *(v2 + 1);
    v20 = *(v4 + 56);
    v21 = *(v4 + 72);
    v5 = v21;
    *(v4 + 80) = v20;
    *(v4 + 96) = v5;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), v25);
    v6 = *(v2 + 1);
    *(v6 + 56) = *v25;
    *(v6 + 72) = *&v25[16];
    v7 = a1[1];
    if (*v7)
    {
      if (SHIBYTE(v24) < 0)
      {
        sub_100003FD0(&v18, v23[0], v23[1]);
        v7 = a1[1];
      }

      else
      {
        v18 = *v23;
        v19 = v24;
      }

      v29 = v21;
      v30 = v2;
      v28 = v20;
      *v25 = &off_1002D5B00;
      v17 = v19;
      *&v25[8] = v18;
      v19 = 0;
      v18 = 0uLL;
      v26 = v17;
      v27 = Loc;
      v8 = (*(**v7 + 16))(*v7, v25);
      *v25 = &off_1002D5B00;
      if (SHIBYTE(v26) < 0)
      {
        operator delete(*&v25[8]);
        mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(v25);
        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          return v8;
        }
      }

      else
      {
        mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(v25);
        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          return v8;
        }
      }

      goto LABEL_31;
    }

    v8 = 1;
  }

  else
  {
    *&v20 = "expected identifier key for 'external_resources' entry";
    v22 = 259;
    mlir::detail::Parser::emitError(v2, &v20, v25);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (*v25)
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v34;
        v11 = __p;
        if (v34 != __p)
        {
          do
          {
            v10 = sub_10005BEF4(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v34 = v9;
        operator delete(v11);
      }

      v12 = v31;
      if (v31)
      {
        v13 = v32;
        v14 = v31;
        if (v32 != v31)
        {
          do
          {
            v15 = *--v13;
            *v13 = 0;
            if (v15)
            {
              operator delete[]();
            }
          }

          while (v13 != v12);
          v14 = v31;
        }

        v32 = v12;
        operator delete(v14);
      }

      if (v26 != &v28)
      {
        free(v26);
        if (SHIBYTE(v24) < 0)
        {
          goto LABEL_31;
        }

        return v8;
      }
    }
  }

  if (SHIBYTE(v24) < 0)
  {
LABEL_31:
    operator delete(v23[0]);
  }

  return v8;
}

uint64_t sub_100088204(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 32 * v6);
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void sub_1000882A8(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((32 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
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
      v10 = &buffer[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = buffer + 4;
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
        v15 = &buffer[4 * v11];
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

    llvm::deallocate_buffer(v4, (32 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
      v19 = buffer + 4;
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
        v21 = &buffer[4 * v17];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v21);
      }
    }
  }
}

uint64_t *sub_1000884C4(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 57), 8uLL);
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

    buffer = llvm::allocate_buffer((a3 + 57), 8uLL);
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
    if (v4[1] == 120)
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
    return v7[0] | &_mh_execute_header;
  }
}

unint64_t mlir::Token::getUInt64IntegerValue(unsigned __int8 *a1, unint64_t a2)
{
  v4 = 10;
  if (a2 >= 2)
  {
    if (a1[1] == 120)
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
  if ((llvm::getAsUnsignedInteger(&v1[v3], v2 - v3, 0xAu, &v5) & 1) != 0 || HIDWORD(v5))
  {
    return 0;
  }

  else
  {
    return v5 | &_mh_execute_header;
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
          LOWORD(v9) = word_1002B0918[v10] | (16 * word_1002B0918[v9]);
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
      v11 = word_1002B0918[*(v10 - 1)];
      v12 = word_1002B0918[*v10];
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
      sub_100003FC0();
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
    v2 = (*(this + 1) + 1);
  }

  else
  {
    v2 = *(this + 1);
  }

  v4 = 0;
  if ((llvm::getAsUnsignedInteger(v2, v1 - (v1 != 0), 0xAu, &v4) & 1) != 0 || HIDWORD(v4))
  {
    return 0;
  }

  else
  {
    return v4 | &_mh_execute_header;
  }
}

char *mlir::Token::getTokenSpelling(int a1)
{
  v1 = a1 - 13;
  v2 = qword_1002B0B18[v1];
  return off_1002D5B40[v1];
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
  if (v4 <= 0x3E)
  {
    if (((1 << (v3 - 8)) & 0x490FFFF140000011) != 0)
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

  v7 = v3 - 77;
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
  v14 = v16;
  v15 = 0x400000000;
  v11 = v13;
  v12 = 0x400000000;
  if ((mlir::detail::Parser::parseTypeListParens(this, &v14) & 1) == 0 || (v9[0] = "expected '->' in function type", v10 = 259, (mlir::detail::Parser::parseToken(this, 13, v9) & 1) == 0))
  {
LABEL_12:
    FunctionType = 0;
    v5 = v11;
    if (v11 == v13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*(*(this + 1) + 56) == 21)
  {
    if ((mlir::detail::Parser::parseTypeListParens(this, &v11) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = mlir::detail::Parser::parseNonFunctionType(this);
    if (!v2)
    {
      goto LABEL_12;
    }

    v3 = v12;
    if (v12 >= HIDWORD(v12))
    {
      v7 = v2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v11, v13, v12 + 1, 8);
      v2 = v7;
      v3 = v12;
    }

    *(v11 + v3) = v2;
    LODWORD(v12) = v12 + 1;
  }

  mlir::TypeRange::TypeRange(v9, v14, v15);
  mlir::TypeRange::TypeRange(v8, v11, v12);
  FunctionType = mlir::Builder::getFunctionType(this, v9[0], v9[1], v8[0], v8[1]);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_13:
    free(v5);
  }

LABEL_14:
  if (v14 != v16)
  {
    free(v14);
  }

  return FunctionType;
}

uint64_t *mlir::detail::Parser::parseNonFunctionType(mlir::detail::Parser *this)
{
  v1 = *(this + 1);
  v2 = (v1 + 56);
  switch(*(v1 + 56))
  {
    case 2:
      if (mlir::Token::isCodeCompletionFor(v2, 8))
      {
        return mlir::detail::Parser::parseExtendedType(this);
      }

      else
      {
        return mlir::detail::Parser::codeCompleteType(this);
      }

    case 8:
      return mlir::detail::Parser::parseExtendedType(this);
    case 0xC:
      IntTypeBitwidth = mlir::Token::getIntTypeBitwidth(v2);
      if ((IntTypeBitwidth & 0x100000000) == 0)
      {
        *&v80 = "invalid integer width";
        v82 = 259;
        mlir::detail::Parser::emitError(this, &v80, v83);
        v46 = v83;
LABEL_40:
        sub_10006296C(v46);
        return 0;
      }

      if (BYTE3(IntTypeBitwidth))
      {
        Loc = mlir::Token::getLoc((*(this + 1) + 56));
        v78 = "integer bitwidth is limited to ";
        v79 = 259;
        mlir::detail::Parser::emitError(this, Loc, &v78, &v80);
        sub_10008AD4C(&v80, &mlir::IntegerType::kMaxWidth);
        sub_10008AE40(v69, " bits");
        v46 = &v80;
        goto LABEL_40;
      }

      v70 = *(this + 1);
      v71 = this;
      v72 = IntTypeBitwidth;
      IntTypeSignedness = mlir::Token::getIntTypeSignedness((v70 + 56));
      if (IntTypeSignedness)
      {
        v74 = 1;
      }

      else
      {
        v74 = 2;
      }

      v75 = v74 & (IntTypeSignedness << 23 >> 31);
      v76 = *(v71 + 1);
      *(v76 + 96) = *(v76 + 72);
      *(v76 + 80) = *(v76 + 56);
      mlir::Lexer::lexToken((*(v71 + 1) + 8), &v80);
      v77 = *(v71 + 1);
      *(v77 + 56) = v80;
      *(v77 + 72) = v81;
      return mlir::IntegerType::get(***(v71 + 1), v72, v75);
    case 0x26:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v33 = *(this + 1);
      *(v33 + 56) = v80;
      *(v33 + 72) = v81;
      return mlir::BFloat16Type::get(*this, v34);
    case 0x28:
      return mlir::detail::Parser::parseComplexType(this);
    case 0x2C:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v51 = *(this + 1);
      *(v51 + 56) = v80;
      *(v51 + 72) = v81;
      return mlir::Float16Type::get(*this, v52);
    case 0x2D:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v27 = *(this + 1);
      *(v27 + 56) = v80;
      *(v27 + 72) = v81;
      return mlir::Float32Type::get(*this, v28);
    case 0x2E:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v30 = *(this + 1);
      *(v30 + 56) = v80;
      *(v30 + 72) = v81;
      return mlir::Float64Type::get(*this, v31);
    case 0x2F:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v39 = *(this + 1);
      *(v39 + 56) = v80;
      *(v39 + 72) = v81;
      return mlir::Float80Type::get(*this, v40);
    case 0x30:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v36 = *(this + 1);
      *(v36 + 56) = v80;
      *(v36 + 72) = v81;
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id);
    case 0x31:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v57 = *(this + 1);
      *(v57 + 56) = v80;
      *(v57 + 72) = v81;
      v58 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v58, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id);
    case 0x32:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v21 = *(this + 1);
      *(v21 + 56) = v80;
      *(v21 + 72) = v81;
      v22 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v22, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id);
    case 0x33:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v18 = *(this + 1);
      *(v18 + 56) = v80;
      *(v18 + 72) = v81;
      v19 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v19, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id);
    case 0x34:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v63 = *(this + 1);
      *(v63 + 56) = v80;
      *(v63 + 72) = v81;
      v64 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v64, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id);
    case 0x35:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v42 = *(this + 1);
      *(v42 + 56) = v80;
      *(v42 + 72) = v81;
      v43 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v43, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id);
    case 0x36:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v48 = *(this + 1);
      *(v48 + 56) = v80;
      *(v48 + 72) = v81;
      v49 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v49, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id);
    case 0x37:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v60 = *(this + 1);
      *(v60 + 56) = v80;
      *(v60 + 72) = v81;
      v61 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v61, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id);
    case 0x38:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v54 = *(this + 1);
      *(v54 + 56) = v80;
      *(v54 + 72) = v81;
      v55 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v55, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id);
    case 0x39:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v6 = *(this + 1);
      *(v6 + 56) = v80;
      *(v6 + 72) = v81;
      v7 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v7, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id);
    case 0x3A:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v24 = *(this + 1);
      *(v24 + 56) = v80;
      *(v24 + 72) = v81;
      v25 = mlir::MLIRContext::getTypeUniquer(*this);
      return mlir::StorageUniquer::getSingletonImpl(v25, &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id);
    case 0x3B:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v66 = *(this + 1);
      *(v66 + 56) = v80;
      *(v66 + 72) = v81;
      return mlir::Float128Type::get(*this, v67);
    case 0x40:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v9 = *(this + 1);
      *(v9 + 56) = v80;
      *(v9 + 72) = v81;
      return mlir::Builder::getIndexType(this, v10);
    case 0x43:
      return mlir::detail::Parser::parseMemRefType(this);
    case 0x46:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v15 = *(this + 1);
      *(v15 + 56) = v80;
      *(v15 + 72) = v81;
      return mlir::Builder::getNoneType(this, v16);
    case 0x4D:
      return mlir::detail::Parser::parseTensorType(this);
    case 0x4E:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v80);
      v12 = *(this + 1);
      *(v12 + 56) = v80;
      *(v12 + 72) = v81;
      return mlir::FloatTF32Type::get(*this, v13);
    case 0x51:
      return mlir::detail::Parser::parseTupleType(this);
    case 0x54:
      return mlir::detail::Parser::parseVectorType(this);
    default:
      *&v80 = "expected non-function type";
      v82 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v80, &v84);
      if (v84)
      {
        mlir::InFlightDiagnostic::report(&v84);
      }

      if (v86 == 1)
      {
        sub_10005BE10(v85);
      }

      return 0;
  }
}

uint64_t mlir::detail::Parser::parseFunctionResultTypes(mlir::detail::Parser *a1, unsigned int *a2)
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
      v5 = a2;
      v6 = a2[2];
      if (v6 >= a2[3])
      {
        v7 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v6 + 1, 8);
        result = v7;
        v5 = a2;
        LODWORD(v6) = a2[2];
      }

      *(*v5 + 8 * v6) = result;
      ++v5[2];
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
  if ((mlir::detail::Parser::parseCommaSeparatedList(a1, 0, sub_10008BABC, &v7, 0, 0) & 1) == 0)
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
  return mlir::detail::Parser::parseCommaSeparatedList(a1, 0, sub_10008BABC, v3, 0, 0);
}

uint64_t mlir::detail::Parser::parseComplexType(mlir::detail::Parser *this)
{
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v25);
  v3 = *(this + 1);
  *(v3 + 56) = v25;
  *(v3 + 72) = v26;
  *&v25 = "expected '<' in complex type";
  v27 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v25) & 1) == 0)
  {
    return 0;
  }

  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  if (*(*(this + 1) + 56) == 21)
  {
    v5 = mlir::detail::Parser::parseFunctionType(this);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = mlir::detail::Parser::parseNonFunctionType(this);
    if (!v5)
    {
      return 0;
    }
  }

  *&v25 = "expected '>' in complex type";
  v27 = 259;
  if (mlir::detail::Parser::parseToken(this, 19, &v25))
  {
    v6 = *v5;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (v9)
      {
LABEL_9:
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
        if (v10 != &v8[2 * v9] && *v10 == v7 && v10[1])
        {
          return mlir::ComplexType::get(v5);
        }
      }
    }

    else
    {
      v24 = v6;
      sub_100299830();
      v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v8 = *(v24 + 8);
      v9 = *(v24 + 16);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      *&v25 = "invalid element type for complex";
      v27 = 259;
      mlir::detail::Parser::emitError(this, Loc, &v25, v28);
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

        v16 = __p;
        if (__p)
        {
          v17 = v34;
          v18 = __p;
          if (v34 != __p)
          {
            do
            {
              v17 = sub_10005BEF4(v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v34 = v16;
          operator delete(v18);
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
              v22 = *--v20;
              *v20 = 0;
              if (v22)
              {
                operator delete[]();
              }
            }

            while (v20 != v19);
            v21 = v31;
          }

          v32 = v19;
          operator delete(v21);
        }

        if (v29 != &v30)
        {
          free(v29);
        }
      }

      return 0;
    }

    return mlir::ComplexType::get(v5);
  }

  return 0;
}

uint64_t *mlir::detail::Parser::parseMemRefType(mlir::detail::Parser *this)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v3 = *(this + 1);
  *(v3 + 96) = *(v3 + 72);
  *(v3 + 80) = *(v3 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v39);
  v4 = *(this + 1);
  *(v4 + 56) = v39;
  *(v4 + 72) = v40[0];
  *&v39 = "expected '<' in memref type";
  v41 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v39) & 1) == 0)
  {
    return 0;
  }

  *&v39 = v40;
  *(&v39 + 1) = 0x400000000;
  v5 = *(this + 1);
  if (*(v5 + 56) == 30)
  {
    *(v5 + 80) = *(v5 + 56);
    *(v5 + 96) = *(v5 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v24);
    v6 = *(this + 1);
    *(v6 + 56) = v24;
    *(v6 + 72) = v25;
    v28 = 1;
    if (!mlir::detail::Parser::parseXInDimensionList(this))
    {
      goto LABEL_44;
    }

    v7 = *(this + 1);
  }

  else
  {
    v28 = 0;
    LOBYTE(v21[0]) = 1;
    *&v24 = this;
    *(&v24 + 1) = v21;
    v25 = &v39;
    while (1)
    {
      v7 = *(this + 1);
      if ((*(v7 + 56) | 0x10) != 0x1A)
      {
        break;
      }

      if ((sub_10008B44C(&v24) & 1) == 0 || !mlir::detail::Parser::parseXInDimensionList(this))
      {
        goto LABEL_44;
      }
    }
  }

  v8 = mlir::Token::getLoc((v7 + 56));
  if (*(*(this + 1) + 56) != 21)
  {
    result = mlir::detail::Parser::parseNonFunctionType(this);
    v27 = result;
    if (!result)
    {
      goto LABEL_45;
    }

LABEL_15:
    v10 = result;
    if (sub_10008A40C(result))
    {
      v23[0] = 0;
      v23[1] = 0;
      v21[0] = this;
      v21[1] = v23;
      v21[2] = &v22;
      v21[3] = &v28;
      v22 = 0;
      v11 = *(this + 1);
      if (*(v11 + 56) == 19)
      {
        *(v11 + 80) = *(v11 + 56);
        *(v11 + 96) = *(v11 + 72);
        mlir::Lexer::lexToken((*(this + 1) + 8), &v24);
        v12 = *(this + 1);
        *(v12 + 56) = v24;
        *(v12 + 72) = v25;
LABEL_18:
        if (v28 == 1)
        {
          v29 = Loc;
          *&v24 = this;
          *(&v24 + 1) = &v29;
          result = mlir::UnrankedMemRefType::getChecked(sub_10008C098, &v24, v10, v22);
        }

        else
        {
          result = sub_10008A574(this, Loc, &v39, &v27, v23, &v22);
        }

        goto LABEL_45;
      }

      *&v24 = "expected ',' or '>' in memref type";
      v26 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v24) & 1) != 0 && (mlir::detail::Parser::parseCommaSeparatedListUntil(this, 19, sub_10008BB4C, v21, 0))
      {
        goto LABEL_18;
      }
    }

    else
    {
      *&v24 = "invalid memref element type";
      v26 = 259;
      mlir::detail::Parser::emitError(this, v8, &v24, v30);
      if (v30[0])
      {
        mlir::InFlightDiagnostic::report(v30);
      }

      if (v38 == 1)
      {
        if (v37 != &v38)
        {
          free(v37);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v36;
          v15 = __p;
          if (v36 != __p)
          {
            do
            {
              v14 = sub_10005BEF4(v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v36 = v13;
          operator delete(v15);
        }

        v16 = v33;
        if (v33)
        {
          v17 = v34;
          v18 = v33;
          if (v34 != v33)
          {
            do
            {
              v19 = *--v17;
              *v17 = 0;
              if (v19)
              {
                operator delete[]();
              }
            }

            while (v17 != v16);
            v18 = v33;
          }

          v34 = v16;
          operator delete(v18);
        }

        if (v31 != &v32)
        {
          free(v31);
        }
      }
    }

LABEL_44:
    result = 0;
    goto LABEL_45;
  }

  result = mlir::detail::Parser::parseFunctionType(this);
  v27 = result;
  if (result)
  {
    goto LABEL_15;
  }

LABEL_45:
  if (v39 != v40)
  {
    v20 = result;
    free(v39);
    return v20;
  }

  return result;
}

BOOL mlir::detail::Parser::parseXInDimensionList(mlir::detail::Parser *this)
{
  v1 = *(this + 1);
  if (*(v1 + 56) == 3 && (v2 = *(v1 + 64), *v2 == 120))
  {
    if (*(v1 + 72) != 1)
    {
      *(v1 + 40) = v2 + 1;
    }

    *(v1 + 80) = *(v1 + 56);
    *(v1 + 96) = *(v1 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v16);
    v4 = *(this + 1);
    *(v4 + 56) = v16;
    *(v4 + 72) = v17;
    return 1;
  }

  else
  {
    v14 = "expected 'x' in dimension list";
    v15 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v14, &v16);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
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

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = sub_10005BEF4(v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
        {
          do
          {
            v12 = *--v10;
            *v10 = 0;
            if (v12)
            {
              operator delete[]();
            }
          }

          while (v10 != v9);
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
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
      if ((sub_10008B44C(v7) & 1) == 0 || !mlir::detail::Parser::parseXInDimensionList(a1))
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
    if ((sub_10008B44C(v7) & 1) == 0)
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

BOOL sub_10008A40C(uint64_t *a1)
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

  if ((atomic_load_explicit(&qword_1002E0510, memory_order_acquire) & 1) == 0)
  {
    v15 = v2;
    sub_100299870();
    v6 = off_1002E0508;
    v7 = *(v15 + 8);
    v8 = *(v15 + 16);
    if (v8)
    {
      goto LABEL_17;
    }

    return 0;
  }

  v6 = off_1002E0508;
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
    v13 = (v12 + 2);
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

uint64_t sub_10008A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  return mlir::MemRefType::getChecked(sub_10008C0D0, v7, *a3, *(a3 + 8), *a4, *a5, a5[1], *a6);
}

uint64_t mlir::detail::Parser::parseTensorType(mlir::detail::Parser *this)
{
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v28);
  v3 = *(this + 1);
  *(v3 + 56) = v28;
  *(v3 + 72) = v29[0];
  *&v28 = "expected '<' in tensor type";
  v30 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v28) & 1) == 0)
  {
    return 0;
  }

  *&v28 = v29;
  *(&v28 + 1) = 0x400000000;
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
    v20 = &v28;
    while (1)
    {
      v7 = *(this + 1);
      if ((*(v7 + 56) | 0x10) != 0x1A)
      {
        break;
      }

      if ((sub_10008B44C(&v19) & 1) == 0 || !mlir::detail::Parser::parseXInDimensionList(this))
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
        v16 = sub_10008B860(v23);
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
        if ((mlir::VerifiableTensorEncoding::verifyEncoding(&v19, v28, DWORD2(v28), v11, sub_10008C108, &v22) & 1) == 0)
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
        sub_10006296C(v24);
        result = 0;
        v15 = v28;
        if (v28 == v29)
        {
          return result;
        }
      }

      else
      {
        result = mlir::UnrankedTensorType::get(v11);
        v15 = v28;
        if (v28 == v29)
        {
          return result;
        }
      }
    }

    else
    {
      result = mlir::RankedTensorType::get(v28, DWORD2(v28), v11, v23);
      v15 = v28;
      if (v28 == v29)
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

  if (v27 != 1)
  {
LABEL_36:
    result = 0;
    v15 = v28;
    if (v28 == v29)
    {
      return result;
    }

    goto LABEL_37;
  }

  sub_10005BE10(v26);
  result = 0;
  v15 = v28;
  if (v28 == v29)
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
  if ((mlir::detail::Parser::parseCommaSeparatedList(this, 0, sub_10008BABC, &v11, 0, 0) & 1) == 0 || (v11 = "expected '>' in tuple type", v13 = 259, (mlir::detail::Parser::parseToken(this, 19, &v11) & 1) == 0))
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
  v12 = xmmword_1002B0330;
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
  Checked = mlir::VectorType::getChecked(sub_10008C138, v9, v15[0], LODWORD(v15[1]), v5, v11, v12);
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

__n128 sub_10008AD4C(uint64_t a1, unsigned int *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v11 = 5;
    v12 = v3;
    v4 = *(a1 + 32);
    v5 = &v11;
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v11 && v2 + 24 * v4 > &v11)
      {
        v9 = &v11 - v2;
        v10 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v4 + 1, 24);
        a1 = v10;
        v2 = *(v10 + 24);
        v5 = &v9[v2];
      }

      else
      {
        v8 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v4 + 1, 24);
        a1 = v8;
        v2 = *(v8 + 24);
        v5 = &v11;
      }
    }

    v6 = (v2 + 24 * *(a1 + 32));
    result = *v5;
    v6[1].n128_u64[0] = v5[1].n128_u64[0];
    *v6 = result;
    ++*(a1 + 32);
  }

  return result;
}

__n128 sub_10008AE40(uint64_t a1, char *__s)
{
  if (*a1)
  {
    v4 = strlen(__s);
    v5 = a1;
    v6 = *(a1 + 24);
    v12 = 3;
    v13 = __s;
    v14 = v4;
    v7 = *(a1 + 32);
    v8 = &v12;
    if (v7 >= *(a1 + 36))
    {
      if (v6 <= &v12 && v6 + 24 * v7 > &v12)
      {
        v11 = &v12 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v7 + 1, 24);
        v5 = a1;
        v6 = *(a1 + 24);
        v8 = &v11[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v7 + 1, 24);
        v5 = a1;
        v6 = *(a1 + 24);
        v8 = &v12;
      }
    }

    v9 = (v6 + 24 * *(v5 + 32));
    result = *v8;
    v9[1].n128_u64[0] = v8[1].n128_u64[0];
    *v9 = result;
    ++*(v5 + 32);
  }

  return result;
}

BOOL mlir::detail::Parser::parseVectorDimensionList(mlir::detail::Parser *a1, uint64_t a2, void *a3)
{
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

    v10 = v26;
    v11 = *(a2 + 8);
    if (v11 >= *(a2 + 12))
    {
      break;
    }

    *(*a2 + 8 * v11) = v26;
    ++*(a2 + 8);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_10:
    v14 = a3[1];
    if ((v14 + 1) > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, a3 + 3, v14 + 1, 1);
      v14 = a3[1];
    }

    *(*a3 + v14) = v8;
    ++a3[1];
    if (!mlir::detail::Parser::parseXInDimensionList(a1))
    {
      return 0;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v11 + 1, 8);
  *(*a2 + 8 * (*(a2 + 8))++) = v10;
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_8:
  v12 = *(a1 + 1);
  if (*(v12 + 56) == 29)
  {
    *(v12 + 80) = *(v12 + 56);
    *(v12 + 96) = *(v12 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v27);
    v13 = *(a1 + 1);
    *(v13 + 56) = v27;
    *(v13 + 72) = v28;
    goto LABEL_10;
  }

  v24 = "missing ']' closing scalable dimension";
  v25 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, &v24, &v27);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
  v16 = result;
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
    result = v16;
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
      result = v16;
    }

    v17 = __p;
    if (__p)
    {
      v18 = v34;
      v19 = __p;
      if (v34 != __p)
      {
        do
        {
          v18 = sub_10005BEF4(v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v34 = v17;
      operator delete(v19);
      result = v16;
    }

    v20 = v31;
    if (v31)
    {
      v21 = v32;
      v22 = v31;
      if (v32 != v31)
      {
        do
        {
          v23 = *--v21;
          *v21 = 0;
          if (v23)
          {
            operator delete[]();
          }
        }

        while (v21 != v20);
        v22 = v31;
      }

      v32 = v20;
      operator delete(v22);
      result = v16;
    }

    if (v29 != &v30)
    {
      free(v29);
      return v16;
    }
  }

  return result;
}

BOOL mlir::detail::Parser::parseIntegerInDimensionList(mlir::detail::Parser *this, unint64_t *a2)
{
  v4 = *(this + 1);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  if (v6 >= 2 && v5[1] == 120)
  {
    *a2 = 0;
    *(v4 + 40) = v5 + 1;
LABEL_7:
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v21);
    v9 = *(this + 1);
    *(v9 + 56) = v21;
    *(v9 + 72) = v22;
    return 1;
  }

  UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v5, v6);
  if ((v8 & 1) != 0 && (UInt64IntegerValue & 0x8000000000000000) == 0)
  {
    *a2 = UInt64IntegerValue;
    v4 = *(this + 1);
    goto LABEL_7;
  }

  v19 = "invalid dimension";
  v20 = 259;
  mlir::detail::Parser::emitError(this, &v19, &v21);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v28;
      v13 = __p;
      if (v28 != __p)
      {
        do
        {
          v12 = sub_10005BEF4(v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v28 = v11;
      operator delete(v13);
    }

    v14 = v25;
    if (v25)
    {
      v15 = v26;
      v16 = v25;
      if (v26 != v25)
      {
        do
        {
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
        v16 = v25;
      }

      v26 = v14;
      operator delete(v16);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v10;
}

uint64_t sub_10008B44C(uint64_t a1)
{
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
    v9 = v22[0];
    v10 = *(v7 + 8);
    if (v10 >= *(v7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v10 + 1, 8);
      LODWORD(v10) = *(v7 + 8);
    }

    *(*v7 + 8 * v10) = v9;
    goto LABEL_10;
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
      llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 16), (v7 + 16), v8 + 1, 8);
      LODWORD(v8) = *(v7 + 8);
    }

    *(*v7 + 8 * v8) = 0x8000000000000000;
LABEL_10:
    ++*(v7 + 8);
    return 1;
  }

  v20 = "expected static shape";
  v21 = 259;
  mlir::detail::Parser::emitError(v2, v5, &v20, v22);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = sub_10005BEF4(v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
      {
        do
        {
          v18 = *--v16;
          *v16 = 0;
          if (v18)
          {
            operator delete[]();
          }
        }

        while (v16 != v15);
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v11;
}

uint64_t sub_10008B6D0()
{
  if ((atomic_load_explicit(&qword_1002E0528, memory_order_acquire) & 1) == 0)
  {
    sub_1002998B0();
  }

  return qword_1002E0518;
}

const char *sub_10008B718()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemRefElementTypeInterface]";
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

uint64_t sub_10008B798()
{
  if ((atomic_load_explicit(&qword_1002E0550, memory_order_acquire) & 1) == 0)
  {
    sub_100299904();
  }

  return qword_1002E0540;
}

const char *sub_10008B7E0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemRefLayoutAttrInterface]";
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

void *sub_10008B860(void *result)
{
  v1 = *result;
  {
    v22 = v1;
    v24 = result;
    sub_100299958();
    result = v24;
    v2 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
    v3 = *(v22 + 8);
    v4 = *(v22 + 16);
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

  if (result)
  {
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
      v23 = v11;
      v25 = result;
      sub_100299958();
      result = v25;
      v12 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
      v13 = *(v23 + 8);
      v14 = *(v23 + 16);
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
    if (v15 != &v13[2 * v14] && *v15 == v12)
    {
      v21 = v15[1];
    }
  }

  return result;
}

uint64_t sub_10008B9F4()
{
  {
    sub_1002999AC();
  }

  return llvm::getTypeName<mlir::VerifiableTensorEncoding>(void)::Name;
}

const char *sub_10008BA3C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::VerifiableTensorEncoding]";
  v6 = 92;
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

BOOL sub_10008BABC(uint64_t a1)
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
    v7 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v5 + 1, 8);
    v3 = v7;
    LODWORD(v5) = *(v4 + 8);
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
  return v3 != 0;
}

uint64_t sub_10008BB4C(mlir::detail::Parser **a1)
{
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(*a1, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (atomic_load_explicit(&qword_1002E0538, memory_order_acquire))
  {
    v5 = qword_1002E0530;
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
    sub_100299A00();
    v3 = v15;
    v5 = qword_1002E0530;
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
    v16 = a1[2];
    if (!*v16)
    {
      *v16 = v3;
      return 1;
    }

    v49[0] = "multiple memory spaces specified in memref type";
    v50 = 259;
    mlir::detail::Parser::emitError(v2, v49, v51);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v57;
        v19 = __p;
        if (v57 != __p)
        {
          do
          {
            v18 = sub_10005BEF4(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v57 = v17;
        operator delete(v19);
      }

      v20 = v54;
      if (!v54)
      {
        goto LABEL_83;
      }

      v21 = v55;
      v22 = v54;
      if (v55 == v54)
      {
        goto LABEL_82;
      }

      do
      {
        v23 = *--v21;
        *v21 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v21 != v20);
      goto LABEL_81;
    }

    return v14;
  }

  v24 = *v3;
  if (atomic_load_explicit(&qword_1002E0538, memory_order_acquire))
  {
    v25 = qword_1002E0530;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    if (!v27)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v34 = v3;
    sub_100299A00();
    v3 = v34;
    v25 = qword_1002E0530;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    if (!v27)
    {
      goto LABEL_46;
    }
  }

  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
LABEL_46:
    v35 = a1[1];
    *v35 = v3;
    *(v35 + 1) = 0;
    if (*a1[3])
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

  v41 = v28[1];
  v42 = a1[1];
  *v42 = v3;
  *(v42 + 1) = v41;
  if (*a1[3])
  {
LABEL_47:
    v49[0] = "cannot have affine map for unranked memref type";
    v50 = 259;
    mlir::detail::Parser::emitError(v2, v49, v51);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v57;
        v38 = __p;
        if (v57 != __p)
        {
          do
          {
            v37 = sub_10005BEF4(v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v57 = v36;
        operator delete(v38);
      }

      v20 = v54;
      if (!v54)
      {
        goto LABEL_83;
      }

      v39 = v55;
      v22 = v54;
      if (v55 == v54)
      {
LABEL_82:
        v55 = v20;
        operator delete(v22);
LABEL_83:
        if (v52 != &v53)
        {
          free(v52);
        }

        return v14;
      }

      do
      {
        v40 = *--v39;
        *v39 = 0;
        if (v40)
        {
          operator delete[]();
        }
      }

      while (v39 != v20);
LABEL_81:
      v22 = v54;
      goto LABEL_82;
    }

    return v14;
  }

LABEL_64:
  if (!*a1[2])
  {
    return 1;
  }

  v49[0] = "expected memory space to be last in memref type";
  v50 = 259;
  mlir::detail::Parser::emitError(v2, v49, v51);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
  if (v51[0])
  {
    mlir::InFlightDiagnostic::report(v51);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v57;
      v45 = __p;
      if (v57 != __p)
      {
        do
        {
          v44 = sub_10005BEF4(v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v57 = v43;
      operator delete(v45);
    }

    v20 = v54;
    if (!v54)
    {
      goto LABEL_83;
    }

    v46 = v55;
    v22 = v54;
    if (v55 == v54)
    {
      goto LABEL_82;
    }

    do
    {
      v47 = *--v46;
      *v46 = 0;
      if (v47)
      {
        operator delete[]();
      }
    }

    while (v46 != v20);
    goto LABEL_81;
  }

  return v14;
}

void sub_10008C098(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void sub_10008C0D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void sub_10008C108(mlir::detail::Parser **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::detail::Parser::emitError(v2, v3, a2);
}

void sub_10008C138(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void mlir::BytecodeWriterConfig::~BytecodeWriterConfig(mlir::BytecodeWriterConfig *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    sub_100096F94(v2);
    operator delete();
  }
}

uint64_t mlir::BytecodeWriterConfig::getAttributeWriterCallbacks(mlir::BytecodeWriterConfig *this)
{
  v1 = *this;
  result = *(*this + 56);
  v3 = *(v1 + 64);
  return result;
}

uint64_t mlir::BytecodeWriterConfig::getTypeWriterCallbacks(mlir::BytecodeWriterConfig *this)
{
  v1 = *this;
  result = *(*this + 120);
  v3 = *(v1 + 128);
  return result;
}

BOOL mlir::writeBytecodeToFile(mlir *this, mlir::Operation *a2, llvm::raw_ostream *a3, const mlir::BytecodeWriterConfig *a4)
{
  v280 = 0;
  v279 = 0u;
  v281 = v283;
  v282 = 0;
  v6 = mlir::bytecode::detail::IRNumberingState::IRNumberingState(v283, this, a3);
  v291 = *a3;
  v293 = 0u;
  v292 = 0;
  v294 = v296;
  v295 = xmmword_1002B0190;
  v297 = 0u;
  v298 = 0;
  v255 = v6;
  v299 = v6;
  v300 = &v279;
  v301 = v291;
  *v263 = 0u;
  v264 = 0u;
  *v261 = 0u;
  v262 = 0u;
  *v260 = 0u;
  v265 = 1;
  sub_10008E93C(v260, 0, "ML\xEF\x52unsupported version requested ", "\x00unsupported version requested ", 4);
  if (*v291 < 7uLL)
  {
    sub_10008E700(v260, *v291);
    sub_10008E830(v260, *(v291 + 40), *(v291 + 48));
    memset(v303, 0, sizeof(v303));
    *__src = 0u;
    v304 = 1;
    v45 = v283[18];
    v46 = v284;
    sub_10008E700(__src, v284);
    if (v46)
    {
      v47 = v45 + 24 * v46;
      do
      {
        v48 = *(v45 + 16);
        v49 = sub_10008EE5C(&v279, *v48, *(v48 + 8));
        if (*v291 <= 0)
        {
          sub_10008E700(__src, v49);
        }

        else
        {
          *v275 = 0u;
          v276 = 0u;
          *v273 = 0u;
          v274 = 0u;
          *__s1 = 0u;
          v277 = 1;
          v50 = *(v48 + 24);
          if (v50)
          {
            v51 = *v291;
            *&v311 = off_1002D5D90;
            *(&v311 + 1) = v51;
            v312 = __s1;
            v313 = v255;
            v314 = &v279;
            v315 = v291 + 16;
            (*(*v50 + 48))(v50, &v311);
            v52 = __s1[0];
            v53 = __s1[1] + *(&v276 + 1);
          }

          else
          {
            v52 = 0;
            v53 = 0;
          }

          sub_10008E700(__src, (v53 != v52) | (2 * v49));
          if (v53 != v52)
          {
            sub_10008EF8C(__src, 7, __s1);
          }

          v54 = v275[0];
          if (v275[0])
          {
            v55 = v275[1];
            v56 = v275[0];
            if (v275[1] != v275[0])
            {
              v57 = v275[1];
              do
              {
                v59 = *(v57 - 3);
                v57 -= 24;
                v58 = v59;
                if (v59)
                {
                  *(v55 - 2) = v58;
                  operator delete(v58);
                }

                v55 = v57;
              }

              while (v57 != v54);
              v56 = v275[0];
            }

            v275[1] = v54;
            operator delete(v56);
          }

          if (v273[1])
          {
            *&v274 = v273[1];
            operator delete(v273[1]);
          }

          if (__s1[0])
          {
            __s1[1] = __s1[0];
            operator delete(__s1[0]);
          }
        }

        v45 += 24;
      }

      while (v45 != v47);
    }

    if (*v291 > 3)
    {
      sub_10008E700(__src, v288 - v287);
    }

    v60 = v287;
    v61 = v288;
    if (v287 != v288)
    {
      v251 = v288;
      while (1)
      {
        v62 = v60;
        v63 = *v60++;
        v64 = *v63;
        if (v60 != v61)
        {
          do
          {
            if (**v60 != v64)
            {
              goto LABEL_63;
            }

            ++v60;
          }

          while (v60 != v61);
          v60 = v61;
        }

LABEL_63:
        sub_10008E700(__src, *(v64 + 16));
        sub_10008E700(__src, v60 - v62);
        if (v60 != v62)
        {
          break;
        }

LABEL_58:
        v61 = v251;
        if (v60 == v251)
        {
          goto LABEL_129;
        }
      }

      v256 = v60;
      while (1)
      {
        v65 = *v62;
        __s1[0] = *((*v62)[1] + 8);
        __s1[0] = mlir::StringAttr::getValue(__s1);
        __s1[1] = v66;
        LOBYTE(v311) = 46;
        v67 = llvm::StringRef::find(__s1, &v311, 1uLL, 0);
        if (v67 == -1)
        {
          v69 = 0;
          v70 = 0;
        }

        else
        {
          if (__s1[1] >= (v67 + 1))
          {
            v68 = (v67 + 1);
          }

          else
          {
            v68 = __s1[1];
          }

          v69 = __s1[0] + v68;
          v70 = (__s1[1] - v68);
        }

        HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v69, v70);
        __s1[0] = v69;
        __s1[1] = __PAIR64__(HashValue, v70);
        LODWORD(v273[0]) = 0;
        v72 = v282;
        if (!v280)
        {
          v102 = 0;
          v103 = 0;
          goto LABEL_96;
        }

        v257 = v65;
        v73 = 0;
        v74 = v279;
        v311 = xmmword_1002B0D70;
        v75 = v280 - 1;
        v76 = 1;
        v77 = HashValue & v75;
        v78 = v279 + 24 * (HashValue & v75);
        v79 = *(v78 + 12);
        if (HashValue != v79)
        {
          goto LABEL_83;
        }

LABEL_74:
        v80 = *v78;
        if (*v78 == -2)
        {
          if (__s1[0] != -2)
          {
            goto LABEL_83;
          }
        }

        else if (v80 == -1)
        {
          if (__s1[0] != -1)
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (LODWORD(__s1[1]) != *(v78 + 8))
          {
            goto LABEL_83;
          }

          if (LODWORD(__s1[1]))
          {
            v252 = v76;
            v253 = HashValue;
            v81 = v72;
            v82 = v75;
            v83 = v74;
            v84 = v73;
            v85 = v70;
            v86 = v69;
            v87 = v77;
            v88 = memcmp(__s1[0], v80, LODWORD(__s1[1]));
            v77 = v87;
            v69 = v86;
            v70 = v85;
            v73 = v84;
            v74 = v83;
            v75 = v82;
            v72 = v81;
            v89 = v88;
            v76 = v252;
            HashValue = v253;
            if (v89)
            {
LABEL_83:
              while (v79 || *v78 != -1)
              {
                v90 = HashValue;
                v91 = v72;
                v92 = v73;
                v254 = v69;
                v93 = v77;
                v94 = sub_10008F470(v78, &v311);
                v72 = v91;
                v95 = v94;
                HashValue = v90;
                if ((v95 & (v92 == 0)) != 0)
                {
                  v73 = v78;
                }

                else
                {
                  v73 = v92;
                }

                v96 = v93 + v76;
                v69 = v254;
                ++v76;
                v77 = v96 & v75;
                v78 = v74 + 24 * (v96 & v75);
                v79 = *(v78 + 12);
                if (HIDWORD(__s1[1]) == v79)
                {
                  goto LABEL_74;
                }
              }

              if (v73)
              {
                v103 = v73;
              }

              else
              {
                v103 = v78;
              }

              v102 = v280;
              v60 = v256;
              v65 = v257;
LABEL_96:
              *&v311 = v103;
              if (4 * DWORD2(v279) + 4 >= 3 * v102)
              {
                v102 *= 2;
              }

              else if (v102 + ~DWORD2(v279) - HIDWORD(v279) > v102 >> 3)
              {
                ++DWORD2(v279);
                if (!*(v103 + 12))
                {
                  goto LABEL_99;
                }

LABEL_100:
                --HIDWORD(v279);
                goto LABEL_101;
              }

              v114 = HashValue;
              v115 = v72;
              sub_10008F500(&v279, v102);
              sub_10008F2F0(&v279, __s1, &v311);
              v72 = v115;
              LODWORD(HashValue) = v114;
              v103 = v311;
              ++DWORD2(v279);
              if (*(v311 + 12))
              {
                goto LABEL_100;
              }

LABEL_99:
              if (*v103 != -1)
              {
                goto LABEL_100;
              }

LABEL_101:
              *v103 = *__s1;
              *(v103 + 16) = v273[0];
              v104 = v282;
              *(v103 + 16) = v282;
              if (v104 >= HIDWORD(v282))
              {
                __s1[0] = v69;
                __s1[1] = __PAIR64__(HashValue, v70);
                v273[0] = v72;
                if (v281 <= __s1 && v281 + 24 * v104 > __s1)
                {
                  v120 = __s1 - v281;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v281, v255, v104 + 1, 24);
                  v117 = v281;
                  v116 = (v281 + v120);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v281, v255, v104 + 1, 24);
                  v116 = __s1;
                  v117 = v281;
                }

                v118 = &v117[24 * v282];
                v119 = *v116;
                *(v118 + 2) = v116[2];
                *v118 = v119;
                v107 = v282 + 1;
                LODWORD(v282) = v282 + 1;
                v105 = v281;
              }

              else
              {
                v105 = v281;
                v106 = v281 + 24 * v104;
                *v106 = v69;
                *(v106 + 2) = v70;
                *(v106 + 3) = HashValue;
                *(v106 + 2) = v72;
                v107 = v282 + 1;
                LODWORD(v282) = v282 + 1;
              }

              v98 = v105[3 * v107 - 1];
              if (*v291 < 5)
              {
                goto LABEL_92;
              }

LABEL_91:
              v98 = (*(v65[1] + 16) != &mlir::detail::TypeIDResolver<void,void>::id) | (2 * v98);
              goto LABEL_92;
            }
          }
        }

        v97 = *(v78 + 16);
        v60 = v256;
        v65 = v257;
        v98 = *(v281 + 3 * v97 + 2);
        if (*v291 >= 5)
        {
          goto LABEL_91;
        }

LABEL_92:
        if (v98 > 0x7F)
        {
          sub_10008EC6C(__src, v98);
          if (++v62 == v60)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v99 = (2 * v98) | 1;
          v100 = __src[1];
          if (__src[1] >= v303[0])
          {
            v108 = __src[0];
            v109 = (__src[1] - __src[0]);
            v110 = __src[1] - __src[0] + 1;
            if (v110 < 0)
            {
LABEL_334:
              sub_100003FC0();
            }

            v111 = v303[0] - __src[0];
            if (2 * (v303[0] - __src[0]) > v110)
            {
              v110 = 2 * v111;
            }

            if (v111 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v112 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v112 = v110;
            }

            if (v112)
            {
              operator new();
            }

            v113 = __src[1] - __src[0];
            *v109 = v99;
            v101 = v109 + 1;
            memcpy(0, v108, v113);
            __src[0] = 0;
            __src[1] = v109 + 1;
            v303[0] = 0;
            if (v108)
            {
              operator delete(v108);
            }
          }

          else
          {
            *__src[1] = v99;
            v101 = v100 + 1;
          }

          __src[1] = v101;
          if (++v62 == v60)
          {
            goto LABEL_58;
          }
        }
      }
    }

LABEL_129:
    sub_10008EF8C(v260, 1, __src);
    v121 = v303[4];
    if (v303[4])
    {
      v122 = v303[5];
      v123 = v303[4];
      if (v303[5] != v303[4])
      {
        v124 = v303[5];
        do
        {
          v126 = *(v124 - 3);
          v124 -= 24;
          v125 = v126;
          if (v126)
          {
            *(v122 - 2) = v125;
            operator delete(v125);
          }

          v122 = v124;
        }

        while (v124 != v121);
        v123 = v303[4];
      }

      v303[5] = v121;
      operator delete(v123);
    }

    if (v303[1])
    {
      v303[2] = v303[1];
      operator delete(v303[1]);
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    memset(v303, 0, sizeof(v303));
    *__src = 0u;
    v304 = 1;
    *v275 = 0u;
    v276 = 0u;
    *v273 = 0u;
    v274 = 0u;
    *__s1 = 0u;
    v277 = 1;
    sub_10008E700(__s1, v286 - v285);
    sub_10008E700(__s1, v290 - v289);
    v127 = v285;
    if (v285 != v286)
    {
      v128 = 0;
      v129 = v286;
      v258 = v286;
      while (1)
      {
        v130 = v127;
        v131 = *v127++;
        v132 = *(v131 + 16);
        if (v127 != v129)
        {
          do
          {
            if (*(*v127 + 16) != v132)
            {
              goto LABEL_148;
            }

            ++v127;
          }

          while (v127 != v129);
          v127 = v129;
        }

LABEL_148:
        sub_10008E700(__s1, *(v132 + 16));
        sub_10008E700(__s1, v127 - v130);
        if (v127 != v130)
        {
          break;
        }

        v133 = v128;
LABEL_143:
        v128 = v133;
        v129 = v258;
        if (v127 == v258)
        {
          goto LABEL_211;
        }
      }

      while (1)
      {
        v134 = *v130;
        v135 = (**v130 & 0xFFFFFFFFFFFFFFF8);
        v136 = *v135;
        if ((atomic_load_explicit(&qword_1002E0560, memory_order_acquire) & 1) == 0)
        {
          sub_100299A54();
        }

        v137 = (v136 + 72);
        v138 = *(v136 + 12);
        if ((v138 & 2) == 0)
        {
          v137 = *v137;
        }

        if (((*(v138 & 0xFFFFFFFFFFFFFFF8))(v137, qword_1002E0558) & 1) == 0)
        {
          v139 = *v135;
          if ((atomic_load_explicit(&qword_1002E0588, memory_order_acquire) & 1) == 0)
          {
            sub_100299A94();
          }

          v140 = (v139 + 72);
          v141 = *(v139 + 12);
          if ((v141 & 2) == 0)
          {
            v140 = *v140;
          }

          if (!(*(v141 & 0xFFFFFFFFFFFFFFF8))(v140, qword_1002E0580))
          {
            break;
          }
        }

        DWORD2(v311) = 0;
        LOBYTE(v315) = 0;
        HIDWORD(v315) = 1;
        v313 = 0;
        v314 = 0;
        v312 = 0;
        *&v311 = &off_1002D5E18;
        v316 = __src;
        llvm::raw_ostream::SetBufferAndMode(&v311, 0, 0, 0);
        v266 = v135;
        mlir::Attribute::print(&v266, &v311);
        llvm::raw_ostream::~raw_ostream(&v311);
        v142 = __src[1];
        if (__src[1] >= v303[0])
        {
          v144 = __src[0];
          v145 = (__src[1] - __src[0]);
          v146 = __src[1] - __src[0] + 1;
          if (v146 < 0)
          {
            goto LABEL_334;
          }

          v147 = v303[0] - __src[0];
          if (2 * (v303[0] - __src[0]) > v146)
          {
            v146 = 2 * v147;
          }

          if (v147 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v148 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v148 = v146;
          }

          if (v148)
          {
            operator new();
          }

          v156 = __src[1] - __src[0];
          *v145 = 0;
          v143 = v145 + 1;
          memcpy(0, v144, v156);
          __src[0] = 0;
          __src[1] = v145 + 1;
          v303[0] = 0;
          if (v144)
          {
            operator delete(v144);
          }
        }

        else
        {
          *__src[1] = 0;
          v143 = v142 + 1;
        }

        v155 = 0;
        __src[1] = v143;
LABEL_196:
        v133 = v303[7] + v143 - __src[0];
        v165 = v155 | (2 * (v133 - v128));
        if (v165 > 0x7F)
        {
          sub_10008EC6C(__s1, v165);
        }

        else
        {
          v166 = (2 * v165) | 1;
          v167 = __s1[1];
          if (__s1[1] >= v273[0])
          {
            v168 = __s1[0];
            v169 = (__s1[1] - __s1[0]);
            v170 = __s1[1] - __s1[0] + 1;
            if (v170 < 0)
            {
              goto LABEL_334;
            }

            v171 = v273[0] - __s1[0];
            if (2 * (v273[0] - __s1[0]) > v170)
            {
              v170 = 2 * v171;
            }

            if (v171 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v172 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v172 = v170;
            }

            if (v172)
            {
              operator new();
            }

            v173 = __s1[1] - __s1[0];
            *v169 = v166;
            memcpy(0, v168, v173);
            __s1[0] = 0;
            __s1[1] = v169 + 1;
            v273[0] = 0;
            if (v168)
            {
              operator delete(v168);
            }

            __s1[1] = v169 + 1;
          }

          else
          {
            *__s1[1] = v166;
            __s1[1] = v167 + 1;
          }
        }

        ++v130;
        v128 = v133;
        if (v130 == v127)
        {
          goto LABEL_143;
        }
      }

      v149 = *v291;
      v266 = off_1002D5D90;
      v267 = v149;
      v268 = __src;
      v269 = v255;
      v270 = &v279;
      v271 = v291 + 16;
      v150 = *(v291 + 64);
      if (v150)
      {
        v151 = *(v291 + 56);
        v152 = 8 * v150;
        while (1)
        {
          v153 = *v151;
          LOBYTE(v311) = 0;
          LOBYTE(v312) = 0;
          if ((*(*v153 + 16))(v153, v135, &v311, &v266))
          {
            break;
          }

          ++v151;
          v152 -= 8;
          if (!v152)
          {
            goto LABEL_176;
          }
        }
      }

      else
      {
LABEL_176:
        v154 = *(v134[2] + 24);
        if (!v154 || ((*(*v154 + 32))(v154, v135, &v266) & 1) == 0)
        {
          DWORD2(v311) = 0;
          LOBYTE(v315) = 0;
          HIDWORD(v315) = 1;
          v313 = 0;
          v314 = 0;
          v312 = 0;
          *&v311 = &off_1002D5E18;
          v316 = __src;
          llvm::raw_ostream::SetBufferAndMode(&v311, 0, 0, 0);
          v278 = v135;
          mlir::Attribute::print(&v278, &v311);
          llvm::raw_ostream::~raw_ostream(&v311);
          v157 = __src[1];
          if (__src[1] >= v303[0])
          {
            v159 = __src[0];
            v160 = (__src[1] - __src[0]);
            v161 = __src[1] - __src[0] + 1;
            if (v161 < 0)
            {
              goto LABEL_334;
            }

            v162 = v303[0] - __src[0];
            if (2 * (v303[0] - __src[0]) > v161)
            {
              v161 = 2 * v162;
            }

            if (v162 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v163 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v161;
            }

            if (v163)
            {
              operator new();
            }

            v164 = __src[1] - __src[0];
            *v160 = 0;
            v158 = v160 + 1;
            memcpy(0, v159, v164);
            __src[0] = 0;
            __src[1] = v160 + 1;
            v303[0] = 0;
            if (v159)
            {
              operator delete(v159);
            }
          }

          else
          {
            *__src[1] = 0;
            v158 = v157 + 1;
          }

          v155 = 0;
          __src[1] = v158;
          goto LABEL_195;
        }
      }

      v155 = 1;
LABEL_195:
      v143 = __src[1];
      goto LABEL_196;
    }

    v133 = 0;
LABEL_211:
    v174 = v289;
    v175 = v290;
    if (v289 == v290)
    {
LABEL_280:
      sub_10008EF8C(v260, 3, __s1);
      sub_10008EF8C(v260, 2, __src);
      v220 = v275[0];
      if (v275[0])
      {
        v221 = v275[1];
        v222 = v275[0];
        if (v275[1] != v275[0])
        {
          v223 = v275[1];
          do
          {
            v225 = *(v223 - 3);
            v223 -= 24;
            v224 = v225;
            if (v225)
            {
              *(v221 - 2) = v224;
              operator delete(v224);
            }

            v221 = v223;
          }

          while (v223 != v220);
          v222 = v275[0];
        }

        v275[1] = v220;
        operator delete(v222);
      }

      if (v273[1])
      {
        *&v274 = v273[1];
        operator delete(v273[1]);
      }

      if (__s1[0])
      {
        __s1[1] = __s1[0];
        operator delete(__s1[0]);
      }

      v226 = v303[4];
      if (v303[4])
      {
        v227 = v303[5];
        v228 = v303[4];
        if (v303[5] != v303[4])
        {
          v229 = v303[5];
          do
          {
            v231 = *(v229 - 3);
            v229 -= 24;
            v230 = v231;
            if (v231)
            {
              *(v227 - 2) = v230;
              operator delete(v230);
            }

            v227 = v229;
          }

          while (v229 != v226);
          v228 = v303[4];
        }

        v303[5] = v226;
        operator delete(v228);
      }

      if (v303[1])
      {
        v303[2] = v303[1];
        operator delete(v303[1]);
      }

      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      memset(&v303[1], 0, 56);
      v304 = 1;
      operator new();
    }

    v259 = v290;
    while (1)
    {
      v176 = v174;
      v177 = *v174++;
      v178 = *(v177 + 16);
      if (v174 != v175)
      {
        do
        {
          if (*(*v174 + 16) != v178)
          {
            goto LABEL_218;
          }

          ++v174;
        }

        while (v174 != v175);
        v174 = v175;
      }

LABEL_218:
      sub_10008E700(__s1, *(v178 + 16));
      sub_10008E700(__s1, v174 - v176);
      if (v174 != v176)
      {
        break;
      }

      v179 = v133;
LABEL_213:
      v133 = v179;
      v175 = v259;
      if (v174 == v259)
      {
        goto LABEL_280;
      }
    }

    while (1)
    {
      v180 = *v176;
      v181 = (**v176 & 0xFFFFFFFFFFFFFFF8);
      v182 = *v181;
      if ((atomic_load_explicit(&qword_1002E0560, memory_order_acquire) & 1) == 0)
      {
        sub_100299A54();
      }

      v183 = (v182 + 72);
      v184 = *(v182 + 12);
      if ((v184 & 2) == 0)
      {
        v183 = *v183;
      }

      if (((*(v184 & 0xFFFFFFFFFFFFFFF8))(v183, qword_1002E0558) & 1) == 0)
      {
        v185 = *v181;
        if ((atomic_load_explicit(&qword_1002E0588, memory_order_acquire) & 1) == 0)
        {
          sub_100299A94();
        }

        v186 = (v185 + 72);
        v187 = *(v185 + 12);
        if ((v187 & 2) == 0)
        {
          v186 = *v186;
        }

        if (!(*(v187 & 0xFFFFFFFFFFFFFFF8))(v186, qword_1002E0580))
        {
          break;
        }
      }

      DWORD2(v311) = 0;
      LOBYTE(v315) = 0;
      HIDWORD(v315) = 1;
      v313 = 0;
      v314 = 0;
      v312 = 0;
      *&v311 = &off_1002D5E18;
      v316 = __src;
      llvm::raw_ostream::SetBufferAndMode(&v311, 0, 0, 0);
      v266 = v181;
      mlir::Type::print(&v266, &v311);
      llvm::raw_ostream::~raw_ostream(&v311);
      v188 = __src[1];
      if (__src[1] >= v303[0])
      {
        v190 = __src[0];
        v191 = (__src[1] - __src[0]);
        v192 = __src[1] - __src[0] + 1;
        if (v192 < 0)
        {
          goto LABEL_334;
        }

        v193 = v303[0] - __src[0];
        if (2 * (v303[0] - __src[0]) > v192)
        {
          v192 = 2 * v193;
        }

        if (v193 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v194 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v194 = v192;
        }

        if (v194)
        {
          operator new();
        }

        v202 = __src[1] - __src[0];
        *v191 = 0;
        v189 = v191 + 1;
        memcpy(0, v190, v202);
        __src[0] = 0;
        __src[1] = v191 + 1;
        v303[0] = 0;
        if (v190)
        {
          operator delete(v190);
        }
      }

      else
      {
        *__src[1] = 0;
        v189 = v188 + 1;
      }

      v201 = 0;
      __src[1] = v189;
LABEL_266:
      v179 = v303[7] + v189 - __src[0];
      v211 = v201 | (2 * (v179 - v133));
      if (v211 > 0x7F)
      {
        sub_10008EC6C(__s1, v211);
      }

      else
      {
        v212 = (2 * v211) | 1;
        v213 = __s1[1];
        if (__s1[1] >= v273[0])
        {
          v214 = __s1[0];
          v215 = (__s1[1] - __s1[0]);
          v216 = __s1[1] - __s1[0] + 1;
          if (v216 < 0)
          {
            goto LABEL_334;
          }

          v217 = v273[0] - __s1[0];
          if (2 * (v273[0] - __s1[0]) > v216)
          {
            v216 = 2 * v217;
          }

          if (v217 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v218 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v218 = v216;
          }

          if (v218)
          {
            operator new();
          }

          v219 = __s1[1] - __s1[0];
          *v215 = v212;
          memcpy(0, v214, v219);
          __s1[0] = 0;
          __s1[1] = v215 + 1;
          v273[0] = 0;
          if (v214)
          {
            operator delete(v214);
          }

          __s1[1] = v215 + 1;
        }

        else
        {
          *__s1[1] = v212;
          __s1[1] = v213 + 1;
        }
      }

      ++v176;
      v133 = v179;
      if (v176 == v174)
      {
        goto LABEL_213;
      }
    }

    v195 = *v291;
    v266 = off_1002D5D90;
    v267 = v195;
    v268 = __src;
    v269 = v255;
    v270 = &v279;
    v271 = v291 + 16;
    v196 = *(v291 + 128);
    if (v196)
    {
      v197 = *(v291 + 120);
      v198 = 8 * v196;
      while (1)
      {
        v199 = *v197;
        LOBYTE(v311) = 0;
        LOBYTE(v312) = 0;
        if ((*(*v199 + 16))(v199, v181, &v311, &v266))
        {
          break;
        }

        ++v197;
        v198 -= 8;
        if (!v198)
        {
          goto LABEL_246;
        }
      }
    }

    else
    {
LABEL_246:
      v200 = *(v180[2] + 24);
      if (!v200 || ((*(*v200 + 40))(v200, v181, &v266) & 1) == 0)
      {
        DWORD2(v311) = 0;
        LOBYTE(v315) = 0;
        HIDWORD(v315) = 1;
        v313 = 0;
        v314 = 0;
        v312 = 0;
        *&v311 = &off_1002D5E18;
        v316 = __src;
        llvm::raw_ostream::SetBufferAndMode(&v311, 0, 0, 0);
        v278 = v181;
        mlir::Type::print(&v278, &v311);
        llvm::raw_ostream::~raw_ostream(&v311);
        v203 = __src[1];
        if (__src[1] >= v303[0])
        {
          v205 = __src[0];
          v206 = (__src[1] - __src[0]);
          v207 = __src[1] - __src[0] + 1;
          if (v207 < 0)
          {
            goto LABEL_334;
          }

          v208 = v303[0] - __src[0];
          if (2 * (v303[0] - __src[0]) > v207)
          {
            v207 = 2 * v208;
          }

          if (v208 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v209 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v209 = v207;
          }

          if (v209)
          {
            operator new();
          }

          v210 = __src[1] - __src[0];
          *v206 = 0;
          v204 = v206 + 1;
          memcpy(0, v205, v210);
          __src[0] = 0;
          __src[1] = v206 + 1;
          v303[0] = 0;
          if (v205)
          {
            operator delete(v205);
          }
        }

        else
        {
          *__src[1] = 0;
          v204 = v203 + 1;
        }

        v201 = 0;
        __src[1] = v204;
        goto LABEL_265;
      }
    }

    v201 = 1;
LABEL_265:
    v189 = __src[1];
    goto LABEL_266;
  }

  LOWORD(v274) = 257;
  mlir::Operation::emitError(__src, this, __s1);
  if (__src[0])
  {
    LODWORD(v311) = 3;
    *(&v311 + 1) = "unsupported version requested ";
    v312 = 30;
    v7 = &v311;
    v8 = v303[1];
    if (LODWORD(v303[2]) >= HIDWORD(v303[2]))
    {
      if (v303[1] <= &v311 && v303[1] + 24 * LODWORD(v303[2]) > &v311)
      {
        v245 = &v311 - v303[1];
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], LODWORD(v303[2]) + 1, 24);
        v8 = v303[1];
        v7 = (v303[1] + v245);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], LODWORD(v303[2]) + 1, 24);
        v7 = &v311;
        v8 = v303[1];
      }
    }

    v9 = &v8[24 * LODWORD(v303[2])];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++LODWORD(v303[2]);
    if (__src[0])
    {
      v12 = *v291;
      LODWORD(v311) = 2;
      *(&v311 + 1) = v12;
      v13 = &v311;
      v14 = v303[1];
      if (v11 >= HIDWORD(v303[2]))
      {
        if (v303[1] <= &v311 && v303[1] + 24 * v11 > &v311)
        {
          v246 = &v311 - v303[1];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v11 + 1, 24);
          v14 = v303[1];
          v13 = (v303[1] + v246);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v11 + 1, 24);
          v13 = &v311;
          v14 = v303[1];
        }
      }

      v15 = &v14[24 * LODWORD(v303[2])];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++LODWORD(v303[2]);
      if (__src[0])
      {
        LODWORD(v311) = 3;
        *(&v311 + 1) = ", must be in range [";
        v312 = 20;
        v18 = &v311;
        v19 = v303[1];
        if (v17 >= HIDWORD(v303[2]))
        {
          if (v303[1] <= &v311 && v303[1] + 24 * v17 > &v311)
          {
            v247 = &v311 - v303[1];
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v17 + 1, 24);
            v19 = v303[1];
            v18 = (v303[1] + v247);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v17 + 1, 24);
            v18 = &v311;
            v19 = v303[1];
          }
        }

        v20 = &v19[24 * LODWORD(v303[2])];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++LODWORD(v303[2]);
        if (__src[0])
        {
          LODWORD(v311) = 2;
          *(&v311 + 1) = 0;
          v23 = &v311;
          v24 = v303[1];
          if (v22 >= HIDWORD(v303[2]))
          {
            if (v303[1] <= &v311 && v303[1] + 24 * v22 > &v311)
            {
              v248 = &v311 - v303[1];
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v22 + 1, 24);
              v24 = v303[1];
              v23 = (v303[1] + v248);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v22 + 1, 24);
              v23 = &v311;
              v24 = v303[1];
            }
          }

          v25 = &v24[24 * LODWORD(v303[2])];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          v27 = ++LODWORD(v303[2]);
          if (__src[0])
          {
            LODWORD(v311) = 3;
            *(&v311 + 1) = ", ";
            v312 = 2;
            v28 = &v311;
            v29 = v303[1];
            if (v27 >= HIDWORD(v303[2]))
            {
              if (v303[1] <= &v311 && v303[1] + 24 * v27 > &v311)
              {
                v249 = &v311 - v303[1];
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v27 + 1, 24);
                v29 = v303[1];
                v28 = (v303[1] + v249);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v27 + 1, 24);
                v28 = &v311;
                v29 = v303[1];
              }
            }

            v30 = &v29[24 * LODWORD(v303[2])];
            v31 = *v28;
            *(v30 + 2) = *(v28 + 2);
            *v30 = v31;
            v32 = ++LODWORD(v303[2]);
            if (__src[0])
            {
              LODWORD(v311) = 2;
              *(&v311 + 1) = 6;
              v33 = &v311;
              v34 = v303[1];
              if (v32 >= HIDWORD(v303[2]))
              {
                if (v303[1] <= &v311 && v303[1] + 24 * v32 > &v311)
                {
                  v250 = &v311 - v303[1];
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v32 + 1, 24);
                  v34 = v303[1];
                  v33 = (v303[1] + v250);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v303[1], &v303[3], v32 + 1, 24);
                  v33 = &v311;
                  v34 = v303[1];
                }
              }

              v35 = &v34[24 * LODWORD(v303[2])];
              v36 = *v33;
              *(v35 + 2) = *(v33 + 2);
              *v35 = v36;
              ++LODWORD(v303[2]);
              if (__src[0])
              {
                mlir::Diagnostic::operator<<(&__src[1], 93);
              }
            }
          }
        }
      }
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
  if (__src[0])
  {
    mlir::InFlightDiagnostic::report(__src);
  }

  if (v310 == 1)
  {
    if (v309 != &v310)
    {
      free(v309);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v308;
      v40 = __p;
      if (v308 != __p)
      {
        do
        {
          v39 = sub_10005BEF4(v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v308 = v38;
      operator delete(v40);
    }

    v41 = v305;
    if (v305)
    {
      v42 = v306;
      v43 = v305;
      if (v306 != v305)
      {
        do
        {
          v44 = *--v42;
          *v42 = 0;
          if (v44)
          {
            operator delete[]();
          }
        }

        while (v42 != v41);
        v43 = v305;
      }

      v306 = v41;
      operator delete(v43);
    }

    if (v303[1] != &v303[3])
    {
      free(v303[1]);
    }
  }

  v232 = v263[0];
  if (v263[0])
  {
    v233 = v263[1];
    v234 = v263[0];
    if (v263[1] != v263[0])
    {
      v235 = v263[1];
      do
      {
        v237 = *(v235 - 3);
        v235 -= 24;
        v236 = v237;
        if (v237)
        {
          *(v233 - 2) = v236;
          operator delete(v236);
        }

        v233 = v235;
      }

      while (v235 != v232);
      v234 = v263[0];
    }

    v263[1] = v232;
    operator delete(v234);
  }

  if (v261[1])
  {
    *&v262 = v261[1];
    operator delete(v261[1]);
  }

  if (v260[0])
  {
    v260[1] = v260[0];
    operator delete(v260[0]);
  }

  llvm::deallocate_buffer(v297, (24 * v298), 8uLL);
  if (v294 != v296)
  {
    free(v294);
  }

  v238 = v292;
  if (v292)
  {
    v239 = v293;
    v240 = v292;
    if (v293 != v292)
    {
      v241 = v293;
      do
      {
        v243 = *(v241 - 3);
        v241 -= 24;
        v242 = v243;
        if (v243)
        {
          *(v239 - 2) = v242;
          operator delete(v242);
        }

        v239 = v241;
      }

      while (v241 != v238);
      v240 = v292;
    }

    *&v293 = v238;
    operator delete(v240);
  }

  sub_10009677C(v255);
  if (v281 != v255)
  {
    free(v281);
  }

  llvm::deallocate_buffer(v279, (24 * v280), 8uLL);
  return v37;
}

void sub_10008E700(void *a1, unint64_t a2)
{
  if (a2 > 0x7F)
  {

    sub_10008EC6C(a1, a2);
  }

  else
  {
    v2 = (2 * a2) | 1;
    v4 = a1[1];
    v3 = a1[2];
    if (v4 >= v3)
    {
      v5 = *a1;
      v6 = &v4[-*a1];
      v7 = (v6 + 1);
      if ((v6 + 1) < 0)
      {
        sub_100003FC0();
      }

      v8 = v3 - v5;
      if (2 * v8 > v7)
      {
        v7 = 2 * v8;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v7;
      }

      if (v9)
      {
        operator new();
      }

      *a1;
      *v6 = v2;
      memcpy(0, v5, v6);
      *a1 = 0;
      a1[1] = v6 + 1;
      a1[2] = 0;
      if (v5)
      {
        operator delete(v5);
      }

      a1[1] = v6 + 1;
    }

    else
    {
      *v4 = v2;
      a1[1] = v4 + 1;
    }
  }
}

void sub_10008E830(uint64_t a1, char *__src, int64_t a3)
{
  sub_10008E93C(a1, *(a1 + 8), __src, &__src[a3], a3);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 < v4)
  {
    *v5 = 0;
    v6 = v5 + 1;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = &v5[-*a1];
  v9 = (v8 + 1);
  if ((v8 + 1) < 0)
  {
    sub_100003FC0();
  }

  v10 = v4 - v7;
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    operator new();
  }

  v12 = &v5[-*a1];
  *v8 = 0;
  v6 = v8 + 1;
  memcpy(0, v7, v12);
  *a1 = 0;
  *(a1 + 8) = v8 + 1;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

char *sub_10008E93C(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 - v9) >= a5)
  {
    v15 = v9 - __dst;
    if ((v9 - __dst) >= a5)
    {
      v23 = &__dst[a5];
      v24 = (v9 - a5);
      v25 = *(a1 + 8);
      if (v9 >= a5)
      {
        if (a5 <= 0x1F)
        {
          goto LABEL_55;
        }

        v24 += a5 & 0x7FFFFFFFFFFFFFE0;
        v25 = (v9 + (a5 & 0x7FFFFFFFFFFFFFE0));
        v26 = (v9 + 16);
        v27 = (v9 + 16 - a5);
        v28 = a5 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v29 = *v27;
          *(v26 - 1) = *(v27 - 1);
          *v26 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 32;
        }

        while (v28);
        if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
        {
LABEL_55:
          do
          {
            v30 = *v24++;
            *v25++ = v30;
          }

          while (v24 != v9);
        }
      }

      *(a1 + 8) = v25;
      if (v9 != v23)
      {
        v31 = __src;
        memmove(v23, __dst, v9 - v23);
        __src = v31;
      }

      v32 = v5;
      v33 = __src;
      v34 = a5;
      goto LABEL_50;
    }

    v16 = &__src[v15];
    if (&__src[v15] == a4)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v17 = &__dst[a4] - __src - v9;
      if (v17 < 0x20)
      {
        v18 = *(a1 + 8);
      }

      else
      {
        v18 = *(a1 + 8);
        if ((__dst - __src) >= 0x20)
        {
          v16 += v17 & 0xFFFFFFFFFFFFFFE0;
          v18 = (v9 + (v17 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &__src[v9 + 16 - __dst];
          v21 = v17 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v20;
            *(v19 - 1) = *(v20 - 1);
            *v19 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 32;
          }

          while (v21);
          if (v17 == (v17 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_34;
          }
        }
      }

      do
      {
        v39 = *v16++;
        *v18++ = v39;
      }

      while (v16 != a4);
    }

LABEL_34:
    *(a1 + 8) = v18;
    if (v15 < 1)
    {
      return v5;
    }

    v40 = &__dst[a5];
    v41 = &v18[-a5];
    if (&v18[-a5] >= v9)
    {
      v44 = v18;
    }

    else
    {
      v42 = v9 + a5 - v18;
      v43 = v42 >= 0x20 && a5 > 0x1F;
      v44 = v18;
      if (!v43)
      {
        goto LABEL_56;
      }

      v41 += v42 & 0xFFFFFFFFFFFFFFE0;
      v44 = &v18[v42 & 0xFFFFFFFFFFFFFFE0];
      v45 = v18 + 16;
      v46 = &v18[-a5 + 16];
      v47 = v42 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v48 = *v46;
        *(v45 - 1) = *(v46 - 1);
        *v45 = v48;
        v45 += 2;
        v46 += 2;
        v47 -= 32;
      }

      while (v47);
      if (v42 != (v42 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_56:
        do
        {
          v49 = *v41++;
          *v44++ = v49;
        }

        while (v41 != v9);
      }
    }

    *(a1 + 8) = v44;
    if (v18 != v40)
    {
      v50 = __src;
      memmove(v40, __dst, v18 - v40);
      __src = v50;
    }

    v32 = v5;
    v33 = __src;
    v34 = v9 - v5;
LABEL_50:
    memmove(v32, v33, v34);
    return v5;
  }

  v10 = *a1;
  v11 = v9 - *a1 + a5;
  if (v11 < 0)
  {
    sub_100003FC0();
  }

  v12 = (__dst - v10);
  v13 = v8 - v10;
  if (2 * v13 > v11)
  {
    v11 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    operator new();
  }

  v35 = (__dst - v10);
  memcpy(v12, __src, a5);
  v36 = &v12[a5];
  v37 = v9 - v5;
  memcpy(v36, v5, v9 - v5);
  *(a1 + 8) = v5;
  v38 = &v12[v10 - v5];
  memcpy(v38, v10, v35);
  *a1 = v38;
  *(a1 + 8) = &v36[v37];
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v12;
}

char *sub_10008EC6C(void *a1, unint64_t a2)
{
  v3 = a1;
  if (!(a2 >> 14))
  {
    v13 = &v17 + 2;
    v15 = 2;
LABEL_29:
    v17 = ((2 * a2) | 1) << (v15 - 1);
    v14 = a1[1];
    return sub_10008E93C(a1, v14, &v17, v13, v15);
  }

  if (a2 < 0x200000)
  {
    v13 = &v17 + 3;
    v15 = 3;
    goto LABEL_29;
  }

  if (!(a2 >> 28))
  {
    v13 = &v17 + 4;
    v15 = 4;
    goto LABEL_29;
  }

  if (!(a2 >> 35))
  {
    v13 = &v17 + 5;
    v15 = 5;
    goto LABEL_29;
  }

  if (!(a2 >> 42))
  {
    v13 = &v17 + 6;
    v15 = 6;
    goto LABEL_29;
  }

  if (!(a2 >> 49))
  {
    v13 = &v17 + 7;
    v15 = 7;
    goto LABEL_29;
  }

  if (!HIBYTE(a2))
  {
    v13 = &v18;
    v15 = 8;
    goto LABEL_29;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      sub_100003FC0();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = &v5[-*a1];
    *v8 = 0;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *v3 = 0;
    v3[1] = v8 + 1;
    v3[2] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = 0;
    v6 = v5 + 1;
  }

  v3[1] = v6;
  v17 = a2;
  v13 = &v18;
  a1 = v3;
  v14 = v6;
  v15 = 8;
  return sub_10008E93C(a1, v14, &v17, v13, v15);
}

uint64_t sub_10008EE5C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(a2, a3);
  v7 = *(a1 + 32);
  *&v12 = a2;
  *(&v12 + 1) = __PAIR64__(HashValue, v3);
  v13 = v7;
  v15 = v12;
  v16 = 0;
  sub_10008F1D4(a1, &v15, &v16, &v17);
  if (v18 != 1)
  {
    return *(*(a1 + 24) + 24 * *(v17 + 16) + 16);
  }

  v8 = *(a1 + 32);
  *(v17 + 16) = v8;
  v14 = &v13;
  *&v15 = &v12;
  if (v8 >= *(a1 + 36))
  {
    sub_10008F74C(a1 + 24, &std::piecewise_construct, &v15, &v14);
    v10 = *(a1 + 32);
  }

  else
  {
    v9 = *(a1 + 24) + 24 * v8;
    *v9 = v12;
    *(v9 + 16) = v13;
    v10 = *(a1 + 32) + 1;
    *(a1 + 32) = v10;
  }

  return *(*(a1 + 24) + 24 * v10 - 8);
}

void sub_10008EF8C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = &v6[-*a1];
  v8 = *(a1 + 16);
  if (v6 >= v8)
  {
    v10 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_100003FC0();
    }

    v11 = v8 - v5;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    *a1;
    *v7 = a2;
    v9 = v7 + 1;
    memcpy(0, v5, v7);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v6 = a2;
    v9 = v6 + 1;
  }

  *(a1 + 8) = v9;
  sub_10008E700(a1, *(a3 + 72) + *(a3 + 8) - *a3);
  v13 = *(a3 + 80);
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v13 < 2)
  {
LABEL_16:
    if (v14 == v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (((*(a1 + 72) + v15 - v14) & (*(a3 + 80) - 1)) != 0)
  {
    sub_10008E700(a1, *(a3 + 80));
    sub_1000906E0(a1, v13);
    v7[*a1] |= 0x80u;
    v14 = *a1;
    v15 = *(a1 + 8);
    goto LABEL_16;
  }

  v21 = *(a1 + 80);
  if (v21 <= v13)
  {
    v21 = *(a3 + 80);
  }

  *(a1 + 80) = v21;
  if (v14 != v15)
  {
LABEL_17:
    sub_10009058C(a1 + 48, a1);
    sub_10009046C(a1, *(*(a1 + 56) - 24), *(*(a1 + 56) - 16) - *(*(a1 + 56) - 24));
  }

LABEL_18:
  v16 = *(a3 + 48);
  for (i = *(a3 + 56); v16 != i; v16 += 24)
  {
    sub_10009058C(a1 + 48, v16);
  }

  sub_100090834(a1 + 24, *(a1 + 32), *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 4);
  *(a1 + 72) += *(a3 + 72);
  if (*a3 != *(a3 + 8))
  {
    sub_10009058C(a1 + 48, a3);
    v18 = *(a1 + 56);
    v19 = *(v18 - 24);
    v20 = *(v18 - 16) - v19;

    sub_10009046C(a1, v19, v20);
  }
}

uint64_t sub_10008F1D4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = sub_10008F2F0(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*(v9 + 12))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_10008F500(a1, v12);
    result = sub_10008F2F0(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*(v9 + 12))
    {
      goto LABEL_7;
    }

LABEL_6:
    if (*v9 == -1)
    {
LABEL_8:
      *v9 = *a2;
      *(v9 + 16) = *a3;
      v10 = 1;
      goto LABEL_9;
    }

LABEL_7:
    --*(a1 + 12);
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_10008F2F0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = 0;
    v5 = *a1;
    v19 = xmmword_1002B0D70;
    v20 = xmmword_1002B02F0;
    v6 = v3 - 1;
    v7 = 1;
    v8 = *(a2 + 12) & (v3 - 1);
    v9 = v5 + 24 * v8;
    if (*(a2 + 12) != *(v9 + 12))
    {
      goto LABEL_12;
    }

LABEL_3:
    v10 = *a2;
    if (*v9 == -2)
    {
      if (v10 != -2)
      {
        goto LABEL_12;
      }
    }

    else if (*v9 == -1)
    {
      if (v10 != -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = *(a2 + 8);
      if (v11 != *(v9 + 8) || v11 && (v12 = a2, v13 = a3, v14 = memcmp(v10, *v9, v11), a2 = v12, a3 = v13, v14))
      {
LABEL_12:
        while (1)
        {
          v15 = a2;
          v16 = a3;
          if (sub_10008F470(v9, &v20))
          {
            break;
          }

          if ((sub_10008F470(v9, &v19) & (v4 == 0)) != 0)
          {
            v4 = v9;
          }

          v17 = v8 + v7++;
          a2 = v15;
          a3 = v16;
          v8 = v17 & v6;
          v9 = v5 + 24 * (v17 & v6);
          if (*(v15 + 12) == *(v9 + 12))
          {
            goto LABEL_3;
          }
        }

        result = 0;
        if (v4)
        {
          v9 = v4;
        }

        a3 = v16;
        goto LABEL_18;
      }
    }

    result = 1;
LABEL_18:
    *a3 = v9;
    return result;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t sub_10008F470(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v3 = *a1;
  v5 = *a2;
  if (v5 == -2)
  {
    return v3 == -2;
  }

  if (v5 == -1)
  {
    return v3 == -1;
  }

  v7 = *(a1 + 8);
  if (v7 != *(a2 + 8))
  {
    return 0;
  }

  if (v7)
  {
    return memcmp(v3, v5, v7) == 0;
  }

  return 1;
}

void sub_10008F500(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x18)
    {
      v25 = v14 / 0x18 + 1;
      v15 = (buffer + 24 * (v25 & 0x1FFFFFFFFFFFFFFELL));
      v26 = buffer;
      v27 = v25 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v26 = xmmword_1002B02F0;
        *(v26 + 24) = xmmword_1002B02F0;
        v26 += 3;
        v27 -= 2;
      }

      while (v27);
      if (v25 == (v25 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v28 = (buffer + 24 * v13);
    do
    {
      *v15 = xmmword_1002B02F0;
      v15 = (v15 + 24);
    }

    while (v15 != v28);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (buffer + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = buffer;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1002B02F0;
        *(v17 + 24) = xmmword_1002B02F0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v19 = (buffer + 24 * v10);
    do
    {
      *v12 = xmmword_1002B02F0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
  }

LABEL_16:
  v20 = 3 * v3;
  if (v3)
  {
    v21 = 24 * v3;
    v22 = v4;
    while (1)
    {
      v24 = *(v22 + 12);
      if (v24 != 1)
      {
        break;
      }

      if (*v22 != -2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v22 += 24;
      v21 -= 24;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    if (!v24 && *v22 == -1)
    {
      goto LABEL_20;
    }

LABEL_19:
    v29 = 0;
    sub_10008F2F0(a1, v22, &v29);
    v23 = v29;
    *v29 = *v22;
    *(v23 + 4) = *(v22 + 16);
    ++*(a1 + 8);
    goto LABEL_20;
  }

LABEL_25:
  llvm::deallocate_buffer(v4, (8 * v20), 8uLL);
}

uint64_t sub_10008F74C(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t **a4)
{
  v4 = *a4;
  v14 = **a3;
  v15 = *v4;
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = &v14;
  if (v5 >= *(a1 + 12))
  {
    if (v6 <= &v14 && v6 + 24 * v5 > &v14)
    {
      v12 = &v14 - v6;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 24);
      a1 = v13;
      v6 = *v13;
      v7 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 24);
      a1 = v11;
      v6 = *v11;
      v7 = &v14;
    }
  }

  v8 = v6 + 24 * *(a1 + 8);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 24 * v8 - 24;
}

void sub_10008F850(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = a2;
  v4 = sub_10008FF48(v2, &v5);
  sub_10008E700(v3, *(*v4 + 8));
}

void sub_10008F894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v2 = *(a1 + 24);
    v15 = a2;
    v4 = sub_10008FF48(v2, &v15);
    sub_10008E700(v3, (2 * *(*v4 + 8)) | 1);
  }

  else
  {
    v5 = *(a1 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = &v7[-*v5];
      v11 = (v10 + 1);
      if ((v10 + 1) < 0)
      {
        sub_100003FC0();
      }

      v12 = v6 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v14 = &v7[-*v5];
      *v10 = 1;
      v8 = v10 + 1;
      memcpy(0, v9, v14);
      *v5 = 0;
      *(v5 + 8) = v10 + 1;
      *(v5 + 16) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = 1;
      v8 = v7 + 1;
    }

    *(v5 + 8) = v8;
  }
}

void sub_10008F9CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = a2;
  v4 = sub_10008FF48(v2 + 72, &v5);
  sub_10008E700(v3, *(*v4 + 8));
}

void sub_10008FA14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = *(*sub_1000900B4(*(a1 + 24) + 232, a2) + 24);

  sub_10008E700(v2, v3);
}

void sub_10008FA70(uint64_t a1, llvm::APInt *this)
{
  v3 = *(this + 2);
  if (v3 > 8)
  {
    if (v3 > 0x40)
    {
      v15 = this;
      v16 = llvm::APInt::countLeadingZerosSlowCase(this);
      if (v3 == v16)
      {
        v17 = 1;
      }

      else
      {
        v17 = ((v3 + ~v16) >> 6) + 1;
      }

      sub_10008E700(*(a1 + 16), v17);
      if (*(v15 + 2) >= 0x41u)
      {
        v15 = *v15;
      }

      do
      {
        v18 = *v15;
        v15 = (v15 + 8);
        sub_10008E700(*(a1 + 16), (2 * v18) ^ (v18 >> 63));
        --v17;
      }

      while (v17);
    }

    else
    {
      v8 = *(a1 + 16);
      v9 = (2 * *this) ^ (*this >> 63);

      sub_10008E700(v8, v9);
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *this;
    v7 = *(v4 + 8);
    v6 = *(v4 + 16);
    if (v7 >= v6)
    {
      v10 = *v4;
      v11 = &v7[-*v4];
      v12 = (v11 + 1);
      if ((v11 + 1) < 0)
      {
        sub_100003FC0();
      }

      v13 = v6 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      v19 = &v7[-*v4];
      *v11 = v5;
      memcpy(0, v10, v19);
      *v4 = 0;
      *(v4 + 8) = v11 + 1;
      *(v4 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      *(v4 + 8) = v11 + 1;
    }

    else
    {
      *v7 = v5;
      *(v4 + 8) = v7 + 1;
    }
  }
}

uint64_t sub_10008FC18(llvm::APFloatBase *a1, llvm::detail::DoubleAPFloat *a2)
{
  v4 = *a2;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v6);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(a2, &v6);
  }

  result = (*(*a1 + 64))(a1, &v6);
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_10008FCC8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = sub_10008EE5C(*(a1 + 32), a2, a3);

  sub_10008E700(v3, v4);
}

void sub_10008FD08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_10008E700(*(a1 + 16), a3);
  v6 = *(a1 + 16);
  if (*v6 != v6[1])
  {
    sub_10009058C((v6 + 6), v6);
    sub_10009046C(v6, *(v6[7] - 24), *(v6[7] - 16) - *(v6[7] - 24));
  }

  sub_10009046C(v6, a2, a3);
}

void sub_10008FD90(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  if (v4 < v3)
  {
    *v4 = a2;
    v5 = v4 + 1;
LABEL_3:
    *(v2 + 8) = v5;
    return;
  }

  v6 = *v2;
  v7 = &v4[-*v2];
  v8 = (v7 + 1);
  if ((v7 + 1) < 0)
  {
    sub_100003FC0();
  }

  v9 = v3 - v6;
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    operator new();
  }

  v11 = &v4[-*v2];
  *v7 = a2;
  v5 = v7 + 1;
  memcpy(0, v6, v11);
  *v2 = 0;
  *(v2 + 8) = v7 + 1;
  *(v2 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(v2 + 8) = v5;
}

uint64_t sub_10008FE9C(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey(v6, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = *v6 + 8 * v9;
  if (v10 == **(a1 + 40) + 8 * *(*(a1 + 40) + 8))
  {
    return 0;
  }

  else
  {
    return *(*v10 + 8);
  }
}

void *sub_10008FF48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    sub_100081B28(a1, v2);
    sub_1000414FC(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void *sub_1000900B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 3;
    }

    v9 = 0;
    v10 = 1;
    while (v5 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v5 == -8192;
      }

      if (v11)
      {
        v9 = v4;
      }

      v12 = v3 + v10++;
      v3 = v12 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 3;
      }
    }

    if (v9)
    {
      v4 = v9;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    sub_100090228(a1, v2);
    sub_100088204(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v4 = v15;
    ++*(v14 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v8 = a2[2];
  *v4 = *a2;
  v4[2] = v8;
  v4[3] = 0;
  return v4 + 3;
}

void sub_100090228(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((32 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
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
      v10 = &buffer[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = buffer + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *(v13 - 3) = -4096;
        *v13 = -4096;
        v13[1] = -4096;
        *(v13 - 2) = 0;
        v13[2] = 0;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[4 * v11];
        do
        {
          *v10 = -4096;
          v10[1] = -4096;
          v10[2] = 0;
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
          v22 = (*a1 + 32 * v26);
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
              v22 = (*a1 + 32 * v26);
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
          v23 = *v16;
          v22[2] = *(v16 + 2);
          *v22 = v23;
          v22[3] = *(v16 + 3);
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
      v19 = buffer + 4;
      v20 = v18 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 4) = -4096;
        *(v19 - 3) = -4096;
        *v19 = -4096;
        v19[1] = -4096;
        *(v19 - 2) = 0;
        v19[2] = 0;
        v19 += 8;
        v20 -= 2;
      }

      while (v20);
      if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v21 = &buffer[4 * v17];
        do
        {
          *v10 = -4096;
          v10[1] = -4096;
          v10[2] = 0;
          v10 += 4;
        }

        while (v10 != v21);
      }
    }
  }
}

void sub_10009046C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    a1[9] += a3;
    v4 = a1[4];
    v5 = a1[5];
    if (v4 >= v5)
    {
      v7 = a1[3];
      v8 = v4 - v7;
      v9 = v8 >> 4;
      v10 = (v8 >> 4) + 1;
      if (v10 >> 60)
      {
        sub_100003FC0();
      }

      v11 = v5 - v7;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 60))
        {
          operator new();
        }

        sub_100003FC0();
      }

      v13 = (16 * v9);
      *v13 = a2;
      v13[1] = a3;
      v6 = 16 * v9 + 16;
      memcpy(0, v7, v8);
      a1[3] = 0;
      a1[4] = v6;
      a1[5] = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v4 = a2;
      *(v4 + 1) = a3;
      v6 = (v4 + 16);
    }

    a1[4] = v6;
  }
}

uint64_t sub_10009058C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100003FC0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_100003FC0();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = v10 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
  return v5 - 24;
}

void sub_1000906E0(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    v4 = *(a1 + 8);
    v5 = &v4[*(a1 + 72)];
    v6 = v5 != *a1;
    v7 = &v5[-*a1];
    v8 = &v7[-v6] / a2;
    if (v7)
    {
      ++v8;
    }

    for (i = v8 * a2 - v7; i; --i)
    {
      v10 = *(a1 + 16);
      if (v4 < v10)
      {
        *v4++ = -53;
      }

      else
      {
        v11 = *a1;
        v12 = &v4[-*a1];
        v13 = (v12 + 1);
        if ((v12 + 1) < 0)
        {
          sub_100003FC0();
        }

        v14 = v10 - v11;
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          operator new();
        }

        v16 = &v4[-*a1];
        *v12 = -53;
        v4 = v12 + 1;
        memcpy(0, v11, v16);
        *a1 = 0;
        *(a1 + 8) = v12 + 1;
        *(a1 + 16) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      *(a1 + 8) = v4;
    }

    v17 = *(a1 + 80);
    if (v17 <= a2)
    {
      v17 = a2;
    }

    *(a1 + 80) = v17;
  }
}

char *sub_100090834(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      sub_100003FC0();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      sub_100003FC0();
    }

    v28 = 16 * ((__dst - v10) >> 4);
    v29 = 16 * a5;
    v30 = v28 + 16 * a5;
    v31 = v28;
    do
    {
      v32 = *v6;
      v6 += 16;
      *v31++ = v32;
      v29 -= 16;
    }

    while (v29);
    v33 = *(a1 + 8) - __dst;
    memcpy((v28 + 16 * a5), __dst, v33);
    v34 = v30 + v33;
    *(a1 + 8) = v5;
    v35 = *a1;
    v36 = &v5[-*a1];
    v37 = v28 - v36;
    memcpy((v28 - v36), *a1, v36);
    *a1 = v37;
    *(a1 + 8) = v34;
    *(a1 + 16) = 0;
    if (v35)
    {
      operator delete(v35);
    }

    return v28;
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 4;
  if (v15 >= a5)
  {
    v14 = 16 * a5;
    v24 = &__dst[16 * a5];
    v25 = (v9 - 16 * a5);
    for (i = *(a1 + 8); v25 < v9; ++i)
    {
      v27 = *v25++;
      *i = v27;
    }

    *(a1 + 8) = i;
    if (v9 != v24)
    {
      memmove(&__dst[16 * a5], __dst, v9 - v24);
    }

    goto LABEL_28;
  }

  v16 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v17 = a5;
    v18 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v18;
    a5 = v17;
  }

  v19 = (v9 + v16);
  *(a1 + 8) = v9 + v16;
  if (v15 >= 1)
  {
    v20 = &v5[16 * a5];
    v21 = v9 + v16;
    if (&v19[-16 * a5] < v9)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -16 * a5];
      do
      {
        *(v22 - v6) = *(v23 - v6);
        v23 += 16;
        v22 += 16;
      }

      while (v23 - v6 < v9);
      v21 = v22 - v6;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[16 * a5], v5, v19 - v20);
    }

    if (v9 != v5)
    {
LABEL_28:
      memmove(v5, v6, v14);
    }
  }

  return v5;
}

uint64_t sub_100090A90()
{
  if ((atomic_load_explicit(&qword_1002E0578, memory_order_acquire) & 1) == 0)
  {
    sub_100299AD4();
  }

  return qword_1002E0568;
}

const char *sub_100090AD8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::StorageUserTrait::IsMutable<Empty>]";
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

uint64_t sub_100090B58()
{
  if ((atomic_load_explicit(&qword_1002E05A0, memory_order_acquire) & 1) == 0)
  {
    sub_100299B28();
  }

  return qword_1002E0590;
}

void sub_100090BA4(llvm::raw_ostream *a1)
{
  llvm::raw_ostream::~raw_ostream(a1);

  operator delete();
}

BOOL sub_100090C0C(uint64_t a1, void *a2, uint64_t a3)
{
  *&v95 = *(a3 + 48);
  v6 = sub_10008FF48(a1 + 88, &v95);
  sub_10008E700(a2, *(*v6 + 16));
  v7 = a2[9];
  v8 = *a2;
  v9 = a2[1];
  v82 = 0;
  v10 = a2[2];
  if (v9 >= v10)
  {
    v12 = v9 - v8 + 1;
    if (v12 < 0)
    {
      sub_100003FC0();
    }

    v13 = v10 - v8;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    *(v9 - v8) = 0;
    v11 = v9 - v8 + 1;
    memcpy(0, v8, v9 - v8);
    *a2 = 0;
    a2[1] = v11;
    a2[2] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v9 = 0;
    v11 = (v9 + 1);
  }

  a2[1] = v11;
  *&v95 = *(a3 + 24);
  v15 = sub_10008FF48(a1 + 40, &v95);
  sub_10008E700(a2, *(*v15 + 8));
  AttrDictionary = sub_100091514(a3);
  if (**(a1 + 984) < 5 || !*(a3 + 47))
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(a3);
  }

  if (mlir::DictionaryAttr::size(&AttrDictionary))
  {
    v16 = 1;
    v82 = 1;
    *&v95 = AttrDictionary;
    v17 = sub_10008FF48(a1 + 40, &v95);
    sub_10008E700(a2, *(*v17 + 8));
    if (**(a1 + 984) < 5)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v16 = 0;
    if (**(a1 + 984) < 5)
    {
      goto LABEL_46;
    }
  }

  if (!HIBYTE(*(a3 + 44)))
  {
    goto LABEL_46;
  }

  if (*(*(a3 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v32 = *(a3 + 16 * ((*(a3 + 44) >> 23) & 1) + 64);
    if (!v32)
    {
      goto LABEL_46;
    }

    __p = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v100 = 1;
    v33 = *(a1 + 1104);
    v87 = v32;
    v34 = sub_10008FF48(v33, &v87);
    sub_10008E700(&v95, *(*v34 + 8));
    *(a1 + 1024) = 0;
    LODWORD(v88) = 2;
    v92 = 0;
    v93 = 1;
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v87 = off_1002D4A48;
    v94 = a1 + 1016;
    llvm::raw_ostream::SetBufferAndMode(&v87, 0, 0, 0);
    (v87[2])(&v87, *(&v99 + 1) + *(&v95 + 1) - v95);
    v35 = *(&v96 + 1);
    v36 = v97;
    while (v35 != v36)
    {
      v37 = *v35;
      v38 = *(v35 + 8);
      v35 += 16;
      llvm::raw_ostream::write(&v87, v37, v38);
    }

    llvm::raw_ostream::write(&v87, v95, *(&v95 + 1) - v95);
    v25 = sub_1000924FC(a1 + 992, *(a1 + 1016), *(a1 + 1024));
    llvm::raw_ostream::~raw_ostream(&v87);
    v26 = __p;
    if (!__p)
    {
      goto LABEL_41;
    }

    v39 = *(&__p + 1);
    v28 = __p;
    if (*(&__p + 1) == __p)
    {
      goto LABEL_40;
    }

    v40 = *(&__p + 1);
    do
    {
      v42 = *(v40 - 24);
      v40 -= 24;
      v41 = v42;
      if (v42)
      {
        *(v39 - 16) = v41;
        operator delete(v41);
      }

      v39 = v40;
    }

    while (v40 != v26);
    goto LABEL_39;
  }

  __p = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v100 = 1;
  v18 = *(a1 + 1120);
  v19 = *v18;
  v84[0] = off_1002D5D90;
  v84[1] = v19;
  v84[2] = &v95;
  v85 = *(a1 + 1104);
  v86 = v18 + 2;
  v20 = sub_100093088(a3);
  v83[0] = a3;
  v83[1] = v20;
  mlir::BytecodeOpInterface::writeProperties(v83, v84);
  *(a1 + 1024) = 0;
  LODWORD(v88) = 2;
  v92 = 0;
  v93 = 1;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  v87 = off_1002D4A48;
  v94 = a1 + 1016;
  llvm::raw_ostream::SetBufferAndMode(&v87, 0, 0, 0);
  (v87[2])(&v87, *(&v99 + 1) + *(&v95 + 1) - v95);
  v21 = *(&v96 + 1);
  v22 = v97;
  while (v21 != v22)
  {
    v23 = *v21;
    v24 = *(v21 + 8);
    v21 += 16;
    llvm::raw_ostream::write(&v87, v23, v24);
  }

  llvm::raw_ostream::write(&v87, v95, *(&v95 + 1) - v95);
  v25 = sub_1000924FC(a1 + 992, *(a1 + 1016), *(a1 + 1024));
  llvm::raw_ostream::~raw_ostream(&v87);
  v26 = __p;
  if (!__p)
  {
    goto LABEL_41;
  }

  v27 = *(&__p + 1);
  v28 = __p;
  if (*(&__p + 1) != __p)
  {
    v29 = *(&__p + 1);
    do
    {
      v31 = *(v29 - 24);
      v29 -= 24;
      v30 = v31;
      if (v31)
      {
        *(v27 - 16) = v30;
        operator delete(v30);
      }

      v27 = v29;
    }

    while (v29 != v26);
LABEL_39:
    v28 = __p;
  }

LABEL_40:
  *(&__p + 1) = v26;
  operator delete(v28);
LABEL_41:
  if (*(&v96 + 1))
  {
    *&v97 = *(&v96 + 1);
    operator delete(*(&v96 + 1));
  }

  if (v95)
  {
    *(&v95 + 1) = v95;
    operator delete(v95);
  }

  v16 |= 0x40u;
  v82 = v16;
  sub_10008E700(a2, v25);
LABEL_46:
  v43 = *(a3 + 36);
  if (v43)
  {
    v16 |= 2u;
    v82 = v16;
    sub_10008E700(a2, v43);
    v44 = *(a3 + 36);
    v45 = (a3 - 16);
    if (!v44)
    {
      v45 = 0;
    }

    v87 = v45;
    v88 = v44;
    mlir::ResultRange::getTypes(&v87, &v95);
    v46 = *(&v95 + 1);
    v47 = *(&v96 + 1);
    if (*(&v95 + 1) != *(&v96 + 1))
    {
      v48 = v95;
      do
      {
        v87 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v48, v46) + 8) & 0xFFFFFFFFFFFFFFF8);
        v49 = sub_10008FF48(a1 + 112, &v87);
        sub_10008E700(a2, *(*v49 + 8));
        ++v46;
      }

      while (v47 != v46);
    }
  }

  if ((*(a3 + 46) & 0x80) != 0)
  {
    v50 = *(a3 + 68);
    if (v50)
    {
      v16 |= 4u;
      v82 = v16;
      sub_10008E700(a2, v50);
      if ((*(a3 + 46) & 0x80) != 0)
      {
        v51 = *(a3 + 68);
        if (v51)
        {
          v52 = (*(a3 + 72) + 24);
          do
          {
            v53 = *v52;
            v52 += 4;
            *&v95 = v53;
            v54 = sub_100093334(a1 + 896, &v95);
            sub_10008E700(a2, *v54);
            --v51;
          }

          while (v51);
        }
      }
    }
  }

  v55 = *(a3 + 40);
  if (v55)
  {
    v82 = v16 | 8;
    sub_10008E700(a2, v55);
    mlir::SuccessorRange::SuccessorRange(&v95, a3);
    v56 = *(&v95 + 1);
    if (*(&v95 + 1))
    {
      v57 = (v95 + 24);
      do
      {
        v58 = *v57;
        v57 += 4;
        *&v95 = v58;
        v59 = sub_1000400B4(a1 + 872, &v95);
        sub_10008E700(a2, *v59);
        --v56;
      }

      while (v56);
    }
  }

  if (**(a1 + 984) >= 3)
  {
    v60 = *(a3 + 36);
    if (v60)
    {
      v61 = a3 - 16;
    }

    else
    {
      v61 = 0;
    }

    mlir::ValueRange::ValueRange(&v95, v61, v60);
    sub_100091610(a1, a2, &v82, v95, *(&v95 + 1));
  }

  v62 = &v9[v7] - v8;
  v63 = *(a3 + 44);
  v64 = *&v63 & 0x7FFFFFLL;
  if ((v63 & 0x7FFFFF) == 0)
  {
    *(*a2 + v62 - a2[9]) = v82;
    return 1;
  }

  *(*a2 + v62 - a2[9]) = v82 | 0x10;
  *&v95 = a3;
  v65 = sub_10008FF48(a1 + 64, &v95);
  if (*(*v65 + 5))
  {
    v66 = *(*v65 + 4);
    sub_10008E700(a2, v66 | (2 * v64));
    if (v66 == 1 && **(a1 + 984) >= 2)
    {
      __p = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v95 = 0u;
      v100 = 1;
      v67 = *(a3 + 44);
      v68 = v67 & 0x7FFFFF;
      if ((v67 & 0x7FFFFF) != 0)
      {
        v69 = (((a3 + 16 * ((v67 >> 23) & 1) + ((v67 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 40));
      }

      else
      {
        v69 = 0;
        v68 = 0;
      }

      v87 = a1;
      v88 = &v95;
      v73 = sub_100094EA4(v69, &v69[3 * v68], &v87);
      v74 = v73;
      if (v73)
      {
        sub_10008EF8C(a2, 4, &v95);
      }

      v75 = __p;
      if (__p)
      {
        v76 = *(&__p + 1);
        v77 = __p;
        if (*(&__p + 1) != __p)
        {
          v78 = *(&__p + 1);
          do
          {
            v80 = *(v78 - 24);
            v78 -= 24;
            v79 = v80;
            if (v80)
            {
              *(v76 - 16) = v79;
              operator delete(v79);
            }

            v76 = v78;
          }

          while (v78 != v75);
          v77 = __p;
        }

        *(&__p + 1) = v75;
        operator delete(v77);
      }

      if (*(&v96 + 1))
      {
        *&v97 = *(&v96 + 1);
        operator delete(*(&v96 + 1));
      }

      if (v95)
      {
        *(&v95 + 1) = v95;
        operator delete(v95);
      }

      return (v74 & 1) != 0;
    }
  }

  else
  {
    sub_10008E700(a2, 2 * v64);
  }

  v70 = *(a3 + 44);
  if ((v70 & 0x7FFFFF) != 0)
  {
    v71 = (((a3 + 16 * ((v70 >> 23) & 1) + ((v70 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 40));
    *&v95 = a1;
    *(&v95 + 1) = a2;
    if (sub_100094EA4(v71, &v71[3 * (v70 & 0x7FFFFF)], &v95))
    {
      return 1;
    }
  }

  else
  {
    *&v95 = a1;
    *(&v95 + 1) = a2;
    if (sub_100094EA4(0, 0, &v95))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100091514(uint64_t a1)
{
  if (*(a1 + 47))
  {
    return *(a1 + 56);
  }

  Context = mlir::Attribute::getContext((a1 + 24));
  sub_1000921B8(a1, v5);
  v12[0] = v5[0];
  v12[1] = v5[1];
  v13 = v6;
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v14 = v16;
  v15 = 0x300000000;
  sub_1000922D8(&v14, v12, v10);
  result = mlir::DictionaryAttr::get(Context, v14, v15);
  if (v14 != v16)
  {
    v4 = result;
    free(v14);
    return v4;
  }

  return result;
}

void sub_100091610(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v159 = 0;
  v160 = a4;
  v161 = 0;
  if (!a5)
  {
    goto LABEL_185;
  }

  v6 = a5;
  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = mlir::ValueRange::dereference_iterator(&v160, v10);
    v12 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }

    if (!*v12)
    {
      goto LABEL_3;
    }

    v13 = v11;
    __dst = v12[2];
    v14 = **sub_10008FF48(a1 + 64, &__dst);
    v15 = mlir::OpOperand::getOperandNumber(v12) | (v14 << 32);
    __dst = &v157;
    v157 = 0;
    v158 = v15;
    v156 = 0x300000001;
    v16 = **v13;
    if (!v16)
    {
      goto LABEL_3;
    }

    v17 = v5 & 0xFFFFFFFF00000000;
    v18 = 1;
    v19 = 1;
    do
    {
      v20 = *(v16 + 2);
      v21 = *(a1 + 80);
      if (!v21)
      {
        v31 = (4 * *(a1 + 72) + 4);
LABEL_31:
        v21 *= 2;
LABEL_32:
        sub_100081B28(a1 + 64, v21);
        v39 = *(a1 + 80);
        if (v39)
        {
          v40 = *(a1 + 64);
          v41 = v39 - 1;
          v42 = (v39 - 1) & ((v20 >> 4) ^ (v20 >> 9));
          v25 = (v40 + 16 * v42);
          v43 = *v25;
          if (v20 != *v25)
          {
            v44 = 0;
            v45 = 1;
            while (v43 != -4096)
            {
              if (v44)
              {
                v46 = 0;
              }

              else
              {
                v46 = v43 == -8192;
              }

              if (v46)
              {
                v44 = v25;
              }

              v47 = v42 + v45++;
              v42 = v47 & v41;
              v25 = (v40 + 16 * (v47 & v41));
              v43 = *v25;
              if (v20 == *v25)
              {
                goto LABEL_44;
              }
            }

            if (v44)
            {
              v25 = v44;
            }
          }
        }

        else
        {
          v25 = 0;
        }

LABEL_44:
        ++*(a1 + 72);
        if (*v25 == -4096)
        {
          goto LABEL_23;
        }

LABEL_22:
        --*(a1 + 76);
        goto LABEL_23;
      }

      v22 = *(a1 + 64);
      v23 = v21 - 1;
      v24 = ((v20 >> 4) ^ (v20 >> 9)) & (v21 - 1);
      v25 = (v22 + 16 * v24);
      v26 = *v25;
      if (v20 == *v25)
      {
        goto LABEL_24;
      }

      v27 = 0;
      v28 = 1;
      while (v26 != -4096)
      {
        if (v27)
        {
          v29 = 0;
        }

        else
        {
          v29 = v26 == -8192;
        }

        if (v29)
        {
          v27 = v25;
        }

        v30 = v24 + v28++;
        v24 = v30 & v23;
        v25 = (v22 + 16 * (v30 & v23));
        v26 = *v25;
        if (v20 == *v25)
        {
          goto LABEL_24;
        }
      }

      if (v27)
      {
        v25 = v27;
      }

      v38 = *(a1 + 72);
      if (4 * v38 + 4 >= 3 * v21)
      {
        goto LABEL_31;
      }

      if (v21 + ~v38 - *(a1 + 76) <= v21 >> 3)
      {
        goto LABEL_32;
      }

      *(a1 + 72) = v38 + 1;
      if (*v25 != -4096)
      {
        goto LABEL_22;
      }

LABEL_23:
      *v25 = v20;
      v25[1] = 0;
LABEL_24:
      v32 = *v25[1];
      v33 = mlir::OpOperand::getOperandNumber(v16) | (v32 << 32);
      v34 = v15 > v33;
      v35 = v156;
      if (v156 >= HIDWORD(v156))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v157, v156 + 1, 16);
        v35 = v156;
      }

      v18 &= v34;
      v5 = v19 | v17;
      v36 = (__dst + 16 * v35);
      *v36 = v5;
      v36[1] = v33;
      v37 = (v156 + 1);
      LODWORD(v156) = v156 + 1;
      ++v19;
      v16 = *v16;
      v15 = v33;
    }

    while (v16);
    v48 = __dst;
    if ((v18 & 1) == 0)
    {
      v49 = 126 - 2 * __clz(v37);
      if (v37)
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      sub_100093748(__dst, __dst + 4 * v37, v50, 1);
      v150 = v9;
      v48 = __dst;
      v51 = v156;
      v52 = v153;
      v6 = a5;
      if (v153)
      {
        v53 = (v153 - 1) & (37 * v9);
        v54 = (v151 + 72 * v53);
        v55 = *v54;
        if (*v54 == v9)
        {
          goto LABEL_85;
        }

        v56 = 0;
        v57 = 1;
        while (v55 != -1)
        {
          if (v56)
          {
            v58 = 0;
          }

          else
          {
            v58 = v55 == -2;
          }

          if (v58)
          {
            v56 = v54;
          }

          v59 = v53 + v57++;
          v53 = v59 & (v153 - 1);
          v54 = (v151 + 72 * v53);
          v55 = *v54;
          if (*v54 == v9)
          {
            goto LABEL_85;
          }
        }

        if (v56)
        {
          v60 = v56;
        }

        else
        {
          v60 = v54;
        }
      }

      else
      {
        v60 = 0;
      }

      v154 = v60;
      v61 = __dst;
      if (4 * v152 + 4 >= 3 * v153)
      {
        v52 = 2 * v153;
      }

      else if (v153 + ~v152 - HIDWORD(v152) > v153 >> 3)
      {
        LODWORD(v152) = v152 + 1;
        if (*v60 == -1)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      sub_100094A24(&v151, v52);
      sub_100094980(&v151, &v150, &v154);
      v60 = v154;
      LODWORD(v152) = v152 + 1;
      if (*v154 == -1)
      {
LABEL_70:
        *v60 = v150;
        *(v60 + 1) = v60 + 6;
        v62 = (v60 + 2);
        *(v60 + 2) = 0xC00000000;
        if (v51 < 0xD)
        {
          if (!v51)
          {
            v84 = 0;
LABEL_84:
            v60[4] = v84 + v51;
            v48 = __dst;
            goto LABEL_85;
          }

          v63 = 0;
          v64 = *v62;
          v65 = *v62;
          v66 = (v51 - 1) & 0xFFFFFFFFFFFFFFFLL;
          if (v66 < 0xC)
          {
            goto LABEL_72;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((v60 + 2), v60 + 6, v51, 4);
          v63 = v60[4];
          v64 = *v62;
          v65 = (*v62 + 4 * v63);
          v66 = (v51 - 1) & 0xFFFFFFFFFFFFFFFLL;
          if (v66 < 0xC)
          {
LABEL_72:
            v67 = v61;
            do
            {
LABEL_82:
              v83 = *v67;
              v67 += 16;
              v65->i32[0] = v83;
              v65 = (v65 + 4);
            }

            while (v67 != &v61[16 * v51]);
            v84 = v60[4];
            goto LABEL_84;
          }
        }

        if (v65 >= &v61[16 * v66 + 8] || (v68 = v64->u64 + 4 * v63 + 4 * v66 + 4, v67 = v61, v61 >= v68))
        {
          v69 = v66 + 1;
          v70 = (v66 + 1) & 7;
          if (!v70)
          {
            v70 = 8;
          }

          v71 = v69 - v70;
          v72 = (v65 + 4 * v71);
          v67 = &v61[16 * v71];
          v73 = (v61 + 64);
          v74 = v65 + 1;
          do
          {
            v75 = v73 - 8;
            v76 = vld2q_f64(v75);
            v77 = v73 - 4;
            v78 = vld2q_f64(v77);
            v79 = v73 + 16;
            v81 = vld2q_f64(v73);
            v80 = v73 + 4;
            v82 = vld2q_f64(v80);
            v74[-1] = vuzp1q_s32(v76, v78);
            *v74 = vuzp1q_s32(v81, v82);
            v74 += 2;
            v73 = v79;
            v71 -= 8;
          }

          while (v71);
          v65 = v72;
        }

        goto LABEL_82;
      }

LABEL_69:
      --HIDWORD(v152);
      goto LABEL_70;
    }

    v6 = a5;
LABEL_85:
    if (v48 != &v157)
    {
      free(v48);
    }

LABEL_3:
    v9 = v159 + 1;
    v10 = v161 + 1;
    ++v159;
    v161 = v10;
    if (v10 != v6)
    {
      continue;
    }

    break;
  }

  v85 = v152;
  if (v152)
  {
    *a3 |= 0x20u;
    if (a5 != 1)
    {
      sub_10008E700(a2, v85);
    }

    if (v152)
    {
      if (v153)
      {
        v86 = 72 * v153;
        j = v151;
        while (*j >= 0xFFFFFFFE)
        {
          j = (j + 72);
          v86 -= 72;
          if (!v86)
          {
            goto LABEL_185;
          }
        }
      }

      else
      {
        j = v151;
      }

      if (j != (v151 + 72 * v153))
      {
        v146 = vdupq_n_s64(2uLL);
        v148 = (v151 + 72 * v153);
        do
        {
          v88 = 0;
          v89 = *j;
          __dst = &v157;
          v156 = 0xC00000000;
          if (&__dst == (j + 8))
          {
            v91 = 0;
            goto LABEL_123;
          }

          v90 = *(j + 4);
          v91 = 0;
          if (!*(j + 4))
          {
            goto LABEL_123;
          }

          v92 = &v157;
          v93 = *(j + 4);
          if (v90 >= 0xD)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v157, *(j + 4), 4);
            v93 = *(j + 4);
            if (!v93)
            {
              goto LABEL_113;
            }

            v92 = __dst;
          }

          memcpy(v92, *(j + 1), 4 * v93);
LABEL_113:
          LODWORD(v156) = v90;
          v94 = (v90 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          if (v94 < 3)
          {
            v91 = 0;
            v95 = 0;
            v96 = __dst;
            do
            {
LABEL_119:
              v106 = *v96++;
              if (v95 != v106)
              {
                ++v91;
              }

              ++v95;
            }

            while (v96 != (__dst + 4 * v90));
            goto LABEL_122;
          }

          v97 = v94 + 1;
          v95 = (v94 + 1) & 0x7FFFFFFFFFFFFFFCLL;
          v96 = (__dst + 4 * v95);
          v98 = __dst + 8;
          v99 = 0uLL;
          v100 = v95;
          v101 = 0uLL;
          v102 = xmmword_1002B0D80;
          do
          {
            v103 = *(v98 - 1);
            v104.i64[0] = v103;
            v104.i64[1] = HIDWORD(v103);
            v105 = v104;
            v104.i64[0] = *v98;
            v104.i64[1] = HIDWORD(*v98);
            v99 = vsubq_s64(v99, vmvnq_s8(vceqq_s64(v102, v105)));
            v101 = vsubq_s64(v101, vmvnq_s8(vceqq_s64(vaddq_s64(v102, v146), v104)));
            v102 = vaddq_s64(v102, vdupq_n_s64(4uLL));
            v98 += 2;
            v100 -= 4;
          }

          while (v100);
          v91 = vaddvq_s64(vaddq_s64(v101, v99));
          if (v97 != v95)
          {
            goto LABEL_119;
          }

LABEL_122:
          v88 = v90 >> 1;
LABEL_123:
          if (a5 != 1)
          {
            sub_10008E700(a2, v89);
          }

          if (v91 >= v88)
          {
            sub_10008E700(a2, 2 * v156);
            if (v156)
            {
              v129 = __dst;
              v130 = 4 * v156;
              do
              {
                v131 = *v129;
                if (v131 > 0x7F)
                {
                  sub_10008EC6C(a2, v131);
                }

                else
                {
                  v132 = (2 * v131) | 1;
                  v134 = a2[1];
                  v133 = a2[2];
                  if (v134 >= v133)
                  {
                    v135 = *a2;
                    v136 = &v134[-*a2];
                    v137 = (v136 + 1);
                    if ((v136 + 1) < 0)
                    {
LABEL_194:
                      sub_100003FC0();
                    }

                    v138 = v133 - v135;
                    if (2 * v138 > v137)
                    {
                      v137 = 2 * v138;
                    }

                    if (v138 >= 0x3FFFFFFFFFFFFFFFLL)
                    {
                      v139 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v139 = v137;
                    }

                    if (v139)
                    {
                      operator new();
                    }

                    v140 = &v134[-*a2];
                    *v136 = v132;
                    memcpy(0, v135, v140);
                    *a2 = 0;
                    a2[1] = v136 + 1;
                    a2[2] = 0;
                    if (v135)
                    {
                      operator delete(v135);
                    }

                    a2[1] = v136 + 1;
                  }

                  else
                  {
                    *v134 = v132;
                    a2[1] = v134 + 1;
                  }
                }

                ++v129;
                v130 -= 4;
              }

              while (v130);
            }
          }

          else
          {
            sub_10008E700(a2, (4 * v91) | 1);
            if (v156)
            {
              v107 = 0;
              v108 = __dst;
              for (i = 4 * v156; i; i -= 4)
              {
                v110 = v108[v107];
                if (v107 == v110)
                {
                  goto LABEL_129;
                }

                if (v110 > 0x7F)
                {
                  sub_10008EC6C(a2, v110);
                  if (v107 > 0x7F)
                  {
                    goto LABEL_128;
                  }
                }

                else
                {
                  v111 = (2 * v110) | 1;
                  v113 = a2[1];
                  v112 = a2[2];
                  if (v113 >= v112)
                  {
                    v114 = *a2;
                    v115 = &v113[-*a2];
                    v116 = (v115 + 1);
                    if ((v115 + 1) < 0)
                    {
                      goto LABEL_194;
                    }

                    v117 = v112 - v114;
                    if (2 * v117 > v116)
                    {
                      v116 = 2 * v117;
                    }

                    if (v117 >= 0x3FFFFFFFFFFFFFFFLL)
                    {
                      v118 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v118 = v116;
                    }

                    if (v118)
                    {
                      operator new();
                    }

                    v119 = &v113[-*a2];
                    *v115 = v111;
                    memcpy(0, v114, v119);
                    *a2 = 0;
                    a2[1] = v115 + 1;
                    a2[2] = 0;
                    if (v114)
                    {
                      operator delete(v114);
                    }

                    a2[1] = v115 + 1;
                    if (v107 > 0x7F)
                    {
LABEL_128:
                      sub_10008EC6C(a2, v107);
                      goto LABEL_129;
                    }
                  }

                  else
                  {
                    *v113 = v111;
                    a2[1] = v113 + 1;
                    if (v107 > 0x7F)
                    {
                      goto LABEL_128;
                    }
                  }
                }

                v120 = (2 * v107) | 1;
                v122 = a2[1];
                v121 = a2[2];
                if (v122 >= v121)
                {
                  v123 = *a2;
                  v124 = &v122[-*a2];
                  v125 = (v124 + 1);
                  if ((v124 + 1) < 0)
                  {
                    goto LABEL_194;
                  }

                  v126 = v121 - v123;
                  if (2 * v126 > v125)
                  {
                    v125 = 2 * v126;
                  }

                  if (v126 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v127 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v127 = v125;
                  }

                  if (v127)
                  {
                    operator new();
                  }

                  v128 = &v122[-*a2];
                  *v124 = v120;
                  memcpy(0, v123, v128);
                  *a2 = 0;
                  a2[1] = v124 + 1;
                  a2[2] = 0;
                  if (v123)
                  {
                    operator delete(v123);
                  }

                  a2[1] = v124 + 1;
                }

                else
                {
                  *v122 = v120;
                  a2[1] = v122 + 1;
                }

LABEL_129:
                ++v107;
              }
            }
          }

          if (__dst != &v157)
          {
            free(__dst);
          }

          for (j = (j + 72); j != v148; j = (j + 72))
          {
            if (*j < 0xFFFFFFFE)
            {
              break;
            }
          }
        }

        while (j != v148);
      }
    }
  }

LABEL_185:
  v141 = v151;
  if (v153)
  {
    v142 = 72 * v153;
    v143 = v151 + 24;
    do
    {
      if (*(v143 - 6) <= 0xFFFFFFFD)
      {
        v144 = *(v143 - 2);
        if (v143 != v144)
        {
          free(v144);
        }
      }

      v143 += 72;
      v142 -= 72;
    }

    while (v142);
    v141 = v151;
    v145 = 72 * v153;
  }

  else
  {
    v145 = 0;
  }

  llvm::deallocate_buffer(v141, v145, 8uLL);
}

uint64_t sub_1000921B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    result = mlir::DictionaryAttr::getValue((a1 + 56));
    v8 = result;
    v10 = (result + 16 * v14);
    v5 = 0;
    if (!v14)
    {
LABEL_17:
      v6 = 0;
      goto LABEL_18;
    }

    v11 = a1 + 44;
LABEL_15:
    v15 = v8[1];
    *&v16 = *v8;
    *(&v16 + 1) = v15;
    if (!*(v11 + 3))
    {
      result = mlir::NamedAttribute::getName(&v16);
    }

    goto LABEL_17;
  }

  v5 = *(v4 + 96);
  v6 = *(v4 + 104);
  result = mlir::DictionaryAttr::getValue((a1 + 56));
  v8 = result;
  v10 = (result + 16 * v9);
  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = a1 + 44;
  if (!v6)
  {
    goto LABEL_15;
  }

  v12 = 8 * v6;
  while (1)
  {
    v16 = *v8;
    if (*(a1 + 47))
    {
      break;
    }

    result = mlir::NamedAttribute::getName(&v16);
    v13 = 0;
    while (*(v5 + v13) != result)
    {
      v13 += 8;
      if (v12 == v13)
      {
        goto LABEL_18;
      }
    }

    if (v12 == v13)
    {
      break;
    }

    v8 += 2;
    if (v8 == v10)
    {
      v8 = v10;
      break;
    }
  }

LABEL_18:
  *a2 = v8;
  a2[1] = v10;
  a2[2] = a1;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v10;
  a2[6] = v10;
  a2[7] = a1;
  a2[8] = v5;
  a2[9] = v6;
  return result;
}

void sub_1000922D8(uint64_t a1, __int128 **a2, __int128 **a3)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 == *a3)
  {
    v11 = 0;
  }

  else
  {
    v8 = a2[4];
    v9 = a2[1];
    v10 = a2[2];
    v11 = 0;
    if (v8)
    {
      v12 = a2[3];
      v13 = 8 * v8;
      do
      {
        do
        {
          if (++v6 == v9)
          {
            break;
          }

          v32 = *v6;
          if (*(v10 + 47))
          {
            break;
          }

          Name = mlir::NamedAttribute::getName(&v32);
          v15 = v13;
          v16 = v12;
          while (*v16 != Name)
          {
            v16 = (v16 + 8);
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_10;
            }
          }
        }

        while (v15);
LABEL_10:
        ++v11;
      }

      while (v6 != v7);
    }

    else
    {
      v29 = v6 + 1;
      do
      {
        if (v29 != v9)
        {
          v32 = *v29;
          if (!*(v10 + 47))
          {
            mlir::NamedAttribute::getName(&v32);
          }
        }

        ++v11;
        v30 = v29++ == v7;
      }

      while (!v30);
    }
  }

  v17 = v11 + *(a1 + 8);
  if (v17 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17, 16);
  }

  v18 = *a2;
  v19 = *a3;
  if (*a2 != v19)
  {
    v20 = (*a1 + 16 * *(a1 + 8));
    v21 = a2[4];
    v22 = a2[1];
    v23 = a2[2];
    if (v21)
    {
      v24 = a2[3];
      v25 = 8 * v21;
      do
      {
        *v20 = *v18;
        do
        {
          if (++v18 == v22)
          {
            break;
          }

          v32 = *v18;
          if (*(v23 + 47))
          {
            break;
          }

          v26 = mlir::NamedAttribute::getName(&v32);
          v27 = v25;
          v28 = v24;
          while (*v28 != v26)
          {
            v28 = (v28 + 8);
            v27 -= 8;
            if (!v27)
            {
              goto LABEL_18;
            }
          }
        }

        while (v27);
LABEL_18:
        ++v20;
      }

      while (v18 != v19);
    }

    else
    {
      v31 = v18 + 1;
      do
      {
        *v20 = *(v31 - 1);
        if (v31 != v22)
        {
          v32 = *v31;
          if (!*(v23 + 47))
          {
            mlir::NamedAttribute::getName(&v32);
          }
        }

        ++v20;
        v30 = v31++ == v19;
      }

      while (!v30);
    }
  }

  *(a1 + 8) += v11;
}