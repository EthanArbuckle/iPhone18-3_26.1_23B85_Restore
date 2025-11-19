double mlir::AsmPrinter::Impl::printNamedAttribute(void **a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  Name = mlir::NamedAttribute::getName(&v13);
  Value = mlir::StringAttr::getValue(&Name);
  printKeywordOrString(Value, v5, *a1);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v7 = *a1;
    v8 = (*a1)[4];
    if (((*a1)[3] - v8) > 2)
    {
      *(v8 + 2) = 32;
      *v8 = 15648;
      v7[4] += 3;
      v9 = v14;
      if (v14)
      {
LABEL_4:
        {
          mlir::AsmPrinter::Impl::printAttributeImpl(a1, v9, 0);
        }

        return result;
      }
    }

    else
    {
      llvm::raw_ostream::write(v7, " = ", 3uLL);
      v9 = v14;
      if (v14)
      {
        goto LABEL_4;
      }
    }

    v10 = *a1;
    v11 = (*a1)[4];
    if (((*a1)[3] - v11) > 0x11)
    {
      *(v11 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v11 = *"<<NULL ATTRIBUTE>>";
      v10[4] += 18;
    }

    else
    {
      llvm::raw_ostream::write(v10, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

llvm::raw_ostream *printKeywordOrString(char *a1, size_t a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_21;
  }

  v6 = *a1;
  v7 = MEMORY[0x277D85DE0];
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x100uLL))
    {
      goto LABEL_6;
    }

LABEL_7:
    if (a2 == 1)
    {
      v9 = a3 + 4;
      v8 = a3[4];
      if (a3[3] == v8)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    v11 = 1;
    while (1)
    {
      v12 = a1[v11];
      if (v12 < 0)
      {
        if (!__maskrune(a1[v11], 0x500uLL))
        {
LABEL_16:
          if (v12 - 36 > 0x3B || ((1 << (v12 - 36)) & 0x800000000000401) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else if ((*(v7 + 4 * v12 + 60) & 0x500) == 0)
      {
        goto LABEL_16;
      }

      if (a2 == ++v11)
      {
        v9 = a3 + 4;
        v8 = a3[4];
        if (a2 > a3[3] - v8)
        {
LABEL_24:

          return llvm::raw_ostream::write(a3, a1, a2);
        }

LABEL_9:
        result = memcpy(v8, a1, a2);
        *v9 += a2;
        return result;
      }
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x100) != 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  if (*a1 == 95)
  {
    goto LABEL_7;
  }

LABEL_21:
  v14 = a3[4];
  if (a3[3] == v14)
  {
    llvm::raw_ostream::write(a3, "", 1uLL);
  }

  else
  {
    *v14 = 34;
    ++a3[4];
  }

  result = llvm::printEscapedString(a1, a2, a3);
  v15 = a3[4];
  if (v15 >= a3[3])
  {

    return llvm::raw_ostream::write(a3, 34);
  }

  else
  {
    a3[4] = v15 + 1;
    *v15 = 34;
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDialectType(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &unk_2868A3EF8;
  v22 = &v23;
  llvm::raw_ostream::SetBufferAndMode(&v15, 0, 0, 0);
  v5 = *(a1 + 8);
  v10[0] = &v15;
  v10[1] = v5;
  v6 = v5[40];
  v11 = v5[39];
  v12 = v6;
  v13 = v5[41];
  v14 = 1;
  v9[1] = v10;
  v9[0] = &unk_28689A300;
  (*(*v4 + 56))(v4, a2, v9);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (v25 >= 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if (v25 >= 0)
  {
    v8 = SHIBYTE(v25);
  }

  else
  {
    v8 = v24;
  }

  printDialectSymbol(*a1, "!", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

void mlir::AsmPrinter::Impl::printHexString(void **a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = (*a1)[4];
  if (((*a1)[3] - v6) > 2)
  {
    *(v6 + 2) = 120;
    *v6 = 12322;
    v5[4] += 3;
  }

  else
  {
    v5 = llvm::raw_ostream::write(*a1, "0x", 3uLL);
  }

  llvm::toHex(a2, a3, 0, __p);
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = llvm::raw_ostream::write(v5, v7, v8);
  v10 = v9[4];
  if (v9[3] != v10)
  {
    *v10 = 34;
    ++v9[4];
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(__p[0]);
    return;
  }

  llvm::raw_ostream::write(v9, "", 1uLL);
  if (v12 < 0)
  {
    goto LABEL_14;
  }
}

uint64_t mlir::AsmPrinter::Impl::pushCyclicPrinting(mlir::AsmPrinter::Impl *this, const void *a2)
{
  v2 = *(this + 1);
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2 + 680, &v5, v6);
  result = v7;
  if (v7 == 1)
  {
    v4 = *(v2 + 712);
    if (v4 >= *(v2 + 716))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v2 + 704) + 8 * v4) = v5;
    ++*(v2 + 712);
  }

  return result;
}

uint64_t mlir::AsmPrinter::Impl::popCyclicPrinting(uint64_t this)
{
  v1 = *(this + 8);
  v2 = v1[87].i32[0];
  if (v2)
  {
    v3 = v1[85];
    v4 = v1[89].u32[0];
    v5 = *(*&v1[88] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[86] = vadd_s32(v1[86], 0x1FFFFFFFFLL);
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

    v1[89].i32[0] = v4 - 1;
  }

  else
  {
    --v1[89].i32[0];
  }

  return this;
}

unint64_t *mlir::AsmPrinter::Impl::printDimensionList(llvm::raw_ostream **a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v5[0] = "x";
  v5[1] = 1;
  return llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(a2, &a2[a3], v3, v3, v5);
}

void mlir::AsmPrinter::printType(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(*(a1 + 8), a2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printTypeImpl(v2, a2);
    }
  }

  else
  {
    v4 = *v2;
    v5 = *(*v2 + 4);
    if (*(*v2 + 3) - v5 > 0xCuLL)
    {
      qmemcpy(v5, "<<NULL TYPE>>", 13);
      *(v4 + 4) += 13;
    }

    else
    {

      llvm::raw_ostream::write(v4, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

double mlir::AsmPrinter::printAttribute(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(v2, a2, 0);
    }
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 4);
    if ((*(*v2 + 3) - v6) > 0x11)
    {
      *(v6 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v6 = *"<<NULL ATTRIBUTE>>";
      *(v5 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(v5, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

uint64_t mlir::AsmPrinter::printAlias(uint64_t a1, uint64_t a2)
{
}

{
  return mlir::AsmPrinter::Impl::printAlias(*(a1 + 8), a2);
}

double mlir::AsmPrinter::printAttributeWithoutType(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(v2, a2, 2);
    }
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 4);
    if ((*(*v2 + 3) - v6) > 0x11)
    {
      *(v6 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v6 = *"<<NULL ATTRIBUTE>>";
      *(v5 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(v5, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printString(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 34);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 34;
  }

  v8 = (*(*a1 + 16))(a1);
  llvm::printEscapedString(a2, a3, v8);
  result = (*(*a1 + 16))(a1);
  v10 = *(result + 4);
  if (v10 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 34);
  }

  else
  {
    *(result + 4) = v10 + 1;
    *v10 = 34;
  }

  return result;
}

double mlir::AsmPrinter::printSymbolName(uint64_t a1, char *a2, size_t a3)
{
  v3 = **(a1 + 8);
  if (a3)
  {
    v4 = v3[4];
    if (v4 >= v3[3])
    {
      v8 = a2;
      v9 = a3;
      llvm::raw_ostream::write(**(a1 + 8), 64);
      a2 = v8;
      a3 = v9;
    }

    else
    {
      v3[4] = v4 + 1;
      *v4 = 64;
    }

    printKeywordOrString(a2, a3, v3);
  }

  else
  {
    v5 = v3[4];
    if (v3[3] - v5 > 0x18uLL)
    {
      qmemcpy(v5, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      v3[4] += 25;
    }

    else
    {
      v6 = **(a1 + 8);

      llvm::raw_ostream::write(v6, "@<<INVALID EMPTY SYMBOL>>", 0x19uLL);
    }
  }

  return result;
}

unint64_t *mlir::AsmPrinter::printDimensionList(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v5 = (*(*a1 + 16))(a1);
  v7[0] = "x";
  v7[1] = 1;
  return llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(a2, &a2[a3], v5, v5, v7);
}

uint64_t mlir::AsmPrinter::pushCyclicPrinting(mlir::AsmPrinter *this, const void *a2)
{
  v2 = *(*(this + 1) + 8);
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2 + 680, &v5, v6);
  result = v7;
  if (v7 == 1)
  {
    v4 = *(v2 + 712);
    if (v4 >= *(v2 + 716))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v2 + 704) + 8 * v4) = v5;
    ++*(v2 + 712);
  }

  return result;
}

uint64_t mlir::AsmPrinter::popCyclicPrinting(uint64_t this)
{
  v1 = *(*(this + 8) + 8);
  v2 = v1[87].i32[0];
  if (v2)
  {
    v3 = v1[85];
    v4 = v1[89].u32[0];
    v5 = *(*&v1[88] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[86] = vadd_s32(v1[86], 0x1FFFFFFFFLL);
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

    v1[89].i32[0] = v4 - 1;
  }

  else
  {
    --v1[89].i32[0];
  }

  return this;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printAffineExprInternal(llvm::raw_ostream **a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v47 = a2;
  Kind = mlir::AffineExpr::getKind(&v47);
  v10 = 0;
  v11 = 1;
  if (Kind <= 3)
  {
    if (Kind > 1)
    {
      v11 = 0;
      if (Kind == 2)
      {
        v10 = " mod ";
      }

      else
      {
        v10 = " floordiv ";
      }
    }

    else if (Kind)
    {
      if (Kind == 1)
      {
        v11 = 0;
        v10 = " * ";
      }
    }

    else
    {
      v11 = 0;
      v10 = " + ";
    }

    goto LABEL_18;
  }

  if (Kind > 5)
  {
    if (Kind == 6)
    {
      mlir::AffineDimExpr::AffineDimExpr(&v48, v47);
      Position = mlir::AffineDimExpr::getPosition(&v48);
      if (a4)
      {
        return a4(a5, Position, 0);
      }

      v30 = *a1;
      v31 = *(*a1 + 4);
      if (v31 < *(*a1 + 3))
      {
        *(v30 + 4) = v31 + 1;
        v32 = 100;
LABEL_57:
        *v31 = v32;
        return llvm::raw_ostream::operator<<(v30, Position);
      }

      v40 = 100;
    }

    else
    {
      if (Kind != 7)
      {
        goto LABEL_18;
      }

      mlir::AffineSymbolExpr::AffineSymbolExpr(&v48, v47);
      Position = mlir::AffineSymbolExpr::getPosition(&v48);
      if (a4)
      {
        return a4(a5, Position, 1);
      }

      v30 = *a1;
      v31 = *(*a1 + 4);
      if (v31 < *(*a1 + 3))
      {
        *(v30 + 4) = v31 + 1;
        v32 = 115;
        goto LABEL_57;
      }

      v40 = 115;
    }

    v30 = llvm::raw_ostream::write(v30, v40);
    return llvm::raw_ostream::operator<<(v30, Position);
  }

  if (Kind != 4)
  {
    v12 = *a1;
    mlir::AffineConstantExpr::AffineConstantExpr(&v48, v47);
    Value = mlir::AffineConstantExpr::getValue(&v48);
    return llvm::raw_ostream::operator<<(v12, Value);
  }

  v11 = 0;
  v10 = " ceildiv ";
LABEL_18:
  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, v47);
  v46 = v48;
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v46);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v46);
  if (mlir::AffineExpr::getKind(&v46))
  {
    if (a3 == 1)
    {
      v18 = *a1;
      v19 = *(*a1 + 4);
      if (v19 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v18, 40);
        v48 = RHS;
        if (mlir::AffineExpr::getKind(&v48) == 5)
        {
LABEL_23:
          mlir::AffineConstantExpr::AffineConstantExpr(&v48, RHS);
          if (!v48)
          {
            goto LABEL_37;
          }

LABEL_35:
          if (mlir::AffineExpr::getKind(&v46) == 1 && mlir::AffineConstantExpr::getValue(&v48) == -1)
          {
            v28 = *a1;
            v29 = *(*a1 + 4);
            if (*(*a1 + 3) == v29)
            {
              llvm::raw_ostream::write(v28, "-", 1uLL);
            }

            else
            {
              *v29 = 45;
              ++*(v28 + 4);
            }

            v25 = a1;
            v26 = LHS;
            goto LABEL_43;
          }

LABEL_37:
          mlir::AsmPrinter::Impl::printAffineExprInternal(a1, LHS, 1, a4, a5);
          if ((v11 & 1) == 0)
          {
            v22 = *a1;
            v23 = strlen(v10);
            v24 = *(*a1 + 4);
            if (v23 <= *(*a1 + 3) - v24)
            {
              if (v23)
              {
                memcpy(v24, v10, v23);
                *(v22 + 4) += v23;
              }
            }

            else
            {
              llvm::raw_ostream::write(v22, v10, v23);
            }
          }

          v25 = a1;
          v26 = RHS;
LABEL_43:
          result = mlir::AsmPrinter::Impl::printAffineExprInternal(v25, v26, 1, a4, a5);
          if (a3 != 1)
          {
            return result;
          }

          goto LABEL_85;
        }

LABEL_34:
        mlir::AffineConstantExpr::AffineConstantExpr(&v48, 0);
        if (!v48)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      *(v18 + 4) = v19 + 1;
      *v19 = 40;
    }

    v48 = RHS;
    if (mlir::AffineExpr::getKind(&v48) == 5)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (a3 != 1)
  {
LABEL_28:
    v48 = RHS;
    if (mlir::AffineExpr::getKind(&v48) < 5)
    {
      goto LABEL_29;
    }

LABEL_46:
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, 0);
    v45 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  v20 = *a1;
  v21 = *(*a1 + 4);
  if (v21 < *(*a1 + 3))
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 40;
    goto LABEL_28;
  }

  llvm::raw_ostream::write(v20, 40);
  v48 = RHS;
  if (mlir::AffineExpr::getKind(&v48) >= 5)
  {
    goto LABEL_46;
  }

LABEL_29:
  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, RHS);
  v45 = v48;
  if (!v48)
  {
    goto LABEL_62;
  }

LABEL_47:
  if (mlir::AffineExpr::getKind(&v45) != 1)
  {
    goto LABEL_62;
  }

  v27 = mlir::AffineBinaryOpExpr::getRHS(&v45);
  v48 = v27;
  if (mlir::AffineExpr::getKind(&v48) == 5)
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&v48, v27);
    v44 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }
  }

  else
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&v48, 0);
    v44 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }
  }

  if (mlir::AffineConstantExpr::getValue(&v44) == -1)
  {
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, LHS, 0, a4, a5);
    llvm::raw_ostream::operator<<(*a1, " - ");
    v48 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    v41 = mlir::AffineExpr::getKind(&v48) == 0;
    v42 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    result = mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v42, v41, a4, a5);
    if (a3 != 1)
    {
      return result;
    }

    goto LABEL_85;
  }

  if (mlir::AffineConstantExpr::getValue(&v44) <= -2)
  {
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, LHS, 0, a4, a5);
    llvm::raw_ostream::operator<<(*a1, " - ");
    v33 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v33, 1, a4, a5);
    v34 = llvm::raw_ostream::operator<<(*a1, " * ");
    v35 = &v44;
    goto LABEL_76;
  }

LABEL_62:
  v48 = RHS;
  if (mlir::AffineExpr::getKind(&v48) != 5)
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&v48, 0);
    v45 = v48;
    if (!v48)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  mlir::AffineConstantExpr::AffineConstantExpr(&v48, RHS);
  v45 = v48;
  if (v48)
  {
LABEL_66:
    if ((mlir::AffineConstantExpr::getValue(&v45) & 0x8000000000000000) == 0)
    {
      goto LABEL_67;
    }

    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, LHS, 0, a4, a5);
    v34 = *a1;
    v38 = *(*a1 + 4);
    if ((*(*a1 + 3) - v38) > 2)
    {
      *(v38 + 2) = 32;
      *v38 = 11552;
      *(v34 + 4) += 3;
    }

    else
    {
      v34 = llvm::raw_ostream::write(*a1, " - ", 3uLL);
    }

    v35 = &v45;
LABEL_76:
    v39 = mlir::AffineConstantExpr::getValue(v35);
    result = llvm::raw_ostream::operator<<(v34, -v39);
    if (a3 != 1)
    {
      return result;
    }

    goto LABEL_85;
  }

LABEL_67:
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, LHS, 0, a4, a5);
  v36 = *a1;
  v37 = *(*a1 + 4);
  if ((*(*a1 + 3) - v37) > 2)
  {
    *(v37 + 2) = 32;
    *v37 = 11040;
    *(v36 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v36, " + ", 3uLL);
  }

  result = mlir::AsmPrinter::Impl::printAffineExprInternal(a1, RHS, 0, a4, a5);
  if (a3 == 1)
  {
LABEL_85:
    result = *a1;
    v43 = *(*a1 + 4);
    if (v43 >= *(*a1 + 3))
    {
      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v43 + 1;
      *v43 = 41;
    }
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printAffineConstraint(llvm::raw_ostream **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, a2, 0, 0, a5);
  result = *a1;
  v8 = *(*a1 + 4);
  v9 = *(*a1 + 3) - v8;
  if (a3)
  {
    if (v9 <= 4)
    {
      v10 = " == 0";

      return llvm::raw_ostream::write(result, v10, 5uLL);
    }

    *(v8 + 4) = 48;
    v11 = 15648;
  }

  else
  {
    if (v9 <= 4)
    {
      v10 = " >= 0";

      return llvm::raw_ostream::write(result, v10, 5uLL);
    }

    *(v8 + 4) = 48;
    v11 = 15904;
  }

  *v8 = v11 | 0x203D0000;
  *(result + 4) += 5;
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printAffineMap(llvm::raw_ostream **a1, uint64_t a2)
{
  v45 = a2;
  v3 = *a1;
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, 40);
    if (mlir::AffineMap::getNumDims(&v45) < 2)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  *(v3 + 4) = v4 + 1;
  *v4 = 40;
  if (mlir::AffineMap::getNumDims(&v45) >= 2)
  {
LABEL_5:
    v5 = 0;
    while (1)
    {
      v6 = *a1;
      v7 = *(*a1 + 4);
      if (v7 >= *(*a1 + 3))
      {
        v10 = llvm::raw_ostream::write(v6, 100);
        v8 = llvm::raw_ostream::operator<<(v10, v5);
        v9 = *(v8 + 4);
        if (*(v8 + 3) - v9 > 1uLL)
        {
          goto LABEL_6;
        }

LABEL_11:
        llvm::raw_ostream::write(v8, ", ", 2uLL);
        if (++v5 >= (mlir::AffineMap::getNumDims(&v45) - 1))
        {
          break;
        }
      }

      else
      {
        *(v6 + 4) = v7 + 1;
        *v7 = 100;
        v8 = llvm::raw_ostream::operator<<(v6, v5);
        v9 = *(v8 + 4);
        if (*(v8 + 3) - v9 <= 1uLL)
        {
          goto LABEL_11;
        }

LABEL_6:
        *v9 = 8236;
        *(v8 + 4) += 2;
        if (++v5 >= (mlir::AffineMap::getNumDims(&v45) - 1))
        {
          break;
        }
      }
    }
  }

LABEL_12:
  if (mlir::AffineMap::getNumDims(&v45))
  {
    v11 = *a1;
    v12 = *(*a1 + 4);
    if (v12 >= *(*a1 + 3))
    {
      v11 = llvm::raw_ostream::write(*a1, 100);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 100;
    }

    NumDims = mlir::AffineMap::getNumDims(&v45);
    llvm::raw_ostream::operator<<(v11, (NumDims - 1));
  }

  v14 = *a1;
  v15 = *(*a1 + 4);
  if (v15 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v14, 41);
    if (!mlir::AffineMap::getNumSymbols(&v45))
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 41;
    if (!mlir::AffineMap::getNumSymbols(&v45))
    {
LABEL_39:
      v29 = *a1;
      v30 = *(*a1 + 4);
      if ((*(*a1 + 3) - v30) <= 4)
      {
        goto LABEL_40;
      }

      goto LABEL_43;
    }
  }

  v16 = *a1;
  v17 = *(*a1 + 4);
  if (v17 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v16, 91);
    if (mlir::AffineMap::getNumSymbols(&v45) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  *(v16 + 4) = v17 + 1;
  *v17 = 91;
  if (mlir::AffineMap::getNumSymbols(&v45) != 1)
  {
LABEL_25:
    v18 = 0;
    while (1)
    {
      v19 = *a1;
      v20 = *(*a1 + 4);
      if (v20 >= *(*a1 + 3))
      {
        v23 = llvm::raw_ostream::write(v19, 115);
        v21 = llvm::raw_ostream::operator<<(v23, v18);
        v22 = *(v21 + 4);
        if (*(v21 + 3) - v22 > 1uLL)
        {
          goto LABEL_26;
        }

LABEL_31:
        llvm::raw_ostream::write(v21, ", ", 2uLL);
        if (++v18 >= mlir::AffineMap::getNumSymbols(&v45) - 1)
        {
          break;
        }
      }

      else
      {
        *(v19 + 4) = v20 + 1;
        *v20 = 115;
        v21 = llvm::raw_ostream::operator<<(v19, v18);
        v22 = *(v21 + 4);
        if (*(v21 + 3) - v22 <= 1uLL)
        {
          goto LABEL_31;
        }

LABEL_26:
        *v22 = 8236;
        *(v21 + 4) += 2;
        if (++v18 >= mlir::AffineMap::getNumSymbols(&v45) - 1)
        {
          break;
        }
      }
    }
  }

LABEL_32:
  if (mlir::AffineMap::getNumSymbols(&v45))
  {
    v24 = *a1;
    v25 = *(*a1 + 4);
    if (v25 >= *(*a1 + 3))
    {
      v24 = llvm::raw_ostream::write(*a1, 115);
    }

    else
    {
      *(v24 + 4) = v25 + 1;
      *v25 = 115;
    }

    NumSymbols = mlir::AffineMap::getNumSymbols(&v45);
    llvm::raw_ostream::operator<<(v24, (NumSymbols - 1));
  }

  v27 = *a1;
  v28 = *(*a1 + 4);
  if (v28 < *(*a1 + 3))
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 93;
    goto LABEL_39;
  }

  llvm::raw_ostream::write(v27, 93);
  v29 = *a1;
  v30 = *(*a1 + 4);
  if ((*(*a1 + 3) - v30) <= 4)
  {
LABEL_40:
    llvm::raw_ostream::write(v29, " -> (", 5uLL);
    Results = mlir::AffineMap::getResults(&v45);
    if (!v32)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v30 + 4) = 40;
  *v30 = 540945696;
  *(v29 + 4) += 5;
  Results = mlir::AffineMap::getResults(&v45);
  if (!v32)
  {
    goto LABEL_45;
  }

LABEL_44:
  v34 = Results;
  v35 = v32;
  v36 = *a1;
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, *Results, 0, 0, v33);
  if (v35 != 1)
  {
    v40 = 8 * v35;
    v41 = v34 + 1;
    v42 = v40 - 8;
    do
    {
      v44 = *(v36 + 4);
      if (*(v36 + 3) - v44 > 1uLL)
      {
        *v44 = 8236;
        *(v36 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v36, ", ", 2uLL);
      }

      v43 = *v41++;
      mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v43, 0, 0, v37);
      v42 -= 8;
    }

    while (v42);
  }

LABEL_45:
  result = *a1;
  v39 = *(*a1 + 4);
  if (v39 >= *(*a1 + 3))
  {
    return llvm::raw_ostream::write(result, 41);
  }

  *(result + 4) = v39 + 1;
  *v39 = 41;
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printIntegerSet(llvm::raw_ostream **a1, uint64_t a2)
{
  v60 = a2;
  v3 = *a1;
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, 40);
    if (mlir::IntegerSet::getNumDims(&v60) < 2)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  *(v3 + 4) = v4 + 1;
  *v4 = 40;
  if (mlir::IntegerSet::getNumDims(&v60) >= 2)
  {
LABEL_5:
    v5 = 0;
    while (1)
    {
      v8 = *a1;
      v9 = *(*a1 + 4);
      if (v9 >= *(*a1 + 3))
      {
        v12 = llvm::raw_ostream::write(v8, 100);
        v10 = llvm::raw_ostream::operator<<(v12, v5);
        v11 = *(v10 + 4);
        if (*(v10 + 3) - v11 > 1uLL)
        {
          goto LABEL_6;
        }

LABEL_11:
        llvm::raw_ostream::write(v10, ", ", 2uLL);
        NumDims = mlir::IntegerSet::getNumDims(&v60);
        v14 = v5 + 2;
        ++v5;
        if (v14 >= NumDims)
        {
          break;
        }
      }

      else
      {
        *(v8 + 4) = v9 + 1;
        *v9 = 100;
        v10 = llvm::raw_ostream::operator<<(v8, v5);
        v11 = *(v10 + 4);
        if (*(v10 + 3) - v11 <= 1uLL)
        {
          goto LABEL_11;
        }

LABEL_6:
        *v11 = 8236;
        *(v10 + 4) += 2;
        v6 = mlir::IntegerSet::getNumDims(&v60);
        v7 = v5 + 2;
        ++v5;
        if (v7 >= v6)
        {
          break;
        }
      }
    }
  }

LABEL_12:
  if (mlir::IntegerSet::getNumDims(&v60))
  {
    v15 = *a1;
    v16 = *(*a1 + 4);
    if (v16 >= *(*a1 + 3))
    {
      v15 = llvm::raw_ostream::write(*a1, 100);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 100;
    }

    v17 = mlir::IntegerSet::getNumDims(&v60);
    llvm::raw_ostream::operator<<(v15, (v17 - 1));
  }

  v18 = *a1;
  v19 = *(*a1 + 4);
  if (v19 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v18, 41);
    if (!mlir::IntegerSet::getNumSymbols(&v60))
    {
LABEL_19:
      v20 = *a1;
      v21 = *(*a1 + 4);
      if (*(*a1 + 3) - v21 <= 3uLL)
      {
        goto LABEL_20;
      }

LABEL_43:
      *v21 = 673200672;
      *(v20 + 4) += 4;
      NumConstraints = mlir::IntegerSet::getNumConstraints(&v60);
      v23 = NumConstraints - 1;
      if (NumConstraints <= 1)
      {
        goto LABEL_57;
      }

      goto LABEL_44;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 41;
    if (!mlir::IntegerSet::getNumSymbols(&v60))
    {
      goto LABEL_19;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 4);
  if (v25 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v24, 91);
    if (mlir::IntegerSet::getNumSymbols(&v60) == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  *(v24 + 4) = v25 + 1;
  *v25 = 91;
  if (mlir::IntegerSet::getNumSymbols(&v60) != 1)
  {
LABEL_27:
    v26 = 0;
    while (1)
    {
      v27 = *a1;
      v28 = *(*a1 + 4);
      if (v28 >= *(*a1 + 3))
      {
        v31 = llvm::raw_ostream::write(v27, 115);
        v29 = llvm::raw_ostream::operator<<(v31, v26);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 > 1uLL)
        {
          goto LABEL_28;
        }

LABEL_33:
        llvm::raw_ostream::write(v29, ", ", 2uLL);
        if (++v26 >= mlir::IntegerSet::getNumSymbols(&v60) - 1)
        {
          break;
        }
      }

      else
      {
        *(v27 + 4) = v28 + 1;
        *v28 = 115;
        v29 = llvm::raw_ostream::operator<<(v27, v26);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 <= 1uLL)
        {
          goto LABEL_33;
        }

LABEL_28:
        *v30 = 8236;
        *(v29 + 4) += 2;
        if (++v26 >= mlir::IntegerSet::getNumSymbols(&v60) - 1)
        {
          break;
        }
      }
    }
  }

LABEL_34:
  if (mlir::IntegerSet::getNumSymbols(&v60))
  {
    v32 = *a1;
    v33 = *(*a1 + 4);
    if (v33 >= *(*a1 + 3))
    {
      v32 = llvm::raw_ostream::write(*a1, 115);
    }

    else
    {
      *(v32 + 4) = v33 + 1;
      *v33 = 115;
    }

    NumSymbols = mlir::IntegerSet::getNumSymbols(&v60);
    llvm::raw_ostream::operator<<(v32, (NumSymbols - 1));
  }

  v35 = *a1;
  v36 = *(*a1 + 4);
  if (v36 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v35, 93);
    v20 = *a1;
    v21 = *(*a1 + 4);
    if (*(*a1 + 3) - v21 > 3uLL)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(v35 + 4) = v36 + 1;
    *v36 = 93;
    v20 = *a1;
    v21 = *(*a1 + 4);
    if (*(*a1 + 3) - v21 > 3uLL)
    {
      goto LABEL_43;
    }
  }

LABEL_20:
  llvm::raw_ostream::write(v20, " : (", 4uLL);
  NumConstraints = mlir::IntegerSet::getNumConstraints(&v60);
  v23 = NumConstraints - 1;
  if (NumConstraints > 1)
  {
LABEL_44:
    for (i = 0; v23 != i; ++i)
    {
      while (1)
      {
        Constraint = mlir::IntegerSet::getConstraint(&v60, i);
        isEq = mlir::IntegerSet::isEq(&v60, i);
        mlir::AsmPrinter::Impl::printAffineExprInternal(a1, Constraint, 0, 0, v40);
        v41 = *a1;
        v42 = *(*a1 + 4);
        v43 = *(*a1 + 3) - v42;
        if (!isEq)
        {
          break;
        }

        if (v43 <= 4)
        {
          v44 = " == 0";
          goto LABEL_51;
        }

        *(v42 + 4) = 48;
        v47 = 15648;
LABEL_55:
        *v42 = v47 | 0x203D0000;
        *(v41 + 4) += 5;
        v45 = *a1;
        v46 = *(*a1 + 4);
        if (*(*a1 + 3) - v46 > 1uLL)
        {
          goto LABEL_45;
        }

LABEL_56:
        llvm::raw_ostream::write(v45, ", ", 2uLL);
        if (v23 == ++i)
        {
          goto LABEL_57;
        }
      }

      if (v43 > 4)
      {
        *(v42 + 4) = 48;
        v47 = 15904;
        goto LABEL_55;
      }

      v44 = " >= 0";
LABEL_51:
      llvm::raw_ostream::write(v41, v44, 5uLL);
      v45 = *a1;
      v46 = *(*a1 + 4);
      if (*(*a1 + 3) - v46 <= 1uLL)
      {
        goto LABEL_56;
      }

LABEL_45:
      *v46 = 8236;
      *(v45 + 4) += 2;
    }
  }

LABEL_57:
  v48 = __OFSUB__(NumConstraints, 1);
  v49 = NumConstraints - 1;
  if (v49 < 0 != v48)
  {
    goto LABEL_64;
  }

  v50 = mlir::IntegerSet::getConstraint(&v60, v49);
  v51 = mlir::IntegerSet::isEq(&v60, v49);
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v50, 0, 0, v52);
  v53 = *a1;
  v54 = *(*a1 + 4);
  v55 = *(*a1 + 3) - v54;
  if (!v51)
  {
    if (v55 <= 4)
    {
      v56 = " >= 0";
      goto LABEL_63;
    }

    *(v54 + 4) = 48;
    v59 = 15904;
LABEL_68:
    *v54 = v59 | 0x203D0000;
    *(v53 + 4) += 5;
    result = *a1;
    v58 = *(*a1 + 4);
    if (v58 < *(*a1 + 3))
    {
      goto LABEL_65;
    }

    return llvm::raw_ostream::write(result, 41);
  }

  if (v55 > 4)
  {
    *(v54 + 4) = 48;
    v59 = 15648;
    goto LABEL_68;
  }

  v56 = " == 0";
LABEL_63:
  llvm::raw_ostream::write(v53, v56, 5uLL);
LABEL_64:
  result = *a1;
  v58 = *(*a1 + 4);
  if (v58 < *(*a1 + 3))
  {
LABEL_65:
    *(result + 4) = v58 + 1;
    *v58 = 41;
    return result;
  }

  return llvm::raw_ostream::write(result, 41);
}

double mlir::Attribute::print(mlir::Attribute *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::Attribute::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v4);
    operator new();
  }

  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) > 0x11)
  {
    *(v2 + 16) = 15934;
    result = *"<<NULL ATTRIBUTE>>";
    *v2 = *"<<NULL ATTRIBUTE>>";
    *(a2 + 4) += 18;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
  }

  return result;
}

double mlir::Attribute::print(uint64_t ***this, llvm::raw_ostream *a2, mlir::AsmState *a3, int a4)
{
  v4 = *a3;
  v10[0] = a2;
  v10[1] = v4;
  v5 = *(v4 + 640);
  v11 = *(v4 + 624);
  v12 = v5;
  v13 = *(v4 + 656);
  v14 = 1;
  v6 = *this;
  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    {
      mlir::AsmPrinter::Impl::printAttributeImpl(v10, v6, v7);
    }
  }

  else
  {
    v9 = *(a2 + 4);
    if ((*(a2 + 3) - v9) > 0x11)
    {
      *(v9 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v9 = *"<<NULL ATTRIBUTE>>";
      *(a2 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

void *mlir::Attribute::dump(mlir::Attribute *this)
{
  v2 = llvm::errs(this);
  mlir::Attribute::print(this, v2);
  result = llvm::errs(v3);
  v5 = result[4];
  if (result[3] == v5)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++result[4];
  }

  return result;
}

double mlir::Attribute::printStripped(uint64_t ***this, llvm::raw_ostream *a2, mlir::AsmState *a3)
{
  v4 = *this;
  if (*this)
  {
    v7 = *a3;
    v18[0] = a2;
    v18[1] = v7;
    v8 = *(v7 + 640);
    v19 = *(v7 + 624);
    v20 = v8;
    v21 = *(v7 + 656);
    v22 = 1;
    {
      v10 = ***this;
      v11 = (*(*a2 + 80))(a2) + *(a2 + 4) - *(a2 + 2);
      v17[1] = v18;
      v17[0] = &unk_28689A300;
      (*(*v10 + 40))(v10, *this, v17);
      v12 = (*(*a2 + 80))(a2);
      v13 = *(a2 + 4);
      if (v11 == v12 + v13 - *(a2 + 2))
      {
        v14 = *a3;
        v23[0] = a2;
        v23[1] = v14;
        v15 = *(v14 + 640);
        v24 = *(v14 + 624);
        v25 = v15;
        v26 = *(v14 + 656);
        v27 = 1;
        v16 = *this;
        if (v16)
        {
          {
            mlir::AsmPrinter::Impl::printAttributeImpl(v23, v16, 0);
          }

          return result;
        }

        if ((*(a2 + 3) - v13) <= 0x11)
        {
          llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
          return result;
        }

LABEL_14:
        *(v13 + 16) = 15934;
        result = *"<<NULL ATTRIBUTE>>";
        *v13 = *"<<NULL ATTRIBUTE>>";
        *(a2 + 4) += 18;
      }
    }
  }

  else
  {
    v13 = *(a2 + 4);
    if ((*(a2 + 3) - v13) > 0x11)
    {
      goto LABEL_14;
    }

    llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
  }

  return result;
}

double mlir::Attribute::printStripped(mlir::Attribute *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::Attribute::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v4);
    operator new();
  }

  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) > 0x11)
  {
    *(v2 + 16) = 15934;
    result = *"<<NULL ATTRIBUTE>>";
    *v2 = *"<<NULL ATTRIBUTE>>";
    *(a2 + 4) += 18;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
  }

  return result;
}

mlir::Type *mlir::Type::print(mlir::Type *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::Type::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v3);
    operator new();
  }

  v2 = *(a2 + 4);
  if (*(a2 + 3) - v2 > 0xCuLL)
  {
    qmemcpy(v2, "<<NULL TYPE>>", 13);
    *(a2 + 4) += 13;
  }

  else
  {

    return llvm::raw_ostream::write(a2, "<<NULL TYPE>>", 0xDuLL);
  }

  return this;
}

void mlir::Type::print(uint64_t ***this, llvm::raw_ostream *a2, llvm::raw_ostream **a3)
{
  v3 = *a3;
  v7[0] = a2;
  v7[1] = v3;
  v4 = *(v3 + 40);
  v8 = *(v3 + 39);
  v9 = v4;
  v10 = *(v3 + 41);
  v11 = 1;
  v5 = *this;
  if (*this)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(v7, v5) & 1) == 0)
    {
      mlir::AsmPrinter::Impl::printTypeImpl(v7, v5);
    }
  }

  else
  {
    v6 = *(a2 + 4);
    if (*(a2 + 3) - v6 > 0xCuLL)
    {
      qmemcpy(v6, "<<NULL TYPE>>", 13);
      *(a2 + 4) += 13;
    }

    else
    {

      llvm::raw_ostream::write(a2, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

void *mlir::Type::dump(mlir::Type *this)
{
  v2 = llvm::errs(this);
  v3 = mlir::Type::print(this, v2);
  result = llvm::errs(v3);
  v5 = result[4];
  if (result[3] == v5)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++result[4];
  }

  return result;
}

void *mlir::AffineMap::dump(mlir::AffineMap *this)
{
  v2 = llvm::errs(this);
  mlir::AffineMap::print(this, v2);
  result = llvm::errs(v3);
  v5 = result[4];
  if (result[3] == v5)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++result[4];
  }

  return result;
}

double mlir::AffineExpr::print(mlir::AffineExpr *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::AffineExpr::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v4);
    operator new();
  }

  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) > 0x13)
  {
    *(v2 + 16) = 1044271696;
    result = *"<<NULL AFFINE EXPR>>";
    *v2 = *"<<NULL AFFINE EXPR>>";
    *(a2 + 4) += 20;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL AFFINE EXPR>>", 0x14uLL);
  }

  return result;
}

void *mlir::AffineExpr::dump(mlir::AffineExpr *this)
{
  v2 = llvm::errs(this);
  mlir::AffineExpr::print(this, v2);
  result = llvm::errs(v3);
  v5 = result[4];
  if (result[3] == v5)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++result[4];
  }

  return result;
}

llvm::raw_ostream *mlir::Value::print(llvm::raw_ostream *this, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  v3 = a2;
  if (*this)
  {
    v5 = this;
    DefiningOp = mlir::Value::getDefiningOp(this);
    if (DefiningOp)
    {
      Parent = findParent(DefiningOp, (*(a3 + 40) & 0x20) != 0);
      mlir::AsmState::AsmState(&v12, Parent, a3);
    }

    v9 = *v5;
    v10 = *(v3 + 4);
    if (*(v3 + 3) - v10 > 0x19uLL)
    {
      qmemcpy(v10, "<block argument> of type '", 26);
      *(v3 + 4) += 26;
    }

    else
    {
      v3 = llvm::raw_ostream::write(v3, "<block argument> of type '", 0x1AuLL);
    }

    v12 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    mlir::Type::print(&v12, v3);
    v11 = *(v3 + 4);
    if ((*(v3 + 3) - v11) > 0xB)
    {
      *(v11 + 8) = 540702821;
      *v11 = *"' at index: ";
      *(v3 + 4) += 12;
    }

    else
    {
      v3 = llvm::raw_ostream::write(v3, "' at index: ", 0xCuLL);
    }

    return llvm::raw_ostream::operator<<(v3, *(v9 + 24));
  }

  else
  {
    v8 = *(a2 + 4);
    if (*(a2 + 3) - v8 > 0xDuLL)
    {
      qmemcpy(v8, "<<NULL VALUE>>", 14);
      *(a2 + 4) += 14;
    }

    else
    {

      return llvm::raw_ostream::write(a2, "<<NULL VALUE>>", 0xEuLL);
    }
  }

  return this;
}

void mlir::Value::print(mlir::Value *this, llvm::raw_ostream *a2, mlir::AsmState *a3)
{
  v3 = a2;
  if (*this)
  {
    DefiningOp = mlir::Value::getDefiningOp(this);
    if (DefiningOp)
    {

      mlir::Operation::print(DefiningOp, v3, a3);
    }

    else
    {
      v8 = *this;
      v9 = *(v3 + 4);
      if (*(v3 + 3) - v9 > 0x19uLL)
      {
        qmemcpy(v9, "<block argument> of type '", 26);
        *(v3 + 4) += 26;
      }

      else
      {
        v3 = llvm::raw_ostream::write(v3, "<block argument> of type '", 0x1AuLL);
      }

      v11 = *(v8 + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&v11, v3);
      v10 = *(v3 + 4);
      if ((*(v3 + 3) - v10) > 0xB)
      {
        *(v10 + 8) = 540702821;
        *v10 = *"' at index: ";
        *(v3 + 4) += 12;
      }

      else
      {
        v3 = llvm::raw_ostream::write(v3, "' at index: ", 0xCuLL);
      }

      llvm::raw_ostream::operator<<(v3, *(v8 + 24));
    }
  }

  else
  {
    v7 = *(a2 + 4);
    if (*(a2 + 3) - v7 > 0xDuLL)
    {
      qmemcpy(v7, "<<NULL VALUE>>", 14);
      *(a2 + 4) += 14;
    }

    else
    {

      llvm::raw_ostream::write(a2, "<<NULL VALUE>>", 0xEuLL);
    }
  }
}

void mlir::Operation::print(mlir::Operation *this, llvm::raw_ostream *a2, mlir::AsmState *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v7[0] = a2;
  v7[1] = v4;
  v5 = *(v4 + 640);
  v8 = *(v4 + 624);
  v9 = v5;
  v10 = *(v4 + 656);
  v11 = 1;
  v6[0] = &unk_28689A570;
  v6[1] = v7;
  v14[0] = "builtin";
  v14[1] = 7;
  v12 = v14;
  v13 = 0x300000001;
  v15 = 0;
  if (!*(this + 2) && (*(v4 + 664) & 0x20) == 0)
  {
    mlir::detail::AsmStateImpl::initializeAliases(v4, this);
  }

  v6[0] = &unk_28689A570;
  if (v12 != v14)
  {
    free(v12);
  }
}

void *mlir::Value::dump(mlir::Value *this)
{
  v2 = llvm::errs(this);
  mlir::OpPrintingFlags::OpPrintingFlags(v6);
  v3 = mlir::Value::print(this, v2, v6);
  result = llvm::errs(v3);
  v5 = result[4];
  if (result[3] == v5)
  {
    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  *v5 = 10;
  ++result[4];
  return result;
}

llvm::raw_ostream *anonymous namespace::SSANameState::printValueID(llvm::raw_ostream *result, unint64_t a2, int a3, llvm::raw_ostream *a4)
{
  v4 = a4;
  if (!a2)
  {
    v11 = *(a4 + 4);
    if (*(a4 + 3) - v11 <= 0xDuLL)
    {
      v12 = "<<NULL VALUE>>";
      v13 = a4;
      v14 = 14;
LABEL_25:

      return llvm::raw_ostream::write(v13, v12, v14);
    }

    qmemcpy(v11, "<<NULL VALUE>>", 14);
    v17 = *(a4 + 4) + 14;
LABEL_29:
    *(v4 + 4) = v17;
    return result;
  }

  v6 = result;
  v7 = *(a2 + 8) & 7;
  if (v7 == 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if (v7 != 7)
  {
    v15 = a2;
    result = mlir::detail::OpResultImpl::getOwner(v8);
    v16 = *(result + 9);
    if (v16 == 1)
    {
      v9 = 0;
      v10 = 0;
      a2 = v15;
      goto LABEL_20;
    }

    v18 = *(v8 + 8);
    if ((v18 & 7) == 6)
    {
      v9 = *(v8 + 16) + 6;
      v19 = *(v6 + 22);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = v18 & 7;
      v19 = *(v6 + 22);
      if (!v19)
      {
LABEL_19:
        a2 = result - 16;
        v10 = 1;
        goto LABEL_20;
      }
    }

    v20 = *(v6 + 9);
    v21 = (v19 - 1) & ((result >> 4) ^ (result >> 9));
    v22 = *(v20 + 32 * v21);
    if (v22 == result)
    {
LABEL_18:
      if (v21 != v19)
      {
        v41 = v20 + 32 * v21;
        v42 = *(v41 + 8);
        v43 = *(v41 + 16);
        if (v43)
        {
          v44 = v43;
          v45 = v42;
          do
          {
            v46 = v44 >> 1;
            v47 = &v45[v44 >> 1];
            v49 = *v47;
            v48 = v47 + 1;
            v44 += ~(v44 >> 1);
            if (v9 < v49)
            {
              v44 = v46;
            }

            else
            {
              v45 = v48;
            }
          }

          while (v44);
        }

        else
        {
          v45 = v42;
        }

        v54 = &v42[v43];
        v55 = *(v45 - 1);
        if (v45 != v54)
        {
          v16 = *v45;
        }

        v56 = v16 - v55;
        v10 = v56 != 1;
        if (v56 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 -= v55;
        }

        if (v55 > 5)
        {
          a2 = result - 24 * (v55 - 5) - 96;
        }

        else
        {
          a2 = result - 16 * v55 - 16;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v59 = 1;
      while (v22 != -4096)
      {
        v60 = v21 + v59++;
        v21 = v60 & (v19 - 1);
        v22 = *(v20 + 32 * v21);
        if (v22 == result)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
LABEL_20:
  v23 = *(v6 + 4);
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = *v6;
  v25 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v26 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v25 >> 47) ^ v25);
  v27 = -348639895 * ((v26 >> 47) ^ v26);
  v28 = v27 & (v23 - 1);
  v29 = *(*v6 + 16 * v28);
  if (a2 != v29)
  {
    v57 = 1;
    while (v29 != -4096)
    {
      v58 = v28 + v57++;
      v28 = v58 & (v23 - 1);
      v29 = *(v24 + 16 * v28);
      if (a2 == v29)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  if (v28 == v23)
  {
LABEL_23:
    v30 = *(v4 + 4);
    if (*(v4 + 3) - v30 <= 0x14uLL)
    {
      v12 = "<<UNKNOWN SSA VALUE>>";
      v13 = v4;
      v14 = 21;
      goto LABEL_25;
    }

    qmemcpy(v30, "<<UNKNOWN SSA VALUE>>", 21);
    v17 = *(v4 + 4) + 21;
    goto LABEL_29;
  }

  v31 = *(v4 + 4);
  if (v31 >= *(v4 + 3))
  {
    v33 = a2;
    llvm::raw_ostream::write(v4, 37);
    a2 = v33;
    v32 = *(v24 + 16 * v28 + 8);
    if (v32 != -1)
    {
      goto LABEL_33;
    }

LABEL_35:
    v34 = *(v6 + 3);
    v35 = *(v6 + 10);
    if (v35)
    {
      v36 = (v35 - 1) & v27;
      v37 = (v34 + 24 * v36);
      v38 = *v37;
      if (a2 == *v37)
      {
        goto LABEL_49;
      }

      v39 = 1;
      while (v38 != -4096)
      {
        v40 = v36 + v39++;
        v36 = v40 & (v35 - 1);
        v37 = (v34 + 24 * v36);
        v38 = *v37;
        if (a2 == *v37)
        {
          goto LABEL_49;
        }
      }
    }

    v37 = (v34 + 24 * v35);
LABEL_49:
    v50 = v37[1];
    v51 = v37[2];
    result = *(v4 + 4);
    if (v51 <= *(v4 + 3) - result)
    {
      if (v51)
      {
        v52 = v37[2];
        result = memcpy(result, v50, v51);
        *(v4 + 4) += v52;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(v4, v50, v51);
    }

    goto LABEL_53;
  }

  *(v4 + 4) = v31 + 1;
  *v31 = 37;
  v32 = *(v24 + 16 * v28 + 8);
  if (v32 == -1)
  {
    goto LABEL_35;
  }

LABEL_33:
  result = llvm::raw_ostream::operator<<(v4, v32);
LABEL_53:
  if ((v10 & a3) == 1)
  {
    v53 = *(v4 + 4);
    if (v53 >= *(v4 + 3))
    {
      v4 = llvm::raw_ostream::write(v4, 35);
    }

    else
    {
      *(v4 + 4) = v53 + 1;
      *v53 = 35;
    }

    return llvm::raw_ostream::operator<<(v4, v9);
  }

  return result;
}

mlir::Block **mlir::Value::printAsOperand(mlir::Value *this, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  v5 = *this;
  if (v5)
  {
    v6 = (*(v5 + 8) & 7) == 7;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    result = mlir::detail::OpResultImpl::getOwner(v5);
    goto LABEL_11;
  }

  result = mlir::Block::getParentOp(*(v5 + 16));
  if (result)
  {
LABEL_11:
    Parent = findParent(result, (*(a3 + 40) & 0x20) != 0);
    mlir::AsmState::AsmState(&v10, Parent, a3);
  }

  v7 = *(a2 + 4);
  if (*(a2 + 3) - v7 > 0x14uLL)
  {
    qmemcpy(v7, "<<UNKNOWN SSA VALUE>>", 21);
    *(a2 + 4) += 21;
  }

  else
  {

    return llvm::raw_ostream::write(a2, "<<UNKNOWN SSA VALUE>>", 0x15uLL);
  }

  return result;
}

mlir::Operation *findParent(mlir::Block **ParentOp, char a2)
{
  if (a2)
  {
    do
    {
      v2 = ParentOp;
      {
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
      }

      if ((*(**(v2 + 6) + 32))(*(v2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        break;
      }

      v3 = *(v2 + 2);
      if (!v3)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v3);
    }

    while (ParentOp);
  }

  else
  {
    do
    {
      v2 = ParentOp;
      v4 = ParentOp[2];
      if (!v4)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v4);
    }

    while (ParentOp);
  }

  return v2;
}

void mlir::detail::AsmStateImpl::initializeAliases(mlir::detail::AsmStateImpl *this, mlir::Operation *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = this + 624;
  v79[0] = this;
  v79[1] = this + 184;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = &v85;
  v84 = 0;
  v85 = v87;
  v86 = xmmword_25736B040;
  v89 = 2;
  v93 = 0;
  v94 = 1;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v88 = &unk_2868A3F88;
  v95 = &v85;
  llvm::raw_ostream::SetBufferAndMode(&v88, 0, 0, 0);
  v57[0] = &unk_28689A6C8;
  v57[1] = 0;
  v58 = v4;
  v59 = v79;
  v61 = 0;
  v65 = 0;
  v66 = 1;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v60 = &unk_2868A4198;
  v5 = *(this + 664);
  if (v5)
  {
    v5 = v58[40];
  }

  if ((v5 & 4) != 0)
  {
    (*(v57[0] + 216))(v57, a2, 1);
    v6 = v81;
    if (!v81)
    {
      goto LABEL_33;
    }
  }

  else
  {
    (*(**(a2 + 6) + 56))(*(a2 + 6), a2, v57, "", 0);
    v6 = v81;
    if (!v81)
    {
      goto LABEL_33;
    }
  }

  v7 = v82;
  if (v82 > 4 * v6 && v82 >= 0x41)
  {
    if (!v6 || ((v8 = 1 << (33 - __clz(v6 - 1)), v8 <= 64) ? (v9 = 64) : (v9 = v8), v9 != v82))
    {
      llvm::deallocate_buffer(v80, (16 * v82));
    }

    v81 = 0;
    v10 = v80;
    v11 = (v82 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = v11 + 1;
      v13 = (v11 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v14 = (v80 + 16 * v13);
      v15 = (v80 + 16);
      v16 = v13;
      do
      {
        *(v15 - 2) = -4096;
        *v15 = -4096;
        v15 += 4;
        v16 -= 2;
      }

      while (v16);
      if (v12 == v13)
      {
LABEL_33:
        v73 = &v75;
        v74 = 0;
        v26 = v84;
        if (v84)
        {
          v27 = v83;
          if (v83 == &v85)
          {
            v67 = 0;
            llvm::SmallVectorBase<unsigned int>::mallocForGrow();
          }

          v73 = v83;
          v74 = v84;
          v83 = &v85;
          v84 = 0;
          v28 = &v27[13 * v26];
          v29 = MEMORY[0x277D826F0];
          v30 = v26;
          while (1)
          {
            v31 = operator new(104 * v30, v29);
            if (v31)
            {
              break;
            }

            v32 = v30 >> 1;
            v33 = v30 > 1;
            v30 >>= 1;
            if (!v33)
            {
              goto LABEL_40;
            }
          }

          v36 = v31;
          operator delete(v36);
          v70 = 0;
          v71 = 0;
          v72 = 0x1000000000;
          v35 = v74;
          if (v74)
          {
LABEL_43:
            v37 = v73 + 16;
            v38 = 104 * v35;
            do
            {
              if (v37[8] == 1)
              {
                v40 = *(v37 - 1);
                v41 = *v37;
                v42 = llvm::StringMapImpl::hash(v40, *v37, v34);
                v43 = llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>(&v70, v40, v41, v42);
                v44 = *(*v43 + 8);
                *(*v43 + 8) = v44 + 1;
                v45 = *(v37 + 4) & 0xC0000000 | v44 & 0x3FFFFFFF;
                v46 = *(v37 - 2);
                v67 = v46;
                *&v68 = v40;
                *(&v68 + 1) = v41;
                LODWORD(v69) = v45;
                BYTE4(v69) = 0;
                v75 = v46;
                v76 = 0;
                llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>(this + 144, &v75, &v76, &v77);
                if (v78 == 1)
                {
                  v47 = *(this + 44);
                  *(v77 + 8) = v47;
                  if (v47 < *(this + 45))
                  {
                    v39 = *(this + 21) + 32 * v47;
                    *v39 = v46;
                    *(v39 + 8) = v68;
                    *(v39 + 24) = v69;
                    ++*(this + 44);
                  }

                  else
                  {
                  }
                }
              }

              v37 += 104;
              v38 -= 104;
            }

            while (v38);
            if (HIDWORD(v71) && v71)
            {
              v48 = 0;
              do
              {
                v49 = *(v70 + v48);
                if (v49 != -8 && v49 != 0)
                {
                  llvm::deallocate_buffer(v49, (*v49 + 17));
                }

                v48 += 8;
              }

              while (8 * v71 != v48);
            }
          }
        }

        else
        {
          v26 = 0;
          v32 = 0;
          v28 = &v75;
          v27 = &v75;
LABEL_40:
          v70 = 0;
          v71 = 0;
          v72 = 0x1000000000;
          v35 = v74;
          if (v74)
          {
            goto LABEL_43;
          }
        }

        free(v70);
        v51 = v73;
        if (v74)
        {
          v52 = (v73 + 104 * v74 - 64);
          v53 = -104 * v74;
          do
          {
            if (v52 + 2 != *v52)
            {
              free(*v52);
            }

            v52 -= 13;
            v53 += 104;
          }

          while (v53);
          v51 = v73;
        }

        if (v51 != &v75)
        {
          free(v51);
        }

        v57[0] = &unk_28689A6C8;
        llvm::raw_null_ostream::~raw_null_ostream(&v60);
        llvm::raw_ostream::~raw_ostream(&v88);
        if (v85 != v87)
        {
          free(v85);
        }

        v54 = v83;
        if (v84)
        {
          v55 = (v83 + 104 * v84 - 64);
          v56 = -104 * v84;
          do
          {
            if (v55 + 2 != *v55)
            {
              free(*v55);
            }

            v55 -= 13;
            v56 += 104;
          }

          while (v56);
          v54 = v83;
        }

        if (v54 != &v85)
        {
          free(v54);
        }

        llvm::deallocate_buffer(v80, (16 * v82));
      }
    }

    else
    {
      v14 = v80;
    }

    v25 = (v10 + 16 * v7);
    do
    {
      *v14 = -4096;
      v14 = (v14 + 16);
    }

    while (v14 != v25);
    goto LABEL_33;
  }

  if (v82)
  {
    v17 = v80;
    v18 = (v82 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v18)
    {
      v19 = v18 + 1;
      v20 = (v18 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v21 = (v80 + 16 * v20);
      v22 = (v80 + 16);
      v23 = v20;
      do
      {
        *(v22 - 2) = -4096;
        *v22 = -4096;
        v22 += 4;
        v23 -= 2;
      }

      while (v23);
      if (v19 == v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = v80;
    }

    v24 = (v17 + 16 * v7);
    do
    {
      *v21 = -4096;
      v21 = (v21 + 16);
    }

    while (v21 != v24);
  }

LABEL_29:
  v81 = 0;
  goto LABEL_33;
}

void anonymous namespace::OperationPrinter::~OperationPrinter(_anonymous_namespace_::OperationPrinter *this)
{
  *this = &unk_28689A570;
  v1 = *(this + 11);
  if (v1 != this + 104)
  {
    free(v1);
  }
}

{
  *this = &unk_28689A570;
  v2 = *(this + 11);
  if (v2 != this + 104)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

void mlir::Operation::dump(mlir::Operation *this)
{
  llvm::errs(this);
  mlir::OpPrintingFlags::OpPrintingFlags(v3);
  v4 |= 0x20u;
  Parent = findParent(this, 1);
  mlir::AsmState::AsmState(&v5, Parent, v3);
}

void *mlir::Block::print(mlir::Block *this, llvm::raw_ostream *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  result = mlir::Block::getParentOp(this);
  if (result)
  {
    do
    {
      v4 = result;
      v5 = result[2];
      if (!v5)
      {
        break;
      }

      result = mlir::Block::getParentOp(v5);
    }

    while (result);
    mlir::OpPrintingFlags::OpPrintingFlags(&v8);
    mlir::AsmState::AsmState(&v7, v4, &v8);
  }

  v6 = *(a2 + 4);
  if ((*(a2 + 3) - v6) > 0x12)
  {
    *(v6 + 15) = 171851339;
    *v6 = *"<<UNLINKED BLOCK>>\n";
    *(a2 + 4) += 19;
  }

  else
  {

    return llvm::raw_ostream::write(a2, "<<UNLINKED BLOCK>>\n", 0x13uLL);
  }

  return result;
}

void mlir::Block::print(mlir::Block *this, llvm::raw_ostream *a2, mlir::AsmState *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v6[0] = a2;
  v6[1] = v3;
  v4 = v3[40];
  v7 = v3[39];
  v8 = v4;
  v9 = v3[41];
  v10 = 1;
  v5[0] = &unk_28689A570;
  v5[1] = v6;
  v13[0] = "builtin";
  v13[1] = 7;
  v11 = v13;
  v12 = 0x300000001;
  v14 = 0;
  v5[0] = &unk_28689A570;
  if (v11 != v13)
  {
    free(v11);
  }
}

mlir::Block *anonymous namespace::OperationPrinter::print(_anonymous_namespace_::OperationPrinter *this, mlir::Block *a2, int a3, char a4)
{
  v119[12] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
LABEL_95:
    *(this + 38) += 2;
    if ((*(this + 72) & 0x40) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_96;
  }

  llvm::raw_ostream::indent(*(this + 2), *(this + 38));
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = *(v7 + 392);
  if (v8)
  {
    v9 = *(v7 + 376);
    v10 = (v8 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *(v9 + 32 * v10);
    if (v11 == a2)
    {
LABEL_4:
      if (v10 != v8)
      {
        v16 = v9 + 32 * v10;
        v14 = *(v16 + 16);
        v15 = *(v16 + 24);
        v13 = v6 + 4;
        v12 = v6[4];
        if (v15 <= v6[3] - v12)
        {
          if (!v15)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

LABEL_8:
        llvm::raw_ostream::write(v6, v14, v15);
        goto LABEL_11;
      }
    }

    else
    {
      v105 = 1;
      while (v11 != -4096)
      {
        v106 = v10 + v105++;
        v10 = v106 & (v8 - 1);
        v11 = *(v9 + 32 * v10);
        if (v11 == a2)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v13 = v6 + 4;
  v12 = v6[4];
  v14 = "INVALIDBLOCK";
  v15 = 12;
  if (v6[3] - v12 <= 0xBuLL)
  {
    goto LABEL_8;
  }

LABEL_10:
  memcpy(v12, v14, v15);
  *v13 += v15;
LABEL_11:
  if (*(a2 + 6) == *(a2 + 7))
  {
    goto LABEL_23;
  }

  v17 = *(this + 2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 40);
    v20 = *(a2 + 6);
    v19 = *(a2 + 7);
    v21 = v19 - v20;
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 40;
    v20 = *(a2 + 6);
    v19 = *(a2 + 7);
    v21 = v19 - v20;
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  v22 = *(this + 2);
  if (v21 != 8)
  {
    v23 = v20 + 1;
    do
    {
      while (1)
      {
        v25 = v22[4];
        if (v22[3] - v25 <= 1uLL)
        {
          break;
        }

        *v25 = 8236;
        v22[4] += 2;
        v24 = *v23++;
        if (v23 == v19)
        {
          goto LABEL_21;
        }
      }

      llvm::raw_ostream::write(v22, ", ", 2uLL);
      v26 = *v23++;
    }

    while (v23 != v19);
  }

LABEL_21:
  v27 = *(this + 2);
  v28 = *(v27 + 4);
  if (v28 < *(v27 + 3))
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 41;
LABEL_23:
    v29 = *(this + 2);
    v30 = *(v29 + 4);
    if (v30 < *(v29 + 3))
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  llvm::raw_ostream::write(v27, 41);
  v29 = *(this + 2);
  v30 = *(v29 + 4);
  if (v30 < *(v29 + 3))
  {
LABEL_24:
    *(v29 + 4) = v30 + 1;
    *v30 = 58;
    if (mlir::Block::getParent(a2))
    {
      goto LABEL_25;
    }

LABEL_32:
    v39 = *(this + 2);
    v40 = v39[4];
    if (v39[3] - v40 <= 0x1DuLL)
    {
      llvm::raw_ostream::write(v39, "  // block is not in a region!", 0x1EuLL);
      goto LABEL_93;
    }

    qmemcpy(v40, "  // block is not in a region!", 30);
    v42 = v39[4] + 30;
LABEL_66:
    v39[4] = v42;
    goto LABEL_93;
  }

LABEL_31:
  llvm::raw_ostream::write(v29, 58);
  if (!mlir::Block::getParent(a2))
  {
    goto LABEL_32;
  }

LABEL_25:
  if (!*a2)
  {
    if (mlir::Block::isEntryBlock(a2))
    {
      goto LABEL_93;
    }

    v39 = *(this + 2);
    v41 = v39[4];
    if ((v39[3] - v41) <= 0x13)
    {
      llvm::raw_ostream::write(v39, "  // no predecessors", 0x14uLL);
      goto LABEL_93;
    }

    *(v41 + 16) = 1936879475;
    *v41 = *"  // no predecessors";
    v42 = v39[4] + 20;
    goto LABEL_66;
  }

  SinglePredecessor = mlir::Block::getSinglePredecessor(a2);
  if (SinglePredecessor)
  {
    v33 = SinglePredecessor;
    v34 = *(this + 2);
    v35 = v34[4];
    if ((v34[3] - v35) > 0xA)
    {
      *(v35 + 7) = 540697701;
      *v35 = *"  // pred: ";
      v34[4] += 11;
      v36 = *(this + 2);
      v37 = *(this + 3);
      v38 = *(v37 + 392);
      if (!v38)
      {
        goto LABEL_59;
      }
    }

    else
    {
      llvm::raw_ostream::write(v34, "  // pred: ", 0xBuLL);
      v36 = *(this + 2);
      v37 = *(this + 3);
      v38 = *(v37 + 392);
      if (!v38)
      {
        goto LABEL_59;
      }
    }

    v57 = *(v37 + 376);
    v58 = (v38 - 1) & ((v33 >> 4) ^ (v33 >> 9));
    v59 = *(v57 + 32 * v58);
    if (v59 == v33)
    {
LABEL_58:
      if (v58 != v38)
      {
        v67 = v57 + 32 * v58;
        v62 = *(v67 + 16);
        v63 = *(v67 + 24);
        v61 = v36 + 4;
        v60 = v36[4];
        if (v63 <= v36[3] - v60)
        {
          if (!v63)
          {
            goto LABEL_93;
          }

          goto LABEL_92;
        }

LABEL_64:
        llvm::raw_ostream::write(v36, v62, v63);
        goto LABEL_93;
      }
    }

    else
    {
      v107 = 1;
      while (v59 != -4096)
      {
        v108 = v58 + v107++;
        v58 = v108 & (v38 - 1);
        v59 = *(v57 + 32 * v58);
        if (v59 == v33)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_59:
    v61 = v36 + 4;
    v60 = v36[4];
    v62 = "INVALIDBLOCK";
    v63 = 12;
    if (v36[3] - v60 > 0xBuLL)
    {
LABEL_92:
      memcpy(v60, v62, v63);
      *v61 += v63;
      goto LABEL_93;
    }

    goto LABEL_64;
  }

  v117 = v119;
  v32.n128_u64[0] = 0x400000000;
  v118 = 0x400000000;
  v43 = *a2;
  if (!*a2)
  {
    v65 = v119;
    v64 = v119;
    goto LABEL_68;
  }

  do
  {
    v44 = mlir::PredecessorIterator::unwrap(v43);
    v45 = *(this + 3);
    v46 = *(v45 + 376);
    v47 = *(v45 + 392);
    if (v47)
    {
      v48 = (v47 - 1) & ((v44 >> 4) ^ (v44 >> 9));
      v49 = *(v46 + 32 * v48);
      if (v49 == v44)
      {
        goto LABEL_46;
      }

      v50 = 1;
      while (v49 != -4096)
      {
        v51 = v48 + v50++;
        v48 = v51 & (v47 - 1);
        v49 = *(v46 + 32 * v48);
        if (v49 == v44)
        {
          goto LABEL_46;
        }
      }
    }

    v48 = v47;
LABEL_46:
    v114 = -1;
    v115 = "INVALIDBLOCK";
    v116 = 12;
    v52 = v46 + 32 * v48 + 8;
    if (v48 == v47)
    {
      v53 = &v114;
    }

    else
    {
      v53 = v52;
    }

    v54 = *v53;
    v113 = *(v53 + 2);
    v112 = v54;
    if (v118 >= HIDWORD(v118))
    {
      if (v117 > &v112 || v117 + 24 * v118 <= &v112)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v55 = v117 + 24 * v118;
    v32 = v112;
    *(v55 + 2) = v113;
    *v55 = v32;
    v56 = (v118 + 1);
    LODWORD(v118) = v118 + 1;
    v43 = *v43;
  }

  while (v43);
  v64 = v117;
  v65 = v117 + 24 * v56;
  if (v56)
  {
    v66 = 126 - 2 * __clz(v56);
    goto LABEL_69;
  }

LABEL_68:
  v66 = 0;
LABEL_69:
  v68 = *(this + 2);
  v69 = *(v68 + 4);
  if ((*(v68 + 3) - v69) > 4)
  {
    *(v69 + 4) = 32;
    *v69 = 791617568;
    *(v68 + 4) += 5;
    v71 = llvm::raw_ostream::operator<<(v68, v118);
    v72 = *(v71 + 4);
    if (*(v71 + 3) - v72 <= 7uLL)
    {
      goto LABEL_73;
    }

LABEL_71:
    *v72 = 0x203A736465727020;
    *(v71 + 4) += 8;
  }

  else
  {
    v70 = llvm::raw_ostream::write(v68, "  // ", 5uLL);
    v71 = llvm::raw_ostream::operator<<(v70, v118);
    v72 = *(v71 + 4);
    if (*(v71 + 3) - v72 > 7uLL)
    {
      goto LABEL_71;
    }

LABEL_73:
    llvm::raw_ostream::write(v71, " preds: ", 8uLL);
  }

  v73 = v118;
  if (v118)
  {
    v74 = *(this + 2);
    v75 = v117;
    v76 = *(v117 + 1);
    v77 = *(v117 + 2);
    v78 = v74[4];
    if (v74[3] - v78 >= v77)
    {
      if (v77)
      {
        v79 = *(v117 + 2);
        memcpy(v78, v76, v77);
        v74[4] += v79;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(this + 2), v76, v77);
    }

    if (v73 != 1)
    {
      v80 = 24 * v73;
      v81 = (v75 + 40);
      for (i = v80 - 24; i; i -= 24)
      {
        v83 = v74[4];
        if (v74[3] - v83 > 1uLL)
        {
          *v83 = 8236;
          v74[4] += 2;
          v84 = *(v81 - 1);
          v85 = *v81;
          v86 = *(this + 2);
          v87 = v86[4];
          if (v86[3] - v87 >= *v81)
          {
LABEL_89:
            if (v85)
            {
              v88 = v85;
              memcpy(v87, v84, v85);
              v86[4] += v88;
            }

            goto LABEL_84;
          }
        }

        else
        {
          llvm::raw_ostream::write(v74, ", ", 2uLL);
          v84 = *(v81 - 1);
          v85 = *v81;
          v86 = *(this + 2);
          v87 = v86[4];
          if (v86[3] - v87 >= *v81)
          {
            goto LABEL_89;
          }
        }

        llvm::raw_ostream::write(v86, v84, v85);
LABEL_84:
        v81 += 3;
      }
    }
  }

  if (v117 != v119)
  {
    free(v117);
  }

LABEL_93:
  v89 = *(this + 2);
  ++*(this + 20);
  v90 = *(v89 + 4);
  if (v90 < *(v89 + 3))
  {
    *(v89 + 4) = v90 + 1;
    *v90 = 10;
    goto LABEL_95;
  }

  llvm::raw_ostream::write(v89, 10);
  *(this + 38) += 2;
  if ((*(this + 72) & 0x40) != 0)
  {
LABEL_96:
    v91 = *(a2 + 6);
    for (j = *(a2 + 7); v91 != j; ++v91)
    {
      while (1)
      {
        v93 = *v91;
        llvm::raw_ostream::indent(*(this + 2), *(this + 38));
        v94 = *(this + 2);
        v95 = v94[4];
        if ((v94[3] - v95) > 2)
        {
          *(v95 + 2) = 32;
          *v95 = 12079;
          v94[4] += 3;
        }

        else
        {
          llvm::raw_ostream::write(v94, "// ", 3uLL);
        }

        v96 = *(this + 2);
        v97 = v96[4];
        v98 = v96[3] - v97;
        if (*v93)
        {
          if (v98 > 0xB)
          {
            *(v97 + 8) = 544825888;
            *v97 = *" is used by ";
            v96[4] += 12;
          }

          else
          {
            llvm::raw_ostream::write(v96, " is used by ", 0xCuLL);
          }
        }

        else if (v98 > 9)
        {
          *(v97 + 8) = 25701;
          *v97 = *" is unused";
          v96[4] += 10;
        }

        else
        {
          llvm::raw_ostream::write(v96, " is unused", 0xAuLL);
        }

        v99 = *(this + 2);
        ++*(this + 20);
        v100 = *(v99 + 4);
        if (v100 >= *(v99 + 3))
        {
          break;
        }

        *(v99 + 4) = v100 + 1;
        *v100 = 10;
        if (++v91 == j)
        {
          goto LABEL_114;
        }
      }

      llvm::raw_ostream::write(v99, 10);
    }
  }

LABEL_114:
  v102 = (a2 + 32);
  result = *(a2 + 4);
  if (result == (a2 + 32))
  {
    v104 = *(a2 + 5);
  }

  else
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
    {
      v109 = ValuePtr;
      ValuePtr = v109;
    }

    result = (*(**(ValuePtr + 48) + 32))(*(ValuePtr + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    v104 = *(a2 + 5);
    if (result && (a4 & 1) == 0)
    {
      v102 = *v102;
    }
  }

  if (v104 != v102)
  {
  }

  *(this + 38) -= 2;
  return result;
}

void *mlir::Block::dump(mlir::Block *this)
{
  v2 = llvm::errs(this);

  return mlir::Block::print(this, v2);
}

double mlir::Block::printAsOperand(mlir::Block *this, llvm::raw_ostream *a2)
{
  ParentOp = mlir::Block::getParentOp(this);
  if (ParentOp)
  {
    v4 = ParentOp;
    mlir::OpPrintingFlags::OpPrintingFlags(v7);
    mlir::AsmState::AsmState(&v8, v4, v7);
  }

  v5 = *(a2 + 4);
  if ((*(a2 + 3) - v5) > 0x12)
  {
    *(v5 + 15) = 171851339;
    result = *"<<UNLINKED BLOCK>>\n";
    *v5 = *"<<UNLINKED BLOCK>>\n";
    *(a2 + 4) += 19;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<UNLINKED BLOCK>>\n", 0x13uLL);
  }

  return result;
}

void mlir::Block::printAsOperand(mlir::Block *this, llvm::raw_ostream *a2, mlir::AsmState *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v15 = "builtin";
  v16 = 7;
  v17 = 0;
  v4 = *(v3 + 392);
  if (v4)
  {
    v5 = *(v3 + 376);
    v6 = (v4 - 1) & ((this >> 4) ^ (this >> 9));
    v7 = *(v5 + 32 * v6);
    if (v7 == this)
    {
LABEL_3:
      if (v6 != v4)
      {
        v12 = v5 + 32 * v6;
        v10 = *(v12 + 16);
        v11 = *(v12 + 24);
        v9 = (a2 + 32);
        v8 = *(a2 + 4);
        if (v11 <= *(a2 + 3) - v8)
        {
          if (!v11)
          {
            return;
          }

          goto LABEL_9;
        }

LABEL_7:
        llvm::raw_ostream::write(a2, v10, v11);
        return;
      }
    }

    else
    {
      v13 = 1;
      while (v7 != -4096)
      {
        v14 = v6 + v13++;
        v6 = v14 & (v4 - 1);
        v7 = *(v5 + 32 * v6);
        if (v7 == this)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v9 = (a2 + 32);
  v8 = *(a2 + 4);
  v10 = "INVALIDBLOCK";
  v11 = 12;
  if (*(a2 + 3) - v8 <= 0xBuLL)
  {
    goto LABEL_7;
  }

LABEL_9:
  memcpy(v8, v10, v11);
  *v9 += v11;
}

unint64_t *mlir::printDimensionList(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (!a4)
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = v7[4];
    if (v7[3] == v8)
    {
      llvm::raw_ostream::write(v7, "[", 1uLL);
    }

    else
    {
      *v8 = 91;
      ++v7[4];
    }
  }

  v9 = (*(*a1 + 16))(a1);
  v12[0] = "x";
  v12[1] = 1;
  result = llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(a3, &a3[a4], v9, v9, v12);
  if (!a4)
  {
    result = (*(*a1 + 16))(a1);
    v11 = result[4];
    if (result[3] == v11)
    {
      return llvm::raw_ostream::write(result, "]", 1uLL);
    }

    else
    {
      *v11 = 93;
      ++result[4];
    }
  }

  return result;
}

BOOL mlir::parseDimensionList(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (((*(*a1 + 320))(a1) & 1) == 0)
  {
    v41 = v43;
    v42 = 0x600000000;
    if ((*(*a1 + 600))(a1, &v41, 1, 0))
    {
      if (v42)
      {
        (*(*a1 + 32))(a1);
        mlir::detail::DenseArrayAttrImpl<long long>::get();
      }

      v25 = (*(*a1 + 40))(a1);
      v38 = 257;
      (*(*a1 + 24))(v44, a1, v25, &v36);
      if (v44[0])
      {
        LODWORD(v39) = 3;
        *(&v39 + 1) = "Failed parsing dimension list. Did you mean an empty list? It must be denoted by [].";
        v40 = 86;
        if (v46 >= v47)
        {
          if (v45 > &v39 || v45 + 24 * v46 <= &v39)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v26 = v45 + 24 * v46;
        v27 = v39;
        *(v26 + 2) = v40;
        *v26 = v27;
        ++v46;
      }

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }

      if (v54 == 1)
      {
        if (v53 != &v54)
        {
          free(v53);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v52;
          v30 = __p;
          if (v52 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v52 = v28;
          operator delete(v30);
        }

        v20 = v49;
        if (!v49)
        {
          goto LABEL_66;
        }

        v31 = v50;
        v22 = v49;
        if (v50 == v49)
        {
LABEL_65:
          v50 = v20;
          operator delete(v22);
LABEL_66:
          if (v45 != v48)
          {
            free(v45);
          }

          goto LABEL_68;
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

        while (v31 != v20);
LABEL_64:
        v22 = v49;
        goto LABEL_65;
      }
    }

    else
    {
      v14 = (*(*a1 + 40))(a1);
      v38 = 257;
      (*(*a1 + 24))(v44, a1, v14, &v36);
      if (v44[0])
      {
        LODWORD(v39) = 3;
        *(&v39 + 1) = "Failed parsing dimension list.";
        v40 = 30;
        if (v46 >= v47)
        {
          if (v45 > &v39 || v45 + 24 * v46 <= &v39)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v45 + 24 * v46;
        v16 = v39;
        *(v15 + 2) = v40;
        *v15 = v16;
        ++v46;
      }

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }

      if (v54 == 1)
      {
        if (v53 != &v54)
        {
          free(v53);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v52;
          v19 = __p;
          if (v52 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v52 = v17;
          operator delete(v19);
        }

        v20 = v49;
        if (!v49)
        {
          goto LABEL_66;
        }

        v21 = v50;
        v22 = v49;
        if (v50 == v49)
        {
          goto LABEL_65;
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
        goto LABEL_64;
      }
    }

LABEL_68:
    v34 = v41;
    if (v41 == v43)
    {
      return v5;
    }

LABEL_69:
    free(v34);
    return v5;
  }

  if ((*(*a1 + 328))(a1))
  {
    (*(*a1 + 32))(a1);
    mlir::detail::DenseArrayAttrImpl<long long>::get();
  }

  v2 = (*(*a1 + 40))(a1);
  v43[8] = 257;
  (*(*a1 + 24))(v44, a1, v2, &v41);
  if (v44[0])
  {
    LODWORD(v36) = 3;
    *(&v36 + 1) = "Failed parsing dimension list.";
    v37 = 30;
    if (v46 >= v47)
    {
      if (v45 > &v36 || v45 + 24 * v46 <= &v36)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v45 + 24 * v46;
    v4 = v36;
    *(v3 + 2) = v37;
    *v3 = v4;
    ++v46;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v52;
      v8 = __p;
      if (v52 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v52 = v6;
      operator delete(v8);
    }

    v9 = v49;
    if (v49)
    {
      v10 = v50;
      v11 = v49;
      if (v50 != v49)
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
        v11 = v49;
      }

      v50 = v9;
      operator delete(v11);
    }

    v34 = v45;
    if (v45 != v48)
    {
      goto LABEL_69;
    }
  }

  return v5;
}

void mlir::FallbackAsmResourceMap::ResourceCollection::~ResourceCollection(mlir::FallbackAsmResourceMap::ResourceCollection *this)
{
  *this = &unk_2868998D0;
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = &v2[96 * v3 - 8];
    v5 = -96 * v3;
    do
    {
      v6 = *v4;
      if (v6 != -1)
      {
        (off_28689A8E0[v6])(&v7, v4 - 64);
      }

      *v4 = -1;
      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 11));
      }

      v4 -= 96;
      v5 += 96;
    }

    while (v5);
    v2 = *(this + 4);
  }

  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_286899860;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2868998D0;
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = &v2[96 * v3 - 8];
    v5 = -96 * v3;
    do
    {
      v6 = *v4;
      if (v6 != -1)
      {
        (off_28689A8E0[v6])(&v7, v4 - 64);
      }

      *v4 = -1;
      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 11));
      }

      v4 -= 96;
      v5 += 96;
    }

    while (v5);
    v2 = *(this + 4);
  }

  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_286899860;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  MEMORY[0x259C63180](this, 0x1093C40C1339079);
}

void mlir::OpAsmDialectInterface::~OpAsmDialectInterface(mlir::OpAsmDialectInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

void *llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>@<X0>(size_t __sz@<X1>, std::align_val_t a2@<X2>, uint64_t a3@<X8>)
{
  result = llvm::allocate_buffer(__sz, a2);
  *a3 = result;
  *(a3 + 8) = __sz;
  *(a3 + 48) = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<void (*)(void *,unsigned long,unsigned long),void (*)(void *,unsigned long,unsigned long),void>::Callbacks + 2;
  *(a3 + 16) = a2;
  *(a3 + 24) = llvm::deallocate_buffer;
  *(a3 + 56) = 1;
  return result;
}

const char *llvm::getTypeName<mlir::DistinctAttr>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DistinctAttr]";
  v6 = 68;
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

void *llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(void *a1, void *a2, void *a3)
{
  v4 = (*a3 - *a2) >> 4;
  v5 = 1 << -__clz(v4 - 1);
  if (v4 <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 5 || (v7 = -__clz(v6 - 1) & 0x1F, v7 <= 2))
  {
    *a1 = 1;
    v12 = a1 + 1;
    v14 = a1 + 9;
    v15 = 48;
    v16 = "NSt3__110__function6__baseIFbRKN4mlir7Inliner12ResolvedCallEEEE" + 54;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = (1 << v7);
    *a1 &= ~1u;
    buffer = llvm::allocate_buffer(16 * v10, 8uLL);
    a1[1] = buffer;
    v12 = a1 + 1;
    a1[2] = v10;
    v13 = *a1;
    *a1 = *a1 & 1;
    if (v13)
    {
      a3 = v9;
      a2 = v8;
      v14 = a1 + 9;
      v15 = 48;
      v16 = "dCallEEEE";
    }

    else
    {
      v14 = &buffer[v10];
      v12 = buffer;
      a3 = v9;
      a2 = v8;
      v15 = 16 * v10 - 16;
      v16 = "NSt3__110__function6__baseIFbRKN4mlir7Inliner12ResolvedCallEEEE" + 54;
      if (v15 < 0x30)
      {
        v17 = buffer;
LABEL_15:
        v22 = *(v16 + 109);
        do
        {
          *v17++ = v22;
        }

        while (v17 != v14);
        goto LABEL_17;
      }
    }
  }

  v18 = (v15 >> 4) + 1;
  v17 = &v12[2 * (v18 & 0x1FFFFFFFFFFFFFFCLL)];
  v19 = v12 + 4;
  v20 = *(v16 + 109);
  v21 = v18 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    *(v19 - 2) = v20;
    *(v19 - 1) = v20;
    *v19 = v20;
    v19[1] = v20;
    v19 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v18 != (v18 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_15;
  }

LABEL_17:
  v23 = *a2;
  for (i = *a3; v23 != i; ++v23)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v23, &v26);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v17);
  v7 = v17;
  if (result)
  {
    v8 = a1 + 8;
    if (*a1)
    {
      v9 = 4;
    }

    else
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
    }

    v13 = 0;
    v14 = v8 + 16 * v9;
    goto LABEL_17;
  }

  v18 = v17;
  v10 = *a1;
  v11 = *a1 >> 1;
  if (*a1)
  {
    v12 = 4;
  }

  else
  {
    v12 = *(a1 + 16);
  }

  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_19;
  }

  if (v12 + ~v11 - *(a1 + 4) <= v12 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v18);
    v10 = *a1;
    v7 = v18;
  }

  *a1 = v10 + 2;
  if (*v7 != -1)
  {
    --*(a1 + 4);
  }

  *v7 = *a2;
  v15 = a1 + 8;
  if (*a1)
  {
    v16 = 4;
  }

  else
  {
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
  }

  v14 = v15 + 16 * v16;
  v13 = 1;
LABEL_17:
  *a3 = v7;
  *(a3 + 8) = v14;
  *(a3 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, uint64_t a2, char ***a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
    v8 = 3;
    v9 = *a2;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_4;
    }

LABEL_11:
    if (v9 != -2)
    {
      v21 = 0;
      v23 = 1;
      v24 = HashValue & v8;
      v13 = (v5 + 16 * (HashValue & v8));
      v25 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_33;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v26 = 0;
          }

          else
          {
            v26 = v25 + 2 == 0;
          }

          if (v26)
          {
            v21 = v13;
          }

          v27 = v23 + v24;
          ++v23;
          v24 = v27 & v8;
          v13 = (v5 + 16 * (v27 & v8));
          v25 = *v13;
        }

        while (*v13 == -2);
LABEL_33:
        if (v25 == -1)
        {
          goto LABEL_20;
        }

        if (v10 == v13[1] && !memcmp(v9, v25, v10))
        {
          goto LABEL_46;
        }
      }
    }

    v16 = 1;
    v17 = HashValue & v8;
    v13 = (v5 + 16 * (HashValue & v8));
    v18 = *v13;
    if (*v13 != -2)
    {
      while (v18 != -1)
      {
        if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v18, v10))
        {
          v19 = v16 + v17;
          ++v16;
          v17 = v19 & v8;
          v13 = (v5 + 16 * (v19 & v8));
          v18 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

      goto LABEL_19;
    }

LABEL_46:
    result = 1;
    goto LABEL_47;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v13 = 0;
    result = 0;
    goto LABEL_47;
  }

  v5 = *(a1 + 8);
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v6 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v9 != -2)
  {
    v21 = 0;
    v28 = 1;
    v29 = HashValue & v8;
    v13 = (v5 + 16 * (HashValue & v8));
    v30 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_44;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30 + 2 == 0;
        }

        if (v31)
        {
          v21 = v13;
        }

        v32 = v28 + v29;
        ++v28;
        v29 = v32 & v8;
        v13 = (v5 + 16 * (v32 & v8));
        v30 = *v13;
      }

      while (*v13 == -2);
LABEL_44:
      if (v30 == -1)
      {
        goto LABEL_20;
      }

      if (!v13[1])
      {
        goto LABEL_46;
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 16 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_46;
  }

  while (v14 != -1)
  {
    if (v13[1])
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 16 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_46;
  }

LABEL_19:
  v21 = 0;
LABEL_20:
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v22;
    result = 0;
  }

LABEL_47:
  *a3 = v13;
  return result;
}

uint64_t llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t result, unsigned int a2)
{
  v2 = result;
  v38[7] = *MEMORY[0x277D85DE8];
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

  if ((*result & 1) == 0)
  {
    v7 = (result + 8);
    v6 = *(result + 8);
    v8 = *(result + 16);
    if (a2 > 4)
    {
      v25 = a2;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      *(v2 + 8) = buffer;
      *(v2 + 16) = v25;
      v27 = *v2;
      v9 = (v6 + 16 * v8);
      *v2 = *v2 & 1;
      if (v27)
      {
        v10 = (v2 + 72);
        v11 = 48;
      }

      else
      {
        v10 = &buffer[v25];
        v7 = buffer;
        v11 = 16 * v25 - 16;
        if (v11 < 0x30)
        {
          v29 = buffer;
          goto LABEL_41;
        }
      }
    }

    else
    {
      v9 = (v6 + 16 * v8);
      *result = 1;
      v10 = (result + 72);
      v11 = 48;
    }

    v28 = (v11 >> 4) + 1;
    v29 = &v7[v28 & 0x1FFFFFFFFFFFFFFCLL];
    v30 = v7 + 2;
    v31 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v30 - 2) = xmmword_25736B6D0;
      *(v30 - 1) = xmmword_25736B6D0;
      *v30 = xmmword_25736B6D0;
      v30[1] = xmmword_25736B6D0;
      v30 += 4;
      v31 -= 4;
    }

    while (v31);
    if (v28 == (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_42:
      if (v8)
      {
        v35 = v6;
        do
        {
          if (*v35 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            *&v37 = 0;
            llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v2, v35, &v37);
            *v37 = *v35;
            *v2 += 2;
          }

          v35 = (v35 + 16);
        }

        while (v35 != v9);
      }

      llvm::deallocate_buffer(v6, (16 * v8));
    }

    do
    {
LABEL_41:
      *v29++ = xmmword_25736B6D0;
    }

    while (v29 != v10);
    goto LABEL_42;
  }

  v12 = (result + 8);
  v13 = &v37;
  if (*(result + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = *v12;
    v13 = v38;
    v14 = (result + 24);
    if (*(result + 24) > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      v15 = (result + 40);
      if (*(result + 40) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = (result + 24);
    if (*(result + 24) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  *v13++ = *v14;
  v15 = (result + 40);
  if (*(result + 40) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_11:
    v16 = (result + 56);
    if (*(result + 56) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *v13++ = *v15;
  v16 = (result + 56);
  if (*(result + 56) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_12:
    v17 = *result;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *v13++ = *v16;
  v17 = *result;
  if (a2 < 5)
  {
LABEL_13:
    *result = v17 & 1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v19 = (v2 + 72);
    v20 = 48;
    goto LABEL_16;
  }

LABEL_30:
  *result = v17 & 0xFFFFFFFE;
  v32 = a2;
  result = llvm::allocate_buffer(16 * a2, 8uLL);
  *(v2 + 8) = result;
  *(v2 + 16) = v32;
  v33 = *v2;
  *v2 = *v2 & 1;
  if (v33)
  {
    goto LABEL_31;
  }

LABEL_14:
  v18 = *(v2 + 16);
  if (!v18)
  {
    goto LABEL_34;
  }

  v12 = *(v2 + 8);
  v19 = &v12[v18];
  v20 = v19 - v12 - 16;
  if (v20 < 0x30)
  {
    v22 = *(v2 + 8);
    do
    {
LABEL_33:
      *v22 = xmmword_25736B6D0;
      v22 += 16;
    }

    while (v22 != v19);
    goto LABEL_34;
  }

LABEL_16:
  v21 = (v20 >> 4) + 1;
  v22 = &v12[v21 & 0x1FFFFFFFFFFFFFFCLL];
  v23 = v12 + 2;
  v24 = v21 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    *(v23 - 2) = xmmword_25736B6D0;
    *(v23 - 1) = xmmword_25736B6D0;
    *v23 = xmmword_25736B6D0;
    v23[1] = xmmword_25736B6D0;
    v23 += 4;
    v24 -= 4;
  }

  while (v24);
  if (v21 != (v21 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_33;
  }

LABEL_34:
  if (&v37 != v13)
  {
    v34 = &v37;
    do
    {
      if (*v34 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = 0;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v2, v34, &v36);
        *v36 = *v34;
        *v2 += 2;
      }

      ++v34;
    }

    while (v34 != v13);
  }

  return result;
}

const void **llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  if (*a1)
  {
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
    v6 = 3;
    v7 = *a2;
    v8 = *(a2 + 8);
    if (!v8)
    {
LABEL_4:
      v9 = 1;
      if (v7 == -2)
      {
        v10 = HashValue & v6;
        v11 = (v3 + 16 * (HashValue & v6));
        v12 = *v11;
        if (*v11 == -2)
        {
          return v11;
        }

        while (v12 != -1)
        {
          if (v11[1])
          {
            v13 = v9 + v10;
            ++v9;
            v10 = v13 & v6;
            v11 = (v3 + 16 * (v13 & v6));
            v12 = *v11;
            if (*v11 != -2)
            {
              continue;
            }
          }

          return v11;
        }

        goto LABEL_31;
      }

      while (1)
      {
        v11 = (v3 + 16 * (HashValue & v6));
        if (*v11 != -2)
        {
          if (*v11 == -1)
          {
            goto LABEL_31;
          }

          if (!v11[1])
          {
            return v11;
          }
        }

        HashValue = v9 + (HashValue & v6);
        ++v9;
      }
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      return 0;
    }

    v3 = *(a1 + 8);
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
    v6 = v4 - 1;
    v7 = *a2;
    v8 = *(a2 + 8);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  v14 = 1;
  if (v7 == -2)
  {
    v15 = HashValue & v6;
    v11 = (v3 + 16 * (HashValue & v6));
    v16 = *v11;
    if (*v11 == -2)
    {
      return v11;
    }

    while (v16 != -1)
    {
      if (v8 != v11[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v16, v8))
      {
        v17 = v14 + v15;
        ++v14;
        v15 = v17 & v6;
        v11 = (v3 + 16 * (v17 & v6));
        v16 = *v11;
        if (*v11 != -2)
        {
          continue;
        }
      }

      return v11;
    }

LABEL_31:
    if (v7 != -1)
    {
      return 0;
    }

    return v11;
  }

  while (1)
  {
    v19 = HashValue & v6;
    v11 = (v3 + 16 * (HashValue & v6));
    v20 = *v11;
    if (*v11 != -2)
    {
      if (v20 == -1)
      {
        goto LABEL_31;
      }

      if (v8 == v11[1] && !memcmp(v7, v20, v8))
      {
        return v11;
      }
    }

    HashValue = v14 + v19;
    ++v14;
  }
}

void llvm::toHex(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  __len = 0;
  if (2 * a2)
  {
    if ((2 * a2) >= 0x11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    __len = 2 * a2;
  }

  if (a2)
  {
    v5 = 0;
    if (a3)
    {
      v6 = 32;
    }

    else
    {
      v6 = 0;
    }

    do
    {
      v7 = *a1++;
      v10[v5] = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4] | v6;
      v10[v5 + 1] = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF] | v6;
      v5 += 2;
      --a2;
    }

    while (a2);
    v8 = __len;
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v10, v8);
    a4[v8] = 0;
  }

  else
  {
    *a4 = 0;
  }
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printOptionalLocationSpecifier(llvm::raw_ostream *result, uint64_t a2)
{
  if (*(result + 72))
  {
    v3 = *(result + 2);
    v4 = v3[4];
    if (v3[3] == v4)
    {
      v6 = result;
      v7 = a2;
      llvm::raw_ostream::write(v3, " ", 1uLL);
      a2 = v7;
      v5 = (v6 + 16);
    }

    else
    {
      *v4 = 32;
      ++v3[4];
      v5 = (result + 16);
    }

    return mlir::AsmPrinter::Impl::printLocation(v5, a2, 1);
  }

  return result;
}

void *anonymous namespace::OperationPrinter::printNewline(_anonymous_namespace_::OperationPrinter *this)
{
  v2 = *(this + 2);
  ++*(this + 20);
  v3 = *(v2 + 4);
  if (v3 >= *(v2 + 3))
  {
    llvm::raw_ostream::write(v2, 10);
    v4 = *(this + 2);
    v5 = *(this + 38);
  }

  else
  {
    *(v2 + 4) = v3 + 1;
    *v3 = 10;
    v4 = *(this + 2);
    v5 = *(this + 38);
  }

  return llvm::raw_ostream::indent(v4, v5);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printRegionArgument(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  (*(*a1 + 160))(a1);
  if (a5)
  {
    goto LABEL_10;
  }

  v11 = a1 + 16;
  v10 = *(a1 + 16);
  v12 = v10[4];
  if (v10[3] - v12 <= 1uLL)
  {
    llvm::raw_ostream::write(v10, ": ", 2uLL);
    v13 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = *v11;
    v15 = *(*v11 + 32);
    if (*(*v11 + 24) - v15 > 0xCuLL)
    {
      qmemcpy(v15, "<<NULL TYPE>>", 13);
      v14[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v14, "<<NULL TYPE>>", 0xDuLL);
    }

    goto LABEL_10;
  }

  *v12 = 8250;
  v10[4] += 2;
  v13 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((mlir::AsmPrinter::Impl::printAlias(a1 + 16, v13) & 1) == 0)
  {
    mlir::AsmPrinter::Impl::printTypeImpl((a1 + 16), v13);
  }

LABEL_10:
  result = (*(*a1 + 192))(a1, a3, a4, 0, 0);
  if ((*(a1 + 72) & 1) == 0)
  {
    return result;
  }

  v17 = *(a2 + 32);
  v18 = *(a1 + 16);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, " ", 1uLL);
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v19 = 32;
    ++v18[4];
    if ((*(a1 + 72) & 2) == 0)
    {
LABEL_13:
      v20 = *(a1 + 16);
      v21 = v20[4];
      if (v20[3] - v21 > 3uLL)
      {
        *v21 = 677605228;
        v20[4] += 4;
      }

      else
      {
        llvm::raw_ostream::write(v20, "loc(", 4uLL);
      }

      mlir::AsmPrinter::Impl::printLocationInternal((a1 + 16), v17, 0, 1);
      result = *(a1 + 16);
      v22 = *(result + 4);
      if (v22 >= *(result + 3))
      {

        return llvm::raw_ostream::write(result, 41);
      }

      else
      {
        *(result + 4) = v22 + 1;
        *v22 = 41;
      }

      return result;
    }
  }

  return mlir::AsmPrinter::Impl::printLocationInternal((a1 + 16), v17, 1, 1);
}

void *anonymous namespace::OperationPrinter::printSuccessor(_anonymous_namespace_::OperationPrinter *this, mlir::Block *a2)
{
  result = *(this + 2);
  v4 = *(this + 3);
  v5 = *(v4 + 392);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(v4 + 376);
  v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v8 = *(v6 + 32 * v7);
  if (v8 != a2)
  {
    v14 = 1;
    while (v8 != -4096)
    {
      v15 = v7 + v14++;
      v7 = v15 & (v5 - 1);
      v8 = *(v6 + 32 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    v10 = result + 4;
    v9 = result[4];
    v11 = "INVALIDBLOCK";
    v12 = 12;
    if (result[3] - v9 > 0xBuLL)
    {
LABEL_11:
      result = memcpy(v9, v11, v12);
      *v10 += v12;
      return result;
    }

    goto LABEL_7;
  }

LABEL_3:
  if (v7 == v5)
  {
    goto LABEL_4;
  }

  v13 = v6 + 32 * v7;
  v11 = *(v13 + 16);
  v12 = *(v13 + 24);
  v10 = result + 4;
  v9 = result[4];
  if (v12 <= result[3] - v9)
  {
    if (!v12)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_7:

  return llvm::raw_ostream::write(result, v11, v12);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printSuccessorAndUseList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  result = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = (a1 + 16);
  v11 = *(v9 + 392);
  if (v11)
  {
    v12 = *(v9 + 376);
    v13 = (v11 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v14 = *(v12 + 32 * v13);
    if (v14 == a2)
    {
LABEL_3:
      if (v13 != v11)
      {
        v19 = v12 + 32 * v13;
        v17 = *(v19 + 16);
        v18 = *(v19 + 24);
        v16 = (result + 32);
        v15 = *(result + 4);
        if (v18 <= *(result + 3) - v15)
        {
          if (!v18)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

LABEL_7:
        result = llvm::raw_ostream::write(result, v17, v18);
        goto LABEL_10;
      }
    }

    else
    {
      v38 = 1;
      while (v14 != -4096)
      {
        v39 = v13 + v38++;
        v13 = v39 & (v11 - 1);
        v14 = *(v12 + 32 * v13);
        if (v14 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v16 = (result + 32);
  v15 = *(result + 4);
  v17 = "INVALIDBLOCK";
  v18 = 12;
  if (*(result + 3) - v15 <= 0xBuLL)
  {
    goto LABEL_7;
  }

LABEL_9:
  result = memcpy(v15, v17, v18);
  *v16 += v18;
LABEL_10:
  if (!a4)
  {
    return result;
  }

  v20 = *v10;
  v21 = *(*v10 + 4);
  if (v21 >= *(*v10 + 3))
  {
    llvm::raw_ostream::write(v20, 40);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 40;
  }

  v22 = *(a1 + 16);
  v40 = a3;
  v41 = 0;
  v23 = mlir::ValueRange::dereference_iterator(&v40, 0);
  if (++v41 != a4)
  {
    do
    {
      v27 = v22[4];
      if (v22[3] - v27 <= 1uLL)
      {
        llvm::raw_ostream::write(v22, ", ", 2uLL);
      }

      else
      {
        *v27 = 8236;
        v22[4] += 2;
      }

      v26 = mlir::ValueRange::dereference_iterator(&v40, v41);
      ++v41;
    }

    while (v41 != a4);
  }

  v24 = *v10;
  v25 = *(*v10 + 4);
  if ((*(*v10 + 3) - v25) > 2)
  {
    *(v25 + 2) = 32;
    *v25 = 14880;
    *(v24 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v24, " : ", 3uLL);
  }

  v28 = *v10;
  v40 = a3;
  v41 = 0;
  v29 = *(mlir::ValueRange::dereference_iterator(&v40, 0) + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFF8);
  if ((v29 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(v10, v29 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      mlir::AsmPrinter::Impl::printTypeImpl(v10, v30);
      if (++v41 != a4)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (++v41 != a4)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  v31 = *v10;
  v32 = *(*v10 + 4);
  if (*(*v10 + 3) - v32 <= 0xCuLL)
  {
    llvm::raw_ostream::write(v31, "<<NULL TYPE>>", 0xDuLL);
    goto LABEL_29;
  }

  qmemcpy(v32, "<<NULL TYPE>>", 13);
  *(v31 + 4) += 13;
  if (++v41 != a4)
  {
    do
    {
LABEL_38:
      v34 = *(v28 + 4);
      if (*(v28 + 3) - v34 > 1uLL)
      {
        *v34 = 8236;
        *(v28 + 4) += 2;
        v35 = (*(mlir::ValueRange::dereference_iterator(&v40, v41) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v35)
        {
LABEL_43:
          if ((mlir::AsmPrinter::Impl::printAlias(v10, v35) & 1) == 0)
          {
            mlir::AsmPrinter::Impl::printTypeImpl(v10, v35);
          }

          goto LABEL_37;
        }
      }

      else
      {
        llvm::raw_ostream::write(v28, ", ", 2uLL);
        v35 = (*(mlir::ValueRange::dereference_iterator(&v40, v41) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v35)
        {
          goto LABEL_43;
        }
      }

      v36 = *v10;
      v37 = *(*v10 + 4);
      if (*(*v10 + 3) - v37 > 0xCuLL)
      {
        qmemcpy(v37, "<<NULL TYPE>>", 13);
        *(v36 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(v36, "<<NULL TYPE>>", 0xDuLL);
      }

LABEL_37:
      ++v41;
    }

    while (v41 != a4);
  }

LABEL_30:
  result = *v10;
  v33 = *(*v10 + 4);
  if (v33 >= *(*v10 + 3))
  {
    return llvm::raw_ostream::write(result, 41);
  }

  *(result + 4) = v33 + 1;
  *v33 = 41;
  return result;
}

uint64_t anonymous namespace::OperationPrinter::printCustomOrGenericOp(_anonymous_namespace_::OperationPrinter *this, mlir::Operation *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  if ((*(this + 72) & 4) != 0)
  {
    return (*(*this + 216))(this, a2, 1);
  }

  v3 = *(a2 + 6);
  if (*(v3 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = *(*v3 + 56);

    return v4();
  }

  v80[0] = *(v3 + 8);
  v6 = a2;
  ReferencedDialect = mlir::StringAttr::getReferencedDialect(v80);
  a2 = v6;
  if (!ReferencedDialect)
  {
    return (*(*this + 216))(this, a2, 1);
  }

  (*(*ReferencedDialect + 72))(v84);
  if (v85 < 8)
  {
    a2 = v6;
    return (*(*this + 216))(this, a2, 1);
  }

  v80[0] = *(*(v6 + 6) + 8);
  Value = mlir::StringAttr::getValue(v80);
  if (v9)
  {
    v10 = Value;
    v11 = v9;
    if (v9 < 8)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_23;
    }

    if (v9 >= 0x20)
    {
      v14 = 0uLL;
      v15.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v15.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v16 = vdupq_n_s64(1uLL);
      v12 = v9 & 0xFFFFFFFFFFFFFFE0;
      v17 = 0uLL;
      v18 = (Value + 16);
      v19 = 0uLL;
      v20 = v9 & 0xFFFFFFFFFFFFFFE0;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      do
      {
        v34 = vceqq_s8(v18[-1], v15);
        v35 = vmovl_u8(*v34.i8);
        v36 = vmovl_high_u8(v34);
        v37 = vmovl_high_u16(v36);
        v38.i64[0] = v37.u32[2];
        v38.i64[1] = v37.u32[3];
        v25 = vaddq_s64(v25, vandq_s8(v38, v16));
        v39 = vmovl_high_u16(v35);
        v40 = vmovl_u16(*v36.i8);
        v38.i64[0] = v37.u32[0];
        v38.i64[1] = v37.u32[1];
        v24 = vaddq_s64(v24, vandq_s8(v38, v16));
        v38.i64[0] = v40.u32[2];
        v38.i64[1] = v40.u32[3];
        v23 = vaddq_s64(v23, vandq_s8(v38, v16));
        v38.i64[0] = v39.u32[2];
        v38.i64[1] = v39.u32[3];
        v21 = vaddq_s64(v21, vandq_s8(v38, v16));
        v41 = vmovl_u16(*v35.i8);
        v38.i64[0] = v40.u32[0];
        v38.i64[1] = v40.u32[1];
        v22 = vaddq_s64(v22, vandq_s8(v38, v16));
        v38.i64[0] = v41.u32[0];
        v38.i64[1] = v41.u32[1];
        v42 = vandq_s8(v38, v16);
        v38.i64[0] = v41.u32[2];
        v38.i64[1] = v41.u32[3];
        v43 = vandq_s8(v38, v16);
        v38.i64[0] = v39.u32[0];
        v38.i64[1] = v39.u32[1];
        v44 = vceqq_s8(*v18, v15);
        v19 = vaddq_s64(v19, vandq_s8(v38, v16));
        v45 = vmovl_u8(*v44.i8);
        v46 = vmovl_high_u8(v44);
        v17 = vaddq_s64(v17, v43);
        v47 = vmovl_high_u16(v46);
        v14 = vaddq_s64(v14, v42);
        v38.i64[0] = v47.u32[2];
        v38.i64[1] = v47.u32[3];
        v33 = vaddq_s64(v33, vandq_s8(v38, v16));
        v48 = vmovl_high_u16(v45);
        v49 = vmovl_u16(*v46.i8);
        v38.i64[0] = v47.u32[0];
        v38.i64[1] = v47.u32[1];
        v32 = vaddq_s64(v32, vandq_s8(v38, v16));
        v38.i64[0] = v49.u32[2];
        v38.i64[1] = v49.u32[3];
        v31 = vaddq_s64(v31, vandq_s8(v38, v16));
        v38.i64[0] = v48.u32[2];
        v38.i64[1] = v48.u32[3];
        v29 = vaddq_s64(v29, vandq_s8(v38, v16));
        v38.i64[0] = v49.u32[0];
        v38.i64[1] = v49.u32[1];
        v30 = vaddq_s64(v30, vandq_s8(v38, v16));
        v50 = vmovl_u16(*v45.i8);
        v38.i64[0] = v48.u32[0];
        v38.i64[1] = v48.u32[1];
        v28 = vaddq_s64(v28, vandq_s8(v38, v16));
        v38.i64[0] = v50.u32[2];
        v38.i64[1] = v50.u32[3];
        v27 = vaddq_s64(v27, vandq_s8(v38, v16));
        v38.i64[0] = v50.u32[0];
        v38.i64[1] = v50.u32[1];
        v26 = vaddq_s64(v26, vandq_s8(v38, v16));
        v18 += 2;
        v20 -= 32;
      }

      while (v20);
      v13 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v26, v14), vaddq_s64(v30, v22)), vaddq_s64(vaddq_s64(v28, v19), vaddq_s64(v32, v24))), vaddq_s64(vaddq_s64(vaddq_s64(v27, v17), vaddq_s64(v31, v23)), vaddq_s64(vaddq_s64(v29, v21), vaddq_s64(v33, v25)))));
      if (v9 == v12)
      {
        goto LABEL_27;
      }

      if ((v9 & 0x18) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v51 = v12;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    v52 = 0uLL;
    v53 = v13;
    v54 = (Value + v51);
    v55 = v51 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v56 = vdupq_n_s64(1uLL);
    v57 = 0uLL;
    v58 = 0uLL;
    do
    {
      v59 = *v54++;
      v60 = vmovl_u8(vceq_s8(v59, 0x2E2E2E2E2E2E2E2ELL));
      v61 = vmovl_u16(*v60.i8);
      v62.i64[0] = v61.u32[0];
      v62.i64[1] = v61.u32[1];
      v63 = vandq_s8(v62, v56);
      v62.i64[0] = v61.u32[2];
      v62.i64[1] = v61.u32[3];
      v64 = vandq_s8(v62, v56);
      v65 = vmovl_high_u16(v60);
      v62.i64[0] = v65.u32[0];
      v62.i64[1] = v65.u32[1];
      v66 = vandq_s8(v62, v56);
      v62.i64[0] = v65.u32[2];
      v62.i64[1] = v65.u32[3];
      v58 = vaddq_s64(v58, vandq_s8(v62, v56));
      v57 = vaddq_s64(v57, v66);
      v52 = vaddq_s64(v52, v64);
      v53 = vaddq_s64(v53, v63);
      v55 += 8;
    }

    while (v55);
    v13 = vaddvq_s64(vaddq_s64(vaddq_s64(v53, v57), vaddq_s64(v52, v58)));
    if (v9 != v12)
    {
LABEL_23:
      v67 = v9 - v12;
      v68 = (Value + v12);
      do
      {
        v69 = *v68++;
        if (v69 == 46)
        {
          ++v13;
        }

        --v67;
      }

      while (v67);
    }

LABEL_27:
    if (v13 == 1)
    {
      v70 = *(this + 11) + 16 * *(this + 24);
      v81 = 773;
      v80[0] = *(v70 - 16);
      v80[1] = *(v70 - 8);
      v80[2] = ".";
      llvm::Twine::str(v80, v82);
      v71 = v83;
      v72 = v82[0];
      if (v83 >= 0)
      {
        v73 = v82;
      }

      else
      {
        v73 = v82[0];
      }

      if (v83 >= 0)
      {
        v74 = v83;
      }

      else
      {
        v74 = v82[1];
      }

      if (v11 >= v74 && (!v74 || !memcmp(v10, v73, v74)))
      {
        v10 += v74;
        v11 -= v74;
      }

      if (v71 < 0)
      {
        operator delete(v72);
      }
    }

    v75 = *(this + 2);
    v76 = *(v75 + 32);
    if (v11 <= *(v75 + 24) - v76)
    {
      if (v11)
      {
        memcpy(v76, v10, v11);
        *(v75 + 32) += v11;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(this + 2), v10, v11);
    }
  }

  if ((v85 & 2) != 0)
  {
    v77 = v84;
  }

  else
  {
    v77 = v84[0];
  }

  result = (*(v85 & 0xFFFFFFFFFFFFFFF8))(v77, v6, this);
  v78 = v85;
  if (v85 >= 8)
  {
    if ((v85 & 4) != 0)
    {
      if ((v85 & 2) != 0)
      {
        v79 = v84;
      }

      else
      {
        v79 = v84[0];
      }

      result = (*((v85 & 0xFFFFFFFFFFFFFFF8) + 16))(v79);
    }

    if ((v78 & 2) == 0)
    {
      llvm::deallocate_buffer(v84[0], v84[1]);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printRegion(_anonymous_namespace_::OperationPrinter *this, mlir::Region *a2, int a3, char a4, int a5)
{
  v6 = *(this + 72);
  result = *(this + 2);
  v9 = *(result + 3);
  v8 = *(result + 4);
  if ((v6 & 8) == 0)
  {
    if (v9 == v8)
    {
      result = llvm::raw_ostream::write(result, "{", 1uLL);
      v14 = *(result + 4);
      ++*(this + 20);
      if (v14 < *(result + 3))
      {
LABEL_4:
        *(result + 4) = v14 + 1;
        *v14 = 10;
        if (*a2 == a2)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *v8 = 123;
      v14 = (*(result + 4) + 1);
      *(result + 4) = v14;
      ++*(this + 20);
      if (v14 < *(result + 3))
      {
        goto LABEL_4;
      }
    }

    llvm::raw_ostream::write(result, 10);
    if (*a2 == a2)
    {
LABEL_5:
      result = llvm::raw_ostream::indent(*(this + 2), *(this + 38));
      v15 = *(result + 4);
      if (*(result + 3) != v15)
      {
LABEL_6:
        *v15 = 125;
        v16 = *(result + 4) + 1;
LABEL_10:
        *(result + 4) = v16;
        return result;
      }

      goto LABEL_37;
    }

LABEL_13:
    v19 = *(a2 + 2);
    if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v19) && v19)
    {
      InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v19);
      v21 = (*(InterfaceFor + 24))();
      v24 = (this + 96);
      v23 = *(this + 24);
      v25 = (this + 88);
      if (v23 >= *(this + 25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    else
    {
      v24 = (this + 96);
      v23 = *(this + 24);
      v25 = (this + 88);
      if (v23 >= *(this + 25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = 0;
      v21 = "";
    }

    v26 = (*v25 + 16 * v23);
    *v26 = v21;
    v26[1] = v22;
    ++*v24;
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = (v27 - 8);
    }

    else
    {
      v28 = 0;
    }

    if (a5)
    {
      v29 = *(v28 + 4);
      v30 = v29 == (v28 + 32);
      if (v29 == (v28 + 32) || !a3)
      {
LABEL_31:
        for (i = *(*(a2 + 1) + 8); i != a2; i = *(i + 1))
        {
          if (i)
          {
            v32 = (i - 8);
          }

          else
          {
            v32 = 0;
          }
        }

        --*(this + 24);
        result = llvm::raw_ostream::indent(*(this + 2), *(this + 38));
        v15 = *(result + 4);
        if (*(result + 3) != v15)
        {
          goto LABEL_6;
        }

LABEL_37:
        v17 = "}";
        v18 = 1;
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      v30 = 0;
      goto LABEL_31;
    }

    v30 = ((*(v28 + 7) - *(v28 + 6)) & 0x7FFFFFFF8) != 0;
    goto LABEL_31;
  }

  if ((v9 - v8) > 4)
  {
    v8[4] = 125;
    *v8 = 774778491;
    v16 = *(result + 4) + 5;
    goto LABEL_10;
  }

  v17 = "{...}";
  v18 = 5;
LABEL_38:

  return llvm::raw_ostream::write(result, v17, v18);
}

void anonymous namespace::OperationPrinter::shadowRegionArgs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v32[0] = a3;
  v32[1] = a4;
  v29 = v31;
  v30 = xmmword_25738E870;
  v5 = a4;
  if (a4)
  {
    v7 = 0;
    do
    {
      v13 = mlir::ValueRange::dereference_iterator(v32, v7);
      if (v13)
      {
        v14 = v13;
        v15 = *(a2 + 8);
        if (v15)
        {
          v16 = v15 - 8;
        }

        else
        {
          v16 = 0;
        }

        v17 = *(*(v16 + 48) + 8 * v7);
        v27 = &v29;
        v28 = v17;
        *&v30 = 0;
        v21 = 2;
        v25 = 0;
        v26 = 1;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v20 = &unk_2868A3F88;
        llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
        v11 = 0;
        v18 = v27[1];
        if (v18)
        {
          v10 = *v27 + 1;
        }

        else
        {
          v10 = *v27;
        }

        v19 = v18 - (v18 != 0);
        if (v18 >= 2)
        {
          v4[64] += v19;
          v11 = v4[54];
          if (v11 && &v11[v19] <= v4[55])
          {
            v4[54] = &v11[v19];
          }

          else
          {
            v8 = v10;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((v4 + 54), v19, v19, 0);
            v10 = v8;
            v11 = Slow;
          }

          memmove(v11, v10, v19);
        }

        v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::operator[]((v4 + 38), &v28);
        *v12 = v11;
        v12[1] = v19;
        llvm::raw_ostream::~raw_ostream(&v20);
      }

      ++v7;
    }

    while (v5 != v7);
    if (v29 != v31)
    {
      free(v29);
    }
  }
}

double anonymous namespace::OperationPrinter::printAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v24[0] = a3;
  v24[1] = a4;
  if (a2)
  {
    Value = mlir::AffineMapAttr::getValue(&v23);
    NumDims = mlir::AffineMap::getNumDims(&Value);
    v20[0] = &NumDims;
    v20[1] = a1;
    v20[2] = v24;
    Results = mlir::AffineMap::getResults(&Value);
    if (v6)
    {
      v8 = Results;
      v9 = v6;
      v12 = *(a1 + 16);
      v10 = (a1 + 16);
      v11 = v12;
      if (v9 != 1)
      {
        v13 = 8 * v9;
        v14 = v8 + 1;
        v15 = v13 - 8;
        do
        {
          v17 = v11[4];
          if (v11[3] - v17 > 1uLL)
          {
            *v17 = 8236;
            v11[4] += 2;
          }

          else
          {
            llvm::raw_ostream::write(v11, ", ", 2uLL);
          }

          v16 = *v14++;
          v15 -= 8;
        }

        while (v15);
      }
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = v18[4];
    if ((v18[3] - v19) > 0x12)
    {
      *(v19 + 15) = 1044271169;
      result = *"<<NULL AFFINE MAP>>";
      *v19 = *"<<NULL AFFINE MAP>>";
      v18[4] += 19;
    }

    else
    {

      llvm::raw_ostream::write(v18, "<<NULL AFFINE MAP>>", 0x13uLL);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printAffineExprOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v9[1] = a4;
  v8[0] = a5;
  v8[1] = a6;
  v7[0] = a1;
  v7[1] = v9;
  v7[2] = v8;
}

uint64_t mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mpsx::ListPopBackOp>>();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
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
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mpsx::ListPopBackOp>>();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[185];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int,BOOL)>::callback_fn<anonymous namespace::OperationPrinter::printAffineMapOfSSAIds(mlir::AffineMapAttr,mlir::ValueRange)::$_0>(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 8);
  if (a3)
  {
    v4 = **a1 + a2;
    v5 = *(v3 + 16);
    v6 = *(v5 + 32);
    if (*(v5 + 24) - v6 > 6uLL)
    {
      *(v6 + 3) = 678195042;
      *v6 = 1651341683;
      *(v5 + 32) += 7;
    }

    else
    {
      v7 = a1;
      llvm::raw_ostream::write(*(v3 + 16), "symbol(", 7uLL);
      a1 = v7;
    }

    v12 = mlir::ValueRange::dereference_iterator(*(a1 + 16), v4);
    result = *(v3 + 16);
    v13 = *(result + 4);
    if (v13 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v13 + 1;
      *v13 = 41;
    }
  }

  else
  {
    v8 = mlir::ValueRange::dereference_iterator(*(a1 + 16), a2);
    v9 = *(v3 + 16);
    v10 = (*(v3 + 24) + 280);
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int,BOOL)>::callback_fn<anonymous namespace::OperationPrinter::printAffineExprOfSSAIds(mlir::AffineExpr,mlir::ValueRange,mlir::ValueRange)::$_0>(uint64_t *a1, unsigned int a2, char a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(v4 + 32);
    if (*(v4 + 24) - v5 > 6uLL)
    {
      *(v5 + 3) = 678195042;
      *v5 = 1651341683;
      *(v4 + 32) += 7;
    }

    else
    {
      v6 = a1;
      v7 = a2;
      llvm::raw_ostream::write(*(v3 + 16), "symbol(", 7uLL);
      a1 = v6;
      a2 = v7;
    }

    v12 = mlir::ValueRange::dereference_iterator(a1[2], a2);
    result = *(v3 + 16);
    v13 = *(result + 4);
    if (v13 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v13 + 1;
      *v13 = 41;
    }
  }

  else
  {
    v8 = mlir::ValueRange::dereference_iterator(a1[1], a2);
    v9 = *(v3 + 16);
    v10 = (*(v3 + 24) + 280);
  }

  return result;
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printCustomOrGenericOp(_anonymous_namespace_::DummyAliasOperationPrinter *this, mlir::Operation *a2)
{
  v3 = *(*(this + 2) + 40);
  if (v3)
  {
    v4 = a2;
    a2 = v4;
    v3 = *(*(this + 2) + 40);
  }

  if ((v3 & 4) != 0)
  {
    v7 = *(*this + 216);

    return v7(this, a2, 1);
  }

  else
  {
    v5 = *(**(a2 + 6) + 56);

    return v5();
  }
}

void anonymous namespace::DummyAliasOperationPrinter::~DummyAliasOperationPrinter(_anonymous_namespace_::DummyAliasOperationPrinter *this)
{
  *this = &unk_28689A6C8;
  llvm::raw_null_ostream::~raw_null_ostream((this + 32));
}

{
  *this = &unk_28689A6C8;
  llvm::raw_null_ostream::~raw_null_ostream((this + 32));

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printAlias(uint64_t a1, void **a2)
{
  return 1;
}

{
  return 1;
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printRegionArgument(void *a1, uint64_t a2)
{
  result = (*(*a1 + 32))(a1, *(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(a1[2] + 40))
  {
    v5 = a1[3];
    v6 = *(a2 + 32);
  }

  return result;
}

void *anonymous namespace::DummyAliasOperationPrinter::printOperand(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  if (a3[3] == v3)
  {
    return llvm::raw_ostream::write(a3, "%", 1uLL);
  }

  *v3 = 37;
  ++a3[4];
  return result;
}

const void **anonymous namespace::DummyAliasOperationPrinter::printOptionalAttrDict(const void **result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a2;
    v7 = result;
    if (a5)
    {
      v13[0] = a4;
      Name = a4 + 16 * a5;
      llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(&v15, v13, &Name);
      v8 = 16 * a3;
      while (1)
      {
        Name = mlir::NamedAttribute::getName(v6);
        v13[0] = mlir::StringAttr::getValue(&Name);
        v13[1] = v9;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v15, v13);
        if (result)
        {
          if (v15)
          {
            if (result != &v18)
            {
              goto LABEL_5;
            }
          }

          else if (result != (v16 + 16 * v17))
          {
            goto LABEL_5;
          }
        }

        result = (*(*v7 + 5))(v7, *(v6 + 1));
LABEL_5:
        v6 = (v6 + 16);
        v8 -= 16;
        if (!v8)
        {
          if ((v15 & 1) == 0)
          {
            llvm::deallocate_buffer(v16, (16 * v17));
          }

          return result;
        }
      }
    }

    v10 = 16 * a3;
    v11 = a2 + 1;
    do
    {
      v12 = *v11;
      v11 += 2;
      result = (*(*v7 + 5))(v7, v12);
      v10 -= 16;
    }

    while (v10);
  }

  return result;
}

mlir::Block *anonymous namespace::DummyAliasOperationPrinter::printRegion(mlir::Block *this, mlir::Region *a2, int a3, char a4)
{
  if (*a2 != a2)
  {
    v4 = this;
    if ((*(*(this + 2) + 40) & 8) != 0)
    {
      v10 = *(this + 8);
      if ((*(this + 7) - v10) > 4)
      {
        *(v10 + 4) = 125;
        *v10 = 774778491;
        *(this + 8) += 5;
      }

      else
      {
        v11 = (this + 32);

        return llvm::raw_ostream::write(v11, "{...}", 5uLL);
      }
    }

    else
    {
      v6 = *(a2 + 1);
      if (v6)
      {
        v7 = (v6 - 8);
      }

      else
      {
        v7 = 0;
      }

      for (i = *(*(a2 + 1) + 8); i != a2; i = *(i + 1))
      {
        if (i)
        {
          v9 = (i - 8);
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  return this;
}

uint64_t anonymous namespace::AliasInitializer::visit(_anonymous_namespace_::AliasInitializer *a1, void **a2, int a3)
{
  v62[6] = *MEMORY[0x277D85DE8];
  __src[0] = 0;
  __src[16] = 0;
  *&__src[24] = 0;
  v60 = v62;
  v61 = 0x600000000;
  v45[0] = a2;
  *&v45[1] = *__src;
  *(&v45[2] + 4) = *&__src[12];
  v46 = &v48;
  v47 = 0x600000000;
  v8 = v7;
  if (v46 != &v48)
  {
    free(v46);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  if (v8)
  {
    v42 = v6 - *(a1 + 5);
    v45[0] = &v45[3];
    *&v45[1] = xmmword_25736B040;
    v10 = *(*a1 + 32);
    v9 = *(*a1 + 40);
    if (v10 != v9)
    {
      do
      {
        while (1)
        {
          v11 = (*(**v10 + 24))(*v10, a2, a1 + 14);
          if (v11)
          {
            break;
          }

          if (++v10 == v9)
          {
            goto LABEL_15;
          }
        }

        v12 = v11;
        llvm::SmallVectorImpl<char>::operator=(v45, a1 + 7);
        ++v10;
      }

      while (v12 != 2 && v10 != v9);
LABEL_15:
      v14 = v45[0];
      if (v45[1])
      {
        *__src = &__src[24];
        *&__src[8] = xmmword_25738E870;
        v15 = sanitizeIdentifier(v45[0], v45[1], __src, "$_-", 3uLL, 0);
        v17 = v16;
        if (v16)
        {
          v18 = v15;
          v19 = *(a1 + 1);
          v19[10] = v19[10] + v16;
          v20 = *v19;
          v21 = *v19 + v16;
          if (*v19)
          {
            v22 = v21 > v19[1];
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v40 = v18;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v19, v16, v16, 0);
            v18 = v40;
            v20 = Slow;
          }

          else
          {
            *v19 = v21;
          }

          memmove(v20, v18, v17);
        }

        else
        {
          v20 = 0;
        }

        *(v6 + 8) = v20;
        *(v6 + 16) = v17;
        *(v6 + 24) = 1;
        *(v6 + 32) = 1;
        *(v6 + 48) = 0;
        if (*__src != &__src[24])
        {
          free(*__src);
        }

        v14 = v45[0];
      }

      if (v14 != &v45[3])
      {
        free(v14);
      }
    }

    if (a3)
    {
      v23 = -1073741824;
    }

    else
    {
      v23 = 0x40000000;
    }

    *(v6 + 32) = *(v6 + 32) & 0x3FFFFFFF | v23;
    *__src = &__src[16];
    *&__src[8] = 0x600000000;
    memset(&v45[1], 0, 28);
    v45[0] = &unk_28689A800;
    v46 = &v48;
    v47 = 0;
    v48 = a1;
    v49 = a3;
    v50 = __src;
    v51 = 0;
    v53 = 0;
    v57 = 0;
    v58 = 1;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v52 = &unk_2868A4198;
    v24 = *a2;
    v25 = **a2;
    if (v25[3] == &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      if (v24[17] == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        v31 = a2;
      }

      else
      {
        v31 = 0;
      }

      v44 = v31;
      if (v31)
      {
        ElementType = mlir::MemRefType::getElementType(&v44);
        (*(v45[0] + 4))(v45, ElementType);
        v43[0] = mlir::MemRefType::getLayout(&v44);
        v43[1] = v33;
        if (*(*v43[0] + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || (mlir::MemRefLayoutAttrInterface::isIdentity(v43) & 1) == 0)
        {
          Layout = mlir::MemRefType::getLayout(&v44);
          (*(v45[0] + 5))(v45, Layout);
        }

        if (mlir::MemRefType::getMemorySpace(&v44))
        {
          MemorySpace = mlir::MemRefType::getMemorySpace(&v44);
          (*(v45[0] + 5))(v45, MemorySpace);
        }
      }

      else
      {
        v43[0] = v45;
        mlir::AbstractType::walkImmediateSubElements(v24);
      }
    }

    else
    {
      (*(*v25 + 7))(**a2, a2, v45);
    }

    v26 = v51;
    v27 = *(a1 + 5) + v42;
    v28 = (v27 + 40);
    if ((v27 + 40) != __src)
    {
      v29 = *__src;
      if (*__src == &__src[16])
      {
        v36 = *&__src[8];
        v37 = *(v27 + 48);
        if (v37 >= *&__src[8])
        {
          if (*&__src[8])
          {
            memmove(*v28, *__src, 8 * *&__src[8]);
          }
        }

        else
        {
          if (*(v27 + 52) < *&__src[8])
          {
            *(v27 + 48) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v37)
          {
            memmove(*v28, *__src, 8 * v37);
          }

          else
          {
            v37 = 0;
          }

          if (*&__src[8] != v37)
          {
            memcpy(*v28 + 8 * v37, (*__src + 8 * v37), 8 * (*&__src[8] - v37));
          }
        }

        *(v27 + 48) = v36;
      }

      else
      {
        v30 = *(v27 + 40);
        if (v30 != (v27 + 56))
        {
          free(v30);
          v29 = *__src;
        }

        *(v27 + 40) = v29;
        *(v27 + 48) = *&__src[8];
        *__src = &__src[16];
        *&__src[12] = 0;
      }

      *&__src[8] = 0;
    }

    if (v26)
    {
      *(v27 + 32) = *(v27 + 32) & 0xC0000000 | (v26 + 1) & 0x3FFFFFFF;
      v45[0] = &unk_28689A800;
      llvm::raw_null_ostream::~raw_null_ostream(&v52);
      v38 = v46;
      if (v46 == &v48)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v45[0] = &unk_28689A800;
      llvm::raw_null_ostream::~raw_null_ostream(&v52);
      v38 = v46;
      if (v46 == &v48)
      {
LABEL_67:
        llvm::deallocate_buffer(v45[2], (8 * LODWORD(v45[4])));
      }
    }

    free(v38);
    goto LABEL_67;
  }

  if ((a3 & 1) == 0)
  {
  }

  return *(v6 + 32) & 0x3FFFFFFF;
}

uint64_t llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>>::insert(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 + 1);
  v12 = *a2;
  v13 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>(a1, &v12, &v13, &v14);
  if (v15 != 1)
  {
    return *(a1 + 24) + 104 * *(v14 + 8);
  }

  v5 = *(a1 + 32);
  *(v14 + 8) = v5;
  v12 = a2;
  if (v5 >= *(a1 + 36))
  {
  }

  v6 = (*(a1 + 24) + 104 * v5);
  *v6 = *a2;
  v7 = *v4;
  v8 = *(v4 + 12);
  v6[5] = v6 + 7;
  v9 = (v6 + 5);
  *(v9 - 20) = v8;
  *(v9 - 32) = v7;
  *(v9 + 8) = 0x600000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(v9, a2 + 5);
  }

  v10 = *(a1 + 32) + 1;
  *(a1 + 32) = v10;
  return *(a1 + 24) + 104 * v10 - 104;
}

_anonymous_namespace_::AliasInitializer *anonymous namespace::AliasInitializer::markAliasNonDeferrable(_anonymous_namespace_::AliasInitializer *this, uint64_t a2)
{
  v2 = *(this + 5) + 104 * a2;
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    *(v2 + 32) = v3 & 0x7FFFFFFF;
    v4 = *(v2 + 48);
    if (v4)
    {
      v5 = this;
      v6 = *(v2 + 40);
      v7 = 8 * v4;
      do
      {
        v8 = *v6++;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return this;
}

void anonymous namespace::DummyAliasDialectAsmPrinter::~DummyAliasDialectAsmPrinter(_anonymous_namespace_::DummyAliasDialectAsmPrinter *this)
{
  *this = &unk_28689A800;
  llvm::raw_null_ostream::~raw_null_ostream((this + 88));
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

{
  *this = &unk_28689A800;
  llvm::raw_null_ostream::~raw_null_ostream((this + 88));
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

char *sanitizeIdentifier(char *a1, uint64_t a2, void *a3, void *__s, size_t __n, char a6)
{
  v10 = a1;
  v29[0] = a1;
  v29[1] = a2;
  v28[0] = __s;
  v28[1] = __n;
  v26[2] = a3;
  v27 = v28;
  v26[0] = v29;
  v26[1] = &v27;
  v11 = *a1;
  if ((v11 & 0x80000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x400) != 0)
  {
    goto LABEL_36;
  }

  if (v11 - 48 >= 0xA && ((v11 & 0xDF) - 65) >= 0x1Au)
  {
    if (__n)
    {
      v19 = a6;
      v20 = memchr(__s, v11, __n);
      a6 = v19;
      if (v20)
      {
        v21 = v20 - __s == -1;
      }

      else
      {
        v21 = 1;
      }

      v22 = !v21;
      if (v11 == 32 || (v22 & 1) != 0)
      {
        goto LABEL_7;
      }
    }

    else if (v11 == 32)
    {
      goto LABEL_7;
    }

LABEL_36:
    v23 = a3[1];
    if ((v23 + 1) > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a3 + v23) = 95;
    ++a3[1];
LABEL_38:
    sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(v26);
    return *a3;
  }

LABEL_7:
  if ((a6 & 1) != 0 || (v13 = v10[a2 - 1], v13 < 0) || (*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x400) == 0)
  {
    if (a2)
    {
      v14 = 0;
      while (1)
      {
        v15 = v10[v14];
        if ((v15 - 48) >= 0xA && ((v10[v14] & 0xDF) - 65) >= 0x1Au)
        {
          if (!__n)
          {
            break;
          }

          v17 = memchr(__s, v15, __n);
          if (!v17 || v17 - __s == -1)
          {
            break;
          }
        }

        if (a2 == ++v14)
        {
          return v10;
        }
      }

      goto LABEL_38;
    }
  }

  else
  {
    sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(v26);
    v25 = a3[1];
    if ((v25 + 1) > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a3 + v25) = 95;
    v10 = *a3;
    ++a3[1];
  }

  return v10;
}

void *llvm::SmallVectorImpl<char>::operator=(void *result, void *a2)
{
  if (result != a2)
  {
    v4 = a2 + 3;
    v3 = *a2;
    if (v3 == v4)
    {
      v6 = a2[1];
      v7 = result[1];
      if (v7 >= v6)
      {
        if (v6)
        {
          v8 = result;
          memmove(*result, v3, a2[1]);
          result = v8;
        }

        result[1] = v6;
      }

      else
      {
        if (result[2] < v6)
        {
          result[1] = 0;
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v9 = result;
        if (v7)
        {
          memmove(*result, v3, v7);
        }

        v10 = a2[1];
        if (v10 != v7)
        {
          memcpy((*v9 + v7), (*a2 + v7), v10 - v7);
        }

        result = v9;
        v9[1] = v6;
      }
    }

    else
    {
      if (*result != result + 3)
      {
        v5 = result;
        free(*result);
        result = v5;
        v3 = *a2;
      }

      *result = v3;
      *(result + 1) = *(a2 + 1);
      a2[2] = 0;
      *a2 = v4;
    }

    a2[1] = 0;
  }

  return result;
}

void sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(*a1 + 8);
  if (v2)
  {
    v4 = *v1;
    v5 = &(*v1)[v2];
    do
    {
      v8 = *v4;
      v9 = *v4;
      v10 = (v8 - 48) >= 0xA && ((*v4 & 0xDF) - 65) >= 0x1Au;
      if (v10 && ((v11 = **(a1 + 8), (v12 = *(v11 + 8)) == 0) || ((v13 = *v11, (v14 = memchr(*v11, *v4, v12)) != 0) ? (v15 = v14 - v13 == -1) : (v15 = 1), v15)))
      {
        v6 = *(a1 + 16);
        if (v9 != 32)
        {
          if (v9)
          {
            v17 = v8;
            v18 = 16;
            do
            {
              v29[v18--] = llvm::hexdigit(unsigned int,BOOL)::LUT[v17 & 0xF];
              v19 = v17 > 0xF;
              v17 >>= 4;
            }

            while (v19);
            v20 = v18 + 1;
            v21 = 16 - v18;
            if ((16 - v18) >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }
          }

          else
          {
            v29[16] = 48;
            v20 = 16;
            v21 = 1;
          }

          if (v21 > 0x16)
          {
            operator new();
          }

          v28 = v21;
          if (v20 != 17)
          {
            memcpy(__dst, &v29[v20], v21);
          }

          *(__dst + v21) = 0;
          v22 = v28;
          v23 = __dst[0];
          if (v28 >= 0)
          {
            v24 = __dst;
          }

          else
          {
            v24 = __dst[0];
          }

          if (v28 >= 0)
          {
            v25 = v28;
          }

          else
          {
            v25 = __dst[1];
          }

          v26 = v6[1];
          if (v6[2] < v26 + v25)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v25)
          {
            memcpy((*v6 + v26), v24, v25);
            v26 = v6[1];
          }

          v6[1] = v26 + v25;
          if (v22 < 0)
          {
            operator delete(v23);
          }

          goto LABEL_6;
        }

        v16 = v6[1];
        if ((v16 + 1) > v6[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v6 + v16) = 95;
      }

      else
      {
        v6 = *(a1 + 16);
        v7 = v6[1];
        if ((v7 + 1) > v6[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v6 + v7) = v9;
      }

      ++v6[1];
LABEL_6:
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_257066948()
{

  JUMPOUT(0x259C63180);
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printType(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAttribute(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

unint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAttributeWithoutType(uint64_t a1, void **a2)
{
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

uint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAlias(uint64_t a1)
{
  (*(*a1 + 40))(a1);
  return 1;
}

{
  (*(*a1 + 32))(a1);
  return 1;
}

uint64_t anonymous namespace::DummyAliasDialectAsmPrinter::pushCyclicPrinting(_anonymous_namespace_::DummyAliasDialectAsmPrinter *this, const void *a2)
{
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 16, &v5, v6);
  result = v7;
  if (v7 == 1)
  {
    v4 = *(this + 12);
    if (v4 >= *(this + 13))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(this + 5) + 8 * v4) = v5;
    ++*(this + 12);
  }

  return result;
}

int32x2_t *anonymous namespace::DummyAliasDialectAsmPrinter::popCyclicPrinting(int32x2_t *this)
{
  v1 = this[4].i32[0];
  if (v1)
  {
    v2 = this[2];
    v3 = this[6].u32[0];
    v4 = *(*&this[5] + 8 * v3 - 8);
    v5 = v1 - 1;
    v6 = ((v4 >> 4) ^ (v4 >> 9)) & (v1 - 1);
    v7 = *(*&v2 + 8 * v6);
    if (v4 == v7)
    {
LABEL_3:
      *(*&v2 + 8 * v6) = -8192;
      this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & v5;
        v7 = *(*&v2 + 8 * v6);
        if (v4 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    this[6].i32[0] = v3 - 1;
  }

  else
  {
    --this[6].i32[0];
  }

  return this;
}

uint64_t anonymous namespace::AliasInitializer::visit(_anonymous_namespace_::AliasInitializer *a1, void **a2, int a3, char a4)
{
  v98[6] = *MEMORY[0x277D85DE8];
  v95[0] = 0;
  v95[16] = 0;
  *&v95[24] = 0;
  v96 = v98;
  v97 = 0x600000000;
  v81[0] = a2;
  *&v81[1] = *v95;
  *(&v81[2] + 4) = *&v95[12];
  v82 = &v84;
  v83 = 0x600000000;
  v10 = v9;
  if (v82 != &v84)
  {
    free(v82);
  }

  if (v96 != v98)
  {
    free(v96);
  }

  if (v10)
  {
    v72 = v8 - *(a1 + 5);
    v71 = a4;
    v81[0] = &v81[3];
    *&v81[1] = xmmword_25736B040;
    v12 = *(*a1 + 32);
    v11 = *(*a1 + 40);
    if (v12 != v11)
    {
      do
      {
        while (1)
        {
          v13 = (*(**v12 + 16))(*v12, a2, a1 + 14);
          if (v13)
          {
            break;
          }

          if (++v12 == v11)
          {
            goto LABEL_15;
          }
        }

        v14 = v13;
        llvm::SmallVectorImpl<char>::operator=(v81, a1 + 7);
        ++v12;
      }

      while (v14 != 2 && v12 != v11);
LABEL_15:
      v16 = v81[0];
      if (v81[1])
      {
        *v95 = &v95[24];
        *&v95[8] = xmmword_25738E870;
        v17 = sanitizeIdentifier(v81[0], v81[1], v95, "$_-", 3uLL, 0);
        v19 = v18;
        if (v18)
        {
          v20 = v17;
          v21 = *(a1 + 1);
          v21[10] = v21[10] + v18;
          v22 = *v21;
          v23 = *v21 + v18;
          if (*v21)
          {
            v24 = v23 > v21[1];
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            v41 = v20;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v21, v18, v18, 0);
            v20 = v41;
            v22 = Slow;
          }

          else
          {
            *v21 = v23;
          }

          memmove(v22, v20, v19);
        }

        else
        {
          v22 = 0;
        }

        *(v8 + 8) = v22;
        *(v8 + 16) = v19;
        *(v8 + 24) = 1;
        *(v8 + 32) = 1;
        *(v8 + 48) = 0;
        if (*v95 != &v95[24])
        {
          free(*v95);
        }

        v16 = v81[0];
      }

      if (v16 != &v81[3])
      {
        free(v16);
      }
    }

    if (a3)
    {
      v25 = 0x80000000;
    }

    else
    {
      v25 = 0;
    }

    *(v8 + 32) = v25 & 0xC0000000 | *(v8 + 32) & 0x3FFFFFFF;
    *v95 = &v95[16];
    *&v95[8] = 0x600000000;
    memset(&v81[1], 0, 28);
    v81[0] = &unk_28689A800;
    v82 = &v84;
    v83 = 0;
    v84 = a1;
    v85 = a3;
    v86 = v95;
    v87 = 0;
    v89 = 0;
    v93 = 0;
    v94 = 1;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v88 = &unk_2868A4198;
    v26 = **a2;
    if (v26[3] != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      (*(*v26 + 5))(v26, a2, v81);
      goto LABEL_37;
    }

    v29 = (*a2)[17];
    if (v29 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_54;
    }

    {
      if (v29 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
      {
        v30 = a2;
      }

      else
      {
        v30 = 0;
      }

      v73[0] = v30;
      if (v30)
      {
LABEL_52:
        ReferencedAttr = mlir::DistinctAttr::getReferencedAttr(v73);
        goto LABEL_53;
      }
    }

    else
    {
      if (v29 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
      {
        v43 = a2;
      }

      else
      {
        v43 = 0;
      }

      v73[0] = v43;
      if (v43)
      {
        goto LABEL_52;
      }
    }

    v44 = (*a2)[17];
    if (v44 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v45 = a2;
    }

    else
    {
      v45 = 0;
    }

    v80 = v45;
    if (v45)
    {
      Value = mlir::DictionaryAttr::getValue(&v80);
      if (v47)
      {
        v48 = Value;
        v49 = (Value + 16 * v47);
        do
        {
          Name = mlir::NamedAttribute::getName(v48);
          (*(v81[0] + 5))(v81, Name);
          (*(v81[0] + 5))(v81, *(v48 + 1));
          v48 = (v48 + 16);
        }

        while (v48 != v49);
      }

      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v51 = a2;
    }

    else
    {
      v51 = 0;
    }

    v79 = v51;
    if (v51)
    {
      v52 = mlir::ArrayAttr::getValue(&v79);
      if (v53)
      {
        v54 = v52;
        v55 = 8 * v53;
        do
        {
          v56 = *v54++;
          (*(v81[0] + 5))(v81, v56);
          v55 -= 8;
        }

        while (v55);
      }

      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v57 = a2;
    }

    else
    {
      v57 = 0;
    }

    v78 = v57;
    if (v57)
    {
      v58 = mlir::TypeAttr::getValue(&v78);
      (*(v81[0] + 4))(v81, v58);
      goto LABEL_37;
    }

    if (v44 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
    {
      v59 = a2;
    }

    else
    {
      v59 = 0;
    }

    v77 = v59;
    if (v59)
    {
      ReferencedAttr = mlir::OpaqueLoc::getFallbackLocation(&v77);
    }

    else
    {
      if (v44 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
      {
        v60 = a2;
      }

      else
      {
        v60 = 0;
      }

      v76 = v60;
      if (!v60)
      {
        if (v44 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
        {
          v61 = a2;
        }

        else
        {
          v61 = 0;
        }

        v75 = v61;
        if (v61)
        {
          Callee = mlir::CallSiteLoc::getCallee(&v75);
          (*(v81[0] + 5))(v81, Callee);
          Caller = mlir::CallSiteLoc::getCaller(&v75);
          (*(v81[0] + 5))(v81, Caller);
        }

        else
        {
          if (v44 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
          {
            v64 = a2;
          }

          else
          {
            v64 = 0;
          }

          v74 = v64;
          if (v64)
          {
            Metadata = mlir::FusedLoc::getMetadata(&v74);
            if (Metadata)
            {
              (*(v81[0] + 5))(v81, Metadata);
            }

            Locations = mlir::FusedLoc::getLocations(&v74);
            if (v67)
            {
              v68 = Locations;
              v69 = 8 * v67;
              do
              {
                v70 = *v68++;
                (*(v81[0] + 5))(v81, v70);
                v69 -= 8;
              }

              while (v69);
            }
          }
        }

        goto LABEL_37;
      }

      if (*(*mlir::NameLoc::getChildLoc(&v76) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
      {
LABEL_37:
        if ((v71 & 1) == 0)
        {
          v73[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
          v73[1] = v27;
          if (v73[0])
          {
            Type = mlir::TypedAttr::getType(v73);
            if (*(*Type + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {
              (*(v81[0] + 4))(v81, Type);
            }
          }
        }

LABEL_54:
        v32 = v87;
        v33 = *(a1 + 5) + v72;
        v34 = (v33 + 40);
        if ((v33 + 40) != v95)
        {
          v35 = *v95;
          if (*v95 == &v95[16])
          {
            v37 = *&v95[8];
            v38 = *(v33 + 48);
            if (v38 >= *&v95[8])
            {
              if (*&v95[8])
              {
                memmove(*v34, *v95, 8 * *&v95[8]);
              }
            }

            else
            {
              if (*(v33 + 52) < *&v95[8])
              {
                *(v33 + 48) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v38)
              {
                memmove(*v34, *v95, 8 * v38);
              }

              else
              {
                v38 = 0;
              }

              v39 = *&v95[8] - v38;
              if (v39)
              {
                memcpy(*v34 + 8 * v38, (*v95 + 8 * v38), 8 * v39);
              }
            }

            *(v33 + 48) = v37;
          }

          else
          {
            v36 = *(v33 + 40);
            if (v36 != (v33 + 56))
            {
              free(v36);
              v35 = *v95;
            }

            *(v33 + 40) = v35;
            *(v33 + 48) = *&v95[8];
            *v95 = &v95[16];
            *&v95[12] = 0;
          }

          *&v95[8] = 0;
        }

        if (v32)
        {
          *(v33 + 32) = *(v33 + 32) & 0xC0000000 | (v32 + 1) & 0x3FFFFFFF;
        }

        v81[0] = &unk_28689A800;
        llvm::raw_null_ostream::~raw_null_ostream(&v88);
        if (v82 != &v84)
        {
          free(v82);
        }

        llvm::deallocate_buffer(v81[2], (8 * LODWORD(v81[4])));
      }

      ReferencedAttr = mlir::NameLoc::getChildLoc(&v76);
    }

LABEL_53:
    (*(v81[0] + 5))(v81, ReferencedAttr);
    goto LABEL_37;
  }

  if ((a3 & 1) == 0)
  {
  }

  return *(v8 + 32) & 0x3FFFFFFF;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplENS1_4TypeEEUlT_E_EEvlS2_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 56))();
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplES2_EUlT_E_EEvlS2_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 64))();
  }

  return result;
}

mlir::Block *anonymous namespace::DummyAliasOperationPrinter::print(_anonymous_namespace_::AliasInitializer **this, mlir::Block *a2, int a3, char a4)
{
  if (a3)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
    while (v7 != v8)
    {
      v9 = *v7;
      (*(*this + 4))(this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(this[2] + 40))
      {
      }

      ++v7;
    }
  }

  v11 = (a2 + 32);
  result = *(a2 + 4);
  if (result == (a2 + 32))
  {
    v13 = *(a2 + 5);
  }

  else
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
    {
      v15 = ValuePtr;
      ValuePtr = v15;
    }

    result = (*(**(ValuePtr + 48) + 32))(*(ValuePtr + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    v13 = *(a2 + 5);
    if (result && (a4 & 1) == 0)
    {
      v11 = *v11;
    }
  }

  while (v13 != v11)
  {
    v14 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
    result = (*(*this + 26))(this, v14);
    v13 = v13[1];
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v81[6] = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    return;
  }

  v6 = a1;
  if (a3 != 2)
  {
    v14 = a3;
    if (a3 > 0)
    {
      v16 = a3 >> 1;
      v17 = (a1 + 104 * (a3 >> 1));
      v18 = a3 - (a3 >> 1);
      v19 = a3 >> 1;
      if (v14 > a5)
      {

        return;
      }

      v54 = a4 + 104 * v16;
      v55 = a4 + 104 * v14;
      v56 = v54;
      v57 = a4;
      while (1)
      {
        if (v56 == v55)
        {
          if (v57 != v54)
          {
            v67 = 0;
            do
            {
              v68 = v6 + v67;
              v69 = v57 + v67;
              *v68 = *(v57 + v67);
              v70 = *(v57 + v67 + 8);
              *(v68 + 20) = *(v57 + v67 + 20);
              *(v68 + 8) = v70;
              llvm::SmallVectorImpl<unsigned long>::operator=(v6 + v67 + 40, (v57 + v67 + 40));
              v67 += 104;
            }

            while (v69 + 104 != v54);
          }

LABEL_131:
          if (a4)
          {
            v75 = (a4 + 56);
            do
            {
              v76 = *(v75 - 2);
              if (v75 != v76)
              {
                free(v76);
              }

              v75 += 13;
              --v14;
            }

            while (v14);
          }

          return;
        }

        v59 = *(v56 + 32);
        v60 = *(v57 + 32);
        if ((v59 & 0x3FFFFFFF) != (v60 & 0x3FFFFFFF))
        {
          if ((v59 & 0x3FFFFFFFu) >= (v60 & 0x3FFFFFFF))
          {
            goto LABEL_100;
          }

          goto LABEL_116;
        }

        v61 = v59 & 0x40000000;
        if (((v60 >> 30) & 1) != v61 >> 30)
        {
          break;
        }

        if (*(v57 + 24) != 1)
        {
          goto LABEL_100;
        }

        if (*(v56 + 24) == 1)
        {
          v62 = *(v56 + 16);
          v63 = *(v57 + 16);
          if (v63 >= v62)
          {
            v64 = *(v56 + 16);
          }

          else
          {
            v64 = *(v57 + 16);
          }

          if (v64 && (v65 = memcmp(*(v56 + 8), *(v57 + 8), v64)) != 0)
          {
            if (v65 < 0)
            {
              goto LABEL_116;
            }
          }

          else if (v62 < v63)
          {
            goto LABEL_116;
          }

LABEL_100:
          *v6 = *v57;
          v58 = *(v57 + 8);
          *(v6 + 20) = *(v57 + 20);
          *(v6 + 8) = v58;
          llvm::SmallVectorImpl<unsigned long>::operator=(v6 + 40, (v57 + 40));
          v57 += 104;
          v6 += 104;
          if (v57 == v54)
          {
            goto LABEL_128;
          }
        }

        else
        {
LABEL_116:
          *v6 = *v56;
          v66 = *(v56 + 8);
          *(v6 + 20) = *(v56 + 20);
          *(v6 + 8) = v66;
          llvm::SmallVectorImpl<unsigned long>::operator=(v6 + 40, (v56 + 40));
          v56 += 104;
          v6 += 104;
          if (v57 == v54)
          {
LABEL_128:
            if (v56 != v55)
            {
              v71 = 0;
              do
              {
                v72 = v56 + v71;
                v73 = v6 + v71;
                *v73 = *(v56 + v71);
                v74 = *(v56 + v71 + 8);
                *(v73 + 20) = *(v56 + v71 + 20);
                *(v73 + 8) = v74;
                llvm::SmallVectorImpl<unsigned long>::operator=(v6 + v71 + 40, (v56 + v71 + 40));
                v71 += 104;
              }

              while (v72 + 104 != v55);
            }

            goto LABEL_131;
          }
        }
      }

      if (!v61)
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }

    if (a1 == a2)
    {
      return;
    }

    v21 = (a1 + 104);
    if ((a1 + 104) == a2)
    {
      return;
    }

    v22 = 0;
    v23 = a1;
LABEL_26:
    v24 = v23;
    v23 = v21;
    v25 = *(v24 + 34);
    v26 = *(v24 + 8);
    if ((v25 & 0x3FFFFFFF) == (v26 & 0x3FFFFFFF))
    {
      v27 = v25 & 0x40000000;
      if (((v26 >> 30) & 1) == v27 >> 30)
      {
        if (*(v24 + 24) != 1)
        {
          goto LABEL_25;
        }

        if (*(v24 + 128) == 1)
        {
          v28 = v24[15];
          v29 = v24[2];
          if (v29 >= v28)
          {
            v30 = v24[15];
          }

          else
          {
            v30 = v24[2];
          }

          if (v30 && (v31 = memcmp(v24[14], v24[1], v30)) != 0)
          {
            if ((v31 & 0x80000000) == 0)
            {
              goto LABEL_25;
            }
          }

          else if (v28 >= v29)
          {
            goto LABEL_25;
          }
        }
      }

      else if (!v27)
      {
        goto LABEL_25;
      }
    }

    else if ((v25 & 0x3FFFFFFFu) >= (v26 & 0x3FFFFFFF))
    {
      goto LABEL_25;
    }

    v32 = *v23;
    *__s1 = *(v24 + 7);
    *&__s1[12] = *(v24 + 124);
    v77 = v32;
    __src = v81;
    v80 = 0x600000000;
    if (*(v24 + 38))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(&__src, v24 + 18);
    }

    for (i = v22; ; i -= 104)
    {
      v34 = v6 + i;
      *(v34 + 104) = *(v6 + i);
      *(v34 + 112) = *(v6 + i + 8);
      *(v34 + 124) = *(v6 + i + 20);
      v35 = *(v6 + i + 40);
      v36 = v6 + i + 56;
      if (v36 == v35)
      {
        break;
      }

      v37 = *(v34 + 144);
      if ((v34 + 160) != v37)
      {
        free(v37);
        v35 = *(v34 + 40);
      }

      v38 = v6 + i;
      *(v34 + 144) = v35;
      *(v38 + 152) = *(v6 + i + 48);
      *(v34 + 40) = v36;
      *(v38 + 52) = 0;
      *(v24 + 12) = 0;
      if (!i)
      {
LABEL_77:
        v48 = v6;
LABEL_78:
        v49 = __src;
        *v48 = v77;
        v50 = v6 + i;
        *(v50 + 8) = *__s1;
        *(v50 + 20) = *&__s1[12];
        if (v48 != &v77)
        {
          if (v49 == v81)
          {
            v52 = v80;
            v53 = *(v48 + 48);
            if (v53 >= v80)
            {
              if (v80)
              {
                memmove(*(v50 + 40), v49, 8 * v80);
              }
            }

            else
            {
              if (*(v48 + 52) < v80)
              {
                *(v48 + 48) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v53)
              {
                memmove(*(v50 + 40), v49, 8 * v53);
              }

              else
              {
                v53 = 0;
              }

              if (v80 != v53)
              {
                memcpy((*(v50 + 40) + 8 * v53), __src + 8 * v53, 8 * (v80 - v53));
              }
            }

            *(v48 + 48) = v52;
          }

          else
          {
            v51 = *(v50 + 40);
            if (v51 != (v48 + 56))
            {
              free(v51);
              v49 = __src;
            }

            *(v50 + 40) = v49;
            *(v48 + 48) = v80;
            __src = v81;
            HIDWORD(v80) = 0;
          }

          LODWORD(v80) = 0;
          v49 = __src;
        }

        if (v49 != v81)
        {
          free(v49);
        }

LABEL_25:
        v21 = v23 + 13;
        v22 += 104;
        if (v23 + 13 == a2)
        {
          return;
        }

        goto LABEL_26;
      }

LABEL_59:
      v43 = *(v6 + i - 72);
      if ((*&__s1[24] & 0x3FFFFFFF) == (v43 & 0x3FFFFFFF))
      {
        if (((v43 >> 30) & 1) == (*&__s1[24] & 0x40000000u) >> 30)
        {
          if (*(v6 + i - 80) != 1)
          {
            goto LABEL_76;
          }

          if (__s1[16] == 1)
          {
            v44 = *&__s1[8];
            v45 = *(v6 + i - 88);
            if (v45 >= *&__s1[8])
            {
              v46 = *&__s1[8];
            }

            else
            {
              v46 = *(v6 + i - 88);
            }

            if (v46 && (v47 = memcmp(*__s1, *(v6 + i - 96), v46)) != 0)
            {
              if ((v47 & 0x80000000) == 0)
              {
                goto LABEL_76;
              }
            }

            else if (v44 >= v45)
            {
LABEL_76:
              v48 = v6 + i;
              goto LABEL_78;
            }
          }
        }

        else if ((*&__s1[24] & 0x40000000) == 0)
        {
          goto LABEL_76;
        }
      }

      else if ((*&__s1[24] & 0x3FFFFFFFu) >= (v43 & 0x3FFFFFFF))
      {
        goto LABEL_76;
      }

      v24 -= 13;
    }

    v40 = (v34 + 48);
    v39 = *(v34 + 48);
    v41 = *(v34 + 152);
    if (v41 >= v39)
    {
      if (v39)
      {
        memmove(*(v34 + 144), v35, 8 * v39);
      }
    }

    else
    {
      if (*(v6 + i + 156) < v39)
      {
        *(v34 + 152) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v41)
      {
        memmove(*(v34 + 144), v35, 8 * v41);
        v42 = *v40 - v41;
        if (!v42)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v41 = 0;
      v42 = *v40;
      if (*v40)
      {
LABEL_57:
        memcpy((*(v34 + 144) + 8 * v41), (*(v34 + 40) + 8 * v41), 8 * v42);
      }
    }

LABEL_58:
    *(v34 + 152) = v39;
    *v40 = 0;
    if (!i)
    {
      goto LABEL_77;
    }

    goto LABEL_59;
  }

  v7 = *(a2 - 18);
  v8 = *(a1 + 32);
  if ((v7 & 0x3FFFFFFF) == (v8 & 0x3FFFFFFF))
  {
    v9 = v7 & 0x40000000;
    if (((v8 >> 30) & 1) == v9 >> 30)
    {
      if (*(a1 + 24) != 1)
      {
        return;
      }

      if (*(a2 - 80) == 1)
      {
        v10 = *(a2 - 11);
        v11 = *(a1 + 16);
        if (v11 >= v10)
        {
          v12 = *(a2 - 11);
        }

        else
        {
          v12 = *(a1 + 16);
        }

        if (v12 && (v13 = memcmp(*(a2 - 12), *(a1 + 8), v12)) != 0)
        {
          if ((v13 & 0x80000000) == 0)
          {
            return;
          }
        }

        else if (v10 >= v11)
        {
          return;
        }
      }
    }

    else if (!v9)
    {
      return;
    }
  }

  else if ((v7 & 0x3FFFFFFFu) >= (v8 & 0x3FFFFFFF))
  {
    return;
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo> *&,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo> *&>(uint64_t *a1, uint64_t *a2)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = (a2 + 1);
  v12[0] = *(a1 + 1);
  *(v12 + 12) = *(a1 + 20);
  __src = v15;
  v14 = 0x600000000;
  if (*(a1 + 12))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(&__src, a1 + 5);
  }

  v6 = *v5;
  *(a1 + 20) = *(v5 + 12);
  *(a1 + 1) = v6;
  llvm::SmallVectorImpl<unsigned long>::operator=((a1 + 5), a2 + 5);
  *v5 = v12[0];
  *(v5 + 12) = *(v12 + 12);
  v7 = __src;
  if (v12 != v5)
  {
    if (__src != v15)
    {
      v8 = a2[5];
      if (v8 != a2 + 7)
      {
        free(v8);
        v7 = __src;
      }

      a2[5] = v7;
      a2[6] = v14;
      __src = v15;
      HIDWORD(v14) = 0;
      goto LABEL_17;
    }

    v9 = v14;
    v10 = *(a2 + 12);
    if (v10 >= v14)
    {
      if (v14)
      {
        memmove(a2[5], __src, 8 * v14);
      }

      goto LABEL_16;
    }

    if (*(a2 + 13) < v14)
    {
      *(a2 + 12) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v10)
    {
      memmove(a2[5], __src, 8 * v10);
      v11 = v14 - v10;
      if (v14 == v10)
      {
LABEL_16:
        *(a2 + 12) = v9;
LABEL_17:
        LODWORD(v14) = 0;
        v7 = __src;
        goto LABEL_18;
      }
    }

    else
    {
      v10 = 0;
      v11 = v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    memcpy((a2[5] + 8 * v10), __src + 8 * v10, 8 * v11);
    goto LABEL_16;
  }

LABEL_18:
  if (v7 != v15)
  {
    free(v7);
  }
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      *a4 = *result;
      v7 = *(result + 8);
      v8 = *(result + 20);
      *(a4 + 40) = a4 + 56;
      v9 = a4 + 40;
      *(a4 + 20) = v8;
      *(a4 + 8) = v7;
      *(a4 + 48) = 0x600000000;
      if (!*(result + 48))
      {
        return result;
      }

      goto LABEL_86;
    }

    if (a3 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      *a4 = *result;
      v18 = *(result + 8);
      v19 = *(result + 20);
      *(a4 + 40) = a4 + 56;
      result = a4 + 40;
      *(a4 + 20) = v19;
      *(a4 + 8) = v18;
      *(a4 + 48) = 0x600000000;
      if (*(v6 + 12))
      {
        result = llvm::SmallVectorImpl<unsigned long>::operator=(result, v6 + 5);
      }

      v20 = v6 + 13;
      if (v6 + 13 == v5)
      {
        return result;
      }

      v21 = 0;
      v22 = a4;
      v83 = v5;
LABEL_28:
      v24 = v20;
      v26 = *(v6 + 34);
      v27 = *(v22 + 32);
      if ((v26 & 0x3FFFFFFF) == (v27 & 0x3FFFFFFF))
      {
        v28 = v26 & 0x40000000;
        if (((v27 >> 30) & 1) == v28 >> 30)
        {
          if (*(v22 + 24) != 1)
          {
            goto LABEL_77;
          }

          if (*(v6 + 128) == 1)
          {
            v29 = v6[15];
            v30 = *(v22 + 16);
            if (v30 >= v29)
            {
              v31 = v6[15];
            }

            else
            {
              v31 = *(v22 + 16);
            }

            if (v31 && (v32 = memcmp(v6[14], *(v22 + 8), v31)) != 0)
            {
              if ((v32 & 0x80000000) == 0)
              {
                goto LABEL_77;
              }
            }

            else if (v29 >= v30)
            {
LABEL_77:
              *(v22 + 104) = *v24;
              v52 = *(v6 + 7);
              v53 = *(v6 + 124);
              *(v22 + 144) = v22 + 160;
              result = v22 + 144;
              *(v22 + 124) = v53;
              *(v22 + 112) = v52;
              *(v22 + 152) = 0x600000000;
              if (*(v6 + 38))
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }
          }
        }

        else if (!v28)
        {
          goto LABEL_77;
        }
      }

      else if ((v26 & 0x3FFFFFFFu) >= (v27 & 0x3FFFFFFF))
      {
        goto LABEL_77;
      }

      *(v22 + 104) = *v22;
      *(v22 + 112) = *(v22 + 8);
      *(v22 + 124) = *(v22 + 20);
      *(v22 + 144) = v22 + 160;
      *(v22 + 152) = 0x600000000;
      if (*(v22 + 48))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(v22 + 144, (v22 + 40));
      }

      v23 = a4;
      if (v22 == a4)
      {
        goto LABEL_25;
      }

      v84 = v24;
      v33 = v21;
      v23 = v22;
      while (1)
      {
        while (1)
        {
          v34 = (a4 + v33 - 96);
          v35 = *(v6 + 34);
          v36 = *(a4 + v33 - 72);
          if ((v35 & 0x3FFFFFFF) == (v36 & 0x3FFFFFFF))
          {
            v37 = v35 & 0x40000000;
            if (((v36 >> 30) & 1) == v37 >> 30)
            {
              if (*(a4 + v33 - 80) != 1)
              {
                goto LABEL_24;
              }

              if (*(v6 + 128) == 1)
              {
                v38 = v6[15];
                v39 = *(a4 + v33 - 88);
                if (v39 >= v38)
                {
                  v40 = v6[15];
                }

                else
                {
                  v40 = *(a4 + v33 - 88);
                }

                if (v40 && (v41 = memcmp(v6[14], *v34, v40)) != 0)
                {
                  if ((v41 & 0x80000000) == 0)
                  {
                    goto LABEL_24;
                  }
                }

                else if (v38 >= v39)
                {
                  v23 = a4 + v33;
LABEL_24:
                  v24 = v84;
LABEL_25:
                  *v23 = *v24;
                  v25 = *(v6 + 7);
                  *(v23 + 20) = *(v6 + 124);
                  *(v23 + 8) = v25;
                  result = v23 + 40;
                  v5 = v83;
LABEL_26:
                  result = llvm::SmallVectorImpl<unsigned long>::operator=(result, v6 + 18);
LABEL_27:
                  v22 += 104;
                  v20 = v24 + 13;
                  v21 += 104;
                  v6 = v24;
                  if (v24 + 13 == v5)
                  {
                    return result;
                  }

                  goto LABEL_28;
                }
              }
            }

            else if (!v37)
            {
              goto LABEL_24;
            }
          }

          else if ((v35 & 0x3FFFFFFFu) >= (v36 & 0x3FFFFFFF))
          {
            goto LABEL_24;
          }

          v42 = a4 + v33;
          *v42 = *(a4 + v33 - 104);
          *(v42 + 8) = *v34;
          *(v42 + 20) = *(a4 + v33 - 84);
          v43 = *(a4 + v33 - 64);
          v44 = a4 + v33 - 48;
          if (v44 == v43)
          {
            break;
          }

          v45 = *(v42 + 40);
          if ((v42 + 56) != v45)
          {
            free(v45);
            v43 = *(v42 - 64);
          }

          v46 = a4 + v33;
          *(v42 + 40) = v43;
          v47 = (v23 - 56);
          *(v46 + 48) = *(a4 + v33 - 56);
          *(v42 - 64) = v44;
          *(v46 - 52) = 0;
          v23 -= 104;
          *v47 = 0;
          v33 -= 104;
          if (!v33)
          {
LABEL_23:
            v23 = a4;
            goto LABEL_24;
          }
        }

        v48 = (v42 - 56);
        v49 = *(v42 - 56);
        v50 = *(v42 + 48);
        if (v50 >= v49)
        {
          if (v49)
          {
            memmove(*(v42 + 40), v43, 8 * v49);
          }

          goto LABEL_44;
        }

        if (*(a4 + v33 + 52) < v49)
        {
          *(v42 + 48) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v50)
        {
          memmove(*(v42 + 40), v43, 8 * v50);
          v51 = *v48 - v50;
          if (v51)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v50 = 0;
          v51 = *v48;
          if (*v48)
          {
LABEL_75:
            memcpy((*(v42 + 40) + 8 * v50), (*(v42 - 64) + 8 * v50), 8 * v51);
          }
        }

LABEL_44:
        *(v42 + 48) = v49;
        v23 -= 104;
        *v48 = 0;
        v33 -= 104;
        if (!v33)
        {
          goto LABEL_23;
        }
      }
    }

    v59 = a3 >> 1;
    v60 = 104 * (a3 >> 1);
    v61 = result + v60;
    v63 = (a4 + 40);
    v64 = &v6[v60 / 8];
    while (1)
    {
      if (v64 == v5)
      {
        if (v6 != v61)
        {
          v73 = v6 + 5;
          do
          {
            v74 = v73 - 5;
            *(v63 - 5) = *(v73 - 5);
            v75 = *(v73 - 2);
            *(v63 - 20) = *(v73 - 20);
            *(v63 - 2) = v75;
            *v63 = v63 + 2;
            v63[1] = 0x600000000;
            if (*(v73 + 2))
            {
              result = llvm::SmallVectorImpl<unsigned long>::operator=(v63, v73);
            }

            v63 += 13;
            v73 += 13;
          }

          while (v74 + 13 != v61);
        }

        return result;
      }

      v65 = *(v64 + 8);
      v66 = *(v6 + 8);
      if ((v65 & 0x3FFFFFFF) != (v66 & 0x3FFFFFFF))
      {
        break;
      }

      v67 = v65 & 0x40000000;
      if (((v66 >> 30) & 1) != v67 >> 30)
      {
        if (!v67)
        {
          goto LABEL_107;
        }

        goto LABEL_102;
      }

      if (*(v6 + 24) != 1)
      {
        goto LABEL_107;
      }

      if (*(v64 + 24) == 1)
      {
        v68 = v64[2];
        v69 = v6[2];
        if (v69 >= v68)
        {
          v70 = v64[2];
        }

        else
        {
          v70 = v6[2];
        }

        if (!v70 || (result = memcmp(v64[1], v6[1], v70), !result))
        {
          if (v68 >= v69)
          {
            goto LABEL_107;
          }

          goto LABEL_102;
        }

        if ((result & 0x80000000) != 0)
        {
          goto LABEL_102;
        }

LABEL_107:
        *(v63 - 5) = *v6;
        v72 = *(v6 + 1);
        *(v63 - 20) = *(v6 + 20);
        *(v63 - 2) = v72;
        *v63 = v63 + 2;
        v63[1] = 0x600000000;
        if (*(v6 + 12))
        {
          result = llvm::SmallVectorImpl<unsigned long>::operator=(v63, v6 + 5);
        }

        v6 += 13;
        v63 += 13;
        if (v6 == v61)
        {
LABEL_124:
          if (v64 != v5)
          {
            v80 = v64 + 5;
            do
            {
              v81 = v80 - 5;
              *(v63 - 5) = *(v80 - 5);
              v82 = *(v80 - 2);
              *(v63 - 20) = *(v80 - 20);
              *(v63 - 2) = v82;
              *v63 = v63 + 2;
              v63[1] = 0x600000000;
              if (*(v80 + 2))
              {
                result = llvm::SmallVectorImpl<unsigned long>::operator=(v63, v80);
              }

              v63 += 13;
              v80 += 13;
            }

            while (v81 + 13 != v5);
          }

          return result;
        }
      }

      else
      {
LABEL_102:
        *(v63 - 5) = *v64;
        v71 = *(v64 + 1);
        *(v63 - 20) = *(v64 + 20);
        *(v63 - 2) = v71;
        *v63 = v63 + 2;
        v63[1] = 0x600000000;
        if (*(v64 + 12))
        {
          result = llvm::SmallVectorImpl<unsigned long>::operator=(v63, v64 + 5);
        }

        v64 += 13;
        v63 += 13;
        if (v6 == v61)
        {
          goto LABEL_124;
        }
      }
    }

    if ((v65 & 0x3FFFFFFFu) >= (v66 & 0x3FFFFFFF))
    {
      goto LABEL_107;
    }

    goto LABEL_102;
  }

  v10 = (a2 - 12);
  v11 = *(a2 - 18);
  v12 = *(result + 32);
  if ((v11 & 0x3FFFFFFF) != (v12 & 0x3FFFFFFF))
  {
    if ((v11 & 0x3FFFFFFFu) < (v12 & 0x3FFFFFFF))
    {
      goto LABEL_83;
    }

    goto LABEL_117;
  }

  v13 = v11 & 0x40000000;
  if (((v12 >> 30) & 1) != v13 >> 30)
  {
    if (v13)
    {
      goto LABEL_83;
    }

    goto LABEL_117;
  }

  if (*(result + 24) != 1)
  {
    goto LABEL_117;
  }

  if (*(a2 - 80) != 1)
  {
    goto LABEL_83;
  }

  v14 = *(a2 - 11);
  v15 = *(result + 16);
  if (v15 >= v14)
  {
    v16 = *(a2 - 11);
  }

  else
  {
    v16 = *(result + 16);
  }

  if (!v16 || (v17 = memcmp(*v10, *(result + 8), v16)) == 0)
  {
    if (v14 < v15)
    {
      goto LABEL_83;
    }

LABEL_117:
    *a4 = *v6;
    v76 = *(v6 + 1);
    v77 = *(v6 + 20);
    *(a4 + 40) = a4 + 56;
    result = a4 + 40;
    *(a4 + 20) = v77;
    *(a4 + 8) = v76;
    *(a4 + 48) = 0x600000000;
    if (*(v6 + 12))
    {
      result = llvm::SmallVectorImpl<unsigned long>::operator=(result, v6 + 5);
    }

    *(a4 + 104) = *(v5 - 13);
    v78 = *v10;
    v79 = *(v5 - 84);
    *(a4 + 144) = a4 + 160;
    v9 = a4 + 144;
    *(v9 - 20) = v79;
    *(v9 - 32) = v78;
    *(v9 + 8) = 0x600000000;
    if (*(v5 - 14))
    {
      v58 = (v5 - 8);
      goto LABEL_121;
    }

    return result;
  }

  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_117;
  }

LABEL_83:
  *a4 = *(v5 - 13);
  v54 = *v10;
  v55 = *(v5 - 84);
  *(a4 + 40) = a4 + 56;
  result = a4 + 40;
  *(a4 + 20) = v55;
  *(a4 + 8) = v54;
  *(a4 + 48) = 0x600000000;
  if (*(v5 - 14))
  {
    result = llvm::SmallVectorImpl<unsigned long>::operator=(result, v5 - 8);
  }

  *(a4 + 104) = *v6;
  v56 = *(v6 + 1);
  v57 = *(v6 + 20);
  *(a4 + 144) = a4 + 160;
  v9 = a4 + 144;
  *(v9 - 20) = v57;
  *(v9 - 32) = v56;
  *(v9 + 8) = 0x600000000;
  if (*(v6 + 12))
  {
LABEL_86:
    v58 = (v6 + 5);
LABEL_121:

    return llvm::SmallVectorImpl<unsigned long>::operator=(v9, v58);
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    v11 = *(a2 + 8);
    v12 = v11 & 0x3FFFFFFF;
    v13 = v11 & 0x40000000;
    v14 = (v11 >> 30) & 1;
    v15 = -a4;
    v136 = a5;
    while (1)
    {
      v17 = a1[v10 + 4];
      if (v12 != (v17 & 0x3FFFFFFF))
      {
        if (v12 < (v17 & 0x3FFFFFFF))
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      if (v14 == ((v17 >> 30) & 1))
      {
        break;
      }

      if (v13)
      {
        goto LABEL_22;
      }

LABEL_7:
      v10 += 13;
      v16 = __CFADD__(v15++, 1);
      if (v16)
      {
        return;
      }
    }

    if (LOBYTE(a1[v10 + 3]) != 1)
    {
      goto LABEL_7;
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_22;
    }

    v18 = a2[2];
    v19 = a1[v10 + 2];
    if (v19 >= v18)
    {
      v20 = a2[2];
    }

    else
    {
      v20 = a1[v10 + 2];
    }

    if (v20)
    {
      v21 = memcmp(a2[1], a1[v10 + 1], v20);
      a5 = v136;
      if (v21)
      {
        if (v21 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }
    }

    if (v18 >= v19)
    {
      goto LABEL_7;
    }

LABEL_22:
    v132 = &a1[v10];
    if (-v15 >= a5)
    {
      if (v15 == -1)
      {

        return;
      }

      v43 = -v15 / 2;
      if (a3 == a2)
      {
        v22 = 0;
LABEL_82:
        v23 = &a1[13 * v43 + v10];
        v58 = 0x4EC4EC4EC4EC4EC5 * (v22 >> 3);
        v59 = (a2 + v22);
        v60 = (a2 + v22);
        if (v23 == a2)
        {
          goto LABEL_133;
        }

LABEL_103:
        v60 = v23;
        if (v22)
        {
          v67 = v43;
          v60 = v23 + 13;
          v68 = v22 - 104;
          if (v22 != 104)
          {
            v69 = a2 + 13;
            do
            {
              if (v60 == a2)
              {
                a2 = v69;
              }

              v60 += 13;
              v69 += 13;
              v68 -= 104;
            }

            while (v68);
          }

          if (v60 != a2)
          {
            v70 = v60;
            v71 = a2;
            while (1)
            {
              a2 += 13;
              v72 = v70 + 13 == v71;
              if (a2 == v59)
              {
                if (v70 + 13 == v71)
                {
                  goto LABEL_132;
                }

                a2 = v71 + 13;
                v70 += 26;
                while (1)
                {
                  v72 = v70 == v71;
                  if (a2 != v59)
                  {
                    break;
                  }

                  v73 = v70 == v71;
                  v70 += 13;
                  if (v73)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                v70 += 13;
              }

              if (v72)
              {
                v71 = a2;
              }
            }
          }

          v60 = a2;
LABEL_132:
          a5 = v136;
          v43 = v67;
        }

        goto LABEL_133;
      }

      v44 = 0x4EC4EC4EC4EC4EC5 * (a3 - a2);
      v45 = &a1[13 * v43 + v10];
      v46 = *(v45 + 8);
      v47 = v46 & 0x3FFFFFFF;
      v48 = (v46 >> 30) & 1;
      if (v45[3])
      {
        v22 = 0;
        v49 = v45[2];
        __s1a = v45[1];
        v128 = v49;
        v130 = (v46 >> 30) & 1;
        while (1)
        {
          v50 = v44 >> 1;
          v51 = v22 + 104 * (v44 >> 1);
          v52 = a2 + v51;
          v53 = *(a2 + v51 + 32);
          if ((v53 & 0x3FFFFFFF) == v47)
          {
            v54 = v53 & 0x40000000;
            if (v48 == v54 >> 30)
            {
              if (v52[24] == 1)
              {
                v55 = *(v52 + 2);
                if (v49 >= v55)
                {
                  v56 = *(v52 + 2);
                }

                else
                {
                  v56 = v49;
                }

                if (v56 && (v57 = memcmp(*(v52 + 1), __s1a, v56), v49 = v128, v48 = v130, v43 = -v15 / 2, a5 = v136, v57))
                {
                  if ((v57 & 0x80000000) == 0)
                  {
                    goto LABEL_64;
                  }
                }

                else if (v55 >= v49)
                {
                  goto LABEL_64;
                }
              }
            }

            else if (!v54)
            {
              goto LABEL_64;
            }
          }

          else if ((v53 & 0x3FFFFFFFu) >= v47)
          {
            goto LABEL_64;
          }

          v22 = v51 + 104;
          v50 = v44 + ~v50;
LABEL_64:
          v44 = v50;
          if (!v50)
          {
            goto LABEL_82;
          }
        }
      }

      v22 = 0;
      while (2)
      {
        v74 = v44 >> 1;
        v75 = v22 + 104 * (v44 >> 1);
        v76 = *(a2 + v75 + 32);
        if ((v76 & 0x3FFFFFFF) == v47)
        {
          if ((v76 & 0x40000000) == 0 || ((v76 >> 30) & 1) == v48)
          {
LABEL_124:
            v44 = v74;
            if (!v74)
            {
              goto LABEL_82;
            }

            continue;
          }
        }

        else if ((v76 & 0x3FFFFFFF) >= v47)
        {
          goto LABEL_124;
        }

        break;
      }

      v22 = v75 + 104;
      v74 = v44 + ~v74;
      goto LABEL_124;
    }

    v131 = a5 / 2;
    v22 = 104 * (a5 / 2);
    v23 = &a1[v10];
    if (&a1[v10] != a2)
    {
      v24 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1 - v10 * 8) >> 3);
      v25 = a2 + v22;
      v26 = *(a2 + v22 + 32);
      v27 = v26 & 0x3FFFFFFF;
      v28 = v26 & 0x40000000;
      v29 = (v26 >> 30) & 1;
      if (*(a2 + v22 + 24))
      {
        v30 = *(v25 + 2);
        __s1 = *(v25 + 1);
        v127 = v30;
        v23 = &a1[v10];
        v129 = v29;
        if (!v28)
        {
          while (1)
          {
            v31 = v24 >> 1;
            v32 = &v23[13 * (v24 >> 1)];
            v33 = *(v32 + 8);
            if (v27 == (v33 & 0x3FFFFFFF))
            {
              if (v29 == ((v33 >> 30) & 1) && *(v32 + 24) == 1)
              {
                v34 = v32[2];
                if (v34 >= v30)
                {
                  v35 = v30;
                }

                else
                {
                  v35 = v32[2];
                }

                if (v35 && (v123 = v32[2], v36 = memcmp(__s1, v32[1], v35), v34 = v123, v30 = v127, v29 = v129, a5 = v136, v36))
                {
                  if (v36 < 0)
                  {
                    goto LABEL_28;
                  }
                }

                else if (v30 < v34)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (v27 < (v33 & 0x3FFFFFFF))
            {
              goto LABEL_28;
            }

            v23 = v32 + 13;
            v31 = v24 + ~v31;
LABEL_28:
            v24 = v31;
            if (!v31)
            {
              goto LABEL_102;
            }
          }
        }

        while (1)
        {
          v37 = v24 >> 1;
          v38 = &v23[13 * (v24 >> 1)];
          v39 = *(v38 + 8);
          if (v27 == (v39 & 0x3FFFFFFF))
          {
            if (v29 != ((v39 >> 30) & 1))
            {
              goto LABEL_44;
            }

            if (*(v38 + 24) == 1)
            {
              v40 = v38[2];
              if (v40 >= v30)
              {
                v41 = v30;
              }

              else
              {
                v41 = v38[2];
              }

              if (v41 && (v124 = v38[2], v42 = memcmp(__s1, v38[1], v41), v40 = v124, v30 = v127, v29 = v129, a5 = v136, v42))
              {
                if (v42 < 0)
                {
                  goto LABEL_44;
                }
              }

              else if (v30 < v40)
              {
                goto LABEL_44;
              }
            }
          }

          else if (v27 < (v39 & 0x3FFFFFFF))
          {
            goto LABEL_44;
          }

          v23 = v38 + 13;
          v37 = v24 + ~v37;
LABEL_44:
          v24 = v37;
          if (!v37)
          {
            goto LABEL_102;
          }
        }
      }

      v23 = &a1[v10];
      if (!v28)
      {
        while (1)
        {
          v61 = v24 >> 1;
          v62 = &v23[13 * (v24 >> 1)];
          v63 = *(v62 + 8);
          if (v27 == (v63 & 0x3FFFFFFF))
          {
            if (v29 == ((v63 >> 30) & 1) && (v62[3] & 1) != 0)
            {
              goto LABEL_87;
            }
          }

          else if (v27 < (v63 & 0x3FFFFFFF))
          {
            goto LABEL_87;
          }

          v23 = v62 + 13;
          v61 = v24 + ~v61;
LABEL_87:
          v24 = v61;
          if (!v61)
          {
            goto LABEL_102;
          }
        }
      }

      do
      {
        v64 = v24 >> 1;
        v65 = &v23[13 * (v24 >> 1)];
        v66 = *(v65 + 8);
        if (v27 == (v66 & 0x3FFFFFFF))
        {
          if (v29 != ((v66 >> 30) & 1) || (v65[3] & 1) != 0)
          {
            goto LABEL_95;
          }
        }

        else if (v27 < (v66 & 0x3FFFFFFF))
        {
          goto LABEL_95;
        }

        v23 = v65 + 13;
        v64 = v24 + ~v64;
LABEL_95:
        v24 = v64;
      }

      while (v64);
    }

LABEL_102:
    v43 = 0x4EC4EC4EC4EC4EC5 * ((v23 - a1 - v10 * 8) >> 3);
    v58 = v131;
    v59 = (a2 + v22);
    v60 = (a2 + v22);
    if (v23 != a2)
    {
      goto LABEL_103;
    }

LABEL_133:
    a4 = -(v43 + v15);
    v77 = a5 - v58;
    a1 = v132;
    if (v43 + v58 >= a5 - (v43 + v58) - v15)
    {
      v78 = v43;
      a4 = v78;
      a3 = v60;
      a5 = v58;
      a2 = v23;
      if (!v58)
      {
        return;
      }
    }

    else
    {
      a1 = v60;
      a5 = v77;
      a2 = v59;
      if (!v77)
      {
        return;
      }
    }
  }

  if (a4 > a5)
  {
    if (a2 == a3)
    {
      return;
    }

    v79 = 0;
    v80 = 0;
    v81 = a6;
    do
    {
      v82 = &a2[v79];
      *(a6 + v79 * 8) = a2[v79];
      v83 = *&a2[v79 + 1];
      v84 = *(&a2[v79 + 2] + 4);
      *(a6 + v79 * 8 + 40) = a6 + v79 * 8 + 56;
      v85 = a6 + v79 * 8 + 40;
      *(v85 - 20) = v84;
      *(v85 - 32) = v83;
      *(v85 + 8) = 0x600000000;
      if (LODWORD(a2[v79 + 6]))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(v85, v82 + 5);
      }

      ++v80;
      v79 += 13;
    }

    while (v82 + 13 != a3);
    v91 = a3 - 13;
    v92 = a6 + v79 * 8;
    while (1)
    {
      if (a2 == a1)
      {
        while (v92 != v81)
        {
          v103 = *(v92 - 104);
          v92 -= 104;
          *v91 = v103;
          v104 = *(v92 + 8);
          *(v91 + 20) = *(v92 + 20);
          *(v91 + 1) = v104;
          llvm::SmallVectorImpl<unsigned long>::operator=((v91 + 5), (v92 + 40));
          v91 -= 13;
        }

        goto LABEL_199;
      }

      v95 = (v92 - 96);
      v96 = *(v92 - 72);
      v97 = *(a2 - 18);
      if ((v96 & 0x3FFFFFFF) == (v97 & 0x3FFFFFFF))
      {
        v98 = v96 & 0x40000000;
        if (((v97 >> 30) & 1) == v98 >> 30)
        {
          if (*(a2 - 80) == 1)
          {
            if (*(v92 - 80) != 1)
            {
              goto LABEL_167;
            }

            v99 = *(v92 - 88);
            v100 = *(a2 - 11);
            if (v100 >= v99)
            {
              v101 = *(v92 - 88);
            }

            else
            {
              v101 = *(a2 - 11);
            }

            if (v101 && (v102 = memcmp(*v95, *(a2 - 12), v101)) != 0)
            {
              v81 = a6;
              if (v102 < 0)
              {
                goto LABEL_167;
              }
            }

            else
            {
              v16 = v99 >= v100;
              v81 = a6;
              if (!v16)
              {
LABEL_167:
                v95 = a2 - 12;
                v93 = a2;
                a2 -= 13;
                goto LABEL_151;
              }
            }
          }
        }

        else if (v98)
        {
          goto LABEL_167;
        }
      }

      else if ((v96 & 0x3FFFFFFFu) < (v97 & 0x3FFFFFFF))
      {
        goto LABEL_167;
      }

      v93 = v92;
      v92 -= 104;
LABEL_151:
      *v91 = *(v93 - 13);
      v94 = *v95;
      *(v91 + 20) = *(v95 + 12);
      *(v91 + 1) = v94;
      llvm::SmallVectorImpl<unsigned long>::operator=((v91 + 5), v93 - 8);
      v91 -= 13;
      if (v92 == v81)
      {
        goto LABEL_199;
      }
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v86 = 0;
  v80 = 0;
  v81 = a6;
  do
  {
    v87 = &a1[v86];
    *(a6 + v86 * 8) = a1[v86];
    v88 = *&a1[v86 + 1];
    v89 = *(&a1[v86 + 2] + 4);
    *(a6 + v86 * 8 + 40) = a6 + v86 * 8 + 56;
    v90 = a6 + v86 * 8 + 40;
    *(v90 - 20) = v89;
    *(v90 - 32) = v88;
    *(v90 + 8) = 0x600000000;
    if (LODWORD(a1[v86 + 6]))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(v90, v87 + 5);
    }

    ++v80;
    v86 += 13;
  }

  while (v87 + 13 != a2);
  v105 = a6 + v86 * 8;
  v106 = a6 + v86 * 8 - 104;
  v107 = a6;
  do
  {
    while (1)
    {
      if (a2 == a3)
      {
        v117 = 0;
        do
        {
          v118 = &a1[v117 / 8];
          v119 = v107 + v117;
          *v118 = *(v107 + v117);
          v120 = *(v107 + v117 + 8);
          *(v118 + 20) = *(v107 + v117 + 20);
          *(v118 + 1) = v120;
          llvm::SmallVectorImpl<unsigned long>::operator=(&a1[v117 / 8 + 5], (v107 + v117 + 40));
          v117 += 104;
        }

        while (v106 != v119);
        goto LABEL_199;
      }

      v109 = *(a2 + 8);
      v110 = *(v107 + 32);
      if ((v109 & 0x3FFFFFFF) != (v110 & 0x3FFFFFFF))
      {
        break;
      }

      v111 = v109 & 0x40000000;
      if (((v110 >> 30) & 1) != v111 >> 30)
      {
        if (v111)
        {
          goto LABEL_190;
        }

        goto LABEL_174;
      }

      if (*(v107 + 24) != 1)
      {
        goto LABEL_174;
      }

      if (*(a2 + 24) != 1)
      {
        goto LABEL_190;
      }

      v112 = a2[2];
      v113 = *(v107 + 16);
      if (v113 >= v112)
      {
        v114 = a2[2];
      }

      else
      {
        v114 = *(v107 + 16);
      }

      if (!v114 || (v115 = memcmp(a2[1], *(v107 + 8), v114)) == 0)
      {
        if (v112 >= v113)
        {
          goto LABEL_174;
        }

        goto LABEL_190;
      }

      if (v115 < 0)
      {
        goto LABEL_190;
      }

LABEL_174:
      *a1 = *v107;
      v108 = *(v107 + 8);
      *(a1 + 20) = *(v107 + 20);
      *(a1 + 1) = v108;
      llvm::SmallVectorImpl<unsigned long>::operator=((a1 + 5), (v107 + 40));
      v107 += 104;
      a1 += 13;
      if (v105 == v107)
      {
        goto LABEL_199;
      }
    }

    if ((v109 & 0x3FFFFFFFu) >= (v110 & 0x3FFFFFFF))
    {
      goto LABEL_174;
    }

LABEL_190:
    *a1 = *a2;
    v116 = *(a2 + 1);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 1) = v116;
    llvm::SmallVectorImpl<unsigned long>::operator=((a1 + 5), a2 + 5);
    a2 += 13;
    a1 += 13;
  }

  while (v105 != v107);
LABEL_199:
  if (v81 && v80)
  {
    v121 = (a6 + 56);
    do
    {
      v122 = *(v121 - 2);
      if (v121 != v122)
      {
        free(v122);
      }

      v121 += 13;
      --v80;
    }

    while (v80);
  }
}