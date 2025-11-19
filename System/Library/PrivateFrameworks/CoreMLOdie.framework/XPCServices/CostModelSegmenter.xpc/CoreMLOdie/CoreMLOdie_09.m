BOOL mlir::detail::Parser::parseFloatFromLiteral(uint64_t a1, llvm::detail::IEEEFloat *a2, mlir::Token *this, int a4, void *a5)
{
  if (*this != 10)
  {
    if (*this == 9)
    {
      v10 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue(this));
      if (v11)
      {
        v12 = v10;
        if (a4)
        {
          v12 = -v10;
        }

        v46[0] = v12;
        sub_10006A230(a2, v46);
        LOBYTE(v46[0]) = 0;
        v13 = 1;
        llvm::APFloat::convert(a2, a5, 1, v46);
        return v13;
      }

      Loc = mlir::Token::getLoc(this);
      v42 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, v41, v46);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v46);
      }

      if (*&v46[0])
      {
        v43 = 3;
        v44 = "floating point value too large";
        v45 = 30;
        v30 = &v43;
        v31 = v47;
        if (v48 >= v49)
        {
          if (v47 <= &v43 && v47 + 24 * v48 > &v43)
          {
            v40 = &v43 - v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
            v31 = v47;
            v30 = (v47 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
            v30 = &v43;
            v31 = v47;
          }
        }

        v32 = &v31[24 * v48];
        v33 = *v30;
        *(v32 + 2) = *(v30 + 2);
        *v32 = v33;
        ++v48;
      }

      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
      if (*&v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }

      if (v56 != 1)
      {
        return v13;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v54;
        v36 = __p;
        if (v54 != __p)
        {
          do
          {
            v35 = sub_100052FFC(v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v54 = v34;
        operator delete(v36);
      }

      v24 = v51;
      if (!v51)
      {
LABEL_54:
        if (v47 != v50)
        {
          free(v47);
        }

        return v13;
      }

      v37 = v52;
      v26 = v51;
      if (v52 == v51)
      {
LABEL_53:
        v52 = v24;
        operator delete(v26);
        goto LABEL_54;
      }

      do
      {
        v38 = *--v37;
        *v37 = 0;
        if (v38)
        {
          operator delete[]();
        }
      }

      while (v37 != v24);
    }

    else
    {
      v15 = mlir::Token::getLoc(this);
      v42 = 257;
      v16 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v15);
      mlir::emitError(v16, v41, v46);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v46);
      }

      if (*&v46[0])
      {
        v43 = 3;
        v44 = "expected floating point literal";
        v45 = 31;
        v17 = &v43;
        v18 = v47;
        if (v48 >= v49)
        {
          if (v47 <= &v43 && v47 + 24 * v48 > &v43)
          {
            v39 = &v43 - v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
            v18 = v47;
            v17 = (v47 + v39);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
            v17 = &v43;
            v18 = v47;
          }
        }

        v19 = &v18[24 * v48];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v48;
      }

      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
      if (*&v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }

      if (v56 != 1)
      {
        return v13;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v54;
        v23 = __p;
        if (v54 != __p)
        {
          do
          {
            v22 = sub_100052FFC(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v54 = v21;
        operator delete(v23);
      }

      v24 = v51;
      if (!v51)
      {
        goto LABEL_54;
      }

      v25 = v52;
      v26 = v51;
      if (v52 == v51)
      {
        goto LABEL_53;
      }

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
    }

    v26 = v51;
    goto LABEL_53;
  }

  return mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, a2, this, a4, a5);
}

llvm::detail::IEEEFloat *sub_10006A230(llvm::detail::IEEEFloat *a1, double *a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
    {
      sub_100029F40(a1);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(a1);
    }

    *(a1 + 24) = 0;
  }

  v5 = llvm::detail::IEEEFloat::IEEEFloat(v8, *a2);
  v6 = llvm::APFloatBase::IEEEdouble(v5);
  llvm::APFloat::Storage::Storage(a1, v8, v6);
  llvm::detail::IEEEFloat::~IEEEFloat(v8);
  *(a1 + 24) = 1;
  return a1;
}

BOOL mlir::detail::Parser::parseFloatFromIntegerLiteral(uint64_t a1, llvm::detail::IEEEFloat *a2, mlir::Token *this, int a4, uint64_t a5)
{
  v6 = *(this + 2);
  if (v6 < 2 || (v7 = *(this + 1), *(v7 + 1) != 120))
  {
    Loc = mlir::Token::getLoc(this);
    v43[0] = "unexpected decimal integer literal for a floating point value";
    v44 = 259;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, v43, &v47);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v47);
    }

    mlir::Diagnostic::attachNote(&v48, 0, 0);
  }

  if (a4)
  {
    v8 = mlir::Token::getLoc(this);
    v43[0] = "hexadecimal float literal should not have a leading minus";
    v44 = 259;
    v9 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v8);
    mlir::emitError(v9, v43, &v47);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v47);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
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

      v11 = __p;
      if (__p)
      {
        v12 = v54;
        v13 = __p;
        if (v54 != __p)
        {
          do
          {
            v12 = sub_100052FFC(v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v54 = v11;
        operator delete(v13);
      }

      v14 = v51;
      if (v51)
      {
        v15 = v52;
        v16 = v51;
        if (v52 != v51)
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
          v16 = v51;
        }

        v52 = v14;
        operator delete(v16);
      }

      if (v49 != v50)
      {
        free(v49);
      }
    }

    return v10;
  }

  LODWORD(v46) = 1;
  v45 = 0;
  v47 = v7;
  v48 = v6;
  llvm::StringRef::getAsInteger(&v47, 0, &v45);
  v24 = a5;
  v25 = llvm::APFloatBase::semanticsSizeInBits(a5);
  v26 = v25;
  v27 = v46;
  if (v46 <= 0x40)
  {
    if (64 - __clz(v45) <= v25)
    {
      v28 = llvm::APInt::APInt(&v47, v25, (v46 + 63) >> 6, &v45);
      if ((*(a2 + 24) & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_56:
      v41 = *a2;
      v42 = llvm::APFloatBase::PPCDoubleDouble(v28);
      if (v42 == v41)
      {
        sub_100029F40(a2);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(a2);
      }

      *(a2 + 24) = 0;
      v30 = v24;
      v31 = a2;
      if (v42 != v24)
      {
        goto LABEL_34;
      }

LABEL_64:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v31, v30);
    }

LABEL_37:
    v32 = mlir::Token::getLoc(this);
    v43[0] = "hexadecimal float constant out of range for type";
    v44 = 259;
    v33 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v32);
    mlir::emitError(v33, v43, &v47);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v47);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
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

      v34 = __p;
      if (__p)
      {
        v35 = v54;
        v36 = __p;
        if (v54 != __p)
        {
          do
          {
            v35 = sub_100052FFC(v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v54 = v34;
        operator delete(v36);
      }

      v37 = v51;
      if (v51)
      {
        v38 = v52;
        v39 = v51;
        if (v52 != v51)
        {
          do
          {
            v40 = *--v38;
            *v38 = 0;
            if (v40)
            {
              operator delete[]();
            }
          }

          while (v38 != v37);
          v39 = v51;
        }

        v52 = v37;
        operator delete(v39);
      }

      if (v49 != v50)
      {
        free(v49);
      }
    }

    goto LABEL_68;
  }

  if (v27 - llvm::APInt::countLeadingZerosSlowCase(&v45) > v25)
  {
    goto LABEL_37;
  }

  v28 = llvm::APInt::APInt(&v47, v26, (v27 + 63) >> 6, v45);
  if (*(a2 + 24))
  {
    goto LABEL_56;
  }

LABEL_33:
  v29 = llvm::APFloatBase::PPCDoubleDouble(v28);
  v30 = v24;
  v31 = a2;
  if (v29 == v24)
  {
    goto LABEL_64;
  }

LABEL_34:
  llvm::detail::IEEEFloat::IEEEFloat(v31, v30, &v47);
  *(a2 + 24) = 1;
  if (v48 >= 0x41 && v47)
  {
    operator delete[]();
  }

  v10 = 1;
LABEL_68:
  if (v46 >= 0x41 && v45)
  {
    operator delete[]();
  }

  return v10;
}

BOOL mlir::detail::Parser::parseOptionalKeyword(mlir::detail::Parser *this, llvm::StringRef *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v7 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v3 = *(this + 1);
    a2 = v7;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v9);
    v6 = *(this + 1);
    *(v6 + 56) = v9;
    *(v6 + 72) = v10;
    return 1;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseOptionalKeywordOrString(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  v6 = v5 == 3 || v5 == 12;
  if (v6 || (isKeyword = mlir::Token::isKeyword((v4 + 56)), v4 = *(a1 + 8), isKeyword))
  {
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = v7;
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &__dst);
    *(*(a1 + 8) + 56) = __dst;
    if (v8)
    {
      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10002BC08();
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v7;
      if (v7)
      {
        memmove(&__dst, v8, v7);
      }

      __dst.__r_.__value_.__s.__data_[v7] = 0;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_24:
        *a2 = __dst;
        return 1;
      }
    }

    operator delete(*a2);
    goto LABEL_24;
  }

  if (*(v4 + 56) == 11)
  {
    if (a2)
    {
      mlir::Token::getStringValue((v4 + 56), &__dst);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __dst;
      v4 = *(a1 + 8);
    }

    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &__dst);
    *(*(a1 + 8) + 56) = __dst;
    return 1;
  }

  return 0;
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  if (mlir::detail::Parser::parseOptionalKeywordOrString(a1, a3))
  {
    v8 = sub_10006B258(*(*(a1 + 1) + 104) + 48, &v55);
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    v12 = llvm::StringMapImpl::hash(v10, v11);
    v13 = sub_10007F5CC(v8, v10, v11, v12);
    v14 = *v13;
    if ((*(*v13 + 31) & 0x8000000000000000) != 0)
    {
      if (!*(v14 + 16))
      {
        goto LABEL_28;
      }
    }

    else if (!*(*v13 + 31))
    {
LABEL_28:
      v22 = *(a3 + 23);
      if (v22 < 0)
      {
        v23 = *a3;
      }

      if (v22 >= 0)
      {
        v24 = *(a3 + 23);
      }

      else
      {
        v24 = *(a3 + 8);
      }

      (*(*v55 + 32))(&v52);
      if (v54)
      {
        (*(*v55 + 40))(&v60);
        if (*(v14 + 31) < 0)
        {
          operator delete(*(v14 + 8));
        }

        v25 = v60;
        *(v14 + 24) = v61;
        *(v14 + 8) = v25;
        *(v14 + 32) = v52;
        *(v14 + 48) = v53;
        goto LABEL_37;
      }

      v51[16] = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, v51, &v60);
      if (*(*(a1 + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v60);
      }

      if (!v60)
      {
        goto LABEL_50;
      }

      LODWORD(v56) = 3;
      v57 = "unknown 'resource' key '";
      v58 = 24;
      v27 = &v56;
      v28 = v62;
      if (v63 >= v64)
      {
        if (v62 <= &v56 && v62 + 24 * v63 > &v56)
        {
          v48 = &v56 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
          v28 = v62;
          v27 = (v62 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
          v27 = &v56;
          v28 = v62;
        }
      }

      v29 = &v28[24 * v63];
      v30 = *v27;
      *(v29 + 2) = v27[2];
      *v29 = v30;
      ++v63;
      if (!v60)
      {
        goto LABEL_50;
      }

      v59 = 260;
      v56 = a3;
      mlir::Diagnostic::operator<<(&v60 + 8, &v56);
      if (!v60)
      {
        goto LABEL_50;
      }

      LODWORD(v56) = 3;
      v57 = "' for dialect '";
      v58 = 15;
      v31 = &v56;
      v32 = v62;
      if (v63 >= v64)
      {
        if (v62 <= &v56 && v62 + 24 * v63 > &v56)
        {
          v49 = &v56 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
          v32 = v62;
          v31 = (v62 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
          v31 = &v56;
          v32 = v62;
        }
      }

      v33 = &v32[24 * v63];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      ++v63;
      if (!v60)
      {
        goto LABEL_50;
      }

      v35 = v55[1];
      v37 = *(v35 + 8);
      v36 = *(v35 + 16);
      v59 = 261;
      v56 = v37;
      v57 = v36;
      mlir::Diagnostic::operator<<(&v60 + 8, &v56);
      if (v60)
      {
        LODWORD(v56) = 3;
        v57 = "'";
        v58 = 1;
        v38 = &v56;
        v39 = v62;
        if (v63 >= v64)
        {
          if (v62 <= &v56 && v62 + 24 * v63 > &v56)
          {
            v50 = &v56 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v39 = v62;
            v38 = (v62 + v50);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v38 = &v56;
            v39 = v62;
          }
        }

        v40 = &v39[24 * v63];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v63;
        v42 = v60;
        *a4 = 0;
        *(a4 + 24) = 0;
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v60);
        }
      }

      else
      {
LABEL_50:
        *a4 = 0;
        *(a4 + 24) = 0;
      }

      if (v71)
      {
        if (v70 != &v71)
        {
          free(v70);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v69;
          v45 = __p;
          if (v69 != __p)
          {
            do
            {
              v44 = sub_100052FFC(v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v69 = v43;
          operator delete(v45);
        }

        v18 = v66;
        if (!v66)
        {
          goto LABEL_67;
        }

        v46 = v67;
        v20 = v66;
        if (v67 == v66)
        {
LABEL_66:
          v67 = v18;
          operator delete(v20);
LABEL_67:
          if (v62 != v65)
          {
            free(v62);
          }

          return;
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

        while (v46 != v18);
LABEL_65:
        v20 = v66;
        goto LABEL_66;
      }

      return;
    }

LABEL_37:
    std::string::operator=(a3, (v14 + 8));
    *a4 = *(v14 + 32);
    *(a4 + 16) = *(v14 + 48);
    *(a4 + 24) = 1;
    return;
  }

  v56 = "expected identifier key for 'resource' entry";
  v59 = 259;
  mlir::detail::Parser::emitError(a1, &v56, &v60);
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v69;
      v17 = __p;
      if (v69 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v69 = v15;
      operator delete(v17);
    }

    v18 = v66;
    if (!v66)
    {
      goto LABEL_67;
    }

    v19 = v67;
    v20 = v66;
    if (v67 == v66)
    {
      goto LABEL_66;
    }

    do
    {
      v21 = *--v19;
      *v19 = 0;
      if (v21)
      {
        operator delete[]();
      }
    }

    while (v19 != v18);
    goto LABEL_65;
  }
}

void *sub_10006B258(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    sub_10007F3B0(a1, v2);
    sub_10007F30C(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
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
  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3800000000;
  return v4 + 1;
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *this@<X0>, mlir::Dialect *a2@<X1>, _BYTE *a3@<X8>)
{
  if (sub_10006575C(a2))
  {
    v6 = sub_10006575C(a2);
    __p = 0;
    v34 = 0;
    v35 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &__p, a3);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v28 = 257;
    mlir::detail::Parser::emitError(this, v27, &__p);
    if (!__p)
    {
      goto LABEL_11;
    }

    LODWORD(v29) = 3;
    v30 = "dialect '";
    v31 = 9;
    v7 = &v29;
    v8 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v29 && v36 + 24 * v37 > &v29)
      {
        v25 = &v29 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v8 = v36;
        v7 = (v36 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v7 = &v29;
        v8 = v36;
      }
    }

    v9 = &v8[24 * v37];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v37;
    if (!__p)
    {
      goto LABEL_11;
    }

    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v32 = 261;
    v29 = v11;
    v30 = v12;
    mlir::Diagnostic::operator<<(&v34, &v29);
    if (__p)
    {
      LODWORD(v29) = 3;
      v30 = "' does not expect resource handles";
      v31 = 34;
      v13 = &v29;
      v14 = v36;
      if (v37 >= v38)
      {
        if (v36 <= &v29 && v36 + 24 * v37 > &v29)
        {
          v26 = &v29 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v14 = v36;
          v13 = (v36 + v26);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v13 = &v29;
          v14 = v36;
        }
      }

      v15 = &v14[24 * v37];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      ++v37;
      v17 = __p;
      *a3 = 0;
      a3[24] = 0;
      if (v17)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }
    }

    else
    {
LABEL_11:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v18 = v42;
      if (v42)
      {
        v19 = v43;
        v20 = v42;
        if (v43 != v42)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = v42;
        }

        v43 = v18;
        operator delete(v20);
      }

      v21 = v40;
      if (v40)
      {
        v22 = v41;
        v23 = v40;
        if (v41 != v40)
        {
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
          v23 = v40;
        }

        v41 = v21;
        operator delete(v23);
      }

      if (v36 != v39)
      {
        free(v36);
      }
    }
  }
}

uint64_t mlir::detail::Parser::codeCompleteDialectOrElidedOpName(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  for (i = (a2 - 1); i > *(v3 + 24); --i)
  {
    v6 = *i;
    if (v6 > 0xC)
    {
      if (v6 != 32 && v6 != 13)
      {
        return 0;
      }
    }

    else if (v6 != 9)
    {
      if (v6 != 10)
      {
        return 0;
      }

      break;
    }
  }

  (*(**(v3 + 160) + 16))(*(v3 + 160), "", 0);
  v7 = *(a1 + 8);
  v8 = *(v7 + 168) + 16 * *(v7 + 176);
  v9 = *(v8 - 8);
  if (v9)
  {
    v10 = *(v8 - 16);
    v11 = memchr(v10, 46, *(v8 - 8));
    if (v11)
    {
      v12 = v11 - v10 == -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      (*(**(v7 + 160) + 24))(*(v7 + 160), v10, v9);
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::codeCompleteDialectSymbol(uint64_t a1)
{
  (*(**(*(a1 + 8) + 160) + 64))(*(*(a1 + 8) + 160));
  return 0;
}

{
  (*(**(*(a1 + 8) + 160) + 80))(*(*(a1 + 8) + 160));
  return 0;
}

void mlir::parseAsmSourceFile(uint64_t **a1, uint64_t a2, uint64_t ***a3, mlir::AsmParserState *a4, mlir::AsmParserState *a5)
{
  v9 = *a3;
  v10 = (*(***a1 + 16))(**a1);
  v12 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  v14[0] = 0;
  v14[1] = 0;
  v14[2] = 0x1000000000;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0x1000000000;
  v14[6] = 0;
  v14[7] = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = a3;
  mlir::Lexer::Lexer(v20, a1, *a3, a5);
  mlir::Lexer::lexToken(v20, v21);
  v21[6] = 1;
  v22 = "";
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v24 = v14;
  v27 = 0;
  v28 = v30;
  v29 = 0;
  v30[0] = a4;
  v30[1] = a5;
  v31[0] = "builtin";
  v31[1] = 7;
  v30[2] = v31;
  v30[3] = 0x300000001;
  v13 = *a3;
  LOBYTE(v32) = 0;
  LOBYTE(v33) = 0;
  mlir::ModuleOp::create(v12, &v32);
}

uint64_t sub_10006CBA0(int32x2_t *a1)
{
  Loc = mlir::Token::getLoc((*&a1[1] + 56));
  v3 = v234;
  v232 = v234;
  v233 = &_mh_execute_header;
  v208 = 0;
  v4 = a1[1];
  if (*(*&v4 + 56) == 6)
  {
    v256 = a1;
    v257 = &v232;
    v258 = &v208;
    if (!sub_100070ADC(&v256))
    {
      goto LABEL_277;
    }

    while (1)
    {
      v5 = a1[1];
      if (*(*&v5 + 56) != 16)
      {
        break;
      }

      *(*&v5 + 80) = *(*&v5 + 56);
      *(*&v5 + 96) = *(*&v5 + 72);
      mlir::Lexer::lexToken((*&a1[1] + 8), &v235);
      *(*&a1[1] + 56) = v235;
      if (!sub_100070ADC(&v256))
      {
        goto LABEL_277;
      }
    }

    v235.__r_.__value_.__r.__words[0] = "expected '=' after SSA name";
    LOWORD(v237) = 259;
    if ((mlir::detail::Parser::parseToken(a1, 18, &v235) & 1) == 0)
    {
      goto LABEL_277;
    }

    v4 = a1[1];
  }

  v206 = *(*&v4 + 56);
  v207 = *(*&v4 + 72);
  if (v206 != 3)
  {
    if (!mlir::Token::isKeyword(&v206))
    {
      if (v206 != 11)
      {
        if (!mlir::Token::isCodeCompletionFor(&v206, 11))
        {
          if (v206 == 2)
          {
            v38 = mlir::detail::Parser::codeCompleteDialectOrElidedOpName(a1, Loc);
          }

          else
          {
            v256 = "expected operation name in quotes";
            LOWORD(v260) = 259;
            mlir::detail::Parser::emitWrongTokenError(a1, &v256, &v235);
            v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
            sub_100059A74(&v235);
          }

          goto LABEL_278;
        }

        v34 = &v235;
        mlir::Token::getStringValue(&v206, &v235);
        size = SHIBYTE(v235.__r_.__value_.__r.__words[2]);
        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v235.__r_.__value_.__r.__words[0];
        }

        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v235.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v34->__r_.__value_.__s.__data_[size - 1] == 46)
          {
            v36 = size - 1;
            if (size != 1)
            {
              v37 = memchr(v34, 46, size - 1);
              if (!v37 || v37 - v34 == -1)
              {
                (*(**(*&a1[1] + 160) + 24))(*(*&a1[1] + 160), v34, v36);
              }
            }
          }
        }

        else
        {
          (*(**(*&a1[1] + 160) + 16))(*(*&a1[1] + 160), "", 0);
        }

        if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v235.__r_.__value_.__l.__data_);
        }

LABEL_277:
        v38 = 0;
        goto LABEL_278;
      }

      v29 = sub_10006FD50(a1);
      goto LABEL_269;
    }

    v4 = a1[1];
  }

  v6 = v232;
  v7 = v233;
  v8 = mlir::Token::getLoc((*&v4 + 56));
  v9 = a1[1];
  v11 = *(*&v9 + 64);
  v10 = *(*&v9 + 72);
  v12 = sub_100070FB4(a1);
  v222 = v12;
  v223 = v13;
  if ((v13 & 1) == 0)
  {
    v29 = 0;
    goto LABEL_269;
  }

  v235.__r_.__value_.__r.__words[0] = *(v12 + 8);
  __s2 = mlir::StringAttr::getValue(&v235);
  v15 = v14;
  v255 = 0;
  v16 = v222;
  if (*(v222 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v235.__r_.__value_.__r.__words[0] = *(v222 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v235);
    if (!ReferencedDialect)
    {
      LOWORD(v213) = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v8);
      mlir::emitError(EncodedSourceLocation, &v209, &v256);
      if (*(*&a1[1] + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v256);
      }

      if (v256)
      {
        LODWORD(v235.__r_.__value_.__l.__data_) = 3;
        v235.__r_.__value_.__r.__words[2] = 9;
        v40 = &v235;
        v41 = v259;
        if (v260 >= v261)
        {
          if (v259 <= &v235 && v259 + 24 * v260 > &v235)
          {
            v191 = &v235 - v259;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
            v41 = v259;
            v40 = (v259 + v191);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
            v40 = &v235;
            v41 = v259;
          }
        }

        v42 = &v41[24 * v260];
        v43 = *&v40->__r_.__value_.__l.__data_;
        *(v42 + 2) = *(&v40->__r_.__value_.__l + 2);
        *v42 = v43;
        ++v260;
      }

      DialectNamespace = mlir::OperationName::getDialectNamespace(&v222);
      if (v256)
      {
        LOWORD(v237) = 261;
        v235.__r_.__value_.__r.__words[0] = DialectNamespace;
        v235.__r_.__value_.__l.__size_ = v45;
        mlir::Diagnostic::operator<<(&v257, &v235);
        if (v256)
        {
          LODWORD(v235.__r_.__value_.__l.__data_) = 3;
          v235.__r_.__value_.__l.__size_ = "' not found for custom op '";
          v235.__r_.__value_.__r.__words[2] = 27;
          v46 = &v235;
          v47 = v259;
          if (v260 >= v261)
          {
            if (v259 <= &v235 && v259 + 24 * v260 > &v235)
            {
              v196 = &v235 - v259;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
              v47 = v259;
              v46 = (v259 + v196);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
              v46 = &v235;
              v47 = v259;
            }
          }

          v48 = &v47[24 * v260];
          v49 = *&v46->__r_.__value_.__l.__data_;
          *(v48 + 2) = *(&v46->__r_.__value_.__l + 2);
          *v48 = v49;
          ++v260;
          if (v256)
          {
            LOWORD(v237) = 261;
            v235.__r_.__value_.__r.__words[0] = v11;
            v235.__r_.__value_.__l.__size_ = v10;
            mlir::Diagnostic::operator<<(&v257, &v235);
            if (v256)
            {
              LODWORD(v235.__r_.__value_.__l.__data_) = 3;
              v235.__r_.__value_.__l.__size_ = "' ";
              v235.__r_.__value_.__r.__words[2] = 2;
              v50 = &v235;
              v51 = v259;
              if (v260 >= v261)
              {
                if (v259 <= &v235 && v259 + 24 * v260 > &v235)
                {
                  v201 = &v235 - v259;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
                  v51 = v259;
                  v50 = (v259 + v201);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
                  v50 = &v235;
                  v51 = v259;
                }
              }

              v52 = &v51[24 * v260];
              v53 = *&v50->__r_.__value_.__l.__data_;
              *(v52 + 2) = *(&v50->__r_.__value_.__l + 2);
              *v52 = v53;
              ++v260;
            }
          }
        }
      }

      sub_100062C04(&v235, &v256);
      if (v256)
      {
        mlir::InFlightDiagnostic::report(&v256);
      }

      if (v268 == 1)
      {
        if (v267 != &v268)
        {
          free(v267);
        }

        v54 = __p;
        if (__p)
        {
          v55 = v266;
          v56 = __p;
          if (v266 != __p)
          {
            do
            {
              v55 = sub_100052FFC(v55 - 1);
            }

            while (v55 != v54);
            v56 = __p;
          }

          v266 = v54;
          operator delete(v56);
        }

        v57 = v263;
        if (v263)
        {
          v58 = v264;
          v59 = v263;
          if (v264 != v263)
          {
            do
            {
              v60 = *--v58;
              *v58 = 0;
              if (v60)
              {
                operator delete[]();
              }
            }

            while (v58 != v57);
            v59 = v263;
          }

          v264 = v57;
          operator delete(v59);
        }

        if (v259 != v262)
        {
          free(v259);
        }
      }

      if ((v10 != v15 || v10 && memcmp(v11, __s2, v10)) && v235.__r_.__value_.__r.__words[0])
      {
        LODWORD(v256) = 3;
        v257 = " (tried '";
        v258 = 9;
        v77 = &v256;
        v78 = v236;
        if (v237 >= v238)
        {
          if (v236 <= &v256 && v236 + 24 * v237 > &v256)
          {
            v195 = &v256 - v236;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v78 = v236;
            v77 = (v236 + v195);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v77 = &v256;
            v78 = v236;
          }
        }

        v79 = &v78[24 * v237];
        v80 = *v77;
        *(v79 + 2) = v77[2];
        *v79 = v80;
        ++v237;
        if (v235.__r_.__value_.__r.__words[0])
        {
          LOWORD(v260) = 261;
          v256 = __s2;
          v257 = v15;
          mlir::Diagnostic::operator<<(&v235.__r_.__value_.__l.__size_, &v256);
          if (v235.__r_.__value_.__r.__words[0])
          {
            LODWORD(v256) = 3;
            v257 = "' as well)";
            v258 = 10;
            v81 = &v256;
            v82 = v236;
            if (v237 >= v238)
            {
              if (v236 <= &v256 && v236 + 24 * v237 > &v256)
              {
                v200 = &v256 - v236;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                v82 = v236;
                v81 = (v236 + v200);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                v81 = &v256;
                v82 = v236;
              }
            }

            v83 = &v82[24 * v237];
            v84 = *v81;
            *(v83 + 2) = v81[2];
            *v83 = v84;
            ++v237;
          }
        }
      }

      mlir::Diagnostic::attachNote(&v235.__r_.__value_.__l.__size_, 0, 0);
    }

    (*(*ReferencedDialect + 64))(&v235);
    if (v235.__r_.__value_.__s.__data_[16])
    {
      v31 = &llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v236 = &llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v32 = v255;
      if (v255 >= 8)
      {
        if ((v255 & 4) != 0)
        {
          if ((v255 & 2) != 0)
          {
            v33 = v253;
          }

          else
          {
            v33 = v253[0];
          }

          (*((v255 & 0xFFFFFFFFFFFFFFF8) + 16))(v33);
        }

        if ((v32 & 2) == 0)
        {
          llvm::deallocate_buffer(v253[0], v253[1], v254);
        }

        v31 = v236;
      }

      v255 = v31;
      if (v31 >= 8)
      {
        if ((v31 & 2) != 0 && (v31 & 4) != 0)
        {
          (*((v31 & 0xFFFFFFFFFFFFFFF8) + 8))(v253, &v235);
          (*((v255 & 0xFFFFFFFFFFFFFFF8) + 16))(&v235);
        }

        else
        {
          *v253 = *&v235.__r_.__value_.__l.__data_;
          v254 = v235.__r_.__value_.__r.__words[2];
        }
      }

      v101 = 0;
      v19 = 0;
      goto LABEL_206;
    }

    LOWORD(v213) = 257;
    v61 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v8);
    mlir::emitError(v61, &v209, &v256);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v256);
    }

    if (v256)
    {
      LODWORD(v235.__r_.__value_.__l.__data_) = 3;
      v235.__r_.__value_.__l.__size_ = "custom op '";
      v235.__r_.__value_.__r.__words[2] = 11;
      v62 = &v235;
      v63 = v259;
      if (v260 >= v261)
      {
        if (v259 <= &v235 && v259 + 24 * v260 > &v235)
        {
          v192 = &v235 - v259;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
          v63 = v259;
          v62 = (v259 + v192);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
          v62 = &v235;
          v63 = v259;
        }
      }

      v64 = &v63[24 * v260];
      v65 = *&v62->__r_.__value_.__l.__data_;
      *(v64 + 2) = *(&v62->__r_.__value_.__l + 2);
      *v64 = v65;
      ++v260;
      if (v256)
      {
        LOWORD(v237) = 261;
        v235.__r_.__value_.__r.__words[0] = v11;
        v235.__r_.__value_.__l.__size_ = v10;
        mlir::Diagnostic::operator<<(&v257, &v235);
        if (v256)
        {
          LODWORD(v235.__r_.__value_.__l.__data_) = 3;
          v235.__r_.__value_.__l.__size_ = "' is unknown";
          v235.__r_.__value_.__r.__words[2] = 12;
          v66 = &v235;
          v67 = v259;
          if (v260 >= v261)
          {
            if (v259 <= &v235 && v259 + 24 * v260 > &v235)
            {
              v199 = &v235 - v259;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
              v67 = v259;
              v66 = (v259 + v199);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
              v66 = &v235;
              v67 = v259;
            }
          }

          v68 = &v67[24 * v260];
          v69 = *&v66->__r_.__value_.__l.__data_;
          *(v68 + 2) = *(&v66->__r_.__value_.__l + 2);
          *v68 = v69;
          ++v260;
        }
      }
    }

    sub_100062C04(&v235, &v256);
    if (v256)
    {
      mlir::InFlightDiagnostic::report(&v256);
    }

    if (v268 == 1)
    {
      if (v267 != &v268)
      {
        free(v267);
      }

      v70 = __p;
      if (__p)
      {
        v71 = v266;
        v72 = __p;
        if (v266 != __p)
        {
          do
          {
            v71 = sub_100052FFC(v71 - 1);
          }

          while (v71 != v70);
          v72 = __p;
        }

        v266 = v70;
        operator delete(v72);
      }

      v73 = v263;
      if (v263)
      {
        v74 = v264;
        v75 = v263;
        if (v264 != v263)
        {
          do
          {
            v76 = *--v74;
            *v74 = 0;
            if (v76)
            {
              operator delete[]();
            }
          }

          while (v74 != v73);
          v75 = v263;
        }

        v264 = v73;
        operator delete(v75);
      }

      if (v259 != v262)
      {
        free(v259);
      }
    }

    if (v10 != v15 || v10 && memcmp(v11, __s2, v10))
    {
      if (!v235.__r_.__value_.__r.__words[0])
      {
        goto LABEL_153;
      }

      LODWORD(v256) = 3;
      v257 = " (tried '";
      v258 = 9;
      v85 = &v256;
      v86 = v236;
      if (v237 >= v238)
      {
        if (v236 <= &v256 && v236 + 24 * v237 > &v256)
        {
          v197 = &v256 - v236;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
          v86 = v236;
          v85 = (v236 + v197);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
          v85 = &v256;
          v86 = v236;
        }
      }

      v87 = &v86[24 * v237];
      v88 = *v85;
      *(v87 + 2) = v85[2];
      *v87 = v88;
      ++v237;
      if (!v235.__r_.__value_.__r.__words[0] || (LOWORD(v260) = 261, v256 = __s2, v257 = v15, mlir::Diagnostic::operator<<(&v235.__r_.__value_.__l.__size_, &v256), !v235.__r_.__value_.__r.__words[0]))
      {
LABEL_153:
        if (v246[0] == 1)
        {
          if (v245 != v246)
          {
            free(v245);
          }

          v93 = v243;
          if (v243)
          {
            v94 = v244;
            v95 = v243;
            if (v244 != v243)
            {
              do
              {
                v94 = sub_100052FFC(v94 - 1);
              }

              while (v94 != v93);
              v95 = v243;
            }

            v244 = v93;
            operator delete(v95);
          }

          v96 = v241;
          if (v241)
          {
            v97 = v242;
            v98 = v241;
            if (v242 != v241)
            {
              do
              {
                v99 = *--v97;
                *v97 = 0;
                if (v99)
                {
                  operator delete[]();
                }
              }

              while (v97 != v96);
              v98 = v241;
            }

            v242 = v96;
            operator delete(v98);
          }

          if (v236 != v239)
          {
            free(v236);
          }
        }

        v29 = 0;
        v100 = v255;
        if (v255 >= 8)
        {
          goto LABEL_262;
        }

        goto LABEL_269;
      }

      LODWORD(v256) = 3;
      v257 = "' as well)";
      v258 = 10;
      v89 = &v256;
      v90 = v236;
      if (v237 >= v238)
      {
        if (v236 <= &v256 && v236 + 24 * v237 > &v256)
        {
          v202 = &v256 - v236;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
          v90 = v236;
          v89 = (v236 + v202);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
          v89 = &v256;
          v90 = v236;
        }
      }

      v91 = &v90[24 * v237];
      v92 = *v89;
      *(v91 + 2) = v89[2];
      *v91 = v92;
      ++v237;
    }

    if (v235.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v235);
    }

    goto LABEL_153;
  }

  (*(*v222 + 40))(&v235, v222);
  v17 = v255;
  if (v255 >= 8)
  {
    if ((v255 & 4) != 0)
    {
      if ((v255 & 2) != 0)
      {
        v18 = v253;
      }

      else
      {
        v18 = v253[0];
      }

      (*((v255 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
    }

    if ((v17 & 2) == 0)
    {
      llvm::deallocate_buffer(v253[0], v253[1], v254);
    }
  }

  v255 = v236;
  if (v236 >= 8)
  {
    if ((v236 & 2) != 0 && (v236 & 4) != 0)
    {
      (*((v236 & 0xFFFFFFFFFFFFFFF8) + 8))(v253, &v235);
      (*((v255 & 0xFFFFFFFFFFFFFFF8) + 16))(&v235);
      {
        goto LABEL_26;
      }

      goto LABEL_120;
    }

    *v253 = *&v235.__r_.__value_.__l.__data_;
    v254 = v235.__r_.__value_.__r.__words[2];
  }

  {
    goto LABEL_26;
  }

LABEL_120:
  sub_10027926C();
LABEL_26:
  v19 = (*(*v16 + 32))(v16, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  {
    sub_1002792AC();
    v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    if (v22)
    {
      goto LABEL_28;
    }

LABEL_205:
    v101 = 0;
    goto LABEL_206;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  if (!v22)
  {
    goto LABEL_205;
  }

LABEL_28:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = (v26 + 2);
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
  if (v23 == &v21[2 * v22])
  {
    goto LABEL_205;
  }

  if (*v23 != v20)
  {
    goto LABEL_205;
  }

  v125 = v23[1];
  if (!v125)
  {
    goto LABEL_205;
  }

  v126 = v125[3]();
  if (v101)
  {
    v102 = (v125[3])(v126);
    v103 = a1[1];
    v104 = *(*&v103 + 176);
    if (v104 < *(*&v103 + 180))
    {
      goto LABEL_207;
    }

    goto LABEL_237;
  }

LABEL_206:
  v102 = "";
  v103 = a1[1];
  v104 = *(*&v103 + 176);
  if (v104 < *(*&v103 + 180))
  {
    goto LABEL_207;
  }

LABEL_237:
  v203 = v102;
  v127 = v101;
  llvm::SmallVectorBase<unsigned int>::grow_pod(*&v103 + 168, (*&v103 + 184), v104 + 1, 16);
  v102 = v203;
  v101 = v127;
  v3 = v234;
  LODWORD(v104) = *(*&v103 + 176);
LABEL_207:
  v105 = (*(*&v103 + 168) + 16 * v104);
  *v105 = v102;
  v105[1] = v101;
  ++*(*&v103 + 176);
  v235.__r_.__value_.__r.__words[0] = *(v222 + 8);
  Value = mlir::StringAttr::getValue(&v235);
  llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(v250, "MLIR Parser: custom op parser '%s'", Value);
  v221 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v8);
  v107.n128_f64[0] = mlir::OperationState::OperationState(&v235, v221, v222);
  v108 = *(*&a1[1] + 152);
  if (v108)
  {
    mlir::AsmParserState::startOperationDefinition(v108, &v235.__r_.__value_.__r.__words[1]);
  }

  v210 = v8;
  v211 = a1;
  v212 = 0;
  v209 = &off_1002B53A0;
  v213 = v6;
  v214 = v7;
  v215 = sub_100071678;
  v216 = v253;
  v217 = v19;
  v218 = __s2;
  v219 = v15;
  v220 = a1;
  if ((v255 & 2) != 0)
  {
    v109 = v253;
  }

  else
  {
    v109 = v253[0];
  }

  if (((*(v255 & 0xFFFFFFFFFFFFFFF8))(v109, &v209, &v235, v107) & 1) == 0)
  {
    goto LABEL_244;
  }

  mlir::NamedAttrList::findDuplicate(&v240, v227);
  if (v227[16])
  {
    v110 = (*(v209 + 2))(&v209);
    v225[0] = "attribute '";
    v226 = 259;
    (*(v209 + 3))(&v256, &v209, v110, v225);
    Name = mlir::NamedAttribute::getName(v227);
    v111 = mlir::StringAttr::getValue(&Name);
    if (v256)
    {
      v231 = 261;
      v228 = v111;
      v229 = v112;
      mlir::Diagnostic::operator<<(&v257, &v228);
      if (v256)
      {
        LODWORD(v228) = 3;
        v229 = "' occurs more than once in the attribute list";
        v230 = 45;
        v113 = &v228;
        v114 = v259;
        if (v260 >= v261)
        {
          if (v259 <= &v228 && v259 + 24 * v260 > &v228)
          {
            v193 = &v228 - v259;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
            v114 = v259;
            v113 = (v259 + v193);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v259, v262, v260 + 1, 24);
            v113 = &v228;
            v114 = v259;
          }
        }

        v115 = &v114[24 * v260];
        v116 = *v113;
        *(v115 + 2) = v113[2];
        *v115 = v116;
        ++v260;
      }
    }

    v117 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v256);
    if (v256)
    {
      mlir::InFlightDiagnostic::report(&v256);
    }

    if (v268 == 1)
    {
      if (v267 != &v268)
      {
        free(v267);
      }

      v118 = __p;
      if (__p)
      {
        v119 = v266;
        v120 = __p;
        if (v266 != __p)
        {
          do
          {
            v119 = sub_100052FFC(v119 - 1);
          }

          while (v119 != v118);
          v120 = __p;
        }

        v266 = v118;
        operator delete(v120);
      }

      v121 = v263;
      if (v263)
      {
        v122 = v264;
        v123 = v263;
        if (v264 != v263)
        {
          do
          {
            v124 = *--v122;
            *v122 = 0;
            if (v124)
            {
              operator delete[]();
            }
          }

          while (v122 != v121);
          v123 = v263;
        }

        v264 = v121;
        operator delete(v123);
      }

      if (v259 != v262)
      {
        free(v259);
      }
    }

    if (!v117)
    {
      goto LABEL_244;
    }
  }

  if ((v212 & 1) == 0)
  {
    v174 = v249;
    v228 = v249;
    v249 = 0;
    v175 = mlir::OpBuilder::create(&a1[48], &v235);
    v225[0] = v175;
    v29 = 0;
    if (sub_100071374(a1, v175 & 0xFFFFFFFFFFFFFFFBLL))
    {
      if (v174)
      {
        v256 = &v221;
        v257 = &v228;
        v258 = v225;
        if (mlir::Operation::setPropertiesFromAttribute(v175, v174, sub_10007B058, &v256))
        {
          v29 = v225[0];
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = v175;
      }
    }
  }

  else
  {
LABEL_244:
    v29 = 0;
  }

  mlir::OpAsmParser::~OpAsmParser(&v209);
  v256 = &v258;
  v257 = 0x400000000;
  v128 = v248;
  if (v248 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v256, &v258, v248, 8);
    v128 = v248;
  }

  if (v128)
  {
    v129 = v247;
    v130 = &v247[v128];
    do
    {
      v131 = *v129;
      if (*v129)
      {
        for (i = *(v131 + 8); i != v131; i = *(i + 8))
        {
          if (i)
          {
            v133 = (i - 8);
          }

          else
          {
            v133 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v133);
        }
      }

      ++v129;
    }

    while (v129 != v130);
  }

  if (v256 != &v258)
  {
    free(v256);
  }

  mlir::OperationState::~OperationState(&v235);
  v250[0] = off_1002B4430;
  if (v251 != &v252)
  {
    free(v251);
  }

  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v250);
  --*(*&a1[1] + 176);
  v100 = v255;
  if (v255 >= 8)
  {
LABEL_262:
    if ((v100 & 4) != 0)
    {
      if ((v100 & 2) != 0)
      {
        v134 = v253;
      }

      else
      {
        v134 = v253[0];
      }

      (*((v100 & 0xFFFFFFFFFFFFFFF8) + 16))(v134);
    }

    if ((v100 & 2) == 0)
    {
      llvm::deallocate_buffer(v253[0], v253[1], v254);
    }
  }

LABEL_269:
  if (!v29)
  {
    goto LABEL_277;
  }

  if (!v233)
  {
    v139 = *(*&a1[1] + 152);
    if (v139)
    {
      mlir::Token::getLocRange(&v206);
      mlir::Token::getEndLoc((*&a1[1] + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v139, v29);
    }

    v38 = 1;
    goto LABEL_278;
  }

  v135 = *(v29 + 36);
  if (!v135)
  {
    v256 = "cannot name an operation with no results";
    LOWORD(v260) = 259;
    v140 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, Loc);
    mlir::emitError(v140, &v256, &v235);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v235);
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
    if (v235.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v235);
    }

    if (v246[0] != 1)
    {
      goto LABEL_278;
    }

    if (v245 != v246)
    {
      free(v245);
    }

    v141 = v243;
    if (v243)
    {
      v142 = v244;
      v143 = v243;
      if (v244 != v243)
      {
        do
        {
          v142 = sub_100052FFC(v142 - 1);
        }

        while (v142 != v141);
        v143 = v243;
      }

      v244 = v141;
      operator delete(v143);
    }

    v144 = v241;
    if (v241)
    {
      v145 = v242;
      v146 = v241;
      if (v242 != v241)
      {
        do
        {
          v147 = *--v145;
          *v145 = 0;
          if (v147)
          {
            operator delete[]();
          }
        }

        while (v145 != v144);
        goto LABEL_334;
      }

LABEL_335:
      v242 = v144;
      operator delete(v146);
    }

LABEL_336:
    if (v236 != v239)
    {
      free(v236);
    }

    goto LABEL_278;
  }

  if (v208 != v135)
  {
    v256 = "operation defines ";
    LOWORD(v260) = 259;
    v148 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, Loc);
    mlir::emitError(v148, &v256, &v235);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v235);
    }

    if (v235.__r_.__value_.__r.__words[0])
    {
      v149 = *(v29 + 36);
      LODWORD(v209) = 5;
      v210 = v149;
      v150 = &v209;
      v151 = v236;
      if (v237 >= v238)
      {
        if (v236 <= &v209 && v236 + 24 * v237 > &v209)
        {
          v189 = &v209 - v236;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
          v151 = v236;
          v150 = (v236 + v189);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
          v150 = &v209;
          v151 = v236;
        }
      }

      v152 = &v151[24 * v237];
      v153 = *v150;
      *(v152 + 2) = v150[2];
      *v152 = v153;
      v154 = ++v237;
      if (v235.__r_.__value_.__r.__words[0])
      {
        LODWORD(v209) = 3;
        v210 = " results but was provided ";
        v211 = 26;
        v155 = &v209;
        v156 = v236;
        if (v154 >= v238)
        {
          if (v236 <= &v209 && v236 + 24 * v154 > &v209)
          {
            v190 = &v209 - v236;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v154 + 1, 24);
            v156 = v236;
            v155 = (v236 + v190);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v154 + 1, 24);
            v155 = &v209;
            v156 = v236;
          }
        }

        v157 = &v156[24 * v237];
        v158 = *v155;
        *(v157 + 2) = v155[2];
        *v157 = v158;
        v159 = ++v237;
        if (v235.__r_.__value_.__r.__words[0])
        {
          LODWORD(v209) = 5;
          v210 = v208;
          v160 = &v209;
          v161 = v236;
          if (v159 >= v238)
          {
            if (v236 <= &v209 && v236 + 24 * v159 > &v209)
            {
              v194 = &v209 - v236;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v159 + 1, 24);
              v161 = v236;
              v160 = (v236 + v194);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v159 + 1, 24);
              v160 = &v209;
              v161 = v236;
            }
          }

          v162 = &v161[24 * v237];
          v163 = *v160;
          *(v162 + 2) = v160[2];
          *v162 = v163;
          v164 = ++v237;
          if (v235.__r_.__value_.__r.__words[0])
          {
            LODWORD(v209) = 3;
            v210 = " to bind";
            v211 = 8;
            v165 = &v209;
            v166 = v236;
            if (v164 >= v238)
            {
              if (v236 <= &v209 && v236 + 24 * v164 > &v209)
              {
                v198 = &v209 - v236;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v164 + 1, 24);
                v166 = v236;
                v165 = (v236 + v198);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v164 + 1, 24);
                v165 = &v209;
                v166 = v236;
              }
            }

            v167 = &v166[24 * v237];
            v168 = *v165;
            *(v167 + 2) = v165[2];
            *v167 = v168;
            ++v237;
          }
        }
      }
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
    if (v235.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v235);
    }

    if (v246[0] != 1)
    {
      goto LABEL_278;
    }

    if (v245 != v246)
    {
      free(v245);
    }

    v169 = v243;
    if (v243)
    {
      v170 = v244;
      v171 = v243;
      if (v244 != v243)
      {
        do
        {
          v170 = sub_100052FFC(v170 - 1);
        }

        while (v170 != v169);
        v171 = v243;
      }

      v244 = v169;
      operator delete(v171);
    }

    v144 = v241;
    if (v241)
    {
      v172 = v242;
      v146 = v241;
      if (v242 != v241)
      {
        do
        {
          v173 = *--v172;
          *v172 = 0;
          if (v173)
          {
            operator delete[]();
          }
        }

        while (v172 != v144);
LABEL_334:
        v146 = v241;
        goto LABEL_335;
      }

      goto LABEL_335;
    }

    goto LABEL_336;
  }

  if (*(*&a1[1] + 152))
  {
    LODWORD(v256) = 0;
    v235.__r_.__value_.__r.__words[0] = &v235.__r_.__value_.__r.__words[2];
    v235.__r_.__value_.__l.__size_ = 0x300000000;
    if (v233 <= 3)
    {
      v136 = v232;
      v137 = v232 + 32 * v233;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, &v235.__r_.__value_.__r.__words[2], v233, 16);
      if (!v233)
      {
        goto LABEL_346;
      }

      v136 = v232;
      v137 = v232 + 32 * v233;
    }

    v177 = 0;
    v178 = (v136 + 24);
    do
    {
      v179 = v235.__r_.__value_.__r.__words[1];
      if (LODWORD(v235.__r_.__value_.__r.__words[1]) >= HIDWORD(v235.__r_.__value_.__r.__words[1]))
      {
        sub_10007BB74(&v235, &v256, v178);
      }

      else
      {
        v180 = v235.__r_.__value_.__r.__words[0] + 16 * LODWORD(v235.__r_.__value_.__r.__words[1]);
        *v180 = v177;
        *(v180 + 8) = *v178;
        LODWORD(v235.__r_.__value_.__r.__words[1]) = v179 + 1;
      }

      v177 = v256 + *(v178 - 2);
      LODWORD(v256) = v177;
      v181 = (v178 + 1);
      v178 += 4;
    }

    while (v181 != v137);
LABEL_346:
    v182 = *(*&a1[1] + 152);
    mlir::Token::getLocRange(&v206);
    mlir::Token::getEndLoc((*&a1[1] + 80));
    mlir::AsmParserState::finalizeOperationDefinition(v182, v29);
  }

  v176 = v232;
  __s2a = v232 + 32 * v233;
  v183 = 0;
  while (1)
  {
    v184 = v3;
    v185 = *(v176 + 4);
    if (v185)
    {
      break;
    }

    v187 = v183;
LABEL_356:
    v176 += 32;
    v38 = 1;
    v183 = v187;
    v3 = v184;
    if (v176 == __s2a)
    {
      goto LABEL_278;
    }
  }

  v186 = 0;
  while (1)
  {
    v235.__r_.__value_.__r.__words[0] = *(v176 + 3);
    *&v235.__r_.__value_.__r.__words[1] = *v176;
    LODWORD(v236) = v186;
    v187 = (v183 + 1);
    v188 = (v183 >= 6 ? v29 - 96 - 24 * (v183 - 5) : v29 - 16 * v187);
    if ((sub_1000703B0(a1, &v235, v188) & 1) == 0)
    {
      break;
    }

    ++v186;
    LODWORD(v183) = v187;
    if (v185 == v186)
    {
      goto LABEL_356;
    }
  }

  v38 = 0;
  v3 = v184;
LABEL_278:
  if (v232 != v3)
  {
    free(v232);
  }

  return v38;
}

void sub_10006EDA4(uint64_t a1, int a2)
{
  v5 = (a1 + 208);
  v4 = *(a1 + 208);
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v38) = 0;
  v6 = *(a1 + 216);
  v7 = v37;
  if (v6 >= *(a1 + 220))
  {
    if (v4 <= v37 && v4 + 24 * v6 > v37)
    {
      v33 = v37 - v4;
      sub_10006F300(a1 + 208, v6 + 1);
      v4 = *v5;
      v7 = &v33[*v5];
    }

    else
    {
      sub_10006F300(a1 + 208, v6 + 1);
      v4 = *v5;
      v7 = v37;
    }
  }

  v8 = v4 + 24 * *(a1 + 216);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = *v7;
  *v7 = 0;
  *(v8 + 8) = *(v7 + 2);
  *(v7 + 2) = 0;
  v9 = *(v8 + 12);
  *(v8 + 12) = *(v7 + 3);
  *(v7 + 3) = v9;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(v7 + 4);
  *(v7 + 4) = v10;
  ++*(a1 + 216);
  llvm::deallocate_buffer(v37[0], (32 * v38), 8uLL);
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v38) = 0;
  v11 = *(a1 + 280);
  v12 = *(a1 + 272);
  v13 = v37;
  if (v11 >= *(a1 + 284))
  {
    if (v12 <= v37 && v12 + 24 * v11 > v37)
    {
      v34 = v37 - v12;
      sub_10006F418(a1 + 272, v11 + 1);
      v12 = *(a1 + 272);
      v13 = &v34[v12];
    }

    else
    {
      sub_10006F418(a1 + 272, v11 + 1);
      v12 = *(a1 + 272);
      v13 = v37;
    }
  }

  v14 = v12 + 24 * *(a1 + 280);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = *v13;
  *v13 = 0;
  *(v14 + 8) = *(v13 + 2);
  *(v13 + 2) = 0;
  v15 = *(v14 + 12);
  *(v14 + 12) = *(v13 + 3);
  *(v13 + 3) = v15;
  v16 = *(v14 + 16);
  *(v14 + 16) = *(v13 + 4);
  *(v13 + 4) = v16;
  ++*(a1 + 280);
  llvm::deallocate_buffer(v37[0], (16 * v38), 8uLL);
  if (a2)
  {
    v18 = (a1 + 16);
    v17 = *(a1 + 16);
    *v37 = 0u;
    v19 = v37;
    v38 = 0x2800000000;
    v39 = &v41;
    v40 = 0x200000000;
    v20 = *(a1 + 24);
    if (v20 >= *(a1 + 28))
    {
      if (v17 <= v37 && v17 + 88 * v20 > v37)
      {
        v36 = v37 - v17;
        sub_10006F530(a1 + 16, v20 + 1);
        v17 = *v18;
        v19 = &v36[*v18];
      }

      else
      {
        sub_10006F530(a1 + 16, v20 + 1);
        v17 = *v18;
        v19 = v37;
      }
    }

    v21 = v17 + 88 * *(a1 + 24);
    *v21 = *v19;
    *(v21 + 8) = *(v19 + 1);
    *v19 = 0;
    v19[1] = 0;
    *(v19 + 4) = 0;
    *(v21 + 24) = v21 + 40;
    v22 = v21 + 24;
    *(v22 + 8) = 0x200000000;
    if (*(v19 + 8))
    {
      sub_10006F65C(v22, (v19 + 3));
    }

    ++*(a1 + 24);
    sub_10006F1C8(v37);
  }

  v23 = *(a1 + 16) + 88 * *(a1 + 24);
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v25 = (v23 - 64);
  v24 = *(v23 - 64);
  HIDWORD(v38) = 8;
  v26 = *(v23 - 56);
  v27 = v37;
  if (v26 >= *(v23 - 52))
  {
    if (v24 <= v37 && v24 + 24 * v26 > v37)
    {
      v35 = v37 - v24;
      sub_10006FBF4(v23 - 64, v26 + 1);
      v24 = *v25;
      v27 = &v35[*v25];
    }

    else
    {
      sub_10006FBF4(v23 - 64, v26 + 1);
      v24 = *v25;
      v27 = v37;
    }
  }

  v28 = v24 + 24 * *(v23 - 56);
  *v28 = *v27;
  *(v28 + 8) = *(v27 + 1);
  *v27 = 0;
  v27[1] = 0;
  *(v27 + 4) = 0;
  ++*(v23 - 56);
  if (HIDWORD(v37[1]) && LODWORD(v37[1]))
  {
    v29 = 0;
    v30 = 8 * LODWORD(v37[1]);
    do
    {
      v31 = *(v37[0] + v29);
      if (v31 != -8 && v31 != 0)
      {
        llvm::deallocate_buffer(v31, (*v31 + 9), 8uLL);
      }

      v29 += 8;
    }

    while (v30 != v29);
  }

  free(v37[0]);
}

uint64_t sub_10006F1C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = &v2[3 * v3];
    do
    {
      v5 = v4;
      v4 -= 3;
      if (*(v5 - 3))
      {
        v6 = *(v5 - 4);
        if (v6)
        {
          v7 = 0;
          v8 = 8 * v6;
          do
          {
            v9 = *(*v4 + v7);
            if (v9 != -8 && v9 != 0)
            {
              llvm::deallocate_buffer(v9, (*v9 + 9), 8uLL);
            }

            v7 += 8;
          }

          while (v8 != v7);
        }
      }

      free(*v4);
    }

    while (v4 != v2);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  if (*(a1 + 12))
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 0;
      v13 = 8 * v11;
      do
      {
        v14 = *(*a1 + v12);
        if (v14 != -8 && v14 != 0)
        {
          v17 = *v14;
          v16 = *(v14 + 1);
          if (v16 != (v14 + 24))
          {
            free(v16);
          }

          llvm::deallocate_buffer(v14, (v17 + 41), 8uLL);
        }

        v12 += 8;
      }

      while (v13 != v12);
    }
  }

  free(*a1);
  return a1;
}

void sub_10006F300(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v17);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 4) = 0;
      *v8 = *v5;
      *v5 = 0;
      *(v8 + 2) = *(v5 + 2);
      *(v5 + 2) = 0;
      v9 = *(v8 + 3);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 3) = v9;
      v10 = *(v8 + 4);
      *(v8 + 4) = *(v5 + 4);
      *(v5 + 4) = v10;
      v8 += 3;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v5[24 * v11 - 8];
      v13 = -24 * v11;
      do
      {
        v14 = *(v12 - 2);
        v15 = *v12;
        v12 -= 24;
        llvm::deallocate_buffer(v14, (32 * v15), 8uLL);
        v13 += 24;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

void sub_10006F418(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v17);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 4) = 0;
      *v8 = *v5;
      *v5 = 0;
      *(v8 + 2) = *(v5 + 2);
      *(v5 + 2) = 0;
      v9 = *(v8 + 3);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 3) = v9;
      v10 = *(v8 + 4);
      *(v8 + 4) = *(v5 + 4);
      *(v5 + 4) = v10;
      v8 += 3;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v5[24 * v11 - 8];
      v13 = -24 * v11;
      do
      {
        v14 = *(v12 - 2);
        v15 = *v12;
        v12 -= 24;
        llvm::deallocate_buffer(v14, (16 * v15), 8uLL);
        v13 += 24;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

void sub_10006F530(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 88, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 0;
    v8 = &v5[88 * v6];
    do
    {
      v9 = &v5[v7];
      v10 = &v4[v7];
      *v10 = *&v5[v7];
      *(v10 + 8) = *&v5[v7 + 8];
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 4) = 0;
      *(v10 + 3) = &v4[v7 + 40];
      *&v4[v7 + 32] = 0x200000000;
      if (*&v5[v7 + 32])
      {
        sub_10006F65C(&v4[v7 + 24], (v9 + 24));
      }

      v7 += 88;
    }

    while (v9 + 88 != v8);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = -88 * v11;
      v13 = &v5[88 * v11 - 88];
      do
      {
        v13 = sub_10006F1C8(v13) - 88;
        v12 += 88;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

uint64_t sub_10006F65C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = *a2;
  if (*a2 != a2 + 16)
  {
    sub_10006FB10(a1, a2);
    return a1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  if (v5 < v4)
  {
    if (*(a1 + 12) >= v4)
    {
      v27 = *a1;
      if (v5)
      {
        v28 = a2;
        v29 = &v3[3 * v5];
        do
        {
          v30 = *v3;
          v31 = *(v3 + 4);
          v32 = v3[1];
          *v3 = 0;
          v3[1] = 0;
          *(v3 + 4) = 0;
          v33 = *v27;
          *v27 = v30;
          v34 = v27[2];
          LODWORD(v30) = v27[3];
          *(v27 + 1) = v32;
          v27[4] = v31;
          if (v30 && v34)
          {
            v35 = v33;
            do
            {
              v36 = *v35;
              if (*v35 != -8 && v36 != 0)
              {
                llvm::deallocate_buffer(v36, (*v36 + 9), 8uLL);
              }

              ++v35;
              --v34;
            }

            while (v34);
          }

          free(v33);
          v3 += 3;
          v27 += 6;
        }

        while (v3 != v29);
        v27 = *a1;
        a2 = v28;
        v39 = *v28;
        v40 = *(v28 + 8);
        if (v5 == v40)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v5 = 0;
        v39 = *a2;
        LODWORD(v40) = *(a2 + 8);
        if (!v40)
        {
LABEL_79:
          *(a1 + 8) = v4;
          v60 = a2;
          v61 = *(a2 + 8);
          if (v61)
          {
            v62 = &v39[3 * v61];
            do
            {
              v63 = v62;
              v62 -= 3;
              if (*(v63 - 3))
              {
                v64 = *(v63 - 4);
                if (v64)
                {
                  v65 = 0;
                  v66 = 8 * v64;
                  do
                  {
                    v67 = *(*v62 + v65);
                    if (v67 != -8 && v67 != 0)
                    {
                      llvm::deallocate_buffer(v67, (*v67 + 9), 8uLL);
                    }

                    v65 += 8;
                  }

                  while (v66 != v65);
                }
              }

              free(*v62);
            }

            while (v62 != v39);
          }

          *(v60 + 8) = 0;
          return a1;
        }
      }
    }

    else
    {
      v6 = a2;
      if (v5)
      {
        v7 = *a1;
        v8 = (*a1 + 24 * v5);
        do
        {
          v9 = v8;
          v8 -= 3;
          if (*(v9 - 3))
          {
            v10 = *(v9 - 4);
            if (v10)
            {
              v11 = 0;
              v12 = 8 * v10;
              do
              {
                v13 = *(*v8 + v11);
                if (v13 != -8 && v13 != 0)
                {
                  llvm::deallocate_buffer(v13, (*v13 + 9), 8uLL);
                }

                v11 += 8;
              }

              while (v12 != v11);
            }
          }

          free(*v8);
        }

        while (v8 != v7);
      }

      *(a1 + 8) = 0;
      v70 = 0;
      v27 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v4, 24, &v70);
      sub_10006FC6C(a1, v27);
      v38 = v70;
      if (*a1 != a1 + 16)
      {
        free(*a1);
      }

      v5 = 0;
      *a1 = v27;
      *(a1 + 12) = v38;
      a2 = v6;
      v39 = *v6;
      LODWORD(v40) = *(v6 + 8);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    v57 = &v39[3 * v40];
    v58 = &v27[6 * v5];
    v59 = &v39[3 * v5];
    do
    {
      *v58 = *v59;
      *(v58 + 2) = *(v59 + 1);
      *v59 = 0;
      v59[1] = 0;
      *(v59 + 4) = 0;
      v58 += 6;
      v59 += 3;
    }

    while (v59 != v57);
    v39 = *a2;
    goto LABEL_79;
  }

  v15 = *a1;
  v16 = a2;
  if (v4)
  {
    v17 = &v3[3 * v4];
    do
    {
      v18 = *v3;
      v19 = *(v3 + 4);
      v20 = v3[1];
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      v21 = *v15;
      *v15 = v18;
      v22 = *(v15 + 2);
      LODWORD(v18) = *(v15 + 3);
      v15[1] = v20;
      *(v15 + 4) = v19;
      if (v18 && v22)
      {
        v23 = v21;
        do
        {
          v24 = *v23;
          if (*v23 != -8 && v24 != 0)
          {
            llvm::deallocate_buffer(v24, (*v24 + 9), 8uLL);
          }

          ++v23;
          --v22;
        }

        while (v22);
      }

      free(v21);
      v3 += 3;
      v15 += 3;
    }

    while (v3 != v17);
    v26 = *a1;
    LODWORD(v5) = *(a1 + 8);
  }

  else
  {
    v26 = *a1;
  }

  for (i = &v26[3 * v5]; i != v15; free(*i))
  {
    v42 = i;
    i -= 3;
    if (*(v42 - 3))
    {
      v43 = *(v42 - 4);
      if (v43)
      {
        v44 = 0;
        v45 = 8 * v43;
        do
        {
          v46 = *(*i + v44);
          if (v46 != -8 && v46 != 0)
          {
            llvm::deallocate_buffer(v46, (*v46 + 9), 8uLL);
          }

          v44 += 8;
        }

        while (v45 != v44);
      }
    }
  }

  *(a1 + 8) = v4;
  v48 = *(v16 + 8);
  if (v48)
  {
    v49 = *v16;
    v50 = (*v16 + 24 * v48);
    do
    {
      v51 = v50;
      v50 -= 3;
      if (*(v51 - 3))
      {
        v52 = *(v51 - 4);
        if (v52)
        {
          v53 = 0;
          v54 = 8 * v52;
          do
          {
            v55 = *(*v50 + v53);
            if (v55 != -8 && v55 != 0)
            {
              llvm::deallocate_buffer(v55, (*v55 + 9), 8uLL);
            }

            v53 += 8;
          }

          while (v54 != v53);
        }
      }

      free(*v50);
    }

    while (v50 != v49);
  }

  *(v16 + 8) = 0;
  return a1;
}

double sub_10006FB10(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = &v4[3 * v5];
    do
    {
      v7 = v6;
      v6 -= 3;
      if (*(v7 - 3))
      {
        v8 = *(v7 - 4);
        if (v8)
        {
          v9 = 0;
          v10 = 8 * v8;
          do
          {
            v11 = *(*v6 + v9);
            if (v11 != -8 && v11 != 0)
            {
              llvm::deallocate_buffer(v11, (*v11 + 9), 8uLL);
            }

            v9 += 8;
          }

          while (v10 != v9);
        }
      }

      free(*v6);
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
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

void sub_10006FBF4(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v6);
  sub_10006FC6C(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void sub_10006FC6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 24 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 8) = *(v3 + 1);
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      a2 += 24;
      v3 += 3;
    }

    while (v3 != v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *a1;
      v7 = (*a1 + 24 * v5);
      do
      {
        v8 = v7;
        v7 -= 3;
        if (*(v8 - 3))
        {
          v9 = *(v8 - 4);
          if (v9)
          {
            v10 = 0;
            v11 = 8 * v9;
            do
            {
              v12 = *(*v7 + v10);
              if (v12 != -8 && v12 != 0)
              {
                llvm::deallocate_buffer(v12, (*v12 + 9), 8uLL);
              }

              v10 += 8;
            }

            while (v11 != v10);
          }
        }

        free(*v7);
      }

      while (v7 != v6);
    }
  }
}

uint64_t sub_10006FD50(uint64_t a1)
{
  Loc = mlir::Token::getLoc((*(a1 + 8) + 56));
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
  v46 = EncodedSourceLocation;
  mlir::Token::getStringValue((*(a1 + 8) + 56), &v45);
  size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v48 = "empty operation name is invalid";
    v50 = 259;
    mlir::detail::Parser::emitError(a1, &v48, v65);
    if (v65[0])
    {
      mlir::InFlightDiagnostic::report(v65);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v12 = v70;
      if (v70)
      {
        v13 = v71;
        v14 = v70;
        if (v71 != v70)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = v70;
        }

        v71 = v12;
        operator delete(v14);
      }

      v15 = v68;
      if (v68)
      {
        v16 = v69;
        v17 = v68;
        if (v69 != v68)
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
          v17 = v68;
        }

        v69 = v15;
        operator delete(v17);
      }

      v28 = v66;
      if (v66 != &v67)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (std::string::find(&v45, 0, 0) == -1)
  {
    v19 = *(a1 + 8);
    *(v19 + 80) = *(v19 + 56);
    *(v19 + 96) = *(v19 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v48);
    v20 = *(a1 + 8);
    *(v20 + 56) = v48;
    *(v20 + 72) = v49;
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v45;
    }

    else
    {
      v21 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v45.__r_.__value_.__l.__size_;
    }

    mlir::OperationState::OperationState(&v48, EncodedSourceLocation, v21, v22);
    if (*(*(&v48 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v23 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
      v24 = &v45;
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v45.__r_.__value_.__l.__size_;
      }

      v74 = v24;
      v75 = v23;
      LOBYTE(v43) = 46;
      v25 = llvm::StringRef::find(&v74, &v43, 1uLL, 0);
      if (v25 == -1)
      {
        v26 = v74;
        v27 = v75;
      }

      else
      {
        v26 = v74;
        if (v25 >= v75)
        {
          v27 = v75;
        }

        else
        {
          v27 = v25;
        }
      }

      if (mlir::MLIRContext::getLoadedDialect(***(a1 + 8), v26, v27) || mlir::MLIRContext::getOrLoadDialect(***(a1 + 8), v26, v27))
      {
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v45;
        }

        else
        {
          v31 = v45.__r_.__value_.__r.__words[0];
        }

        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = v45.__r_.__value_.__l.__size_;
        }

        mlir::OperationName::OperationName(&v74, v31, v32, ***(a1 + 8));
        *(&v48 + 1) = v74;
      }

      else if ((mlir::MLIRContext::allowsUnregisteredDialects(***(a1 + 8)) & 1) == 0)
      {
        v74 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
        v77 = 259;
        mlir::detail::Parser::emitError(a1, &v74, v47);
        sub_100059A74(v47);
        goto LABEL_86;
      }
    }

    v33 = *(*(a1 + 8) + 152);
    if (v33)
    {
      mlir::AsmParserState::startOperationDefinition(v33, (&v48 + 8));
    }

    LOBYTE(v74) = 0;
    LOBYTE(v76[0]) = 0;
    LOBYTE(v43) = 0;
    v44 = 0;
    v42[0] = 0;
    v42[16] = 0;
    v41[0] = 0;
    v41[16] = 0;
    v29 = 0;
    if (!sub_100075E24(a1, &v48, &v74, &v43, v42, v41, 0, 0, 0, 0))
    {
      goto LABEL_87;
    }

    v34 = v54;
    v43 = v54;
    v54 = 0;
    if (v43 || v55 || *(*(&v48 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || (v74 = &v46, v75 = &v45, ((*(**(&v48 + 1) + 104))(*(&v48 + 1), *(&v48 + 1), &v51, sub_10007B464, &v74) & 1) != 0))
    {
      v29 = mlir::OpBuilder::create((a1 + 384), &v48);
      if (sub_100071374(a1, v29 & 0xFFFFFFFFFFFFFFFBLL))
      {
        if (!v34 || (v74 = &v46, v75 = &v43, v76[0] = &v45, (mlir::Operation::setPropertiesFromAttribute(v29, v34, sub_10007B780, &v74) & 1) != 0))
        {
LABEL_87:
          v74 = v76;
          v75 = 0x400000000;
          v35 = v53;
          if (v53 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v76, v53, 8);
            v35 = v53;
          }

          if (v35)
          {
            v36 = v52;
            v37 = &v52[v35];
            do
            {
              v38 = *v36;
              if (*v36)
              {
                for (i = *(v38 + 8); i != v38; i = *(i + 8))
                {
                  if (i)
                  {
                    v40 = (i - 8);
                  }

                  else
                  {
                    v40 = 0;
                  }

                  mlir::Block::dropAllDefinedValueUses(v40);
                }
              }

              ++v36;
            }

            while (v36 != v37);
          }

          if (v74 != v76)
          {
            free(v74);
          }

          mlir::OperationState::~OperationState(&v48);
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_57;
          }

          return v29;
        }
      }
    }

LABEL_86:
    v29 = 0;
    goto LABEL_87;
  }

  *&v48 = "null character not allowed in operation name";
  v50 = 259;
  mlir::detail::Parser::emitError(a1, &v48, v56);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v62;
      v7 = __p;
      if (v62 != __p)
      {
        do
        {
          v6 = sub_100052FFC(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v62 = v5;
      operator delete(v7);
    }

    v8 = v59;
    if (v59)
    {
      v9 = v60;
      v10 = v59;
      if (v60 != v59)
      {
        do
        {
          v11 = *--v9;
          *v9 = 0;
          if (v11)
          {
            operator delete[]();
          }
        }

        while (v9 != v8);
        v10 = v59;
      }

      v60 = v8;
      operator delete(v10);
    }

    v28 = v57;
    if (v57 != &v58)
    {
LABEL_55:
      free(v28);
    }
  }

LABEL_56:
  v29 = 0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  return v29;
}

uint64_t sub_1000703B0(int32x2_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a2 + 8;
  v7 = sub_100079B94((*&a1[2] + 88 * a1[3].u32[0] - 88), *(a2 + 8), *(a2 + 16));
  v8 = v7;
  v9 = *(v7 + 8);
  v11 = (a2 + 24);
  v10 = *(a2 + 24);
  v12 = v10 + 1;
  if (v9 > v10 || v9 == v12)
  {
    v14 = *(*v7 + 16 * *(a2 + 24));
    v55 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v9 <= v12)
    {
      if (*(v7 + 12) < v12)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v12, 16);
        v9 = *(v8 + 8);
      }

      if (v9 != v12)
      {
        bzero((*v8 + 16 * v9), 16 * (v12 - v9));
      }
    }

    *(v8 + 8) = v12;
    v14 = *(*v8 + 16 * *v11);
    v55 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  v15 = a1[44].i32[0];
  if (!v15)
  {
LABEL_39:
    v48 = *a2;
    v54 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v48);
    mlir::emitError(EncodedSourceLocation, v53, &v57);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v57);
    }

    if (v57)
    {
      sub_10007BBF0(v58, "redefinition of SSA value '", v6, "'");
    }

    v50 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v8 + 16 * *v11 + 8));
    mlir::Diagnostic::attachNote(v58, v50, 1);
  }

  v16 = a1[42];
  v17 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
  v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v17 >> 47) ^ v17);
  v19 = v15 - 1;
  v20 = v19 & (-348639895 * ((v18 >> 47) ^ v18));
  v21 = *(*&v16 + 16 * v20);
  if (v21 != v14)
  {
    v46 = 1;
    while (v21 != -4096)
    {
      v47 = v20 + v46++;
      v20 = v47 & v19;
      v21 = *(*&v16 + 16 * v20);
      if (v21 == v14)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((a3[1] ^ *(v14 + 8)) >= 8)
  {
    v22 = *a2;
    v54 = 257;
    v23 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v22);
    mlir::emitError(v23, v53, &v57);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v57);
    }

    v56 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    if (v57)
    {
      sub_10007BE1C(v58, "definition of SSA value '", v6, "#", (a2 + 24), "' has type ", &v56);
    }

    v24 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v8 + 16 * *v11 + 8));
    mlir::Diagnostic::attachNote(v58, v24, 1);
  }

  while (1)
  {
    v25 = *v14;
    if (!*v14)
    {
      break;
    }

    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;
      *v26 = *v25;
      if (v27)
      {
        *(v27 + 8) = v26;
      }
    }

    v25[3] = a3;
    v25[1] = a3;
    v28 = *a3;
    *v25 = *a3;
    if (v28)
    {
      *(v28 + 8) = v25;
    }

    *a3 = v25;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v55);
  mlir::Operation::destroy(DefiningOp);
  v30 = a1[44].i32[0];
  if (v30)
  {
    v31 = a1[42];
    v32 = 0x9DDFEA08EB382D69 * ((8 * v55 - 0xAE502812AA7333) ^ HIDWORD(v55));
    v33 = 0x9DDFEA08EB382D69 * (HIDWORD(v55) ^ (v32 >> 47) ^ v32);
    LODWORD(v32) = -348639895 * ((v33 >> 47) ^ v33);
    v34 = v30 - 1;
    v35 = v32 & (v30 - 1);
    v36 = *(*&v31 + 16 * v35);
    if (v55 == v36)
    {
LABEL_31:
      *(*&v31 + 16 * v35) = -8192;
      a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
    }

    else
    {
      v51 = 1;
      while (v36 != -4096)
      {
        v52 = v35 + v51++;
        v35 = v52 & v34;
        v36 = *(*&v31 + 16 * v35);
        if (v55 == v36)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v37 = *(*&a1[1] + 152);
  if (v37)
  {
    mlir::AsmParserState::refineDefinition(v37, v55, a3);
  }

LABEL_34:
  v38 = *a2;
  v39 = (*v8 + 16 * *(a2 + 24));
  *v39 = a3;
  v39[1] = v38;
  v40 = *(a2 + 8);
  v41 = *(a2 + 16);
  v42 = *&a1[2] + 88 * a1[3].u32[0];
  v43 = (*(v42 - 64) + 24 * *(v42 - 56) - 24);
  v44 = llvm::StringMapImpl::hash(v40, v41);
  sub_10003E8E4(v43, v40, v41, v44);
  return 1;
}

BOOL sub_100070ADC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  *v33 = *(v3 + 56);
  *&v33[16] = *(v3 + 72);
  *&v34 = "expected valid ssa identifier";
  v37 = 259;
  if ((mlir::detail::Parser::parseToken(v2, 6, &v34) & 1) == 0)
  {
    return 0;
  }

  v4 = 1;
  v32 = 1;
  v5 = *(v2 + 1);
  if (*(v5 + 56) != 15)
  {
    goto LABEL_7;
  }

  *(v5 + 80) = *(v5 + 56);
  *(v5 + 96) = *(v5 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v34);
  v6 = *(v2 + 1);
  *(v6 + 56) = v34;
  *(v6 + 72) = v35;
  v7 = *(v2 + 1);
  if (*(v7 + 56) == 10)
  {
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v7 + 64), *(v7 + 72));
    if (v9)
    {
      v4 = UInt64IntegerValue;
      if (UInt64IntegerValue)
      {
        v10 = *(v2 + 1);
        *(v10 + 80) = *(v10 + 56);
        *(v10 + 96) = *(v10 + 72);
        mlir::Lexer::lexToken((*(v2 + 1) + 8), &v34);
        v11 = *(v2 + 1);
        *(v11 + 56) = v34;
        *(v11 + 72) = v35;
        v32 = v4;
LABEL_7:
        v12 = *(a1 + 8);
        v34 = *&v33[8];
        Loc = mlir::Token::getLoc(v33);
        v30[0] = Loc;
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          sub_100070ED4(v12, &v34, &v32, v30);
          v4 = v32;
        }

        else
        {
          v15 = *v12 + 32 * v14;
          *v15 = v34;
          *(v15 + 16) = v4;
          *(v15 + 24) = Loc;
          ++*(v12 + 8);
        }

        **(a1 + 16) += v4;
        return 1;
      }
    }

    v30[0] = "expected named operation to have at least 1 result";
    v31 = 259;
    mlir::detail::Parser::emitError(v2, v30, &v34);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    v17 = result;
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
      result = v17;
    }

    if (v44[0] == 1)
    {
      if (v43 != v44)
      {
        free(v43);
        result = v17;
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
            v26 = sub_100052FFC(v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v42 = v25;
        operator delete(v27);
        result = v17;
      }

      v21 = v39;
      if (!v39)
      {
        goto LABEL_46;
      }

      v28 = v40;
      v23 = v39;
      if (v40 == v39)
      {
LABEL_45:
        v40 = v21;
        operator delete(v23);
        result = v17;
LABEL_46:
        if (v36 != &v38)
        {
          free(v36);
          return v17;
        }

        return result;
      }

      do
      {
        v29 = *--v28;
        *v28 = 0;
        if (v29)
        {
          operator delete[]();
        }
      }

      while (v28 != v21);
LABEL_44:
      v23 = v39;
      goto LABEL_45;
    }
  }

  else
  {
    v30[0] = "expected integer number of results";
    v31 = 259;
    mlir::detail::Parser::emitWrongTokenError(v2, v30, &v34);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    v17 = result;
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
      result = v17;
    }

    if (v44[0] == 1)
    {
      if (v43 != v44)
      {
        free(v43);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v42;
        v20 = __p;
        if (v42 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v42 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v39;
      if (!v39)
      {
        goto LABEL_46;
      }

      v22 = v40;
      v23 = v39;
      if (v40 == v39)
      {
        goto LABEL_45;
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
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t sub_100070ED4(uint64_t a1, __int128 *a2, void *a3, uint64_t *a4)
{
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = &v14;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v14 && v5 + 32 * v4 > &v14)
    {
      v12 = &v14 - v5;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 32);
      a1 = v13;
      v5 = *v13;
      v6 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 32);
      a1 = v11;
      v5 = *v11;
      v6 = &v14;
    }
  }

  v7 = (v5 + 32 * *(a1 + 8));
  v8 = *(v6 + 1);
  *v7 = *v6;
  v7[1] = v8;
  v9 = (*(a1 + 8) + 1);
  *(a1 + 8) = v9;
  return *a1 + 32 * v9 - 32;
}

unint64_t sub_100070FB4(mlir::detail::Parser *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v39 = v3;
  v40 = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v35);
    v5 = *(this + 1);
    *(v5 + 56) = v35;
    *(v5 + 72) = v36;
    v6 = mlir::RegisteredOperationName::lookup(v3, v4, ***(this + 1));
    if (v7)
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF00;
      return v8 | v6;
    }

    LOBYTE(v35) = 46;
    v16 = llvm::StringRef::find(&v39, &v35, 1uLL, 0);
    if (v16 == -1)
    {
      v17 = v39;
      v18 = v40;
      v19 = v40;
      v20 = *(this + 1);
      if (*(v20 + 56) != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = v39;
      v18 = v40;
      if (v16 >= v40)
      {
        v19 = v40;
      }

      else
      {
        v19 = v16;
      }

      v33[0] = 0;
      v33[1] = 0;
      v34 = 0;
      if (v40 > v16 + 1)
      {
LABEL_39:
        mlir::MLIRContext::getOrLoadDialect(***(this + 1), v17, v19);
        mlir::OperationName::OperationName(&v35, v39, v40, ***(this + 1));
        LOBYTE(v6) = v35;
        v8 = v35 & 0xFFFFFFFFFFFFFF00;
        if (SHIBYTE(v34) < 0)
        {
          v27 = v35;
          operator delete(v33[0]);
          LOBYTE(v6) = v27;
        }

        return v8 | v6;
      }

      v20 = *(this + 1);
      if (*(v20 + 56) != 2)
      {
LABEL_34:
        v23 = *(v20 + 168) + 16 * *(v20 + 176);
        v24 = *(v23 - 16);
        v19 = *(v23 - 8);
        v30 = 773;
        v29[0] = v24;
        v29[1] = v19;
        v29[2] = ".";
        *&v35 = v29;
        v36 = v17;
        v37 = v18;
        v38 = 1282;
        llvm::Twine::str(&v35, &v31);
        v34 = v32;
        *v33 = v31;
        v25 = SHIBYTE(v32);
        v26 = v33;
        if (v32 < 0)
        {
          v26 = v31;
        }

        if (v32 < 0)
        {
          v25 = *(&v31 + 1);
        }

        v39 = v26;
        v40 = v25;
        v17 = v24;
        goto LABEL_39;
      }
    }

    if (v17[v18 - 1] != 46)
    {
      goto LABEL_34;
    }

    if (v19)
    {
      v21 = v17;
      v22 = memchr(v17, 46, v19);
      if (!v22 || v22 - v21 == -1)
      {
        (*(**(v20 + 160) + 24))(*(v20 + 160), v21, v19);
      }
    }

    v8 = 0;
    LOBYTE(v6) = 0;
  }

  else
  {
    *&v35 = "empty operation name is invalid";
    v38 = 259;
    mlir::detail::Parser::emitError(this, &v35, v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v47;
        v11 = __p;
        if (v47 != __p)
        {
          do
          {
            v10 = sub_100052FFC(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v47 = v9;
        operator delete(v11);
      }

      v12 = v44;
      if (v44)
      {
        v13 = v45;
        v14 = v44;
        if (v45 != v44)
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
          v14 = v44;
        }

        v45 = v12;
        operator delete(v14);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }

    LOBYTE(v6) = 0;
    v8 = 0;
  }

  return v8 | v6;
}

uint64_t sub_100071374(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 56) != 65)
  {
    return 1;
  }

  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v16);
  v5 = *(a1 + 8);
  *(v5 + 56) = v16;
  *(v5 + 72) = v17;
  *&v16 = "expected '(' in location";
  v18 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v16))
  {
    v6 = *(a1 + 8);
    v7 = *(v6 + 56);
    v9 = *(v6 + 64);
    v8 = *(v6 + 72);
    v15 = 0;
    if (v7 == 5 && (!v8 || (v10 = memchr(v9, 46, v8)) == 0 || v10 - v9 == -1))
    {
      if (!sub_1000757E8(a1, &v15))
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(a1, &v15) & 1) == 0)
    {
      return 0;
    }

    *&v16 = "expected ')' in location";
    v18 = 259;
    if (mlir::detail::Parser::parseToken(a1, 28, &v16))
    {
      v11 = (a2 >> 2) & 1;
      if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LODWORD(v11) = 1;
      }

      v12 = v11 == 0;
      v13 = 24;
      if (!v12)
      {
        v13 = 32;
      }

      *((a2 & 0xFFFFFFFFFFFFFFF8) + v13) = v15;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000714E0()
{
  {
    sub_1002792EC();
  }

  return llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name;
}

const char *sub_100071528()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]";
  v6 = 103;
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

uint64_t sub_1000715A8()
{
  {
    sub_100279340();
  }

  return llvm::getTypeName<mlir::OpAsmOpInterface>(void)::Name;
}

const char *sub_1000715F0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpAsmOpInterface]";
  v6 = 84;
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

uint64_t sub_100071678(void *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0)
  {
    a1 = *a1;
  }

  return (*(v1 & 0xFFFFFFFFFFFFFFF8))(a1);
}

void sub_100071690(mlir::OpAsmParser *a1)
{
  mlir::OpAsmParser::~OpAsmParser(a1);

  operator delete();
}

void sub_1000716D0(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v13 = 1283;
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v12[0] = "custom op '";
  v12[2] = v5;
  v12[3] = v6;
  *&v14 = v12;
  *&v15 = "' ";
  LOWORD(v16) = 770;
  v7 = *(a3 + 32);
  if (v7 == 1)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
  }

  else if (*(a3 + 32))
  {
    v8 = *a3;
    v9 = a3[1];
    if (*(a3 + 33) != 1)
    {
      LOBYTE(v7) = 2;
      v8 = a3;
    }

    *&v17 = &v14;
    *&v18 = v8;
    *(&v18 + 1) = v9;
    LOBYTE(v19) = 2;
    BYTE1(v19) = v7;
  }

  else
  {
    LOWORD(v19) = 256;
  }

  *(a1 + 24) = 1;
  v10 = *(a1 + 16);
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v10 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, &v17, a4);
  if (*(*(v10 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a4);
  }
}

uint64_t sub_1000717F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL sub_100071834(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 13)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 13;
}

uint64_t sub_1000718AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL sub_1000718EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 20)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 20;
}

uint64_t sub_100071964(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL sub_1000719A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 27)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 27;
}

uint64_t sub_100071A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL sub_100071A5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 15)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 15;
}

uint64_t sub_100071AD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL sub_100071B14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 16)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 16;
}

uint64_t sub_100071B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL sub_100071BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 18)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 18;
}

uint64_t sub_100071C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL sub_100071C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 23)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 23;
}

uint64_t sub_100071CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL sub_100071D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 19)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 19;
}

uint64_t sub_100071DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL sub_100071DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 26)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 26;
}

uint64_t sub_100071E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL sub_100071EAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 25)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 25;
}

uint64_t sub_100071F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL sub_100071F64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 24)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 24;
}

uint64_t sub_100071FDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL sub_10007201C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 30)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 30;
}

uint64_t sub_100072094(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL sub_1000720D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 31)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 31;
}

uint64_t sub_10007214C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 11)
  {
    return 0;
  }

  if (a2)
  {
    mlir::Token::getStringValue((v3 + 56), &v6);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v6;
    v3 = *(v2 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v6);
  *(*(v2 + 8) + 56) = v6;
  return 1;
}

uint64_t sub_100072208(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) == 11)
  {
    if (a2)
    {
      v7 = *(v6 + 72);
      v35 = *(v6 + 64);
      v36 = v7;
      first_not_of = llvm::StringRef::find_first_not_of(&v35, "  \t\n\v\f\r", 8, 0);
      if (first_not_of >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = first_not_of;
      }

      if (v36 < v9)
      {
        v9 = v36;
      }

      v10 = v36 - v9;
      *&v39 = v35 + v9;
      *(&v39 + 1) = v36 - v9;
      last_not_of = llvm::StringRef::find_last_not_of(&v39, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
      v12 = v10 - (last_not_of + 1);
      if (v10 < last_not_of + 1)
      {
        v12 = 0;
      }

      v13 = *(&v39 + 1) - v12;
      if (*(&v39 + 1) >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = *(&v39 + 1);
      }

      llvm::decodeBase64(v39, v14, a2, &v34);
      if (v34)
      {
        v32 = v34;
        v34 = 0;
        llvm::toString(&v32, &v33);
        v38 = 260;
        v37[0] = &v33;
        (*(*a1 + 24))(&v39, a1, v4, v37);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }

        if (v48 == 1)
        {
          if (v47 != &v48)
          {
            free(v47);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v46;
            v18 = __p;
            if (v46 != __p)
            {
              do
              {
                v17 = sub_100052FFC(v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v46 = v16;
            operator delete(v18);
          }

          v19 = v43;
          if (v43)
          {
            v20 = v44;
            v21 = v43;
            if (v44 != v43)
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
              v21 = v43;
            }

            v44 = v19;
            operator delete(v21);
          }

          if (v41 != v42)
          {
            free(v41);
          }
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        return v15;
      }

      v5 = a1[2];
      v6 = *(v5 + 8);
    }

    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(v5 + 8) + 8), &v39);
    v30 = *(v5 + 8);
    *(v30 + 56) = v39;
    *(v30 + 72) = v40;
    return 1;
  }

  v37[0] = "expected string";
  v38 = 259;
  (*(*a1 + 24))(&v39, a1, v4, v37);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v46;
      v25 = __p;
      if (v46 != __p)
      {
        do
        {
          v24 = sub_100052FFC(v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v46 = v23;
      operator delete(v25);
    }

    v26 = v43;
    if (v43)
    {
      v27 = v44;
      v28 = v43;
      if (v44 != v43)
      {
        do
        {
          v29 = *--v27;
          *v27 = 0;
          if (v29)
          {
            operator delete[]();
          }
        }

        while (v27 != v26);
        v28 = v43;
      }

      v44 = v26;
      operator delete(v28);
    }

    if (v41 != v42)
    {
      free(v41);
    }
  }

  return v15;
}

uint64_t sub_10007265C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL sub_10007269C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 21)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 21;
}

uint64_t sub_100072714(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL sub_100072754(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 28)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 28;
}

uint64_t sub_1000727CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL sub_10007280C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 22)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 22;
}

uint64_t sub_100072884(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL sub_1000728C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 29)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 29;
}

uint64_t sub_10007293C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL sub_10007297C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 17)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 17;
}

uint64_t sub_1000729F4(uint64_t a1, double *a2)
{
  v4 = llvm::detail::IEEEFloat::IEEEFloat(v12, 0.0);
  v5 = llvm::APFloatBase::IEEEdouble(v4);
  llvm::APFloat::Storage::Storage(v13, v12, v5);
  llvm::detail::IEEEFloat::~IEEEFloat(v12);
  v6 = (*(*a1 + 368))(a1, v5, v13);
  if ((v6 & 1) == 0)
  {
    v7 = 0;
    v11 = v13[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) != v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_100029F40(v13);
    return v7;
  }

  *a2 = llvm::APFloat::convertToDouble(v13);
  v7 = 1;
  v8 = v13[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v9) == v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v13);
  return v7;
}

uint64_t sub_100072B28(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    v9 = v6;
    mlir::Lexer::lexToken((*(v6 + 8) + 8), &v22);
    v10 = *(v9 + 8);
    *(v10 + 56) = v22;
    *(v10 + 72) = v23;
    v6 = *(a1 + 16);
    v7 = *(v6 + 8);
  }

  v18 = *(v7 + 56);
  v19 = *(v7 + 72);
  LOBYTE(v22) = 0;
  v24 = 0;
  v11 = mlir::detail::Parser::parseFloatFromLiteral(v6, &v22, &v18, v8 == 24, a2);
  v12 = 0;
  if (v11)
  {
    v14 = *(a1 + 16);
    v15 = *(v14 + 8);
    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken((*(v14 + 8) + 8), &v20);
    v16 = *(v14 + 8);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    v11 = sub_10006565C(a3, &v22);
    v12 = 1;
    if (v24 != 1)
    {
      return v12;
    }
  }

  else if (v24 != 1)
  {
    return v12;
  }

  v17 = v22;
  if (llvm::APFloatBase::PPCDoubleDouble(v11) == v17)
  {
    sub_100029F40(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return v12;
}

uint64_t sub_100072CF8(void *a1, void **a2, const char *a3, void ***a4)
{
  v26[0] = a2;
  v26[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v26, 1, 0);
    return 0;
  }

  else
  {
    v10 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 408))(a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v24 = "expected '";
      v25 = 259;
      (*(*a1 + 24))(&v31, a1, v10, &v24);
      if (v31)
      {
        v30 = 261;
        v27 = a2;
        v28 = a3;
        mlir::Diagnostic::operator<<(v32, &v27);
        if (v31)
        {
          LODWORD(v27) = 3;
          v28 = "'";
          v29 = 1;
          v11 = &v27;
          v12 = v33;
          if (v34 >= v35)
          {
            if (v33 <= &v27 && v33 + 24 * v34 > &v27)
            {
              v23 = &v27 - v33;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
              v12 = v33;
              v11 = (v33 + v23);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
              v11 = &v27;
              v12 = v33;
            }
          }

          v13 = &v12[24 * v34];
          v14 = *v11;
          *(v13 + 2) = v11[2];
          *v13 = v14;
          ++v34;
          if (v31)
          {
            mlir::Diagnostic::operator<<(v32, a4);
          }
        }
      }

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
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

        v15 = __p;
        if (__p)
        {
          v16 = v40;
          v17 = __p;
          if (v40 != __p)
          {
            do
            {
              v16 = sub_100052FFC(v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v40 = v15;
          operator delete(v17);
        }

        v18 = v37;
        if (v37)
        {
          v19 = v38;
          v20 = v37;
          if (v38 != v37)
          {
            do
            {
              v21 = *--v19;
              *v19 = 0;
              if (v21)
              {
                operator delete[]();
              }
            }

            while (v19 != v18);
            v20 = v37;
          }

          v38 = v18;
          operator delete(v20);
        }

        if (v33 != v36)
        {
          free(v33);
        }
      }
    }
  }

  return v5;
}

BOOL sub_100073068(uint64_t a1, const void *a2, size_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  if (v5 == 12 || v5 == 3)
  {
    if (*(v4 + 72) != a3)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v5 == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v12, 1, 1);
    return 0;
  }

  v9 = a2;
  v10 = a3;
  result = mlir::Token::isKeyword((v4 + 56));
  if (result)
  {
    v3 = *(a1 + 16);
    v4 = *(v3 + 8);
    a3 = v10;
    a2 = v9;
    if (*(v4 + 72) != v10)
    {
      return 0;
    }

LABEL_7:
    if (!a3 || !memcmp(*(v4 + 64), a2, a3))
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(v3 + 8) + 8), &v13);
      v11 = *(v3 + 8);
      *(v11 + 56) = v13;
      *(v11 + 72) = v14;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1000731C0(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v7 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v3 = *(v2 + 8);
    a2 = v7;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v9);
    v6 = *(v2 + 8);
    *(v6 + 56) = v9;
    *(v6 + 72) = v10;
    return 1;
  }

  return result;
}

BOOL sub_100073258(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = *(v8 + 56);
  if (v9 == 12 || v9 == 3)
  {
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
LABEL_17:
      i = a3;
      goto LABEL_18;
    }
  }

  else
  {
    if (v9 == 2)
    {
      (*(**(v8 + 160) + 48))(*(v8 + 160), a3, a4, 1);
      return 0;
    }

    result = mlir::Token::isKeyword((v8 + 56));
    if (!result)
    {
      return result;
    }

    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  if (v11)
  {
    v13 = 16 * a4;
    for (i = a3; *(i + 8) != v11 || memcmp(*i, v12, v11); i += 16)
    {
      v13 -= 16;
      if (!v13)
      {
        return 0;
      }
    }
  }

  else
  {
    v18 = 16 * a4;
    for (i = a3; *(i + 8); i += 16)
    {
      v18 -= 16;
      if (!v18)
      {
        return 0;
      }
    }
  }

LABEL_18:
  if (i != a3 + 16 * a4)
  {
    *a2 = v12;
    a2[1] = v11;
    *(v8 + 80) = *(v8 + 56);
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken((*(v7 + 8) + 8), &v19);
    v17 = *(v7 + 8);
    *(v17 + 56) = v19;
    *(v17 + 72) = v20;
    return 1;
  }

  return 0;
}

BOOL sub_1000733E4(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3);
  *a2 = v4;
  return v4 != 0;
}

uint64_t sub_10007341C(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = *(a1 + 16);
  if (*(*(v6 + 8) + 56) == 5)
  {
    v8 = mlir::detail::Parser::parseAttribute(v6, a3);
    *a2 = v8;
    return v8 != 0;
  }

  else
  {

    return a4(a5);
  }
}

uint64_t sub_100073498(uint64_t a1, mlir::NamedAttrList *a2)
{
  v2 = *(a1 + 16);
  if (*(*(v2 + 1) + 56) == 20)
  {
    return mlir::detail::Parser::parseAttributeDict(v2, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000734B8(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t sub_100073558(void *a1, uint64_t *a2)
{
  v2 = *(a1[2] + 8);
  v19 = *(v2 + 56);
  v20 = *(v2 + 72);
  if (v19 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v19, __p);
  v18 = 260;
  *&v16 = __p;
  *a2 = mlir::Builder::getStringAttr(v5, &v16, v6);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = a1[2];
  v8 = *(v7 + 8);
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken((*(v7 + 8) + 8), &v16);
  v9 = *(v7 + 8);
  *(v9 + 56) = v16;
  *(v9 + 72) = v17;
  v10 = *(*(a1[2] + 8) + 152);
  if (v10)
  {
    v11 = mlir::SymbolRefAttr::get(*a2);
    *&v16 = mlir::Token::getLocRange(&v19);
    *(&v16 + 1) = v12;
    mlir::AsmParserState::addUses(v10, v11, &v16, 1);
  }

  return 1;
}

BOOL sub_1000736CC(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t sub_100073700(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = *(a1 + 16);
  if (*(*(v5 + 1) + 56) == 8)
  {
    v7 = mlir::detail::Parser::parseType(v5);
    *a2 = v7;
    return v7 != 0;
  }

  else
  {

    return a3(a4);
  }
}

uint64_t sub_100073760(mlir::detail::Parser **a1, unsigned int *a2)
{
  if ((*(*a1 + 7))(a1))
  {
    return mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000737CC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 13)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v8);
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2);
}

BOOL sub_100073870(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 16);
  v7 = "expected ':'";
  v8 = 259;
  if ((mlir::detail::Parser::parseToken(v4, 15, &v7) & 1) == 0)
  {
    return 0;
  }

  v5 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v5;
  return v5 != 0;
}

uint64_t sub_1000738EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  if (mlir::detail::Parser::parseToken(v4, 15, &v6))
  {
    return mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100073960(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 15)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v8);
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

void sub_100073A14(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (sub_10006575C(a2))
  {
    v6 = sub_10006575C(a2);
    __p = 0;
    v35 = 0;
    v36 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &__p, a3);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v29 = 257;
    mlir::detail::Parser::emitError(v7, v28, &__p);
    if (!__p)
    {
      goto LABEL_11;
    }

    LODWORD(v30) = 3;
    v31 = "dialect '";
    v32 = 9;
    v8 = &v30;
    v9 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v30 && v37 + 24 * v38 > &v30)
      {
        v26 = &v30 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v9 = v37;
        v8 = (v37 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v8 = &v30;
        v9 = v37;
      }
    }

    v10 = &v9[24 * v38];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v38;
    if (!__p)
    {
      goto LABEL_11;
    }

    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    v33 = 261;
    v30 = v12;
    v31 = v13;
    mlir::Diagnostic::operator<<(&v35, &v30);
    if (__p)
    {
      LODWORD(v30) = 3;
      v31 = "' does not expect resource handles";
      v32 = 34;
      v14 = &v30;
      v15 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v30 && v37 + 24 * v38 > &v30)
        {
          v27 = &v30 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v15 = v37;
          v14 = (v37 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v14 = &v30;
          v15 = v37;
        }
      }

      v16 = &v15[24 * v38];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v38;
      v18 = __p;
      *a3 = 0;
      a3[24] = 0;
      if (v18)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }
    }

    else
    {
LABEL_11:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v19 = v43;
      if (v43)
      {
        v20 = v44;
        v21 = v43;
        if (v44 != v43)
        {
          do
          {
            v20 = sub_100052FFC(v20 - 1);
          }

          while (v20 != v19);
          v21 = v43;
        }

        v44 = v19;
        operator delete(v21);
      }

      v22 = v41;
      if (v41)
      {
        v23 = v42;
        v24 = v41;
        if (v42 != v41)
        {
          do
          {
            v25 = *--v23;
            *v23 = 0;
            if (v25)
            {
              operator delete[]();
            }
          }

          while (v23 != v22);
          v24 = v41;
        }

        v42 = v22;
        operator delete(v24);
      }

      if (v37 != v40)
      {
        free(v37);
      }
    }
  }
}

uint64_t sub_100073D88(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(*(a1 + 16) + 8);
  sub_1000658E8(v2 + 112, &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(v2 + 144);
    if (v5 >= *(v2 + 148))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 136, (v2 + 152), v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(v2 + 144);
    }

    *(*(v2 + 136) + 8 * v5) = v4;
    ++*(v2 + 144);
  }

  return result;
}

uint64_t sub_100073E20(uint64_t result)
{
  v1 = *(*(result + 16) + 8);
  v2 = v1[16].i32[0];
  if (v2)
  {
    v3 = v1[14];
    v4 = v1[18].u32[0];
    v5 = *(*&v1[17] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[15] = vadd_s32(v1[15], 0x1FFFFFFFFLL);
    }

    else
    {
      v9 = 1;
      while (v8 != -4096)
      {
        v10 = v7 + v9++;
        v7 = v10 & v6;
        v8 = *(*&v3 + 8 * v7);
        if (v5 == v8)
        {
          goto LABEL_3;
        }
      }
    }

    v1[18].i32[0] = v4 - 1;
  }

  else
  {
    --v1[18].i32[0];
  }

  return result;
}

uint64_t sub_100073EC0(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 16) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return sub_100065D14(a1, a2);
  }

  *a2 = "";
  a2[1] = 0;
  return 1;
}

uint64_t sub_100073EF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 16) + 8);
  if (*(v3 + 56) == 2 && !*(v3 + 72))
  {
    return (*(**(v3 + 160) + 48))(*(v3 + 160), a2, a3, 0);
  }

  return result;
}

uint64_t sub_100073F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 65)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v18);
  v6 = *(v2 + 8);
  *(v6 + 56) = v18;
  *(v6 + 72) = v19;
  v21 = 0;
  v7 = *(a1 + 88);
  *&v18 = "expected '(' in location";
  v20 = 259;
  if (mlir::detail::Parser::parseToken(v7, 21, &v18))
  {
    v8 = *(a1 + 88);
    v9 = *(v8 + 8);
    if (*(v9 + 56) == 5 && ((v10 = *(v9 + 72)) == 0 || ((v11 = *(v9 + 64), v12 = *(a1 + 88), v13 = memchr(v11, 46, v10), v8 = v12, v13) ? (v14 = v13 - v11 == -1) : (v14 = 1), v14)))
    {
      if (!sub_1000757E8(v8, &v21))
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(v8, &v21) & 1) == 0)
    {
      return 0;
    }

    v15 = *(a1 + 88);
    *&v18 = "expected ')' in location";
    v20 = 259;
    if (mlir::detail::Parser::parseToken(v15, 28, &v18))
    {
      v16 = v21;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = v16;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000740AC@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = (*(result + 32) + 16);
    v5 = 32 * v3;
    while (1)
    {
      v6 = a2 - *v4;
      if (a2 < *v4)
      {
        break;
      }

      v4 += 8;
      a2 = v6;
      v5 -= 32;
      if (!v5)
      {
        *a3 = "";
        *(a3 + 8) = 0;
        *(a3 + 16) = -1;
        return result;
      }
    }

    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    if (v8)
    {
      ++v7;
    }

    *a3 = v7;
    *(a3 + 8) = v8 - (v8 != 0);
    *(a3 + 16) = a2;
  }

  else
  {
    *a3 = "";
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_100074134(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = (v1 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v3)
  {
    result = 0;
    v8 = v2;
LABEL_9:
    v14 = v2 + 32 * v1;
    do
    {
      result += *(v8 + 16);
      v8 += 32;
    }

    while (v8 != v14);
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 + 1;
  v7 = (v3 + 1) & 0xFFFFFFFFFFFFFFELL;
  v8 = v2 + 32 * v7;
  v9 = (v2 + 48);
  v10 = v7;
  do
  {
    v11 = *(v9 - 8);
    v12 = *v9;
    v9 += 16;
    v4 += v11;
    v5 += v12;
    v10 -= 2;
  }

  while (v10);
  result = v5 + v4;
  if (v6 != v7)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000741BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  v11 = *(v4 + 72);
  v9 = *(v3 + 400);
  v10 = v5;
  *(v3 + 400) = a2;
  *(v3 + 408) = a3;
  v6 = sub_10006FD50(v3);
  if (v6)
  {
    v7 = *(*(v3 + 8) + 152);
    if (v7)
    {
      mlir::Token::getLocRange(&v10);
      mlir::Token::getEndLoc((*(v3 + 8) + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v7, v6);
    }
  }

  if (v9)
  {
    *(v3 + 400) = v9;
  }

  else
  {
    *(v3 + 400) = 0;
    *(v3 + 408) = 0;
  }

  return v6;
}

BOOL sub_1000742A4(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10)
{
  v10 = *(a1 + 88);
  v18 = *a3;
  v19 = *(a3 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12 = *a6;
  v13 = *(a6 + 2);
  return sub_100075E24(v10, a2, &v18, &v16, &v14, &v12, a7, a8, a9, a10);
}

uint64_t sub_100074320(uint64_t a1, uint64_t a2, char a3)
{
  v6 = 0;
  v7 = 0uLL;
  if (!sub_100077A2C(*(a1 + 88), &v6, a3))
  {
    return 0;
  }

  v4 = v8;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  return 1;
}

uint64_t sub_100074390(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[11] + 8);
  v5 = *(v3 + 56);
  v4 = v3 + 56;
  if (v5 == 6)
  {
    return (*(*a1 + 704))(a1, a2, a3) | 0x100u;
  }

  v6 = a1;
  v7 = a2;
  v8 = a3;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v4, 6);
  a2 = v7;
  a3 = v8;
  v10 = isCodeCompletionFor;
  a1 = v6;
  if (v10)
  {
    return (*(*a1 + 704))(a1, a2, a3) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100074448(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v46 = a4;
  if (a3 || (v9 = *(a1[11] + 8), v47 = *(v9 + 56), v48 = *(v9 + 72), v47 == 6) || mlir::Token::isCodeCompletionFor(&v47, 6))
  {
    v43[0] = a1;
    v43[1] = a2;
    v43[2] = &v46;
    Loc = mlir::Token::getLoc((*(a1[11] + 8) + 56));
    if (((*(*a1 + 392))(a1, a3, sub_10007A960, v43, " in operand list", 16) & 1) == 0)
    {
      return 0;
    }

    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v44[0] = "expected ";
      v45 = 259;
      (*(*a1 + 24))(v49, a1, Loc, v44);
      if (v49[0])
      {
        LODWORD(v47) = 2;
        *(&v47 + 1) = a5;
        v11 = &v47;
        v12 = v50;
        if (v51 >= v52)
        {
          if (v50 <= &v47 && v50 + 24 * v51 > &v47)
          {
            v41 = &v47 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v12 = v50;
            v11 = v50 + v41;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v11 = &v47;
            v12 = v50;
          }
        }

        v13 = &v12[24 * v51];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        v15 = ++v51;
        if (v49[0])
        {
          LODWORD(v47) = 3;
          *(&v47 + 1) = " operands";
          v48 = 9;
          v16 = &v47;
          v17 = v50;
          if (v15 >= v52)
          {
            if (v50 <= &v47 && v50 + 24 * v15 > &v47)
            {
              v42 = &v47 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v15 + 1, 24);
              v17 = v50;
              v16 = v50 + v42;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v15 + 1, 24);
              v16 = &v47;
              v17 = v50;
            }
          }

          v18 = &v17[24 * v51];
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          ++v51;
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      v21 = result;
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
        result = v21;
      }

      if (v59 == 1)
      {
        if (v58 != &v59)
        {
          free(v58);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v57;
          v24 = __p;
          if (v57 != __p)
          {
            do
            {
              v23 = sub_100052FFC(v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v57 = v22;
          operator delete(v24);
        }

        v25 = v54;
        result = v21;
        if (!v54)
        {
          goto LABEL_67;
        }

        v26 = v55;
        v27 = v54;
        if (v55 == v54)
        {
LABEL_66:
          v55 = v25;
          operator delete(v27);
          result = v21;
LABEL_67:
          if (v50 != v53)
          {
            free(v50);
            return v21;
          }

          return result;
        }

        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
LABEL_65:
        v27 = v54;
        goto LABEL_66;
      }

      return result;
    }

    return 1;
  }

  if ((a5 + 1) <= 1)
  {
    return 1;
  }

  if ((v47 - 21) > 1)
  {
    v35 = a1[11];
    v44[0] = "expected operand";
    v45 = 259;
    mlir::detail::Parser::emitWrongTokenError(v35, v44, v49);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    v21 = result;
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
      result = v21;
    }

    if (v59)
    {
      if (v58 != &v59)
      {
        free(v58);
        result = v21;
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
            v37 = sub_100052FFC(v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v57 = v36;
        operator delete(v38);
        result = v21;
      }

      v25 = v54;
      if (!v54)
      {
        goto LABEL_67;
      }

      v39 = v55;
      v27 = v54;
      if (v55 == v54)
      {
        goto LABEL_66;
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

      while (v39 != v25);
      goto LABEL_65;
    }
  }

  else
  {
    v29 = a1[11];
    v44[0] = "unexpected delimiter";
    v45 = 259;
    mlir::detail::Parser::emitError(v29, v44, v49);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    v21 = result;
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
      result = v21;
    }

    if (v59)
    {
      if (v58 != &v59)
      {
        free(v58);
        result = v21;
      }

      v30 = __p;
      if (__p)
      {
        v31 = v57;
        v32 = __p;
        if (v57 != __p)
        {
          do
          {
            v31 = sub_100052FFC(v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v57 = v30;
        operator delete(v32);
        result = v21;
      }

      v25 = v54;
      if (!v54)
      {
        goto LABEL_67;
      }

      v33 = v55;
      v27 = v54;
      if (v55 == v54)
      {
        goto LABEL_66;
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

      while (v33 != v25);
      goto LABEL_65;
    }
  }

  return result;
}

uint64_t sub_100074A70(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  result = sub_100077394(v5, v10, a3);
  if (result)
  {
    v8 = *(a4 + 8);
    if (v8 >= *(a4 + 12))
    {
      v9 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v8 + 1, 8);
      result = v9;
      LODWORD(v8) = *(a4 + 8);
    }

    *(*a4 + 8 * v8) = result;
    ++*(a4 + 8);
    return 1;
  }

  return result;
}

uint64_t sub_100074AF8(uint64_t a1, uint64_t a2, uint64_t *a3, size_t a4, const llvm::Twine *a5, uint64_t a6, int a7)
{
  v32 = v34;
  v33 = 0x200000000;
  v28[2] = &v32;
  __src = v31;
  v30 = &_mh_execute_header;
  v28[0] = a1;
  v28[1] = &__src;
  v27 = 0;
  if (mlir::detail::Parser::parseAffineMapOfSSAIds(*(a1 + 88), &v27, sub_10007AAEC, v28, a7))
  {
    if (v27)
    {
      v13 = mlir::AffineMapAttr::get(v27);
      *a3 = v13;
      NamedAttr = mlir::Builder::getNamedAttr(*(a1 + 88), a4, a5, v13);
      mlir::NamedAttrList::push_back(a6, NamedAttr, v15);
    }

    v16 = v32;
    v17 = v33;
    *(a2 + 8) = 0;
    if (v17 <= *(a2 + 12))
    {
      if (!v17)
      {
        v21 = 0;
LABEL_11:
        v22 = (v21 + v17);
        *(a2 + 8) = v22;
        v23 = __src;
        v24 = v30;
        v25 = v30 + v22;
        if (v25 > *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v25, 32);
          LODWORD(v22) = *(a2 + 8);
        }

        if (v24)
        {
          memcpy((*a2 + 32 * v22), v23, 32 * v24);
          LODWORD(v22) = *(a2 + 8);
        }

        *(a2 + 8) = v22 + v24;
        v19 = 1;
        v20 = __src;
        if (__src != v31)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v18 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v17, 32);
      v18 = *(a2 + 8);
    }

    memcpy((*a2 + 32 * v18), v16, 32 * v17);
    v21 = *(a2 + 8);
    goto LABEL_11;
  }

  v19 = 0;
  v20 = __src;
  if (__src != v31)
  {
LABEL_16:
    free(v20);
  }

LABEL_17:
  if (v32 != v34)
  {
    free(v32);
  }

  return v19;
}

BOOL sub_100074D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
  return mlir::detail::Parser::parseAffineExprOfSSAIds(*(a1 + 88), a4, sub_10007AC28, v5);
}

uint64_t sub_100074D58(mlir::AsmParser *a1, uint64_t a2, int a3, int a4)
{
  v12[0] = v13;
  v12[1] = 0x400000000;
  v13[8] = 4;
  if ((*(*a1 + 704))(a1, a2, 0) & 1) != 0 && (!a3 || ((*(*a1 + 576))(a1, a2 + 32)) && (!a4 || ((*(*a1 + 488))(a1, v12)) && ((*(*a1 + 656))(a1, a2 + 48))
  {
    Context = mlir::AsmParser::getContext(a1);
    *(a2 + 40) = mlir::NamedAttrList::getDictionary(v12, Context);
    v9 = 1;
    v10 = v12[0];
    if (v12[0] == v13)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v10 = v12[0];
  if (v12[0] != v13)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

uint64_t sub_100074F10(void *a1)
{
  if (*(*(a1[11] + 8) + 56) == 6)
  {
    return (*(*a1 + 752))(a1) | 0x100u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100074F88(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = a4;
  v7 = a5;
  if (!a3 && *(*(a1[11] + 8) + 56) != 6)
  {
    return 1;
  }

  v6[0] = a1;
  v6[1] = a2;
  v6[2] = &v8;
  v6[3] = &v7;
  return (*(*a1 + 392))(a1, a3, sub_10007AD64, v6, " in argument list", 17);
}

uint64_t sub_100075058(void *a1)
{
  if (*(*(a1[11] + 8) + 56) == 20)
  {
    return (*(*a1 + 776))(a1) | 0x100u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000750D0(uint64_t a1)
{
  if (*(*(*(a1 + 88) + 8) + 56) == 20)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1000751F0(void *a1, uint64_t a2)
{
  v2 = *(a1[11] + 8);
  v4 = *(v2 + 56);
  v3 = v2 + 56;
  if (v4 == 7)
  {
    return (*(*a1 + 800))(a1, a2) | 0x100u;
  }

  v5 = a1;
  v6 = a2;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v3, 7);
  a2 = v6;
  v8 = isCodeCompletionFor;
  a1 = v5;
  if (v8)
  {
    return (*(*a1 + 800))(a1, a2) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100075294(void *a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 800))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    return 1;
  }

  v5 = a1[11];
  v41 = v43;
  v42 = 0x400000000;
  if (sub_100076A78(v5, &v41))
  {
    if (v42)
    {
      v38 = v40;
      v39 = 0x400000000;
      *&v33 = "expected ':' in operand list";
      LOWORD(v35) = 259;
      if (mlir::detail::Parser::parseToken(v5, 15, &v33) & 1) != 0 && (mlir::detail::Parser::parseTypeListNoParens(v5, &v38))
      {
        v6 = v42;
        if (v42 == v39)
        {
          if (*(a3 + 12) < v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v42, 8);
            v6 = v42;
          }

          if (v6)
          {
            v7 = 0;
            v8 = 0;
            v9 = 32 * v6;
            while (1)
            {
              v10 = *&v41[v8 + 16];
              v33 = *&v41[v8];
              v34 = v10;
              v11 = sub_100077394(v5, &v33, *(v38 + v7));
              v12 = v11 == 0;
              if (!v11)
              {
                break;
              }

              v13 = *(a3 + 8);
              if (v13 >= *(a3 + 12))
              {
                v14 = v11;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v13 + 1, 8);
                v11 = v14;
                v13 = *(a3 + 8);
              }

              *(*a3 + 8 * v13) = v11;
              ++*(a3 + 8);
              v8 += 32;
              v7 += 8;
              if (v9 == v8)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            v12 = 0;
          }
        }

        else
        {
          v28 = "expected ";
          v29 = 259;
          mlir::detail::Parser::emitError(v5, &v28, &v33);
          if (v33)
          {
            v30 = 5;
            v31 = v42;
            v16 = &v30;
            v17 = *(&v34 + 1);
            if (v35 >= v36)
            {
              if (*(&v34 + 1) <= &v30 && *(&v34 + 1) + 24 * v35 > &v30)
              {
                v26 = &v30 - *(&v34 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v35 + 1, 24);
                v17 = *(&v34 + 1);
                v16 = &v26[*(&v34 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v35 + 1, 24);
                v16 = &v30;
                v17 = *(&v34 + 1);
              }
            }

            v18 = v17 + 24 * v35;
            v19 = *v16;
            *(v18 + 16) = *(v16 + 2);
            *v18 = v19;
            v20 = ++v35;
            if (v33)
            {
              v30 = 3;
              v31 = " types to match operand list";
              v32 = 28;
              v21 = &v30;
              v22 = *(&v34 + 1);
              if (v20 >= v36)
              {
                if (*(&v34 + 1) <= &v30 && *(&v34 + 1) + 24 * v20 > &v30)
                {
                  v27 = &v30 - *(&v34 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v20 + 1, 24);
                  v22 = *(&v34 + 1);
                  v21 = &v27[*(&v34 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v20 + 1, 24);
                  v21 = &v30;
                  v22 = *(&v34 + 1);
                }
              }

              v23 = v22 + 24 * v35;
              v24 = *v21;
              *(v23 + 16) = *(v21 + 2);
              *v23 = v24;
              ++v35;
            }
          }

          v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
          if (v33)
          {
            mlir::InFlightDiagnostic::report(&v33);
          }

          if (v37[160] == 1)
          {
            sub_100052F18(&v33 + 1);
          }

          v12 = !v25;
        }
      }

      else
      {
        v12 = 1;
      }

      if (v38 != v40)
      {
        free(v38);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if (v41 != v43)
  {
    free(v41);
  }

  return (v12 & 1) == 0 && ((*(*a1 + 296))(a1) & 1) != 0;
}

uint64_t sub_10007573C(mlir::detail::Parser **a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 36))(a1))
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = a3;
    v6 = 1;
    v7 = mlir::detail::Parser::parseCommaSeparatedListUntil(a1[11], 28, sub_10007AEFC, v9, 1);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7 | (v6 << 8);
}

BOOL sub_1000757E8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v61 = *(v4 + 56);
  v62 = *(v4 + 72);
  v5 = v62;
  *(v4 + 80) = v61;
  *(v4 + 96) = v5;
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v66);
  v6 = *(a1 + 8);
  *(v6 + 56) = v66;
  *(v6 + 72) = v67;
  if (v62)
  {
    v7 = (*(&v61 + 1) + 1);
  }

  else
  {
    v7 = *(&v61 + 1);
  }

  v8 = v62 - (v62 != 0);
  v9 = *(a1 + 8);
  v10 = *(v9 + 152);
  if (v10)
  {
    LocRange = mlir::Token::getLocRange(&v61);
    mlir::AsmParserState::addAttrAliasUses(v10, v7, v8, LocRange, v12);
    v9 = *(a1 + 8);
  }

  v13 = *(v9 + 104);
  v14 = llvm::StringMapImpl::hash(v7, v8);
  Key = llvm::StringMapImpl::FindKey(v13, v7, v8, v14);
  if (Key == -1 || Key == *(v13 + 8) || (v17 = *(*v13 + 8 * Key), (v18 = *(v17 + 8)) == 0))
  {
    v43 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 368) - *(a1 + 360)) >> 3);
    v44 = mlir::UnknownLoc::get(***(a1 + 8), v16);
    *a2 = mlir::OpaqueLoc::get(v43, &unk_1002C5068, v44);
    Loc = mlir::Token::getLoc(&v61);
    v46 = *(a1 + 368);
    v47 = *(a1 + 376);
    if (v46 >= v47)
    {
      v50 = *(a1 + 360);
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v50) >> 3) + 1;
      if (v51 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10002BC08();
      }

      v52 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 3);
      if (2 * v52 > v51)
      {
        v51 = 2 * v52;
      }

      if (v52 >= 0x555555555555555)
      {
        v53 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        if (v53 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10002BC08();
      }

      v54 = (8 * ((v46 - v50) >> 3));
      *v54 = Loc;
      v54[1] = v7;
      v54[2] = v8;
      v48 = v54 + 3;
      v55 = v54 - (v46 - v50);
      memcpy(v55, v50, v46 - v50);
      *(a1 + 360) = v55;
      *(a1 + 368) = v48;
      *(a1 + 376) = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      *v46 = Loc;
      v46[1] = v7;
      v48 = v46 + 3;
      v46[2] = v8;
    }

    *(a1 + 368) = v48;
    return 1;
  }

  if (mlir::LocationAttr::classof(*(v17 + 8)))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  if (v19)
  {
    return 1;
  }

  v20 = mlir::Token::getLoc(&v61);
  v60 = 257;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v20);
  mlir::emitError(EncodedSourceLocation, v59, &v66);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v66);
  }

  if (v66)
  {
    v63 = 3;
    v64 = "expected location, but found '";
    v65 = 30;
    v22 = &v63;
    v23 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v63 && v68 + 24 * v69 > &v63)
      {
        v56 = &v63 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v23 = v68;
        v22 = (v68 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v22 = &v63;
        v23 = v68;
      }
    }

    v24 = &v23[24 * v69];
    v25 = *v22;
    *(v24 + 2) = *(v22 + 2);
    *v24 = v25;
    ++v69;
    if (v66)
    {
      v26 = &v63;
      mlir::DiagnosticArgument::DiagnosticArgument(&v63, v18);
      v27 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v63 && v68 + 24 * v69 > &v63)
        {
          v57 = &v63 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v27 = v68;
          v26 = (v68 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v26 = &v63;
          v27 = v68;
        }
      }

      v28 = &v27[24 * v69];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      v30 = ++v69;
      if (v66)
      {
        v63 = 3;
        v64 = "'";
        v65 = 1;
        v31 = &v63;
        v32 = v68;
        if (v30 >= v70)
        {
          if (v68 <= &v63 && v68 + 24 * v30 > &v63)
          {
            v58 = &v63 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
            v32 = v68;
            v31 = (v68 + v58);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
            v31 = &v63;
            v32 = v68;
          }
        }

        v33 = &v32[24 * v69];
        v34 = *v31;
        *(v33 + 2) = *(v31 + 2);
        *v33 = v34;
        ++v69;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  v36 = result;
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
    result = v36;
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
      result = v36;
    }

    v37 = __p;
    if (__p)
    {
      v38 = v75;
      v39 = __p;
      if (v75 != __p)
      {
        do
        {
          v38 = sub_100052FFC(v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v75 = v37;
      operator delete(v39);
      result = v36;
    }

    v40 = v72;
    if (v72)
    {
      v41 = v73;
      v42 = v72;
      if (v73 != v72)
      {
        do
        {
          v49 = *--v41;
          *v41 = 0;
          if (v49)
          {
            operator delete[]();
          }
        }

        while (v41 != v40);
        v42 = v72;
      }

      v73 = v40;
      operator delete(v42);
      result = v36;
    }

    if (v68 != v71)
    {
      free(v68);
      return v36;
    }
  }

  return result;
}

BOOL sub_100075E24(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10)
{
  v93 = a9;
  v94 = a10;
  v113 = v115;
  v114 = 0x800000000;
  if (*(a3 + 16))
  {
    if (*(a4 + 16))
    {
LABEL_3:
      mlir::BlockRange::BlockRange(&v98, *a4, *(a4 + 8));
      mlir::OperationState::addSuccessors(a2, v98, *(&v98 + 1));
      goto LABEL_21;
    }
  }

  else
  {
    v17 = a4;
    *&v98 = "expected '(' to start operand list";
    LOWORD(v100) = 259;
    if ((mlir::detail::Parser::parseToken(a1, 21, &v98) & 1) == 0)
    {
      goto LABEL_59;
    }

    if ((sub_100076A78(a1, &v113) & 1) == 0)
    {
      goto LABEL_59;
    }

    v109 = "expected ')' to end operand list";
    v112 = 259;
    if ((mlir::detail::Parser::parseToken(a1, 28, &v109) & 1) == 0)
    {
      goto LABEL_59;
    }

    v18 = v113;
    v19 = v114;
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 16) = 1;
    }

    *a3 = v18;
    *(a3 + 8) = v19;
    a4 = v17;
    if (*(v17 + 16))
    {
      goto LABEL_3;
    }
  }

  if (*(*(a1 + 1) + 56) == 22)
  {
    {
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100279394();
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    if (((*(*v20 + 4))(v20, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v109 = "successors in non-terminator";
      v112 = 259;
      mlir::detail::Parser::emitError(a1, &v109, &v98);
      v50 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
      if (v98)
      {
        mlir::InFlightDiagnostic::report(&v98);
      }

      if (v108[0] != 1)
      {
        goto LABEL_60;
      }

      if (v107 != v108)
      {
        free(v107);
      }

      v84 = __p;
      if (__p)
      {
        v85 = v106;
        v86 = __p;
        if (v106 != __p)
        {
          do
          {
            v85 = sub_100052FFC(v85 - 1);
          }

          while (v85 != v84);
          v86 = __p;
        }

        v106 = v84;
        operator delete(v86);
      }

      v80 = v103;
      if (v103)
      {
        v87 = v104;
        v82 = v103;
        if (v104 != v103)
        {
          do
          {
            v88 = *--v87;
            *v87 = 0;
            if (v88)
            {
              operator delete[]();
            }
          }

          while (v87 != v80);
          goto LABEL_108;
        }

LABEL_109:
        v104 = v80;
        operator delete(v82);
      }

LABEL_110:
      if (v99[1] != v102)
      {
        free(v99[1]);
      }

      goto LABEL_60;
    }

LABEL_14:
    v109 = v111;
    v110 = 0x200000000;
    *&v98 = "expected '['";
    LOWORD(v100) = 259;
    if (mlir::detail::Parser::parseToken(a1, 22, &v98) & 1) != 0 && (*&v98 = a1, *(&v98 + 1) = &v109, (mlir::detail::Parser::parseCommaSeparatedListUntil(a1, 29, sub_100078164, &v98, 0)))
    {
      mlir::BlockRange::BlockRange(&v98, v109, v110);
      mlir::OperationState::addSuccessors(a2, v98, *(&v98 + 1));
      v21 = 0;
      v22 = v109;
      if (v109 == v111)
      {
LABEL_20:
        if (v21)
        {
          goto LABEL_59;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v21 = 1;
      v22 = v109;
      if (v109 == v111)
      {
        goto LABEL_20;
      }
    }

    free(v22);
    goto LABEL_20;
  }

LABEL_21:
  if (a8)
  {
    *(a2 + 248) = a7;
  }

  else
  {
    v23 = *(a1 + 1);
    if (*(v23 + 56) == 23)
    {
      *(v23 + 80) = *(v23 + 56);
      *(v23 + 96) = *(v23 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v98);
      v24 = *(a1 + 1);
      *(v24 + 56) = v98;
      *(v24 + 72) = v99[0];
      v25 = mlir::detail::Parser::parseAttribute(a1, 0);
      *(a2 + 248) = v25;
      if (!v25)
      {
        goto LABEL_59;
      }

      *&v98 = "expected '>' to close properties";
      LOWORD(v100) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v98) & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  if (*(a5 + 16))
  {
    mlir::OperationState::addRegions(a2, *a5, *(a5 + 8));
  }

  else
  {
    v26 = *(a1 + 1);
    if (*(v26 + 56) == 21)
    {
      *(v26 + 80) = *(v26 + 56);
      *(v26 + 96) = *(v26 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v98);
      v27 = *(a1 + 1);
      *(v27 + 56) = v98;
      *(v27 + 72) = v99[0];
      operator new();
    }
  }

  if (*(a6 + 16))
  {
    v29 = *a6;
    v28 = *(a6 + 8);
    *(a2 + 192) = 0;
    v30 = *(a2 + 120);
    if (v28 + v30 > *(a2 + 124))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v28 + v30, 16);
      LODWORD(v30) = *(a2 + 120);
    }

    if (v28)
    {
      memcpy((*(a2 + 112) + 16 * v30), v29, 16 * v28);
      LODWORD(v30) = *(a2 + 120);
    }

    *(a2 + 120) = v30 + v28;
  }

  else if (*(*(a1 + 1) + 56) == 20 && (mlir::detail::Parser::parseAttributeDict(a1, (a2 + 112)) & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v94)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_40;
  }

  *&v98 = "expected ':' followed by operation type";
  LOWORD(v100) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, &v98) & 1) == 0 || (Loc = mlir::Token::getLoc((*(a1 + 1) + 56)), EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, Loc), (v53 = mlir::detail::Parser::parseType(a1)) == 0))
  {
LABEL_59:
    v50 = 0;
    goto LABEL_60;
  }

  if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v109 = "expected function type";
    v112 = 259;
    mlir::emitError(EncodedSourceLocation, &v109, &v98);
    v50 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
    if (v98)
    {
      mlir::InFlightDiagnostic::report(&v98);
    }

    if (v108[0] == 1)
    {
      sub_100052F18(&v98 + 1);
    }

    goto LABEL_60;
  }

  if ((v94 & 1) == 0)
  {
    LOBYTE(v94) = 1;
  }

  v93 = v53;
LABEL_40:
  Results = mlir::FunctionType::getResults(&v93);
  v34 = v33;
  v35 = 8 * v33;
  v36 = *(a2 + 72);
  v37 = v36 + ((8 * v33) >> 3);
  if (v37 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v37, 8);
    LODWORD(v36) = *(a2 + 72);
  }

  if (v34)
  {
    memcpy((*(a2 + 64) + 8 * v36), Results, v35);
    LODWORD(v36) = *(a2 + 72);
  }

  *(a2 + 72) = v36 + (v35 >> 3);
  Inputs = mlir::FunctionType::getInputs(&v93);
  v40 = v39;
  v41 = *(a3 + 8);
  if (v39 != v41)
  {
    v55 = v41 == 1;
    v56 = "s";
    if (v55)
    {
      v56 = "";
    }

    v57 = *v56;
    v109 = "expected ";
    v112 = 259;
    mlir::emitError(EncodedSourceLocation, &v109, &v98);
    if (v98)
    {
      v58 = *(a3 + 8);
      v95 = 5;
      v96 = v58;
      v59 = &v95;
      v60 = v99[1];
      if (v100 >= v101)
      {
        if (v99[1] <= &v95 && v99[1] + 24 * v100 > &v95)
        {
          v89 = &v95 - v99[1];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v100 + 1, 24);
          v60 = v99[1];
          v59 = (v99[1] + v89);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v100 + 1, 24);
          v59 = &v95;
          v60 = v99[1];
        }
      }

      v61 = &v60[24 * v100];
      v62 = *v59;
      *(v61 + 2) = *(v59 + 2);
      *v61 = v62;
      v63 = ++v100;
      if (v98)
      {
        v95 = 3;
        v96 = " operand type";
        v97 = 13;
        v64 = &v95;
        v65 = v99[1];
        if (v63 >= v101)
        {
          if (v99[1] <= &v95 && v99[1] + 24 * v63 > &v95)
          {
            v90 = &v95 - v99[1];
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v63 + 1, 24);
            v65 = v99[1];
            v64 = (v99[1] + v90);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v63 + 1, 24);
            v64 = &v95;
            v65 = v99[1];
          }
        }

        v66 = &v65[24 * v100];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        ++v100;
        if (v98)
        {
          mlir::Diagnostic::operator<<(&v98 + 8, v57);
          if (v98)
          {
            v95 = 3;
            v96 = " but had ";
            v97 = 9;
            v68 = &v95;
            v69 = v99[1];
            if (v100 >= v101)
            {
              if (v99[1] <= &v95 && v99[1] + 24 * v100 > &v95)
              {
                v91 = &v95 - v99[1];
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v100 + 1, 24);
                v69 = v99[1];
                v68 = (v99[1] + v91);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v100 + 1, 24);
                v68 = &v95;
                v69 = v99[1];
              }
            }

            v70 = &v69[24 * v100];
            v71 = *v68;
            *(v70 + 2) = *(v68 + 2);
            *v70 = v71;
            v72 = ++v100;
            if (v98)
            {
              v95 = 5;
              v96 = v40;
              v73 = &v95;
              v74 = v99[1];
              if (v72 >= v101)
              {
                if (v99[1] <= &v95 && v99[1] + 24 * v72 > &v95)
                {
                  v92 = &v95 - v99[1];
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v72 + 1, 24);
                  v74 = v99[1];
                  v73 = (v99[1] + v92);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v72 + 1, 24);
                  v73 = &v95;
                  v74 = v99[1];
                }
              }

              v75 = &v74[24 * v100];
              v76 = *v73;
              *(v75 + 2) = *(v73 + 2);
              *v75 = v76;
              ++v100;
            }
          }
        }
      }
    }

    v50 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
    if (v98)
    {
      mlir::InFlightDiagnostic::report(&v98);
    }

    if (v108[0] != 1)
    {
      goto LABEL_60;
    }

    if (v107 != v108)
    {
      free(v107);
    }

    v77 = __p;
    if (__p)
    {
      v78 = v106;
      v79 = __p;
      if (v106 != __p)
      {
        do
        {
          v78 = sub_100052FFC(v78 - 1);
        }

        while (v78 != v77);
        v79 = __p;
      }

      v106 = v77;
      operator delete(v79);
    }

    v80 = v103;
    if (v103)
    {
      v81 = v104;
      v82 = v103;
      if (v104 != v103)
      {
        do
        {
          v83 = *--v81;
          *v81 = 0;
          if (v83)
          {
            operator delete[]();
          }
        }

        while (v81 != v80);
LABEL_108:
        v82 = v103;
        goto LABEL_109;
      }

      goto LABEL_109;
    }

    goto LABEL_110;
  }

  if (v39)
  {
    v42 = Inputs;
    v43 = 0;
    v44 = 32 * v39;
    while (1)
    {
      v45 = (*a3 + v43);
      v46 = v45[1];
      v98 = *v45;
      *v99 = v46;
      v47 = sub_100077394(a1, &v98, *v42);
      v48 = *(a2 + 24);
      if (v48 >= *(a2 + 28))
      {
        v51 = v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 16, (a2 + 32), v48 + 1, 8);
        v47 = v51;
        v48 = *(a2 + 24);
      }

      *(*(a2 + 16) + 8 * v48) = v47;
      v49 = *(a2 + 24) + 1;
      *(a2 + 24) = v49;
      if (!*(*(a2 + 16) + 8 * v49 - 8))
      {
        goto LABEL_59;
      }

      v43 += 32;
      ++v42;
      v50 = 1;
      if (v44 == v43)
      {
        goto LABEL_60;
      }
    }
  }

  v50 = 1;
LABEL_60:
  if (v113 != v115)
  {
    free(v113);
  }

  return v50;
}

uint64_t sub_100076A78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v6 = *(v4 + 56);
  v5 = v4 + 56;
  if (v6 != 6 && !mlir::Token::isCodeCompletionFor(v5, 6))
  {
    return 1;
  }

  v24 = 0uLL;
  v25 = 0;
  if (sub_100077A2C(a1, &v24, 1))
  {
    v7 = *(a2 + 8);
    v8 = *a2;
    v9 = &v24;
    if (v7 >= *(a2 + 12))
    {
      if (v8 <= &v24 && v8 + 32 * v7 > &v24)
      {
        v23 = &v24 - v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 32);
        v8 = *a2;
        v9 = &v23[*a2];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 32);
        v8 = *a2;
        v9 = &v24;
      }
    }

    v10 = (v8 + 32 * *(a2 + 8));
    v11 = *(v9 + 1);
    *v10 = *v9;
    v10[1] = v11;
    ++*(a2 + 8);
    v12 = *(a1 + 8);
    v13 = (v12 + 56);
    if (*(v12 + 56) == 16)
    {
      while (1)
      {
        v14 = *v13;
        *(v12 + 96) = *(v13 + 2);
        *(v12 + 80) = v14;
        mlir::Lexer::lexToken((*(a1 + 8) + 8), &v24);
        v15 = *(a1 + 8);
        *(v15 + 56) = v24;
        *(v15 + 72) = v25;
        v24 = 0uLL;
        v25 = 0;
        if (!sub_100077A2C(a1, &v24, 1))
        {
          return 0;
        }

        v16 = *(a2 + 8);
        v17 = *a2;
        if (v16 >= *(a2 + 12))
        {
          if (v17 <= &v24 && v17 + 32 * v16 > &v24)
          {
            v21 = &v24 - v17;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v16 + 1, 32);
            v17 = *a2;
            v18 = &v21[*a2];
            goto LABEL_9;
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v16 + 1, 32);
          v17 = *a2;
        }

        v18 = &v24;
LABEL_9:
        v19 = (v17 + 32 * *(a2 + 8));
        v20 = *(v18 + 1);
        *v19 = *v18;
        v19[1] = v20;
        ++*(a2 + 8);
        v12 = *(a1 + 8);
        v13 = (v12 + 56);
        if (*(v12 + 56) != 16)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_100076C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 8);
  v15 = *(v8 + 56);
  v16 = *(v8 + 72);
  *&v17 = "expected '{' to begin a region";
  v19 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 20, &v17) & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a1 + 8) + 152);
  if (v9)
  {
    mlir::AsmParserState::startRegionDefinition(v9);
  }

  if (a4 || (v10 = *(a1 + 8), *(v10 + 56) != 27))
  {
    mlir::Token::getLoc(&v15);
    v14 = *(a1 + 400);
    sub_10006EDA4(a1, a5);
    operator new();
  }

  *(v10 + 80) = *(v10 + 56);
  *(v10 + 96) = *(v10 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v17);
  v12 = *(a1 + 8);
  *(v12 + 56) = v17;
  *(v12 + 72) = v18[0];
  v13 = *(*(a1 + 8) + 152);
  if (v13)
  {
    mlir::AsmParserState::finalizeRegionDefinition(v13);
  }

  return 1;
}

uint64_t sub_100077394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v6 = sub_100079B94((*(a1 + 16) + 88 * *(a1 + 24) - 88), *(a2 + 8), *(a2 + 16));
  v7 = v6;
  v8 = *(a2 + 24);
  v9 = *(v6 + 8);
  if (v9 <= v8)
  {
    v15 = (v8 + 1);
    if (v9 != v15)
    {
      if (v9 <= v15)
      {
        if (*(v6 + 12) < v15)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v15, 16);
          v9 = *(v7 + 8);
        }

        if (v9 != v15)
        {
          bzero((*v7 + 16 * v9), 16 * (v15 - v9));
        }
      }

      *(v7 + 8) = v15;
    }
  }

  else
  {
    v10 = *(*v6 + 16 * v8);
    if (v10)
    {
      if ((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
      {
        v11 = *a2;
        v55[0] = "use of value '";
        v56 = 259;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v11);
        mlir::emitError(EncodedSourceLocation, v55, &v57);
        if (*(*(a1 + 8) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v57);
        }

        v64[0] = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v57)
        {
          v63 = 261;
          v13 = *(a2 + 16);
          v61 = *(a2 + 8);
          v62 = v13;
          mlir::Diagnostic::operator<<(&v58, &v61);
          sub_10007A10C(&v58, "' expects different type than prior uses: ", &v43, " vs ", v64);
        }

        v14 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, *(*v7 + 16 * *(a2 + 24) + 8));
        mlir::Diagnostic::attachNote(&v58, v14, 1);
      }

LABEL_22:
      v30 = *(*(a1 + 8) + 152);
      if (v30)
      {
        mlir::AsmParserState::addUses(v30, v10, a2, 1);
      }

      return v10;
    }
  }

  v16 = **v7;
  if (!v16)
  {
LABEL_19:
    v24 = *a2;
    v45 = a3;
    mlir::OperationName::OperationName(&v44, "builtin.unrealized_conversion_cast", 34, ***(a1 + 8));
    v25 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v24);
    v26 = v44;
    mlir::TypeRange::TypeRange(&v61, &v45, 1uLL);
    mlir::ValueRange::ValueRange(v55, 0, 0);
    v57 = v59;
    v58 = 0x400000000;
    v60 = 4;
    mlir::BlockRange::BlockRange(v64, 0, 0);
    v27 = mlir::Operation::create(v25, v26, v61, v62, v55[0], v55[1], &v57, 0, v64[0], v64[1], 0);
    if (v57 != v59)
    {
      free(v57);
    }

    v10 = v27 - 16;
    v57 = (v27 - 16);
    *sub_10007A468(a1 + 336, &v57) = v24;
    v28 = *a2;
    v29 = (*v7 + 16 * *(a2 + 24));
    *v29 = v27 - 16;
    v29[1] = v28;
    goto LABEL_22;
  }

  v17 = *(a1 + 352);
  if (v17)
  {
    v18 = *(a1 + 336);
    v19 = 0x9DDFEA08EB382D69 * ((8 * **v7 - 0xAE502812AA7333) ^ HIDWORD(**v7));
    v20 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v19 >> 47) ^ v19);
    v21 = v17 - 1;
    v22 = v21 & (-348639895 * ((v20 >> 47) ^ v20));
    v23 = *(v18 + 16 * v22);
    if (v23 == v16)
    {
      goto LABEL_19;
    }

    v32 = 1;
    while (v23 != -4096)
    {
      v33 = v22 + v32++;
      v22 = v33 & v21;
      v23 = *(v18 + 16 * v22);
      if (v23 == v16)
      {
        goto LABEL_19;
      }
    }
  }

  v34 = *a2;
  v57 = "reference to invalid result number";
  v59[8] = 259;
  v35 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v34);
  mlir::emitError(v35, &v57, v46);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(v46);
  }

  if (v46[0])
  {
    mlir::InFlightDiagnostic::report(v46);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v36 = v51;
    if (v51)
    {
      v37 = v52;
      v38 = v51;
      if (v52 != v51)
      {
        do
        {
          v37 = sub_100052FFC(v37 - 1);
        }

        while (v37 != v36);
        v38 = v51;
      }

      v52 = v36;
      operator delete(v38);
    }

    v39 = v49;
    if (v49)
    {
      v40 = v50;
      v41 = v49;
      if (v50 != v49)
      {
        do
        {
          v42 = *--v40;
          *v40 = 0;
          if (v42)
          {
            operator delete[]();
          }
        }

        while (v40 != v39);
        v41 = v49;
      }

      v50 = v39;
      operator delete(v41);
    }

    if (v47 != &v48)
    {
      free(v47);
    }
  }

  return 0;
}

BOOL sub_100077A2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 8);
  if (*(v4 + 56) != 2)
  {
    *(a2 + 8) = *(v4 + 64);
    *(a2 + 24) = 0;
    *a2 = mlir::Token::getLoc((v4 + 56));
    *&v63 = "expected SSA operand";
    LOWORD(v66) = 259;
    v38 = mlir::detail::Parser::parseToken(a1, 6, &v63);
    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }

    v40 = *(a1 + 8);
    v42 = *(v40 + 56);
    v41 = (v40 + 56);
    if (v42 == 5)
    {
      if ((a3 & 1) == 0)
      {
        v57[0] = "result number not allowed in argument list";
        v59 = 259;
        mlir::detail::Parser::emitError(a1, v57, &v63);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
        v46 = result;
        if (v63)
        {
          mlir::InFlightDiagnostic::report(&v63);
          result = v46;
        }

        if (v75 == 1)
        {
          if (v74 != &v75)
          {
            free(v74);
            result = v46;
          }

          v47 = v72;
          if (v72)
          {
            v48 = v73;
            v49 = v72;
            if (v73 != v72)
            {
              do
              {
                v48 = sub_100052FFC(v48 - 1);
              }

              while (v48 != v47);
              v49 = v72;
            }

            v73 = v47;
            operator delete(v49);
            result = v46;
          }

          v50 = v70;
          if (v70)
          {
            v51 = v71;
            v52 = v70;
            if (v71 != v70)
            {
              do
              {
                v53 = *--v51;
                *v51 = 0;
                if (v53)
                {
                  operator delete[]();
                }
              }

              while (v51 != v50);
              v52 = v70;
            }

            v71 = v50;
            operator delete(v52);
            result = v46;
          }

          if (v65 != &v67)
          {
            free(v65);
            return v46;
          }
        }

        return result;
      }

      HashIdentifierNumber = mlir::Token::getHashIdentifierNumber(v41);
      if ((HashIdentifierNumber & 0x100000000) == 0)
      {
        v57[0] = "invalid SSA value result number";
        v59 = 259;
        mlir::detail::Parser::emitError(a1, v57, &v63);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
        if (v63)
        {
          v44 = result;
          mlir::InFlightDiagnostic::report(&v63);
          result = v44;
        }

        if (v75 == 1)
        {
          v45 = result;
          sub_100052F18(&v63 + 1);
          return v45;
        }

        return result;
      }

      *(a2 + 24) = HashIdentifierNumber;
      v54 = *(a1 + 8);
      *(v54 + 80) = *(v54 + 56);
      *(v54 + 96) = *(v54 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v63);
      v55 = *(a1 + 8);
      *(v55 + 56) = v63;
      *(v55 + 72) = v64;
    }

    return 1;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v56 = v6 + 88 * v5;
    while (1)
    {
      v7 = *v6;
      v8 = *(v6 + 8);
      if (v8)
      {
        break;
      }

      v9 = *v6;
      v14 = &v7[v8];
      if (v7 != v14)
      {
        goto LABEL_18;
      }

LABEL_4:
      v6 += 88;
      if (v6 == v56)
      {
        return 0;
      }
    }

    v9 = *v6;
    if (*v7)
    {
      v10 = *v7 + 1 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      do
      {
        v12 = v9[1];
        ++v9;
        v11 = v12;
        if (v12)
        {
          v13 = v11 + 1 == 0;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    v14 = &v7[v8];
    if (v9 == v14)
    {
      goto LABEL_4;
    }

LABEL_18:
    v15 = *v9;
    while (1)
    {
      if (!*(v15 + 4))
      {
        goto LABEL_48;
      }

      v16 = *v15[1];
      v57[0] = 0;
      v57[1] = 0;
      v58 = 0;
      DWORD2(v63) = 0;
      v67 = 0;
      v68 = 1;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      *&v63 = &off_1002B45C0;
      v69 = v57;
      llvm::raw_ostream::SetBufferAndMode(&v63, 0, 0, 0);
      if ((~*(v16 + 2) & 7) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = *(a1 + 352);
        if (v18)
        {
          v19 = *(a1 + 336);
          v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ (v17 >> 32));
          v21 = 0x9DDFEA08EB382D69 * ((v17 >> 32) ^ (v20 >> 47) ^ v20);
          v22 = v18 - 1;
          v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
          v24 = *(v19 + 16 * v23);
          if (v24 == v17)
          {
            goto LABEL_39;
          }

          v25 = 1;
          while (v24 != -4096)
          {
            v26 = v23 + v25++;
            v23 = v26 & v22;
            v24 = *(v19 + 16 * v23);
            if (v24 == v17)
            {
              goto LABEL_39;
            }
          }
        }

        v62 = *(mlir::detail::OpResultImpl::getOwner(v17) + 48);
        mlir::OperationName::print(&v62, &v63);
        if (v65 - v66 <= 1)
        {
          v29 = &v63;
LABEL_36:
          llvm::raw_ostream::write(v29, ": ", 2uLL);
          goto LABEL_39;
        }

        *v66 = 8250;
        v66 += 2;
      }

      else
      {
        v27 = v66;
        if (v65 - v66 > 4)
        {
          *(v66 + 4) = 35;
          *v27 = 543650401;
          v66 += 5;
          v29 = llvm::raw_ostream::operator<<(&v63, *(v16 + 6));
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 <= 1uLL)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v28 = llvm::raw_ostream::write(&v63, "arg #", 5uLL);
          v29 = llvm::raw_ostream::operator<<(v28, *(v16 + 6));
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 <= 1uLL)
          {
            goto LABEL_36;
          }
        }

        *v30 = 8250;
        *(v29 + 4) += 2;
      }

LABEL_39:
      v62 = *(v16 + 1) & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&v62, &v63);
      if (*(v15 + 4) >= 2u)
      {
        v31 = v66;
        if (v65 - v66 > 4)
        {
          *(v66 + 4) = 46;
          *v31 = 774774828;
          v66 += 5;
        }

        else
        {
          llvm::raw_ostream::write(&v63, ", ...", 5uLL);
        }
      }

      v32 = *v15;
      v33 = *(*(a1 + 8) + 160);
      *__p = *v57;
      v61 = v58;
      v57[0] = 0;
      v57[1] = 0;
      v58 = 0;
      (*(*v33 + 32))(v33, v15 + 5, v32, __p);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
        llvm::raw_ostream::~raw_ostream(&v63);
        if (SHIBYTE(v58) < 0)
        {
LABEL_47:
          operator delete(v57[0]);
          goto LABEL_48;
        }
      }

      else
      {
        llvm::raw_ostream::~raw_ostream(&v63);
        if (SHIBYTE(v58) < 0)
        {
          goto LABEL_47;
        }
      }

      do
      {
LABEL_48:
        v34 = v9[1];
        ++v9;
        v15 = v34;
        if (v34)
        {
          v35 = v15 + 1 == 0;
        }

        else
        {
          v35 = 1;
        }
      }

      while (v35);
      if (v9 == v14)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

uint64_t sub_10007809C()
{
  {
    sub_1002793D4();
  }

  return llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>(void)::Name;
}

const char *sub_1000780E4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]";
  v6 = 96;
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

BOOL sub_100078164(uint64_t a1)
{
  v2 = *a1;
  v8 = 0;
  result = sub_1000781F0(v2, &v8);
  v4 = *(a1 + 8);
  v5 = v8;
  v6 = *(v4 + 8);
  if (v6 >= *(v4 + 12))
  {
    v7 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v6 + 1, 8);
    result = v7;
    LODWORD(v6) = *(v4 + 8);
  }

  *(*v4 + 8 * v6) = v5;
  ++*(v4 + 8);
  return result;
}

BOOL sub_1000781F0(mlir::detail::Parser *this, uint64_t *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 14);
  if (v4 == 7)
  {
    v13 = v3[8];
    v14 = v3[9];
    Loc = mlir::Token::getLoc((v3 + 7));
    v15 = sub_1000785A4(*(this + 26), *(this + 54), v13, v14);
    v16 = *v15;
    if (!*v15)
    {
      operator new();
    }

    v17 = *(this + 1);
    v18 = *(v17 + 152);
    if (v18)
    {
      mlir::AsmParserState::addUses(v18, v16, &Loc, 1);
      v16 = *v15;
      v17 = *(this + 1);
    }

    *a2 = v16;
    *(v17 + 80) = *(v17 + 56);
    *(v17 + 96) = *(v17 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v34);
    v19 = *(this + 1);
    *(v19 + 56) = v34;
    *(v19 + 72) = v35;
    return 1;
  }

  else if (v4 == 2)
  {
    v5 = v3[9];
    if (!v5 || v5 == 1 && *v3[8] == 94)
    {
      v6 = *(this + 26) + 24 * *(this + 54);
      if (*(v6 - 16))
      {
        v7 = *(v6 - 24);
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = 32 * v8;
          for (i = v7; *i >= 0xFFFFFFFFFFFFFFFELL; i += 4)
          {
            v9 -= 32;
            if (!v9)
            {
              return 0;
            }
          }
        }

        else
        {
          i = v7;
        }

        v27 = &v7[4 * v8];
        if (i == v27)
        {
          return 0;
        }

        while (1)
        {
          v28 = *i;
          v29 = i[1];
          i += 4;
          (*(**(*(this + 1) + 160) + 40))(*(*(this + 1) + 160), v28, v29);
          if (i == v27)
          {
            break;
          }

          while (*i >= 0xFFFFFFFFFFFFFFFELL)
          {
            i += 4;
            if (i == v27)
            {
              return 0;
            }
          }

          v11 = 0;
          if (i == v27)
          {
            return v11;
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v31 = "expected block name";
    v32 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v31, &v34);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v41;
        v22 = __p;
        if (v41 != __p)
        {
          do
          {
            v21 = sub_100052FFC(v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v41 = v20;
        operator delete(v22);
      }

      v23 = v38;
      if (v38)
      {
        v24 = v39;
        v25 = v38;
        if (v39 != v38)
        {
          do
          {
            v26 = *--v24;
            *v24 = 0;
            if (v26)
            {
              operator delete[]();
            }
          }

          while (v24 != v23);
          v25 = v38;
        }

        v39 = v23;
        operator delete(v25);
      }

      if (v36 != &v37)
      {
        free(v36);
      }
    }
  }

  return v11;
}

char **sub_1000785A4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v4 = a1 + 24 * a2;
  v5 = *(v4 - 24);
  v12 = 0;
  v6 = sub_1000786A0(v5, *(v4 - 8), &v11, &v12);
  v7 = v12;
  if ((v6 & 1) == 0)
  {
    v13 = v12;
    v8 = *(v4 - 16);
    v9 = *(v4 - 8);
    if (4 * v8 + 4 >= 3 * v9)
    {
      v9 *= 2;
    }

    else if (v9 + ~v8 - *(v4 - 12) > v9 >> 3)
    {
      *(v4 - 16) = v8 + 1;
      if (*v7 == -1)
      {
LABEL_6:
        *v7 = v11;
        v7[2] = 0;
        v7[3] = 0;
        return v7 + 2;
      }

LABEL_5:
      --*(v4 - 12);
      goto LABEL_6;
    }

    sub_1000788C8(v4 - 24, v9);
    sub_1000786A0(*(v4 - 24), *(v4 - 8), &v11, &v13);
    v7 = v13;
    ++*(v4 - 16);
    if (*v7 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v7 + 2;
}

uint64_t sub_1000786A0(uint64_t a1, int a2, uint64_t a3, char ***a4)
{
  if (!a2)
  {
    v14 = 0;
    result = 0;
    goto LABEL_44;
  }

  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a3, *(a3 + 8));
  v9 = a2 - 1;
  v10 = *a3;
  v11 = *(a3 + 8);
  if (!v11)
  {
    if (v10 != -2)
    {
      v22 = 0;
      v30 = 1;
      v31 = HashValue & v9;
      v14 = (a1 + 32 * v31);
      v32 = *v14;
      if (*v14 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v22)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v22 = v14;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v9;
          v14 = (a1 + 32 * v31);
          v32 = *v14;
        }

        while (*v14 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v14[1])
        {
          goto LABEL_43;
        }
      }
    }

    v18 = 1;
    v19 = HashValue & v9;
    v14 = (a1 + 32 * v19);
    v20 = *v14;
    if (*v14 != -2)
    {
      while (v20 != -1)
      {
        if (v14[1])
        {
          v21 = v18 + v19;
          ++v18;
          v19 = v21 & v9;
          v14 = (a1 + 32 * v19);
          v20 = *v14;
          if (*v14 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v10 != -2)
  {
    v22 = 0;
    v23 = 1;
    v24 = HashValue & v9;
    v14 = (a1 + 32 * v24);
    v25 = *v14;
    if (*v14 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25 + 2 == 0;
        }

        if (v26)
        {
          v22 = v14;
        }

        v27 = v23 + v24;
        ++v23;
        v24 = v27 & v9;
        v14 = (a1 + 32 * v24);
        v25 = *v14;
      }

      while (*v14 == -2);
LABEL_30:
      if (v25 == -1)
      {
        goto LABEL_18;
      }

      if (v11 == v14[1])
      {
        v36 = v25;
        v28 = v22;
        v35 = v23;
        v29 = memcmp(v10, v25, v11);
        v23 = v35;
        v22 = v28;
        v25 = v36;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v12 = 1;
  v13 = HashValue & v9;
  v14 = (a1 + 32 * v13);
  v15 = *v14;
  if (*v14 == -2)
  {
    goto LABEL_43;
  }

  while (v15 != -1)
  {
    if (v11 != v14[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v15, v11))
    {
      v16 = v12 + v13;
      ++v12;
      v13 = v16 & v9;
      v14 = (a1 + 32 * v13);
      v15 = *v14;
      if (*v14 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v22 = 0;
LABEL_18:
  if (!v22)
  {
    v22 = v14;
  }

  if (v10 == -1)
  {
    result = 1;
  }

  else
  {
    v14 = v22;
    result = 0;
  }

LABEL_44:
  *a4 = v14;
  return result;
}