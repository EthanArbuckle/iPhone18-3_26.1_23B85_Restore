BOOL sub_10005DC68(uint64_t a1)
{
  v2 = *a1;
  __s2 = v24;
  v23 = 0x400000000;
  if (*(*(*v2 + 1) + 56) == 22)
  {
    if ((sub_10005D56C() & 1) == 0)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_42;
    }
  }

  else if ((sub_10005D6DC(v2) & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = *(a1 + 16);
  ++**(a1 + 8);
  if (*v4)
  {
    v5 = *(a1 + 32);
    if (v5 == &__s2)
    {
LABEL_40:
      *v4 = 0;
LABEL_41:
      v3 = 1;
      goto LABEL_42;
    }

    v6 = v23;
    v7 = *(v5 + 8);
    if (v7 >= v23)
    {
      if (v23)
      {
        memmove(*v5, __s2, 8 * v23);
      }

      goto LABEL_39;
    }

    if (*(v5 + 12) >= v23)
    {
      if (v7)
      {
        memmove(*v5, __s2, 8 * v7);
        goto LABEL_37;
      }
    }

    else
    {
      *(v5 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v6, 8);
    }

    v7 = 0;
LABEL_37:
    if (v23 != v7)
    {
      memcpy((*v5 + 8 * v7), __s2 + 8 * v7, 8 * (v23 - v7));
    }

LABEL_39:
    *(v5 + 8) = v6;
    v4 = *(a1 + 16);
    goto LABEL_40;
  }

  v8 = *(a1 + 32);
  v9 = **(a1 + 24);
  v10 = *(v8 + 8);
  if (v10 == v23 && !memcmp(*v8, __s2, 8 * v10))
  {
    goto LABEL_41;
  }

  v11 = *v9;
  v20 = "tensor literal is invalid; ranks are not consistent between elements";
  v21 = 259;
  mlir::detail::Parser::emitError(v11, &v20, v25);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

    v12 = __p;
    if (__p)
    {
      v13 = v31;
      v14 = __p;
      if (v31 != __p)
      {
        do
        {
          v13 = sub_100052FFC(v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v31 = v12;
      operator delete(v14);
    }

    v15 = v28;
    if (v28)
    {
      v16 = v29;
      v17 = v28;
      if (v29 != v28)
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
        v17 = v28;
      }

      v29 = v15;
      operator delete(v17);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

LABEL_42:
  if (__s2 != v24)
  {
    free(__s2);
  }

  return v3;
}

__n128 sub_10005DF34(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void ***a5)
{
  if (a1 != a2)
  {
    v33 = v5;
    v34 = v6;
    v12 = (a3 + 16);
    v11 = *(a3 + 16);
    v13 = *a1;
    LODWORD(v29) = 2;
    v30 = v13;
    v14 = *(a3 + 24);
    v15 = &v29;
    if (v14 >= *(a3 + 28))
    {
      v27 = a1;
      if (v11 <= &v29 && v11 + 24 * v14 > &v29)
      {
        v28 = &v29 - v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v28[v11];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v29;
      }

      a1 = v27;
    }

    v16 = (v11 + 24 * *(a3 + 24));
    result = *v15;
    v16[1].n128_u64[0] = v15[1].n128_u64[0];
    *v16 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v19 = *a5;
      v20 = 1;
      v32 = 1;
      if (*v19)
      {
        v29 = v19;
        v20 = 3;
      }

      v31 = v20;
      mlir::Diagnostic::operator<<(a4, &v29);
      v21 = *i;
      LODWORD(v29) = 2;
      v30 = v21;
      v22 = *(a3 + 24);
      v23 = *(a3 + 16);
      if (v22 >= *(a3 + 28))
      {
        if (v23 <= &v29 && v23 + 24 * v22 > &v29)
        {
          v26 = &v29 - v23;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v22 + 1, 24);
          v23 = *v12;
          v24 = &v26[*v12];
          goto LABEL_8;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v22 + 1, 24);
        v23 = *v12;
      }

      v24 = &v29;
LABEL_8:
      v25 = (v23 + 24 * *(a3 + 24));
      result = *v24;
      v25[1].n128_u64[0] = v24[1].n128_u64[0];
      *v25 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

void *sub_10005E140(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10002BC08();
  }

  return result;
}

char *sub_10005E28C(void *a1, const llvm::APInt *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10002BC08();
  }

  v4 = a1[2] - *a1;
  if (v4 >> 3 > v3)
  {
    v3 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (!(v5 >> 60))
    {
      operator new();
    }

    sub_10002BC08();
  }

  v6 = (16 * v2);
  v7 = *(a2 + 2);
  *(16 * v2 + 8) = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(v6, a2);
  }

  *v6 = *a2;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 - (v9 - *a1));
  if (v9 != *a1)
  {
    v11 = (-16 * ((v9 - *a1) >> 4) + 16 * v2 + 8);
    v12 = *a1;
    do
    {
      *v11 = v12[2];
      *(v11 - 1) = *v12;
      v12[2] = 0;
      v12 += 4;
      v11 += 4;
    }

    while (v12 != v9);
    do
    {
      if (v8[2] >= 0x41u && *v8)
      {
        operator delete[]();
      }

      v8 += 4;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v6 + 16;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v6 + 16;
}

void *sub_10005E430(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      operator new();
    }

    sub_10002BC08();
  }

  return result;
}

void sub_10005E53C(llvm::detail::IEEEFloat **a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (a2[1] + *a1 - v5);
  if (v5 != *a1)
  {
    v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v8 = v4;
    v9 = v6;
    do
    {
      while (1)
      {
        v11 = v8;
        if (v7 != v8->n128_u64[0])
        {
          break;
        }

        llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v8);
        v8 = (v8 + 24);
        v9 = (v10 + 24);
        if (v8 == v5)
        {
          goto LABEL_8;
        }
      }

      v8 = (v8 + 24);
      v9 = (llvm::detail::IEEEFloat::IEEEFloat(v9, v11) + 24);
    }

    while (v8 != v5);
    do
    {
LABEL_8:
      while (v7 == *v4)
      {
        sub_100029F40(v4);
        v4 = (v4 + 24);
        if (v4 == v5)
        {
          goto LABEL_10;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v4);
      v4 = (v4 + 24);
    }

    while (v4 != v5);
LABEL_10:
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_10005E648(uint64_t a1, const llvm::detail::IEEEFloat *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10002BC08();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v7 = 24 * v2;
  __p = 0;
  v16 = 24 * v2;
  v18 = 0;
  v8 = *a2;
  v9 = llvm::APFloatBase::PPCDoubleDouble(0);
  if (v9 == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v7, a2);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v7, a2);
  }

  v17 = v7 + 24;
  sub_10005E53C(a1, &__p);
  v10 = *(a1 + 8);
  v12 = v16;
  for (i = v17; v17 != v12; i = v17)
  {
    while (1)
    {
      v13 = (i - 24);
      v17 = i - 24;
      if (v9 == *(i - 24))
      {
        break;
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v13);
      i = v17;
      if (v17 == v12)
      {
        goto LABEL_18;
      }
    }

    sub_100029F40(v13);
  }

LABEL_18:
  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

uint64_t sub_10005E7C8()
{
  {
    sub_100279074();
  }

  return llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(void)::Name;
}

const char *sub_10005E810()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>]";
  v6 = 115;
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

void *sub_10005E890(void *result)
{
  v1 = *result;
  {
    v22 = v1;
    v24 = result;
    sub_100278F7C();
    result = v24;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v22 + 8);
    v4 = *(v22 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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
      sub_100278F7C();
      result = v25;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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

uint64_t sub_10005EA24()
{
  {
    sub_1002790C8();
  }

  return llvm::getTypeName<mlir::ShapedType>(void)::Name;
}

const char *sub_10005EA6C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedType]";
  v6 = 78;
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

void sub_10005EAEC(uint64_t a1, const char *a2)
{
  v9 = "expected a 64-bit signed integer or '?'";
  v10 = 259;
  mlir::detail::Parser::emitError(a1, a2, &v9, v11);
  if (v11[0])
  {
    mlir::InFlightDiagnostic::report(v11);
  }

  if (v19 == 1)
  {
    if (v18 != &v19)
    {
      free(v18);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v17;
      v4 = __p;
      if (v17 != __p)
      {
        do
        {
          v3 = sub_100052FFC(v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v17 = v2;
      operator delete(v4);
    }

    v5 = v14;
    if (v14)
    {
      v6 = v15;
      v7 = v14;
      if (v15 != v14)
      {
        do
        {
          v8 = *--v6;
          *v6 = 0;
          if (v8)
          {
            operator delete[]();
          }
        }

        while (v6 != v5);
        v7 = v14;
      }

      v15 = v5;
      operator delete(v7);
    }

    if (v12 != &v13)
    {
      free(v12);
    }
  }
}

BOOL sub_10005EC40(void *a1)
{
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(a1[1], 0);
  v4 = *(v2 + 2);
  if (v4 >= *(v2 + 3))
  {
    v6 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v2 + 2, v4 + 1, 8);
    v3 = v6;
    LODWORD(v4) = *(v2 + 2);
  }

  *(*v2 + 8 * v4) = v3;
  ++*(v2 + 2);
  return *(**a1 + 8 * *(*a1 + 8) - 8) != 0;
}

uint64_t sub_10005ECD8(uint64_t *a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *a1;
  LOBYTE(StringAttr) = 0;
  v57 = 0;
  v5 = *(v4 + 8);
  v6 = (v5 + 7);
  v7 = *(v5 + 14);
  if (v7 == 3 || v7 == 12)
  {
LABEL_6:
    v10 = v5[8];
    v9 = v5[9];
    LOWORD(v63) = 261;
    *&v60 = v10;
    *(&v60 + 1) = v9;
    v57 = 1;
    StringAttr = mlir::Builder::getStringAttr(v4, &v60, a3);
    goto LABEL_7;
  }

  if (v7 != 11)
  {
    if (!mlir::Token::isKeyword(v6))
    {
      v58.__r_.__value_.__r.__words[0] = "expected attribute name";
      v59 = 259;
      mlir::detail::Parser::emitWrongTokenError(v4, &v58, &v60);
      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      if (v60)
      {
        mlir::InFlightDiagnostic::report(&v60);
      }

      if (v71 != 1)
      {
        return v25;
      }

      if (v70 != &v71)
      {
        free(v70);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v69;
        v49 = __p;
        if (v69 != __p)
        {
          do
          {
            v48 = sub_100052FFC(v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v69 = v47;
        operator delete(v49);
      }

      v29 = v66;
      if (v66)
      {
        v50 = v67;
        v31 = v66;
        if (v67 != v66)
        {
          do
          {
            v51 = *--v50;
            *v50 = 0;
            if (v51)
            {
              operator delete[]();
            }
          }

          while (v50 != v29);
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }

    v5 = *(v4 + 8);
    goto LABEL_6;
  }

  mlir::Token::getStringValue(v6, &v58);
  LOWORD(v63) = 260;
  *&v60 = &v58;
  v57 = 1;
  StringAttr = mlir::Builder::getStringAttr(v4, &v60, v24);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

LABEL_7:
  mlir::StringAttr::getValue(&StringAttr);
  if (!v11)
  {
    v58.__r_.__value_.__r.__words[0] = "expected valid attribute name";
    v59 = 259;
    mlir::detail::Parser::emitError(v4, &v58, &v60);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v71 != 1)
    {
      return v25;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v69;
      v28 = __p;
      if (v69 != __p)
      {
        do
        {
          v27 = sub_100052FFC(v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v69 = v26;
      operator delete(v28);
    }

    v29 = v66;
    if (v66)
    {
      v30 = v67;
      v31 = v66;
      if (v67 != v66)
      {
        do
        {
          v32 = *--v30;
          *v30 = 0;
          if (v32)
          {
            operator delete[]();
          }
        }

        while (v30 != v29);
        goto LABEL_75;
      }

LABEL_76:
      v67 = v29;
      operator delete(v31);
    }

LABEL_77:
    if (v62 != v65)
    {
      free(v62);
    }

    return v25;
  }

  sub_10005F374(a1[1], &StringAttr, &v60);
  if ((v61 & 1) == 0)
  {
    v54 = "duplicate key '";
    v55 = 259;
    mlir::detail::Parser::emitError(v4, &v54, &v60);
    Value = mlir::StringAttr::getValue(&StringAttr);
    if (v60)
    {
      v59 = 261;
      v58.__r_.__value_.__r.__words[0] = Value;
      v58.__r_.__value_.__l.__size_ = v34;
      mlir::Diagnostic::operator<<(&v60 + 8, &v58);
      if (v60)
      {
        LODWORD(v58.__r_.__value_.__l.__data_) = 3;
        v58.__r_.__value_.__l.__size_ = "' in dictionary attribute";
        v58.__r_.__value_.__r.__words[2] = 25;
        v35 = &v58;
        v36 = v62;
        if (v63 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v63 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v36 = v62;
            v35 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *&v35->__r_.__value_.__l.__data_;
        *(v37 + 2) = *(&v35->__r_.__value_.__l + 2);
        *v37 = v38;
        ++v63;
      }
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v71 != 1)
    {
      return v25;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v69;
      v41 = __p;
      if (v69 != __p)
      {
        do
        {
          v40 = sub_100052FFC(v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v69 = v39;
      operator delete(v41);
    }

    v29 = v66;
    if (v66)
    {
      v42 = v67;
      v31 = v66;
      if (v67 != v66)
      {
        do
        {
          v43 = *--v42;
          *v42 = 0;
          if (v43)
          {
            operator delete[]();
          }
        }

        while (v42 != v29);
LABEL_75:
        v31 = v66;
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v12 = *(v4 + 8);
  *(v12 + 80) = *(v12 + 56);
  *(v12 + 96) = *(v12 + 72);
  mlir::Lexer::lexToken((*(v4 + 8) + 8), &v60);
  v13 = *(v4 + 8);
  *(v13 + 56) = v60;
  *(v13 + 72) = v61;
  *&v60 = mlir::StringAttr::getValue(&StringAttr);
  *(&v60 + 1) = v14;
  v58.__r_.__value_.__s.__data_[0] = 46;
  v15 = llvm::StringRef::find(&v60, &v58, 1uLL, 0);
  if (v15 != -1 && *(&v60 + 1) > (v15 + 1))
  {
    mlir::MLIRContext::getOrLoadDialect(***(v4 + 8), v60, v15);
  }

  v17 = *(v4 + 8);
  if (*(v17 + 56) == 18)
  {
    *(v17 + 80) = *(v17 + 56);
    *(v17 + 96) = *(v17 + 72);
    mlir::Lexer::lexToken((*(v4 + 8) + 8), &v60);
    v18 = *(v4 + 8);
    *(v18 + 56) = v60;
    *(v18 + 72) = v61;
    v19 = mlir::detail::Parser::parseAttribute(v4, 0);
    if (!v19)
    {
      return 0;
    }

    v20 = a1[2];
    mlir::NamedAttribute::NamedAttribute(&v60, StringAttr, v19);
    v22 = *(&v60 + 1);
    v21 = v60;
    v23 = v20;
  }

  else
  {
    v44 = a1[2];
    v45 = StringAttr;
    UnitAttr = mlir::Builder::getUnitAttr(v4, v16);
    mlir::NamedAttribute::NamedAttribute(&v60, v45, UnitAttr);
    v22 = *(&v60 + 1);
    v21 = v60;
    v23 = v44;
  }

  mlir::NamedAttrList::push_back(v23, v21, v22);
  return 1;
}

unsigned int *sub_10005F374@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 2;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 2;
  }

  else
  {
    v6 = result[4];
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 1);
  }

  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = &v7[2 * v9];
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 1);
      v12 = result[4];
    }

    *a3 = v10;
    *(a3 + 8) = &v4[2 * v12];
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -4096)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -8192;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = &v7[2 * (v18 & v8)];
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = result[4];
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - result[1] <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    sub_10005F5FC(result, v13);
    sub_10005F544(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -4096)
  {
    --result[1];
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 1);
    v14 = result[4];
  }

  *a3 = v10;
  *(a3 + 8) = &v4[2 * v14];
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_10005F544(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void sub_10005F5FC(unsigned int *a1, unsigned int a2)
{
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 1);
    v7 = a1[4];
    if (a2 > 4)
    {
      v23 = a2;
      buffer = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 1) = buffer;
      *(a1 + 2) = v23;
      v25 = *a1;
      v8 = (v6 + 8 * v7);
      *a1 = *a1 & 1;
      if ((v25 & 1) == 0)
      {
        v26 = &buffer->i8[8 * v23];
        v27 = 8 * v23 - 8;
        if (v27 < 0x18)
        {
          v29 = buffer;
          do
          {
LABEL_28:
            *v29 = -4096;
            v29 += 8;
          }

          while (v29 != v26);
LABEL_29:
          if (v7)
          {
            v33 = v6;
            do
            {
              v39 = *v33;
              if ((*v33 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*a1)
                {
                  v35 = 3;
                  v34 = (a1 + 2);
                }

                else
                {
                  v34 = *(a1 + 1);
                  v35 = a1[4] - 1;
                }

                v36 = v35 & ((v39 >> 4) ^ (v39 >> 9));
                v37 = &v34[2 * v36];
                v38 = *v37;
                if (v39 != *v37)
                {
                  v40 = 0;
                  v41 = 1;
                  while (v38 != -4096)
                  {
                    if (v40)
                    {
                      v42 = 0;
                    }

                    else
                    {
                      v42 = v38 == -8192;
                    }

                    if (v42)
                    {
                      v40 = v37;
                    }

                    v43 = v36 + v41++;
                    v36 = v43 & v35;
                    v37 = &v34[2 * (v43 & v35)];
                    v38 = *v37;
                    if (v39 == *v37)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (v40)
                  {
                    v37 = v40;
                  }
                }

LABEL_33:
                *v37 = v39;
                *a1 += 2;
              }

              v33 = (v33 + 8);
            }

            while (v33 != v8);
          }

          llvm::deallocate_buffer(v6, (8 * v7), 8uLL);
          return;
        }

LABEL_22:
        v28 = (v27 >> 3) + 1;
        v29 = &buffer->i8[8 * (v28 & 0x3FFFFFFFFFFFFFFCLL)];
        v30 = buffer + 1;
        v31 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v32 = v28 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v30[-1] = v31;
          *v30 = v31;
          v30 += 2;
          v32 -= 4;
        }

        while (v32);
        if (v28 == (v28 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v8 = (v6 + 8 * v7);
      *a1 = 1;
    }

    v26 = (a1 + 10);
    buffer = (a1 + 2);
    v27 = 24;
    goto LABEL_22;
  }

  v9 = &v57;
  if ((*(a1 + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 2);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v57 = *(a1 + 1);
    v9 = &v58;
    v10 = *(a1 + 2);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v11 = *(a1 + 3);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  *v9++ = v10;
  v11 = *(a1 + 3);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v12 = *(a1 + 4);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *v9++ = v11;
  v12 = *(a1 + 4);
  if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v13 = *a1;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *v9++ = v12;
  v13 = *a1;
  if (a2 < 5)
  {
LABEL_13:
    *a1 = v13 & 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_58:
    v16 = (a1 + 10);
    v15 = (a1 + 2);
    v17 = 24;
    goto LABEL_16;
  }

LABEL_57:
  *a1 = v13 & 0xFFFFFFFE;
  v44 = a2;
  *(a1 + 1) = llvm::allocate_buffer((8 * a2), 8uLL);
  *(a1 + 2) = v44;
  v45 = *a1;
  *a1 = *a1 & 1;
  if (v45)
  {
    goto LABEL_58;
  }

LABEL_14:
  v14 = a1[4];
  if (!v14)
  {
    goto LABEL_61;
  }

  v15 = *(a1 + 1);
  v16 = &v15->i64[v14];
  v17 = v16 - v15 - 8;
  if (v17 < 0x18)
  {
    v19 = *(a1 + 1);
    do
    {
LABEL_60:
      *v19++ = -4096;
    }

    while (v19 != v16);
    goto LABEL_61;
  }

LABEL_16:
  v18 = (v17 >> 3) + 1;
  v19 = &v15->i64[v18 & 0x3FFFFFFFFFFFFFFCLL];
  v20 = v15 + 1;
  v21 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20[-1] = v21;
    *v20 = v21;
    v20 += 2;
    v22 -= 4;
  }

  while (v22);
  if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_60;
  }

LABEL_61:
  if (&v57 != v9)
  {
    v46 = &v57;
    do
    {
      v52 = *v46;
      if ((*v46 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v48 = 3;
          v47 = (a1 + 2);
        }

        else
        {
          v47 = *(a1 + 1);
          v48 = a1[4] - 1;
        }

        v49 = v48 & ((v52 >> 4) ^ (v52 >> 9));
        v50 = &v47[2 * v49];
        v51 = *v50;
        if (v52 != *v50)
        {
          v53 = 0;
          v54 = 1;
          while (v51 != -4096)
          {
            if (v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v51 == -8192;
            }

            if (v55)
            {
              v53 = v50;
            }

            v56 = v49 + v54++;
            v49 = v56 & v48;
            v50 = &v47[2 * (v56 & v48)];
            v51 = *v50;
            if (v52 == *v50)
            {
              goto LABEL_65;
            }
          }

          if (v53)
          {
            v50 = v53;
          }
        }

LABEL_65:
        *v50 = v52;
        *a1 += 2;
      }

      ++v46;
    }

    while (v46 != v9);
  }
}

BOOL sub_10005FAA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 1);
  v4 = *(v3 + 56);
  if (v4 != 24)
  {
    v6 = *(v3 + 56);
    LOBYTE(v39) = 0;
    v41 = 0;
    if (v4 != 10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = *(v3 + 64);
    v13 = *(v3 + 72);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = v13;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v42);
    v14 = *(v2 + 1);
    *(v14 + 56) = v42;
    *(v14 + 72) = v43;
    sub_10005A9E8(&v42, *v1, v4 == 24, v12, v13);
    if (v43)
    {
      v9 = DWORD2(v42);
      v40 = DWORD2(v42);
      v39 = v42;
      v41 = 1;
      if (!DWORD2(v42))
      {
LABEL_11:
        ++*(v1 + 32);
        v18 = 1;
        goto LABEL_64;
      }

LABEL_10:
      v15 = v9 >> 3;
      v16 = *(v1 + 16);
      v17 = &v16[-*(v1 + 8)];
      LOBYTE(v42) = 0;
      sub_10005FFD8(v1 + 8, v16, v15, &v42);
      llvm::StoreIntToMemory(&v39, &v17[*(v1 + 8)], v15);
      goto LABEL_11;
    }

    v37[0] = "integer constant out of range";
    v38 = 259;
    mlir::detail::Parser::emitError(v2, v37, &v42);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
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

      v31 = __p;
      if (__p)
      {
        v32 = v49;
        v33 = __p;
        if (v49 != __p)
        {
          do
          {
            v32 = sub_100052FFC(v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v49 = v31;
        operator delete(v33);
      }

      v22 = v46;
      if (!v46)
      {
        goto LABEL_62;
      }

      v34 = v47;
      v24 = v46;
      if (v47 == v46)
      {
        goto LABEL_61;
      }

      do
      {
        v35 = *--v34;
        *v34 = 0;
        if (v35)
        {
          operator delete[]();
        }
      }

      while (v34 != v22);
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v42);
  v5 = *(v2 + 1);
  *(v5 + 56) = v42;
  *(v5 + 72) = v43;
  v3 = *(v2 + 1);
  v6 = *(v3 + 56);
  LOBYTE(v39) = 0;
  v41 = 0;
  if (v6 == 10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 == 80 || v6 == 60)
  {
    if (mlir::Type::isInteger(v1, 1))
    {
      v7 = *(*(v2 + 1) + 56);
      mlir::Type::isUnsignedInteger(v1);
      v8 = v7 == 80;
      v9 = 8;
      v40 = 8;
      v39 = v8;
      v41 = 1;
      v10 = *(v2 + 1);
      *(v10 + 96) = *(v10 + 72);
      *(v10 + 80) = *(v10 + 56);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v42);
      v11 = *(v2 + 1);
      *(v11 + 56) = v42;
      *(v11 + 72) = v43;
      goto LABEL_10;
    }

    v37[0] = "expected i1 type for 'true' or 'false' values";
    v38 = 259;
    mlir::detail::Parser::emitError(v2, v37, &v42);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
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

      v19 = __p;
      if (__p)
      {
        v20 = v49;
        v21 = __p;
        if (v49 != __p)
        {
          do
          {
            v20 = sub_100052FFC(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v49 = v19;
        operator delete(v21);
      }

      v22 = v46;
      if (!v46)
      {
        goto LABEL_62;
      }

      v23 = v47;
      v24 = v46;
      if (v47 == v46)
      {
LABEL_61:
        v47 = v22;
        operator delete(v24);
LABEL_62:
        if (v44 != &v45)
        {
          free(v44);
        }

        goto LABEL_64;
      }

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
LABEL_60:
      v24 = v46;
      goto LABEL_61;
    }
  }

  else
  {
    v37[0] = "expected integer literal";
    v38 = 259;
    mlir::detail::Parser::emitError(v2, v37, &v42);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
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

      v26 = __p;
      if (__p)
      {
        v27 = v49;
        v28 = __p;
        if (v49 != __p)
        {
          do
          {
            v27 = sub_100052FFC(v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v49 = v26;
        operator delete(v28);
      }

      v22 = v46;
      if (!v46)
      {
        goto LABEL_62;
      }

      v29 = v47;
      v24 = v46;
      if (v47 == v46)
      {
        goto LABEL_61;
      }

      do
      {
        v30 = *--v29;
        *v29 = 0;
        if (v30)
        {
          operator delete[]();
        }
      }

      while (v29 != v22);
      goto LABEL_60;
    }
  }

LABEL_64:
  if (v41 == 1 && v40 >= 0x41 && v39)
  {
    operator delete[]();
  }

  return v18;
}

char *sub_10005FFD8(uint64_t a1, char *a2, size_t a3, char *a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v5 = a4;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 - v9 < a3)
  {
    v10 = *a1;
    v11 = &v9[a3 - *a1];
    if (v11 < 0)
    {
      sub_10002BC08();
    }

    v12 = (a2 - v10);
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

    v30 = a2 - v10;
    memset(v12, *a4, a3);
    v31 = &v12[a3];
    v32 = v9 - v4;
    memcpy(v31, v4, v9 - v4);
    *(a1 + 8) = v4;
    v33 = &v12[v10 - v4];
    memcpy(v33, v10, v30);
    *a1 = v33;
    *(a1 + 8) = &v31[v32];
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }

    return v12;
  }

  v15 = v9 - a2;
  if (a3 > v9 - a2)
  {
    memset(*(a1 + 8), *a4, a3 - (v9 - a2));
    v16 = &v4[a3];
    *(a1 + 8) = &v4[a3];
    if (!v15)
    {
      return v4;
    }

    v17 = v9 - v4;
    v18 = &v4[a3];
    v19 = v4;
    v20 = &v4[a3];
    if (v4 >= v9)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v16 = *(a1 + 8);
  v17 = a3;
  v18 = &a2[a3];
  v19 = &v9[-a3];
  v20 = v16;
  if (v9 >= a3)
  {
LABEL_16:
    if (a3 <= v15)
    {
      v21 = v9 - v4;
    }

    else
    {
      v21 = a3;
    }

    v22 = &v9[a3] - v4 - v21;
    v23 = v22 >= 0x20 && a3 > 0x1F;
    v20 = v16;
    if (!v23)
    {
      goto LABEL_43;
    }

    v19 += v22 & 0xFFFFFFFFFFFFFFE0;
    v20 = &v16[v22 & 0xFFFFFFFFFFFFFFE0];
    v24 = &v4[v21 + 16];
    v25 = &v24[-a3];
    v26 = v22 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v27 = *v25;
      *(v24 - 1) = *(v25 - 1);
      *v24 = v27;
      v24 += 32;
      v25 += 32;
      v26 -= 32;
    }

    while (v26);
    if (v22 != (v22 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_43:
      do
      {
        v28 = *v19++;
        *v20++ = v28;
      }

      while (v19 != v9);
    }
  }

LABEL_28:
  *(a1 + 8) = v20;
  if (v16 != v18)
  {
    memmove(v18, v4, v16 - v18);
  }

  if (v4 <= v5)
  {
    if (*(a1 + 8) <= v5)
    {
      v29 = 0;
    }

    else
    {
      v29 = a3;
    }

    v5 += v29;
  }

  memset(v4, *v5, v17);
  return v4;
}

uint64_t sub_100060224(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 24)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v41);
    v5 = *(v2 + 8);
    *(v5 + 56) = v41;
    *(v5 + 72) = v42;
    v3 = *(v2 + 8);
  }

  v36 = *(v3 + 56);
  v37 = *(v3 + 72);
  LOBYTE(v41) = 0;
  v43 = 0;
  v6 = *v1;
  if (!*v1)
  {
    goto LABEL_16;
  }

  v7 = *v6;
  {
    v34 = v7;
    v35 = v6;
    sub_100278F40();
    v6 = v35;
    v8 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v9 = *(v34 + 8);
    v10 = *(v34 + 16);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_6:
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
    goto LABEL_16;
  }

  v17 = v11[1];
LABEL_17:
  *&v38 = v6;
  *(&v38 + 1) = v17;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v38);
  v19 = mlir::detail::Parser::parseFloatFromLiteral(v2, &v41, &v36, v4 == 24, FloatSemantics);
  if ((v19 & 1) == 0)
  {
    v31 = 0;
    if (v43 != 1)
    {
      return v31;
    }

    goto LABEL_29;
  }

  v20 = *(v2 + 8);
  *(v20 + 80) = *(v20 + 56);
  *(v20 + 96) = *(v20 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v38);
  v21 = *(v2 + 8);
  *(v21 + 56) = v38;
  *(v21 + 72) = v39;
  v22 = v41;
  if (llvm::APFloatBase::PPCDoubleDouble(v23) == v22)
  {
    v19 = llvm::detail::DoubleAPFloat::bitcastToAPInt(&v41, &v38);
    v24 = DWORD2(v38);
    if (DWORD2(v38))
    {
      goto LABEL_20;
    }

LABEL_28:
    ++*(v1 + 32);
    v31 = 1;
    if (v43 != 1)
    {
      return v31;
    }

    goto LABEL_29;
  }

  v19 = llvm::detail::IEEEFloat::bitcastToAPInt(&v41, &v38);
  v24 = DWORD2(v38);
  if (!DWORD2(v38))
  {
    goto LABEL_28;
  }

LABEL_20:
  v25 = v24 >> 3;
  v27 = *(v1 + 8);
  v26 = *(v1 + 16);
  v28 = (v1 + 8);
  v29 = &v26[-v27];
  v40 = 0;
  sub_10005FFD8(v28, v26, v25, &v40);
  v19 = llvm::StoreIntToMemory(&v38, &v29[*v28], v25);
  v30 = DWORD2(v38);
  ++v28[3];
  if (v30 >= 0x41)
  {
    v19 = v38;
    if (v38)
    {
      operator delete[]();
    }
  }

  v31 = 1;
  if (v43 == 1)
  {
LABEL_29:
    v32 = v41;
    if (llvm::APFloatBase::PPCDoubleDouble(v19) == v32)
    {
      sub_100029F40(&v41);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v41);
    }
  }

  return v31;
}

void sub_100060520(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void sub_100060558(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void sub_100060590(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t sub_1000605C8(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 16 * v6);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
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

void sub_10006067C(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & (((0xBF58476D1CE4E5B9 * v23) >> 31) ^ (484763065 * v23));
          v22 = (*a1 + 16 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 16 * (v30 & v24));
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = *(v16 + 1);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
      v19 = buffer + 2;
      v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 2) = -1;
        *v19 = -1;
        v19 += 4;
        v20 -= 2;
      }

      while (v20);
      if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v21 = &buffer[2 * v17];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v21);
      }
    }
  }
}

BOOL mlir::detail::Parser::parseDialectSymbolBody(mlir::detail::Parser *this, llvm::StringRef *a2, BOOL *a3)
{
  v6 = 0;
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v46 = &v48;
  v47 = xmmword_10028F120;
  v9 = *(v7 + 48);
  v35[0] = this;
  v35[1] = &v46;
  while (1)
  {
    while (1)
    {
      if (v8 == v9)
      {
        EndLoc = v8;
        goto LABEL_37;
      }

      EndLoc = (v8 + 1);
      v13 = *v8;
      if (v13 > 0x3D)
      {
        if (*v8 <= 0x5Cu)
        {
          if (v13 == 62)
          {
            if ((sub_10006104C(&v46, v35, 0x3Cu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }

          if (v13 != 91)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v13 == 93)
          {
            if ((sub_10006104C(&v46, v35, 0x5Bu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }

          if (v13 != 123)
          {
            if (v13 == 125 && (sub_10006104C(&v46, v35, 0x7Bu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }
        }

        goto LABEL_24;
      }

      if (*v8 <= 0x28u)
      {
        break;
      }

      switch(v13)
      {
        case ')':
          if ((sub_10006104C(&v46, v35, 0x28u) & 1) == 0)
          {
            goto LABEL_43;
          }

          break;
        case '-':
          v10 = v8[1];
          v11 = v8 + 2;
          if (v10 == 62)
          {
            EndLoc = v11;
          }

          break;
        case '<':
          goto LABEL_24;
      }

LABEL_4:
      v6 = v47;
      v8 = EndLoc;
      if (!v47)
      {
        goto LABEL_38;
      }
    }

    if (v13 == 34)
    {
      v14 = *(this + 1);
      *(v14 + 40) = v8;
      mlir::Lexer::lexToken((v14 + 8), &v36);
      v15 = *(this + 1);
      *(v15 + 56) = v36;
      *(v15 + 72) = v37;
      EndLoc = mlir::Token::getEndLoc((*(this + 1) + 56));
      v16 = *(*(this + 1) + 56);
      if (v16 != 11)
      {
        if (v16 != 2)
        {
LABEL_43:
          v19 = 0;
          goto LABEL_39;
        }

LABEL_37:
        *a3 = 1;
        *&v47 = 0;
LABEL_38:
        v17 = *(this + 1);
        *(v17 + 40) = EndLoc;
        mlir::Lexer::lexToken((v17 + 8), &v36);
        v18 = *(this + 1);
        *(v18 + 56) = v36;
        *(v18 + 72) = v37;
        *(a2 + 1) = (EndLoc - *a2);
        v19 = 1;
        goto LABEL_39;
      }

      goto LABEL_4;
    }

    if (v13 != 40)
    {
      break;
    }

LABEL_24:
    if ((v6 + 1) > *(&v47 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v46, &v48, v6 + 1, 1);
      v6 = v47;
    }

    *(v46 + v6) = v13;
    v8 = EndLoc;
    v6 = v47 + 1;
    *&v47 = v6;
    if (!v6)
    {
      goto LABEL_38;
    }
  }

  if (*v8)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    sub_100060D2C(&v36, v35);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v43;
        v23 = __p;
        if (v43 != __p)
        {
          do
          {
            v22 = sub_100052FFC(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v43 = v21;
        operator delete(v23);
      }

      v24 = v40;
      if (v40)
      {
        v25 = v41;
        v26 = v40;
        if (v41 != v40)
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
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v33 = "unexpected nul or EOF in pretty dialect name";
    v34 = 259;
    mlir::detail::Parser::emitError(this, &v33, &v36);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
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
            v29 = sub_100052FFC(v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v43 = v28;
        operator delete(v30);
      }

      v24 = v40;
      if (v40)
      {
        v31 = v41;
        v26 = v40;
        if (v41 != v40)
        {
          do
          {
            v32 = *--v31;
            *v31 = 0;
            if (v32)
            {
              operator delete[]();
            }
          }

          while (v31 != v24);
LABEL_77:
          v26 = v40;
        }

LABEL_78:
        v41 = v24;
        operator delete(v26);
      }

LABEL_79:
      if (v38 != &v39)
      {
        free(v38);
      }
    }
  }

LABEL_39:
  if (v46 != &v48)
  {
    free(v46);
  }

  return v19;
}

void sub_100060D2C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v23 = 257;
  mlir::detail::Parser::emitError(v4, v22, &v27);
  if (v27)
  {
    v24 = 3;
    v25 = "unbalanced '";
    v26 = 12;
    v5 = &v24;
    v6 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v24 && v29 + 24 * v30 > &v24)
      {
        v20 = &v24 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v6 = v29;
        v5 = (v29 + v20);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v5 = &v24;
        v6 = v29;
      }
    }

    v7 = &v6[24 * v30];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v30;
    if (v27)
    {
      mlir::Diagnostic::operator<<(&v28, *(**(a2 + 8) + *(*(a2 + 8) + 8) - 1));
      if (v27)
      {
        v24 = 3;
        v25 = "' character in pretty dialect name";
        v26 = 34;
        v9 = &v24;
        v10 = v29;
        if (v30 >= v31)
        {
          if (v29 <= &v24 && v29 + 24 * v30 > &v24)
          {
            v21 = &v24 - v29;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
            v10 = v29;
            v9 = (v29 + v21);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
            v9 = &v24;
            v10 = v29;
          }
        }

        v11 = &v10[24 * v30];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        ++v30;
      }
    }
  }

  sub_100062C04(a1, &v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
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
          v14 = sub_100052FFC(v14 - 1);
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

    if (v29 != v32)
    {
      free(v29);
    }
  }
}

uint64_t sub_10006104C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (*(*a1 + v3 - 1) == a3)
  {
    a1[1] = v3 - 1;
    return 1;
  }

  else
  {
    sub_100060D2C(v13, a2);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v13[0])
    {
      mlir::InFlightDiagnostic::report(v13);
    }

    if (v21 == 1)
    {
      if (v20 != &v21)
      {
        free(v20);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v19;
        v7 = __p;
        if (v19 != __p)
        {
          do
          {
            v6 = sub_100052FFC(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v19 = v5;
        operator delete(v7);
      }

      v8 = v16;
      if (v16)
      {
        v9 = v17;
        v10 = v16;
        if (v17 != v16)
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
          v10 = v16;
        }

        v17 = v8;
        operator delete(v10);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  return v4;
}

void *mlir::detail::Parser::parseExtendedAttr(mlir::detail::Parser *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = **v4;
  v6 = *(v4 + 152);
  v7 = *(v4 + 104);
  v10 = *(v4 + 56);
  v8 = (v4 + 56);
  v9 = v10;
  v11 = *(v8 + 1);
  v12 = *(v8 + 2);
  if (v12)
  {
    ++v11;
  }

  *&v97 = v11;
  *(&v97 + 1) = v12 - (v12 != 0);
  if (v9 == 2 && v12 <= 1)
  {
    v41 = mlir::detail::Parser::codeCompleteDialectSymbol(a1);
    goto LABEL_69;
  }

  v85 = v5;
  LocRange = mlir::Token::getLocRange(v8);
  v86 = v15;
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v17 = *(a1 + 1);
  *(v17 + 96) = *(v17 + 72);
  *(v17 + 80) = *(v17 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v98);
  v18 = *(a1 + 1);
  *(v18 + 56) = v98;
  *(v18 + 72) = v99;
  LOBYTE(v98) = 46;
  v19 = llvm::StringRef::find(&v97, &v98, 1uLL, 0);
  v87 = LocRange;
  if (v19 == -1)
  {
    v26 = Loc;
    v24 = 0;
    v95 = 0;
    v96 = 0;
    v94 = v97;
    v20 = *(&v97 + 1);
    v21 = v97;
  }

  else
  {
    v20 = *(&v97 + 1);
    v21 = v97;
    if (v19 >= *(&v97 + 1))
    {
      v22 = *(&v97 + 1);
    }

    else
    {
      v22 = v19;
    }

    if (*(&v97 + 1) >= v19 + 1)
    {
      v23 = v19 + 1;
    }

    else
    {
      v23 = *(&v97 + 1);
    }

    v24 = v97 + v23;
    *&v94 = v97;
    *(&v94 + 1) = v22;
    v25 = *(&v97 + 1) - v23;
    v95 = v97 + v23;
    v96 = *(&v97 + 1) - v23;
    v26 = Loc;
    if (*(&v97 + 1) != v23)
    {
      v27 = 1;
      v28 = v97 + v23;
      v29 = *(a1 + 1);
      if (*(v29 + 56) != 23)
      {
        goto LABEL_17;
      }

LABEL_40:
      v30 = &v21->i8[v20] == *(v29 + 64);
      if (!v30 && !v27)
      {
        goto LABEL_18;
      }

LABEL_41:
      if (v27)
      {
        if (v30)
        {
          if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v95, &v98))
          {
            goto LABEL_68;
          }

          v28 = v95;
          v25 = v96;
        }
      }

      else
      {
        v95 = v94 + *(&v94 + 1);
        v96 = 0;
        LOBYTE(v98) = 0;
        if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v95, &v98))
        {
          goto LABEL_68;
        }

        v43 = v96 != 0;
        if (v96)
        {
          v28 = v95 + 1;
        }

        else
        {
          v28 = v95;
        }

        v25 = v96 - v43;
        v95 = v28;
        v96 -= v43;
        if ((v98 & 1) == 0)
        {
          if (v25 >= v25 - 1)
          {
            --v25;
          }

          v96 = v25;
        }

        v24 = v26;
      }

      v44 = v94;
      v88[0] = v24;
      v45 = *(a1 + 1);
      v46 = a2;
      if (*(v45 + 56) != 15 || (*(v45 + 80) = *(v45 + 56), *(v45 + 96) = *(v45 + 72), mlir::Lexer::lexToken((*(a1 + 1) + 8), &v98), v47 = *(a1 + 1), *(v47 + 56) = v98, *(v47 + 72) = v99, (v46 = mlir::detail::Parser::parseType(a1)) != 0))
      {
        Dialect = mlir::MLIRContext::getOrLoadDialect(*a1, v44, *(&v44 + 1));
        if (!Dialect)
        {
          *&v91 = a1;
          *(&v91 + 1) = v88;
          LOWORD(v101) = 261;
          v98 = v44;
          v57 = mlir::StringAttr::get(v85, &v98, v49);
          if (!v46)
          {
            mlir::NoneType::get(v85, v56);
          }

          mlir::OpaqueAttr::getChecked(sub_100065F18, &v91, v57);
        }

        v50 = Dialect;
        v51 = mlir::Token::getLoc((*(a1 + 1) + 56));
        v52 = *(a1 + 1);
        *(v52 + 40) = v28;
        mlir::Lexer::lexToken((v52 + 8), &v98);
        v53 = *(a1 + 1);
        *(v53 + 56) = v98;
        *(v53 + 72) = v99;
        *(&v98 + 1) = mlir::Token::getLoc((*(a1 + 1) + 56));
        v99 = a1;
        LOBYTE(v100) = 0;
        *&v98 = &off_1002B50F8;
        v101 = v28;
        v102[0] = v25;
        v41 = (*(*v50 + 32))(v50, &v98, v46);
        v54 = *(a1 + 1);
        *(v54 + 40) = v51;
        mlir::Lexer::lexToken((v54 + 8), &v91);
        v55 = *(a1 + 1);
        *(v55 + 56) = v91;
        *(v55 + 72) = v92;
        mlir::DialectAsmParser::~DialectAsmParser(&v98);
        goto LABEL_69;
      }

LABEL_68:
      v41 = 0;
      goto LABEL_69;
    }
  }

  v25 = 0;
  v27 = v21->u8[v20 - 1] == 46;
  v28 = v24;
  v29 = *(a1 + 1);
  if (*(v29 + 56) == 23)
  {
    goto LABEL_40;
  }

LABEL_17:
  v30 = 0;
  if (v27)
  {
    goto LABEL_41;
  }

LABEL_18:
  v31 = llvm::StringMapImpl::hash(v21, v20);
  Key = llvm::StringMapImpl::FindKey(v7, v21, v20, v31);
  if (Key == -1)
  {
    v33 = *(v7 + 8);
  }

  else
  {
    v33 = Key;
  }

  if (v33 == *(v7 + 8))
  {
    v90 = 1283;
    v88[0] = "undefined symbol alias id '";
    v89 = v97;
    *&v91 = v88;
    v92 = "'";
    v93 = 770;
    mlir::detail::Parser::emitWrongTokenError(a1, &v91, &v98);
    if (v98)
    {
      mlir::InFlightDiagnostic::report(&v98);
    }

    if (v108 == 1)
    {
      if (v107 != &v108)
      {
        free(v107);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v106;
        v36 = __p;
        if (v106 != __p)
        {
          do
          {
            v35 = sub_100052FFC(v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v106 = v34;
        operator delete(v36);
      }

      v37 = v103;
      if (v103)
      {
        v38 = v104;
        v39 = v103;
        if (v104 != v103)
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
          v39 = v103;
        }

        v104 = v37;
        operator delete(v39);
      }

      if (v100 != v102)
      {
        free(v100);
      }
    }

    goto LABEL_68;
  }

  v42 = *v7;
  if (v6)
  {
    mlir::AsmParserState::addAttrAliasUses(v6, v97, *(&v97 + 1), v87, v86);
  }

  v41 = *(*(v42 + 8 * v33) + 8);
LABEL_69:
  if (v41)
  {
    v58 = sub_100062D0C(v41);
    *&v94 = v58;
    *(&v94 + 1) = v59;
    if (!a2)
    {
      return v41;
    }
  }

  else
  {
    v58 = 0;
    v94 = 0uLL;
    if (!a2)
    {
      return v41;
    }
  }

  if (v58 && mlir::TypedAttr::getType(&v94) != a2)
  {
    *&v91 = "attribute type different than expected: expected ";
    v93 = 259;
    mlir::detail::Parser::emitError(a1, &v91, &v98);
    if (v98)
    {
      v60 = v88;
      mlir::DiagnosticArgument::DiagnosticArgument(v88, a2);
      v61 = v100;
      if (v101 >= HIDWORD(v101))
      {
        if (v100 <= v88 && v100 + 24 * v101 > v88)
        {
          v82 = v88 - v100;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 24);
          v61 = v100;
          v60 = v100 + v82;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 24);
          v60 = v88;
          v61 = v100;
        }
      }

      v62 = &v61[24 * v101];
      v63 = *v60;
      *(v62 + 2) = *(v60 + 2);
      *v62 = v63;
      v64 = (v101 + 1);
      LODWORD(v101) = v101 + 1;
      if (v98)
      {
        LODWORD(v88[0]) = 3;
        v88[1] = ", but got ";
        *&v89 = 10;
        v65 = v88;
        v66 = v100;
        if (v64 >= HIDWORD(v101))
        {
          if (v100 <= v88 && v100 + 24 * v64 > v88)
          {
            v84 = v88 - v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v64 + 1, 24);
            v66 = v100;
            v65 = v100 + v84;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v64 + 1, 24);
            v65 = v88;
            v66 = v100;
          }
        }

        v67 = &v66[24 * v101];
        v68 = *v65;
        *(v67 + 2) = *(v65 + 2);
        *v67 = v68;
        LODWORD(v101) = v101 + 1;
      }
    }

    Type = mlir::TypedAttr::getType(&v94);
    if (v98)
    {
      v70 = v88;
      mlir::DiagnosticArgument::DiagnosticArgument(v88, Type);
      v71 = v100;
      if (v101 >= HIDWORD(v101))
      {
        if (v100 <= v88 && v100 + 24 * v101 > v88)
        {
          v83 = v88 - v100;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 24);
          v71 = v100;
          v70 = v100 + v83;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 24);
          v70 = v88;
          v71 = v100;
        }
      }

      v72 = &v71[24 * v101];
      v73 = *v70;
      *(v72 + 2) = *(v70 + 2);
      *v72 = v73;
      LODWORD(v101) = v101 + 1;
      if (v98)
      {
        mlir::InFlightDiagnostic::report(&v98);
      }
    }

    if (v108 == 1)
    {
      if (v107 != &v108)
      {
        free(v107);
      }

      v74 = __p;
      if (__p)
      {
        v75 = v106;
        v76 = __p;
        if (v106 != __p)
        {
          do
          {
            v75 = sub_100052FFC(v75 - 1);
          }

          while (v75 != v74);
          v76 = __p;
        }

        v106 = v74;
        operator delete(v76);
      }

      v77 = v103;
      if (v103)
      {
        v78 = v104;
        v79 = v103;
        if (v104 != v103)
        {
          do
          {
            v80 = *--v78;
            *v78 = 0;
            if (v80)
            {
              operator delete[]();
            }
          }

          while (v78 != v77);
          v79 = v103;
        }

        v104 = v77;
        operator delete(v79);
      }

      if (v100 != v102)
      {
        free(v100);
      }
    }

    return 0;
  }

  return v41;
}

uint64_t mlir::detail::Parser::parseExtendedType(mlir::detail::Parser *this)
{
  v2 = *(this + 1);
  v3 = **v2;
  v4 = *(v2 + 152);
  v5 = *(v2 + 104);
  v8 = *(v2 + 56);
  v6 = (v2 + 56);
  v7 = v8;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  if (v10)
  {
    ++v9;
  }

  *&v61 = v9;
  *(&v61 + 1) = v10 - (v10 != 0);
  if (v7 == 2 && v10 <= 1)
  {

    return mlir::detail::Parser::codeCompleteDialectSymbol(this);
  }

  LocRange = mlir::Token::getLocRange(v6);
  v51 = v13;
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v14 = *(this + 1);
  *(v14 + 96) = *(v14 + 72);
  *(v14 + 80) = *(v14 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v62);
  v15 = *(this + 1);
  *(v15 + 56) = v62;
  *(v15 + 72) = v63;
  LOBYTE(v62) = 46;
  v16 = llvm::StringRef::find(&v61, &v62, 1uLL, 0);
  if (v16 == -1)
  {
    v21 = 0;
    v59 = 0;
    v60 = 0;
    v58 = v61;
    v17 = *(&v61 + 1);
    v18 = v61;
  }

  else
  {
    v17 = *(&v61 + 1);
    v18 = v61;
    if (v16 >= *(&v61 + 1))
    {
      v19 = *(&v61 + 1);
    }

    else
    {
      v19 = v16;
    }

    if (*(&v61 + 1) >= v16 + 1)
    {
      v20 = v16 + 1;
    }

    else
    {
      v20 = *(&v61 + 1);
    }

    v21 = v61 + v20;
    *&v58 = v61;
    *(&v58 + 1) = v19;
    v22 = *(&v61 + 1) - v20;
    v59 = v61 + v20;
    v60 = *(&v61 + 1) - v20;
    if (*(&v61 + 1) != v20)
    {
      v23 = 1;
      v24 = v61 + v20;
      v25 = *(this + 1);
      if (*(v25 + 56) != 23)
      {
        goto LABEL_17;
      }

LABEL_43:
      v26 = &v18->i8[v17] == *(v25 + 64);
      if (!v26 && !v23)
      {
        goto LABEL_18;
      }

LABEL_44:
      if (v23)
      {
        if (!v26)
        {
LABEL_60:
          v52[0] = v21;
          Dialect = mlir::MLIRContext::getOrLoadDialect(v3, v58, *(&v58 + 1));
          if (!Dialect)
          {
            *&v55 = this;
            *(&v55 + 1) = v52;
            LOWORD(v65) = 261;
            v62 = v58;
            v49 = mlir::StringAttr::get(v3, &v62, v41);
            mlir::OpaqueType::getChecked(sub_100065F50, &v55, v49);
          }

          v42 = Dialect;
          v43 = mlir::Token::getLoc((*(this + 1) + 56));
          v44 = *(this + 1);
          *(v44 + 40) = v24;
          mlir::Lexer::lexToken((v44 + 8), &v62);
          v45 = *(this + 1);
          *(v45 + 56) = v62;
          *(v45 + 72) = v63;
          *(&v62 + 1) = mlir::Token::getLoc((*(this + 1) + 56));
          v63 = this;
          LOBYTE(v64) = 0;
          *&v62 = &off_1002B50F8;
          v65 = v24;
          v66 = v22;
          v46 = (*(*v42 + 48))(v42, &v62);
          v47 = *(this + 1);
          *(v47 + 40) = v43;
          mlir::Lexer::lexToken((v47 + 8), &v55);
          v48 = *(this + 1);
          *(v48 + 56) = v55;
          *(v48 + 72) = v56;
          mlir::DialectAsmParser::~DialectAsmParser(&v62);
          return v46;
        }

        if (mlir::detail::Parser::parseDialectSymbolBody(this, &v59, &v62))
        {
          v24 = v59;
          v22 = v60;
          goto LABEL_60;
        }
      }

      else
      {
        v59 = v58 + *(&v58 + 1);
        v60 = 0;
        LOBYTE(v62) = 0;
        if (mlir::detail::Parser::parseDialectSymbolBody(this, &v59, &v62))
        {
          v39 = v60 != 0;
          if (v60)
          {
            v24 = v59 + 1;
          }

          else
          {
            v24 = v59;
          }

          v22 = v60 - v39;
          v59 = v24;
          v60 -= v39;
          if ((v62 & 1) == 0)
          {
            if (v22 >= v22 - 1)
            {
              --v22;
            }

            v60 = v22;
          }

          v21 = Loc;
          goto LABEL_60;
        }
      }

      return 0;
    }
  }

  v22 = 0;
  v23 = v18->u8[v17 - 1] == 46;
  v24 = v21;
  v25 = *(this + 1);
  if (*(v25 + 56) == 23)
  {
    goto LABEL_43;
  }

LABEL_17:
  v26 = 0;
  if (v23)
  {
    goto LABEL_44;
  }

LABEL_18:
  v27 = llvm::StringMapImpl::hash(v18, v17);
  Key = llvm::StringMapImpl::FindKey((v5 + 24), v18, v17, v27);
  if (Key == -1)
  {
    v29 = *(v5 + 32);
  }

  else
  {
    v29 = Key;
  }

  if (v29 == *(v5 + 32))
  {
    v54 = 1283;
    v52[0] = "undefined symbol alias id '";
    v53 = v61;
    *&v55 = v52;
    v56 = "'";
    v57 = 770;
    mlir::detail::Parser::emitWrongTokenError(this, &v55, &v62);
    if (v62)
    {
      mlir::InFlightDiagnostic::report(&v62);
    }

    if (v72 == 1)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v70;
        v32 = __p;
        if (v70 != __p)
        {
          do
          {
            v31 = sub_100052FFC(v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v70 = v30;
        operator delete(v32);
      }

      v33 = v67;
      if (v67)
      {
        v34 = v68;
        v35 = v67;
        if (v68 != v67)
        {
          do
          {
            v36 = *--v34;
            *v34 = 0;
            if (v36)
            {
              operator delete[]();
            }
          }

          while (v34 != v33);
          v35 = v67;
        }

        v68 = v33;
        operator delete(v35);
      }

      if (v64 != &v66)
      {
        free(v64);
      }
    }

    return 0;
  }

  v38 = *(v5 + 24);
  if (v4)
  {
    mlir::AsmParserState::addTypeAliasUses(v4, v61, *(&v61 + 1), LocRange, v51);
  }

  return *(*(v38 + 8 * v29) + 8);
}

uint64_t *mlir::parseAttribute(mlir::StringAttr ****a1, uint64_t **a2, uint64_t **a3, uint64_t *a4, uint64_t ***a5, int a6)
{
  if (a6)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v53);
  }

  else
  {
    v72 = 261;
    v70 = a1;
    v71[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v70, &v53);
  }

  llvm::SourceMgr::SourceMgr(&v50);
  v11 = v53;
  v53 = 0;
  v71[1] = 0;
  v71[0] = 0;
  v70 = v11;
  if (v51 >= v52)
  {
    v12 = sub_10003987C(&v50, &v70);
  }

  else
  {
    v12 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v51, &v70) + 3;
  }

  v51 = v12;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v70);
  v45[0] = 0;
  v45[1] = 0;
  v45[2] = 0x1000000000;
  v45[3] = 0;
  v45[4] = 0;
  v45[5] = 0x1000000000;
  v45[6] = 0;
  v45[7] = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v88 = a3;
  v89 = 1;
  v91 = 0;
  v90 = 0;
  v92 = 0;
  v93 = 0;
  v94 = v96;
  v95 = 0x600000000;
  v96[6] = &v97;
  v96[7] = 0x600000000;
  v70 = &v88;
  mlir::Lexer::Lexer(v71, &v50, a3, 0);
  mlir::Lexer::lexToken(v71, &v73);
  v75 = 1;
  v76 = "";
  v77 = 0;
  v80 = 0;
  v78 = v45;
  v79 = 0;
  v81 = 0;
  v82 = v84;
  v83 = 0;
  v84[1] = 0;
  v84[0] = 0;
  v87[0] = "builtin";
  v87[1] = 7;
  v85 = v87;
  v86 = 0x300000001;
  v43 = *v70;
  v44 = &v70;
  v41 = v73;
  v42 = v74;
  v13 = mlir::detail::Parser::parseAttribute(&v43, a4);
  if (v13)
  {
    v39 = *(v44 + 7);
    v40 = v44[9];
    Loc = mlir::Token::getLoc(&v39);
    v15 = (Loc - mlir::Token::getLoc(&v41));
    if (a5)
    {
      *a5 = v15;
    }

    else if (v15 != a2)
    {
      v16 = mlir::Token::getLoc(&v39);
      v38 = 257;
      mlir::detail::Parser::emitError(&v43, v16, v37, &v58);
      if (v58)
      {
        LODWORD(v54) = 3;
        v55 = "found trailing characters: '";
        v56 = 28;
        v17 = &v54;
        v18 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v54 && v60 + 24 * v61 > &v54)
          {
            v35 = &v54 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v18 = v60;
            v17 = (v60 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v17 = &v54;
            v18 = v60;
          }
        }

        v19 = &v18[24 * v61];
        v20 = *v17;
        *(v19 + 2) = v17[2];
        *v19 = v20;
        ++v61;
        if (v58)
        {
          v21 = a2 >= v15 ? v15 : a2;
          v57 = 261;
          v54 = (v21 + a1);
          v55 = (a2 - v21);
          mlir::Diagnostic::operator<<(&v59, &v54);
          if (v58)
          {
            LODWORD(v54) = 3;
            v55 = "'";
            v56 = 1;
            v22 = &v54;
            v23 = v60;
            if (v61 >= v62)
            {
              if (v60 <= &v54 && v60 + 24 * v61 > &v54)
              {
                v36 = &v54 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
                v23 = v60;
                v22 = (v60 + v36);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
                v22 = &v54;
                v23 = v60;
              }
            }

            v24 = &v23[24 * v61];
            v25 = *v22;
            *(v24 + 2) = v22[2];
            *v24 = v25;
            ++v61;
            if (v58)
            {
              mlir::InFlightDiagnostic::report(&v58);
            }
          }
        }
      }

      if (v69 == 1)
      {
        if (v68 != &v69)
        {
          free(v68);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v67;
          v28 = __p;
          if (v67 != __p)
          {
            do
            {
              v27 = sub_100052FFC(v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v67 = v26;
          operator delete(v28);
        }

        v29 = v64;
        if (v64)
        {
          v30 = v65;
          v31 = v64;
          if (v65 != v64)
          {
            do
            {
              v32 = *--v30;
              *v30 = 0;
              if (v32)
              {
                operator delete[]();
              }
            }

            while (v30 != v29);
            v31 = v64;
          }

          v65 = v29;
          operator delete(v31);
        }

        if (v60 != v63)
        {
          free(v60);
        }
      }

      v13 = 0;
    }
  }

  if (v85 != v87)
  {
    free(v85);
  }

  if (v82 != v84)
  {
    free(v82);
  }

  llvm::deallocate_buffer(v79, (8 * v81), 8uLL);
  sub_10005318C(&v88);
  sub_100053310(v45);
  llvm::SourceMgr::~SourceMgr(&v50);
  v33 = v53;
  v53 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  return v13;
}

uint64_t *mlir::parseType(char *a1, uint64_t **a2, uint64_t **a3, uint64_t ***a4, int a5)
{
  if (a5)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v51);
  }

  else
  {
    v70 = 261;
    v68 = a1;
    v69[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v68, &v51);
  }

  llvm::SourceMgr::SourceMgr(&v48);
  v9 = v51;
  v51 = 0;
  v69[1] = 0;
  v69[0] = 0;
  v68 = v9;
  if (v49 >= v50)
  {
    v10 = sub_10003987C(&v48, &v68);
  }

  else
  {
    v10 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v49, &v68) + 3;
  }

  v49 = v10;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v68);
  v43[0] = 0;
  v43[1] = 0;
  v43[2] = 0x1000000000;
  v43[3] = 0;
  v43[4] = 0;
  v43[5] = 0x1000000000;
  v43[6] = 0;
  v43[7] = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v86 = a3;
  v87 = 1;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = v94;
  v93 = 0x600000000;
  v94[6] = &v95;
  v94[7] = 0x600000000;
  v68 = &v86;
  mlir::Lexer::Lexer(v69, &v48, a3, 0);
  mlir::Lexer::lexToken(v69, &v71);
  v73 = 1;
  v74 = "";
  v75 = 0;
  v78 = 0;
  v76 = v43;
  v77 = 0;
  v79 = 0;
  v80 = v82;
  v81 = 0;
  v82[1] = 0;
  v82[0] = 0;
  v85[0] = "builtin";
  v85[1] = 7;
  v83 = v85;
  v84 = 0x300000001;
  v41 = *v68;
  v42 = &v68;
  v39 = v71;
  v40 = v72;
  v11 = mlir::detail::Parser::parseType(&v41);
  if (v11)
  {
    v37 = *(v42 + 7);
    v38 = v42[9];
    Loc = mlir::Token::getLoc(&v37);
    v13 = (Loc - mlir::Token::getLoc(&v39));
    if (a4)
    {
      *a4 = v13;
    }

    else if (v13 != a2)
    {
      v14 = mlir::Token::getLoc(&v37);
      v36 = 257;
      mlir::detail::Parser::emitError(&v41, v14, v35, &v56);
      if (v56)
      {
        LODWORD(v52) = 3;
        v53 = "found trailing characters: '";
        v54 = 28;
        v15 = &v52;
        v16 = v58;
        if (v59 >= v60)
        {
          if (v58 <= &v52 && v58 + 24 * v59 > &v52)
          {
            v33 = &v52 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v16 = v58;
            v15 = (v58 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v15 = &v52;
            v16 = v58;
          }
        }

        v17 = &v16[24 * v59];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v59;
        if (v56)
        {
          v19 = a2 >= v13 ? v13 : a2;
          v55 = 261;
          v52 = (v19 + a1);
          v53 = (a2 - v19);
          mlir::Diagnostic::operator<<(&v57, &v52);
          if (v56)
          {
            LODWORD(v52) = 3;
            v53 = "'";
            v54 = 1;
            v20 = &v52;
            v21 = v58;
            if (v59 >= v60)
            {
              if (v58 <= &v52 && v58 + 24 * v59 > &v52)
              {
                v34 = &v52 - v58;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                v21 = v58;
                v20 = (v58 + v34);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                v20 = &v52;
                v21 = v58;
              }
            }

            v22 = &v21[24 * v59];
            v23 = *v20;
            *(v22 + 2) = v20[2];
            *v22 = v23;
            ++v59;
            if (v56)
            {
              mlir::InFlightDiagnostic::report(&v56);
            }
          }
        }
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v65;
          v26 = __p;
          if (v65 != __p)
          {
            do
            {
              v25 = sub_100052FFC(v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v65 = v24;
          operator delete(v26);
        }

        v27 = v62;
        if (v62)
        {
          v28 = v63;
          v29 = v62;
          if (v63 != v62)
          {
            do
            {
              v30 = *--v28;
              *v28 = 0;
              if (v30)
              {
                operator delete[]();
              }
            }

            while (v28 != v27);
            v29 = v62;
          }

          v63 = v27;
          operator delete(v29);
        }

        if (v58 != v61)
        {
          free(v58);
        }
      }

      v11 = 0;
    }
  }

  if (v83 != v85)
  {
    free(v83);
  }

  if (v80 != v82)
  {
    free(v80);
  }

  llvm::deallocate_buffer(v77, (8 * v79), 8uLL);
  sub_10005318C(&v86);
  sub_100053310(v43);
  llvm::SourceMgr::~SourceMgr(&v48);
  v31 = v51;
  v51 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  return v11;
}

uint64_t sub_100062C04(uint64_t a1, mlir::InFlightDiagnostic *this)
{
  v4 = *this;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 200) = 0;
  v5 = (a1 + 200);
  if (*(this + 200) == 1)
  {
    v6 = *(this + 1);
    *(a1 + 16) = *(this + 4);
    *(a1 + 8) = v6;
    *(a1 + 24) = a1 + 40;
    v7 = a1 + 24;
    *(a1 + 32) = 0x400000000;
    if (*(this + 8))
    {
      sub_1000A8718(v7, this + 3);
    }

    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = *(this + 136);
    *(a1 + 152) = *(this + 19);
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = *(this + 10);
    *(a1 + 176) = *(this + 22);
    *(this + 20) = 0;
    *(this + 21) = 0;
    *(this + 22) = 0;
    *(a1 + 184) = v5;
    *(a1 + 192) = 0;
    if (*(this + 48))
    {
      sub_1000A8718(a1 + 184, this + 23);
    }

    *v5 = 1;
    if (*(this + 200))
    {
      sub_100052F18(this + 1);
      *(this + 200) = 0;
    }
  }

  mlir::InFlightDiagnostic::abandon(this);
  return a1;
}

void *sub_100062D0C(void *result)
{
  v1 = *result;
  {
    v22 = v1;
    v24 = result;
    sub_10027911C();
    result = v24;
    v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v3 = *(v22 + 8);
    v4 = *(v22 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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
      sub_10027911C();
      result = v25;
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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

uint64_t sub_100062EA0()
{
  {
    sub_100279170();
  }

  return llvm::getTypeName<mlir::TypedAttr>(void)::Name;
}

const char *sub_100062EE8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypedAttr]";
  v6 = 77;
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

void sub_100062F6C(mlir::DialectAsmParser *a1)
{
  mlir::DialectAsmParser::~DialectAsmParser(a1);

  operator delete();
}

uint64_t sub_100062FE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL sub_100063024(uint64_t a1)
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

uint64_t sub_10006309C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL sub_1000630DC(uint64_t a1)
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

uint64_t sub_100063154(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL sub_100063194(uint64_t a1)
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

uint64_t sub_10006320C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL sub_10006324C(uint64_t a1)
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

uint64_t sub_1000632C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL sub_100063304(uint64_t a1)
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

uint64_t sub_10006337C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL sub_1000633BC(uint64_t a1)
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

uint64_t sub_100063434(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL sub_100063474(uint64_t a1)
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

uint64_t sub_1000634EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL sub_10006352C(uint64_t a1)
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

uint64_t sub_1000635A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL sub_1000635E4(uint64_t a1)
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

uint64_t sub_10006365C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL sub_10006369C(uint64_t a1)
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

uint64_t sub_100063714(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL sub_100063754(uint64_t a1)
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

uint64_t sub_1000637CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL sub_10006380C(uint64_t a1)
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

uint64_t sub_100063884(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL sub_1000638C4(uint64_t a1)
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

uint64_t sub_100063944(void *a1, uint64_t a2)
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

uint64_t sub_100063D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL sub_100063DD8(uint64_t a1)
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

uint64_t sub_100063E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL sub_100063E90(uint64_t a1)
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

uint64_t sub_100063F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL sub_100063F48(uint64_t a1)
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

uint64_t sub_100063FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL sub_100064000(uint64_t a1)
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

uint64_t sub_100064078(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL sub_1000640B8(uint64_t a1)
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

uint64_t sub_100064130(uint64_t a1, double *a2)
{
  v4 = llvm::detail::IEEEFloat::IEEEFloat(v12, 0.0);
  v5 = llvm::APFloatBase::IEEEdouble(v4);
  llvm::APFloat::Storage::Storage(&v13, v12, v5);
  llvm::detail::IEEEFloat::~IEEEFloat(v12);
  v6 = (*(*a1 + 368))(a1, v5, &v13);
  if ((v6 & 1) == 0)
  {
    v7 = 0;
    v11 = v13;
    if (llvm::APFloatBase::PPCDoubleDouble(v6) != v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1000655A4(&v14);
    return v7;
  }

  *a2 = llvm::APFloat::convertToDouble(&v13);
  v7 = 1;
  v8 = v13;
  if (llvm::APFloatBase::PPCDoubleDouble(v9) == v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v13);
  return v7;
}

uint64_t sub_100064268(uint64_t a1, void *a2, uint64_t a3)
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
    sub_1000655A4((&v22 + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return v12;
}

uint64_t sub_10006443C(void *a1, void **a2, const char *a3, void ***a4)
{
  v26[0] = a2;
  v26[1] = a3;
  v5 = a1[2];
  if (*(*(v5 + 8) + 56) == 2)
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(v5, v26, 1);
  }

  v10 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 408))(a1, a2, a3))
  {
    return 1;
  }

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

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v15 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v15;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
      result = v15;
    }

    if (v33 != v36)
    {
      free(v33);
      return v15;
    }
  }

  return result;
}

uint64_t sub_10006479C(uint64_t a1, const void *a2, size_t a3)
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
    return mlir::detail::Parser::codeCompleteOptionalTokens(*(a1 + 16), v12, 1);
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

uint64_t sub_1000648D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = *(v8 + 56);
  if (v9 != 12 && v9 != 3)
  {
    if (v9 == 2)
    {
      v15 = *(a1 + 16);

      return mlir::detail::Parser::codeCompleteOptionalTokens(v15, a3, a4);
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
      goto LABEL_19;
    }

LABEL_7:
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
      v19 = 16 * a4;
      for (i = a3; *(i + 8); i += 16)
      {
        v19 -= 16;
        if (!v19)
        {
          return 0;
        }
      }
    }

    goto LABEL_20;
  }

  v12 = *(v8 + 64);
  v11 = *(v8 + 72);
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_19:
  i = a3;
LABEL_20:
  if (i == a3 + 16 * a4)
  {
    return 0;
  }

  *a2 = v12;
  a2[1] = v11;
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken((*(v7 + 8) + 8), &v20);
  v18 = *(v7 + 8);
  *(v18 + 56) = v20;
  *(v18 + 72) = v21;
  return 1;
}

BOOL sub_100064A64(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3);
  *a2 = v4;
  return v4 != 0;
}

uint64_t sub_100064A9C(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
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

uint64_t sub_100064B18(uint64_t a1, mlir::NamedAttrList *a2)
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

uint64_t sub_100064B38(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t sub_100064BD8(void *a1, uint64_t *a2)
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

BOOL sub_100064D4C(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t sub_100064D80(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100064DE0(mlir::detail::Parser **a1, unsigned int *a2)
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

uint64_t sub_100064E4C(uint64_t a1, unsigned int *a2)
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

BOOL sub_100064EF0(uint64_t a1, uint64_t **a2)
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

uint64_t sub_100064F6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100064FE0(uint64_t a1, uint64_t a2)
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

void sub_100065094(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
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

uint64_t sub_100065408(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000654A0(uint64_t result)
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

uint64_t sub_100065540(uint64_t a1, void *a2)
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

uint64_t sub_100065574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 16);
  v4 = *(result + 8);
  if (*(v4 + 56) == 2 && !*(v4 + 72))
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(result, a2, a3);
  }

  return result;
}

llvm::APFloatBase *sub_1000655A4(llvm::APFloatBase *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = llvm::APFloatBase::PPCDoubleDouble(result);
      v4 = (v1 + 24 * v2 - 24);
      v5 = -24 * v2;
      do
      {
        while (v3 == *v4)
        {
          sub_1000655A4(v4 + 8);
          v4 = (v4 - 24);
          v5 += 24;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        llvm::detail::IEEEFloat::~IEEEFloat(v4);
        v4 = (v4 - 24);
        v5 += 24;
      }

      while (v5);
    }

LABEL_7:
    operator delete[]();
  }

  return result;
}

uint64_t sub_10006565C(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = *a2;
  if (v5 != v4 && v5 != v6)
  {
    llvm::detail::IEEEFloat::operator=(a1, a2);
    return a1;
  }

  if (v5 != v4)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v8 = v5;
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
    v10 = a2;
    if (v8 != *a2)
    {
LABEL_9:
      llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
      return a1;
    }

    goto LABEL_14;
  }

  if (v4 != v6)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v12 = v5;
    sub_1000655A4((a1 + 8));
    v9 = a1;
    v10 = a2;
    if (v12 != *a2)
    {
      goto LABEL_9;
    }

LABEL_14:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
    return a1;
  }

  llvm::detail::DoubleAPFloat::operator=(a1, a2);
  return a1;
}

uint64_t sub_10006575C(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C04D8, memory_order_acquire))
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    sub_1002791C4();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((qword_1002C04D0 >> 4) ^ (qword_1002C04D0 >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != qword_1002C04D0)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == qword_1002C04D0)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

uint64_t sub_100065820()
{
  if ((atomic_load_explicit(&qword_1002C04F0, memory_order_acquire) & 1) == 0)
  {
    sub_100279218();
  }

  return qword_1002C04E0;
}

const char *sub_100065868()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6 = 89;
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

uint64_t sub_1000658E8@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    sub_100065B00(result, v4);
    sub_100065A5C(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_100065A5C(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
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
        v7 = (v4 + 8 * (v13 & v5));
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

void sub_100065B00(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((8 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &buffer->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = buffer + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != buffer + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = (*a1 + 8 * v29);
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = (*a1 + 8 * (v34 & v18));
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v21 < 3)
      {
        goto LABEL_18;
      }

      v22 = v21 + 1;
      v10 = &buffer->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
      v23 = buffer + 1;
      v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v23[-1] = v24;
        *v23 = v24;
        v23 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_18:
        v26 = &buffer->i8[8 * v20];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v26);
      }
    }
  }
}

uint64_t sub_100065D14(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 416))(a1, a2))
  {
    return 1;
  }

  v14 = "expected valid keyword";
  v15 = 259;
  (*(*a1 + 24))(v16, a1, v4, &v14);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
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

    v6 = __p;
    if (__p)
    {
      v7 = v22;
      v8 = __p;
      if (v22 != __p)
      {
        do
        {
          v7 = sub_100052FFC(v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v22 = v6;
      operator delete(v8);
    }

    v9 = v19;
    if (v19)
    {
      v10 = v20;
      v11 = v19;
      if (v20 != v19)
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
        v11 = v19;
      }

      v20 = v9;
      operator delete(v11);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v5;
}

void sub_100065F18(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void sub_100065F50(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t ***mlir::Lexer::Lexer(uint64_t ***result, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  v4 = **a2;
  v5 = *(v4 + 8);
  v6 = (*(v4 + 16) - v5);
  result[2] = v5;
  result[3] = v6;
  result[4] = v5;
  result[5] = 0;
  if (a4)
  {
    result[5] = *(a4 + 8);
  }

  return result;
}

uint64_t mlir::Lexer::getEncodedSourceLocation(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v5, a2);
  v7 = v2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v5, LineNumber);
  v8 = *(a1 + 8);
  v10 = (*(***v4 + 16))(**v4);

  return mlir::FileLineColLoc::get(v8, v10, v9, LineNumber, v7 + 1);
}

void mlir::Lexer::emitError(mlir::Lexer *this@<X0>, const char *a2@<X1>, const llvm::Twine *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *this;
  v9 = **this;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v9, a2);
  v11 = a2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v9, LineNumber);
  v12 = *(this + 1);
  v13 = (*(***v8 + 16))(**v8);
  v15 = mlir::FileLineColLoc::get(v12, v13, v14, LineNumber, v11 + 1);
  mlir::emitError(v15, a3, v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v30;
      v18 = __p;
      if (v30 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v30 = v16;
      operator delete(v18);
    }

    v19 = v27;
    if (v27)
    {
      v20 = v28;
      v21 = v27;
      if (v28 != v27)
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
        v21 = v27;
      }

      v28 = v19;
      operator delete(v21);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  v23 = *(this + 4) - a2;
  *a4 = 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v23;
}

void mlir::Lexer::lexToken(mlir::Lexer *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 + 1;
      *(this + 4) = v2 + 1;
      v5 = *v2;
      switch(*v2)
      {
        case 0:
          if (v2 != (*(this + 2) + *(this + 3)))
          {
            goto LABEL_4;
          }

          *a2 = 0;
          goto LABEL_63;
        case 9:
        case 10:
        case 13:
        case 32:
          goto LABEL_4;
        case 33:
        case 37:
        case 94:
          goto LABEL_32;
        case 34:

          mlir::Lexer::lexString(this, v2, a2);
          return;
        case 35:
          if (*v4 == 45 && v2[2] == 125)
          {
            *(this + 4) = v2 + 3;
            v9 = 33;
            goto LABEL_54;
          }

LABEL_32:

          mlir::Lexer::lexPrefixedIdentifier(this, v2, a2);
          return;
        case 40:
          v10 = 21;
          goto LABEL_62;
        case 41:
          v10 = 28;
          goto LABEL_62;
        case 42:
          v10 = 30;
          goto LABEL_62;
        case 43:
          v10 = 25;
          goto LABEL_62;
        case 44:
          v10 = 16;
          goto LABEL_62;
        case 45:
          if (*v4 == 62)
          {
            *(this + 4) = v2 + 2;
            *a2 = 13;
            *(a2 + 8) = v2;
            *(a2 + 16) = 2;
            return;
          }

          v10 = 24;
          goto LABEL_62;
        case 46:
          if (v4 != (*(this + 2) + *(this + 3)) && *v4 == 46 && v2[2] == 46)
          {
            *(this + 4) = v2 + 3;
            v9 = 17;
            goto LABEL_54;
          }

          v16[0] = "expected three consecutive dots for an ellipsis";
          v17 = 259;
          mlir::Lexer::emitError(this, v2 + 1, v16, a2);
          return;
        case 47:
          if (*v4 != 47)
          {
            goto LABEL_69;
          }

          v6 = v2 + 2;
          break;
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:

          mlir::Lexer::lexNumber(this, v2, a2);
          return;
        case 58:
          v10 = 15;
          goto LABEL_62;
        case 60:
          v10 = 23;
          goto LABEL_62;
        case 61:
          v10 = 18;
          goto LABEL_62;
        case 62:
          v10 = 19;
          goto LABEL_62;
        case 63:
          v10 = 26;
          goto LABEL_62;
        case 64:

          mlir::Lexer::lexAtIdentifier(this, v2, a2);
          return;
        case 91:
          v10 = 22;
          goto LABEL_62;
        case 93:
          v10 = 29;
          goto LABEL_62;
        case 95:
          goto LABEL_66;
        case 123:
          if (*v4 == 45 && v2[2] == 35)
          {
            *(this + 4) = v2 + 3;
            v9 = 32;
LABEL_54:
            *a2 = v9;
            *(a2 + 8) = v2;
            *(a2 + 16) = 3;
          }

          else
          {
            v10 = 20;
LABEL_62:
            *a2 = v10;
LABEL_63:
            *(a2 + 8) = v2;
            *(a2 + 16) = 1;
          }

          return;
        case 124:
          v10 = 31;
          goto LABEL_62;
        case 125:
          v10 = 27;
          goto LABEL_62;
        default:
          if (v5 < 0)
          {
            v12 = this;
            v13 = v2;
            v14 = a2;
            v15 = __maskrune(v5, 0x100uLL);
            v2 = v13;
            a2 = v14;
            v11 = v15;
            this = v12;
          }

          else
          {
            v11 = _DefaultRuneLocale.__runetype[v5] & 0x100;
          }

          if (v11)
          {
LABEL_66:

            mlir::Lexer::lexBareIdentifierOrKeyword(this, v2, a2);
          }

          else
          {
LABEL_69:
            v16[0] = "unexpected character";
            v17 = 259;
            mlir::Lexer::emitError(this, v2, v16, a2);
          }

          return;
      }

      do
      {
        while (1)
        {
          v4 = v6++;
          *(this + 4) = v6;
          v7 = *v4;
          if (!*v4)
          {
            break;
          }

          if (v7 == 10 || v7 == 13)
          {
            ++v4;
            goto LABEL_4;
          }
        }
      }

      while (v4 != (*(this + 2) + *(this + 3)));
      *(this + 4) = v4;
LABEL_4:
      v2 = v4;
    }

    while (v4 != v3);
  }

  *a2 = 2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
}

uint64_t mlir::Lexer::lexBareIdentifierOrKeyword@<X0>(mlir::Lexer *this@<X0>, const char *__s1@<X1>, uint64_t a3@<X8>)
{
  for (i = *(this + 4); ; *(this + 4) = i)
  {
    v11 = *i;
    if (v11 < 0)
    {
      result = __maskrune(v11, 0x100uLL);
      i = *(this + 4);
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = _DefaultRuneLocale.__runetype[v11] & 0x100;
      if (result)
      {
        goto LABEL_6;
      }
    }

    v13 = *i;
    if (v13 < 0 || (_DefaultRuneLocale.__runetype[v13] & 0x400) == 0)
    {
      v7 = *i - 36;
      v8 = v7 > 0x3B;
      v9 = (1 << v7) & 0x800000000000401;
      if (v8 || v9 == 0)
      {
        break;
      }
    }

LABEL_6:
    ++i;
  }

  v14 = i - __s1;
  if ((i - __s1) < 2)
  {
    goto LABEL_22;
  }

  v15 = *__s1;
  if (v15 == 105)
  {
    v16 = __s1 + 1;
    while (*v16 - 48 < 0xA)
    {
      if (++v16 == i)
      {
LABEL_30:
        v17 = 12;
        goto LABEL_23;
      }
    }
  }

  if (v14 == 2)
  {
    result = memcmp(__s1, "to", i - __s1);
    if (result)
    {
      goto LABEL_22;
    }

    v17 = 79;
  }

  else
  {
    if (__s1[1] == 105 && (v15 == 117 || v15 == 115))
    {
      v18 = __s1 + 2;
      while (*v18 - 48 < 0xA)
      {
        if (++v18 == i)
        {
          goto LABEL_30;
        }
      }
    }

    if (v14 <= 6)
    {
      if (v14 <= 3)
      {
        if (v14 == 3)
        {
          if (*__s1 == 12646 && __s1[2] == 54)
          {
            v17 = 44;
            goto LABEL_23;
          }

          if (*__s1 == 13158 && __s1[2] == 50)
          {
            v17 = 45;
            goto LABEL_23;
          }

          if (*__s1 == 13926 && __s1[2] == 52)
          {
            v17 = 46;
            goto LABEL_23;
          }

          if (*__s1 == 14438 && __s1[2] == 48)
          {
            v17 = 47;
            goto LABEL_23;
          }

          if (*__s1 == 28518 && __s1[2] == 114)
          {
            v17 = 62;
            goto LABEL_23;
          }

          if (*__s1 == 28524 && __s1[2] == 99)
          {
            v17 = 65;
            goto LABEL_23;
          }

          if (*__s1 == 24941 && __s1[2] == 120)
          {
            v17 = 66;
            goto LABEL_23;
          }

          if (*__s1 == 26989 && __s1[2] == 110)
          {
            v17 = 68;
            goto LABEL_23;
          }

          if (*__s1 == 28525 && __s1[2] == 100)
          {
            v17 = 69;
            goto LABEL_23;
          }
        }
      }

      else if (v14 == 4)
      {
        switch(*__s1)
        {
          case 0x36316662:
            v17 = 38;
            goto LABEL_23;
          case 0x38323166:
            v17 = 59;
            goto LABEL_23;
          case 0x636E7566:
            v17 = 63;
            goto LABEL_23;
          case 0x656E6F6E:
            v17 = 70;
            goto LABEL_23;
          case 0x657A6973:
            v17 = 72;
            goto LABEL_23;
          case 0x70657473:
            v17 = 74;
            goto LABEL_23;
          case 0x32336674:
            v17 = 78;
            goto LABEL_23;
          case 0x65757274:
            v17 = 80;
            goto LABEL_23;
          case 0x65707974:
            v17 = 82;
            goto LABEL_23;
          case 0x74696E75:
            v17 = 83;
            goto LABEL_23;
        }
      }

      else if (v14 == 5)
      {
        if (*__s1 == 1634890337 && __s1[4] == 121)
        {
          v17 = 36;
          goto LABEL_23;
        }

        if (*__s1 == 1936614756 && __s1[4] == 101)
        {
          v17 = 41;
          goto LABEL_23;
        }

        if (*__s1 == 1936482662 && __s1[4] == 101)
        {
          v17 = 60;
          goto LABEL_23;
        }

        if (*__s1 == 1701080681 && __s1[4] == 120)
        {
          v17 = 64;
          goto LABEL_23;
        }

        if (*__s1 == 1819309428 && __s1[4] == 101)
        {
          v17 = 81;
          goto LABEL_23;
        }
      }

      else
      {
        if (*__s1 == 893728870 && *(__s1 + 2) == 12877)
        {
          v17 = 48;
          goto LABEL_23;
        }

        if (*__s1 == 876951654 && *(__s1 + 2) == 13133)
        {
          v17 = 49;
          goto LABEL_23;
        }

        if (*__s1 == 860174438 && *(__s1 + 2) == 13389)
        {
          v17 = 54;
          goto LABEL_23;
        }

        if (*__s1 == 1919772013 && *(__s1 + 2) == 26213)
        {
          v17 = 67;
          goto LABEL_23;
        }

        if (*__s1 == 1936090735 && *(__s1 + 2) == 29797)
        {
          v17 = 71;
          goto LABEL_23;
        }

        if (*__s1 == 1918988403 && *(__s1 + 2) == 25971)
        {
          v17 = 73;
          goto LABEL_23;
        }

        if (*__s1 == 1651341683 && *(__s1 + 2) == 27759)
        {
          v17 = 76;
          goto LABEL_23;
        }

        if (*__s1 == 1936614772 && *(__s1 + 2) == 29295)
        {
          v17 = 77;
          goto LABEL_23;
        }

        if (*__s1 == 1952671094 && *(__s1 + 2) == 29295)
        {
          v17 = 84;
          goto LABEL_23;
        }
      }
    }

    else if (v14 > 9)
    {
      switch(v14)
      {
        case 14:
          if (*__s1 == 0x65725F65736E6564 && *(__s1 + 6) == 0x656372756F736572)
          {
            v17 = 42;
            goto LABEL_23;
          }

          break;
        case 13:
          if (*__s1 == 0x3142334D34453866 && *(__s1 + 5) == 0x5A554E4631314233)
          {
            v17 = 53;
            goto LABEL_23;
          }

          break;
        case 10:
          if (*__s1 == 0x6D5F656E69666661 && *(__s1 + 4) == 28769)
          {
            v17 = 34;
            goto LABEL_23;
          }

          if (*__s1 == 0x735F656E69666661 && *(__s1 + 4) == 29797)
          {
            v17 = 35;
            goto LABEL_23;
          }

          if (*__s1 == 0x7475626972747461 && *(__s1 + 4) == 29541)
          {
            v17 = 37;
            goto LABEL_23;
          }

          if (*__s1 == 0x4E46324D35453866 && *(__s1 + 4) == 23125)
          {
            v17 = 51;
            goto LABEL_23;
          }

          if (*__s1 == 0x4E46334D34453866 && *(__s1 + 4) == 23125)
          {
            v17 = 52;
            goto LABEL_23;
          }

          break;
      }
    }

    else if (v14 == 7)
    {
      if (*__s1 == 1818846563 && *(__s1 + 3) == 1986618476)
      {
        v17 = 39;
        goto LABEL_23;
      }

      if (*__s1 == 1886220131 && *(__s1 + 3) == 2019912816)
      {
        v17 = 40;
        goto LABEL_23;
      }

      if (*__s1 == 1769108595 && *(__s1 + 3) == 1684366441)
      {
        v17 = 75;
        goto LABEL_23;
      }
    }

    else if (v14 == 8)
    {
      switch(*__s1)
      {
        case 0x74636E6974736964:
          v17 = 43;
          goto LABEL_23;
        case 0x4E46334D34453866:
          v17 = 50;
          goto LABEL_23;
        case 0x4E46314D32453466:
          v17 = 55;
          goto LABEL_23;
        case 0x4E46334D32453666:
          v17 = 56;
          goto LABEL_23;
        case 0x4E46324D33453666:
          v17 = 57;
          goto LABEL_23;
        case 0x766964726F6F6C66:
          v17 = 61;
          goto LABEL_23;
      }
    }

    else if (*__s1 == 0x4E46304D38453866 && __s1[8] == 85)
    {
      v17 = 58;
      goto LABEL_23;
    }

LABEL_22:
    v17 = 3;
  }

LABEL_23:
  *a3 = v17;
  *(a3 + 8) = __s1;
  *(a3 + 16) = v14;
  return result;
}

void mlir::Lexer::lexAtIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 4);
  *(this + 4) = v6 + 1;
  v7 = *v6;
  if (v7 != 34)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v9 = *(this + 4);
      if (v7 == 95 || (_DefaultRuneLocale.__runetype[v7] & 0x100) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

    v18 = __maskrune(*v6, 0x100uLL);
    v9 = *(this + 4);
    if (v7 != 95 && v18 == 0)
    {
LABEL_31:
      *&v20 = "@ identifier expected to start with letter or '_'";
      v22 = 259;
      mlir::Lexer::emitError(this, v9 - 1, &v20, a3);
      return;
    }

    while (1)
    {
LABEL_15:
      v15 = *v9;
      if (v15 < 0)
      {
        v16 = __maskrune(v15, 0x100uLL);
        v9 = *(this + 4);
        if (v16)
        {
          goto LABEL_14;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v15] & 0x100) != 0)
      {
        goto LABEL_14;
      }

      v17 = *v9;
      if (v17 < 0 || (_DefaultRuneLocale.__runetype[v17] & 0x400) == 0)
      {
        v11 = *v9 - 36;
        v12 = v11 > 0x3B;
        v13 = (1 << v11) & 0x800000000000401;
        if (v12 || v13 == 0)
        {
          *a3 = 4;
          v8 = v9 - a2;
LABEL_24:
          *(a3 + 8) = a2;
          goto LABEL_25;
        }
      }

LABEL_14:
      *(this + 4) = ++v9;
    }
  }

  mlir::Lexer::lexString(this, v6 + 1, &v20);
  if (v20 != 1)
  {
    v8 = *(this + 4) - a2;
    *a3 = 4;
    goto LABEL_24;
  }

  *a3 = v20;
  v8 = v21;
LABEL_25:
  *(a3 + 16) = v8;
}

void mlir::Lexer::lexPrefixedIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  if (v6 > 0x24)
  {
    if (v6 == 94)
    {
      v9 = 7;
      v8 = "invalid block name";
      v7 = 18;
      v10 = *(this + 4);
      v11 = *v10;
      if (v11 < 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v9 = 6;
      v8 = "invalid SSA name";
      v7 = 16;
      v10 = *(this + 4);
      v11 = *v10;
      if (v11 < 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v6 == 33)
    {
      v7 = 23;
    }

    else
    {
      v7 = 22;
    }

    if (v6 == 33)
    {
      v8 = "invalid type identifier";
    }

    else
    {
      v8 = "invalid attribute name";
    }

    if (v6 == 33)
    {
      v9 = 8;
    }

    else
    {
      v9 = 5;
    }

    v10 = *(this + 4);
    v11 = *v10;
    if (v11 < 0)
    {
LABEL_31:
      if (__maskrune(v11, 0x100uLL))
      {
        goto LABEL_41;
      }

      goto LABEL_32;
    }
  }

  v12 = _DefaultRuneLocale.__runetype[v11];
  if ((v12 & 0x400) != 0)
  {
    v13 = v10 + 1;
    do
    {
      if ((_DefaultRuneLocale.__runetype[v11] & 0x400) == 0)
      {
        break;
      }

      *(this + 4) = v13;
      v14 = *v13++;
      LOBYTE(v11) = v14;
    }

    while ((v14 & 0x80000000) == 0);
    v15 = (v13 - 1);
LABEL_22:
    v16 = *(this + 5);
    v17 = v16 < a2 || v16 > v15;
    if (!v17)
    {
      *a3 = 2;
      *(a3 + 8) = a2;
      *(a3 + 16) = v16 - a2;
      return;
    }

    v18 = v15 - a2;
    *a3 = v9;
    goto LABEL_28;
  }

  if ((v12 & 0x100) != 0)
  {
    goto LABEL_41;
  }

LABEL_32:
  v19 = *(this + 4);
  v20 = *v19 - 36;
  v17 = v20 > 0x3B;
  v21 = (1 << v20) & 0x800000000000601;
  if (!v17 && v21 != 0)
  {
    while (1)
    {
LABEL_41:
      while (1)
      {
        v26 = (*(this + 4) + 1);
        *(this + 4) = v26;
        v27 = *v26;
        if (v27 < 0)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[v27] & 0x100) == 0)
        {
          goto LABEL_45;
        }
      }

      if (!__maskrune(v27, 0x100uLL))
      {
LABEL_45:
        v15 = *(this + 4);
        v28 = *v15;
        if (v28 < 0 || (_DefaultRuneLocale.__runetype[v28] & 0x400) == 0)
        {
          v23 = *v15 - 36;
          v17 = v23 > 0x3B;
          v24 = (1 << v23) & 0x800000000000601;
          if (v17 || v24 == 0)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }

  if (v19 != *(this + 5))
  {
    v30 = 261;
    v29[0] = v8;
    v29[1] = v7;
    mlir::Lexer::emitError(this, v19 - 1, v29, a3);
    return;
  }

  *a3 = 2;
  v18 = v19 - a2;
LABEL_28:
  *(a3 + 8) = a2;
  *(a3 + 16) = v18;
}

void mlir::Lexer::lexString(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 == v5)
  {
LABEL_22:
    *a3 = 2;
    *(a3 + 8) = a2;
    *(a3 + 16) = v5 - a2;
    return;
  }

  while (1)
  {
    v6 = v4 + 1;
    *(this + 4) = v4 + 1;
    v7 = *v4;
    if (v7 > 0x21)
    {
      break;
    }

    if (*v4)
    {
      if (v7 - 10 < 3)
      {
LABEL_23:
        v11 = "expected '' in string literal";
        goto LABEL_24;
      }
    }

    else if (v4 == (*(this + 2) + *(this + 3)))
    {
      goto LABEL_23;
    }

LABEL_5:
    v4 = v6;
    if (v6 == v5)
    {
      goto LABEL_22;
    }
  }

  if (v7 != 92)
  {
    if (v7 == 34)
    {
      *a3 = 11;
      *(a3 + 8) = a2;
      *(a3 + 16) = v6 - a2;
      return;
    }

    goto LABEL_5;
  }

  v8 = *v6;
  if ((v8 - 92) <= 0x18 && ((1 << (v8 - 92)) & 0x1040001) != 0)
  {
    v10 = 2;
LABEL_21:
    v6 = &v4[v10];
    *(this + 4) = &v4[v10];
    goto LABEL_5;
  }

  v10 = 2;
  if (v8 == 34)
  {
    goto LABEL_21;
  }

  if (word_10028F7D8[v8] != -1 && word_10028F7D8[v4[2]] != -1)
  {
    v10 = 3;
    goto LABEL_21;
  }

  v11 = "unknown escape in string literal";
LABEL_24:
  v12 = v11;
  v13 = 259;
  mlir::Lexer::emitError(this, v4, &v12, a3);
}

uint64_t mlir::Lexer::lexNumber@<X0>(uint64_t this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 32);
  v4 = *v3;
  if (__PAIR64__(v4, *(v3 - 1)) == 0x7800000030)
  {
    v5 = v3[1];
    if (v5 < 0 || (_DefaultRuneLocale.__runetype[v5] & 0x10000) == 0)
    {
LABEL_28:
      *a3 = 10;
      *(a3 + 8) = a2;
      *(a3 + 16) = v3 - a2;
      return this;
    }

    *(this + 32) = v3 + 2;
    if ((v3[2] & 0x80000000) == 0)
    {
      v6 = v3[2];
      v7 = v3 + 3;
      do
      {
        if ((_DefaultRuneLocale.__runetype[v6] & 0x10000) == 0)
        {
          break;
        }

        *(this + 32) = v7;
        v8 = *v7++;
        v6 = v8;
      }

      while ((v8 & 0x80000000) == 0);
      v3 = v7 - 1;
      goto LABEL_28;
    }

    *a3 = 10;
    *(a3 + 8) = a2;
    *(a3 + 16) = v3 + 2 - a2;
  }

  else
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_28;
    }

    while ((_DefaultRuneLocale.__runetype[v4] & 0x400) != 0)
    {
      v9 = (v3 + 1);
      *(this + 32) = v3 + 1;
      v10 = v3[1];
      v4 = *++v3;
      if (v10 < 0)
      {
        *a3 = 10;
        *(a3 + 8) = a2;
        *(a3 + 16) = v9 - a2;
        return this;
      }
    }

    if (v4 != 46)
    {
      goto LABEL_28;
    }

    v11 = (v3 + 4);
    do
    {
      v12 = v11;
      v13 = (v11 - 3);
      *(this + 32) = v11 - 3;
      v14 = *(v11 - 3);
      if (v14 < 0)
      {
        break;
      }

      ++v11;
    }

    while ((_DefaultRuneLocale.__runetype[v14] & 0x400) != 0);
    if ((v14 | 0x20) == 0x65)
    {
      v15 = *(v12 - 2);
      if ((_DefaultRuneLocale.__runetype[v15] & 0x400) != 0 || (v15 == 43 || v15 == 45) && (_DefaultRuneLocale.__runetype[*(v12 - 1)] & 0x400) != 0)
      {
        v13 = (v12 - 1);
        *(this + 32) = v12 - 1;
        if ((*(v12 - 1) & 0x80000000) == 0)
        {
          v16 = *(v12 - 1);
          do
          {
            if ((_DefaultRuneLocale.__runetype[v16] & 0x400) == 0)
            {
              break;
            }

            *(this + 32) = v12;
            v17 = *v12++;
            v16 = v17;
          }

          while ((v17 & 0x80000000) == 0);
          v13 = (v12 - 1);
        }
      }
    }

    *a3 = 9;
    *(a3 + 8) = a2;
    *(a3 + 16) = v13 - a2;
  }

  return this;
}

BOOL mlir::detail::Parser::parseCallSiteLocation(mlir::detail::Parser *a1, uint64_t *a2)
{
  v4 = *(a1 + 1);
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v20);
  v5 = *(a1 + 1);
  *(v5 + 56) = v20;
  *(v5 + 72) = v21;
  *&v20 = "expected '(' in callsite location";
  v23 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 21, &v20) & 1) == 0)
  {
    return 0;
  }

  v19 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(a1, &v19) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 1);
  if (*(v6 + 56) == 3 && *(v6 + 72) == 2 && **(v6 + 64) == 29793)
  {
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v20);
    v16 = *(a1 + 1);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    v17[0] = 0;
    if (mlir::detail::Parser::parseLocationInstance(a1, v17))
    {
      *&v20 = "expected ')' in callsite location";
      v23 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, &v20))
      {
        *a2 = mlir::CallSiteLoc::get(v19, v17[0]);
        return 1;
      }
    }

    return 0;
  }

  v17[0] = "expected 'at' in callsite location";
  v18 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, v17, &v20);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  v8 = result;
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
    result = v8;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v28;
      v11 = __p;
      if (v28 != __p)
      {
        do
        {
          v10 = sub_100052FFC(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v28 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v25;
    if (v25)
    {
      v13 = v26;
      v14 = v25;
      if (v26 != v25)
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
        v14 = v25;
      }

      v26 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v22 != &v24)
    {
      free(v22);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseLocationInstance(mlir::UnknownLoc ****a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(v2 + 14);
  if (v3 == 3)
  {
    v11 = v2[8];
    v10 = v2[9];
    if (v10 == 5)
    {
      v24 = a1;
      v26 = memcmp(v11, "fused", 5uLL);
      a1 = v24;
      if (!v26)
      {

        return mlir::detail::Parser::parseFusedLocation(v24, a2);
      }
    }

    else if (v10 == 7)
    {
      v19 = a1;
      v21 = memcmp(v2[8], "unknown", 7uLL);
      a1 = v19;
      if (!v21)
      {
        *(v2 + 5) = *(v2 + 7);
        v2[12] = v2[9];
        mlir::Lexer::lexToken((v19[1] + 1), &v40);
        v22 = v19[1];
        *(v22 + 7) = v40;
        v22[9] = v41;
        *a2 = mlir::UnknownLoc::get(**v19[1], v23);
        return 1;
      }
    }

    else if (v10 == 8 && *v11 == 0x657469736C6C6163)
    {

      return mlir::detail::Parser::parseCallSiteLocation(a1, a2);
    }

    v37[0] = "expected location instance";
    v38 = 259;
    mlir::detail::Parser::emitWrongTokenError(a1, v37, &v40);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
    sub_100059A74(&v40);
    return v7;
  }

  if (v3 != 11)
  {
    if (v3 == 5)
    {
      v5 = a1;
      v6 = mlir::detail::Parser::parseExtendedAttr(a1, 0);
      v7 = v6;
      if (!v6)
      {
        return v7;
      }

      if (mlir::LocationAttr::classof(v6))
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      *a2 = v8;
      if (v8)
      {
        return 1;
      }

      v37[0] = "expected location attribute, but got";
      v38 = 259;
      mlir::detail::Parser::emitError(v5, v37, &v40);
      if (v40)
      {
        v27 = v39;
        mlir::DiagnosticArgument::DiagnosticArgument(v39, v7);
        v28 = v42;
        if (v43 >= v44)
        {
          if (v42 <= v39 && v42 + 24 * v43 > v39)
          {
            v36 = v39 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v28 = v42;
            v27 = v42 + v36;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v27 = v39;
            v28 = v42;
          }
        }

        v29 = &v28[24 * v43];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v43;
      }

      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
      if (v40)
      {
        mlir::InFlightDiagnostic::report(&v40);
      }

      if (v51 != 1)
      {
        return v7;
      }

      if (v50 != &v51)
      {
        free(v50);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v49;
        v33 = __p;
        if (v49 != __p)
        {
          do
          {
            v32 = sub_100052FFC(v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v49 = v31;
        operator delete(v33);
      }

      v15 = v46;
      if (!v46)
      {
LABEL_61:
        if (v42 != v45)
        {
          free(v42);
        }

        return v7;
      }

      v34 = v47;
      v17 = v46;
      if (v47 == v46)
      {
LABEL_60:
        v47 = v15;
        operator delete(v17);
        goto LABEL_61;
      }

      do
      {
        v35 = *--v34;
        *v34 = 0;
        if (v35)
        {
          operator delete[]();
        }
      }

      while (v34 != v15);
    }

    else
    {
      v37[0] = "expected location instance";
      v38 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v37, &v40);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
      if (v40)
      {
        mlir::InFlightDiagnostic::report(&v40);
      }

      if (v51 != 1)
      {
        return v7;
      }

      if (v50 != &v51)
      {
        free(v50);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v49;
        v14 = __p;
        if (v49 != __p)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v49 = v12;
        operator delete(v14);
      }

      v15 = v46;
      if (!v46)
      {
        goto LABEL_61;
      }

      v16 = v47;
      v17 = v46;
      if (v47 == v46)
      {
        goto LABEL_60;
      }

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
    }

    v17 = v46;
    goto LABEL_60;
  }

  return mlir::detail::Parser::parseNameOrFileLineColRange(a1, a2);
}

uint64_t mlir::detail::Parser::parseFusedLocation(mlir::UnknownLoc ****a1, uint64_t *a2)
{
  v4 = a1[1];
  *(v4 + 5) = *(v4 + 7);
  v4[12] = v4[9];
  mlir::Lexer::lexToken((a1[1] + 1), v14);
  v5 = a1[1];
  *(v5 + 7) = *v14;
  v5[9] = v15[0];
  v6 = a1[1];
  if (*(v6 + 14) != 23)
  {
    v9 = 0;
    goto LABEL_6;
  }

  *(v6 + 5) = *(v6 + 7);
  v6[12] = v6[9];
  mlir::Lexer::lexToken((a1[1] + 1), v14);
  v7 = a1[1];
  *(v7 + 7) = *v14;
  v7[9] = v15[0];
  v8 = mlir::detail::Parser::parseAttribute(a1, 0);
  if (v8)
  {
    v9 = v8;
    v14[0] = "expected '>' after fused location metadata";
    v16 = 259;
    if (mlir::detail::Parser::parseToken(a1, 19, v14))
    {
LABEL_6:
      v13[1] = v14;
      v14[0] = v15;
      v14[1] = 0x400000000;
      v13[0] = a1;
      if (mlir::detail::Parser::parseCommaSeparatedList(a1, 2, sub_100068A38, v13, " in fused location", 18))
      {
        *a2 = mlir::FusedLoc::get(v14[0], LODWORD(v14[1]), v9, **a1[1]);
        v10 = 1;
        v11 = v14[0];
        if (v14[0] == v15)
        {
          return v10;
        }
      }

      else
      {
        v10 = 0;
        v11 = v14[0];
        if (v14[0] == v15)
        {
          return v10;
        }
      }

      free(v11);
      return v10;
    }
  }

  return 0;
}

BOOL mlir::detail::Parser::parseNameOrFileLineColRange(mlir::detail::Parser *a1, uint64_t *a2)
{
  v4 = *(a1 + 1);
  v5 = **v4;
  mlir::Token::getStringValue((v4 + 7), &v75);
  v6 = *(a1 + 1);
  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
  v8 = *(a1 + 1);
  *(v8 + 56) = v76;
  *(v8 + 72) = v77;
  v9 = *(a1 + 1);
  v10 = (v9 + 56);
  v11 = *(v9 + 56);
  if (v11 == 21)
  {
    *(v9 + 80) = *v10;
    *(v9 + 96) = *(v9 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
    v25 = *(a1 + 1);
    *(v25 + 56) = v76;
    *(v25 + 72) = v77;
    v73[0] = 0;
    v17 = 0;
    if (mlir::detail::Parser::parseLocationInstance(a1, v73))
    {
      v79 = 260;
      *&v76 = &v75;
      v27 = mlir::StringAttr::get(v5, &v76, v26);
      *a2 = mlir::NameLoc::get(v27, v73[0]);
      *&v76 = "expected ')' after child location of NameLoc";
      v79 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, &v76))
      {
        v17 = 1;
      }
    }

    goto LABEL_52;
  }

  if (v11 != 15)
  {
    v79 = 260;
    *&v76 = &v75;
    v28 = mlir::StringAttr::get(v5, &v76, v7);
    v29 = mlir::NameLoc::get(v28);
    goto LABEL_25;
  }

  *(v9 + 80) = *v10;
  *(v9 + 96) = *(v9 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
  v12 = *(a1 + 1);
  *(v12 + 56) = v76;
  *(v12 + 72) = v77;
  v13 = *(a1 + 1);
  v15 = *(v13 + 56);
  v14 = (v13 + 56);
  if (v15 == 10)
  {
    UnsignedIntegerValue = mlir::Token::getUnsignedIntegerValue(v14);
    if ((UnsignedIntegerValue & 0x100000000) == 0)
    {
      v73[0] = "expected integer line number in FileLineColRange";
      v74 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v73, &v76);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }

      if (v86 == 1)
      {
        if (v85 != &v86)
        {
          free(v85);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v84;
          v20 = __p;
          if (v84 != __p)
          {
            do
            {
              v19 = sub_100052FFC(v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v84 = v18;
          operator delete(v20);
        }

        v21 = v81;
        if (!v81)
        {
          goto LABEL_50;
        }

        v22 = v82;
        v23 = v81;
        if (v82 == v81)
        {
LABEL_49:
          v82 = v21;
          operator delete(v23);
LABEL_50:
          if (v78 != &v80)
          {
            free(v78);
          }

          goto LABEL_52;
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
LABEL_48:
        v23 = v81;
        goto LABEL_49;
      }

      goto LABEL_52;
    }

    v35 = UnsignedIntegerValue;
    v36 = *(a1 + 1);
    *(v36 + 80) = *(v36 + 56);
    *(v36 + 96) = *(v36 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
    v38 = *(a1 + 1);
    *(v38 + 56) = v76;
    *(v38 + 72) = v77;
    v39 = *(a1 + 1);
    if (*(v39 + 56) == 15)
    {
      *(v39 + 80) = *(v39 + 56);
      *(v39 + 96) = *(v39 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
      v40 = *(a1 + 1);
      *(v40 + 56) = v76;
      *(v40 + 72) = v77;
      v41 = *(a1 + 1);
      v43 = *(v41 + 56);
      v42 = (v41 + 56);
      if (v43 != 10)
      {
        v73[0] = "expected integer column number in FileLineColRange";
        v74 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, v73, &v76);
        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
        if (v76)
        {
          mlir::InFlightDiagnostic::report(&v76);
        }

        if (v86 == 1)
        {
          sub_100052F18(&v76 + 1);
        }

        goto LABEL_52;
      }

      v44 = mlir::Token::getUnsignedIntegerValue(v42);
      if ((v44 & 0x100000000) == 0)
      {
        goto LABEL_46;
      }

      v47 = v44;
      v48 = *(a1 + 1);
      *(v48 + 80) = *(v48 + 56);
      *(v48 + 96) = *(v48 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
      v49 = *(a1 + 1);
      *(v49 + 56) = v76;
      *(v49 + 72) = v77;
      v50 = *(a1 + 1);
      v51 = *(v50 + 56);
      if (v51 != 3 && v51 != 12)
      {
        if (!mlir::Token::isKeyword((v50 + 56)))
        {
          goto LABEL_66;
        }

        v50 = *(a1 + 1);
      }

      if (*(v50 + 72) != 2 || **(v50 + 64) != 28532)
      {
LABEL_66:
        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &v75;
        }

        else
        {
          v52 = v75.__r_.__value_.__r.__words[0];
        }

        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v75.__r_.__value_.__l.__size_;
        }

        v29 = mlir::FileLineColLoc::get(v5, v52, size, v35, v47);
        goto LABEL_25;
      }

      *(v50 + 80) = *(v50 + 56);
      *(v50 + 96) = *(v50 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
      v54 = *(a1 + 1);
      *(v54 + 56) = v76;
      *(v54 + 72) = v77;
      v55 = *(a1 + 1);
      v56 = *(v55 + 56);
      if (v56 == 10)
      {
        v57 = mlir::Token::getUnsignedIntegerValue((v55 + 56));
        if ((v57 & 0x100000000) == 0)
        {
          v58 = "expected integer line number in FileLineColRange";
LABEL_85:
          v73[0] = v58;
          v74 = 259;
          mlir::detail::Parser::emitWrongTokenError(a1, v73, &v76);
          goto LABEL_47;
        }

        v59 = v57;
        v61 = *(a1 + 1);
        *(v61 + 80) = *(v61 + 56);
        *(v61 + 96) = *(v61 + 72);
        mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
        v62 = *(a1 + 1);
        *(v62 + 56) = v76;
        *(v62 + 72) = v77;
        v55 = *(a1 + 1);
        v60 = *(v55 + 56);
      }

      else
      {
        v59 = 0;
        v60 = *(v55 + 56);
      }

      if (v60 != 15)
      {
        goto LABEL_85;
      }

      *(v55 + 80) = *(v55 + 56);
      *(v55 + 96) = *(v55 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
      v63 = *(a1 + 1);
      *(v63 + 56) = v76;
      *(v63 + 72) = v77;
      v64 = *(a1 + 1);
      v66 = *(v64 + 56);
      v65 = (v64 + 56);
      if (v66 != 10)
      {
        v58 = "expected integer column number in FileLineColRange";
        goto LABEL_85;
      }

      v67 = mlir::Token::getUnsignedIntegerValue(v65);
      if ((v67 & 0x100000000) == 0)
      {
LABEL_46:
        v73[0] = "expected integer column number in FileLineColRange";
        v74 = 259;
        mlir::detail::Parser::emitError(a1, v73, &v76);
LABEL_47:
        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
        sub_100059A74(&v76);
        goto LABEL_52;
      }

      v68 = v67;
      v69 = *(a1 + 1);
      *(v69 + 80) = *(v69 + 56);
      *(v69 + 96) = *(v69 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v76);
      v70 = *(a1 + 1);
      *(v70 + 56) = v76;
      *(v70 + 72) = v77;
      v79 = 260;
      *&v76 = &v75;
      v72 = mlir::StringAttr::get(v5, &v76, v71);
      if (v56 == 10)
      {
        v29 = mlir::FileLineColRange::get(v72, v35, v47, v59, v68);
      }

      else
      {
        v29 = mlir::FileLineColRange::get(v72, v35, v47, v68);
      }
    }

    else
    {
      v79 = 260;
      *&v76 = &v75;
      v46 = mlir::StringAttr::get(v5, &v76, v37);
      v29 = mlir::FileLineColRange::get(v46, v35);
    }

LABEL_25:
    *a2 = v29;
    v17 = 1;
    goto LABEL_52;
  }

  v73[0] = "expected integer line number in FileLineColRange";
  v74 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, v73, &v76);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
  if (v76)
  {
    mlir::InFlightDiagnostic::report(&v76);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v84;
      v32 = __p;
      if (v84 != __p)
      {
        do
        {
          v31 = sub_100052FFC(v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v84 = v30;
      operator delete(v32);
    }

    v21 = v81;
    if (!v81)
    {
      goto LABEL_50;
    }

    v33 = v82;
    v23 = v81;
    if (v82 == v81)
    {
      goto LABEL_49;
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
    goto LABEL_48;
  }

LABEL_52:
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  return v17;
}

uint64_t sub_100068A38(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(v2, &v7) & 1) == 0)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = v7;
  v5 = *(v3 + 8);
  if (v5 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, (v3 + 16), v5 + 1, 8);
    LODWORD(v5) = *(v3 + 8);
  }

  *(*v3 + 8 * v5) = v4;
  ++*(v3 + 8);
  return 1;
}

uint64_t mlir::detail::Parser::parseCommaSeparatedList(mlir::detail::Parser *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 <= 4)
  {
    if (a2 <= 2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_27;
        }

LABEL_9:
        v23 = 1283;
        *&v20 = "expected '['";
        v21 = a5;
        v22 = a6;
        if (mlir::detail::Parser::parseToken(a1, 22, &v20))
        {
          v12 = *(a1 + 1);
          v13 = v12 + 56;
          if (*(v12 + 56) != 29)
          {
            goto LABEL_27;
          }

LABEL_23:
          *(v12 + 80) = *v13;
          *(v12 + 96) = *(v13 + 16);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v20);
          v14 = *(a1 + 1);
          *(v14 + 56) = v20;
          *(v14 + 72) = v21;
          return 1;
        }

        return 0;
      }

      goto LABEL_21;
    }

    if (a2 != 3)
    {
      goto LABEL_17;
    }

LABEL_25:
    v23 = 1283;
    *&v20 = "expected '<'";
    v21 = a5;
    v22 = a6;
    if ((mlir::detail::Parser::parseToken(a1, 23, &v20) & 1) == 0)
    {
      return 1;
    }

    v12 = *(a1 + 1);
    v13 = v12 + 56;
    if (*(v12 + 56) == 19)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (a2 <= 6)
  {
    if (a2 != 5)
    {
      if (*(*(a1 + 1) + 56) != 22)
      {
        return 1;
      }

      goto LABEL_9;
    }

    if (*(*(a1 + 1) + 56) != 21)
    {
      return 1;
    }

LABEL_21:
    v23 = 1283;
    *&v20 = "expected '('";
    v21 = a5;
    v22 = a6;
    if (mlir::detail::Parser::parseToken(a1, 21, &v20))
    {
      v12 = *(a1 + 1);
      v13 = v12 + 56;
      if (*(v12 + 56) != 28)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    return 0;
  }

  if (a2 == 7)
  {
    if (*(*(a1 + 1) + 56) != 23)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (a2 != 8)
  {
    goto LABEL_27;
  }

  if (*(*(a1 + 1) + 56) != 20)
  {
    return 1;
  }

LABEL_17:
  v23 = 1283;
  *&v20 = "expected '{'";
  v21 = a5;
  v22 = a6;
  if ((mlir::detail::Parser::parseToken(a1, 20, &v20) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 1);
  v13 = v12 + 56;
  if (*(v12 + 56) == 27)
  {
    goto LABEL_23;
  }

LABEL_27:
  if ((a3(a4) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    v15 = *(a1 + 1);
    if (*(v15 + 56) != 16)
    {
      break;
    }

    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v20);
    v16 = *(a1 + 1);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    if ((a3(a4) & 1) == 0)
    {
      return 0;
    }
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
LABEL_41:
        v23 = 1283;
        *&v20 = "expected '>'";
        v21 = a5;
        v22 = a6;
        v18 = a1;
        v19 = 19;
        return mlir::detail::Parser::parseToken(v18, v19, &v20);
      }

      goto LABEL_40;
    }

    if (a2)
    {
LABEL_44:
      v23 = 1283;
      *&v20 = "expected ')'";
      v21 = a5;
      v22 = a6;
      v18 = a1;
      v19 = 28;
      return mlir::detail::Parser::parseToken(v18, v19, &v20);
    }

    return 1;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (a2 != 6)
  {
    if (a2 == 7)
    {
      goto LABEL_41;
    }

LABEL_43:
    v23 = 1283;
    *&v20 = "expected '}'";
    v21 = a5;
    v22 = a6;
    v18 = a1;
    v19 = 27;
    return mlir::detail::Parser::parseToken(v18, v19, &v20);
  }

LABEL_40:
  v23 = 1283;
  *&v20 = "expected ']'";
  v21 = a5;
  v22 = a6;
  v18 = a1;
  v19 = 29;
  return mlir::detail::Parser::parseToken(v18, v19, &v20);
}

uint64_t mlir::detail::Parser::parseToken(mlir::detail::Parser *a1, int a2, const llvm::Twine *a3)
{
  v3 = *(a1 + 1);
  if (*(v3 + 56) == a2)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v15);
    v5 = *(a1 + 1);
    *(v5 + 56) = v15;
    *(v5 + 72) = v16;
    return 1;
  }

  else
  {
    mlir::detail::Parser::emitWrongTokenError(a1, a3, &v15);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v15);
    if (v15)
    {
      mlir::InFlightDiagnostic::report(&v15);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v22;
        v9 = __p;
        if (v22 != __p)
        {
          do
          {
            v8 = sub_100052FFC(v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v22 = v7;
        operator delete(v9);
      }

      v10 = v19;
      if (v19)
      {
        v11 = v20;
        v12 = v19;
        if (v20 != v19)
        {
          do
          {
            v13 = *--v11;
            *v11 = 0;
            if (v13)
            {
              operator delete[]();
            }
          }

          while (v11 != v10);
          v12 = v19;
        }

        v20 = v10;
        operator delete(v12);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v6;
}

uint64_t mlir::detail::Parser::parseCommaSeparatedListUntil(mlir::detail::Parser *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5)
{
  v6 = *(a1 + 1);
  if (*(v6 + 56) == a2)
  {
    if (a5)
    {
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v25);
      v7 = *(a1 + 1);
      *(v7 + 56) = v25;
      *(v7 + 72) = v26;
      return 1;
    }

    else
    {
      v23[0] = "expected list element";
      v24 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v23, &v25);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
      if (v25)
      {
        mlir::InFlightDiagnostic::report(&v25);
      }

      if (v35 == 1)
      {
        if (v34 != &v35)
        {
          free(v34);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v33;
          v16 = __p;
          if (v33 != __p)
          {
            do
            {
              v15 = sub_100052FFC(v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v33 = v14;
          operator delete(v16);
        }

        v17 = v30;
        if (v30)
        {
          v18 = v31;
          v19 = v30;
          if (v31 != v30)
          {
            do
            {
              v20 = *--v18;
              *v18 = 0;
              if (v20)
              {
                operator delete[]();
              }
            }

            while (v18 != v17);
            v19 = v30;
          }

          v31 = v17;
          operator delete(v19);
        }

        if (v27 != &v29)
        {
          free(v27);
        }
      }
    }
  }

  else if (a3(a4))
  {
    while (1)
    {
      v12 = *(a1 + 1);
      if (*(v12 + 56) != 16)
      {
        break;
      }

      *(v12 + 80) = *(v12 + 56);
      *(v12 + 96) = *(v12 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v25);
      v13 = *(a1 + 1);
      *(v13 + 56) = v25;
      *(v13 + 72) = v26;
      if ((a3(a4) & 1) == 0)
      {
        return 0;
      }
    }

    v24 = 1283;
    v23[0] = "expected ',' or '";
    v23[2] = mlir::Token::getTokenSpelling(a2);
    v23[3] = v21;
    *&v25 = v23;
    v26 = "'";
    v28 = 770;
    return mlir::detail::Parser::parseToken(a1, a2, &v25) & 1;
  }

  else
  {
    return 0;
  }

  return v8;
}

void mlir::detail::Parser::emitWrongTokenError(mlir::detail::Parser *this@<X0>, const llvm::Twine *a2@<X1>, void *a3@<X8>)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v7 = *(this + 1);
  v8 = *(v7 + 56) == 0;
  v9 = *(v7 + 24);
  v10 = (Loc - v8);
  v11 = Loc - v8 - v9;
  *&v28 = v9;
  *(&v28 + 1) = v11;
  last_not_of = llvm::StringRef::find_last_not_of(&v28, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v11 - (last_not_of + 1);
  if (v11 < last_not_of + 1)
  {
    v13 = 0;
  }

  v14 = v28;
  v15 = *(&v28 + 1) - v13;
  if (*(&v28 + 1) < v15)
  {
    v15 = *(&v28 + 1);
  }

  *(&v28 + 1) = v15;
  if (v15)
  {
    while (1)
    {
      v18 = (v14 + v15);
      v19 = *(v14 + v15 - 1);
      if (v19 != 10 && v19 != 13)
      {
        break;
      }

      *(&v28 + 1) = v15 - 1;
      v27 = v28;
      last_of = llvm::StringRef::find_last_of(&v27, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
      if (last_of != -1)
      {
        if (*(&v27 + 1) >= last_of)
        {
          v22 = last_of;
        }

        else
        {
          v22 = *(&v27 + 1);
        }

        *&v27 = v27 + v22;
        *(&v27 + 1) -= v22;
      }

      v23 = llvm::StringRef::find(&v27, "//", 2uLL, 0);
      v24 = *(&v28 + 1);
      if (v23 != -1)
      {
        if (*(&v28 + 1) >= (v23 - *(&v27 + 1) + *(&v28 + 1)))
        {
          v24 = v23 - *(&v27 + 1) + *(&v28 + 1);
        }

        *(&v28 + 1) = v24;
      }

      v16 = llvm::StringRef::find_last_not_of(&v28, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
      v17 = v24 - (v16 + 1);
      if (v24 < v16 + 1)
      {
        v17 = 0;
      }

      v14 = v28;
      v15 = *(&v28 + 1) - v17;
      if (*(&v28 + 1) < v15)
      {
        v15 = *(&v28 + 1);
      }

      *(&v28 + 1) = v15;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v25 = *(this + 1) + 8;
  }

  else
  {
LABEL_26:
    v25 = *(this + 1) + 8;
    v18 = v10;
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v25, v18);
  mlir::emitError(EncodedSourceLocation, a2, a3);
  if (*(*(this + 1) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a3);
  }
}

void mlir::detail::Parser::emitError(mlir::detail::Parser *this@<X0>, const llvm::Twine *a2@<X1>, void *a3@<X8>)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v7 = Loc;
  v8 = *(this + 1);
  if (!*(v8 + 56))
  {
    v7 = (Loc - 1);
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v8 + 8, v7);
  mlir::emitError(EncodedSourceLocation, a2, a3);
  if (*(*(this + 1) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a3);
  }
}

void mlir::detail::Parser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, a3, a4);
  if (*(*(a1 + 8) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a4);
  }
}

uint64_t mlir::detail::Parser::parseOptionalString(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
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
    v3 = *(a1 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v6);
  *(*(a1 + 8) + 56) = v6;
  return 1;
}

uint64_t mlir::detail::Parser::parseOptionalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v4 = 0;
  v5 = *(this + 1);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 > 59)
  {
    if (v7 == 80)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v16 = *(this + 1);
      *(v16 + 56) = v26;
      *(v16 + 72) = v27;
      v17 = *(a2 + 2);
      if (v17 > 0x40)
      {
        v4 = 1;
        **a2 = 1;
        bzero((*a2 + 8), (((v17 + 63) >> 3) - 8) & 0xFFFFFFF8);
        goto LABEL_39;
      }

      *a2 = v17 != 0;
    }

    else
    {
      v9 = 0;
      if (v7 != 60)
      {
        return v4 | (v9 << 8);
      }

      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v14 = *(this + 1);
      *(v14 + 56) = v26;
      *(v14 + 72) = v27;
      v15 = *(a2 + 2);
      if (v15 > 0x40)
      {
        **a2 = 0;
        bzero((*a2 + 8), (((v15 + 63) >> 3) - 8) & 0xFFFFFFF8);
      }

      else
      {
        *a2 = 0;
      }
    }

    goto LABEL_38;
  }

  v8 = v7 == 10 || v7 == 24;
  v9 = 0;
  if (v8)
  {
    if (v7 == 24)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v10 = *(this + 1);
      *(v10 + 56) = v26;
      *(v10 + 72) = v27;
      v5 = *(this + 1);
    }

    v24 = *(v5 + 56);
    v25 = *(v5 + 72);
    *&v26 = "expected integer value";
    v28 = 259;
    if ((mlir::detail::Parser::parseToken(this, 10, &v26) & 1) == 0)
    {
      goto LABEL_21;
    }

    v23[0] = *(&v24 + 1);
    v23[1] = v25;
    v11 = 10;
    if (v25 >= 2)
    {
      if (*(*(&v24 + 1) + 1) == 120)
      {
        v11 = 0;
      }

      else
      {
        v11 = 10;
      }
    }

    if (llvm::StringRef::getAsInteger(v23, v11, a2))
    {
      Loc = mlir::Token::getLoc(&v24);
      v21 = "integer value too large";
      v22 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v21, &v26);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v26);
      }

      if (v26)
      {
        mlir::InFlightDiagnostic::report(&v26);
      }

      if (v29 == 1)
      {
        sub_100052F18(&v26 + 1);
      }

LABEL_21:
      v4 = 0;
LABEL_39:
      v9 = 1;
      return v4 | (v9 << 8);
    }

    v18 = *(a2 + 2);
    v19 = (*a2 + 8 * ((v18 - 1) >> 6));
    if (v18 < 0x41)
    {
      v19 = a2;
    }

    if ((*v19 >> (v18 - 1)))
    {
      llvm::APInt::zext(a2, v18 + 1, &v26);
      if (*(a2 + 2) >= 0x41u && *a2)
      {
        operator delete[]();
      }

      *a2 = v26;
      *(a2 + 2) = DWORD2(v26);
    }

    if (v7 == 24)
    {
      sub_10002F7D8(a2);
    }

LABEL_38:
    v4 = 1;
    goto LABEL_39;
  }

  return v4 | (v9 << 8);
}

uint64_t mlir::detail::Parser::parseOptionalDecimalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 24 || v3 == 10)
  {
    if (v3 == 24)
    {
      *(v2 + 80) = *(v2 + 56);
      *(v2 + 96) = *(v2 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v37);
      v7 = *(this + 1);
      *(v7 + 56) = v37;
      *(v7 + 72) = v38;
      v2 = *(this + 1);
    }

    v35 = *(v2 + 56);
    v36 = *(v2 + 72);
    *&v37 = "expected integer value";
    v40 = 259;
    if (mlir::detail::Parser::parseToken(this, 10, &v37))
    {
      v34[0] = *(&v35 + 1);
      v34[1] = v36;
      if (**(&v35 + 1) == 48 && v36 >= 2)
      {
        v11 = *(*(&v35 + 1) + 1);
        v10 = *(&v35 + 1) + 1;
        v9 = v11;
        v12 = v11 + 32;
        if ((v11 - 65) < 0x1A)
        {
          v9 = v12;
        }

        if (v9 == 120)
        {
          v13 = *(a2 + 2);
          if (v13 > 0x40)
          {
            **a2 = 0;
            bzero((*a2 + 8), (((v13 + 63) >> 3) - 8) & 0xFFFFFFF8);
          }

          else
          {
            *a2 = 0;
          }

          v29 = *(this + 1);
          *(v29 + 40) = v10;
          *(v29 + 80) = *(v29 + 56);
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(this + 1) + 8), &v37);
          v30 = *(this + 1);
          *(v30 + 56) = v37;
          *(v30 + 72) = v38;
LABEL_55:
          v14 = 1;
LABEL_61:
          v15 = 1;
          return v14 | (v15 << 8);
        }
      }

      if (!llvm::StringRef::getAsInteger(v34, 0xAu, a2))
      {
        v25 = *(a2 + 2);
        v26 = *a2;
        v27 = (*a2 + 8 * ((v25 - 1) >> 6));
        if (v25 < 0x41)
        {
          v27 = a2;
        }

        if ((*v27 >> (v25 - 1)))
        {
          llvm::APInt::zext(a2, v25 + 1, &v37);
          if (*(a2 + 2) >= 0x41u && *a2)
          {
            operator delete[]();
          }

          v26 = v37;
          *a2 = v37;
          v25 = DWORD2(v37);
          *(a2 + 2) = DWORD2(v37);
        }

        if (v3 == 24)
        {
          if (v25 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(a2);
          }

          else
          {
            if (v25)
            {
              v28 = 0xFFFFFFFFFFFFFFFFLL >> -v25;
            }

            else
            {
              v28 = 0;
            }

            *a2 = v28 & ~v26;
          }

          llvm::APInt::operator++(a2);
        }

        goto LABEL_55;
      }

      Loc = mlir::Token::getLoc(&v35);
      v32 = "integer value too large";
      v33 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v32, &v37);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v37);
      }

      if (v37)
      {
        mlir::InFlightDiagnostic::report(&v37);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v45;
          v20 = __p;
          if (v45 != __p)
          {
            do
            {
              v19 = sub_100052FFC(v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v45 = v18;
          operator delete(v20);
        }

        v21 = v42;
        if (v42)
        {
          v22 = v43;
          v23 = v42;
          if (v43 != v42)
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
            v23 = v42;
          }

          v43 = v21;
          operator delete(v23);
        }

        if (v39 != &v41)
        {
          free(v39);
        }
      }
    }

    v14 = 0;
    goto LABEL_61;
  }

  v14 = 0;
  v15 = 0;
  return v14 | (v15 << 8);
}