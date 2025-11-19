uint64_t parseEntry<llvm::MutableArrayRef<std::unique_ptr<anonymous namespace::BytecodeDialect>>,std::unique_ptr<anonymous namespace::BytecodeDialect>*>(_anonymous_namespace_::EncodingReader *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = 0;
  {
    return 0;
  }

  v10 = *(a1 + 3);
  v11 = *a2;
  v12 = a2[1];
  v25[0] = a4;
  v25[1] = a5;
  v24 = v23;
  if (v12 <= v23)
  {
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v32;
        v17 = __p;
        if (v32 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v32 = v15;
        operator delete(v17);
      }

      v18 = v29;
      if (v29)
      {
        v19 = v30;
        v20 = v29;
        if (v30 != v29)
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
          v20 = v29;
        }

        v30 = v18;
        operator delete(v20);
      }

      if (v27 != &v28)
      {
        free(v27);
      }
    }
  }

  else
  {
    *a3 = v11 + 8 * v23;
    return 1;
  }

  return v13;
}

void anonymous namespace::DialectReader::emitError(_anonymous_namespace_::DialectReader *this@<X0>, void ***a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  mlir::emitError(*(*(this + 5) + 24), &v13);
  if (v13)
  {
    mlir::Diagnostic::operator<<(&v14, a2);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
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
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

uint64_t anonymous namespace::DialectReader::getDialectVersion(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = *(a1 + 32);
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
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
  if (v10 == **(a1 + 32) + 8 * *(*(a1 + 32) + 8))
  {
    return 0;
  }

  v11 = *(*v10 + 8);
  v14 = *(*(a1 + 40) + 24);
  Context = mlir::Attribute::getContext(&v14);
  {
    return 0;
  }

  else
  {
    return *(*(*v10 + 8) + 56);
  }
}

BOOL anonymous namespace::DialectReader::readAttribute(_anonymous_namespace_::DialectReader *this, mlir::Attribute *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v7 = 0;
  {
    return 0;
  }

  *a2 = v5;
  return v5 != 0;
}

BOOL anonymous namespace::DialectReader::readOptionalAttribute(_anonymous_namespace_::DialectReader *this, mlir::Attribute *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v7 = 0;
  {
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  *a2 = v5;
  return v5 != 0;
}

BOOL anonymous namespace::DialectReader::readType(_anonymous_namespace_::DialectReader *this, mlir::Type *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v7 = 0;
  {
    return 0;
  }

  *a2 = v5;
  return v5 != 0;
}

uint64_t anonymous namespace::DialectReader::readSignedVarInt(_anonymous_namespace_::EncodingReader **this, unint64_t *a2)
{
  v4 = 0;
  {
    return 0;
  }

  *a2 = -(v4 & 1) ^ (v4 >> 1);
  return 1;
}

void anonymous namespace::DialectReader::readAPIntWithKnownWidth(_anonymous_namespace_::DialectReader *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (a2 <= 8)
  {
    LOBYTE(v15) = 0;
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
      if (!a2)
      {
        LOBYTE(v6) = 0;
      }

      v7 = v6 & v15;
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (a2 <= 0x40)
  {
    v15 = 0;
    {
      v7 = (-(v15 & 1) ^ (v15 >> 1)) & (0xFFFFFFFFFFFFFFFFLL >> -a2);
LABEL_9:
      *(a3 + 8) = a2;
      *a3 = v7;
      *(a3 + 16) = 1;
      return;
    }

    goto LABEL_14;
  }

  v14 = 0;
  {
LABEL_14:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  v8 = v14;
  v15 = v17;
  v16 = 0x400000000;
  if (v14)
  {
    if (v14 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v15, 8 * v14);
    v9 = 0;
    LODWORD(v16) = v8;
    while (1)
    {
      v10 = v15;
      {
        break;
      }

      *&v10[v9] = -(*&v10[v9] & 1) ^ (*&v10[v9] >> 1);
      v9 += 8;
      if (!--v8)
      {
        goto LABEL_20;
      }
    }

    *a3 = 0;
    *(a3 + 16) = 0;
    v11 = v15;
    if (v15 != v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_20:
    llvm::APInt::APInt(&v12, a2);
    *(a3 + 8) = v13;
    *a3 = v12;
    *(a3 + 16) = 1;
    v11 = v15;
    if (v15 != v17)
    {
LABEL_23:
      free(v11);
    }
  }
}

void anonymous namespace::DialectReader::readAPFloatWithKnownSemantics(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  SizeInBits = llvm::APFloatBase::getSizeInBits(a2);
  v7 = (*(*a1 + 88))(&v10, a1, SizeInBits);
  if ((v12 & 1) == 0)
  {
    *a3 = 0;
    a3[32] = 0;
    return;
  }

  v8 = llvm::APFloatBase::PPCDoubleDouble(v7);
  if (v8 == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v13, a2);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v13, a2, &v10);
  v9 = (a3 + 8);
  if (v8 == v13.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v13);
    a3[32] = 1;
    if (v8 != v13.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_9:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v13);
    goto LABEL_10;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v9, &v13);
  a3[32] = 1;
  if (v8 == v13.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v13);
LABEL_10:
  if ((v12 & 1) != 0 && v11 >= 0x41)
  {
    if (v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }
}

uint64_t anonymous namespace::DialectReader::readString(_anonymous_namespace_::DialectReader *this, llvm::StringRef *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 5);
  v10 = 0;
  {
    return 0;
  }

  v5 = v10;
  v6 = *(v4 + 3);
  v7 = *v3;
  v8 = *(v3 + 8);

  return resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v6, v7, v8, v5, a2, "string", 6);
}

uint64_t anonymous namespace::DialectReader::readBlob(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  {
    return 0;
  }

  v4 = v7;
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

void anonymous namespace::DialectReader::readResourceHandle(_anonymous_namespace_::DialectReader *this@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(this + 3);
  v4 = *(this + 5);
  v21 = 0;
  {
    goto LABEL_27;
  }

  v5 = *(v4 + 3);
  v6 = *v3;
  v7 = *(v3 + 2);
  v23[0] = "resource handle";
  v23[1] = 15;
  v22 = v21;
  if (v21 >= v7)
  {
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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

    if (v11)
    {
      v9 = 0;
      *&v10 = &mlir::detail::TypeIDResolver<void,void>::id;
      goto LABEL_26;
    }

LABEL_27:
    v20 = 0;
    *a2 = 0;
    goto LABEL_28;
  }

  v8 = (v6 + 24 * v21);
  v9 = *v8;
  v10 = *(v8 + 1);
LABEL_26:
  *a2 = v9;
  *(a2 + 8) = v10;
  v20 = 1;
LABEL_28:
  *(a2 + 24) = v20;
}

BOOL anonymous namespace::BytecodeDialect::load(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    return 1;
  }

  Dialect = mlir::MLIRContext::getOrLoadDialect(a3, *(a1 + 24), *(a1 + 32));
  if (Dialect)
  {
    *a1 = Dialect;
    *(a1 + 8) = 1;
    v7 = Dialect;
    v8 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(Dialect);
    if (v8)
    {
      v8 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(v7);
    }

    *(a1 + 16) = v8;
    v9 = *(a1 + 48);
    if (!v9)
    {
      return 1;
    }

LABEL_9:
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a2 + 48);
      v12 = *(*(a2 + 40) + 24);
      *&v41 = *(a1 + 40);
      *(&v41 + 1) = v9;
      v42 = v41;
      v43 = v12;
      v45 = &unk_2868648C8;
      v13 = *(a2 + 24);
      v46 = *(a2 + 8);
      *v47 = v13;
      v48[0] = &v41;
      v48[1] = v11;
      (*(*v10 + 56))(v39);
      v14 = v39[0];
      v39[0] = 0;
      v15 = *(a1 + 56);
      *(a1 + 56) = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v39[0];
        v39[0] = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        v14 = *(a1 + 56);
      }

      return v14 != 0;
    }

    v39[0] = "dialect '";
    v40 = 259;
    (*(*a2 + 16))(&v45, a2, v39);
    if (v45)
    {
      v44 = 261;
      v18 = *(a1 + 32);
      *&v41 = *(a1 + 24);
      *(&v41 + 1) = v18;
      mlir::Diagnostic::operator<<(&v46, &v41);
      if (v45)
      {
        LODWORD(v41) = 3;
        *(&v41 + 1) = "' does not implement the bytecode interface, but found a version entry";
        v42 = 70;
        if (LODWORD(v47[1]) >= HIDWORD(v47[1]))
        {
          if (v47[0] > &v41 || v47[0] + 24 * LODWORD(v47[1]) <= &v41)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v19 = v47[0] + 24 * LODWORD(v47[1]);
        v20 = v41;
        *(v19 + 2) = v42;
        *v19 = v20;
        ++LODWORD(v47[1]);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
    v21 = result;
    if (v45)
    {
      mlir::InFlightDiagnostic::report(&v45);
      result = v21;
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
        result = v21;
      }

      v22 = __p;
      if (__p)
      {
        v23 = v52;
        v24 = __p;
        if (v52 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v52 = v22;
        operator delete(v24);
        result = v21;
      }

      v25 = v49;
      if (!v49)
      {
        goto LABEL_60;
      }

      v26 = v50;
      v27 = v49;
      if (v50 == v49)
      {
LABEL_59:
        v50 = v25;
        operator delete(v27);
        result = v21;
LABEL_60:
        if (v47[0] != v48)
        {
          free(v47[0]);
          return v21;
        }

        return result;
      }

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
LABEL_58:
      v27 = v49;
      goto LABEL_59;
    }

    return result;
  }

  if (mlir::MLIRContext::allowsUnregisteredDialects(a3))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v9 = *(a1 + 48);
    if (v9)
    {
      goto LABEL_9;
    }

    return 1;
  }

  v39[0] = "dialect '";
  v40 = 259;
  (*(*a2 + 16))(&v45, a2, v39);
  if (v45)
  {
    v44 = 261;
    v30 = *(a1 + 32);
    *&v41 = *(a1 + 24);
    *(&v41 + 1) = v30;
    mlir::Diagnostic::operator<<(&v46, &v41);
    if (v45)
    {
      LODWORD(v41) = 3;
      *(&v41 + 1) = "' is unknown. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR tool used.";
      v42 = 154;
      if (LODWORD(v47[1]) >= HIDWORD(v47[1]))
      {
        if (v47[0] > &v41 || v47[0] + 24 * LODWORD(v47[1]) <= &v41)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = v47[0] + 24 * LODWORD(v47[1]);
      v32 = v41;
      *(v31 + 2) = v42;
      *v31 = v32;
      ++LODWORD(v47[1]);
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
  v21 = result;
  if (v45)
  {
    mlir::InFlightDiagnostic::report(&v45);
    result = v21;
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
      result = v21;
    }

    v33 = __p;
    if (__p)
    {
      v34 = v52;
      v35 = __p;
      if (v52 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v52 = v33;
      operator delete(v35);
      result = v21;
    }

    v25 = v49;
    if (!v49)
    {
      goto LABEL_60;
    }

    v36 = v50;
    v27 = v49;
    if (v50 == v49)
    {
      goto LABEL_59;
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

    while (v36 != v25);
    goto LABEL_58;
  }

  return result;
}

uint64_t anonymous namespace::AttrTypeReader::resolveAttribute(_anonymous_namespace_::AttrTypeReader *this, unint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  if (*(this + 8) <= a2)
  {
    mlir::emitError(*(this + 17), &v65);
    if (v65)
    {
      LODWORD(v59) = 3;
      *(&v59 + 1) = "invalid ";
      *&v60 = 8;
      if (v68 >= v69)
      {
        if (v67 > &v59 || v67 + 24 * v68 <= &v59)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v67 + 24 * v68;
      v20 = v59;
      *(v19 + 2) = v60;
      *v19 = v20;
      ++v68;
      if (v65)
      {
        LOWORD(v61) = 261;
        *&v59 = "Attribute";
        *(&v59 + 1) = 9;
        mlir::Diagnostic::operator<<(&v66, &v59);
        if (v65)
        {
          LODWORD(v59) = 3;
          *(&v59 + 1) = " index: ";
          *&v60 = 8;
          if (v68 >= v69)
          {
            if (v67 > &v59 || v67 + 24 * v68 <= &v59)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v21 = v67 + 24 * v68;
          v22 = v59;
          *(v21 + 2) = v60;
          *v21 = v22;
          v23 = ++v68;
          if (v65)
          {
            LODWORD(v59) = 5;
            *(&v59 + 1) = a2;
            if (v23 >= v69)
            {
              if (v67 > &v59 || v67 + 24 * v23 <= &v59)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v24 = v67 + 24 * v68;
            v25 = v59;
            *(v24 + 2) = v60;
            *v24 = v25;
            ++v68;
            if (v65)
            {
              mlir::InFlightDiagnostic::report(&v65);
            }
          }
        }
      }
    }

    if (v76 != 1)
    {
      return 0;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v74;
      v28 = __p;
      if (v74 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v74 = v26;
      operator delete(v28);
    }

    v29 = v71;
    if (!v71)
    {
      goto LABEL_78;
    }

    v30 = v72;
    v31 = v71;
    if (v72 == v71)
    {
      goto LABEL_77;
    }

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
    goto LABEL_76;
  }

  v3 = *(this + 3) + 40 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 136);
    v5 = *(this + 17);
    v56 = *(v3 + 24);
    v57 = v56;
    v58 = v5;
    if (*(v3 + 16) != 1)
    {
      *&v59 = "Attribute";
      *(&v59 + 1) = 9;
      v51 = 0;
      v52 = 0;
      {
        v64 = 0;
        Context = mlir::Attribute::getContext(v6);
        mlir::parseAttribute(v51, v52, Context, 0, &v64, 1);
      }

      return 0;
    }

    v7 = *(this + 2);
    v8 = *(this + 18);
    *&v59 = &unk_2868648C8;
    *(&v59 + 1) = this;
    v60 = *this;
    v61 = v7;
    v62 = &v56;
    v63 = v8;
    v10 = *(v3 + 8);
    v11 = mlir::Attribute::getContext((this + 136));
    {
      return 0;
    }

    v12 = *(this + 19);
    v13 = *(v12 + 56);
    if (v13)
    {
      v14 = *(v12 + 48);
      v15 = 8 * v13;
      while (((*(**v14 + 16))(*v14, &v59, *(*(v3 + 8) + 24), *(*(v3 + 8) + 32), v3) & 1) != 0)
      {
        if (*v3)
        {
          goto LABEL_59;
        }

        v56 = *(v3 + 24);
        v57 = v56;
        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    v16 = *(v3 + 8);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (*(*v17 + 16))(v17, &v59);
      *v3 = v18;
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
      if (v65)
      {
        mlir::InFlightDiagnostic::report(&v65);
      }

      if (v76 == 1)
      {
        if (v75 != &v76)
        {
          free(v75);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v74;
          v38 = __p;
          if (v74 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v74 = v36;
          operator delete(v38);
        }

        v39 = v71;
        if (v71)
        {
          v40 = v72;
          v41 = v71;
          if (v72 != v71)
          {
            do
            {
              v43 = *--v40;
              v42 = v43;
              *v40 = 0;
              if (v43)
              {
                MEMORY[0x259C63150](v42, 0x1000C8077774924);
              }
            }

            while (v40 != v39);
            v41 = v71;
          }

          v72 = v39;
          operator delete(v41);
        }

        if (v67 != v70)
        {
          free(v67);
        }
      }

      if (!v35)
      {
        return 0;
      }
    }

LABEL_59:
    if (v57 == v56 + *(&v56 + 1))
    {
      return *v3;
    }

    v55 = 1283;
    v51 = "unexpected trailing bytes after ";
    v53 = "Attribute";
    v54 = 9;
    *&v59 = &v51;
    *&v60 = " entry";
    LOWORD(v61) = 770;
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v76 != 1)
    {
      return 0;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v74;
      v46 = __p;
      if (v74 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v74 = v44;
      operator delete(v46);
    }

    v29 = v71;
    if (!v71)
    {
LABEL_78:
      if (v67 != v70)
      {
        free(v67);
      }

      return 0;
    }

    v47 = v72;
    v31 = v71;
    if (v72 == v71)
    {
LABEL_77:
      v72 = v29;
      operator delete(v31);
      goto LABEL_78;
    }

    do
    {
      v49 = *--v47;
      v48 = v49;
      *v47 = 0;
      if (v49)
      {
        MEMORY[0x259C63150](v48, 0x1000C8077774924);
      }
    }

    while (v47 != v29);
LABEL_76:
    v31 = v71;
    goto LABEL_77;
  }

  return v4;
}

void anonymous namespace::EncodingReader::emitError<llvm::Twine>(uint64_t a1, uint64_t a2, void ***a3)
{
  v23 = *MEMORY[0x277D85DE8];
  mlir::emitError(a2, &v13);
  if (v13)
  {
    mlir::Diagnostic::operator<<(&v14, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
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
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

void anonymous namespace::EncodingReader::emitError<char const(&)[10],llvm::StringRef &,char const(&)[44]>(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  mlir::emitError(a2, &v13);
  if (v13)
  {
    mlir::Diagnostic::append<char const(&)[10],llvm::StringRef &,char const(&)[44]>(&v14, "dialect '", a3, "' does not implement the bytecode interface");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
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
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

double mlir::Diagnostic::append<char const(&)[10],llvm::StringRef &,char const(&)[44]>(uint64_t a1, char *__s, unint64_t *a3, const char *a4)
{
  v8 = strlen(__s);
  v9 = *(a1 + 16);
  LODWORD(v14) = 3;
  *(&v14 + 1) = __s;
  v15 = v8;
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    if (v9 > &v14 || v9 + 24 * v10 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = v9 + 24 * *(a1 + 24);
  v12 = v14;
  *(v11 + 16) = v15;
  *v11 = v12;
  ++*(a1 + 24);
  *&result = mlir::Diagnostic::append<llvm::StringRef &,char const(&)[44]>(a1, a3, a4).n128_u64[0];
  return result;
}

__n128 mlir::Diagnostic::append<llvm::StringRef &,char const(&)[44]>(uint64_t a1, unint64_t *a2, const char *a3)
{
  v13 = 261;
  v5 = a2[1];
  v11.n128_u64[0] = *a2;
  v11.n128_u64[1] = v5;
  mlir::Diagnostic::operator<<(a1, &v11);
  v6 = strlen(a3);
  v7 = *(a1 + 16);
  v11.n128_u32[0] = 3;
  v11.n128_u64[1] = a3;
  v12 = v6;
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v11 || v7 + 24 * v8 <= &v11)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = (v7 + 24 * *(a1 + 24));
  result = v11;
  v9[1].n128_u64[0] = v12;
  *v9 = result;
  ++*(a1 + 24);
  return result;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  mlir::emitError(a2, &v15);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(&v16, "trailing characters found after ", a3, " assembly format: ", a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
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
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
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
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
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

uint64_t mlir::Diagnostic::append<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(uint64_t a1, char *__s, void *a3, char *a4, void *a5)
{
  v10 = strlen(__s);
  v11 = *(a1 + 16);
  LODWORD(v17) = 3;
  *(&v17 + 1) = __s;
  v18 = v10;
  v12 = *(a1 + 24);
  if (v12 >= *(a1 + 28))
  {
    if (v11 > &v17 || v11 + 24 * v12 <= &v17)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v11 + 24 * *(a1 + 24);
  v14 = v17;
  *(v13 + 16) = v18;
  *v13 = v14;
  ++*(a1 + 24);
  v19 = 261;
  v15 = a3[1];
  *&v17 = *a3;
  *(&v17 + 1) = v15;
  mlir::Diagnostic::operator<<(a1, &v17);
  return mlir::Diagnostic::append<char const(&)[19],llvm::StringRef>(a1, a4, a5);
}

uint64_t mlir::Diagnostic::append<char const(&)[19],llvm::StringRef>(uint64_t a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  LODWORD(v13) = 3;
  *(&v13 + 1) = __s;
  v14 = v6;
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v13 || v7 + 24 * v8 <= &v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = v7 + 24 * *(a1 + 24);
  v10 = v13;
  *(v9 + 16) = v14;
  *v9 = v10;
  ++*(a1 + 24);
  v15 = 261;
  v11 = a3[1];
  *&v13 = *a3;
  *(&v13 + 1) = v11;
  mlir::Diagnostic::operator<<(a1, &v13);
  return a1;
}

uint64_t anonymous namespace::AttrTypeReader::resolveType(_anonymous_namespace_::AttrTypeReader *this, unint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  if (*(this + 22) <= a2)
  {
    mlir::emitError(*(this + 17), &v65);
    if (v65)
    {
      LODWORD(v59) = 3;
      *(&v59 + 1) = "invalid ";
      *&v60 = 8;
      if (v68 >= v69)
      {
        if (v67 > &v59 || v67 + 24 * v68 <= &v59)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v67 + 24 * v68;
      v20 = v59;
      *(v19 + 2) = v60;
      *v19 = v20;
      ++v68;
      if (v65)
      {
        LOWORD(v61) = 261;
        *&v59 = "Type";
        *(&v59 + 1) = 4;
        mlir::Diagnostic::operator<<(&v66, &v59);
        if (v65)
        {
          LODWORD(v59) = 3;
          *(&v59 + 1) = " index: ";
          *&v60 = 8;
          if (v68 >= v69)
          {
            if (v67 > &v59 || v67 + 24 * v68 <= &v59)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v21 = v67 + 24 * v68;
          v22 = v59;
          *(v21 + 2) = v60;
          *v21 = v22;
          v23 = ++v68;
          if (v65)
          {
            LODWORD(v59) = 5;
            *(&v59 + 1) = a2;
            if (v23 >= v69)
            {
              if (v67 > &v59 || v67 + 24 * v23 <= &v59)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v24 = v67 + 24 * v68;
            v25 = v59;
            *(v24 + 2) = v60;
            *v24 = v25;
            ++v68;
            if (v65)
            {
              mlir::InFlightDiagnostic::report(&v65);
            }
          }
        }
      }
    }

    if (v76 != 1)
    {
      return 0;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v74;
      v28 = __p;
      if (v74 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v74 = v26;
      operator delete(v28);
    }

    v29 = v71;
    if (!v71)
    {
      goto LABEL_78;
    }

    v30 = v72;
    v31 = v71;
    if (v72 == v71)
    {
      goto LABEL_77;
    }

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
    goto LABEL_76;
  }

  v3 = *(this + 10) + 40 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 136);
    v5 = *(this + 17);
    v56 = *(v3 + 24);
    v57 = v56;
    v58 = v5;
    if (*(v3 + 16) != 1)
    {
      *&v59 = "Type";
      *(&v59 + 1) = 4;
      v51 = 0;
      v52 = 0;
      {
        v64 = 0;
        Context = mlir::Attribute::getContext(v6);
        mlir::parseType(v51, v52, Context, &v64, 1);
      }

      return 0;
    }

    v7 = *(this + 2);
    v8 = *(this + 18);
    *&v59 = &unk_2868648C8;
    *(&v59 + 1) = this;
    v60 = *this;
    v61 = v7;
    v62 = &v56;
    v63 = v8;
    v10 = *(v3 + 8);
    v11 = mlir::Attribute::getContext((this + 136));
    {
      return 0;
    }

    v12 = *(this + 19);
    v13 = *(v12 + 120);
    if (v13)
    {
      v14 = *(v12 + 112);
      v15 = 8 * v13;
      while (((*(**v14 + 16))(*v14, &v59, *(*(v3 + 8) + 24), *(*(v3 + 8) + 32), v3) & 1) != 0)
      {
        if (*v3)
        {
          goto LABEL_59;
        }

        v56 = *(v3 + 24);
        v57 = v56;
        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    v16 = *(v3 + 8);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (*(*v17 + 24))(v17, &v59);
      *v3 = v18;
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
      if (v65)
      {
        mlir::InFlightDiagnostic::report(&v65);
      }

      if (v76 == 1)
      {
        if (v75 != &v76)
        {
          free(v75);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v74;
          v38 = __p;
          if (v74 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v74 = v36;
          operator delete(v38);
        }

        v39 = v71;
        if (v71)
        {
          v40 = v72;
          v41 = v71;
          if (v72 != v71)
          {
            do
            {
              v43 = *--v40;
              v42 = v43;
              *v40 = 0;
              if (v43)
              {
                MEMORY[0x259C63150](v42, 0x1000C8077774924);
              }
            }

            while (v40 != v39);
            v41 = v71;
          }

          v72 = v39;
          operator delete(v41);
        }

        if (v67 != v70)
        {
          free(v67);
        }
      }

      if (!v35)
      {
        return 0;
      }
    }

LABEL_59:
    if (v57 == v56 + *(&v56 + 1))
    {
      return *v3;
    }

    v55 = 1283;
    v51 = "unexpected trailing bytes after ";
    v53 = "Type";
    v54 = 4;
    *&v59 = &v51;
    *&v60 = " entry";
    LOWORD(v61) = 770;
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v76 != 1)
    {
      return 0;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v74;
      v46 = __p;
      if (v74 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v74 = v44;
      operator delete(v46);
    }

    v29 = v71;
    if (!v71)
    {
LABEL_78:
      if (v67 != v70)
      {
        free(v67);
      }

      return 0;
    }

    v47 = v72;
    v31 = v71;
    if (v72 == v71)
    {
LABEL_77:
      v72 = v29;
      operator delete(v31);
      goto LABEL_78;
    }

    do
    {
      v49 = *--v47;
      v48 = v49;
      *v47 = 0;
      if (v49)
      {
        MEMORY[0x259C63150](v48, 0x1000C8077774924);
      }
    }

    while (v47 != v29);
LABEL_76:
    v31 = v71;
    goto LABEL_77;
  }

  return v4;
}

uint64_t anonymous namespace::EncodingReader::parseByte<BOOL>(void *a1, BOOL *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
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

      v4 = __p;
      if (__p)
      {
        v5 = v19;
        v6 = __p;
        if (v19 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v19 = v4;
        operator delete(v6);
      }

      v7 = v16;
      if (v16)
      {
        v8 = v17;
        v9 = v16;
        if (v17 != v16)
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
          v9 = v16;
        }

        v17 = v7;
        operator delete(v9);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2 != 0;
    return 1;
  }

  return v3;
}

uint64_t anonymous namespace::EncodingReader::parseByte<mlir::AsmResourceEntryKind>(void *a1, _DWORD *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
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

      v4 = __p;
      if (__p)
      {
        v5 = v19;
        v6 = __p;
        if (v19 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v19 = v4;
        operator delete(v6);
      }

      v7 = v16;
      if (v16)
      {
        v8 = v17;
        v9 = v16;
        if (v17 != v16)
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
          v9 = v16;
        }

        v17 = v7;
        operator delete(v9);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[46],llvm::StringRef &,char const(&)[2]>(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  mlir::emitError(a2, &v13);
  if (v13)
  {
    mlir::Diagnostic::append<char const(&)[10],llvm::StringRef &,char const(&)[44]>(&v14, "unexpected trailing bytes in resource entry '", a3, "'");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
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
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

void anonymous namespace::ParsedResourceEntry::~ParsedResourceEntry(_anonymous_namespace_::ParsedResourceEntry *this)
{
  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(this);

  JUMPOUT(0x259C63180);
}

{
  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ParsedResourceEntry::getKey(_anonymous_namespace_::ParsedResourceEntry *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

uint64_t anonymous namespace::ParsedResourceEntry::getKind(_anonymous_namespace_::ParsedResourceEntry *this)
{
  return *(this + 6);
}

{
  v2 = *(this + 8);
  result = 1;
  if (v2 != 59 && v2 != 79)
  {
    if (*(this + 6) >= 3uLL)
    {
      v4 = bswap32(**(this + 5) | (*(*(this + 5) + 2) << 16));
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

uint64_t anonymous namespace::ParsedResourceEntry::parseAsBool(_anonymous_namespace_::ParsedResourceEntry *this)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(this + 6) == 1)
  {
    LOBYTE(v22) = 0;
    if (v2)
    {
      v3 = v22;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    mlir::emitError(*(*(this + 4) + 24), &v22);
    if (v22)
    {
      LODWORD(v19) = 3;
      *(&v19 + 1) = "expected a BOOL resource entry, but found a ";
      v20 = 44;
      if (v25 >= v26)
      {
        if (v24 > &v19 || v24 + 24 * v25 <= &v19)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v4 = v24 + 24 * v25;
      v5 = v19;
      *(v4 + 2) = v20;
      *v4 = v5;
      ++v25;
    }

    v6 = mlir::toString(*(this + 6));
    if (v22)
    {
      v21 = 261;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      mlir::Diagnostic::operator<<(&v23, &v19);
      if (v22)
      {
        LODWORD(v19) = 3;
        *(&v19 + 1) = " entry instead";
        v20 = 14;
        if (v25 >= v26)
        {
          if (v24 > &v19 || v24 + 24 * v25 <= &v19)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v24 + 24 * v25;
        v9 = v19;
        *(v8 + 2) = v20;
        *v8 = v9;
        ++v25;
        if (v22)
        {
          mlir::InFlightDiagnostic::report(&v22);
        }
      }
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v31;
        v12 = __p;
        if (v31 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v31 = v10;
        operator delete(v12);
      }

      v13 = v28;
      if (v28)
      {
        v14 = v29;
        v15 = v28;
        if (v29 != v28)
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
          v15 = v28;
        }

        v29 = v13;
        operator delete(v15);
      }

      if (v24 != &v27)
      {
        free(v24);
      }
    }

    v3 = 0;
    v2 = 0;
  }

  return v3 | (v2 << 8);
}

{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *(this + 8);
  if (v1 == 59)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 79)
  {
    v2 = 1;
LABEL_5:
    v3 = 1;
    return v2 | (v3 << 8);
  }

  v5 = *(this + 7);
  Loc = mlir::Token::getLoc((this + 32));
  v20 = 1283;
  v8 = *(this + 1);
  v9 = *(this + 2);
  v19[0] = "expected 'true' or 'false' value for key '";
  v19[2] = v8;
  v19[3] = v9;
  v21[0] = v19;
  v21[2] = "'";
  v22 = 770;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, Loc);
  mlir::emitError(EncodedSourceLocation, v21, v23);
  if (*(*(v5 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(v23);
  }

  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
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

  v2 = 0;
  v3 = 0;
  return v2 | (v3 << 8);
}

double anonymous namespace::ParsedResourceEntry::parseAsString@<D0>(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, uint64_t a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(this + 6) == 2)
  {
    __src = 0uLL;
    v4 = *(this + 4);
    v5 = *(this + 5);
    *&__dst = 0;
    {
      if (__src)
      {
        v7 = *(&__src + 1);
        if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (*(&__src + 1) >= 0x17uLL)
        {
          operator new();
        }

        HIBYTE(v27) = BYTE8(__src);
        if (*(&__src + 1))
        {
          memmove(&__dst, __src, *(&__src + 1));
        }

        *(&__dst + v7) = 0;
      }

      else
      {
        __dst = 0uLL;
        v27 = 0;
      }

      *&v6 = __dst;
      *a2 = __dst;
      *(a2 + 16) = v27;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }

    return *&v6;
  }

  mlir::emitError(*(*(this + 4) + 24), &__dst);
  if (__dst)
  {
    LODWORD(__src) = 3;
    *(&__src + 1) = "expected a string resource entry, but found a ";
    v24 = 46;
    if (v29 >= v30)
    {
      if (v28 > &__src || v28 + 24 * v29 <= &__src)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v28 + 24 * v29;
    v9 = __src;
    *(v8 + 2) = v24;
    *v8 = v9;
    ++v29;
  }

  v10 = mlir::toString(*(this + 6));
  if (!__dst || (v25 = 261, *&__src = v10, *(&__src + 1) = v11, mlir::Diagnostic::operator<<(&__dst + 8, &__src), !__dst))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v37 != 1)
    {
      return *&v6;
    }

    goto LABEL_21;
  }

  LODWORD(__src) = 3;
  *(&__src + 1) = " entry instead";
  v24 = 14;
  if (v29 >= v30)
  {
    if (v28 > &__src || v28 + 24 * v29 <= &__src)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = v28 + 24 * v29;
  v6 = __src;
  *(v12 + 2) = v24;
  *v12 = v6;
  ++v29;
  v13 = __dst;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&__dst);
  }

  if (v37 == 1)
  {
LABEL_21:
    if (v36 != &v37)
    {
      free(v36);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v35;
      v16 = __p;
      if (v35 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v35 = v14;
      operator delete(v16);
    }

    v17 = v32;
    if (v32)
    {
      v18 = v33;
      v19 = v32;
      if (v33 != v32)
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
        v19 = v32;
      }

      v33 = v17;
      operator delete(v19);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return *&v6;
}

void anonymous namespace::ParsedResourceEntry::parseAsBlob(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, uint64_t, void *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    mlir::emitError(*(*(a1 + 32) + 24), __dst);
    if (__dst[0])
    {
      v55.n128_u32[0] = 3;
      v55.n128_u64[1] = "expected a blob resource entry, but found a ";
      v56 = 44;
      if (v45.n128_u32[2] >= v45.n128_u32[3])
      {
        if (v45.n128_u64[0] > &v55 || v45.n128_u64[0] + 24 * v45.n128_u32[2] <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v45.n128_u64[0] + 24 * v45.n128_u32[2];
      v7 = v55;
      *(v6 + 16) = v56;
      *v6 = v7;
      ++v45.n128_u32[2];
    }

    v8 = mlir::toString(*(a1 + 24));
    if (__dst[0] && (v58 = 261, v55.n128_u64[0] = v8, v55.n128_u64[1] = v9, mlir::Diagnostic::operator<<(&__dst[1], &v55), __dst[0]))
    {
      v55.n128_u32[0] = 3;
      v55.n128_u64[1] = " entry instead";
      v56 = 14;
      if (v45.n128_u32[2] >= v45.n128_u32[3])
      {
        if (v45.n128_u64[0] > &v55 || v45.n128_u64[0] + 24 * v45.n128_u32[2] <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v45.n128_u64[0] + 24 * v45.n128_u32[2];
      v11 = v55;
      *(v10 + 16) = v56;
      *v10 = v11;
      ++v45.n128_u32[2];
      v12 = __dst[0];
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v12)
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v54 != 1)
      {
        return;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v54 != 1)
      {
        return;
      }
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v52;
      v15 = __p;
      if (v52 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v52 = v13;
      operator delete(v15);
    }

    v16 = v49;
    if (v49)
    {
      v17 = v50;
      v18 = v49;
      if (v50 != v49)
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
        v18 = v49;
      }

      v50 = v16;
      operator delete(v18);
    }

    if (v45.n128_u64[0] != &v46)
    {
      free(v45.n128_u64[0]);
    }

    return;
  }

  __src = 0;
  v40 = 0;
  *v38 = 0;
  v23 = *(a1 + 32);
  {
    *a4 = 0;
    *(a4 + 64) = 0;
    return;
  }

  v25 = *(a1 + 48);
  v26 = *v25;
  if (*v25)
  {
    v27 = __src;
    v28 = v40;
    v29 = v25[1];
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    v41.n128_u64[0] = v26;
    v41.n128_u64[1] = v29;
    off_281D6FCC0(&v55, &v41);
    (*((v57 & 0xFFFFFFFFFFFFFFF8) + 16))(&v41);
    v30 = v57;
    v42 = 0;
    __dst[0] = v27;
    __dst[1] = v28;
    v44 = v24;
    v47 = v57;
    if (v57 <= 7)
    {
      v31 = 0;
      v48 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v44;
      *(a4 + 48) = v30;
      goto LABEL_54;
    }

    if ((~v57 & 6) != 0)
    {
      v45 = v55;
      v46 = v56;
      v48 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v44;
      *(a4 + 48) = v30;
      v32 = (a4 + 48);
    }

    else
    {
      (*((v57 & 0xFFFFFFFFFFFFFFF8) + 8))(&v45, &v55);
      (*((v47 & 0xFFFFFFFFFFFFFFF8) + 16))(&v55);
      v31 = 0;
      v48 = 0;
      *a4 = *__dst;
      v30 = v47;
      *(a4 + 16) = v44;
      *(a4 + 48) = v30;
      v32 = (a4 + 48);
      if (v30 < 8)
      {
        goto LABEL_54;
      }
    }

    if ((v30 & 2) != 0 && (v30 & 4) != 0)
    {
      v35 = (*((v30 & 0xFFFFFFFFFFFFFFF8) + 8))((a4 + 24), &v45);
      (*((*v32 & 0xFFFFFFFFFFFFFFF8) + 16))(&v45, v35);
      v31 = v48;
    }

    else
    {
      v31 = 0;
      *(a4 + 24) = v45;
      *(a4 + 40) = v46;
    }

    v47 = 0;
LABEL_54:
    *(a4 + 56) = v31;
    *(a4 + 64) = 1;
    v36 = v42;
    if (v42 >= 8)
    {
      if ((v42 & 4) != 0)
      {
        if ((v42 & 2) != 0)
        {
          v37 = &v41;
        }

        else
        {
          v37 = v41.n128_u64[0];
        }

        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 16))(v37);
      }

      if ((v36 & 2) == 0)
      {
        llvm::deallocate_buffer(v41.n128_u64[0], v41.n128_u64[1]);
      }
    }

    return;
  }

  v33 = v40;
  a2(__dst, a3, v40, v24);
  memcpy(__dst[0], __src, v33);
  *a4 = *__dst;
  v34 = v47;
  *(a4 + 16) = v44;
  *(a4 + 48) = v34;
  if (v34 >= 8)
  {
    if ((v34 & 2) != 0 && (v34 & 4) != 0)
    {
      (*((v34 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + 24, &v45);
      (*((*(a4 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(&v45);
    }

    else
    {
      *(a4 + 24) = v45;
      *(a4 + 40) = v46;
    }
  }

  *(a4 + 56) = v48;
  *(a4 + 64) = 1;
}

__n128 llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::MoveImpl<anonymous namespace::ParsedResourceEntry::parseAsBlob(llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>)::{lambda(void *,unsigned long,unsigned long)#1}>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::DestroyImpl<anonymous namespace::ParsedResourceEntry::parseAsBlob(llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>)::{lambda(void *,unsigned long,unsigned long)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<anonymous namespace::ResourceSectionReader::initialize(mlir::Location,mlir::ParserConfig const&,llvm::MutableArrayRef<std::unique_ptr<anonymous namespace::BytecodeDialect>>,anonymous namespace::StringSectionReader &,llvm::ArrayRef<unsigned char>,llvm::ArrayRef<unsigned char>,anonymous namespace::DialectReader &,std::shared_ptr<llvm::SourceMgr> const&)::$_1>(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 24);
  (*(***a1 + 32))(&v35);
  if (v37)
  {
    (*(***a1 + 40))(&v41);
    v8 = llvm::StringMapImpl::hash(a2, a3, v7);
    v9 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 64), a2, a3, v8);
    v10 = *v9;
    if (*(*v9 + 31) < 0)
    {
      operator delete(*(v10 + 8));
    }

    v11 = v41;
    *(v10 + 24) = v42;
    *(v10 + 8) = v11;
    v12 = *(v6 + 8);
    v13 = *v6;
    if (v12 >= *(v6 + 12))
    {
      if (v13 > &v35 || v13 + 24 * v12 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = v13 + 24 * *(v6 + 8);
    v15 = v35;
    *(v14 + 16) = v36;
    *v14 = v15;
    ++*(v6 + 8);
    return 1;
  }

  else
  {
    mlir::emitError(*(*(a1 + 8) + 24), &v41);
    if (v41)
    {
      LODWORD(v38) = 3;
      *(&v38 + 1) = "unknown 'resource' key '";
      v39 = 24;
      if (v44 >= v45)
      {
        if (v43 > &v38 || v43 + 24 * v44 <= &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v17 = v43 + 24 * v44;
      v18 = v38;
      *(v17 + 2) = v39;
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v40 = 261;
        *&v38 = a2;
        *(&v38 + 1) = a3;
        mlir::Diagnostic::operator<<(&v41 + 8, &v38);
        if (v41)
        {
          LODWORD(v38) = 3;
          *(&v38 + 1) = "' for dialect '";
          v39 = 15;
          if (v44 >= v45)
          {
            if (v43 > &v38 || v43 + 24 * v44 <= &v38)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v43 + 24 * v44;
          v20 = v38;
          *(v19 + 2) = v39;
          *v19 = v20;
          ++v44;
          if (v41)
          {
            v21 = ***(a1 + 16);
            v40 = 261;
            v23 = *(v21 + 24);
            v22 = *(v21 + 32);
            *&v38 = v23;
            *(&v38 + 1) = v22;
            mlir::Diagnostic::operator<<(&v41 + 8, &v38);
            if (v41)
            {
              LODWORD(v38) = 3;
              *(&v38 + 1) = "'";
              v39 = 1;
              if (v44 >= v45)
              {
                if (v43 > &v38 || v43 + 24 * v44 <= &v38)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v24 = v43 + 24 * v44;
              v25 = v38;
              *(v24 + 2) = v39;
              *v24 = v25;
              ++v44;
            }
          }
        }
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
    if (v41)
    {
      mlir::InFlightDiagnostic::report(&v41);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v50;
        v28 = __p;
        if (v50 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v50 = v26;
        operator delete(v28);
      }

      v29 = v47;
      if (v47)
      {
        v30 = v48;
        v31 = v47;
        if (v48 != v47)
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
          v31 = v47;
        }

        v48 = v29;
        operator delete(v31);
      }

      if (v43 != &v46)
      {
        free(v43);
      }
    }
  }

  return v16;
}

uint64_t *llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
    v11 = buffer + 4;
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

    buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  buffer[2] = 0;
  buffer[3] = 0;
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

void std::vector<mlir::Value>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(uint64_t a1, _anonymous_namespace_::EncodingReader *this, uint64_t *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v27 = 0;
  {
    return 0;
  }

  v26 = result;
  if (result)
  {
    v7 = result;
    if (mlir::LocationAttr::classof(result))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
    if (v8)
    {
      return 1;
    }

    else
    {
      v27 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::LocationAttr]";
      v28 = 68;
      v9 = llvm::StringRef::find(&v27, "DesiredTypeName = ", 0x12uLL, 0);
      if (v28 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v28;
      }

      v11 = v27 + v10;
      v12 = v28 - v10;
      if (v28 - v10 >= 0x12)
      {
        v13 = 18;
      }

      else
      {
        v13 = v28 - v10;
      }

      v14 = v11 + v13;
      v15 = v12 - v13;
      if (v15 >= v15 - 1)
      {
        --v15;
      }

      v25[0] = v14;
      v25[1] = v15;
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
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
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
              v24 = *--v21;
              v23 = v24;
              *v21 = 0;
              if (v24)
              {
                MEMORY[0x259C63150](v23, 0x1000C8077774924);
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
    }
  }

  return result;
}

void mlir::BytecodeReader::Impl::parseUseListOrderForRange(mlir::BytecodeReader::Impl *this, _anonymous_namespace_::EncodingReader *a2, unint64_t a3)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v6 = 1;
  v28 = 1;
  if (a3 >= 2)
  {
    {
LABEL_47:
      *this = 0;
      *(this + 24) = 0;
      goto LABEL_48;
    }

    v6 = v28;
    if (!v28)
    {
      goto LABEL_55;
    }
  }

  v7 = 0;
  while (1)
  {
    v27 = 0;
    {
      goto LABEL_47;
    }

    v26 = 0;
    {
      goto LABEL_47;
    }

    v8 = v26;
    v9 = v26 >> 1;
    v26 >>= 1;
    __src = v37;
    v36 = 0x400000000;
    if (v8 < 2)
    {
      v25 = v27;
      __dst = v34;
      v33 = 0x400000000;
      goto LABEL_22;
    }

    do
    {
      __dst = 0;
      {
        *this = 0;
        *(this + 24) = 0;
        if (__src != v37)
        {
          free(__src);
          v19 = v31;
          v20 = v29;
          if (!v31)
          {
LABEL_56:
            v24 = 0;
            goto LABEL_57;
          }

LABEL_49:
          v21 = 48 * v19;
          v22 = v20 + 24;
          do
          {
            if (*(v22 - 6) <= 0xFFFFFFFD)
            {
              v23 = *(v22 - 2);
              if (v22 != v23)
              {
                free(v23);
              }
            }

            v22 += 48;
            v21 -= 48;
          }

          while (v21);
          v20 = v29;
          v24 = 48 * v31;
LABEL_57:
          llvm::deallocate_buffer(v20, v24);
        }

LABEL_48:
        v19 = v31;
        v20 = v29;
        if (!v31)
        {
          goto LABEL_56;
        }

        goto LABEL_49;
      }

      if (v36 >= HIDWORD(v36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(__src + v36) = __dst;
      v10 = v36 + 1;
      LODWORD(v36) = v36 + 1;
      --v9;
    }

    while (v9);
    v25 = v27;
    __dst = v34;
    v33 = 0x400000000;
    if (v10)
    {
      if (__src == v37)
      {
        if (v10 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(__dst, __src, 4 * v10);
        LODWORD(v33) = v10;
      }

      else
      {
        __dst = __src;
        v33 = __PAIR64__(HIDWORD(v36), v10);
        __src = v37;
        HIDWORD(v36) = 0;
      }

      LODWORD(v36) = 0;
    }

LABEL_22:
    v34[16] = v8 & 1;
    if (!v31)
    {
      v18 = 0;
      goto LABEL_34;
    }

    v11 = (37 * v25) & (v31 - 1);
    v12 = (v29 + 48 * v11);
    v13 = *v12;
    if (v25 != *v12)
    {
      v14 = 0;
      v15 = 1;
      while (v13 != -1)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v13 == -2;
        }

        if (v16)
        {
          v14 = v12;
        }

        v17 = v11 + v15++;
        v11 = v17 & (v31 - 1);
        v12 = (v29 + 48 * v11);
        v13 = *v12;
        if (v25 == *v12)
        {
          goto LABEL_35;
        }
      }

      if (v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v12;
      }

LABEL_34:
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::InsertIntoBucket<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>(&v29, v18, &v25, &__dst);
    }

LABEL_35:
    if (__dst != v34)
    {
      free(__dst);
    }

    if (__src != v37)
    {
      free(__src);
    }

    if (++v7 == v6)
    {
LABEL_55:
      *this = v29;
      *(this + 1) = v30;
      v29 = 0;
      v30 = 0;
      *(this + 4) = v31;
      v31 = 0;
      *(this + 24) = 1;
      v20 = v29;
      goto LABEL_56;
    }
  }
}

uint64_t llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 12) < a2)
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::defineValues(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v52[0] = a3;
  v52[1] = a4;
  v4 = a1[86];
  v5 = *(v4 - 32) + 4 * *(v4 - 24);
  v7 = *(v5 - 4);
  v6 = (v5 - 4);
  v42 = v7 + a4;
  v8 = (*(v4 - 48) - *(v4 - 56)) >> 3;
  if (v8 >= (v7 + a4))
  {
    if (a4)
    {
      v18 = 0;
      v19 = a4;
      do
      {
        v21 = mlir::ValueRange::dereference_iterator(v52, v18);
        v20 = *v6;
        v22 = *(v4 - 56);
        v23 = *(v22 + 8 * v20);
        *(v22 + 8 * v20) = v21;
        v53 = v23;
        if (v23)
        {
          v24 = v21;
          DefiningOp = mlir::Value::getDefiningOp(&v53);
          v26 = v53;
          while (1)
          {
            v27 = *v26;
            if (!*v26)
            {
              break;
            }

            v28 = v27[1];
            if (v28)
            {
              v29 = *v27;
              *v28 = *v27;
              if (v29)
              {
                *(v29 + 8) = v28;
              }
            }

            v27[3] = v24;
            v27[1] = v24;
            v30 = *v24;
            *v27 = *v24;
            if (v30)
            {
              *(v30 + 8) = v27;
            }

            *v24 = v27;
          }

          mlir::Operation::moveBefore(DefiningOp, (a1 + 100), a1 + 104);
          LODWORD(v20) = *v6;
        }

        ++v18;
        *v6 = v20 + 1;
      }

      while (v18 != v19);
    }

    return 1;
  }

  else
  {
    v41 = v8 - 1;
    mlir::emitError(a2, &v53);
    if (v53)
    {
      mlir::Diagnostic::append<char const(&)[81],unsigned int &,char const(&)[3],unsigned int &,char const(&)[30],unsigned long>(&v54, "value index range was outside of the expected range for the parent region, got [", v6, ", ", &v42, "), but the maximum index was ", &v41);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v43, &v53);
    if (v53)
    {
      mlir::InFlightDiagnostic::report(&v53);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v60;
        v11 = __p;
        if (v60 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v60 = v9;
        operator delete(v11);
      }

      v12 = v57;
      if (v57)
      {
        v13 = v58;
        v14 = v57;
        if (v58 != v57)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v57;
        }

        v58 = v12;
        operator delete(v14);
      }

      if (v55 != &v56)
      {
        free(v55);
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
    if (v43[0])
    {
      mlir::InFlightDiagnostic::report(v43);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v32 = v48;
      if (v48)
      {
        v33 = v49;
        v34 = v48;
        if (v49 != v48)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = v48;
        }

        v49 = v32;
        operator delete(v34);
      }

      v35 = v46;
      if (v46)
      {
        v36 = v47;
        v37 = v46;
        if (v47 != v46)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          v37 = v46;
        }

        v47 = v35;
        operator delete(v37);
      }

      if (v44 != &v45)
      {
        free(v44);
      }
    }
  }

  return v31;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  mlir::emitError(a2, &v15);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(&v16, "expected attribute of type: ", a3, ", but got: ", a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
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
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
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
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
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

uint64_t mlir::Diagnostic::append<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(uint64_t a1, char *__s, void *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = *(a1 + 16);
  LODWORD(v17) = 3;
  *(&v17 + 1) = __s;
  v18 = v10;
  v12 = *(a1 + 24);
  if (v12 >= *(a1 + 28))
  {
    if (v11 > &v17 || v11 + 24 * v12 <= &v17)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v11 + 24 * *(a1 + 24);
  v14 = v17;
  *(v13 + 16) = v18;
  *v13 = v14;
  ++*(a1 + 24);
  v19 = 261;
  v15 = a3[1];
  *&v17 = *a3;
  *(&v17 + 1) = v15;
  mlir::Diagnostic::operator<<(a1, &v17);
  return mlir::Diagnostic::append<char const(&)[12],mlir::Attribute &>(a1, a4, a5);
}

uint64_t mlir::Diagnostic::append<char const(&)[12],mlir::Attribute &>(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  LODWORD(v16) = 3;
  *(&v16 + 1) = __s;
  v17 = v6;
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v16 || v7 + 24 * v8 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = v7 + 24 * *(a1 + 24);
  v10 = v16;
  *(v9 + 16) = v17;
  *v9 = v10;
  ++*(a1 + 24);
  mlir::DiagnosticArgument::DiagnosticArgument(&v16, *a3);
  v11 = *(a1 + 24);
  v12 = *(a1 + 16);
  if (v11 >= *(a1 + 28))
  {
    if (v12 > &v16 || v12 + 24 * v11 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v12 + 24 * *(a1 + 24);
  v14 = v16;
  *(v13 + 16) = v17;
  *v13 = v14;
  ++*(a1 + 24);
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
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
        v7 = (v4 + 48 * (v13 & v5));
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::InsertIntoBucket<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v5 = a2;
  v12 = a2;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v9 = a3;
    v7 *= 2;
  }

  else
  {
    if (v7 + ~v6 - *(a1 + 3) > v7 >> 3)
    {
      *(a1 + 2) = v6 + 1;
      if (*v5 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = a3;
  }

  v10 = a1;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(v10, v9, &v12);
  a1 = v10;
  a3 = v9;
  v11 = *(v10 + 2);
  v5 = v12;
  *(a1 + 2) = v11 + 1;
  if (*v5 != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v5 = *a3;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x400000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(v5 + 8, a4);
  }

  *(v5 + 40) = *(a4 + 32);
  return v5;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 12 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 4));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 48 * v11 - 48;
    if (v12 < 0x30)
    {
      v13 = result;
LABEL_14:
      v17 = &result[12 * v11];
      do
      {
        *v13 = -1;
        v13 += 12;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x30 + 1;
    v13 = &result[12 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[12] = -1;
      v15 += 24;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::moveFromOldBuckets(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[12 * v6];
      do
      {
        *v9 = -1;
        v9 += 12;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[12 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[12] = -1;
      v11 += 24;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFD)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & (37 * v14);
          v18 = *a1 + 48 * v17;
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = *a1 + 48 * v17;
              v19 = *v18;
              if (v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        *(v18 + 8) = v18 + 24;
        *(v18 + 16) = 0x400000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v18 + 8, v4 + 1);
        }

        *(v18 + 40) = *(v4 + 40);
        ++*(a1 + 8);
        v24 = v4[1];
        if (v24 != (v4 + 3))
        {
          free(v24);
        }
      }

      v4 += 6;
    }

    while (v4 != a3);
  }
}

double mlir::Diagnostic::append<char const(&)[81],unsigned int &,char const(&)[3],unsigned int &,char const(&)[30],unsigned long>(uint64_t a1, char *__s, unsigned int *a3, char *a4, unsigned int *a5, char *a6, unint64_t *a7)
{
  v14 = strlen(__s);
  v15 = a1;
  v17 = *(a1 + 16);
  a1 += 16;
  v16 = v17;
  LODWORD(v28) = 3;
  *(&v28 + 1) = __s;
  v29 = v14;
  v18 = *(a1 + 8);
  if (v18 >= *(a1 + 12))
  {
    if (v16 > &v28 || v16 + 24 * v18 <= &v28)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v19 = v16 + 24 * *(v15 + 24);
  v20 = v28;
  *(v19 + 16) = v29;
  *v19 = v20;
  v21 = *(v15 + 28);
  v22 = *(v15 + 24) + 1;
  *(v15 + 24) = v22;
  v23 = *a3;
  LODWORD(v28) = 5;
  *(&v28 + 1) = v23;
  v24 = *(v15 + 16);
  if (v22 >= v21)
  {
    if (v24 > &v28 || v24 + 24 * v22 <= &v28)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v25 = v24 + 24 * *(v15 + 24);
  v26 = v28;
  *(v25 + 16) = v29;
  *v25 = v26;
  ++*(v15 + 24);
  return mlir::Diagnostic::append<char const(&)[3],unsigned int &,char const(&)[30],unsigned long>(v15, a4, a5, a6, a7);
}

double mlir::Diagnostic::append<char const(&)[3],unsigned int &,char const(&)[30],unsigned long>(uint64_t a1, char *__s, unsigned int *a3, char *a4, unint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v13 = *(a1 + 16);
  a1 += 16;
  v12 = v13;
  LODWORD(v24) = 3;
  *(&v24 + 1) = __s;
  v25 = v10;
  v14 = *(a1 + 8);
  if (v14 >= *(a1 + 12))
  {
    if (v12 > &v24 || v12 + 24 * v14 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = v12 + 24 * *(v11 + 24);
  v16 = v24;
  *(v15 + 16) = v25;
  *v15 = v16;
  v17 = *(v11 + 28);
  v18 = *(v11 + 24) + 1;
  *(v11 + 24) = v18;
  v19 = *a3;
  LODWORD(v24) = 5;
  *(&v24 + 1) = v19;
  v20 = *(v11 + 16);
  if (v18 >= v17)
  {
    if (v20 > &v24 || v20 + 24 * v18 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v20 + 24 * *(v11 + 24);
  v22 = v24;
  *(v21 + 16) = v25;
  *v21 = v22;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(v11, a4, a5).n128_u64[0];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
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
        v7 = (v4 + 48 * (v13 & v5));
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::InsertIntoBucket<void *,mlir::BytecodeReader::Impl::UseListOrderStorage const&>(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v13 = a2;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v10 = a3;
    v7 *= 2;
    goto LABEL_13;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
    v10 = a3;
LABEL_13:
    v11 = a1;
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(v11, v10, &v13);
    a1 = v11;
    a3 = v10;
    v12 = *(v11 + 2);
    v5 = v13;
    *(a1 + 2) = v12 + 1;
    if (*v5 == -4096)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v5 = *a3;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x400000000;
  if (v5 + 8 != a4)
  {
    v8 = *(a4 + 8);
    if (v8)
    {
      if (v8 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((v5 + 24), *a4, 4 * *(a4 + 8));
      *(v5 + 16) = v8;
    }
  }

  *(v5 + 40) = *(a4 + 32);
  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 6 * v3;
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 48 * v11 - 48;
    if (v12 < 0x30)
    {
      v13 = result;
LABEL_14:
      v17 = &result[6 * v11];
      do
      {
        *v13 = -4096;
        v13 += 6;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x30 + 1;
    v13 = &result[6 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[6] = -4096;
      v15 += 12;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[6 * v6];
      do
      {
        *v9 = -4096;
        v9 += 6;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[6 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[6] = -4096;
      v11 += 12;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & ((v14 >> 4) ^ (v14 >> 9));
          v18 = *a1 + 48 * v17;
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -4096)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -8192;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = *a1 + 48 * v17;
              v19 = *v18;
              if (v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        *(v18 + 8) = v18 + 24;
        *(v18 + 16) = 0x400000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v18 + 8, v4 + 1);
        }

        *(v18 + 40) = *(v4 + 40);
        ++*(a1 + 8);
        v24 = v4[1];
        if (v24 != v4 + 3)
        {
          free(v24);
        }
      }

      v4 += 6;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::BytecodeReader::Impl::materialize(uint64_t a1, void *a2)
{
  v4 = *(a1 + 688);
  if (v4 >= *(a1 + 696))
  {
    v5 = std::vector<mlir::BytecodeReader::Impl::ValueScope>::__emplace_back_slow_path<>((a1 + 680));
  }

  else
  {
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0;
    *v4 = 0u;
    *(v4 + 24) = v4 + 40;
    *(v4 + 36) = 4;
    v5 = v4 + 56;
  }

  *(a1 + 688) = v5;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v6 = std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__emplace_back_slow_path<mlir::BytecodeReader::Impl::RegionReadState>(&__p, a2[1] + 24);
  v7 = a2[1];
  v8 = v7[8];
  v20 = v6;
  v10 = *v7;
  v9 = v7[1];
  *(v10 + 8) = v9;
  *v9 = v10;
  --*(a1 + 40);
  if (v8 != v7 + 10)
  {
    free(v8);
  }

  v11 = v7[6];
  v7[6] = 0;
  if (v11)
  {
    MEMORY[0x259C63180](v11, 0x1070C401CF53446);
  }

  operator delete(v7);
  *a2 = -8192;
  *(a1 + 56) = vadd_s32(*(a1 + 56), 0x1FFFFFFFFLL);
  do
  {
    v12 = __p;
    if (__p == v20)
    {
      v13 = 1;
      if (!__p)
      {
        return v13;
      }

      goto LABEL_14;
    }
  }

  while (mlir::BytecodeReader::Impl::parseRegions(a1, &__p, (v20 - 128)));
  v13 = 0;
  v12 = __p;
  if (!__p)
  {
    return v13;
  }

LABEL_14:
  v15 = v20;
  v16 = v12;
  if (v20 != v12)
  {
    do
    {
      v17 = *(v15 - 11);
      if (v15 - 72 != v17)
      {
        free(v17);
      }

      v18 = *(v15 - 13);
      *(v15 - 13) = 0;
      if (v18)
      {
        MEMORY[0x259C63180](v18, 0x1070C401CF53446);
      }

      v15 -= 128;
    }

    while (v15 != v12);
    v16 = __p;
  }

  v20 = v12;
  operator delete(v16);
  return v13;
}

uint64_t mlir::BytecodeReader::Impl::Impl(uint64_t a1, mlir::MLIRContext *a2, mlir::UnknownLoc **a3, char a4, _OWORD *a5, uint64_t a6)
{
  v17[2] = *MEMORY[0x277D85DE8];
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 88) = a1 + 536;
  *(a1 + 96) = a1 + 424;
  *(a1 + 104) = a1 + 336;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x100000000;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x100000000;
  *(a1 + 224) = a2;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = a3;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 288;
  *(a1 + 280) = 0x600000000;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0x1000000000;
  *(a1 + 360) = a1 + 376;
  *(a1 + 368) = 0x100000000;
  *(a1 + 424) = a1 + 440;
  *(a1 + 432) = 0x200000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0x2000000000;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 536) = a1 + 552;
  *(a1 + 544) = 0x300000000;
  *(a1 + 600) = 0u;
  *(a1 + 616) = a1 + 632;
  *(a1 + 624) = 0x600000000;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 708) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 760) = a1 + 760;
  *(a1 + 768) = a1 + 760;
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 832) = a1 + 832;
  *(a1 + 840) = a1 + 832;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  v10 = mlir::UnknownLoc::get(*a3, a2);
  mlir::ValueRange::ValueRange(v17, 0, 0);
  v14 = mlir::NoneType::get(*a3, v11);
  mlir::TypeRange::TypeRange(v16, &v14, 1uLL);
  mlir::BlockRange::BlockRange(v15, 0, 0);
  mlir::OperationState::OperationState(a1 + 872, v10, "builtin.unrealized_conversion_cast", 34, v17[0], v17[1], v16[0], v16[1], 0, 0, v15[0], v15[1], 0, 0);
  v12 = a5[1];
  *(a1 + 1176) = *a5;
  *(a1 + 1192) = v12;
  *(a1 + 1208) = a6;
  return a1;
}

void mlir::BytecodeReader::Impl::~Impl(llvm **this)
{
  mlir::OperationState::~OperationState((this + 109));
  mlir::Block::~Block((this + 100));
  mlir::Block::~Block((this + 91));
  llvm::deallocate_buffer(this[88], (16 * *(this + 180)));
}

uint64_t std::vector<mlir::BytecodeReader::Impl::ValueScope>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x492492492492492)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  v17 = a1;
  if (v4)
  {
    if (v4 <= 0x492492492492492)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = 56 * v1;
  __p = 0;
  v14 = v5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  *(v5 + 48) = 0;
  *(v5 + 24) = v5 + 40;
  *(v5 + 36) = 4;
  v15 = 56 * v1 + 56;
  v16 = 0;
  std::vector<mlir::BytecodeReader::Impl::ValueScope>::__swap_out_circular_buffer(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 56);
    v15 -= 56;
    v10 = *(v8 - 32);
    if (v10 != (v8 - 16))
    {
      free(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 48) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void std::vector<mlir::BytecodeReader::Impl::ValueScope>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = 0;
    do
    {
      v8 = v5 + v7;
      v9 = (v6 + v7);
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = *(v5 + v7);
      v9[2] = *(v5 + v7 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v9[3] = v6 + v7 + 40;
      *(v6 + v7 + 32) = 0x400000000;
      if (*(v5 + v7 + 32))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(v6 + v7 + 24, (v8 + 24));
      }

      v7 += 56;
    }

    while (v8 + 56 != v4);
    do
    {
      v10 = *(v5 + 24);
      if ((v5 + 40) != v10)
      {
        free(v10);
      }

      v11 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v11;
        operator delete(v11);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__emplace_back_slow_path<mlir::BytecodeReader::Impl::RegionReadState>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    if (!(v7 >> 57))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v2 << 7;
  __p = 0;
  v18 = v8;
  v20 = 0;
  *v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 40) = v8 + 56;
  *(v8 + 48) = 0x600000000;
  if (*(a2 + 48))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(v8 + 40, (a2 + 40));
  }

  *(v8 + 104) = *(a2 + 104);
  *(v8 + 120) = *(a2 + 120);
  v19 = v8 + 128;
  std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  for (i = v19; v19 != v12; i = v19)
  {
    v19 = i - 128;
    v14 = *(i - 88);
    if (v14 != (i - 72))
    {
      free(v14);
    }

    v15 = *(i - 104);
    *(i - 104) = 0;
    if (v15)
    {
      MEMORY[0x259C63180](v15, 0x1070C401CF53446);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

uint64_t *std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = 0;
    do
    {
      v9 = v4 + v7;
      v10 = v6 + v7;
      v11 = *(v4 + v7);
      *(v10 + 16) = *(v4 + v7 + 16);
      *v10 = v11;
      v12 = *(v4 + v7 + 24);
      *(v4 + v7 + 24) = 0;
      *(v10 + 24) = v12;
      *(v10 + 32) = *(v4 + v7 + 32);
      *(v6 + v7 + 40) = v6 + v7 + 56;
      *(v10 + 48) = 0x600000000;
      if (*(v4 + v7 + 48))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(v6 + v7 + 40, (v9 + 40));
      }

      v8 = *(v9 + 104);
      *(v10 + 120) = *(v9 + 120);
      *(v10 + 104) = v8;
      v7 += 128;
    }

    while ((v9 + 128) != v5);
    v13 = (v4 + 56);
    do
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }

      result = *(v13 - 4);
      *(v13 - 4) = 0;
      if (result)
      {
        result = MEMORY[0x259C63180](result, 0x1070C401CF53446);
      }

      v14 = (v13 + 9);
      v13 += 16;
    }

    while (v14 != v5);
  }

  a2[1] = v6;
  v16 = *v3;
  *v3 = v6;
  v3[1] = v16;
  a2[1] = v16;
  v17 = v3[1];
  v3[1] = a2[2];
  a2[2] = v17;
  v18 = v3[2];
  v3[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

uint64_t mlir::Diagnostic::append<char const(&)[30],std::string>(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  LODWORD(v12) = 3;
  *(&v12 + 1) = __s;
  v13 = v6;
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v12 || v7 + 24 * v8 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = v7 + 24 * *(a1 + 24);
  v10 = v12;
  *(v9 + 16) = v13;
  *v9 = v10;
  ++*(a1 + 24);
  v14 = 260;
  *&v12 = a3;
  mlir::Diagnostic::operator<<(a1, &v12);
  return a1;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(anonymous namespace::BytecodeDialect *)>::callback_fn<mlir::BytecodeReader::Impl::parseDialectSection(llvm::ArrayRef<unsigned char>)::$_0>(void *a1, uint64_t a2)
{
  v14 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  if (*(*a1 + 248) <= 4uLL)
  {
    v15 = 0;
    {
      v5 = resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v3[3], *(v4 + 536), *(v4 + 544), v15, &v14, "string", 6);
      v6 = 0;
      v7 = 0;
      result = 0;
      if ((v5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  v15 = 0;
  {
    return 0;
  }

  v9 = v15;
  if ((resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v3[3], *(v4 + 536), *(v4 + 544), v15 >> 1, &v14, "string", 6) & 1) == 0)
  {
    return 0;
  }

  v6 = v9 & 1;
  v7 = 1;
LABEL_8:
  v10 = v14;
  v11 = v6 | (v7 << 8);
  v12 = *(v4 + 368);
  if (v12 >= *(v4 + 372))
  {
  }

  else
  {
    v13 = *(v4 + 360) + 48 * v12;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = a2;
    *(v13 + 24) = v10;
    *(v13 + 40) = v11;
    ++*(v4 + 368);
  }

  return 1;
}

__n128 llvm::SmallVectorTemplateBase<anonymous namespace::BytecodeOperationName,true>::growAndEmplaceBack<anonymous namespace::BytecodeDialect *&,llvm::StringRef &,std::optional<BOOL> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v10.n128_u8[0] = 0;
  v10.n128_u8[8] = 0;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  *&v12 = a4;
  WORD4(v12) = a5;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (v5 >= *(a1 + 12))
  {
    if (v6 > &v10 || v6 + 48 * v5 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v6 + 48 * *(a1 + 8);
  result = v10;
  v9 = v12;
  *(v7 + 16) = v11;
  *(v7 + 32) = v9;
  *v7 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = (*result + 4 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -1)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -2;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 4 * (v15 & v6));
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
      if (*v8 == -1)
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
    llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 4 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 4 * v6);
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
        v7 = (v4 + 4 * (v13 & v5));
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

char *llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(4 * v8, 4uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = result;
      memset(result, 255, 4 * v10);
      result = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v4;
      do
      {
        v16 = *v13;
        if (*v13 <= 0xFFFFFFFD)
        {
          v17 = *(a1 + 16) - 1;
          v18 = v17 & (37 * v16);
          v15 = &result[4 * v18];
          v19 = *v15;
          if (v16 != *v15)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v15;
              }

              v23 = v18 + v21++;
              v18 = v23 & v17;
              v15 = &result[4 * (v23 & v17)];
              v19 = *v15;
              if (v16 == *v15)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v15 = v20;
            }
          }

LABEL_16:
          *v15 = v16;
          *(a1 + 8) = ++v12;
        }

        v13 = (v13 + 4);
      }

      while (v13 != (v4 + 4 * v3));
    }

    llvm::deallocate_buffer(v4, (4 * v3));
  }

  *(a1 + 8) = 0;
  v14 = *(a1 + 16);
  if (v14)
  {

    return memset(result, 255, 4 * v14);
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v8 = a2;
  v4 = (*v2)++;
  v7 = v4;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v3 + 704, &v8, &v7, v6);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Block *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = *a1;
  while ((mlir::BytecodeReader::Impl::sortUseListOrder(v4, *v2) & 1) != 0)
  {
    if (++v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_2>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = *a1;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v4);
    if ((mlir::BytecodeReader::Impl::sortUseListOrder(v5, NextResultAtOffset) & 1) == 0)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ExternalFoldInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ExternalFoldInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::ExternalFoldInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExternalFoldInterface]";
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

void mlir::mpsx::MPSXDialect::MPSXDialect(mlir::mpsx::MPSXDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "mpsx", 4, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id);
  *v2 = &unk_2868649F0;
  mlir::mpsx::MPSXDialect::initialize(v2);
}

void sub_25659CDA4()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::mpsx::MPSXDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8);
    v10 = a3;
    v11 = v8;
    if (a3)
    {
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type &,mlir::ElementsAttr &>(a2, a5, &v12, &v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return 0;
}

void mlir::mpsx::QuantizedMatMulOp::getWeightsDequantizedType(mlir::Operation **this)
{
  v1[9] = *MEMORY[0x277D85DE8];
  v1[0] = *this;
  mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(v1, 4);
}

uint64_t mlir::mpsx::QuantizedMatMulOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = *MEMORY[0x277D85DE8];
  *&v23 = a6;
  BYTE8(v23) = 0;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = a9;
  *&v25 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v23);
    if (v24 == 1)
    {
      LOBYTE(v24) = 0;
    }

    mlir::OperationName::OperationName(&v23 + 8, "mpsx.quantized_matmul", 21, Context);
    LOBYTE(v24) = 1;
  }

  *(&v25 + 1) = a4;
  v26 = a5;
  v15 = mlir::UnknownLoc::get(this, a2);
  if (mlir::mpsx::QuantizedMatMulOpAdaptor::verify(&v23, v15))
  {
    *v27 = v23;
    *v28 = v24;
    v29 = v25;
    v30 = v26;
    v17 = mlir::DictionaryAttr::begin(v27);
    v18 = mlir::DictionaryAttr::end(v27);
    mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v17, (v18 - 16), *(*(v27[1] + 12) + 8));
    mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
  }

  v19 = mlir::Float32Type::get(this, v16);
  v20 = mlir::UnrankedTensorType::get(v19);
  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v21) = v20;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::QuantizedMatMulOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v23 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v23);
  if (v4 == mlir::DictionaryAttr::end(&v23))
  {
LABEL_6:
    v21[0] = "'mpsx.quantized_matmul' op requires attribute 'operandSegmentSizes'";
    v22 = 259;
    mlir::emitError(a2, v21, v24);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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

      v6 = __p;
      if (__p)
      {
        v7 = v30;
        v8 = __p;
        if (v30 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v30 = v6;
        operator delete(v8);
      }

      v9 = v27;
      if (!v27)
      {
        goto LABEL_50;
      }

      v10 = v28;
      v11 = v27;
      if (v28 == v27)
      {
LABEL_49:
        v28 = v9;
        operator delete(v11);
LABEL_50:
        if (v25 != &v26)
        {
          free(v25);
        }

        return v5;
      }

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
LABEL_48:
      v11 = v27;
      goto LABEL_49;
    }
  }

  else
  {
    while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 8))
    {
      mlir::NamedAttribute::getName(v4);
      v4 = (v4 + 16);
      if (v4 == mlir::DictionaryAttr::end(&v23))
      {
        goto LABEL_6;
      }
    }

    while (v4 != mlir::DictionaryAttr::end(&v23))
    {
      if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 16))
      {
        for (; v4 != mlir::DictionaryAttr::end(&v23); v4 = (v4 + 16))
        {
          if (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 24) && mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 32))
          {
            mlir::NamedAttribute::getName(v4);
          }
        }

        mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
      }

      v4 = (v4 + 16);
    }

    v21[0] = "'mpsx.quantized_matmul' op requires attribute 'output_type'";
    v22 = 259;
    mlir::emitError(a2, v21, v24);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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

      v14 = __p;
      if (__p)
      {
        v15 = v30;
        v16 = __p;
        if (v30 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v30 = v14;
        operator delete(v16);
      }

      v9 = v27;
      if (!v27)
      {
        goto LABEL_50;
      }

      v17 = v28;
      v11 = v27;
      if (v28 == v27)
      {
        goto LABEL_49;
      }

      do
      {
        v19 = *--v17;
        v18 = v19;
        *v17 = 0;
        if (v19)
        {
          MEMORY[0x259C63150](v18, 0x1000C8077774924);
        }
      }

      while (v17 != v9);
      goto LABEL_48;
    }
  }

  return v5;
}

uint64_t mlir::mpsx::anonymous namespace::isCompatibleReturnTypesDefaultImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = *(a5 + 24);
  if (!v9)
  {
    v14 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  if (v9 != a5)
  {
    v10 = (*(*v9 + 16))(v9);
    v14 = v10;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v14 = v13;
  (*(*v9 + 24))(v9, v13);
  v10 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v10 == v13)
  {
    v18 = v17;
    (*(*v10 + 24))(v10, v17);
  }

  else
  {
    v18 = (*(*v10 + 16))(v10);
  }

LABEL_10:
  {
    v11 = 1;
  }

  else
  {
    if (v14)
    {
      if (v14 == v13)
      {
        v16 = v15;
        (*(*v14 + 24))();
      }

      else
      {
        v16 = (*(*v14 + 16))();
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15)
    {
      (*(*v16 + 32))(v16);
    }

    else if (v16)
    {
      (*(*v16 + 40))();
    }
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  return v11;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v79 = *MEMORY[0x277D85DE8];
  v72 = a6;
  LOBYTE(v73) = 0;
  v74 = 0;
  v75 = a9;
  v76 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v72);
    if (v74 == 1)
    {
      v74 = 0;
    }

    mlir::OperationName::OperationName(&v73, "mpsx.sparse_dense_matmul", 24, Context);
    v74 = 1;
  }

  v77 = a4;
  v78 = a5;
  if (a5 >= 4)
  {
    v15 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mpsx::SparseDenseMatMulOpAdaptor::verify(&v72, v15))
    {
      v70[0] = v71;
      v70[1] = 0x400000000;
      __b = v77;
      v68 = 3;
      __b = mlir::ValueRange::offset_base(&__b, 3);
      v68 = 0;
      v16 = mlir::ValueRange::dereference_iterator(&__b, 0);
      if (mlir::matchConstantWithIntVector<long long>(v16, v70))
      {
        __b = v77;
        v68 = 4;
        __b = mlir::ValueRange::offset_base(&__b, 4);
        v68 = 0;
        v18 = (*(mlir::ValueRange::dereference_iterator(&__b, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        if (v19)
        {
          v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        }

        else
        {
          v18 = 0;
        }

        v65[0] = v18;
        v65[1] = v19;
        if (mlir::ShapedType::hasRank(v65))
        {
          if (mlir::ShapedType::hasRank(v65))
          {
            Shape = mlir::ShapedType::getShape(v65);
            if (!v28)
            {
LABEL_22:
              v30 = *v70[0];
              v31 = *(v70[0] + 1);
              v32 = mlir::DictionaryAttr::begin(&v72);
              v33 = mlir::DictionaryAttr::end(&v72);
              v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v32 + 16), v33, *(*(v73 + 96) + 8));
              if ((v35 & 1) != 0 && (v36 = *(v34 + 1)) != 0)
              {
                if (mlir::BoolAttr::classof(*(v34 + 1)))
                {
                  v37 = v36;
                }

                else
                {
                  v37 = 0;
                }
              }

              else
              {
                v37 = 0;
              }

              __b = v37;
              if (mlir::BoolAttr::getValue(&__b))
              {
                v30 = v31;
              }

              mlir::ShapedType::getShape(v65);
              v48 = *(mlir::ShapedType::getShape(v65) + 8 * (v47 - 2));
              mlir::ShapedType::getShape(v65);
              v50 = *(mlir::ShapedType::getShape(v65) + 8 * (v49 - 1));
              v51 = mlir::DictionaryAttr::begin(&v72);
              v52 = mlir::DictionaryAttr::end(&v72);
              v53 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v51 + 16), v52, *(*(v73 + 96) + 16));
              if ((v54 & 1) != 0 && (v55 = *(v53 + 1)) != 0)
              {
                if (mlir::BoolAttr::classof(*(v53 + 1)))
                {
                  v56 = v55;
                }

                else
                {
                  v56 = 0;
                }
              }

              else
              {
                v56 = 0;
              }

              __b = v56;
              if (!mlir::BoolAttr::getValue(&__b))
              {
                v48 = v50;
              }

              __b = v69;
              v68 = 0x400000000;
              v57 = mlir::ShapedType::getShape(v65);
              v59 = v68;
              if (&v57[v58 - 2] != v57)
              {
                v60 = 8 * v58 - 16;
                do
                {
                  if (v59 >= HIDWORD(v68))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  *(__b + v59) = *v57;
                  v59 = v68 + 1;
                  LODWORD(v68) = v68 + 1;
                  ++v57;
                  v60 -= 8;
                }

                while (v60);
              }

              __src[0] = v30;
              __src[1] = v48;
              llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&__b, __b + 8 * v59, __src, &__b);
              v61 = __b;
              v62 = v68;
              ElementTypeOrSelf = mlir::getElementTypeOrSelf(v65[0]);
              v45 = v61;
              v46 = v62;
LABEL_57:
              v63 = mlir::RankedTensorType::get(v45, v46, ElementTypeOrSelf, 0);
              v64 = *(a11 + 8);
              if (v64 >= *(a11 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(*a11 + 8 * v64) = v63;
              ++*(a11 + 8);
              if (__b != v69)
              {
                free(__b);
              }

              goto LABEL_32;
            }

            v29 = 8 * v28;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v29 -= 8;
              if (!v29)
              {
                goto LABEL_22;
              }
            }
          }

          mlir::ShapedType::getShape(v65);
          v43 = v42;
          __b = v69;
          HIDWORD(v68) = 6;
          if (v42 >= 7)
          {
            LODWORD(v68) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v42)
          {
            memset_pattern16(v69, &unk_25736EFD0, 8 * v42);
          }

          LODWORD(v68) = v43;
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v65[0]);
          v45 = v69;
          v46 = v43;
          goto LABEL_57;
        }

        v38 = mlir::getElementTypeOrSelf(v65[0]);
        if (!v38)
        {
          v38 = mlir::Float32Type::get(this, v39);
        }

        v40 = mlir::UnrankedTensorType::get(v38);
        v41 = *(a11 + 8);
        if (v41 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v41) = v40;
      }

      else
      {
        v24 = mlir::Float32Type::get(this, v17);
        v25 = mlir::UnrankedTensorType::get(v24);
        v26 = *(a11 + 8);
        if (v26 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v26) = v25;
      }

      ++*(a11 + 8);
LABEL_32:
      if (v70[0] != v71)
      {
        free(v70[0]);
      }

      return 1;
    }
  }

  v20 = mlir::Float32Type::get(this, a2);
  v21 = mlir::UnrankedTensorType::get(v20);
  v22 = *(a11 + 8);
  if (v22 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v22) = v21;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mpsx::SparseDenseMatMulOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v38 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v38); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v38))
    {
      v36[0] = "'mpsx.sparse_dense_matmul' op requires attribute 'storage_type'";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 != 1)
      {
        return v5;
      }

      if (v46 != &v47)
      {
        free(v46);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v45;
        v8 = __p;
        if (v45 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v45 = v6;
        operator delete(v8);
      }

      v9 = v42;
      if (!v42)
      {
        goto LABEL_85;
      }

      v10 = v43;
      v11 = v42;
      if (v43 == v42)
      {
        goto LABEL_84;
      }

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
LABEL_83:
      v11 = v42;
      goto LABEL_84;
    }

    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  if (i == mlir::DictionaryAttr::end(&v38))
  {
    goto LABEL_32;
  }

  v15 = 0;
  v16 = 0;
  do
  {
    if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
    {
      v16 = *(i + 1);
    }

    else if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
    {
      v15 = *(i + 1);
    }

    i = (i + 16);
  }

  while (i != mlir::DictionaryAttr::end(&v38));
  if (v16 && !mlir::BoolAttr::classof(v16))
  {
    v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'transpose_lhs' failed to satisfy constraint: BOOL attribute";
    v37 = 259;
    mlir::emitError(a2, v36, v39);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v5;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v45;
      v25 = __p;
      if (v45 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v45 = v23;
      operator delete(v25);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_85;
    }

    v26 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_84;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        MEMORY[0x259C63150](v27, 0x1000C8077774924);
      }
    }

    while (v26 != v9);
    goto LABEL_83;
  }

  if (v15 && !mlir::BoolAttr::classof(v15))
  {
    v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'transpose_rhs' failed to satisfy constraint: BOOL attribute";
    v37 = 259;
    mlir::emitError(a2, v36, v39);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v5;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v45;
      v31 = __p;
      if (v45 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v45 = v29;
      operator delete(v31);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_85;
    }

    v32 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_84;
    }

    do
    {
      v34 = *--v32;
      v33 = v34;
      *v32 = 0;
      if (v34)
      {
        MEMORY[0x259C63150](v33, 0x1000C8077774924);
      }
    }

    while (v32 != v9);
    goto LABEL_83;
  }

LABEL_32:
  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
  {
    return 1;
  }

  v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'storage_type' failed to satisfy constraint: valid SparseTensorStorage";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v9 = v42;
    if (v42)
    {
      v20 = v43;
      v11 = v42;
      if (v43 != v42)
      {
        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v9);
        goto LABEL_83;
      }

LABEL_84:
      v43 = v9;
      operator delete(v11);
    }

LABEL_85:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::anonymous namespace::defaultInferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, mlir::Float32Type *this)
{
  if (this)
  {
    v4 = this;
  }

  else
  {
    v4 = mlir::Float32Type::get(a1, a2);
  }

  v5 = mlir::UnrankedTensorType::get(v4);
  v6 = *(a2 + 2);
  if (v6 >= *(a2 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a2 + 8 * v6) = v5;
  ++*(a2 + 2);
  return 1;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::verify(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v27 = mlir::getElementTypeOrSelf((*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (ElementTypeOrSelf == v27)
  {
    v29[0] = &v30;
    v29[1] = 0x600000000;
    if (mlir::matchConstantWithIntVector<long long>(*(*(*this + 9) + 120), v29))
    {
      v2 = *(*this + 9);
      v3 = v2[3];
      v4 = v2[7];
      v5 = v2[11];
      StorageType = mlir::mpsx::SparseDenseMatMulOp::getStorageType(this);
      v7 = *v29[0];
      v8 = *(v29[0] + 1);
      v20[0] = this;
      v9 = mlir::mps::verifySparseTensorHelper(v3, v4, v5, StorageType, v7, v8, llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::Twine const&)>::callback_fn<mlir::mpsx::SparseDenseMatMulOp::verify(void)::$_0>, v20) & 1;
    }

    else
    {
      v9 = 1;
    }

    v18 = v29[0];
    if (v29[0] != &v30)
    {
LABEL_22:
      free(v18);
    }
  }

  else
  {
    v20[0] = "failed: expected same element type between the sparse and the dense matrix, but got {0} and {1}";
    v20[1] = 95;
    v20[2] = v24;
    v20[3] = 2;
    v21 = 1;
    v22[0] = &unk_28685E4F0;
    v22[1] = &ElementTypeOrSelf;
    v23[0] = &unk_28685E4F0;
    v23[1] = &v27;
    v24[0] = v22;
    v24[1] = v23;
    v26 = 263;
    v25 = v20;
    mlir::OpState::emitOpError(this, &v25, v29);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v36;
        v12 = __p;
        if (v36 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v36 = v10;
        operator delete(v12);
      }

      v13 = v33;
      if (v33)
      {
        v14 = v34;
        v15 = v33;
        if (v34 != v33)
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
          v15 = v33;
        }

        v34 = v13;
        operator delete(v15);
      }

      v18 = v31;
      if (v31 != &v32)
      {
        goto LABEL_22;
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::getStorageType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::mps::SparseTensorStorageAttr::getValue(&AttrDictionary);
}

BOOL mlir::mpsx::getAxis(uint64_t a1, char a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = 0;
  v24 = a4;
  v25 = &v26;
  v22 = a3;
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v25, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v26, v27);
  v22 = SingleInt;
  v23 = v11;
  result = 1;
  if (v11)
  {
    if ((*a5 = SingleInt, *(a5 + 8) = 1, SingleInt < 0) && (SingleInt += a4, *a5 = SingleInt, SingleInt < 0) || SingleInt >= a4)
    {
      if (a2)
      {
        mlir::emitError(a1, &v26);
        if (v26)
        {
          mlir::Diagnostic::append<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(&v27, "invalid axis tensor: [", &v22, "], axis must be in range -rank <= axis < rank,", " rank = ", &v24);
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
        v13 = result;
        if (v26)
        {
          mlir::InFlightDiagnostic::report(&v26);
          result = v13;
        }

        if (v35 == 1)
        {
          if (v34 != &v35)
          {
            free(v34);
            result = v13;
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
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v33 = v14;
            operator delete(v16);
            result = v13;
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
                v21 = *--v18;
                v20 = v21;
                *v18 = 0;
                if (v21)
                {
                  MEMORY[0x259C63150](v20, 0x1000C8077774924);
                }
              }

              while (v18 != v17);
              v19 = v30;
            }

            v31 = v17;
            operator delete(v19);
            result = v13;
          }

          if (v28 != &v29)
          {
            free(v28);
            return v13;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedGatherOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66[2] = *MEMORY[0x277D85DE8];
  v66[0] = a4;
  v66[1] = a5;
  v59 = a6;
  LOBYTE(v60) = 0;
  v61 = 0;
  v62 = a9;
  v63 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(&v60, "mpsx.quantized_gather", 21, Context);
    v61 = 1;
  }

  v64 = a4;
  v65 = a5;
  if (a5 < 4 || (v17 = mlir::UnknownLoc::get(this, a2), !mlir::mpsx::QuantizedGatherOpAdaptor::verify(&v59, v17)))
  {
    v20 = mlir::Float32Type::get(this, a2);
    v21 = mlir::UnrankedTensorType::get(v20);
    v22 = *(a11 + 8);
    if (v22 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v22) = v21;
    goto LABEL_11;
  }

  v18 = (*(mlir::ValueRange::dereference_iterator(v66, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v18 = 0;
  }

  v55[0] = v18;
  v55[1] = v19;
  v24 = (*(mlir::ValueRange::dereference_iterator(v66, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8))
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
    v53 = v24;
    v54 = v25;
    if (!v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v24 = 0;
    v53 = 0;
    v54 = 0;
    if (!v18)
    {
LABEL_20:
      v31 = mlir::ValueRange::dereference_iterator(v66, 0);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v31);
      if (!ElementTypeOrSelf)
      {
        ElementTypeOrSelf = mlir::Float32Type::get(this, v33);
      }

      v34 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v35 = *(a11 + 8);
      if (v35 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v35) = v34;
LABEL_11:
      ++*(a11 + 8);
      return 1;
    }
  }

  if (!v24)
  {
    goto LABEL_20;
  }

  v26 = mlir::DictionaryAttr::begin(&v59);
  v27 = mlir::DictionaryAttr::end(&v59);
  v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v26 + 16), (v27 - 16), *(*(v60 + 96) + 16));
  if (v29)
  {
    v30 = *(v28 + 1);
  }

  else
  {
    v30 = 0;
  }

  v52 = v30;
  Value = mlir::TypeAttr::getValue(&v52);
  v37 = mlir::getElementTypeOrSelf(Value);
  v38 = mlir::UnrankedTensorType::get(v37);
  if (!mlir::ShapedType::hasRank(v55) || !mlir::ShapedType::hasRank(&v53))
  {
    goto LABEL_34;
  }

  mlir::ShapedType::getShape(v55);
  v40 = v39;
  LOBYTE(v50) = 0;
  v51 = 0;
  v41 = mlir::ValueRange::dereference_iterator(v66, 2);
  if (mlir::mpsx::getAxis(a2, a3, v41, v40, &v50))
  {
    if (v51 != 1)
    {
      goto LABEL_34;
    }

    BatchDims = mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase::getBatchDims(&v59);
    v56 = v58;
    v57 = 0x400000000;
    Shape = mlir::ShapedType::getShape(v55);
    v45 = v44;
    v46 = mlir::ShapedType::getShape(&v53);
    if (v48)
    {
      v38 = mlir::RankedTensorType::get(v56, v57, v37, 0);
    }

    if (v56 != v58)
    {
      free(v56);
    }

    if (v48)
    {
LABEL_34:
      v49 = *(a11 + 8);
      if (v49 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v49) = v38;
      goto LABEL_11;
    }
  }

  return 0;
}

BOOL mlir::mpsx::QuantizedGatherOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v29 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v29);
  if (v4 != mlir::DictionaryAttr::end(&v29))
  {
    while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 8))
    {
      mlir::NamedAttribute::getName(v4);
      v4 = (v4 + 16);
      if (v4 == mlir::DictionaryAttr::end(&v29))
      {
        goto LABEL_6;
      }
    }

    while (v4 != mlir::DictionaryAttr::end(&v29))
    {
      if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 16))
      {
        while (v4 != mlir::DictionaryAttr::end(&v29))
        {
          if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 24))
          {
            mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
          }

          v4 = (v4 + 16);
        }

        v27[0] = "'mpsx.quantized_gather' op requires attribute 'operandSegmentSizes'";
        v28 = 259;
        mlir::emitError(a2, v27, v30);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
        if (v30[0])
        {
          mlir::InFlightDiagnostic::report(v30);
        }

        if (v38 != 1)
        {
          return v5;
        }

        if (v37 != &v38)
        {
          free(v37);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v36;
          v22 = __p;
          if (v36 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v36 = v20;
          operator delete(v22);
        }

        v9 = v33;
        if (!v33)
        {
          goto LABEL_63;
        }

        v23 = v34;
        v11 = v33;
        if (v34 == v33)
        {
          goto LABEL_62;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v9);
        goto LABEL_61;
      }

      v4 = (v4 + 16);
    }

    v27[0] = "'mpsx.quantized_gather' op requires attribute 'dtype'";
    v28 = 259;
    mlir::emitError(a2, v27, v30);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 != 1)
    {
      return v5;
    }

    if (v37 != &v38)
    {
      free(v37);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v9 = v33;
    if (!v33)
    {
      goto LABEL_63;
    }

    v17 = v34;
    v11 = v33;
    if (v34 == v33)
    {
      goto LABEL_62;
    }

    do
    {
      v19 = *--v17;
      v18 = v19;
      *v17 = 0;
      if (v19)
      {
        MEMORY[0x259C63150](v18, 0x1000C8077774924);
      }
    }

    while (v17 != v9);
    goto LABEL_61;
  }

LABEL_6:
  v27[0] = "'mpsx.quantized_gather' op requires attribute 'batch_dims'";
  v28 = 259;
  mlir::emitError(a2, v27, v30);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
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

    v6 = __p;
    if (__p)
    {
      v7 = v36;
      v8 = __p;
      if (v36 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v36 = v6;
      operator delete(v8);
    }

    v9 = v33;
    if (!v33)
    {
      goto LABEL_63;
    }

    v10 = v34;
    v11 = v33;
    if (v34 == v33)
    {
LABEL_62:
      v34 = v9;
      operator delete(v11);
LABEL_63:
      if (v31 != &v32)
      {
        free(v31);
      }

      return v5;
    }

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
LABEL_61:
    v11 = v33;
    goto LABEL_62;
  }

  return v5;
}

uint64_t *mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase::getBatchDims(mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v2, (v3 - 32), *(*(*(this + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &v9);
  if (v10 <= 0x40)
  {
    return v9;
  }

  v7 = *v9;
  MEMORY[0x259C63150]();
  return v7;
}

uint64_t mlir::mpsx::anonymous namespace::inferQuantizedGatherShape(uint64_t a1, char a2, uint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v104 = *MEMORY[0x277D85DE8];
  v93 = a7;
  v92 = a8;
  v9 = a8;
  v10 = a4 - a8;
  if (a4 <= a8 || a6 < a8)
  {
    if (a2)
    {
      mlir::emitError(a1, &v94);
      if (v94)
      {
        mlir::Diagnostic::append<char const(&)[27],unsigned int &,char const(&)[47]>(v95, "invalid batch dimensions: ", &v92, ", must be less than ranks of all input tensors");
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
      if (v94)
      {
        mlir::InFlightDiagnostic::report(&v94);
      }

      if (v103 == 1)
      {
        if (v102 != &v103)
        {
          free(v102);
        }

        v13 = v100;
        if (v100)
        {
          v14 = v101;
          v15 = v100;
          if (v101 != v100)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = v100;
          }

          v101 = v13;
          operator delete(v15);
        }

        v16 = v98;
        if (!v98)
        {
          goto LABEL_77;
        }

        v17 = v99;
        v18 = v98;
        if (v99 == v98)
        {
LABEL_76:
          v99 = v16;
          operator delete(v18);
LABEL_77:
          if (v96 != &v97)
          {
            free(v96);
          }

          return v12;
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
LABEL_75:
        v18 = v98;
        goto LABEL_76;
      }

      return v12;
    }

    return 0;
  }

  v21 = a7 - a8;
  if (a7 >= a8)
  {
    v28 = a6 - a8;
    v93 = a7 - a8;
    v29 = v10 - 1;
    if ((v10 - 1 + v28) < 0)
    {
      if (a2)
      {
        mlir::emitError(a1, &v94);
        if (v94)
        {
          mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(v95, "Rank of destination array must be greater than or equal ", "to 0");
        }

        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
        if (v94)
        {
          mlir::InFlightDiagnostic::report(&v94);
        }

        if (v103 == 1)
        {
          if (v102 != &v103)
          {
            free(v102);
          }

          v43 = v100;
          if (v100)
          {
            v44 = v101;
            v45 = v100;
            if (v101 != v100)
            {
              do
              {
                v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
              }

              while (v44 != v43);
              v45 = v100;
            }

            v101 = v43;
            operator delete(v45);
          }

          v16 = v98;
          if (!v98)
          {
            goto LABEL_77;
          }

          v46 = v99;
          v18 = v98;
          if (v99 == v98)
          {
            goto LABEL_76;
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

          while (v46 != v16);
          goto LABEL_75;
        }

        return v12;
      }

      return 0;
    }

    v32 = v29 + a6;
    v33 = *(a9 + 8);
    if (v29 + a6 != v33)
    {
      if (v29 + a6 >= v33)
      {
        v90 = a7;
        v91 = a4;
        v89 = a8;
        if (v32 > *(a9 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v32 != v33)
        {
          v34 = a6;
          bzero((*a9 + 8 * v33), 8 * (v32 - v33));
          a7 = v90;
          a4 = v91;
          a6 = v34;
          a8 = v89;
        }
      }

      *(a9 + 8) = v32;
      v33 = v32;
    }

    v35 = &a3[a4];
    v36 = *a9;
    v37 = *a9 + 8 * v33;
    v38 = v21 - v29;
    if (v21 != v29)
    {
      v39 = 8 * a4 - 16;
      v40 = v39 - 8 * a7;
      if (v40 < 0x58)
      {
        v41 = &a3[a4];
        v42 = &v36[v33];
LABEL_83:
        v56 = v42 - 1;
        do
        {
          v57 = *(v41 - 1);
          v41 -= 8;
          *v56-- = v57;
        }

        while (v41 != &v35[8 * v38]);
        goto LABEL_85;
      }

      v49 = &v36[v33];
      v41 = &a3[a4];
      v42 = v49;
      if ((v35 - v49) < 0x20)
      {
        goto LABEL_83;
      }

      v50 = (v40 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v41 = &v35[-v51];
      v42 = (v37 - v51);
      v52 = (a3 + v39);
      v53 = v49 - 2;
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v55 = *v52;
        *(v53 - 1) = *(v52 - 1);
        *v53 = v55;
        v52 -= 2;
        v53 -= 4;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_83;
      }
    }

LABEL_85:
    if (a6 != v9)
    {
      v58 = &a5[a6];
      v59 = v37 + 8 * v38;
      v60 = 8 * a6 - 8 * v9 - 8;
      if (v60 >= 0x98)
      {
        v62 = v33 + a7;
        v61 = &a5[a6];
        if (v58 + 8 * a4 - &v36[v62] - 8 >= 0x20)
        {
          v63 = (v60 >> 3) + 1;
          v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
          v61 = &v58[v64 / 0xFFFFFFFFFFFFFFF8];
          v59 -= v64;
          v65 = &a5[a6 - 2];
          v66 = (v36 + v62 * 8 - 8 * a4 - 8);
          v67 = v63 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v68 = *v65;
            *(v66 - 1) = *(v65 - 1);
            *v66 = v68;
            v65 -= 4;
            v66 -= 2;
            v67 -= 4;
          }

          while (v67);
          if (v63 == (v63 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v61 = &a5[a6];
      }

      v69 = &v58[-v28];
      v70 = (v59 - 8);
      do
      {
        v71 = *--v61;
        *v70-- = v71;
      }

      while (v61 != v69);
    }

LABEL_94:
    if (a7 != v9)
    {
      v72 = v21 - (v10 + v28);
      v73 = v37 + 8 * v72 + 8;
      v74 = &v35[8 * (v21 - v10)];
      v75 = 8 * a7 - 8 * v9 - 8;
      if (v75 < 0x88)
      {
        goto LABEL_100;
      }

      if ((&a3[a6 + a4] - &v36[v33 + v9] - 8) < 0x20)
      {
        goto LABEL_100;
      }

      v76 = (v75 >> 3) + 1;
      v77 = 8 * (v76 & 0x3FFFFFFFFFFFFFFCLL);
      v74 -= v77;
      v73 -= v77;
      v78 = &a3[a7 - 2];
      v79 = &v36[v33 - 1 + v72];
      v80 = v76 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v81 = *v78;
        *(v79 - 1) = *(v78 - 1);
        *v79 = v81;
        v78 -= 2;
        v79 -= 4;
        v80 -= 4;
      }

      while (v80);
      if (v76 != (v76 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_100:
        v82 = &v35[-8 * v10];
        v83 = (v73 - 8);
        do
        {
          v84 = *(v74 - 1);
          v74 -= 8;
          *v83-- = v84;
        }

        while (v74 != v82);
      }
    }

    if (a8)
    {
      v85 = 8 * v9;
      do
      {
        v86 = *a5++;
        v94 = v86;
        v87 = *a3++;
        v95[0] = v87;
        *v36++ = mlir::mps::mergeDynamicDims(&v94, 2);
        v85 -= 8;
      }

      while (v85);
    }

    return 1;
  }

  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v94);
  if (v94)
  {
    mlir::Diagnostic::append<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(v95, "Axis must be greater than or equal to ", "batch dimensions, ", &v93, " < ", &v92);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
  if (v94)
  {
    mlir::InFlightDiagnostic::report(&v94);
  }

  if (v103 == 1)
  {
    if (v102 != &v103)
    {
      free(v102);
    }

    v22 = v100;
    if (v100)
    {
      v23 = v101;
      v24 = v100;
      if (v101 != v100)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = v100;
      }

      v101 = v22;
      operator delete(v24);
    }

    v16 = v98;
    if (!v98)
    {
      goto LABEL_77;
    }

    v25 = v99;
    v18 = v98;
    if (v99 == v98)
    {
      goto LABEL_76;
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

    while (v25 != v16);
    goto LABEL_75;
  }

  return v12;
}

uint64_t *mlir::mpsx::QuantizedGatherOp::getBatchDims(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  mlir::IntegerAttr::getValue(&v12, &AttrDictionary);
  if (v11 <= 0x40)
  {
    return AttrDictionary;
  }

  v8 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v8;
}

BOOL mlir::mpsx::QuantizedGatherOp::verify(void)::$_0::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8))
  {
    v49 = 0;
    v50 = 0;
    return 1;
  }

  v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  v49 = v6;
  v50 = v7;
  if (!v6 || !mlir::ShapedType::hasRank(&v49))
  {
    return 1;
  }

  if (mlir::ShapedType::hasRank(&v49))
  {
    mlir::ShapedType::getShape(&v49);
    v9 = v8;
    mlir::ShapedType::getShape(*a1);
    if (v9 != v10)
    {
      v48 = 257;
      mlir::OpState::emitOpError(v5, v47, &v53);
      if (v53)
      {
        mlir::Diagnostic::operator<<(v54, a2);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v53, " rank doesn't match the rank of updates");
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
      if (v53)
      {
        v45 = result;
        mlir::InFlightDiagnostic::report(&v53);
        result = v45;
      }

      if (v62 == 1)
      {
        v46 = result;
        mlir::Diagnostic::~Diagnostic(v54);
        return v46;
      }

      return result;
    }
  }

  mlir::ShapedType::getShape(*a1);
  if (v11 < 1)
  {
    return 1;
  }

  v12 = 0;
  while (1)
  {
    v14 = 8 * v12;
    v15 = *(mlir::ShapedType::getShape(*a1) + v14);
    v16 = *(mlir::ShapedType::getShape(&v49) + v14);
    v17 = v15 == 0x8000000000000000 || v16 == 0x8000000000000000;
    if (!v17 && v15 % v16)
    {
      break;
    }

    ++v12;
    mlir::ShapedType::getShape(*a1);
    if (v12 >= v13)
    {
      return 1;
    }
  }

  v48 = 257;
  mlir::OpState::emitOpError(v5, v47, &v53);
  if (v53)
  {
    mlir::Diagnostic::operator<<(v54, a2);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v53, " shape not compatible with updates for axis ");
  if (*v18)
  {
    v19 = *(v18 + 24);
    LODWORD(v51) = 2;
    *(&v51 + 1) = v12;
    v20 = *(v18 + 32);
    if (v20 >= *(v18 + 36))
    {
      if (v19 > &v51 || v19 + 24 * v20 <= &v51)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v21 = v19 + 24 * *(v18 + 32);
    v22 = v51;
    *(v21 + 16) = v52;
    *v21 = v22;
    ++*(v18 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v18, ": ");
  if (*v23)
  {
    v24 = *(v23 + 24);
    LODWORD(v51) = 2;
    *(&v51 + 1) = v15;
    v25 = *(v23 + 32);
    if (v25 >= *(v23 + 36))
    {
      if (v24 > &v51 || v24 + 24 * v25 <= &v51)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = v24 + 24 * *(v23 + 32);
    v27 = v51;
    *(v26 + 16) = v52;
    *v26 = v27;
    ++*(v23 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, " % ");
  if (*v28)
  {
    v29 = *(v28 + 24);
    LODWORD(v51) = 2;
    *(&v51 + 1) = v16;
    v30 = *(v28 + 32);
    if (v30 >= *(v28 + 36))
    {
      if (v29 > &v51 || v29 + 24 * v30 <= &v51)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = v29 + 24 * *(v28 + 32);
    v32 = v51;
    *(v31 + 16) = v52;
    *v31 = v32;
    ++*(v28 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v28, " != 0");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  v35 = result;
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
    result = v35;
  }

  if (v62)
  {
    if (v61 != &v62)
    {
      free(v61);
      result = v35;
    }

    v36 = __p;
    if (__p)
    {
      v37 = v60;
      v38 = __p;
      if (v60 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v60 = v36;
      operator delete(v38);
      result = v35;
    }

    v39 = v57;
    if (v57)
    {
      v40 = v58;
      v41 = v57;
      if (v58 != v57)
      {
        do
        {
          v43 = *--v40;
          v42 = v43;
          *v40 = 0;
          if (v43)
          {
            MEMORY[0x259C63150](v42, 0x1000C8077774924);
          }
        }

        while (v40 != v39);
        v41 = v57;
      }

      v58 = v39;
      operator delete(v41);
      result = v35;
    }

    if (v55 != &v56)
    {
      free(v55);
      return v35;
    }
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = *MEMORY[0x277D85DE8];
  v48 = a4;
  v49 = a5;
  *&v44 = a6;
  BYTE8(v44) = 0;
  LOBYTE(v45) = 0;
  v14 = a5;
  *(&v45 + 1) = a9;
  *&v46 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v44);
    if (v45 == 1)
    {
      LOBYTE(v45) = 0;
    }

    mlir::OperationName::OperationName(&v44 + 8, "mpsx.quantized_conv2d", 21, Context);
    LOBYTE(v45) = 1;
    v14 = v49;
  }

  *(&v46 + 1) = a4;
  v47 = a5;
  if (v14 >= 2)
  {
    v16 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mpsx::QuantizedConv2DOpAdaptor::verify(&v44, v16))
    {
      v17 = mlir::DictionaryAttr::begin(&v44);
      v18 = mlir::DictionaryAttr::end(&v44);
      mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v17 + 112), (v18 - 16), *(*(*(&v44 + 1) + 96) + 64));
      v23 = mlir::DictionaryAttr::begin(&v44);
      v24 = mlir::DictionaryAttr::end(&v44);
      mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v23 + 16), (v24 - 112), *(*(*(&v44 + 1) + 96) + 8));
      v25 = mlir::DictionaryAttr::begin(&v44);
      v26 = mlir::DictionaryAttr::end(&v44);
      mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v25 + 32), (v26 - 96), *(*(*(&v44 + 1) + 96) + 16));
      mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getGroups(&v44);
      v27 = mlir::DictionaryAttr::begin(&v44);
      v28 = mlir::DictionaryAttr::end(&v44);
      v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v27 + 96), (v28 - 32), *(*(*(&v44 + 1) + 96) + 56));
      if (v30)
      {
        v31 = *(v29 + 1);
      }

      else
      {
        v31 = 0;
      }

      *&v42[0] = v31;
      mlir::mps::PaddingStyleAttr::getValue(v42);
      v32 = mlir::DictionaryAttr::begin(&v44);
      v33 = mlir::DictionaryAttr::end(&v44);
      v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v32, (v33 - 128), **(*(&v44 + 1) + 96));
      if (v35)
      {
        v36 = *(v34 + 1);
      }

      else
      {
        v36 = 0;
      }

      *&v42[0] = v36;
      mlir::mps::TensorDataLayoutAttr::getValue(v42);
      v37 = mlir::DictionaryAttr::begin(&v44);
      v38 = mlir::DictionaryAttr::end(&v44);
      v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v37 + 128), v38, *(*(*(&v44 + 1) + 96) + 72));
      if (v40)
      {
        v41 = *(v39 + 1);
      }

      else
      {
        v41 = 0;
      }

      *&v42[0] = v41;
      mlir::mps::TensorDataLayoutAttr::getValue(v42);
      mlir::ValueRange::dereference_iterator(&v48, 0);
      mlir::ValueRange::dereference_iterator(&v48, 1);
      v42[0] = v44;
      v42[1] = v45;
      v42[2] = v46;
      v43 = v47;
    }
  }

  v19 = mlir::Float32Type::get(this, a2);
  v20 = mlir::UnrankedTensorType::get(v19);
  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v21) = v20;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::QuantizedConv2DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v37[0] = *a1;
  for (i = mlir::DictionaryAttr::begin(v37); i != mlir::DictionaryAttr::end(v37); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      while (i != mlir::DictionaryAttr::end(v37))
      {
        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          while (i != mlir::DictionaryAttr::end(v37))
          {
            if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
            {
              while (i != mlir::DictionaryAttr::end(v37))
              {
                if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 24))
                {
                  if (i == mlir::DictionaryAttr::end(v37))
                  {
LABEL_88:
                    v35 = "'mpsx.quantized_conv2d' op requires attribute 'operandSegmentSizes'";
                    v36 = 259;
                    mlir::emitError(a2, &v35, &v38);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
                    if (v38)
                    {
                      mlir::InFlightDiagnostic::report(&v38);
                    }

                    if (v47 == 1)
                    {
                      mlir::Diagnostic::~Diagnostic(&v39);
                    }
                  }

                  else
                  {
                    while (mlir::NamedAttribute::getName(i) != *(*(a1[1] + 96) + 40))
                    {
                      mlir::NamedAttribute::getName(i);
                      i = (i + 16);
                      if (i == mlir::DictionaryAttr::end(v37))
                      {
                        goto LABEL_88;
                      }
                    }

                    v33 = *(i + 1);
                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(v37))
                      {
                        v34 = "'mpsx.quantized_conv2d' op requires attribute 'output_type'";
                        goto LABEL_109;
                      }

                      if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 48))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(v37))
                      {
                        v34 = "'mpsx.quantized_conv2d' op requires attribute 'padding_style'";
                        goto LABEL_109;
                      }

                      if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 56))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    while (1)
                    {
                      if (i == mlir::DictionaryAttr::end(v37))
                      {
                        v34 = "'mpsx.quantized_conv2d' op requires attribute 'strides'";
                        goto LABEL_109;
                      }

                      if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 64))
                      {
                        break;
                      }

                      i = (i + 16);
                    }

                    while (i != mlir::DictionaryAttr::end(v37))
                    {
                      if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 72))
                      {
                        for (; i != mlir::DictionaryAttr::end(v37); i = (i + 16))
                        {
                          mlir::NamedAttribute::getName(i);
                        }

                        v37[3] = v33;
                        mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
                      }

                      i = (i + 16);
                    }

                    v34 = "'mpsx.quantized_conv2d' op requires attribute 'weights_layout'";
LABEL_109:
                    v35 = v34;
                    v36 = 259;
                    mlir::emitError(a2, &v35, &v38);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
                  }

                  return v5;
                }

                i = (i + 16);
              }

              v35 = "'mpsx.quantized_conv2d' op requires attribute 'groups'";
              v36 = 259;
              mlir::emitError(a2, &v35, &v38);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
              if (v38)
              {
                mlir::InFlightDiagnostic::report(&v38);
              }

              if (v47 != 1)
              {
                return v5;
              }

              if (v46 != &v47)
              {
                free(v46);
              }

              v26 = __p;
              if (__p)
              {
                v27 = v45;
                v28 = __p;
                if (v45 != __p)
                {
                  do
                  {
                    v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
                  }

                  while (v27 != v26);
                  v28 = __p;
                }

                v45 = v26;
                operator delete(v28);
              }

              v9 = v42;
              if (!v42)
              {
                goto LABEL_80;
              }

              v29 = v43;
              v11 = v42;
              if (v43 == v42)
              {
                goto LABEL_79;
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

              while (v29 != v9);
              goto LABEL_78;
            }

            i = (i + 16);
          }

          v35 = "'mpsx.quantized_conv2d' op requires attribute 'explicit_padding'";
          v36 = 259;
          mlir::emitError(a2, &v35, &v38);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
          if (v38)
          {
            mlir::InFlightDiagnostic::report(&v38);
          }

          if (v47 != 1)
          {
            return v5;
          }

          if (v46 != &v47)
          {
            free(v46);
          }

          v20 = __p;
          if (__p)
          {
            v21 = v45;
            v22 = __p;
            if (v45 != __p)
            {
              do
              {
                v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
              }

              while (v21 != v20);
              v22 = __p;
            }

            v45 = v20;
            operator delete(v22);
          }

          v9 = v42;
          if (!v42)
          {
            goto LABEL_80;
          }

          v23 = v43;
          v11 = v42;
          if (v43 == v42)
          {
            goto LABEL_79;
          }

          do
          {
            v25 = *--v23;
            v24 = v25;
            *v23 = 0;
            if (v25)
            {
              MEMORY[0x259C63150](v24, 0x1000C8077774924);
            }
          }

          while (v23 != v9);
          goto LABEL_78;
        }

        i = (i + 16);
      }

      v35 = "'mpsx.quantized_conv2d' op requires attribute 'dilation_rates'";
      v36 = 259;
      mlir::emitError(a2, &v35, &v38);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
      if (v38)
      {
        mlir::InFlightDiagnostic::report(&v38);
      }

      if (v47 != 1)
      {
        return v5;
      }

      if (v46 != &v47)
      {
        free(v46);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v45;
        v16 = __p;
        if (v45 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v45 = v14;
        operator delete(v16);
      }

      v9 = v42;
      if (!v42)
      {
        goto LABEL_80;
      }

      v17 = v43;
      v11 = v42;
      if (v43 == v42)
      {
        goto LABEL_79;
      }

      do
      {
        v19 = *--v17;
        v18 = v19;
        *v17 = 0;
        if (v19)
        {
          MEMORY[0x259C63150](v18, 0x1000C8077774924);
        }
      }

      while (v17 != v9);
LABEL_78:
      v11 = v42;
      goto LABEL_79;
    }
  }

  v35 = "'mpsx.quantized_conv2d' op requires attribute 'data_layout'";
  v36 = 259;
  mlir::emitError(a2, &v35, &v38);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    mlir::InFlightDiagnostic::report(&v38);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
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
        goto LABEL_78;
      }

LABEL_79:
      v43 = v9;
      operator delete(v11);
    }

LABEL_80:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

uint64_t *mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getGroups(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v2 + 48), (v3 - 80), *(*(*(this + 1) + 96) + 24));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &v9);
  if (v10 <= 0x40)
  {
    return v9;
  }

  v7 = *v9;
  MEMORY[0x259C63150]();
  return v7;
}

void mlir::mpsx::anonymous namespace::qimpl::getInputDequantizedType<mlir::mpsx::QuantizedConv2DOpAdaptor>(mlir::DictionaryAttr *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = mlir::DictionaryAttr::begin(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v2 + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

uint64_t mlir::mpsx::anonymous namespace::inferConv2DReturnType(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v89 = *MEMORY[0x277D85DE8];
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8))
  {
    v73 = 0;
    v74 = 0;
LABEL_28:
    if (a2)
    {
      mlir::emitError(a1, &v79);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v79, "cannot conv2D a non-shaped inputType");
      v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
      if (v79)
      {
        mlir::InFlightDiagnostic::report(&v79);
      }

      if (v88 != 1)
      {
        return v31;
      }

      if (v87 != &v88)
      {
        free(v87);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v86;
        v34 = __p;
        if (v86 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v86 = v32;
        operator delete(v34);
      }

      v35 = v83;
      if (v83)
      {
        v36 = v84;
        v37 = v83;
        if (v84 != v83)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          goto LABEL_91;
        }

LABEL_92:
        v84 = v35;
        operator delete(v37);
      }

LABEL_93:
      v57 = v81;
      if (v81 == v82)
      {
        return v31;
      }

      goto LABEL_139;
    }

    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
  v73 = a3;
  v74 = v14;
  if (!a3)
  {
    goto LABEL_28;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8))
  {
    if (a2)
    {
      mlir::emitError(a1, &v79);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v79, "cannot conv2D a non-shaped weightsType");
      v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
      if (v79)
      {
        mlir::InFlightDiagnostic::report(&v79);
      }

      if (v88 != 1)
      {
        return v31;
      }

      if (v87 != &v88)
      {
        free(v87);
      }

      v41 = __p;
      if (__p)
      {
        v42 = v86;
        v43 = __p;
        if (v86 != __p)
        {
          do
          {
            v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v86 = v41;
        operator delete(v43);
      }

      v35 = v83;
      if (v83)
      {
        v44 = v84;
        v37 = v83;
        if (v84 != v83)
        {
          do
          {
            v46 = *--v44;
            v45 = v46;
            *v44 = 0;
            if (v46)
            {
              MEMORY[0x259C63150](v45, 0x1000C8077774924);
            }
          }

          while (v44 != v35);
LABEL_91:
          v37 = v83;
          goto LABEL_92;
        }

        goto LABEL_92;
      }

      goto LABEL_93;
    }

    return 0;
  }

  mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a4 + 8);
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a7 = mlir::UnrankedTensorType::get(a5);
    return 1;
  }

  v76 = v78;
  v77 = 0x400000000;
  Shape = mlir::ShapedType::getShape(&v73);
  v75 = v16;
  if (v16 != 4)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_137;
    }

    mlir::emitError(a1, &v79);
    if (v79)
    {
      mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(&v80, "conv2D input rank ", &v75, "must be 4 ");
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v79);
    if (v79)
    {
      mlir::InFlightDiagnostic::report(&v79);
    }

    if (v88 == 1)
    {
      if (v87 != &v88)
      {
        free(v87);
      }

      v49 = __p;
      if (__p)
      {
        v50 = v86;
        v51 = __p;
        if (v86 != __p)
        {
          do
          {
            v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
          }

          while (v50 != v49);
          v51 = __p;
        }

        v86 = v49;
        operator delete(v51);
      }

      v52 = v83;
      if (v83)
      {
        v53 = v84;
        v54 = v83;
        if (v84 != v83)
        {
          do
          {
            v56 = *--v53;
            v55 = v56;
            *v53 = 0;
            if (v56)
            {
              MEMORY[0x259C63150](v55, 0x1000C8077774924);
            }
          }

          while (v53 != v52);
          v54 = v83;
        }

        v84 = v52;
        operator delete(v54);
      }

      if (v81 != v82)
      {
        free(v81);
      }
    }

    if (!v48)
    {
      goto LABEL_137;
    }

LABEL_130:
    v25 = v76;
    v21 = v77;
LABEL_131:
    *a7 = mlir::RankedTensorType::get(v25, v21, a5, 0);
    v31 = 1;
    goto LABEL_138;
  }

  if (v77 <= 3)
  {
    if (HIDWORD(v77) <= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = Shape;
    bzero(v76 + 8 * v77, 32 - 8 * v77);
    Shape = v17;
  }

  LODWORD(v77) = 0;
  if (!HIDWORD(v77))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *v76 = *Shape;
  v18 = v77 + 1;
  LODWORD(v77) = v18;
  if (v18 >= HIDWORD(v77))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v76 + v18) = Shape[1];
  v19 = v77 + 1;
  LODWORD(v77) = v19;
  if (v19 >= HIDWORD(v77))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v76 + v19) = Shape[2];
  v20 = v77 + 1;
  LODWORD(v77) = v20;
  if (v20 >= HIDWORD(v77))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v76 + v20) = Shape[3];
  v21 = (v77 + 1);
  LODWORD(v77) = v77 + 1;
  v22 = *(a6 + 8);
  v23 = 0x8000000000000000;
  v24 = 0x8000000000000000;
  if (v22 != 0x8000000000000000)
  {
    v24 = (*(a6 + 88) + v22 + *(a6 + 96) + *(a6 + 56) + ~((*(a6 + 24) - 1) * *(a6 + 72))) / *(a6 + 56);
  }

  if (*a6 != 0x8000000000000000)
  {
    v23 = (*a6 + ~((*(a6 + 32) - 1) * *(a6 + 80)) + *(a6 + 104) + *(a6 + 112) + *(a6 + 64)) / *(a6 + 64);
  }

  v25 = v76;
  v26 = *(a6 + 124);
  if (!v26)
  {
    if (v21)
    {
      v58 = 0;
      if (v23 <= 0)
      {
        v23 = 0x8000000000000000;
      }

      if (v24 <= 0)
      {
        v24 = 0x8000000000000000;
      }

      v59 = v21;
      v60 = Shape + 3;
      do
      {
        v61 = v24;
        if (v58)
        {
          if (v58 == 2)
          {
            v61 = *(a6 + 40);
            if (v61 <= 0)
            {
              v61 = 0x8000000000000000;
            }
          }

          else
          {
            v61 = v23;
            if (v58 != 1)
            {
              v61 = *v60;
            }
          }
        }

        v25[v59 - 1] = v61;
        ++v58;
        --v60;
        --v59;
      }

      while (v59 * 8);
    }

    goto LABEL_131;
  }

  if (v26 == 1)
  {
    if (v21)
    {
      v27 = 0;
      if (v23 <= 0)
      {
        v23 = 0x8000000000000000;
      }

      if (v24 <= 0)
      {
        v24 = 0x8000000000000000;
      }

      v28 = v21;
      v29 = Shape + 3;
      do
      {
        v47 = v23;
        if (v27 != 2)
        {
          v47 = v24;
          if (v27 != 1)
          {
            if (v27)
            {
              v47 = *v29;
            }

            else
            {
              v47 = *(a6 + 40);
              if (v47 <= 0)
              {
                v47 = 0x8000000000000000;
              }
            }
          }
        }

        v25[v28 - 1] = v47;
        ++v27;
        --v29;
        --v28;
      }

      while (v28 * 8);
    }

    goto LABEL_131;
  }

  if (a2)
  {
    mlir::emitError(a1, &v79);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v79, "unrecognized input dataLayout to conv2D");
    v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
    if (v79)
    {
      mlir::InFlightDiagnostic::report(&v79);
    }

    if (v88 == 1)
    {
      if (v87 != &v88)
      {
        free(v87);
      }

      v64 = __p;
      if (__p)
      {
        v65 = v86;
        v66 = __p;
        if (v86 != __p)
        {
          do
          {
            v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
          }

          while (v65 != v64);
          v66 = __p;
        }

        v86 = v64;
        operator delete(v66);
      }

      v67 = v83;
      if (v83)
      {
        v68 = v84;
        v69 = v83;
        if (v84 != v83)
        {
          do
          {
            v71 = *--v68;
            v70 = v71;
            *v68 = 0;
            if (v71)
            {
              MEMORY[0x259C63150](v70, 0x1000C8077774924);
            }
          }

          while (v68 != v67);
          v69 = v83;
        }

        v84 = v67;
        operator delete(v69);
      }

      if (v81 != v82)
      {
        free(v81);
      }
    }

    if (v63)
    {
      goto LABEL_130;
    }
  }

LABEL_137:
  v31 = 0;
LABEL_138:
  v57 = v76;
  if (v76 != v78)
  {
LABEL_139:
    free(v57);
  }

  return v31;
}

uint64_t mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getOutputType(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v2 + 80), (v3 - 48), *(*(*(this + 1) + 96) + 48));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  return mlir::TypeAttr::getValue(&v8);
}

uint64_t mlir::mpsx::MakeListOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = a6;
  LOBYTE(v26) = 0;
  v27 = 0;
  v28 = a9;
  v29 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v25);
    if (v27 == 1)
    {
      v27 = 0;
    }

    mlir::OperationName::OperationName(&v26, "mpsx.make_list", 14, Context);
    v27 = 1;
  }

  v30 = a4;
  v31 = a5;
  v15 = mlir::UnknownLoc::get(this, a2);
  if ((mlir::mpsx::MakeListOpAdaptor::verify(&v25, v15) & 1) == 0)
  {
    return 0;
  }

  v16 = mlir::DictionaryAttr::begin(&v25);
  v17 = mlir::DictionaryAttr::end(&v25);
  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v16, v17, **(v26 + 96));
  if (v19)
  {
    v20 = *(v18 + 1);
  }

  else
  {
    v20 = 0;
  }

  Value = v20;
  Value = mlir::TypeAttr::getValue(&Value);
  v22 = mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(&Value, 1, this);
  v23 = *(a11 + 8);
  if (v23 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v23) = v22;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mpsx::MakeListOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v32); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v32))
    {
      v30[0] = "'mpsx.make_list' op requires attribute 'element_type'";
      v31 = 259;
      mlir::emitError(a2, v30, v33);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }

      if (v41 != 1)
      {
        return v5;
      }

      if (v40 != &v41)
      {
        free(v40);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v39;
        v8 = __p;
        if (v39 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v39 = v6;
        operator delete(v8);
      }

      v9 = v36;
      if (!v36)
      {
        goto LABEL_68;
      }

      v10 = v37;
      v11 = v36;
      if (v37 == v36)
      {
        goto LABEL_67;
      }

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
LABEL_66:
      v11 = v36;
      goto LABEL_67;
    }

    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  if (i == mlir::DictionaryAttr::end(&v32))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
      {
        v15 = *(i + 1);
      }

      i = (i + 16);
    }

    while (i != mlir::DictionaryAttr::end(&v32));
  }

  if (v14)
  {
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || (v33[0] = v14, mlir::TypeAttr::getValue(v33), v30[0] = v14, Value = mlir::TypeAttr::getValue(v30), (mlir::mpsx::isMPSXListElementType(Value) & 1) == 0))
    {
      v30[0] = "'mpsx.make_list' op attribute 'element_type' failed to satisfy constraint: any type attribute MPSX list element type attribute";
      v31 = 259;
      mlir::emitError(a2, v30, v33);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }

      if (v41 != 1)
      {
        return v5;
      }

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

      v9 = v36;
      if (!v36)
      {
        goto LABEL_68;
      }

      v20 = v37;
      v11 = v36;
      if (v37 == v36)
      {
        goto LABEL_67;
      }

      do
      {
        v22 = *--v20;
        v21 = v22;
        *v20 = 0;
        if (v22)
        {
          MEMORY[0x259C63150](v21, 0x1000C8077774924);
        }
      }

      while (v20 != v9);
      goto LABEL_66;
    }
  }

  if (!v15)
  {
    return 1;
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v30[0] = v15;
    v33[0] = mlir::IntegerAttr::getType(v30);
    if (mlir::Type::isUnsignedInteger(v33, 32))
    {
      return 1;
    }
  }

  v30[0] = "'mpsx.make_list' op attribute 'max_size' failed to satisfy constraint: 32-bit unsigned integer attribute";
  v31 = 259;
  mlir::emitError(a2, v30, v33);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v39;
      v25 = __p;
      if (v39 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v39 = v23;
      operator delete(v25);
    }

    v9 = v36;
    if (v36)
    {
      v26 = v37;
      v11 = v36;
      if (v37 != v36)
      {
        do
        {
          v28 = *--v26;
          v27 = v28;
          *v26 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v26 != v9);
        goto LABEL_66;
      }

LABEL_67:
      v37 = v9;
      operator delete(v11);
    }

LABEL_68:
    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v5;
}