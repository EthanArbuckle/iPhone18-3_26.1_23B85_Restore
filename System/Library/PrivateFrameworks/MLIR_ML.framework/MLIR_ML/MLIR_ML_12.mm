uint64_t mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(mlir::AsmParser *a1)
{
  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7uLL);
  v6 = 0;
  v3 = mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v6, 0);
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void *llvm::format_provider<long long,void>::format(unint64_t *a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v15, a2);
  if ((v6 & 0x100000000) == 0)
  {
    if (v16)
    {
      v8 = 0;
      v9 = *v15;
      if (v9 <= 0x63)
      {
        if (v9 != 68)
        {
          if (v9 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v8 = 0;
        ++v15;
        goto LABEL_19;
      }

      if (v9 == 100)
      {
        goto LABEL_18;
      }

      if (v9 == 110)
      {
LABEL_17:
        ++v15;
        v8 = 1;
LABEL_19:
        --v16;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_20:
    v17 = 0;
    if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
    {
      v14 = 0;
    }

    else
    {
      v14 = v17;
    }

    return llvm::write_integer(a2, *a1, v14, v8);
  }

  v10 = v6;
  v17 = 0;
  if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
  {
    v11 = 0;
  }

  else
  {
    v11 = v17;
  }

  if (llvm::isPrefixedHexStyle(v10))
  {
    v12 = v11 + 2;
  }

  else
  {
    v12 = v11;
  }

  return llvm::write_hex(a2, *a1, v10, v12, 1);
}

uint64_t llvm::support::detail::HelperFunctions::consumeHexStyle(unsigned __int8 **this, llvm::StringRef *a2)
{
  if (!llvm::StringRef::starts_with_insensitive(this, "x", 1uLL))
  {
    v6 = 0;
    v7 = 0;
    return v7 | v6;
  }

  v3 = this[1];
  v4 = (v3 - 2);
  if (v3 < 2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    v5 = *this;
    if (**this != 120)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v5 = *this;
  if (**this == 11640)
  {
    *this = v5 + 2;
    this[1] = v4;
    v6 = 0x100000000;
    v7 = 1;
    return v7 | v6;
  }

  if (*v5 == 11608)
  {
    v7 = 0;
    *this = v5 + 2;
    this[1] = v4;
    v6 = 0x100000000;
    return v7 | v6;
  }

  if (*v5 == 11128)
  {
    *this = v5 + 2;
    this[1] = v4;
    goto LABEL_16;
  }

  if (*v5 == 120)
  {
LABEL_12:
    *this = v5 + 1;
    this[1] = (v3 - 1);
LABEL_16:
    v6 = 0x100000000;
    v7 = 3;
    return v7 | v6;
  }

  if (*v5 == 11096)
  {
    *this = v5 + 2;
    this[1] = v4;
    goto LABEL_6;
  }

LABEL_5:
  llvm::StringRef::consume_front(this, "X", 1uLL);
LABEL_6:
  v6 = 0x100000000;
  v7 = 2;
  return v7 | v6;
}

uint64_t llvm::StringRef::consume_front(const void **a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = &v3[-a3];
  if (v3 < a3)
  {
    return 0;
  }

  v5 = *a1;
  if (a3)
  {
    v6 = a1;
    v7 = a3;
    v8 = memcmp(*a1, a2, a3);
    a3 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      return 0;
    }
  }

  *a1 = &v5[a3];
  a1[1] = v4;
  return 1;
}

BOOL mlir::emitOptionalError<char const(&)[24]>(uint64_t a1, char a2, const char *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, v18);
  if (v18[0])
  {
    LODWORD(v16) = 3;
    *(&v16 + 1) = a3;
    v17 = strlen(a3);
    if (v20 >= v21)
    {
      if (v19 > &v16 || v19 + 24 * v20 <= &v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v19 + 24 * v20;
    v5 = v16;
    *(v4 + 2) = v17;
    *v4 = v5;
    ++v20;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v26;
      v9 = __p;
      if (v26 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v26 = v7;
      operator delete(v9);
    }

    v10 = v23;
    if (v23)
    {
      v11 = v24;
      v12 = v23;
      if (v24 != v23)
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
        v12 = v23;
      }

      v24 = v10;
      operator delete(v12);
    }

    if (v19 != &v22)
    {
      free(v19);
    }
  }

  return v6;
}

__n128 mlir::Diagnostic::operator<<(uint64_t a1, char *__s)
{
  if (__s)
  {
    v3 = a1;
    v4 = strlen(__s);
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  v9.n128_u32[0] = 3;
  v9.n128_u64[1] = __s;
  v10 = v4;
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  if (v5 >= *(a1 + 28))
  {
    if (v6 > &v9 || v6 + 24 * v5 <= &v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = (v6 + 24 * *(a1 + 24));
  result = v9;
  v7[1].n128_u64[0] = v10;
  *v7 = result;
  ++*(a1 + 24);
  return result;
}

const char *llvm::getTypeName<mlir::MemRefLayoutAttrInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefLayoutAttrInterface]";
  v6 = 81;
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

unint64_t llvm::hashing::detail::hash_short(llvm::hashing::detail *this, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 <= 4)
  {
    v3 = *(this + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *this));
    v5 = v3 ^ (v4 >> 47) ^ v4;
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 - 9 <= 7)
  {
    v7 = *(this + a2 - 8);
    v8 = __ROR8__(v7 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) >> 47))) ^ v7;
  }

  if (a2 - 17 <= 0xF)
  {
    v9 = *(this + 1);
    v10 = 0x9AE16A3B2F90404FLL * *(this + a2 - 8);
    v11 = __ROR8__(0xB492B66FBE98F273 * *this - v9, 43) - 0x3C5A37A36834CED9 * *(this + a2 - 16) + __ROR8__(v10 ^ a3, 30);
    v12 = a3 + a2 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *this - v10;
    v5 = v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 >= 0x21)
  {
    v13 = this + a2;
    v14 = *(this + a2 - 16);
    v15 = *(this + a2 - 8);
    v16 = *this - 0x3C5A37A36834CED9 * (v14 + a2);
    v18 = *(this + 2);
    v17 = *(this + 3);
    v19 = __ROR8__(v16 + v17, 52);
    v20 = v16 + *(this + 1);
    v21 = __ROR8__(v20, 7);
    v22 = v20 + v18;
    v23 = v21 + __ROR8__(*this - 0x3C5A37A36834CED9 * (v14 + a2), 37) + v19;
    v24 = *(this + a2 - 32) + v18;
    v25 = __ROR8__(v24 + v15, 52);
    v26 = v23 + __ROR8__(v22, 31);
    v27 = __ROR8__(v24, 37);
    v28 = *(v13 - 3) + v24;
    v29 = __ROR8__(v28, 7);
    v30 = v28 + v14;
    v31 = __ROR8__(v30, 31);
    v32 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) ^ ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) >> 47))) ^ a3) + v26;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  if (a2)
  {
    v32 = (0x9AE16A3B2F90404FLL * (*this | (*(this + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(this + a2 - 1))) ^ a3;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  return a3 ^ 0x9AE16A3B2F90404FLL;
}

unint64_t *llvm::hashing::detail::hash_state::mix(unint64_t *this, const char *a2)
{
  v2 = this[1];
  v4 = this[2];
  v3 = this[3];
  v5 = 0xB492B66FBE98F273 * __ROR8__(v2 + *this + v3 + *(a2 + 1), 37);
  *this = v5;
  v6 = this[4];
  v7 = this[5];
  v8 = __ROR8__(v6 + v2 + *(a2 + 6), 42);
  v9 = this[6];
  v10 = v9 ^ v5;
  *this = v10;
  this[1] = 0xB492B66FBE98F273 * v8;
  v11 = 0xB492B66FBE98F273 * v8 + v3 + *(a2 + 5);
  v12 = 0xB492B66FBE98F273 * __ROR8__(v7 + v4, 33);
  this[1] = v11;
  this[2] = v12;
  this[3] = 0xB492B66FBE98F273 * v6;
  this[4] = v7 + v10;
  v13 = *a2 - 0x4B6D499041670D8DLL * v6;
  this[3] = v13;
  v14 = *(a2 + 3);
  v15 = __ROR8__(v13 + v14 + v7 + v10, 21);
  this[4] = v15;
  v16 = __ROR8__(*(a2 + 1) + *(a2 + 2) + v13, 44);
  this[3] = *(a2 + 1) + *(a2 + 2) + v13 + v14;
  this[4] = v15 + v13 + v16;
  this[5] = v12 + v9;
  v17 = *(a2 + 2) + v11;
  this[6] = v17;
  v18 = *(a2 + 4) + v12 + v9;
  this[5] = v18;
  v19 = *(a2 + 7);
  v20 = __ROR8__(v18 + v19 + v17, 21);
  this[6] = v20;
  v21 = v20 + v18 + __ROR8__(*(a2 + 5) + *(a2 + 6) + v18, 44);
  this[5] = *(a2 + 5) + *(a2 + 6) + v18 + v19;
  this[6] = v21;
  this[2] = v10;
  *this = v12;
  return this;
}

uint64_t mlir::DialectBytecodeReader::readSparseArray<int>(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v48 = 0;
  if ((*(*a1 + 72))(a1, &v48))
  {
    v6 = v48;
    v7 = v48 >> 1;
    v48 >>= 1;
    if (v6 < 2)
    {
      return 1;
    }

    if (v6)
    {
      v45 = 0;
      if ((*(*a1 + 72))(a1, &v45))
      {
        if (v45 < 9)
        {
          v26 = v48;
          if (!v48)
          {
            return 1;
          }

          while (1)
          {
            v44 = 0;
            if (((*(*a1 + 72))(a1, &v44) & 1) == 0)
            {
              break;
            }

            v27 = v44 & ~(-1 << v45);
            if (v27 >= a3)
            {
              v46[0] = "reading a sparse array found index ";
              v47 = 259;
              (*(*a1 + 16))(&v51, a1, v46);
              if (v51)
              {
                LODWORD(v49) = 5;
                *(&v49 + 1) = v27;
                if (v54 >= v55)
                {
                  if (v53 > &v49 || v53 + 24 * v54 <= &v49)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v29 = v53 + 24 * v54;
                v30 = v49;
                *(v29 + 2) = v50;
                *v29 = v30;
                ++v54;
              }

              mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v51, " but only ");
              if (*v31)
              {
                v32 = *(v31 + 24);
                LODWORD(v49) = 5;
                *(&v49 + 1) = a3;
                v33 = *(v31 + 32);
                if (v33 >= *(v31 + 36))
                {
                  if (v32 > &v49 || v32 + 24 * v33 <= &v49)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v34 = v32 + 24 * *(v31 + 32);
                v35 = v49;
                *(v34 + 16) = v50;
                *v34 = v35;
                ++*(v31 + 32);
              }

              mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v31, " storage available.");
              if (v51)
              {
                mlir::InFlightDiagnostic::report(&v51);
              }

              if (v62)
              {
                if (v61 != &v62)
                {
                  free(v61);
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
                }

                v28 = v53;
                if (v53 != v56)
                {
                  goto LABEL_47;
                }
              }

              return 0;
            }

            a2[v27] = v44 >> v45;
            if (!--v26)
            {
              return 1;
            }
          }
        }

        else
        {
          v46[0] = "reading sparse array with indexing above 8 bits: ";
          v47 = 259;
          (*(*a1 + 16))(&v51, a1, v46);
          if (v51)
          {
            LODWORD(v49) = 5;
            *(&v49 + 1) = v45;
            if (v54 >= v55)
            {
              if (v53 > &v49 || v53 + 24 * v54 <= &v49)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v9 = v53 + 24 * v54;
            v10 = v49;
            *(v9 + 2) = v50;
            *v9 = v10;
            ++v54;
            if (v51)
            {
              mlir::InFlightDiagnostic::report(&v51);
            }
          }

          if (v62 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v52);
          }
        }
      }
    }

    else if (v7 <= a3)
    {
      while (1)
      {
        v51 = 0;
        if (((*(*a1 + 72))(a1, &v51) & 1) == 0)
        {
          break;
        }

        *a2++ = v51;
        if (!--v7)
        {
          return 1;
        }
      }
    }

    else
    {
      v46[0] = "trying to read an array of ";
      v47 = 259;
      (*(*a1 + 16))(&v51, a1, v46);
      if (v51)
      {
        LODWORD(v49) = 5;
        *(&v49 + 1) = v48;
        if (v54 >= v55)
        {
          if (v53 > &v49 || v53 + 24 * v54 <= &v49)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v53 + 24 * v54;
        v12 = v49;
        *(v11 + 2) = v50;
        *v11 = v12;
        ++v54;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v51, " but only ");
      if (*v13)
      {
        v14 = *(v13 + 24);
        LODWORD(v49) = 5;
        *(&v49 + 1) = a3;
        v15 = *(v13 + 32);
        if (v15 >= *(v13 + 36))
        {
          if (v14 > &v49 || v14 + 24 * v15 <= &v49)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v14 + 24 * *(v13 + 32);
        v17 = v49;
        *(v16 + 16) = v50;
        *v16 = v17;
        ++*(v13 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, " storage available.");
      if (v51)
      {
        mlir::InFlightDiagnostic::report(&v51);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v60;
          v20 = __p;
          if (v60 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v60 = v18;
          operator delete(v20);
        }

        v21 = v57;
        if (v57)
        {
          v22 = v58;
          v23 = v57;
          if (v58 != v57)
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
            v23 = v57;
          }

          v58 = v21;
          operator delete(v23);
        }

        v28 = v53;
        if (v53 != v56)
        {
LABEL_47:
          free(v28);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 34))
  {
    v2 = *(a1 + 32);
    v3 = v2 >> 8;
  }

  else
  {
    (*(**a1 + 24))(&v16);
    if (v16)
    {
      v15 = 261;
      v4 = *(a1 + 24);
      v14[0] = *(a1 + 16);
      v14[1] = v4;
      mlir::Diagnostic::operator<<(&v17, v14);
      if (v16)
      {
        mlir::InFlightDiagnostic::report(&v16);
      }
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v23;
        v7 = __p;
        if (v23 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v23 = v5;
        operator delete(v7);
      }

      v8 = v20;
      if (v20)
      {
        v9 = v21;
        v10 = v20;
        if (v21 != v20)
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
          v10 = v20;
        }

        v21 = v8;
        operator delete(v10);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }

    LOBYTE(v2) = 0;
    v3 = 1;
  }

  return v2 | (v3 << 8);
}

const char *llvm::getTypeName<mlir::DowngraderInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DowngraderInterface]";
  v6 = 75;
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

BOOL mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, char a2, char *a3, void *a4, char *a5, uint64_t a6, char *a7, uint64_t a8)
{
  v34 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v24);
  if (v24)
  {
    mlir::Diagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(&v25, a3, a4, a5, a6, a7, a8);
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v31;
      v17 = __p;
      if (v31 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v31 = v15;
      operator delete(v17);
    }

    v18 = v28;
    if (v28)
    {
      v19 = v29;
      v20 = v28;
      if (v29 != v28)
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
        v20 = v28;
      }

      v29 = v18;
      operator delete(v20);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v14;
}

uint64_t mlir::Diagnostic::append<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, char *__s, void *a3, char *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v14 = strlen(__s);
  v15 = *(a1 + 16);
  LODWORD(v21) = 3;
  *(&v21 + 1) = __s;
  v22 = v14;
  v16 = *(a1 + 24);
  if (v16 >= *(a1 + 28))
  {
    if (v15 > &v21 || v15 + 24 * v16 <= &v21)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v15 + 24 * *(a1 + 24);
  v18 = v21;
  *(v17 + 16) = v22;
  *v17 = v18;
  ++*(a1 + 24);
  v23 = 262;
  v19 = a3[1];
  *&v21 = *a3;
  *(&v21 + 1) = v19;
  mlir::Diagnostic::operator<<(a1, &v21);
  return mlir::Diagnostic::append<char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a1, a4, a5, a6, a7);
}

uint64_t mlir::Diagnostic::append<char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, char *__s, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = strlen(__s);
  v11 = *(a1 + 16);
  LODWORD(v16) = 3;
  *(&v16 + 1) = __s;
  v17 = v10;
  v12 = *(a1 + 24);
  if (v12 >= *(a1 + 28))
  {
    if (v11 > &v16 || v11 + 24 * v12 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v11 + 24 * *(a1 + 24);
  v14 = v16;
  *(v13 + 16) = v17;
  *v13 = v14;
  ++*(a1 + 24);
  *&v16 = ", ";
  llvm::interleave<mlir::Type const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(llvm::SmallVector<mlir::Type,4u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(void)#1},void>(*a3, (*a3 + 8 * *(a3 + 8)), a1, a1, &v16);
  return mlir::Diagnostic::append<char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a1, a4, a5);
}

uint64_t mlir::Diagnostic::append<char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(uint64_t a1, char *__s, uint64_t a3)
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
  *&v12 = ", ";
  llvm::interleave<mlir::Type const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(llvm::SmallVector<mlir::Type,4u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(void)#1},void>(*a3, (*a3 + 8 * *(a3 + 8)), a1, a1, &v12);
  return a1;
}

__n128 llvm::interleave<mlir::Type const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(llvm::SmallVector<mlir::Type,4u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<mlir::Type,4u>>(llvm::SmallVector<mlir::Type,4u> const&,char const*)::{lambda(void)#1},void>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char **a5)
{
  if (a1 != a2)
  {
    v22 = v5;
    v23 = v6;
    mlir::DiagnosticArgument::DiagnosticArgument(&v20, *a1);
    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
    if (v13 >= *(a3 + 28))
    {
      if (v12 > &v20 || v12 + 24 * v13 <= &v20)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v12 + 24 * *(a3 + 24));
    result = v20;
    v14[1].n128_u64[0] = v21;
    *v14 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      mlir::Diagnostic::operator<<(a4, *a5);
      mlir::DiagnosticArgument::DiagnosticArgument(&v20, *i);
      v17 = *(a3 + 24);
      v18 = *(a3 + 16);
      if (v17 >= *(a3 + 28))
      {
        if (v18 <= &v20 && v18 + 24 * v17 > &v20)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = (v18 + 24 * *(a3 + 24));
      result = v20;
      v19[1].n128_u64[0] = v21;
      *v19 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::CompatibleReturnTypesInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CompatibleReturnTypesInterface]";
  v6 = 86;
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

const char *llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroRegions<Empty>]";
  v6 = 83;
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

const char *llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneResult<Empty>]";
  v6 = 81;
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

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<Empty>]";
  v6 = 104;
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

const char *llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroSuccessors<Empty>]";
  v6 = 86;
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

const char *llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NOperands<3>::Impl<Empty>]";
  v6 = 90;
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

const char *llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OpInvariants<Empty>]";
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

const char *llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffectOpInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DowngraderInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferTypeOpInterface::Trait<Empty>]";
  v6 = 90;
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

const char *llvm::getTypeName<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CompatibleReturnTypesInterface::Trait<Empty>]";
  v6 = 100;
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

const char *llvm::getTypeName<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NOperands<5>::Impl<Empty>]";
  v6 = 90;
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

const char *llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SameOperandsElementType<Empty>]";
  v6 = 95;
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

const char *llvm::getTypeName<mlir::BytecodeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeOpInterface]";
  v6 = 75;
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

const char *llvm::getTypeName<mlir::OpAsmOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmOpInterface]";
  v6 = 72;
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

const char *llvm::getTypeName<mlir::ConditionallySpeculatable>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConditionallySpeculatable]";
  v6 = 81;
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

uint64_t mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::OffsetSizeAndStrideOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::OffsetSizeAndStrideOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OffsetSizeAndStrideOpInterface]";
  v6 = 86;
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

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AtLeastNOperands<1>::Impl<Empty>]";
  v6 = 97;
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

const char *llvm::getTypeName<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AttrSizedOperandSegments<Empty>]";
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

const char *llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeOpInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmOpInterface::Trait<Empty>]";
  v6 = 86;
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

const char *llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::MemRefsNormalizable<Empty>]";
  v6 = 91;
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

const char *llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConditionallySpeculatable::Trait<Empty>]";
  v6 = 95;
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

const char *llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AlwaysSpeculatableImplTrait<Empty>]";
  v6 = 99;
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

const char *llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OffsetSizeAndStrideOpInterface::Trait<Empty>]";
  v6 = 100;
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

const char *llvm::getTypeName<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ViewLikeOpInterface::Trait<Empty>]";
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

uint64_t llvm::SmallVector<long long,4u>::SmallVector<long long,void>(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  if (((8 * a3) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  if (a3)
  {
    memcpy(*a1, a2, 8 * a3);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + v3;
  return a1;
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1);
      v9 = *a2 + 64;
    }

    else
    {
      v10 = *(a1 + 120);
      v11 = __ROR8__(v10 ^ 0xB492B66FBE98F273, 49);
      v12 = v10 ^ (v10 >> 47);
      v13 = *(a1 + 8);
      v14 = v13 + v10 + v11;
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 40);
      v18 = v17 + v11 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v10 - 0x4B6D499041670D8DLL * v10, 42);
      v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
      v20 = 0x9DDFEA08EB382D69 * (v10 ^ (((0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))) ^ v10) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))));
      v21 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
      v22 = 0xB492B66FBE98F273 * __ROR8__(v12 - 0x622015F714C7D297 * (v19 ^ (v19 >> 47)), 33);
      v23 = *a1 - 0x6D8ED9027DD26057 * v10;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v26 = v23 + v13 + v25;
      v27 = v21 ^ (0xB492B66FBE98F273 * __ROR8__(v14, 37));
      v28 = __ROR8__(v26, 44) + v23 + __ROR8__(v23 + v12 + v24 + v27, 21);
      v29 = v22 + *(a1 + 32) + v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = v18;
      *(a1 + 80) = v27;
      *(a1 + 88) = v26 + v24;
      *(a1 + 96) = v28;
      *(a1 + 104) = v17 + v15 + v29 + v16;
      *(a1 + 112) = __ROR8__(v18 + v25 + v16 + v29, 21) + v29 + __ROR8__(v17 + v15 + v29, 44);
      v9 = 64;
    }

    *a2 = v9;
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine(llvm::hashing::detail::hash_combine_recursive_helper *this, uint64_t a2, char *a3, char *a4)
{
  if (a2)
  {
    if (this == a3 || a3 == a4)
    {
      goto LABEL_46;
    }

    if (this + 1 == a3)
    {
      v20 = *this;
      v21 = a4 - a3;
      memmove(this, this + 1, a4 - a3);
      *(this + v21) = v20;
LABEL_46:
      llvm::hashing::detail::hash_state::mix(this + 8, this);
      v49 = 0x9DDFEA08EB382D69 * (*(this + 13) ^ ((0x9DDFEA08EB382D69 * (*(this + 13) ^ *(this + 11))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 13) ^ *(this + 11))));
      v50 = *(this + 14);
      v51 = *(this + 8) - 0x4B6D499041670D8DLL * ((a3 - this + a2) ^ ((a3 - this + a2) >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))))) >> 47));
      v52 = 0x9DDFEA08EB382D69 * (v51 ^ (*(this + 10) - 0x4B6D499041670D8DLL * (*(this + 9) ^ (*(this + 9) >> 47)) - 0x622015F714C7D297 * (v49 ^ (v49 >> 47))));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) ^ ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) >> 47));
    }

    if (a3 + 1 == a4)
    {
      v22 = *(a4 - 1);
      if (a4 - 1 != this)
      {
        memmove(this + 1, this, a4 - 1 - this);
      }

      *this = v22;
      goto LABEL_46;
    }

    v7 = a3 - this;
    v8 = a4 - a3;
    if (a3 - this != a4 - a3)
    {
      v23 = a3 - this;
      do
      {
        v24 = v23;
        v23 = v8;
        v8 = v24 % v8;
      }

      while (v8);
      v25 = (this + v23);
      do
      {
        v27 = *(v25 - 1);
        v25 = (v25 - 1);
        v26 = v27;
        v28 = (v25 + v7);
        v29 = v25;
        do
        {
          v30 = v29;
          v29 = v28;
          *v30 = *v28;
          v31 = (a4 - v28);
          v32 = __OFSUB__(v7, v31);
          v34 = v7 - v31;
          v33 = (v34 < 0) ^ v32;
          v28 = (this + v34);
          if (v33)
          {
            v28 = (v29 + v7);
          }
        }

        while (v28 != v25);
        *v29 = v26;
      }

      while (v25 != this);
      goto LABEL_46;
    }

    v9 = &a4[~a3];
    v10 = &a3[~this];
    if (v9 >= v10)
    {
      v11 = &a3[~this];
    }

    else
    {
      v11 = &a4[~a3];
    }

    v12 = (v11 + 1);
    v13 = a3;
    v14 = this;
    if (v12 >= 8)
    {
      if (v9 >= v10)
      {
        v9 = &a3[~this];
      }

      v15 = v9 + 1;
      if (&v15[a3] <= this || (v13 = a3, v14 = this, &v15[this] <= a3))
      {
        if (v12 >= 0x20)
        {
          v16 = v12 & 0xFFFFFFFFFFFFFFE0;
          v35 = (this + 16);
          v36 = a3 + 16;
          v37 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v38 = *(v35 - 1);
            v39 = *v35;
            v40 = *v36;
            *(v35 - 1) = *(v36 - 1);
            *v35 = v40;
            *(v36 - 1) = v38;
            *v36 = v39;
            v35 += 2;
            v36 += 32;
            v37 -= 32;
          }

          while (v37);
          if (v12 == v16)
          {
            goto LABEL_46;
          }

          if ((v12 & 0x18) == 0)
          {
            v14 = (this + v16);
            v13 = &a3[v16];
            goto LABEL_42;
          }
        }

        else
        {
          v16 = 0;
        }

        v13 = &a3[v12 & 0xFFFFFFFFFFFFFFF8];
        v14 = (this + (v12 & 0xFFFFFFFFFFFFFFF8));
        v41 = (this + v16);
        v42 = &a3[v16];
        v43 = v16 - (v12 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v44 = *v41;
          *v41++ = *v42;
          *v42 = v44;
          v42 += 8;
          v43 += 8;
        }

        while (v43);
        if (v12 == (v12 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_46;
        }
      }
    }

LABEL_42:
    v45 = v13 + 1;
    v46 = v14 + 1;
    do
    {
      v47 = *(v46 - 1);
      *(v46 - 1) = *(v45 - 1);
      *(v45 - 1) = v47;
      if (v46 == a3)
      {
        break;
      }

      ++v46;
    }

    while (v45++ != a4);
    goto LABEL_46;
  }

  v17 = a3 - this;
  v18 = *(this + 15);

  return llvm::hashing::detail::hash_short(this, v17, v18);
}

uint64_t mlir::InFlightDiagnostic::InFlightDiagnostic(uint64_t a1, mlir::InFlightDiagnostic *this)
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
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v7, this + 3);
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
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a1 + 184, this + 23);
    }

    *v5 = 1;
    if (*(this + 200))
    {
      mlir::Diagnostic::~Diagnostic((this + 8));
      *(this + 200) = 0;
    }
  }

  mlir::InFlightDiagnostic::abandon(this);
  return a1;
}

uint64_t llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 == a2 + 2)
    {
      v6 = a2 + 1;
      v7 = *(a2 + 2);
      v8 = *(result + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          v9 = result;
          memmove(*result, *a2, 24 * v7);
          result = v9;
        }

        *(result + 8) = v7;
      }

      else
      {
        if (*(result + 12) < v7)
        {
          *(result + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = result;
        if (v8)
        {
          v11 = a2;
          memmove(*result, *a2, 24 * v8);
          a2 = v11;
        }

        else
        {
          v8 = 0;
        }

        v12 = *v6 - v8;
        if (v12)
        {
          memcpy((*v10 + 24 * v8), *a2 + 24 * v8, 24 * v12);
        }

        result = v10;
        *(v10 + 8) = v7;
      }
    }

    else
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
    }

    *v6 = 0;
  }

  return result;
}

BOOL mlir::AsmParser::parseType<mlir::BaseMemRefType>(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 536))(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v5 = v20;
  v6 = *(*v20 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v18 = "invalid kind of type specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v4, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL mlir::AsmParser::parseType<mlir::MemRefType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
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
      result = v7;
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
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::StringAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::AsmParser::parseInteger<int>(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<int>(int &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
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
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
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
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
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

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<int>(int &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, int *a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v28 = 1;
  v27 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v10 = BYTE1(v7);
    goto LABEL_39;
  }

  llvm::APInt::sextOrTrunc(&v27, 0x20u, &v29);
  v8 = v30;
  if (v30 >= 0x41)
  {
    v11 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v29);
    v12 = v29;
    if (v11 <= 0x40)
    {
      *a2 = *v29;
    }

    else
    {
      v9 = -1;
      *a2 = -1;
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    MEMORY[0x259C63150]();
    v9 = *a2;
  }

  else
  {
    v9 = v29;
    *a2 = v29;
  }

LABEL_10:
  v13 = v9;
  v30 = v28;
  if (v28 > 0x40)
  {
    llvm::APInt::initSlowCase(&v29);
  }

  v14 = 0xFFFFFFFFFFFFFFFFLL >> -v28;
  if (!v28)
  {
    v14 = 0;
  }

  v29 = (v14 & v13);
  if (v29 == v27)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v25 = "integer value too large";
    v26 = 259;
    (*(*a1 + 24))(&v29, a1, v6, &v25);
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v36;
        v17 = __p;
        if (v36 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v36 = v15;
        operator delete(v17);
      }

      v18 = v33;
      if (v33)
      {
        v19 = v34;
        v20 = v33;
        if (v34 != v33)
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
          v20 = v33;
        }

        v34 = v18;
        operator delete(v20);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    LOBYTE(v7) = 0;
  }

  v10 = 1;
LABEL_39:
  if (v28 >= 0x41 && v27)
  {
    v23 = v7;
    MEMORY[0x259C63150](v27, 0x1000C8000313F17);
    LOBYTE(v7) = v23;
  }

  return v7 | (v10 << 8);
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::StringAttr]";
  *(&v28 + 1) = 66;
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

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::CoreMLDialect(mlir::ODIE::Compiler::CoreML::CoreMLDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "coreml", 6, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id);
  *v2 = &unk_28685E648;
  *(v2 + 12) = 3;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::initialize(v2);
}

{
  v2 = mlir::Dialect::Dialect(this, "coreml", 6, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id);
  *v2 = &unk_28685E648;
  *(v2 + 12) = 3;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::initialize(v2);
}

void sub_25649A310()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 24))(a1, "coreml", 6);
  if (v4)
  {
    v5 = *(result + 8);
    *a2 = &unk_28685E6E0;
    a2[1] = v5;
  }

  else
  {
    *a2 = &unk_28685E6E0;
    a2[1] = 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::matchSymbolRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v17);
  Value = mlir::StringAttr::getValue(&RootReference);
  v6 = *(a2 + 8);
  if (v7 != v6)
  {
    return 0;
  }

  if (v6 && memcmp(Value, *a2, v6))
  {
    return 0;
  }

  NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v17);
  result = 1;
  if (v9 && a3 != 1)
  {
    v11 = a2 + 16 * a3;
    v12 = a2 + 16;
    v13 = 8 * v9 - 8;
    while (1)
    {
      RootReference = mlir::SymbolRefAttr::getRootReference(NestedReferences);
      v14 = mlir::StringAttr::getValue(&RootReference);
      v15 = *(v12 + 8);
      if (v16 != v15 || v15 && memcmp(v14, *v12, v15))
      {
        break;
      }

      result = 1;
      if (v13)
      {
        NestedReferences = (NestedReferences + 8);
        v12 += 16;
        v13 -= 8;
        if (v12 != v11)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::flattenSymbolRef(uint64_t a1)
{
  v33 = a1;
  if (!a1)
  {
    mlir::ODIE::Compiler::CoreML::flattenSymbolRef();
  }

  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_2868A3EF8;
  v30 = v31;
  llvm::raw_ostream::SetBufferAndMode(&v23, 0, 0, 0);
  v21[0] = mlir::SymbolRefAttr::getRootReference(&v33);
  Value = mlir::StringAttr::getValue(v21);
  v3 = v1;
  if (v1 <= v26 - v27)
  {
    if (v1)
    {
      memcpy(v27, Value, v1);
      v27 += v3;
    }
  }

  else
  {
    llvm::raw_ostream::write(&v23, Value, v1);
  }

  mlir::SymbolRefAttr::getNestedReferences(&v33);
  if (v4)
  {
    if (v26 == v27)
    {
      llvm::raw_ostream::write(&v23, "_", 1uLL);
      NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v33);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v27++ = 95;
      NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v33);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    v7 = NestedReferences;
    v8 = v6;
    v34 = *NestedReferences;
    v21[0] = mlir::SymbolRefAttr::getRootReference(&v34);
    v10 = mlir::StringAttr::getValue(v21);
    v11 = v9;
    if (v9 <= v26 - v27)
    {
      if (v9)
      {
        memcpy(v27, v10, v9);
        v27 += v11;
      }
    }

    else
    {
      llvm::raw_ostream::write(&v23, v10, v9);
    }

    if (v8 != 1)
    {
      v16 = v7 + 1;
      v17 = 8 * v8 - 8;
      do
      {
        if (v26 == v27)
        {
          llvm::raw_ostream::write(&v23, "_", 1uLL);
        }

        else
        {
          *v27++ = 95;
        }

        v34 = *v16;
        v21[0] = mlir::SymbolRefAttr::getRootReference(&v34);
        v19 = mlir::StringAttr::getValue(v21);
        v20 = v18;
        if (v18 > v26 - v27)
        {
          llvm::raw_ostream::write(&v23, v19, v18);
        }

        else if (v18)
        {
          memcpy(v27, v19, v18);
          v27 += v20;
        }

        ++v16;
        v17 -= 8;
      }

      while (v17);
    }
  }

LABEL_16:
  Context = mlir::Attribute::getContext(&v33);
  v22 = 260;
  v21[0] = v31;
  v14 = mlir::StringAttr::get(Context, v21, v13);
  llvm::raw_ostream::~raw_ostream(&v23);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  return v14;
}

void mlir::Dialect::addInterfaces<mlir::ODIE::Compiler::CoreML::CoreInlinerInterface,mlir::ODIE::Compiler::CoreML::CoreMLBytecodeInterface>()
{
  operator new();
}

{
  {
    v0 = llvm::getTypeName<mlir::DialectInlinerInterface>();
    mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::BytecodeDialectInterface>();
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void *mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
  v23[0] = result;
  v23[1] = v10;
  if (result)
  {
    if (mlir::TypedAttr::getType(v23) == a4)
    {
      if (a3)
      {
        v11 = *a3;
        {
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
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
          goto LABEL_19;
        }
      }

LABEL_18:
      v21 = 0;
LABEL_19:
      v22[0] = a3;
      v22[1] = v21;
      return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(a2, a5, &v24, v22);
    }

    return 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v17, *a3, *a4, a4[1]);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *mlir::ODIE::Compiler::CoreML::createElementsAttr(void (*a1)(std::string *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, size_t a6)
{
  v172 = *MEMORY[0x277D85DE8];
  *&v146 = a3;
  *(&v146 + 1) = a4;
  v161.__r_.__value_.__r.__words[0] = mlir::ShapedType::getElementType(&v146);
  if (mlir::Type::getIntOrFloatBitWidth(&v161) > 7)
  {
    v10 = 0;
    Shape = mlir::ShapedType::getShape(&v146);
    if (mlir::ShapedType::getNumElements(Shape, v14) > 255)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v161.__r_.__value_.__r.__words[0] = mlir::ShapedType::getElementType(&v146);
    v10 = mlir::Type::getIntOrFloatBitWidth(&v161) != 1;
    v11 = mlir::ShapedType::getShape(&v146);
    if (mlir::ShapedType::getNumElements(v11, v12) > 255)
    {
LABEL_8:
      v161.__r_.__value_.__r.__words[0] = mlir::Type::getContext(&v146);
      Dialect = mlir::MLIRContext::getOrLoadDialect(v161.__r_.__value_.__l.__data_, "builtin", 7, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::BuiltinDialect * mlir::MLIRContext::getOrLoadDialect<mlir::BuiltinDialect>(void)::{lambda(void)#1}>, &v161);
      v17 = *(mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>(Dialect) + 24);
      v18 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a5, a5 + a6);
      std::to_string(&v161, v18);
      v19 = std::string::insert(&v161, 0, "resource_");
      v20 = v19->__r_.__value_.__r.__words[2];
      *v144 = *&v19->__r_.__value_.__l.__data_;
      v145 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v161.__r_.__value_.__l.__data_);
      }

      if (v145 >= 0)
      {
        v21 = v144;
      }

      else
      {
        v21 = v144[0];
      }

      if (v145 >= 0)
      {
        v22 = SHIBYTE(v145);
      }

      else
      {
        v22 = v144[1];
      }

      v23 = mlir::DialectResourceBlobManager::lookup(v17, v21, v22);
      if (v23)
      {
        v24 = v23;
        Context = mlir::Type::getContext(&v146);
        LoadedDialect = mlir::MLIRContext::getLoadedDialect(Context, "builtin", 7);
        v28 = *(&v146 + 1);
        v27 = v146;
        {
          v128 = v27;
          v129 = v28;
          mlir::ODIE::Compiler::CoreML::createElementsAttr();
          v28 = v129;
          v27 = v128;
        }

        v161.__r_.__value_.__r.__words[0] = v24;
        v161.__r_.__value_.__l.__size_ = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id;
        v161.__r_.__value_.__r.__words[2] = LoadedDialect;
        result = mlir::DenseResourceElementsAttr::get(v27, v28, &v161);
        if (!result)
        {
          goto LABEL_246;
        }

        v30 = *result;
        {
          v31 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v32 = *(v30 + 8);
          v33 = *(v30 + 16);
          if (v33)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v130 = result;
          mlir::ODIE::Compiler::CoreML::createElementsAttr();
          result = v130;
          v31 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v32 = *(v30 + 8);
          v33 = *(v30 + 16);
          if (v33)
          {
LABEL_22:
            v34 = v32;
            v35 = v33;
            do
            {
              v36 = v35 >> 1;
              v37 = &v34[2 * (v35 >> 1)];
              v39 = *v37;
              v38 = v37 + 2;
              v35 += ~(v35 >> 1);
              if (v39 < v31)
              {
                v34 = v38;
              }

              else
              {
                v35 = v36;
              }
            }

            while (v35);
          }
        }

LABEL_246:
        if (SHIBYTE(v145) < 0)
        {
          v143 = result;
          operator delete(v144[0]);
          return v143;
        }

        return result;
      }

      v40 = getpagesize();
      if ((v40 & 0x80000000) != 0)
      {
        a1(&v161, a2);
        if (v161.__r_.__value_.__r.__words[0])
        {
          LODWORD(v154) = 3;
          *(&v154 + 1) = "could not get the page size of the current system";
          v155 = 49;
          if (v163 >= v164)
          {
            if (v162 > &v154 || v162 + 24 * v163 <= &v154)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v63 = v162 + 24 * v163;
          v64 = v154;
          *(v63 + 2) = v155;
          *v63 = v64;
          ++v163;
          LOBYTE(v154) = 0;
          v160 = 0;
          if (v161.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v161);
          }
        }

        else
        {
          LOBYTE(v154) = 0;
          v160 = 0;
        }

        if (v171 == 1)
        {
          if (v170 != &v171)
          {
            free(v170);
          }

          v77 = __p;
          if (__p)
          {
            v78 = v169;
            v79 = __p;
            if (v169 != __p)
            {
              do
              {
                v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
              }

              while (v78 != v77);
              v79 = __p;
            }

            v169 = v77;
            operator delete(v79);
          }

          v72 = v166;
          if (!v166)
          {
            goto LABEL_155;
          }

          v80 = v167;
          v74 = v166;
          if (v167 == v166)
          {
            goto LABEL_154;
          }

          do
          {
            v82 = *--v80;
            v81 = v82;
            *v80 = 0;
            if (v82)
            {
              MEMORY[0x259C63150](v81, 0x1000C8077774924);
            }
          }

          while (v80 != v72);
          goto LABEL_153;
        }
      }

      else
      {
        v41 = v40;
        if (v40 > 7)
        {
          v65 = mmap(0, a6, 3, 4098, 0, 0);
          if (v65 == -1)
          {
            a1(&v161, a2);
            if (v161.__r_.__value_.__r.__words[0])
            {
              LODWORD(v154) = 3;
              *(&v154 + 1) = "failed to mmap ";
              v155 = 15;
              if (v163 >= v164)
              {
                if (v162 > &v154 || v162 + 24 * v163 <= &v154)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v83 = v162 + 24 * v163;
              v84 = v154;
              *(v83 + 2) = v155;
              *v83 = v84;
              v85 = ++v163;
              if (v161.__r_.__value_.__r.__words[0])
              {
                LODWORD(v154) = 5;
                *(&v154 + 1) = a6;
                if (v85 >= v164)
                {
                  if (v162 > &v154 || v162 + 24 * v85 <= &v154)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v86 = v162 + 24 * v163;
                v87 = v154;
                *(v86 + 2) = v155;
                *v86 = v87;
                v88 = ++v163;
                if (v161.__r_.__value_.__r.__words[0])
                {
                  LODWORD(v154) = 3;
                  *(&v154 + 1) = " bytes: ";
                  v155 = 8;
                  if (v88 >= v164)
                  {
                    if (v162 > &v154 || v162 + 24 * v88 <= &v154)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v89 = v162 + 24 * v163;
                  v90 = v154;
                  *(v89 + 2) = v155;
                  *v89 = v90;
                  ++v163;
                }
              }
            }

            v91 = __error();
            v92 = strerror(*v91);
            if (v161.__r_.__value_.__r.__words[0])
            {
              v93 = v92;
              if (v92)
              {
                v94 = strlen(v92);
              }

              else
              {
                v94 = 0;
              }

              LODWORD(v154) = 3;
              *(&v154 + 1) = v93;
              v155 = v94;
              if (v163 >= v164)
              {
                if (v162 > &v154 || v162 + 24 * v163 <= &v154)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v101 = v162 + 24 * v163;
              v102 = v154;
              *(v101 + 2) = v155;
              *v101 = v102;
              ++v163;
              LOBYTE(v154) = 0;
              v160 = 0;
              if (v161.__r_.__value_.__r.__words[0])
              {
                mlir::InFlightDiagnostic::report(&v161);
              }
            }

            else
            {
              LOBYTE(v154) = 0;
              v160 = 0;
            }

            if (v171 == 1)
            {
              if (v170 != &v171)
              {
                free(v170);
              }

              v103 = __p;
              if (__p)
              {
                v104 = v169;
                v105 = __p;
                if (v169 != __p)
                {
                  do
                  {
                    v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
                  }

                  while (v104 != v103);
                  v105 = __p;
                }

                v169 = v103;
                operator delete(v105);
              }

              v72 = v166;
              if (!v166)
              {
                goto LABEL_155;
              }

              v106 = v167;
              v74 = v166;
              if (v167 == v166)
              {
                goto LABEL_154;
              }

              do
              {
                v108 = *--v106;
                v107 = v108;
                *v106 = 0;
                if (v108)
                {
                  MEMORY[0x259C63150](v107, 0x1000C8077774924);
                }
              }

              while (v106 != v72);
              goto LABEL_153;
            }
          }

          else
          {
            v66 = v65;
            if (a6)
            {
              memmove(v65, a5, a6);
            }

            if (!mprotect(v66, a6, 1))
            {
              *&v154 = v66;
              *(&v154 + 1) = a6;
              v158 = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<void (*)(void *,unsigned long,unsigned long),void (*)(void *,unsigned long,unsigned long),void>::Callbacks + 2;
              v155 = v41;
              v159 = 0;
              v160 = 1;
              goto LABEL_157;
            }

            a1(&v161, a2);
            if (v161.__r_.__value_.__r.__words[0])
            {
              LODWORD(v154) = 3;
              *(&v154 + 1) = "failed to mprotect the data to read-only";
              v155 = 40;
              if (v163 >= v164)
              {
                if (v162 > &v154 || v162 + 24 * v163 <= &v154)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v67 = v162 + 24 * v163;
              v68 = v154;
              *(v67 + 2) = v155;
              *v67 = v68;
              ++v163;
              LOBYTE(v154) = 0;
              v160 = 0;
              if (v161.__r_.__value_.__r.__words[0])
              {
                mlir::InFlightDiagnostic::report(&v161);
              }
            }

            else
            {
              LOBYTE(v154) = 0;
              v160 = 0;
            }

            if (v171 == 1)
            {
              if (v170 != &v171)
              {
                free(v170);
              }

              v95 = __p;
              if (__p)
              {
                v96 = v169;
                v97 = __p;
                if (v169 != __p)
                {
                  do
                  {
                    v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
                  }

                  while (v96 != v95);
                  v97 = __p;
                }

                v169 = v95;
                operator delete(v97);
              }

              v72 = v166;
              if (!v166)
              {
                goto LABEL_155;
              }

              v98 = v167;
              v74 = v166;
              if (v167 == v166)
              {
                goto LABEL_154;
              }

              do
              {
                v100 = *--v98;
                v99 = v100;
                *v98 = 0;
                if (v100)
                {
                  MEMORY[0x259C63150](v99, 0x1000C8077774924);
                }
              }

              while (v98 != v72);
              goto LABEL_153;
            }
          }
        }

        else
        {
          a1(&v161, a2);
          if (!v161.__r_.__value_.__r.__words[0])
          {
            goto LABEL_72;
          }

          LODWORD(v154) = 3;
          *(&v154 + 1) = "align: ";
          v155 = 7;
          if (v163 >= v164)
          {
            if (v162 > &v154 || v162 + 24 * v163 <= &v154)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v42 = v162 + 24 * v163;
          v43 = v154;
          *(v42 + 2) = v155;
          *v42 = v43;
          v44 = ++v163;
          if (!v161.__r_.__value_.__r.__words[0])
          {
            goto LABEL_72;
          }

          LODWORD(v154) = 5;
          *(&v154 + 1) = 8;
          if (v44 >= v164)
          {
            if (v162 > &v154 || v162 + 24 * v44 <= &v154)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v45 = v162 + 24 * v163;
          v46 = v154;
          *(v45 + 2) = v155;
          *v45 = v46;
          v47 = ++v163;
          if (!v161.__r_.__value_.__r.__words[0])
          {
            goto LABEL_72;
          }

          LODWORD(v154) = 3;
          *(&v154 + 1) = " was greater than page size: ";
          v155 = 29;
          if (v47 >= v164)
          {
            if (v162 > &v154 || v162 + 24 * v47 <= &v154)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v162 + 24 * v163;
          v49 = v154;
          *(v48 + 2) = v155;
          *v48 = v49;
          v50 = ++v163;
          if (v161.__r_.__value_.__r.__words[0])
          {
            LODWORD(v154) = 2;
            *(&v154 + 1) = v41;
            if (v50 >= v164)
            {
              if (v162 > &v154 || v162 + 24 * v50 <= &v154)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v51 = v162 + 24 * v163;
            v52 = v154;
            *(v51 + 2) = v155;
            *v51 = v52;
            ++v163;
            LOBYTE(v154) = 0;
            v160 = 0;
            if (v161.__r_.__value_.__r.__words[0])
            {
              mlir::InFlightDiagnostic::report(&v161);
            }
          }

          else
          {
LABEL_72:
            LOBYTE(v154) = 0;
            v160 = 0;
          }

          if (v171 == 1)
          {
            if (v170 != &v171)
            {
              free(v170);
            }

            v69 = __p;
            if (__p)
            {
              v70 = v169;
              v71 = __p;
              if (v169 != __p)
              {
                do
                {
                  v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
                }

                while (v70 != v69);
                v71 = __p;
              }

              v169 = v69;
              operator delete(v71);
            }

            v72 = v166;
            if (!v166)
            {
              goto LABEL_155;
            }

            v73 = v167;
            v74 = v166;
            if (v167 == v166)
            {
LABEL_154:
              v167 = v72;
              operator delete(v74);
LABEL_155:
              if (v162 != v165)
              {
                free(v162);
              }

              goto LABEL_157;
            }

            do
            {
              v76 = *--v73;
              v75 = v76;
              *v73 = 0;
              if (v76)
              {
                MEMORY[0x259C63150](v75, 0x1000C8077774924);
              }
            }

            while (v73 != v72);
LABEL_153:
            v74 = v166;
            goto LABEL_154;
          }
        }
      }

LABEL_157:
      if (v160 != 1)
      {
        v113 = 0;
        result = 0;
        goto LABEL_233;
      }

      v110 = *(&v146 + 1);
      v109 = v146;
      if (v145 >= 0)
      {
        v111 = v144;
      }

      else
      {
        v111 = v144[0];
      }

      if (v145 >= 0)
      {
        v112 = SHIBYTE(v145);
      }

      else
      {
        v112 = v144[1];
      }

      v148 = v154;
      v149 = v155;
      v152 = v158;
      if (v158 >= 8)
      {
        if ((v158 & 2) != 0 && (v158 & 4) != 0)
        {
          v114 = *(&v146 + 1);
          v115 = v146;
          v116 = v111;
          v117 = v112;
          (*((v158 & 0xFFFFFFFFFFFFFFF8) + 8))(&v150, &v156);
          (*((v152 & 0xFFFFFFFFFFFFFFF8) + 16))(&v156);
          v112 = v117;
          v111 = v116;
          v110 = v114;
          v109 = v115;
        }

        else
        {
          v150 = v156;
          v151 = v157;
        }

        v158 = 0;
      }

      v153 = v159;
      result = mlir::DenseResourceElementsAttr::get(v109, v110, v111, v112, &v148);
      if (!result)
      {
        goto LABEL_220;
      }

      v118 = *result;
      {
        v119 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v120 = *(v118 + 8);
        v121 = *(v118 + 16);
        if (!v121)
        {
          goto LABEL_220;
        }
      }

      else
      {
        v131 = result;
        mlir::ODIE::Compiler::CoreML::createElementsAttr();
        result = v131;
        v119 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v120 = *(v118 + 8);
        v121 = *(v118 + 16);
        if (!v121)
        {
          goto LABEL_220;
        }
      }

      v122 = v120;
      v123 = v121;
      do
      {
        v124 = v123 >> 1;
        v125 = &v122[2 * (v123 >> 1)];
        v127 = *v125;
        v126 = v125 + 2;
        v123 += ~(v123 >> 1);
        if (v127 < v119)
        {
          v122 = v126;
        }

        else
        {
          v123 = v124;
        }
      }

      while (v123);
      if (v122 != &v120[2 * v121] && *v122 == v119)
      {
        v113 = v122[1];
        v132 = v152;
        if (v152 >= 8)
        {
          goto LABEL_221;
        }

        goto LABEL_233;
      }

LABEL_220:
      v113 = 0;
      v132 = v152;
      if (v152 >= 8)
      {
LABEL_221:
        v133 = v113;
        v134 = result;
        if ((v132 & 2) != 0)
        {
          v135 = &v150;
        }

        else
        {
          v135 = v150;
        }

        (*(v132 & 0xFFFFFFFFFFFFFFF8))(v135, v148, *(&v148 + 1), v149);
        v136 = v152;
        if (v152 >= 8)
        {
          if ((v152 & 4) != 0)
          {
            if ((v152 & 2) != 0)
            {
              v137 = &v150;
            }

            else
            {
              v137 = v150;
            }

            (*((v152 & 0xFFFFFFFFFFFFFFF8) + 16))(v137);
          }

          if ((v136 & 2) == 0)
          {
            llvm::deallocate_buffer(v150, *(&v150 + 1));
          }
        }

        result = v134;
        v113 = v133;
      }

LABEL_233:
      if (v160 == 1 && v158 >= 8)
      {
        v138 = (v158 & 2) != 0 ? &v156 : v156;
        v139 = result;
        v140 = v113;
        (*(v158 & 0xFFFFFFFFFFFFFFF8))(v138, v154, *(&v154 + 1), v155);
        result = v139;
        v141 = v158;
        if (v158 >= 8)
        {
          if ((v158 & 4) != 0)
          {
            if ((v158 & 2) != 0)
            {
              v142 = &v156;
            }

            else
            {
              v142 = v156;
            }

            (*((v158 & 0xFFFFFFFFFFFFFFF8) + 16))(v142, v140);
            result = v139;
          }

          if ((v141 & 2) == 0)
          {
            llvm::deallocate_buffer(v156, *(&v156 + 1));
          }
        }
      }

      goto LABEL_246;
    }
  }

  if (v10)
  {
    goto LABEL_8;
  }

  *v144 = v146;
  v161.__r_.__value_.__r.__words[0] = mlir::ShapedType::getElementType(v144);
  if (mlir::Type::isInteger(&v161, 1))
  {
    v15 = mlir::DenseElementsAttr::get(v144[0], v144[1], a5, a6);
  }

  else
  {
    v147 = 0;
    if (mlir::DenseElementsAttr::isValidRawBuffer(v144[0], v144[1], a5, a6, &v147))
    {
      v15 = mlir::DenseElementsAttr::getFromRawBuffer(v144[0], v144[1], a5, a6);
    }

    else
    {
      a1(&v161, a2);
      if (v161.__r_.__value_.__r.__words[0])
      {
        LODWORD(v154) = 3;
        *(&v154 + 1) = "invalid raw buffer";
        v155 = 18;
        if (v163 >= v164)
        {
          if (v162 > &v154 || v162 + 24 * v163 <= &v154)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v53 = v162 + 24 * v163;
        v54 = v154;
        *(v53 + 2) = v155;
        *v53 = v54;
        ++v163;
        if (v161.__r_.__value_.__r.__words[0])
        {
          mlir::InFlightDiagnostic::report(&v161);
        }
      }

      if (v171 == 1)
      {
        if (v170 != &v171)
        {
          free(v170);
        }

        v55 = __p;
        if (__p)
        {
          v56 = v169;
          v57 = __p;
          if (v169 != __p)
          {
            do
            {
              v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
            }

            while (v56 != v55);
            v57 = __p;
          }

          v169 = v55;
          operator delete(v57);
        }

        v58 = v166;
        if (v166)
        {
          v59 = v167;
          v60 = v166;
          if (v167 != v166)
          {
            do
            {
              v62 = *--v59;
              v61 = v62;
              *v59 = 0;
              if (v62)
              {
                MEMORY[0x259C63150](v61, 0x1000C8077774924);
              }
            }

            while (v59 != v58);
            v60 = v166;
          }

          v167 = v58;
          operator delete(v60);
        }

        if (v162 != v165)
        {
          free(v162);
        }
      }

      v15 = 0;
    }
  }

  v161.__r_.__value_.__r.__words[0] = v15;
  return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v161);
}

void *mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v15 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v15);
  (*(*a2 + 72))(a2, Value, v7);
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 8250;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ": ", 2uLL);
  }

  (*(*a2 + 32))(a2, *(*this + 16));
  v10 = *(*this + 24);
  if (v10)
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = v11[4];
    if ((v11[3] - v12) > 2)
    {
      *(v12 + 2) = 32;
      *v12 = 15648;
      v11[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v11, " = ", 3uLL);
    }

    (*(*a2 + 48))(a2, v10);
  }

  result = (*(*a2 + 16))(a2);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v14 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  v20 = 0;
  if ((*(*a1 + 152))(a1) & 1) == 0 || (mlir::AsmParser::parseKeywordOrString(a1) & 1) == 0 || ((*(*a1 + 576))(a1, &v20) & 1) == 0 || (v18 = 0, v19 = 0, ((*(*a1 + 144))(a1)) && !mlir::AsmParser::parseAttribute<mlir::TypedAttr>(a1, &v18, v20) || ((*(*a1 + 168))(a1) & 1) == 0)
  {
    result = 0;
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v2 = v18;
  v3 = (*(*a1 + 32))(a1);
  if (!v2)
  {
    v17 = 260;
    v16[0] = __p;
    StringAttr = mlir::Builder::getStringAttr(v3, v16, v4);
    v23 = v20;
    Context = mlir::Type::getContext(&v23);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v24[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
    v24[1] = Context;
    v30[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrERNS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
    v30[1] = v24;
    v27 = StringAttr;
    v28 = v23;
    v29 = 0;
    v10 = (v28 >> 4) ^ (v28 >> 9);
    v11 = 0xB492B66FBE98F273 * ((StringAttr >> 4) ^ (StringAttr >> 9));
    v12 = __ROR8__(v11 - v10, 43) - 0x3C5A37A36834CED9 * v10 - 0x4AA9CCC802B940A1;
    v13 = v11 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA731BLL;
    v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v13)));
    v25[0] = &v27;
    v25[1] = v30;
    v26 = &v27;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v14 >> 47) ^ v14), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v25);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_13:
    v15 = result;
    operator delete(__p[0]);
    return v15;
  }

  v17 = 260;
  v16[0] = __p;
  v5 = mlir::Builder::getStringAttr(v3, v16, v4);
  result = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(v5, v18, v19);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t mlir::AsmParser::parseKeywordOrString(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 432))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 40))(a1);
  v16 = 257;
  (*(*a1 + 24))(v19, a1, v3, v15);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "expected valid keyword or string";
    v18 = 32;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v20 + 24 * v21;
    v5 = v17;
    *(v4 + 2) = v18;
    *v4 = v5;
    ++v21;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }

    v9 = v24;
    if (v24)
    {
      v10 = v25;
      v11 = v24;
      if (v25 != v24)
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
        v11 = v24;
      }

      v25 = v9;
      operator delete(v11);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return v2;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  Context = mlir::Attribute::getContext(v14);
  Type = mlir::TypedAttr::getType(v14);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrENS1_4TypeERNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v19[1] = v15;
  v18[0] = a1;
  v18[1] = Type;
  v18[2] = v14[0];
  v7 = (Type >> 4) ^ (Type >> 9);
  v8 = 0xB492B66FBE98F273 * ((a1 >> 4) ^ (a1 >> 9));
  v9 = 0x9AE16A3B2F90404FLL * ((LODWORD(v14[0]) >> 4) ^ (LODWORD(v14[0]) >> 9));
  v10 = __ROR8__(v7 ^ 0xC949D7C7509E6557, 20);
  v11 = __ROR8__(v8 - v7, 43) - 0x3C5A37A36834CED9 * v7 + __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30);
  v12 = 0x9DDFEA08EB382D69 * ((v8 + v10 - 0xAE502812AA7333 - v9 + 24) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 + v10 - 0xAE502812AA7333 - v9 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 + v10 - 0xAE502812AA7333 - v9 + 24))));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  Context = mlir::Type::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrERNS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v16[1] = v12;
  v15[0] = a1;
  v15[1] = v11;
  v15[2] = 0;
  v5 = (v11 >> 4) ^ (v11 >> 9);
  v6 = 0xB492B66FBE98F273 * ((a1 >> 4) ^ (a1 >> 9));
  v7 = __ROR8__(v6 - v5, 43) - 0x3C5A37A36834CED9 * v5 - 0x4AA9CCC802B940A1;
  v8 = v6 - 0xAE502812AA731BLL + __ROR8__(v5 ^ 0xC949D7C7509E6557, 20);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v8)));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v9 >> 47) ^ v9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void *mlir::ODIE::Compiler::CoreML::ParamRefAttr::print(mlir::ODIE::Compiler::CoreML::ParamRefAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v10 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v10);
  (*(*a2 + 72))(a2, Value, v7);
  result = (*(*a2 + 16))(a2);
  v9 = result[4];
  if (result[3] == v9)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v9 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v18 = 0;
  v19 = a2;
  __p[0] = 0;
  __p[1] = 0;
  if ((*(*a1 + 152))(a1) & 1) != 0 && (mlir::AsmParser::parseKeywordOrString(a1) & 1) != 0 && ((*(*a1 + 168))(a1) & 1) != 0 && (a2 || ((*(*a1 + 576))(a1, &v19)))
  {
    Context = mlir::AsmParser::getContext(a1);
    v5 = (*(*a1 + 32))(a1);
    v16 = 260;
    v15 = __p;
    StringAttr = mlir::Builder::getStringAttr(v5, &v15, v6);
    v8 = v19;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v20[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
    v20[1] = Context;
    v24[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
    v24[1] = v20;
    v23[0] = StringAttr;
    v23[1] = v8;
    v10 = (v8 >> 4) ^ (v8 >> 9);
    v11 = __ROR8__(v10 + 16, 16);
    v12 = 0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ (StringAttr >> 4) ^ (StringAttr >> 9));
    v22 = v23;
    v21[0] = v23;
    v21[1] = v24;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12)))) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = 0;
  if (SHIBYTE(v18) < 0)
  {
LABEL_7:
    v14 = result;
    operator delete(__p[0]);
    return v14;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = (a3 >> 4) ^ (a3 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (a2 >> 4) ^ (a2 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

void *mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(uint64_t a1, uint64_t a2)
{
  if (*(**(a2 + 8) + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = v4[4];
    if (v4[3] == v5)
    {
      llvm::raw_ostream::write(v4, "<", 1uLL);
    }

    else
    {
      *v5 = 60;
      ++v4[4];
    }

    (*(*a1 + 40))(a1, a2);
    goto LABEL_9;
  }

  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 16))(a1);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "<", 1uLL);
    v8 = *(a2 + 32);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *v7 = 60;
    ++v6[4];
    v8 = *(a2 + 32);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v11 = *(a2 + 24);
  mlir::ODIE::Compiler::CoreML::printSingleBinding(a1, *v11, v11[1]);
  if (v8 != 1)
  {
    v12 = &v11[2 * v8];
    v13 = v11 + 2;
    do
    {
      while (1)
      {
        v16 = (*(*a1 + 16))(a1);
        v17 = v16[4];
        if (v16[3] - v17 <= 1uLL)
        {
          break;
        }

        *v17 = 8236;
        v16[4] += 2;
        v14 = *v13;
        v15 = v13[1];
        v13 += 2;
        mlir::ODIE::Compiler::CoreML::printSingleBinding(a1, v14, v15);
        if (v13 == v12)
        {
          goto LABEL_9;
        }
      }

      llvm::raw_ostream::write(v16, ", ", 2uLL);
      v18 = *v13;
      v19 = v13[1];
      v13 += 2;
      mlir::ODIE::Compiler::CoreML::printSingleBinding(a1, v18, v19);
    }

    while (v13 != v12);
  }

LABEL_9:
  result = (*(*a1 + 16))(a1);
  v10 = result[4];
  if (result[3] == v10)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v10 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(uint64_t a1, uint64_t *a2)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v16 = 0;
  if (((*(*a1 + 440))(a1, &v16) & 1) == 0)
  {
    return 0;
  }

  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = v16;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    *a2 = v16;
    return 1;
  }

  v18 = v20;
  v19 = 0x300000000;
  v15[0] = a1;
  v15[1] = &v18;
  if ((*(*a1 + 392))(a1, 7, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(mlir::AsmParser &,mlir::Attribute &,mlir::Type)::$_0>, v15, 0, 0))
  {
    if (v19)
    {
      v5 = (*(*a1 + 32))(a1);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v5);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
      v8 = v18;
      v9 = v19;
      v17 = v4;
      Context = mlir::Attribute::getContext(&v17);
      v11 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v17, SingletonImpl, v8, v9);
    }

    else
    {
      v11 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v4);
    }

    *a2 = v11;
    result = 1;
    v13 = v18;
    if (v18 != v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = 0;
    v13 = v18;
    if (v18 != v20)
    {
LABEL_15:
      v14 = result;
      free(v13);
      return v14;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  v2 = mlir::Attribute::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v2);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_13SymbolRefAttrENS4_10SymbolTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = SingletonImpl;
  v6 = (SingletonImpl >> 4) ^ (SingletonImpl >> 9);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

{
  v11 = a1;
  Context = mlir::Type::getContext(&v11);
  v2 = mlir::TypeAttr::get(v11);
  v3 = mlir::Type::getContext(&v11);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v3);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJNS1_8TypeAttrENS4_8TypeTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v16[1] = v12;
  v15[0] = v2;
  v15[1] = SingletonImpl;
  v7 = (SingletonImpl >> 4) ^ (SingletonImpl >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v2 >> 4) ^ (v2 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(uint64_t (*a1)(), void **a2, _DWORD *a3, uint64_t a4)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  return mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v9, a2, a3, a4);
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::print(mlir::ODIE::Compiler::CoreML::ParamBindAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  (*(*a2 + 48))(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 2)
  {
    *(v7 + 2) = 91;
    *v7 = 8236;
    v6[4] += 3;
    v8 = *this;
    v9 = *(*this + 32);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    llvm::raw_ostream::write(v6, ", [", 3uLL);
    v8 = *this;
    v9 = *(*this + 32);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v10 = *(v8 + 24);
  mlir::ODIE::Compiler::CoreML::printSingleBinding(a2, *v10);
  if (v9 != 1)
  {
    v11 = &v10[2 * v9];
    v12 = v10 + 2;
    do
    {
      while (1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v14[4];
        if (v14[3] - v15 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(v14, ", ", 2uLL);
        v13 = *v12;
        v12 += 2;
        mlir::ODIE::Compiler::CoreML::printSingleBinding(a2, v13);
        if (v12 == v11)
        {
          goto LABEL_13;
        }
      }

      *v15 = 8236;
      v14[4] += 2;
      v16 = *v12;
      v12 += 2;
      mlir::ODIE::Compiler::CoreML::printSingleBinding(a2, v16);
    }

    while (v12 != v11);
  }

LABEL_13:
  result = (*(*a2 + 16))(a2);
  v18 = result[4];
  if (result[3] - v18 > 1uLL)
  {
    *v18 = 15965;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]>", 2uLL);
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(uint64_t a1, void **a2)
{
  v2 = a2;
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v10 = 0;
  v11[0] = a1;
  v11[1] = &v14;
  v12 = a2;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v10, 0) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 392))(a1, 2, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(mlir::AsmParser &,mlir::Type)::$_0>, v11, 0, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    if (v2)
    {
      goto LABEL_9;
    }

    if ((*(*a1 + 576))(a1, &v12))
    {
      v2 = v12;
LABEL_9:
      v4 = v14;
      v5 = v15;
      v13 = v10;
      Context = mlir::Attribute::getContext(&v13);
      v7 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v13, v2, v4, v5);
      v8 = v14;
      if (v14 == v16)
      {
        return v7;
      }

      goto LABEL_12;
    }
  }

  v7 = 0;
  v8 = v14;
  if (v14 != v16)
  {
LABEL_12:
    free(v8);
  }

  return v7;
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(mlir::MLIRContext *a1, uint64_t (*a2)(), void **a3, _DWORD *a4, uint64_t a5)
{
  if (a5)
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
    v46 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
    v47 = a1;
    v55 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJRNS1_9AttributeERNS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS7_;
    v56 = &v46;
    v11 = (a2 >> 4) ^ (a2 >> 9);
    v51 = a2;
    v52 = a3;
    v53 = a4;
    v54 = a5;
    v12 = (a3 >> 4) ^ (a3 >> 9);
    v13 = llvm::hashing::detail::hash_combine_range_impl<mlir::TypedAttr const*>(a4, &a4[4 * a5]);
    v14 = 0xB492B66FBE98F273 * v11 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v13 + 24;
    v15 = (__ROR8__(0xB492B66FBE98F273 * v11 - v12, 43) - 0x3C5A37A36834CED9 * v12 + __ROR8__((0x9AE16A3B2F90404FLL * v13) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v14;
    v16 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * v15) >> 47) ^ (0x9DDFEA08EB382D69 * v15));
    v48 = &v51;
    v49 = &v55;
    v50 = &v51;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v50, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v48);
    if (!result)
    {
      return result;
    }

    v18 = *result;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (!v21)
      {
        return result;
      }
    }

    else
    {
      v43 = result;
      mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
      result = v43;
      v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (!v21)
      {
        return result;
      }
    }

    v22 = v20;
    v23 = v21;
    do
    {
      v24 = v23 >> 1;
      v25 = &v22[2 * (v23 >> 1)];
      v27 = *v25;
      v26 = v25 + 2;
      v23 += ~(v23 >> 1);
      if (v27 < v19)
      {
        v22 = v26;
      }

      else
      {
        v23 = v24;
      }
    }

    while (v23);
  }

  else
  {
    result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
    if (!result)
    {
      v45 = a2;
      Context = mlir::Attribute::getContext(&v45);
      v29 = mlir::MLIRContext::getAttributeUniquer(Context);
      v46 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
      v47 = Context;
      v51 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
      v52 = &v46;
      v55 = v45;
      v56 = a3;
      v30 = (a3 >> 4) ^ (a3 >> 9);
      v31 = __ROR8__(v30 + 16, 16);
      v32 = 0x9DDFEA08EB382D69 * (v31 ^ 0xFF51AFD7ED558CCDLL ^ (v45 >> 4) ^ (v45 >> 9));
      v48 = &v55;
      v49 = &v51;
      v50 = &v55;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(v29, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 32) >> 15) ^ (-348639895 * (v31 ^ (v32 >> 47) ^ v32)))) ^ v30, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v50, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v48);
      if (result)
      {
        v33 = *result;
        {
          v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v35 = *(v33 + 8);
          v36 = *(v33 + 16);
          if (!v36)
          {
            return result;
          }
        }

        else
        {
          v44 = result;
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          result = v44;
          v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v35 = *(v33 + 8);
          v36 = *(v33 + 16);
          if (!v36)
          {
            return result;
          }
        }

        v37 = v35;
        v38 = v36;
        do
        {
          v39 = v38 >> 1;
          v40 = &v37[2 * (v38 >> 1)];
          v42 = *v40;
          v41 = v40 + 2;
          v38 += ~(v38 >> 1);
          if (v42 < v34)
          {
            v37 = v41;
          }

          else
          {
            v38 = v39;
          }
        }

        while (v38);
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

{
  v9[0] = a1;
  v9[1] = a2;
  Context = mlir::Attribute::getContext(v9);
  Type = mlir::TypedAttr::getType(v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9TypedAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v9[0];
  v13[1] = Type;
  v5 = (Type >> 4) ^ (Type >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (LODWORD(v9[0]) >> 4) ^ (LODWORD(v9[0]) >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::getSymbolRef(mlir::ODIE::Compiler::CoreML::ParamBindAttr *this)
{
  result = *(*this + 8);
  v2 = *(*result + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
    {
      return result[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::ParamConstantAttr::print(mlir::ODIE::Compiler::CoreML::ParamConstantAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  (*(*a2 + 48))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = 0;
  v12 = a2;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v11, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    v4 = *(*v11 + 136);
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }

    v10 = v5;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      Value = mlir::TypeAttr::getValue(&v10);
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(Value);
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11);
    }

    v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v11);
    if (v6)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v6, v7);
    }

    if (v2)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11, v2);
    }

    if ((*(*a1 + 576))(a1, &v12))
    {
      v2 = v12;
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11, v2);
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(mlir::ODIE::Compiler::CoreML::TargetSpecAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 9)
  {
    *(v7 + 8) = 8736;
    *v7 = *"triple = ";
    v6[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v6, "triple = ", 0xAuLL);
  }

  v9 = *(*this + 8);
  v8 = *(*this + 16);
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (v8)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if ((v12[3] - v13) > 9)
  {
    *(v13 + 8) = 8736;
    *v13 = *", soc = ";
    v12[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v12, ", soc = ", 0xAuLL);
  }

  v15 = *(*this + 24);
  v14 = *(*this + 32);
  v16 = (*(*a2 + 16))(a2);
  if (v14 <= *(v16 + 24) - *(v16 + 32))
  {
    if (v14)
    {
      v17 = v16;
      memcpy(*(v16 + 32), v15, v14);
      *(v17 + 32) += v14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v16, v15, v14);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if ((v18[3] - v19) > 0x11)
  {
    *(v19 + 16) = 8736;
    *v19 = *", data_layout = ";
    v18[4] += 18;
  }

  else
  {
    llvm::raw_ostream::write(v18, ", data_layout = ", 0x12uLL);
  }

  v21 = *(*this + 40);
  v20 = *(*this + 48);
  v22 = (*(*a2 + 16))(a2);
  if (v20 <= *(v22 + 24) - *(v22 + 32))
  {
    if (v20)
    {
      v23 = v22;
      memcpy(*(v22 + 32), v21, v20);
      *(v23 + 32) += v20;
    }
  }

  else
  {
    llvm::raw_ostream::write(v22, v21, v20);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] - v25 > 0xDuLL)
  {
    qmemcpy(v25, ", delegate = ", 14);
    v24[4] += 14;
    if (*(*this + 56))
    {
      goto LABEL_27;
    }
  }

  else
  {
    llvm::raw_ostream::write(v24, ", delegate = ", 0xEuLL);
    if (*(*this + 56))
    {
LABEL_27:
      (*(*a2 + 40))(a2);
      goto LABEL_32;
    }
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] - v27 > 1uLL)
  {
    *v27 = 32123;
    v26[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "{}", 2uLL);
  }

LABEL_32:
  result = (*(*a2 + 16))(a2);
  v29 = result[4];
  if (result[3] == v29)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v29 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(mlir::AsmParser *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 176))(a1))
  {
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    __p = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
    v17 = Context;
    v19 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJRA1_KcSH_SH_NS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
    p_p = &__p;
    v23 = "";
    v24 = 0;
    v25[0] = "";
    v25[1] = 0;
    v26[1] = 0;
    v27 = 0;
    v26[0] = "";
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    v29 = 0u;
    memset(v28, 0, sizeof(v28));
    v32 = 0;
    v33 = 0xFF51AFD7ED558CCDLL;
    v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(v28, 0, v28, v31, &v23, v25, v26, &v27);
    v22 = &v23;
    *&v28[0] = &v23;
    *(&v28[0] + 1) = &v19;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
  }

  v23 = 0;
  v24 = 0;
  v25[0] = 0;
  v19 = 0;
  p_p = 0;
  v21 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  LOWORD(v29) = 257;
  if ((*(*a1 + 400))(a1, "triple", 6, v28) & 1) != 0 && ((*(*a1 + 136))(a1) & 1) != 0 && (mlir::AsmParser::parseString(a1, &v23) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (LOWORD(v29) = 257, ((*(*a1 + 400))(a1, "soc", 3, v28)) && ((*(*a1 + 136))(a1) & 1) != 0 && (mlir::AsmParser::parseString(a1, &v19) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (LOWORD(v29) = 257, ((*(*a1 + 400))(a1, "data_layout", 11, v28)) && ((*(*a1 + 136))(a1) & 1) != 0 && (mlir::AsmParser::parseString(a1, &__p) & 1) != 0 && (v22 = 0, ((*(*a1 + 120))(a1)) && (LOWORD(v29) = 257, ((*(*a1 + 400))(a1, "delegate", 8, v28)) && ((*(*a1 + 136))(a1) & 1) != 0 && mlir::AsmParser::parseAttribute<mlir::DictionaryAttr>(a1, &v22, 0))
  {
    v6 = mlir::AsmParser::getContext(a1);
    if (v25[0] >= 0)
    {
      v7 = &v23;
    }

    else
    {
      v7 = v23;
    }

    if (v25[0] >= 0)
    {
      v8 = SHIBYTE(v25[0]);
    }

    else
    {
      v8 = v24;
    }

    if (v21 >= 0)
    {
      v9 = &v19;
    }

    else
    {
      v9 = v19;
    }

    if (v21 >= 0)
    {
      v10 = SHIBYTE(v21);
    }

    else
    {
      v10 = p_p;
    }

    if (v18 >= 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p;
    }

    if (v18 >= 0)
    {
      v12 = SHIBYTE(v18);
    }

    else
    {
      v12 = v17;
    }

    result = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(v6, v7, v8, v9, v10, v11, v12, v22);
  }

  else
  {
    result = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    v13 = result;
    operator delete(__p);
    result = v13;
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v25[0]) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_46:
      v15 = result;
      operator delete(v23);
      return v15;
    }
  }

  else if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  v14 = result;
  operator delete(v19);
  result = v14;
  if (SHIBYTE(v25[0]) < 0)
  {
    goto LABEL_46;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(mlir::ODIE::Compiler::CoreML::TargetSpecAttr *this, mlir::MLIRContext *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
  v6[1] = this;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJRA1_KcSH_SH_NS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v12[1] = v6;
  v8[0] = "";
  v8[1] = 0;
  v9[0] = "";
  v9[1] = 0;
  v10[1] = 0;
  v11 = 0;
  v10[0] = "";
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(v13, 0, v13, v14, v8, v9, v10, &v11);
  v7 = v8;
  *&v13[0] = v8;
  *(&v13[0] + 1) = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::AsmParser::parseString(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 264))(a1, a2))
  {
    return 1;
  }

  v15 = "expected string";
  v16 = 259;
  (*(*a1 + 24))(v17, a1, v4, &v15);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
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
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
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
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x259C63150](v12, 0x1000C8077774924);
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

  return v5;
}

BOOL mlir::AsmParser::parseAttribute<mlir::DictionaryAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v19[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
  v19[1] = a1;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJNS_9StringRefESF_SF_NS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v25[1] = v19;
  v21[0] = a2;
  v21[1] = a3;
  v22[0] = a4;
  v22[1] = a5;
  v23[0] = a6;
  v23[1] = a7;
  v24 = a8;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  v28 = 0;
  v29 = 0xFF51AFD7ED558CCDLL;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(v26, 0, v26, v27, v21, v22, v23, &v24);
  v20 = v21;
  *&v26[0] = v21;
  *(&v26[0] + 1) = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v26);
}

void *mlir::ODIE::Compiler::CoreML::ArrayType::print(mlir::ODIE::Compiler::CoreML::ArrayType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (v6)
  {
    v7 = *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6[1];
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v8 = 0;
    }

    v15 = v8;
    if (v9 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      Value = mlir::TypeAttr::getValue(&v15);
      (*(*a2 + 32))(a2, Value);
    }
  }

  else
  {
    (*(*a2 + 40))(a2);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] - v12 > 1uLL)
  {
    *v12 = 8250;
    v11[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, ": ", 2uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  result = (*(*a2 + 16))(a2);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v14 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::ODIE::Compiler::CoreML::ArrayType *this, mlir::AsmParser *a2)
{
  v43 = 0;
  v44 = 0;
  v42 = (*(*this + 40))(this, a2);
  v41[0] = this;
  v41[1] = &v42;
  if (((*(*this + 152))(this) & 1) == 0 || ((*(*this + 440))(this, &v44, 0) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || ((*(*this + 440))(this, &v43, 0) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v3 = v44;
  if (*(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = (*(*this + 32))(this);
    v5 = mlir::Builder::getType<mlir::ODIE::Compiler::CoreML::TypeType>(v4);
    v44 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v3, v5);
  }

  Context = mlir::AsmParser::getContext(this);
  v7 = Context;
  v8 = v44;
  if (!v44)
  {
    goto LABEL_22;
  }

  v9 = *v44;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    v13 = v11;
    goto LABEL_20;
  }

  v37 = v9;
  v39 = Context;
  v35 = v8;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
  v8 = v35;
  v7 = v39;
  v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v11 = *(v37 + 8);
  v12 = *(v37 + 16);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
LABEL_20:
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v20 = v13[1];
    v21 = v43;
    if (!v43)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

LABEL_22:
  v20 = 0;
  v21 = v43;
  if (!v43)
  {
    goto LABEL_37;
  }

LABEL_23:
  v22 = *v21;
  {
    v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_34:
    v25 = 0;
    v26 = v24;
    goto LABEL_35;
  }

  v38 = v20;
  v40 = v7;
  v32 = v8;
  v34 = v21;
  v36 = v22;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
  v21 = v34;
  v20 = v38;
  v7 = v40;
  v8 = v32;
  v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v24 = *(v36 + 8);
  v25 = *(v36 + 16);
  if (!v25)
  {
    goto LABEL_34;
  }

LABEL_25:
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
LABEL_35:
  if (v26 != &v24[2 * v25] && *v26 == v23)
  {
    v33 = v26[1];
    return mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ArrayType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::AsmParser &)::$_0>, v41, v7, v8, v20, v21, v33);
  }

LABEL_37:
  v33 = 0;
  return mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ArrayType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::AsmParser &)::$_0>, v41, v7, v8, v20, v21, v33);
}

uint64_t mlir::Builder::getType<mlir::ODIE::Compiler::CoreML::TypeType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
}

uint64_t mlir::ODIE::Compiler::CoreML::ArrayType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = *MEMORY[0x277D85DE8];
  v33[0] = a3;
  v33[1] = a4;
  v32[0] = a5;
  v32[1] = a6;
  if (*(*mlir::TypedAttr::getType(v33) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (*(*mlir::TypedAttr::getType(v32) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      return 1;
    }

    a1(v36, a2);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      *(&v34 + 1) = "expected a size expression of any integer type, got ";
      v35 = 52;
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v21 = v37 + 24 * v38;
      v22 = v34;
      *(v21 + 2) = v35;
      *v21 = v22;
      ++v38;
      if (v36[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v34, v32[0]);
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
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
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

      v16 = v41;
      if (!v41)
      {
        goto LABEL_47;
      }

      v28 = v42;
      v18 = v41;
      if (v42 == v41)
      {
        goto LABEL_46;
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
      goto LABEL_45;
    }
  }

  else
  {
    a1(v36, a2);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      v35 = 56;
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v37 + 24 * v38;
      v9 = v34;
      *(v8 + 2) = v35;
      *v8 = v9;
      ++v38;
      if (v36[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v34, v33[0]);
        if (v38 >= v39)
        {
          if (v37 > &v34 || v37 + 24 * v38 <= &v34)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v37 + 24 * v38;
        v11 = v34;
        *(v10 + 2) = v35;
        *v10 = v11;
        ++v38;
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v44;
        v15 = __p;
        if (v44 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v44 = v13;
        operator delete(v15);
      }

      v16 = v41;
      if (!v41)
      {
        goto LABEL_47;
      }

      v17 = v42;
      v18 = v41;
      if (v42 == v41)
      {
LABEL_46:
        v42 = v16;
        operator delete(v18);
LABEL_47:
        if (v37 != &v40)
        {
          free(v37);
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
LABEL_45:
      v18 = v41;
      goto LABEL_46;
    }
  }

  return v12;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = a2[1];
    v6 = *(*v5 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v5 = 0;
    }

    v15[0] = v5;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return mlir::TypeAttr::getValue(v15);
    }
  }

  v11 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
  v10[1] = &v11;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v10;
  v14[0] = a2;
  v14[1] = a3;
  v8 = 0x9DDFEA08EB382D69 * ((8 * ((a2 >> 4) ^ (a2 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  *&v24 = a4;
  *(&v24 + 1) = a5;
  if (*(*mlir::TypedAttr::getType(&v24) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (v24)
    {
      v18 = *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_28;
    }

    v19 = *(v24 + 8);
    v20 = *(*v19 + 136);
    if (v20 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v19 = 0;
    }

    v31[0] = v19;
    if (v20 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return mlir::TypeAttr::getValue(v31);
    }

    else
    {
LABEL_28:
      v28 = a3;
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
      v27[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
      v27[1] = &v28;
      v31[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
      v31[1] = v27;
      v25 = v24;
      v22 = 0x9DDFEA08EB382D69 * ((8 * ((v24 >> 4) ^ (v24 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
      v29[0] = &v25;
      v29[1] = v31;
      v30 = &v25;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v22 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
    }
  }

  else
  {
    a1(v31, a2);
    if (v31[0])
    {
      LODWORD(v25) = 3;
      v26 = 46;
      if (v33 >= v34)
      {
        if (v32 > &v25 || v32 + 24 * v33 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v32 + 24 * v33;
      v9 = v25;
      *(v8 + 2) = v26;
      *v8 = v9;
      ++v33;
      if (v31[0])
      {
        mlir::InFlightDiagnostic::report(v31);
      }
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v39;
        v12 = __p;
        if (v39 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v39 = v10;
        operator delete(v12);
      }

      v13 = v36;
      if (v36)
      {
        v14 = v37;
        v15 = v36;
        if (v37 != v36)
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
          v15 = v36;
        }

        v37 = v13;
        operator delete(v15);
      }

      if (v32 != &v35)
      {
        free(v32);
      }
    }

    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v18[0] = a3;
  v18[1] = a4;
  if (*(*mlir::TypedAttr::getType(v18) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    return 1;
  }

  a1(v21, a2);
  if (v21[0])
  {
    LODWORD(v19) = 3;
    v20 = 46;
    if (v23 >= v24)
    {
      if (v22 > &v19 || v22 + 24 * v23 <= &v19)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v22 + 24 * v23;
    v7 = v19;
    *(v6 + 2) = v20;
    *v6 = v7;
    ++v23;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v29;
      v11 = __p;
      if (v29 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v29 = v9;
      operator delete(v11);
    }

    v12 = v26;
    if (v26)
    {
      v13 = v27;
      v14 = v26;
      if (v27 != v26)
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
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != &v25)
    {
      free(v22);
    }
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::SymbolRefType::get(uint64_t ParentOp)
{
  v1 = ParentOp;
  v56[6] = *MEMORY[0x277D85DE8];
  v54 = v56;
  v55 = 0x600000000;
LABEL_18:
  for (i = ParentOp; ; i = 0)
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(i);
    if (!InterfaceFor)
    {
LABEL_6:
      v50 = 0;
      v51 = InterfaceFor;
      goto LABEL_19;
    }

    if (!*(i + 47))
    {
      break;
    }

    InterfaceFor = mlir::Operation::getInherentAttr(i, "sym_name", 8);
    if ((v3 & 1) == 0)
    {
      break;
    }

    if (!InterfaceFor)
    {
      goto LABEL_6;
    }

LABEL_8:
    v4 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(i);
    v50 = i;
    v51 = v4;
    if (!i)
    {
      goto LABEL_19;
    }

    if (!mlir::SymbolOpInterface::getNameAttr(&v50))
    {
      goto LABEL_19;
    }

    v49[0] = mlir::SymbolOpInterface::getNameAttr(&v50);
    mlir::StringAttr::getValue(v49);
    if (!v5)
    {
      goto LABEL_19;
    }

    NameAttr = mlir::SymbolOpInterface::getNameAttr(&v50);
    v7 = mlir::SymbolRefAttr::get(NameAttr);
    if (v55 >= HIDWORD(v55))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *&v54[8 * v55] = v7;
    LODWORD(v55) = v55 + 1;
    v8 = *(v50 + 2);
    if (v8)
    {
      ParentOp = mlir::Block::getParentOp(v8);
      goto LABEL_18;
    }
  }

  if (mlir::DictionaryAttr::contains(i + 56, "sym_name", 8uLL))
  {
    goto LABEL_8;
  }

  v50 = 0;
  v51 = 0;
LABEL_19:
  v10 = v54;
  v11 = v55;
  v50 = v52;
  v51 = 0x600000000;
  if (v55 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v55)
  {
    v12 = &v54[8 * v55];
    v13 = v52;
    v14 = (v55 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v14 < 0x17 || v52 < v12 && v54 < &v52[v55])
    {
      goto LABEL_53;
    }

    v15 = (v14 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v16 = &v12[-8 * v15];
    v17 = &v53;
    v18 = (v12 - 16);
    v19 = v15;
    do
    {
      v20 = vextq_s8(v18[-1], v18[-1], 8uLL);
      v17[-1] = vextq_s8(*v18, *v18, 8uLL);
      *v17 = v20;
      v17 += 2;
      v18 -= 2;
      v19 -= 4;
    }

    while (v19);
    v13 = &v52[v15];
    v12 = v16;
    if (v14 + 1 != v15)
    {
LABEL_53:
      do
      {
        v21 = *(v12 - 1);
        v12 -= 8;
        *v13++ = v21;
      }

      while (v12 != v10);
    }

    v22 = v51;
    v23 = v50;
  }

  else
  {
    v22 = 0;
    v23 = v52;
  }

  LODWORD(v51) = v22 + v11;
  RootReference = mlir::SymbolRefAttr::getRootReference(v23);
  v25 = mlir::SymbolRefAttr::get(RootReference, v50 + 2, v51 - 1);
  Context = mlir::Attribute::getContext((v1 + 24));
  v27 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v25);
  v28 = v27;
  if (!v27)
  {
    goto LABEL_44;
  }

  v29 = *v27;
  {
    mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
    v30 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    if (v32)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  v30 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  if (!v32)
  {
    goto LABEL_44;
  }

LABEL_33:
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
  if (v33 != &v31[2 * v32] && *v33 == v30)
  {
    v39 = v33[1];
  }

  else
  {
LABEL_44:
    v39 = 0;
  }

  v45 = Context;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v44[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v44[1] = &v45;
  v49[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v49[1] = v44;
  v48[0] = v28;
  v48[1] = v39;
  v41 = 0x9DDFEA08EB382D69 * ((8 * ((v28 >> 4) ^ (v28 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v46[0] = v48;
  v46[1] = v49;
  v47 = v48;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v41 ^ (v41 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v41 ^ (v41 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v47, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v46);
  if (v50 != v52)
  {
    free(v50);
  }

  if (v54 != v56)
  {
    free(v54);
  }

  return ParametricStorageTypeImpl;
}

uint64_t mlir::ODIE::Compiler::CoreML::SymbolRefType::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v8[1] = &v9;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v8;
  v12[0] = a2;
  v12[1] = a3;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((a2 >> 4) ^ (a2 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::print(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  v7 = (*v6)[17];
  if (v6)
  {
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (*(*v6[1] + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v6)
    {
      v9 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v6);
      goto LABEL_16;
    }
  }

  (*(*a2 + 40))(a2);
LABEL_16:
  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++result[4];
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmParser *a2)
{
  v11 = 0;
  v3 = (*(*this + 40))(this, a2);
  v9[0] = this;
  v9[1] = &v10;
  v10 = v3;
  if (((*(*this + 152))(this) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v11) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v11);
  if (result)
  {
    v6 = result;
    v7 = v5;
    Context = mlir::AsmParser::getContext(this);
    return mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::TypedAttr>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(mlir::AsmParser &)::$_0>, v9, Context, v6, v7);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SymbolRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v18[0] = a3;
  v18[1] = a4;
  if (*(*mlir::TypedAttr::getType(v18) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  a1(v21, a2);
  if (v21[0])
  {
    LODWORD(v19) = 3;
    v20 = 48;
    if (v23 >= v24)
    {
      if (v22 > &v19 || v22 + 24 * v23 <= &v19)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v22 + 24 * v23;
    v7 = v19;
    *(v6 + 2) = v20;
    *v6 = v7;
    ++v23;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v29;
      v11 = __p;
      if (v29 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v29 = v9;
      operator delete(v11);
    }

    v12 = v26;
    if (v26)
    {
      v13 = v27;
      v14 = v26;
      if (v27 != v26)
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
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != &v25)
    {
      free(v22);
    }
  }

  return v8;
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::getSymbol(mlir::ODIE::Compiler::CoreML::SymbolRefType *this)
{
  v1 = *(*this + 8);
  v2 = *(*v1 + 136);
  if (v1)
  {
    v3 = v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v1 = v1[1];
    v2 = *(*v1 + 136);
    if (v2 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
    {
LABEL_6:
      if (v2 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  else if (v2 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    goto LABEL_6;
  }

  v5 = v1[1];
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>::getChecked<llvm::ArrayRef<mlir::StringAttr>>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, _DWORD *a4, uint64_t a5)
{
  if ((mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::verify(a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id;
  v13[1] = a3;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = a4;
  v16[1] = a5;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a4, &a4[2 * a5]);
  v10 = HIDWORD(v9) ^ 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v9 + 8) ^ v10);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    return 1;
  }

  a1(v18, a2);
  if (v18[0])
  {
    LODWORD(v16) = 3;
    *(&v16 + 1) = "stack trace must not be empty";
    v17 = 29;
    if (v20 >= v21)
    {
      if (v19 > &v16 || v19 + 24 * v20 <= &v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v19 + 24 * v20;
    v6 = v16;
    *(v5 + 2) = v17;
    *v5 = v6;
    ++v20;
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v26;
      v9 = __p;
      if (v26 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v26 = v7;
      operator delete(v9);
    }

    v10 = v23;
    if (v23)
    {
      v11 = v24;
      v12 = v23;
      if (v24 != v23)
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
        v12 = v23;
      }

      v24 = v10;
      operator delete(v12);
    }

    if (v19 != &v22)
    {
      free(v19);
    }
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(mlir::AsmParser *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v35) = 0;
  v38 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_52;
  }

  mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(a1, &v31);
  if (v38 != v34)
  {
    if (v38)
    {
      if (v35 != v37)
      {
        free(v35);
      }

      v38 = 0;
      if (v34 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v35 = v37;
    v36 = 0x600000000;
    v4 = v32;
    if (v32)
    {
      if (v31 == v33)
      {
        if (v32 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v35, v31, 8 * v32);
        LODWORD(v36) = v4;
      }

      else
      {
        v35 = v31;
        v36 = v32;
        v31 = v33;
        HIDWORD(v32) = 0;
      }

      LODWORD(v32) = 0;
    }

    v38 = 1;
LABEL_25:
    if (v34 != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (!v38)
  {
    goto LABEL_25;
  }

  v3 = v31;
  if (v31 != v33)
  {
    if (v35 != v37)
    {
      free(v35);
      v3 = v31;
    }

    v35 = v3;
    v36 = v32;
    v31 = v33;
    v32 = 0;
    if (v34 != 1)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (v31 != v33)
    {
      free(v31);
    }

    goto LABEL_28;
  }

  v5 = v32;
  v6 = v36;
  if (v36 >= v32)
  {
    if (v32)
    {
      memmove(v35, v31, 8 * v32);
    }
  }

  else
  {
    if (HIDWORD(v36) < v32)
    {
      LODWORD(v36) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v36)
    {
      memmove(v35, v31, 8 * v36);
    }

    else
    {
      v6 = 0;
    }

    v20 = v32 - v6;
    if (v20)
    {
      memcpy(&v35[8 * v6], &v31[8 * v6], 8 * v20);
    }
  }

  LODWORD(v36) = v5;
  LODWORD(v32) = 0;
  if (v34 == 1)
  {
    goto LABEL_26;
  }

LABEL_28:
  v7 = *a1;
  if ((v38 & 1) == 0)
  {
    v10 = (*(v7 + 40))(a1);
    v33[8] = 259;
    (*(*a1 + 24))(v22, a1, v10, &v31);
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

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
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
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x259C63150](v17, 0x1000C8077774924);
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

LABEL_52:
    result = 0;
    if (v38 != 1)
    {
      return result;
    }

    goto LABEL_53;
  }

  if (((*(v7 + 296))(a1) & 1) == 0)
  {
    goto LABEL_52;
  }

  Context = mlir::AsmParser::getContext(a1);
  v21 = v2;
  v31 = a1;
  v32 = &v21;
  result = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>::getChecked<llvm::ArrayRef<mlir::StringAttr>>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrEJPNS1_11MLIRContextENS_8ArrayRefINS1_10StringAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v31, Context, v35, v36);
  if (v38 != 1)
  {
    return result;
  }

LABEL_53:
  if (v35 != v37)
  {
    v19 = result;
    free(v35);
    return v19;
  }

  return result;
}

void mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src = v9;
  v8 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v8;
  v4 = 1;
  if (!v8 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v9)
  {
    if (v8 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a2, __src, 8 * v8);
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v8);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v9;
    HIDWORD(v8) = 0;
  }

  LODWORD(v8) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v9)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v5 = 40;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v8 = *(v6 + 8);
  (*(*a2 + 40))(a2, *v8);
  if (v7 != 1)
  {
    v11 = v8 + 1;
    v12 = 8 * v7 - 8;
    do
    {
      v14 = (*(*a2 + 16))(a2);
      v15 = v14[4];
      if (v14[3] - v15 <= 1uLL)
      {
        llvm::raw_ostream::write(v14, ", ", 2uLL);
      }

      else
      {
        *v15 = 8236;
        v14[4] += 2;
      }

      v13 = *v11++;
      (*(*a2 + 40))(a2, v13);
      v12 -= 8;
    }

    while (v12);
  }

LABEL_6:
  result = (*(*a2 + 16))(a2);
  v10 = result[4];
  if (result[3] == v10)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  v11[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS3_20ODIXSerializableAttrEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v17[1] = v11;
  v13 = a2;
  v14 = a3;
  v15 = *a4;
  v16 = *(a4 + 2);
  memset(v19, 0, sizeof(v19));
  v20 = 0xFF51AFD7ED558CCDLL;
  v18 = ((a2 >> 4) ^ (a2 >> 9));
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(&v18, 0, v19, &v19[3] + 8, &v14, &v15);
  v12 = &v13;
  v18 = &v13;
  *&v19[0] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(mlir::StringAttr *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x277D85DE8];
  v19 = a2;
  Value = mlir::StringAttr::getValue(&v19);
  v27 = mlir::FileLineColLoc::get(a1, Value, v14, a3, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  v20[1] = a1;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS3_20ODIXSerializableAttrEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v26[1] = v20;
  v22 = a4;
  v23 = a5;
  v24[0] = a6;
  v24[1] = a7;
  v25 = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0xFF51AFD7ED558CCDLL;
  v28 = ((a4 >> 4) ^ (a4 >> 9));
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(&v28, 0, v29, &v29[3] + 8, &v23, v24);
  v21 = &v22;
  v28 = &v22;
  *&v29[0] = v26;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v28);
  return mlir::FusedLoc::get(a1, &v27, 1, ParametricStorageTypeImpl);
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(mlir::StringAttr *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Value = mlir::StringAttr::getValue(&v15);
  v22 = mlir::FileLineColLoc::get(a1, Value, v10, a3, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  v16[1] = a1;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS3_20ODIXSerializableAttrEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v21[1] = v16;
  v18 = a4;
  v19 = a5;
  v20[0] = 0;
  v20[16] = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0xFF51AFD7ED558CCDLL;
  v23 = ((a4 >> 4) ^ (a4 >> 9));
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(&v23, 0, v24, &v24[3] + 8, &v19, v20);
  v17 = &v18;
  v23 = &v18;
  *&v24[0] = v21;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id, v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v23);
  return mlir::FusedLoc::get(a1, &v22, 1, ParametricStorageTypeImpl);
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(mlir::AsmParser *a1)
{
  v45[2] = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 280))(a1))
  {
    v32 = 257;
    if ((*(*a1 + 400))(a1, "method", 6, &v29) & 1) != 0 && ((*(*a1 + 136))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7uLL);
      *&v29 = 0;
      v4 = mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v29, 0);
      v5 = *a1;
      if (!v4)
      {
        v14 = (*(v5 + 40))(a1);
        v32 = 259;
        (*(*a1 + 24))(v36, a1, v14, &v29);
        if (v36[0])
        {
          mlir::InFlightDiagnostic::report(v36);
        }

        if (v44 == 1)
        {
          if (v43 != &v44)
          {
            free(v43);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v42;
            v17 = __p;
            if (v42 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v42 = v15;
            operator delete(v17);
          }

          v18 = v39;
          if (v39)
          {
            v19 = v40;
            v20 = v39;
            if (v40 != v39)
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
              v20 = v39;
            }

            v40 = v18;
            operator delete(v20);
          }

          if (v37 != &v38)
          {
            free(v37);
          }
        }

        return 0;
      }

      v6 = v29;
      if ((*(v5 + 120))(a1))
      {
        v32 = 257;
        if ((*(*a1 + 400))(a1, "codeSnippet", 11, &v29) & 1) != 0 && ((*(*a1 + 136))(a1))
        {
          v7 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          v8 = *a1;
          if (v9)
          {
            v10 = v7;
            if (((*(v8 + 120))(a1) & 1) == 0)
            {
              return 0;
            }

            v32 = 257;
            if (((*(*a1 + 400))(a1, "frontendAttribute", 17, &v29) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
            {
              return 0;
            }

            v29 = 0uLL;
            v11 = (*(*a1 + 456))(a1, &v29, 0);
            if ((v11 & 0x100) != 0)
            {
              if (v11)
              {
                v12 = v29;
                v34[0] = *(&v29 + 1);
                *(v34 + 7) = *(&v29 + 1);
                v13 = 1;
                v1 = 1;
              }

              else
              {
                v13 = 0;
                v12 = 0;
              }
            }

            else
            {
              v1 = 0;
              v12 = 0;
              v13 = 1;
            }

            v45[0] = v34[0];
            *(v45 + 7) = *(v34 + 7);
            v26 = *a1;
            if (v13)
            {
              if ((*(v26 + 296))(a1))
              {
                v27 = mlir::AsmParser::getContext(a1);
                LOBYTE(v29) = v12;
                *(&v29 + 1) = v45[0];
                *(&v29 + 1) = *(v45 + 7);
                v30 = v1;
                v31[0] = v34[0];
                *(v31 + 3) = *(v34 + 3);
                return mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(v27, v6, v10, &v29);
              }

              return 0;
            }

            v28 = (*(v26 + 40))(a1);
            v32 = 259;
            (*(*a1 + 24))(v33, a1, v28, &v29);
            v25 = v33;
          }

          else
          {
            v24 = (*(v8 + 40))(a1);
            v32 = 259;
            (*(*a1 + 24))(v35, a1, v24, &v29);
            v25 = v35;
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        }
      }
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 25711;
    *v7 = 1752458605;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "method", 6uLL);
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

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++v10[4];
  }

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

  (*(*a2 + 40))(a2, *(*this + 8));
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
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
  if ((v18[3] - v19) > 0xA)
  {
    *(v19 + 7) = 1952804976;
    *v19 = *"codeSnippet";
    v18[4] += 11;
  }

  else
  {
    llvm::raw_ostream::write(v18, "codeSnippet", 0xBuLL);
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

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "=", 1uLL);
  }

  else
  {
    *v23 = 61;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++v26[4];
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 0x10)
  {
    *(v31 + 16) = 101;
    *v31 = *"frontendAttribute";
    v30[4] += 17;
  }

  else
  {
    llvm::raw_ostream::write(v30, "frontendAttribute", 0x11uLL);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, "=", 1uLL);
    if (!*(*this + 40))
    {
      goto LABEL_56;
    }
  }

  else
  {
    *v35 = 61;
    ++v34[4];
    if (!*(*this + 40))
    {
      goto LABEL_56;
    }
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this;
  v39 = *(*this + 24);
  v40 = *(v38 + 40);
  v41 = (*(*a2 + 16))(a2);
  if (v40)
  {
    v44 = v39;
    mlir::Attribute::print(&v44, v41);
  }

  else
  {
    llvm::operator<<(v41);
  }

LABEL_56:
  result = (*(*a2 + 16))(a2);
  v43 = result[4];
  if (result[3] == v43)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v43 = 41;
  ++result[4];
  return result;
}

__n128 mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::getFrontendAttribute@<Q0>(mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *this;
  result = *(*this + 24);
  *a2 = result;
  a2[1].n128_u64[0] = *(v2 + 40);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExternAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hash_value(a2, a3);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ExternAttr::parse(mlir::AsmParser *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v24) = 0;
  v27 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  __p = 0;
  v22 = 0uLL;
  if ((mlir::AsmParser::parseString(a1, &__p) & 1) == 0)
  {
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    v11 = (*(*a1 + 40))(a1);
    v23 = 259;
    (*(*a1 + 24))(v31, a1, v11, &__p);
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

      v12 = v36;
      if (v36)
      {
        v13 = v37;
        v14 = v36;
        if (v37 != v36)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = v36;
        }

        v37 = v12;
        operator delete(v14);
      }

      v15 = v34;
      if (v34)
      {
        v16 = v35;
        v17 = v34;
        if (v35 != v34)
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
          v17 = v34;
        }

        v35 = v15;
        operator delete(v17);
      }

      if (v32 != &v33)
      {
        free(v32);
      }
    }

LABEL_34:
    ParametricStorageTypeImpl = 0;
    if (v27 != 1)
    {
      return ParametricStorageTypeImpl;
    }

    goto LABEL_35;
  }

  *(&v40 + 7) = *(&v22 + 7);
  *&v40 = v22;
  v24 = __p;
  *v25 = v22;
  *&v25[7] = *(&v40 + 7);
  v26 = HIBYTE(v22);
  v27 = 1;
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = Context;
  if (v26 >= 0)
  {
    v4 = &v24;
  }

  else
  {
    v4 = v24;
  }

  if (v26 >= 0)
  {
    v5 = v26;
  }

  else
  {
    v5 = *v25;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  v28[1] = v3;
  __p = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  *&v22 = v28;
  *&v40 = v4;
  *(&v40 + 1) = v5;
  v7 = llvm::hash_value(v4, v5);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v29[0] = &v40;
  v29[1] = &__p;
  v30 = &v40;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
  if (v27 == 1)
  {
LABEL_35:
    if (v26 < 0)
    {
      operator delete(v24);
    }
  }

  return ParametricStorageTypeImpl;
}

void *mlir::ODIE::Compiler::CoreML::ExternAttr::print(mlir::ODIE::Compiler::CoreML::ExternAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a2, a2 + 4 * a3);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(mlir::AsmParser *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v43) = 0;
  v46 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_52;
  }

  mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(a1, &v39);
  if (v46 != v42)
  {
    if (v46)
    {
      if (v43 != v45)
      {
        free(v43);
      }

      v46 = 0;
      if (v42 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v43 = v45;
    v44 = 0xC00000000;
    v3 = v40;
    if (v40)
    {
      if (v39 == v41)
      {
        if (v40 >= 0xD)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v43, v39, 4 * v40);
        LODWORD(v44) = v3;
      }

      else
      {
        v43 = v39;
        v44 = v40;
        v39 = v41;
        HIDWORD(v40) = 0;
      }

      LODWORD(v40) = 0;
    }

    v46 = 1;
LABEL_25:
    if (v42 != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (!v46)
  {
    goto LABEL_25;
  }

  v2 = v39;
  if (v39 != v41)
  {
    if (v43 != v45)
    {
      free(v43);
      v2 = v39;
    }

    v43 = v2;
    v44 = v40;
    v39 = v41;
    v40 = 0;
    if (v42 != 1)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (v39 != v41)
    {
      free(v39);
    }

    goto LABEL_28;
  }

  v4 = v40;
  v5 = v44;
  if (v44 >= v40)
  {
    if (v40)
    {
      memmove(v43, v39, 4 * v40);
    }
  }

  else
  {
    if (HIDWORD(v44) < v40)
    {
      LODWORD(v44) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v44)
    {
      memmove(v43, v39, 4 * v44);
    }

    else
    {
      v5 = 0;
    }

    v25 = v40 - v5;
    if (v25)
    {
      memcpy(&v43[4 * v5], &v39[4 * v5], 4 * v25);
    }
  }

  LODWORD(v44) = v4;
  LODWORD(v40) = 0;
  if (v42 == 1)
  {
    goto LABEL_26;
  }

LABEL_28:
  v6 = *a1;
  if ((v46 & 1) == 0)
  {
    v15 = (*(v6 + 40))(a1);
    v41[8] = 259;
    (*(*a1 + 24))(v30, a1, v15, &v39);
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

      v16 = __p;
      if (__p)
      {
        v17 = v36;
        v18 = __p;
        if (v36 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v36 = v16;
        operator delete(v18);
      }

      v19 = v33;
      if (v33)
      {
        v20 = v34;
        v21 = v33;
        if (v34 != v33)
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
          v21 = v33;
        }

        v34 = v19;
        operator delete(v21);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

LABEL_52:
    result = 0;
    if (v46 != 1)
    {
      return result;
    }

    goto LABEL_53;
  }

  if (((*(v6 + 296))(a1) & 1) == 0)
  {
    goto LABEL_52;
  }

  Context = mlir::AsmParser::getContext(a1);
  v8 = v43;
  v9 = v44;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v26[1] = Context;
  v39 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v40 = v26;
  v29[0] = v8;
  v29[1] = v9;
  v11 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v8, &v8[4 * v9]);
  v12 = HIDWORD(v11) ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * ((8 * v11 + 8) ^ v12);
  v27[0] = v29;
  v27[1] = &v39;
  v28 = v29;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  if (v46 != 1)
  {
    return result;
  }

LABEL_53:
  if (v43 != v45)
  {
    v24 = result;
    free(v43);
    return v24;
  }

  return result;
}

void mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src = v9;
  v8 = 0xC00000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  v3 = v8;
  v4 = 1;
  if (!v8 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v9)
  {
    if (v8 >= 0xD)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a2, __src, 4 * v8);
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v8);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v9;
    HIDWORD(v8) = 0;
  }

  LODWORD(v8) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v9)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(mlir::ODIE::Compiler::CoreML::TensorEncodingAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<int>,(void *)0>(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++result[4];
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<int>,(void *)0>(llvm::raw_ostream *result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = (*(*result + 16))(result);
    result = llvm::raw_ostream::operator<<(v6, *a2);
    if (a3 != 1)
    {
      v7 = 4 * a3;
      v8 = a2 + 1;
      v9 = v7 - 4;
      do
      {
        v12 = (*(*v5 + 16))(v5);
        v13 = v12[4];
        if (v12[3] - v13 <= 1uLL)
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        else
        {
          *v13 = 8236;
          v12[4] += 2;
        }

        v10 = (*(*v5 + 16))(v5);
        v11 = *v8++;
        result = llvm::raw_ostream::operator<<(v10, v11);
        v9 -= 4;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v17[1] = a1;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJNS1_10StringAttrENS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v21[1] = v17;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v9 = (a3 >> 4) ^ (a3 >> 9);
  v10 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v11 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v12 = __ROR8__(v10 - v9, 43);
  v13 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30);
  v14 = v10 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v11 + 24;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v12 - 0x3C5A37A36834CED9 * v9 + v13) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v12 - 0x3C5A37A36834CED9 * v9 + v13) ^ v14)));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v15 >> 47) ^ v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(size_t a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v21[1] = a4;
  Context = mlir::Attribute::getContext(v21);
  v7 = mlir::Attribute::getContext(v21);
  v20 = 261;
  v19[0] = a1;
  v19[1] = a2;
  v9 = mlir::StringAttr::get(v7, v19, v8);
  Type = mlir::TypedAttr::getType(v21);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v22[1] = Context;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJNS1_10StringAttrENS1_4TypeERNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v26[1] = v22;
  v25[0] = v9;
  v25[1] = Type;
  v25[2] = v21[0];
  v12 = (Type >> 4) ^ (Type >> 9);
  v13 = 0xB492B66FBE98F273 * ((v9 >> 4) ^ (v9 >> 9));
  v14 = 0x9AE16A3B2F90404FLL * ((LODWORD(v21[0]) >> 4) ^ (LODWORD(v21[0]) >> 9));
  v15 = __ROR8__(v12 ^ 0xC949D7C7509E6557, 20);
  v16 = __ROR8__(v13 - v12, 43) - 0x3C5A37A36834CED9 * v12 + __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30);
  v17 = 0x9DDFEA08EB382D69 * ((v13 + v15 - 0xAE502812AA7333 - v14 + 24) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v13 + v15 - 0xAE502812AA7333 - v14 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ (v13 + v15 - 0xAE502812AA7333 - v14 + 24))));
  v24 = v25;
  v23[0] = v25;
  v23[1] = v26;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v17 >> 47) ^ v17), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(mlir::AsmParser *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v47) = 0;
  v50 = 0;
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_64;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(a1, &v43);
    if (v50 == v46)
    {
      if (v50)
      {
        v4 = v43;
        if (v43 != v45)
        {
          if (v47 != v49)
          {
            free(v47);
            v4 = v43;
          }

          v47 = v4;
          v48 = v44;
          v43 = v45;
          v44 = 0;
          if (v46 != 1)
          {
            goto LABEL_41;
          }

LABEL_39:
          if (v43 != v45)
          {
            free(v43);
          }

          goto LABEL_41;
        }

        v12 = v44;
        v13 = v48;
        if (v48 >= v44)
        {
          if (v44)
          {
            memmove(v47, v43, 8 * v44);
          }
        }

        else
        {
          if (HIDWORD(v48) < v44)
          {
            LODWORD(v48) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v48)
          {
            memmove(v47, v43, 8 * v48);
          }

          else
          {
            v13 = 0;
          }

          v25 = v44 - v13;
          if (v25)
          {
            memcpy(&v47[8 * v13], &v43[8 * v13], 8 * v25);
          }
        }

        LODWORD(v48) = v12;
        LODWORD(v44) = 0;
        if (v46 == 1)
        {
          goto LABEL_39;
        }

LABEL_41:
        v14 = *a1;
        if (v50)
        {
          if ((*(v14 + 328))(a1))
          {
            goto LABEL_3;
          }
        }

        else
        {
          v15 = (*(v14 + 40))(a1);
          v45[8] = 259;
          (*(*a1 + 24))(v34, a1, v15, &v43);
          if (v34[0])
          {
            mlir::InFlightDiagnostic::report(v34);
          }

          if (v42 == 1)
          {
            if (v41 != &v42)
            {
              free(v41);
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
                  v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
                }

                while (v17 != v16);
                v18 = __p;
              }

              v40 = v16;
              operator delete(v18);
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
                  v23 = *--v20;
                  v22 = v23;
                  *v20 = 0;
                  if (v23)
                  {
                    MEMORY[0x259C63150](v22, 0x1000C8077774924);
                  }
                }

                while (v20 != v19);
                v21 = v37;
              }

              v38 = v19;
              operator delete(v21);
            }

            if (v35 != &v36)
            {
              free(v35);
            }
          }
        }

LABEL_64:
        ParametricStorageTypeImpl = 0;
        if (v50 != 1)
        {
          return ParametricStorageTypeImpl;
        }

        goto LABEL_65;
      }
    }

    else
    {
      if (v50)
      {
        if (v47 != v49)
        {
          free(v47);
        }

        v50 = 0;
        if (v46 == 1)
        {
          goto LABEL_39;
        }

        goto LABEL_41;
      }

      v47 = v49;
      v48 = 0x600000000;
      v6 = v44;
      if (v44)
      {
        if (v43 == v45)
        {
          if (v44 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v47, v43, 8 * v44);
          LODWORD(v48) = v6;
        }

        else
        {
          v47 = v43;
          v48 = v44;
          v43 = v45;
          HIDWORD(v44) = 0;
        }

        LODWORD(v44) = 0;
      }

      v50 = 1;
    }

    if (v46 != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_3:
  Context = mlir::AsmParser::getContext(a1);
  v31 = v33;
  v32 = 0x600000000;
  v43 = v45;
  v44 = 0x600000000;
  if (v50 == 1 && (v3 = v48, v48))
  {
    if (v48 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v45, v47, 8 * v48);
    LODWORD(v44) = v3;
    v5 = v43;
  }

  else
  {
    v3 = 0;
    v5 = v45;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v26[1] = Context;
  v30[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v30[1] = v26;
  v29[0] = v5;
  v29[1] = v3;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v5, &v5[8 * v3]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v27[0] = v29;
  v27[1] = v30;
  v28 = v29;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (v50 == 1)
  {
LABEL_65:
    if (v47 != v49)
    {
      free(v47);
    }
  }

  return ParametricStorageTypeImpl;
}

void mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src = v9;
  v8 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v8;
  v4 = 1;
  if (!v8 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v9)
  {
    if (v8 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a2, __src, 8 * v8);
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v8);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v9;
    HIDWORD(v8) = 0;
  }

  LODWORD(v8) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v9)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "[", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (v7)
    {
LABEL_3:
      v8 = *(v6 + 8);
      v9 = (*(*a2 + 16))(a2);
      v12[0] = ", ";
      v12[1] = 2;
      llvm::interleave<mlir::ODIE::Compiler::CoreML::ParamDeclAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},llvm::raw_ostream,mlir::ODIE::Compiler::CoreML::ParamDeclAttr const>(mlir::ODIE::Compiler::CoreML::ParamDeclAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(v8, (v8 + 8 * v7), a2, v9, v12);
      result = (*(*a2 + 16))(a2);
      v11 = result[4];
      if (result[3] == v11)
      {
        return llvm::raw_ostream::write(result, "]", 1uLL);
      }

      goto LABEL_7;
    }
  }

  else
  {
    *v5 = 91;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] != v11)
  {
LABEL_7:
    *v11 = 93;
    ++result[4];
    return result;
  }

  return llvm::raw_ostream::write(result, "]", 1uLL);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefAttr::get(uint64_t a1)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  v2 = *(v9 + 8);
  v3 = *(v9 + 16);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v2;
  v13[1] = v3;
  v5 = (v3 >> 4) ^ (v3 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v2 >> 4) ^ (v2 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(uint64_t (*a1)(), uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v10[0] = a1;
  v10[1] = a2;
  Type = mlir::TypedAttr::getType(v10);
  v11 = a1;
  Context = mlir::Attribute::getContext(&v11);
  return mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v11, Type, a3, a4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJNS1_9AttributeENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = (a3 >> 4) ^ (a3 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (a2 >> 4) ^ (a2 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::get(mlir::MLIRContext *a1, unint64_t a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v12[1] = v8;
  v11 = a2;
  v5 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::parse(mlir::AsmParser *a1)
{
  v78 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v53 = 0;
  v54 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v53))
  {
LABEL_61:
    v38 = (*(*a1 + 40))(a1);
    LOWORD(v69) = 259;
    (*(*a1 + 24))(v58, a1, v38, v67);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v39 = v63;
      if (v63)
      {
        v40 = v64;
        v41 = v63;
        if (v64 != v63)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = v63;
        }

        v64 = v39;
        operator delete(v41);
      }

      v42 = v61;
      if (v61)
      {
        v43 = v62;
        v44 = v61;
        if (v62 != v61)
        {
          do
          {
            v46 = *--v43;
            v45 = v46;
            *v43 = 0;
            if (v46)
            {
              MEMORY[0x259C63150](v45, 0x1000C8077774924);
            }
          }

          while (v43 != v42);
          v44 = v61;
        }

        v62 = v42;
        operator delete(v44);
      }

      if (v59 != &v60)
      {
        free(v59);
      }
    }

    return 0;
  }

  if (v54 == 6)
  {
    if (*v53 != 1970562418 || *(v53 + 4) != 28274)
    {
      goto LABEL_24;
    }

    v4 = 2;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_84;
  }

  if (v54 == 5)
  {
    if (*v53 != 1970237033 || *(v53 + 4) != 116)
    {
      goto LABEL_24;
    }

    v4 = 1;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

LABEL_84:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    *&v55 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
    *(&v55 + 1) = Context;
    v67[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
    v67[1] = &v55;
    v53 = v4;
    v50 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((8 * v4 + 8) ^ 0xFF51AFD7ED558CCDLL)) ^ ((0x9DDFEA08EB382D69 * ((8 * v4 + 8) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ 0xFF51AFD7ED558CCDLL);
    v57 = &v53;
    v51[0] = &v53;
    v51[1] = v67;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((v50 >> 47) ^ v50), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v57, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v51);
  }

  if (v54 != 3 || (*v53 == 30063 ? (v3 = *(v53 + 2) == 116) : (v3 = 0), !v3))
  {
LABEL_24:
    v52 = 257;
    (*(*a1 + 24))(v67, a1, v2, v51);
    if (v67[0])
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected ";
      v56 = 9;
      if (v69 >= v70)
      {
        if (v68 > &v55 || v68 + 24 * v69 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v68 + 24 * v69;
      v8 = v55;
      *(v7 + 2) = v56;
      *v7 = v8;
      v9 = ++v69;
      if (v67[0])
      {
        LODWORD(v55) = 3;
        *(&v55 + 1) = "mlir::ODIE::Compiler::CoreML::Intent";
        v56 = 36;
        if (v9 >= v70)
        {
          if (v68 > &v55 || v68 + 24 * v9 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v68 + 24 * v69;
        v11 = v55;
        *(v10 + 2) = v56;
        *v10 = v11;
        v12 = ++v69;
        if (v67[0])
        {
          LODWORD(v55) = 3;
          *(&v55 + 1) = " to be one of: ";
          v56 = 15;
          if (v12 >= v70)
          {
            if (v68 > &v55 || v68 + 24 * v12 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v68 + 24 * v69;
          v14 = v55;
          *(v13 + 2) = v56;
          *v13 = v14;
          v15 = ++v69;
          if (v67[0])
          {
            LODWORD(v55) = 3;
            *(&v55 + 1) = "out";
            v56 = 3;
            if (v15 >= v70)
            {
              if (v68 > &v55 || v68 + 24 * v15 <= &v55)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v68 + 24 * v69;
            v17 = v55;
            *(v16 + 2) = v56;
            *v16 = v17;
            v18 = ++v69;
            if (v67[0])
            {
              LODWORD(v55) = 3;
              *(&v55 + 1) = ", ";
              v56 = 2;
              if (v18 >= v70)
              {
                if (v68 > &v55 || v68 + 24 * v18 <= &v55)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v19 = v68 + 24 * v69;
              v20 = v55;
              *(v19 + 2) = v56;
              *v19 = v20;
              v21 = ++v69;
              if (v67[0])
              {
                LODWORD(v55) = 3;
                *(&v55 + 1) = "inout";
                v56 = 5;
                if (v21 >= v70)
                {
                  if (v68 > &v55 || v68 + 24 * v21 <= &v55)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v22 = v68 + 24 * v69;
                v23 = v55;
                *(v22 + 2) = v56;
                *v22 = v23;
                v24 = ++v69;
                if (v67[0])
                {
                  LODWORD(v55) = 3;
                  *(&v55 + 1) = ", ";
                  v56 = 2;
                  if (v24 >= v70)
                  {
                    if (v68 > &v55 || v68 + 24 * v24 <= &v55)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v25 = v68 + 24 * v69;
                  v26 = v55;
                  *(v25 + 2) = v56;
                  *v25 = v26;
                  v27 = ++v69;
                  if (v67[0])
                  {
                    LODWORD(v55) = 3;
                    *(&v55 + 1) = "return";
                    v56 = 6;
                    if (v27 >= v70)
                    {
                      if (v68 > &v55 || v68 + 24 * v27 <= &v55)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v28 = v68 + 24 * v69;
                    v29 = v55;
                    *(v28 + 2) = v56;
                    *v28 = v29;
                    ++v69;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v75;
        v32 = __p;
        if (v75 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v75 = v30;
        operator delete(v32);
      }

      v33 = v72;
      if (v72)
      {
        v34 = v73;
        v35 = v72;
        if (v73 != v72)
        {
          do
          {
            v37 = *--v34;
            v36 = v37;
            *v34 = 0;
            if (v37)
            {
              MEMORY[0x259C63150](v36, 0x1000C8077774924);
            }
          }

          while (v34 != v33);
          v35 = v72;
        }

        v73 = v33;
        operator delete(v35);
      }

      if (v68 != &v71)
      {
        free(v68);
      }
    }

    goto LABEL_61;
  }

  v4 = 0;
  if ((*(*a1 + 168))(a1))
  {
    goto LABEL_84;
  }

  return 0;
}