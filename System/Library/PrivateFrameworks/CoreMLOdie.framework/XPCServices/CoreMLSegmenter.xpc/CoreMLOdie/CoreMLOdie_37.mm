void *mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  result = sub_100200BB8(this);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v6);
  }

  v3 = *(*result + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v6);
  }

  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_100200BB8(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v16);
  }

  v6 = *(*Ref + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = Ref;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v16);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *this;
  if (a2)
  {
    while (1)
    {
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v11);
      v10 = ParentOp;
      if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        result = mlir::SymbolTableCollection::lookupSymbolIn(a2, ParentOp, v9);
        if (result)
        {
          goto LABEL_31;
        }

        return result;
      }
    }

    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, 0, v9);
    if (result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    while (1)
    {
      v14 = *(v10 + 16);
      if (!v14)
      {
        break;
      }

      v15 = mlir::Block::getParentOp(v14);
      v10 = v15;
      if (!v15 || *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_30;
      }
    }

    v10 = 0;
LABEL_30:
    result = mlir::SymbolTable::lookupSymbolIn(v10, v9);
LABEL_31:
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::parse(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  if ((*(*this + 408))(this, "shim", 4))
  {
    v5 = *(*(*(a2 + 1) + 96) + 8);
    v6 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v6, v7);
    mlir::NamedAttribute::NamedAttribute(&v49, v5, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v49, v50);
  }

  v31 = 0;
  v32 = 0;
  if (((*(*this + 160))(this) & 1) == 0)
  {
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v31))
    {
      goto LABEL_23;
    }

    return 0;
  }

  v49 = 0;
  if (!sub_1001F47C4(this, &v49, 0) || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v9 = v49;
  if (v49)
  {
    v10 = *v49;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1002A30CC();
      v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    v14 = v12;
    v15 = v13;
    do
    {
      v16 = v15 >> 1;
      v17 = &v14[2 * (v15 >> 1)];
      v19 = *v17;
      v18 = v17 + 2;
      v15 += ~(v15 >> 1);
      if (v19 < v11)
      {
        v14 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      goto LABEL_22;
    }
  }

LABEL_21:
  v21 = 0;
LABEL_22:
  v31 = v9;
  v32 = v21;
LABEL_23:
  v53 = &_mh_execute_header;
  v49 = v51;
  v50 = 0x400000000;
  v51[8] = 4;
  v52 = v54;
  v46 = v48;
  v47 = 0x600000000;
  v43 = v45;
  v44 = 0x600000000;
  v40 = v42;
  v41 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  if ((*(*this + 720))(this, &v52, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 488))(this, &v49) & 1) != 0 && ((*(*this + 104))(this) & 1) != 0 && (mlir::call_interface_impl::parseFunctionSignature(this, &v46, &v40, &v43, &v37, 1))
  {
    v34 = v36;
    v35 = 0x600000000;
    if (v53 && v47)
    {
      v22 = v52;
      v23 = v46;
      v24 = 8 * v47 - 8;
      v25 = 32 * v53 - 32;
      while (((*(*this + 728))(this, v22, *v23, &v34) & 1) != 0)
      {
        if (v25)
        {
          v22 += 32;
          ++v23;
          v26 = v24;
          v24 -= 8;
          v25 -= 32;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_33;
      }

      v20 = 0;
    }

    else
    {
LABEL_33:
      sub_1001F3B5C(a2, *(*(*(a2 + 1) + 96) + 16), v31);
      mlir::ValueRange::ValueRange(v33, v34, v35);
      mlir::OperationState::addOperands(a2, v33[0], v33[1]);
      sub_1001EFDBC(a2, v43, v44);
      Attrs = mlir::NamedAttrList::getAttrs(&v49);
      sub_100201964(a2, Attrs, v28);
      v29 = (*(*this + 32))(this);
      mlir::call_interface_impl::addArgAndResultAttrs(v29, a2, v40, v41, v37, v38, **(*(a2 + 1) + 96), *(*(*(a2 + 1) + 96) + 24));
      v20 = 1;
    }

    if (v34 != v36)
    {
      free(v34);
    }
  }

  else
  {
    v20 = 0;
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  return v20;
}

void sub_100201964(uint64_t a1, const void *a2, uint64_t a3)
{
  *(a1 + 192) = 0;
  v5 = *(a1 + 120);
  v6 = a3 + v5;
  if (v6 > *(a1 + 124))
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 112, (a1 + 128), v6, 16);
    a2 = v7;
    LODWORD(v5) = *(a1 + 120);
  }

  if (a3)
  {
    memcpy((*(a1 + 112) + 16 * v5), a2, 16 * a3);
    LODWORD(v5) = *(a1 + 120);
  }

  *(a1 + 120) = v5 + a3;
}

void mlir::ODIE::Compiler::CoreML::CallOp::getInputIntents(mlir::SymbolTable **this@<X0>, llvm **a2@<X1>, _BYTE *a3@<X8>)
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v22;
  }

  Ref = sub_100200BB8(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v7 = Ref;
  }

  else
  {
    v7 = 0;
  }

  v24 = v7;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v24);
  }

  v8 = *(*Ref + 136);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v10 = Ref;
  }

  else
  {
    v10 = 0;
  }

  v24 = v10;
  if (v9)
  {
    if (*(*mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v24) + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_21;
    }
  }

  else if (*(*Ref + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    goto LABEL_21;
  }

  v11 = *this;
  if (v11)
  {
    v12 = sub_10019B128(v11);
    v13 = mlir::call_interface_impl::resolveCallable(v11, v12, v5);
    if (v13)
    {
      goto LABEL_18;
    }

LABEL_21:
    *a3 = 0;
    a3[64] = 0;
    v16 = v23;
    v17 = v22[0];
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v13 = mlir::call_interface_impl::resolveCallable(0, 0, v5);
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_18:
  v14 = v13;
  v15 = sub_10026BA88(v13);
  (*v15)(v15, v14, v5);
  v16 = v23;
  v17 = v22[0];
  if (!v23)
  {
LABEL_19:
    v18 = 0;
    goto LABEL_28;
  }

LABEL_22:
  v19 = (v17 + 8);
  v20 = 16 * v16;
  do
  {
    if ((*(v19 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v21 = *v19;
      *v19 = 0;
      if (v21)
      {
        llvm::deallocate_buffer(*(v21 + 8), (16 * *(v21 + 24)), 8uLL);
        operator delete();
      }
    }

    v19 += 2;
    v20 -= 16;
  }

  while (v20);
  v17 = v22[0];
  v18 = (16 * v23);
LABEL_28:
  llvm::deallocate_buffer(v17, v18, 8uLL);
}

void mlir::ODIE::Compiler::CoreML::CallOp::getOutputIntents(mlir::SymbolTable **this@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    __src = 0;
    v43 = 0;
    LODWORD(v44[0]) = 0;
    if (a2)
    {
      p_src = a2;
    }

    else
    {
      p_src = &__src;
    }

    Ref = sub_100200BB8(this);
    if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
    {
      v17 = Ref;
    }

    else
    {
      v17 = 0;
    }

    v41 = v17;
    if (v17)
    {
      Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v41);
    }

    v18 = *(*Ref + 136);
    v19 = v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
    {
      v20 = Ref;
    }

    else
    {
      v20 = 0;
    }

    v41 = v20;
    if (v19)
    {
      if (*(*mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v41) + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        goto LABEL_39;
      }
    }

    else if (*(*Ref + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_39;
    }

    v25 = *this;
    if (v25)
    {
      v26 = sub_10019B128(v25);
      v27 = mlir::call_interface_impl::resolveCallable(v25, v26, p_src);
      if (v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v27 = mlir::call_interface_impl::resolveCallable(0, 0, p_src);
      if (v27)
      {
LABEL_30:
        v28 = v27;
        v29 = sub_10026BA88(v27);
        (*(v29 + 8))(v29, v28, p_src);
        v30 = LODWORD(v44[0]);
        v31 = __src;
        if (!LODWORD(v44[0]))
        {
LABEL_31:
          v32 = 0;
LABEL_46:
          llvm::deallocate_buffer(v31, v32, 8uLL);
          return;
        }

LABEL_40:
        v34 = (v31 + 8);
        v35 = 16 * v30;
        do
        {
          if ((*(v34 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v36 = *v34;
            *v34 = 0;
            if (v36)
            {
              llvm::deallocate_buffer(*(v36 + 8), (16 * *(v36 + 24)), 8uLL);
              operator delete();
            }
          }

          v34 += 2;
          v35 -= 16;
        }

        while (v35);
        v31 = __src;
        v32 = (16 * LODWORD(v44[0]));
        goto LABEL_46;
      }
    }

LABEL_39:
    *a3 = 0;
    *(a3 + 64) = 0;
    v30 = LODWORD(v44[0]);
    v31 = __src;
    if (!LODWORD(v44[0]))
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v5 = *(v4 + 9);
  Context = mlir::Attribute::getContext((v4 + 24));
  v7 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 0);
  v8 = v7;
  __src = v44;
  v43 = 0x600000000;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v44, v5, 8);
    v9 = (__src + 8 * (v5 & 0xFFFFFFFC));
    v10 = v5 & 3;
    v11 = vdupq_n_s64(v8);
    v12 = (__src + 16);
    v13 = v5 & 0xFFFFFFFC;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    if ((v5 & 0xFFFFFFFC) != v5)
    {
      do
      {
        *v9++ = v8;
        --v10;
      }

      while (v10);
    }

    goto LABEL_53;
  }

  if (v5)
  {
    v21 = vdupq_n_s64(v5 - 1);
    v22 = v5 + 1;
    v23 = vmovn_s64(vcgeq_u64(v21, xmmword_1002B0D80));
    if (v23.i8[0])
    {
      v44[0] = v7;
      v24 = v22 & 0xE;
      if ((v23.i8[4] & 1) == 0)
      {
LABEL_25:
        if (v24 == 2)
        {
          goto LABEL_53;
        }

LABEL_34:
        v33 = vmovn_s64(vcgtq_u64(v21, xmmword_1002B0E30));
        if (v33.i8[0])
        {
          v44[2] = v7;
          if ((v33.i8[4] & 1) == 0)
          {
LABEL_36:
            if (v24 == 4)
            {
              goto LABEL_53;
            }

LABEL_49:
            v37 = vmovn_s64(vcgtq_u64(v21, xmmword_1002B0E40));
            if (v37.i8[0])
            {
              v44[4] = v7;
            }

            if (v37.i8[4])
            {
              v44[5] = v7;
            }

            goto LABEL_53;
          }
        }

        else if ((v33.i8[4] & 1) == 0)
        {
          goto LABEL_36;
        }

        v44[3] = v7;
        if (v24 == 4)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v24 = v22 & 0xE;
      if ((v23.i8[4] & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v44[1] = v7;
    if (v24 == 2)
    {
      goto LABEL_53;
    }

    goto LABEL_34;
  }

LABEL_53:
  LODWORD(v43) = v5;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v38 = __src;
  if (v5 && &__src != a3)
  {
    if (__src == v44)
    {
      v40 = v5;
      if (v5 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v5, 8), v40 = v43, v38 = __src, v43))
      {
        memcpy(*a3, v38, 8 * v40);
        v38 = __src;
      }

      *(a3 + 8) = v5;
    }

    else
    {
      *a3 = __src;
      v39 = HIDWORD(v43);
      *(a3 + 8) = v5;
      *(a3 + 12) = v39;
      __src = v44;
      HIDWORD(v43) = 0;
      v38 = v44;
    }

    LODWORD(v43) = 0;
  }

  *(a3 + 64) = 1;
  if (v38 != v44)
  {
    free(v38);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, &v5);
  if (v6 < 5)
  {
    if (v6 == 3)
    {
      return sub_100202150(a1, v3 + 2);
    }

    if (v6 != 4)
    {
      return 1;
    }

    if (!sub_1001FC978(a1, v3) || !sub_100202150(a1, v3 + 2))
    {
      return 0;
    }
  }

  else if (!sub_100202150(a1, v3 + 2) || v6 >= 6 && !sub_1001FCE24(a1, v3 + 1) || !sub_1001FC978(a1, v3))
  {
    return 0;
  }

  return sub_1001FC978(a1, v3 + 4);
}

BOOL sub_100202150(uint64_t a1, void *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = sub_10006BC04(v31);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v7 = &v32;
    v8 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v8 = v38;
        v7 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = &v32;
        v8 = v38;
      }
    }

    v9 = &v8[24 * v39];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1002AAF70();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::TypedAttr>(void)::Name;
      v33 = unk_1002E0E70;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v11 = &v32;
        v12 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = v38;
            v11 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = &v32;
            v12 = v38;
          }
        }

        v13 = &v12[24 * v39];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v39;
        if (v36)
        {
          v15 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v16 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v16 = v38;
              v15 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = &v32;
              v16 = v38;
            }
          }

          v17 = &v16[24 * v39];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v39;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  v19 = result;
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
    result = v19;
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
      result = v19;
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
          v21 = sub_10005BEF4(v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v45 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v42;
    if (v42)
    {
      v24 = v43;
      v25 = v42;
      if (v43 != v42)
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
        v25 = v42;
      }

      v43 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v38 != v41)
    {
      free(v38);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::parse(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v28 = 0;
  v29 = 0;
  if (((*(*this + 160))(this, a2, a3) & 1) == 0)
  {
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v28))
    {
      goto LABEL_21;
    }

    return 0;
  }

  v46[0] = 0;
  if (!sub_1001F47C4(this, v46, 0) || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v5 = v46[0];
  if (v46[0])
  {
    v6 = *v46[0];
    {
      v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1002A30CC();
      v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_19;
      }
    }

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
    if (v10 != &v8[2 * v9] && *v10 == v7)
    {
      v17 = v10[1];
      goto LABEL_20;
    }
  }

LABEL_19:
  v17 = 0;
LABEL_20:
  v28 = v5;
  v29 = v17;
LABEL_21:
  v49 = &_mh_execute_header;
  v46[0] = v47;
  v46[1] = 0x400000000;
  v47[8] = 4;
  v48 = v50;
  v43 = v45;
  v44 = 0x600000000;
  v40 = v42;
  v41 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  v34 = v36;
  v35 = 0x600000000;
  if ((*(*this + 720))(this, &v48, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 488))(this, v46) & 1) != 0 && ((*(*this + 104))(this) & 1) != 0 && (mlir::call_interface_impl::parseFunctionSignature(this, &v43, &v37, &v40, &v34, 1))
  {
    v27 = a2;
    v31 = v33;
    v32 = 0x600000000;
    if (v49 && v44)
    {
      v18 = v48;
      v19 = v43;
      v20 = 8 * v44 - 8;
      v21 = 32 * v49 - 32;
      while (((*(*this + 728))(this, v18, *v19, &v31) & 1) != 0)
      {
        if (v21)
        {
          v18 += 32;
          ++v19;
          v22 = v20;
          v20 -= 8;
          v21 -= 32;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v16 = 0;
    }

    else
    {
LABEL_31:
      sub_1001F3B5C(v27, *(*(*(v27 + 1) + 96) + 8), v28);
      mlir::ValueRange::ValueRange(v30, v31, v32);
      mlir::OperationState::addOperands(v27, v30[0], v30[1]);
      sub_1001EFDBC(v27, v40, v41);
      Attrs = mlir::NamedAttrList::getAttrs(v46);
      sub_100201964(v27, Attrs, v24);
      v25 = (*(*this + 32))(this);
      mlir::call_interface_impl::addArgAndResultAttrs(v25, v27, v37, v38, v34, v35, **(*(v27 + 1) + 96), *(*(*(v27 + 1) + 96) + 16));
      v16 = 1;
    }

    if (v31 != v33)
    {
      free(v31);
    }
  }

  else
  {
    v16 = 0;
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  return v16;
}

void *sub_100202BFC(uint64_t a1)
{
  result = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v13 = v2;
      v14 = result;
      sub_1002A61F4();
      result = v14;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v13 + 8);
      v5 = *(v13 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    if (v6 != &v4[2 * v5] && *v6 == v3)
    {
      v12 = v6[1];
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, &v19);
  if (v20 >= 5)
  {
    return sub_100202150(a1, v3 + 1) && sub_1001FC978(a1, v3) && sub_1001FC978(a1, v3 + 3);
  }

  if (v20 - 3 <= 1)
  {
    return sub_100202150(a1, v3 + 1);
  }

  v18 = 0;
  if ((sub_100202F4C(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v18);
  if (!v5)
  {
    v3[1] = 0;
    v3[2] = 0;
    return 1;
  }

  v6 = *v5;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v16 = v5;
    sub_1002A30CC();
    v5 = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

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
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v17 = v10[1];
    goto LABEL_29;
  }

LABEL_27:
  v17 = 0;
LABEL_29:
  v3[1] = v5;
  v3[2] = v17;
  return 1;
}

uint64_t sub_100202F4C(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v6 = &v32;
    v7 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = v38;
        v6 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = &v32;
        v7 = v38;
      }
    }

    v8 = &v7[24 * v39];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1002AAFF4();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name;
      v33 = unk_1002E2F60;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v10 = &v32;
        v11 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = v38;
            v10 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v10 = &v32;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v39;
        if (v36)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = v38;
              v14 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v14 = &v32;
              v15 = v38;
            }
          }

          v16 = &v15[24 * v39];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v39;
        }
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = sub_10005BEF4(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
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
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v18;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[8]);
  v4 = v3[11];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

void *mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this)
{
  result = sub_100202BFC(this);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v6);
  }

  v3 = *(*result + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v6);
  }

  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_100202BFC(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v16);
  }

  v6 = *(*Ref + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = Ref;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v16);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = *this;
  while (1)
  {
    v11 = sub_10026BC7C(v10);
    if (!v11)
    {
      break;
    }

    v10 = v11;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, v9);
    if (result)
    {
      return result;
    }
  }

  v13 = *this;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v16);
  v15 = mlir::SymbolRefAttr::get(RootReference);
  do
  {
    result = sub_10026BC7C(v13);
    if (!result)
    {
      break;
    }

    v13 = result;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, result, v15);
  }

  while (!result);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_100202BFC(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v48[0] = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(v48);
  }

  v6 = *(*Ref + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = Ref;
  }

  else
  {
    v8 = 0;
  }

  v48[0] = v8;
  if (v7)
  {
    if (*(*mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v48) + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_25;
    }
  }

  else if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    goto LABEL_25;
  }

  v9 = *sub_100202BFC(this);
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_1002AAC64();
    v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

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
  if (v13 != &v11[2 * v12] && *v13 == v10 && v13[1])
  {
    return 1;
  }

LABEL_25:
  v19 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, a2);
  if (v19)
  {
    v20 = *(*(v19 + 48) + 16);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v48[0] = v21;
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      return mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(v48, *this);
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      return 1;
    }
  }

  v43 = "could not resolve the callee ";
  v44 = 259;
  mlir::OpState::emitOpError(this, &v43, v48);
  v22 = sub_100202BFC(this);
  if (v48[0])
  {
    v23 = &v45;
    mlir::DiagnosticArgument::DiagnosticArgument(&v45, v22);
    v24 = v49;
    if (v50 >= v51)
    {
      if (v49 <= &v45 && v49 + 24 * v50 > &v45)
      {
        v41 = &v45 - v49;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
        v24 = v49;
        v23 = (v49 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
        v23 = &v45;
        v24 = v49;
      }
    }

    v25 = &v24[24 * v50];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v50;
    if (v48[0])
    {
      v45 = 3;
      v47 = 41;
      v28 = &v45;
      v29 = v49;
      if (v27 >= v51)
      {
        if (v49 <= &v45 && v49 + 24 * v27 > &v45)
        {
          v42 = &v45 - v49;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v27 + 1, 24);
          v29 = v49;
          v28 = (v49 + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v27 + 1, 24);
          v28 = &v45;
          v29 = v49;
        }
      }

      v30 = &v29[24 * v50];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v50;
    }
  }

  v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
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

    v33 = __p;
    if (__p)
    {
      v34 = v56;
      v35 = __p;
      if (v56 != __p)
      {
        do
        {
          v34 = sub_10005BEF4(v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v56 = v33;
      operator delete(v35);
    }

    v36 = v53;
    if (v53)
    {
      v37 = v54;
      v38 = v53;
      if (v54 != v53)
      {
        do
        {
          v39 = *--v37;
          *v37 = 0;
          if (v39)
          {
            operator delete[]();
          }
        }

        while (v37 != v36);
        v38 = v53;
      }

      v54 = v36;
      operator delete(v38);
    }

    if (v49 != v52)
    {
      free(v49);
    }
  }

  return v32;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::getInputIntents(mlir::ODIE::Compiler::CoreML::InvokeOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, _BYTE *a3@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v14;
  }

  v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_10026BA88(v5);
    (*v7)(v7, v6, v4);
    v8 = v15;
    v9 = v14[0];
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  *a3 = 0;
  a3[64] = 0;
  v8 = v15;
  v9 = v14[0];
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_6:
  v10 = (v9 + 8);
  v11 = 16 * v8;
  do
  {
    if ((*(v10 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v12 = *v10;
      *v10 = 0;
      if (v12)
      {
        llvm::deallocate_buffer(*(v12 + 8), (16 * *(v12 + 24)), 8uLL);
        operator delete();
      }
    }

    v10 += 2;
    v11 -= 16;
  }

  while (v11);
  v9 = v14[0];
  v13 = (16 * v15);
LABEL_14:
  llvm::deallocate_buffer(v9, v13, 8uLL);
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::InvokeOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, _BYTE *a3@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v14;
  }

  v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_10026BA88(v5);
    (*(v7 + 8))(v7, v6, v4);
    v8 = v15;
    v9 = v14[0];
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  *a3 = 0;
  a3[64] = 0;
  v8 = v15;
  v9 = v14[0];
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_6:
  v10 = (v9 + 8);
  v11 = 16 * v8;
  do
  {
    if ((*(v10 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v12 = *v10;
      *v10 = 0;
      if (v12)
      {
        llvm::deallocate_buffer(*(v12 + 8), (16 * *(v12 + 24)), 8uLL);
        operator delete();
      }
    }

    v10 += 2;
    v11 -= 16;
  }

  while (v11);
  v9 = v14[0];
  v13 = (16 * v15);
LABEL_14:
  llvm::deallocate_buffer(v9, v13, 8uLL);
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::canonicalize(uint64_t a1, void *a2)
{
  if (!*(a1 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a1, "coreml.keep_placeholder", 23), (v5 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a1 + 56, "coreml.keep_placeholder", 0x17uLL);
  }

  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v30 = *(a1 + 24);
    v34[0] = "coreml.keep_placeholder requested";
    v35 = 259;
    AttrDictionary = v34;
    v31 = a2[2];
    if (v31 && mlir::RewriterBase::Listener::classof(v31))
    {
      (*(*v31 + 88))(v31, v30, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &AttrDictionary);
    }

    return 0;
  }

  v34[0] = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  Value = mlir::StringAttr::getValue(v34);
  mlir::OperationName::OperationName(&v32, Value, v7, a2[1]);
  if (*(v32 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v26 = *(a1 + 24);
    DialectNamespace = mlir::OperationName::getDialectNamespace(&v32);
    v48 = 1283;
    AttrDictionary = "dialect ";
    v46 = DialectNamespace;
    v47 = v28;
    v34[0] = &AttrDictionary;
    v34[2] = " is not registered";
    v35 = 770;
    v33[0] = v34;
    v29 = a2[2];
    if (v29 && mlir::RewriterBase::Listener::classof(v29))
    {
      (*(*v29 + 88))(v29, v26, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v33);
    }

    return 0;
  }

  mlir::OperationState::OperationState(v34, *(a1 + 24), v32);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v10 = v9;
  v43[8] = 0;
  v11 = v41;
  v12 = v9 + v41;
  if (v12 > v42)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v12, 16);
    v11 = v41;
  }

  if (v10)
  {
    memcpy((v40 + 16 * v11), v8, 16 * v10);
    v11 = v41;
  }

  v41 = v11 + v10;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v13 = *(a1 + 68);
    v14 = *(a1 + 72);
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  mlir::ValueRange::ValueRange(&AttrDictionary, v14, v13);
  mlir::OperationState::addOperands(v34, AttrDictionary, v45);
  v15 = *(a1 + 36);
  v16 = a1 - 16;
  if (!v15)
  {
    v16 = 0;
  }

  v33[0] = v16;
  v33[1] = v15;
  mlir::ResultRange::getTypes(v33, &AttrDictionary);
  v17 = AttrDictionary;
  v18 = v45;
  v19 = v47;
  v20 = v47 - v45;
  v21 = v37;
  v22 = v47 - v45 + v37;
  if (v22 > v38)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, &v39, v22, 8);
    v21 = v37;
  }

  if (v19 != v18)
  {
    v23 = (v36 + 8 * v21);
    do
    {
      *v23++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v18++) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v19 != v18);
    LODWORD(v21) = v37;
  }

  v37 = v21 + v20;
  v24 = mlir::OpBuilder::create(a2 + 1, v34);
  (*(*a2 + 8))(a2, a1, v24);
  mlir::OperationState::~OperationState(v34);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5)
  {

    return sub_1001F06E4(a2, a3, "expected no operands");
  }

  else
  {
    if (a7)
    {
      v20 = *a7;
    }

    else
    {
      v20 = 0uLL;
    }

    v21 = a6;
    v22[0] = 0;
    v23 = 0;
    v24 = v20;
    v25 = a9;
    v26 = a10;
    if (a6)
    {
      v14 = a4;
      Context = mlir::Attribute::getContext(&v21);
      if (v23 == 1)
      {
        v23 = 0;
      }

      mlir::OperationName::OperationName(v22, "coreml.constant", 15, Context);
      v23 = 1;
      a4 = v14;
    }

    v27 = a4;
    v28 = 0;
    *&v20 = sub_100234010(&v21);
    *(&v20 + 1) = v16;
    if (v20)
    {
      Type = mlir::TypedAttr::getType(&v20);
      v18 = *(a11 + 8);
      if (v18 >= *(a11 + 12))
      {
        v19 = Type;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v18 + 1, 8);
        Type = v19;
        LODWORD(v18) = *(a11 + 8);
      }

      *(*a11 + 8 * v18) = Type;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      return sub_1001F06E4(a2, a3, "no value attribute provided");
    }
  }
}

double mlir::ODIE::Compiler::CoreML::ConstantOp::getOutputIntents@<D0>(mlir::ODIE::Compiler::CoreML::ConstantOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  *(a2 + 16) = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 2uLL);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::walkAttrsToHash(mlir::Operation **a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = *(*a1 + 6);
  if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v18 = *(v6 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v18);
    v8 = *(result + 128);
    if (v8 == 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *(v6 + 24);
    v8 = *(result + 128);
    if (v8 == 2)
    {
LABEL_16:
      AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
      v16 = mlir::DictionaryAttr::begin(&AttrDictionary);
      result = mlir::DictionaryAttr::end(&AttrDictionary);
      if (v16 != result)
      {
        v17 = result;
        do
        {
          v18 = *v16;
          result = mlir::NamedAttribute::getName(&v18);
          if (result != **(*(*a1 + 6) + 96))
          {
            result = (a2)(a3, v18, *(&v18 + 1));
          }

          ++v16;
        }

        while (v16 != v17);
      }

      return result;
    }
  }

  if (v8 == 1)
  {
    *&v18 = mlir::Operation::getAttrDictionary(*a1);
    v13 = mlir::DictionaryAttr::begin(&v18);
    v14 = mlir::DictionaryAttr::end(&v18);
    if (v13 != v14)
    {
      v15 = v14;
      do
      {
        if (*(**(v13 + 8) + 136) != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
        {
          a2(a3, *v13);
        }

        v13 += 16;
      }

      while (v13 != v15);
    }

    goto LABEL_16;
  }

  if (!v8)
  {
    *&v18 = mlir::Operation::getAttrDictionary(*a1);
    v9 = mlir::DictionaryAttr::begin(&v18);
    result = mlir::DictionaryAttr::end(&v18);
    if (v9 != result)
    {
      v10 = result;
      do
      {
        v11 = *v9;
        v12 = v9[1];
        v9 += 2;
        result = (a2)(a3, v11, v12);
      }

      while (v9 != v10);
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = a6;
  v71[0] = 0;
  v72 = 0;
  v73 = a9;
  v74 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v70);
    if (v72 == 1)
    {
      v72 = 0;
    }

    mlir::OperationName::OperationName(v71, "coreml.concat", 13, Context);
    v72 = 1;
  }

  v75 = a4;
  v76 = a5;
  v63 = 0;
  __dst[0] = a4;
  __dst[1] = 0;
  v65.n128_u64[0] = &v63;
  __dst[0] = mlir::ValueRange::dereference_iterator(__dst, 0);
  DefiningOp = mlir::Value::getDefiningOp(__dst);
  if (!DefiningOp || !sub_100270924(&v65, DefiningOp))
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::getNumElements(&v63) != 1)
  {
    return sub_1001F06E4(a2, a3, "expected a single dimension along which to concat");
  }

  sub_10026BD14(&v63, __dst);
  v62 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(__dst);
  mlir::IntegerAttr::getValue(&v62, __dst);
  if (LODWORD(__dst[1]) > 0x40)
  {
    v20 = *__dst[0];
    operator delete[]();
  }

  if (LODWORD(__dst[1]))
  {
    v17 = __dst[0] << -LOBYTE(__dst[1]) >> -LOBYTE(__dst[1]);
  }

  else
  {
    v17 = 0;
  }

  __dst[0] = v69;
  __dst[1] = 0x600000000;
  v21 = v76;
  v65.n128_u64[0] = v75;
  v65.n128_u64[1] = 1;
  v65.n128_u64[0] = mlir::ValueRange::offset_base(&v65, 1);
  v65.n128_u64[1] = v21 - v65.n128_u64[1];
  v22 = mlir::ValueRange::dereference_iterator(&v65, 0);
  v61[0] = sub_10014A5C4((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
  v61[1] = v23;
  if (!v61[0])
  {
    v18 = sub_1001F06E4(a2, a3, "expected a ShapedType for all inputs to concat");
    v28 = __dst[0];
    if (__dst[0] != v69)
    {
      goto LABEL_90;
    }

    return v18;
  }

  Shape = mlir::ShapedType::getShape(v61);
  v18 = v24;
  v65.n128_u64[0] = &v66;
  v65.n128_u64[1] = 0x600000000;
  if (v24 < 7)
  {
    if (!v24)
    {
      v30 = 0;
      v65.n128_u32[2] = 0;
      v29 = &v66;
LABEL_28:
      v18 = LODWORD(__dst[1]);
      if (LODWORD(__dst[1]) >= v30)
      {
        if (v30)
        {
          memmove(__dst[0], v29, 8 * v30);
        }

        goto LABEL_38;
      }

      if (HIDWORD(__dst[1]) >= v30)
      {
        if (LODWORD(__dst[1]))
        {
          memmove(__dst[0], v29, 8 * LODWORD(__dst[1]));
          goto LABEL_36;
        }
      }

      else
      {
        LODWORD(__dst[1]) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(__dst, v69, v30, 8);
      }

      v18 = 0;
LABEL_36:
      if (v65.n128_u32[2] != v18)
      {
        memcpy(__dst[0] + 8 * v18, (v65.n128_u64[0] + 8 * v18), 8 * (v65.n128_u32[2] - v18));
      }

LABEL_38:
      LODWORD(__dst[1]) = v30;
      goto LABEL_39;
    }

    v26 = 0;
    v27 = &v66;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, &v66, v24, 8);
    v26 = v65.n128_u32[2];
    v27 = v65.n128_u64[0];
  }

  memcpy(&v27[v26], Shape, 8 * v18);
  v29 = v65.n128_u64[0];
  v30 = v65.n128_u32[2] + v18;
  v65.n128_u32[2] += v18;
  if (v65.n128_u64[0] == &v66)
  {
    goto LABEL_28;
  }

  if (__dst[0] != v69)
  {
    free(__dst[0]);
    v29 = v65.n128_u64[0];
    v30 = v65.n128_u32[2];
  }

  __dst[0] = v29;
  __dst[1] = __PAIR64__(v65.n128_u32[3], v30);
  v65.n128_u64[0] = &v66;
  v65.n128_u32[3] = 0;
LABEL_39:
  v65.n128_u32[2] = 0;
  if (v65.n128_u64[0] != &v66)
  {
    free(v65.n128_u64[0]);
    v30 = __dst[1];
  }

  if (!v30)
  {
    if (HIDWORD(__dst[1]))
    {
      v31 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__dst, v69, 1uLL, 8);
      v31 = LODWORD(__dst[1]);
    }

    *(__dst[0] + v31) = 1;
    ++LODWORD(__dst[1]);
  }

  if (v17 < 0)
  {
    mlir::ShapedType::getShape(v61);
    v17 += v32;
  }

  ElementType = mlir::ShapedType::getElementType(v61);
  v34 = v76;
  v65.n128_u64[0] = v75;
  v65.n128_u64[1] = 1;
  *&v64 = mlir::ValueRange::offset_base(&v65, 1);
  *(&v64 + 1) = v34 - v65.n128_u64[1];
  mlir::ValueRange::getTypes(&v64, &v65);
  v35 = v67;
  v36 = v65.n128_u64[1] + 1;
  v64 = *&v65 + __PAIR128__(1, 0);
  if (v65.n128_u64[1] + 1 == v67)
  {
LABEL_48:
    v37 = mlir::RankedTensorType::get(__dst[0], LODWORD(__dst[1]), ElementType, 0);
    v38 = *(a11 + 8);
    if (v38 >= *(a11 + 12))
    {
      v59 = v37;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v38 + 1, 8);
      v37 = v59;
      LODWORD(v38) = *(a11 + 8);
    }

    *(*a11 + 8 * v38) = v37;
    ++*(a11 + 8);
    v18 = 1;
    v28 = __dst[0];
    if (__dst[0] != v69)
    {
      goto LABEL_90;
    }

    return v18;
  }

LABEL_52:
  v39 = mlir::ValueRange::dereference_iterator(&v64, v36);
  v60[0] = sub_100067788((*(v39 + 8) & 0xFFFFFFFFFFFFFFF8));
  v60[1] = v40;
  if (!v60[0])
  {
    v58 = sub_1001F06E4(a2, a3, "expected a ShapedType for all inputs to concat");
    goto LABEL_88;
  }

  if (mlir::ShapedType::getElementType(v60) != ElementType)
  {
    v58 = sub_1001F06E4(a2, a3, "expected the same element type for all inputs to concat");
    goto LABEL_88;
  }

  if (mlir::ShapedType::hasRank(v60) && (mlir::ShapedType::getShape(v60), v41 == LODWORD(__dst[1])) || (mlir::ShapedType::getShape(v60), !v42) && LODWORD(__dst[1]) == 1)
  {
    v44 = mlir::ShapedType::getShape(v60);
    v45 = v43;
    v65.n128_u64[0] = &v66;
    v65.n128_u64[1] = 0x600000000;
    if (v43 < 7)
    {
      if (!v43)
      {
        v65.n128_u32[2] = 0;
        goto LABEL_66;
      }

      v46 = 0;
      v47 = &v66;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, &v66, v43, 8);
      v46 = v65.n128_u32[2];
      v47 = v65.n128_u64[0];
    }

    memcpy(&v47[v46], v44, 8 * v45);
    v65.n128_u32[2] += v45;
    if (v65.n128_u32[2])
    {
      v48 = LODWORD(__dst[1]);
      if (!LODWORD(__dst[1]))
      {
        goto LABEL_77;
      }

LABEL_69:
      v50 = 0;
      v51 = __dst[0];
      v52 = 1;
      v53 = v65.n128_u64[0];
      while (1)
      {
        if (v17 == v50)
        {
          v54 = v51[v17];
          if (v54 != 0x8000000000000000)
          {
            v55 = *(v53 + 8 * v17);
            v56 = v55 + v54;
            if (v55 == 0x8000000000000000)
            {
              v56 = *(v53 + 8 * v17);
            }

            v51[v17] = v56;
          }
        }

        else if (v51[v50] != *(v53 + 8 * v50))
        {
          v18 = sub_1001F06E4(a2, a3, "expected all input shapes to match along all dimensions other than the concat dimension");
          v57 = v65.n128_u64[0];
          if (v65.n128_u64[0] != &v66)
          {
            goto LABEL_78;
          }

LABEL_79:
          if (v52)
          {
            goto LABEL_89;
          }

          v36 = *(&v64 + 1) + 1;
          *(&v64 + 1) = v36;
          if (v36 == v35)
          {
            goto LABEL_48;
          }

          goto LABEL_52;
        }

        v52 = ++v50 < v48;
        if (v48 == v50)
        {
          goto LABEL_77;
        }
      }
    }

LABEL_66:
    if (v65.n128_u32[3])
    {
      v49 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, &v66, 1uLL, 8);
      v49 = v65.n128_u32[2];
    }

    *(v65.n128_u64[0] + 8 * v49) = 1;
    ++v65.n128_u32[2];
    v48 = LODWORD(__dst[1]);
    if (!LODWORD(__dst[1]))
    {
LABEL_77:
      v52 = 0;
      v57 = v65.n128_u64[0];
      if (v65.n128_u64[0] == &v66)
      {
        goto LABEL_79;
      }

LABEL_78:
      free(v57);
      goto LABEL_79;
    }

    goto LABEL_69;
  }

  v58 = sub_1001F06E4(a2, a3, "expected all input tensors to have the same rank");
LABEL_88:
  v18 = v58;
LABEL_89:
  v28 = __dst[0];
  if (__dst[0] != v69)
  {
LABEL_90:
    free(v28);
  }

  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a6;
  v41[0] = 0;
  v42 = 0;
  v43 = a9;
  v44 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v40);
    if (v42 == 1)
    {
      v42 = 0;
    }

    mlir::OperationName::OperationName(v41, "coreml.concat", 13, Context);
    v42 = 1;
  }

  v45 = a4;
  v46 = a5;
  v37 = a4;
  v38 = 0;
  v37 = mlir::ValueRange::dereference_iterator(&v37, 0);
  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (!DefiningOp)
  {
    return 1;
  }

  {
    v33 = DefiningOp;
    sub_1002AB034();
    DefiningOp = v33;
  }

  v18 = (*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (!v18)
  {
    return 1;
  }

  v37 = v39;
  v38 = 0x600000000;
  if (!mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(v18, a2, a3, a4, a5, a6, v19, v20, a9, a10, &v37))
  {
    result = 0;
    v30 = v37;
    if (v37 == v39)
    {
      return result;
    }

    goto LABEL_19;
  }

  mlir::TypeRange::TypeRange(&v35, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v34, v37, v38);
  v21 = v36;
  if (v36 != v34[1])
  {
    goto LABEL_21;
  }

  if (v36)
  {
    v22 = 0;
    v23 = v35;
    v24 = v34[0];
    while (1)
    {
      v25 = mlir::TypeRange::dereference_iterator(v23, v22);
      if (v25 != mlir::TypeRange::dereference_iterator(v24, v22))
      {
        break;
      }

      if (v21 == ++v22)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    result = sub_1001F06E4(a2, a3, "inferred return types did not match actual return types");
    v30 = v37;
    if (v37 == v39)
    {
      return result;
    }

LABEL_19:
    v31 = result;
    free(v30);
    return v31;
  }

LABEL_15:
  v26 = v37;
  v27 = v38;
  *(a11 + 8) = 0;
  if (v27 > *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v27, 8);
    v28 = *(a11 + 8);
LABEL_25:
    memcpy((*a11 + 8 * v28), v26, 8 * v27);
    v32 = *(a11 + 8);
    goto LABEL_26;
  }

  if (v27)
  {
    v28 = 0;
    goto LABEL_25;
  }

  v32 = 0;
LABEL_26:
  *(a11 + 8) = v32 + v27;
  result = 1;
  v30 = v37;
  if (v37 != v39)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t sub_100205060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t ElementType, char a5)
{
  v51[0] = a1;
  v51[1] = a2;
  v8 = (*(mlir::ValueRange::dereference_iterator(v51, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = *v8;
  {
    v44 = v9;
    sub_1002AAABC();
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v44 + 8);
    v12 = *(v44 + 16);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v13 == &v11[2 * v12] || *v13 != v10)
  {
    goto LABEL_14;
  }

  v19 = v13[1];
LABEL_15:
  v47[0] = v8;
  v47[1] = v19;
  v20 = (*(mlir::ValueRange::dereference_iterator(v51, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = *v20;
  {
    v31 = v21;
    sub_1002AAABC();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v31 + 8);
    v24 = *(v31 + 16);
    if (v24)
    {
      goto LABEL_18;
    }

LABEL_29:
    v32 = 0;
    goto LABEL_30;
  }

  v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  if (!v24)
  {
    goto LABEL_29;
  }

LABEL_18:
  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
    goto LABEL_29;
  }

  v32 = v25[1];
LABEL_30:
  v46[0] = v20;
  v46[1] = v32;
  v48 = v50;
  v49 = 0x600000000;
  mlir::ShapedType::getShape(v47);
  if (v33 >= 1)
  {
    for (i = 0; i < v39; ++i)
    {
      while (1)
      {
        v35 = (*(mlir::ShapedType::getShape(v47) + 8 * i) == 0x8000000000000000 ? v46 : v47);
        v36 = *(mlir::ShapedType::getShape(v35) + 8 * i);
        v45 = v36;
        v37 = v49;
        if (v49 >= HIDWORD(v49))
        {
          break;
        }

        *(v48 + v49) = v36;
        LODWORD(v49) = v37 + 1;
        ++i;
        mlir::ShapedType::getShape(v47);
        if (v38 <= i)
        {
          goto LABEL_39;
        }
      }

      sub_1000B562C(&v48, &v45);
      mlir::ShapedType::getShape(v47);
    }
  }

LABEL_39:
  if ((a5 & 1) == 0)
  {
    ElementType = mlir::ShapedType::getElementType(v47);
  }

  v40 = mlir::RankedTensorType::get(v48, v49, ElementType, 0);
  v41 = *(a3 + 8);
  if (v41 >= *(a3 + 12))
  {
    v43 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v41 + 1, 8);
    v40 = v43;
    LODWORD(v41) = *(a3 + 8);
  }

  *(*a3 + 8 * v41) = v40;
  ++*(a3 + 8);
  if (v48 != v50)
  {
    free(v48);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::DivideOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::DivideOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::DivideOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::PowOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::PowOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::PowOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseAndOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseAndOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseAndOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseOrOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseOrOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseOrOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseXorOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, mlir::ValueShapeRange *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Shape = mlir::ValueShapeRange::getShape(a4, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  ElementType = 0;
  v19 = 0;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(&Shape);
  ElementType = mlir::ShapeAdaptor::getElementType(&Shape);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(&Shape, v16);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  v11 = v16;
  if (v9 >= *(a9 + 12))
  {
    if (v10 <= v16 && v10 + (v9 << 6) > v16)
    {
      v15 = v16 - v10;
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = &v15[*a9];
    }

    else
    {
      sub_10026F0CC(a9, v9 + 1);
      v10 = *a9;
      v11 = v16;
    }
  }

  v12 = v10 + (*(a9 + 8) << 6);
  *v12 = v12 + 16;
  *(v12 + 8) = 0x300000000;
  if (*(v11 + 2))
  {
    sub_10005F9E8(v12, v11);
  }

  v13 = *(v11 + 5);
  *(v12 + 56) = *(v11 + 56);
  *(v12 + 40) = v13;
  ++*(a9 + 8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseXorOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    return sub_100205060(a4, 2, a11, 0, 0);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseXorOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 2)
  {
    if ((sub_100205060(a4, 2, &v20, 0, 0) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::LogOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::LogOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::SiluOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SiluOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::SinOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SinOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::CosOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CosOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::TanOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TanOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::SinhOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SinhOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::CoshOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CoshOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::TanhOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TanhOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AsinOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AcosOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AtanOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AsinhOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AcoshOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AtanhOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::RsqrtOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::RsqrtOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::SqrtOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SqrtOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::ExpOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ExpOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::ErfOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ErfOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

uint64_t mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return sub_100205060(a4, a5, a11, v14, 1);
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::EqualOp::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = v24;
  v23 = 0x600000000;
  if (a5 == 2)
  {
    v12 = mlir::IntegerType::get(a1, 1, 0);
    if ((sub_100205060(a4, 2, &v22, v12, 1) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v13 = 0;
    v14 = v22;
    if (v22 == v24)
    {
      return v13;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v20, v22, v23);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v21[0], v21[1], v20[0], v20[1]))
  {
    v15 = v22;
    v16 = v23;
    *(a11 + 8) = 0;
    if (v16 <= *(a11 + 12))
    {
      if (!v16)
      {
        v18 = 0;
        goto LABEL_12;
      }

      v17 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v16, 8);
      v17 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v17), v15, 8 * v16);
    v18 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v18 + v16;
  }

  v13 = 1;
  v14 = v22;
  if (v22 != v24)
  {
LABEL_14:
    free(v14);
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::GreaterOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return sub_100205060(a4, a5, a11, v14, 1);
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::GreaterOp::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = v24;
  v23 = 0x600000000;
  if (a5 == 2)
  {
    v12 = mlir::IntegerType::get(a1, 1, 0);
    if ((sub_100205060(a4, 2, &v22, v12, 1) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v13 = 0;
    v14 = v22;
    if (v22 == v24)
    {
      return v13;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v20, v22, v23);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v21[0], v21[1], v20[0], v20[1]))
  {
    v15 = v22;
    v16 = v23;
    *(a11 + 8) = 0;
    if (v16 <= *(a11 + 12))
    {
      if (!v16)
      {
        v18 = 0;
        goto LABEL_12;
      }

      v17 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v16, 8);
      v17 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v17), v15, 8 * v16);
    v18 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v18 + v16;
  }

  v13 = 1;
  v14 = v22;
  if (v22 != v24)
  {
LABEL_14:
    free(v14);
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::NotEqualOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return sub_100205060(a4, a5, a11, v14, 1);
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::NotEqualOp::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = v24;
  v23 = 0x600000000;
  if (a5 == 2)
  {
    v12 = mlir::IntegerType::get(a1, 1, 0);
    if ((sub_100205060(a4, 2, &v22, v12, 1) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 2 operands"))
  {
LABEL_3:
    v13 = 0;
    v14 = v22;
    if (v22 == v24)
    {
      return v13;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v20, v22, v23);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v21[0], v21[1], v20[0], v20[1]))
  {
    v15 = v22;
    v16 = v23;
    *(a11 + 8) = 0;
    if (v16 <= *(a11 + 12))
    {
      if (!v16)
      {
        v18 = 0;
        goto LABEL_12;
      }

      v17 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v16, 8);
      v17 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v17), v15, 8 * v16);
    v18 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v18 + v16;
  }

  v13 = 1;
  v14 = v22;
  if (v22 != v24)
  {
LABEL_14:
    free(v14);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceMeanOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 3)
  {
    return sub_10020AEAC(a2, a3, a4, 3, a11);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 3 operands");
  }
}

BOOL sub_10020AEAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69[0] = a3;
  v69[1] = a4;
  v52 = 0;
  v53 = 0;
  v63 = &v53;
  v66 = mlir::ValueRange::dereference_iterator(v69, 1);
  DefiningOp = mlir::Value::getDefiningOp(&v66);
  if (DefiningOp)
  {
    if (sub_100297C38(&v63, DefiningOp))
    {
      v9 = mlir::ValueRange::dereference_iterator(v69, 2);
      v60[0] = &v52;
      v66 = v9;
      v10 = mlir::Value::getDefiningOp(&v66);
      if (v10)
      {
        if (sub_100270924(v60, v10))
        {
          v51 = *(mlir::ValueRange::dereference_iterator(v69, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          Shape = mlir::RankedTensorType::getShape(&v51);
          v13 = v12;
          v66 = v68;
          v67 = 0x600000000;
          v14 = (8 * v12) >> 3;
          if (v14 < 7)
          {
            v15 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v14, 8);
            v15 = v67;
          }

          if (v13)
          {
            memcpy(&v66[8 * v15], Shape, 8 * v13);
            v15 = v67;
          }

          LODWORD(v67) = v15 + v13;
          sub_10026BDE8(v53, &v63);
          ElementType = mlir::DenseElementsAttr::getElementType(&v52);
          if (mlir::DenseElementsAttr::getNumElements(&v52) == 1 && mlir::Type::isInteger(&ElementType, 1))
          {
            sub_10026BF38(&v52, v60);
            v19 = v62;
            v56 = *v61;
            *v55 = *v60;
            if (*v61 == v62)
            {
              v20 = 0;
            }

            else
            {
              do
              {
                v21 = mlir::DenseElementsAttr::BoolElementIterator::operator*(v55);
                ++v56;
              }

              while (v56 != v19);
              v20 = v21;
            }

            v22 = v63;
            v23 = v67;
            LODWORD(v56) = 0;
            *v55 = 0u;
            v57 = v59;
            v58 = 0;
            if (v64)
            {
              v24 = 4 * v64;
              do
              {
                v54 = ((v23 & (*v22 >> 31)) + *v22);
                sub_10026C044(v55, &v54, v60);
                if (v61[0] == 1)
                {
                  v25 = v54;
                  v26 = v58;
                  if (v58 >= HIDWORD(v58))
                  {
                    v49 = v54;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v58 + 1, 8);
                    v25 = v49;
                    v26 = v58;
                  }

                  *(v57 + v26) = v25;
                  LODWORD(v58) = v58 + 1;
                }

                ++v22;
                v24 -= 4;
              }

              while (v24);
            }

            v60[0] = v61;
            v60[1] = 0x600000000;
            if (v23 >= 1)
            {
              v30 = 0;
              if (v20)
              {
                v31 = 0;
                while (1)
                {
                  if (!v56)
                  {
                    goto LABEL_34;
                  }

                  v33 = (v56 - 1) & (37 * v31);
                  v34 = *(v55[0] + v33);
                  if (v31 != v34)
                  {
                    break;
                  }

LABEL_38:
                  if (v33 == v56)
                  {
                    goto LABEL_34;
                  }

                  v32 = 1;
                  if (v30 >= HIDWORD(v60[1]))
                  {
LABEL_41:
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v60, v61, v30 + 1, 8);
                    v30 = v60[1];
                    goto LABEL_35;
                  }

                  v32 = 1;
LABEL_35:
                  *(v60[0] + v30) = v32;
                  v30 = ++LODWORD(v60[1]);
                  if (++v31 == v23)
                  {
                    goto LABEL_59;
                  }
                }

                v35 = 1;
                while (v34 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v36 = v33 + v35++;
                  v33 = v36 & (v56 - 1);
                  v34 = *(v55[0] + v33);
                  if (v31 == v34)
                  {
                    goto LABEL_38;
                  }
                }

LABEL_34:
                v32 = *&v66[8 * v31];
                if (v30 >= HIDWORD(v60[1]))
                {
                  goto LABEL_41;
                }

                goto LABEL_35;
              }

              v37 = 0;
              while (1)
              {
                if (!v56)
                {
                  goto LABEL_47;
                }

                v39 = (v56 - 1) & (37 * v37);
                v40 = *(v55[0] + v39);
                if (v37 != v40)
                {
                  break;
                }

LABEL_53:
                if (v39 == v56)
                {
                  goto LABEL_47;
                }

LABEL_50:
                if (++v37 == v23)
                {
                  goto LABEL_59;
                }
              }

              v41 = 1;
              while (v40 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v42 = v39 + v41++;
                v39 = v42 & (v56 - 1);
                v40 = *(v55[0] + v39);
                if (v37 == v40)
                {
                  goto LABEL_53;
                }
              }

LABEL_47:
              v38 = *&v66[8 * v37];
              if (v30 >= HIDWORD(v60[1]))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v60, v61, v30 + 1, 8);
                v30 = v60[1];
              }

              *(v60[0] + v30) = v38;
              v30 = ++LODWORD(v60[1]);
              goto LABEL_50;
            }

LABEL_59:
            if (v57 != v59)
            {
              free(v57);
            }

            llvm::deallocate_buffer(v55[0], (8 * v56), 8uLL);
            v43 = v60[0];
            v44 = LODWORD(v60[1]);
            v45 = mlir::RankedTensorType::getElementType(&v51);
            v46 = mlir::RankedTensorType::get(v43, v44, v45, 0);
            v47 = *(a5 + 8);
            if (v47 >= *(a5 + 12))
            {
              v48 = v46;
              llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v47 + 1, 8);
              v46 = v48;
              LODWORD(v47) = *(a5 + 8);
            }

            *(*a5 + 8 * v47) = v46;
            ++*(a5 + 8);
            if (v60[0] != v61)
            {
              free(v60[0]);
            }

            result = 1;
            v27 = v63;
            if (v63 == v65)
            {
              goto LABEL_29;
            }
          }

          else
          {
            result = sub_1001F06E4(a1, a2, "keep dims argument should contain a single BOOL");
            v27 = v63;
            if (v63 == v65)
            {
              goto LABEL_29;
            }
          }

          v28 = result;
          free(v27);
          result = v28;
LABEL_29:
          if (v66 != v68)
          {
            v29 = result;
            free(v66);
            return v29;
          }

          return result;
        }
      }
    }
  }

  v16 = *(mlir::ValueRange::dereference_iterator(v69, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(a5 + 8);
  if (v17 >= *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v17 + 1, 8);
    LODWORD(v17) = *(a5 + 8);
  }

  *(*a5 + 8 * v17) = v16;
  ++*(a5 + 8);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMeanOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 3)
  {
    if (!sub_10020AEAC(a2, a3, a4, 3, &v20))
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 3 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceSumOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 3)
  {
    return sub_10020AEAC(a2, a3, a4, 3, a11);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 3 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceSumOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 3)
  {
    if (!sub_10020AEAC(a2, a3, a4, 3, &v20))
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 3 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceMaxOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 3)
  {
    return sub_10020AEAC(a2, a3, a4, 3, a11);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 3 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMaxOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 3)
  {
    if (!sub_10020AEAC(a2, a3, a4, 3, &v20))
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 3 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceMinOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 3)
  {
    return sub_10020AEAC(a2, a3, a4, 3, a11);
  }

  else
  {
    return sub_1001F06E4(a2, a3, "expected exactly 3 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMinOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = v22;
  v21 = 0x600000000;
  if (a5 == 3)
  {
    if (!sub_10020AEAC(a2, a3, a4, 3, &v20))
    {
      goto LABEL_3;
    }
  }

  else if (!sub_1001F06E4(a2, a3, "expected exactly 3 operands"))
  {
LABEL_3:
    v11 = 0;
    v12 = v20;
    if (v20 == v22)
    {
      return v11;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(v19, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v20, v21);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v19[0], v19[1], v18[0], v18[1]))
  {
    v13 = v20;
    v14 = v21;
    *(a11 + 8) = 0;
    if (v14 <= *(a11 + 12))
    {
      if (!v14)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v14, 8);
      v15 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v15), v13, 8 * v14);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v14;
  }

  v11 = 1;
  v12 = v20;
  if (v20 != v22)
  {
LABEL_14:
    free(v12);
  }

  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::verify(mlir::Operation **this)
{
  v156 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v156);
  v3 = v2;
  *&v166 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *mlir::RankedTensorType::getShape(&v166);
  if (v4 <= v3)
  {
    if (*(*this + 9))
    {
      v32 = *this - 16;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v154 = 0;
    v155 = v33;
    v34 = *(*(*this + 9) + 56);
    v163 = &v154;
    *&v166 = v34;
    DefiningOp = mlir::Value::getDefiningOp(&v166);
    if (!DefiningOp || !sub_100270924(&v163, DefiningOp))
    {
      return 1;
    }

    sub_1000C1790(&v154, &v166);
    v36 = v167;
    v157 = v166;
    v37 = v171;
    v163 = v165;
    v164 = 0x600000000;
    v38 = v167;
    v39 = v171 - v167;
    if ((v171 - v167) < 7)
    {
      v40 = 0;
    }

    else
    {
      v149 = v167;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v165, v171 - v167, 8);
      v36 = v149;
      v40 = v164;
    }

    *__s2 = v157;
    v160 = v36;
    v161 = v3;
    v162 = 1;
    if (v37 != v38)
    {
      v43 = &v163[v40];
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(__s2, &v150);
        if (v151 > 0x40)
        {
          v44 = (v161 & (*v150 >> 63)) + *v150;
          operator delete[]();
        }

        if (v151)
        {
          v45 = (v161 & ((v150 << -v151) >> -v151 >> 63)) + ((v150 << -v151) >> -v151);
        }

        else
        {
          v45 = 0;
        }

        *v43++ = v45;
        *&v160 = v160 + 1;
      }

      while (v160 != v37);
      v40 = v164;
    }

    LODWORD(v164) = v40 + v39;
    Shape = mlir::TensorType::getShape(&v156);
    if (v164)
    {
      v48 = v163;
      v49 = &v163[v164];
      v50 = 1;
      while (1)
      {
        v51 = *v48;
        if (*v48 >= v3)
        {
          break;
        }

        v52 = Shape[v51];
        if (v52 == 1)
        {
          if (++v48 == v49)
          {
            if (v50)
            {
              goto LABEL_112;
            }

            v24 = 1;
            goto LABEL_152;
          }
        }

        else
        {
          if (v52 != 0x8000000000000000)
          {
            LOWORD(v161) = 257;
            mlir::OpState::emitError(this, __s2, &v166);
            if (v166)
            {
              LODWORD(v150) = 3;
              v151 = " shrink dimension ";
              v152 = 18;
              v79 = &v150;
              v80 = *(&v167 + 1);
              if (v168 >= v169)
              {
                if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v168 > &v150)
                {
                  v140 = &v150 - *(&v167 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
                  v80 = *(&v167 + 1);
                  v79 = &v140[*(&v167 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
                  v79 = &v150;
                  v80 = *(&v167 + 1);
                }
              }

              v81 = v80 + 24 * v168;
              v82 = *v79;
              *(v81 + 16) = v79[2];
              *v81 = v82;
              v83 = ++v168;
              if (v166)
              {
                LODWORD(v150) = 2;
                v151 = v51;
                v84 = &v150;
                v85 = *(&v167 + 1);
                if (v83 >= v169)
                {
                  if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v83 > &v150)
                  {
                    v142 = &v150 - *(&v167 + 1);
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v83 + 1, 24);
                    v85 = *(&v167 + 1);
                    v84 = &v142[*(&v167 + 1)];
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v83 + 1, 24);
                    v84 = &v150;
                    v85 = *(&v167 + 1);
                  }
                }

                v86 = v85 + 24 * v168;
                v87 = *v84;
                *(v86 + 16) = v84[2];
                *v86 = v87;
                v88 = ++v168;
                if (v166)
                {
                  LODWORD(v150) = 3;
                  v151 = " has non-unit dimension length ";
                  v152 = 31;
                  v89 = &v150;
                  v90 = *(&v167 + 1);
                  if (v88 >= v169)
                  {
                    if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v88 > &v150)
                    {
                      v145 = &v150 - *(&v167 + 1);
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v88 + 1, 24);
                      v90 = *(&v167 + 1);
                      v89 = &v145[*(&v167 + 1)];
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v88 + 1, 24);
                      v89 = &v150;
                      v90 = *(&v167 + 1);
                    }
                  }

                  v91 = v90 + 24 * v168;
                  v92 = *v89;
                  *(v91 + 16) = v89[2];
                  *v91 = v92;
                  v93 = ++v168;
                  if (v166)
                  {
                    LODWORD(v150) = 2;
                    v151 = v52;
                    v94 = &v150;
                    v95 = *(&v167 + 1);
                    if (v93 >= v169)
                    {
                      if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v93 > &v150)
                      {
                        v147 = &v150 - *(&v167 + 1);
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v93 + 1, 24);
                        v95 = *(&v167 + 1);
                        v94 = &v147[*(&v167 + 1)];
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v93 + 1, 24);
                        v94 = &v150;
                        v95 = *(&v167 + 1);
                      }
                    }

                    v96 = v95 + 24 * v168;
                    v97 = *v94;
                    *(v96 + 16) = v94[2];
                    *v96 = v97;
                    v98 = ++v168;
                    if (v166)
                    {
                      LODWORD(v150) = 3;
                      v151 = " in input tensor.";
                      v152 = 17;
                      v99 = &v150;
                      v100 = *(&v167 + 1);
                      if (v98 >= v169)
                      {
                        if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v98 > &v150)
                        {
                          v148 = &v150 - *(&v167 + 1);
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v98 + 1, 24);
                          v100 = *(&v167 + 1);
                          v99 = &v148[*(&v167 + 1)];
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v98 + 1, 24);
                          v99 = &v150;
                          v100 = *(&v167 + 1);
                        }
                      }

                      v101 = v100 + 24 * v168;
                      v102 = *v99;
                      *(v101 + 16) = v99[2];
                      *v101 = v102;
                      ++v168;
                    }
                  }
                }
              }
            }

            v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
            if (v166)
            {
              mlir::InFlightDiagnostic::report(&v166);
            }

            if (v177 != 1)
            {
              goto LABEL_152;
            }

            if (v176 != &v177)
            {
              free(v176);
            }

            v103 = __p;
            if (__p)
            {
              v104 = v175;
              v105 = __p;
              if (v175 != __p)
              {
                do
                {
                  v104 = sub_10005BEF4(v104 - 1);
                }

                while (v104 != v103);
                v105 = __p;
              }

              v175 = v103;
              operator delete(v105);
            }

            v75 = v172;
            if (v172)
            {
              v106 = v173;
              v77 = v172;
              if (v173 != v172)
              {
                do
                {
                  v107 = *--v106;
                  *v106 = 0;
                  if (v107)
                  {
                    operator delete[]();
                  }
                }

                while (v106 != v75);
                goto LABEL_148;
              }

              goto LABEL_149;
            }

            goto LABEL_150;
          }

          v50 = 0;
          ++v48;
          v24 = 1;
          if (v48 == v49)
          {
            goto LABEL_152;
          }
        }
      }

      LOWORD(v161) = 257;
      mlir::OpState::emitError(this, __s2, &v166);
      if (v166)
      {
        LODWORD(v150) = 3;
        v151 = " shrink axes contains ";
        v152 = 22;
        v53 = &v150;
        v54 = *(&v167 + 1);
        if (v168 >= v169)
        {
          if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v168 > &v150)
          {
            v139 = &v150 - *(&v167 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
            v54 = *(&v167 + 1);
            v53 = &v139[*(&v167 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
            v53 = &v150;
            v54 = *(&v167 + 1);
          }
        }

        v55 = v54 + 24 * v168;
        v56 = *v53;
        *(v55 + 16) = v53[2];
        *v55 = v56;
        v57 = ++v168;
        if (v166)
        {
          LODWORD(v150) = 2;
          v151 = v51;
          v58 = &v150;
          v59 = *(&v167 + 1);
          if (v57 >= v169)
          {
            if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v57 > &v150)
            {
              v141 = &v150 - *(&v167 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v57 + 1, 24);
              v59 = *(&v167 + 1);
              v58 = &v141[*(&v167 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v57 + 1, 24);
              v58 = &v150;
              v59 = *(&v167 + 1);
            }
          }

          v60 = v59 + 24 * v168;
          v61 = *v58;
          *(v60 + 16) = v58[2];
          *v60 = v61;
          v62 = ++v168;
          if (v166)
          {
            LODWORD(v150) = 3;
            v151 = " which is higher than input rank ";
            v152 = 33;
            v63 = &v150;
            v64 = *(&v167 + 1);
            if (v62 >= v169)
            {
              if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v62 > &v150)
              {
                v144 = &v150 - *(&v167 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v62 + 1, 24);
                v64 = *(&v167 + 1);
                v63 = &v144[*(&v167 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v62 + 1, 24);
                v63 = &v150;
                v64 = *(&v167 + 1);
              }
            }

            v65 = v64 + 24 * v168;
            v66 = *v63;
            *(v65 + 16) = v63[2];
            *v65 = v66;
            v67 = ++v168;
            if (v166)
            {
              LODWORD(v150) = 2;
              v151 = v3;
              v68 = &v150;
              v69 = *(&v167 + 1);
              if (v67 >= v169)
              {
                if (*(&v167 + 1) <= &v150 && *(&v167 + 1) + 24 * v67 > &v150)
                {
                  v146 = &v150 - *(&v167 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v67 + 1, 24);
                  v69 = *(&v167 + 1);
                  v68 = &v146[*(&v167 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v67 + 1, 24);
                  v68 = &v150;
                  v69 = *(&v167 + 1);
                }
              }

              v70 = v69 + 24 * v168;
              v71 = *v68;
              *(v70 + 16) = v68[2];
              *v70 = v71;
              ++v168;
            }
          }
        }
      }

      v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
      if (v166)
      {
        mlir::InFlightDiagnostic::report(&v166);
      }

      if (v177 != 1)
      {
        goto LABEL_152;
      }

      if (v176 != &v177)
      {
        free(v176);
      }

      v72 = __p;
      if (__p)
      {
        v73 = v175;
        v74 = __p;
        if (v175 != __p)
        {
          do
          {
            v73 = sub_10005BEF4(v73 - 1);
          }

          while (v73 != v72);
          v74 = __p;
        }

        v175 = v72;
        operator delete(v74);
      }

      v75 = v172;
      if (v172)
      {
        v76 = v173;
        v77 = v172;
        if (v173 != v172)
        {
          do
          {
            v78 = *--v76;
            *v76 = 0;
            if (v78)
            {
              operator delete[]();
            }
          }

          while (v76 != v75);
LABEL_148:
          v77 = v172;
        }

LABEL_149:
        v173 = v75;
        operator delete(v77);
      }

LABEL_150:
      v132 = *(&v167 + 1);
      if (*(&v167 + 1) == &v170)
      {
        goto LABEL_152;
      }

      goto LABEL_151;
    }

LABEL_112:
    __s2[0] = &v160;
    __s2[1] = 0x600000000;
    if (v47)
    {
      v108 = 0;
      v109 = 0;
      v110 = &Shape[v47];
      do
      {
        if (v164)
        {
          v112 = 8 * v164;
          v113 = v163;
          while (*v113 != v109)
          {
            ++v113;
            v112 -= 8;
            if (!v112)
            {
              goto LABEL_114;
            }
          }
        }

        else
        {
          v113 = v163;
        }

        if (v113 == &v163[v164])
        {
LABEL_114:
          v111 = *Shape;
          if (v108 >= HIDWORD(__s2[1]))
          {
            v114 = Shape;
            llvm::SmallVectorBase<unsigned int>::grow_pod(__s2, &v160, v108 + 1, 8);
            Shape = v114;
            v108 = __s2[1];
          }

          *(__s2[0] + v108) = v111;
          v108 = ++LODWORD(__s2[1]);
        }

        ++v109;
        ++Shape;
      }

      while (Shape != v110);
    }

    v115 = mlir::TensorType::getShape(&v155);
    if (v116 == LODWORD(__s2[1]) && (v117 = __s2[0], !memcmp(v115, __s2[0], 8 * LODWORD(__s2[1]))))
    {
      v24 = 1;
      if (v117 != &v160)
      {
LABEL_144:
        v132 = v117;
LABEL_151:
        free(v132);
      }
    }

    else
    {
      v153 = 257;
      mlir::OpState::emitError(this, &v150, &v166);
      if (v166)
      {
        LODWORD(v157) = 3;
        *(&v157 + 1) = " expected output shape mismatch: ";
        v158 = 33;
        v118 = &v157;
        v119 = *(&v167 + 1);
        if (v168 >= v169)
        {
          if (*(&v167 + 1) <= &v157 && *(&v167 + 1) + 24 * v168 > &v157)
          {
            v137 = &v157 - *(&v167 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
            v119 = *(&v167 + 1);
            v118 = &v137[*(&v167 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
            v118 = &v157;
            v119 = *(&v167 + 1);
          }
        }

        v120 = v119 + 24 * v168;
        v121 = *v118;
        *(v120 + 16) = *(v118 + 2);
        *v120 = v121;
        ++v168;
      }

      v122 = mlir::TensorType::getShape(&v155);
      if (v166)
      {
        *&v157 = ", ";
        sub_100066E2C(v122, &v122[v123], &v166 + 8, &v166 + 8, &v157);
        if (v166)
        {
          LODWORD(v157) = 3;
          *(&v157 + 1) = " vs ";
          v158 = 4;
          v124 = &v157;
          v125 = *(&v167 + 1);
          if (v168 >= v169)
          {
            if (*(&v167 + 1) <= &v157 && *(&v167 + 1) + 24 * v168 > &v157)
            {
              v138 = &v157 - *(&v167 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
              v125 = *(&v167 + 1);
              v124 = &v138[*(&v167 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
              v124 = &v157;
              v125 = *(&v167 + 1);
            }
          }

          v126 = v125 + 24 * v168;
          v127 = *v124;
          *(v126 + 16) = *(v124 + 2);
          *v126 = v127;
          ++v168;
          if (v166)
          {
            *&v157 = ", ";
            sub_100066E2C(__s2[0], __s2[0] + LODWORD(__s2[1]), &v166 + 8, &v166 + 8, &v157);
            if (v166)
            {
              LODWORD(v157) = 3;
              *(&v157 + 1) = " Shrink dims = ";
              v158 = 15;
              v128 = &v157;
              v129 = *(&v167 + 1);
              if (v168 >= v169)
              {
                if (*(&v167 + 1) <= &v157 && *(&v167 + 1) + 24 * v168 > &v157)
                {
                  v143 = &v157 - *(&v167 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
                  v129 = *(&v167 + 1);
                  v128 = &v143[*(&v167 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
                  v128 = &v157;
                  v129 = *(&v167 + 1);
                }
              }

              v130 = v129 + 24 * v168;
              v131 = *v128;
              *(v130 + 16) = *(v128 + 2);
              *v130 = v131;
              ++v168;
              if (v166)
              {
                *&v157 = ", ";
                sub_100066E2C(v163, &v163[v164], &v166 + 8, &v166 + 8, &v157);
              }
            }
          }
        }
      }

      v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
      if (v166)
      {
        mlir::InFlightDiagnostic::report(&v166);
      }

      if (v177 == 1)
      {
        sub_10005BE10(&v166 + 1);
      }

      v117 = __s2[0];
      if (__s2[0] != &v160)
      {
        goto LABEL_144;
      }
    }

LABEL_152:
    v41 = v163;
    if (v163 == v165)
    {
      return v24;
    }

    goto LABEL_38;
  }

  v165[8] = 257;
  mlir::OpState::emitError(this, &v163, &v166);
  if (v166)
  {
    LODWORD(__s2[0]) = 3;
    __s2[1] = " number of axes to shrink ";
    *&v160 = 26;
    v5 = __s2;
    v6 = *(&v167 + 1);
    if (v168 >= v169)
    {
      if (*(&v167 + 1) <= __s2 && *(&v167 + 1) + 24 * v168 > __s2)
      {
        v133 = __s2 - *(&v167 + 1);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
        v6 = *(&v167 + 1);
        v5 = &v133[*(&v167 + 1)];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v168 + 1, 24);
        v5 = __s2;
        v6 = *(&v167 + 1);
      }
    }

    v7 = v6 + 24 * v168;
    v8 = *v5;
    *(v7 + 16) = v5[2];
    *v7 = v8;
    v9 = ++v168;
    if (v166)
    {
      LODWORD(__s2[0]) = 2;
      __s2[1] = v4;
      v10 = __s2;
      v11 = *(&v167 + 1);
      if (v9 >= v169)
      {
        if (*(&v167 + 1) <= __s2 && *(&v167 + 1) + 24 * v9 > __s2)
        {
          v134 = __s2 - *(&v167 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v9 + 1, 24);
          v11 = *(&v167 + 1);
          v10 = &v134[*(&v167 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v9 + 1, 24);
          v10 = __s2;
          v11 = *(&v167 + 1);
        }
      }

      v12 = v11 + 24 * v168;
      v13 = *v10;
      *(v12 + 16) = v10[2];
      *v12 = v13;
      v14 = ++v168;
      if (v166)
      {
        LODWORD(__s2[0]) = 3;
        __s2[1] = " is larger than input rank ";
        *&v160 = 27;
        v15 = __s2;
        v16 = *(&v167 + 1);
        if (v14 >= v169)
        {
          if (*(&v167 + 1) <= __s2 && *(&v167 + 1) + 24 * v14 > __s2)
          {
            v135 = __s2 - *(&v167 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v14 + 1, 24);
            v16 = *(&v167 + 1);
            v15 = &v135[*(&v167 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v14 + 1, 24);
            v15 = __s2;
            v16 = *(&v167 + 1);
          }
        }

        v17 = v16 + 24 * v168;
        v18 = *v15;
        *(v17 + 16) = v15[2];
        *v17 = v18;
        v19 = ++v168;
        if (v166)
        {
          LODWORD(__s2[0]) = 2;
          __s2[1] = v3;
          v20 = __s2;
          v21 = *(&v167 + 1);
          if (v19 >= v169)
          {
            if (*(&v167 + 1) <= __s2 && *(&v167 + 1) + 24 * v19 > __s2)
            {
              v136 = __s2 - *(&v167 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v19 + 1, 24);
              v21 = *(&v167 + 1);
              v20 = &v136[*(&v167 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v167 + 8, &v170, v19 + 1, 24);
              v20 = __s2;
              v21 = *(&v167 + 1);
            }
          }

          v22 = v21 + 24 * v168;
          v23 = *v20;
          *(v22 + 16) = v20[2];
          *v22 = v23;
          ++v168;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
  if (v166)
  {
    mlir::InFlightDiagnostic::report(&v166);
  }

  if (v177 == 1)
  {
    if (v176 != &v177)
    {
      free(v176);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v175;
      v27 = __p;
      if (v175 != __p)
      {
        do
        {
          v26 = sub_10005BEF4(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v175 = v25;
      operator delete(v27);
    }

    v28 = v172;
    if (v172)
    {
      v29 = v173;
      v30 = v172;
      if (v173 != v172)
      {
        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
        v30 = v172;
      }

      v173 = v28;
      operator delete(v30);
    }

    v41 = *(&v167 + 1);
    if (*(&v167 + 1) != &v170)
    {
LABEL_38:
      free(v41);
    }
  }

  return v24;
}

__n128 sub_10020CF30(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v11 = 2;
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

void *sub_10020D024(void *result, uint64_t a2)
{
  if (*result)
  {
    v3 = ", ";
    v2 = result;
    sub_100066E2C(*a2, (*a2 + 8 * *(a2 + 8)), (result + 1), (result + 1), &v3);
    return v2;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ScatterNdOp::verify(mlir::Operation **this)
{
  v152 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::TensorType::getShape(&v152);
  mlir::TensorType::getShape(&v152);
  v4 = v3;
  if (!v3)
  {
    v151 = 257;
    mlir::OpState::emitError(this, v150, v156);
    if (v156[0])
    {
      v153 = 3;
      v154 = "input/output rank must be >= 1";
      v155 = 30;
      v5 = &v153;
      v6 = v157;
      if (v158 >= v159)
      {
        if (v157 <= &v153 && v157 + 24 * v158 > &v153)
        {
          v133 = &v153 - v157;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
          v6 = v157;
          v5 = (v157 + v133);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
          v5 = &v153;
          v6 = v157;
        }
      }

      v7 = &v6[24 * v158];
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      ++v158;
      if (v156[0])
      {
        mlir::InFlightDiagnostic::report(v156);
      }
    }

    if (v166 == 1)
    {
      if (v165 != &v166)
      {
        free(v165);
      }

      v9 = v163;
      if (v163)
      {
        v10 = v164;
        v11 = v163;
        if (v164 != v163)
        {
          do
          {
            v10 = sub_10005BEF4(v10 - 1);
          }

          while (v10 != v9);
          v11 = v163;
        }

        v164 = v9;
        operator delete(v11);
      }

      v12 = v161;
      if (v161)
      {
        v13 = v162;
        v14 = v161;
        if (v162 != v161)
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
          v14 = v161;
        }

        v162 = v12;
        operator delete(v14);
      }

      if (v157 != v160)
      {
        free(v157);
      }
    }
  }

  v149 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = mlir::TensorType::getShape(&v149);
  v18 = v17;
  mlir::TensorType::getShape(&v149);
  v20 = *(v16 + 8 * v18 - 8);
  v21 = v4 - v20;
  if (v4 < v20)
  {
    v151 = 257;
    mlir::OpState::emitError(this, v150, v156);
    if (v156[0])
    {
      v153 = 3;
      v154 = "innermost dimension of indices ";
      v155 = 31;
      v22 = &v153;
      v23 = v157;
      if (v158 >= v159)
      {
        if (v157 <= &v153 && v157 + 24 * v158 > &v153)
        {
          v132 = &v153 - v157;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
          v23 = v157;
          v22 = (v157 + v132);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
          v22 = &v153;
          v23 = v157;
        }
      }

      v24 = &v23[24 * v158];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v158;
      if (v156[0])
      {
        v153 = 2;
        v154 = v20;
        v27 = &v153;
        v28 = v157;
        if (v26 >= v159)
        {
          if (v157 <= &v153 && v157 + 24 * v26 > &v153)
          {
            v134 = &v153 - v157;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v26 + 1, 24);
            v28 = v157;
            v27 = (v157 + v134);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v26 + 1, 24);
            v27 = &v153;
            v28 = v157;
          }
        }

        v29 = &v28[24 * v158];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        v31 = ++v158;
        if (v156[0])
        {
          v153 = 3;
          v154 = " > output rank ";
          v155 = 15;
          v32 = &v153;
          v33 = v157;
          if (v31 >= v159)
          {
            if (v157 <= &v153 && v157 + 24 * v31 > &v153)
            {
              v135 = &v153 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v31 + 1, 24);
              v33 = v157;
              v32 = (v157 + v135);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v31 + 1, 24);
              v32 = &v153;
              v33 = v157;
            }
          }

          v34 = &v33[24 * v158];
          v35 = *v32;
          *(v34 + 2) = *(v32 + 2);
          *v34 = v35;
          v36 = ++v158;
          if (v156[0])
          {
            v153 = 2;
            v154 = v4;
            v37 = &v153;
            v38 = v157;
            if (v36 >= v159)
            {
              if (v157 <= &v153 && v157 + 24 * v36 > &v153)
              {
                v136 = &v153 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v36 + 1, 24);
                v38 = v157;
                v37 = (v157 + v136);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v36 + 1, 24);
                v37 = &v153;
                v38 = v157;
              }
            }

            v39 = &v38[24 * v158];
            v40 = *v37;
            *(v39 + 2) = *(v37 + 2);
            *v39 = v40;
            ++v158;
          }
        }
      }
    }

    v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
    if (v156[0])
    {
      mlir::InFlightDiagnostic::report(v156);
    }

    if (v166 != 1)
    {
      return v41;
    }

    if (v165 != &v166)
    {
      free(v165);
    }

    v42 = v163;
    if (v163)
    {
      v43 = v164;
      v44 = v163;
      if (v164 != v163)
      {
        do
        {
          v43 = sub_10005BEF4(v43 - 1);
        }

        while (v43 != v42);
        v44 = v163;
      }

      v164 = v42;
      operator delete(v44);
    }

    v45 = v161;
    if (!v161)
    {
      goto LABEL_120;
    }

    v46 = v162;
    v47 = v161;
    if (v162 == v161)
    {
      goto LABEL_119;
    }

    do
    {
      v48 = *--v46;
      *v46 = 0;
      if (v48)
      {
        operator delete[]();
      }
    }

    while (v46 != v45);
    goto LABEL_118;
  }

  v49 = v19;
  v148 = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v149))
  {
    return 1;
  }

  v50 = mlir::TensorType::getShape(&v149);
  if (v51)
  {
    v52 = 8 * v51;
    while (*v50 != 0x8000000000000000)
    {
      ++v50;
      v52 -= 8;
      if (!v52)
      {
        goto LABEL_55;
      }
    }

    return 1;
  }

LABEL_55:
  if (!mlir::TensorType::hasRank(&v148))
  {
    return 1;
  }

  v53 = mlir::TensorType::getShape(&v148);
  if (v54)
  {
    v55 = 8 * v54;
    while (*v53 != 0x8000000000000000)
    {
      ++v53;
      v55 -= 8;
      if (!v55)
      {
        goto LABEL_60;
      }
    }

    return 1;
  }

LABEL_60:
  v56 = mlir::TensorType::getShape(&v148);
  mlir::TensorType::getShape(&v148);
  v58 = v57;
  v59 = v49 + v21 - 1;
  if (v57 == v59)
  {
    v147 = 0;
    if (v57 >= 1)
    {
      v60 = 0;
      v61 = Shape - 8 * v49 + 8 * v20;
      while (1)
      {
        if (v49 - 2 >= v60)
        {
          if (*(v56 + 8 * v60) != *(v16 + 8 * v60))
          {
            v147 = v60;
            v151 = 257;
            mlir::OpState::emitError(this, v150, v156);
            sub_10008AE40(v156, "updates shape[");
            sub_10020E254(v126, &v147);
            sub_10008AE40(v127, "] is ");
            sub_10020CF30(v128, (v56 + 8 * v147));
            sub_10008AE40(v129, " expect it to be ");
            sub_10020CF30(v130, (v16 + 8 * v147));
            v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v131);
            sub_10006296C(v156);
            return v41;
          }
        }

        else if (*(v56 + 8 * v60) != *(v61 + 8 + 8 * v60))
        {
          v147 = v60;
          v151 = 257;
          mlir::OpState::emitError(this, v150, v156);
          if (v156[0])
          {
            v153 = 3;
            v154 = "updates shape[";
            v155 = 14;
            v62 = &v153;
            v63 = v157;
            if (v158 >= v159)
            {
              if (v157 <= &v153 && v157 + 24 * v158 > &v153)
              {
                v141 = &v153 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                v63 = v157;
                v62 = (v157 + v141);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                v62 = &v153;
                v63 = v157;
              }
            }

            v64 = &v63[24 * v158];
            v65 = *v62;
            *(v64 + 2) = *(v62 + 2);
            *v64 = v65;
            v66 = ++v158;
            if (v156[0])
            {
              v153 = 2;
              v154 = v60;
              v67 = &v153;
              v68 = v157;
              if (v66 >= v159)
              {
                if (v157 <= &v153 && v157 + 24 * v66 > &v153)
                {
                  v142 = &v153 - v157;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v66 + 1, 24);
                  v68 = v157;
                  v67 = (v157 + v142);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v66 + 1, 24);
                  v67 = &v153;
                  v68 = v157;
                }
              }

              v69 = &v68[24 * v158];
              v70 = *v67;
              *(v69 + 2) = *(v67 + 2);
              *v69 = v70;
              v71 = ++v158;
              if (v156[0])
              {
                v153 = 3;
                v154 = "] is ";
                v155 = 5;
                v72 = &v153;
                v73 = v157;
                if (v71 >= v159)
                {
                  if (v157 <= &v153 && v157 + 24 * v71 > &v153)
                  {
                    v143 = &v153 - v157;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v71 + 1, 24);
                    v73 = v157;
                    v72 = (v157 + v143);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v71 + 1, 24);
                    v72 = &v153;
                    v73 = v157;
                  }
                }

                v74 = &v73[24 * v158];
                v75 = *v72;
                *(v74 + 2) = *(v72 + 2);
                *v74 = v75;
                v76 = ++v158;
                if (v156[0])
                {
                  v77 = *(v56 + 8 * v60);
                  v153 = 2;
                  v154 = v77;
                  v78 = &v153;
                  v79 = v157;
                  if (v76 >= v159)
                  {
                    if (v157 <= &v153 && v157 + 24 * v76 > &v153)
                    {
                      v144 = &v153 - v157;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v76 + 1, 24);
                      v79 = v157;
                      v78 = (v157 + v144);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v76 + 1, 24);
                      v78 = &v153;
                      v79 = v157;
                    }
                  }

                  v80 = &v79[24 * v158];
                  v81 = *v78;
                  *(v80 + 2) = *(v78 + 2);
                  *v80 = v81;
                  v82 = ++v158;
                  if (v156[0])
                  {
                    v153 = 3;
                    v154 = " expect it to be ";
                    v155 = 17;
                    v83 = &v153;
                    v84 = v157;
                    if (v82 >= v159)
                    {
                      if (v157 <= &v153 && v157 + 24 * v82 > &v153)
                      {
                        v145 = &v153 - v157;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v82 + 1, 24);
                        v84 = v157;
                        v83 = (v157 + v145);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v82 + 1, 24);
                        v83 = &v153;
                        v84 = v157;
                      }
                    }

                    v85 = &v84[24 * v158];
                    v86 = *v83;
                    *(v85 + 2) = *(v83 + 2);
                    *v85 = v86;
                    v87 = ++v158;
                    if (v156[0])
                    {
                      v88 = *(v61 + 8 + 8 * v60);
                      v153 = 2;
                      v154 = v88;
                      v89 = &v153;
                      v90 = v157;
                      if (v87 >= v159)
                      {
                        if (v157 <= &v153 && v157 + 24 * v87 > &v153)
                        {
                          v146 = &v153 - v157;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v87 + 1, 24);
                          v90 = v157;
                          v89 = (v157 + v146);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v87 + 1, 24);
                          v89 = &v153;
                          v90 = v157;
                        }
                      }

                      v91 = &v90[24 * v158];
                      v92 = *v89;
                      *(v91 + 2) = *(v89 + 2);
                      *v91 = v92;
                      ++v158;
                    }
                  }
                }
              }
            }
          }

          v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
          if (v156[0])
          {
            mlir::InFlightDiagnostic::report(v156);
          }

          if ((v166 & 1) == 0)
          {
            return v41;
          }

          if (v165 != &v166)
          {
            free(v165);
          }

          v93 = v163;
          if (v163)
          {
            v94 = v164;
            v95 = v163;
            if (v164 != v163)
            {
              do
              {
                v94 = sub_10005BEF4(v94 - 1);
              }

              while (v94 != v93);
              v95 = v163;
            }

            v164 = v93;
            operator delete(v95);
          }

          v96 = v161;
          if (v161)
          {
            v97 = v162;
            v98 = v161;
            if (v162 != v161)
            {
              do
              {
                v124 = *--v97;
                *v97 = 0;
                if (v124)
                {
                  operator delete[]();
                }
              }

              while (v97 != v96);
              v98 = v161;
            }

            v162 = v96;
            operator delete(v98);
          }

          v123 = v157;
          if (v157 == v160)
          {
            return v41;
          }

LABEL_121:
          free(v123);
          return v41;
        }

        if (v57 <= ++v60)
        {
          v147 = v60;
          return 1;
        }
      }
    }

    return 1;
  }

  v151 = 257;
  mlir::OpState::emitError(this, v150, v156);
  if (v156[0])
  {
    v153 = 3;
    v154 = "updates rank is ";
    v155 = 16;
    v99 = &v153;
    v100 = v157;
    if (v158 >= v159)
    {
      if (v157 <= &v153 && v157 + 24 * v158 > &v153)
      {
        v137 = &v153 - v157;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
        v100 = v157;
        v99 = (v157 + v137);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
        v99 = &v153;
        v100 = v157;
      }
    }

    v101 = &v100[24 * v158];
    v102 = *v99;
    *(v101 + 2) = *(v99 + 2);
    *v101 = v102;
    v103 = ++v158;
    if (v156[0])
    {
      v153 = 2;
      v154 = v58;
      v104 = &v153;
      v105 = v157;
      if (v103 >= v159)
      {
        if (v157 <= &v153 && v157 + 24 * v103 > &v153)
        {
          v138 = &v153 - v157;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v103 + 1, 24);
          v105 = v157;
          v104 = (v157 + v138);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v103 + 1, 24);
          v104 = &v153;
          v105 = v157;
        }
      }

      v106 = &v105[24 * v158];
      v107 = *v104;
      *(v106 + 2) = *(v104 + 2);
      *v106 = v107;
      v108 = ++v158;
      if (v156[0])
      {
        v153 = 3;
        v154 = " expected rank is ";
        v155 = 18;
        v109 = &v153;
        v110 = v157;
        if (v108 >= v159)
        {
          if (v157 <= &v153 && v157 + 24 * v108 > &v153)
          {
            v139 = &v153 - v157;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v108 + 1, 24);
            v110 = v157;
            v109 = (v157 + v139);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v108 + 1, 24);
            v109 = &v153;
            v110 = v157;
          }
        }

        v111 = &v110[24 * v158];
        v112 = *v109;
        *(v111 + 2) = *(v109 + 2);
        *v111 = v112;
        v113 = ++v158;
        if (v156[0])
        {
          v153 = 2;
          v154 = v59;
          v114 = &v153;
          v115 = v157;
          if (v113 >= v159)
          {
            if (v157 <= &v153 && v157 + 24 * v113 > &v153)
            {
              v140 = &v153 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v113 + 1, 24);
              v115 = v157;
              v114 = (v157 + v140);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v113 + 1, 24);
              v114 = &v153;
              v115 = v157;
            }
          }

          v116 = &v115[24 * v158];
          v117 = *v114;
          *(v116 + 2) = *(v114 + 2);
          *v116 = v117;
          ++v158;
        }
      }
    }
  }

  v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
  if (v156[0])
  {
    mlir::InFlightDiagnostic::report(v156);
  }

  if (v166 == 1)
  {
    if (v165 != &v166)
    {
      free(v165);
    }

    v118 = v163;
    if (v163)
    {
      v119 = v164;
      v120 = v163;
      if (v164 != v163)
      {
        do
        {
          v119 = sub_10005BEF4(v119 - 1);
        }

        while (v119 != v118);
        v120 = v163;
      }

      v164 = v118;
      operator delete(v120);
    }

    v45 = v161;
    if (!v161)
    {
LABEL_120:
      v123 = v157;
      if (v157 == v160)
      {
        return v41;
      }

      goto LABEL_121;
    }

    v121 = v162;
    v47 = v161;
    if (v162 == v161)
    {
LABEL_119:
      v162 = v45;
      operator delete(v47);
      goto LABEL_120;
    }

    do
    {
      v122 = *--v121;
      *v121 = 0;
      if (v122)
      {
        operator delete[]();
      }
    }

    while (v121 != v45);
LABEL_118:
    v47 = v161;
    goto LABEL_119;
  }

  return v41;
}

__n128 sub_10020E254(uint64_t a1, int *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v11 = 2;
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

void mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::verify(mlir::Operation **this)
{
  v2 = *(*this + 9);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v52 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v53 = v3;
  if (mlir::TensorType::hasRank(&v53))
  {
    mlir::TensorType::getShape(&v53);
    v51 = v4;
    if (!v4)
    {
      v50 = 257;
      mlir::OpState::emitError(this, v49, v57);
      if (v57[0])
      {
        LODWORD(v54) = 3;
        v55 = "input rank must be >= 1, but got ";
        v56 = 33;
        v5 = &v54;
        v6 = v59;
        if (v60 >= v61)
        {
          if (v59 <= &v54 && v59 + 24 * v60 > &v54)
          {
            v44 = &v54 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v6 = v59;
            v5 = (v59 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v5 = &v54;
            v6 = v59;
          }
        }

        v7 = &v6[24 * v60];
        v8 = *v5;
        *(v7 + 2) = v5[2];
        *v7 = v8;
        v9 = ++v60;
        if (v57[0])
        {
          LODWORD(v54) = 2;
          v55 = 0;
          v10 = &v54;
          v11 = v59;
          if (v9 >= v61)
          {
            if (v59 <= &v54 && v59 + 24 * v9 > &v54)
            {
              v45 = &v54 - v59;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v9 + 1, 24);
              v11 = v59;
              v10 = (v59 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v9 + 1, 24);
              v10 = &v54;
              v11 = v59;
            }
          }

          v12 = &v11[24 * v60];
          v13 = *v10;
          *(v12 + 2) = v10[2];
          *v12 = v13;
          ++v60;
          if (v57[0])
          {
            mlir::InFlightDiagnostic::report(v57);
          }
        }
      }

      if (v68 == 1)
      {
        if (v67 != &v68)
        {
          free(v67);
        }

        v14 = v65;
        if (v65)
        {
          v15 = v66;
          v16 = v65;
          if (v66 != v65)
          {
            do
            {
              v15 = sub_10005BEF4(v15 - 1);
            }

            while (v15 != v14);
            v16 = v65;
          }

          v66 = v14;
          operator delete(v16);
        }

        v17 = v63;
        if (v63)
        {
          v18 = v64;
          v19 = v63;
          if (v64 != v63)
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
            v19 = v63;
          }

          v64 = v17;
          operator delete(v19);
        }

        if (v59 != v62)
        {
          free(v59);
        }
      }
    }

    if (mlir::TensorType::hasRank(&v52) && mlir::TensorType::hasRank(&v53))
    {
      Shape = mlir::TensorType::getShape(&v53);
      if (v22)
      {
        v23 = 8 * v22;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v23 -= 8;
          if (!v23)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
LABEL_33:
        if (!mlir::TensorType::hasRank(&v52))
        {
          return;
        }

        v24 = mlir::TensorType::getShape(&v52);
        if (v25)
        {
          v26 = 8 * v25;
          while (*v24 != 0x8000000000000000)
          {
            ++v24;
            v26 -= 8;
            if (!v26)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_38:
          v27 = mlir::TensorType::getShape(&v53);
          v28 = mlir::TensorType::getShape(&v52);
          v29 = *(*(*this + 9) + 120);
          v57[0] = 0;
          v57[1] = 0;
          v54 = v57;
          v49[0] = v29;
          DefiningOp = mlir::Value::getDefiningOp(v49);
          if (DefiningOp && sub_10026C424(&v54, DefiningOp))
          {
            sub_10020E8BC(v29, v57);
            if ((v62[24] & 1) == 0)
            {
              v46 = sub_10026AFCC();
              sub_10020E8BC(v46, v47);
              return;
            }

            v31 = *v57[0];
            if (v57[0] != &v58)
            {
              free(v57[0]);
            }

            LODWORD(v54) = v31;
            if (v31 < -v51 || v51 <= v31)
            {
              v50 = 257;
              mlir::OpState::emitError(this, v49, v57);
              sub_10008AE40(v57, "Invalid axis ");
              sub_10020E254(v41, &v54);
              sub_10008AE40(v42, " when the input has rank ");
              sub_10020CF30(v43, &v51);
            }

            else
            {
              if (v51 < 1)
              {
                return;
              }

              v32 = 0;
              while (v31 + (v51 & (v31 >> 31)) == v32 || *(v27 + 8 * v32) == *(v28 + 8 * v32))
              {
                if (v51 == ++v32)
                {
                  return;
                }
              }

              v48 = v32;
              v50 = 257;
              mlir::OpState::emitError(this, v49, v57);
              sub_10008AE40(v57, "Input shape[");
              sub_10020E254(v33, &v48);
              sub_10008AE40(v34, "] is ");
              sub_10020CF30(v35, (v27 + 8 * v48));
              sub_10008AE40(v36, ", but indices shape [");
              sub_10020E254(v37, &v48);
              sub_10008AE40(v38, "] is ");
              sub_10020CF30(v39, (v28 + 8 * v48));
            }

            mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
            sub_10006296C(v57);
          }
        }
      }
    }
  }
}

void sub_10020E8BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = &v9;
  v9 = 0;
  __src = a1;
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (DefiningOp && (sub_100297C38(&v8, DefiningOp) & 1) != 0)
  {
    sub_10026BDE8(v9, &__src);
    *a2 = a2 + 16;
    *(a2 + 8) = 0xC00000000;
    v4 = v11;
    v5 = __src;
    if (v11 && &__src != a2)
    {
      if (__src == v13)
      {
        v7 = v11;
        if (v11 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v11, 4), v7 = v11, v5 = __src, v11))
        {
          memcpy(*a2, v5, 4 * v7);
          v5 = __src;
        }

        *(a2 + 8) = v4;
      }

      else
      {
        *a2 = __src;
        v6 = v12;
        *(a2 + 8) = v4;
        *(a2 + 12) = v6;
        __src = v13;
        v12 = 0;
        v5 = v13;
      }

      v11 = 0;
    }

    *(a2 + 64) = 1;
    if (v5 != v13)
    {
      free(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (sub_1001EF434(v2, v3))
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::verify(mlir::Operation **this)
{
  v126 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v126);
  v3 = v2;
  if (!v2)
  {
    v137 = 257;
    mlir::OpState::emitError(this, v135, &v138);
    if (v138)
    {
      LODWORD(v132) = 3;
      v133 = "input/output rank must be >= 1";
      v134[0] = 30;
      v4 = &v132;
      v5 = v141;
      if (v142 >= v143)
      {
        if (v141 <= &v132 && v141 + 24 * v142 > &v132)
        {
          v114 = &v132 - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v5 = v141;
          v4 = (v141 + v114);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v4 = &v132;
          v5 = v141;
        }
      }

      v6 = &v5[24 * v142];
      v7 = *v4;
      *(v6 + 2) = v4[2];
      *v6 = v7;
      ++v142;
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }
    }

    if (v151 == 1)
    {
      if (v150 != &v151)
      {
        free(v150);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v149;
        v10 = __p;
        if (v149 != __p)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v149 = v8;
        operator delete(v10);
      }

      v11 = v146;
      if (v146)
      {
        v12 = v147;
        v13 = v146;
        if (v147 != v146)
        {
          do
          {
            v14 = *--v12;
            *v12 = 0;
            if (v14)
            {
              operator delete[]();
            }
          }

          while (v12 != v11);
          v13 = v146;
        }

        v147 = v11;
        operator delete(v13);
      }

      if (v141 != v144)
      {
        free(v141);
      }
    }
  }

  v15 = *(*(*this + 9) + 56);
  v125 = v15[1] & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::RankedTensorType::getShape(&v125);
  if (mlir::ShapedType::getNumElements(Shape, v17) != v3)
  {
    v137 = 257;
    mlir::OpState::emitError(this, v135, &v138);
    if (v138)
    {
      LODWORD(v132) = 3;
      v133 = "input rank is ";
      v134[0] = 14;
      v18 = &v132;
      v19 = v141;
      if (v142 >= v143)
      {
        if (v141 <= &v132 && v141 + 24 * v142 > &v132)
        {
          v112 = &v132 - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v19 = v141;
          v18 = (v141 + v112);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v18 = &v132;
          v19 = v141;
        }
      }

      v20 = &v19[24 * v142];
      v21 = *v18;
      *(v20 + 2) = v18[2];
      *v20 = v21;
      v22 = ++v142;
      if (v138)
      {
        LODWORD(v132) = 2;
        v133 = v3;
        v23 = &v132;
        v24 = v141;
        if (v22 >= v143)
        {
          if (v141 <= &v132 && v141 + 24 * v22 > &v132)
          {
            v115 = &v132 - v141;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v22 + 1, 24);
            v24 = v141;
            v23 = (v141 + v115);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v22 + 1, 24);
            v23 = &v132;
            v24 = v141;
          }
        }

        v25 = &v24[24 * v142];
        v26 = *v23;
        *(v25 + 2) = v23[2];
        *v25 = v26;
        v27 = ++v142;
        if (v138)
        {
          LODWORD(v132) = 3;
          v133 = " but start/end/strides are provided with ";
          v134[0] = 41;
          v28 = &v132;
          v29 = v141;
          if (v27 >= v143)
          {
            if (v141 <= &v132 && v141 + 24 * v27 > &v132)
            {
              v117 = &v132 - v141;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v27 + 1, 24);
              v29 = v141;
              v28 = (v141 + v117);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v27 + 1, 24);
              v28 = &v132;
              v29 = v141;
            }
          }

          v30 = &v29[24 * v142];
          v31 = *v28;
          *(v30 + 2) = v28[2];
          *v30 = v31;
          ++v142;
        }
      }
    }

    v32 = mlir::RankedTensorType::getShape(&v125);
    NumElements = mlir::ShapedType::getNumElements(v32, v33);
    if (v138)
    {
      LODWORD(v132) = 2;
      v133 = NumElements;
      v35 = &v132;
      v36 = v141;
      if (v142 >= v143)
      {
        if (v141 <= &v132 && v141 + 24 * v142 > &v132)
        {
          v113 = &v132 - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v36 = v141;
          v35 = (v141 + v113);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v35 = &v132;
          v36 = v141;
        }
      }

      v37 = &v36[24 * v142];
      v38 = *v35;
      *(v37 + 2) = v35[2];
      *v37 = v38;
      v39 = ++v142;
      if (v138)
      {
        LODWORD(v132) = 3;
        v133 = " elements";
        v134[0] = 9;
        v40 = &v132;
        v41 = v141;
        if (v39 >= v143)
        {
          if (v141 <= &v132 && v141 + 24 * v39 > &v132)
          {
            v116 = &v132 - v141;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v39 + 1, 24);
            v41 = v141;
            v40 = (v141 + v116);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v39 + 1, 24);
            v40 = &v132;
            v41 = v141;
          }
        }

        v42 = &v41[24 * v142];
        v43 = *v40;
        *(v42 + 2) = v40[2];
        *v42 = v43;
        ++v142;
        if (v138)
        {
          mlir::InFlightDiagnostic::report(&v138);
        }
      }
    }

    if (v151 == 1)
    {
      if (v150 != &v151)
      {
        free(v150);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v149;
        v46 = __p;
        if (v149 != __p)
        {
          do
          {
            v45 = sub_10005BEF4(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v149 = v44;
        operator delete(v46);
      }

      v47 = v146;
      if (v146)
      {
        v48 = v147;
        v49 = v146;
        if (v147 != v146)
        {
          do
          {
            v50 = *--v48;
            *v48 = 0;
            if (v50)
            {
              operator delete[]();
            }
          }

          while (v48 != v47);
          v49 = v146;
        }

        v147 = v47;
        operator delete(v49);
      }

      if (v141 != v144)
      {
        free(v141);
      }
    }
  }

  v124 = *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v126))
  {
    return 1;
  }

  v51 = mlir::TensorType::getShape(&v126);
  if (v52)
  {
    v53 = 8 * v52;
    while (*v51 != 0x8000000000000000)
    {
      ++v51;
      v53 -= 8;
      if (!v53)
      {
        goto LABEL_61;
      }
    }

    return 1;
  }

LABEL_61:
  if (!mlir::TensorType::hasRank(&v124))
  {
    return 1;
  }

  v54 = mlir::TensorType::getShape(&v124);
  if (v55)
  {
    v56 = 8 * v55;
    while (*v54 != 0x8000000000000000)
    {
      ++v54;
      v56 -= 8;
      if (!v56)
      {
        goto LABEL_66;
      }
    }

    return 1;
  }

LABEL_66:
  v57 = *(*this + 9);
  v58 = *(v57 + 88);
  v59 = *(v57 + 120);
  v138 = 0;
  v139 = 0;
  v132 = &v138;
  v135[0] = v15;
  DefiningOp = mlir::Value::getDefiningOp(v135);
  if (!DefiningOp)
  {
    return 1;
  }

  if (!sub_10026C424(&v132, DefiningOp))
  {
    return 1;
  }

  v138 = 0;
  v139 = 0;
  v132 = &v138;
  v135[0] = v58;
  v61 = mlir::Value::getDefiningOp(v135);
  if (!v61)
  {
    return 1;
  }

  if (!sub_10026C424(&v132, v61))
  {
    return 1;
  }

  v138 = 0;
  v139 = 0;
  v132 = &v138;
  v135[0] = v59;
  v62 = mlir::Value::getDefiningOp(v135);
  if (!v62 || !sub_10026C424(&v132, v62))
  {
    return 1;
  }

  sub_10020E8BC(v15, &v138);
  if ((v145 & 1) == 0)
  {
    goto LABEL_177;
  }

  v135[0] = v136;
  v135[1] = 0xC00000000;
  if (!v139 || (sub_100094D2C(v135, &v138), (v145 & 1) != 0))
  {
    if (v138 != &v140)
    {
      free(v138);
    }
  }

  sub_10020E8BC(v58, &v138);
  if ((v145 & 1) == 0)
  {
    goto LABEL_177;
  }

  v132 = v134;
  v133 = 0xC00000000;
  if (!v139 || (sub_100094D2C(&v132, &v138), (v145 & 1) != 0))
  {
    if (v138 != &v140)
    {
      free(v138);
    }
  }

  sub_10020E8BC(v59, &v138);
  if ((v145 & 1) == 0)
  {
LABEL_177:
    v118 = sub_10026AFCC();
    return sub_10020F7D8(v118, v119, v120);
  }

  v130[0] = v131;
  v130[1] = 0xC00000000;
  if (!v139 || (sub_100094D2C(v130, &v138), (v145 & 1) != 0))
  {
    if (v138 != &v140)
    {
      free(v138);
    }
  }

  v63 = mlir::TensorType::getShape(&v126);
  v121[0] = 0;
  if (v3 <= 0)
  {
    v138 = 0;
    sub_10020F7D8(&__s1, v3, &v138);
    goto LABEL_139;
  }

  v64 = 0;
  v65 = v130[0];
  v66 = v135[0];
  v67 = v132;
  do
  {
    while (1)
    {
      if (!v65[v64])
      {
        v129[8] = 257;
        mlir::OpState::emitError(this, &__s1, &v138);
        sub_10008AE40(&v138, "stride[");
        sub_10020CF30(v108, v121);
        sub_10008AE40(v109, "] is 0");
        v107 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v110);
        sub_10006296C(&v138);
        goto LABEL_144;
      }

      v71 = v66[v64];
      if ((v71 & 0x80000000) == 0)
      {
        break;
      }

      do
      {
        v71 += *(v63 + 8 * v64);
      }

      while (v71 < 0);
      v66[v64] = v71;
      v72 = v67[v64];
      if (v72 < 0)
      {
        goto LABEL_103;
      }

LABEL_99:
      v73 = *(v63 + 8 * v64);
      if (v65[v64] >= 1)
      {
        goto LABEL_105;
      }

LABEL_91:
      v69 = v73 - 1;
      v70 = v66[v64];
      if (v69 < v70)
      {
        v70 = v69;
      }

      v66[v64] = v70;
      if (v69 >= v67[v64])
      {
        v69 = v67[v64];
      }

      v67[v64++] = v69;
      v121[0] = v64;
      if (v64 == v3)
      {
        goto LABEL_110;
      }
    }

    v72 = v67[v64];
    if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    do
    {
LABEL_103:
      v72 += *(v63 + 8 * v64);
    }

    while (v72 < 0);
    v67[v64] = v72;
    v73 = *(v63 + 8 * v64);
    if (v65[v64] < 1)
    {
      goto LABEL_91;
    }

LABEL_105:
    v74 = v66[v64];
    if (v74 >= v73)
    {
      v74 = v73;
    }

    v66[v64] = v74;
    if (v67[v64] < v73)
    {
      LODWORD(v73) = v67[v64];
    }

    v67[v64++] = v73;
    v121[0] = v64;
  }

  while (v64 != v3);
LABEL_110:
  v138 = 0;
  sub_10020F7D8(&__s1, v3, &v138);
  v75 = 0;
  v76 = v130[0];
  v77 = v135[0];
  v78 = v132;
  v79 = __s1;
  do
  {
    v80 = v76[v75];
    v81 = v77[v75];
    v82 = v78[v75];
    if (v80 < 1)
    {
      if (v81 > v82)
      {
        v97 = v80;
        v98 = v79[v75];
        do
        {
          ++v98;
          v81 += v97;
        }

        while (v81 > v82);
        v79[v75] = v98;
      }
    }

    else if (v81 < v82)
    {
      v83 = v79[v75];
      if ((v81 + v80) <= v82)
      {
        v84 = v78[v75];
      }

      else
      {
        v84 = v81 + v80;
      }

      if ((v81 + v80) >= v82)
      {
        v85 = 1;
      }

      else
      {
        v85 = 2;
      }

      v86 = v85 + (v84 - ((v81 + v80) < v82) - (v81 + v80)) / v80;
      if (v86 < 4)
      {
        goto LABEL_125;
      }

      v81 += (v86 & 0xFFFFFFFFFFFFFFFCLL) * v80;
      v87 = 0uLL;
      v88 = v79[v75];
      v89 = v86 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v90 = vdupq_n_s64(1uLL);
        v87 = vaddq_s64(v87, v90);
        v88 = vaddq_s64(v88, v90);
        v89 -= 4;
      }

      while (v89);
      v83 = vaddvq_s64(vpaddq_s64(v88, v87));
      if (v86 != (v86 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_125:
        v91 = v81 + v80;
        if ((v81 + v80) <= v82)
        {
          v92 = v78[v75];
        }

        else
        {
          v92 = v81 + v80;
        }

        v93 = v92 != v91;
        v94 = v83 + v93;
        v95 = v92 - v93 - v91;
        if (v80 <= 1)
        {
          v96 = 1;
        }

        else
        {
          v96 = v76[v75];
        }

        v83 = v94 + v95 / v96 + 1;
        do
        {
          v81 += v80;
        }

        while (v81 < v82);
      }

      v79[v75] = v83;
    }

    ++v75;
  }

  while (v75 != v3);
LABEL_139:
  v99 = mlir::TensorType::getShape(&v124);
  v123[0] = v99;
  v123[1] = v100;
  if (v100 == v128 && (v101 = __s1, !memcmp(__s1, v99, 8 * v100)))
  {
    result = 1;
    if (v101 != v129)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v122 = 257;
    mlir::OpState::emitError(this, v121, &v138);
    sub_10008AE40(&v138, "mismatch in slice shape. Expected shape: ");
    v103 = sub_10020D024(v102, &__s1);
    sub_10008AE40(v103, " given shape is ");
    v105 = sub_10020F954(v104, v123);
    v106 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v105);
    sub_10006296C(&v138);
    result = v106;
    v101 = __s1;
    if (__s1 != v129)
    {
LABEL_142:
      v107 = result;
      free(v101);
LABEL_144:
      result = v107;
    }
  }

  v111 = result;
  if (v130[0] != v131)
  {
    free(v130[0]);
    result = v111;
  }

  if (v132 != v134)
  {
    free(v132);
    result = v111;
  }

  if (v135[0] != v136)
  {
    free(v135[0]);
    return v111;
  }

  return result;
}