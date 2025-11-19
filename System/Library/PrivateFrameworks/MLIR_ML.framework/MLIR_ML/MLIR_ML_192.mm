__n128 llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::SymbolAlias>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<void const*&&>,std::tuple<anonymous namespace::SymbolAlias&&>>(uint64_t a1, void *a2, uint64_t a3)
{
  *v8 = *a2;
  *&v8[8] = *a3;
  *&v8[24] = *(a3 + 16);
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 >= *(a1 + 12))
  {
    if (v4 > v8 || v4 + 32 * v3 <= v8)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v4 + 32 * *(a1 + 8));
  result = *v8;
  v7 = *&v8[16];
  *v5 = *v8;
  v5[1] = v7;
  ++*(a1 + 8);
  return result;
}

llvm::raw_ostream *anonymous namespace::AliasState::printAliases(llvm::raw_ostream *result, unsigned int a2, llvm::raw_ostream **a3, _DWORD *a4, int a5)
{
  i = result;
  if (a2)
  {
    v9 = 32 * a2;
    for (i = result; a5 != *(i + 6) >> 31; i = (i + 32))
    {
      v9 -= 32;
      if (!v9)
      {
        return result;
      }
    }
  }

  v10 = (result + 32 * a2);
  while (i != v10)
  {
    v11 = *a3;
    if ((*(i + 27) & 0x40) != 0)
    {
      v12 = "!";
    }

    else
    {
      v12 = "#";
    }

    v13 = *(v11 + 4);
    if (*(v11 + 3) == v13)
    {
      v15 = llvm::raw_ostream::write(*a3, v12, 1uLL);
      v14 = v15[4];
      v16 = *(i + 1);
      v17 = *(i + 2);
      if (v17 > v15[3] - v14)
      {
LABEL_14:
        llvm::raw_ostream::write(v15, v16, v17);
        goto LABEL_18;
      }
    }

    else
    {
      *v13 = *v12;
      v14 = (*(v11 + 4) + 1);
      *(v11 + 4) = v14;
      v15 = v11;
      v16 = *(i + 1);
      v17 = *(i + 2);
      if (v17 > *(v11 + 3) - v14)
      {
        goto LABEL_14;
      }
    }

    if (v17)
    {
      v18 = v17;
      memcpy(v14, v16, v17);
      v15[4] += v18;
    }

LABEL_18:
    v19 = *(i + 6);
    if ((v19 & 0x3FFFFFFF) != 0)
    {
      llvm::raw_ostream::operator<<(v11, v19 & 0x3FFFFFFF);
    }

    v20 = *a3;
    v21 = *(*a3 + 4);
    if ((*(*a3 + 3) - v21) > 2)
    {
      *(v21 + 2) = 32;
      *v21 = 15648;
      *(v20 + 4) += 3;
      v22 = *i;
      if ((*(i + 27) & 0x40) == 0)
      {
LABEL_24:
        v23 = *v22;
        {
          mlir::writeBytecodeToFile();
        }

        v24 = v23 + 9;
        v25 = v23[12];
        if ((v25 & 2) == 0)
        {
          v24 = *v24;
        }

        if ((*(v25 & 0xFFFFFFFFFFFFFFF8))(v24, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          v26 = *a3;
          v28 = v22;
          mlir::Attribute::print(&v28, v26);
        }

        else
        {
          mlir::AsmPrinter::Impl::printAttributeImpl(a3, v22, 0);
        }

        goto LABEL_31;
      }
    }

    else
    {
      llvm::raw_ostream::write(v20, " = ", 3uLL);
      v22 = *i;
      if ((*(i + 27) & 0x40) == 0)
      {
        goto LABEL_24;
      }
    }

    mlir::AsmPrinter::Impl::printTypeImpl(a3, v22);
    *(i + 28) = 1;
LABEL_31:
    result = *a3;
    ++*a4;
    v27 = *(result + 4);
    if (v27 >= *(result + 3))
    {
      result = llvm::raw_ostream::write(result, 10);
    }

    else
    {
      *(result + 4) = v27 + 1;
      *v27 = 10;
    }

    do
    {
      i = (i + 32);
    }

    while (i != v10 && a5 != *(i + 6) >> 31);
  }

  return result;
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJRNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

llvm::raw_ostream *_ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(char **a1)
{
  v2 = a1[2];
  v3 = **a1;
  **a1 = 1;
  if ((v3 & 1) == 0)
  {
    if (*a1[1] != 1)
    {
      goto LABEL_6;
    }

    v4 = *(v2 + 2);
    v5 = *(v4 + 4);
    if (*(v4 + 3) == v5)
    {
      v4 = llvm::raw_ostream::write(v4, ",", 1uLL);
      v6 = *(v4 + 4);
      ++*(v2 + 20);
      if (v6 < *(v4 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      *v5 = 44;
      v6 = (*(v4 + 4) + 1);
      *(v4 + 4) = v6;
      ++*(v2 + 20);
      if (v6 < *(v4 + 3))
      {
LABEL_5:
        *(v4 + 4) = v6 + 1;
        *v6 = 10;
LABEL_6:
        v7 = *(v2 + 2);
        v8 = *(v7 + 4);
        if (*(v7 + 3) - v8 <= 1uLL)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    llvm::raw_ostream::write(v4, 10);
    v7 = *(v2 + 2);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 <= 1uLL)
    {
LABEL_7:
      v7 = llvm::raw_ostream::write(v7, "  ", 2uLL);
      v9 = a1[3];
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v7 + 4);
      if (v11 <= *(v7 + 3) - v12)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    *v8 = 8224;
    v12 = (*(v7 + 4) + 2);
    *(v7 + 4) = v12;
    v23 = a1[3];
    v10 = *v23;
    v11 = *(v23 + 1);
    if (v11 <= *(v7 + 3) - v12)
    {
LABEL_8:
      if (v11)
      {
        v13 = v7;
        v14 = v11;
        memcpy(v12, v10, v11);
        v7 = v13;
        v12 = (*(v13 + 4) + v14);
        *(v13 + 4) = v12;
      }

      if (*(v7 + 3) - v12 <= 0xCuLL)
      {
LABEL_11:
        v7 = llvm::raw_ostream::write(v7, "_resources: {", 0xDuLL);
        v15 = *(v7 + 4);
        ++*(v2 + 20);
        if (v15 >= *(v7 + 3))
        {
LABEL_12:
          llvm::raw_ostream::write(v7, 10);
          goto LABEL_13;
        }

LABEL_22:
        *(v7 + 4) = v15 + 1;
        *v15 = 10;
        v24 = a1[4];
        v25 = *v24;
        *v24 = 1;
        if (v25)
        {
          goto LABEL_14;
        }

LABEL_23:
        if (*a1[5] != 1)
        {
          goto LABEL_27;
        }

        v26 = *(v2 + 2);
        v27 = *(v26 + 4);
        if (*(v26 + 3) == v27)
        {
          v26 = llvm::raw_ostream::write(v26, ",", 1uLL);
          v28 = *(v26 + 4);
          ++*(v2 + 20);
          if (v28 < *(v26 + 3))
          {
            goto LABEL_26;
          }
        }

        else
        {
          *v27 = 44;
          v28 = (*(v26 + 4) + 1);
          *(v26 + 4) = v28;
          ++*(v2 + 20);
          if (v28 < *(v26 + 3))
          {
LABEL_26:
            *(v26 + 4) = v28 + 1;
            *v28 = 10;
LABEL_27:
            result = *(v2 + 2);
            v29 = *(result + 4);
            if (*(result + 3) - v29 <= 3uLL)
            {
              goto LABEL_28;
            }

            goto LABEL_39;
          }
        }

        llvm::raw_ostream::write(v26, 10);
        result = *(v2 + 2);
        v29 = *(result + 4);
        if (*(result + 3) - v29 <= 3uLL)
        {
LABEL_28:
          result = llvm::raw_ostream::write(result, "    ", 4uLL);
          v30 = a1[6];
          v31 = *v30;
          v32 = *(v30 + 1);
          v33 = *(result + 4);
          if (v32 <= *(result + 3) - v33)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }

LABEL_39:
        *v29 = 538976288;
        v33 = (*(result + 4) + 4);
        *(result + 4) = v33;
        v36 = a1[6];
        v31 = *v36;
        v32 = *(v36 + 1);
        if (v32 <= *(result + 3) - v33)
        {
LABEL_29:
          if (v32)
          {
            v34 = result;
            v35 = v32;
            memcpy(v33, v31, v32);
            result = v34;
            v33 = (*(v34 + 4) + v35);
            *(v34 + 4) = v33;
          }

          if (*(result + 3) - v33 <= 2uLL)
          {
            goto LABEL_32;
          }

          goto LABEL_41;
        }

LABEL_40:
        result = llvm::raw_ostream::write(result, v31, v32);
        v33 = *(result + 4);
        if (*(result + 3) - v33 <= 2uLL)
        {
LABEL_32:
          v21 = ": {";
          v22 = 3;
          goto LABEL_33;
        }

LABEL_41:
        v33[2] = 123;
        *v33 = 8250;
        v20 = (*(result + 4) + 3);
LABEL_42:
        *(result + 4) = v20;
        ++*(v2 + 20);
        if (v20 < *(result + 3))
        {
          goto LABEL_43;
        }

        goto LABEL_34;
      }

LABEL_21:
      qmemcpy(v12, "_resources: {", 13);
      v15 = (*(v7 + 4) + 13);
      *(v7 + 4) = v15;
      ++*(v2 + 20);
      if (v15 >= *(v7 + 3))
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_20:
    v7 = llvm::raw_ostream::write(v7, v10, v11);
    v12 = *(v7 + 4);
    if (*(v7 + 3) - v12 <= 0xCuLL)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_13:
  v16 = a1[4];
  v17 = *v16;
  *v16 = 1;
  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  result = *(v2 + 2);
  v19 = *(result + 4);
  if (*(result + 3) != v19)
  {
    *v19 = 44;
    v20 = (*(result + 4) + 1);
    goto LABEL_42;
  }

  v21 = ",";
  v22 = 1;
LABEL_33:
  result = llvm::raw_ostream::write(result, v21, v22);
  v20 = *(result + 4);
  ++*(v2 + 20);
  if (v20 < *(result + 3))
  {
LABEL_43:
    *(result + 4) = v20 + 1;
    *v20 = 10;
    return result;
  }

LABEL_34:

  return llvm::raw_ostream::write(result, 10);
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildBool(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v5 = &v6;
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a4;
  v7[1] = a5;
  v6 = v7;
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9[0] = a4;
  v9[1] = a5;
  v8 = a6;
  v7[0] = &v8;
  v7[1] = v9;
}

void *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildBool(llvm::StringRef,BOOL)::{lambda(llvm::raw_ostream &)#1}>(_BYTE **a1, llvm::raw_ostream *this)
{
  if (**a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  if (**a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = *(this + 4);
  if (v4 <= *(this + 3) - v5)
  {
    result = memcpy(v5, v3, v4);
    *(this + 4) += v4;
  }

  else
  {

    return llvm::raw_ostream::write(this, v3, v4);
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildString(llvm::StringRef,llvm::StringRef)::{lambda(llvm::raw_ostream &)#1}>(llvm::raw_ostream ***a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v4 = 34;
    ++*(this + 4);
  }

  result = llvm::printEscapedString(**a1, (*a1)[1], this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v6 = 34;
    ++*(this + 4);
  }

  return result;
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildBlob(llvm::StringRef,llvm::ArrayRef<char>,unsigned int)::{lambda(llvm::raw_ostream &)#1}>(int **a1, llvm::raw_ostream *this)
{
  v2 = this;
  v16 = **a1;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 2)
  {
    *(v4 + 2) = 120;
    *v4 = 12322;
    *(this + 4) += 3;
  }

  else
  {
    v2 = llvm::raw_ostream::write(this, "0x", 3uLL);
  }

  llvm::toHex(&v16, 4, 0, v14);
  if ((v15 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = v14[1];
  }

  v7 = llvm::raw_ostream::write(v2, v5, v6);
  llvm::toHex(*a1[1], *(a1[1] + 1), 0, __p);
  if ((v13 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = llvm::raw_ostream::write(v7, v8, v9);
  v11 = v10[4];
  if (v10[3] != v11)
  {
    *v11 = 34;
    ++v10[4];
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  llvm::raw_ostream::write(v10, "", 1uLL);
  if (v13 < 0)
  {
LABEL_18:
    operator delete(__p[0]);
  }

LABEL_19:
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_18AsmResourcePrinterEJEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, const void *a2, size_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a1 + 24);
  (**a1)(*(*a1 + 8));
  v38 = *(a1 + 8);
  v39 = v9;
  v10 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v10;
  if ((*(v9 + 56) & 1) == 0)
  {
    _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
    v13 = *(v9 + 16);
    v14 = v13[4];
    if ((v13[3] - v14) > 5)
    {
      *(v14 + 4) = 8224;
      *v14 = 538976288;
      v21 = v13[3];
      v15 = (v13[4] + 6);
      v13[4] = v15;
      if (a3 <= v21 - v15)
      {
LABEL_9:
        if (a3)
        {
          v16 = v13;
          memcpy(v15, a2, a3);
          v13 = v16;
          v15 = (v16[4] + a3);
          v16[4] = v15;
        }

        if (v13[3] - v15 <= 1uLL)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "      ", 6uLL);
      v15 = v13[4];
      if (a3 <= v13[3] - v15)
      {
        goto LABEL_9;
      }
    }

    v13 = llvm::raw_ostream::write(v13, a2, a3);
    v15 = v13[4];
    if (v13[3] - v15 <= 1uLL)
    {
LABEL_12:
      llvm::raw_ostream::write(v13, ": ", 2uLL);
LABEL_22:
      v22 = *(v9 + 16);

      a4(a5, v22);
      return;
    }

LABEL_21:
    *v15 = 8250;
    v13[4] += 2;
    goto LABEL_22;
  }

  v11 = *(v9 + 48);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v28 = 0;
  v32 = 0;
  v33 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v27 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
  a4(a5, &v27);
  v12 = HIBYTE(v37);
  if (v37 < 0)
  {
    v12 = v36;
  }

  if (v12 > v11)
  {
    llvm::raw_ostream::~raw_ostream(&v27);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__p);
    return;
  }

  _ZZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataEN4llvm12function_refIFvvEEEPN4mlir9OperationEENK3__0clIKNS5_21OpAsmDialectInterfaceEJRNS1_9SetVectorINS5_24AsmDialectResourceHandleENS1_11SmallVectorISD_Lj0EEENS1_8DenseSetISD_NS1_12DenseMapInfoISD_vEEEELj0EEEEEEDaNS1_9StringRefESN_RT_DpOT0_ENKUlSN_NS2_IFvRNS1_11raw_ostreamEEEEE_clESN_SW_ENKUlvE_clEv(&v38);
  v17 = *(v9 + 16);
  v18 = v17[4];
  if ((v17[3] - v18) > 5)
  {
    *(v18 + 4) = 8224;
    *v18 = 538976288;
    v23 = v17[3];
    v19 = (v17[4] + 6);
    v17[4] = v19;
    if (a3 <= v23 - v19)
    {
LABEL_15:
      if (a3)
      {
        v20 = v17;
        memcpy(v19, a2, a3);
        v17 = v20;
        v19 = (v20[4] + a3);
        v20[4] = v19;
      }

      if (v17[3] - v19 <= 1uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v17 = llvm::raw_ostream::write(v17, "      ", 6uLL);
    v19 = v17[4];
    if (a3 <= v17[3] - v19)
    {
      goto LABEL_15;
    }
  }

  v17 = llvm::raw_ostream::write(v17, a2, a3);
  v19 = v17[4];
  if (v17[3] - v19 <= 1uLL)
  {
LABEL_18:
    v17 = llvm::raw_ostream::write(v17, ": ", 2uLL);
    goto LABEL_28;
  }

LABEL_27:
  *v19 = 8250;
  v17[4] += 2;
LABEL_28:
  if (v37 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v37 >= 0)
  {
    v25 = HIBYTE(v37);
  }

  else
  {
    v25 = v36;
  }

  llvm::raw_ostream::write(v17, v24, v25);
  llvm::raw_ostream::~raw_ostream(&v27);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_35;
  }
}

llvm::raw_ostream *llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::OperationPrinter::printFileMetadataDictionary(mlir::Operation *)::$_0>(llvm::raw_ostream *result)
{
  v1 = *(result + 1);
  v2 = **result;
  **result = 1;
  if (v2)
  {
    return result;
  }

  result = *(v1 + 16);
  ++*(v1 + 80);
  v3 = *(result + 4);
  if (v3 < *(result + 3))
  {
    *(result + 4) = v3 + 1;
    *v3 = 10;
    v4 = *(result + 4);
    if ((*(result + 3) - v4) > 2)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = llvm::raw_ostream::write(result, "{-#", 3uLL);
    v5 = *(result + 4);
    ++*(v1 + 80);
    if (v5 >= *(result + 3))
    {
      goto LABEL_5;
    }

LABEL_10:
    *(result + 4) = v5 + 1;
    *v5 = 10;
    return result;
  }

  result = llvm::raw_ostream::write(result, 10);
  v4 = *(result + 4);
  if ((*(result + 3) - v4) <= 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  *(v4 + 2) = 35;
  *v4 = 11643;
  v5 = (*(result + 4) + 3);
  *(result + 4) = v5;
  ++*(v1 + 80);
  if (v5 < *(result + 3))
  {
    goto LABEL_10;
  }

LABEL_5:

  return llvm::raw_ostream::write(result, 10);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printOperationID(llvm::raw_ostream *this, mlir::Operation *a2, llvm::raw_ostream *a3, uint64_t a4)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v4 = ((a4 >> 4) ^ (a4 >> 9)) & (a3 - 1);
  v5 = *(a2 + 2 * v4);
  if (v5 != a4)
  {
    v10 = 1;
    while (v5 != -4096)
    {
      v11 = v4 + v10++;
      v4 = v11 & (a3 - 1);
      v5 = *(a2 + 2 * v4);
      if (v5 == a4)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v4 == a3)
  {
LABEL_4:
    v6 = *(this + 4);
    if (*(this + 3) - v6 > 0x14uLL)
    {
      qmemcpy(v6, "<<UNKNOWN OPERATION>>", 21);
      *(this + 4) += 21;
    }

    else
    {

      return llvm::raw_ostream::write(this, "<<UNKNOWN OPERATION>>", 0x15uLL);
    }

    return this;
  }

  v7 = *(this + 4);
  if (v7 >= *(this + 3))
  {
    this = llvm::raw_ostream::write(this, 37);
    v8 = *(a2 + 4 * v4 + 2);
  }

  else
  {
    *(this + 4) = v7 + 1;
    *v7 = 37;
    v8 = *(a2 + 4 * v4 + 2);
  }

  return llvm::raw_ostream::operator<<(this, v8);
}

void anonymous namespace::OperationPrinter::printValueUsers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = *(a1 + 16);
    v4 = v3[4];
    if ((v3[3] - v4) > 5)
    {
      *(v4 + 4) = 25701;
      *v4 = 1937075829;
      v3[4] += 6;
    }

    else
    {
      v5 = a2;
      llvm::raw_ostream::write(v3, "unused", 6uLL);
      a2 = v5;
    }
  }

  v22 = &v26;
  v23 = &v26;
  v24 = 1;
  v25 = 0;
  v6 = *a2;
  if (*a2)
  {
    for (i = 0; ; ++i)
    {
      v8 = v6[2];
      if (v23 != v22)
      {
        goto LABEL_10;
      }

      v10 = HIDWORD(v24);
      if (HIDWORD(v24))
      {
        v11 = 8 * HIDWORD(v24);
        v12 = v22;
        while (*v12 != v8)
        {
          ++v12;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_8;
      }

LABEL_17:
      if (HIDWORD(v24) < v24)
      {
        ++HIDWORD(v24);
        v22[v10] = v8;
        if (!i)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_10:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v22, v6[2]);
        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }

        if (!i)
        {
          goto LABEL_21;
        }
      }

      v13 = *(a1 + 16);
      v14 = v13[4];
      if (v13[3] - v14 > 1uLL)
      {
        *v14 = 8236;
        v13[4] += 2;
        v15 = *(v8 + 36);
        if (v15)
        {
LABEL_24:
          v16 = v8 - 16;
          v17 = *(a1 + 16);
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
          if (v15 != 1)
          {
            for (j = 1; j != v15; ++j)
            {
              v21 = v17[4];
              if (v17[3] - v21 > 1uLL)
              {
                *v21 = 8236;
                v17[4] += 2;
              }

              else
              {
                llvm::raw_ostream::write(v17, ", ", 2uLL);
              }

              v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j);
            }
          }

          goto LABEL_8;
        }

        goto LABEL_7;
      }

      llvm::raw_ostream::write(v13, ", ", 2uLL);
LABEL_21:
      v15 = *(v8 + 36);
      if (v15)
      {
        goto LABEL_24;
      }

LABEL_7:
LABEL_8:
      v6 = *v6;
      if (!v6)
      {
        if (v23 != v22)
        {
          free(v23);
        }

        return;
      }
    }
  }
}

void anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 16);
  v5 = *v4;
  v6 = *(*v4 + 4);
  if (*(*v4 + 3) - v6 > 1uLL)
  {
    *v6 = 8250;
    *(v5 + 4) += 2;
    v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
LABEL_3:
      if ((mlir::AsmPrinter::Impl::printAlias(v4, v7) & 1) == 0)
      {
        mlir::AsmPrinter::Impl::printTypeImpl(v4, v7);
        if ((*(a1 + 72) & 1) == 0)
        {
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v5, ": ", 2uLL);
    v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v8 = *v4;
  v9 = *(*v4 + 4);
  if (*(*v4 + 3) - v9 <= 0xCuLL)
  {
    llvm::raw_ostream::write(v8, "<<NULL TYPE>>", 0xDuLL);
LABEL_9:
    if ((*(a1 + 72) & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  qmemcpy(v9, "<<NULL TYPE>>", 13);
  *(v8 + 4) += 13;
  if ((*(a1 + 72) & 1) == 0)
  {
    return;
  }

LABEL_10:
  v10 = *(a2 + 32);
  v11 = *v4;
  v12 = *(*v4 + 4);
  if (*(*v4 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, " ", 1uLL);
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v12 = 32;
    ++*(v11 + 4);
    if ((*(a1 + 72) & 2) == 0)
    {
LABEL_12:
      v13 = *v4;
      v14 = *(*v4 + 4);
      if (*(*v4 + 3) - v14 > 3uLL)
      {
        *v14 = 677605228;
        *(v13 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v13, "loc(", 4uLL);
      }

      mlir::AsmPrinter::Impl::printLocationInternal(v4, v10, 0, 1);
      v15 = *v4;
      v16 = *(*v4 + 4);
      if (v16 >= *(*v4 + 3))
      {

        llvm::raw_ostream::write(v15, 41);
      }

      else
      {
        *(v15 + 4) = v16 + 1;
        *v16 = 41;
      }

      return;
    }
  }

  mlir::AsmPrinter::Impl::printLocationInternal(v4, v10, 1, 1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      v90 = *(a2 - 24);
      v89 = (a2 - 24);
      if (v90 >= *v12)
      {
        return result;
      }

      goto LABEL_108;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v100 = v12 + 24;
      v102 = v12 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v12;
          do
          {
            v106 = v100;
            v107 = *(v104 + 24);
            if (v107 < *v104)
            {
              v179 = *(v104 + 28);
              v208 = *(v104 + 44);
              v108 = v103;
              do
              {
                v109 = v12 + v108;
                *(v109 + 24) = *(v12 + v108);
                *(v109 + 40) = *(v12 + v108 + 16);
                if (!v108)
                {
                  v105 = v12;
                  goto LABEL_122;
                }

                v108 -= 24;
              }

              while (v107 < *(v109 - 24));
              v105 = v12 + v108 + 24;
LABEL_122:
              *v105 = v107;
              result = v179;
              *(v105 + 20) = v208;
              *(v105 + 4) = v179;
            }

            v100 = v106 + 24;
            v103 += 24;
            v104 = v106;
          }

          while (v106 + 24 != a2);
        }
      }

      else if (!v102)
      {
        do
        {
          v144 = v100;
          v145 = *(a1 + 24);
          if (v145 < *a1)
          {
            v183 = *(a1 + 28);
            v212 = *(a1 + 44);
            do
            {
              *v100 = *(v100 - 24);
              *(v100 + 16) = *(v100 - 8);
              v146 = *(v100 - 48);
              v100 -= 24;
            }

            while (v145 < v146);
            *v100 = v145;
            result = v183;
            *(v100 + 20) = v212;
            *(v100 + 4) = v183;
          }

          v100 = v144 + 24;
          a1 = v144;
        }

        while (v144 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          if (v110 >= v111)
          {
            v112 = (2 * (v111 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v113 = v12 + 24 * v112;
            v114 = *v113;
            if (2 * v111 + 2 < v14)
            {
              v115 = *(v113 + 24);
              v116 = v114 < v115;
              if (v114 <= v115)
              {
                v114 = *(v113 + 24);
              }

              if (v116)
              {
                v113 += 24;
                v112 = 2 * v111 + 2;
              }
            }

            v117 = v12 + 24 * v111;
            v118 = *v117;
            if (v114 >= *v117)
            {
              v209 = *(v117 + 20);
              v180 = *(v117 + 4);
              while (1)
              {
                v122 = v117;
                v117 = v113;
                v123 = *v113;
                *(v122 + 16) = *(v113 + 16);
                *v122 = v123;
                if (v110 < v112)
                {
                  break;
                }

                v124 = (2 * v112) | 1;
                v113 = v12 + 24 * v124;
                v112 = 2 * v112 + 2;
                v121 = *v113;
                if (v112 < v14)
                {
                  v119 = *(v113 + 24);
                  v120 = v121 < v119;
                  if (v121 <= v119)
                  {
                    v121 = *(v113 + 24);
                  }

                  if (v120)
                  {
                    v113 += 24;
                  }

                  else
                  {
                    v112 = v124;
                  }

                  if (v121 < v118)
                  {
                    break;
                  }
                }

                else
                {
                  v112 = v124;
                  if (v121 < v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              *(v117 + 20) = v209;
              *(v117 + 4) = v180;
            }
          }

          v116 = v111-- <= 0;
        }

        while (!v116);
        v125 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v126 = 0;
          v210 = *(v12 + 16);
          v181 = *v12;
          v127 = v12;
          do
          {
            v132 = v127 + 24 * v126;
            v130 = v132 + 24;
            v133 = (2 * v126) | 1;
            v126 = 2 * v126 + 2;
            if (v126 < v125)
            {
              v129 = *(v132 + 48);
              v128 = v132 + 48;
              if (*(v128 - 24) >= v129)
              {
                v126 = v133;
              }

              else
              {
                v130 = v128;
              }
            }

            else
            {
              v126 = v133;
            }

            v131 = *v130;
            *(v127 + 16) = *(v130 + 16);
            *v127 = v131;
            v127 = v130;
          }

          while (v126 <= ((v125 - 2) >> 1));
          a2 -= 24;
          if (v130 == a2)
          {
            result = v181;
            *(v130 + 16) = v210;
            *v130 = v181;
          }

          else
          {
            v134 = *a2;
            *(v130 + 16) = *(a2 + 16);
            *v130 = v134;
            result = v181;
            *(a2 + 16) = v210;
            *a2 = v181;
            v135 = v130 - v12 + 24;
            if (v135 >= 25)
            {
              v136 = (-2 - 0x5555555555555555 * (v135 >> 3)) >> 1;
              v137 = v12 + 24 * v136;
              v138 = *v130;
              if (*v137 < *v130)
              {
                v157 = *(v130 + 20);
                v154 = *(v130 + 4);
                do
                {
                  v139 = v130;
                  v130 = v137;
                  v140 = *v137;
                  *(v139 + 16) = *(v137 + 16);
                  *v139 = v140;
                  if (!v136)
                  {
                    break;
                  }

                  v136 = (v136 - 1) >> 1;
                  v137 = v12 + 24 * v136;
                }

                while (*v137 < v138);
                *v130 = v138;
                result = v154;
                *(v130 + 20) = v157;
                *(v130 + 4) = v154;
              }
            }
          }

          v116 = v125-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 24 * (v14 >> 1);
    v17 = *v9;
    if (v13 < 0xC01)
    {
      v20 = *v12;
      if (*v12 < *v16)
      {
        if (v17 < v20)
        {
          v188 = *(v16 + 16);
          v159 = *v16;
          v21 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v21;
          goto LABEL_36;
        }

        v195 = *(v16 + 16);
        v166 = *v16;
        v42 = *v12;
        *(v16 + 16) = *(v12 + 16);
        *v16 = v42;
        *(v12 + 16) = v195;
        *v12 = v166;
        if (*v9 < *v12)
        {
          v188 = *(v12 + 16);
          v159 = *v12;
          v43 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v43;
LABEL_36:
          *(a2 - 8) = v188;
          *v9 = v159;
        }

LABEL_37:
        --a3;
        v26 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v17 >= v20)
      {
        goto LABEL_37;
      }

      v191 = *(v12 + 16);
      v162 = *v12;
      v24 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v24;
      *(a2 - 8) = v191;
      *v9 = v162;
      if (*v12 >= *v16)
      {
        goto LABEL_37;
      }

      v192 = *(v16 + 16);
      v163 = *v16;
      v25 = *v12;
      *(v16 + 16) = *(v12 + 16);
      *v16 = v25;
      *(v12 + 16) = v192;
      *v12 = v163;
      --a3;
      v26 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 24) < v26)
      {
        goto LABEL_62;
      }

      v156 = *(v12 + 20);
      v153 = *(v12 + 4);
      if (v26 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v26 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v26 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v26 < v84);
      }

      while (v12 < v83)
      {
        v205 = *(v12 + 16);
        v176 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v205;
        *v83 = v176;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v26 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v26 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v26;
      result = v153;
      *(v12 - 4) = v156;
      *(v12 - 20) = v153;
    }

    else
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v189 = *(v16 + 16);
          v160 = *v16;
          v22 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v189;
          *v9 = v160;
          if (*v16 < *v12)
          {
            v190 = *(v12 + 16);
            v161 = *v12;
            v23 = *v16;
            *(v12 + 16) = *(v16 + 16);
            *v12 = v23;
            *(v16 + 16) = v190;
            *v16 = v161;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v193 = *(v12 + 16);
          v164 = *v12;
          v27 = *v16;
          *(v12 + 16) = *(v16 + 16);
          *v12 = v27;
          *(v16 + 16) = v193;
          *v16 = v164;
          if (*v9 >= *v16)
          {
            goto LABEL_28;
          }

          v187 = *(v16 + 16);
          v158 = *v16;
          v28 = *v9;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
        }

        else
        {
          v187 = *(v12 + 16);
          v158 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
        }

        *(a2 - 8) = v187;
        *v9 = v158;
      }

LABEL_28:
      v29 = (v12 + 24);
      v30 = v12 + 24 * v15;
      v33 = *(v30 - 24);
      v31 = v30 - 24;
      v32 = v33;
      v34 = *v10;
      if (v33 >= *(v12 + 24))
      {
        if (v34 < v32)
        {
          v194 = *(v31 + 16);
          v165 = *v31;
          v38 = *v10;
          *(v31 + 16) = *(a2 - 32);
          *v31 = v38;
          *(a2 - 32) = v194;
          *v10 = v165;
          if (*v31 < *v29)
          {
            v39 = *v29;
            v40 = *(v12 + 40);
            v41 = *(v31 + 16);
            *v29 = *v31;
            *(v12 + 40) = v41;
            *(v31 + 16) = v40;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v34 >= v32)
        {
          v44 = *v29;
          v45 = *(v12 + 40);
          v46 = *(v31 + 16);
          *v29 = *v31;
          *(v12 + 40) = v46;
          *(v31 + 16) = v45;
          *v31 = v44;
          if (*v10 >= *v31)
          {
            goto LABEL_42;
          }

          v196 = *(v31 + 16);
          v167 = *v31;
          v47 = *v10;
          *(v31 + 16) = *(a2 - 32);
          *v31 = v47;
          v35 = v167;
          *(a2 - 32) = v196;
        }

        else
        {
          v35 = *v29;
          v36 = *(v12 + 40);
          v37 = *(a2 - 32);
          *v29 = *v10;
          *(v12 + 40) = v37;
          *(a2 - 32) = v36;
        }

        *v10 = v35;
      }

LABEL_42:
      v48 = (v12 + 48);
      v49 = v12 + 24 * v15;
      v52 = *(v49 + 24);
      v50 = v49 + 24;
      v51 = v52;
      v53 = *v11;
      if (v52 >= *(v12 + 48))
      {
        if (v53 < v51)
        {
          v197 = *(v50 + 16);
          v168 = *v50;
          v57 = *v11;
          *(v50 + 16) = *(a2 - 56);
          *v50 = v57;
          *(a2 - 56) = v197;
          *v11 = v168;
          if (*v50 < *v48)
          {
            v58 = *v48;
            v59 = *(v12 + 64);
            v60 = *(v50 + 16);
            *v48 = *v50;
            *(v12 + 64) = v60;
            *(v50 + 16) = v59;
            *v50 = v58;
          }
        }
      }

      else
      {
        if (v53 >= v51)
        {
          v61 = *v48;
          v62 = *(v12 + 64);
          v63 = *(v50 + 16);
          *v48 = *v50;
          *(v12 + 64) = v63;
          *(v50 + 16) = v62;
          *v50 = v61;
          if (*v11 >= *v50)
          {
            goto LABEL_51;
          }

          v198 = *(v50 + 16);
          v169 = *v50;
          v64 = *v11;
          *(v50 + 16) = *(a2 - 56);
          *v50 = v64;
          v54 = v169;
          *(a2 - 56) = v198;
        }

        else
        {
          v54 = *v48;
          v55 = *(v12 + 64);
          v56 = *(a2 - 56);
          *v48 = *v11;
          *(v12 + 64) = v56;
          *(a2 - 56) = v55;
        }

        *v11 = v54;
      }

LABEL_51:
      v65 = *v16;
      v66 = *v50;
      if (*v16 >= *v31)
      {
        if (v66 < v65)
        {
          v200 = *(v16 + 16);
          v171 = *v16;
          *v16 = *v50;
          *(v16 + 16) = *(v50 + 16);
          *(v50 + 16) = v200;
          *v50 = v171;
          if (*v16 < *v31)
          {
            v201 = *(v31 + 16);
            v172 = *v31;
            *v31 = *v16;
            *(v31 + 16) = *(v16 + 16);
            *(v16 + 16) = v201;
            *v16 = v172;
          }
        }
      }

      else
      {
        if (v66 >= v65)
        {
          v202 = *(v31 + 16);
          v173 = *v31;
          *v31 = *v16;
          *(v31 + 16) = *(v16 + 16);
          *(v16 + 16) = v202;
          *v16 = v173;
          if (*v50 >= *v16)
          {
            goto LABEL_60;
          }

          v199 = *(v16 + 16);
          v170 = *v16;
          *v16 = *v50;
          *(v16 + 16) = *(v50 + 16);
        }

        else
        {
          v199 = *(v31 + 16);
          v170 = *v31;
          *v31 = *v50;
          *(v31 + 16) = *(v50 + 16);
        }

        *(v50 + 16) = v199;
        *v50 = v170;
      }

LABEL_60:
      v203 = *(v12 + 16);
      v174 = *v12;
      v67 = *v16;
      *(v12 + 16) = *(v16 + 16);
      *v12 = v67;
      *(v16 + 16) = v203;
      *v16 = v174;
      --a3;
      v26 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v68 = 0;
      v155 = *(v12 + 20);
      v152 = *(v12 + 4);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v26);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v26);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v26);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v204 = *(v12 + 16);
          v175 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v204;
          *v74 = v175;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v26);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v26);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v26;
      *(v12 - 4) = v155;
      *(v12 - 20) = v152;
      if (v70 < v71)
      {
        goto LABEL_81;
      }

      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_81:
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v96 = *(v12 + 24);
      v97 = (v12 + 48);
      v98 = *(v12 + 48);
      if (v96 >= *v12)
      {
        if (v98 < v96)
        {
          v143 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
          *(v12 + 64) = v143;
          if (*(v12 + 24) < *v12)
          {
            v211 = *(v12 + 16);
            v182 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result = v182;
            *v91 = v182;
            *(v12 + 40) = v211;
          }
        }
      }

      else
      {
        if (v98 < v96)
        {
          v207 = *(v12 + 16);
          v178 = *v12;
          *v12 = *v97;
          *(v12 + 16) = *(v12 + 64);
          result = v178;
          *v97 = v178;
          v99 = v207;
          goto LABEL_184;
        }

        v214 = *(v12 + 16);
        v185 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        result = v185;
        *v91 = v185;
        *(v12 + 40) = v214;
        if (v98 < *(v12 + 24))
        {
          v99 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
LABEL_184:
          *(v12 + 64) = v99;
        }
      }

      if (*v9 >= v97->n128_u32[0])
      {
        return result;
      }

      result = *v97;
      v149 = *(v12 + 64);
      v150 = *(a2 - 8);
      *v97 = *v9;
      *(v12 + 64) = v150;
      *(a2 - 8) = v149;
      *v9 = result;
      if (v97->n128_u32[0] >= v91->n128_u32[0])
      {
        return result;
      }

      v151 = *(v12 + 40);
      result = *v91;
      *v91 = *v97;
      *(v12 + 40) = *(v12 + 64);
      *v97 = result;
      *(v12 + 64) = v151;
LABEL_188:
      if (*(v12 + 24) < *v12)
      {
        v215 = *(v12 + 16);
        v186 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v186;
        *v91 = v186;
        v91[1].n128_u64[0] = v215;
      }

      return result;
    }

    if (v14 == 5)
    {

      return result;
    }

    goto LABEL_9;
  }

  v91 = (v12 + 24);
  v92 = *(v12 + 24);
  v94 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v94;
  if (v92 >= *v12)
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *v91;
    v141 = *(v12 + 40);
    v142 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v142;
    v89[1].n128_u64[0] = v141;
    *v89 = result;
    goto LABEL_188;
  }

  if (v93 < v92)
  {
LABEL_108:
    v206 = *(v12 + 16);
    v177 = *v12;
    v95 = *v89;
    *(v12 + 16) = v89[1].n128_u64[0];
    *v12 = v95;
    result = v177;
    v89[1].n128_u64[0] = v206;
    *v89 = v177;
    return result;
  }

  v213 = *(v12 + 16);
  v184 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result = v184;
  *v91 = v184;
  *(v12 + 40) = v213;
  if (v89->n128_u32[0] < *(v12 + 24))
  {
    result = *v91;
    v147 = *(v12 + 40);
    v148 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v148;
    v89[1].n128_u64[0] = v147;
    *v89 = result;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = a3->n128_u32[0];
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[0] < a3->n128_u32[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5->n128_u32[0] < a4->n128_u32[0])
  {
    v23 = a4[1].n128_i64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u32[0] < a3->n128_u32[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u32[0] < a2->n128_u32[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 24);
      v4 = (a2 - 24);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_u32[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_47:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u32[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_44;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_44;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_44:
    if (v23->n128_u32[0] >= v21->n128_u32[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_47;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u32[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v51 = *v47;
    if (*v47 < v13->n128_u32[0])
    {
      v64 = *(v47 + 4);
      v65 = *(v47 + 20);
      v52 = v48;
      do
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          v50 = a1;
          goto LABEL_34;
        }

        v52 -= 24;
      }

      while (v51 < *(v53 + 24));
      v50 = a1 + v52 + 72;
LABEL_34:
      *v50 = v51;
      *(v50 + 4) = v64;
      *(v50 + 20) = v65;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir15AsmResourceBlobEbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS9_bSF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t *a2)
{
  v2 = a2[6];
  if (v2 >= 8)
  {
    v4 = a2 + 3;
    v5 = *a2;
    v6 = (v2 & 2) != 0 ? v4 : a2[3];
    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v6, v5, a2[1], a2[2]);
    v7 = a2[6];
    if (v7 >= 8)
    {
      if ((v7 & 4) != 0)
      {
        if ((v7 & 2) != 0)
        {
          v8 = v4;
        }

        else
        {
          v8 = *v4;
        }

        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      }

      if ((v7 & 2) == 0)
      {
        v9 = a2[3];
        v10 = a2[4];

        llvm::deallocate_buffer(v9, v10);
      }
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir15AsmResourceBlobEbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS9_bSF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::AsmParser::parseTypeList(llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v7 = v2;
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(v3);
    v2 = v7;
  }

  else
  {
    *(*v3 + 8 * v4) = 0;
    *(v3 + 8) = v4 + 1;
  }

  v5 = *(*v2 + 536);

  return v5();
}

void *llvm::object_deleter<anonymous namespace::AsmPrinterOptions>::call(void *result)
{
  if (result)
  {
    v1 = result;
    result[241] = &unk_28689F938;
    v2 = result + 261;
    v3 = result[264];
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
      v1[241] = &unk_28689F010;
      v4 = v1[253];
      if (v4 != v1[252])
      {
LABEL_6:
        free(v4);
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v1[241] = &unk_28689F010;
      v4 = v1[253];
      if (v4 != v1[252])
      {
        goto LABEL_6;
      }
    }

    v5 = v1[249];
    if (v5 != v1 + 251)
    {
      free(v5);
    }

    v1[217] = &unk_28689F938;
    v6 = v1[240];
    if (v6 == v1 + 237)
    {
      (*(*v6 + 32))(v6);
      v1[217] = &unk_28689F010;
      v7 = v1[229];
      if (v7 != v1[228])
      {
LABEL_13:
        free(v7);
      }
    }

    else
    {
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v1[217] = &unk_28689F010;
      v7 = v1[229];
      if (v7 != v1[228])
      {
        goto LABEL_13;
      }
    }

    v8 = v1[225];
    if (v8 != v1 + 227)
    {
      free(v8);
    }

    v1[193] = &unk_28689F938;
    v9 = v1[216];
    if (v9 == v1 + 213)
    {
      (*(*v9 + 32))(v9);
      v1[193] = &unk_28689F010;
      v10 = v1[205];
      if (v10 != v1[204])
      {
LABEL_20:
        free(v10);
      }
    }

    else
    {
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      v1[193] = &unk_28689F010;
      v10 = v1[205];
      if (v10 != v1[204])
      {
        goto LABEL_20;
      }
    }

    v11 = v1[201];
    if (v11 != v1 + 203)
    {
      free(v11);
    }

    v1[169] = &unk_28689F938;
    v12 = v1[192];
    if (v12 == v1 + 189)
    {
      (*(*v12 + 32))(v12);
      v1[169] = &unk_28689F010;
      v13 = v1[181];
      if (v13 != v1[180])
      {
LABEL_27:
        free(v13);
      }
    }

    else
    {
      if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v1[169] = &unk_28689F010;
      v13 = v1[181];
      if (v13 != v1[180])
      {
        goto LABEL_27;
      }
    }

    v14 = v1[177];
    if (v14 != v1 + 179)
    {
      free(v14);
    }

    v1[145] = &unk_28689F938;
    v15 = v1[168];
    if (v15 == v1 + 165)
    {
      (*(*v15 + 32))(v15);
      v1[145] = &unk_28689F010;
      v16 = v1[157];
      if (v16 != v1[156])
      {
LABEL_34:
        free(v16);
      }
    }

    else
    {
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }

      v1[145] = &unk_28689F010;
      v16 = v1[157];
      if (v16 != v1[156])
      {
        goto LABEL_34;
      }
    }

    v17 = v1[153];
    if (v17 != v1 + 155)
    {
      free(v17);
    }

    v1[121] = &unk_28689F938;
    v18 = v1[144];
    if (v18 == v1 + 141)
    {
      (*(*v18 + 32))(v18);
      v1[121] = &unk_28689F010;
      v19 = v1[133];
      if (v19 != v1[132])
      {
LABEL_41:
        free(v19);
      }
    }

    else
    {
      if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v1[121] = &unk_28689F010;
      v19 = v1[133];
      if (v19 != v1[132])
      {
        goto LABEL_41;
      }
    }

    v20 = v1[129];
    if (v20 != v1 + 131)
    {
      free(v20);
    }

    v1[97] = &unk_28689F938;
    v21 = v1[120];
    if (v21 == v1 + 117)
    {
      (*(*v21 + 32))(v21);
      v1[97] = &unk_28689F010;
      v22 = v1[109];
      if (v22 != v1[108])
      {
LABEL_48:
        free(v22);
      }
    }

    else
    {
      if (v21)
      {
        (*(*v21 + 40))(v21);
      }

      v1[97] = &unk_28689F010;
      v22 = v1[109];
      if (v22 != v1[108])
      {
        goto LABEL_48;
      }
    }

    v23 = v1[105];
    if (v23 != v1 + 107)
    {
      free(v23);
    }

    v1[73] = &unk_28689F938;
    v24 = v1[96];
    if (v24 == v1 + 93)
    {
      (*(*v24 + 32))(v24);
      v1[73] = &unk_28689F010;
      v25 = v1[85];
      if (v25 != v1[84])
      {
LABEL_55:
        free(v25);
      }
    }

    else
    {
      if (v24)
      {
        (*(*v24 + 40))(v24);
      }

      v1[73] = &unk_28689F010;
      v25 = v1[85];
      if (v25 != v1[84])
      {
        goto LABEL_55;
      }
    }

    v26 = v1[81];
    if (v26 != v1 + 83)
    {
      free(v26);
    }

    v1[49] = &unk_28689F660;
    v27 = v1[72];
    if (v27 == v1 + 69)
    {
      (*(*v27 + 32))(v27);
      v1[49] = &unk_28689F010;
      v28 = v1[61];
      if (v28 != v1[60])
      {
LABEL_62:
        free(v28);
      }
    }

    else
    {
      if (v27)
      {
        (*(*v27 + 40))(v27);
      }

      v1[49] = &unk_28689F010;
      v28 = v1[61];
      if (v28 != v1[60])
      {
        goto LABEL_62;
      }
    }

    v29 = v1[57];
    if (v29 != v1 + 59)
    {
      free(v29);
    }

    v1[25] = &unk_28689F660;
    v30 = v1[48];
    if (v30 == v1 + 45)
    {
      (*(*v30 + 32))(v30);
      v1[25] = &unk_28689F010;
      v31 = v1[37];
      if (v31 != v1[36])
      {
LABEL_69:
        free(v31);
      }
    }

    else
    {
      if (v30)
      {
        (*(*v30 + 40))(v30);
      }

      v1[25] = &unk_28689F010;
      v31 = v1[37];
      if (v31 != v1[36])
      {
        goto LABEL_69;
      }
    }

    v32 = v1[33];
    if (v32 != v1 + 35)
    {
      free(v32);
    }

    *v1 = &unk_28685E3C0;
    v33 = v1[24];
    if (v33 == v1 + 21)
    {
      (*(*v33 + 32))(v33);
      *v1 = &unk_28689F010;
      v34 = v1[12];
      if (v34 != v1[11])
      {
LABEL_76:
        free(v34);
      }
    }

    else
    {
      if (v33)
      {
        (*(*v33 + 40))(v33);
      }

      *v1 = &unk_28689F010;
      v34 = v1[12];
      if (v34 != v1[11])
      {
        goto LABEL_76;
      }
    }

    v35 = v1[8];
    if (v35 != v1 + 10)
    {
      free(v35);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<char [44],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v7 = *(a1 + 72);
  if (v7 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v7) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_28685E428;
  *a1 = &unk_28685E3C0;
  *(a1 + 160) = &unk_28689F378;
  *(a1 + 168) = &unk_28685E448;
  *(a1 + 192) = a1 + 168;
  v8 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v8);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [35],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v7 = *(a1 + 72);
  if (v7 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v7) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B9A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F660;
  *(a1 + 152) = &unk_28689F3D8;
  *(a1 + 160) = &unk_28685B9C0;
  *(a1 + 184) = a1 + 160;
  v8 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v8);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F938;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_28685B4C0;
  *(a1 + 184) = a1 + 160;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  v11 = *a3;
  *(a1 + 128) = **a3;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v11;
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [22],llvm::cl::initializer<BOOL>,llvm::cl::desc,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4, _WORD *a5)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F938;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_28685B4C0;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  v13 = *a3;
  *(a1 + 128) = **a3;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v13;
  *(a1 + 32) = *a4;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned int>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, _DWORD *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[2] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

uint64_t mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::~Printer(uint64_t result)
{
  *result = &unk_286899888;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::~Printer(uint64_t a1)
{
  *a1 = &unk_286899888;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C63180);
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::AsmResourceBlob,BOOL,std::string> &&>(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(v2 + 48) = 0;
  v4 = *(a2 + 6);
  *(v2 + 48) = v4;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      v6 = a2;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(v2 + 24, a2 + 24);
      result = (*((*(v2 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(v6 + 24);
      a2 = v6;
    }

    else
    {
      v5 = *(a2 + 24);
      *(v2 + 40) = *(a2 + 5);
      *(v2 + 24) = v5;
    }

    *(a2 + 6) = 0;
  }

  *(v2 + 56) = *(a2 + 56);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::AsmResourceBlob,BOOL,std::string> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t mlir::detail::AsmStateImpl::AsmStateImpl(uint64_t a1, unsigned int *a2, _OWORD *a3, uint64_t a4)
{
  v228 = *MEMORY[0x277D85DE8];
  Context = mlir::Attribute::getContext((a2 + 6));
  mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(a1, Context);
  *(a1 + 184) = 0u;
  *(a1 + 56) = a1 + 72;
  *(a1 + 64) = 0x600000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x400000000;
  *(a1 + 248) = a1 + 264;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  v8 = (a1 + 280);
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  *(a1 + 296) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = a1 + 464;
  *(a1 + 456) = 0x400000000;
  *(a1 + 496) = a1 + 512;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  v9 = *a3;
  v10 = a3[1];
  v197 = a3;
  *(a1 + 576) = a3[2];
  *(a1 + 560) = v10;
  *(a1 + 544) = v9;
  v215 = 0;
  v216 = 0;
  v217 = v219;
  v218 = 0x400000000;
  v220 = &v221 + 8;
  v222 = 1;
  v221 = xmmword_257392FF0;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(&v215, 24, 24, 3);
  v12 = a2;
  v13 = *(a1 + 424);
  *Slow = a1 + 400;
  Slow[1] = v13;
  v200 = a1 + 184;
  *(a1 + 424) = Slow;
  Slow[2] = 0;
  v196 = a1 + 400;
  v212 = v214;
  v213 = 0x800000000;
  v14 = a2[11];
  v198 = a1;
  if ((v14 & 0x7FFFFF) != 0)
  {
    v15 = 0;
    v16 = ((&a2[4 * ((v14 >> 23) & 1) + 17] + ((v14 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
    v17 = 24 * (v14 & 0x7FFFFF);
    do
    {
      *&v223 = v16;
      *(&v223 + 1) = *(a1 + 528);
      LODWORD(v224) = *(a1 + 536);
      *(&v224 + 1) = Slow;
      if (v15 >= HIDWORD(v213))
      {
        if (v212 > &v223 || v212 + 32 * v15 <= &v223)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v212 + 32 * v213;
      v19 = v224;
      *v18 = v223;
      v18[1] = v19;
      v15 = v213 + 1;
      LODWORD(v213) = v213 + 1;
      v16 += 24;
      v17 -= 24;
    }

    while (v17);
  }

  v20 = v213;
  if (v213)
  {
    v203 = (a1 + 280);
    do
    {
      v21 = v212 + 32 * v20;
      v199 = *(v21 - 4);
      if ((*(v197 + 40) & 0x84) != 0)
      {
        v22 = *(v21 - 1);
        LODWORD(v213) = v20 - 1;
        v23 = *(v200 + 240);
        if (v23 != v22)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v24 = *(v21 - 4);
        v22 = *(v21 - 1);
        *(a1 + 528) = *(v21 - 3);
        *(a1 + 536) = v24;
        LODWORD(v213) = v20 - 1;
        v23 = *(v200 + 240);
        if (v23 != v22)
        {
LABEL_19:
          while (1)
          {
            *(*v23 + 24) = v23[1];
            v25 = v23[2];
            if (v25)
            {
              break;
            }

            v23 = *(v200 + 240);
            if (v23 == v22)
            {
              goto LABEL_102;
            }
          }

          v31 = *v23;
          v32 = **v23;
          v33 = *(*v23 + 16);
          if (*(v25 + 8))
          {
            if (v33)
            {
              HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v25 + 16), *(v25 + 24));
              v34 = v33 - 1;
              v36 = *(v25 + 16);
              v35 = *(v25 + 24);
              if (v35)
              {
                if (v36 == -2)
                {
                  for (i = 1; ; ++i)
                  {
                    v26 = HashValue & v34;
                    v27 = (v32 + 24 * (HashValue & v34));
                    v28 = *v27;
                    if (*v27 == -2)
                    {
                      break;
                    }

                    if (v28 == -1)
                    {
                      goto LABEL_60;
                    }

                    if (v35 == v27[1] && !memcmp(0xFFFFFFFFFFFFFFFELL, v28, v35))
                    {
                      break;
                    }

                    HashValue = i + v26;
                  }

LABEL_46:
                  v27[2] = *(v25 + 8);
LABEL_47:
                  v23[2] = *v25;
                  llvm::deallocate_buffer(v25, 0x28);
                }

                v56 = 0;
                v57 = 1;
                v58 = HashValue & v34;
                v27 = (v32 + 24 * (HashValue & v34));
                v59 = *v27;
                if (*v27 == -2)
                {
                  goto LABEL_72;
                }

                while (v59 != -1)
                {
                  if (v35 == v27[1])
                  {
                    v193 = v58;
                    v194 = v57;
                    v60 = memcmp(v36, v59, v35);
                    v58 = v193;
                    v57 = v194;
                    if (!v60)
                    {
                      goto LABEL_46;
                    }
                  }

                  do
                  {
LABEL_72:
                    if (v56)
                    {
                      v61 = 0;
                    }

                    else
                    {
                      v61 = v59 + 2 == 0;
                    }

                    if (v61)
                    {
                      v56 = v27;
                    }

                    v62 = v57 + v58;
                    ++v57;
                    v58 = v62 & v34;
                    v27 = (v32 + 24 * (v62 & v34));
                    v59 = *v27;
                  }

                  while (*v27 == -2);
                }
              }

              else if (v36 == -2)
              {
                v48 = 1;
                v49 = HashValue & v34;
                v27 = (v32 + 24 * (HashValue & v34));
                v50 = *v27;
                if (*v27 == -2)
                {
                  goto LABEL_46;
                }

                while (v50 != -1)
                {
                  if (v27[1])
                  {
                    v51 = v48 + v49;
                    ++v48;
                    v49 = v51 & v34;
                    v27 = (v32 + 24 * (v51 & v34));
                    v50 = *v27;
                    if (*v27 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_46;
                }

LABEL_60:
                v56 = 0;
              }

              else
              {
                v56 = 0;
                v67 = 1;
                v68 = HashValue & v34;
                v27 = (v32 + 24 * (HashValue & v34));
                v69 = *v27;
                if (*v27 == -2)
                {
                  goto LABEL_88;
                }

                while (v69 != -1)
                {
                  if (!v27[1])
                  {
                    goto LABEL_46;
                  }

                  do
                  {
LABEL_88:
                    if (v56)
                    {
                      v70 = 0;
                    }

                    else
                    {
                      v70 = v69 + 2 == 0;
                    }

                    if (v70)
                    {
                      v56 = v27;
                    }

                    v71 = v67 + v68;
                    ++v67;
                    v68 = v71 & v34;
                    v27 = (v32 + 24 * (v71 & v34));
                    v69 = *v27;
                  }

                  while (*v27 == -2);
                }
              }

              if (v36 == -1)
              {
                goto LABEL_46;
              }

              if (v56)
              {
                v27 = v56;
              }

              v46 = *(v31 + 16);
            }

            else
            {
              v46 = 0;
              v27 = 0;
            }

            *&v223 = v27;
            v47 = *(v31 + 8);
            if (4 * v47 + 4 >= 3 * v46)
            {
              v46 *= 2;
            }

            else if (v46 + ~v47 - *(v31 + 12) > v46 >> 3)
            {
              *(v31 + 8) = v47 + 1;
              if (*v27 != -1)
              {
                goto LABEL_44;
              }

              goto LABEL_45;
            }

            llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(v31, v46);
            llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(v31, v25 + 16, &v223);
            v27 = v223;
            ++*(v31 + 8);
            if (*v27 != -1)
            {
LABEL_44:
              --*(v31 + 12);
            }

LABEL_45:
            *v27 = *(v25 + 16);
            v27[2] = 0;
            goto LABEL_46;
          }

          if (!v33)
          {
            goto LABEL_47;
          }

          v37 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v25 + 16), *(v25 + 24));
          v38 = v33 - 1;
          v40 = *(v25 + 16);
          v39 = *(v25 + 24);
          if (v39)
          {
            if (v40 != -2)
            {
              v63 = 1;
              v64 = v37 & v38;
              v43 = v32 + 24 * (v37 & v38);
              v65 = *v43;
              if (*v43 == -2)
              {
                goto LABEL_83;
              }

              while (v65 != -1)
              {
                if (v39 == *(v43 + 8) && !memcmp(v40, v65, v39))
                {
                  goto LABEL_101;
                }

                do
                {
LABEL_83:
                  v66 = v63 + v64;
                  ++v63;
                  v64 = v66 & v38;
                  v43 = v32 + 24 * (v66 & v38);
                  v65 = *v43;
                }

                while (*v43 == -2);
              }

              goto LABEL_100;
            }

            v41 = 1;
            v42 = v37 & v38;
            v43 = v32 + 24 * (v37 & v38);
            v44 = *v43;
            if (*v43 != -2)
            {
              while (v44 != -1)
              {
                if (v39 != *(v43 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v44, v39))
                {
                  v45 = v41 + v42;
                  ++v41;
                  v42 = v45 & v38;
                  v43 = v32 + 24 * (v45 & v38);
                  v44 = *v43;
                  if (*v43 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_101;
              }

LABEL_100:
              if (v40 != -1)
              {
                goto LABEL_47;
              }
            }
          }

          else
          {
            v52 = 1;
            if (v40 == -2)
            {
              v53 = v37 & v38;
              v43 = v32 + 24 * (v37 & v38);
              v54 = *v43;
              if (*v43 != -2)
              {
                while (v54 != -1)
                {
                  if (*(v43 + 8))
                  {
                    v55 = v52 + v53;
                    ++v52;
                    v53 = v55 & v38;
                    v43 = v32 + 24 * (v55 & v38);
                    v54 = *v43;
                    if (*v43 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_101;
                }

                goto LABEL_100;
              }
            }

            else
            {
              while (1)
              {
                v43 = v32 + 24 * (v37 & v38);
                if (*v43 != -2)
                {
                  if (*v43 == -1)
                  {
                    goto LABEL_100;
                  }

                  if (!*(v43 + 8))
                  {
                    break;
                  }
                }

                v37 = v52 + (v37 & v38);
                ++v52;
              }
            }
          }

LABEL_101:
          *v43 = xmmword_257393000;
          *(v31 + 8) = vadd_s32(*(v31 + 8), 0x1FFFFFFFFLL);
          goto LABEL_47;
        }
      }

LABEL_102:
      *(&v221 + 1) += 24;
      if (v215 && (v72 = ((v215 + 7) & 0xFFFFFFFFFFFFFFF8), (v72 + 3) <= v216))
      {
        v215 = v72 + 3;
      }

      else
      {
        v72 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(&v215, 24, 24, 3);
        v23 = *(v200 + 240);
      }

      a1 = v198;
      *v72 = v196;
      v72[1] = v23;
      *(v198 + 424) = v72;
      v72[2] = 0;
      *&v204 = v8;
      if ((*(v198 + 584) & 4) == 0)
      {
        v73 = *(v199 + 2);
        if (v73)
        {
          if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(*(v199 + 2)))
          {
            InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v73);
          }
        }
      }

      v75 = *(v199 + 1);
      if (v75 != v199)
      {
        v76 = 0;
        while (2)
        {
          if (v75)
          {
            v77 = (v75 - 8);
          }

          else
          {
            v77 = 0;
          }

          v78 = *(a1 + 392);
          if (!v78)
          {
            goto LABEL_183;
          }

          v79 = *(a1 + 376);
          v80 = ((v77 >> 4) ^ (v77 >> 9)) & (v78 - 1);
          v81 = v79 + 32 * v80;
          v82 = *v81;
          if (*v81 == v77)
          {
            goto LABEL_145;
          }

          v83 = 0;
          v84 = 1;
          while (v82 != -4096)
          {
            if (v83)
            {
              v85 = 0;
            }

            else
            {
              v85 = v82 == -8192;
            }

            if (v85)
            {
              v83 = v81;
            }

            v86 = v80 + v84++;
            v80 = v86 & (v78 - 1);
            v81 = v79 + 32 * v80;
            v82 = *v81;
            if (*v81 == v77)
            {
              goto LABEL_145;
            }
          }

          if (v83)
          {
            v81 = v83;
          }

          v120 = *(a1 + 384);
          if (4 * v120 + 4 >= 3 * v78)
          {
LABEL_183:
            v78 *= 2;
LABEL_184:
            v121 = *(a1 + 392);
            if (v121)
            {
              v122 = *(a1 + 376);
              v123 = v121 - 1;
              v124 = v123 & ((v77 >> 4) ^ (v77 >> 9));
              v81 = v122 + 32 * v124;
              v125 = *v81;
              if (*v81 != v77)
              {
                v126 = 0;
                v127 = 1;
                while (v125 != -4096)
                {
                  if (v126)
                  {
                    v128 = 0;
                  }

                  else
                  {
                    v128 = v125 == -8192;
                  }

                  if (v128)
                  {
                    v126 = v81;
                  }

                  v129 = v124 + v127++;
                  v124 = v129 & v123;
                  v81 = v122 + 32 * v124;
                  v125 = *v81;
                  a1 = v198;
                  v8 = v203;
                  if (*v81 == v77)
                  {
                    goto LABEL_197;
                  }
                }

                if (v126)
                {
                  v81 = v126;
                }

                a1 = v198;
                v8 = v203;
              }
            }

            else
            {
              v81 = 0;
            }

LABEL_197:
            ++*(a1 + 384);
            if (*v81 == -4096)
            {
              goto LABEL_130;
            }

LABEL_129:
            --*(a1 + 388);
            goto LABEL_130;
          }

          if (v78 + ~v120 - *(a1 + 388) <= v78 >> 3)
          {
            goto LABEL_184;
          }

          *(a1 + 384) = v120 + 1;
          if (*v81 != -4096)
          {
            goto LABEL_129;
          }

LABEL_130:
          *v81 = v77;
          *(v81 + 8) = -1;
          *(v81 + 16) = "";
          *(v81 + 24) = 0;
          __p[0] = 0;
          __p[1] = 0;
          *&v207 = 0;
          DWORD2(v223) = 0;
          LOBYTE(v226) = 0;
          HIDWORD(v226) = 1;
          v225 = 0;
          v224 = 0uLL;
          *&v223 = &unk_2868A3EF8;
          v227 = __p;
          llvm::raw_ostream::SetBufferAndMode(&v223, 0, 0, 0);
          v87 = v225;
          if ((*(&v224 + 1) - v225) > 2)
          {
            *(v225 + 2) = 98;
            *v87 = 25182;
            v225 += 3;
          }

          else
          {
            llvm::raw_ostream::write(&v223, "^bb", 3uLL);
          }

          llvm::raw_ostream::operator<<(&v223, v76);
          llvm::raw_ostream::~raw_ostream(&v223);
          if ((SBYTE7(v207) & 0x80u) == 0)
          {
            v88 = __p;
          }

          else
          {
            v88 = __p[0];
          }

          if ((SBYTE7(v207) & 0x80u) == 0)
          {
            v89 = SBYTE7(v207);
          }

          else
          {
            v89 = __p[1];
          }

          if (v89)
          {
            *(a1 + 512) += v89;
            v90 = *(a1 + 432);
            if (v90 && &v90[v89] <= *(a1 + 440))
            {
              *(v200 + 248) = &v90[v89];
            }

            else
            {
              v130 = v88;
              v131 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v200 + 248, v89, v89, 0);
              v88 = v130;
              a1 = v198;
              v90 = v131;
            }

            memmove(v90, v88, v89);
            *(v81 + 16) = v90;
            *(v81 + 24) = v89;
            if (SBYTE7(v207) < 0)
            {
LABEL_144:
              operator delete(__p[0]);
            }
          }

          else
          {
            *(v81 + 16) = 0;
            *(v81 + 24) = 0;
            if (SBYTE7(v207) < 0)
            {
              goto LABEL_144;
            }
          }

LABEL_145:
          *(v81 + 8) = v76;
          isEntryBlock = mlir::Block::isEntryBlock(v77);
          v92 = isEntryBlock;
          v93 = 3;
          if (!isEntryBlock)
          {
            v93 = 0;
          }

          *&v223 = &v224 + 8;
          *&v224 = 32;
          if (isEntryBlock)
          {
            qmemcpy(&v224 + 8, "arg", 3);
          }

          *(&v223 + 1) = v93;
          LODWORD(__p[1]) = 2;
          v209 = 0;
          v210 = 1;
          v208 = 0;
          v207 = 0uLL;
          __p[0] = &unk_2868A3F88;
          v211 = &v223;
          llvm::raw_ostream::SetBufferAndMode(__p, 0, 0, 0);
          v94 = *(v77 + 6);
          v95 = *(v77 + 7);
          if (v94 != v95)
          {
            if (v92)
            {
              while (1)
              {
                v107 = *v94;
                v108 = *(a1 + 296);
                if (!v108)
                {
                  goto LABEL_170;
                }

                v109 = *(a1 + 280);
                v110 = 0x9DDFEA08EB382D69 * ((8 * *v94 - 0xAE502812AA7333) ^ HIDWORD(*v94));
                v111 = 0x9DDFEA08EB382D69 * (HIDWORD(v107) ^ (v110 >> 47) ^ v110);
                v112 = v108 - 1;
                v113 = (-348639895 * ((v111 >> 47) ^ v111)) & v112;
                v114 = *(v109 + 16 * v113);
                if (v114 != v107)
                {
                  break;
                }

LABEL_163:
                if (++v94 == v95)
                {
                  goto LABEL_174;
                }
              }

              v115 = 1;
              while (v114 != -4096)
              {
                v116 = v113 + v115++;
                v113 = v116 & v112;
                v114 = *(v109 + 16 * v113);
                if (v114 == v107)
                {
                  goto LABEL_163;
                }
              }

LABEL_170:
              if (*(&v223 + 1) != 3)
              {
                if (*(&v223 + 1) <= 3uLL)
                {
                  if (v224 <= 2)
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod();
                  }

                  bzero((v223 + *(&v223 + 1)), 3 - *(&v223 + 1));
                }

                *(&v223 + 1) = 3;
              }

              v106 = *(a1 + 532);
              *(a1 + 532) = v106 + 1;
              llvm::raw_ostream::operator<<(__p, v106);
              goto LABEL_163;
            }

            while (2)
            {
              v96 = *v94;
              v97 = *(a1 + 296);
              if (v97)
              {
                v98 = *(a1 + 280);
                v99 = 0x9DDFEA08EB382D69 * ((8 * *v94 - 0xAE502812AA7333) ^ HIDWORD(*v94));
                v100 = 0x9DDFEA08EB382D69 * (HIDWORD(v96) ^ (v99 >> 47) ^ v99);
                v101 = v97 - 1;
                v102 = (-348639895 * ((v100 >> 47) ^ v100)) & v101;
                v103 = *(v98 + 16 * v102);
                if (v103 != v96)
                {
                  v104 = 1;
                  while (v103 != -4096)
                  {
                    v105 = v102 + v104++;
                    v102 = v105 & v101;
                    v103 = *(v98 + 16 * v102);
                    if (v103 == v96)
                    {
                      goto LABEL_153;
                    }
                  }

                  goto LABEL_152;
                }
              }

              else
              {
LABEL_152:
              }

LABEL_153:
              if (++v94 == v95)
              {
                break;
              }

              continue;
            }
          }

LABEL_174:
          v117 = (v77 + 32);
          for (j = *(v77 + 5); j != v117; j = j[1])
          {
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
          }

          llvm::raw_ostream::~raw_ostream(__p);
          if (v223 != (&v224 + 8))
          {
            free(v223);
          }

          ++v76;
          v75 = *(v75 + 1);
          a1 = v198;
          if (v75 == v199)
          {
            break;
          }

          continue;
        }
      }

      mlir::Region::OpIterator::OpIterator(__p, v199, 0);
      mlir::Region::OpIterator::OpIterator(&v224 + 1, v199, 1);
      v132 = v207;
      *&v224 = v207;
      v223 = *__p;
      v204 = *__p;
      v205 = v207;
      v133 = v226;
      while (v132 != v133)
      {
        v134 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v132);
        v135 = *(v134 + 44);
        v136 = v135 & 0x7FFFFF;
        if ((v135 & 0x7FFFFF) != 0)
        {
          v137 = (v134 + 16 * ((v135 >> 23) & 1) + ((v135 >> 21) & 0x7F8) + 32 * *(v134 + 40) + 64);
          v138 = v213;
          v139 = 24 * v136;
          do
          {
            __p[0] = v137;
            __p[1] = *(a1 + 528);
            LODWORD(v207) = *(a1 + 536);
            *(&v207 + 1) = v72;
            if (v138 >= HIDWORD(v213))
            {
              if (v212 <= __p && v212 + 32 * v138 > __p)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v140 = v212 + 32 * v213;
            v141 = v207;
            *v140 = *__p;
            v140[1] = v141;
            v138 = v213 + 1;
            LODWORD(v213) = v213 + 1;
            v137 += 24;
            v139 -= 24;
          }

          while (v139);
        }

        mlir::Region::OpIterator::operator++(&v204);
        v132 = v205;
      }

      v20 = v213;
    }

    while (v213);
  }

  v142 = *(v200 + 240);
  if (v142)
  {
    while (1)
    {
      *(*v142 + 24) = v142[1];
      v148 = v142[2];
      if (v148)
      {
        break;
      }

      v142 = *(v200 + 240);
      if (!v142)
      {
        goto LABEL_302;
      }
    }

    v149 = *v142;
    v150 = **v142;
    v151 = *(*v142 + 16);
    if (*(v148 + 8))
    {
      if (v151)
      {
        v146 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v148 + 16), *(v148 + 24));
        v152 = v151 - 1;
        v154 = *(v148 + 16);
        v153 = *(v148 + 24);
        if (v153)
        {
          if (v154 == -2)
          {
            for (k = 1; ; ++k)
            {
              v143 = v146 & v152;
              v144 = (v150 + 24 * (v146 & v152));
              v145 = *v144;
              if (*v144 == -2)
              {
                break;
              }

              if (v145 == -1)
              {
                goto LABEL_260;
              }

              if (v153 == v144[1] && !memcmp(0xFFFFFFFFFFFFFFFELL, v145, v153))
              {
                break;
              }

              v146 = k + v143;
            }

            goto LABEL_246;
          }

          v174 = 0;
          v175 = 1;
          v176 = v146 & v152;
          v144 = (v150 + 24 * (v146 & v152));
          v177 = *v144;
          if (*v144 == -2)
          {
            goto LABEL_272;
          }

          while (v177 != -1)
          {
            if (v153 == v144[1])
            {
              v202 = v175;
              v201 = v176;
              v178 = memcmp(v154, v177, v153);
              v176 = v201;
              v175 = v202;
              if (!v178)
              {
                goto LABEL_246;
              }
            }

            do
            {
LABEL_272:
              if (v174)
              {
                v179 = 0;
              }

              else
              {
                v179 = v177 + 2 == 0;
              }

              if (v179)
              {
                v174 = v144;
              }

              v180 = v175 + v176;
              ++v175;
              v176 = v180 & v152;
              v144 = (v150 + 24 * (v180 & v152));
              v177 = *v144;
            }

            while (*v144 == -2);
          }
        }

        else if (v154 == -2)
        {
          v166 = 1;
          v167 = v146 & v152;
          v144 = (v150 + 24 * (v146 & v152));
          v168 = *v144;
          if (*v144 == -2)
          {
            goto LABEL_246;
          }

          while (v168 != -1)
          {
            if (v144[1])
            {
              v169 = v166 + v167;
              ++v166;
              v167 = v169 & v152;
              v144 = (v150 + 24 * (v169 & v152));
              v168 = *v144;
              if (*v144 != -2)
              {
                continue;
              }
            }

            goto LABEL_246;
          }

LABEL_260:
          v174 = 0;
        }

        else
        {
          v174 = 0;
          v185 = 1;
          v186 = v146 & v152;
          v144 = (v150 + 24 * (v146 & v152));
          v187 = *v144;
          if (*v144 == -2)
          {
            goto LABEL_288;
          }

          while (v187 != -1)
          {
            if (!v144[1])
            {
              goto LABEL_246;
            }

            do
            {
LABEL_288:
              if (v174)
              {
                v188 = 0;
              }

              else
              {
                v188 = v187 + 2 == 0;
              }

              if (v188)
              {
                v174 = v144;
              }

              v189 = v185 + v186;
              ++v185;
              v186 = v189 & v152;
              v144 = (v150 + 24 * (v189 & v152));
              v187 = *v144;
            }

            while (*v144 == -2);
          }
        }

        if (v154 == -1)
        {
          goto LABEL_246;
        }

        if (v174)
        {
          v144 = v174;
        }

        v164 = *(v149 + 16);
      }

      else
      {
        v164 = 0;
        v144 = 0;
      }

      *&v223 = v144;
      v165 = *(v149 + 8);
      if (4 * v165 + 4 >= 3 * v164)
      {
        v164 *= 2;
      }

      else if (v164 + ~v165 - *(v149 + 12) > v164 >> 3)
      {
        *(v149 + 8) = v165 + 1;
        if (*v144 == -1)
        {
LABEL_245:
          *v144 = *(v148 + 16);
          v144[2] = 0;
LABEL_246:
          v144[2] = *(v148 + 8);
          goto LABEL_247;
        }

LABEL_244:
        --*(v149 + 12);
        goto LABEL_245;
      }

      llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(v149, v164);
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(v149, v148 + 16, &v223);
      v144 = v223;
      ++*(v149 + 8);
      if (*v144 == -1)
      {
        goto LABEL_245;
      }

      goto LABEL_244;
    }

    if (!v151)
    {
      goto LABEL_247;
    }

    v155 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(v148 + 16), *(v148 + 24));
    v156 = v151 - 1;
    v158 = *(v148 + 16);
    v157 = *(v148 + 24);
    if (v157)
    {
      if (v158 == -2)
      {
        v159 = 1;
        v160 = v155 & v156;
        v161 = v150 + 24 * (v155 & v156);
        v162 = *v161;
        if (*v161 != -2)
        {
          while (v162 != -1)
          {
            if (v157 != *(v161 + 8) || memcmp(0xFFFFFFFFFFFFFFFELL, v162, v157))
            {
              v163 = v159 + v160;
              ++v159;
              v160 = v163 & v156;
              v161 = v150 + 24 * (v163 & v156);
              v162 = *v161;
              if (*v161 != -2)
              {
                continue;
              }
            }

            goto LABEL_301;
          }

          goto LABEL_300;
        }

        goto LABEL_301;
      }

      v181 = 1;
      v182 = v155 & v156;
      v161 = v150 + 24 * (v155 & v156);
      v183 = *v161;
      if (*v161 == -2)
      {
        goto LABEL_283;
      }

      while (v183 != -1)
      {
        if (v157 == *(v161 + 8) && !memcmp(v158, v183, v157))
        {
          goto LABEL_301;
        }

        do
        {
LABEL_283:
          v184 = v181 + v182;
          ++v181;
          v182 = v184 & v156;
          v161 = v150 + 24 * (v184 & v156);
          v183 = *v161;
        }

        while (*v161 == -2);
      }
    }

    else
    {
      v170 = 1;
      if (v158 != -2)
      {
        while (1)
        {
          v161 = v150 + 24 * (v155 & v156);
          if (*v161 != -2)
          {
            if (*v161 == -1)
            {
              goto LABEL_300;
            }

            if (!*(v161 + 8))
            {
              goto LABEL_301;
            }
          }

          v155 = v170 + (v155 & v156);
          ++v170;
        }
      }

      v171 = v155 & v156;
      v161 = v150 + 24 * (v155 & v156);
      v172 = *v161;
      if (*v161 == -2)
      {
LABEL_301:
        *v161 = xmmword_257393000;
        *(v149 + 8) = vadd_s32(*(v149 + 8), 0x1FFFFFFFFLL);
LABEL_247:
        v142[2] = *v148;
        llvm::deallocate_buffer(v148, 0x28);
      }

      while (v172 != -1)
      {
        if (*(v161 + 8))
        {
          v173 = v170 + v171;
          ++v170;
          v171 = v173 & v156;
          v161 = v150 + 24 * (v173 & v156);
          v172 = *v161;
          if (*v161 != -2)
          {
            continue;
          }
        }

        goto LABEL_301;
      }
    }

LABEL_300:
    if (v158 != -1)
    {
      goto LABEL_247;
    }

    goto LABEL_301;
  }

LABEL_302:
  if (v212 != v214)
  {
    free(v212);
  }

  if (v218)
  {
    llvm::deallocate_buffer(*v217, 0x1000);
  }

  if (v221)
  {
    llvm::deallocate_buffer(*v220, *(v220 + 1));
  }

  if (v220 != &v221 + 8)
  {
    free(v220);
  }

  if (v217 != v219)
  {
    free(v217);
  }

  *(v198 + 536) = 0;
  *(v198 + 528) = 0;
  *(v198 + 592) = 0;
  *(v198 + 616) = 0;
  *(v198 + 600) = 0u;
  v190 = *v197;
  v191 = v197[2];
  *(v198 + 640) = v197[1];
  *(v198 + 656) = v191;
  *(v198 + 624) = v190;
  *(v198 + 672) = a4;
  *(v198 + 680) = 0u;
  *(v198 + 696) = 0;
  *(v198 + 704) = v198 + 720;
  *(v198 + 712) = 0;
  return v198;
}

uint64_t mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  {
    mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id;
  v6[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6[1] = 77;
  llvm::StringRef::find(v6, "DesiredTypeName = ", 0x12uLL, 0);
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_28689A960;
  return result;
}

void sub_2570701B8()
{

  JUMPOUT(0x259C63180);
}

void anonymous namespace::SSANameState::numberValuesInOp(_anonymous_namespace_::SSANameState *this, mlir::Operation *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v23[1] = &__base;
  __base = &v26;
  v26 = 0;
  __nel = 0x200000001;
  v22 = this;
  v23[0] = this;
  if ((*(this + 304) & 4) == 0)
  {
    if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v5 = InterfaceFor;
      if (a2)
      {
      }
    }
  }

  if (*(a2 + 9))
  {
    v19 = (a2 - 16);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>(this, &v19, this + 62, v20);
    if (v21 == 1)
    {
      ++*(this + 62);
    }

    if (__nel)
    {
      if (__nel == 1)
      {
        goto LABEL_28;
      }

      qsort(__base, __nel, 4uLL, llvm::array_pod_sort_comparator<int>);
    }

    v8 = *(this + 9);
    v7 = this + 72;
    v6 = v8;
    v20[0] = a2;
    v9 = *(v7 + 4);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = v10 & ((a2 >> 4) ^ (a2 >> 9));
      v12 = (v6 + 32 * v11);
      v13 = *v12;
      if (*v12 == a2)
      {
        goto LABEL_28;
      }

      v14 = 0;
      v15 = 1;
      while (v13 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v13 == -8192;
        }

        if (v16)
        {
          v14 = v12;
        }

        v17 = v11 + v15++;
        v11 = v17 & v10;
        v12 = (v6 + 32 * v11);
        v13 = *v12;
        if (*v12 == a2)
        {
          goto LABEL_28;
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
    }

    else
    {
      v18 = 0;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::InsertIntoBucket<mlir::Operation *,llvm::SmallVector<int,2u>>(v7, v18, v20, &__base);
  }

  else if ((*(this + 304) & 0x40) != 0)
  {
    v19 = a2;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(this + 48, &v19, this + 62, v20);
    if (v21 == 1)
    {
      ++*(this + 62);
    }
  }

LABEL_28:
  if (__base != &v26)
  {
    free(__base);
  }
}

void llvm::function_ref<void ()(mlir::Block *,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInOp(mlir::Operation &)::$_0>(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v28 = v30;
  v29 = xmmword_257393010;
  v30[0] = 94;
  v6 = sanitizeIdentifier(a3, a4, &v28, "$._-", 4uLL, 1);
  v8 = v7;
  v9 = v28;
  if (v28 == v6)
  {
    v9 = v6;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = v29;
    if (*(&v29 + 1) < v29 + v8)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v8)
    {
      memcpy(v28 + v29, v6, v8);
      v9 = v28;
      v10 = v29;
    }

    v8 += v10;
    *&v29 = v8;
    if (v8)
    {
LABEL_7:
      *(v5 + 232) += v8;
      v11 = *(v5 + 152);
      v12 = &v11[v8];
      if (v11)
      {
        v13 = v12 > *(v5 + 160);
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v25 = v9;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v5 + 152, v8, v8, 0);
        v9 = v25;
        v11 = Slow;
      }

      else
      {
        *(v5 + 152) = v12;
      }

      memmove(v11, v9, v8);
      v14 = v5 + 96;
      v15 = *(v5 + 96);
      v16 = *(v5 + 112);
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_25:
      v18 = 0;
      goto LABEL_26;
    }
  }

  v11 = 0;
  v14 = v5 + 96;
  v15 = *(v5 + 96);
  v16 = *(v5 + 112);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_13:
  v17 = (v16 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v18 = (v15 + 32 * v17);
  v19 = *v18;
  if (*v18 == a2)
  {
    goto LABEL_31;
  }

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
    v17 = v23 & (v16 - 1);
    v18 = (v15 + 32 * v17);
    v19 = *v18;
    if (*v18 == a2)
    {
      goto LABEL_31;
    }
  }

  if (v20)
  {
    v18 = v20;
  }

LABEL_26:
  v27 = v18;
  v24 = *(v5 + 104);
  if (4 * v24 + 4 >= 3 * v16)
  {
    v16 *= 2;
LABEL_39:
    v18 = v27;
    ++*(v5 + 104);
    if (*v18 == -4096)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v16 + ~v24 - *(v5 + 108) <= v16 >> 3)
  {
    goto LABEL_39;
  }

  *(v5 + 104) = v24 + 1;
  if (*v18 != -4096)
  {
LABEL_29:
    --*(v5 + 108);
  }

LABEL_30:
  *v18 = a2;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0;
LABEL_31:
  *(v18 + 2) = -1;
  v18[2] = v11;
  v18[3] = v8;
  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (result + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
LABEL_3:
      *a4 = v5;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      while (v6 != -4096)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v6 == -8192;
        }

        if (v9)
        {
          v7 = v5;
        }

        v10 = v4 + v8++;
        v4 = v10 & (a2 - 1);
        v5 = (result + 32 * v4);
        v6 = *v5;
        if (*v5 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v7)
      {
        v5 = v7;
      }

      *a4 = v5;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::grow(uint64_t a1, int a2)
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
          if (*v22 != v24)
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
              if (*v22 == v24)
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
          *v22 = v24;
          v23 = *(v16 + 8);
          *(v22 + 24) = *(v16 + 3);
          *(v22 + 8) = v23;
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

uint64_t llvm::function_ref<void ()(mlir::Value,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInOp(mlir::Operation &)::$_1>(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  if (a2 && (*(a2 + 8) & 7) == 6)
  {
    v8 = *(a2 + 16);
    v9 = v8 + 6;
    if (v8 == -6)
    {
      return result;
    }
  }

  else
  {
    v9 = v7 & 7;
    if ((v7 & 7) == 0)
    {
      return result;
    }
  }

  v10 = a1[1];
  v11 = *(v10 + 8);
  if (v11 >= *(v10 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v10 + 4 * v11) = v9;
  ++*(v10 + 8);
  return result;
}

uint64_t anonymous namespace::SSANameState::setValueName(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = a2;
  if (!a4)
  {
    v9 = *(a1 + 248);
    *(a1 + 248) = v9 + 1;
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1, &v38);
    *result = v9;
    return result;
  }

  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1, &v38) = -1;
  v46 = v48;
  v47 = xmmword_25738E870;
  __src[0] = sanitizeIdentifier(a3, a4, &v46, "$._-", 4uLL, 1);
  __src[1] = v7;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((a1 + 120), __src))
  {
    v11 = __src[1];
    if (__src[1])
    {
      *(a1 + 232) += __src[1];
      Slow = *(a1 + 152);
      if (Slow && &Slow[v11] <= *(a1 + 160))
      {
        *(a1 + 152) = &Slow[v11];
LABEL_10:
        memmove(Slow, __src[0], v11);
        v13 = __src[1];
LABEL_56:
        __src[0] = Slow;
        __src[1] = v13;
        goto LABEL_57;
      }

      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 152, v11, v11, 0);
      v11 = __src[1];
      if (__src[1])
      {
        goto LABEL_10;
      }
    }

    else
    {
      Slow = 0;
    }

    v13 = 0;
    goto LABEL_56;
  }

  v8 = __src[1];
  v43 = v45;
  v44 = xmmword_257370CF0;
  if (__src[1] >= 0x41)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v14 = 0;
  if (__src[1])
  {
    memcpy(v43, __src[0], __src[1]);
    v14 = v44;
  }

  v15 = &v8[v14];
  *&v44 = v15;
  if ((v15 + 1) > *(&v44 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v15[v43] = 95;
  *&v44 = v44 + 1;
  while (1)
  {
    v16 = *(a1 + 256);
    *(a1 + 256) = v16 + 1;
    if (v16)
    {
      v17 = 20;
      do
      {
        v48[v17-- + 19] = (v16 % 0xA) | 0x30;
        v18 = v16 > 9;
        v16 /= 0xAuLL;
      }

      while (v18);
      v19 = v17 + 1;
      v20 = 20 - v17;
      if ((20 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }
    }

    else
    {
      v48[39] = 48;
      v19 = 20;
      v20 = 1;
    }

    if (v20 > 0x16)
    {
      operator new();
    }

    v41 = v20;
    if (v19 != 21)
    {
      memcpy(&__dst, &v48[v19 + 19], v20);
    }

    *(&__dst + v20) = 0;
    v21 = v41;
    v22 = __dst;
    if (v41 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v41 >= 0)
    {
      v24 = v41;
    }

    else
    {
      v24 = v40;
    }

    v25 = v44;
    if (*(&v44 + 1) < v44 + v24)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v24)
    {
      memcpy(v43 + v44, p_dst, v24);
      v25 = v44;
    }

    v26 = v25 + v24;
    *&v44 = v26;
    if (v21 < 0)
    {
      operator delete(v22);
      v26 = v44;
    }

    __dst = v43;
    v40 = v26;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>((a1 + 120), &__dst))
    {
      break;
    }

    v27 = __src[1] + 1;
    if (v44 != __src[1] + 1)
    {
      if (v44 <= __src[1] + 1)
      {
        if (*(&v44 + 1) < v27)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (v27 != v44)
        {
          bzero(v43 + v44, &v27[-v44]);
        }
      }

      *&v44 = v27;
    }
  }

  v28 = v43;
  v29 = v44;
  if (v44)
  {
    *(a1 + 232) += v44;
    v30 = *(a1 + 152);
    if (v30 && &v30[v29] <= *(a1 + 160))
    {
      *(a1 + 152) = &v30[v29];
    }

    else
    {
      v30 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 152, v29, v29, 0);
    }

    memmove(v30, v28, v29);
    v28 = v43;
    __src[0] = v30;
    __src[1] = v29;
    if (v43 == v45)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

  __src[0] = 0;
  __src[1] = 0;
  if (v43 != v45)
  {
LABEL_53:
    free(v28);
  }

LABEL_57:
  v31 = *(a1 + 144);
  v32 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[](a1 + 120, __src);
  v33 = *(v31 + 16);
  v34 = *v32;
  buffer = llvm::allocate_buffer(0x28uLL, 8uLL);
  buffer[1] = *__src;
  *(buffer + 32) = 0;
  *buffer = v33;
  *(buffer + 1) = v34;
  *v32 = buffer;
  *(v31 + 16) = buffer;
  v36 = __src[0];
  v37 = __src[1];
  if (v46 != v48)
  {
    free(v46);
  }

  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::operator[](a1 + 24, &v38);
  *result = v36;
  *(result + 8) = v37;
  return result;
}

char **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[](uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = 0;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_25736B6D0;
        *(v17 + 24) = xmmword_25736B6D0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v28 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v28);
              v23 = v28;
              *v28 = *v22;
              v23[2] = *(v22 + 16);
              ++*(a1 + 8);
            }

            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_25736B6D0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_25:
      v27 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_25736B6D0;
        v15 = (v15 + 24);
      }

      while (v15 != v27);
      return result;
    }

    v24 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
    v25 = result;
    v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v25 = xmmword_25736B6D0;
      *(v25 + 24) = xmmword_25736B6D0;
      v25 += 3;
      v26 -= 2;
    }

    while (v26);
    if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t llvm::array_pod_sort_comparator<int>(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::InsertIntoBucket<mlir::Operation *,llvm::SmallVector<int,2u>>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v12 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v8 = a3;
    v9 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      *(a1 + 2) = v5 + 1;
      if (*v4 == -4096)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = a3;
    v9 = a4;
  }

  v10 = a1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v10, v8, &v12);
  a1 = v10;
  a3 = v8;
  v11 = *(v10 + 2);
  v4 = v12;
  a4 = v9;
  *(a1 + 2) = v11 + 1;
  if (*v4 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v4 = *a3;
  v4[1] = v4 + 3;
  v4[2] = 0x100000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<int>::operator=((v4 + 1), a4);
  }

  return v4;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::grow(uint64_t a1, int a2)
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
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0xFFFFFFFFFFFFFFELL;
      v11 = &v7[4 * v10];
      v12 = v7 + 4;
      v13 = v10;
      do
      {
        *(v12 - 4) = -4096;
        *v12 = -4096;
        v12 += 8;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[4 * v6];
    do
    {
      *v11 = -4096;
      v11 += 4;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + 32 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -8192;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = (*a1 + 32 * v17);
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        *v18 = v15;
        v18[1] = v18 + 3;
        v18[2] = 0x100000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<int>::operator=((v18 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v20 = v4[1];
        if (v20 != v4 + 3)
        {
          free(v20);
        }
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

void mlir::detail::AsmStateImpl::~AsmStateImpl(mlir::detail::AsmStateImpl *this)
{
  v2 = *(this + 88);
  if (v2 != this + 720)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 85), (8 * *(this + 174)));
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  v4 = result;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = 48 * v5 - 48;
    if (v7 < 0x30)
    {
      v8 = *result;
LABEL_7:
      v12 = &v6[6 * v5];
      do
      {
        *v8 = -4096;
        v8 += 6;
      }

      while (v8 != v12);
      goto LABEL_9;
    }

    v9 = v7 / 0x30 + 1;
    v8 = &v6[6 * (v9 & 0xFFFFFFFFFFFFFFELL)];
    v10 = *result;
    v11 = v9 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v10 = -4096;
      v10[6] = -4096;
      v10 += 12;
      v11 -= 2;
    }

    while (v11);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v13 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v14 = *(result + 16) - 1;
        v15 = v14 & ((v13 >> 4) ^ (v13 >> 9));
        v16 = *result + 48 * v15;
        v17 = *v16;
        if (v13 != *v16)
        {
          v22 = 0;
          v23 = 1;
          while (v17 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v17 == -8192;
            }

            if (v24)
            {
              v22 = v16;
            }

            v25 = v15 + v23++;
            v15 = v25 & v14;
            v16 = *v4 + 48 * v15;
            v17 = *v16;
            if (v13 == *v16)
            {
              goto LABEL_15;
            }
          }

          if (v22)
          {
            v16 = v22;
          }
        }

LABEL_15:
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = v13;
        *(v16 + 24) = 0;
        *(v16 + 8) = v3[1];
        v3[1] = 0;
        *(v16 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v18 = *(v16 + 20);
        *(v16 + 20) = *(v3 + 5);
        *(v3 + 5) = v18;
        v19 = *(v16 + 24);
        *(v16 + 24) = *(v3 + 6);
        *(v3 + 6) = v19;
        *(v16 + 32) = v16 + 48;
        *(v16 + 40) = 0;
        v20 = v16 + 32;
        if (*(v3 + 10))
        {
          llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(v20, v3 + 4);
        }

        ++*(v4 + 8);
        v21 = v3[4];
        if (v21 != v3 + 6)
        {
          free(v21);
        }

        llvm::deallocate_buffer(v3[1], (24 * *(v3 + 6)));
      }

      v3 += 6;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t llvm::interleaveComma<llvm::ArrayRef<mlir::Attribute>,mlir::AsmPrinter::Impl::printAttributeImpl(mlir::Attribute,mlir::AsmPrinter::Impl::AttrTypeElision)::$_1,llvm::raw_ostream,mlir::Attribute const>(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
    return result;
  }

  v6 = *result;
  v7 = **result;
  if (!v7)
  {
    result = *a3;
    v8 = *(*a3 + 32);
    if ((*(*a3 + 24) - v8) > 0x11)
    {
      *(v8 + 16) = 15934;
      *v8 = *"<<NULL ATTRIBUTE>>";
      *(result + 32) += 18;
      if (v3 == 1)
      {
        return result;
      }

LABEL_11:
      v9 = v6 + 1;
      v10 = 8 * v3 - 8;
      while (1)
      {
        v11 = a2[4];
        if (a2[3] - v11 > 1uLL)
        {
          *v11 = 8236;
          a2[4] += 2;
          v12 = *v9;
          if (*v9)
          {
LABEL_19:
            if ((result & 1) == 0)
            {
              result = mlir::AsmPrinter::Impl::printAttributeImpl(a3, v12, 1);
            }

            goto LABEL_13;
          }
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
          v12 = *v9;
          if (*v9)
          {
            goto LABEL_19;
          }
        }

        result = *a3;
        v13 = *(*a3 + 32);
        if ((*(*a3 + 24) - v13) > 0x11)
        {
          *(v13 + 16) = 15934;
          *v13 = *"<<NULL ATTRIBUTE>>";
          *(result + 32) += 18;
        }

        else
        {
          result = llvm::raw_ostream::write(result, "<<NULL ATTRIBUTE>>", 0x12uLL);
        }

LABEL_13:
        ++v9;
        v10 -= 8;
        if (!v10)
        {
          return result;
        }
      }
    }

    result = llvm::raw_ostream::write(result, "<<NULL ATTRIBUTE>>", 0x12uLL);
LABEL_8:
    if (v3 == 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (result)
  {
    goto LABEL_8;
  }

  result = mlir::AsmPrinter::Impl::printAttributeImpl(a3, v7, 1);
  if (v3 != 1)
  {
    goto LABEL_11;
  }

  return result;
}

void *llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_0>(__int128 **a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = (*a1)[1];
  v11 = **a1;
  v13 = *(&v4 + 1);
  v12 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v11, &v14);
  v5 = *v3;
  v6 = *(*v3 + 4);
  if (*(*v3 + 3) == v6)
  {
    llvm::raw_ostream::write(v5, "(", 1uLL);
    DWORD2(v11) = v15;
    if (v15 <= 0x40)
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::APInt::initSlowCase(&v11, &v14);
  }

  *v6 = 40;
  ++*(v5 + 4);
  DWORD2(v11) = v15;
  if (v15 > 0x40)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v11 = v14;
  printDenseIntElement(&v11, *v3, *a1[2]);
  if (DWORD2(v11) >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  v7 = *v3;
  v8 = *(*v3 + 4);
  if (*(*v3 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
    DWORD2(v11) = v17;
    if (v17 <= 0x40)
    {
      goto LABEL_11;
    }

LABEL_13:
    llvm::APInt::initSlowCase(&v11, &v16);
  }

  *v8 = 44;
  ++*(v7 + 4);
  DWORD2(v11) = v17;
  if (v17 > 0x40)
  {
    goto LABEL_13;
  }

LABEL_11:
  *&v11 = v16;
  printDenseIntElement(&v11, *v3, *a1[2]);
  if (DWORD2(v11) >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  result = *v3;
  v10 = *(*v3 + 4);
  if (*(*v3 + 3) == v10)
  {
    result = llvm::raw_ostream::write(result, ")", 1uLL);
    if (v17 < 0x41)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v10 = 41;
    ++result[4];
    if (v17 < 0x41)
    {
      goto LABEL_23;
    }
  }

  result = v16;
  if (v16)
  {
    result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

LABEL_23:
  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      return MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  return result;
}

void printDenseIntElement(llvm::APInt *a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v12 = a3;
  if (mlir::Type::isInteger(&v12, 1))
  {
    v5 = *(a1 + 2);
    if (v5 > 0x40)
    {
      v6 = llvm::APInt::countLeadingZerosSlowCase(a1) == v5;
    }

    else
    {
      v6 = *a1 == 0;
    }

    v8 = v6;
    if (v8)
    {
      v9 = "false";
    }

    else
    {
      v9 = "true";
    }

    if (v8)
    {
      v10 = 5;
    }

    else
    {
      v10 = 4;
    }

    v11 = *(a2 + 4);
    if (v10 <= *(a2 + 3) - v11)
    {
      memcpy(v11, v9, v10);
      *(a2 + 4) += v10;
    }

    else
    {
      llvm::raw_ostream::write(a2, v9, v10);
    }
  }

  else
  {
    isUnsignedInteger = mlir::Type::isUnsignedInteger(&v12);
    llvm::APInt::print(a1, a2, !isUnsignedInteger);
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_1>(__int128 **a1, unsigned int a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v17 = **a1;
  v19 = *(&v4 + 1);
  v20 = v3;
  v18 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v17, &v13);
  mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v13, &v17, v21);
  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
  }

  v5 = *v2;
  v6 = *(*v2 + 4);
  if (*(*v2 + 3) == v6)
  {
    v5 = llvm::raw_ostream::write(v5, "(", 1uLL);
  }

  else
  {
    *v6 = 40;
    ++*(v5 + 4);
  }

  v7 = v22[0];
  v8 = llvm::APFloatBase::PPCDoubleDouble(v5);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v17 + 1, v22);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((&v17 + 8), v22);
  }

  printFloatValue(&v17, *v2, 0);
  if (v8 == *(&v17 + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v17 + 8));
    v9 = *v2;
    v10 = *(*v2 + 4);
    if (*(*v2 + 3) != v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v17 + 8));
    v9 = *v2;
    v10 = *(*v2 + 4);
    if (*(*v2 + 3) != v10)
    {
LABEL_15:
      *v10 = 44;
      ++*(v9 + 4);
      goto LABEL_18;
    }
  }

  llvm::raw_ostream::write(v9, ",", 1uLL);
LABEL_18:
  if (v8 == v23[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v17 + 1, v23);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((&v17 + 8), v23);
  }

  printFloatValue(&v17, *v2, 0);
  if (v8 == *(&v17 + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v17 + 8));
    v11 = *v2;
    v12 = *(*v2 + 4);
    if (*(*v2 + 3) != v12)
    {
LABEL_23:
      *v12 = 41;
      ++*(v11 + 4);
      if (v8 != v23[0])
      {
        goto LABEL_24;
      }

LABEL_29:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v23);
      if (v8 != v22[0])
      {
        goto LABEL_25;
      }

LABEL_30:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v17 + 8));
    v11 = *v2;
    v12 = *(*v2 + 4);
    if (*(*v2 + 3) != v12)
    {
      goto LABEL_23;
    }
  }

  llvm::raw_ostream::write(v11, ")", 1uLL);
  if (v8 == v23[0])
  {
    goto LABEL_29;
  }

LABEL_24:
  llvm::detail::IEEEFloat::~IEEEFloat(v23);
  if (v8 == v22[0])
  {
    goto LABEL_30;
  }

LABEL_25:
  llvm::detail::IEEEFloat::~IEEEFloat(v22);
}

void mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(llvm::APInt *a1@<X1>, llvm::APFloatBase *a2@<X0>, uint64_t a3@<X8>)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 4);
  v14 = *(a1 + 2);
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, a1);
  }

  v13 = *a1;
  v7 = llvm::APFloatBase::PPCDoubleDouble(a2);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v6);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v16, v6, &v13);
  v8 = *(a2 + 4);
  v12 = *(a1 + 6);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, (a1 + 16));
  }

  v11 = *(a1 + 2);
  if (v7 == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v15, v8);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v15, v8, &v11);
  v9 = (a3 + 8);
  if (v7 == v16[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v16);
    v10 = (a3 + 40);
    if (v7 != v15[0])
    {
LABEL_7:
      llvm::detail::IEEEFloat::IEEEFloat(v10, v15);
      if (v7 != v15[0])
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v9, v16);
    v10 = (a3 + 40);
    if (v7 != v15[0])
    {
      goto LABEL_7;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, v15);
  if (v7 != v15[0])
  {
LABEL_8:
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
    if (v12 < 0x41)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
  if (v12 < 0x41)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

LABEL_19:
  if (v7 == v16[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
    if (v14 < 0x41)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
    if (v14 < 0x41)
    {
      return;
    }
  }

  if (v13)
  {
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_2>(__int128 **a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = (*a1)[1];
  v5 = **a1;
  v7 = *(&v4 + 1);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v5, &v8);
  printDenseIntElement(&v8, *v3, *a1[2]);
  if (v9 >= 0x41)
  {
    if (v8)
    {
      MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_3>(__int128 **a1, unsigned int a2)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v8 = **a1;
  v10 = *(&v4 + 1);
  v11 = v3;
  v9 = v4 + a2;
  v5 = mlir::DenseElementsAttr::IntElementIterator::operator*(&v8, &v12);
  v6 = v11;
  v7 = llvm::APFloatBase::PPCDoubleDouble(v5);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v15, v6);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v15, v6, &v12);
  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x259C63150](v12, 0x1000C8000313F17);
  }

  printFloatValue(v14, *v2, 0);
  if (v7 == v15[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v15);
  }
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>(llvm::raw_ostream ***a1, unsigned int a2)
{
  v2 = *a1;
  v3 = *a1[1] + 16 * a2;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = **a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(v4, v5, *v2);
  result = *v2;
  v9 = *(*v2 + 4);
  if (*(*v2 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(uint64_t a1, int a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = **a1;
  v9 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8);
  }

  v8 = 0;
  if (v4)
  {
    llvm::LoadIntFromMemory(&v8, (**(a1 + 8) + (**(a1 + 16) * a2)), **(a1 + 16));
  }

  if (mlir::Type::isIntOrIndex(*(a1 + 24)))
  {
    printDenseIntElement(&v8, *v3, **(a1 + 24));
    if (v9 < 0x41)
    {
      return;
    }
  }

  else
  {
    v7 = **(a1 + 24);
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v7);
    v6 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
    if (v6 == FloatSemantics)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, FloatSemantics);
    }

    llvm::detail::IEEEFloat::IEEEFloat(v11, FloatSemantics, &v8);
    printFloatValue(v10, *v3, 0);
    if (v6 == v11[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v11);
      if (v9 < 0x41)
      {
        return;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v11);
      if (v9 < 0x41)
      {
        return;
      }
    }
  }

  if (v8)
  {
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
  }
}

unint64_t *llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(unint64_t *result, unint64_t *a2, llvm::raw_ostream *this, llvm::raw_ostream *a4, uint64_t a5)
{
  if (result != a2)
  {
    v9 = result;
    if (*result == 0x8000000000000000)
    {
      v10 = *(this + 4);
      if (*(this + 3) == v10)
      {
        result = llvm::raw_ostream::write(this, "?", 1uLL);
        v11 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      else
      {
        *v10 = 63;
        ++*(this + 4);
        v11 = result + 1;
        if (result + 1 == a2)
        {
          return result;
        }
      }
    }

    else
    {
      result = llvm::raw_ostream::operator<<(this, *result);
      v11 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }

    do
    {
      v12 = *a5;
      v13 = *(a5 + 8);
      result = *(a4 + 4);
      if (v13 <= *(a4 + 3) - result)
      {
        if (v13)
        {
          v14 = *(a5 + 8);
          result = memcpy(result, v12, v13);
          *(a4 + 4) += v14;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(a4, v12, v13);
      }

      if (*v11 == 0x8000000000000000)
      {
        v15 = *(this + 4);
        if (*(this + 3) == v15)
        {
          result = llvm::raw_ostream::write(this, "?", 1uLL);
        }

        else
        {
          *v15 = 63;
          ++*(this + 4);
        }
      }

      else
      {
        result = llvm::raw_ostream::operator<<(this, *v11);
      }

      ++v11;
    }

    while (v11 != a2);
  }

  return result;
}

void *mlir::NamedAttribute::NamedAttribute(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t mlir::NamedAttribute::operator<(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v13 = *a1;
  v14 = v2;
  if (v13 == v2)
  {
    return 0;
  }

  Value = mlir::StringAttr::getValue(&v13);
  v5 = v4;
  v6 = mlir::StringAttr::getValue(&v14);
  v8 = v7;
  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = memcmp(Value, v6, v9);
    if (v10)
    {
      return ((v10 >> 31) | 1u) >> 31;
    }
  }

  if (v5 < v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v5 == v8)
  {
    v12 = 0;
  }

  return v12 >> 31;
}

uint64_t mlir::NamedAttribute::operator<(uint64_t *a1, const void *a2, size_t a3)
{
  v12 = *a1;
  Value = mlir::StringAttr::getValue(&v12);
  v7 = v6;
  if (a3 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = a3;
  }

  if (v8)
  {
    v9 = memcmp(Value, a2, v8);
    if (v9)
    {
      return ((v9 >> 31) | 1u) >> 31;
    }
  }

  if (v7 < a3)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v7 == a3)
  {
    v11 = 0;
  }

  return v11 >> 31;
}

uint64_t mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v18 = a2;
  v19 = a4;
  LODWORD(v20) = 1;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>(a1 + 48, &v18, &v20, &v16);
  if ((v17 & 1) == 0)
  {
    return *(v16 + 16);
  }

  if (a4 == 1 && (v23 = 1, v24 = 1, v20 = &v23, v21 = a1, v22 = &v24, mlir::AbstractAttribute::walkImmediateSubElements(*a2), !v23))
  {
LABEL_9:
    v13 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](a1 + 48, &v18);
    result = 0;
    *v13 = 0;
  }

  else
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    while (v9 != v8)
    {
      v20 = a2;
      v11 = *(v9 - 8);
      if (!v11)
      {
        v15 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::AttrTypeWalker::walkImpl(v15);
      }

      v12 = (*(*v11 + 48))(v11, &v20);
      if (v12 == 2)
      {
        return 1;
      }

      v9 -= 32;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    if (a4)
    {
      return 1;
    }

    v23 = 1;
    v24 = 0;
    v20 = &v23;
    v21 = a1;
    v22 = &v24;
    mlir::AbstractAttribute::walkImmediateSubElements(*a2);
    return v23 != 0;
  }

  return result;
}

uint64_t mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v19 = a2;
  v20 = a4;
  LODWORD(v21) = 1;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>(a1 + 48, &v19, &v21, &v17);
  if ((v18 & 1) == 0)
  {
    return *(v17 + 16);
  }

  if (a4 == 1 && (v24 = 1, v25 = 1, v21 = &v24, v22 = a1, v23 = &v25, mlir::AbstractType::walkImmediateSubElements(*a2), !v24))
  {
LABEL_9:
    v13 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](a1 + 48, &v19);
    result = 0;
    *v13 = 0;
  }

  else
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    while (v9 != v8)
    {
      v21 = a2;
      v11 = *(v9 - 8);
      if (!v11)
      {
        v15 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(v15, v16);
      }

      v12 = (*(*v11 + 48))(v11, &v21);
      if (v12 == 2)
      {
        return 1;
      }

      v9 -= 32;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    if (a4)
    {
      return 1;
    }

    v24 = 1;
    v25 = 0;
    v21 = &v24;
    v22 = a1;
    v23 = &v25;
    mlir::AbstractType::walkImmediateSubElements(*a2);
    return v24 != 0;
  }

  return result;
}

void mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(uint64_t a1, mlir::Operation *this, int a3, int a4, int a5)
{
  if (a3)
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(this);
    v75 = AttrDictionary;
    llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v75, &v75, v73);
    if (v74)
    {
      mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
    }

    v10 = *(v73[0] + 8);
    if (v10)
    {
      v11 = v10 == AttrDictionary;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      mlir::Operation::setAttrs(this, v10);
    }
  }

  if ((a4 & 1) != 0 || a5)
  {
    if (a4)
    {
      v12 = *(this + 3);
      v75 = v12;
      llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v75, &v75, v73);
      if (v74)
      {
        mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
      }

      v13 = *(v73[0] + 8);
      if (v13)
      {
        v14 = v13 == v12;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        *(this + 3) = v13;
      }
    }

    if (a5)
    {
      v15 = *(this + 9);
      v16 = v15 ? this - 16 : 0;
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, i);
          v19 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
          v75 = v19;
          llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v75, &v75, v73);
          if (v74)
          {
            mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
          }

          v20 = *(v73[0] + 8);
          if (v20)
          {
            v21 = v20 == v19;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | v20;
          }
        }
      }
    }

    v22 = *(this + 11);
    if ((v22 & 0x7FFFFF) != 0)
    {
      v23 = ((this + 16 * ((v22 >> 23) & 1) + ((v22 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
      v24 = v23 + 24 * (v22 & 0x7FFFFF);
      do
      {
        for (j = *(v23 + 8); j != v23; j = *(j + 8))
        {
          v26 = j - 8;
          if (!j)
          {
            v26 = 0;
          }

          v27 = *(v26 + 48);
          v28 = *(v26 + 56);
          while (v27 != v28)
          {
            if (a4)
            {
              v29 = *(*v27 + 32);
              v30 = *(a1 + 64);
              if (!v30)
              {
                goto LABEL_90;
              }

              v31 = *(a1 + 48);
              v32 = ((v29 >> 4) ^ (v29 >> 9)) & (v30 - 1);
              v33 = (v31 + 16 * v32);
              v34 = *v33;
              if (v29 != *v33)
              {
                v43 = 0;
                v44 = 1;
                while (v34 != -4096)
                {
                  if (v43)
                  {
                    v45 = 0;
                  }

                  else
                  {
                    v45 = v34 == -8192;
                  }

                  if (v45)
                  {
                    v43 = v33;
                  }

                  v46 = v32 + v44++;
                  v32 = v46 & (v30 - 1);
                  v33 = (v31 + 16 * v32);
                  v34 = *v33;
                  if (v29 == *v33)
                  {
                    goto LABEL_47;
                  }
                }

                if (v43)
                {
                  v51 = v43;
                }

                else
                {
                  v51 = v33;
                }

                v52 = *(a1 + 56);
                if (4 * v52 + 4 < 3 * v30)
                {
                  if (v30 + ~v52 - *(a1 + 60) <= v30 >> 3)
                  {
                    goto LABEL_91;
                  }

                  *(a1 + 56) = v52 + 1;
                  if (*v51 == -4096)
                  {
LABEL_53:
                    *v51 = v29;
                    v51[1] = v29;
                    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
                  }
                }

                else
                {
LABEL_90:
                  v30 *= 2;
LABEL_91:
                  llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(a1 + 48, v30);
                  v53 = *(a1 + 64);
                  if (v53)
                  {
                    v54 = *(a1 + 48);
                    v55 = v53 - 1;
                    v56 = (v53 - 1) & ((v29 >> 4) ^ (v29 >> 9));
                    v51 = (v54 + 16 * v56);
                    v57 = *v51;
                    if (v29 != *v51)
                    {
                      v58 = 0;
                      v59 = 1;
                      while (v57 != -4096)
                      {
                        if (v58)
                        {
                          v60 = 0;
                        }

                        else
                        {
                          v60 = v57 == -8192;
                        }

                        if (v60)
                        {
                          v58 = v51;
                        }

                        v61 = v56 + v59++;
                        v56 = v61 & v55;
                        v51 = (v54 + 16 * (v61 & v55));
                        v57 = *v51;
                        if (v29 == *v51)
                        {
                          goto LABEL_119;
                        }
                      }

                      if (v58)
                      {
                        v51 = v58;
                      }
                    }
                  }

                  else
                  {
                    v51 = 0;
                  }

LABEL_119:
                  ++*(a1 + 56);
                  if (*v51 == -4096)
                  {
                    goto LABEL_53;
                  }
                }

                --*(a1 + 60);
                goto LABEL_53;
              }

LABEL_47:
              v35 = *(v31 + 16 * v32 + 8);
              if (v35 && v35 != v29)
              {
                *(*v27 + 32) = v35;
              }
            }

            if (a5)
            {
              v36 = *(*v27 + 8) & 0xFFFFFFFFFFFFFFF8;
              v37 = *(a1 + 64);
              if (!v37)
              {
                goto LABEL_106;
              }

              v38 = *(a1 + 48);
              v39 = ((v36 >> 4) ^ (v36 >> 9)) & (v37 - 1);
              v40 = (v38 + 16 * v39);
              v41 = *v40;
              if (*v40 != v36)
              {
                v47 = 0;
                v48 = 1;
                while (v41 != -4096)
                {
                  if (v47)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 = v41 == -8192;
                  }

                  if (v49)
                  {
                    v47 = v40;
                  }

                  v50 = v39 + v48++;
                  v39 = v50 & (v37 - 1);
                  v40 = (v38 + 16 * v39);
                  v41 = *v40;
                  if (*v40 == v36)
                  {
                    goto LABEL_59;
                  }
                }

                if (v47)
                {
                  v62 = v47;
                }

                else
                {
                  v62 = v40;
                }

                v63 = *(a1 + 56);
                if (4 * v63 + 4 < 3 * v37)
                {
                  if (v37 + ~v63 - *(a1 + 60) <= v37 >> 3)
                  {
                    goto LABEL_107;
                  }

                  *(a1 + 56) = v63 + 1;
                  if (*v62 == -4096)
                  {
LABEL_65:
                    *v62 = v36;
                    v62[1] = v36;
                    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
                  }
                }

                else
                {
LABEL_106:
                  v37 *= 2;
LABEL_107:
                  llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(a1 + 48, v37);
                  v64 = *(a1 + 64);
                  if (v64)
                  {
                    v65 = *(a1 + 48);
                    v66 = v64 - 1;
                    v67 = (v64 - 1) & ((v36 >> 4) ^ (v36 >> 9));
                    v62 = (v65 + 16 * v67);
                    v68 = *v62;
                    if (*v62 != v36)
                    {
                      v69 = 0;
                      v70 = 1;
                      while (v68 != -4096)
                      {
                        if (v69)
                        {
                          v71 = 0;
                        }

                        else
                        {
                          v71 = v68 == -8192;
                        }

                        if (v71)
                        {
                          v69 = v62;
                        }

                        v72 = v67 + v70++;
                        v67 = v72 & v66;
                        v62 = (v65 + 16 * (v72 & v66));
                        v68 = *v62;
                        if (*v62 == v36)
                        {
                          goto LABEL_122;
                        }
                      }

                      if (v69)
                      {
                        v62 = v69;
                      }
                    }
                  }

                  else
                  {
                    v62 = 0;
                  }

LABEL_122:
                  ++*(a1 + 56);
                  if (*v62 == -4096)
                  {
                    goto LABEL_65;
                  }
                }

                --*(a1 + 60);
                goto LABEL_65;
              }

LABEL_59:
              v42 = *(v38 + 16 * v39 + 8);
              if (v42)
              {
                if (v42 != v36)
                {
                  *(*v27 + 8) = *(*v27 + 8) & 7 | v42;
                }
              }
            }

            v27 += 8;
          }
        }

        v23 += 24;
      }

      while (v23 != v24);
    }
  }
}

uint64_t mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(uint64_t a1, mlir::ForwardIterator *a2, char a3, char a4, char a5)
{
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6[0] = a1;
  v6[1] = &v9;
  v6[2] = &v8;
  v6[3] = &v7;
  return mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(mlir::Operation *,BOOL,BOOL,BOOL)::{lambda(mlir::Operation *)#1}>, v6, 1);
}

uint64_t mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(a1, a2);
    a1[1] = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        *(v3 + 24) = v3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
      }

      else
      {
        *(v3 + 24) = v4;
        *(a2 + 24) = 0;
      }

      result = v3 + 32;
      a1[1] = v3 + 32;
    }

    else
    {
      *(v3 + 24) = 0;
      result = v3 + 32;
      a1[1] = v3 + 32;
    }
  }

  return result;
}

{
  v3 = a1[4];
  if (v3 >= a1[5])
  {
    result = std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>(a1 + 3, a2);
    a1[4] = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        *(v3 + 24) = v3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
      }

      else
      {
        *(v3 + 24) = v4;
        *(a2 + 24) = 0;
      }

      result = v3 + 32;
      a1[4] = v3 + 32;
    }

    else
    {
      *(v3 + 24) = 0;
      result = v3 + 32;
      a1[4] = v3 + 32;
    }
  }

  return result;
}

uint64_t *mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(uint64_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
LABEL_5:
    if (!a2)
    {
      return a2;
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 - 8);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v5 + 48))(&v8);
      if (v10[0])
      {
        break;
      }

      v4 -= 32;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    a2 = v8;
    if (v9)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    if (v9 == 2)
    {
      return a2;
    }
  }

  v8 = v10;
  v9 = 0x1000000000;
  mlir::AbstractAttribute::walkImmediateSubElements(*a2);
  if (v8 != v10)
  {
    free(v8);
  }

  return a2;
}

uint64_t *mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == v3)
  {
LABEL_5:
    if (!a2)
    {
      return a2;
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 - 8);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v5 + 48))(&v8);
      if (v10[0])
      {
        break;
      }

      v4 -= 32;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    a2 = v8;
    if (v9)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    if (v9 == 2)
    {
      return a2;
    }
  }

  v8 = v10;
  v9 = 0x1000000000;
  mlir::AbstractType::walkImmediateSubElements(*a2);
  if (v8 != v10)
  {
    free(v8);
  }

  return a2;
}

uint64_t mlir::AttrTypeReplacer::replace(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v5, &v5, &v3);
  if (v4)
  {
    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
  }

  return *(v3 + 8);
}

{
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v5, &v5, &v3);
  if (v4)
  {
    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase();
  }

  return *(v3 + 8);
}

void mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceElementsIn(uint64_t a1, mlir::Operation *this, int a3, int a4, int a5)
{
  if (a3)
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(this);
    mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, AttrDictionary & 0xFFFFFFFFFFFFFFFBLL, &v40);
    if ((v42 & 1) == 0)
    {
      mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
    }

    if (v41 != AttrDictionary && v41)
    {
      mlir::Operation::setAttrs(this, v41);
    }
  }

  if ((a4 & 1) != 0 || a5)
  {
    if (a4)
    {
      v10 = *(this + 3);
      mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, v10 & 0xFFFFFFFFFFFFFFFBLL, &v40);
      if ((v42 & 1) == 0)
      {
        mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
      }

      if (v41 != v10 && v41)
      {
        *(this + 3) = v41;
      }
    }

    if (a5)
    {
      v11 = *(this + 9);
      v12 = v11 ? this - 16 : 0;
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, i);
          v15 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
          mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, v15 | 4, &v40);
          if ((v42 & 1) == 0)
          {
            mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
          }

          if (v41 != v15 && v41 != 0)
          {
            *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | v41;
          }
        }
      }
    }

    v17 = *(this + 11);
    if ((v17 & 0x7FFFFF) != 0)
    {
      v18 = ((this + 16 * ((v17 >> 23) & 1) + ((v17 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
      v19 = v18 + 24 * (v17 & 0x7FFFFF);
      if (a5)
      {
        if (a4)
        {
          do
          {
            for (j = *(v18 + 8); j != v18; j = *(j + 8))
            {
              v21 = j - 8;
              if (!j)
              {
                v21 = 0;
              }

              v22 = *(v21 + 48);
              v23 = *(v21 + 56);
              while (v22 != v23)
              {
                v24 = *(*v22 + 32);
                mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, v24 & 0xFFFFFFFFFFFFFFFBLL, &v40);
                if ((v42 & 1) == 0)
                {
                  mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
                }

                if (v41 != v24 && v41 != 0)
                {
                  *(*v22 + 32) = v41;
                }

                v26 = *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8;
                mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, v26 | 4, &v40);
                if ((v42 & 1) == 0)
                {
                  mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
                }

                if (v41 != v26 && v41 != 0)
                {
                  *(*v22 + 8) = *(*v22 + 8) & 7 | v41;
                }

                v22 += 8;
              }
            }

            v18 += 24;
          }

          while (v18 != v19);
        }

        else
        {
          do
          {
            for (k = *(v18 + 8); k != v18; k = *(k + 8))
            {
              v29 = k - 8;
              if (!k)
              {
                v29 = 0;
              }

              v30 = *(v29 + 48);
              v31 = *(v29 + 56);
              while (v30 != v31)
              {
                v32 = *(*v30 + 8) & 0xFFFFFFFFFFFFFFF8;
                mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, v32 | 4, &v40);
                if ((v42 & 1) == 0)
                {
                  mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
                }

                if (v41 != v32 && v41 != 0)
                {
                  *(*v30 + 8) = *(*v30 + 8) & 7 | v41;
                }

                v30 += 8;
              }
            }

            v18 += 24;
          }

          while (v18 != v19);
        }
      }

      else if (a4)
      {
        do
        {
          for (m = *(v18 + 8); m != v18; m = *(m + 8))
          {
            v35 = m - 8;
            if (!m)
            {
              v35 = 0;
            }

            v36 = *(v35 + 48);
            v37 = *(v35 + 56);
            while (v36 != v37)
            {
              v38 = *(*v36 + 32);
              mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, v38 & 0xFFFFFFFFFFFFFFFBLL, &v40);
              if ((v42 & 1) == 0)
              {
                mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
              }

              if (v41 != v38 && v41 != 0)
              {
                *(*v36 + 32) = v41;
              }

              v36 += 8;
            }
          }

          v18 += 24;
        }

        while (v18 != v19);
      }
    }
  }
}

uint64_t mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::recursivelyReplaceElementsIn(uint64_t a1, mlir::ForwardIterator *a2, char a3, char a4, char a5)
{
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6[0] = a1;
  v6[1] = &v9;
  v6[2] = &v8;
  v6[3] = &v7;
  return mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::recursivelyReplaceElementsIn(mlir::Operation *,BOOL,BOOL,BOOL)::{lambda(mlir::Operation *)#1}>, v6, 1);
}

uint64_t mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::addReplacement(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(a1, a2);
    a1[1] = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        *(v3 + 24) = v3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
      }

      else
      {
        *(v3 + 24) = v4;
        *(a2 + 24) = 0;
      }

      result = v3 + 32;
      a1[1] = v3 + 32;
    }

    else
    {
      *(v3 + 24) = 0;
      result = v3 + 32;
      a1[1] = v3 + 32;
    }
  }

  return result;
}

{
  v3 = a1[4];
  if (v3 >= a1[5])
  {
    result = std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>(a1 + 3, a2);
    a1[4] = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        *(v3 + 24) = v3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
      }

      else
      {
        *(v3 + 24) = v4;
        *(a2 + 24) = 0;
      }

      result = v3 + 32;
      a1[4] = v3 + 32;
    }

    else
    {
      *(v3 + 24) = 0;
      result = v3 + 32;
      a1[4] = v3 + 32;
    }
  }

  return result;
}

uint64_t *mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase(uint64_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
LABEL_5:
    if (!a2)
    {
      return a2;
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 - 8);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v5 + 48))(&v8);
      if (v10[0])
      {
        break;
      }

      v4 -= 32;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    a2 = v8;
    if (v9)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    if (v9 == 2)
    {
      return a2;
    }
  }

  v8 = v10;
  v9 = 0x1000000000;
  mlir::AbstractAttribute::walkImmediateSubElements(*a2);
  if (v8 != v10)
  {
    free(v8);
  }

  return a2;
}

uint64_t *mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == v3)
  {
LABEL_5:
    if (!a2)
    {
      return a2;
    }
  }

  else
  {
    while (1)
    {
      v5 = *(v4 - 8);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v5 + 48))(&v8);
      if (v10[0])
      {
        break;
      }

      v4 -= 32;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    a2 = v8;
    if (v9)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    if (v9 == 2)
    {
      return a2;
    }
  }

  v8 = v10;
  v9 = 0x1000000000;
  mlir::AbstractType::walkImmediateSubElements(*a2);
  if (v8 != v10)
  {
    free(v8);
  }

  return a2;
}

double mlir::CyclicAttrTypeReplacer::CyclicAttrTypeReplacer(mlir::CyclicAttrTypeReplacer *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 15) = this + 96;
  *(this + 16) = 0;
  *(this + 12) = &unk_28689A998;
  *(this + 13) = this;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 42) = 0;
  *(this + 152) = 0u;
  *(this + 22) = this + 192;
  *&result = 0x100000000;
  *(this + 23) = 0x100000000;
  *(this + 64) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 264) = 0;
  return result;
}

{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 15) = this + 96;
  *(this + 16) = 0;
  *(this + 12) = &unk_28689A998;
  *(this + 13) = this;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 42) = 0;
  *(this + 152) = 0u;
  *(this + 22) = this + 192;
  *&result = 0x100000000;
  *(this + 23) = 0x100000000;
  *(this + 64) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 264) = 0;
  return result;
}

uint64_t mlir::CyclicAttrTypeReplacer::addCycleBreaker(void *a1, uint64_t a2)
{
  v3 = a1[7];
  if (v3 >= a1[8])
  {
    result = std::vector<std::function<std::optional<mlir::Attribute> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<mlir::Attribute> ()(mlir::Attribute)>>(a1 + 6, a2);
    a1[7] = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        *(v3 + 24) = v3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
      }

      else
      {
        *(v3 + 24) = v4;
        *(a2 + 24) = 0;
      }

      result = v3 + 32;
      a1[7] = v3 + 32;
    }

    else
    {
      *(v3 + 24) = 0;
      result = v3 + 32;
      a1[7] = v3 + 32;
    }
  }

  return result;
}

{
  v3 = a1[10];
  if (v3 >= a1[11])
  {
    result = std::vector<std::function<std::optional<mlir::Type> ()(mlir::Type)>>::__emplace_back_slow_path<std::function<std::optional<mlir::Type> ()(mlir::Type)>>(a1 + 9, a2);
    a1[10] = result;
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        *(v3 + 24) = v3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
      }

      else
      {
        *(v3 + 24) = v4;
        *(a2 + 24) = 0;
      }

      result = v3 + 32;
      a1[10] = v3 + 32;
    }

    else
    {
      *(v3 + 24) = 0;
      result = v3 + 32;
      a1[10] = v3 + 32;
    }
  }

  return result;
}

uint64_t mlir::CyclicAttrTypeReplacer::replace(uint64_t a1, uint64_t a2)
{
  mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, a2 & 0xFFFFFFFFFFFFFFFBLL, v3);
  if ((v4 & 1) == 0)
  {
    mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
  }

  return v3[2];
}

{
  mlir::CyclicReplacerCache<void *,void const*>::lookupOrInit(a1 + 96, a2 | 4, v3);
  if ((v4 & 1) == 0)
  {
    mlir::detail::AttrTypeReplacerBase<mlir::CyclicAttrTypeReplacer>::replaceBase();
  }

  return v3[2];
}

uint64_t mlir::CyclicAttrTypeReplacer::breakCycleImpl(mlir::CyclicAttrTypeReplacer *this, unint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v2)
  {
    v4 = *(this + 6);
    for (i = *(this + 7); i != v4; i -= 32)
    {
      v15 = v2;
      v5 = *(i - 8);
      if (!v5)
      {
        goto LABEL_16;
      }

      result = (*(*v5 + 48))(v5, &v15);
      if (v7)
      {
        return result;
      }
    }
  }

  else
  {
    v8 = a2 & 0xFFFFFFFFFFFFFFF8 & ((a2 << 61) >> 63);
    v10 = *(this + 9);
    for (j = *(this + 10); j != v10; j -= 32)
    {
      v15 = v8;
      v11 = *(j - 8);
      if (!v11)
      {
LABEL_16:
        v13 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::AttrTypeImmediateSubElementWalker::walk(v13, v14);
      }

      result = (*(*v11 + 48))(v11, &v15);
      if (v12)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t mlir::AttrTypeImmediateSubElementWalker::walk(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*result)(*(result + 8));
  }

  return result;
}

{
  if (a2)
  {
    return (*(result + 16))(*(result + 24));
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = *result;
  v6 = *(a2 + 8);
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v8 = v4 - 1;
  v9 = (v4 - 1) & ((v7 >> 31) ^ v7);
  v10 = *result + 24 * v9;
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*a2 != *v10 || v6 != v12)
  {
    v16 = 0;
    v17 = 1;
    while (v11 != -4096 || v12 != 0x7FFFFFFF)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12 == 0x80000000;
      }

      if (v18 && v11 == -8192)
      {
        v16 = v10;
      }

      v20 = v9 + v17++;
      v9 = v20 & v8;
      v10 = v5 + 24 * (v20 & v8);
      v11 = *v10;
      v12 = *(v10 + 8);
      if (*a2 == *v10 && v6 == v12)
      {
        goto LABEL_7;
      }
    }

    if (v16)
    {
      v10 = v16;
    }

LABEL_9:
    v26 = v10;
    v15 = *(result + 8);
    if (4 * v15 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v15 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v15 + 1;
      if (*v10 != -4096)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v22 = result;
    v23 = a2;
    v24 = a4;
    v25 = a3;
    llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(v22, v23, &v26);
    a2 = v23;
    a3 = v25;
    result = v22;
    a4 = v24;
    v10 = v26;
    ++*(v22 + 8);
    if (*v10 != -4096)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (*(v10 + 8) == 0x7FFFFFFF)
    {
LABEL_14:
      *v10 = *a2;
      *(v10 + 8) = *(a2 + 8);
      *(v10 + 16) = *a3;
      v5 = *result;
      v4 = *(result + 16);
      v14 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 12);
    goto LABEL_14;
  }

LABEL_7:
  v14 = 0;
LABEL_15:
  *a4 = v10;
  *(a4 + 8) = v5 + 24 * v4;
  *(a4 + 16) = v14;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = 0xBF58476D1CE4E5B9 * ((37 * v3) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v5 = v2 - 1;
    v6 = (v2 - 1) & ((v4 >> 31) ^ v4);
    v7 = *a1 + 24 * v6;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*a2 == *v7 && v3 == v9)
    {
      return v7 + 16;
    }

    v13 = 0;
    v14 = 1;
    while (v8 != -4096 || v9 != 0x7FFFFFFF)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == 0x80000000;
      }

      if (v15 && v8 == -8192)
      {
        v13 = v7;
      }

      v17 = v6 + v14++;
      v6 = v17 & v5;
      v7 = *a1 + 24 * (v17 & v5);
      v8 = *v7;
      v9 = *(v7 + 8);
      if (*a2 == *v7 && v3 == v9)
      {
        return v7 + 16;
      }
    }

    if (v13)
    {
      v7 = v13;
    }
  }

  else
  {
    v7 = 0;
  }

  v21 = v7;
  v12 = *(a1 + 8);
  if (4 * v12 + 4 >= 3 * v2)
  {
    v19 = a2;
    v2 *= 2;
    goto LABEL_35;
  }

  if (v2 + ~v12 - *(a1 + 12) <= v2 >> 3)
  {
    v19 = a2;
LABEL_35:
    v20 = a1;
    llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(v20, v19, &v21);
    a1 = v20;
    a2 = v19;
    v7 = v21;
    ++*(v20 + 8);
    if (*v7 != -4096)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(a1 + 8) = v12 + 1;
  if (*v7 != -4096)
  {
LABEL_13:
    --*(a1 + 12);
    goto LABEL_14;
  }

LABEL_12:
  if (*(v7 + 8) != 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

LABEL_14:
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = 1;
  return v7 + 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *(a2 + 8);
    v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v7 = (v6 >> 31) ^ v6;
    v8 = v3 - 1;
    v9 = (v3 - 1) & v7;
    v10 = *a1 + 24 * v9;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*a2 == *v10 && v5 == v12)
    {
      result = 1;
      *a3 = v10;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      result = 1;
      while (v11 != -4096 || v12 != 0x7FFFFFFF)
      {
        if (v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = v12 == 0x80000000;
        }

        if (v17 && v11 == -8192)
        {
          v14 = v10;
        }

        v19 = v9 + v15++;
        v9 = v19 & v8;
        v10 = v4 + 24 * (v19 & v8);
        v11 = *v10;
        v12 = *(v10 + 8);
        if (*a2 == *v10 && v5 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v14)
      {
        v10 = v14;
      }

      *a3 = v10;
    }
  }

  else
  {
    v10 = 0;
    result = 0;
LABEL_9:
    *a3 = v10;
  }

  return result;
}

char *llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    v13 = result;
    if (v12 < 0x18)
    {
      goto LABEL_13;
    }

    v14 = v12 / 0x18 + 1;
    v13 = &result[24 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
    v15 = result + 24;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v15 - 3) = -4096;
      *v15 = -4096;
      *(v15 - 4) = 0x7FFFFFFF;
      *(v15 + 2) = 0x7FFFFFFF;
      v15 += 48;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_13:
      v17 = &result[24 * v11];
      do
      {
        *v13 = -4096;
        *(v13 + 2) = 0x7FFFFFFF;
        v13 += 24;
      }

      while (v13 != v17);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::moveFromOldBuckets(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  result[1] = 0;
  v3 = *(result + 4);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    v6 = *result;
    if (v5 < 0x18)
    {
      goto LABEL_6;
    }

    v7 = v5 / 0x18 + 1;
    v6 = v4 + 24 * (v7 & 0x1FFFFFFFFFFFFFFELL);
    v8 = v4 + 24;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v8 - 24) = -4096;
      *v8 = -4096;
      *(v8 - 16) = 0x7FFFFFFF;
      *(v8 + 8) = 0x7FFFFFFF;
      v8 += 48;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_6:
      v10 = v4 + 24 * v3;
      do
      {
        *v6 = -4096;
        *(v6 + 8) = 0x7FFFFFFF;
        v6 += 24;
      }

      while (v6 != v10);
    }
  }

  for (; a2 != a3; a2 += 3)
  {
    v21 = *a2;
    v22 = *(a2 + 2);
    if ((*a2 != -4096 || v22 != 0x7FFFFFFF) && (v21 != -8192 || v22 != 0x80000000))
    {
      v25 = 0xBF58476D1CE4E5B9 * ((37 * v22) | (((v21 >> 4) ^ (v21 >> 9)) << 32));
      v26 = (v25 >> 31) ^ v25;
      v27 = *(result + 4) - 1;
      v16 = v27 & v26;
      v17 = *result + 24 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v21 != *v17 || v22 != v19)
      {
        v13 = 0;
        v15 = 1;
        while (v18 != -4096 || v19 != 0x7FFFFFFF)
        {
          if (v13)
          {
            v11 = 0;
          }

          else
          {
            v11 = v19 == 0x80000000;
          }

          if (v11 && v18 == -8192)
          {
            v13 = v17;
          }

          v14 = v16 + v15++;
          v16 = v14 & v27;
          v17 = *result + 24 * (v14 & v27);
          v18 = *v17;
          v19 = *(v17 + 8);
          if (v21 == *v17 && v22 == v19)
          {
            goto LABEL_27;
          }
        }

        if (v13)
        {
          v17 = v13;
        }
      }

LABEL_27:
      *v17 = v21;
      *(v17 + 8) = v22;
      *(v17 + 16) = *(a2 + 4);
      ++*(result + 2);
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*(result + 8));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(*(result + 8), a2, (*(result + 8) + 24), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*(result + 8));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (**result)
    {
      v2 = result;
      result = mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(*(result + 8));
      **v2 = result;
    }
  }

  return result;
}

uint64_t std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = 32 * v2;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = v8;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v9 = v7 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = v7 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v7 + v12;
    do
    {
      v16 = v14[3];
      if (v16)
      {
        if (v14 == v16)
        {
          *(v15 + 24) = v15;
          (*(*v14[3] + 24))(v14[3], v15);
        }

        else
        {
          *(v15 + 24) = v16;
          v14[3] = 0;
        }
      }

      else
      {
        *(v15 + 24) = 0;
      }

      v14 += 4;
      v15 += 32;
    }

    while (v14 != v11);
    v17 = v10;
    do
    {
      v18 = v10[3];
      if (v10 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v10 += 4;
      v17 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}