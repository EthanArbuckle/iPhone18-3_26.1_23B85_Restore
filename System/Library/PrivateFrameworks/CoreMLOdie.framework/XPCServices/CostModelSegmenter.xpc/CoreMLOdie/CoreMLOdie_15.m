void mlir::AsmPrinter::Impl::printOptionalAttrDict(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a3)
  {
    return;
  }

  if (a5)
  {
    *&v69 = a4;
    Value = a4 + 16 * a5;
    sub_1000B8514(&v70, &v69, &Value);
    v10 = 0;
    v11 = 16 * a3;
    v12 = &a2[2 * a3];
    while (1)
    {
      v69 = *&a2[v10 / 8];
      Name = mlir::NamedAttribute::getName(&v69);
      Value = mlir::StringAttr::getValue(&Name);
      v68 = v13;
      v14 = sub_1000B8DF0(&v70, &Value);
      if (!v14)
      {
        break;
      }

      if (v70)
      {
        if (v14 == v73)
        {
          break;
        }
      }

      else if (v14 == (v71 + 16 * v72))
      {
        break;
      }

      v10 += 16;
      if (v11 == v10)
      {
        goto LABEL_50;
      }
    }

    if (v11 == v10)
    {
      goto LABEL_50;
    }

    if (a6)
    {
      v20 = *a1;
      v21 = *(*a1 + 32);
      if ((*(*a1 + 24) - v21) > 0xA)
      {
        *(v21 + 7) = 1936028789;
        *v21 = *" attributes";
        v20[4] += 11;
        v22 = *a1;
        v23 = *(*a1 + 32);
        if (*(*a1 + 24) - v23 <= 1uLL)
        {
          goto LABEL_23;
        }

        goto LABEL_36;
      }

      llvm::raw_ostream::write(v20, " attributes", 0xBuLL);
    }

    v22 = *a1;
    v23 = *(*a1 + 32);
    if (*(*a1 + 24) - v23 <= 1uLL)
    {
LABEL_23:
      llvm::raw_ostream::write(v22, " {", 2uLL);
      goto LABEL_37;
    }

LABEL_36:
    *v23 = 31520;
    v22[4] += 2;
LABEL_37:
    v33 = *a1;
    v34 = a1;
    v35 = &a2[v10 / 8 + 2];
    v64 = v33;
    v65 = v34;
    mlir::AsmPrinter::Impl::printNamedAttribute(v34, a2[v10 / 8], a2[v10 / 8 + 1]);
    if (v11 - 16 == v10)
    {
      goto LABEL_48;
    }

    v36 = v11 - v10 - 16;
    while (1)
    {
      v69 = *v35;
      Name = mlir::NamedAttribute::getName(&v69);
      Value = mlir::StringAttr::getValue(&Name);
      v68 = v37;
      v38 = sub_1000B8DF0(&v70, &Value);
      if (!v38)
      {
        break;
      }

      if (v70)
      {
        if (v38 == v73)
        {
          break;
        }
      }

      else if (v38 == (v71 + 16 * v72))
      {
        break;
      }

      v35 += 2;
      v36 -= 16;
      if (!v36)
      {
        goto LABEL_48;
      }
    }

    if (!v36)
    {
LABEL_48:
      v39 = *v65;
      v40 = *(*v65 + 32);
      if (v40 >= *(*v65 + 24))
      {
        llvm::raw_ostream::write(v39, 125);
        if (v70)
        {
          return;
        }

LABEL_51:
        llvm::deallocate_buffer(v71, (16 * v72), 8uLL);
        return;
      }

      *(v39 + 4) = v40 + 1;
      *v40 = 125;
LABEL_50:
      if (v70)
      {
        return;
      }

      goto LABEL_51;
    }

LABEL_54:
    v41 = *(v64 + 4);
    if (*(v64 + 3) - v41 > 1uLL)
    {
      *v41 = 8236;
      *(v64 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v64, ", ", 2uLL);
    }

    mlir::AsmPrinter::Impl::printNamedAttribute(v65, *v35, v35[1]);
    while (1)
    {
      v35 += 2;
      if (v35 == v12)
      {
LABEL_53:
        if (v35 == v12)
        {
          goto LABEL_48;
        }

        goto LABEL_54;
      }

      v69 = *v35;
      Value = mlir::NamedAttribute::getName(&v69);
      v42 = mlir::StringAttr::getValue(&Value);
      v44 = v42;
      v45 = v43;
      if (v70)
      {
        v47 = &v71;
        HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v42, v43);
        v49 = 3;
        v50 = v44 + 2 == 0;
        if (!v45)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v46 = v72;
        if (!v72)
        {
          goto LABEL_53;
        }

        v47 = v71;
        HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v42, v43);
        v49 = v46 - 1;
        v50 = v44 + 2 == 0;
        if (!v45)
        {
LABEL_63:
          v51 = 1;
          if (v50)
          {
            v52 = HashValue & v49;
            v53 = &v47[16 * (HashValue & v49)];
            v54 = *v53;
            if (*v53 != -2)
            {
              while (v54 != -1)
              {
                if (*(v53 + 1))
                {
                  v55 = v51 + v52;
                  ++v51;
                  v52 = v55 & v49;
                  v53 = &v47[16 * (v55 & v49)];
                  v54 = *v53;
                  if (*v53 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_91;
              }

              goto LABEL_90;
            }
          }

          else
          {
            while (1)
            {
              v53 = &v47[16 * (HashValue & v49)];
              if (*v53 != -2)
              {
                if (*v53 == -1)
                {
                  goto LABEL_90;
                }

                if (!*(v53 + 1))
                {
                  break;
                }
              }

              HashValue = v51 + (HashValue & v49);
              ++v51;
            }
          }

          goto LABEL_91;
        }
      }

      if (!v50)
      {
        v60 = 1;
        v61 = HashValue & v49;
        v53 = &v47[16 * (HashValue & v49)];
        v62 = *v53;
        if (*v53 == -2)
        {
          goto LABEL_83;
        }

        while (1)
        {
          if (v62 == -1)
          {
            goto LABEL_90;
          }

          if (v45 == *(v53 + 1) && !memcmp(v44, v62, v45))
          {
            goto LABEL_91;
          }

          do
          {
LABEL_83:
            v63 = v60 + v61;
            ++v60;
            v61 = v63 & v49;
            v53 = &v47[16 * (v63 & v49)];
            v62 = *v53;
          }

          while (*v53 == -2);
        }
      }

      v56 = 1;
      v57 = HashValue & v49;
      v53 = &v47[16 * (HashValue & v49)];
      v58 = *v53;
      if (*v53 != -2)
      {
        while (v58 != -1)
        {
          if (v45 != *(v53 + 1) || memcmp(v44, v58, v45))
          {
            v59 = v56 + v57;
            ++v56;
            v57 = v59 & v49;
            v53 = &v47[16 * (v59 & v49)];
            v58 = *v53;
            if (*v53 != -2)
            {
              continue;
            }
          }

          goto LABEL_91;
        }

LABEL_90:
        if (v44 != -1)
        {
          goto LABEL_53;
        }
      }

LABEL_91:
      if (v70)
      {
        if (v53 == v73)
        {
          goto LABEL_53;
        }
      }

      else if (v53 == v71 + 16 * v72)
      {
        goto LABEL_53;
      }
    }
  }

  if (!a6)
  {
LABEL_15:
    v17 = *a1;
    v18 = *(*a1 + 32);
    if (*(*a1 + 24) - v18 <= 1uLL)
    {
      goto LABEL_16;
    }

LABEL_25:
    *v18 = 31520;
    *(v17 + 4) += 2;
    v19 = *a1;
    mlir::AsmPrinter::Impl::printNamedAttribute(a1, *a2, a2[1]);
    if (a3 == 1)
    {
      goto LABEL_30;
    }

LABEL_26:
    v24 = &a2[2 * a3];
    v25 = a2 + 2;
    do
    {
      while (1)
      {
        v28 = *(v19 + 4);
        if (*(v19 + 3) - v28 <= 1uLL)
        {
          break;
        }

        *v28 = 8236;
        *(v19 + 4) += 2;
        v26 = *v25;
        v27 = v25[1];
        v25 += 2;
        mlir::AsmPrinter::Impl::printNamedAttribute(a1, v26, v27);
        if (v25 == v24)
        {
          goto LABEL_30;
        }
      }

      llvm::raw_ostream::write(v19, ", ", 2uLL);
      v29 = *v25;
      v30 = v25[1];
      v25 += 2;
      mlir::AsmPrinter::Impl::printNamedAttribute(a1, v29, v30);
    }

    while (v25 != v24);
    goto LABEL_30;
  }

  v15 = *a1;
  v16 = *(*a1 + 32);
  if ((*(*a1 + 24) - v16) <= 0xA)
  {
    llvm::raw_ostream::write(v15, " attributes", 0xBuLL);
    goto LABEL_15;
  }

  *(v16 + 7) = 1936028789;
  *v16 = *" attributes";
  *(v15 + 4) += 11;
  v17 = *a1;
  v18 = *(*a1 + 32);
  if (*(*a1 + 24) - v18 > 1uLL)
  {
    goto LABEL_25;
  }

LABEL_16:
  llvm::raw_ostream::write(v17, " {", 2uLL);
  v19 = *a1;
  mlir::AsmPrinter::Impl::printNamedAttribute(a1, *a2, a2[1]);
  if (a3 != 1)
  {
    goto LABEL_26;
  }

LABEL_30:
  v31 = *a1;
  v32 = *(*a1 + 32);
  if (v32 >= *(*a1 + 24))
  {

    llvm::raw_ostream::write(v31, 125);
  }

  else
  {
    *(v31 + 4) = v32 + 1;
    *v32 = 125;
  }
}

double mlir::AsmPrinter::Impl::printNamedAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  *v14 = a3;
  Name = mlir::NamedAttribute::getName(&v13);
  Value = mlir::StringAttr::getValue(&Name);
  sub_1000AF0CC(Value, v5, *a1);
  if (*(**v14 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v7 = *a1;
    v8 = *(*a1 + 32);
    if ((*(*a1 + 24) - v8) > 2)
    {
      *(v8 + 2) = 32;
      *v8 = 15648;
      *(v7 + 4) += 3;
      v9 = *v14;
      if (*v14)
      {
LABEL_4:
        if ((sub_1000AEDE4((*(a1 + 8) + 144), v9, *a1) & 1) == 0)
        {
          mlir::AsmPrinter::Impl::printAttributeImpl(a1, v9, 0);
        }

        return result;
      }
    }

    else
    {
      llvm::raw_ostream::write(v7, " = ", 3uLL);
      v9 = *v14;
      if (*v14)
      {
        goto LABEL_4;
      }
    }

    v10 = *a1;
    v11 = *(*a1 + 32);
    if ((*(*a1 + 24) - v11) > 0x11)
    {
      *(v11 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v11 = *"<<NULL ATTRIBUTE>>";
      *(v10 + 4) += 18;
    }

    else
    {
      llvm::raw_ostream::write(v10, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
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
  v15 = &off_1002B45C0;
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
  v9[0] = off_1002B5D98;
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

  sub_1000B032C(*a1, "!", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
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

  sub_1000B8FA8(a2, a3, 0, __p);
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
    if ((sub_1000AEDE4((*(v2 + 8) + 144), a2, *v2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(v2, a2, 0);
    }
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 32);
    if ((*(*v2 + 24) - v6) > 0x11)
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
  return sub_1000AEDE4((*(*(a1 + 8) + 8) + 144), a2, **(a1 + 8));
}

{
  return mlir::AsmPrinter::Impl::printAlias(*(a1 + 8), a2);
}

double mlir::AsmPrinter::printAttributeWithoutType(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    if ((sub_1000AEDE4((*(v2 + 8) + 144), a2, *v2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(v2, a2, 2);
    }
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 32);
    if ((*(*v2 + 24) - v6) > 0x11)
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
    v4 = *(v3 + 4);
    if (v4 >= *(v3 + 3))
    {
      v8 = a2;
      v9 = a3;
      llvm::raw_ostream::write(**(a1 + 8), 64);
      a2 = v8;
      a3 = v9;
    }

    else
    {
      *(v3 + 4) = v4 + 1;
      *v4 = 64;
    }

    sub_1000AF0CC(a2, a3, v3);
  }

  else
  {
    v5 = *(v3 + 4);
    if (*(v3 + 3) - v5 > 0x18uLL)
    {
      qmemcpy(v5, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      *(v3 + 4) += 25;
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
  return sub_1000C992C(a2, &a2[a3], v5, v5, v7);
}

uint64_t mlir::AsmPrinter::pushCyclicPrinting(mlir::AsmPrinter *this, const void *a2)
{
  v2 = *(*(this + 1) + 8);
  v7 = a2;
  sub_1000658E8(v2 + 680, &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(v2 + 712);
    if (v5 >= *(v2 + 716))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 704, (v2 + 720), v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(v2 + 712);
    }

    *(*(v2 + 704) + 8 * v5) = v4;
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
    sub_100032174(*a1, " - ");
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
    sub_100032174(*a1, " - ");
    v33 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v33, 1, a4, a5);
    v34 = sub_100032174(*a1, " * ");
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
    if ((sub_1000AEDE4((v4 + 144), v6, a2) & 1) == 0)
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

llvm::raw_ostream *mlir::Value::print(llvm::raw_ostream *this, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  v3 = a2;
  if (*this)
  {
    v5 = this;
    DefiningOp = mlir::Value::getDefiningOp(this);
    if (DefiningOp)
    {
      v7 = sub_1000B6968(DefiningOp, (*(a3 + 20) & 0x20) != 0);
      mlir::AsmState::AsmState(&v12, v7, a3);
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

    v12 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
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

void mlir::Operation::print(mlir::Operation *this, llvm::raw_ostream *a2, mlir::AsmState *a3)
{
  v4 = *a3;
  v73 = a2;
  v74 = v4;
  v5 = *(v4 + 640);
  v75 = *(v4 + 624);
  v76 = v5;
  v77 = *(v4 + 656);
  v78 = 1;
  v72[0] = off_1002B5E20;
  v72[1] = &v73;
  v81[0] = "builtin";
  v81[1] = 7;
  v79 = v81;
  v80 = 0x300000001;
  v82 = 0;
  if (*(this + 2) || (*(v4 + 664) & 0x20) != 0)
  {
    sub_100279FE4(v72, this);
    goto LABEL_6;
  }

  sub_1000B6A0C(v4, this);
  sub_1000BF7F4(*(v74 + 168), *(v74 + 176), &v73, &v78, 0);
  sub_100279FE4(v72, this);
  ++v78;
  v6 = *(v73 + 4);
  if (v6 >= *(v73 + 3))
  {
    llvm::raw_ostream::write(v73, 10);
  }

  else
  {
    *(v73 + 4) = v6 + 1;
    *v6 = 10;
  }

  sub_1000BF7F4(*(v74 + 168), *(v74 + 176), &v73, &v78, 1);
  v48 = 0;
  v47[0] = &v48;
  v47[1] = v72;
  v56[0] = sub_1000C1098;
  v56[1] = v47;
  v55 = 0;
  v54 = 0;
  v7 = *(v74 + 32);
  v8 = *(v74 + 40);
  if (v7 == v8)
  {
    goto LABEL_44;
  }

  do
  {
    v9 = *v7;
    v10 = *(*v7 + 8);
    v11 = *(v74 + 120);
    v12 = *(v74 + 136);
    if (v12)
    {
      v13 = v12 - 1;
      v14 = (v12 - 1) & ((v10 >> 4) ^ (v10 >> 9));
      v15 = (v11 + 48 * v14);
      v16 = *v15;
      if (*v15 == v10)
      {
        goto LABEL_21;
      }

      v17 = 1;
      while (v16 != -4096)
      {
        v18 = v14 + v17++;
        v14 = v18 & v13;
        v15 = (v11 + 48 * (v18 & v13));
        v16 = *v15;
        if (*v15 == v10)
        {
          goto LABEL_21;
        }
      }
    }

    v15 = (v11 + 48 * v12);
LABEL_21:
    v20 = *(v10 + 8);
    v19 = *(v10 + 16);
    if (v15 == (v11 + 48 * v12))
    {
      *v49 = 0u;
      v50 = 0;
      v51 = v53;
      v52 = 0;
      v70 = "dialect";
      v71 = 7;
      v61[0] = v20;
      v61[1] = v19;
      v60 = 0;
      v62 = v56;
      v63 = v72;
      v64 = &v55 + 1;
      v65 = &v55;
      v66 = &v70;
      v67 = &v60;
      v68 = &v54;
      v69 = v61;
      v57 = off_1002B60C8;
      v58 = sub_1000C0440;
      v59 = &v62;
      (*(*v9 + 56))(v9, this, v49, &v57);
      v54 |= v60;
      if (v60 != 1)
      {
        goto LABEL_30;
      }

      v24 = v73;
      ++v78;
      v25 = *(v73 + 4);
      if (v25 >= *(v73 + 3))
      {
        v24 = llvm::raw_ostream::write(v73, 10);
        v26 = *(v24 + 4);
        if ((*(v24 + 3) - v26) > 4)
        {
          goto LABEL_29;
        }
      }

      else
      {
        *(v73 + 4) = v25 + 1;
        *v25 = 10;
        v26 = *(v24 + 4);
        if ((*(v24 + 3) - v26) > 4)
        {
LABEL_29:
          *(v26 + 4) = 125;
          *v26 = 538976288;
          *(v24 + 4) += 5;
LABEL_30:
          v27 = v51;
          if (v51 == v53)
          {
LABEL_32:
            llvm::deallocate_buffer(v49[0], (24 * v50), 8uLL);
            goto LABEL_13;
          }

LABEL_31:
          free(v27);
          goto LABEL_32;
        }
      }

      llvm::raw_ostream::write(v24, "    }", 5uLL);
      v27 = v51;
      if (v51 == v53)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v57 = "dialect";
    v58 = 7;
    v70 = v20;
    v71 = v19;
    LOBYTE(v61[0]) = 0;
    v62 = v56;
    v63 = v72;
    v64 = &v55 + 1;
    v65 = &v55;
    v66 = &v57;
    v67 = v61;
    v68 = &v54;
    v69 = &v70;
    v49[0] = off_1002B60C8;
    v49[1] = sub_1000BFA78;
    v50 = &v62;
    (*(*v9 + 56))(v9, this, v15 + 1, v49);
    v54 |= LOBYTE(v61[0]);
    if (LOBYTE(v61[0]) == 1)
    {
      v21 = v73;
      ++v78;
      v22 = *(v73 + 4);
      if (v22 >= *(v73 + 3))
      {
        v21 = llvm::raw_ostream::write(v73, 10);
        v23 = *(v21 + 4);
        if ((*(v21 + 3) - v23) > 4)
        {
LABEL_12:
          *(v23 + 4) = 125;
          *v23 = 538976288;
          *(v21 + 4) += 5;
          goto LABEL_13;
        }
      }

      else
      {
        *(v73 + 4) = v22 + 1;
        *v22 = 10;
        v23 = *(v21 + 4);
        if ((*(v21 + 3) - v23) > 4)
        {
          goto LABEL_12;
        }
      }

      llvm::raw_ostream::write(v21, "    }", 5uLL);
    }

LABEL_13:
    ++v7;
  }

  while (v7 != v8);
  if ((v55 & 0x100) != 0)
  {
    v28 = v73;
    ++v78;
    v29 = *(v73 + 4);
    if (v29 >= *(v73 + 3))
    {
      v28 = llvm::raw_ostream::write(v73, 10);
      v30 = *(v28 + 4);
      if ((*(v28 + 3) - v30) <= 2)
      {
        goto LABEL_43;
      }

LABEL_41:
      *(v30 + 2) = 125;
      *v30 = 8224;
      *(v28 + 4) += 3;
    }

    else
    {
      *(v73 + 4) = v29 + 1;
      *v29 = 10;
      v30 = *(v28 + 4);
      if ((*(v28 + 3) - v30) > 2)
      {
        goto LABEL_41;
      }

LABEL_43:
      llvm::raw_ostream::write(v28, "  }", 3uLL);
    }
  }

LABEL_44:
  v54 = 0;
  v55 = HIBYTE(v55);
  v31 = *(v74 + 64);
  if (!v31)
  {
    goto LABEL_64;
  }

  v32 = *(v74 + 56);
  v33 = 8 * v31;
  while (2)
  {
    v34 = *v32;
    v35 = *(*v32 + 31);
    v36 = *v32 + 8;
    if (v35 < 0)
    {
      v36 = *(*v32 + 8);
    }

    if (v35 < 0)
    {
      v35 = v34[2];
    }

    v57 = "external";
    v58 = 8;
    v70 = v36;
    v71 = v35;
    LOBYTE(v61[0]) = 0;
    v62 = v56;
    v63 = v72;
    v64 = &v55 + 1;
    v65 = &v55;
    v66 = &v57;
    v67 = v61;
    v68 = &v54;
    v69 = &v70;
    v49[0] = off_1002B60C8;
    v49[1] = sub_1000C0A6C;
    v50 = &v62;
    (*(*v34 + 16))(v34, this, v49);
    v54 |= LOBYTE(v61[0]);
    if (LOBYTE(v61[0]) == 1)
    {
      v37 = v73;
      ++v78;
      v38 = *(v73 + 4);
      if (v38 >= *(v73 + 3))
      {
        v37 = llvm::raw_ostream::write(v73, 10);
        v39 = *(v37 + 4);
        if ((*(v37 + 3) - v39) <= 4)
        {
          goto LABEL_57;
        }
      }

      else
      {
        *(v73 + 4) = v38 + 1;
        *v38 = 10;
        v39 = *(v37 + 4);
        if ((*(v37 + 3) - v39) <= 4)
        {
LABEL_57:
          llvm::raw_ostream::write(v37, "    }", 5uLL);
          goto LABEL_47;
        }
      }

      *(v39 + 4) = 125;
      *v39 = 538976288;
      *(v37 + 4) += 5;
    }

LABEL_47:
    v32 += 8;
    v33 -= 8;
    if (v33)
    {
      continue;
    }

    break;
  }

  if ((v55 & 0x100) != 0)
  {
    v40 = v73;
    ++v78;
    v41 = *(v73 + 4);
    if (v41 >= *(v73 + 3))
    {
      v40 = llvm::raw_ostream::write(v73, 10);
      v42 = *(v40 + 4);
      if ((*(v40 + 3) - v42) <= 2)
      {
        goto LABEL_63;
      }

LABEL_61:
      *(v42 + 2) = 125;
      *v42 = 8224;
      *(v40 + 4) += 3;
    }

    else
    {
      *(v73 + 4) = v41 + 1;
      *v41 = 10;
      v42 = *(v40 + 4);
      if ((*(v40 + 3) - v42) > 2)
      {
        goto LABEL_61;
      }

LABEL_63:
      llvm::raw_ostream::write(v40, "  }", 3uLL);
    }
  }

LABEL_64:
  if (v48 == 1)
  {
    v43 = v73;
    ++v78;
    v44 = *(v73 + 4);
    if (v44 >= *(v73 + 3))
    {
      v43 = llvm::raw_ostream::write(v73, 10);
      v45 = *(v43 + 4);
      if ((*(v43 + 3) - v45) <= 2)
      {
        goto LABEL_70;
      }

LABEL_67:
      *(v45 + 2) = 125;
      *v45 = 11555;
      v46 = (*(v43 + 4) + 3);
      *(v43 + 4) = v46;
      ++v78;
      if (v46 >= *(v43 + 3))
      {
        goto LABEL_68;
      }

LABEL_71:
      *(v43 + 4) = v46 + 1;
      *v46 = 10;
    }

    else
    {
      *(v73 + 4) = v44 + 1;
      *v44 = 10;
      v45 = *(v43 + 4);
      if ((*(v43 + 3) - v45) > 2)
      {
        goto LABEL_67;
      }

LABEL_70:
      v43 = llvm::raw_ostream::write(v43, "#-}", 3uLL);
      v46 = *(v43 + 4);
      ++v78;
      if (v46 < *(v43 + 3))
      {
        goto LABEL_71;
      }

LABEL_68:
      llvm::raw_ostream::write(v43, 10);
    }
  }

LABEL_6:
  v72[0] = off_1002B5E20;
  if (v79 != v81)
  {
    free(v79);
  }
}

llvm::raw_ostream *sub_1000B64E4(llvm::raw_ostream *result, unint64_t a2, int a3, llvm::raw_ostream *this)
{
  v4 = this;
  if (!a2)
  {
    v11 = *(this + 4);
    if (*(this + 3) - v11 <= 0xDuLL)
    {
      v12 = "<<NULL VALUE>>";
      v13 = this;
      v14 = 14;
LABEL_25:

      return llvm::raw_ostream::write(v13, v12, v14);
    }

    qmemcpy(v11, "<<NULL VALUE>>", 14);
    v17 = *(this + 4) + 14;
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

uint64_t sub_1000B6968(uint64_t ParentOp, char a2)
{
  if (a2)
  {
    do
    {
      v2 = ParentOp;
      {
        sub_10027B180();
      }

      if ((*(**(v2 + 48) + 32))(*(v2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        break;
      }

      v3 = *(v2 + 16);
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
      v4 = *(ParentOp + 16);
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

void sub_1000B6A0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 624;
  v105[0] = a1;
  v105[1] = a1 + 184;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = &v111;
  v110 = 0;
  v111 = v113;
  v112 = xmmword_10028F130;
  v115 = 2;
  v119 = 0;
  v120 = 1;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v114 = off_1002B4638;
  v121 = &v111;
  llvm::raw_ostream::SetBufferAndMode(&v114, 0, 0, 0);
  v83[0] = off_1002B5F30;
  v83[1] = 0;
  v84 = v4;
  v85 = v105;
  v87 = 0;
  v91 = 0;
  v92 = 1;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v86 = off_1002B46B8;
  v5 = *(a1 + 664);
  if (v5)
  {
    sub_1000BCE58(v105, *(a2 + 24), 1, 0);
    v5 = *(v84 + 40);
  }

  if ((v5 & 4) != 0)
  {
    (*(v83[0] + 216))(v83, a2, 1);
    v6 = v107;
    if (!v107)
    {
      goto LABEL_45;
    }
  }

  else
  {
    (*(**(a2 + 48) + 56))(*(a2 + 48), a2, v83, "", 0);
    v6 = v107;
    if (!v107)
    {
      goto LABEL_45;
    }
  }

  v7 = v108;
  if (v108 <= 4 * v6 || v108 < 0x41)
  {
    if (v108)
    {
      v17 = v106;
      v18 = (v108 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v18)
      {
        v19 = v18 + 1;
        v20 = (v18 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v21 = (v106 + 16 * v20);
        v22 = (v106 + 16);
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
          goto LABEL_36;
        }
      }

      else
      {
        v21 = v106;
      }

      v34 = (v17 + 16 * v7);
      do
      {
        *v21 = -4096;
        v21 = (v21 + 16);
      }

      while (v21 != v34);
    }

LABEL_36:
    v107 = 0;
    goto LABEL_45;
  }

  if (v6)
  {
    v8 = 1 << (33 - __clz(v6 - 1));
    if (v8 <= 64)
    {
      v9 = 64;
    }

    else
    {
      v9 = v8;
    }

    if (v9 == v108)
    {
      v107 = 0;
      v10 = v106;
      v11 = (v108 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v11)
      {
        v12 = v11 + 1;
        v13 = (v11 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v14 = (v106 + 16 * v13);
        v15 = (v106 + 16);
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
          goto LABEL_45;
        }
      }

      else
      {
        v14 = v106;
      }

      v35 = (v10 + 16 * v7);
      do
      {
        *v14 = -4096;
        v14 = (v14 + 16);
      }

      while (v14 != v35);
      goto LABEL_45;
    }
  }

  else
  {
    v9 = 0;
  }

  llvm::deallocate_buffer(v106, (16 * v108), 8uLL);
  if (!v9)
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
    goto LABEL_45;
  }

  v24 = (4 * v9 / 3u + 1) | ((4 * v9 / 3u + 1) >> 1);
  v25 = v24 | (v24 >> 2) | ((v24 | (v24 >> 2)) >> 4);
  v108 = (((v25 | (v25 >> 8)) >> 16) | v25 | (v25 >> 8)) + 1;
  buffer = llvm::allocate_buffer((16 * v108), 8uLL);
  v106 = buffer;
  v107 = 0;
  v27 = v108;
  if (!v108)
  {
    goto LABEL_45;
  }

  v28 = (v108 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (!v28)
  {
    v31 = buffer;
LABEL_43:
    v36 = (buffer + 16 * v27);
    do
    {
      *v31 = -4096;
      v31 = (v31 + 16);
    }

    while (v31 != v36);
    goto LABEL_45;
  }

  v29 = v28 + 1;
  v30 = (v28 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v31 = (buffer + 16 * v30);
  v32 = (buffer + 16);
  v33 = v30;
  do
  {
    *(v32 - 2) = -4096;
    *v32 = -4096;
    v32 += 4;
    v33 -= 2;
  }

  while (v33);
  if (v29 != v30)
  {
    goto LABEL_43;
  }

LABEL_45:
  v99 = &v101;
  v100 = 0;
  v37 = v110;
  if (!v110)
  {
    v37 = 0;
    v42 = 0;
    v39 = &v101;
    v38 = &v101;
    goto LABEL_54;
  }

  v38 = v109;
  if (v109 == &v111)
  {
    v93 = 0;
    v38 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v99, &v101, v110, 104, &v93);
    v67 = v99;
    if (v100)
    {
      v68 = v99 + 104 * v100;
      v69 = v38 + 5;
      v70 = v99 + 40;
      do
      {
        v71 = v70 - 40;
        *(v69 - 5) = *(v70 - 5);
        v72 = *(v70 - 2);
        *(v69 - 20) = *(v70 - 20);
        *(v69 - 2) = v72;
        *v69 = v69 + 2;
        v69[1] = 0x600000000;
        if (*(v70 + 2))
        {
          sub_100056AF0(v69, v70);
        }

        v69 += 13;
        v70 += 104;
      }

      while (v71 + 104 != v68);
      v67 = v99;
      if (v100)
      {
        v73 = (v99 + 104 * v100 - 64);
        v74 = -104 * v100;
        do
        {
          if (v73 + 2 != *v73)
          {
            free(*v73);
          }

          v73 -= 13;
          v74 += 104;
        }

        while (v74);
        v67 = v99;
      }
    }

    v75 = v93;
    if (v67 != &v101)
    {
      free(v67);
    }

    v99 = v38;
    HIDWORD(v100) = v75;
    if (!v110)
    {
      LODWORD(v100) = v37;
      goto LABEL_48;
    }

    v76 = v109 + 104 * v110;
    v77 = v38 + 5;
    v78 = v109 + 40;
    do
    {
      v79 = v78 - 40;
      *(v77 - 5) = *(v78 - 5);
      v80 = *(v78 - 2);
      *(v77 - 20) = *(v78 - 20);
      *(v77 - 2) = v80;
      *v77 = v77 + 2;
      v77[1] = 0x600000000;
      if (*(v78 + 2))
      {
        sub_100056AF0(v77, v78);
      }

      v77 += 13;
      v78 += 104;
    }

    while (v79 + 104 != v76);
    LODWORD(v100) = v37;
    if (!v110)
    {
      v38 = v99;
      goto LABEL_48;
    }

    v81 = (v109 + 104 * v110 - 64);
    v82 = -104 * v110;
    do
    {
      if (v81 + 2 != *v81)
      {
        free(*v81);
      }

      v81 -= 13;
      v82 += 104;
    }

    while (v82);
    v37 = v100;
    LODWORD(v110) = 0;
    v38 = v99;
    v39 = (v99 + 104 * v100);
    if (v100)
    {
      goto LABEL_49;
    }

    v37 = 0;
    v42 = 0;
LABEL_54:
    sub_1000BD948(v38, v39, v37, 0, v42);
    v96 = 0;
    v97 = 0;
    v98 = 0x1000000000;
    v44 = v100;
    if (!v100)
    {
      goto LABEL_73;
    }

    goto LABEL_57;
  }

  v99 = v109;
  v100 = v110;
  v109 = &v111;
  HIDWORD(v110) = 0;
LABEL_48:
  LODWORD(v110) = 0;
  v39 = &v38[13 * v37];
LABEL_49:
  v40 = v37;
  while (1)
  {
    v41 = operator new(104 * v40, &std::nothrow);
    if (v41)
    {
      break;
    }

    v42 = v40 >> 1;
    v43 = v40 > 1;
    v40 >>= 1;
    if (!v43)
    {
      goto LABEL_54;
    }
  }

  v45 = v41;
  sub_1000BD948(v38, v39, v37, v41, v40);
  operator delete(v45);
  v96 = 0;
  v97 = 0;
  v98 = 0x1000000000;
  v44 = v100;
  if (v100)
  {
LABEL_57:
    v46 = v99 + 16;
    v47 = 104 * v44;
    do
    {
      if (v46[8] == 1)
      {
        v49 = *(v46 - 1);
        v50 = *v46;
        v51 = llvm::StringMapImpl::hash(v49, *v46);
        v52 = sub_1000BF600(&v96, v49, v50, v51);
        v53 = *(*v52 + 8);
        *(*v52 + 8) = v53 + 1;
        v54 = *(v46 + 4) & 0xC0000000 | v53 & 0x3FFFFFFF;
        v55 = *(v46 - 2);
        v93 = v55;
        *&v94 = v49;
        *(&v94 + 1) = v50;
        LODWORD(v95) = v54;
        BYTE4(v95) = 0;
        v101 = v55;
        v102 = 0;
        sub_1000BC040(a1 + 144, &v101, &v102, &v103);
        if (v104 == 1)
        {
          v56 = *(a1 + 176);
          *(v103 + 8) = v56;
          if (v56 < *(a1 + 180))
          {
            v48 = *(a1 + 168) + 32 * v56;
            *v48 = v55;
            *(v48 + 8) = v94;
            *(v48 + 24) = v95;
            ++*(a1 + 176);
          }

          else
          {
            sub_1000BF720(a1 + 168, &v93, &v94);
          }
        }
      }

      v46 += 104;
      v47 -= 104;
    }

    while (v47);
    if (HIDWORD(v97) && v97)
    {
      v57 = 0;
      v58 = 8 * v97;
      do
      {
        v59 = *(v96 + v57);
        if (v59 != -8 && v59 != 0)
        {
          llvm::deallocate_buffer(v59, (*v59 + 17), 8uLL);
        }

        v57 += 8;
      }

      while (v58 != v57);
    }
  }

LABEL_73:
  free(v96);
  v61 = v99;
  if (v100)
  {
    v62 = (v99 + 104 * v100 - 64);
    v63 = -104 * v100;
    do
    {
      if (v62 + 2 != *v62)
      {
        free(*v62);
      }

      v62 -= 13;
      v63 += 104;
    }

    while (v63);
    v61 = v99;
  }

  if (v61 != &v101)
  {
    free(v61);
  }

  v83[0] = off_1002B5F30;
  llvm::raw_null_ostream::~raw_null_ostream(&v86);
  llvm::raw_ostream::~raw_ostream(&v114);
  if (v111 != v113)
  {
    free(v111);
  }

  v64 = v109;
  if (v110)
  {
    v65 = (v109 + 104 * v110 - 64);
    v66 = -104 * v110;
    do
    {
      if (v65 + 2 != *v65)
      {
        free(*v65);
      }

      v65 -= 13;
      v66 += 104;
    }

    while (v66);
    v64 = v109;
  }

  if (v64 != &v111)
  {
    free(v64);
  }

  llvm::deallocate_buffer(v106, (16 * v108), 8uLL);
}

void *sub_1000B733C(void *result)
{
  *result = off_1002B5E20;
  v1 = result[11];
  if (v1 != result + 13)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1000B7398(uint64_t a1, void *a2, int a3, char a4)
{
  if (!a3)
  {
LABEL_96:
    *(a1 + 152) += 2;
    if ((*(a1 + 72) & 0x40) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_97;
  }

  llvm::raw_ostream::indent(*(a1 + 16), *(a1 + 152));
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
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
      v108 = 1;
      while (v11 != -4096)
      {
        v109 = v10 + v108++;
        v10 = v109 & (v8 - 1);
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
  if (a2[6] == a2[7])
  {
    goto LABEL_23;
  }

  v17 = *(a1 + 16);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 40);
    v20 = a2[6];
    v19 = a2[7];
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
    v20 = a2[6];
    v19 = a2[7];
    v21 = v19 - v20;
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  v22 = *(a1 + 16);
  sub_1000C1548(a1, *v20);
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
        sub_1000C1548(a1, v24);
        if (v23 == v19)
        {
          goto LABEL_21;
        }
      }

      llvm::raw_ostream::write(v22, ", ", 2uLL);
      v26 = *v23++;
      sub_1000C1548(a1, v26);
    }

    while (v23 != v19);
  }

LABEL_21:
  v27 = *(a1 + 16);
  v28 = *(v27 + 4);
  if (v28 < *(v27 + 3))
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 41;
LABEL_23:
    v29 = *(a1 + 16);
    v30 = *(v29 + 4);
    if (v30 < *(v29 + 3))
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  llvm::raw_ostream::write(v27, 41);
  v29 = *(a1 + 16);
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
    v39 = *(a1 + 16);
    v40 = v39[4];
    if (v39[3] - v40 <= 0x1DuLL)
    {
      llvm::raw_ostream::write(v39, "  // block is not in a region!", 0x1EuLL);
      goto LABEL_94;
    }

    qmemcpy(v40, "  // block is not in a region!", 30);
    v42 = v39[4] + 30;
LABEL_67:
    v39[4] = v42;
    goto LABEL_94;
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
      goto LABEL_94;
    }

    v39 = *(a1 + 16);
    v41 = v39[4];
    if ((v39[3] - v41) <= 0x13)
    {
      llvm::raw_ostream::write(v39, "  // no predecessors", 0x14uLL);
      goto LABEL_94;
    }

    *(v41 + 16) = 1936879475;
    *v41 = *"  // no predecessors";
    v42 = v39[4] + 20;
    goto LABEL_67;
  }

  SinglePredecessor = mlir::Block::getSinglePredecessor(a2);
  if (SinglePredecessor)
  {
    v33 = SinglePredecessor;
    v34 = *(a1 + 16);
    v35 = v34[4];
    if ((v34[3] - v35) > 0xA)
    {
      *(v35 + 7) = 540697701;
      *v35 = *"  // pred: ";
      v34[4] += 11;
      v36 = *(a1 + 16);
      v37 = *(a1 + 24);
      v38 = *(v37 + 392);
      if (!v38)
      {
        goto LABEL_60;
      }
    }

    else
    {
      llvm::raw_ostream::write(v34, "  // pred: ", 0xBuLL);
      v36 = *(a1 + 16);
      v37 = *(a1 + 24);
      v38 = *(v37 + 392);
      if (!v38)
      {
        goto LABEL_60;
      }
    }

    v60 = *(v37 + 376);
    v61 = (v38 - 1) & ((v33 >> 4) ^ (v33 >> 9));
    v62 = *(v60 + 32 * v61);
    if (v62 == v33)
    {
LABEL_59:
      if (v61 != v38)
      {
        v70 = v60 + 32 * v61;
        v65 = *(v70 + 16);
        v66 = *(v70 + 24);
        v64 = v36 + 4;
        v63 = v36[4];
        if (v66 <= v36[3] - v63)
        {
          if (!v66)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

LABEL_65:
        llvm::raw_ostream::write(v36, v65, v66);
        goto LABEL_94;
      }
    }

    else
    {
      v110 = 1;
      while (v62 != -4096)
      {
        v111 = v61 + v110++;
        v61 = v111 & (v38 - 1);
        v62 = *(v60 + 32 * v61);
        if (v62 == v33)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    v64 = v36 + 4;
    v63 = v36[4];
    v65 = "INVALIDBLOCK";
    v66 = 12;
    if (v36[3] - v63 > 0xBuLL)
    {
LABEL_93:
      memcpy(v63, v65, v66);
      *v64 += v66;
      goto LABEL_94;
    }

    goto LABEL_65;
  }

  v120 = v122;
  v32.n128_u64[0] = 0x400000000;
  v121 = 0x400000000;
  v43 = *a2;
  if (!*a2)
  {
    v68 = v122;
    v67 = v122;
    goto LABEL_69;
  }

  do
  {
    v44 = mlir::PredecessorIterator::unwrap(v43);
    v45 = *(a1 + 24);
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
    v117 = -1;
    v118 = "INVALIDBLOCK";
    v119 = 12;
    v52 = v46 + 32 * v48 + 8;
    if (v48 == v47)
    {
      v53 = &v117;
    }

    else
    {
      v53 = v52;
    }

    v54 = *v53;
    v116 = *(v53 + 2);
    v115 = v54;
    v55 = v120;
    if (v121 >= HIDWORD(v121))
    {
      if (v120 <= &v115 && v120 + 24 * v121 > &v115)
      {
        v59 = &v115 - v120;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v121 + 1, 24);
        v55 = v120;
        v56 = v120 + v59;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v121 + 1, 24);
        v56 = &v115;
        v55 = v120;
      }
    }

    else
    {
      v56 = &v115;
    }

    v57 = &v55[24 * v121];
    v32 = *v56;
    v57[1].n128_u64[0] = *(v56 + 2);
    *v57 = v32;
    v58 = (v121 + 1);
    LODWORD(v121) = v121 + 1;
    v43 = *v43;
  }

  while (v43);
  v67 = v120;
  v68 = v120 + 24 * v58;
  if (v58)
  {
    v69 = 126 - 2 * __clz(v58);
    goto LABEL_70;
  }

LABEL_69:
  v69 = 0;
LABEL_70:
  sub_1000C1778(v67, v68, v69, 1, v32);
  v71 = *(a1 + 16);
  v72 = *(v71 + 4);
  if ((*(v71 + 3) - v72) > 4)
  {
    *(v72 + 4) = 32;
    *v72 = 791617568;
    *(v71 + 4) += 5;
    v74 = llvm::raw_ostream::operator<<(v71, v121);
    v75 = *(v74 + 4);
    if (*(v74 + 3) - v75 <= 7uLL)
    {
      goto LABEL_74;
    }

LABEL_72:
    *v75 = 0x203A736465727020;
    *(v74 + 4) += 8;
  }

  else
  {
    v73 = llvm::raw_ostream::write(v71, "  // ", 5uLL);
    v74 = llvm::raw_ostream::operator<<(v73, v121);
    v75 = *(v74 + 4);
    if (*(v74 + 3) - v75 > 7uLL)
    {
      goto LABEL_72;
    }

LABEL_74:
    llvm::raw_ostream::write(v74, " preds: ", 8uLL);
  }

  v76 = v121;
  if (v121)
  {
    v77 = *(a1 + 16);
    v78 = v120;
    v79 = *(v120 + 1);
    v80 = *(v120 + 2);
    v81 = v77[4];
    if (v77[3] - v81 >= v80)
    {
      if (v80)
      {
        v82 = *(v120 + 2);
        memcpy(v81, v79, v80);
        v77[4] += v82;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(a1 + 16), v79, v80);
    }

    if (v76 != 1)
    {
      v83 = 24 * v76;
      v84 = (v78 + 40);
      for (i = v83 - 24; i; i -= 24)
      {
        v86 = v77[4];
        if (v77[3] - v86 > 1uLL)
        {
          *v86 = 8236;
          v77[4] += 2;
          v87 = *(v84 - 1);
          v88 = *v84;
          v89 = *(a1 + 16);
          v90 = v89[4];
          if (v89[3] - v90 >= *v84)
          {
LABEL_90:
            if (v88)
            {
              v91 = v88;
              memcpy(v90, v87, v88);
              v89[4] += v91;
            }

            goto LABEL_85;
          }
        }

        else
        {
          llvm::raw_ostream::write(v77, ", ", 2uLL);
          v87 = *(v84 - 1);
          v88 = *v84;
          v89 = *(a1 + 16);
          v90 = v89[4];
          if (v89[3] - v90 >= *v84)
          {
            goto LABEL_90;
          }
        }

        llvm::raw_ostream::write(v89, v87, v88);
LABEL_85:
        v84 += 3;
      }
    }
  }

  if (v120 != v122)
  {
    free(v120);
  }

LABEL_94:
  v92 = *(a1 + 16);
  ++*(a1 + 80);
  v93 = *(v92 + 4);
  if (v93 < *(v92 + 3))
  {
    *(v92 + 4) = v93 + 1;
    *v93 = 10;
    goto LABEL_96;
  }

  llvm::raw_ostream::write(v92, 10);
  *(a1 + 152) += 2;
  if ((*(a1 + 72) & 0x40) != 0)
  {
LABEL_97:
    v94 = a2[6];
    for (j = a2[7]; v94 != j; ++v94)
    {
      while (1)
      {
        v96 = *v94;
        llvm::raw_ostream::indent(*(a1 + 16), *(a1 + 152));
        v97 = *(a1 + 16);
        v98 = v97[4];
        if ((v97[3] - v98) > 2)
        {
          *(v98 + 2) = 32;
          *v98 = 12079;
          v97[4] += 3;
        }

        else
        {
          llvm::raw_ostream::write(v97, "// ", 3uLL);
        }

        sub_1000B64E4((*(a1 + 24) + 280), v96, 1, *(a1 + 16));
        v99 = *(a1 + 16);
        v100 = v99[4];
        v101 = v99[3] - v100;
        if (*v96)
        {
          if (v101 > 0xB)
          {
            *(v100 + 8) = 544825888;
            *v100 = *" is used by ";
            v99[4] += 12;
          }

          else
          {
            llvm::raw_ostream::write(v99, " is used by ", 0xCuLL);
          }

          sub_1000C12EC(a1, v96);
        }

        else if (v101 > 9)
        {
          *(v100 + 8) = 25701;
          *v100 = *" is unused";
          v99[4] += 10;
        }

        else
        {
          llvm::raw_ostream::write(v99, " is unused", 0xAuLL);
        }

        v102 = *(a1 + 16);
        ++*(a1 + 80);
        v103 = *(v102 + 4);
        if (v103 >= *(v102 + 3))
        {
          break;
        }

        *(v102 + 4) = v103 + 1;
        *v103 = 10;
        if (++v94 == j)
        {
          goto LABEL_115;
        }
      }

      llvm::raw_ostream::write(v102, 10);
    }
  }

LABEL_115:
  v105 = a2 + 4;
  result = a2[4];
  if (result == a2 + 4)
  {
    v107 = a2[5];
  }

  else
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
    {
      v112 = ValuePtr;
      sub_100279394();
      ValuePtr = v112;
    }

    result = (*(**(ValuePtr + 48) + 32))(*(ValuePtr + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    v107 = a2[5];
    if (result && (a4 & 1) == 0)
    {
      v105 = *v105;
    }
  }

  if (v107 != v105)
  {
    result = sub_10027B1D4(a1, v107, (a1 + 16), v105);
  }

  *(a1 + 152) -= 2;
  return result;
}

uint64_t sub_1000B7E14(uint64_t a1)
{
  *a1 = off_1002B5D70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = &v2[96 * v3 - 8];
    v5 = -96 * v3;
    do
    {
      v6 = *v4;
      if (v6 != -1)
      {
        (off_1002B60F0[v6])(&v8, v4 - 64);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  *a1 = off_1002B5D20;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1000B7F1C(uint64_t a1)
{
  *a1 = off_1002B5D70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = &v2[96 * v3 - 8];
    v5 = -96 * v3;
    do
    {
      v6 = *v4;
      if (v6 != -1)
      {
        (off_1002B60F0[v6])(&v7, v4 - 64);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  *a1 = off_1002B5D20;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void *sub_1000B8038@<X0>(llvm *this@<X1>, std::align_val_t a2@<X2>, uint64_t a3@<X8>)
{
  result = llvm::allocate_buffer(this, a2);
  *a3 = result;
  *(a3 + 8) = this;
  *(a3 + 48) = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<void (*)(void *,unsigned long,unsigned long),void (*)(void *,unsigned long,unsigned long),void>::Callbacks + 2;
  *(a3 + 16) = a2;
  *(a3 + 24) = llvm::deallocate_buffer;
  *(a3 + 56) = 1;
  return result;
}

uint64_t sub_1000B80E4()
{
  if ((atomic_load_explicit(&qword_1002C0680, memory_order_acquire) & 1) == 0)
  {
    sub_10027B260();
  }

  return qword_1002C0670;
}

const char *sub_1000B812C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DistinctAttr]";
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

uint64_t sub_1000B81AC@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = (*result + 16 * v8);
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
      v9 = (v6 + 16 * (v16 & v7));
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
        v9[1] = *a3;
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
    sub_10008D0C4(result, v5);
    sub_10003D9D4(v17, a2, &v20);
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

uint64_t sub_1000B8330()
{
  {
    sub_10027B2B4();
  }

  return llvm::getTypeName<mlir::ElementsAttr>(void)::Name;
}

const char *sub_1000B8378()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ElementsAttr]";
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

double sub_1000B83F8@<D0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
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

void *sub_1000B8514(void *a1, void *a2, void *a3)
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
    v16 = &unk_10028F000;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = (1 << v7);
    *a1 &= ~1u;
    buffer = llvm::allocate_buffer((16 * v10), 8uLL);
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
      v16 = &unk_10028F000;
    }

    else
    {
      v14 = &buffer[v10];
      v12 = buffer;
      a3 = v9;
      a2 = v8;
      v15 = 16 * v10 - 16;
      v16 = &unk_10028F000;
      if (v15 < 0x30)
      {
        v17 = buffer;
LABEL_15:
        v22 = v16[29];
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
  v20 = v16[29];
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
    sub_1000B86C4(a1, v23, &v26);
  }

  return a1;
}

uint64_t sub_1000B86C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0;
  result = sub_1000B8808(a1, a2, &v17);
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
    sub_1000B8A3C(a1, v12);
    result = sub_1000B8808(a1, a2, &v18);
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

uint64_t sub_1000B8808(uint64_t a1, uint64_t a2, char ***a3)
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

void sub_1000B8A3C(uint64_t a1, unsigned int a2)
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
    v7 = (a1 + 8);
    v6 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (a2 > 4)
    {
      v25 = a2;
      buffer = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 8) = buffer;
      *(a1 + 16) = v25;
      v27 = *a1;
      v9 = (v6 + 16 * v8);
      *a1 = *a1 & 1;
      if (v27)
      {
        v10 = (a1 + 72);
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
          do
          {
LABEL_41:
            *v29++ = xmmword_10028F1D0;
          }

          while (v29 != v10);
LABEL_42:
          if (v8)
          {
            v35 = v6;
            do
            {
              if (*v35 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                *&v37 = 0;
                sub_1000B8808(a1, v35, &v37);
                *v37 = *v35;
                *a1 += 2;
              }

              v35 = (v35 + 16);
            }

            while (v35 != v9);
          }

          llvm::deallocate_buffer(v6, (16 * v8), 8uLL);
          return;
        }
      }
    }

    else
    {
      v9 = (v6 + 16 * v8);
      *a1 = 1;
      v10 = (a1 + 72);
      v11 = 48;
    }

    v28 = (v11 >> 4) + 1;
    v29 = &v7[v28 & 0x1FFFFFFFFFFFFFFCLL];
    v30 = v7 + 2;
    v31 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v30 - 2) = xmmword_10028F1D0;
      *(v30 - 1) = xmmword_10028F1D0;
      *v30 = xmmword_10028F1D0;
      v30[1] = xmmword_10028F1D0;
      v30 += 4;
      v31 -= 4;
    }

    while (v31);
    if (v28 == (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v12 = (a1 + 8);
  v13 = &v37;
  if (*(a1 + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = *v12;
    v13 = &v38;
    v14 = (a1 + 24);
    if (*(a1 + 24) > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      v15 = (a1 + 40);
      if (*(a1 + 40) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = (a1 + 24);
    if (*(a1 + 24) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  *v13++ = *v14;
  v15 = (a1 + 40);
  if (*(a1 + 40) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_11:
    v16 = (a1 + 56);
    if (*(a1 + 56) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *v13++ = *v15;
  v16 = (a1 + 56);
  if (*(a1 + 56) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_12:
    v17 = *a1;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *v13++ = *v16;
  v17 = *a1;
  if (a2 < 5)
  {
LABEL_13:
    *a1 = v17 & 1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v19 = (a1 + 72);
    v20 = 48;
    goto LABEL_16;
  }

LABEL_30:
  *a1 = v17 & 0xFFFFFFFE;
  v32 = a2;
  *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
  *(a1 + 16) = v32;
  v33 = *a1;
  *a1 = *a1 & 1;
  if (v33)
  {
    goto LABEL_31;
  }

LABEL_14:
  v18 = *(a1 + 16);
  if (!v18)
  {
    goto LABEL_34;
  }

  v12 = *(a1 + 8);
  v19 = &v12[v18];
  v20 = v19 - v12 - 16;
  if (v20 < 0x30)
  {
    v22 = *(a1 + 8);
    do
    {
LABEL_33:
      *v22 = xmmword_10028F1D0;
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
    *(v23 - 2) = xmmword_10028F1D0;
    *(v23 - 1) = xmmword_10028F1D0;
    *v23 = xmmword_10028F1D0;
    v23[1] = xmmword_10028F1D0;
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
        sub_1000B8808(a1, v34, &v36);
        *v36 = *v34;
        *a1 += 2;
      }

      ++v34;
    }

    while (v34 != v13);
  }
}

const void **sub_1000B8DF0(uint64_t a1, uint64_t a2)
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

void sub_1000B8FA8(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  __src = v17;
  *__len = xmmword_10028EDC0;
  v5 = 2 * a2;
  if (2 * a2)
  {
    if (v5 >= 0x11)
    {
      v6 = a1;
      v7 = a2;
      v8 = a3;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v17, v5, 1);
      a3 = v8;
      a1 = v6;
      a2 = v7;
    }

    __len[0] = v5;
  }

  if (a2)
  {
    v9 = 0;
    if (a3)
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    do
    {
      v11 = *a1++;
      *(__src + v9) = a0123456789abcd_3[v11 >> 4] | v10;
      *(__src + v9 + 1) = a0123456789abcd_3[v11 & 0xF] | v10;
      v9 += 2;
      --a2;
    }

    while (a2);
    v12 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10002BC08();
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = __src;
  if (v12 >= 0x17)
  {
    operator new();
  }

  a4[23] = v12;
  if (!v12)
  {
    *a4 = 0;
    v14 = __src;
    if (__src == v17)
    {
      return;
    }

    goto LABEL_14;
  }

  memmove(a4, v13, v12);
  a4[v12] = 0;
  v14 = __src;
  if (__src != v17)
  {
LABEL_14:
    free(v14);
  }
}

void sub_1000B9164(void *a1)
{
  *a1 = off_1002B5E20;
  v2 = a1[11];
  if (v2 != a1 + 13)
  {
    free(v2);
  }

  operator delete();
}

llvm::raw_ostream *sub_1000B91DC(llvm::raw_ostream *result, uint64_t a2)
{
  if (*(result + 36))
  {
    v3 = *(result + 2);
    v4 = v3[4];
    if (v3[3] == v4)
    {
      v6 = result;
      v7 = a2;
      llvm::raw_ostream::write(v3, " ", 1uLL);
      a2 = v7;
      v5 = v6 + 16;
    }

    else
    {
      *v4 = 32;
      ++v3[4];
      v5 = result + 16;
    }

    return mlir::AsmPrinter::Impl::printLocation(v5, a2, 1);
  }

  return result;
}

void *sub_1000B9280(uint64_t a1)
{
  v2 = *(a1 + 16);
  ++*(a1 + 80);
  v3 = *(v2 + 4);
  if (v3 >= *(v2 + 3))
  {
    llvm::raw_ostream::write(v2, 10);
    v4 = *(a1 + 16);
    v5 = *(a1 + 152);
  }

  else
  {
    *(v2 + 4) = v3 + 1;
    *v3 = 10;
    v4 = *(a1 + 16);
    v5 = *(a1 + 152);
  }

  return llvm::raw_ostream::indent(v4, v5);
}

llvm::raw_ostream *sub_1000B9330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

void *sub_1000B95D4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  v4 = *(a1 + 24);
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

llvm::raw_ostream *sub_1000B96E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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
  sub_1000B64E4((*(a1 + 24) + 280), v23, 1, *(a1 + 16));
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
      sub_1000B64E4((*(a1 + 24) + 280), v26, 1, *(a1 + 16));
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

void sub_1000B9B48(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 4) != 0)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 48);
  if (*(v3 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = *(a1 + 88) + 16 * *(a1 + 96);
    v5 = *(v4 - 16);
    v6 = *(v4 - 8);
    v7 = *(*v3 + 56);

    v7();
    return;
  }

  v82[0] = *(v3 + 8);
  v8 = a2;
  ReferencedDialect = mlir::StringAttr::getReferencedDialect(v82);
  a2 = v8;
  if (!ReferencedDialect)
  {
LABEL_12:
    (*(*a1 + 216))(a1, a2, 1);
    return;
  }

  (*(*ReferencedDialect + 72))(v86);
  if (v87 < 8)
  {
    a2 = v8;
    goto LABEL_12;
  }

  v82[0] = *(*(v8 + 48) + 8);
  Value = mlir::StringAttr::getValue(v82);
  if (v11)
  {
    v12 = Value;
    v13 = v11;
    if (v11 < 8)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_23;
    }

    if (v11 >= 0x20)
    {
      v16 = 0uLL;
      v17.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v17.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v18 = vdupq_n_s64(1uLL);
      v14 = v11 & 0xFFFFFFFFFFFFFFE0;
      v19 = 0uLL;
      v20 = (Value + 16);
      v21 = 0uLL;
      v22 = v11 & 0xFFFFFFFFFFFFFFE0;
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
      v34 = 0uLL;
      v35 = 0uLL;
      do
      {
        v36 = vceqq_s8(v20[-1], v17);
        v37 = vmovl_u8(*v36.i8);
        v38 = vmovl_high_u8(v36);
        v39 = vmovl_high_u16(v38);
        v40.i64[0] = v39.u32[2];
        v40.i64[1] = v39.u32[3];
        v27 = vaddq_s64(v27, vandq_s8(v40, v18));
        v41 = vmovl_high_u16(v37);
        v42 = vmovl_u16(*v38.i8);
        v40.i64[0] = v39.u32[0];
        v40.i64[1] = v39.u32[1];
        v26 = vaddq_s64(v26, vandq_s8(v40, v18));
        v40.i64[0] = v42.u32[2];
        v40.i64[1] = v42.u32[3];
        v25 = vaddq_s64(v25, vandq_s8(v40, v18));
        v40.i64[0] = v41.u32[2];
        v40.i64[1] = v41.u32[3];
        v23 = vaddq_s64(v23, vandq_s8(v40, v18));
        v43 = vmovl_u16(*v37.i8);
        v40.i64[0] = v42.u32[0];
        v40.i64[1] = v42.u32[1];
        v24 = vaddq_s64(v24, vandq_s8(v40, v18));
        v40.i64[0] = v43.u32[0];
        v40.i64[1] = v43.u32[1];
        v44 = vandq_s8(v40, v18);
        v40.i64[0] = v43.u32[2];
        v40.i64[1] = v43.u32[3];
        v45 = vandq_s8(v40, v18);
        v40.i64[0] = v41.u32[0];
        v40.i64[1] = v41.u32[1];
        v46 = vceqq_s8(*v20, v17);
        v21 = vaddq_s64(v21, vandq_s8(v40, v18));
        v47 = vmovl_u8(*v46.i8);
        v48 = vmovl_high_u8(v46);
        v19 = vaddq_s64(v19, v45);
        v49 = vmovl_high_u16(v48);
        v16 = vaddq_s64(v16, v44);
        v40.i64[0] = v49.u32[2];
        v40.i64[1] = v49.u32[3];
        v35 = vaddq_s64(v35, vandq_s8(v40, v18));
        v50 = vmovl_high_u16(v47);
        v51 = vmovl_u16(*v48.i8);
        v40.i64[0] = v49.u32[0];
        v40.i64[1] = v49.u32[1];
        v34 = vaddq_s64(v34, vandq_s8(v40, v18));
        v40.i64[0] = v51.u32[2];
        v40.i64[1] = v51.u32[3];
        v33 = vaddq_s64(v33, vandq_s8(v40, v18));
        v40.i64[0] = v50.u32[2];
        v40.i64[1] = v50.u32[3];
        v31 = vaddq_s64(v31, vandq_s8(v40, v18));
        v40.i64[0] = v51.u32[0];
        v40.i64[1] = v51.u32[1];
        v32 = vaddq_s64(v32, vandq_s8(v40, v18));
        v52 = vmovl_u16(*v47.i8);
        v40.i64[0] = v50.u32[0];
        v40.i64[1] = v50.u32[1];
        v30 = vaddq_s64(v30, vandq_s8(v40, v18));
        v40.i64[0] = v52.u32[2];
        v40.i64[1] = v52.u32[3];
        v29 = vaddq_s64(v29, vandq_s8(v40, v18));
        v40.i64[0] = v52.u32[0];
        v40.i64[1] = v52.u32[1];
        v28 = vaddq_s64(v28, vandq_s8(v40, v18));
        v20 += 2;
        v22 -= 32;
      }

      while (v22);
      v15 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v28, v16), vaddq_s64(v32, v24)), vaddq_s64(vaddq_s64(v30, v21), vaddq_s64(v34, v26))), vaddq_s64(vaddq_s64(vaddq_s64(v29, v19), vaddq_s64(v33, v25)), vaddq_s64(vaddq_s64(v31, v23), vaddq_s64(v35, v27)))));
      if (v11 == v14)
      {
        goto LABEL_27;
      }

      if ((v11 & 0x18) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v53 = v14;
    v14 = v11 & 0xFFFFFFFFFFFFFFF8;
    v54 = 0uLL;
    v55 = v15;
    v56 = (Value + v53);
    v57 = v53 - (v11 & 0xFFFFFFFFFFFFFFF8);
    v58 = vdupq_n_s64(1uLL);
    v59 = 0uLL;
    v60 = 0uLL;
    do
    {
      v61 = *v56++;
      v62 = vmovl_u8(vceq_s8(v61, 0x2E2E2E2E2E2E2E2ELL));
      v63 = vmovl_u16(*v62.i8);
      v64.i64[0] = v63.u32[0];
      v64.i64[1] = v63.u32[1];
      v65 = vandq_s8(v64, v58);
      v64.i64[0] = v63.u32[2];
      v64.i64[1] = v63.u32[3];
      v66 = vandq_s8(v64, v58);
      v67 = vmovl_high_u16(v62);
      v64.i64[0] = v67.u32[0];
      v64.i64[1] = v67.u32[1];
      v68 = vandq_s8(v64, v58);
      v64.i64[0] = v67.u32[2];
      v64.i64[1] = v67.u32[3];
      v60 = vaddq_s64(v60, vandq_s8(v64, v58));
      v59 = vaddq_s64(v59, v68);
      v54 = vaddq_s64(v54, v66);
      v55 = vaddq_s64(v55, v65);
      v57 += 8;
    }

    while (v57);
    v15 = vaddvq_s64(vaddq_s64(vaddq_s64(v55, v59), vaddq_s64(v54, v60)));
    if (v11 != v14)
    {
LABEL_23:
      v69 = v11 - v14;
      v70 = (Value + v14);
      do
      {
        v71 = *v70++;
        if (v71 == 46)
        {
          ++v15;
        }

        --v69;
      }

      while (v69);
    }

LABEL_27:
    if (v15 == 1)
    {
      v72 = *(a1 + 88) + 16 * *(a1 + 96);
      v83 = 773;
      v82[0] = *(v72 - 16);
      v82[1] = *(v72 - 8);
      v82[2] = ".";
      llvm::Twine::str(v82, v84);
      v73 = v85;
      v74 = v84[0];
      if (v85 >= 0)
      {
        v75 = v84;
      }

      else
      {
        v75 = v84[0];
      }

      if (v85 >= 0)
      {
        v76 = v85;
      }

      else
      {
        v76 = v84[1];
      }

      if (v13 >= v76 && (!v76 || !memcmp(v12, v75, v76)))
      {
        v12 += v76;
        v13 -= v76;
      }

      if (v73 < 0)
      {
        operator delete(v74);
      }
    }

    v77 = *(a1 + 16);
    v78 = *(v77 + 32);
    if (v13 <= *(v77 + 24) - v78)
    {
      if (v13)
      {
        memcpy(v78, v12, v13);
        *(v77 + 32) += v13;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(a1 + 16), v12, v13);
    }
  }

  if ((v87 & 2) != 0)
  {
    v79 = v86;
  }

  else
  {
    v79 = v86[0];
  }

  (*(v87 & 0xFFFFFFFFFFFFFFF8))(v79, v8, a1);
  v80 = v87;
  if (v87 >= 8)
  {
    if ((v87 & 4) != 0)
    {
      if ((v87 & 2) != 0)
      {
        v81 = v86;
      }

      else
      {
        v81 = v86[0];
      }

      (*((v87 & 0xFFFFFFFFFFFFFFF8) + 16))(v81);
    }

    if ((v80 & 2) == 0)
    {
      llvm::deallocate_buffer(v86[0], v86[1], v86[2]);
    }
  }
}

llvm::raw_ostream *sub_1000BA0B4(uint64_t a1, void *a2, int a3, char a4, int a5)
{
  v6 = *(a1 + 72);
  result = *(a1 + 16);
  v9 = *(result + 3);
  v8 = *(result + 4);
  if ((v6 & 8) == 0)
  {
    if (v9 == v8)
    {
      result = llvm::raw_ostream::write(result, "{", 1uLL);
      v14 = *(result + 4);
      ++*(a1 + 80);
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
      ++*(a1 + 80);
      if (v14 < *(result + 3))
      {
        goto LABEL_4;
      }
    }

    llvm::raw_ostream::write(result, 10);
    if (*a2 == a2)
    {
LABEL_5:
      result = llvm::raw_ostream::indent(*(a1 + 16), *(a1 + 152));
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

      goto LABEL_38;
    }

LABEL_13:
    v19 = a2[2];
    if (sub_1000BA82C(v19) && v19)
    {
      v20 = sub_1000BA82C(v19);
      v21 = (*(v20 + 24))();
      v24 = (a1 + 96);
      v23 = *(a1 + 96);
      v25 = (a1 + 88);
      if (v23 >= *(a1 + 100))
      {
        v33 = v21;
        v34 = v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 88, (a1 + 104), v23 + 1, 16);
        v21 = v33;
        v22 = v34;
        LODWORD(v23) = *(a1 + 96);
      }
    }

    else
    {
      v24 = (a1 + 96);
      v23 = *(a1 + 96);
      v25 = (a1 + 88);
      if (v23 >= *(a1 + 100))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 88, (a1 + 104), v23 + 1, 16);
        v22 = 0;
        LODWORD(v23) = *(a1 + 96);
      }

      else
      {
        v22 = 0;
      }

      v21 = "";
    }

    v26 = (*v25 + 16 * v23);
    *v26 = v21;
    v26[1] = v22;
    ++*v24;
    v27 = a2[1];
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
      v29 = v28[4];
      v30 = v29 == v28 + 4;
      if (v29 == v28 + 4 || !a3)
      {
LABEL_32:
        sub_1000B7398(a1, v28, v30, a4);
        for (i = *(a2[1] + 8); i != a2; i = i[1])
        {
          if (i)
          {
            v32 = i - 1;
          }

          else
          {
            v32 = 0;
          }

          sub_1000B7398(a1, v32, 1, 1);
        }

        --*(a1 + 96);
        result = llvm::raw_ostream::indent(*(a1 + 16), *(a1 + 152));
        v15 = *(result + 4);
        if (*(result + 3) != v15)
        {
          goto LABEL_6;
        }

LABEL_38:
        v17 = "}";
        v18 = 1;
        goto LABEL_39;
      }
    }

    else if (!a3)
    {
      v30 = 0;
      goto LABEL_32;
    }

    v30 = ((v28[7] - v28[6]) & 0x7FFFFFFF8) != 0;
    goto LABEL_32;
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
LABEL_39:

  return llvm::raw_ostream::write(result, v17, v18);
}

void sub_1000BA3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  v32[0] = a3;
  v32[1] = a4;
  v29 = v31;
  v30 = xmmword_10028EDC0;
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
        v20 = off_1002B4638;
        llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
        sub_1000B64E4((v4 + 35), v14, 1, &v20);
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
            v9 = sub_10003A984((v4 + 54), v19, v19, 0);
            v10 = v8;
            v11 = v9;
          }

          memmove(v11, v10, v19);
        }

        v12 = sub_1000BAA10((v4 + 38), &v28);
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

double sub_1000BA5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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
      mlir::AsmPrinter::Impl::printAffineExprInternal(v10, *Results, 0, sub_1000BAF98, v20);
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
          mlir::AsmPrinter::Impl::printAffineExprInternal(v10, v16, 0, sub_1000BAF98, v20);
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

llvm::raw_ostream *sub_1000BA7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  v8[0] = a5;
  v8[1] = a6;
  v7[0] = a1;
  v7[1] = v9;
  v7[2] = v8;
  return mlir::AsmPrinter::Impl::printAffineExprInternal((a1 + 16), a2, 0, sub_1000BB0C8, v7);
}

uint64_t sub_1000BA82C(uint64_t a1)
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
      sub_1002792AC();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1002C1000;
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
    sub_10027B308();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1002C1000;
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
    v12 = (v11 + 2);
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
    sub_10027B308();
    v4 = &unk_1002C1000;
    v18 = v23;
  }

  v19 = v4[273];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void *sub_1000BAA10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v12 = 0;
    v13 = 1;
    while (v8 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8 == -8192;
      }

      if (v14)
      {
        v12 = v7;
      }

      v15 = v6 + v13++;
      v6 = v15 & v5;
      v7 = (*a1 + 24 * (v15 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v12)
    {
      v7 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v16 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v16 = a2;
LABEL_24:
    v17 = a1;
    sub_1000BACC4(a1, v2);
    sub_1000BABD0(v17, v16, &v18);
    a1 = v17;
    a2 = v16;
    v7 = v18;
    ++*(v17 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v11 = *a2;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v11;
  return v7 + 1;
}

uint64_t sub_1000BABD0(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 24 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 24 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void sub_1000BACC4(uint64_t a1, int a2)
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
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 24 * v11 - 24;
    if (v12 >= 0x18)
    {
      v14 = v12 / 0x18 + 1;
      v13 = &buffer[3 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v15 = -4096;
        v15[3] = -4096;
        v15 += 6;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[3 * v11];
    do
    {
      *v13 = -4096;
      v13 += 3;
    }

    while (v13 != v17);
    return;
  }

  v10 = 3 * v3;
  sub_1000BAE08(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 8), 8uLL);
}

uint64_t sub_1000BAE08(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    if (v5 < 0x18)
    {
      v6 = *result;
LABEL_7:
      v10 = &v4[3 * v3];
      do
      {
        *v6 = -4096;
        v6 += 3;
      }

      while (v6 != v10);
      goto LABEL_9;
    }

    v7 = v5 / 0x18 + 1;
    v6 = &v4[3 * (v7 & 0x1FFFFFFFFFFFFFFELL)];
    v8 = *result;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = -4096;
      v8[3] = -4096;
      v8 += 6;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  while (a2 != a3)
  {
    v12 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v13 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ (v13 >> 47) ^ v13);
      LODWORD(v13) = -348639895 * ((v14 >> 47) ^ v14);
      v15 = *(result + 16) - 1;
      v16 = v15 & v13;
      v11 = *result + 24 * v16;
      v17 = *v11;
      if (v12 != *v11)
      {
        v18 = 0;
        v19 = 1;
        while (v17 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v17 == -8192;
          }

          if (v20)
          {
            v18 = v11;
          }

          v21 = v16 + v19++;
          v16 = v21 & v15;
          v11 = *result + 24 * (v21 & v15);
          v17 = *v11;
          if (v12 == *v11)
          {
            goto LABEL_13;
          }
        }

        if (v18)
        {
          v11 = v18;
        }
      }

LABEL_13:
      *v11 = v12;
      *(v11 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 3;
  }

  return result;
}

llvm::raw_ostream *sub_1000BAF98(uint64_t a1, unsigned int a2, int a3)
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
    sub_1000B64E4((*(v3 + 24) + 280), v12, 1, *(v3 + 16));
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

    return sub_1000B64E4(v10, v8, 1, v9);
  }

  return result;
}

llvm::raw_ostream *sub_1000BB0C8(uint64_t *a1, unsigned int a2, char a3)
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
    sub_1000B64E4((*(v3 + 24) + 280), v12, 1, *(v3 + 16));
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

    return sub_1000B64E4(v10, v8, 1, v9);
  }

  return result;
}

uint64_t sub_1000BB1F8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 40);
  if (v3)
  {
    v4 = a2;
    sub_1000BCE58(*(a1 + 24), *(a2 + 24), 1, 0);
    a2 = v4;
    v3 = *(*(a1 + 16) + 40);
  }

  if ((v3 & 4) != 0)
  {
    v7 = *(*a1 + 216);

    return v7(a1, a2, 1);
  }

  else
  {
    v5 = *(**(a2 + 48) + 56);

    return v5();
  }
}

void *sub_1000BB2D8(void *a1)
{
  *a1 = off_1002B5F30;
  llvm::raw_null_ostream::~raw_null_ostream((a1 + 4));
  return a1;
}

void sub_1000BB31C(void *a1)
{
  *a1 = off_1002B5F30;
  llvm::raw_null_ostream::~raw_null_ostream((a1 + 4));

  operator delete();
}

uint64_t sub_1000BB458(void *a1, uint64_t a2)
{
  result = (*(*a1 + 32))(a1, *(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(a1[2] + 40))
  {
    v5 = a1[3];
    v6 = *(a2 + 32);

    return sub_1000BCE58(v5, v6, 0, 0);
  }

  return result;
}

void *sub_1000BB4E4(int a1, int a2, llvm::raw_ostream *this)
{
  v3 = *(this + 4);
  if (*(this + 3) == v3)
  {
    return llvm::raw_ostream::write(this, "%", 1uLL);
  }

  *v3 = 37;
  ++*(this + 4);
  return result;
}

void sub_1000BB524(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v6 = a2;
    if (a5)
    {
      v14[0] = a4;
      Name = a4 + 16 * a5;
      sub_1000B8514(&v16, v14, &Name);
      v8 = 16 * a3;
      while (1)
      {
        Name = mlir::NamedAttribute::getName(v6);
        v14[0] = mlir::StringAttr::getValue(&Name);
        v14[1] = v9;
        v10 = sub_1000B8DF0(&v16, v14);
        if (v10)
        {
          if (v16)
          {
            if (v10 != &v19)
            {
              goto LABEL_5;
            }
          }

          else if (v10 != (v17 + 16 * v18))
          {
            goto LABEL_5;
          }
        }

        (*(*a1 + 40))(a1, *(v6 + 1));
LABEL_5:
        v6 = (v6 + 16);
        v8 -= 16;
        if (!v8)
        {
          if ((v16 & 1) == 0)
          {
            llvm::deallocate_buffer(v17, (16 * v18), 8uLL);
          }

          return;
        }
      }
    }

    v11 = 16 * a3;
    v12 = a2 + 1;
    do
    {
      v13 = *v12;
      v12 += 2;
      (*(*a1 + 40))(a1, v13);
      v11 -= 16;
    }

    while (v11);
  }
}

void *sub_1000BB6E8(void *result, void *a2, int a3, char a4)
{
  if (*a2 != a2)
  {
    v4 = result;
    if ((*(result[2] + 40) & 8) != 0)
    {
      v10 = result[8];
      if ((result[7] - v10) > 4)
      {
        *(v10 + 4) = 125;
        *v10 = 774778491;
        result[8] += 5;
      }

      else
      {
        v11 = result + 4;

        return llvm::raw_ostream::write(v11, "{...}", 5uLL);
      }
    }

    else
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (v6 - 8);
      }

      else
      {
        v7 = 0;
      }

      result = sub_1000BD7E0(result, v7, a3, a4);
      for (i = *(a2[1] + 8); i != a2; i = i[1])
      {
        if (i)
        {
          v9 = i - 1;
        }

        else
        {
          v9 = 0;
        }

        result = sub_1000BD7E0(v4, v9, 1, 1);
      }
    }
  }

  return result;
}

uint64_t sub_1000BB7F8(void *a1, void **a2, int a3)
{
  __src[0] = 0;
  __src[16] = 0;
  *&__src[24] = 0;
  v61 = v63;
  v62 = 0x600000000;
  v46[0] = a2;
  *&v46[1] = *__src;
  *(&v46[2] + 4) = *&__src[12];
  v47 = &v49;
  v48 = 0x600000000;
  v6 = sub_1000BBE40((a1 + 2), v46);
  v8 = v7;
  if (v47 != &v49)
  {
    free(v47);
  }

  if (v61 != v63)
  {
    free(v61);
  }

  if (v8)
  {
    v43 = v6 - a1[5];
    v46[0] = &v46[3];
    *&v46[1] = xmmword_10028F130;
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
        sub_10003E618(v46, (a1 + 7));
        ++v10;
      }

      while (v12 != 2 && v10 != v9);
LABEL_15:
      v14 = v46[0];
      if (v46[1])
      {
        *__src = &__src[24];
        *&__src[8] = xmmword_10028EDC0;
        v15 = sub_1000BC574(v46[0], v46[1], __src, "$_-", 3uLL, 0);
        v17 = v16;
        if (v16)
        {
          v18 = v15;
          v19 = a1[1];
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
            v41 = v18;
            v42 = sub_10003A984(v19, v16, v16, 0);
            v18 = v41;
            v20 = v42;
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

        v14 = v46[0];
      }

      if (v14 != &v46[3])
      {
        free(v14);
      }
    }

    if (a3)
    {
      v24 = -1073741824;
    }

    else
    {
      v24 = 0x40000000;
    }

    *(v6 + 32) = *(v6 + 32) & 0x3FFFFFFF | v24;
    *__src = &__src[16];
    *&__src[8] = 0x600000000;
    memset(&v46[1], 0, 28);
    v46[0] = off_1002B6040;
    v47 = &v49;
    v48 = 0;
    v49 = a1;
    v50 = a3;
    v51 = __src;
    v52 = 0;
    v54 = 0;
    v58 = 0;
    v59 = 1;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v53 = off_1002B46B8;
    v25 = *a2;
    v26 = **a2;
    if (v26[3] == &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      if (v25[17] == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        v32 = a2;
      }

      else
      {
        v32 = 0;
      }

      v45 = v32;
      if (v32)
      {
        ElementType = mlir::MemRefType::getElementType(&v45);
        (*(v46[0] + 4))(v46, ElementType);
        v44[0] = mlir::MemRefType::getLayout(&v45);
        v44[1] = v34;
        if (*(*v44[0] + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || (mlir::MemRefLayoutAttrInterface::isIdentity(v44) & 1) == 0)
        {
          Layout = mlir::MemRefType::getLayout(&v45);
          (*(v46[0] + 5))(v46, Layout);
        }

        if (mlir::MemRefType::getMemorySpace(&v45))
        {
          MemorySpace = mlir::MemRefType::getMemorySpace(&v45);
          (*(v46[0] + 5))(v46, MemorySpace);
        }
      }

      else
      {
        v44[0] = v46;
        mlir::AbstractType::walkImmediateSubElements(v25);
      }
    }

    else
    {
      (*(*v26 + 7))(**a2, a2, v46);
    }

    v27 = v52;
    v28 = a1[5] + v43;
    v29 = (v28 + 40);
    if ((v28 + 40) == __src)
    {
LABEL_64:
      if (v27)
      {
        v23 = *(v28 + 32) & 0xC0000000 | (v27 + 1) & 0x3FFFFFFF;
        *(v28 + 32) = v23;
        v46[0] = off_1002B6040;
        llvm::raw_null_ostream::~raw_null_ostream(&v53);
        v39 = v47;
        if (v47 == &v49)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v23 = *(v28 + 32);
        v46[0] = off_1002B6040;
        llvm::raw_null_ostream::~raw_null_ostream(&v53);
        v39 = v47;
        if (v47 == &v49)
        {
LABEL_67:
          llvm::deallocate_buffer(v46[2], (8 * LODWORD(v46[4])), 8uLL);
          if (*__src != &__src[16])
          {
            free(*__src);
          }

          return v23 & 0x3FFFFFFF;
        }
      }

      free(v39);
      goto LABEL_67;
    }

    v30 = *__src;
    if (*__src != &__src[16])
    {
      v31 = *(v28 + 40);
      if (v31 != (v28 + 56))
      {
        free(v31);
        v30 = *__src;
      }

      *(v28 + 40) = v30;
      *(v28 + 48) = *&__src[8];
      *__src = &__src[16];
      *&__src[12] = 0;
      goto LABEL_63;
    }

    v37 = *&__src[8];
    v38 = *(v28 + 48);
    if (v38 >= *&__src[8])
    {
      if (*&__src[8])
      {
        memmove(*v29, *__src, 8 * *&__src[8]);
      }

      goto LABEL_62;
    }

    if (*(v28 + 52) >= *&__src[8])
    {
      if (v38)
      {
        memmove(*v29, *__src, 8 * v38);
        goto LABEL_60;
      }
    }

    else
    {
      *(v28 + 48) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 40, (v28 + 56), v37, 8);
    }

    v38 = 0;
LABEL_60:
    if (*&__src[8] != v38)
    {
      memcpy(*v29 + 8 * v38, (*__src + 8 * v38), 8 * (*&__src[8] - v38));
    }

LABEL_62:
    *(v28 + 48) = v37;
LABEL_63:
    *&__src[8] = 0;
    goto LABEL_64;
  }

  if ((a3 & 1) == 0)
  {
    sub_1000BBF6C(a1, 0x4EC4EC4EC4EC4EC5 * ((v6 - a1[5]) >> 3));
  }

  v23 = *(v6 + 32);
  return v23 & 0x3FFFFFFF;
}

uint64_t sub_1000BBE40(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v13 = *a2;
  v14 = 0;
  sub_1000BC040(a1, &v13, &v14, &v15);
  if (v16 != 1)
  {
    return *(a1 + 24) + 104 * *(v15 + 8);
  }

  v5 = *(a1 + 32);
  *(v15 + 8) = v5;
  v12 = v4;
  v13 = a2;
  if (v5 >= *(a1 + 36))
  {
    sub_1000BC3D4(a1 + 24, &v13, &v12);
    v10 = *(a1 + 32);
  }

  else
  {
    v6 = (*(a1 + 24) + 104 * v5);
    *v6 = *a2;
    v7 = *v4;
    v8 = *(v4 + 12);
    v6[5] = v6 + 7;
    v9 = (v6 + 5);
    *(v9 - 20) = v8;
    *(v9 - 32) = v7;
    *(v9 + 8) = 0x600000000;
    if (*(a2 + 48))
    {
      sub_100056AF0(v9, (a2 + 40));
    }

    v10 = *(a1 + 32) + 1;
    *(a1 + 32) = v10;
  }

  return *(a1 + 24) + 104 * v10 - 104;
}

uint64_t sub_1000BBF6C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) + 104 * a2;
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    *(v2 + 32) = v3 & 0x7FFFFFFF;
    v4 = *(v2 + 48);
    if (v4)
    {
      v5 = result;
      v6 = *(v2 + 40);
      v7 = 8 * v4;
      do
      {
        v8 = *v6++;
        result = sub_1000BBF6C(v5, v8);
        v7 -= 8;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_1000BBFD4(uint64_t a1)
{
  *a1 = off_1002B6040;
  llvm::raw_null_ostream::~raw_null_ostream((a1 + 88));
  v2 = *(a1 + 40);
  if (v2 != (a1 + 56))
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(a1 + 16), (8 * *(a1 + 32)), 8uLL);
  return a1;
}

uint64_t sub_1000BC040@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
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
    sub_1000BC1C4(result, v5);
    sub_10003D9D4(v17, a2, &v20);
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

void sub_1000BC1C4(uint64_t a1, int a2)
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
        *(v13 - 2) = -4096;
        *v13 = -4096;
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
          *v10 = -4096;
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
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = *a1 + 16 * v25;
          v26 = *v22;
          if (v23 != *v22)
          {
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
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = *a1 + 16 * (v30 & v24);
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
          *(v22 + 8) = *(v16 + 2);
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
        *(v19 - 2) = -4096;
        *v19 = -4096;
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
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v21);
      }
    }
  }
}

void sub_1000BC3D4(uint64_t a1, void **a2, __int128 **a3)
{
  v24 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 104, &v24);
  v8 = &v7[104 * *(a1 + 8)];
  v9 = *a3;
  *v8 = **a2;
  v10 = *v9;
  v11 = *(v9 + 12);
  *(v8 + 5) = v8 + 56;
  v12 = (v8 + 40);
  *(v12 - 20) = v11;
  *(v12 - 32) = v10;
  *(v12 + 8) = 0x600000000;
  if (*(v9 + 10))
  {
    sub_100056AF0(v12, v9 + 4);
  }

  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = &v13[104 * v14];
    v16 = v7 + 40;
    v17 = v13 + 40;
    do
    {
      v18 = v17 - 40;
      *(v16 - 5) = *(v17 - 5);
      v19 = *(v17 - 2);
      *(v16 - 20) = *(v17 - 20);
      *(v16 - 2) = v19;
      *v16 = v16 + 2;
      v16[1] = 0x600000000;
      if (*(v17 + 2))
      {
        sub_100056AF0(v16, v17);
      }

      v16 += 13;
      v17 += 104;
    }

    while (v18 + 104 != v15);
    v13 = *a1;
    v20 = *(a1 + 8);
    if (v20)
    {
      v21 = &v13[104 * v20 - 64];
      v22 = -104 * v20;
      do
      {
        if (v21 + 2 != *v21)
        {
          free(*v21);
        }

        v21 -= 13;
        v22 += 104;
      }

      while (v22);
      v13 = *a1;
    }
  }

  v23 = v24;
  if (v13 != v6)
  {
    free(v13);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v23;
}

char *sub_1000BC574(char *a1, uint64_t a2, char **a3, void *__s, size_t __n, char a6)
{
  v10 = a1;
  v30[0] = a1;
  v30[1] = a2;
  v29[0] = __s;
  v29[1] = __n;
  v27[2] = a3;
  v28 = v29;
  v27[0] = v30;
  v27[1] = &v28;
  v11 = *a1;
  if ((v11 & 0x80000000) == 0 && (_DefaultRuneLocale.__runetype[v11] & 0x400) != 0)
  {
    goto LABEL_36;
  }

  if ((v11 - 48) >= 0xA && ((v11 & 0xDF) - 65) >= 0x1Au)
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
    if (v23 + 1 > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, a3 + 3, (v23 + 1), 1);
      v23 = a3[1];
    }

    v23[*a3] = 95;
    ++a3[1];
LABEL_39:
    sub_1000BC77C(v27);
    v10 = *a3;
    v24 = a3[1];
    return v10;
  }

LABEL_7:
  if ((a6 & 1) != 0 || (v13 = v10[a2 - 1], v13 < 0) || (_DefaultRuneLocale.__runetype[v13] & 0x400) == 0)
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

      goto LABEL_39;
    }
  }

  else
  {
    sub_1000BC77C(v27);
    v26 = a3[1];
    if (v26 + 1 > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, a3 + 3, (v26 + 1), 1);
      v26 = a3[1];
    }

    v26[*a3] = 95;
    v10 = *a3;
    ++a3[1];
  }

  return v10;
}

void sub_1000BC77C(uint64_t a1)
{
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
              v29[v18--] = a0123456789abcd_3[v17 & 0xF];
              v19 = v17 > 0xF;
              v17 >>= 4;
            }

            while (v19);
            v20 = v18 + 1;
            v21 = 16 - v18;
            if ((16 - v18) >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_10002BC08();
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
            llvm::SmallVectorBase<unsigned long long>::grow_pod(v6, v6 + 3, v26 + v25, 1);
            v26 = v6[1];
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

          goto LABEL_7;
        }

        v16 = v6[1];
        if ((v16 + 1) > v6[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 16), v6 + 3, v16 + 1, 1);
          v16 = v6[1];
        }

        *(*v6 + v16) = 95;
      }

      else
      {
        v6 = *(a1 + 16);
        v7 = v6[1];
        if ((v7 + 1) > v6[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 16), v6 + 3, v7 + 1, 1);
          v7 = v6[1];
        }

        *(*v6 + v7) = v9;
      }

      ++v6[1];
LABEL_7:
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1000BCA48(uint64_t a1)
{
  *a1 = off_1002B6040;
  llvm::raw_null_ostream::~raw_null_ostream((a1 + 88));
  v2 = *(a1 + 40);
  if (v2 != (a1 + 56))
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(a1 + 16), (8 * *(a1 + 32)), 8uLL);

  operator delete();
}

unint64_t sub_1000BCAE0(uint64_t a1, void **a2)
{
  result = sub_1000BB7F8(*(a1 + 56), a2, *(a1 + 64));
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), (v5 + 16), v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

unint64_t sub_1000BCB74(uint64_t a1, void **a2)
{
  result = sub_1000BCE58(*(a1 + 56), a2, *(a1 + 64), 0);
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), (v5 + 16), v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

unint64_t sub_1000BCC0C(uint64_t a1, void **a2)
{
  result = sub_1000BCE58(*(a1 + 56), a2, *(a1 + 64), 1);
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    v7 = v4;
    v8 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 72), (v5 + 16), v6 + 1, 8);
    v4 = v7;
    result = v8;
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  if (result > *(a1 + 80))
  {
    *(a1 + 80) = result;
  }

  return result;
}

uint64_t sub_1000BCD2C(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  sub_1000658E8(a1 + 16, &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(a1 + 48);
    if (v5 >= *(a1 + 52))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 40, (a1 + 56), v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(a1 + 48);
    }

    *(*(a1 + 40) + 8 * v5) = v4;
    ++*(a1 + 48);
  }

  return result;
}

int32x2_t *sub_1000BCDC0(int32x2_t *result)
{
  v1 = result[4].i32[0];
  if (v1)
  {
    v2 = result[2];
    v3 = result[6].u32[0];
    v4 = *(*&result[5] + 8 * v3 - 8);
    v5 = v1 - 1;
    v6 = ((v4 >> 4) ^ (v4 >> 9)) & (v1 - 1);
    v7 = *(*&v2 + 8 * v6);
    if (v4 == v7)
    {
LABEL_3:
      *(*&v2 + 8 * v6) = -8192;
      result[3] = vadd_s32(result[3], 0x1FFFFFFFFLL);
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

    result[6].i32[0] = v3 - 1;
  }

  else
  {
    --result[6].i32[0];
  }

  return result;
}

uint64_t sub_1000BCE58(void *a1, void **a2, int a3, char a4)
{
  v96[0] = 0;
  v96[16] = 0;
  *&v96[24] = 0;
  v97 = v99;
  v98 = 0x600000000;
  v82[0] = a2;
  *&v82[1] = *v96;
  *(&v82[2] + 4) = *&v96[12];
  v83 = &v85;
  v84 = 0x600000000;
  v8 = sub_1000BBE40((a1 + 2), v82);
  v10 = v9;
  if (v83 != &v85)
  {
    free(v83);
  }

  if (v97 != v99)
  {
    free(v97);
  }

  if (v10)
  {
    v73 = v8 - a1[5];
    v72 = a4;
    v82[0] = &v82[3];
    *&v82[1] = xmmword_10028F130;
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
        sub_10003E618(v82, (a1 + 7));
        ++v12;
      }

      while (v14 != 2 && v12 != v11);
LABEL_15:
      v16 = v82[0];
      if (v82[1])
      {
        *v96 = &v96[24];
        *&v96[8] = xmmword_10028EDC0;
        v17 = sub_1000BC574(v82[0], v82[1], v96, "$_-", 3uLL, 0);
        v19 = v18;
        if (v18)
        {
          v20 = v17;
          v21 = a1[1];
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
            v42 = v20;
            v43 = sub_10003A984(v21, v18, v18, 0);
            v20 = v42;
            v22 = v43;
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
        if (*v96 != &v96[24])
        {
          free(*v96);
        }

        v16 = v82[0];
      }

      if (v16 != &v82[3])
      {
        free(v16);
      }
    }

    if (a3)
    {
      v26 = 0x80000000;
    }

    else
    {
      v26 = 0;
    }

    *(v8 + 32) = v26 & 0xC0000000 | *(v8 + 32) & 0x3FFFFFFF;
    *v96 = &v96[16];
    *&v96[8] = 0x600000000;
    memset(&v82[1], 0, 28);
    v82[0] = off_1002B6040;
    v83 = &v85;
    v84 = 0;
    v85 = a1;
    v86 = a3;
    v87 = v96;
    v88 = 0;
    v90 = 0;
    v94 = 0;
    v95 = 1;
    v92 = 0;
    v93 = 0;
    v91 = 0;
    v89 = off_1002B46B8;
    v27 = **a2;
    if (v27[3] != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      (*(*v27 + 5))(v27, a2, v82);
      goto LABEL_37;
    }

    v30 = (*a2)[17];
    if (v30 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_54;
    }

    if (atomic_load_explicit(&qword_1002C0668, memory_order_acquire))
    {
      if (v30 == qword_1002C0660)
      {
        v31 = a2;
      }

      else
      {
        v31 = 0;
      }

      v74[0] = v31;
      if (v31)
      {
LABEL_52:
        ReferencedAttr = mlir::DistinctAttr::getReferencedAttr(v74);
        goto LABEL_53;
      }
    }

    else
    {
      sub_10027B35C();
      if (v30 == qword_1002C0660)
      {
        v44 = a2;
      }

      else
      {
        v44 = 0;
      }

      v74[0] = v44;
      if (v44)
      {
        goto LABEL_52;
      }
    }

    v45 = (*a2)[17];
    if (v45 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v46 = a2;
    }

    else
    {
      v46 = 0;
    }

    v81 = v46;
    if (v46)
    {
      Value = mlir::DictionaryAttr::getValue(&v81);
      if (v48)
      {
        v49 = Value;
        v50 = (Value + 16 * v48);
        do
        {
          Name = mlir::NamedAttribute::getName(v49);
          (*(v82[0] + 5))(v82, Name);
          (*(v82[0] + 5))(v82, *(v49 + 1));
          v49 = (v49 + 16);
        }

        while (v49 != v50);
      }

      goto LABEL_37;
    }

    if (v45 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v52 = a2;
    }

    else
    {
      v52 = 0;
    }

    v80 = v52;
    if (v52)
    {
      v53 = mlir::ArrayAttr::getValue(&v80);
      if (v54)
      {
        v55 = v53;
        v56 = 8 * v54;
        do
        {
          v57 = *v55++;
          (*(v82[0] + 5))(v82, v57);
          v56 -= 8;
        }

        while (v56);
      }

      goto LABEL_37;
    }

    if (v45 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v58 = a2;
    }

    else
    {
      v58 = 0;
    }

    v79 = v58;
    if (v58)
    {
      v59 = mlir::TypeAttr::getValue(&v79);
      (*(v82[0] + 4))(v82, v59);
      goto LABEL_37;
    }

    if (v45 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
    {
      v60 = a2;
    }

    else
    {
      v60 = 0;
    }

    v78 = v60;
    if (v60)
    {
      ReferencedAttr = mlir::OpaqueLoc::getFallbackLocation(&v78);
    }

    else
    {
      if (v45 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
      {
        v61 = a2;
      }

      else
      {
        v61 = 0;
      }

      v77 = v61;
      if (!v61)
      {
        if (v45 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
        {
          v62 = a2;
        }

        else
        {
          v62 = 0;
        }

        v76 = v62;
        if (v62)
        {
          Callee = mlir::CallSiteLoc::getCallee(&v76);
          (*(v82[0] + 5))(v82, Callee);
          Caller = mlir::CallSiteLoc::getCaller(&v76);
          (*(v82[0] + 5))(v82, Caller);
        }

        else
        {
          if (v45 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
          {
            v65 = a2;
          }

          else
          {
            v65 = 0;
          }

          v75 = v65;
          if (v65)
          {
            Metadata = mlir::FusedLoc::getMetadata(&v75);
            if (Metadata)
            {
              (*(v82[0] + 5))(v82, Metadata);
            }

            Locations = mlir::FusedLoc::getLocations(&v75);
            if (v68)
            {
              v69 = Locations;
              v70 = 8 * v68;
              do
              {
                v71 = *v69++;
                (*(v82[0] + 5))(v82, v71);
                v70 -= 8;
              }

              while (v70);
            }
          }
        }

        goto LABEL_37;
      }

      if (*(*mlir::NameLoc::getChildLoc(&v77) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
      {
LABEL_37:
        if ((v72 & 1) == 0)
        {
          v74[0] = sub_100062D0C(a2);
          v74[1] = v28;
          if (v74[0])
          {
            Type = mlir::TypedAttr::getType(v74);
            if (*(*Type + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {
              (*(v82[0] + 4))(v82, Type);
            }
          }
        }

LABEL_54:
        v33 = v88;
        v34 = a1[5] + v73;
        v35 = (v34 + 40);
        if ((v34 + 40) == v96)
        {
LABEL_71:
          if (v33)
          {
            v25 = *(v34 + 32) & 0xC0000000 | (v33 + 1) & 0x3FFFFFFF;
            *(v34 + 32) = v25;
          }

          else
          {
            v25 = *(v34 + 32);
          }

          v82[0] = off_1002B6040;
          llvm::raw_null_ostream::~raw_null_ostream(&v89);
          if (v83 != &v85)
          {
            free(v83);
          }

          llvm::deallocate_buffer(v82[2], (8 * LODWORD(v82[4])), 8uLL);
          if (*v96 != &v96[16])
          {
            free(*v96);
          }

          return v25 & 0x3FFFFFFF;
        }

        v36 = *v96;
        if (*v96 != &v96[16])
        {
          v37 = *(v34 + 40);
          if (v37 != (v34 + 56))
          {
            free(v37);
            v36 = *v96;
          }

          *(v34 + 40) = v36;
          *(v34 + 48) = *&v96[8];
          *v96 = &v96[16];
          *&v96[12] = 0;
          goto LABEL_70;
        }

        v38 = *&v96[8];
        v39 = *(v34 + 48);
        if (v39 >= *&v96[8])
        {
          if (*&v96[8])
          {
            memmove(*v35, *v96, 8 * *&v96[8]);
          }

          goto LABEL_69;
        }

        if (*(v34 + 52) >= *&v96[8])
        {
          if (v39)
          {
            memmove(*v35, *v96, 8 * v39);
            goto LABEL_67;
          }
        }

        else
        {
          *(v34 + 48) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 40, (v34 + 56), v38, 8);
        }

        v39 = 0;
LABEL_67:
        v40 = *&v96[8] - v39;
        if (v40)
        {
          memcpy(*v35 + 8 * v39, (*v96 + 8 * v39), 8 * v40);
        }

LABEL_69:
        *(v34 + 48) = v38;
LABEL_70:
        *&v96[8] = 0;
        goto LABEL_71;
      }

      ReferencedAttr = mlir::NameLoc::getChildLoc(&v77);
    }

LABEL_53:
    (*(v82[0] + 5))(v82, ReferencedAttr);
    goto LABEL_37;
  }

  if ((a3 & 1) == 0)
  {
    sub_1000BBF6C(a1, 0x4EC4EC4EC4EC4EC5 * ((v8 - a1[5]) >> 3));
  }

  v25 = *(v8 + 32);
  return v25 & 0x3FFFFFFF;
}

uint64_t sub_1000BD780(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 56))();
  }

  return result;
}

uint64_t sub_1000BD7B0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 64))();
  }

  return result;
}

uint64_t sub_1000BD7E0(uint64_t a1, void *a2, int a3, char a4)
{
  if (a3)
  {
    v7 = a2[6];
    v8 = a2[7];
    while (v7 != v8)
    {
      v9 = *v7;
      (*(*a1 + 32))(a1, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*(a1 + 16) + 40))
      {
        sub_1000BCE58(*(a1 + 24), *(v9 + 32), 0, 0);
      }

      ++v7;
    }
  }

  v11 = a2 + 4;
  result = a2[4];
  if (result == a2 + 4)
  {
    v13 = a2[5];
  }

  else
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
    {
      v15 = ValuePtr;
      sub_10027B39C();
      ValuePtr = v15;
    }

    result = (*(**(ValuePtr + 48) + 32))(*(ValuePtr + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    v13 = a2[5];
    if (result && (a4 & 1) == 0)
    {
      v11 = *v11;
    }
  }

  while (v13 != v11)
  {
    v14 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
    result = (*(*a1 + 208))(a1, v14);
    v13 = v13[1];
  }

  return result;
}

void sub_1000BD948(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
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
        sub_1000BD948(a1, v17, v19, a4, a5);
        sub_1000BD948(v6 + 104 * (v14 >> 1), a2, v14 - (v14 >> 1), a4, a5);

        sub_1000BEB5C(v6, v17, a2, v16, v18, a4, a5);
        return;
      }

      sub_1000BE340(a1, v17, v19, a4);
      v54 = a4 + 104 * v16;
      sub_1000BE340(v6 + 104 * (v14 >> 1), a2, v14 - (v14 >> 1), v54);
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
              sub_100056AF0(v6 + v67 + 40, (v57 + v67 + 40));
              v67 += 104;
            }

            while (v69 + 104 != v54);
          }

LABEL_132:
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
            goto LABEL_101;
          }

          goto LABEL_117;
        }

        v61 = v59 & 0x40000000;
        if (((v60 >> 30) & 1) != v61 >> 30)
        {
          break;
        }

        if (*(v57 + 24) != 1)
        {
          goto LABEL_101;
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
              goto LABEL_117;
            }
          }

          else if (v62 < v63)
          {
            goto LABEL_117;
          }

LABEL_101:
          *v6 = *v57;
          v58 = *(v57 + 8);
          *(v6 + 20) = *(v57 + 20);
          *(v6 + 8) = v58;
          sub_100056AF0(v6 + 40, (v57 + 40));
          v57 += 104;
          v6 += 104;
          if (v57 == v54)
          {
            goto LABEL_129;
          }
        }

        else
        {
LABEL_117:
          *v6 = *v56;
          v66 = *(v56 + 8);
          *(v6 + 20) = *(v56 + 20);
          *(v6 + 8) = v66;
          sub_100056AF0(v6 + 40, (v56 + 40));
          v56 += 104;
          v6 += 104;
          if (v57 == v54)
          {
LABEL_129:
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
                sub_100056AF0(v6 + v71 + 40, (v56 + v71 + 40));
                v71 += 104;
              }

              while (v72 + 104 != v55);
            }

            goto LABEL_132;
          }
        }
      }

      if (!v61)
      {
        goto LABEL_101;
      }

      goto LABEL_117;
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
      sub_100056AF0(&__src, v24 + 18);
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
LABEL_78:
        v48 = v6;
LABEL_79:
        v49 = __src;
        *v48 = v77;
        v50 = v6 + i;
        *(v50 + 8) = *__s1;
        *(v50 + 20) = *&__s1[12];
        if (v48 == &v77)
        {
          goto LABEL_98;
        }

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
              llvm::SmallVectorBase<unsigned int>::grow_pod(v50 + 40, (v48 + 56), v52, 8);
              goto LABEL_93;
            }

            if (v53)
            {
              memmove(*(v50 + 40), v49, 8 * v53);
            }

            else
            {
LABEL_93:
              v53 = 0;
            }

            if (v80 != v53)
            {
              memcpy((*(v50 + 40) + 8 * v53), __src + 8 * v53, 8 * (v80 - v53));
            }
          }

          *(v48 + 48) = v52;
          goto LABEL_97;
        }

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
LABEL_97:
        LODWORD(v80) = 0;
        v49 = __src;
LABEL_98:
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

LABEL_60:
      v43 = *(v6 + i - 72);
      if ((*&__s1[24] & 0x3FFFFFFF) == (v43 & 0x3FFFFFFF))
      {
        if (((v43 >> 30) & 1) == (*&__s1[24] & 0x40000000u) >> 30)
        {
          if (*(v6 + i - 80) != 1)
          {
            goto LABEL_77;
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
                goto LABEL_77;
              }
            }

            else if (v44 >= v45)
            {
LABEL_77:
              v48 = v6 + i;
              goto LABEL_79;
            }
          }
        }

        else if ((*&__s1[24] & 0x40000000) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((*&__s1[24] & 0x3FFFFFFFu) >= (v43 & 0x3FFFFFFF))
      {
        goto LABEL_77;
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
        llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 144, (v6 + i + 160), v39, 8);
        v41 = 0;
        v42 = *v40;
        if (!*v40)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (v41)
      {
        memmove(*(v34 + 144), v35, 8 * v41);
        v42 = *v40 - v41;
        if (!v42)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      v41 = 0;
      v42 = *v40;
      if (*v40)
      {
LABEL_58:
        memcpy((*(v34 + 144) + 8 * v41), (*(v34 + 40) + 8 * v41), 8 * v42);
      }
    }

LABEL_59:
    *(v34 + 152) = v39;
    *v40 = 0;
    if (!i)
    {
      goto LABEL_78;
    }

    goto LABEL_60;
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

  sub_1000BE154(v6, a2 - 13);
}

void sub_1000BE154(uint64_t *a1, uint64_t *a2)
{
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
    sub_100056AF0(&__src, a1 + 5);
  }

  v6 = *v5;
  *(a1 + 20) = *(v5 + 12);
  *(a1 + 1) = v6;
  sub_100056AF0((a1 + 5), a2 + 5);
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
      goto LABEL_18;
    }

    v9 = v14;
    v10 = *(a2 + 12);
    if (v10 >= v14)
    {
      if (v14)
      {
        memmove(a2[5], __src, 8 * v14);
      }

      goto LABEL_17;
    }

    if (*(a2 + 13) >= v14)
    {
      if (v10)
      {
        memmove(a2[5], __src, 8 * v10);
        v11 = v14 - v10;
        if (v14 == v10)
        {
LABEL_17:
          *(a2 + 12) = v9;
LABEL_18:
          LODWORD(v14) = 0;
          v7 = __src;
          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
        v11 = v14;
        if (!v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *(a2 + 12) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod((a2 + 5), a2 + 7, v9, 8);
      v10 = 0;
      v11 = v14;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    memcpy((a2[5] + 8 * v10), __src + 8 * v10, 8 * v11);
    goto LABEL_17;
  }

LABEL_19:
  if (v7 != v15)
  {
    free(v7);
  }
}

uint64_t sub_1000BE340(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
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

      goto LABEL_87;
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
        result = sub_100056AF0(result, v6 + 5);
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
            goto LABEL_78;
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
                goto LABEL_78;
              }
            }

            else if (v29 >= v30)
            {
LABEL_78:
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
          goto LABEL_78;
        }
      }

      else if ((v26 & 0x3FFFFFFFu) >= (v27 & 0x3FFFFFFF))
      {
        goto LABEL_78;
      }

      *(v22 + 104) = *v22;
      *(v22 + 112) = *(v22 + 8);
      *(v22 + 124) = *(v22 + 20);
      *(v22 + 144) = v22 + 160;
      *(v22 + 152) = 0x600000000;
      if (*(v22 + 48))
      {
        sub_100056AF0(v22 + 144, (v22 + 40));
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
                  result = sub_100056AF0(result, v6 + 18);
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

        if (*(a4 + v33 + 52) >= v49)
        {
          if (v50)
          {
            memmove(*(v42 + 40), v43, 8 * v50);
            v51 = *v48 - v50;
            if (v51)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v50 = 0;
            v51 = *v48;
            if (*v48)
            {
LABEL_76:
              memcpy((*(v42 + 40) + 8 * v50), (*(v42 - 64) + 8 * v50), 8 * v51);
            }
          }
        }

        else
        {
          *(v42 + 48) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v42 + 40, (a4 + v33 + 56), v49, 8);
          v50 = 0;
          v51 = *v48;
          if (*v48)
          {
            goto LABEL_76;
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
    sub_1000BD948(result, result + v60, v59, a4, v59);
    result = sub_1000BD948(&v6[v60 / 8], v5, a3 - v59, a4 + v60, a3 - v59);
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
              result = sub_100056AF0(v63, v73);
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
          goto LABEL_108;
        }

        goto LABEL_103;
      }

      if (*(v6 + 24) != 1)
      {
        goto LABEL_108;
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
            goto LABEL_108;
          }

          goto LABEL_103;
        }

        if ((result & 0x80000000) != 0)
        {
          goto LABEL_103;
        }

LABEL_108:
        *(v63 - 5) = *v6;
        v72 = *(v6 + 1);
        *(v63 - 20) = *(v6 + 20);
        *(v63 - 2) = v72;
        *v63 = v63 + 2;
        v63[1] = 0x600000000;
        if (*(v6 + 12))
        {
          result = sub_100056AF0(v63, v6 + 5);
        }

        v6 += 13;
        v63 += 13;
        if (v6 == v61)
        {
LABEL_125:
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
                result = sub_100056AF0(v63, v80);
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
LABEL_103:
        *(v63 - 5) = *v64;
        v71 = *(v64 + 1);
        *(v63 - 20) = *(v64 + 20);
        *(v63 - 2) = v71;
        *v63 = v63 + 2;
        v63[1] = 0x600000000;
        if (*(v64 + 12))
        {
          result = sub_100056AF0(v63, v64 + 5);
        }

        v64 += 13;
        v63 += 13;
        if (v6 == v61)
        {
          goto LABEL_125;
        }
      }
    }

    if ((v65 & 0x3FFFFFFFu) >= (v66 & 0x3FFFFFFF))
    {
      goto LABEL_108;
    }

    goto LABEL_103;
  }

  v10 = (a2 - 12);
  v11 = *(a2 - 18);
  v12 = *(result + 32);
  if ((v11 & 0x3FFFFFFF) != (v12 & 0x3FFFFFFF))
  {
    if ((v11 & 0x3FFFFFFFu) < (v12 & 0x3FFFFFFF))
    {
      goto LABEL_84;
    }

    goto LABEL_118;
  }

  v13 = v11 & 0x40000000;
  if (((v12 >> 30) & 1) != v13 >> 30)
  {
    if (v13)
    {
      goto LABEL_84;
    }

    goto LABEL_118;
  }

  if (*(result + 24) != 1)
  {
    goto LABEL_118;
  }

  if (*(a2 - 80) != 1)
  {
    goto LABEL_84;
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
      goto LABEL_84;
    }

LABEL_118:
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
      result = sub_100056AF0(result, v6 + 5);
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
      goto LABEL_122;
    }

    return result;
  }

  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_84:
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
    result = sub_100056AF0(result, v5 - 8);
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
LABEL_87:
    v58 = (v6 + 5);
LABEL_122:

    return sub_100056AF0(v9, v58);
  }

  return result;
}